import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'chat_event.freezed.dart';
part 'chat_event.g.dart';

sealed class ChatEvent;

@freezed
class const Message(final ChatMessage message)
    with _$Message
    implements ChatEvent;

@freezed
class const Deleted(final String messageId) with _$Deleted implements ChatEvent;

@Freezed(toJson: false)
class const React({
  required final String reaction,
  final UserLite? user,
  required final String messageId,
}) with _$React implements ChatEvent {
  factory fromJson(Map<String, Object?> json) => _$ReactFromJson(json);
}

@Freezed(toJson: false)
class const Unreact({
  required final String reaction,
  final UserLite? user,
  required final String messageId,
}) with _$Unreact implements ChatEvent {
  factory fromJson(Map<String, Object?> json) => _$UnreactFromJson(json);
}
