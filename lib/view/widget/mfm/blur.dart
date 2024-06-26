import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Blur extends HookWidget {
  const Blur({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final blurred = useState(true);

    return InkWell(
      onTap: () => blurred.value = !blurred.value,
      onDoubleTap: () => blurred.value = !blurred.value,
      onLongPress: () => blurred.value = !blurred.value,
      onHover: (value) => blurred.value = !value,
      splashFactory: NoSplash.splashFactory,
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      child: blurred.value
          ? ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 6.0,
                sigmaY: 6.0,
                tileMode: TileMode.decal,
              ),
              child: child,
            )
          : child,
    );
  }
}
