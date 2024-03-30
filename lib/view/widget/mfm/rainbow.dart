import 'package:colorfilter_generator/addons.dart';
import 'package:colorfilter_generator/colorfilter_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../util/safe_parse_duration.dart';

class Rainbow extends HookWidget {
  const Rainbow({
    super.key,
    required this.args,
    required this.child,
  });

  final Map<String, dynamic> args;
  final Widget child;

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
    final hue = useAnimation(Tween(begin: 0.0, end: 2.0).animate(controller));

    return ColorFiltered(
      colorFilter: ColorFilter.matrix(
        ColorFilterGenerator(
          name: '',
          filters: [
            ColorFilterAddons.hue(hue),
            ColorFilterAddons.saturation(0.33),
            ColorFilterAddons.contrast(0.33),
          ],
        ).matrix,
      ),
      child: child,
    );
  }
}
