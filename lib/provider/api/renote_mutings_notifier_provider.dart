import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'renote_mutings_notifier_provider.g.dart';

@riverpod
class RenoteMutingsNotifier extends _$RenoteMutingsNotifier {
  @override
  Stream<PaginationState<RenoteMuting>> build(Account account) async* {
    final response = await _fetchRenoteMutings();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<Iterable<RenoteMuting>> _fetchRenoteMutings({String? untilId}) async {
    final renoteMutings = await ref
        .read(misskeyProvider(account))
        .renoteMute
        .list(RenoteMuteListRequest(untilId: untilId));
    if (untilId != null) {
      return renoteMutings.where(
        (renoteMuting) => renoteMuting.id.compareTo(untilId) < 0,
      );
    } else {
      return renoteMutings;
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
      final response = await _fetchRenoteMutings(
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
    await _misskey.renoteMute.delete(RenoteMuteDeleteRequest(userId: userId));
    final value = state.value;
    if (value != null) {
      state = AsyncValue.data(
        value.copyWith(
          items: value.items
              .where((muting) => muting.muteeId != userId)
              .toList(),
        ),
      );
    }
  }
}
