// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incoming_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IncomingMessage _$IncomingMessageFromJson(Map<String, dynamic> json) =>
    _IncomingMessage(
      type: $enumDecodeNullable(
        _$IncomingMessageTypeEnumMap,
        json['type'],
        unknownValue: JsonKey.nullForUndefinedEnumValue,
      ),
      body: json['body'] as Map<String, dynamic>? ?? const {},
    );

const _$IncomingMessageTypeEnumMap = {
  IncomingMessageType.channel: 'channel',
  IncomingMessageType.noteUpdated: 'noteUpdated',
  IncomingMessageType.emojiAdded: 'emojiAdded',
  IncomingMessageType.emojiUpdated: 'emojiUpdated',
  IncomingMessageType.emojiDeleted: 'emojiDeleted',
  IncomingMessageType.announcementCreated: 'announcementCreated',
};
