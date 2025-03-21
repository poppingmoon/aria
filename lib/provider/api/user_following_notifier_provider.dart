import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'user_following_notifier_provider.g.dart';

@riverpod
class UserFollowingNotifier extends _$UserFollowingNotifier {
  @override
  FutureOr<PaginationState<Following>> build(
    Account account,
    String userId,
  ) async {
    final response = await _fetchFollowing();
    return PaginationState.fromIterable(response);
  }

  Future<Iterable<Following>> _fetchFollowing({String? untilId}) {
    return ref
        .read(misskeyProvider(account))
        .users
        .following(UsersFollowingRequest(userId: userId, untilId: untilId));
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
      final response = await _fetchFollowing(
        untilId: value.items.lastOrNull?.id,
      );
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }
}
