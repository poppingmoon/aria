import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../util/safe_parse_duration.dart';

class Twitch extends HookWidget {
  const Twitch({super.key, required this.args, required this.child});

  final Map<String, dynamic> args;
  final Widget child;

  static final _offsetTween = TweenSequence([
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(7.0, -2.0),
        end: const Offset(-3.0, 1.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(-3.0, 1.0),
        end: const Offset(-7.0, -1.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(-7.0, -1.0),
        end: const Offset(0.0, -1.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(0.0, -1.0),
        end: const Offset(-8.0, 6.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(-8.0, 6.0),
        end: const Offset(-4.0, -3.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(-4.0, -3.0),
        end: const Offset(-4.0, -6.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(-4.0, -6.0),
        end: const Offset(-8.0, -8.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(-8.0, -8.0),
        end: const Offset(4.0, 6.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(4.0, 6.0),
        end: const Offset(-3.0, 1.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(-3.0, 1.0),
        end: const Offset(2.0, -10.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(2.0, -10.0),
        end: const Offset(-7.0, 0.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(-7.0, 0.0),
        end: const Offset(-2.0, 4.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(-2.0, 4.0),
        end: const Offset(3.0, -8.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(3.0, -8.0),
        end: const Offset(6.0, 7.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(6.0, 7.0),
        end: const Offset(-7.0, -2.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(-7.0, -2.0),
        end: const Offset(-7.0, -8.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(-7.0, -8.0),
        end: const Offset(9.0, 3.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(9.0, 3.0),
        end: const Offset(-3.0, -2.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(-3.0, -2.0),
        end: const Offset(-10.0, 2.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(
        begin: const Offset(-10.0, 2.0),
        end: const Offset(-2.0, -6.0),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    final speed =
        safeParseDuration(args['speed']) ?? const Duration(milliseconds: 500);
    if (speed == Duration.zero) {
      return child;
    }
    final delay =
        safeParseDuration(args['delay'], allowNegative: true) ?? Duration.zero;
    final controller = useAnimationController(duration: speed);
    useEffect(() {
      if (delay.isNegative) {
        controller.forward(from: -delay.inMilliseconds / speed.inMilliseconds);
      }
      Future.delayed(delay, () => controller.repeat());
      return;
    }, [speed, delay]);
    final offset = useAnimation(_offsetTween.animate(controller));

    return Transform.translate(offset: offset, child: child);
  }
}
