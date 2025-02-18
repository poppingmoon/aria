import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/emoji_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/muted_emojis_notifier_provider.dart';
import '../../provider/notes_notifier_provider.dart';
import '../../provider/pinned_emojis_notifier_provider.dart';
import '../../util/check_reaction_permissions.dart';
import '../../util/copy_text.dart';
import '../../util/decode_custom_emoji.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/reaction_confirmation_dialog.dart';
import 'custom_emoji.dart';
import 'emoji_widget.dart';

class EmojiSheet extends ConsumerWidget {
  const EmojiSheet({
    super.key,
    required this.account,
    required this.emoji,
    this.targetNote,
  });

  final Account account;
  final String emoji;
  final Note? targetNote;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final isCustomEmoji = emoji.startsWith(':');
    final (name, host) = decodeCustomEmoji(emoji);
    final data =
        isCustomEmoji
            ? ref.watch(emojiProvider(account.host, ':$name:'))
            : null;
    final canReact =
        !account.isGuest &&
        targetNote != null &&
        (!isCustomEmoji ||
            data != null && checkReactionPermissions(i, targetNote!, data));
    final isPinnedForReaction = ref.watch(
      pinnedEmojisNotifierProvider(
        account,
        reaction: true,
      ).select((emojis) => emojis.contains(emoji)),
    );
    final isPinned = ref.watch(
      pinnedEmojisNotifierProvider(
        account,
      ).select((emojis) => emojis.contains(emoji)),
    );
    final isMuted = ref
        .watch(mutedEmojisNotifierProvider(account))
        .contains(emoji.replaceFirst('@.', ''));

    return ListView(
      shrinkWrap: true,
      children: [
        if (emoji.startsWith(':'))
          ListTile(
            title: Align(
              alignment: AlignmentDirectional.centerStart,
              child: CustomEmoji(
                account: account,
                emoji: emoji,
                height: 32.0,
                url:
                    targetNote?.reactionEmojis[emoji.substring(
                      1,
                      emoji.length - 1,
                    )],
              ),
            ),
            subtitle: Text(emoji.replaceAll('@.', '')),
          )
        else
          ListTile(title: Text(emoji)),
        const Divider(height: 0),
        ListTile(
          leading: const Icon(Icons.copy),
          title: Text(t.misskey.copy),
          onTap: () => copyToClipboard(context, emoji.replaceAll('@.', '')),
        ),
        if (canReact)
          ListTile(
            leading: const Icon(Icons.add),
            title: Text(t.misskey.doReaction),
            onTap: () async {
              if (targetNote?.myReaction == null) {
                final localEmoji = isCustomEmoji ? ':$name@.:' : emoji;
                if (ref
                        .read(generalSettingsNotifierProvider)
                        .confirmBeforeReact ||
                    (isCustomEmoji && host != null)) {
                  final confirmed = await confirmReaction(
                    context,
                    account: account,
                    emoji: localEmoji,
                    note: targetNote!,
                  );
                  if (!confirmed) return;
                }
                if (!context.mounted) return;
                await futureWithDialog(
                  context,
                  ref
                      .read(notesNotifierProvider(account).notifier)
                      .react(targetNote!.id, localEmoji),
                  overlay: false,
                );
              } else {
                final localEmoji = isCustomEmoji ? ':$name@.:' : emoji;
                final confirmed = await confirm(
                  context,
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(t.misskey.changeReactionConfirm),
                      EmojiWidget(
                        account: account,
                        emoji: localEmoji,
                        style: DefaultTextStyle.of(
                          context,
                        ).style.apply(fontSizeFactor: 2.0),
                      ),
                    ],
                  ),
                );
                if (!confirmed) return;
                if (!context.mounted) return;
                await ref
                    .read(notesNotifierProvider(account).notifier)
                    .changeReaction(targetNote!.id, localEmoji);
              }
              if (!context.mounted) return;
              context.pop();
            },
          ),
        if (!account.isGuest && host == null) ...[
          if (!isPinnedForReaction)
            ListTile(
              leading: const Icon(Symbols.keep, fill: 1.0),
              title: Text('${t.aria.pinToEmojiPicker} (${t.misskey.reaction})'),
              onTap: () {
                ref
                    .read(
                      pinnedEmojisNotifierProvider(
                        account,
                        reaction: true,
                      ).notifier,
                    )
                    .add(emoji);
                context.pop();
              },
            ),
          if (!isPinned)
            ListTile(
              leading: const Icon(Symbols.keep_off, fill: 1.0),
              title: Text('${t.aria.pinToEmojiPicker} (${t.misskey.general})'),
              onTap: () {
                ref
                    .read(pinnedEmojisNotifierProvider(account).notifier)
                    .add(emoji);
                context.pop();
              },
            ),
        ],
        if (!account.isGuest)
          if (isMuted)
            ListTile(
              leading: const Icon(Icons.visibility),
              title: Text(t.misskey.unmute),
              onTap:
                  () => ref
                      .read(mutedEmojisNotifierProvider(account).notifier)
                      .remove(emoji),
            )
          else
            ListTile(
              leading: const Icon(Icons.visibility_off),
              title: Text(t.misskey.mute),
              onTap:
                  () => ref
                      .read(mutedEmojisNotifierProvider(account).notifier)
                      .add(emoji),
            ),
        if (isCustomEmoji)
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: Text(t.misskey.info),
            onTap: () => context.push('/${host ?? account}/emojis/$name'),
          ),
      ],
    );
  }
}
