import 'package:flutter/material.dart';

import '../../extension/text_style_extension.dart';
import '../../model/account.dart';
import 'custom_emoji.dart';
import 'unicode_emoji.dart';

class EmojiWidget extends StatelessWidget {
  const EmojiWidget({
    super.key,
    required this.account,
    required this.emoji,
    this.emojis = const {},
    this.style,
    this.onTap,
    this.disableTooltip = false,
  });

  final Account account;
  final String emoji;
  final Map<String, String> emojis;
  final TextStyle? style;
  final void Function()? onTap;
  final bool disableTooltip;

  @override
  Widget build(BuildContext context) {
    if (emoji.startsWith(':')) {
      return CustomEmoji(
        account: account,
        emoji: emoji,
        url: emojis[emoji.substring(1, emoji.length - 1)],
        height: style?.lineHeight,
        opacity: style?.color?.a ?? 1.0,
        onTap: onTap,
        disableTooltip: disableTooltip,
        fallbackTextStyle: style,
      );
    } else {
      return UnicodeEmoji(
        account: account,
        emoji: emoji,
        style: style,
        onTap: onTap,
      );
    }
  }
}
