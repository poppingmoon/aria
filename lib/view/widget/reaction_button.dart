import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/sound_settings.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/emoji_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/misskey_sfx_notifier_provider.dart';
import '../../provider/notes_notifier_provider.dart';
import '../../util/check_reaction_permissions.dart';
import '../../util/decode_custom_emoji.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/reaction_confirmation_dialog.dart';
import 'emoji_widget.dart';
import 'reaction_effect.dart';
import 'reaction_users_sheet.dart';

class ReactionButton extends ConsumerWidget {
  const ReactionButton({
    super.key,
    required this.account,
    required this.note,
    required this.emoji,
    required this.count,
    this.isNewReaction = false,
    this.scale,
  });

  final Account account;
  final Note note;
  final String emoji;
  final int count;
  final bool isNewReaction;
  final double? scale;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;
    final (showReactionsCount, reduceAnimation, reactionsDisplayScale) = ref
        .watch(
          generalSettingsNotifierProvider.select(
            (settings) => (
              settings.showReactionsCountInReactionButton,
              settings.reduceAnimation,
              settings.reactionsDisplayScale,
            ),
          ),
        );
    final isCustomEmoji = emoji.startsWith(':');
    final (name, host) = decodeCustomEmoji(emoji);
    final data = isCustomEmoji
        ? ref.watch(emojiProvider(account.host, ':$name:'))
        : null;
    final canReact =
        !account.isGuest &&
        (!isCustomEmoji ||
            data != null && checkReactionPermissions(i, note, data));
    final isMyReaction = emoji == note.myReaction;
    // In v12, `note.emojis` contains emoji urls for both text and reactions.
    final emojis = {...note.emojis, ...note.reactionEmojis};
    final scale = this.scale ?? reactionsDisplayScale;
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );
    final style = DefaultTextStyle.of(
      context,
    ).style.apply(fontSizeFactor: scale);

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
                unawaited(
                  ref
                      .read(
                        misskeySfxNotifierProvider(
                          OperationType.reaction,
                        ).notifier,
                      )
                      .play(),
                );
                await futureWithDialog(
                  context,
                  ref
                      .read(notesNotifierProvider(account).notifier)
                      .react(note.id, localEmoji),
                  overlay: false,
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
                unawaited(
                  ref
                      .read(
                        misskeySfxNotifierProvider(
                          OperationType.reaction,
                        ).notifier,
                      )
                      .play(),
                );
                await futureWithDialog(
                  context,
                  ref
                      .read(notesNotifierProvider(account).notifier)
                      .changeReaction(note.id, localEmoji),
                  overlay: false,
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
                initialReaction: emoji,
              ),
              clipBehavior: Clip.antiAlias,
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
                if (reduceAnimation)
                  EmojiWidget(
                    account: account,
                    emoji: emoji,
                    emojis: emojis,
                    style: style,
                    disableTooltip: true,
                  )
                else
                  _EmojiWidgetWithEffect(
                    account: account,
                    note: note,
                    emoji: emoji,
                    emojis: emojis,
                    style: style,
                    count: count,
                    isNewReaction: isNewReaction,
                  ),
                if (showReactionsCount) ...[
                  SizedBox(width: 4.0 * scale),
                  Text(count.toString(), style: style),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _EmojiWidgetWithEffect extends HookWidget {
  const _EmojiWidgetWithEffect({
    required this.account,
    required this.note,
    required this.emoji,
    required this.emojis,
    required this.style,
    required this.count,
    required this.isNewReaction,
  });

  final Account account;
  final Note note;
  final String emoji;
  final Map<String, String> emojis;
  final TextStyle style;
  final int count;
  final bool isNewReaction;

  @override
  Widget build(BuildContext context) {
    final forceShowEffect = useRef(isNewReaction);
    final previousCount = useRef(count);
    useEffect(() {
      if (count > previousCount.value || forceShowEffect.value) {
        Future.delayed(const Duration(milliseconds: 50), () {
          if (!context.mounted) return;
          if (!(ModalRoute.of(context)?.isCurrent ?? false)) return;
          if (context.findRenderObject() case final RenderBox renderBox) {
            final offset = renderBox.localToGlobal(Offset.zero);
            final entry = OverlayEntry(
              builder: (context) => Positioned(
                left: offset.dx,
                top: offset.dy,
                child: Material(
                  color: Colors.transparent,
                  child: ReactionEffect(
                    account: account,
                    emoji: emoji,
                    emojis: emojis,
                    style: style,
                  ),
                ),
              ),
            );
            Overlay.of(context).insert(entry);
            Future.delayed(const Duration(milliseconds: 1100), entry.remove);
          }
        });
      }
      previousCount.value = count;
      forceShowEffect.value = false;
      return;
    }, [count]);

    return EmojiWidget(
      account: account,
      emoji: emoji,
      emojis: emojis,
      style: style,
      disableTooltip: true,
    );
  }
}
