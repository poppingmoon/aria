import 'dart:io';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:photo_view/photo_view.dart';

import '../../i18n/strings.g.dart';
import '../../provider/cache_manager_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../util/copy_text.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import '../../util/show_toast.dart';

Future<void> showImageDialog(BuildContext context, {String? url, File? file}) {
  return showDialog(
    context: context,
    builder: (context) => ImageDialog(url: url, file: file),
    useSafeArea: false,
  );
}

class ImageDialog extends HookConsumerWidget {
  const ImageDialog({super.key, this.url, this.file});

  final String? url;
  final File? file;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final url = switch (this.url) {
      final url? => Uri.tryParse(url),
      _ => null,
    };
    final enableHapticFeedback = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.enableHapticFeedback,
      ),
    );
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
          key: const ValueKey('ImageDialog'),
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
            if (enableHapticFeedback &&
                !details.previousReached &&
                details.reached) {
              HapticFeedback.lightImpact();
            }
          },
          onDismissed: (_) => context.pop(),
          child: PhotoView(
            imageProvider: switch ((file, this.url)) {
              (final file?, _) => FileImage(file) as ImageProvider,
              (_, final url?) => CachedNetworkImageProvider(
                url,
                cacheManager: ref.watch(cacheManagerProvider),
              ),
              _ => null,
            },
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
            onTapUp: (_, _, _) {
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
        ),
        Opacity(
          opacity: overlayOpacity,
          child: SafeArea(
            child: IconButtonTheme(
              data: IconButtonThemeData(
                style: IconButton.styleFrom(
                  backgroundColor: theme.canvasColor.withValues(alpha: 0.6),
                ),
              ),
              child: Stack(
                children: [
                  Align(
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
                  if (url case final url?)
                    Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: PopupMenuButton<void>(
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              onTap: () async {
                                final result = await futureWithDialog(
                                  context,
                                  ref
                                      .read(cacheManagerProvider)
                                      .getSingleFile(url.toString())
                                      .then((file) => file.readAsBytes())
                                      .then(
                                        (bytes) => FilePicker.platform.saveFile(
                                          fileName: url.pathSegments.lastOrNull,
                                          bytes: bytes,
                                        ),
                                      ),
                                );
                                if (!context.mounted) return;
                                if (result != null) {
                                  showToast(
                                    context: context,
                                    message: t.misskey.saved,
                                  );
                                }
                              },
                              child: ListTile(
                                leading: const Icon(Icons.download),
                                title: Text(t.misskey.download),
                              ),
                            ),
                            PopupMenuItem(
                              onTap: () => launchUrl(ref, url),
                              child: ListTile(
                                leading: const Icon(Icons.open_in_browser),
                                title: Text(t.aria.openInBrowser),
                              ),
                            ),
                            PopupMenuItem(
                              onTap: () =>
                                  copyToClipboard(context, url.toString()),
                              child: ListTile(
                                leading: const Icon(Icons.copy),
                                title: Text(t.misskey.copyLink),
                              ),
                            ),
                          ],
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
