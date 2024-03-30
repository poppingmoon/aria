import 'package:freezed_annotation/freezed_annotation.dart';

part 'incoming_message.freezed.dart';
part 'incoming_message.g.dart';

enum IncomingMessageType {
  channel,
  noteUpdated,
  emojiAdded,
  emojiUpdated,
  emojiDeleted,
  announcementCreated,
}

@freezed
class IncomingMessage with _$IncomingMessage {
  const factory IncomingMessage({
    // ignore: invalid_annotation_target
    @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
    IncomingMessageType? type,
    required Map<String, dynamic> body,
  }) = _IncomingMessage;

  factory IncomingMessage.fromJson(Map<String, Object?> json) =>
      _$IncomingMessageFromJson(json);
}
