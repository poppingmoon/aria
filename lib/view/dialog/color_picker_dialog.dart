import 'dart:math';
import 'dart:ui';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../i18n/strings.g.dart';

Future<Color?> showColorPickerDialog(
  BuildContext context, {
  Color? initialColor,
}) {
  return showDialog(
    context: context,
    builder: (context) => ColorPickerDialog(initialColor: initialColor),
  );
}

class const ColorPickerDialog({super.key, final Color? initialColor})
    extends HookWidget {
  ({double hue, double saturation}) _getHueAndSaturation(
    Size size,
    Offset localPosition,
  ) {
    final center = size.center(Offset.zero);
    final offset = localPosition - center;
    final angle = atan2(offset.dy, offset.dx);
    final distance = offset.distance;

    return (
      hue: ((angle * 180.0 / pi) - 90.0) % 360.0,
      saturation: clampDouble(distance / (size.shortestSide * 0.5), 0.0, 1.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    final initialHsvColor = HSVColor.fromColor(initialColor ?? Colors.white);
    final hue = useState(initialHsvColor.hue);
    final saturation = useState(initialHsvColor.saturation);
    final value = useState(initialHsvColor.value);
    final alpha = useState(initialHsvColor.alpha);
    final hsvColor = HSVColor.fromAHSV(
      alpha.value,
      hue.value,
      saturation.value,
      value.value,
    );
    final color = hsvColor.toColor();
    final overlayAnimationController = useAnimationController(
      duration: kRadialReactionDuration,
    );
    final overlayAnimation = CurveTween(curve: Curves.fastOutSlowIn)
        .animate(overlayAnimationController);
    final cursor = useState(MouseCursor.defer);
    final theme = Theme.of(context);

    return AlertDialog(
      scrollable: true,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300.0),
              child: AspectRatio(
                aspectRatio: 1.0,
                child: SizedBox.square(
                  dimension: 300.0,
                  child: LayoutBuilder(
                    builder: (context, constraints) => MouseRegion(
                      onHover: (event) {
                        final center = constraints.biggest.center(Offset.zero);
                        final radius = center.dx;
                        final offset = event.localPosition - center;
                        if (offset.distance < radius) {
                          cursor.value = SystemMouseCursors.click;
                          final angle = (90.0 + hue.value) * pi / 180.0;
                          final pointerOffset = Offset(
                            radius * saturation.value * cos(angle),
                            radius * saturation.value * sin(angle),
                          );
                          if ((offset - pointerOffset).distance < 24.0) {
                            overlayAnimationController.forward();
                          } else {
                            overlayAnimationController.reverse();
                          }
                        } else {
                          cursor.value = MouseCursor.defer;
                          overlayAnimationController.reverse();
                        }
                      },
                      onExit: (_) => overlayAnimationController.reverse(),
                      cursor: cursor.value,
                      child: GestureDetector(
                        onTapDown: (details) {
                          final result = _getHueAndSaturation(
                            constraints.biggest,
                            details.localPosition,
                          );
                          hue.value = result.hue;
                          saturation.value = result.saturation;
                          overlayAnimationController.forward();
                        },
                        onTapUp: (_) => overlayAnimationController.reverse(),
                        onTapCancel: () => overlayAnimationController.reverse(),
                        onPanStart: (details) {
                          final result = _getHueAndSaturation(
                            constraints.biggest,
                            details.localPosition,
                          );
                          hue.value = result.hue;
                          saturation.value = result.saturation;
                          overlayAnimationController.forward();
                        },
                        onPanUpdate: (details) {
                          final result = _getHueAndSaturation(
                            constraints.biggest,
                            details.localPosition,
                          );
                          hue.value = result.hue;
                          saturation.value = result.saturation;
                          overlayAnimationController.forward();
                        },
                        onPanEnd: (_) => overlayAnimationController.reverse(),
                        onPanCancel: () => overlayAnimationController.reverse(),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            RepaintBoundary(
                              child: CustomPaint(
                                painter: _HsvCirclePainter(
                                  value: value.value,
                                  alpha: alpha.value,
                                ),
                                isComplex: true,
                              ),
                            ),
                            RepaintBoundary(
                              child: AnimatedBuilder(
                                animation: overlayAnimation,
                                builder: (context, _) => CustomPaint(
                                  painter: _HsvPointerPainter(
                                    hue: hue.value,
                                    saturation: saturation.value,
                                    overlayAnimationValue:
                                        overlayAnimation.value,
                                  ),
                                  isComplex: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Directionality(
            textDirection: TextDirection.ltr,
            child: _GradientSlider(
              value: hue.value,
              onChanged: (v) => hue.value = v,
              max: 360.0,
              gradient: LinearGradient(
                begin: AlignmentDirectional.centerStart,
                end: AlignmentDirectional.centerEnd,
                colors: List.generate(
                  13,
                  (i) => hsvColor.withHue(30.0 * i).toColor(),
                ),
              ),
              color: color,
            ),
          ),
          _GradientSlider(
            value: saturation.value,
            onChanged: (v) => saturation.value = v,
            gradient: LinearGradient(
              begin: AlignmentDirectional.centerStart,
              end: AlignmentDirectional.centerEnd,
              colors: [
                hsvColor.withSaturation(0.0).toColor(),
                hsvColor.withSaturation(1.0).toColor(),
              ],
            ),
            color: color,
          ),
          _GradientSlider(
            value: value.value,
            onChanged: (v) => value.value = v,
            gradient: LinearGradient(
              begin: AlignmentDirectional.centerStart,
              end: AlignmentDirectional.centerEnd,
              colors: [
                hsvColor.withValue(0.0).toColor(),
                hsvColor.withValue(1.0).toColor(),
              ],
            ),
            color: color,
          ),
          _GradientSlider(
            value: alpha.value,
            onChanged: (v) => alpha.value = v,
            gradient: LinearGradient(
              begin: AlignmentDirectional.centerStart,
              end: AlignmentDirectional.centerEnd,
              colors: [
                hsvColor.withAlpha(0.0).toColor(),
                hsvColor.withAlpha(1.0).toColor(),
              ],
            ),
            color: color,
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () => context.pop(color),
          child: Text(t.misskey.ok),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: theme.colorScheme.primary,
            backgroundColor: theme.colorScheme.surfaceContainerLowest,
          ),
          onPressed: () => context.pop(),
          child: Text(t.misskey.cancel),
        ),
      ],
    );
  }
}

class const _HsvCirclePainter({
  required final double value,
  required final double alpha,
}) extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.shortestSide * 0.5;
    final center = size.center(Offset.zero);
    final saturationStep = 1 / radius;
    final positions = <Offset>[];
    final colors = <Color>[];
    for (
      double saturation = 0.0;
      saturation < 1.0;
      saturation += saturationStep
    ) {
      final hueStep = saturation < 0.5 ? 2.0 : 1.0;
      for (double hue = 0.0; hue <= 360.0; hue += hueStep) {
        final angle = (90.0 + hue) * pi / 180.0;
        final offset = Offset(radius * cos(angle), radius * sin(angle));
        positions.addAll([
          center + offset * saturation,
          center + offset * (saturation + saturationStep),
        ]);
        colors.addAll([
          HSVColor.fromAHSV(alpha, hue, saturation, value).toColor(),
          HSVColor.fromAHSV(
            alpha,
            hue,
            clampDouble(saturation + saturationStep, 0.0, 1.0),
            value,
          ).toColor(),
        ]);
      }
    }
    canvas.drawVertices(
      Vertices(VertexMode.triangleStrip, positions, colors: colors),
      BlendMode.dst,
      Paint(),
    );
  }

  @override
  bool shouldRepaint(_HsvCirclePainter oldDelegate) {
    return oldDelegate.value != value || oldDelegate.alpha != alpha;
  }
}

class const _HsvPointerPainter({
  required final double hue,
  required final double saturation,
  required final double overlayAnimationValue,
}) extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.shortestSide * 0.5;
    final center = size.center(Offset.zero);
    final angle = (90.0 + hue) * pi / 180.0;
    final offset =
        center +
        Offset(
          radius * saturation * cos(angle),
          radius * saturation * sin(angle),
        );
    if (overlayAnimationValue > 0.0) {
      canvas.drawCircle(
        offset,
        24.0 * overlayAnimationValue,
        Paint()..color = Colors.white10,
      );
    }
    canvas.drawCircle(
      offset + const Offset(0.0, 2.0),
      8.0,
      Paint()
        ..color = Colors.black54
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6.0),
    );
    canvas.drawCircle(offset, 8.0, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(_HsvPointerPainter oldDelegate) {
    return oldDelegate.hue != hue ||
        oldDelegate.saturation != saturation ||
        oldDelegate.overlayAnimationValue != overlayAnimationValue;
  }
}

class const _GradientSlider({
  required final double value,
  required final void Function(double value) onChanged,
  final double max = 1.0,
  required final LinearGradient gradient,
  required final Color color,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data:
          SliderThemeData.fromPrimaryColors(
            primaryColor: color,
            primaryColorDark: color,
            primaryColorLight: color,
            valueIndicatorTextStyle: const TextStyle(),
          ).copyWith(
            trackHeight: 16.0,
            thumbColor: color,
            thumbShape: const HandleThumbShape(),
            thumbSize: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.disabled)) {
                return const Size(4.0, 44.0);
              }
              if (states.contains(WidgetState.hovered)) {
                return const Size(4.0, 44.0);
              }
              if (states.contains(WidgetState.focused)) {
                return const Size(2.0, 44.0);
              }
              if (states.contains(WidgetState.pressed)) {
                return const Size(2.0, 44.0);
              }
              return const Size(4.0, 44.0);
            }),
            trackShape: _GradientSliderTrackShape(gradient: gradient),
            trackGap: 6.0,
          ),
      child: Slider(value: value, onChanged: onChanged, max: max),
    );
  }
}

class const _GradientSliderTrackShape({required final LinearGradient gradient})
    extends SliderTrackShape
    with BaseSliderTrackShape {
  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset thumbCenter,
    Offset? secondaryOffset,
    bool isEnabled = false,
    bool isDiscrete = false,
    required TextDirection textDirection,
  }) {
    final trackHeight = sliderTheme.trackHeight ?? 16.0;
    final trackGap = sliderTheme.trackGap ?? 6.0;

    final trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    final trackCornerRadius = Radius.circular(trackRect.shortestSide / 2);
    const trackInsideCornerRadius = Radius.circular(2.0);

    final trackRRect = RRect.fromRectAndRadius(trackRect, trackCornerRadius);

    context.canvas
      ..save()
      ..clipRRect(trackRRect);

    final leftRRect = RRect.fromLTRBAndCorners(
      trackRect.left,
      trackRect.top,
      max(trackRect.left, thumbCenter.dx - trackGap),
      trackRect.bottom,
      topLeft: trackCornerRadius,
      bottomLeft: trackCornerRadius,
      topRight: trackInsideCornerRadius,
      bottomRight: trackInsideCornerRadius,
    );

    final rightRRect = RRect.fromLTRBAndCorners(
      thumbCenter.dx + trackGap,
      trackRect.top,
      trackRect.right,
      trackRect.bottom,
      topRight: trackCornerRadius,
      bottomRight: trackCornerRadius,
      topLeft: trackInsideCornerRadius,
      bottomLeft: trackInsideCornerRadius,
    );

    final paint = Paint()
      ..shader = gradient.createShader(trackRect, textDirection: textDirection);

    final drawLeftTrack = thumbCenter.dx > (leftRRect.left + trackHeight / 2);
    final drawRightTrack =
        thumbCenter.dx < (rightRRect.right - trackHeight / 2);
    if (drawLeftTrack) {
      context.canvas.drawRRect(leftRRect, paint);
    }
    if (drawRightTrack) {
      context.canvas.drawRRect(rightRRect, paint);
    }

    context.canvas.restore();
  }

  @override
  bool get isRounded => true;
}
