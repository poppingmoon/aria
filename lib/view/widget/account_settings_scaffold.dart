import 'package:flutter/material.dart';

import '../../model/account.dart';
import 'account_settings_navigation.dart';

export 'account_settings_navigation.dart' show AccountSettingsDestination;

class AccountSettingsScaffold extends StatelessWidget {
  const AccountSettingsScaffold({
    super.key,
    required this.account,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.selectedDestination,
  });

  final Account account;
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? floatingActionButton;
  final AccountSettingsDestination? selectedDestination;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final isMiddleScreen = width > 800.0;
    final isLargeScreen = width > 1200.0;

    return Scaffold(
      appBar: appBar,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isMiddleScreen)
            Material(
              color: Theme.of(context).colorScheme.surface,
              child: SizedBox(
                width: isLargeScreen ? 300.0 : 48.0,
                height: double.infinity,
                child: AccountSettingsNavigation(
                  account: account,
                  rail: !isLargeScreen,
                  selectedDestination: selectedDestination,
                ),
              ),
            ),
          if (body case final body?) Expanded(child: body),
        ],
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
