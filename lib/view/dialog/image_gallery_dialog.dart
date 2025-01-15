import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gal/gal.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';
import '../../provider/cache_manager_provider.dart';
import '../../util/copy_text.dart';
import '../../util/future_with_dialog.dart';
import '../widget/image_widget.dart';
import 'message_dialog.dart';

Future<void> showImageGalleryDialog(
  BuildContext context, {
  required List<DriveFile> files,
  int initialIndex = 0,
}) {
  return showDialog(
    context: context,
    builder: (context) => ImageGalleryDialog(
      files: files,
      initialIndex: initialIndex,
    ),
    useSafeArea: false,
  );
}

class ImageGalleryDialog extends HookConsumerWidget {
  const ImageGalleryDialog({
    super.key,
    required this.files,
    this.initialIndex = 0,
  });

  final List<DriveFile> files;
  final int initialIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = usePageController(initialPage: initialIndex);
    final index = useState(initialIndex);
    useEffect(
      () {
        controller.addListener(() {
          index.value = controller.page?.round() ?? 0;
        });
        return;
      },
      [],
    );
    final comment = files[index.value].comment;
    final isZoomed = useState(false);

    return Stack(
      children: [
        Dismissible(
          key: const ValueKey(0),
          direction: !isZoomed.value
              ? DismissDirection.vertical
              : DismissDirection.none,
          onDismissed: (_) => context.pop(),
          child: FocusableActionDetector(
            autofocus: true,
            shortcuts: {
              previousActivator: VoidCallbackIntent(
                () => controller.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                ),
              ),
              nextActivator: VoidCallbackIntent(
                () => controller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                ),
              ),
            },
            child: PhotoViewGallery.builder(
              pageController: controller,
              builder: (BuildContext context, int index) =>
                  PhotoViewGalleryPageOptions(
                heroAttributes: PhotoViewHeroAttributes(tag: files[index].id),
                imageProvider: CachedNetworkImageProvider(
                  files[index].url,
                  cacheManager: ref.watch(cacheManagerProvider),
                ),
              ),
              loadingBuilder: (context, event) => Stack(
                alignment: Alignment.center,
                children: [
                  if (controller.page == index.value)
                    if (files.elementAtOrNull(index.value)?.thumbnailUrl
                        case final thumbnailUrl?)
                      Positioned.fill(
                        child: ImageWidget(
                          url: thumbnailUrl,
                          blurHash: thumbnailUrl,
                          fit: BoxFit.contain,
                        ),
                      ),
                  SizedBox.square(
                    dimension: 20.0,
                    child: CircularProgressIndicator(
                      value: switch (event) {
                        ImageChunkEvent(
                          :final cumulativeBytesLoaded,
                          :final expectedTotalBytes?
                        ) =>
                          cumulativeBytesLoaded / expectedTotalBytes,
                        _ => null,
                      },
                    ),
                  ),
                ],
              ),
              itemCount: files.length,
              backgroundDecoration:
                  const BoxDecoration(color: Colors.transparent),
              scaleStateChangedCallback: (state) => switch (state) {
                PhotoViewScaleState.initial ||
                PhotoViewScaleState.zoomedOut =>
                  isZoomed.value = false,
                PhotoViewScaleState.covering ||
                PhotoViewScaleState.originalSize ||
                PhotoViewScaleState.zoomedIn =>
                  isZoomed.value = true,
              },
            ),
          ),
        ),
        SafeArea(
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                style: IconButton.styleFrom(backgroundColor: Colors.white54),
                onPressed: () => context.pop(),
                icon: const Icon(Icons.close),
              ),
            ),
          ),
        ),
        SafeArea(
          child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                style: IconButton.styleFrom(backgroundColor: Colors.white54),
                onPressed: () async {
                  if (!await Gal.requestAccess()) {
                    if (!context.mounted) return;
                    await showMessageDialog(
                      context,
                      t.misskey.permissionDeniedError,
                    );
                    return;
                  }
                  if (!context.mounted) return;
                  await futureWithDialog(
                    context,
                    Future(() async {
                      final file = await ref
                          .read(cacheManagerProvider)
                          .getSingleFile(files[index.value].url);
                      await Gal.putImage(file.path);
                    }),
                    message: t.aria.downloaded,
                  );
                },
                icon: const Icon(Icons.save),
              ),
            ),
          ),
        ),
        if (index.value > 0)
          SafeArea(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  style: IconButton.styleFrom(backgroundColor: Colors.white54),
                  onPressed: () => controller.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  ),
                  icon: const Icon(Icons.navigate_before),
                ),
              ),
            ),
          ),
        if (index.value < files.length - 1)
          SafeArea(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  style: IconButton.styleFrom(backgroundColor: Colors.white54),
                  onPressed: () => controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  ),
                  icon: const Icon(Icons.navigate_next),
                ),
              ),
            ),
          ),
        SafeArea(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onLongPress: () => copyToClipboard(
                  context,
                  comment != null && comment.isNotEmpty
                      ? comment
                      : files[index.value].name,
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 100.0),
                      child: SingleChildScrollView(
                        child: _ShadowText(
                          text: comment != null && comment.isNotEmpty
                              ? comment
                              : files[index.value].name,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ShadowText extends StatelessWidget {
  const _ShadowText({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final shadowColor = theme.canvasColor;
    final style = theme.textTheme.bodyMedium ?? const TextStyle();

    if (defaultTargetPlatform == TargetPlatform.android) {
      return Stack(
        children: [
          Text(
            text,
            style: style.copyWith(
              foreground: Paint()
                ..color = shadowColor.withValues(alpha: 0.5)
                ..style = PaintingStyle.stroke
                ..strokeWidth = 2.0,
            ),
          ),
          Text(text, style: style),
        ],
      );
    } else {
      return Text(
        text,
        style: style.copyWith(
          shadows: [
            Shadow(
              blurRadius: 2.0,
              color: shadowColor,
            ),
            Shadow(
              blurRadius: 2.0,
              color: shadowColor,
            ),
          ],
        ),
      );
    }
  }
}
