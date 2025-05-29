import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:video_player/video_player.dart';

ChewieController? useChewieController({
  List<Object?>? keys,
  Uri? url,
  File? file,
  bool autoPlay = false,
  bool showControlsOnInitialize = true,
}) {
  return use(
    _ChewieControllerHook(
      keys: keys,
      url: url,
      file: file,
      autoPlay: autoPlay,
      showControlsOnInitialize: showControlsOnInitialize,
    ),
  );
}

class _ChewieControllerHook extends Hook<ChewieController?> {
  const _ChewieControllerHook({
    super.keys,
    this.url,
    this.file,
    this.autoPlay = false,
    this.showControlsOnInitialize = true,
  });

  final Uri? url;
  final File? file;
  final bool autoPlay;
  final bool showControlsOnInitialize;

  @override
  HookState<ChewieController?, Hook<ChewieController?>> createState() =>
      _ChewieControllerHookState();
}

class _ChewieControllerHookState
    extends HookState<ChewieController?, _ChewieControllerHook> {
  late final VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initHook() {
    super.initHook();
    _initializePlayer();
  }

  @override
  ChewieController? build(BuildContext context) => _chewieController;

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  Future<void> _initializePlayer() async {
    if (hook.url case final url?) {
      _videoPlayerController = VideoPlayerController.networkUrl(url);
    } else if (hook.file case final file?) {
      _videoPlayerController = VideoPlayerController.file(file);
    }
    await _videoPlayerController.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: hook.autoPlay,
      showControlsOnInitialize: hook.showControlsOnInitialize,
    );
    setState(() {});
  }
}
