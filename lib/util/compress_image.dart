import 'package:flutter/foundation.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image/image.dart';
import 'package:image_compression/image_compression.dart';

const _compressTypeMap = {
  'image/jpeg': (quality: 90, format: CompressFormat.webp),
  'image/png': (quality: 100, format: CompressFormat.webp),
  'image/webp': (quality: 90, format: CompressFormat.webp),
  'image/svg+xml': (quality: 100, format: CompressFormat.webp),
  'image/tiff': (quality: 100, format: CompressFormat.webp),
};

const _compressTypeMapFallback = {
  'image/jpeg': (quality: 85, format: CompressFormat.jpeg),
  'image/png': (quality: 100, format: CompressFormat.png),
  'image/webp': (quality: 85, format: CompressFormat.jpeg),
  'image/svg+xml': (quality: 100, format: CompressFormat.png),
  'image/tiff': (quality: 100, format: CompressFormat.png),
};

bool _isAnimated(Uint8List image) {
  final gifInfo = GifDecoder(image).info;
  if (gifInfo != null) {
    return gifInfo.numFrames > 1;
  }
  final pngInfo = PngDecoder().startDecode(image);
  if (pngInfo is PngInfo) {
    return pngInfo.isAnimated;
  }
  final webpInfo = WebPDecoder(image).info;
  if (webpInfo != null) {
    return webpInfo.hasAnimation;
  }
  return false;
}

Future<Uint8List?> compressImage(Uint8List image, String? type) async {
  final imgConfig = switch (defaultTargetPlatform) {
    TargetPlatform.android || TargetPlatform.iOS => _compressTypeMap[type],
    _ => _compressTypeMapFallback[type],
  };
  if (imgConfig == null || _isAnimated(image)) {
    return null;
  }
  if (defaultTargetPlatform
      case TargetPlatform.android ||
          TargetPlatform.iOS ||
          TargetPlatform.macOS) {
    try {
      final resized = await FlutterImageCompress.compressWithList(
        image,
        minWidth: 2048,
        minHeight: 2048,
        quality: imgConfig.quality,
        format: imgConfig.format,
      );
      if (resized.length < image.length) {
        return resized;
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint(e.toString());
      }
    }
  } else {
    try {
      final resized = await compute(
        compress,
        ImageFileConfiguration(
          input: ImageFile(
            filePath: '',
            rawBytes: image,
          ),
          config: Configuration(
            jpgQuality: imgConfig.quality,
            outputType: imgConfig.format == CompressFormat.jpeg
                ? OutputType.jpg
                : OutputType.png,
          ),
        ),
      );
      if (resized.rawBytes.length < image.length) {
        return resized.rawBytes;
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint(e.toString());
      }
    }
  }
  return null;
}
