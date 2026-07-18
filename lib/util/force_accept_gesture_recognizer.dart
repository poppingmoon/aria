import 'package:flutter/gestures.dart';

class ForceAcceptGestureRecognizer extends LongPressGestureRecognizer {
  GestureLongPressUpCallback? _onLongPressUp;

  @override
  set onLongPressUp(GestureLongPressUpCallback? onLongPressUp) =>
      _onLongPressUp = onLongPressUp;

  @override
  void addAllowedPointer(PointerDownEvent event) {
    super.addAllowedPointer(event);
    resolve(GestureDisposition.accepted);
  }

  @override
  void handlePrimaryPointer(PointerEvent event) {
    if (event is PointerUpEvent) {
      _onLongPressUp?.call();
    }
    super.handlePrimaryPointer(event);
  }
}
