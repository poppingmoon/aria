import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../model/account.dart';
import 'avatar_decorations.dart';
import 'cat_ear.dart';
import 'image_widget.dart';
import 'online_indicator.dart';

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

class CatAvatar extends HookWidget {
  const CatAvatar({
    super.key,
    required this.account,
    required this.url,
    required this.blurHash,
    required this.catEarColor,
    required this.showAvatarDecorations,
    required this.decorations,
    required this.showOnlineStatus,
    required this.onlineStatus,
    required this.size,
    required this.borderRadius,
    required this.onTap,
  });

  final Account account;
  final Uri? url;
  final String? blurHash;
  final Color catEarColor;
  final bool showAvatarDecorations;
  final List<UserAvatarDecoration> decorations;
  final bool showOnlineStatus;
  final OnlineStatus? onlineStatus;
  final double size;
  final BorderRadius borderRadius;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
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
                url: url?.toString(),
                blurHash: blurHash,
                height: size,
                width: size,
                fit: BoxFit.cover,
              ),
            ),
            if (showAvatarDecorations)
              AvatarDecorations(
                account: account,
                decorations: decorations,
                size: size,
              ),
            if (showOnlineStatus)
              Positioned(
                left: 0.0,
                bottom: 0.0,
                child: OnlineIndicator(
                  onlineStatus: onlineStatus,
                  size: size * 0.2,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
