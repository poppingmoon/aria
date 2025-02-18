import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../model/account.dart';
import '../../provider/average_color_provider.dart';
import '../../provider/data_saver_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/static_image_url_provider.dart';
import 'avatar_decorations.dart';
import 'cat_ear.dart';
import 'image_widget.dart';

final _catEarWiggleTween = TweenSequence([
  TweenSequenceItem(
    tween: Tween(begin: 0.65624379, end: 0.17453292),
    weight: 30,
  ),
  TweenSequenceItem(
    tween: Tween(begin: 0.17453292, end: 0.34906585),
    weight: 25,
  ),
  TweenSequenceItem(tween: Tween(begin: 0.34906585, end: 0.0), weight: 20),
  TweenSequenceItem(tween: Tween(begin: 0.0, end: 0.65624379), weight: 25),
]);

class CatAvatar extends HookConsumerWidget {
  const CatAvatar({
    super.key,
    required this.account,
    required this.user,
    required this.size,
    this.decorations,
    this.forceShowDecoration = false,
    this.onTap,
  });

  final Account account;
  final User user;
  final double size;
  final List<UserAvatarDecoration>? decorations;
  final bool forceShowDecoration;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showAvatarDecorations = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.showAvatarDecorations,
      ),
    );
    final squareAvatars = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.squareAvatars,
      ),
    );
    final disableShowingAnimatedImages =
        ref.watch(
          generalSettingsNotifierProvider.select(
            (settings) => settings.disableShowingAnimatedImages,
          ),
        ) ||
        ref.watch(dataSaverProvider.select((dataSaver) => dataSaver.avatar));
    final borderRadius = BorderRadius.circular(
      squareAvatars ? size * 0.2 : size,
    );
    final blurHash = user.avatarBlurhash;
    final catEarColor =
        blurHash != null
            ? ref.watch(averageColorProvider(blurHash))
            : Theme.of(context).colorScheme.primary;
    final controller = useAnimationController(
      duration: const Duration(seconds: 1),
    );
    final animation = _catEarWiggleTween.animate(controller);
    final loopAnimation = useState(false);
    useEffect(() {
      animation.addStatusListener((status) async {
        if (status == AnimationStatus.completed) {
          if (loopAnimation.value) {
            unawaited(controller.forward(from: 0.0));
            await Future<void>.delayed(const Duration(milliseconds: 550));
            await HapticFeedback.lightImpact();
            await HapticFeedback.lightImpact();
          } else {
            controller.reset();
          }
        }
      });
      return;
    }, []);

    return InkWell(
      onTap: onTap,
      onHover: (value) {
        if (value) {
          if (!loopAnimation.value) {
            controller.forward();
          }
        }
        loopAnimation.value = value;
      },
      borderRadius: borderRadius,
      child: GestureDetector(
        onLongPressStart: (_) {
          if (!loopAnimation.value) {
            controller.forward();
            loopAnimation.value = true;
            HapticFeedback.lightImpact();
          }
        },
        onLongPressEnd: (_) {
          loopAnimation.value = false;
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Transform.translate(
              offset: Offset(-size * 0.25, 0.0),
              child: CatEar(
                listenable: animation,
                color: catEarColor,
                height: size * 0.5,
              ),
            ),
            Transform.translate(
              offset: Offset(size * 0.25, 0.0),
              child: CatEar(
                listenable: animation,
                color: catEarColor,
                height: size * 0.5,
                flipped: true,
              ),
            ),
            ClipRRect(
              borderRadius: borderRadius,
              child: ImageWidget(
                url:
                    disableShowingAnimatedImages
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
      ),
    );
  }
}
