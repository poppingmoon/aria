import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'account_settings_notifier_provider.dart';
import 'api/misskey_provider.dart';

part 'recently_used_users_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class RecentlyUsedUsersNotifier extends _$RecentlyUsedUsersNotifier {
  @override
  Future<List<UserDetailed>> build(Account account) async {
    final userIds = ref.watch(
      accountSettingsNotifierProvider(account)
          .select((settings) => settings.recentlyUsedUsers),
    );
    if (userIds.isEmpty) {
      return [];
    }
    final response = await ref
        .watch(misskeyProvider(account))
        .users
        .showByIds(UsersShowByIdsRequest(userIds: userIds));
    return response.toList();
  }

  Future<void> _save(List<String> userIds) async {
    await ref
        .read(accountSettingsNotifierProvider(account).notifier)
        .setRecentlyUsedUsers(userIds);
  }

  Future<void> add(User user) async {
    await _save(
      {user.id, ...?state.valueOrNull?.map((user) => user.id)}
          .take(16)
          .toList(),
    );
  }

  Future<void> clear() async {
    await _save([]);
  }
}
