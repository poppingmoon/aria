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
abstract class IncomingMessage with _$IncomingMessage {
  const factory IncomingMessage({
    // https://github.com/rrousselGit/freezed/issues/488
    // ignore: invalid_annotation_target
    @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
    IncomingMessageType? type,
    @Default({}) Map<String, dynamic> body,
  }) = _IncomingMessage;

  factory IncomingMessage.fromJson(Map<String, Object?> json) =>
      _$IncomingMessageFromJson(json);
}
