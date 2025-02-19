// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incoming_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IncomingMessageImpl _$$IncomingMessageImplFromJson(
  Map<String, dynamic> json,
) => _$IncomingMessageImpl(
  type: $enumDecodeNullable(
    _$IncomingMessageTypeEnumMap,
    json['type'],
    unknownValue: JsonKey.nullForUndefinedEnumValue,
  ),
  body: json['body'] as Map<String, dynamic>,
);

Map<String, dynamic> _$$IncomingMessageImplToJson(
  _$IncomingMessageImpl instance,
) => <String, dynamic>{
  if (_$IncomingMessageTypeEnumMap[instance.type] case final value?)
    'type': value,
  'body': instance.body,
};

const _$IncomingMessageTypeEnumMap = {
  IncomingMessageType.channel: 'channel',
  IncomingMessageType.noteUpdated: 'noteUpdated',
  IncomingMessageType.emojiAdded: 'emojiAdded',
  IncomingMessageType.emojiUpdated: 'emojiUpdated',
  IncomingMessageType.emojiDeleted: 'emojiDeleted',
  IncomingMessageType.announcementCreated: 'announcementCreated',
};
