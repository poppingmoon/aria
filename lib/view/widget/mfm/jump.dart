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
    final delay = safeParseDuration(args['delay']) ?? Duration.zero;
    final duration = delay + speed;
    final start = delay.inMilliseconds / duration.inMilliseconds;
    final controller = useAnimationController(duration: delay + speed);
    useEffect(
      () {
        controller.forward();
        controller.addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            controller.forward(from: start);
          }
        });
        return;
      },
      [speed, delay],
    );
    final offset = useAnimation(
      _offsetTween.animate(
        CurvedAnimation(
          parent: controller,
          curve: Interval(start, 1.0),
        ),
      ),
    );

    return Transform.translate(offset: offset, child: child);
  }
}
