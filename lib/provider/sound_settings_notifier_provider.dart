import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/sound_settings.dart';
import 'general_settings_notifier_provider.dart';

part 'sound_settings_notifier_provider.g.dart';

@riverpod
class SoundSettingsNotifier extends _$SoundSettingsNotifier {
  @override
  SoundSettings build() {
    return ref.watch(
      generalSettingsNotifierProvider.select((settings) => settings.sound),
    );
  }

  Future<void> setNotUseSound(bool notUseSound) async {
    await ref
        .read(generalSettingsNotifierProvider.notifier)
        .setSound(state.copyWith(notUseSound: notUseSound));
  }

  Future<void> setMasterVolume(double masterVolume) async {
    await ref
        .read(generalSettingsNotifierProvider.notifier)
        .setSound(state.copyWith(masterVolume: masterVolume));
  }

  Future<void> setSound(OperationType operationType, SoundStore sound) async {
    await ref
        .read(generalSettingsNotifierProvider.notifier)
        .setSound(
          state.copyWith(sounds: {...state.sounds, operationType: sound}),
        );
  }

  Future<void> setSoundType(
    OperationType operationType,
    SoundType? soundType,
  ) async {
    await ref
        .read(generalSettingsNotifierProvider.notifier)
        .setSound(
          state.copyWith(
            sounds: {
              ...state.sounds,
              operationType:
                  state.sounds[operationType]?.copyWith(type: soundType) ??
                  SoundStore(type: soundType),
            },
          ),
        );
  }

  Future<void> setVolume(OperationType operationType, double volume) async {
    await ref
        .read(generalSettingsNotifierProvider.notifier)
        .setSound(
          state.copyWith(
            sounds: {
              ...state.sounds,
              operationType:
                  state.sounds[operationType]?.copyWith(volume: volume) ??
                  SoundStore(volume: volume),
            },
          ),
        );
  }

  Future<void> setVibrate(OperationType operationType, bool vibrate) async {
    await ref
        .read(generalSettingsNotifierProvider.notifier)
        .setSound(
          state.copyWith(
            sounds: {
              ...state.sounds,
              operationType:
                  state.sounds[operationType]?.copyWith(vibrate: vibrate) ??
                  SoundStore(vibrate: vibrate),
            },
          ),
        );
  }
}
