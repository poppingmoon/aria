import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/lists_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
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
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.lists)),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(listsNotifierProvider(account).future),
        child: Center(
          child: switch (lists) {
            AsyncValue(valueOrNull: final lists?) => lists.isEmpty
                ? Text(t.misskey.nothing)
                : Container(
                    width: 800.0,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
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
                          ...ListTile.divideTiles(
                            context: context,
                            tiles: lists.map(
                              (list) => ListTile(
                                title: Text(list.name ?? ''),
                                subtitle: Text(
                                  t.misskey.nUsers(
                                    n: '${list.userIds.length} / ${i.valueOrNull?.policies?.userEachUserListsLimit.toInt()}',
                                  ),
                                ),
                                onTap: () =>
                                    context.push('/$account/lists/${list.id}'),
                              ),
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
                              color: colors.panel,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
            AsyncValue(:final error?, :final stackTrace) =>
              ErrorMessage(error: error, stackTrace: stackTrace),
            _ => const CircularProgressIndicator(),
          },
        ),
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
