// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'broadcast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmojiAddedImpl _$$EmojiAddedImplFromJson(Map<String, dynamic> json) =>
    _$EmojiAddedImpl(
      emoji: Emoji.fromJson(json['emoji'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EmojiAddedImplToJson(_$EmojiAddedImpl instance) =>
    <String, dynamic>{
      'emoji': instance.emoji.toJson(),
    };

_$EmojiUpdatedImpl _$$EmojiUpdatedImplFromJson(Map<String, dynamic> json) =>
    _$EmojiUpdatedImpl(
      emojis: (json['emojis'] as List<dynamic>)
          .map((e) => Emoji.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EmojiUpdatedImplToJson(_$EmojiUpdatedImpl instance) =>
    <String, dynamic>{
      'emojis': instance.emojis.map((e) => e.toJson()).toList(),
    };

_$EmojiDeletedImpl _$$EmojiDeletedImplFromJson(Map<String, dynamic> json) =>
    _$EmojiDeletedImpl(
      emojis: (json['emojis'] as List<dynamic>)
          .map((e) => Emoji.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EmojiDeletedImplToJson(_$EmojiDeletedImpl instance) =>
    <String, dynamic>{
      'emojis': instance.emojis.map((e) => e.toJson()).toList(),
    };

_$AnnouncementCreatedImpl _$$AnnouncementCreatedImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnouncementCreatedImpl(
      announcement: AnnouncementsResponse.fromJson(
          json['announcement'] as Map<String, dynamic>),
    );
