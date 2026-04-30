import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/sound_settings.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_sfx_notifier_provider.dart';

class HapticFeedbackRefreshIndicator extends HookConsumerWidget {
  const HapticFeedbackRefreshIndicator({
    super.key,
    required this.onRefresh,
    this.notificationPredicate = defaultScrollNotificationPredicate,
    required this.child,
  });

  final Future<void> Function() onRefresh;
  final bool Function(ScrollNotification notification) notificationPredicate;
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final enableHapticFeedback = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.enableHapticFeedback,
      ),
    );
    final dragOffset = useState(0.0);
    final dragging = useState(false);
    final armed = useState(false);

    return RefreshIndicator(
      onRefresh: () async {
        await onRefresh();
        ref
            .read(misskeySfxNotifierProvider(OperationType.reload).notifier)
            .play()
            .ignore();
      },
      notificationPredicate: enableHapticFeedback
          ? (notification) {
              if (!notificationPredicate(notification)) {
                return false;
              }
              if (!dragging.value) {
                if (notification case ScrollStartNotification(:final metrics)) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    dragging.value =
                        (metrics.axisDirection == AxisDirection.up &&
                            metrics.extentAfter == 0.0) ||
                        (metrics.axisDirection == AxisDirection.down &&
                            metrics.extentBefore == 0.0);
                  });
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
                    ref
                        .read(
                          misskeySfxNotifierProvider(
                            OperationType.reloadHold,
                          ).notifier,
                        )
                        .play()
                        .ignore();
                    armed.value = true;
                  }
                } else if (notification is ScrollEndNotification) {
                  dragOffset.value = 0.0;
                  dragging.value = false;
                  armed.value = false;
                }
              }
              return true;
            }
          : notificationPredicate,
      child: child,
    );
  }
}
