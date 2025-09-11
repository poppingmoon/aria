import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gal/gal.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../hook/chewie_controller_hook.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/cache_manager_provider.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import 'message_dialog.dart';

class VideoDialog extends HookConsumerWidget {
  const VideoDialog({super.key, this.account, this.url, this.file, this.noteId})
    : assert(url != null || file != null);

  final Account? account;
  final String? url;
  final File? file;
  final String? noteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useChewieController(
      url: url != null ? Uri.parse(url!) : null,
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
            onUpdate: (details) {
              if (!details.previousReached && details.reached) {
                HapticFeedback.lightImpact();
              }
            },
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
                                .getSingleFile(url);
                            await Gal.putVideo(file.path);
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
                      onTap: () => launchUrl(ref, Uri.parse(url)),
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
