import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../hook/chewie_controller_hook.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/cache_manager_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import '../../util/show_toast.dart';

class VideoDialog extends HookConsumerWidget {
  const VideoDialog({
    super.key,
    this.account,
    this.url,
    this.file,
    this.fileName,
    this.noteId,
  }) : assert(url != null || file != null);

  final Account? account;
  final String? url;
  final File? file;
  final String? fileName;
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
            child: Center(child: _VideoWidget(controller: controller)),
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
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _VideoWidget extends StatelessWidget {
  const _VideoWidget({required this.controller});

  final ChewieController? controller;

  @override
  Widget build(BuildContext context) {
    if (controller case final controller?
        when controller.videoPlayerController.value.isInitialized) {
      return AspectRatio(
        aspectRatio: controller.videoPlayerController.value.aspectRatio,
        child: Chewie(controller: controller),
      );
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }
}
