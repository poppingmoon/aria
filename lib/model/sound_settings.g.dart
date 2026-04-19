// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sound_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SoundSettings _$SoundSettingsFromJson(Map<String, dynamic> json) =>
    _SoundSettings(
      notUseSound: json['notUseSound'] as bool? ?? true,
      masterVolume:
          (json['masterVolume'] as num?)?.toDouble() ?? defaultMasterVolume,
      sounds:
          (json['sounds'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
              $enumDecode(_$OperationTypeEnumMap, k),
              SoundStore.fromJson(e as Map<String, dynamic>),
            ),
          ) ??
          defaultSounds,
    );

Map<String, dynamic> _$SoundSettingsToJson(_SoundSettings instance) =>
    <String, dynamic>{
      'notUseSound': instance.notUseSound,
      'masterVolume': instance.masterVolume,
      'sounds': instance.sounds.map(
        (k, e) => MapEntry(_$OperationTypeEnumMap[k]!, e.toJson()),
      ),
    };

const _$OperationTypeEnumMap = {
  OperationType.noteMy: 'noteMy',
  OperationType.note: 'note',
  OperationType.notification: 'notification',
  OperationType.reaction: 'reaction',
  OperationType.chatMessage: 'chatMessage',
};

_SoundStore _$SoundStoreFromJson(Map<String, dynamic> json) => _SoundStore(
  type: $enumDecodeNullable(
    _$SoundTypeEnumMap,
    json['type'],
    unknownValue: JsonKey.nullForUndefinedEnumValue,
  ),
  volume: (json['volume'] as num?)?.toDouble() ?? 1.0,
  vibrate: json['vibrate'] as bool? ?? false,
);

Map<String, dynamic> _$SoundStoreToJson(_SoundStore instance) =>
    <String, dynamic>{
      'type': ?_$SoundTypeEnumMap[instance.type],
      'volume': instance.volume,
      'vibrate': instance.vibrate,
    };

const _$SoundTypeEnumMap = {
  SoundType.syuiloNAec: 'syuiloNAec',
  SoundType.syuiloNAec4va: 'syuiloNAec4va',
  SoundType.syuiloNAec4vb: 'syuiloNAec4vb',
  SoundType.syuiloNAec8va: 'syuiloNAec8va',
  SoundType.syuiloNAec8vb: 'syuiloNAec8vb',
  SoundType.syuiloNCea: 'syuiloNCea',
  SoundType.syuiloNCea4va: 'syuiloNCea4va',
  SoundType.syuiloNCea4vb: 'syuiloNCea4vb',
  SoundType.syuiloNCea8va: 'syuiloNCea8va',
  SoundType.syuiloNCea8vb: 'syuiloNCea8vb',
  SoundType.syuiloNEca: 'syuiloNEca',
  SoundType.syuiloNEca4va: 'syuiloNEca4va',
  SoundType.syuiloNEca4vb: 'syuiloNEca4vb',
  SoundType.syuiloNEca8va: 'syuiloNEca8va',
  SoundType.syuiloNEca8vb: 'syuiloNEca8vb',
  SoundType.syuiloNEa: 'syuiloNEa',
  SoundType.syuiloNEa4va: 'syuiloNEa4va',
  SoundType.syuiloNEa4vb: 'syuiloNEa4vb',
  SoundType.syuiloNEa8va: 'syuiloNEa8va',
  SoundType.syuiloNEa8vb: 'syuiloNEa8vb',
  SoundType.syuiloNEaHarmony: 'syuiloNEaHarmony',
  SoundType.syuiloUp: 'syuiloUp',
  SoundType.syuiloDown: 'syuiloDown',
  SoundType.syuiloPope1: 'syuiloPope1',
  SoundType.syuiloPope2: 'syuiloPope2',
  SoundType.syuiloWaon: 'syuiloWaon',
  SoundType.syuiloPopo: 'syuiloPopo',
  SoundType.syuiloTriple: 'syuiloTriple',
  SoundType.syuiloBubble1: 'syuiloBubble1',
  SoundType.syuiloBubble2: 'syuiloBubble2',
  SoundType.syuiloPoi1: 'syuiloPoi1',
  SoundType.syuiloPoi2: 'syuiloPoi2',
  SoundType.syuiloPirori: 'syuiloPirori',
  SoundType.syuiloPiroriWet: 'syuiloPiroriWet',
  SoundType.syuiloPiroriSquareWet: 'syuiloPiroriSquareWet',
  SoundType.syuiloSquarePico: 'syuiloSquarePico',
  SoundType.syuiloReverved: 'syuiloReverved',
  SoundType.syuiloRyukyu: 'syuiloRyukyu',
  SoundType.syuiloKick: 'syuiloKick',
  SoundType.syuiloSnare: 'syuiloSnare',
  SoundType.syuiloQueueJammed: 'syuiloQueueJammed',
  SoundType.aisha1: 'aisha1',
  SoundType.aisha2: 'aisha2',
  SoundType.aisha3: 'aisha3',
  SoundType.noizenecioKickGaba1: 'noizenecioKickGaba1',
  SoundType.noizenecioKickGaba2: 'noizenecioKickGaba2',
  SoundType.noizenecioKickGaba3: 'noizenecioKickGaba3',
  SoundType.noizenecioKickGaba4: 'noizenecioKickGaba4',
  SoundType.noizenecioKickGaba5: 'noizenecioKickGaba5',
  SoundType.noizenecioKickGaba6: 'noizenecioKickGaba6',
  SoundType.noizenecioKickGaba7: 'noizenecioKickGaba7',
};
