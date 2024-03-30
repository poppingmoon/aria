import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'user_followers_notifier_provider.g.dart';

@riverpod
class UserFollowersNotifier extends _$UserFollowersNotifier {
  @override
  FutureOr<PaginationState<Following>> build(
    Account account,
    String userId,
  ) async {
    final response = await _fetchFollowers();
    return PaginationState.fromIterable(response);
  }

  Future<Iterable<Following>> _fetchFollowers({String? untilId}) async {
    return ref
        .read(misskeyProvider(account))
        .users
        .followers(UsersFollowersRequest(userId: userId, untilId: untilId));
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
      final response =
          await _fetchFollowers(untilId: value.items.lastOrNull?.id);
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }
}
