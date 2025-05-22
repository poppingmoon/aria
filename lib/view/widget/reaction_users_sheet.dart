import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/reactions_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/note_provider.dart';
import 'emoji_sheet.dart';
import 'emoji_widget.dart';
import 'paginated_list_view.dart';
import 'user_preview.dart';
import 'user_sheet.dart';

class ReactionUsersSheet extends HookConsumerWidget {
  const ReactionUsersSheet({
    required this.account,
    required this.noteId,
    this.initialReaction,
  });

  final Account account;
  final String noteId;
  final String? initialReaction;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (likeOnly, emojis, reactions) = ref.watch(
      noteProvider(account, noteId).select(
        (note) => (
          note?.reactionAcceptance == ReactionAcceptance.likeOnly,
          {...?note?.emojis, ...?note?.reactionEmojis},
          note?.reactions.entries
              .sortedBy<num>((e) => -e.value)
              .map((e) => e.key),
        ),
      ),
    );
    final reaction = useState(initialReaction);
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );
    final style = DefaultTextStyle.of(context).style;

    return DraggableScrollableSheet(
      minChildSize: 0.5,
      maxChildSize: 0.8,
      expand: false,
      builder: (context, scrollController) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12.0),
          if (!likeOnly) ...[
            SizedBox(
              height: style.lineHeight * 1.8,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 12.0),
                  ...?reactions?.map(
                    (emoji) => Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 2.0,
                        horizontal: 4.0,
                      ),
                      child: ElevatedButton(
                        onPressed: () => reaction.value = emoji,
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal: 6.0,
                          ),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            side: emoji == reaction.value
                                ? BorderSide(color: colors.accent)
                                : BorderSide.none,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          backgroundColor: colors.buttonBg,
                          elevation: 0.0,
                        ),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: style.lineHeight,
                          ),
                          child: EmojiWidget(
                            style: style,
                            account: account,
                            emoji: emoji,
                            emojis: emojis,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12.0),
                ],
              ),
            ),
            const Divider(),
          ],
          if (reaction.value case final reaction?) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: EmojiWidget(
                account: account,
                emoji: reaction,
                style: style.apply(fontSizeFactor: 1.5),
                emojis: emojis,
                onTap: () => showModalBottomSheet<void>(
                  context: context,
                  builder: (context) => EmojiSheet(
                    account: account,
                    emoji: reaction,
                    targetNoteId: noteId,
                  ),
                ),
              ),
            ),
            if (reaction.startsWith(':')) ...[
              const SizedBox(height: 2.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(reaction.replaceFirst('@.', '')),
              ),
            ],
            const SizedBox(height: 4.0),
            Expanded(
              child: _ReactionUsers(
                account: account,
                noteId: noteId,
                reaction: reaction,
                controller: scrollController,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _ReactionUsers extends ConsumerWidget {
  const _ReactionUsers({
    required this.account,
    required this.noteId,
    required this.reaction,
    this.controller,
  });

  final Account account;
  final String noteId;
  final String reaction;
  final ScrollController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reactions = ref.watch(
      reactionsNotifierProvider(account, noteId, reaction),
    );

    return PaginatedListView(
      controller: controller,
      paginationState: reactions,
      itemBuilder: (context, reaction) => UserPreview(
        account: account,
        user: reaction.user,
        avatarSize: 50.0,
        onTap: () => context.push('/$account/users/${reaction.user.id}'),
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
          .read(reactionsNotifierProvider(account, noteId, reaction).notifier)
          .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.noUsers,
    );
  }
}
