import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;

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
      body: Center(
        child: Container(
          width: 800.0,
          height: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 8.0,
                  margin: const EdgeInsets.only(top: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
                ListTileTheme(
                  tileColor: Theme.of(context).colorScheme.surface,
                  child: AccountSettingsNavigation(
                    account: account,
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                ),
                Container(
                  height: 8.0,
                  margin: const EdgeInsets.only(bottom: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
