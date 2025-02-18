import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../model/account.dart';
import '../../provider/data_saver_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/static_image_url_provider.dart';
import 'image_widget.dart';

class AvatarDecorations extends ConsumerWidget {
  const AvatarDecorations({
    super.key,
    required this.account,
    required this.decorations,
    required this.size,
  });

  final Account account;
  final List<UserAvatarDecoration> decorations;
  final double size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final disableShowingAnimatedImages =
        ref.watch(
          generalSettingsNotifierProvider.select(
            (settings) => settings.disableShowingAnimatedImages,
          ),
        ) ||
        ref.watch(dataSaverProvider.select((dataSaver) => dataSaver.avatar));

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children:
            decorations
                .map(
                  (decoration) => Transform.scale(
                    scaleX: 2,
                    scaleY: 2,
                    child: Transform.translate(
                      offset: Offset(
                        size * decoration.offsetX,
                        size * decoration.offsetY,
                      ),
                      child: Transform.rotate(
                        angle: (decoration.angle ?? 0) * 2 * pi,
                        child: Transform.flip(
                          flipX: decoration.flipH,
                          child: SizedBox(
                            child: ImageWidget(
                              url:
                                  disableShowingAnimatedImages
                                      ? ref
                                          .watch(
                                            staticImageUrlProvider(
                                              account.host,
                                              decoration.url,
                                            ),
                                          )
                                          .toString()
                                      : decoration.url,
                              height: size,
                              width: size,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
