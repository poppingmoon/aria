// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_update_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReactedImpl _$$ReactedImplFromJson(Map<String, dynamic> json) =>
    _$ReactedImpl(
      reaction: json['reaction'] as String,
      emoji: json['emoji'] == null
          ? null
          : ReactedEmoji.fromJson(json['emoji'] as Map<String, dynamic>),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$ReactedImplToJson(_$ReactedImpl instance) =>
    <String, dynamic>{
      'reaction': instance.reaction,
      if (instance.emoji?.toJson() case final value?) 'emoji': value,
      'userId': instance.userId,
    };

_$UnreactedImpl _$$UnreactedImplFromJson(Map<String, dynamic> json) =>
    _$UnreactedImpl(
      reaction: json['reaction'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$UnreactedImplToJson(_$UnreactedImpl instance) =>
    <String, dynamic>{
      'reaction': instance.reaction,
      'userId': instance.userId,
    };

_$DeletedImpl _$$DeletedImplFromJson(Map<String, dynamic> json) =>
    _$DeletedImpl(
      deletedAt: DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$DeletedImplToJson(_$DeletedImpl instance) =>
    <String, dynamic>{
      'deletedAt': instance.deletedAt.toIso8601String(),
    };

_$PollVotedImpl _$$PollVotedImplFromJson(Map<String, dynamic> json) =>
    _$PollVotedImpl(
      choice: (json['choice'] as num).toInt(),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$PollVotedImplToJson(_$PollVotedImpl instance) =>
    <String, dynamic>{
      'choice': instance.choice,
      'userId': instance.userId,
    };

_$UpdatedImpl _$$UpdatedImplFromJson(Map<String, dynamic> json) =>
    _$UpdatedImpl(
      cw: json['cw'] as String?,
      text: json['text'] as String?,
      note: json['note'] == null
          ? null
          : Note.fromJson(json['note'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdatedImplToJson(_$UpdatedImpl instance) =>
    <String, dynamic>{
      if (instance.cw case final value?) 'cw': value,
      if (instance.text case final value?) 'text': value,
      if (instance.note?.toJson() case final value?) 'note': value,
    };

_$ReactedEmojiImpl _$$ReactedEmojiImplFromJson(Map<String, dynamic> json) =>
    _$ReactedEmojiImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$ReactedEmojiImplToJson(_$ReactedEmojiImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
