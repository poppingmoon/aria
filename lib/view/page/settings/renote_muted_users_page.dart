import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../extension/text_style_extension.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/renote_mutings_notifier_provider.dart';
import '../../../util/format_datetime.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/confirmation_dialog.dart';
import '../../widget/acct_widget.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/user_avatar.dart';
import '../../widget/user_sheet.dart';
import '../../widget/username_widget.dart';

class RenoteMutedUsersPage extends ConsumerWidget {
  const RenoteMutedUsersPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final renoteMutings = ref.watch(renoteMutingsNotifierProvider(account));
    final theme = Theme.of(context);
    final style = theme.textTheme.bodyMedium?.apply(
      color: theme.colorScheme.onSurface.withValues(alpha: 0.85),
      fontSizeFactor: 0.9,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('${t.misskey.mutedUsers} (${t.misskey.renote})'),
      ),
      body: PaginatedListView(
        paginationState: renoteMutings,
        itemBuilder:
            (context, renoteMuting) => ListTile(
              leading: UserAvatar(
                account: account,
                user: renoteMuting.mutee,
                size: 32.0,
              ),
              title: UsernameWidget(account: account, user: renoteMuting.mutee),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AcctWidget(account: account, user: renoteMuting.mutee),
                  const SizedBox(height: 4.0),
                  Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Icon(
                            Icons.schedule,
                            size: style?.lineHeight,
                            color: style?.color,
                          ),
                        ),
                        const WidgetSpan(child: SizedBox(width: 2.0)),
                        TextSpan(text: absoluteTime(renoteMuting.createdAt)),
                        const TextSpan(text: ' ('),
                        TextSpan(text: relativeTime(renoteMuting.createdAt)),
                        const TextSpan(text: ')'),
                      ],
                    ),
                    style: style,
                  ),
                ],
              ),
              trailing: IconButton(
                tooltip: t.misskey.renoteUnmute,
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
                          .read(renoteMutingsNotifierProvider(account).notifier)
                          .delete(renoteMuting.muteeId),
                    );
                  }
                },
                icon: const Icon(Icons.close),
                color: Theme.of(context).colorScheme.error,
              ),
              onTap:
                  () => context.push('/$account/users/${renoteMuting.muteeId}'),
              onLongPress:
                  () => showUserSheet(
                    context: context,
                    account: account,
                    userId: renoteMuting.muteeId,
                  ),
            ),
        onRefresh:
            () => ref.refresh(renoteMutingsNotifierProvider(account).future),
        loadMore:
            (skipError) => ref
                .read(renoteMutingsNotifierProvider(account).notifier)
                .loadMore(skipError: skipError),
        noItemsLabel: t.misskey.noUsers,
      ),
    );
  }
}
