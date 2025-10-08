import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import '../model/pagination_state.dart';
import 'api/misskey_provider.dart';
import 'notes_notifier_provider.dart';

part 'mentions_notifier_provider.g.dart';

@riverpod
class MentionsNotifier extends _$MentionsNotifier {
  @override
  Stream<PaginationState<Note>> build(
    Account account, [
    bool specified = false,
  ]) async* {
    final response = await _fetchNotes();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Future<Iterable<Note>> _fetchNotes({String? untilId}) async {
    final notes = await ref
        .read(misskeyProvider(account))
        .notes
        .mentions(
          NotesMentionsRequest(
            untilId: untilId,
            visibility: specified ? NoteVisibility.specified : null,
          ),
        );
    ref.read(notesNotifierProvider(account).notifier).addAll(notes);
    if (untilId != null) {
      return notes.where((note) => note.id.compareTo(untilId) < 0);
    } else {
      return notes;
    }
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
      final response = await _fetchNotes(untilId: value.items.lastOrNull?.id);
      shouldLoadMore = response.isNotEmpty && response.length < 5;
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
    if (shouldLoadMore) {
      await loadMore();
    }
  }
}
