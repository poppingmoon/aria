import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'follow_requests_notifier_provider.g.dart';

@riverpod
class FollowRequestsNotifier extends _$FollowRequestsNotifier {
  @override
  Stream<PaginationState<FollowRequest>> build(Account account) async* {
    final response = await _fetchRequests();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<Iterable<FollowRequest>> _fetchRequests({String? untilId}) async {
    final requests = await _misskey.following.requests.list(
      FollowingRequestsListRequest(untilId: untilId),
    );
    if (untilId != null) {
      return requests.where((request) => request.id.compareTo(untilId) < 0);
    } else {
      return requests;
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
      final response = await _fetchRequests(
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

  Future<void> accept(String userId) async {
    await _misskey.following.requests.accept(
      FollowingRequestsAcceptRequest(userId: userId),
    );
    final value = state.valueOrNull;
    if (value != null) {
      state = AsyncValue.data(
        value.copyWith(
          items: value.items
              .where((request) => request.follower.id != userId)
              .toList(),
        ),
      );
    }
  }

  Future<void> reject(String userId) async {
    await _misskey.following.requests.reject(
      FollowingRequestsRejectRequest(userId: userId),
    );
    final value = state.valueOrNull;
    if (value != null) {
      state = AsyncValue.data(
        value.copyWith(
          items: value.items
              .where((request) => request.follower.id != userId)
              .toList(),
        ),
      );
    }
  }
}
