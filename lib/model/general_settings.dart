import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_ui/material_ui.dart';
import 'package:url_launcher/url_launcher.dart';

import '../i18n/strings.g.dart';
import 'sound_settings.dart';

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
const defaultTimelinesPageSpringStiffness = 100.0;
const maxTimelinesPageSpringStiffness = 500.0;
const defaultTimelinesPageMinFlingFactor = 2.0;
const maxTimelinesPageMinFlingFactor = 10.0;

@Freezed(fromJson: false, toJson: false)
@JsonSerializable()
class const GeneralSettings({
  // Locale
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  @override
  final AppLocale? locale,

  // Note display
  @override final bool collapseRenotes = true,
  @override
  final SensitiveMediaDisplay sensitive = SensitiveMediaDisplay.respect,
  @override final bool highlightSensitiveMedia = false,
  @override final bool animatedMfm = true,
  @override final bool advancedMfm = true,
  @override final bool showRepliesCount = true,
  @override final bool showRenotesCount = true,
  @override final bool showReactionsCount = false,
  @override final bool showReactionsCountInReactionButton = true,
  @override final bool showGapBetweenNotesInTimeline = false,
  @override final bool loadRawImages = false,
  @override final InstanceTicker instanceTicker = InstanceTicker.remote,
  @override final bool showNoteCreatedAt = false,
  @override final bool showAvatarsInNote = true,
  @override final bool showAvatarsInSubNote = true,
  @override final bool squareAvatars = false,
  @override final bool showAvatarDecorations = true,
  @override final bool showQuoteButtonInNoteFooter = true,
  @override final bool showLikeButtonInNoteFooter = false,
  @override final bool showClipButtonInNoteFooter = false,
  @override final bool showTranslateButtonInNoteFooter = false,
  @override final bool showNoteReactionsViewer = true,
  @override final bool showSubNoteReactionsViewer = false,
  @override final bool showNoteFooter = true,
  @override final bool showSubNoteFooter = false,
  @override final bool alwaysExpandCw = false,
  @override final bool alwaysExpandLongNote = false,
  @override final bool alwaysExpandMediaInSubNote = false,
  @override final bool mergeReactionsByName = false,
  @override final bool alwaysShowAllReactions = false,
  @override
  final MediaListWithOneImageAppearance? mediaListWithOneImageAppearance,
  @override final BoxFit thumbnailBoxFit = BoxFit.contain,
  @override final EmojiStyle emojiStyle = EmojiStyle.twemoji,
  @override final String? fontFamily,
  @override final String? serifFontFamily,
  @override final String? monospaceFontFamily,
  @override final String? cursiveFontFamily,
  @override final String? fantasyFontFamily,
  @override final String? emojiFontFamily,
  @override final String? mathFontFamily,
  @override final double fontSize = defaultFontSize,
  @override final double lineHeight = defaultLineHeight,
  @override final double avatarScale = defaultAvatarScale,
  @override final double reactionsDisplayScale = 1.0,
  @override final bool limitWidthOfReaction = true,
  @override final double noteFooterScale = 1.0,
  @override final double noteVerticalPadding = defaultNoteVerticalPadding,
  @override final double noteHorizontalPadding = defaultNoteHorizontalPadding,
  @_ColorConverter() @override final Color? publicNoteBackgroundColor,
  @_ColorConverter() @override final Color? homeNoteBackgroundColor,
  @_ColorConverter() @override final Color? followersNoteBackgroundColor,
  @_ColorConverter() @override final Color? specifiedNoteBackgroundColor,

  // Emoji picker
  @override final bool emojiPickerUseDialog = false,
  @override final double emojiPickerScale = 1.0,
  @override final bool emojiPickerAutofocus = true,
  @override final bool emojiPickerKeepOpen = false,

  // Appearance
  @override final bool dataSaverMedia = false,
  @override final bool dataSaverAvatar = false,
  @override final bool dataSaverUrlPreview = false,
  @override final bool disableDataSaverWhenOnWifi = false,
  @override final bool reduceAnimation = false,
  @override final bool disableShowingAnimatedImages = false,
  @override final bool enableEmojiFadeIn = false,
  @override final bool forceShowAds = false,
  @override final bool useGroupedNotifications = false,
  @override final bool showOnlineStatus = false,
  @override final bool showTimelineTabBarAtBottom = false,
  @override final bool showMenuButtonInTabBar = false,
  @override final bool showTabHeaderInOneLine = true,
  @override final bool alwaysShowTabHeader = false,
  @override final bool showTimelineLastViewedAt = true,
  @override final bool showPopupOnNewNote = true,
  @override
  final List<TimelinesPageButtonType?> timelinesPageButtonTypes =
      defaultTimelinesPageButtonTypes,
  @override final bool showSmallTimelinesPageButtons = false,
  @override final bool showSquaredTimelinesPageButtons = false,
  @override final bool showImageInNotification = true,
  @override final bool showEmojiInReactionNotification = false,

  // Behavior
  @override final bool enableInfiniteScroll = true,
  @override final bool keepScreenOn = false,
  @override final bool openSensitiveMediaOnDoubleTap = false,
  @override final NoteActionType noteTapAction = NoteActionType.expand,
  @override final NoteActionType noteDoubleTapAction = NoteActionType.menu,
  @override final NoteActionType noteLongPressAction = NoteActionType.reaction,
  @override final bool confirmBeforePost = true,
  @override final bool confirmBeforeRenote = true,
  @override final bool confirmBeforeReact = true,
  @override final bool confirmBeforeFollow = true,
  @override final bool confirmBeforePostingMediaWithoutComment = false,
  @override final bool confirmWhenRevealingSensitiveMedia = false,
  @override final LaunchMode launchMode = LaunchMode.externalApplication,
  @override final String? mediaSaveLocation,
  @override final bool enableSpellCheck = false,
  @override final bool enablePredictiveBack = false,
  @override final bool enableHorizontalSwipe = true,
  @override
  final double timelinesPageSpringStiffness =
      defaultTimelinesPageSpringStiffness,
  @override
  final double timelinesPageMinFlingFactor = defaultTimelinesPageMinFlingFactor,
  @override final bool enableHapticFeedback = true,

  // Theme
  @override final ThemeMode themeMode = ThemeMode.system,
  @override final String lightThemeId = 'a58a0abb-ff8c-476a-8dec-0ad7837e7e96',
  @override final String darkThemeId = '66e7e5a9-cd43-42cd-837d-12f47841fa34',

  // Sounds
  @override final SoundSettings sound = const SoundSettings(),

  // User select dialog
  @override final bool searchUsersByUsername = true,
}) with _$GeneralSettings {
  factory fromJson(Map<String, Object?> json) =>
      _$GeneralSettingsFromJson(json);

  Map<String, Object?> toJson() => _$GeneralSettingsToJson(this);
}

enum SensitiveMediaDisplay { respect, ignore, force }

enum InstanceTicker { none, remote, always }

enum MediaListWithOneImageAppearance { r16_9, r1_1, r2_3 }

enum EmojiStyle { native, twemoji }

enum NoteActionType { none, expand, menu, reaction }

class const _ColorConverter() extends JsonConverter<Color, int> {
  @override
  Color fromJson(int json) {
    return Color(json);
  }

  @override
  int toJson(Color color) {
    return color.toARGB32();
  }
}

enum TimelinesPageButtonType {
  announcements,
  antennas,
  channels,
  chat,
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
