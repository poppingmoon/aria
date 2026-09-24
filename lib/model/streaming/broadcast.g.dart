// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'broadcast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmojiAdded _$EmojiAddedFromJson(Map<String, dynamic> json) =>
    EmojiAdded(emoji: Emoji.fromJson(json['emoji'] as Map<String, dynamic>));

EmojiUpdated _$EmojiUpdatedFromJson(Map<String, dynamic> json) => EmojiUpdated(
  emojis: (json['emojis'] as List<dynamic>)
      .map((e) => Emoji.fromJson(e as Map<String, dynamic>))
      .toList(),
);

EmojiDeleted _$EmojiDeletedFromJson(Map<String, dynamic> json) => EmojiDeleted(
  emojis: (json['emojis'] as List<dynamic>)
      .map((e) => Emoji.fromJson(e as Map<String, dynamic>))
      .toList(),
);

AnnouncementCreated _$AnnouncementCreatedFromJson(Map<String, dynamic> json) =>
    AnnouncementCreated(
      announcement: AnnouncementsResponse.fromJson(
        json['announcement'] as Map<String, dynamic>,
      ),
    );
