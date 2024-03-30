import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:gal/gal.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:video_player/video_player.dart';

import '../../i18n/strings.g.dart';
import '../../provider/cache_manager_provider.dart';
import '../../util/future_with_dialog.dart';
import 'message_dialog.dart';

class VideoDialog extends ConsumerWidget {
  const VideoDialog({super.key, required this.file});

  final DriveFile file;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Dismissible(
          key: const ValueKey(0),
          onDismissed: (_) => context.pop(),
          direction: DismissDirection.vertical,
          child: Center(child: _VideoWidget(url: file.url)),
        ),
        Align(
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
        Align(
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
                        .getSingleFile(this.file.url);
                    await Gal.putVideo(file.path);
                  }),
                  message: t.aria.downloaded,
                );
              },
              icon: const Icon(Icons.save),
            ),
          ),
        ),
      ],
    );
  }
}

class _VideoWidget extends StatefulWidget {
  const _VideoWidget({required this.url});

  final String url;

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
        VideoPlayerController.networkUrl(Uri.parse(widget.url));
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
