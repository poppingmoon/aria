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

  Widget buildPlaceholder() {
    if (blurHash != null) {
      return BlurHash(hash: blurHash!);
    } else {
      return SizedBox(width: width, height: height);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (url.startsWith('data')) {
      return Image.memory(
        UriData.fromString(url).contentAsBytes(),
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
        opacity: AlwaysStoppedAnimation(opacity),
        errorBuilder: errorBuilder ?? (_, __, ___) => buildPlaceholder(),
        semanticLabel: semanticLabel,
      );
    }
    if (url.endsWith('.svg')) {
      return SvgPicture.network(
        url,
        width: width,
        height: height,
        fit: fit ?? BoxFit.contain,
        alignment: alignment,
        placeholderBuilder: (_) => buildPlaceholder(),
        colorFilter: ColorFilter.mode(
          Color.fromRGBO(255, 255, 255, opacity),
          BlendMode.modulate,
        ),
        semanticsLabel: semanticLabel,
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
          placeholder: (_, __) => buildPlaceholder(),
          errorWidget: errorBuilder ?? (_, __, ___) => buildPlaceholder(),
          color: Color.fromRGBO(255, 255, 255, opacity),
          colorBlendMode: BlendMode.modulate,
        ),
      );
    }
  }
}
