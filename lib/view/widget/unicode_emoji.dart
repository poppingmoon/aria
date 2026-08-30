import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../extension/text_style_extension.dart';
import '../../gen/assets.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../model/account.dart';
import '../../model/general_settings.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/muted_emojis_notifier_provider.dart';

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

class const UnicodeEmoji({
  super.key,
  final Account? account,
  required final String emoji,
  final TextStyle? style,
  final void Function()? onTap,
  final void Function()? onLongPress,
}) extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emojiStyle = ref.watch(
      generalSettingsNotifierProvider.select((settings) => settings.emojiStyle),
    );
    final emoji = _v11Reactions[this.emoji] ?? this.emoji;
    final style = DefaultTextStyle.of(context).style.merge(this.style);
    final muted = ref
        .watch(mutedEmojisNotifierProvider(account ?? const Account.dummy()))
        .contains(emoji);
    if (muted) {
      return InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        child: Assets.misskey.packages.frontend.assets.unknown.image(
          height: style.lineHeight,
          opacity: AlwaysStoppedAnimation(style.color?.a ?? 1.0),
        ),
      );
    }

    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      child: SizedBox.square(
        dimension: style.lineHeight,
        child: Center(
          child: Text(
            emoji,
            style: style.copyWith(
              fontFamily: switch (emojiStyle) {
                EmojiStyle.native => null,
                EmojiStyle.twemoji => FontFamily.twemojiMozilla,
              },
            ),
          ),
        ),
      ),
    );
  }
}
