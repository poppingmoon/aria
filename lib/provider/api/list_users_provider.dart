import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'list_provider.dart';
import 'misskey_provider.dart';

part 'list_users_provider.g.dart';

@riverpod
FutureOr<List<UserDetailed>> listUsers(
  ListUsersRef ref,
  Account account,
  String listId, {
  bool? forPublic,
}) async {
  final list = await ref
      .watch(listProvider(account, listId, forPublic: forPublic).future);
  final response = await ref
      .watch(misskeyProvider(account))
      .users
      .showByIds(UsersShowByIdsRequest(userIds: list.userIds));
  return response.toList();
}
