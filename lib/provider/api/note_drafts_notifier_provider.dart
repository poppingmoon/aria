import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import '../notes_notifier_provider.dart';
import 'misskey_provider.dart';

part 'note_drafts_notifier_provider.g.dart';

@riverpod
class NoteDraftsNotifier extends _$NoteDraftsNotifier {
  @override
  Stream<PaginationState<NoteDraft>> build(Account account) async* {
    final response = await _fetchDrafts();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<Iterable<NoteDraft>> _fetchDrafts({String? untilId}) async {
    final drafts = await _misskey.notes.drafts.list(
      NotesDraftsListRequest(untilId: untilId),
    );
    ref.read(notesNotifierProvider(account).notifier).addAll([
      for (final draft in drafts) ...[?draft.reply, ?draft.renote],
    ]);
    if (untilId != null) {
      return drafts.where((draft) => draft.id.compareTo(untilId) < 0);
    } else {
      return drafts;
    }
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.value : await future;
    if (value?.isLastLoaded ?? false) {
      return;
    }
    bool shouldLoadMore = false;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _fetchDrafts(untilId: value?.items.lastOrNull?.id);
      shouldLoadMore = response.isNotEmpty && response.length < 5;
      return PaginationState(
        items: [...?value?.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
    if (shouldLoadMore) {
      await loadMore();
    }
  }

  Future<void> delete(String draftId) async {
    await _misskey.notes.drafts.delete(
      NotesDraftsDeleteRequest(draftId: draftId),
    );
    final value = state.value;
    if (value != null) {
      state = AsyncValue.data(
        value.copyWith(
          items: value.items.where((draft) => draft.id != draftId).toList(),
        ),
      );
    }
  }
}
