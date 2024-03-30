import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ReorderableDragStartListenerWrapper extends StatelessWidget {
  const ReorderableDragStartListenerWrapper({
    super.key,
    required this.child,
    required this.index,
    this.enabled = true,
  });

  final Widget child;
  final int index;
  final bool enabled;

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
