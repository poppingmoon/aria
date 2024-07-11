import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'list_provider.dart';
import 'misskey_provider.dart';

part 'list_users_notifier_provider.g.dart';

@riverpod
class ListUsersNotifier extends _$ListUsersNotifier {
  @override
  FutureOr<List<UserDetailed>> build(
    Account account,
    String listId, {
    bool? forPublic,
  }) async {
    final list = await ref
        .watch(listProvider(account, listId, forPublic: forPublic).future);
    if (list.userIds.isEmpty) {
      return [];
    }
    final response = await _misskey.users
        .showByIds(UsersShowByIdsRequest(userIds: list.userIds));
    return response.toList();
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<void> add(UserDetailed user) async {
    await _misskey.users.list
        .push(UsersListsPushRequest(listId: listId, userId: user.id));
    state = AsyncValue.data([
      ...?state.valueOrNull,
      user,
    ]);
  }

  Future<void> remove(String userId) async {
    await _misskey.users.list
        .pull(UsersListsPullRequest(listId: listId, userId: userId));
    state = AsyncValue.data(
      state.valueOrNull?.where((user) => user.id != userId).toList() ?? [],
    );
  }
}
