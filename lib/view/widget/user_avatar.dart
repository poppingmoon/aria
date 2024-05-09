import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/text_style_extension.dart';
import '../../model/account.dart';
import '../../provider/data_saver_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/static_image_url_provider.dart';
import 'avatar_decorations.dart';
import 'cat_avatar.dart';
import 'image_widget.dart';

class UserAvatar extends ConsumerWidget {
  const UserAvatar({
    super.key,
    required this.account,
    required this.user,
    this.size,
    this.decorations,
    this.forceShowDecoration = false,
    this.onTap,
  });

  final Account account;
  final User user;
  final double? size;
  final List<UserAvatarDecoration>? decorations;
  final bool forceShowDecoration;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = this.size ?? DefaultTextStyle.of(context).style.lineHeight;
    if (user.isCat) {
      return CatAvatar(
        account: account,
        user: user,
        size: size,
        decorations: decorations,
        forceShowDecoration: forceShowDecoration,
        onTap: onTap,
      );
    }
    final showAvatarDecorations = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showAvatarDecorations),
    );
    final squareAvatars = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.squareAvatars),
    );
    final disableShowingAnimatedImages = ref.watch(
          generalSettingsNotifierProvider
              .select((settings) => settings.disableShowingAnimatedImages),
        ) ||
        ref.watch(dataSaverProvider.select((dataSaver) => dataSaver.avatar));
    final borderRadius =
        BorderRadius.circular(squareAvatars ? size * 0.2 : size);

    return InkWell(
      onTap: onTap,
      borderRadius: borderRadius,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: borderRadius,
            child: ImageWidget(
              url: disableShowingAnimatedImages
                  ? ref
                      .watch(
                        staticImageUrlProvider(
                          account.host,
                          user.avatarUrl.toString(),
                        ),
                      )
                      .toString()
                  : user.avatarUrl.toString(),
              blurHash: user.avatarBlurhash,
              height: size,
              width: size,
              fit: BoxFit.cover,
            ),
          ),
          if (forceShowDecoration || showAvatarDecorations)
            AvatarDecorations(
              account: account,
              decorations: decorations ?? user.avatarDecorations,
              size: size,
            ),
        ],
      ),
    );
  }
}
