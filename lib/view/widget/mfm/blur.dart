import 'dart:ui';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';

class const Blur({super.key, required final Widget child}) extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final blurred = useState(true);

    return InkWell(
      onTap: () => blurred.value = !blurred.value,
      onDoubleTap: () => blurred.value = !blurred.value,
      onLongPress: () => blurred.value = !blurred.value,
      onHover: (value) => blurred.value = !value,
      splashFactory: NoSplash.splashFactory,
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      child: ImageFiltered(
        imageFilter: ImageFilter.blur(
          sigmaX: 6.0,
          sigmaY: 6.0,
          tileMode: TileMode.decal,
        ),
        enabled: blurred.value,
        child: AbsorbPointer(absorbing: blurred.value, child: child),
      ),
    );
  }
}
