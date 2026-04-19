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

  Future<void> setSound(OperationType type, SoundStore sound) async {
    await ref
        .read(generalSettingsNotifierProvider.notifier)
        .setSound(state.copyWith(sounds: {...state.sounds, type: sound}));
  }

  Future<void> resetSounds() async {
    await ref
        .read(generalSettingsNotifierProvider.notifier)
        .setSound(state.copyWith(sounds: defaultSounds));
  }
}
