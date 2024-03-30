import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../util/safe_parse_duration.dart';

class Shake extends HookWidget {
  const Shake({
    super.key,
    required this.args,
    required this.child,
  });

  final Map<String, dynamic> args;
  final Widget child;

  static final _offsetTween = TweenSequence([
    TweenSequenceItem(
      tween:
          Tween(begin: const Offset(-3.0, -1.0), end: const Offset(0.0, -1.0))
              .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: const Offset(0.0, -1.0), end: const Offset(1.0, -3.0))
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: const Offset(1.0, -3.0), end: const Offset(1.0, 1.0))
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: const Offset(1.0, 1.0), end: const Offset(-2.0, 1.0))
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween:
          Tween(begin: const Offset(-2.0, 1.0), end: const Offset(-1.0, -2.0))
              .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween:
          Tween(begin: const Offset(-1.0, -2.0), end: const Offset(-1.0, 2.0))
              .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: const Offset(-1.0, 2.0), end: const Offset(2.0, 1.0))
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: const Offset(2.0, 1.0), end: const Offset(-2.0, -3.0))
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween:
          Tween(begin: const Offset(-2.0, -3.0), end: const Offset(0.0, -1.0))
              .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: const Offset(0.0, -1.0), end: const Offset(1.0, 2.0))
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: const Offset(1.0, 2.0), end: const Offset(0.0, -3.0))
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: const Offset(0.0, -3.0), end: const Offset(1.0, -1.0))
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: const Offset(1.0, -1.0), end: const Offset(0.0, -1.0))
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween:
          Tween(begin: const Offset(0.0, -1.0), end: const Offset(-1.0, -3.0))
              .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween:
          Tween(begin: const Offset(-1.0, -3.0), end: const Offset(0.0, -2.0))
              .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween:
          Tween(begin: const Offset(0.0, -2.0), end: const Offset(-2.0, -1.0))
              .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween:
          Tween(begin: const Offset(-2.0, -1.0), end: const Offset(1.0, -3.0))
              .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: const Offset(1.0, -3.0), end: const Offset(1.0, 0.0))
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: const Offset(1.0, 0.0), end: const Offset(-2.0, 0.0))
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: const Offset(-2.0, 0.0), end: const Offset(2.0, 1.0))
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
  ]);

  static final _angleTween = TweenSequence([
    TweenSequenceItem(
      tween: Tween(begin: -8.0 * pi / 180, end: -10.0 * pi / 180)
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: -10.0 * pi / 180, end: 0.0)
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 0.0, end: 11.0 * pi / 180)
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 11.0 * pi / 180, end: 1.0 * pi / 180)
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 1.0 * pi / 180, end: -2.0 * pi / 180)
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: -2.0 * pi / 180, end: -3.0 * pi / 180)
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: -3.0 * pi / 180, end: 6.0 * pi / 180)
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 6.0 * pi / 180, end: -9.0 * pi / 180)
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: -9.0 * pi / 180, end: -12.0 * pi / 180)
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: -12.0 * pi / 180, end: 10.0 * pi / 180)
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 10.0 * pi / 180, end: 8.0 * pi / 180)
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: ConstantTween(8.0 * pi / 180),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 8.0 * pi / 180, end: -7.0 * pi / 180)
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: -7.0 * pi / 180, end: 6.0 * pi / 180)
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 6.0 * pi / 180, end: 4.0 * pi / 180)
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 4.0 * pi / 180, end: 3.0 * pi / 180)
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 3.0 * pi / 180, end: -10.0 * pi / 180)
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: -10.0 * pi / 180, end: 3.0 * pi / 180)
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 3.0 * pi / 180, end: -3.0 * pi / 180)
          .chain(CurveTween(curve: Curves.ease)),
      weight: 5.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: -3.0 * pi / 180, end: 2.0 * pi / 180)
          .chain(CurveTween(curve: Curves.ease)),
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
    final delay = safeParseDuration(args['delay']) ?? Duration.zero;
    final controller = useAnimationController(duration: speed);
    useEffect(
      () {
        Future.delayed(delay, () => controller.repeat());
        return;
      },
      [speed, delay],
    );
    final offset = useAnimation(_offsetTween.animate(controller));
    final angle = useAnimation(_angleTween.animate(controller));

    return Transform.translate(
      offset: offset,
      child: Transform.rotate(angle: angle, child: child),
    );
  }
}
