import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/api/lists_notifier_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/text_field_dialog.dart';
import '../../widget/error_message.dart';

class ListsPage extends ConsumerWidget {
  const ListsPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lists = ref.watch(listsNotifierProvider(account));
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.lists)),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(listsNotifierProvider(account).future),
        child: switch (lists) {
          AsyncValue(valueOrNull: final lists?) =>
            lists.isEmpty
                ? LayoutBuilder(
                    builder: (context, constraint) => SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: SizedBox(
                        height: constraint.maxHeight,
                        child: Center(child: Text(t.misskey.nothing)),
                      ),
                    ),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) => Center(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 8.0,
                          top: index == 0 ? 8.0 : 0.0,
                          right: 8.0,
                          bottom: index == lists.length - 1 ? 120.0 : 0.0,
                        ),
                        width: maxContentWidth,
                        child: ListTileTheme.merge(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: index == 0
                                  ? const Radius.circular(8.0)
                                  : Radius.zero,
                              bottom: index == lists.length - 1
                                  ? const Radius.circular(8.0)
                                  : Radius.zero,
                            ),
                          ),
                          tileColor: theme.colorScheme.surface,
                          child: ListTile(
                            title: Text(lists[index].name ?? ''),
                            subtitle: Text(
                              t.misskey.nUsers(
                                n: [
                                  NumberFormat().format(
                                    lists[index].userIds.length,
                                  ),
                                  if (i?.policies case UserPolicies(
                                    :final userEachUserListsLimit?,
                                  ))
                                    ' / ${NumberFormat().format(userEachUserListsLimit)}',
                                ].join(),
                              ),
                            ),
                            onTap: () => context.push(
                              '/$account/lists/${lists[index].id}',
                            ),
                          ),
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: SizedBox(
                          width: maxContentWidth,
                          child: Divider(height: 0.0),
                        ),
                      ),
                    ),
                    itemCount: lists.length,
                  ),
          AsyncValue(:final error?, :final stackTrace) => SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: ErrorMessage(error: error, stackTrace: stackTrace),
              ),
            ),
          ),
          _ => const Center(child: CircularProgressIndicator()),
        },
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: t.misskey.createList,
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
