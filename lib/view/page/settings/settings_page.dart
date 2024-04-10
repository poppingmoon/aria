import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../gen/assets.gen.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/accounts_notifier_provider.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../widget/mfm.dart';
import '../../widget/user_avatar.dart';
import '../../widget/username_widget.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accounts = ref.watch(accountsNotifierProvider);
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.settings)),
      body: ListView(
        children: [
          if (accounts.isNotEmpty) ...[
            ...accounts.map(
              (account) {
                final i = ref.watch(iNotifierProvider(account)).valueOrNull;
                return ListTile(
                  leading: i != null ? UserAvatar(user: i, size: 24) : null,
                  title: Text.rich(
                    t.aria.settingsForUser(
                      user: i != null
                          ? TextSpan(
                              children: useMemoized(
                                () => buildUsername(
                                  ref,
                                  account: account,
                                  user: i,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                [i, colors],
                              ),
                            )
                          : TextSpan(text: account.username),
                    ),
                  ),
                  subtitle: Text(account.toString()),
                  onTap: () => context.push('/settings/accounts/$account'),
                );
              },
            ),
            const Divider(),
          ],
          ListTile(
            leading: const Icon(Icons.bookmark),
            title: Text(t.aria.tabs),
            onTap: () => context.push('/settings/tab'),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: Text(t.misskey.accounts),
            onTap: () => context.push('/settings/accounts'),
          ),
          ListTile(
            leading: const Icon(Icons.translate),
            title: Text(t.misskey.uiLanguage),
            onTap: () => context.push('/settings/language'),
          ),
          ListTile(
            leading: const Icon(Icons.article),
            title: Text(t.misskey.displayOfNote),
            onTap: () => context.push('/settings/note-display'),
          ),
          ListTile(
            leading: const Icon(Icons.brush),
            title: Text(t.misskey.appearance),
            onTap: () => context.push('/settings/appearance'),
          ),
          ListTile(
            leading: const Icon(Icons.gesture),
            title: Text(t.misskey.behavior),
            onTap: () => context.push('/settings/behavior'),
          ),
          ListTile(
            leading: const Icon(Icons.palette),
            title: Text(t.misskey.theme),
            onTap: () => context.push('/settings/theme'),
          ),
          ListTile(
            leading: const Icon(Icons.import_export),
            title: Text(t.misskey.importAndExport),
            onTap: () => context.push('/settings/import-export'),
          ),
          AboutListTile(
            icon: const Icon(Icons.info_outline),
            applicationIcon: Assets.a.image(),
            applicationLegalese: 'Licensed under AGPL v3',
            aboutBoxChildren: [
              SizedBox(
                width: double.maxFinite,
                height: 300,
                child: Mfm(
                  account: const Account(host: 'misskey.io'),
                  text: t.aria.aboutAria(
                    miria:
                        '[:miria: Miria](https://github.com/shiosyakeyakini-info/miria)',
                    misskey:
                        '[:misskey: Misskey](https://github.com/misskey-dev/misskey)',
                    repository: 'https://github.com/poppingmoon/aria',
                    contact: '@aria_app@misskey.io',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
