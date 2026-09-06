import 'dart:async';
import 'dart:math';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';
import 'package:vector_math/vector_math_64.dart';

import '../../../util/safe_parse_duration.dart';

enum _SpinDirection { normal, reverse, alternate }

class const Spin({
  super.key,
  required final Map<String, dynamic> args,
  required final Widget child,
}) extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final direction = args.containsKey('left')
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
      final timer = Timer(
        delay,
        () => controller.repeat(reverse: direction == _SpinDirection.alternate),
      );
      return timer.cancel;
    }, [speed, delay]);
    final angle = useAnimation(
      Tween(
        begin: 0.0,
        end: direction == _SpinDirection.reverse ? -2.0 * pi : 2.0 * pi,
      ).animate(controller),
    );

    if (args.containsKey('x')) {
      return Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, -1 / 128)
          ..rotateX(angle)
          ..setRow(2, Vector4(0.0, 0.0, 1.0, 0.0)),
        alignment: Alignment.center,
        child: child,
      );
    } else if (args.containsKey('y')) {
      return Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, -1 / 128)
          ..rotateY(angle)
          ..setRow(2, Vector4(0.0, 0.0, 1.0, 0.0)),
        alignment: Alignment.center,
        child: child,
      );
    } else {
      return Transform.rotate(angle: angle, child: child);
    }
  }
}
