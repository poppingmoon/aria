import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../hook/force_accept_gesture_recognizer_hook.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../util/get_link_background_color.dart';

class LinkWidget extends HookConsumerWidget {
  const LinkWidget({
    super.key,
    required this.text,
    required this.builder,
    this.onTap,
    this.onLongPress,
  });

  final String text;
  final Widget Function(BuildContext context, TextSpan span) builder;
  final void Function()? onTap;
  final void Function()? onLongPress;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useAnimationController(
      duration: kLongPressTimeout - kPressTimeout,
    );
    final animationValue = useAnimation(controller);
    final recognizer = useForceAcceptGestureRecognizer();
    useEffect(() {
      recognizer
        ..onLongPressDown = (_) {
          controller.animateTo(1.0, curve: Curves.fastOutSlowIn);
        }
        ..onLongPressUp = () {
          if (onTap case final onTap?) {
            Feedback.forTap(context);
            onTap();
          }
          controller.animateTo(0.0, curve: Curves.easeOut);
        }
        ..onLongPressCancel = () {
          controller.animateTo(0.0, curve: Curves.easeOut);
        }
        ..onLongPress = () {
          if (onLongPress case final onLongPress?) {
            Feedback.forLongPress(context);
            onLongPress();
          }
          controller.animateTo(0.0, curve: Curves.easeOut);
        };
      return;
    }, []);
    final brightness = Theme.brightnessOf(context);
    final colors = ref.watch(misskeyColorsProvider(brightness));
    final style = DefaultTextStyle.of(context).style;

    return builder(
      context,
      TextSpan(
        children: [
          TextSpan(
            text: text,
            recognizer: recognizer,
            onEnter: (_) {
              if (!controller.isAnimating && controller.value < 1.0) {
                controller.value = 0.25;
              }
            },
            onExit: (_) {
              if (!controller.isAnimating && controller.value < 1.0) {
                controller.value = 0.0;
              }
            },
          ),
          WidgetSpan(
            child: InkWell(
              onTapDown: (_) {
                controller.animateTo(1.0, curve: Curves.fastOutSlowIn);
              },
              onTapUp: (_) {
                if (onTap case final onTap?) {
                  Feedback.forTap(context);
                  onTap();
                }
                controller.animateTo(0.0, curve: Curves.easeOut);
              },
              onTapCancel: () {
                controller.animateTo(0.0, curve: Curves.easeOut);
              },
              onLongPress: () {
                if (onLongPress case final onLongPress?) {
                  Feedback.forLongPress(context);
                  onLongPress();
                }
                controller.animateTo(0.0, curve: Curves.easeOut);
              },
              onHover: (value) {
                if (!controller.isAnimating && controller.value < 1.0) {
                  if (value) {
                    controller.value = 0.25;
                  } else {
                    controller.value = 0.0;
                  }
                }
              },
              splashFactory: NoSplash.splashFactory,
              overlayColor: const WidgetStatePropertyAll(Colors.transparent),
              mouseCursor: SystemMouseCursors.click,
              child: AbsorbPointer(
                child: Icon(
                  Icons.open_in_new,
                  color: colors.link,
                  size: style.fontSize,
                ),
              ),
            ),
          ),
        ],
        style: TextStyle(
          color: colors.link,
          backgroundColor: getLinkBackgroundColor(brightness, animationValue),
        ),
        recognizer: recognizer,
      ),
    );
  }
}
