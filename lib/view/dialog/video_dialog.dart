import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:gal/gal.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:video_player/video_player.dart';

import '../../i18n/strings.g.dart';
import '../../provider/cache_manager_provider.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import 'message_dialog.dart';

class VideoDialog extends ConsumerWidget {
  const VideoDialog({super.key, this.url, this.file})
    : assert(url != null || file != null);

  final String? url;
  final File? file;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Dismissible(
          key: const ValueKey(0),
          onDismissed: (_) => context.pop(),
          direction: DismissDirection.vertical,
          child: Center(child: _VideoWidget(url: url, file: file)),
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
              tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
              style: IconButton.styleFrom(backgroundColor: Colors.white54),
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
              child: Material(
                color: Colors.white54,
                shape: const OvalBorder(),
                child: PopupMenuButton<void>(
                  itemBuilder:
                      (context) => [
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
          ),
      ],
    );
  }
}

class _VideoWidget extends StatefulWidget {
  const _VideoWidget({this.url, this.file});

  final String? url;
  final File? file;

  @override
  State<_VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<_VideoWidget> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  int? bufferDelay;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController =
        widget.url != null
            ? VideoPlayerController.networkUrl(Uri.parse(widget.url!))
            : VideoPlayerController.file(widget.file!);
    await _videoPlayerController.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      showControlsOnInitialize: false,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (_chewieController != null &&
        _chewieController!.videoPlayerController.value.isInitialized) {
      return AspectRatio(
        aspectRatio: _chewieController!.videoPlayerController.value.aspectRatio,
        child: Chewie(controller: _chewieController!),
      );
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }
}
