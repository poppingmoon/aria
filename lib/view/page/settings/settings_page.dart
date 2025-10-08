import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/accounts_notifier_provider.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../widget/general_settings_navigation.dart';
import '../../widget/user_avatar.dart';
import '../../widget/username_widget.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accounts = ref.watch(accountsNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.settings)),
      body: ListView(
        children: [
          const SizedBox(height: 8.0),
          for (final (index, account) in accounts.indexed) ...[
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: _AccountSettingsTile(
                  account: account,
                  borderRadius: BorderRadius.vertical(
                    top: index == 0 ? const Radius.circular(8.0) : Radius.zero,
                    bottom: index == accounts.length - 1
                        ? const Radius.circular(8.0)
                        : Radius.zero,
                  ),
                ),
              ),
            ),
            if (index < accounts.length - 1)
              const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    width: maxContentWidth,
                    child: Divider(height: 0.0),
                  ),
                ),
              )
            else
              const SizedBox(height: 8.0),
          ],
          ListTileTheme.merge(
            tileColor: Theme.of(context).colorScheme.surface,
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                // Adding "const" to this prevents update of translations.
                // ignore: prefer_const_constructors
                child: GeneralSettingsNavigation(
                  round: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}

class _AccountSettingsTile extends ConsumerWidget {
  const _AccountSettingsTile({
    required this.account,
    this.borderRadius = BorderRadius.zero,
  });

  final Account account;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;

    return ListTile(
      leading: i != null
          ? UserAvatar(account: account, user: i, size: 32.0)
          : const Icon(Icons.person, size: 32.0),
      title: i != null
          ? UsernameWidget(
              account: account,
              user: i,
              builder: (context, span) =>
                  Text.rich(t.aria.settingsForUser(user: span)),
            )
          : Text.rich(
              t.aria.settingsForUser(user: TextSpan(text: account.username)),
            ),
      subtitle: Align(
        alignment: AlignmentDirectional.centerStart,
        child: Text(account.toString(), textDirection: TextDirection.ltr),
      ),
      onTap: () => context.push('/settings/accounts/$account'),
      tileColor: Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
    );
  }
}
