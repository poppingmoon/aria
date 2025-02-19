import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../util/safe_parse_duration.dart';

enum _SpinDirection { normal, reverse, alternate }

class Spin extends HookWidget {
  const Spin({super.key, required this.args, required this.child});

  final Map<String, dynamic> args;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final direction =
        args.containsKey('left')
            ? _SpinDirection.reverse
            : args.containsKey('alternate')
            ? _SpinDirection.alternate
            : _SpinDirection.normal;
    final speed =
        safeParseDuration(args['speed']) ?? const Duration(milliseconds: 1500);
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
      Future.delayed(
        delay,
        () => controller.repeat(reverse: direction == _SpinDirection.alternate),
      );
      return;
    }, [speed, delay]);
    final angle = useAnimation(
      Tween(
        begin: 0.0,
        end: direction == _SpinDirection.reverse ? -2.0 * pi : 2.0 * pi,
      ).animate(controller),
    );

    if (args.containsKey('x')) {
      return Transform(
        transform:
            Matrix4.identity()
              ..setEntry(3, 2, 0.008)
              ..rotateX(-angle),
        alignment: Alignment.center,
        child: child,
      );
    } else if (args.containsKey('y')) {
      return Transform(
        transform:
            Matrix4.identity()
              ..setEntry(3, 2, 0.008)
              ..rotateY(-angle),
        alignment: Alignment.center,
        child: child,
      );
    } else {
      return Transform.rotate(angle: angle, child: child);
    }
  }
}
