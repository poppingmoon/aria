import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'note_update_event.freezed.dart';
part 'note_update_event.g.dart';

sealed class NoteUpdateEvent;

@freezed
@JsonSerializable(createToJson: false)
class const Reacted({
  required final String reaction,
  final ReactedEmoji? emoji,
  required final String userId,
}) with _$Reacted implements NoteUpdateEvent {
  factory fromJson(Map<String, Object?> json) => _$ReactedFromJson(json);
}

@freezed
@JsonSerializable(createToJson: false)
class const Unreacted({
  required final String reaction,
  required final String userId,
}) with _$Unreacted implements NoteUpdateEvent {
  factory fromJson(Map<String, Object?> json) => _$UnreactedFromJson(json);
}

@freezed
@JsonSerializable(createToJson: false)
class const Deleted({required final DateTime deletedAt})
    with _$Deleted
    implements NoteUpdateEvent {
  factory fromJson(Map<String, Object?> json) => _$DeletedFromJson(json);
}

@freezed
@JsonSerializable(createToJson: false)
class const PollVoted({required final int choice, required final String userId})
    with _$PollVoted
    implements NoteUpdateEvent {
  factory fromJson(Map<String, Object?> json) => _$PollVotedFromJson(json);
}

@freezed
@JsonSerializable(createToJson: false)
class const Updated({final String? cw, final String? text, final Note? note})
    with _$Updated
    implements NoteUpdateEvent {
  factory fromJson(Map<String, Object?> json) => _$UpdatedFromJson(json);
}

@freezed
@JsonSerializable(createToJson: false)
class const ReactedEmoji({
  required final String name,
  required final String url,
}) with _$ReactedEmoji {
  factory fromJson(Map<String, Object?> json) => _$ReactedEmojiFromJson(json);
}
