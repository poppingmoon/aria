import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'user_following_notifier_provider.g.dart';

@riverpod
class UserFollowingNotifier extends _$UserFollowingNotifier {
  @override
  Stream<PaginationState<Following>> build(
    Account account,
    String userId,
  ) async* {
    final response = await _fetchFollowing();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Future<Iterable<Following>> _fetchFollowing({String? untilId}) async {
    final followings = await ref
        .read(misskeyProvider(account))
        .users
        .following(UsersFollowingRequest(userId: userId, untilId: untilId));
    if (untilId != null) {
      return followings.where(
        (following) => following.id.compareTo(untilId) < 0,
      );
    } else {
      return followings;
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
      final response = await _fetchFollowing(
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
}
