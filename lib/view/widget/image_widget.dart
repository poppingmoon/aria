import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
          color: Colors.transparent,
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
    final userAgent = ref.watch(userAgentProvider).value;

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
      return _FadeImageWidget(
        image: CachedNetworkImageProvider(
          url,
          headers: {'User-Agent': ?userAgent},
          cacheManager: cacheManager,
        ),
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
        opacity: opacity,
        placeholderBuilder: _buildPlaceholder,
        errorBuilder:
            errorBuilder ?? (context, _, _) => _buildPlaceholder(context),
        semanticLabel: semanticLabel,
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

class _FadeImageWidget extends HookWidget {
  const _FadeImageWidget({
    required this.image,
    this.width,
    this.height,
    this.fit,
    this.alignment = Alignment.center,
    this.opacity = 1.0,
    required this.placeholderBuilder,
    this.errorBuilder,
    this.semanticLabel,
  });

  final ImageProvider<Object> image;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final AlignmentGeometry alignment;
  final double opacity;
  final Widget Function(BuildContext context) placeholderBuilder;
  final Widget Function(BuildContext, Object, Object?)? errorBuilder;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final isLoaded = useState(false);
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );
    useEffect(() {
      void callback() {
        if (isLoaded.value && !controller.isAnimating) {
          controller.forward(from: 0.0);
        }
      }

      callback();
      isLoaded.addListener(callback);
      return () => isLoaded.removeListener(callback);
    }, []);

    return Image(
      image: image,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      opacity: AlwaysStoppedAnimation(opacity),
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          return child;
        }
        Future(() => isLoaded.value = frame != null);
        return _FadeStack(
          controller: controller,
          placeholderBuilder: placeholderBuilder,
          child: child,
        );
      },
      errorBuilder:
          errorBuilder ?? (context, _, _) => placeholderBuilder(context),
      semanticLabel: semanticLabel,
    );
  }
}

class _FadeStack extends HookWidget {
  const _FadeStack({
    required this.controller,
    required this.placeholderBuilder,
    required this.child,
  });

  final AnimationController controller;
  final Widget Function(BuildContext context) placeholderBuilder;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final animationStatus = useState(AnimationStatus.dismissed);
    useEffect(() {
      void callback(AnimationStatus status) {
        animationStatus.value = status;
      }

      callback(controller.status);
      controller.addStatusListener(callback);
      return () => controller.removeStatusListener(callback);
    }, []);

    return Stack(
      alignment: Alignment.center,
      fit: StackFit.passthrough,
      children: [
        if (!animationStatus.value.isCompleted)
          FadeTransition(
            opacity: Tween(begin: 1.0, end: 0.0).animate(
              CurveTween(
                curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
              ).animate(controller),
            ),
            child: placeholderBuilder(context),
          ),
        if (animationStatus.value.isForwardOrCompleted)
          FadeTransition(
            opacity: CurveTween(curve: Curves.easeIn).animate(controller),
            child: child,
          ),
      ],
    );
  }
}
