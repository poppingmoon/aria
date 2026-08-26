import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'note_update_event.freezed.dart';
part 'note_update_event.g.dart';

sealed class NoteUpdateEvent;

@Freezed(toJson: false)
class const Reacted({
  @override required final String reaction,
  @override final ReactedEmoji? emoji,
  @override required final String userId,
}) with _$Reacted implements NoteUpdateEvent {
  factory fromJson(Map<String, Object?> json) => _$ReactedFromJson(json);
}

@Freezed(toJson: false)
class const Unreacted({
  @override required final String reaction,
  @override required final String userId,
}) with _$Unreacted implements NoteUpdateEvent {
  factory fromJson(Map<String, Object?> json) => _$UnreactedFromJson(json);
}

@Freezed(toJson: false)
class const Deleted({@override required final DateTime deletedAt})
    with _$Deleted
    implements NoteUpdateEvent {
  factory fromJson(Map<String, Object?> json) => _$DeletedFromJson(json);
}

@Freezed(toJson: false)
class const PollVoted({
  @override required final int choice,
  @override required final String userId,
}) with _$PollVoted implements NoteUpdateEvent {
  factory fromJson(Map<String, Object?> json) => _$PollVotedFromJson(json);
}

@Freezed(toJson: false)
class const Updated({
  @override final String? cw,
  @override final String? text,
  @override final Note? note,
}) with _$Updated implements NoteUpdateEvent {
  factory fromJson(Map<String, Object?> json) => _$UpdatedFromJson(json);
}

@Freezed(toJson: false)
class const ReactedEmoji({
  @override required final String name,
  @override required final String url,
}) with _$ReactedEmoji {
  factory fromJson(Map<String, Object?> json) => _$ReactedEmojiFromJson(json);
}
