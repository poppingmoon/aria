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
  final AppLocale? locale,

  // Note display
  final bool collapseRenotes = true,
  final SensitiveMediaDisplay sensitive = SensitiveMediaDisplay.respect,
  final bool highlightSensitiveMedia = false,
  final bool animatedMfm = true,
  final bool advancedMfm = true,
  final bool showRepliesCount = true,
  final bool showRenotesCount = true,
  final bool showReactionsCount = false,
  final bool showReactionsCountInReactionButton = true,
  final bool showGapBetweenNotesInTimeline = false,
  final bool loadRawImages = false,
  final InstanceTicker instanceTicker = InstanceTicker.remote,
  final bool showNoteCreatedAt = false,
  final bool showAvatarsInNote = true,
  final bool showAvatarsInSubNote = true,
  final bool squareAvatars = false,
  final bool showAvatarDecorations = true,
  final bool showQuoteButtonInNoteFooter = true,
  final bool showLikeButtonInNoteFooter = false,
  final bool showClipButtonInNoteFooter = false,
  final bool showTranslateButtonInNoteFooter = false,
  final bool showNoteReactionsViewer = true,
  final bool showSubNoteReactionsViewer = false,
  final bool showNoteFooter = true,
  final bool showSubNoteFooter = false,
  final bool alwaysExpandCw = false,
  final bool alwaysExpandLongNote = false,
  final bool alwaysExpandMediaInSubNote = false,
  final bool mergeReactionsByName = false,
  final bool alwaysShowAllReactions = false,
  final MediaListWithOneImageAppearance? mediaListWithOneImageAppearance,
  final BoxFit thumbnailBoxFit = BoxFit.contain,
  final EmojiStyle emojiStyle = EmojiStyle.twemoji,
  final String? fontFamily,
  final String? serifFontFamily,
  final String? monospaceFontFamily,
  final String? cursiveFontFamily,
  final String? fantasyFontFamily,
  final String? emojiFontFamily,
  final String? mathFontFamily,
  final double fontSize = defaultFontSize,
  final double lineHeight = defaultLineHeight,
  final double avatarScale = defaultAvatarScale,
  final double reactionsDisplayScale = 1.0,
  final bool limitWidthOfReaction = true,
  final double noteFooterScale = 1.0,
  final double noteVerticalPadding = defaultNoteVerticalPadding,
  final double noteHorizontalPadding = defaultNoteHorizontalPadding,
  @_ColorConverter() final Color? publicNoteBackgroundColor,
  @_ColorConverter() final Color? homeNoteBackgroundColor,
  @_ColorConverter() final Color? followersNoteBackgroundColor,
  @_ColorConverter() final Color? specifiedNoteBackgroundColor,

  // Emoji picker
  final bool emojiPickerUseDialog = false,
  final double emojiPickerScale = 1.0,
  final bool emojiPickerAutofocus = true,
  final bool emojiPickerKeepOpen = false,

  // Appearance
  final bool dataSaverMedia = false,
  final bool dataSaverAvatar = false,
  final bool dataSaverUrlPreview = false,
  final bool disableDataSaverWhenOnWifi = false,
  final bool reduceAnimation = false,
  final bool disableShowingAnimatedImages = false,
  final bool enableEmojiFadeIn = false,
  final bool forceShowAds = false,
  final bool useGroupedNotifications = false,
  final bool showOnlineStatus = false,
  final bool showTimelineTabBarAtBottom = false,
  final bool showMenuButtonInTabBar = false,
  final bool showTabHeaderInOneLine = true,
  final bool alwaysShowTabHeader = false,
  final bool showTimelineLastViewedAt = true,
  final bool showPopupOnNewNote = true,
  final List<TimelinesPageButtonType?> timelinesPageButtonTypes =
      defaultTimelinesPageButtonTypes,
  final bool showSmallTimelinesPageButtons = false,
  final bool showSquaredTimelinesPageButtons = false,
  final bool showImageInNotification = true,
  final bool showEmojiInReactionNotification = false,

  // Behavior
  final bool enableInfiniteScroll = true,
  final bool keepScreenOn = false,
  final bool openSensitiveMediaOnDoubleTap = false,
  final NoteActionType noteTapAction = NoteActionType.expand,
  final NoteActionType noteDoubleTapAction = NoteActionType.menu,
  final NoteActionType noteLongPressAction = NoteActionType.reaction,
  final bool confirmBeforePost = true,
  final bool confirmBeforeRenote = true,
  final bool confirmBeforeReact = true,
  final bool confirmBeforeFollow = true,
  final bool confirmBeforePostingMediaWithoutComment = false,
  final bool confirmWhenRevealingSensitiveMedia = false,
  final LaunchMode launchMode = LaunchMode.externalApplication,
  final String? mediaSaveLocation,
  final bool enableSpellCheck = false,
  final bool enablePredictiveBack = false,
  final bool enableHorizontalSwipe = true,
  final double timelinesPageSpringStiffness =
      defaultTimelinesPageSpringStiffness,
  final double timelinesPageMinFlingFactor = defaultTimelinesPageMinFlingFactor,
  final bool enableHapticFeedback = true,

  // Theme
  final ThemeMode themeMode = ThemeMode.system,
  final String lightThemeId = 'a58a0abb-ff8c-476a-8dec-0ad7837e7e96',
  final String darkThemeId = '66e7e5a9-cd43-42cd-837d-12f47841fa34',

  // Sounds
  final SoundSettings sound = const SoundSettings(),

  // User select dialog
  final bool searchUsersByUsername = true,
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
