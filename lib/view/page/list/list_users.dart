import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/list_users_notifier_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/confirmation_dialog.dart';
import '../../dialog/user_select_dialog.dart';
import '../../widget/error_message.dart';
import '../../widget/user_preview.dart';
import '../../widget/user_sheet.dart';

class ListUsers extends ConsumerWidget {
  const ListUsers({
    super.key,
    required this.account,
    required this.listId,
  });

  final Account account;
  final String listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(listUsersNotifierProvider(account, listId));

    return Center(
      child: Container(
        width: 800.0,
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListTileTheme(
          tileColor: Theme.of(context).colorScheme.surface,
          child: switch (users) {
            AsyncValue(valueOrNull: final users?) => ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        final user = await selectUser(
                          context,
                          account,
                          includeSelf: true,
                        );
                        if (!context.mounted) return;
                        if (user != null) {
                          await futureWithDialog(
                            context,
                            ref
                                .read(
                                  listUsersNotifierProvider(account, listId)
                                      .notifier,
                                )
                                .add(user),
                          );
                        }
                      },
                      child: Text(t.misskey.addUser),
                    ),
                  ),
                  if (users.isNotEmpty) ...[
                    Container(
                      height: 8.0,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        color: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                    ...ListTile.divideTiles(
                      context: context,
                      tiles: users.map(
                        (user) => UserPreview(
                          account: account,
                          user: user,
                          trailing: IconButton(
                            tooltip: t.misskey.delete,
                            onPressed: () async {
                              final confirmed = await confirm(
                                context,
                                message: t.misskey.deleteConfirm,
                              );
                              if (!context.mounted) return;
                              if (confirmed) {
                                await futureWithDialog(
                                  context,
                                  ref
                                      .read(
                                        listUsersNotifierProvider(
                                          account,
                                          listId,
                                        ).notifier,
                                      )
                                      .remove(user.id),
                                );
                              }
                            },
                            icon: const Icon(Icons.close),
                            color: Theme.of(context).colorScheme.error,
                          ),
                          onTap: () =>
                              context.push('/$account/users/${user.id}'),
                          onLongPress: () => showUserSheet(
                            context: context,
                            account: account,
                            userId: user.id,
                          ),
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
                        color: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                  ],
                ],
              ),
            AsyncValue(:final error?, :final stackTrace) =>
              ErrorMessage(error: error, stackTrace: stackTrace),
            _ => const Center(child: CircularProgressIndicator()),
          },
        ),
      ),
    );
  }
}
