import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sound_settings.freezed.dart';
part 'sound_settings.g.dart';

enum SoundType {
  syuiloNAec,
  syuiloNAec4va,
  syuiloNAec4vb,
  syuiloNAec8va,
  syuiloNAec8vb,
  syuiloNCea,
  syuiloNCea4va,
  syuiloNCea4vb,
  syuiloNCea8va,
  syuiloNCea8vb,
  syuiloNEca,
  syuiloNEca4va,
  syuiloNEca4vb,
  syuiloNEca8va,
  syuiloNEca8vb,
  syuiloNEa,
  syuiloNEa4va,
  syuiloNEa4vb,
  syuiloNEa8va,
  syuiloNEa8vb,
  syuiloNEaHarmony,
  syuiloUp,
  syuiloDown,
  syuiloPope1,
  syuiloPope2,
  syuiloWaon,
  syuiloPopo,
  syuiloTriple,
  syuiloBubble1,
  syuiloBubble2,
  syuiloPoi1,
  syuiloPoi2,
  syuiloPirori,
  syuiloPiroriWet,
  syuiloPiroriSquareWet,
  syuiloSquarePico,
  syuiloReverved,
  syuiloRyukyu,
  syuiloKick,
  syuiloSnare,
  syuiloQueueJammed,
  aisha1,
  aisha2,
  aisha3,
  noizenecioKickGaba1,
  noizenecioKickGaba2,
  noizenecioKickGaba3,
  noizenecioKickGaba4,
  noizenecioKickGaba5,
  noizenecioKickGaba6,
  noizenecioKickGaba7,
}

enum OperationType { noteMy, note, notification, reaction, chatMessage }

const defaultMasterVolume = 0.5;
const defaultSounds = {
  OperationType.noteMy: SoundStore(type: SoundType.syuiloNCea4va),
  OperationType.note: SoundStore(type: SoundType.syuiloNAec),
  OperationType.notification: SoundStore(type: SoundType.syuiloNEa),
  OperationType.reaction: SoundStore(type: SoundType.syuiloBubble2),
  OperationType.chatMessage: SoundStore(type: SoundType.syuiloWaon),
};

@Freezed(fromJson: true)
abstract class SoundSettings with _$SoundSettings {
  const factory SoundSettings({
    @Default(true) bool notUseSound,
    @Default(defaultMasterVolume) double masterVolume,
    @Default(defaultSounds) Map<OperationType, SoundStore> sounds,
  }) = _SoundSettings;

  factory SoundSettings.fromJson(Map<String, Object?> json) => _SoundSettings(
    notUseSound: switch (json['notUseSound']) {
      final bool notUseSound => notUseSound,
      _ => true,
    },
    masterVolume: switch (json['masterVolume']) {
      final num masterVolume => masterVolume.toDouble(),
      _ => defaultMasterVolume,
    },
    sounds: switch (json['sounds']) {
      final Map<String, dynamic> sounds => {
        for (final MapEntry(:key, value: Map<String, dynamic> value)
            in sounds.entries)
          ?_$OperationTypeEnumMap.entries
              .firstWhereOrNull((e) => e.value == key)
              ?.key: SoundStore.fromJson(
            value,
          ),
      },
      _ => defaultSounds,
    },
  );
}

@freezed
abstract class SoundStore with _$SoundStore {
  const factory SoundStore({
    @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
    SoundType? type,
    @Default(1.0) double volume,
    @Default(false) bool vibrate,
  }) = _SoundStore;

  factory SoundStore.fromJson(Map<String, Object?> json) =>
      _$SoundStoreFromJson(json);
}
