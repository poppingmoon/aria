import 'dart:math';

import 'package:animated_image/animated_image.dart';
import 'package:material_ui/material_ui.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../model/post_file.dart';
import 'image_widget.dart';
import 'media_icon.dart';

class const PostFileThumbnail({
  super.key,
  required final PostFile file,
  final double? width,
  final double? height,
  final BoxFit? fit,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (file case DrivePostFile(
      file: DriveFile(:final thumbnailUrl?, :final blurhash),
    )) {
      return ImageWidget(
        url: thumbnailUrl,
        blurHash: blurhash,
        width: width,
        height: height,
        fit: fit,
      );
    }
    if (file.type?.startsWith('image/') ?? false) {
      if (file case LocalPostFile(:final file)) {
        return AnimatedImage.file(file, width: width, height: height, fit: fit);
      }
    }
    return SizedBox(
      width: width,
      height: height,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return MediaIcon(
            mimeType: file.type,
            size: min(
              min(constraints.maxWidth, constraints.maxHeight) * 0.8,
              100.0,
            ),
          );
        },
      ),
    );
  }
}
