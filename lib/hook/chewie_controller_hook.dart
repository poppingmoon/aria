import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:video_player/video_player.dart';

import 'video_player_controller_hook.dart';

ChewieController? useChewieController({
  List<Object?>? keys,
  Uri? url,
  File? file,
  bool autoPlay = false,
  bool showControlsOnInitialize = true,
}) {
  final videoPlayerController = useVideoPlayerController(url: url, file: file);
  return use(
    _ChewieControllerHook(
      keys: keys,
      videoPlayerController: videoPlayerController,
      autoPlay: autoPlay,
      showControlsOnInitialize: showControlsOnInitialize,
    ),
  );
}

class _ChewieControllerHook extends Hook<ChewieController?> {
  const _ChewieControllerHook({
    super.keys,
    this.videoPlayerController,
    this.autoPlay = false,
    this.showControlsOnInitialize = true,
  });

  final VideoPlayerController? videoPlayerController;
  final bool autoPlay;
  final bool showControlsOnInitialize;

  @override
  HookState<ChewieController?, Hook<ChewieController?>> createState() =>
      _ChewieControllerHookState();
}

class _ChewieControllerHookState
    extends HookState<ChewieController?, _ChewieControllerHook> {
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
    _chewieController?.dispose();
    super.dispose();
  }

  Future<void> _initializePlayer() async {
    if (hook.videoPlayerController case final videoPlayerController?) {
      _chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        autoPlay: hook.autoPlay,
        showControlsOnInitialize: hook.showControlsOnInitialize,
      );
      setState(() {});
    }
  }

  @override
  void didUpdateHook(_ChewieControllerHook oldHook) {
    if (_chewieController == null) {
      _initializePlayer();
    }
    super.didUpdateHook(oldHook);
  }
}
