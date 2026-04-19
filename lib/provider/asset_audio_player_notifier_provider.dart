import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'asset_audio_player_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
Future<void> _audioContext(Ref ref) {
  return AudioPlayer.global.setAudioContext(
    AudioContextConfig(focus: AudioContextConfigFocus.mixWithOthers).build(),
  );
}

@riverpod
class AssetAudioPlayerNotifier extends _$AssetAudioPlayerNotifier {
  @override
  FutureOr<AudioPlayer> build(String asset, double volume) async {
    await ref.watch(_audioContextProvider.future);
    final player = AudioPlayer();
    ref.onDispose(player.dispose);
    await player.setSourceAsset(asset.replaceFirst(RegExp('^assets/'), ''));
    await player.setVolume(volume);
    await player.setReleaseMode(ReleaseMode.stop);
    return player;
  }

  Future<void> play() async {
    final player = await future;
    await player.seek(Duration.zero);
    await player.resume();
    await player.onPlayerComplete.first;
  }
}
