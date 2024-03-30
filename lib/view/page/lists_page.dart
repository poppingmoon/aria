import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/lists_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/text_field_dialog.dart';
import '../widget/error_message.dart';

class ListsPage extends ConsumerWidget {
  const ListsPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lists = ref.watch(listsNotifierProvider(account));
    final i = ref.watch(iNotifierProvider(account));

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.lists)),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(listsNotifierProvider(account).future),
        child: switch (lists) {
          AsyncValue(valueOrNull: final lists?) => lists.isEmpty
              ? Center(child: Text(t.misskey.noLists))
              : ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                    title: Text(lists[index].name ?? ''),
                    subtitle: Text(
                      t.misskey.nUsers(
                        n: '${lists[index].userIds.length} / ${i.valueOrNull?.policies?.userEachUserListsLimit.toInt()}',
                      ),
                    ),
                    onTap: () =>
                        context.push('/$account/lists/${lists[index].id}'),
                  ),
                  separatorBuilder: (_, __) => const Divider(height: 0.0),
                  itemCount: lists.length,
                ),
          AsyncValue(:final error?, :final stackTrace) =>
            ErrorMessage(error: error, stackTrace: stackTrace),
          _ => const Center(child: CircularProgressIndicator()),
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final name = await showDialog<String>(
            context: context,
            builder: (context) =>
                TextFieldDialog(title: Text(t.misskey.enterListName)),
          );
          if (!context.mounted) return;
          if (name != null) {
            await futureWithDialog(
              context,
              ref.read(listsNotifierProvider(account).notifier).create(name),
            );
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
