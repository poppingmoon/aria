import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../widget/account_settings_navigation.dart';
import '../../widget/username_widget.dart';

class AccountSettingsPage extends HookConsumerWidget {
  const AccountSettingsPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;

    return Scaffold(
      appBar: AppBar(
        title: i != null
            ? UsernameWidget(
                account: account,
                user: i,
                builder: (context, span) =>
                    Text.rich(t.aria.settingsForUser(user: span)),
              )
            : Text.rich(
                t.aria.settingsForUser(
                  user: TextSpan(text: account.toString()),
                ),
              ),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(8.0),
              width: maxContentWidth,
              child: ListTileTheme(
                tileColor: Theme.of(context).colorScheme.surface,
                child: AccountSettingsNavigation(
                  account: account,
                  round: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
