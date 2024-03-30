import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:image/image.dart';
import 'package:image_editor/image_editor.dart';

Future<Uint8List> crop(Uint8List image, Rect rect) async {
  if (defaultTargetPlatform
      case TargetPlatform.android ||
          TargetPlatform.iOS ||
          TargetPlatform.macOS) {
    final option = ImageEditorOption()..addOption(ClipOption.fromRect(rect));
    final result =
        await ImageEditor.editImage(image: image, imageEditorOption: option);
    return result!;
  } else {
    final src = await compute(decodeImage, image);
    final cropped = copyCrop(
      bakeOrientation(src!),
      x: rect.left.toInt(),
      y: rect.top.toInt(),
      width: rect.width.toInt(),
      height: rect.height.toInt(),
    );
    return await compute(encodePng, cropped);
  }
}

Future<Uint8List> flip(Uint8List image) async {
  if (defaultTargetPlatform
      case TargetPlatform.android ||
          TargetPlatform.iOS ||
          TargetPlatform.macOS) {
    final option = ImageEditorOption()..addOption(const FlipOption());
    final result =
        await ImageEditor.editImage(image: image, imageEditorOption: option);
    return result!;
  } else {
    final src = await compute(decodeImage, image);
    final flipped = flipHorizontal(bakeOrientation(src!));
    return await compute(encodePng, flipped);
  }
}

Future<Uint8List> rotate(Uint8List image) async {
  if (defaultTargetPlatform
      case TargetPlatform.android ||
          TargetPlatform.iOS ||
          TargetPlatform.macOS) {
    final option = ImageEditorOption()..addOption(const RotateOption(90));
    final result =
        await ImageEditor.editImage(image: image, imageEditorOption: option);
    return result!;
  } else {
    final src = await compute(decodeImage, image);
    final rotated = copyRotate(bakeOrientation(src!), angle: 90.0);
    return await compute(encodePng, rotated);
  }
}
