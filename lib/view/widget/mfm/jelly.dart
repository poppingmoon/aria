import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:vector_math/vector_math.dart';

import '../../../util/safe_parse_duration.dart';

class Jelly extends HookWidget {
  const Jelly({super.key, required this.args, required this.child});

  final Map<String, dynamic> args;
  final Widget child;

  static final _scaleTween = TweenSequence([
    TweenSequenceItem(
      tween: Tween(
        begin: Vector2(1.0, 1.0),
        end: Vector2(1.25, 0.75),
      ).chain(CurveTween(curve: Curves.ease)),
      weight: 30.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: Vector2(1.25, 0.75), end: Vector2(0.75, 1.25)),
      weight: 10.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: Vector2(0.75, 1.25), end: Vector2(1.15, 0.85)),
      weight: 10.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: Vector2(1.15, 0.85), end: Vector2(0.95, 1.05)),
      weight: 15.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: Vector2(0.95, 1.05), end: Vector2(1.05, 0.95)),
      weight: 10.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: Vector2(1.05, 0.95), end: Vector2(1.0, 1.0)),
      weight: 25.0,
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    final speed =
        safeParseDuration(args['speed']) ?? const Duration(seconds: 1);
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
    final scale = useAnimation(_scaleTween.animate(controller));

    return Transform.scale(scaleX: scale.x, scaleY: scale.y, child: child);
  }
}
