import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../extension/text_style_extension.dart';
import '../../gen/assets.gen.dart';
import '../../model/account.dart';
import '../../provider/emoji_url_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/static_image_url_provider.dart';
import 'image_widget.dart';

class CustomEmoji extends ConsumerWidget {
  const CustomEmoji({
    super.key,
    required this.account,
    required this.emoji,
    this.url,
    this.host,
    this.useOriginalSize = false,
    this.height,
    this.opacity = 1.0,
    this.onTap,
    this.disableTooltip = false,
    this.fallbackTextStyle,
    this.fallbackToImage = true,
    this.enableFadeIn = true,
  });

  final Account account;
  final String emoji;
  final String? url;
  final String? host;
  final bool useOriginalSize;
  final double? height;
  final double opacity;
  final void Function()? onTap;
  final bool disableTooltip;
  final TextStyle? fallbackTextStyle;
  final bool fallbackToImage;
  final bool enableFadeIn;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(emoji.startsWith(':') && emoji.endsWith(':'));
    final style = DefaultTextStyle.of(context).style;
    final fallbackTextStyle = this.fallbackTextStyle ?? style;
    final height = this.height ?? style.lineHeight;
    final (proxiedUrl, rawUrl) = ref.watch(
      emojiUrlProvider(
        account,
        emoji,
        url: url,
        host: host,
        useOriginalSize: useOriginalSize,
      ),
    );
    final disableShowingAnimatedImages = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.disableShowingAnimatedImages,
      ),
    );

    return InkWell(
      onTap: onTap,
      child: TooltipVisibility(
        visible: !disableTooltip,
        child: Tooltip(
          message: emoji,
          child: ImageWidget(
            url: disableShowingAnimatedImages
                ? ref
                    .watch(staticImageUrlProvider(account.host, proxiedUrl))
                    .toString()
                : proxiedUrl,
            height: height,
            opacity: opacity,
            fit: BoxFit.contain,
            errorBuilder: (_, __, ___) => ImageWidget(
              url: rawUrl,
              height: height,
              opacity: opacity,
              fit: BoxFit.contain,
              errorBuilder: (_, __, ___) => fallbackToImage
                  ? Assets.misskey.packages.frontend.assets.dummy.image(
                      height: height,
                      opacity: AlwaysStoppedAnimation(opacity),
                      fit: BoxFit.contain,
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
            ),
            semanticLabel: emoji,
            enableFadeIn: enableFadeIn,
          ),
        ),
      ),
    );
  }
}
