import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../provider/accounts_notifier_provider.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListTileTheme(
          tileColor: colors.panel,
          child: ListView(
            children: [
              if (accounts.isNotEmpty) ...[
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
                ...ListTile.divideTiles(
                  context: context,
                  tiles: accounts.map((account) {
                    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
                    return ListTile(
                      leading: i != null
                          ? UserAvatar(account: account, user: i, size: 24)
                          : null,
                      title: Consumer(
                        builder: (context, ref, _) => Text.rich(
                          t.aria.settingsForUser(
                            user: i != null
                                ? TextSpan(
                                    children: buildUsername(
                                      ref,
                                      account: account,
                                      user: i,
                                    ),
                                  )
                                : TextSpan(text: account.username),
                          ),
                        ),
                      ),
                      subtitle: Text(account.toString()),
                      onTap: () => context.push('/settings/accounts/$account'),
                    );
                  }),
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
                leading: const Icon(Icons.emoji_symbols),
                title: Text(t.misskey.emojiPicker),
                onTap: () => context.push('/settings/emoji-picker'),
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
              ListTile(
                leading: const Icon(Icons.info_outline),
                title: Text(t.aria.aboutAria),
                onTap: () => context.push('/about-aria'),
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
