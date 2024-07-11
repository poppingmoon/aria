import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/reactions_notifier_provider.dart';
import '../../provider/note_provider.dart';
import 'emoji_sheet.dart';
import 'emoji_widget.dart';
import 'paginated_list_view.dart';
import 'user_preview.dart';
import 'user_sheet.dart';

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
      builder: (context, scrollController) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EmojiWidget(
                    account: account,
                    emoji: reaction,
                    style: DefaultTextStyle.of(context)
                        .style
                        .apply(fontSizeFactor: 1.5),
                    emojis: {...?note?.emojis, ...?note?.reactionEmojis},
                    onTap: () => showModalBottomSheet<void>(
                      context: context,
                      builder: (context) => EmojiSheet(
                        account: account,
                        emoji: reaction,
                        targetNote: note,
                      ),
                    ),
                  ),
                  if (reaction.startsWith(':')) Text(reaction),
                ],
              ),
            ),
          ),
          Expanded(
            child: PaginatedListView(
              controller: scrollController,
              paginationState: reactions,
              itemBuilder: (context, reaction) => UserPreview(
                account: account,
                user: reaction.user,
                avatarSize: 50.0,
                onTap: () =>
                    context.push('/$account/users/${reaction.user.id}'),
                onLongPress: () => showUserSheet(
                  context: context,
                  account: account,
                  userId: reaction.user.id,
                ),
              ),
              onRefresh: () => ref.refresh(
                reactionsNotifierProvider(account, noteId, reaction).future,
              ),
              loadMore: (skipError) => ref
                  .read(
                    reactionsNotifierProvider(account, noteId, reaction)
                        .notifier,
                  )
                  .loadMore(skipError: skipError),
              noItemsLabel: t.misskey.noUsers,
            ),
          ),
        ],
      ),
    );
  }
}
