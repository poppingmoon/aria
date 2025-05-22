import 'dart:math';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Image;

import '../../extension/image_extension.dart';
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
    final painter = _LayersPainter(
      layers: widget.layers,
      images: widget.images,
    );
    final backgroundImage =
        widget.images[(widget.layers.first as ImageLayer).data];
    if (backgroundImage == null) {
      return null;
    }
    painter.paint(canvas, backgroundImage.size);
    final image = await recorder.endRecording().toImage(
      backgroundImage.width,
      backgroundImage.height,
    );
    final byteData = await image.toByteData(format: ImageByteFormat.png);
    return byteData?.buffer.asUint8List();
  }

  @override
  Widget build(BuildContext context) {
    final backgroundImage =
        widget.images[(widget.layers.first as ImageLayer).data];

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
            child: backgroundImage != null
                ? CustomPaint(
                    size: backgroundImage.size,
                    painter: _LayersPainter(
                      layers: widget.layers,
                      images: widget.images,
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }
}

class _LayersPainter extends CustomPainter {
  const _LayersPainter({required this.layers, required this.images});

  final List<Layer> layers;
  final Map<Uint8List, Image> images;

  @override
  void paint(Canvas canvas, Size size) {
    for (final layer in layers) {
      canvas.save();
      canvas.translate(layer.offset.dx, layer.offset.dy);
      final image = layer is ImageLayer ? images[layer.data] : null;
      if (image != null) {
        canvas.translate(image.width / 2, image.height / 2);
      }
      canvas.rotate(layer.angle);
      canvas.scale(layer.scale);
      if (layer.flipX) {
        canvas.scale(-1.0, 1.0);
      }
      if (image != null) {
        canvas.translate(-image.width / 2, -image.height / 2);
      }
      switch (layer) {
        case ImageLayer():
          if (image != null) {
            paintImage(
              canvas: canvas,
              rect: Rect.fromLTWH(
                0.0,
                0.0,
                image.width.toDouble(),
                image.height.toDouble(),
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
          final textOffset = Offset(
            -textPainter.width / 2,
            -textPainter.height / 2,
          );
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
