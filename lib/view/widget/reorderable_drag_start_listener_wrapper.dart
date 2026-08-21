import 'package:flutter/foundation.dart';
import 'package:material_ui/material_ui.dart';

class const ReorderableDragStartListenerWrapper({
  super.key,
  required final Widget child,
  required final int index,
  final bool enabled = true,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform
        case TargetPlatform.android || TargetPlatform.iOS) {
      return ReorderableDelayedDragStartListener(
        index: index,
        enabled: enabled,
        child: child,
      );
    } else {
      return ReorderableDragStartListener(
        index: index,
        enabled: enabled,
        child: child,
      );
    }
  }
}
