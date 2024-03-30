import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'role_users_notifier_provider.g.dart';

@riverpod
class RoleUsersNotifier extends _$RoleUsersNotifier {
  @override
  FutureOr<PaginationState<RolesUsersResponse>> build(
    Account account,
    String roleId,
  ) async {
    final response = await _fetchUsers();
    return PaginationState.fromIterable(response);
  }

  Future<Iterable<RolesUsersResponse>> _fetchUsers({String? untilId}) {
    return ref.read(misskeyProvider(account)).roles.users(
          RolesUsersRequest(roleId: roleId, untilId: untilId),
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
      final response = await _fetchUsers(untilId: value.items.lastOrNull?.id);
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }
}
