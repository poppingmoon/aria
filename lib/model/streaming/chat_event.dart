import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'chat_event.freezed.dart';
part 'chat_event.g.dart';

sealed class ChatEvent {}

@freezed
class Message with _$Message implements ChatEvent {
  const Message(this.message);

  @override
  final ChatMessage message;
}

@freezed
class Deleted with _$Deleted implements ChatEvent {
  const Deleted(this.messageId);

  @override
  final String messageId;
}

@freezed
@JsonSerializable(createToJson: false)
class React with _$React implements ChatEvent {
  const React({required this.reaction, this.user, required this.messageId});

  @override
  final String reaction;

  @override
  final UserLite? user;

  @override
  final String messageId;

  factory React.fromJson(Map<String, Object?> json) => _$ReactFromJson(json);
}

@freezed
@JsonSerializable(createToJson: false)
class Unreact with _$Unreact implements ChatEvent {
  const Unreact({required this.reaction, this.user, required this.messageId});

  @override
  final String reaction;

  @override
  final UserLite? user;

  @override
  final String messageId;

  factory Unreact.fromJson(Map<String, Object?> json) =>
      _$UnreactFromJson(json);
}
