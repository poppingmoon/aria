import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../constant/default_pinned_emojis.dart';

part 'account_settings.freezed.dart';
part 'account_settings.g.dart';

@freezed
class AccountSettings with _$AccountSettings {
  const factory AccountSettings({
    // Privacy
    @Default(true) bool keepCw,
    @Default(false) bool rememberNoteVisibility,
    @Default(NoteVisibility.public) NoteVisibility defaultNoteVisibility,
    @Default(false) bool defaultNoteLocalOnly,
    @Default(false) bool rememberRenoteVisibility,
    @Default(NoteVisibility.public) NoteVisibility defaultRenoteVisibility,
    @Default(false) bool defaultRenoteLocalOnly,
    ReactionAcceptance? reactionAcceptance,
    @Default(NoteVisibility.public) NoteVisibility visibility,
    @Default(false) bool localOnly,
    @Default(NoteVisibility.public) NoteVisibility renoteVisibility,
    @Default(false) bool renoteLocalOnly,

    // EmojiPicker
    @Default(defaultPinnedEmojis) List<String> pinnedEmojisForReaction,
    @Default(defaultPinnedEmojis) List<String> pinnedEmojis,
    @Default([]) List<String> recentlyUsedEmojis,
    String? defaultReaction,

    // Drive
    String? uploadFolder,
    @Default(false) bool keepOriginalUploading,
    @Default(true) bool keepOriginalFilename,

    // Mute
    @Default([]) List<MuteWord> mutedWords,
    @Default([]) List<MuteWord> hardMutedWords,
    @Default([]) List<String> mutedEmojis,

    // UserSelectDialog
    @Default([]) List<String> recentlyUsedUsers,

    // PostForm
    @Default([]) List<String> hashtags,
    @Default(false) bool postFormUseHashtags,
    @Default([]) List<String> postFormHashtags,
  }) = _AccountSettings;

  factory AccountSettings.fromJson(Map<String, Object?> json) =>
      _$AccountSettingsFromJson(json);
}
