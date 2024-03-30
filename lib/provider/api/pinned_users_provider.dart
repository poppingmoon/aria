import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'pinned_users_provider.g.dart';

@riverpod
FutureOr<List<UserDetailed>> pinnedUsers(
  PinnedUsersRef ref,
  Account account,
) async {
  final response = await ref.watch(misskeyProvider(account)).pinnedUsers();
  return response.toList();
}
