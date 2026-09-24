import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'broadcast.freezed.dart';
part 'broadcast.g.dart';

sealed class Broadcast;

@freezed
@JsonSerializable(createToJson: false)
class const EmojiAdded({required final Emoji emoji})
    with _$EmojiAdded
    implements Broadcast {
  factory fromJson(Map<String, Object?> json) => _$EmojiAddedFromJson(json);
}

@freezed
@JsonSerializable(createToJson: false)
class const EmojiUpdated({required final List<Emoji> emojis})
    with _$EmojiUpdated
    implements Broadcast {
  factory fromJson(Map<String, Object?> json) => _$EmojiUpdatedFromJson(json);
}

@freezed
@JsonSerializable(createToJson: false)
class const EmojiDeleted({required final List<Emoji> emojis})
    with _$EmojiDeleted
    implements Broadcast {
  factory fromJson(Map<String, Object?> json) => _$EmojiDeletedFromJson(json);
}

@freezed
@JsonSerializable(createToJson: false)
class const AnnouncementCreated({
  required final AnnouncementsResponse announcement,
}) with _$AnnouncementCreated implements Broadcast {
  factory fromJson(Map<String, Object?> json) =>
      _$AnnouncementCreatedFromJson(json);
}
