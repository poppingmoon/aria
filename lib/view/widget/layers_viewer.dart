import 'dart:math';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Image;

import '../../model/layer.dart';

class LayersViewer extends StatefulWidget {
  const LayersViewer({
    super.key,
    required this.layers,
    required this.images,
    this.transformationController,
    this.panEnabled = true,
    this.scaleEnabled = true,
    this.onInteractionStart,
    this.onInteractionUpdate,
    this.onInteractionEnd,
  });

  final List<Layer> layers;
  final Map<Uint8List, Image> images;
  final TransformationController? transformationController;
  final bool panEnabled;
  final bool scaleEnabled;
  final void Function(ScaleStartDetails details)? onInteractionStart;
  final void Function(ScaleUpdateDetails details)? onInteractionUpdate;
  final void Function(ScaleEndDetails details)? onInteractionEnd;

  @override
  State<LayersViewer> createState() => LayersViewerState();
}

class LayersViewerState extends State<LayersViewer> {
  Future<Uint8List?> exportImage() async {
    final recorder = PictureRecorder();
    final canvas = Canvas(recorder);
    final painter =
        _LayersPainter(layers: widget.layers, images: widget.images);
    final backgroundSize = (widget.layers.first as ImageLayer).size;
    final size = Size(
      backgroundSize.width.toDouble(),
      backgroundSize.width.toDouble(),
    );
    painter.paint(canvas, size);
    final image = await recorder
        .endRecording()
        .toImage(backgroundSize.width, backgroundSize.height);
    final byteData = await image.toByteData(format: ImageByteFormat.png);
    return byteData?.buffer.asUint8List();
  }

  @override
  Widget build(BuildContext context) {
    final backgroundSize = (widget.layers.first as ImageLayer).size;
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: FittedBox(
        child: ClipRect(
          child: InteractiveViewer(
            transformationController: widget.transformationController,
            panEnabled: widget.panEnabled,
            scaleEnabled: widget.scaleEnabled,
            onInteractionStart: widget.onInteractionStart,
            onInteractionUpdate: widget.onInteractionUpdate,
            onInteractionEnd: widget.onInteractionEnd,
            child: CustomPaint(
              size: Size(
                backgroundSize.width.toDouble(),
                backgroundSize.height.toDouble(),
              ),
              painter: _LayersPainter(
                layers: widget.layers,
                images: widget.images,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LayersPainter extends CustomPainter {
  const _LayersPainter({
    required this.layers,
    required this.images,
  });

  final List<Layer> layers;
  final Map<Uint8List, Image> images;

  @override
  void paint(Canvas canvas, Size size) {
    for (final layer in layers) {
      canvas.save();
      canvas.translate(layer.offset.dx, layer.offset.dy);
      if (layer is ImageLayer) {
        canvas.translate(layer.size.width / 2, layer.size.height / 2);
      }
      canvas.rotate(layer.angle);
      canvas.scale(layer.scale);
      if (layer.flipX) {
        canvas.scale(-1.0, 1.0);
      }
      if (layer is ImageLayer) {
        canvas.translate(-layer.size.width / 2, -layer.size.height / 2);
      }
      switch (layer) {
        case ImageLayer():
          final image = images[layer.data];
          if (image != null) {
            paintImage(
              canvas: canvas,
              rect: Rect.fromLTWH(
                0.0,
                0.0,
                layer.size.width.toDouble(),
                layer.size.height.toDouble(),
              ),
              opacity: layer.opacity,
              image: image,
              fit: BoxFit.cover,
            );
          }
        case TextLayer():
          final textPainter = TextPainter(
            text: TextSpan(
              text: layer.text,
              style: TextStyle(
                fontSize: max(size.width / 10, 22),
                color: layer.color,
                backgroundColor: layer.backgroundColor,
              ),
            ),
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
          );
          textPainter.layout();
          final textOffset =
              Offset(-textPainter.width / 2, -textPainter.height / 2);
          textPainter.paint(canvas, textOffset);
        case DrawLayer():
          final path = Path();
          for (final offset in layer.offsets) {
            if (offset == null) break;
            path.lineTo(offset.dx, offset.dy);
            path.moveTo(offset.dx, offset.dy);
          }
          canvas.drawPath(
            path,
            Paint()
              ..color = layer.color ?? Colors.white
              ..strokeWidth = layer.strokeWidth
              ..style = PaintingStyle.stroke
              ..strokeCap = StrokeCap.round,
          );
          path.close();
      }
      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(covariant _LayersPainter oldDelegate) {
    return !listEquals(oldDelegate.layers, layers) ||
        !mapEquals(oldDelegate.images, images);
  }
}
