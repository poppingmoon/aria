import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/reactions_notifier_provider.dart';
import '../../provider/note_provider.dart';
import 'custom_emoji.dart';
import 'paginated_list_view.dart';
import 'user_tile.dart';

class ReactionUsersSheet extends ConsumerWidget {
  const ReactionUsersSheet({
    required this.account,
    required this.noteId,
    required this.reaction,
  });

  final Account account;
  final String noteId;
  final String reaction;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = ref.watch(noteProvider(account, noteId));
    final reactions =
        ref.watch(reactionsNotifierProvider(account, noteId, reaction));

    return DraggableScrollableSheet(
      minChildSize: 0.5,
      maxChildSize: 0.8,
      expand: false,
      builder: (context, scrollController) => PaginatedListView(
        header: SliverList.list(
          children: [
            if (reaction.startsWith(':'))
              ListTile(
                title: Align(
                  alignment: Alignment.centerLeft,
                  child: CustomEmoji(
                    account: account,
                    emoji: reaction,
                    height: 32.0,
                    url: note?.reactionEmojis[
                        reaction.substring(1, reaction.length - 1)],
                  ),
                ),
                subtitle: Text(reaction),
              )
            else
              ListTile(title: Text(reaction)),
            const Divider(height: 0.0),
          ],
        ),
        controller: scrollController,
        paginationState: reactions,
        itemBuilder: (context, reaction) => UserTile(
          account: account,
          user: reaction.user,
          avatarSize: 50.0,
          onTap: () => context.push('/$account/users/${reaction.user.id}'),
        ),
        onRefresh: () => ref.refresh(
          reactionsNotifierProvider(account, noteId, reaction).future,
        ),
        loadMore: (skipError) => ref
            .read(
              reactionsNotifierProvider(account, noteId, reaction).notifier,
            )
            .loadMore(skipError: skipError),
        noItemsLabel: t.misskey.noUsers,
      ),
    );
  }
}
