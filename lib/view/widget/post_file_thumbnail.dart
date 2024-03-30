import 'dart:math';

import 'package:flutter/material.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../model/post_file.dart';
import 'image_widget.dart';
import 'media_icon.dart';

class PostFileThumbnail extends StatelessWidget {
  const PostFileThumbnail({
    super.key,
    required this.file,
    this.width,
    this.height,
    this.fit,
    this.fallbackToOriginalImage = false,
  });

  final PostFile file;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final bool fallbackToOriginalImage;

  @override
  Widget build(BuildContext context) {
    if (file
        case DrivePostFile(
          file: DriveFile(:final thumbnailUrl?, :final blurhash)
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
        return Image.file(
          file,
          width: width,
          height: height,
          fit: fit,
        );
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
