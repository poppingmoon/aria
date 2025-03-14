import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../extension/text_style_extension.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/blockings_notifier_provider.dart';
import '../../../util/format_datetime.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/confirmation_dialog.dart';
import '../../widget/acct_widget.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/user_avatar.dart';
import '../../widget/user_sheet.dart';
import '../../widget/username_widget.dart';

class BlockedUsersPage extends ConsumerWidget {
  const BlockedUsersPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final blockings = ref.watch(blockingsNotifierProvider(account));
    final theme = Theme.of(context);
    final style = theme.textTheme.bodyMedium?.apply(
      color: theme.colorScheme.onSurface.withValues(alpha: 0.85),
      fontSizeFactor: 0.9,
    );

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.blockedUsers)),
      body: PaginatedListView(
        paginationState: blockings,
        itemBuilder:
            (context, blocking) => ListTile(
              leading: UserAvatar(
                account: account,
                user: blocking.blockee,
                size: 32.0,
              ),
              title: UsernameWidget(account: account, user: blocking.blockee),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AcctWidget(account: account, user: blocking.blockee),
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
                        TextSpan(text: absoluteTime(blocking.createdAt)),
                        const TextSpan(text: ' ('),
                        TextSpan(text: relativeTime(blocking.createdAt)),
                        const TextSpan(text: ')'),
                      ],
                    ),
                    style: style,
                  ),
                ],
              ),
              trailing: IconButton(
                tooltip: t.misskey.unblock,
                onPressed: () async {
                  final confirmed = await confirm(
                    context,
                    message: t.misskey.unblockConfirm,
                  );
                  if (!context.mounted) return;
                  if (confirmed) {
                    await futureWithDialog(
                      context,
                      ref
                          .read(blockingsNotifierProvider(account).notifier)
                          .delete(blocking.blockeeId),
                    );
                  }
                },
                icon: const Icon(Icons.close),
                color: Theme.of(context).colorScheme.error,
              ),
              onTap:
                  () => context.push('/$account/users/${blocking.blockeeId}'),
              onLongPress:
                  () => showUserSheet(
                    context: context,
                    account: account,
                    userId: blocking.blockeeId,
                  ),
            ),
        onRefresh: () => ref.refresh(blockingsNotifierProvider(account).future),
        loadMore:
            (skipError) => ref
                .read(blockingsNotifierProvider(account).notifier)
                .loadMore(skipError: skipError),
        noItemsLabel: t.misskey.noUsers,
      ),
    );
  }
}
