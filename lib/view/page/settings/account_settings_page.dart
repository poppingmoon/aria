import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/accounts_notifier_provider.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../dialog/confirmation_dialog.dart';
import '../../widget/username_widget.dart';

class AccountSettingsPage extends HookConsumerWidget {
  const AccountSettingsPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return Scaffold(
      appBar: AppBar(
        title: Text.rich(
          t.aria.settingsForUser(
            user: i != null
                ? TextSpan(
                    children: useMemoized(
                      () => buildUsername(
                        ref,
                        account: account,
                        user: i,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      [i, colors],
                    ),
                  )
                : TextSpan(text: account.toString()),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListTileTheme(
          tileColor: colors.panel,
          child: ListView(
            children: [
              Container(
                height: 8.0,
                margin: const EdgeInsets.only(top: 8.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                  color: colors.panel,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: Text(t.misskey.profile),
                onTap: () =>
                    context.push('/settings/accounts/$account/profile'),
              ),
              ListTile(
                leading: const Icon(Icons.lock),
                title: Text(t.misskey.privacy),
                onTap: () =>
                    context.push('/settings/accounts/$account/privacy'),
              ),
              ListTile(
                leading: const Icon(Icons.emoji_symbols),
                title: Text(t.misskey.emojiPicker),
                onTap: () =>
                    context.push('/settings/accounts/$account/emoji-picker'),
              ),
              ListTile(
                leading: const Icon(Icons.cloud),
                title: Text(t.misskey.drive),
                onTap: () => context.push('/settings/accounts/$account/drive'),
              ),
              ListTile(
                leading: const Icon(Icons.block),
                title: Text(t.misskey.muteAndBlock),
                onTap: () =>
                    context.push('/settings/accounts/$account/mute-block'),
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: Text(t.misskey.logout),
                onTap: () async {
                  final confirmed = await confirm(
                    context,
                    message: t.misskey.logoutConfirm,
                  );
                  if (confirmed) {
                    await ref
                        .read(accountsNotifierProvider.notifier)
                        .remove(account);
                    if (!context.mounted) return;
                    context.pop();
                  }
                },
                iconColor: Theme.of(context).colorScheme.error,
                textColor: Theme.of(context).colorScheme.error,
              ),
              Container(
                height: 8.0,
                margin: const EdgeInsets.only(bottom: 8.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  color: colors.panel,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
