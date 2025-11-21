import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/list_users_notifier_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/confirmation_dialog.dart';
import '../../dialog/user_select_dialog.dart';
import '../../widget/error_message.dart';
import '../../widget/haptic_feedback_refresh_indicator.dart';
import '../../widget/user_preview.dart';
import '../../widget/user_sheet.dart';

class ListUsers extends ConsumerWidget {
  const ListUsers({super.key, required this.account, required this.listId});

  final Account account;
  final String listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(listUsersNotifierProvider(account, listId));
    final theme = Theme.of(context);

    return HapticFeedbackRefreshIndicator(
      onRefresh: () =>
          ref.refresh(listUsersNotifierProvider(account, listId).future),
      child: switch (users) {
        AsyncValue(value: final users?) => ListView(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: Padding(
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
                                listUsersNotifierProvider(
                                  account,
                                  listId,
                                ).notifier,
                              )
                              .add(user),
                        );
                      }
                    },
                    child: Text(t.misskey.addUser),
                  ),
                ),
              ),
            ),
            if (users.isNotEmpty)
              for (final (index, user) in users.indexed) ...[
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: maxContentWidth,
                    child: ListTileTheme.merge(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: index == 0
                              ? const Radius.circular(8.0)
                              : Radius.zero,
                          bottom: index == users.length - 1
                              ? const Radius.circular(8.0)
                              : Radius.zero,
                        ),
                      ),
                      tileColor: theme.colorScheme.surface,
                      child: UserPreview(
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
                          color: theme.colorScheme.error,
                        ),
                        onTap: () => context.push('/$account/users/${user.id}'),
                        onLongPress: () => showUserSheet(
                          context: context,
                          account: account,
                          userId: user.id,
                        ),
                      ),
                    ),
                  ),
                ),
                if (index < users.length - 1)
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
                  const SizedBox(height: 120.0),
              ]
            else
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(t.misskey.noUsers),
                ),
              ),
          ],
        ),
        AsyncValue(:final error?, :final stackTrace) => SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Container(
              width: maxContentWidth,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ErrorMessage(error: error, stackTrace: stackTrace),
            ),
          ),
        ),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
