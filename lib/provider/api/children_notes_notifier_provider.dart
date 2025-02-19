import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import '../notes_notifier_provider.dart';
import 'misskey_provider.dart';

part 'children_notes_notifier_provider.g.dart';

@riverpod
class ChildrenNotesNotifier extends _$ChildrenNotesNotifier {
  @override
  FutureOr<PaginationState<Note>> build(Account account, String noteId) async {
    final response = await _fetchNotes();
    return PaginationState.fromIterable(response);
  }

  Future<Iterable<Note>> _fetchNotes({String? untilId}) async {
    final notes = await ref
        .read(misskeyProvider(account))
        .notes
        .children(
          NotesChildrenRequest(noteId: noteId, depth: 1, untilId: untilId),
        );
    ref.read(notesNotifierProvider(account).notifier).addAll(notes);
    return notes;
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.valueOrNull! : await future;
    if (value.isLastLoaded) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _fetchNotes(untilId: value.items.lastOrNull?.id);
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }
}
