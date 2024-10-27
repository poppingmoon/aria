import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

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

  Future<void> setAlwaysExpandCw(bool alwaysExpandCw) async {
    state = state.copyWith(alwaysExpandCw: alwaysExpandCw);
    await _save();
  }

  Future<void> setAlwaysExpandLongNote(bool alwaysExpandLongNote) async {
    state = state.copyWith(alwaysExpandLongNote: alwaysExpandLongNote);
    await _save();
  }

  Future<void> setAlwaysExpandMediaInSubNote(
    bool alwaysExpandMediaInSubNote,
  ) async {
    state =
        state.copyWith(alwaysExpandMediaInSubNote: alwaysExpandMediaInSubNote);
    await _save();
  }

  Future<void> setMergeReactionsByName(bool mergeReactionsByName) async {
    state = state.copyWith(mergeReactionsByName: mergeReactionsByName);
    await _save();
  }

  Future<void> setAlwaysShowAllReactions(bool alwaysShowAllReactions) async {
    state = state.copyWith(alwaysShowAllReactions: alwaysShowAllReactions);
    await _save();
  }

  Future<void> setMediaListWithOneImageAppearance(
    MediaListWithOneImageAppearance? mediaListWithOneImageAppearance,
  ) async {
    state = state.copyWith(
      mediaListWithOneImageAppearance: mediaListWithOneImageAppearance,
    );
    await _save();
  }

  Future<void> setThumbnailBoxFit(BoxFit thumbnailBoxFit) async {
    state = state.copyWith(thumbnailBoxFit: thumbnailBoxFit);
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

  Future<void> setLineHeight(double lineHeight) async {
    state = state.copyWith(lineHeight: lineHeight);
    await _save();
  }

  Future<void> setAvatarScale(double avatarScale) async {
    state = state.copyWith(avatarScale: avatarScale);
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

  Future<void> setNoteVerticalPadding(double noteVerticalPadding) async {
    state = state.copyWith(noteVerticalPadding: noteVerticalPadding);
    await _save();
  }

  Future<void> setNoteHorizontalPadding(double noteHorizontalPadding) async {
    state = state.copyWith(noteHorizontalPadding: noteHorizontalPadding);
    await _save();
  }

  Future<void> setPublicNoteBackgroundColor(
    Color? publicNoteBackgroundColor,
  ) async {
    state =
        state.copyWith(publicNoteBackgroundColor: publicNoteBackgroundColor);
    await _save();
  }

  Future<void> setHomeNoteBackgroundColor(
    Color? homeNoteBackgroundColor,
  ) async {
    state = state.copyWith(homeNoteBackgroundColor: homeNoteBackgroundColor);
    await _save();
  }

  Future<void> setFollowersNoteBackgroundColor(
    Color? followersNoteBackgroundColor,
  ) async {
    state = state.copyWith(
      followersNoteBackgroundColor: followersNoteBackgroundColor,
    );
    await _save();
  }

  Future<void> setSpecifiedNoteBackgroundColor(
    Color? specifiedNoteBackgroundColor,
  ) async {
    state = state.copyWith(
      specifiedNoteBackgroundColor: specifiedNoteBackgroundColor,
    );
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

  Future<void> setReduceAnimation(bool reduceAnimation) async {
    state = state.copyWith(reduceAnimation: reduceAnimation);
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

  Future<void> setEnableEmojiFadeIn(bool enableEmojiFadeIn) async {
    state = state.copyWith(enableEmojiFadeIn: enableEmojiFadeIn);
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

  Future<void> setShowTimelineTabBarAtBottom(
    bool showTimelineTabBarAtBottom,
  ) async {
    state =
        state.copyWith(showTimelineTabBarAtBottom: showTimelineTabBarAtBottom);
    await _save();
  }

  Future<void> setShowMenuButtonInTabBar(bool showMenuButtonInTabBar) async {
    state = state.copyWith(showMenuButtonInTabBar: showMenuButtonInTabBar);
    await _save();
  }

  Future<void> setShowHomeFAB(bool showHomeFAB) async {
    state = state.copyWith(showHomeFAB: showHomeFAB);
    await _save();
  }

  Future<void> setShowNotificationsFAB(bool showNotificationsFAB) async {
    state = state.copyWith(showNotificationsFAB: showNotificationsFAB);
    await _save();
  }

  Future<void> setShowShowPostFormFAB(bool showShowPostFormFAB) async {
    state = state.copyWith(showShowPostFormFAB: showShowPostFormFAB);
    await _save();
  }

  Future<void> setShowTabHeaderInOneLine(bool showTabHeaderInOneLine) async {
    state = state.copyWith(showTabHeaderInOneLine: showTabHeaderInOneLine);
    await _save();
  }

  Future<void> setAlwaysShowTabHeader(bool alwaysShowTabHeader) async {
    state = state.copyWith(alwaysShowTabHeader: alwaysShowTabHeader);
    await _save();
  }

  Future<void> setShowTimelineLastViewedAt(
    bool showTimelineLastViewedAt,
  ) async {
    state = state.copyWith(showTimelineLastViewedAt: showTimelineLastViewedAt);
    await _save();
  }

  Future<void> setShowPopupOnNewNote(bool showPopupOnNewNote) async {
    state = state.copyWith(showPopupOnNewNote: showPopupOnNewNote);
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

  Future<void> setConfirmWhenRevealingSensitiveMedia(
    bool confirmWhenRevealingSensitiveMedia,
  ) async {
    state = state.copyWith(
      confirmWhenRevealingSensitiveMedia: confirmWhenRevealingSensitiveMedia,
    );
    await _save();
  }

  Future<void> setLaunchMode(LaunchMode launchMode) async {
    state = state.copyWith(launchMode: launchMode);
    await _save();
  }

  Future<void> setEnablePredictiveBack(bool enablePredictiveBack) async {
    state = state.copyWith(enablePredictiveBack: enablePredictiveBack);
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
