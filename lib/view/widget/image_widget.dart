import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/cache_manager_provider.dart';

class ImageWidget extends ConsumerWidget {
  const ImageWidget({
    super.key,
    required this.url,
    this.blurHash,
    this.width,
    this.height,
    this.opacity = 1.0,
    this.fit,
    this.alignment = Alignment.center,
    this.errorBuilder,
    this.semanticLabel,
  });

  final String url;
  final String? blurHash;
  final double? width;
  final double? height;
  final double opacity;
  final BoxFit? fit;
  final Alignment alignment;
  final Widget Function(BuildContext, Object, Object?)? errorBuilder;
  final String? semanticLabel;

  Widget _buildPlaceholder() {
    if (blurHash != null) {
      return BlurHash(hash: blurHash!);
    } else {
      return SizedBox(width: width, height: height);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (url.startsWith('data')) {
      final data = UriData.fromString(url);
      if (data.isMimeType('image/svg+xml')) {
        return SvgPicture.string(
          data.contentText,
          width: width,
          height: height,
          fit: fit ?? BoxFit.contain,
          alignment: alignment,
          placeholderBuilder: (_) => _buildPlaceholder(),
          colorFilter: ColorFilter.mode(
            Color.fromRGBO(255, 255, 255, opacity),
            BlendMode.modulate,
          ),
          semanticsLabel: semanticLabel,
        );
      } else {
        return Image.memory(
          data.contentAsBytes(),
          width: width,
          height: height,
          fit: fit,
          alignment: alignment,
          opacity: AlwaysStoppedAnimation(opacity),
          errorBuilder: errorBuilder ?? (_, __, ___) => _buildPlaceholder(),
          semanticLabel: semanticLabel,
        );
      }
    }
    if (url.endsWith('.svg')) {
      return FutureBuilder(
        future: ref.read(cacheManagerProvider).getSingleFile(url),
        builder: (context, snapshot) {
          if (snapshot case AsyncSnapshot(:final data?)) {
            return SvgPicture.file(
              data,
              width: width,
              height: height,
              fit: fit ?? BoxFit.contain,
              alignment: alignment,
              placeholderBuilder: (_) => _buildPlaceholder(),
              colorFilter: ColorFilter.mode(
                Color.fromRGBO(255, 255, 255, opacity),
                BlendMode.modulate,
              ),
              semanticsLabel: semanticLabel,
            );
          } else {
            return _buildPlaceholder();
          }
        },
      );
    } else {
      return Semantics(
        label: semanticLabel,
        child: CachedNetworkImage(
          imageUrl: url,
          width: width,
          height: height,
          fit: fit,
          alignment: alignment,
          cacheManager: ref.watch(cacheManagerProvider),
          placeholder: (_, __) => _buildPlaceholder(),
          errorWidget: errorBuilder ?? (_, __, ___) => _buildPlaceholder(),
          color: Color.fromRGBO(255, 255, 255, opacity),
          colorBlendMode: BlendMode.modulate,
        ),
      );
    }
  }
}
