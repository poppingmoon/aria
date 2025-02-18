import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'users_notifier_provider.g.dart';

@riverpod
class UsersNotifier extends _$UsersNotifier {
  @override
  FutureOr<PaginationState<UserDetailed>> build(
    Account account, {
    UsersSortType? sort,
    Origin? userOrigin,
    String? host,
  }) async {
    final response = await _fetchUsers();
    return PaginationState.fromIterable(response);
  }

  Future<Iterable<UserDetailed>> _fetchUsers({int? offset}) {
    return ref
        .read(misskeyProvider(account))
        .users
        .users(
          UsersUsersRequest(
            origin: userOrigin,
            sort: sort,
            offset: offset,
            hostname: host,
          ),
        );
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
      final response = await _fetchUsers(offset: value.items.length);
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }
}
