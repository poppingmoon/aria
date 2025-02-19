import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:just_audio/just_audio.dart';

AudioPlayer useAudioPlayer({List<Object?>? keys}) {
  return use(_AudioPlayerHook(keys: keys));
}

class _AudioPlayerHook extends Hook<AudioPlayer> {
  const _AudioPlayerHook({super.keys});

  @override
  HookState<AudioPlayer, Hook<AudioPlayer>> createState() =>
      _AudioPlayerHookState();
}

class _AudioPlayerHookState extends HookState<AudioPlayer, _AudioPlayerHook> {
  final player = AudioPlayer();

  @override
  AudioPlayer build(BuildContext context) => player;

  @override
  void dispose() => player.dispose();
}
