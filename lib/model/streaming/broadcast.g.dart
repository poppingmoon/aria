// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'broadcast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmojiAdded _$EmojiAddedFromJson(Map<String, dynamic> json) =>
    _EmojiAdded(emoji: Emoji.fromJson(json['emoji'] as Map<String, dynamic>));

_EmojiUpdated _$EmojiUpdatedFromJson(Map<String, dynamic> json) =>
    _EmojiUpdated(
      emojis:
          (json['emojis'] as List<dynamic>)
              .map((e) => Emoji.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

_EmojiDeleted _$EmojiDeletedFromJson(Map<String, dynamic> json) =>
    _EmojiDeleted(
      emojis:
          (json['emojis'] as List<dynamic>)
              .map((e) => Emoji.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

_AnnouncementCreated _$AnnouncementCreatedFromJson(Map<String, dynamic> json) =>
    _AnnouncementCreated(
      announcement: AnnouncementsResponse.fromJson(
        json['announcement'] as Map<String, dynamic>,
      ),
    );
