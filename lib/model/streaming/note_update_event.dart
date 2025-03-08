import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'note_update_event.freezed.dart';
part 'note_update_event.g.dart';

sealed class NoteUpdateEvent {}

@Freezed(toJson: false)
abstract class Reacted with _$Reacted implements NoteUpdateEvent {
  const factory Reacted({
    required String reaction,
    ReactedEmoji? emoji,
    required String userId,
  }) = _Reacted;

  factory Reacted.fromJson(Map<String, Object?> json) =>
      _$ReactedFromJson(json);
}

@Freezed(toJson: false)
abstract class Unreacted with _$Unreacted implements NoteUpdateEvent {
  const factory Unreacted({required String reaction, required String userId}) =
      _Unreacted;

  factory Unreacted.fromJson(Map<String, Object?> json) =>
      _$UnreactedFromJson(json);
}

@Freezed(toJson: false)
abstract class Deleted with _$Deleted implements NoteUpdateEvent {
  const factory Deleted({required DateTime deletedAt}) = _Deleted;

  factory Deleted.fromJson(Map<String, Object?> json) =>
      _$DeletedFromJson(json);
}

@Freezed(toJson: false)
abstract class PollVoted with _$PollVoted implements NoteUpdateEvent {
  const factory PollVoted({required int choice, required String userId}) =
      _PollVoted;

  factory PollVoted.fromJson(Map<String, Object?> json) =>
      _$PollVotedFromJson(json);
}

@Freezed(toJson: false)
abstract class Updated with _$Updated implements NoteUpdateEvent {
  const factory Updated({String? cw, String? text, Note? note}) = _Updated;

  factory Updated.fromJson(Map<String, Object?> json) =>
      _$UpdatedFromJson(json);
}

@Freezed(toJson: false)
abstract class ReactedEmoji with _$ReactedEmoji {
  const factory ReactedEmoji({required String name, required String url}) =
      _ReactedEmoji;

  factory ReactedEmoji.fromJson(Map<String, Object?> json) =>
      _$ReactedEmojiFromJson(json);
}
