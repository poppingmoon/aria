import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../i18n/strings.g.dart';

part 'general_settings.freezed.dart';
part 'general_settings.g.dart';

const minFontSize = 8.0;
const defaultFontSize = 14.0;
const maxFontSize = 24.0;
const minLineHeight = 1.0;
const defaultLineHeight = 1.35;
const maxLineHeight = 2.5;
const minAvatarScale = 1.0;
const defaultAvatarScale = 2.5;
const maxAvatarScale = 4.0;
const minReactionsDisplayScale = 0.1;
const maxReactionsDisplayScale = 3.0;
const minNoteFooterScale = 0.5;
const maxNoteFooterScale = 2.0;
const defaultNoteVerticalPadding = 12.0;
const maxNoteVerticalPadding = 36.0;
const minNoteHorizontalPadding = 8.0;
const defaultNoteHorizontalPadding = 12.0;
const maxNoteHorizontalPadding = 36.0;
const minEmojiPickerScale = 0.1;
const maxEmojiPickerScale = 3.0;
const defaultTimelinesPageButtonTypes = [
  TimelinesPageButtonType.menu,
  TimelinesPageButtonType.home,
  TimelinesPageButtonType.notifications,
  TimelinesPageButtonType.postForm,
  TimelinesPageButtonType.note,
];

@freezed
abstract class GeneralSettings with _$GeneralSettings {
  const factory GeneralSettings({
    // Locale
    // ignore: invalid_annotation_target
    @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
    AppLocale? locale,

    // Note display
    @Default(true) bool collapseRenotes,
    @Default(SensitiveMediaDisplay.respect) SensitiveMediaDisplay sensitive,
    @Default(false) bool highlightSensitiveMedia,
    @Default(true) bool animatedMfm,
    @Default(true) bool advancedMfm,
    @Default(true) bool showRepliesCount,
    @Default(true) bool showRenotesCount,
    @Default(false) bool showReactionsCount,
    @Default(true) bool showReactionsCountInReactionButton,
    @Default(false) bool showGapBetweenNotesInTimeline,
    @Default(false) bool loadRawImages,
    @Default(InstanceTicker.remote) InstanceTicker instanceTicker,
    @Default(false) bool showNoteCreatedAt,
    @Default(true) bool showAvatarsInNote,
    @Default(true) bool showAvatarsInSubNote,
    @Default(false) bool squareAvatars,
    @Default(true) bool showAvatarDecorations,
    @Default(true) bool showQuoteButtonInNoteFooter,
    @Default(false) bool showLikeButtonInNoteFooter,
    @Default(false) bool showClipButtonInNoteFooter,
    @Default(false) bool showTranslateButtonInNoteFooter,
    @Default(true) bool showNoteReactionsViewer,
    @Default(false) bool showSubNoteReactionsViewer,
    @Default(true) bool showNoteFooter,
    @Default(false) bool showSubNoteFooter,
    @Default(false) bool alwaysExpandCw,
    @Default(false) bool alwaysExpandLongNote,
    @Default(false) bool alwaysExpandMediaInSubNote,
    @Default(false) bool mergeReactionsByName,
    @Default(false) bool alwaysShowAllReactions,
    MediaListWithOneImageAppearance? mediaListWithOneImageAppearance,
    @Default(BoxFit.contain) BoxFit thumbnailBoxFit,
    @Default(EmojiStyle.twemoji) EmojiStyle emojiStyle,
    String? fontFamily,
    @Default(defaultFontSize) double fontSize,
    @Default(defaultLineHeight) double lineHeight,
    @Default(defaultAvatarScale) double avatarScale,
    @Default(1.0) double reactionsDisplayScale,
    @Default(true) bool limitWidthOfReaction,
    @Default(1.0) double noteFooterScale,
    @Default(defaultNoteVerticalPadding) double noteVerticalPadding,
    @Default(defaultNoteHorizontalPadding) double noteHorizontalPadding,
    @_ColorConverter() Color? publicNoteBackgroundColor,
    @_ColorConverter() Color? homeNoteBackgroundColor,
    @_ColorConverter() Color? followersNoteBackgroundColor,
    @_ColorConverter() Color? specifiedNoteBackgroundColor,

    // Emoji picker
    @Default(false) bool emojiPickerUseDialog,
    @Default(1.0) double emojiPickerScale,
    @Default(true) bool emojiPickerAutofocus,
    @Default(false) bool emojiPickerKeepOpen,

    // Appearance
    @Default(false) bool dataSaverMedia,
    @Default(false) bool dataSaverAvatar,
    @Default(false) bool dataSaverUrlPreview,
    @Default(false) bool disableDataSaverWhenOnWifi,
    @Default(false) bool reduceAnimation,
    @Default(false) bool disableShowingAnimatedImages,
    @Default(false) bool enableEmojiFadeIn,
    @Default(false) bool forceShowAds,
    @Default(false) bool useGroupedNotifications,
    @Default(false) bool showOnlineStatus,
    @Default(false) bool showTimelineTabBarAtBottom,
    @Default(false) bool showMenuButtonInTabBar,
    @Default(defaultTimelinesPageButtonTypes)
    List<TimelinesPageButtonType?> timelinesPageButtonTypes,
    @Default(false) bool showSmallTimelinesPageButtons,
    @Default(false) bool showSquaredTimelinesPageButtons,
    @Default(true) bool showTabHeaderInOneLine,
    @Default(false) bool alwaysShowTabHeader,
    @Default(true) bool showTimelineLastViewedAt,
    @Default(true) bool showPopupOnNewNote,
    @Default(false) bool vibrateNote,
    @Default(false) bool vibrateNotification,

    // Behavior
    @Default(true) bool enableInfiniteScroll,
    @Default(false) bool keepScreenOn,
    @Default(true) bool enableHorizontalSwipe,
    @Default(false) bool openSensitiveMediaOnDoubleTap,
    @Default(NoteActionType.expand) NoteActionType noteTapAction,
    @Default(NoteActionType.menu) NoteActionType noteDoubleTapAction,
    @Default(NoteActionType.reaction) NoteActionType noteLongPressAction,
    @Default(true) bool confirmBeforePost,
    @Default(true) bool confirmBeforeRenote,
    @Default(true) bool confirmBeforeReact,
    @Default(true) bool confirmBeforeFollow,
    @Default(false) bool confirmWhenRevealingSensitiveMedia,
    @Default(LaunchMode.externalApplication) LaunchMode launchMode,
    @Default(false) bool enableSpellCheck,
    @Default(false) bool enablePredictiveBack,

    // Theme
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default('a58a0abb-ff8c-476a-8dec-0ad7837e7e96') String lightThemeId,
    @Default('66e7e5a9-cd43-42cd-837d-12f47841fa34') String darkThemeId,
  }) = _GeneralSettings;

  factory GeneralSettings.fromJson(Map<String, dynamic> json) =>
      _$GeneralSettingsFromJson(json);
}

enum SensitiveMediaDisplay { respect, ignore, force }

enum InstanceTicker { none, remote, always }

enum MediaListWithOneImageAppearance { r16_9, r1_1, r2_3 }

enum EmojiStyle { native, twemoji }

enum NoteActionType { none, expand, menu, reaction }

class _ColorConverter extends JsonConverter<Color, int> {
  const _ColorConverter();

  @override
  Color fromJson(int json) {
    return Color(json);
  }

  // https://github.com/flutter/engine/blob/3.27.0/lib/ui/painting.dart#L188-L190
  static int _floatToInt8(double x) {
    return (x * 255.0).round() & 0xff;
  }

  // https://github.com/flutter/engine/blob/3.27.0/lib/ui/painting.dart#L201-L206
  @override
  int toJson(Color color) {
    return _floatToInt8(color.a) << 24 |
        _floatToInt8(color.r) << 16 |
        _floatToInt8(color.g) << 8 |
        _floatToInt8(color.b) << 0;
  }
}

enum TimelinesPageButtonType {
  announcements,
  antennas,
  channels,
  clips,
  drive,
  explore,
  favorites,
  gallery,
  games,
  home,
  instanceInfo,
  lists,
  lookup,
  menu,
  note,
  notifications,
  pages,
  play,
  postForm,
  profile,
  reload,
  search,
  settings,
}
