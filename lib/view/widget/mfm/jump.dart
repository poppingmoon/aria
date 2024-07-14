import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../util/safe_parse_duration.dart';

class Jump extends HookWidget {
  const Jump({
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
      tween: Tween(begin: Offset.zero, end: const Offset(0, -8.0)),
      weight: 25.0,
    ),
    TweenSequenceItem(
      tween: Tween(begin: const Offset(0, -8.0), end: Offset.zero),
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
    final delay =
        safeParseDuration(args['delay'], allowNegative: true) ?? Duration.zero;
    final controller = useAnimationController(duration: speed);
    useEffect(
      () {
        if (delay.isNegative) {
          controller.forward(
            from: -delay.inMilliseconds / speed.inMilliseconds,
          );
        }
        Future.delayed(delay, () => controller.repeat());
        return;
      },
      [speed, delay],
    );
    final offset = useAnimation(_offsetTween.animate(controller));

    return Transform.translate(offset: offset, child: child);
  }
}
