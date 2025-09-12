import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HapticFeedbackRefreshIndicator extends HookWidget {
  const HapticFeedbackRefreshIndicator({
    super.key,
    required this.onRefresh,
    this.notificationPredicate = defaultScrollNotificationPredicate,
    required this.child,
  });

  final Future<void> Function() onRefresh;
  final bool Function(ScrollNotification) notificationPredicate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final dragOffset = useState(0.0);
    final dragging = useState(false);
    final armed = useState(false);

    return RefreshIndicator(
      onRefresh: onRefresh,
      notificationPredicate: (notification) {
        if (!notificationPredicate(notification)) {
          return false;
        }
        if (!dragging.value) {
          if (notification case ScrollStartNotification(:final metrics)) {
            dragging.value =
                (metrics.axisDirection == AxisDirection.up &&
                    metrics.extentAfter == 0.0) ||
                (metrics.axisDirection == AxisDirection.down &&
                    metrics.extentBefore == 0.0);
          }
        } else {
          if (notification
              case ScrollUpdateNotification(
                    :final metrics,
                    :final scrollDelta?,
                  ) ||
                  OverscrollNotification(
                    :final metrics,
                    overscroll: final scrollDelta,
                  )) {
            if (metrics.axisDirection == AxisDirection.down) {
              dragOffset.value -= scrollDelta;
            } else {
              dragOffset.value += scrollDelta;
            }
            if (!armed.value &&
                (dragOffset.value / (metrics.viewportDimension * 0.25) >=
                    1.0)) {
              HapticFeedback.lightImpact();
              armed.value = true;
            }
          } else if (notification is ScrollEndNotification) {
            dragOffset.value = 0.0;
            dragging.value = false;
            armed.value = false;
          }
        }
        return true;
      },
      child: child,
    );
  }
}
