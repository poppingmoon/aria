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
import '../../model/account.dart';
import '../../provider/cache_manager_provider.dart';
import '../../util/copy_text.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import '../widget/image_widget.dart';
import 'message_dialog.dart';

Future<void> showImageGalleryDialog(
  BuildContext context, {
  Account? account,
  required List<DriveFile> files,
  String? noteId,
  int initialIndex = 0,
}) {
  return showDialog(
    context: context,
    builder: (context) => ImageGalleryDialog(
      account: account,
      files: files,
      noteId: noteId,
      initialIndex: initialIndex,
    ),
    useSafeArea: false,
  );
}

class ImageGalleryDialog extends HookConsumerWidget {
  const ImageGalleryDialog({
    super.key,
    this.account,
    required this.files,
    this.noteId,
    this.initialIndex = 0,
  });

  final Account? account;
  final List<DriveFile> files;
  final String? noteId;
  final int initialIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = usePageController(initialPage: initialIndex);
    final index = useState(initialIndex);
    useEffect(() {
      controller.addListener(() {
        index.value = controller.page?.round() ?? 0;
      });
      return;
    }, []);
    final comment = files[index.value].comment;
    final isZoomed = useState(false);
    final overlayOpacity = useState(1.0);
    final theme = Theme.of(context);

    return Stack(
      children: [
        Dismissible(
          key: const ValueKey('ImageGalleryDialog'),
          direction: !isZoomed.value
              ? DismissDirection.vertical
              : DismissDirection.none,
          onUpdate: (details) => overlayOpacity.value = clampDouble(
            1.0 - details.progress * 1.5,
            0.0,
            1.0,
          ),
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
              builder: (context, index) => PhotoViewGalleryPageOptions(
                heroAttributes: PhotoViewHeroAttributes(tag: files[index].id),
                imageProvider: CachedNetworkImageProvider(
                  files[index].url,
                  cacheManager: ref.watch(cacheManagerProvider),
                ),
                onTapUp: (context, details, value) {
                  if (!isZoomed.value) {
                    if (files[index].properties case DriveFileProperties(
                      :final width?,
                      :final height?,
                    )) {
                      if (value.scale case final scale?) {
                        final imageWidth = width * scale;
                        final imageHeight = height * scale;
                        final Size(width: screenWidth, height: screenHeight) =
                            MediaQuery.sizeOf(context);
                        final Offset(:dx, :dy) = details.globalPosition;
                        if (imageWidth / 2 < (dx - screenWidth / 2).abs() ||
                            imageHeight / 2 < (dy - screenHeight / 2).abs()) {
                          context.pop();
                          return;
                        }
                      }
                    }
                  }
                  if (overlayOpacity.value < 0.5) {
                    overlayOpacity.value = 1.0;
                  } else {
                    overlayOpacity.value = 0.0;
                  }
                },
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
                          fit: BoxFit.contain,
                        ),
                      ),
                  SizedBox.square(
                    dimension: 32.0,
                    child: CircularProgressIndicator(
                      value: switch (event) {
                        ImageChunkEvent(
                          :final cumulativeBytesLoaded,
                          :final expectedTotalBytes?,
                        ) =>
                          cumulativeBytesLoaded / expectedTotalBytes,
                        _ => null,
                      },
                    ),
                  ),
                ],
              ),
              itemCount: files.length,
              backgroundDecoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              scaleStateChangedCallback: (state) {
                switch (state) {
                  case PhotoViewScaleState.initial ||
                      PhotoViewScaleState.zoomedOut:
                    isZoomed.value = false;
                    overlayOpacity.value = 1.0;
                  case PhotoViewScaleState.covering ||
                      PhotoViewScaleState.originalSize ||
                      PhotoViewScaleState.zoomedIn:
                    isZoomed.value = true;
                    overlayOpacity.value = 0.0;
                }
              },
            ),
          ),
        ),
        AnimatedOpacity(
          opacity: overlayOpacity.value,
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeInOut,
          child: SafeArea(
            child: IconButtonTheme(
              data: IconButtonThemeData(
                style: IconButton.styleFrom(backgroundColor: Colors.white54),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: IconButton(
                        tooltip: MaterialLocalizations.of(
                          context,
                        ).closeButtonTooltip,
                        onPressed: () => context.pop(),
                        icon: const Icon(Icons.close),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: PopupMenuButton<void>(
                        itemBuilder: (context) => [
                          if ((account, noteId) case (
                            final account?,
                            final noteId?,
                          ))
                            PopupMenuItem(
                              onTap: () =>
                                  context.push('/$account/notes/$noteId'),
                              child: ListTile(
                                leading: const Icon(Icons.open_in_new),
                                title: Text(t.aria.showNote),
                              ),
                            ),
                          PopupMenuItem(
                            onTap: () async {
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
                            child: ListTile(
                              leading: const Icon(Icons.download),
                              title: Text(t.misskey.download),
                            ),
                          ),
                          PopupMenuItem(
                            onTap: () => launchUrl(
                              ref,
                              Uri.parse(files[index.value].url),
                            ),
                            child: ListTile(
                              leading: const Icon(Icons.open_in_browser),
                              title: Text(t.aria.openInBrowser),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (index.value > 0)
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: () => controller.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          ),
                          icon: const Icon(Icons.navigate_before),
                        ),
                      ),
                    ),
                  if (index.value < files.length - 1)
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.white54,
                          ),
                          onPressed: () => controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          ),
                          icon: const Icon(Icons.navigate_next),
                        ),
                      ),
                    ),
                  Align(
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
                        child: Material(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(
                                maxHeight: 100.0,
                              ),
                              child: SingleChildScrollView(
                                child: Text(
                                  comment != null && comment.isNotEmpty
                                      ? comment
                                      : files[index.value].name,
                                  style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 2.0,
                                        color: theme.canvasColor,
                                      ),
                                      Shadow(
                                        blurRadius: 2.0,
                                        color: theme.canvasColor,
                                      ),
                                    ],
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
              ),
            ),
          ),
        ),
      ],
    );
  }
}
