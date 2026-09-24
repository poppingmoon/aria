// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_update_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reacted _$ReactedFromJson(Map<String, dynamic> json) => Reacted(
  reaction: json['reaction'] as String,
  emoji: json['emoji'] == null
      ? null
      : ReactedEmoji.fromJson(json['emoji'] as Map<String, dynamic>),
  userId: json['userId'] as String,
);

Unreacted _$UnreactedFromJson(Map<String, dynamic> json) => Unreacted(
  reaction: json['reaction'] as String,
  userId: json['userId'] as String,
);

Deleted _$DeletedFromJson(Map<String, dynamic> json) =>
    Deleted(deletedAt: DateTime.parse(json['deletedAt'] as String));

PollVoted _$PollVotedFromJson(Map<String, dynamic> json) => PollVoted(
  choice: (json['choice'] as num).toInt(),
  userId: json['userId'] as String,
);

Updated _$UpdatedFromJson(Map<String, dynamic> json) => Updated(
  cw: json['cw'] as String?,
  text: json['text'] as String?,
  note: json['note'] == null
      ? null
      : Note.fromJson(json['note'] as Map<String, dynamic>),
);

ReactedEmoji _$ReactedEmojiFromJson(Map<String, dynamic> json) =>
    ReactedEmoji(name: json['name'] as String, url: json['url'] as String);
