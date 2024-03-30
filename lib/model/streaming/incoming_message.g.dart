// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incoming_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IncomingMessageImpl _$$IncomingMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$IncomingMessageImpl(
      type: $enumDecodeNullable(_$IncomingMessageTypeEnumMap, json['type'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
      body: json['body'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$IncomingMessageImplToJson(
    _$IncomingMessageImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', _$IncomingMessageTypeEnumMap[instance.type]);
  val['body'] = instance.body;
  return val;
}

const _$IncomingMessageTypeEnumMap = {
  IncomingMessageType.channel: 'channel',
  IncomingMessageType.noteUpdated: 'noteUpdated',
  IncomingMessageType.emojiAdded: 'emojiAdded',
  IncomingMessageType.emojiUpdated: 'emojiUpdated',
  IncomingMessageType.emojiDeleted: 'emojiDeleted',
  IncomingMessageType.announcementCreated: 'announcementCreated',
};
