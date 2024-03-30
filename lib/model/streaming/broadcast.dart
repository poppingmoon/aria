import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'broadcast.freezed.dart';
part 'broadcast.g.dart';

sealed class Broadcast {}

@freezed
class EmojiAdded with _$EmojiAdded implements Broadcast {
  const factory EmojiAdded({required Emoji emoji}) = _EmojiAdded;

  factory EmojiAdded.fromJson(Map<String, Object?> json) =>
      _$EmojiAddedFromJson(json);
}

@freezed
class EmojiUpdated with _$EmojiUpdated implements Broadcast {
  const factory EmojiUpdated({required List<Emoji> emojis}) = _EmojiUpdated;

  factory EmojiUpdated.fromJson(Map<String, Object?> json) =>
      _$EmojiUpdatedFromJson(json);
}

@freezed
class EmojiDeleted with _$EmojiDeleted implements Broadcast {
  const factory EmojiDeleted({required List<Emoji> emojis}) = _EmojiDeleted;

  factory EmojiDeleted.fromJson(Map<String, Object?> json) =>
      _$EmojiDeletedFromJson(json);
}

@Freezed(toJson: false)
class AnnouncementCreated with _$AnnouncementCreated implements Broadcast {
  const factory AnnouncementCreated({
    required AnnouncementsResponse announcement,
  }) = _AnnouncementCreated;

  factory AnnouncementCreated.fromJson(Map<String, Object?> json) =>
      _$AnnouncementCreatedFromJson(json);
}
