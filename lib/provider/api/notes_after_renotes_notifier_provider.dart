import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../extension/note_extension.dart';
import '../../model/account.dart';
import '../../model/pagination_state.dart';
import '../notes_notifier_provider.dart';
import 'misskey_provider.dart';

part 'notes_after_renotes_notifier_provider.g.dart';

@riverpod
class NotesAfterRenotesNotifier extends _$NotesAfterRenotesNotifier {
  @override
  Stream<PaginationState<Note>> build(Account account, String noteId) async* {
    final renotes = await _fetchRenotes();
    final notes = await Future.wait(renotes.map(_fetchNote));
    yield PaginationState(
      items: notes.nonNulls.toList(),
      isLastLoaded: renotes.isEmpty,
    );
    if (renotes.isNotEmpty && notes.nonNulls.length < 10) {
      await loadMore();
    }
  }

  String? _untilId;

  Future<Iterable<Note>> _fetchRenotes() async {
    final untilId = _untilId;
    final notes = await ref
        .read(misskeyProvider(account))
        .notes
        .renotes(NotesRenoteRequest(noteId: noteId, untilId: untilId));
    ref.read(notesNotifierProvider(account).notifier).addAll(notes);
    _untilId = notes.lastOrNull?.id;
    if (untilId != null) {
      return notes.where((post) => post.id.compareTo(untilId) < 0);
    } else {
      return notes;
    }
  }

  Future<Note?> _fetchNote(Note renote) async {
    final notes = await ref
        .read(misskeyProvider(account))
        .users
        .notes(
          UsersNotesRequest(
            userId: renote.userId,
            sinceDate: renote.createdAt,
            untilDate: renote.createdAt.add(const Duration(minutes: 3)),
            limit: 100,
          ),
        );
    final note = notes.firstOrNull;
    if (note != null) {
      if (!note.isRenote) {
        ref.read(notesNotifierProvider(account).notifier).add(note);
        return note;
      }
    }
    return null;
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.value! : await future;
    if (value.isLastLoaded) {
      return;
    }
    bool shouldLoadMore = false;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final renotes = await _fetchRenotes();
      final notes = await Future.wait(renotes.map(_fetchNote));
      shouldLoadMore = renotes.isNotEmpty && renotes.length < 5;
      return PaginationState(
        items: [...value.items, ...notes.nonNulls],
        isLastLoaded: renotes.isEmpty,
      );
    });
    if (shouldLoadMore) {
      await loadMore();
    }
  }
}
