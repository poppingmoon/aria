// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_update_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Reacted _$ReactedFromJson(Map<String, dynamic> json) => _Reacted(
  reaction: json['reaction'] as String,
  emoji: json['emoji'] == null
      ? null
      : ReactedEmoji.fromJson(json['emoji'] as Map<String, dynamic>),
  userId: json['userId'] as String,
);

_Unreacted _$UnreactedFromJson(Map<String, dynamic> json) => _Unreacted(
  reaction: json['reaction'] as String,
  userId: json['userId'] as String,
);

_Deleted _$DeletedFromJson(Map<String, dynamic> json) =>
    _Deleted(deletedAt: DateTime.parse(json['deletedAt'] as String));

_PollVoted _$PollVotedFromJson(Map<String, dynamic> json) => _PollVoted(
  choice: (json['choice'] as num).toInt(),
  userId: json['userId'] as String,
);

_Updated _$UpdatedFromJson(Map<String, dynamic> json) => _Updated(
  cw: json['cw'] as String?,
  text: json['text'] as String?,
  note: json['note'] == null
      ? null
      : Note.fromJson(json['note'] as Map<String, dynamic>),
);

_ReactedEmoji _$ReactedEmojiFromJson(Map<String, dynamic> json) =>
    _ReactedEmoji(name: json['name'] as String, url: json['url'] as String);
