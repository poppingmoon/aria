import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:twemoji_v2/twemoji_v2.dart';

import '../../model/general_settings.dart';
import '../../provider/general_settings_notifier_provider.dart';

const _v11Reactions = {
  'like': '👍',
  'love': '❤',
  'laugh': '😆',
  'hmm': '🤔',
  'surprise': '😮',
  'congrats': '🎉',
  'angry': '💢',
  'confused': '😥',
  'rip': '😇',
  'pudding': '🍮',
  'star': '⭐',
};

class UnicodeEmoji extends ConsumerWidget {
  const UnicodeEmoji({
    super.key,
    required this.emoji,
    this.style,
    this.onTap,
    this.inline = false,
  });

  final String emoji;
  final TextStyle? style;
  final void Function()? onTap;
  final bool inline;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emojiStyle = ref.watch(
      generalSettingsNotifierProvider.select((settings) => settings.emojiStyle),
    );
    final emoji = _v11Reactions[this.emoji] ?? this.emoji;
    final style = DefaultTextStyle.of(context).style.merge(this.style);

    switch (emojiStyle) {
      case EmojiStyle.native:
        return InkWell(
          onTap: onTap,
          child: Text(emoji, style: style),
        );
      case EmojiStyle.twemoji:
        final padding = style.fontSize! * ((style.height ?? 1.0) - 1.0) / 2;
        return InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: padding,
              vertical: inline ? 0.0 : padding,
            ),
            child: Twemoji(
              emoji: emoji,
              height: style.fontSize,
              width: style.fontSize,
              opacity: style.color?.opacity,
            ),
          ),
        );
    }
  }
}
