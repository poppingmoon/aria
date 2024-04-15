import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/emojis_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/notes_notifier_provider.dart';
import '../../util/check_reaction_permissions.dart';
import '../../util/decode_custom_emoji.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/reaction_confirmation_dialog.dart';
import 'emoji_widget.dart';
import 'reaction_users_sheet.dart';

class ReactionButton extends ConsumerWidget {
  const ReactionButton({
    super.key,
    required this.account,
    required this.note,
    required this.emoji,
    required this.count,
    this.scale,
  });

  final Account account;
  final Note note;
  final String emoji;
  final int count;
  final double? scale;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final isCustomEmoji = emoji.startsWith(':');
    final (name, host) = decodeCustomEmoji(emoji);
    final data = isCustomEmoji
        ? ref.watch(
            emojisNotifierProvider(account.host)
                .select((emojis) => emojis[name]),
          )
        : null;
    final canReact = !account.isGuest &&
        (!isCustomEmoji ||
            data != null && checkReactionPermissions(i, note, data));
    final isMyReaction = emoji == note.myReaction;
    // In v12, `note.emojis` contains emoji urls for both text and reactions.
    final emojis = {...note.emojis, ...note.reactionEmojis};
    final double scale = this.scale ??
        ref.watch(
          generalSettingsNotifierProvider
              .select((settings) => settings.reactionsDisplayScale),
        );
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));
    final style =
        DefaultTextStyle.of(context).style.apply(fontSizeFactor: scale);

    return ElevatedButton(
      onPressed: canReact
          ? () async {
              if (note.id.isEmpty) return;
              if (note.myReaction == null) {
                final localEmoji = isCustomEmoji ? ':$name@.:' : emoji;
                if (ref
                        .read(generalSettingsNotifierProvider)
                        .confirmBeforeReact ||
                    (isCustomEmoji && host != null)) {
                  final confirmed = await confirmReaction(
                    context,
                    account: account,
                    emoji: localEmoji,
                    note: note,
                  );
                  if (!confirmed) return;
                }
                if (!context.mounted) return;
                await futureWithDialog(
                  context,
                  ref
                      .read(notesNotifierProvider(account).notifier)
                      .react(note.id, localEmoji),
                );
              } else if (isMyReaction) {
                final confirmed = await confirm(
                  context,
                  message: t.misskey.cancelReactionConfirm,
                );
                if (!confirmed) return;
                if (!context.mounted) return;
                await futureWithDialog(
                  context,
                  ref
                      .read(notesNotifierProvider(account).notifier)
                      .unreact(note.id),
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
                        style: DefaultTextStyle.of(context)
                            .style
                            .apply(fontSizeFactor: 2.0),
                      ),
                    ],
                  ),
                );
                if (!confirmed) return;
                if (!context.mounted) return;
                await futureWithDialog(
                  context,
                  ref
                      .read(notesNotifierProvider(account).notifier)
                      .changeReaction(note.id, localEmoji),
                );
              }
            }
          : null,
      onLongPress: note.id.isNotEmpty
          ? () => showModalBottomSheet<void>(
                context: context,
                builder: (context) => ReactionUsersSheet(
                  account: account,
                  noteId: note.id,
                  reaction: emoji,
                ),
                isScrollControlled: true,
              )
          : null,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(2.0 * scale),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          side: isMyReaction
              ? BorderSide(color: colors.accent)
              : canReact && host != null
                  ? BorderSide(color: colors.divider)
                  : BorderSide.none,
          borderRadius: BorderRadius.circular(4.0 * scale),
        ),
        foregroundColor: isMyReaction ? colors.accent : colors.fg,
        backgroundColor: isMyReaction
            ? colors.accentedBg
            : canReact && host == null
                ? colors.buttonBg
                : Colors.transparent,
        elevation: 0.0,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 4.0 * scale,
          horizontal: 2.0 * scale,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: style.lineHeight),
          child: FittedBox(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                EmojiWidget(
                  account: account,
                  emoji: emoji,
                  emojis: emojis,
                  style: style,
                  disableTooltip: true,
                ),
                SizedBox(width: 4.0 * scale),
                Text(count.toString(), style: style),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
