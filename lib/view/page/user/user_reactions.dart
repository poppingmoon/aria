import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/user_reactions_notifier_provider.dart';
import '../../widget/emoji_sheet.dart';
import '../../widget/emoji_widget.dart';
import '../../widget/note_widget.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/time_widget.dart';

class UserReactions extends ConsumerWidget {
  const UserReactions({super.key, required this.account, required this.userId});

  final Account account;
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reactions = ref.watch(userReactionsNotifierProvider(account, userId));

    return PaginatedListView(
      paginationState: reactions,
      itemBuilder:
          (context, reaction) => Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(8.0),
                  ),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    EmojiWidget(
                      account: account,
                      emoji: reaction.type,
                      style: DefaultTextStyle.of(
                        context,
                      ).style.apply(fontSizeFactor: 1.5),
                      emojis: reaction.note.reactionEmojis,
                      onTap:
                          () => showModalBottomSheet<void>(
                            context: context,
                            builder:
                                (context) => EmojiSheet(
                                  account: account,
                                  emoji: reaction.type,
                                ),
                          ),
                    ),
                    TimeWidget(time: reaction.createdAt),
                  ],
                ),
              ),
              NoteWidget(
                account: account,
                noteId: reaction.note.id,
                withHardMute: false,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(8.0),
                ),
              ),
            ],
          ),
      onRefresh:
          () => ref.refresh(
            userReactionsNotifierProvider(account, userId).future,
          ),
      loadMore:
          (skipError) => ref
              .read(userReactionsNotifierProvider(account, userId).notifier)
              .loadMore(skipError: skipError),
      panel: false,
      noItemsLabel: t.misskey.nothing,
    );
  }
}
