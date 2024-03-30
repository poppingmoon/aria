import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../util/safe_parse_duration.dart';

class Tada extends HookWidget {
  const Tada({
    super.key,
    required this.args,
    required this.child,
  });

  final Map<String, dynamic> args;
  final Widget child;

  static final _scaleTween = TweenSequence(
    [
      TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 0.9),
        weight: 10.0,
      ),
      TweenSequenceItem(
        tween: Tween(begin: 0.9, end: 0.9),
        weight: 10.0,
      ),
      TweenSequenceItem(
        tween: Tween(begin: 0.9, end: 1.1),
        weight: 10.0,
      ),
      TweenSequenceItem(
        tween: ConstantTween(1.1),
        weight: 60.0,
      ),
      TweenSequenceItem(
        tween: Tween(begin: 1.1, end: 1.0),
        weight: 10.0,
      ),
    ],
  );

  static final _angleTween = TweenSequence([
    TweenSequenceItem(
      tween: Tween(begin: 0.0, end: -3.0 * pi / 180),
      weight: 10.0,
    ),
    TweenSequenceItem(
      tween: ConstantTween(-3.0 * pi / 180),
      weight: 10.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: -3.0 * pi / 180, end: 3.0 * pi / 180),
      weight: 10.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 3.0 * pi / 180, end: -3.0 * pi / 180),
      weight: 10.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: -3.0 * pi / 180, end: 3.0 * pi / 180),
      weight: 10.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 3.0 * pi / 180, end: -3.0 * pi / 180),
      weight: 10.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: -3.0 * pi / 180, end: 3.0 * pi / 180),
      weight: 10.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 3.0 * pi / 180, end: -3.0 * pi / 180),
      weight: 10.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: -3.0 * pi / 180, end: 3.0 * pi / 180),
      weight: 10.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 3.0 * pi / 180, end: 0.0),
      weight: 10.0,
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    final speed =
        safeParseDuration(args['speed']) ?? const Duration(seconds: 1);
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
    final scale = useAnimation(_scaleTween.animate(controller));
    final angle = useAnimation(_angleTween.animate(controller));

    return Transform.scale(
      scale: scale,
      child: Transform.rotate(
        angle: angle,
        child: child,
      ),
    );
  }
}
