import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../extension/text_style_extension.dart';
import '../../gen/assets.gen.dart';
import '../../model/account.dart';
import '../../provider/emoji_url_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/muted_emojis_notifier_provider.dart';
import '../../provider/static_image_url_provider.dart';
import 'image_widget.dart';

class const CustomEmoji({
  super.key,
  required final Account account,
  required final String emoji,
  final String? url,
  final String? host,
  final bool useOriginalSize = false,
  final double? height,
  final double opacity = 1.0,
  final BoxFit fit = BoxFit.contain,
  final Alignment alignment = Alignment.center,
  final void Function()? onTap,
  final void Function()? onLongPress,
  final bool disableTooltip = false,
  final TextStyle? fallbackTextStyle,
  final bool fallbackToImage = true,
  final bool? enableFadeIn,
  final Widget Function(BuildContext context)? placeholderBuilder,
}) extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(emoji.startsWith(':') && emoji.endsWith(':'));
    final style = DefaultTextStyle.of(context).style;
    final fallbackTextStyle = this.fallbackTextStyle ?? style;
    final height = this.height ?? style.lineHeight;
    final muted = ref.watch(
      mutedEmojisNotifierProvider(account).select((emojis) {
        final emoji = this.emoji.replaceFirst('@.', '');
        if (!emoji.contains('@') && host != null) {
          return emojis.contains(
            '${emoji.substring(0, emoji.length - 1)}@$host:',
          );
        } else {
          return emojis.contains(emoji);
        }
      }),
    );
    if (muted) {
      return InkWell(
        onTap: onTap,
        child: TooltipVisibility(
          visible: !disableTooltip,
          child: Tooltip(
            message: emoji.replaceFirst('@.', ''),
            child: Assets.misskey.packages.frontend.assets.unknown.image(
              height: height,
              opacity: AlwaysStoppedAnimation(opacity),
              fit: fit,
              alignment: alignment,
            ),
          ),
        ),
      );
    }

    final (proxiedUrl, rawUrl) = ref.watch(
      emojiUrlProvider(
        account,
        emoji,
        url: url,
        host: host,
        useOriginalSize: useOriginalSize,
      ),
    );
    final (disableShowingAnimatedImages, enableEmojiFadeIn) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) =>
            (settings.disableShowingAnimatedImages, settings.enableEmojiFadeIn),
      ),
    );
    final enableFadeIn = this.enableFadeIn ?? enableEmojiFadeIn;

    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      child: TooltipVisibility(
        visible: onLongPress == null && !disableTooltip,
        child: Tooltip(
          message: emoji.replaceFirst('@.', ''),
          child: RepaintBoundary(
            child: ImageWidget(
              url: disableShowingAnimatedImages
                  ? ref
                        .watch(staticImageUrlProvider(account.host, proxiedUrl))
                        .toString()
                  : proxiedUrl,
              height: height,
              opacity: opacity,
              fit: fit,
              alignment: alignment,
              placeholderBuilder: placeholderBuilder,
              errorBuilder: (_, _, _) => ImageWidget(
                url: rawUrl,
                height: height,
                opacity: opacity,
                fit: fit,
                alignment: alignment,
                placeholderBuilder: placeholderBuilder,
                errorBuilder: (_, _, _) => fallbackToImage
                    ? Assets.misskey.packages.frontend.assets.dummy.image(
                        height: height,
                        opacity: AlwaysStoppedAnimation(opacity),
                        fit: fit,
                        alignment: alignment,
                      )
                    : height > fallbackTextStyle.lineHeight
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            emoji,
                            style: fallbackTextStyle,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      )
                    : Text(
                        emoji,
                        style: fallbackTextStyle,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                enableFadeIn: enableFadeIn,
                disableAnimations: disableShowingAnimatedImages,
              ),
              semanticLabel: emoji,
              enableFadeIn: enableFadeIn,
              disableAnimations: disableShowingAnimatedImages,
            ),
          ),
        ),
      ),
    );
  }
}
