import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/text_style_extension.dart';
import '../../model/account.dart';
import '../../provider/average_color_provider.dart';
import '../../provider/data_saver_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/static_image_url_provider.dart';
import 'avatar_decorations.dart';
import 'cat_avatar.dart';
import 'image_widget.dart';
import 'online_indicator.dart';

class UserAvatar extends ConsumerWidget {
  const UserAvatar({
    super.key,
    required this.account,
    required this.user,
    this.size,
    this.decorations,
    this.forceShowDecoration = false,
    this.showOnlineIndicator = false,
    this.onTap,
  });

  final Account account;
  final User user;
  final double? size;
  final List<UserAvatarDecoration>? decorations;
  final bool forceShowDecoration;
  final bool showOnlineIndicator;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = this.size ?? DefaultTextStyle.of(context).style.lineHeight;
    final (
      showAvatarDecorations,
      squareAvatars,
      disableShowingAnimatedImages,
      showOnlineStatus,
    ) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => (
          settings.showAvatarDecorations,
          settings.squareAvatars,
          settings.disableShowingAnimatedImages,
          settings.showOnlineStatus,
        ),
      ),
    );
    final useStaticImage =
        disableShowingAnimatedImages ||
        ref.watch(dataSaverProvider.select((dataSaver) => dataSaver.avatar));
    final url = useStaticImage
        ? ref.watch(
            staticImageUrlProvider(account.host, user.avatarUrl.toString()),
          )
        : user.avatarUrl;
    final blurHash = user.avatarBlurhash;
    final decorations = this.decorations ?? user.avatarDecorations;
    final borderRadius = BorderRadius.circular(
      squareAvatars ? size * 0.2 : size,
    );

    if (user.isCat) {
      final catEarColor = blurHash != null
          ? ref.watch(averageColorProvider(blurHash))
          : Theme.of(context).colorScheme.primary;

      return CatAvatar(
        account: account,
        url: url,
        blurHash: blurHash,
        catEarColor: catEarColor,
        showAvatarDecorations: forceShowDecoration || showAvatarDecorations,
        decorations: decorations,
        showOnlineStatus: showOnlineIndicator && showOnlineStatus,
        onlineStatus: user.onlineStatus,
        size: size,
        borderRadius: borderRadius,
        onTap: onTap,
      );
    }

    return InkWell(
      onTap: onTap,
      borderRadius: borderRadius,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: borderRadius,
            child: ImageWidget(
              url: url?.toString(),
              blurHash: blurHash,
              height: size,
              width: size,
              fit: BoxFit.cover,
            ),
          ),
          if (forceShowDecoration || showAvatarDecorations)
            AvatarDecorations(
              account: account,
              decorations: decorations,
              size: size,
            ),
          if (showOnlineIndicator && showOnlineStatus)
            Positioned(
              left: 0.0,
              bottom: 0.0,
              child: OnlineIndicator(
                onlineStatus: user.onlineStatus,
                size: size * 0.2,
              ),
            ),
        ],
      ),
    );
  }
}
