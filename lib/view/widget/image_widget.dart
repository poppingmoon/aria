import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/cache_manager_provider.dart';
import '../../provider/user_agent_provider.dart';

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
    this.placeholderBuilder,
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
  final Widget Function(BuildContext context)? placeholderBuilder;
  final Widget Function(BuildContext, Object, Object?)? errorBuilder;
  final String? semanticLabel;
  final bool enableFadeIn;

  Widget _buildPlaceholder(BuildContext context) {
    if (placeholderBuilder case final placeholderBuilder?) {
      return placeholderBuilder(context);
    }
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
      return _buildPlaceholder(context);
    }

    final cacheManager = ref.watch(cacheManagerProvider);
    final userAgent = ref.watch(userAgentProvider).valueOrNull;

    if (url.startsWith('data:image/svg+xml') ||
        url.split('?').first.endsWith('.svg')) {
      return StreamBuilder(
        stream: cacheManager.getFileStream(
          url,
          headers: {'User-Agent': ?userAgent},
        ),
        builder: (context, snapshot) {
          if (snapshot.data case FileInfo(:final file)) {
            return SvgPicture.file(
              file,
              width: width,
              height: height,
              fit: fit ?? BoxFit.contain,
              alignment: alignment,
              placeholderBuilder: _buildPlaceholder,
              colorFilter: ColorFilter.mode(
                Color.fromRGBO(255, 255, 255, opacity),
                BlendMode.modulate,
              ),
              semanticsLabel: semanticLabel,
            );
          } else {
            return _buildPlaceholder(context);
          }
        },
      );
    }
    if (enableFadeIn) {
      return Semantics(
        label: semanticLabel,
        child: CachedNetworkImage(
          imageUrl: url,
          httpHeaders: {'User-Agent': ?userAgent},
          width: width,
          height: height,
          fit: fit,
          alignment: alignment,
          cacheManager: cacheManager,
          placeholder: (context, _) => _buildPlaceholder(context),
          errorWidget:
              errorBuilder ?? (context, _, _) => _buildPlaceholder(context),
          color: opacity < 1.0 ? Color.fromRGBO(255, 255, 255, opacity) : null,
          colorBlendMode: BlendMode.modulate,
          fadeOutDuration: Duration.zero,
        ),
      );
    } else {
      return Image(
        image: CachedNetworkImageProvider(
          url,
          headers: {'User-Agent': ?userAgent},
          cacheManager: cacheManager,
        ),
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
        opacity: AlwaysStoppedAnimation(opacity),
        frameBuilder: (context, child, frame, wasSynchronouslyLoaded) =>
            wasSynchronouslyLoaded || frame != null
            ? child
            : _buildPlaceholder(context),
        errorBuilder:
            errorBuilder ?? (context, _, _) => _buildPlaceholder(context),
        semanticLabel: semanticLabel,
      );
    }
  }
}
