import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:video_player/video_player.dart';

VideoPlayerController? useVideoPlayerController({
  List<Object?>? keys,
  Uri? url,
  File? file,
  bool autoPlay = false,
}) {
  return use(
    _VideoPlayerControllerHook(
      keys: keys,
      url: url,
      file: file,
      autoPlay: autoPlay,
    ),
  );
}

class _VideoPlayerControllerHook extends Hook<VideoPlayerController?> {
  const _VideoPlayerControllerHook({
    super.keys,
    this.url,
    this.file,
    this.autoPlay = false,
  });

  final Uri? url;
  final File? file;
  final bool autoPlay;

  @override
  HookState<VideoPlayerController?, Hook<VideoPlayerController?>>
  createState() => _VideoPlayerControllerHookState();
}

class _VideoPlayerControllerHookState
    extends HookState<VideoPlayerController?, _VideoPlayerControllerHook> {
  VideoPlayerController? _videoPlayerController;

  @override
  void initHook() {
    super.initHook();
    _initializePlayer();
  }

  @override
  VideoPlayerController? build(BuildContext context) => _videoPlayerController;

  @override
  void dispose() {
    _videoPlayerController?.dispose();
    super.dispose();
  }

  Future<void> _initializePlayer() async {
    final videoPlayerController = switch (hook) {
      _VideoPlayerControllerHook(:final url?) =>
        VideoPlayerController.networkUrl(url),
      _VideoPlayerControllerHook(:final file?) => VideoPlayerController.file(
        file,
      ),
      _ => null,
    };
    await videoPlayerController?.initialize();
    if (hook.autoPlay) {
      await videoPlayerController?.play();
    }
    _videoPlayerController = videoPlayerController;
    setState(() {});
  }
}
