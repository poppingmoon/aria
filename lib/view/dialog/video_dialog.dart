import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gal/gal.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../hook/chewie_controller_hook.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/cache_manager_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../util/copy_text.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import '../../util/show_toast.dart';
import '../widget/image_widget.dart';
import 'message_dialog.dart';

class VideoDialog extends HookConsumerWidget {
  const VideoDialog({
    super.key,
    this.account,
    this.url,
    this.file,
    this.fileName,
    this.thumbnailUrl,
    this.noteId,
  }) : assert(url != null || file != null);

  final Account? account;
  final String? url;
  final File? file;
  final String? fileName;
  final String? thumbnailUrl;
  final String? noteId;

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
    final controller = useChewieController(
      url: url,
      file: file,
      autoPlay: true,
      showControlsOnInitialize: false,
    );

    return IconButtonTheme(
      data: IconButtonThemeData(
        style: IconButton.styleFrom(backgroundColor: Colors.white54),
      ),
      child: Stack(
        children: [
          Dismissible(
            key: const ValueKey('VideoDialog'),
            onUpdate: enableHapticFeedback
                ? (details) {
                    if (!details.previousReached && details.reached) {
                      HapticFeedback.lightImpact();
                    }
                  }
                : null,
            onDismissed: (_) => context.pop(),
            direction: DismissDirection.vertical,
            child:
                controller != null &&
                    controller.videoPlayerController.value.isInitialized
                ? Center(
                    child: AspectRatio(
                      aspectRatio:
                          controller.videoPlayerController.value.aspectRatio,
                      child: Chewie(controller: controller),
                    ),
                  )
                : SizedBox.expand(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        if (thumbnailUrl case final url?)
                          Positioned.fill(
                            child: ImageWidget(url: url, fit: BoxFit.contain),
                          ),
                        const CircularProgressIndicator(),
                      ],
                    ),
                  ),
          ),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
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
                    if ((account, noteId) case (final account?, final noteId?))
                      PopupMenuItem(
                        onTap: () {
                          controller?.pause();
                          context.push('/$account/notes/$noteId');
                        },
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
                          ref
                              .read(cacheManagerProvider)
                              .getSingleFile(url.toString())
                              .then((file) => Gal.putVideo(file.path)),
                          message: t.misskey.saved,
                        );
                      },
                      child: ListTile(
                        leading: const Icon(Icons.download_outlined),
                        title: Text(t.misskey.save),
                      ),
                    ),
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
                                  fileName:
                                      fileName ?? url.pathSegments.lastOrNull,
                                  bytes: bytes,
                                ),
                              ),
                        );
                        if (!context.mounted) return;
                        if (result != null) {
                          showToast(context: context, message: t.misskey.saved);
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
                      onTap: () => copyToClipboard(context, url.toString()),
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
    );
  }
}
