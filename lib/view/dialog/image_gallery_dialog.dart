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

import '../../constant/max_content_width.dart';
import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/cache_manager_provider.dart';
import '../../provider/note_provider.dart';
import '../../util/copy_text.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import '../widget/image_widget.dart';
import '../widget/note_summary.dart';
import '../widget/time_widget.dart';
import '../widget/user_avatar.dart';
import 'message_dialog.dart';

Future<void> showImageGalleryDialog(
  BuildContext context, {
  required List<DriveFile> files,
  int initialIndex = 0,
}) {
  return showDialog(
    context: context,
    builder: (context) =>
        ImageGalleryDialog(files: files, initialIndex: initialIndex),
    useSafeArea: false,
  );
}

class ImageGalleryDialog extends HookConsumerWidget {
  const ImageGalleryDialog({
    super.key,
    this.account,
    required this.files,
    this.noteIds,
    this.controller,
    this.initialIndex = 0,
  });

  final Account? account;
  final List<DriveFile> files;
  final List<String>? noteIds;
  final PageController? controller;
  final int initialIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller =
        this.controller ?? usePageController(initialPage: initialIndex);
    final index = useState(initialIndex);
    useEffect(() {
      controller.addListener(() {
        index.value = controller.page?.round() ?? 0;
      });
      return;
    }, []);
    final comment = files.elementAtOrNull(index.value)?.comment;
    final noteId = noteIds?.elementAtOrNull(index.value);
    final note = account != null && noteId != null
        ? ref.watch(noteProvider(account!, noteId))
        : null;
    final isZoomed = useState(false);
    final overlayOpacityController = useAnimationController(
      duration: const Duration(milliseconds: 100),
      initialValue: 1.0,
    );
    final overlayOpacity = useAnimation(overlayOpacityController);
    final theme = Theme.of(context);
    final materialLocalizations = MaterialLocalizations.of(context);

    return Stack(
      children: [
        Dismissible(
          key: const ValueKey('ImageGalleryDialog'),
          direction: !isZoomed.value
              ? DismissDirection.vertical
              : DismissDirection.none,
          onUpdate: (details) {
            if (overlayOpacity > 0.0) {
              overlayOpacityController.animateTo(
                clampDouble(1.0 - details.progress * 1.5, 0.0, 1.0),
                duration: Duration.zero,
              );
            }
          },
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
                  if (overlayOpacity < 0.5) {
                    overlayOpacityController.animateTo(
                      1.0,
                      curve: Curves.easeInOut,
                    );
                  } else {
                    overlayOpacityController.animateTo(
                      0.0,
                      curve: Curves.easeInOut,
                    );
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
                    overlayOpacityController.animateTo(
                      1.0,
                      curve: Curves.easeInOut,
                    );
                  case PhotoViewScaleState.covering ||
                      PhotoViewScaleState.originalSize ||
                      PhotoViewScaleState.zoomedIn:
                    isZoomed.value = true;
                    overlayOpacityController.animateTo(
                      0.0,
                      curve: Curves.easeInOut,
                    );
                }
              },
            ),
          ),
        ),
        Opacity(
          opacity: overlayOpacity,
          child: IconButtonTheme(
            data: IconButtonThemeData(
              style: IconButton.styleFrom(
                backgroundColor: theme.canvasColor.withValues(alpha: 0.6),
              ),
            ),
            child: Stack(
              children: [
                SafeArea(
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: IconButton(
                        tooltip: materialLocalizations.closeButtonTooltip,
                        onPressed: () => context.pop(),
                        icon: const Icon(Icons.close),
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: PopupMenuButton<void>(
                        itemBuilder: (context) => [
                          if (account case final account? when noteId != null)
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
                ),
                if (index.value > 0)
                  SafeArea(
                    child: Align(
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
                  ),
                if (index.value < files.length - 1)
                  SafeArea(
                    child: Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: () => controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          ),
                          icon: const Icon(Icons.navigate_next),
                        ),
                      ),
                    ),
                  ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SafeArea(
                        bottom: note == null,
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
                              color: theme.canvasColor.withValues(alpha: 0.6),
                              borderRadius: BorderRadius.circular(8.0),
                              child: Container(
                                constraints: const BoxConstraints(
                                  maxWidth: maxContentWidth,
                                ),
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
                      if (account case final account? when note != null)
                        SizedBox(
                          width: maxContentWidth,
                          child: Material(
                            color: theme.colorScheme.surface.withValues(
                              alpha: 0.8,
                            ),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(24.0),
                              ),
                            ),
                            child: SafeArea(
                              top: false,
                              child: ListTile(
                                leading: UserAvatar(
                                  account: account,
                                  user: note.user,
                                  size: 32.0,
                                  onTap: () => context.push(
                                    '/$account/users/${note.userId}',
                                  ),
                                ),
                                title: NoteSummary(
                                  account: account,
                                  noteId: note.id,
                                ),
                                subtitle: TimeWidget(
                                  time: note.createdAt,
                                  detailed: true,
                                ),
                                onTap: () =>
                                    context.push('/$account/notes/${note.id}'),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
