import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

class ForceAcceptGestureRecognizer({
  final ScrollPosition? Function(Axis axis)? getScrollPosition,
}) extends LongPressGestureRecognizer {
  GestureLongPressUpCallback? _onLongPressUp;
  VelocityTracker? _velocityTracker;
  Drag? _drag;
  Axis _axis = Axis.vertical;

  @override
  set onLongPressUp(GestureLongPressUpCallback? onLongPressUp) =>
      _onLongPressUp = onLongPressUp;

  @override
  void addAllowedPointer(PointerDownEvent event) {
    super.addAllowedPointer(event);
    _drag = null;
    resolve(GestureDisposition.accepted);
  }

  @override
  void handleEvent(PointerEvent event) {
    if (state == GestureRecognizerState.possible &&
        event.pointer == primaryPointer) {
      handlePrimaryPointer(event);
    }
    stopTrackingIfPointerNoLongerDown(event);
  }

  @override
  void handlePrimaryPointer(PointerEvent event) {
    if (!event.synthesized) {
      if (event is PointerDownEvent) {
        _velocityTracker = VelocityTracker.withKind(event.kind);
        _velocityTracker?.addPosition(event.timeStamp, event.localPosition);
      } else if (event is PointerMoveEvent) {
        _velocityTracker?.addPosition(event.timeStamp, event.localPosition);
      }
    }

    if (event is PointerMoveEvent) {
      if (_drag == null) {
        if (initialPosition?.local case final initialPosition?
            when (event.localPosition - initialPosition).distance >
                kTouchSlop) {
          final delta = event.localPosition - initialPosition;
          final (primaryAxis, secondaryAxis) = delta.dx.abs() < delta.dy.abs()
              ? (Axis.vertical, Axis.horizontal)
              : (Axis.horizontal, Axis.vertical);
          if (getScrollPosition?.call(primaryAxis) case final position?) {
            _axis = primaryAxis;
            _drag = position.drag(
              DragStartDetails(
                globalPosition: event.position,
                localPosition: event.localPosition,
                sourceTimeStamp: event.timeStamp,
              ),
              () => _drag = null,
            );
            onLongPressCancel?.call();
          } else if (getScrollPosition?.call(secondaryAxis)
              case final position?) {
            _axis = secondaryAxis;
            _drag = position.drag(
              DragStartDetails(
                globalPosition: event.position,
                localPosition: event.localPosition,
                sourceTimeStamp: event.timeStamp,
              ),
              () => _drag = null,
            );
            onLongPressCancel?.call();
          }
        }
      } else {
        _drag?.update(
          DragUpdateDetails(
            globalPosition: event.position,
            localPosition: event.localPosition,
            sourceTimeStamp: event.timeStamp,
            delta: switch (_axis) {
              Axis.horizontal => Offset(event.delta.dx, 0.0),
              Axis.vertical => Offset(0.0, event.delta.dy),
            },
            primaryDelta: switch (_axis) {
              Axis.horizontal => event.delta.dx,
              Axis.vertical => event.delta.dy,
            },
            kind: event.kind,
          ),
        );
      }
    } else if (event is PointerUpEvent) {
      if (_drag case final drag?) {
        final velocity = _velocityTracker?.getVelocity() ?? Velocity.zero;
        drag.end(
          DragEndDetails(
            globalPosition: event.position,
            localPosition: event.localPosition,
            velocity: Velocity(
              pixelsPerSecond: switch (_axis) {
                Axis.horizontal => Offset(velocity.pixelsPerSecond.dx, 0.0),
                Axis.vertical => Offset(0.0, velocity.pixelsPerSecond.dy),
              },
            ),
            primaryVelocity: switch (_axis) {
              Axis.horizontal => velocity.pixelsPerSecond.dx,
              Axis.vertical => velocity.pixelsPerSecond.dy,
            },
          ),
        );
        _drag = null;
      } else {
        _onLongPressUp?.call();
      }
    } else if (event is PointerCancelEvent) {
      _drag?.cancel();
      _drag = null;
    }

    super.handlePrimaryPointer(event);
  }

  @override
  void didExceedDeadline() {
    if (_drag == null) {
      super.didExceedDeadline();
    }
  }

  @override
  void didStopTrackingLastPointer(int pointer) {
    _drag?.cancel();
    _drag = null;
    super.didStopTrackingLastPointer(pointer);
  }

  @override
  void dispose() {
    _drag?.cancel();
    _drag = null;
    super.dispose();
  }
}
