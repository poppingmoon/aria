import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'broadcast.freezed.dart';
part 'broadcast.g.dart';

sealed class Broadcast;

@Freezed(toJson: false)
abstract class EmojiAdded with _$EmojiAdded implements Broadcast {
  const factory({required Emoji emoji}) = _EmojiAdded;

  factory fromJson(Map<String, Object?> json) => _$EmojiAddedFromJson(json);
}

@Freezed(toJson: false)
abstract class EmojiUpdated with _$EmojiUpdated implements Broadcast {
  const factory({required List<Emoji> emojis}) = _EmojiUpdated;

  factory fromJson(Map<String, Object?> json) => _$EmojiUpdatedFromJson(json);
}

@Freezed(toJson: false)
abstract class EmojiDeleted with _$EmojiDeleted implements Broadcast {
  const factory({required List<Emoji> emojis}) = _EmojiDeleted;

  factory fromJson(Map<String, Object?> json) => _$EmojiDeletedFromJson(json);
}

@Freezed(toJson: false)
abstract class AnnouncementCreated
    with _$AnnouncementCreated
    implements Broadcast {
  const factory({required AnnouncementsResponse announcement}) =
      _AnnouncementCreated;

  factory fromJson(Map<String, Object?> json) =>
      _$AnnouncementCreatedFromJson(json);
}
