import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:vector_math/vector_math.dart';

import '../../../util/safe_parse_duration.dart';

class Bounce extends HookWidget {
  const Bounce({
    super.key,
    required this.args,
    required this.child,
  });

  final Map<String, dynamic> args;
  final Widget child;

  static final _offsetTween = TweenSequence([
    TweenSequenceItem(
      tween: Tween(begin: Offset.zero, end: const Offset(0, -16.0)),
      weight: 25.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: const Offset(0, -16.0), end: Offset.zero),
      weight: 25.0,
    ),
    TweenSequenceItem(
      tween: ConstantTween(Offset.zero),
      weight: 50.0,
    ),
  ]);

  static final _scaleTween = TweenSequence([
    TweenSequenceItem(
      tween: ConstantTween(Vector2(1.0, 1.0)),
      weight: 50.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: Vector2(1.0, 1.0), end: Vector2(1.5, 0.75)),
      weight: 25.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: Vector2(1.5, 0.75), end: Vector2(1.0, 1.0)),
      weight: 25.0,
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    final speed =
        safeParseDuration(args['speed']) ?? const Duration(milliseconds: 750);
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
    final scale = useAnimation(_scaleTween.animate(controller));

    return Transform.translate(
      offset: offset,
      child: Transform.scale(scaleX: scale.x, scaleY: scale.y, child: child),
    );
  }
}
