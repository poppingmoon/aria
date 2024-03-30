import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/user_reactions_notifier_provider.dart';
import '../../widget/emoji_widget.dart';
import '../../widget/note_widget.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/time_widget.dart';

class UserReactions extends ConsumerWidget {
  const UserReactions({
    super.key,
    required this.account,
    required this.userId,
  });

  final Account account;
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reactions = ref.watch(userReactionsNotifierProvider(account, userId));

    return PaginatedListView(
      paginationState: reactions,
      itemBuilder: (context, reaction) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                EmojiWidget(
                  account: account,
                  emoji: reaction.type,
                  style: DefaultTextStyle.of(context)
                      .style
                      .apply(fontSizeFactor: 1.5),
                  emojis: reaction.note.reactionEmojis,
                ),
                TimeWidget(time: reaction.createdAt),
              ],
            ),
          ),
          NoteWidget(
            account: account,
            noteId: reaction.note.id,
            withHardMute: false,
          ),
        ],
      ),
      onRefresh: () => ref.refresh(
        userReactionsNotifierProvider(account, userId).future,
      ),
      loadMore: (skipError) => ref
          .read(
            userReactionsNotifierProvider(account, userId).notifier,
          )
          .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.nothing,
    );
  }
}
