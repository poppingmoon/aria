import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/renotes_notifier_provider.dart';
import 'paginated_list_view.dart';
import 'user_preview.dart';

class RenoteUsersSheet extends ConsumerWidget {
  const RenoteUsersSheet({
    required this.account,
    required this.noteId,
  });

  final Account account;
  final String noteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final renotes = ref.watch(renotesNotifierProvider(account, noteId));

    return DraggableScrollableSheet(
      minChildSize: 0.5,
      maxChildSize: 0.8,
      expand: false,
      builder: (context, scrollController) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const Icon(Icons.repeat_rounded),
            title: Text(
              t.misskey.renote,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: PaginatedListView(
              controller: scrollController,
              paginationState: renotes,
              itemBuilder: (context, note) => UserPreview(
                account: account,
                user: note.user,
                onTap: () => context.push('/$account/users/${note.userId}'),
              ),
              onRefresh: () =>
                  ref.refresh(renotesNotifierProvider(account, noteId).future),
              loadMore: (skipError) => ref
                  .read(
                    renotesNotifierProvider(account, noteId).notifier,
                  )
                  .loadMore(skipError: skipError),
            ),
          ),
        ],
      ),
    );
  }
}
