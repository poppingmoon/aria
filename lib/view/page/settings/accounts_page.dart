import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../provider/accounts_notifier_provider.dart';
import '../../widget/account_preview.dart';
import '../../widget/general_settings_scaffold.dart';
import '../../widget/reorderable_drag_start_listener_wrapper.dart';

class AccountsPage extends HookConsumerWidget {
  const AccountsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accounts = ref.watch(accountsNotifierProvider);

    return GeneralSettingsScaffold(
      appBar: AppBar(title: Text(t.misskey.accounts)),
      body: accounts.isEmpty
          ? Center(child: Text(t.aria.noAccounts))
          : ReorderableListView.builder(
              itemBuilder: (context, index) {
                if (index == 0) {
                  return ReorderableDragStartListener(
                    key: ValueKey(index),
                    index: index,
                    enabled: false,
                    child: const SizedBox(height: 4.0),
                  );
                } else if (index < accounts.length + 1) {
                  final account = accounts[index - 1];
                  return ReorderableDragStartListenerWrapper(
                    key: ValueKey(index),
                    index: index,
                    child: Card(
                      color: Theme.of(context).colorScheme.surface,
                      elevation: 0.0,
                      clipBehavior: Clip.hardEdge,
                      child: AccountPreview(
                        account: account,
                        trailing: const Icon(Icons.drag_handle),
                        avatarSize: 40.0,
                        onTap: () =>
                            context.push('/settings/accounts/$account'),
                      ),
                    ),
                  );
                } else {
                  return ReorderableDragStartListener(
                    key: ValueKey(index),
                    index: index,
                    enabled: false,
                    child: const SizedBox(height: 80.0),
                  );
                }
              },
              itemCount: accounts.length + 2,
              onReorder: (oldIndex, newIndex) =>
                  ref.read(accountsNotifierProvider.notifier).reorder(
                        max(0, oldIndex - 1),
                        min(newIndex - 1, accounts.length),
                      ),
              proxyDecorator: (child, _, animation) => AnimatedBuilder(
                animation: animation,
                builder: (context, child) {
                  final animValue = Curves.easeInOut.transform(animation.value);
                  final elevation = lerpDouble(0, 6, animValue)!;
                  return Material(
                    elevation: elevation,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.transparent,
                    child: child,
                  );
                },
                child: child,
              ),
              buildDefaultDragHandles: false,
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push('/login'),
        icon: const Icon(Icons.add),
        label: Text(t.misskey.addAccount),
      ),
      bodyMargin: const EdgeInsets.symmetric(horizontal: 8.0),
      selectedDestination: GeneralSettingsDestination.accounts,
    );
  }
}
