import 'package:material_ui/material_ui.dart';

import '../../extension/text_style_extension.dart';
import '../../model/account.dart';
import 'custom_emoji.dart';
import 'unicode_emoji.dart';

class const EmojiWidget({
  super.key,
  required final Account account,
  required final String emoji,
  final Map<String, String> emojis = const {},
  final TextStyle? style,
  final void Function()? onTap,
  final bool disableTooltip = false,
}) extends StatelessWidget {
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
