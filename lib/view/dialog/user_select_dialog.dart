import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/search_users_by_username_provider.dart';
import '../../provider/recently_used_users_notifier_provider.dart';
import '../widget/error_message.dart';
import '../widget/user_preview.dart';
import '../widget/user_sheet.dart';

Future<UserDetailed?> selectUser(
  BuildContext context,
  Account account, {
  bool includeSelf = false,
  bool localOnly = false,
}) async {
  return showDialog(
    context: context,
    builder: (context) => UserSelectDialog(
      account: account,
      includeSelf: includeSelf,
      localOnly: localOnly,
    ),
  );
}

class UserSelectDialog extends HookConsumerWidget {
  const UserSelectDialog({
    super.key,
    required this.account,
    this.includeSelf = false,
    this.localOnly = false,
  });

  final Account account;
  final bool includeSelf;
  final bool localOnly;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final username = useState('');
    final host = useState(localOnly ? '.' : '');
    final users = username.value.isNotEmpty || host.value.isNotEmpty
        ? ref.watch(
            searchUsersByUsernameProvider(
              account,
              username.value,
              host.value,
            ),
          )
        : null;
    final recentlyUsedUsers = ref
            .watch(recentlyUsedUsersNotifierProvider(account))
            .valueOrNull
            ?.where(
              (user) =>
                  (includeSelf || user.id != i?.id) &&
                  (!localOnly || user.host == null),
            )
            .toList() ??
        [];

    return AlertDialog(
      title: Text(t.misskey.selectUser),
      content: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Shortcuts(
              shortcuts: disablingTextShortcuts,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: t.misskey.username,
                        prefixText: '@',
                      ),
                      onChanged: (value) => username.value = value,
                      keyboardType: TextInputType.url,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  if (!localOnly)
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: t.misskey.host,
                          prefixText: '@',
                        ),
                        onChanged: (value) => host.value = value,
                        keyboardType: TextInputType.url,
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                ],
              ),
            ),
            Expanded(
              child: switch (users) {
                null => recentlyUsedUsers.isNotEmpty
                    ? ListView.separated(
                        itemBuilder: (context, index) => UserPreview(
                          account: account,
                          user: recentlyUsedUsers[index],
                          onTap: () => context.pop(recentlyUsedUsers[index]),
                          onLongPress: () => showUserSheet(
                            context: context,
                            account: account,
                            userId: recentlyUsedUsers[index].id,
                          ),
                        ),
                        separatorBuilder: (_, __) => const Divider(height: 0.0),
                        itemCount: recentlyUsedUsers.length,
                      )
                    : Center(child: Text(t.misskey.noUsers)),
                AsyncValue(valueOrNull: final users?) => users.isEmpty
                    ? Center(child: Text(t.misskey.nothing))
                    : ListView.separated(
                        itemBuilder: (context, index) =>
                            includeSelf || users[index].id != i?.id
                                ? UserPreview(
                                    account: account,
                                    user: users[index],
                                    onTap: () {
                                      ref
                                          .read(
                                            recentlyUsedUsersNotifierProvider(
                                              account,
                                            ).notifier,
                                          )
                                          .add(users[index]);
                                      context.pop(users[index]);
                                    },
                                    onLongPress: () => showUserSheet(
                                      context: context,
                                      account: account,
                                      userId: users[index].id,
                                    ),
                                  )
                                : const SizedBox.shrink(),
                        separatorBuilder: (_, __) => const Divider(height: 0.0),
                        itemCount: users.length,
                      ),
                AsyncValue(:final error?, :final stackTrace) =>
                  ErrorMessage(error: error, stackTrace: stackTrace),
                _ => const Center(child: CircularProgressIndicator()),
              },
            ),
          ],
        ),
      ),
    );
  }
}
