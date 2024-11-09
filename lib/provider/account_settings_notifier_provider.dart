import 'dart:convert';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import '../model/account_settings.dart';
import 'shared_preferences_provider.dart';

part 'account_settings_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class AccountSettingsNotifier extends _$AccountSettingsNotifier {
  @override
  AccountSettings build(Account account) {
    final value = ref.watch(sharedPreferencesProvider).getString(_key);
    if (value != null) {
      return AccountSettings.fromJson(
        jsonDecode(value) as Map<String, dynamic>,
      );
    } else {
      return const AccountSettings();
    }
  }

  String get _key => '$account/accountSettings';

  Future<void> _save() async {
    await ref
        .read(sharedPreferencesProvider)
        .setString(_key, jsonEncode(state.toJson()));
  }

  Future<void> import(AccountSettings accountSettings) async {
    state = accountSettings;
    await _save();
  }

  Future<void> setKeepCw(bool keepCw) async {
    state = state.copyWith(keepCw: keepCw);
    await _save();
  }

  Future<void> setRememberNoteVisibility(bool rememberNoteVisibility) async {
    state = state.copyWith(rememberNoteVisibility: rememberNoteVisibility);
    await _save();
  }

  Future<void> setDefaultNoteVisibility(
    NoteVisibility defaultNoteVisibility,
  ) async {
    state = state.copyWith(defaultNoteVisibility: defaultNoteVisibility);
    await _save();
  }

  Future<void> setDefaultNoteLocalOnly(bool defaultNoteLocalOnly) async {
    state = state.copyWith(defaultNoteLocalOnly: defaultNoteLocalOnly);
    await _save();
  }

  Future<void> setRememberRenoteVisibility(
    bool rememberRenoteVisibility,
  ) async {
    state = state.copyWith(rememberRenoteVisibility: rememberRenoteVisibility);
    await _save();
  }

  Future<void> setDefaultRenoteVisibility(
    NoteVisibility defaultRenoteVisibility,
  ) async {
    state = state.copyWith(defaultRenoteVisibility: defaultRenoteVisibility);
    await _save();
  }

  Future<void> setDefaultRenoteLocalOnly(bool defaultRenoteLocalOnly) async {
    state = state.copyWith(defaultRenoteLocalOnly: defaultRenoteLocalOnly);
    await _save();
  }

  Future<void> setReactionAcceptance(
    ReactionAcceptance? reactionAcceptance,
  ) async {
    state = state.copyWith(reactionAcceptance: reactionAcceptance);
    await _save();
  }

  Future<void> setVisibility(NoteVisibility visibility) async {
    state = state.copyWith(visibility: visibility);
    await _save();
  }

  Future<void> setLocalOnly(bool localOnly) async {
    state = state.copyWith(localOnly: localOnly);
    await _save();
  }

  Future<void> setRenoteVisibility(NoteVisibility renoteVisibility) async {
    state = state.copyWith(renoteVisibility: renoteVisibility);
    await _save();
  }

  Future<void> setRenoteLocalOnly(bool renoteLocalOnly) async {
    state = state.copyWith(renoteLocalOnly: renoteLocalOnly);
    await _save();
  }

  Future<void> setPinnedEmojisForReaction(
    List<String> pinnedEmojisForReaction,
  ) async {
    state = state.copyWith(pinnedEmojisForReaction: pinnedEmojisForReaction);
    await _save();
  }

  Future<void> setPinnedEmojis(List<String> pinnedEmojis) async {
    state = state.copyWith(pinnedEmojis: pinnedEmojis);
    await _save();
  }

  Future<void> setRecentlyUsedEmojis(List<String> recentlyUsedEmojis) async {
    state = state.copyWith(recentlyUsedEmojis: recentlyUsedEmojis);
    await _save();
  }

  Future<void> setDefaultReaction(String? defaultReaction) async {
    state = state.copyWith(defaultReaction: defaultReaction);
    await _save();
  }

  Future<void> setUploadFolder(String? uploadFolder) async {
    state = state.copyWith(uploadFolder: uploadFolder);
    await _save();
  }

  Future<void> setKeepOriginalUploading(bool keepOriginalUploading) async {
    state = state.copyWith(keepOriginalUploading: keepOriginalUploading);
    await _save();
  }

  Future<void> setKeepOriginalFilename(bool keepOriginalFilename) async {
    state = state.copyWith(keepOriginalFilename: keepOriginalFilename);
    await _save();
  }

  Future<void> setMutedWords(List<MuteWord> mutedWords) async {
    state = state.copyWith(mutedWords: mutedWords);
    await _save();
  }

  Future<void> setHardMutedWords(List<MuteWord> hardMutedWords) async {
    state = state.copyWith(hardMutedWords: hardMutedWords);
    await _save();
  }

  Future<void> setMutedEmojis(List<String> mutedEmojis) async {
    state = state.copyWith(mutedEmojis: mutedEmojis);
    await _save();
  }

  Future<void> setRecentlyUsedUsers(List<String> recentlyUsedUsers) async {
    state = state.copyWith(recentlyUsedUsers: recentlyUsedUsers);
    await _save();
  }

  Future<void> setHashtags(List<String> hashtags) async {
    state = state.copyWith(hashtags: hashtags);
    await _save();
  }

  Future<void> setPostFormUseHashtags(bool postFormUseHashtags) async {
    state = state.copyWith(postFormUseHashtags: postFormUseHashtags);
    await _save();
  }

  Future<void> setPostFormHashtags(List<String> postFormHashtags) async {
    state = state.copyWith(postFormHashtags: postFormHashtags);
    await _save();
  }
}
