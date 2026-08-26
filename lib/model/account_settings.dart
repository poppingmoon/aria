import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../constant/default_pinned_emojis.dart';

part 'account_settings.freezed.dart';
part 'account_settings.g.dart';

@Freezed(fromJson: false, toJson: false)
@JsonSerializable()
class const AccountSettings({
  // Privacy
  @override final bool keepCw = true,
  @override final bool rememberNoteVisibility = false,
  @override final NoteVisibility defaultNoteVisibility = NoteVisibility.public,
  @override final bool defaultNoteLocalOnly = false,
  @override final bool rememberRenoteVisibility = false,
  @override
  final NoteVisibility defaultRenoteVisibility = NoteVisibility.public,
  @override final bool defaultRenoteLocalOnly = false,
  @override final ReactionAcceptance? reactionAcceptance,
  @override final NoteVisibility visibility = NoteVisibility.public,
  @override final bool localOnly = false,
  @override final NoteVisibility renoteVisibility = NoteVisibility.public,
  @override final bool renoteLocalOnly = false,

  // EmojiPicker
  @override final List<String> pinnedEmojisForReaction = defaultPinnedEmojis,
  @override final List<String> pinnedEmojis = defaultPinnedEmojis,
  @override final List<String> recentlyUsedEmojis = const [],
  @override final String? defaultReaction,

  // Drive
  @override final String? uploadFolder,
  @override final bool keepOriginalUploading = false,
  @override final bool keepOriginalFilename = true,

  // Mute
  @override final List<MuteWord> mutedWords = const [],
  @override final List<MuteWord> hardMutedWords = const [],
  @override final List<String> mutedEmojis = const [],

  // UserSelectDialog
  @override final List<String> recentlyUsedUsers = const [],

  // PostForm
  @override final List<String> hashtags = const [],
  @override final List<String> postFormHashtags = const [],
}) with _$AccountSettings {
  factory fromJson(Map<String, Object?> json) =>
      _$AccountSettingsFromJson(json);

  Map<String, Object?> toJson() => _$AccountSettingsToJson(this);
}
