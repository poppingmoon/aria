import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'blockings_notifier_provider.g.dart';

@riverpod
class BlockingsNotifier extends _$BlockingsNotifier {
  @override
  Stream<PaginationState<Blocking>> build(Account account) async* {
    final response = await _fetchBlockings();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<Iterable<Blocking>> _fetchBlockings({String? untilId}) async {
    final blockings = await _misskey.blocking.list(
      BlockingListRequest(untilId: untilId),
    );
    if (untilId != null) {
      return blockings.where((blocking) => blocking.id.compareTo(untilId) < 0);
    } else {
      return blockings;
    }
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.valueOrNull! : await future;
    if (value.isLastLoaded) {
      return;
    }
    bool shouldLoadMore = false;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _fetchBlockings(
        untilId: value.items.lastOrNull?.id,
      );
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

  Future<void> delete(String userId) async {
    await _misskey.blocking.delete(BlockDeleteRequest(userId: userId));
    final value = state.valueOrNull;
    if (value != null) {
      state = AsyncValue.data(
        value.copyWith(
          items: value.items
              .where((blocking) => blocking.blockeeId != userId)
              .toList(),
        ),
      );
    }
  }
}
