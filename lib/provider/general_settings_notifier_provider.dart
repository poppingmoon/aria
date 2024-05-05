import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i18n/strings.g.dart';
import '../model/general_settings.dart';
import 'shared_preferences_provider.dart';

part 'general_settings_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class GeneralSettingsNotifier extends _$GeneralSettingsNotifier {
  @override
  GeneralSettings build() {
    final value = ref.watch(sharedPreferencesProvider).getString(_key);
    if (value != null) {
      return GeneralSettings.fromJson(
        jsonDecode(value) as Map<String, dynamic>,
      );
    } else {
      return const GeneralSettings();
    }
  }

  static const _key = 'generalSettings';

  Future<void> _save() async {
    await ref
        .read(sharedPreferencesProvider)
        .setString(_key, jsonEncode(state.toJson()));
  }

  Future<void> import(GeneralSettings generalSettings) async {
    state = generalSettings;
    await _save();
  }

  Future<void> setLocale(AppLocale? locale) async {
    state = state.copyWith(locale: locale);
    await _save();
  }

  Future<void> setCollapseRenotes(bool collapseRenotes) async {
    state = state.copyWith(collapseRenotes: collapseRenotes);
    await _save();
  }

  Future<void> setSensitive(SensitiveMediaDisplay sensitive) async {
    state = state.copyWith(sensitive: sensitive);
    await _save();
  }

  Future<void> setHighlightSensitiveMedia(bool highlightSensitiveMedia) async {
    state = state.copyWith(highlightSensitiveMedia: highlightSensitiveMedia);
    await _save();
  }

  Future<void> setAnimatedMfm(bool animatedMfm) async {
    state = state.copyWith(animatedMfm: animatedMfm);
    await _save();
  }

  Future<void> setAdvancedMfm(bool advancedMfm) async {
    state = state.copyWith(advancedMfm: advancedMfm);
    await _save();
  }

  Future<void> setShowReactionsCount(bool showReactionsCount) async {
    state = state.copyWith(showReactionsCount: showReactionsCount);
    await _save();
  }

  Future<void> setLoadRawImages(bool loadRawImages) async {
    state = state.copyWith(loadRawImages: loadRawImages);
    await _save();
  }

  Future<void> setInstanceTicker(InstanceTicker instanceTicker) async {
    state = state.copyWith(instanceTicker: instanceTicker);
    await _save();
  }

  Future<void> setShowNoteCreatedAt(bool showNoteCreatedAt) async {
    state = state.copyWith(showNoteCreatedAt: showNoteCreatedAt);
    await _save();
  }

  Future<void> setShowAvatarsInNote(bool showAvatarsInNote) async {
    state = state.copyWith(showAvatarsInNote: showAvatarsInNote);
    await _save();
  }

  Future<void> setShowAvatarsInSubNote(bool showAvatarsInSubNote) async {
    state = state.copyWith(showAvatarsInSubNote: showAvatarsInSubNote);
    await _save();
  }

  Future<void> setSquareAvatars(bool squareAvatars) async {
    state = state.copyWith(squareAvatars: squareAvatars);
    await _save();
  }

  Future<void> setShowAvatarDecorations(bool showAvatarDecorations) async {
    state = state.copyWith(showAvatarDecorations: showAvatarDecorations);
    await _save();
  }

  Future<void> setShowQuoteButtonInNoteFooter(
    bool showQuoteButtonInNoteFooter,
  ) async {
    state = state.copyWith(
      showQuoteButtonInNoteFooter: showQuoteButtonInNoteFooter,
    );
    await _save();
  }

  Future<void> setShowLikeButtonInNoteFooter(
    bool showLikeButtonInNoteFooter,
  ) async {
    state =
        state.copyWith(showLikeButtonInNoteFooter: showLikeButtonInNoteFooter);
    await _save();
  }

  Future<void> setShowClipButtonInNoteFooter(
    bool showClipButtonInNoteFooter,
  ) async {
    state =
        state.copyWith(showClipButtonInNoteFooter: showClipButtonInNoteFooter);
    await _save();
  }

  Future<void> setShowTranslateButtonInNoteFooter(
    bool showTranslateButtonInNoteFooter,
  ) async {
    state = state.copyWith(
      showTranslateButtonInNoteFooter: showTranslateButtonInNoteFooter,
    );
    await _save();
  }

  Future<void> setShowNoteReactionsViewer(
    bool showNoteReactionsViewer,
  ) async {
    state = state.copyWith(showNoteReactionsViewer: showNoteReactionsViewer);
    await _save();
  }

  Future<void> setShowSubNoteReactionsViewer(
    bool showSubNoteReactionsViewer,
  ) async {
    state =
        state.copyWith(showSubNoteReactionsViewer: showSubNoteReactionsViewer);
    await _save();
  }

  Future<void> setShowNoteFooter(bool showNoteFooter) async {
    state = state.copyWith(showNoteFooter: showNoteFooter);
    await _save();
  }

  Future<void> setShowSubNoteFooter(bool showSubNoteFooter) async {
    state = state.copyWith(showSubNoteFooter: showSubNoteFooter);
    await _save();
  }

  Future<void> setEmojiStyle(EmojiStyle emojiStyle) async {
    state = state.copyWith(emojiStyle: emojiStyle);
    await _save();
  }

  Future<void> setFontFamily(String? fontFamily) async {
    state = state.copyWith(fontFamily: fontFamily);
    await _save();
  }

  Future<void> setFontSize(double fontSize) async {
    state = state.copyWith(fontSize: fontSize);
    await _save();
  }

  Future<void> setReactionsDisplayScale(double reactionsDisplayScale) async {
    state = state.copyWith(reactionsDisplayScale: reactionsDisplayScale);
    await _save();
  }

  Future<void> setLimitWidthOfReaction(bool limitWidthOfReaction) async {
    state = state.copyWith(limitWidthOfReaction: limitWidthOfReaction);
    await _save();
  }

  Future<void> setNoteFooterScale(double noteFooterScale) async {
    state = state.copyWith(noteFooterScale: noteFooterScale);
    await _save();
  }

  Future<void> setEmojiPickerUseDialog(bool emojiPickerUseDialog) async {
    state = state.copyWith(emojiPickerUseDialog: emojiPickerUseDialog);
    await _save();
  }

  Future<void> setEmojiPickerScale(double emojiPickerScale) async {
    state = state.copyWith(emojiPickerScale: emojiPickerScale);
    await _save();
  }

  Future<void> setEmojiPickerAutofocus(bool emojiPickerAutofocus) async {
    state = state.copyWith(emojiPickerAutofocus: emojiPickerAutofocus);
    await _save();
  }

  Future<void> setEmojiPickerKeepOpen(bool emojiPickerKeepOpen) async {
    state = state.copyWith(emojiPickerKeepOpen: emojiPickerKeepOpen);
    await _save();
  }

  Future<void> setDataSaverMedia(bool dataSaverMedia) async {
    state = state.copyWith(dataSaverMedia: dataSaverMedia);
    await _save();
  }

  Future<void> setDataSaverAvatar(bool dataSaverAvatar) async {
    state = state.copyWith(dataSaverAvatar: dataSaverAvatar);
    await _save();
  }

  Future<void> setDataSaverUrlPreview(bool dataSaverUrlPreview) async {
    state = state.copyWith(dataSaverUrlPreview: dataSaverUrlPreview);
    await _save();
  }

  Future<void> setDisableDataSaverWhenOnWifi(
    bool disableDataSaverWhenOnWifi,
  ) async {
    state =
        state.copyWith(disableDataSaverWhenOnWifi: disableDataSaverWhenOnWifi);
    await _save();
  }

  Future<void> setDisableShowingAnimatedImages(
    bool disableShowingAnimatedImages,
  ) async {
    state = state.copyWith(
      disableShowingAnimatedImages: disableShowingAnimatedImages,
    );
    await _save();
  }

  Future<void> setForceShowAds(bool forceShowAds) async {
    state = state.copyWith(forceShowAds: forceShowAds);
    await _save();
  }

  Future<void> setUseGroupedNotifications(bool useGroupedNotifications) async {
    state = state.copyWith(useGroupedNotifications: useGroupedNotifications);
    await _save();
  }

  Future<void> setShowTimelineTabBarOnBottom(
    bool showTimelineTabBarOnBottom,
  ) async {
    state =
        state.copyWith(showTimelineTabBarOnBottom: showTimelineTabBarOnBottom);
    await _save();
  }

  Future<void> setShowTimelineLastViewedAt(
    bool showTimelineLastViewedAt,
  ) async {
    state = state.copyWith(showTimelineLastViewedAt: showTimelineLastViewedAt);
    await _save();
  }

  Future<void> setVibrateNote(bool vibrateNote) async {
    state = state.copyWith(vibrateNote: vibrateNote);
    await _save();
  }

  Future<void> setVibrateNotification(bool vibrateNotification) async {
    state = state.copyWith(vibrateNotification: vibrateNotification);
    await _save();
  }

  Future<void> setEnableInfiniteScroll(bool enableInfiniteScroll) async {
    state = state.copyWith(enableInfiniteScroll: enableInfiniteScroll);
    await _save();
  }

  Future<void> setKeepScreenOn(bool keepScreenOn) async {
    state = state.copyWith(keepScreenOn: keepScreenOn);
    await _save();
  }

  Future<void> setEnableHorizontalSwipe(bool enableHorizontalSwipe) async {
    state = state.copyWith(enableHorizontalSwipe: enableHorizontalSwipe);
    await _save();
  }

  Future<void> setOpenSensitiveMediaOnDoubleTap(
    bool openSensitiveMediaOnDoubleTap,
  ) async {
    state = state.copyWith(
      openSensitiveMediaOnDoubleTap: openSensitiveMediaOnDoubleTap,
    );
    await _save();
  }

  Future<void> setNoteTapAction(NoteActionType noteTapAction) async {
    state = state.copyWith(noteTapAction: noteTapAction);
    await _save();
  }

  Future<void> setNoteLongPressAction(
    NoteActionType noteLongPressAction,
  ) async {
    state = state.copyWith(noteLongPressAction: noteLongPressAction);
    await _save();
  }

  Future<void> setNoteDoubleTapAction(
    NoteActionType noteDoubleTapAction,
  ) async {
    state = state.copyWith(noteDoubleTapAction: noteDoubleTapAction);
    await _save();
  }

  Future<void> setConfirmBeforePost(bool confirmBeforePost) async {
    state = state.copyWith(confirmBeforePost: confirmBeforePost);
    await _save();
  }

  Future<void> setConfirmBeforeReact(bool confirmBeforeReact) async {
    state = state.copyWith(confirmBeforeReact: confirmBeforeReact);
    await _save();
  }

  Future<void> setConfirmBeforeFollow(bool confirmBeforeFollow) async {
    state = state.copyWith(confirmBeforeFollow: confirmBeforeFollow);
    await _save();
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    state = state.copyWith(themeMode: themeMode);
    await _save();
  }

  Future<void> setLightThemeId(String lightThemeId) async {
    state = state.copyWith(lightThemeId: lightThemeId);
    await _save();
  }

  Future<void> setDarkThemeId(String darkThemeId) async {
    state = state.copyWith(darkThemeId: darkThemeId);
    await _save();
  }
}
