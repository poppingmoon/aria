import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/mutings_notifier_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/confirmation_dialog.dart';
import '../../widget/acct_widget.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/time_widget.dart';
import '../../widget/user_avatar.dart';
import '../../widget/user_sheet.dart';
import '../../widget/username_widget.dart';

class MutedUsersPage extends ConsumerWidget {
  const MutedUsersPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mutings = ref.watch(mutingsNotifierProvider(account));

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.mutedUsers)),
      body: PaginatedListView(
        paginationState: mutings,
        itemBuilder: (context, muting) => ListTile(
          leading: UserAvatar(account: account, user: muting.mutee, size: 32.0),
          title: UsernameWidget(account: account, user: muting.mutee),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AcctWidget(account: account, user: muting.mutee),
              TimeWidget(time: muting.createdAt, detailed: true),
              if (muting.expiresAt != null)
                TimeWidget(time: muting.expiresAt, detailed: true)
              else
                Text(t.misskey.indefinitely),
            ],
          ),
          trailing: IconButton(
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
                      .read(mutingsNotifierProvider(account).notifier)
                      .delete(muting.muteeId),
                );
              }
            },
            icon: const Icon(Icons.close),
            color: Theme.of(context).colorScheme.error,
          ),
          onTap: () => context.push('/$account/users/${muting.muteeId}'),
          onLongPress: () => showUserSheet(
            context: context,
            account: account,
            userId: muting.muteeId,
          ),
        ),
        onRefresh: () => ref.refresh(mutingsNotifierProvider(account).future),
        loadMore: (skipError) => ref
            .read(mutingsNotifierProvider(account).notifier)
            .loadMore(skipError: skipError),
        noItemsLabel: t.misskey.noUsers,
      ),
    );
  }
}
