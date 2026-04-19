import 'dart:async';

import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../extension/sound_type_extension.dart';
import '../model/sound_settings.dart';
import 'asset_audio_player_notifier_provider.dart';
import 'sound_settings_notifier_provider.dart';

part 'misskey_sfx_notifier_provider.g.dart';

@riverpod
class MisskeySfxNotifier extends _$MisskeySfxNotifier {
  @override
  ({String? asset, double? volume, bool vibrate}) build(OperationType type) {
    final link = ref.keepAlive();
    Timer? timer;
    ref.onCancel(() => timer = Timer(const Duration(minutes: 1), link.close));
    ref.onResume(() => timer?.cancel());
    ref.onDispose(() => timer?.cancel());
    final (notUseSound, masterVolume, sound) = ref.watch(
      soundSettingsNotifierProvider.select(
        (settings) => (
          settings.notUseSound,
          settings.masterVolume,
          settings.sounds[type],
        ),
      ),
    );
    if (sound == null) {
      return (asset: null, volume: null, vibrate: false);
    }
    if (notUseSound || masterVolume <= 0.0) {
      return (asset: null, volume: null, vibrate: sound.vibrate);
    }
    final asset = sound.type?.asset;
    final volume = masterVolume * sound.volume;
    if (asset == null || volume <= 0.0) {
      return (asset: null, volume: null, vibrate: sound.vibrate);
    }
    ref.listen(assetAudioPlayerNotifierProvider(asset, volume), (_, _) {});
    return (asset: asset, volume: volume, vibrate: sound.vibrate);
  }

  bool _canPlay = true;

  Future<void> play() async {
    if (_canPlay) {
      final (:asset, :volume, :vibrate) = state;
      if (asset != null || vibrate) {
        _canPlay = false;
        unawaited(
          Future.delayed(const Duration(milliseconds: 25), () {
            if (!ref.mounted) return;
            _canPlay = true;
          }),
        );
        await Future.wait([
          if (asset != null && volume != null)
            ref
                .read(assetAudioPlayerNotifierProvider(asset, volume).notifier)
                .play(),
          if (vibrate) HapticFeedback.lightImpact(),
        ]);
      }
    }
  }
}
