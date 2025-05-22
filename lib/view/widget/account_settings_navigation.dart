import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/accounts_notifier_provider.dart';
import '../../provider/push_subscription_notifier_provider.dart';
import '../../provider/timeline_tabs_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/confirmation_dialog.dart';

enum AccountSettingsDestination {
  profile,
  privacy,
  emojiPicker,
  drive,
  notifications,
  muteBlock,
  signOut,
}

class AccountSettingsNavigation extends ConsumerWidget {
  const AccountSettingsNavigation({
    super.key,
    required this.account,
    this.rail = false,
    this.round = false,
    this.selectedDestination,
    this.physics,
  });

  final Account account;
  final bool rail;
  final bool round;
  final AccountSettingsDestination? selectedDestination;
  final ScrollPhysics? physics;

  Widget _buildIcon(AccountSettingsDestination destination) {
    return switch (destination) {
      AccountSettingsDestination.profile => const Icon(Icons.person),
      AccountSettingsDestination.privacy => const Icon(Icons.lock),
      AccountSettingsDestination.emojiPicker => const Icon(Icons.emoji_symbols),
      AccountSettingsDestination.drive => const Icon(Icons.cloud),
      AccountSettingsDestination.notifications => const Icon(
        Icons.notifications,
      ),
      AccountSettingsDestination.muteBlock => const Icon(Icons.block),
      AccountSettingsDestination.signOut => const Icon(Icons.logout),
    };
  }

  String _buildLabel(AccountSettingsDestination destination) {
    return switch (destination) {
      AccountSettingsDestination.profile => t.misskey.profile,
      AccountSettingsDestination.privacy => t.misskey.privacy,
      AccountSettingsDestination.emojiPicker => t.misskey.emojiPicker,
      AccountSettingsDestination.drive => t.misskey.drive,
      AccountSettingsDestination.notifications => t.misskey.notifications,
      AccountSettingsDestination.muteBlock => t.misskey.muteAndBlock,
      AccountSettingsDestination.signOut => t.misskey.logout,
    };
  }

  Future<void> _onTap(
    WidgetRef ref,
    AccountSettingsDestination destination,
  ) async {
    if (destination == AccountSettingsDestination.signOut) {
      final confirmed = await confirm(
        ref.context,
        message: t.misskey.logoutConfirm,
      );
      if (!confirmed) return;
      if (!ref.context.mounted) return;
      await futureWithDialog(
        ref.context,
        ref
            .read(pushSubscriptionNotifierProvider(account).notifier)
            .unsubscribe()
            .then((_) => true),
      );
      await ref.read(accountsNotifierProvider.notifier).remove(account);
      if (!ref.context.mounted) return;
      final tabs = ref
          .read(timelineTabsNotifierProvider)
          .where((tab) => tab.account == account);
      if (tabs.isNotEmpty) {
        final confirmed = await confirm(
          ref.context,
          message: t.aria.deleteAccountTabsConfirm(n: tabs.length),
        );
        if (confirmed) {
          await ref
              .read(timelineTabsNotifierProvider.notifier)
              .deleteAll(tabs.map((tab) => tab.id).nonNulls);
        }
      }
      if (!ref.context.mounted) return;
      ref.context.pop();
      if (selectedDestination != null && ref.context.canPop()) {
        ref.context.pop();
      }
    } else {
      final location = switch (destination) {
        AccountSettingsDestination.profile =>
          '/settings/accounts/$account/profile',
        AccountSettingsDestination.privacy =>
          '/settings/accounts/$account/privacy',
        AccountSettingsDestination.emojiPicker =>
          '/settings/accounts/$account/emoji-picker',
        AccountSettingsDestination.drive => '/settings/accounts/$account/drive',
        AccountSettingsDestination.notifications =>
          '/settings/accounts/$account/notifications',
        AccountSettingsDestination.muteBlock =>
          '/settings/accounts/$account/mute-block',
        AccountSettingsDestination.signOut => throw UnsupportedError(
          'unreachable',
        ),
      };
      if (selectedDestination != null) {
        ref.context.replace(location);
      } else {
        await ref.context.push(location);
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      shrinkWrap: true,
      physics: physics,
      padding: EdgeInsets.zero,
      children: AccountSettingsDestination.values
          .mapIndexed(
            (index, destination) => rail
                ? IconButtonTheme(
                    data: IconButtonThemeData(
                      style: IconButton.styleFrom(
                        foregroundColor:
                            destination == AccountSettingsDestination.signOut
                            ? Theme.of(context).colorScheme.error
                            : null,
                        disabledForegroundColor: Theme.of(
                          context,
                        ).colorScheme.primary,
                        minimumSize: const Size(48.0, 48.0),
                      ),
                    ),
                    child: IconButton(
                      tooltip: _buildLabel(destination),
                      onPressed: destination != selectedDestination
                          ? () => _onTap(ref, destination)
                          : null,
                      icon: _buildIcon(destination),
                    ),
                  )
                : ListTile(
                    leading: _buildIcon(destination),
                    title: Text(_buildLabel(destination)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: round && index == 0
                            ? const Radius.circular(8.0)
                            : Radius.zero,
                        bottom:
                            round &&
                                index ==
                                    AccountSettingsDestination.values.length - 1
                            ? const Radius.circular(8.0)
                            : Radius.zero,
                      ),
                    ),
                    onTap: destination != selectedDestination
                        ? () => _onTap(ref, destination)
                        : null,
                    selected: destination == selectedDestination,
                    iconColor: destination == AccountSettingsDestination.signOut
                        ? Theme.of(context).colorScheme.error
                        : null,
                    textColor: destination == AccountSettingsDestination.signOut
                        ? Theme.of(context).colorScheme.error
                        : null,
                  ),
          )
          .toList(),
    );
  }
}
