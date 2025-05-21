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
    this.enableFadeIn = true,
  });

  final String? url;
  final String? blurHash;
  final double? width;
  final double? height;
  final double opacity;
  final BoxFit? fit;
  final Alignment alignment;
  final Widget Function(BuildContext, Object, Object?)? errorBuilder;
  final String? semanticLabel;
  final bool enableFadeIn;

  Widget _buildPlaceholder() {
    if (blurHash case final blurHash?) {
      return SizedBox(
        width: width,
        height: height,
        child: BlurHash(
          hash: blurHash,
          optimizationMode: BlurHashOptimizationMode.approximation,
        ),
      );
    } else {
      return SizedBox(width: width, height: height);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final url = this.url;
    if (url == null || url.isEmpty) {
      return _buildPlaceholder();
    }
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
          errorBuilder: errorBuilder ?? (_, _, _) => _buildPlaceholder(),
          semanticLabel: semanticLabel,
        );
      }
    }
    if (url.split('?').first.endsWith('.svg')) {
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
    }
    final cacheManager = ref.watch(cacheManagerProvider);
    if (enableFadeIn) {
      return Semantics(
        label: semanticLabel,
        child: CachedNetworkImage(
          imageUrl: url,
          width: width,
          height: height,
          fit: fit,
          alignment: alignment,
          cacheManager: cacheManager,
          placeholder: (_, _) => _buildPlaceholder(),
          errorWidget: errorBuilder ?? (_, _, _) => _buildPlaceholder(),
          color: opacity < 1.0 ? Color.fromRGBO(255, 255, 255, opacity) : null,
          colorBlendMode: BlendMode.modulate,
          fadeOutDuration: Duration.zero,
        ),
      );
    } else {
      return Image(
        image: CachedNetworkImageProvider(url, cacheManager: cacheManager),
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
        opacity: AlwaysStoppedAnimation(opacity),
        frameBuilder:
            (context, child, frame, wasSynchronouslyLoaded) =>
                wasSynchronouslyLoaded || frame != null
                    ? child
                    : _buildPlaceholder(),
        errorBuilder: errorBuilder ?? (_, _, _) => _buildPlaceholder(),
        semanticLabel: semanticLabel,
      );
    }
  }
}
