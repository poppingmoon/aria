import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../constant/default_pinned_emojis.dart';

part 'account_settings.freezed.dart';
part 'account_settings.g.dart';

@Freezed(fromJson: false, toJson: false)
@JsonSerializable()
class const AccountSettings({
  // Privacy
  final bool keepCw = true,
  final bool rememberNoteVisibility = false,
  final NoteVisibility defaultNoteVisibility = NoteVisibility.public,
  final bool defaultNoteLocalOnly = false,
  final bool rememberRenoteVisibility = false,
  final NoteVisibility defaultRenoteVisibility = NoteVisibility.public,
  final bool defaultRenoteLocalOnly = false,
  final ReactionAcceptance? reactionAcceptance,
  final NoteVisibility visibility = NoteVisibility.public,
  final bool localOnly = false,
  final NoteVisibility renoteVisibility = NoteVisibility.public,
  final bool renoteLocalOnly = false,

  // EmojiPicker
  final List<String> pinnedEmojisForReaction = defaultPinnedEmojis,
  final List<String> pinnedEmojis = defaultPinnedEmojis,
  final List<String> recentlyUsedEmojis = const [],
  final String? defaultReaction,

  // Drive
  final String? uploadFolder,
  final bool keepOriginalUploading = false,
  final bool keepOriginalFilename = true,

  // Mute
  final List<MuteWord> mutedWords = const [],
  final List<MuteWord> hardMutedWords = const [],
  final List<String> mutedEmojis = const [],

  // UserSelectDialog
  final List<String> recentlyUsedUsers = const [],

  // PostForm
  final List<String> hashtags = const [],
  final List<String> postFormHashtags = const [],
}) with _$AccountSettings {
  factory fromJson(Map<String, Object?> json) =>
      _$AccountSettingsFromJson(json);

  Map<String, Object?> toJson() => _$AccountSettingsToJson(this);
}
