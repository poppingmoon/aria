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

@Freezed(toJson: false)
class const IncomingMessage({
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  @override
  final IncomingMessageType? type,
  @override final Map<String, dynamic> body = const {},
}) with _$IncomingMessage {
  factory fromJson(Map<String, Object?> json) =>
      _$IncomingMessageFromJson(json);
}
