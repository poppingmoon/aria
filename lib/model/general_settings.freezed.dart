// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeneralSettings {

// Locale
// ignore: invalid_annotation_target
@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) AppLocale? get locale;// Note display
 bool get collapseRenotes; SensitiveMediaDisplay get sensitive; bool get highlightSensitiveMedia; bool get animatedMfm; bool get advancedMfm; bool get showRepliesCount; bool get showRenotesCount; bool get showReactionsCount; bool get showReactionsCountInReactionButton; bool get showGapBetweenNotesInTimeline; bool get loadRawImages; InstanceTicker get instanceTicker; bool get showNoteCreatedAt; bool get showAvatarsInNote; bool get showAvatarsInSubNote; bool get squareAvatars; bool get showAvatarDecorations; bool get showQuoteButtonInNoteFooter; bool get showLikeButtonInNoteFooter; bool get showClipButtonInNoteFooter; bool get showTranslateButtonInNoteFooter; bool get showNoteReactionsViewer; bool get showSubNoteReactionsViewer; bool get showNoteFooter; bool get showSubNoteFooter; bool get alwaysExpandCw; bool get alwaysExpandLongNote; bool get alwaysExpandMediaInSubNote; bool get mergeReactionsByName; bool get alwaysShowAllReactions; MediaListWithOneImageAppearance? get mediaListWithOneImageAppearance; BoxFit get thumbnailBoxFit; EmojiStyle get emojiStyle; String? get fontFamily; double get fontSize; double get lineHeight; double get avatarScale; double get reactionsDisplayScale; bool get limitWidthOfReaction; double get noteFooterScale; double get noteVerticalPadding; double get noteHorizontalPadding;@_ColorConverter() Color? get publicNoteBackgroundColor;@_ColorConverter() Color? get homeNoteBackgroundColor;@_ColorConverter() Color? get followersNoteBackgroundColor;@_ColorConverter() Color? get specifiedNoteBackgroundColor;// Emoji picker
 bool get emojiPickerUseDialog; double get emojiPickerScale; bool get emojiPickerAutofocus; bool get emojiPickerKeepOpen;// Appearance
 bool get dataSaverMedia; bool get dataSaverAvatar; bool get dataSaverUrlPreview; bool get disableDataSaverWhenOnWifi; bool get reduceAnimation; bool get disableShowingAnimatedImages; bool get enableEmojiFadeIn; bool get forceShowAds; bool get useGroupedNotifications; bool get showTimelineTabBarAtBottom; bool get showMenuButtonInTabBar; List<TimelinesPageButtonType?> get timelinesPageButtonTypes; bool get showSmallTimelinesPageButtons; bool get showSquaredTimelinesPageButtons; bool get showTabHeaderInOneLine; bool get alwaysShowTabHeader; bool get showTimelineLastViewedAt; bool get showPopupOnNewNote; bool get vibrateNote; bool get vibrateNotification;// Behavior
 bool get enableInfiniteScroll; bool get keepScreenOn; bool get enableHorizontalSwipe; bool get openSensitiveMediaOnDoubleTap; NoteActionType get noteTapAction; NoteActionType get noteDoubleTapAction; NoteActionType get noteLongPressAction; bool get confirmBeforePost; bool get confirmBeforeRenote; bool get confirmBeforeReact; bool get confirmBeforeFollow; bool get confirmWhenRevealingSensitiveMedia; LaunchMode get launchMode; bool get enableSpellCheck; bool get enablePredictiveBack;// Theme
 ThemeMode get themeMode; String get lightThemeId; String get darkThemeId;
/// Create a copy of GeneralSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralSettingsCopyWith<GeneralSettings> get copyWith => _$GeneralSettingsCopyWithImpl<GeneralSettings>(this as GeneralSettings, _$identity);

  /// Serializes this GeneralSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralSettings&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.collapseRenotes, collapseRenotes) || other.collapseRenotes == collapseRenotes)&&(identical(other.sensitive, sensitive) || other.sensitive == sensitive)&&(identical(other.highlightSensitiveMedia, highlightSensitiveMedia) || other.highlightSensitiveMedia == highlightSensitiveMedia)&&(identical(other.animatedMfm, animatedMfm) || other.animatedMfm == animatedMfm)&&(identical(other.advancedMfm, advancedMfm) || other.advancedMfm == advancedMfm)&&(identical(other.showRepliesCount, showRepliesCount) || other.showRepliesCount == showRepliesCount)&&(identical(other.showRenotesCount, showRenotesCount) || other.showRenotesCount == showRenotesCount)&&(identical(other.showReactionsCount, showReactionsCount) || other.showReactionsCount == showReactionsCount)&&(identical(other.showReactionsCountInReactionButton, showReactionsCountInReactionButton) || other.showReactionsCountInReactionButton == showReactionsCountInReactionButton)&&(identical(other.showGapBetweenNotesInTimeline, showGapBetweenNotesInTimeline) || other.showGapBetweenNotesInTimeline == showGapBetweenNotesInTimeline)&&(identical(other.loadRawImages, loadRawImages) || other.loadRawImages == loadRawImages)&&(identical(other.instanceTicker, instanceTicker) || other.instanceTicker == instanceTicker)&&(identical(other.showNoteCreatedAt, showNoteCreatedAt) || other.showNoteCreatedAt == showNoteCreatedAt)&&(identical(other.showAvatarsInNote, showAvatarsInNote) || other.showAvatarsInNote == showAvatarsInNote)&&(identical(other.showAvatarsInSubNote, showAvatarsInSubNote) || other.showAvatarsInSubNote == showAvatarsInSubNote)&&(identical(other.squareAvatars, squareAvatars) || other.squareAvatars == squareAvatars)&&(identical(other.showAvatarDecorations, showAvatarDecorations) || other.showAvatarDecorations == showAvatarDecorations)&&(identical(other.showQuoteButtonInNoteFooter, showQuoteButtonInNoteFooter) || other.showQuoteButtonInNoteFooter == showQuoteButtonInNoteFooter)&&(identical(other.showLikeButtonInNoteFooter, showLikeButtonInNoteFooter) || other.showLikeButtonInNoteFooter == showLikeButtonInNoteFooter)&&(identical(other.showClipButtonInNoteFooter, showClipButtonInNoteFooter) || other.showClipButtonInNoteFooter == showClipButtonInNoteFooter)&&(identical(other.showTranslateButtonInNoteFooter, showTranslateButtonInNoteFooter) || other.showTranslateButtonInNoteFooter == showTranslateButtonInNoteFooter)&&(identical(other.showNoteReactionsViewer, showNoteReactionsViewer) || other.showNoteReactionsViewer == showNoteReactionsViewer)&&(identical(other.showSubNoteReactionsViewer, showSubNoteReactionsViewer) || other.showSubNoteReactionsViewer == showSubNoteReactionsViewer)&&(identical(other.showNoteFooter, showNoteFooter) || other.showNoteFooter == showNoteFooter)&&(identical(other.showSubNoteFooter, showSubNoteFooter) || other.showSubNoteFooter == showSubNoteFooter)&&(identical(other.alwaysExpandCw, alwaysExpandCw) || other.alwaysExpandCw == alwaysExpandCw)&&(identical(other.alwaysExpandLongNote, alwaysExpandLongNote) || other.alwaysExpandLongNote == alwaysExpandLongNote)&&(identical(other.alwaysExpandMediaInSubNote, alwaysExpandMediaInSubNote) || other.alwaysExpandMediaInSubNote == alwaysExpandMediaInSubNote)&&(identical(other.mergeReactionsByName, mergeReactionsByName) || other.mergeReactionsByName == mergeReactionsByName)&&(identical(other.alwaysShowAllReactions, alwaysShowAllReactions) || other.alwaysShowAllReactions == alwaysShowAllReactions)&&(identical(other.mediaListWithOneImageAppearance, mediaListWithOneImageAppearance) || other.mediaListWithOneImageAppearance == mediaListWithOneImageAppearance)&&(identical(other.thumbnailBoxFit, thumbnailBoxFit) || other.thumbnailBoxFit == thumbnailBoxFit)&&(identical(other.emojiStyle, emojiStyle) || other.emojiStyle == emojiStyle)&&(identical(other.fontFamily, fontFamily) || other.fontFamily == fontFamily)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.lineHeight, lineHeight) || other.lineHeight == lineHeight)&&(identical(other.avatarScale, avatarScale) || other.avatarScale == avatarScale)&&(identical(other.reactionsDisplayScale, reactionsDisplayScale) || other.reactionsDisplayScale == reactionsDisplayScale)&&(identical(other.limitWidthOfReaction, limitWidthOfReaction) || other.limitWidthOfReaction == limitWidthOfReaction)&&(identical(other.noteFooterScale, noteFooterScale) || other.noteFooterScale == noteFooterScale)&&(identical(other.noteVerticalPadding, noteVerticalPadding) || other.noteVerticalPadding == noteVerticalPadding)&&(identical(other.noteHorizontalPadding, noteHorizontalPadding) || other.noteHorizontalPadding == noteHorizontalPadding)&&(identical(other.publicNoteBackgroundColor, publicNoteBackgroundColor) || other.publicNoteBackgroundColor == publicNoteBackgroundColor)&&(identical(other.homeNoteBackgroundColor, homeNoteBackgroundColor) || other.homeNoteBackgroundColor == homeNoteBackgroundColor)&&(identical(other.followersNoteBackgroundColor, followersNoteBackgroundColor) || other.followersNoteBackgroundColor == followersNoteBackgroundColor)&&(identical(other.specifiedNoteBackgroundColor, specifiedNoteBackgroundColor) || other.specifiedNoteBackgroundColor == specifiedNoteBackgroundColor)&&(identical(other.emojiPickerUseDialog, emojiPickerUseDialog) || other.emojiPickerUseDialog == emojiPickerUseDialog)&&(identical(other.emojiPickerScale, emojiPickerScale) || other.emojiPickerScale == emojiPickerScale)&&(identical(other.emojiPickerAutofocus, emojiPickerAutofocus) || other.emojiPickerAutofocus == emojiPickerAutofocus)&&(identical(other.emojiPickerKeepOpen, emojiPickerKeepOpen) || other.emojiPickerKeepOpen == emojiPickerKeepOpen)&&(identical(other.dataSaverMedia, dataSaverMedia) || other.dataSaverMedia == dataSaverMedia)&&(identical(other.dataSaverAvatar, dataSaverAvatar) || other.dataSaverAvatar == dataSaverAvatar)&&(identical(other.dataSaverUrlPreview, dataSaverUrlPreview) || other.dataSaverUrlPreview == dataSaverUrlPreview)&&(identical(other.disableDataSaverWhenOnWifi, disableDataSaverWhenOnWifi) || other.disableDataSaverWhenOnWifi == disableDataSaverWhenOnWifi)&&(identical(other.reduceAnimation, reduceAnimation) || other.reduceAnimation == reduceAnimation)&&(identical(other.disableShowingAnimatedImages, disableShowingAnimatedImages) || other.disableShowingAnimatedImages == disableShowingAnimatedImages)&&(identical(other.enableEmojiFadeIn, enableEmojiFadeIn) || other.enableEmojiFadeIn == enableEmojiFadeIn)&&(identical(other.forceShowAds, forceShowAds) || other.forceShowAds == forceShowAds)&&(identical(other.useGroupedNotifications, useGroupedNotifications) || other.useGroupedNotifications == useGroupedNotifications)&&(identical(other.showTimelineTabBarAtBottom, showTimelineTabBarAtBottom) || other.showTimelineTabBarAtBottom == showTimelineTabBarAtBottom)&&(identical(other.showMenuButtonInTabBar, showMenuButtonInTabBar) || other.showMenuButtonInTabBar == showMenuButtonInTabBar)&&const DeepCollectionEquality().equals(other.timelinesPageButtonTypes, timelinesPageButtonTypes)&&(identical(other.showSmallTimelinesPageButtons, showSmallTimelinesPageButtons) || other.showSmallTimelinesPageButtons == showSmallTimelinesPageButtons)&&(identical(other.showSquaredTimelinesPageButtons, showSquaredTimelinesPageButtons) || other.showSquaredTimelinesPageButtons == showSquaredTimelinesPageButtons)&&(identical(other.showTabHeaderInOneLine, showTabHeaderInOneLine) || other.showTabHeaderInOneLine == showTabHeaderInOneLine)&&(identical(other.alwaysShowTabHeader, alwaysShowTabHeader) || other.alwaysShowTabHeader == alwaysShowTabHeader)&&(identical(other.showTimelineLastViewedAt, showTimelineLastViewedAt) || other.showTimelineLastViewedAt == showTimelineLastViewedAt)&&(identical(other.showPopupOnNewNote, showPopupOnNewNote) || other.showPopupOnNewNote == showPopupOnNewNote)&&(identical(other.vibrateNote, vibrateNote) || other.vibrateNote == vibrateNote)&&(identical(other.vibrateNotification, vibrateNotification) || other.vibrateNotification == vibrateNotification)&&(identical(other.enableInfiniteScroll, enableInfiniteScroll) || other.enableInfiniteScroll == enableInfiniteScroll)&&(identical(other.keepScreenOn, keepScreenOn) || other.keepScreenOn == keepScreenOn)&&(identical(other.enableHorizontalSwipe, enableHorizontalSwipe) || other.enableHorizontalSwipe == enableHorizontalSwipe)&&(identical(other.openSensitiveMediaOnDoubleTap, openSensitiveMediaOnDoubleTap) || other.openSensitiveMediaOnDoubleTap == openSensitiveMediaOnDoubleTap)&&(identical(other.noteTapAction, noteTapAction) || other.noteTapAction == noteTapAction)&&(identical(other.noteDoubleTapAction, noteDoubleTapAction) || other.noteDoubleTapAction == noteDoubleTapAction)&&(identical(other.noteLongPressAction, noteLongPressAction) || other.noteLongPressAction == noteLongPressAction)&&(identical(other.confirmBeforePost, confirmBeforePost) || other.confirmBeforePost == confirmBeforePost)&&(identical(other.confirmBeforeRenote, confirmBeforeRenote) || other.confirmBeforeRenote == confirmBeforeRenote)&&(identical(other.confirmBeforeReact, confirmBeforeReact) || other.confirmBeforeReact == confirmBeforeReact)&&(identical(other.confirmBeforeFollow, confirmBeforeFollow) || other.confirmBeforeFollow == confirmBeforeFollow)&&(identical(other.confirmWhenRevealingSensitiveMedia, confirmWhenRevealingSensitiveMedia) || other.confirmWhenRevealingSensitiveMedia == confirmWhenRevealingSensitiveMedia)&&(identical(other.launchMode, launchMode) || other.launchMode == launchMode)&&(identical(other.enableSpellCheck, enableSpellCheck) || other.enableSpellCheck == enableSpellCheck)&&(identical(other.enablePredictiveBack, enablePredictiveBack) || other.enablePredictiveBack == enablePredictiveBack)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.lightThemeId, lightThemeId) || other.lightThemeId == lightThemeId)&&(identical(other.darkThemeId, darkThemeId) || other.darkThemeId == darkThemeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,locale,collapseRenotes,sensitive,highlightSensitiveMedia,animatedMfm,advancedMfm,showRepliesCount,showRenotesCount,showReactionsCount,showReactionsCountInReactionButton,showGapBetweenNotesInTimeline,loadRawImages,instanceTicker,showNoteCreatedAt,showAvatarsInNote,showAvatarsInSubNote,squareAvatars,showAvatarDecorations,showQuoteButtonInNoteFooter,showLikeButtonInNoteFooter,showClipButtonInNoteFooter,showTranslateButtonInNoteFooter,showNoteReactionsViewer,showSubNoteReactionsViewer,showNoteFooter,showSubNoteFooter,alwaysExpandCw,alwaysExpandLongNote,alwaysExpandMediaInSubNote,mergeReactionsByName,alwaysShowAllReactions,mediaListWithOneImageAppearance,thumbnailBoxFit,emojiStyle,fontFamily,fontSize,lineHeight,avatarScale,reactionsDisplayScale,limitWidthOfReaction,noteFooterScale,noteVerticalPadding,noteHorizontalPadding,publicNoteBackgroundColor,homeNoteBackgroundColor,followersNoteBackgroundColor,specifiedNoteBackgroundColor,emojiPickerUseDialog,emojiPickerScale,emojiPickerAutofocus,emojiPickerKeepOpen,dataSaverMedia,dataSaverAvatar,dataSaverUrlPreview,disableDataSaverWhenOnWifi,reduceAnimation,disableShowingAnimatedImages,enableEmojiFadeIn,forceShowAds,useGroupedNotifications,showTimelineTabBarAtBottom,showMenuButtonInTabBar,const DeepCollectionEquality().hash(timelinesPageButtonTypes),showSmallTimelinesPageButtons,showSquaredTimelinesPageButtons,showTabHeaderInOneLine,alwaysShowTabHeader,showTimelineLastViewedAt,showPopupOnNewNote,vibrateNote,vibrateNotification,enableInfiniteScroll,keepScreenOn,enableHorizontalSwipe,openSensitiveMediaOnDoubleTap,noteTapAction,noteDoubleTapAction,noteLongPressAction,confirmBeforePost,confirmBeforeRenote,confirmBeforeReact,confirmBeforeFollow,confirmWhenRevealingSensitiveMedia,launchMode,enableSpellCheck,enablePredictiveBack,themeMode,lightThemeId,darkThemeId]);

@override
String toString() {
  return 'GeneralSettings(locale: $locale, collapseRenotes: $collapseRenotes, sensitive: $sensitive, highlightSensitiveMedia: $highlightSensitiveMedia, animatedMfm: $animatedMfm, advancedMfm: $advancedMfm, showRepliesCount: $showRepliesCount, showRenotesCount: $showRenotesCount, showReactionsCount: $showReactionsCount, showReactionsCountInReactionButton: $showReactionsCountInReactionButton, showGapBetweenNotesInTimeline: $showGapBetweenNotesInTimeline, loadRawImages: $loadRawImages, instanceTicker: $instanceTicker, showNoteCreatedAt: $showNoteCreatedAt, showAvatarsInNote: $showAvatarsInNote, showAvatarsInSubNote: $showAvatarsInSubNote, squareAvatars: $squareAvatars, showAvatarDecorations: $showAvatarDecorations, showQuoteButtonInNoteFooter: $showQuoteButtonInNoteFooter, showLikeButtonInNoteFooter: $showLikeButtonInNoteFooter, showClipButtonInNoteFooter: $showClipButtonInNoteFooter, showTranslateButtonInNoteFooter: $showTranslateButtonInNoteFooter, showNoteReactionsViewer: $showNoteReactionsViewer, showSubNoteReactionsViewer: $showSubNoteReactionsViewer, showNoteFooter: $showNoteFooter, showSubNoteFooter: $showSubNoteFooter, alwaysExpandCw: $alwaysExpandCw, alwaysExpandLongNote: $alwaysExpandLongNote, alwaysExpandMediaInSubNote: $alwaysExpandMediaInSubNote, mergeReactionsByName: $mergeReactionsByName, alwaysShowAllReactions: $alwaysShowAllReactions, mediaListWithOneImageAppearance: $mediaListWithOneImageAppearance, thumbnailBoxFit: $thumbnailBoxFit, emojiStyle: $emojiStyle, fontFamily: $fontFamily, fontSize: $fontSize, lineHeight: $lineHeight, avatarScale: $avatarScale, reactionsDisplayScale: $reactionsDisplayScale, limitWidthOfReaction: $limitWidthOfReaction, noteFooterScale: $noteFooterScale, noteVerticalPadding: $noteVerticalPadding, noteHorizontalPadding: $noteHorizontalPadding, publicNoteBackgroundColor: $publicNoteBackgroundColor, homeNoteBackgroundColor: $homeNoteBackgroundColor, followersNoteBackgroundColor: $followersNoteBackgroundColor, specifiedNoteBackgroundColor: $specifiedNoteBackgroundColor, emojiPickerUseDialog: $emojiPickerUseDialog, emojiPickerScale: $emojiPickerScale, emojiPickerAutofocus: $emojiPickerAutofocus, emojiPickerKeepOpen: $emojiPickerKeepOpen, dataSaverMedia: $dataSaverMedia, dataSaverAvatar: $dataSaverAvatar, dataSaverUrlPreview: $dataSaverUrlPreview, disableDataSaverWhenOnWifi: $disableDataSaverWhenOnWifi, reduceAnimation: $reduceAnimation, disableShowingAnimatedImages: $disableShowingAnimatedImages, enableEmojiFadeIn: $enableEmojiFadeIn, forceShowAds: $forceShowAds, useGroupedNotifications: $useGroupedNotifications, showTimelineTabBarAtBottom: $showTimelineTabBarAtBottom, showMenuButtonInTabBar: $showMenuButtonInTabBar, timelinesPageButtonTypes: $timelinesPageButtonTypes, showSmallTimelinesPageButtons: $showSmallTimelinesPageButtons, showSquaredTimelinesPageButtons: $showSquaredTimelinesPageButtons, showTabHeaderInOneLine: $showTabHeaderInOneLine, alwaysShowTabHeader: $alwaysShowTabHeader, showTimelineLastViewedAt: $showTimelineLastViewedAt, showPopupOnNewNote: $showPopupOnNewNote, vibrateNote: $vibrateNote, vibrateNotification: $vibrateNotification, enableInfiniteScroll: $enableInfiniteScroll, keepScreenOn: $keepScreenOn, enableHorizontalSwipe: $enableHorizontalSwipe, openSensitiveMediaOnDoubleTap: $openSensitiveMediaOnDoubleTap, noteTapAction: $noteTapAction, noteDoubleTapAction: $noteDoubleTapAction, noteLongPressAction: $noteLongPressAction, confirmBeforePost: $confirmBeforePost, confirmBeforeRenote: $confirmBeforeRenote, confirmBeforeReact: $confirmBeforeReact, confirmBeforeFollow: $confirmBeforeFollow, confirmWhenRevealingSensitiveMedia: $confirmWhenRevealingSensitiveMedia, launchMode: $launchMode, enableSpellCheck: $enableSpellCheck, enablePredictiveBack: $enablePredictiveBack, themeMode: $themeMode, lightThemeId: $lightThemeId, darkThemeId: $darkThemeId)';
}


}

/// @nodoc
abstract mixin class $GeneralSettingsCopyWith<$Res>  {
  factory $GeneralSettingsCopyWith(GeneralSettings value, $Res Function(GeneralSettings) _then) = _$GeneralSettingsCopyWithImpl;
@useResult
$Res call({
@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) AppLocale? locale, bool collapseRenotes, SensitiveMediaDisplay sensitive, bool highlightSensitiveMedia, bool animatedMfm, bool advancedMfm, bool showRepliesCount, bool showRenotesCount, bool showReactionsCount, bool showReactionsCountInReactionButton, bool showGapBetweenNotesInTimeline, bool loadRawImages, InstanceTicker instanceTicker, bool showNoteCreatedAt, bool showAvatarsInNote, bool showAvatarsInSubNote, bool squareAvatars, bool showAvatarDecorations, bool showQuoteButtonInNoteFooter, bool showLikeButtonInNoteFooter, bool showClipButtonInNoteFooter, bool showTranslateButtonInNoteFooter, bool showNoteReactionsViewer, bool showSubNoteReactionsViewer, bool showNoteFooter, bool showSubNoteFooter, bool alwaysExpandCw, bool alwaysExpandLongNote, bool alwaysExpandMediaInSubNote, bool mergeReactionsByName, bool alwaysShowAllReactions, MediaListWithOneImageAppearance? mediaListWithOneImageAppearance, BoxFit thumbnailBoxFit, EmojiStyle emojiStyle, String? fontFamily, double fontSize, double lineHeight, double avatarScale, double reactionsDisplayScale, bool limitWidthOfReaction, double noteFooterScale, double noteVerticalPadding, double noteHorizontalPadding,@_ColorConverter() Color? publicNoteBackgroundColor,@_ColorConverter() Color? homeNoteBackgroundColor,@_ColorConverter() Color? followersNoteBackgroundColor,@_ColorConverter() Color? specifiedNoteBackgroundColor, bool emojiPickerUseDialog, double emojiPickerScale, bool emojiPickerAutofocus, bool emojiPickerKeepOpen, bool dataSaverMedia, bool dataSaverAvatar, bool dataSaverUrlPreview, bool disableDataSaverWhenOnWifi, bool reduceAnimation, bool disableShowingAnimatedImages, bool enableEmojiFadeIn, bool forceShowAds, bool useGroupedNotifications, bool showTimelineTabBarAtBottom, bool showMenuButtonInTabBar, List<TimelinesPageButtonType?> timelinesPageButtonTypes, bool showSmallTimelinesPageButtons, bool showSquaredTimelinesPageButtons, bool showTabHeaderInOneLine, bool alwaysShowTabHeader, bool showTimelineLastViewedAt, bool showPopupOnNewNote, bool vibrateNote, bool vibrateNotification, bool enableInfiniteScroll, bool keepScreenOn, bool enableHorizontalSwipe, bool openSensitiveMediaOnDoubleTap, NoteActionType noteTapAction, NoteActionType noteDoubleTapAction, NoteActionType noteLongPressAction, bool confirmBeforePost, bool confirmBeforeRenote, bool confirmBeforeReact, bool confirmBeforeFollow, bool confirmWhenRevealingSensitiveMedia, LaunchMode launchMode, bool enableSpellCheck, bool enablePredictiveBack, ThemeMode themeMode, String lightThemeId, String darkThemeId
});




}
/// @nodoc
class _$GeneralSettingsCopyWithImpl<$Res>
    implements $GeneralSettingsCopyWith<$Res> {
  _$GeneralSettingsCopyWithImpl(this._self, this._then);

  final GeneralSettings _self;
  final $Res Function(GeneralSettings) _then;

/// Create a copy of GeneralSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? locale = freezed,Object? collapseRenotes = null,Object? sensitive = null,Object? highlightSensitiveMedia = null,Object? animatedMfm = null,Object? advancedMfm = null,Object? showRepliesCount = null,Object? showRenotesCount = null,Object? showReactionsCount = null,Object? showReactionsCountInReactionButton = null,Object? showGapBetweenNotesInTimeline = null,Object? loadRawImages = null,Object? instanceTicker = null,Object? showNoteCreatedAt = null,Object? showAvatarsInNote = null,Object? showAvatarsInSubNote = null,Object? squareAvatars = null,Object? showAvatarDecorations = null,Object? showQuoteButtonInNoteFooter = null,Object? showLikeButtonInNoteFooter = null,Object? showClipButtonInNoteFooter = null,Object? showTranslateButtonInNoteFooter = null,Object? showNoteReactionsViewer = null,Object? showSubNoteReactionsViewer = null,Object? showNoteFooter = null,Object? showSubNoteFooter = null,Object? alwaysExpandCw = null,Object? alwaysExpandLongNote = null,Object? alwaysExpandMediaInSubNote = null,Object? mergeReactionsByName = null,Object? alwaysShowAllReactions = null,Object? mediaListWithOneImageAppearance = freezed,Object? thumbnailBoxFit = null,Object? emojiStyle = null,Object? fontFamily = freezed,Object? fontSize = null,Object? lineHeight = null,Object? avatarScale = null,Object? reactionsDisplayScale = null,Object? limitWidthOfReaction = null,Object? noteFooterScale = null,Object? noteVerticalPadding = null,Object? noteHorizontalPadding = null,Object? publicNoteBackgroundColor = freezed,Object? homeNoteBackgroundColor = freezed,Object? followersNoteBackgroundColor = freezed,Object? specifiedNoteBackgroundColor = freezed,Object? emojiPickerUseDialog = null,Object? emojiPickerScale = null,Object? emojiPickerAutofocus = null,Object? emojiPickerKeepOpen = null,Object? dataSaverMedia = null,Object? dataSaverAvatar = null,Object? dataSaverUrlPreview = null,Object? disableDataSaverWhenOnWifi = null,Object? reduceAnimation = null,Object? disableShowingAnimatedImages = null,Object? enableEmojiFadeIn = null,Object? forceShowAds = null,Object? useGroupedNotifications = null,Object? showTimelineTabBarAtBottom = null,Object? showMenuButtonInTabBar = null,Object? timelinesPageButtonTypes = null,Object? showSmallTimelinesPageButtons = null,Object? showSquaredTimelinesPageButtons = null,Object? showTabHeaderInOneLine = null,Object? alwaysShowTabHeader = null,Object? showTimelineLastViewedAt = null,Object? showPopupOnNewNote = null,Object? vibrateNote = null,Object? vibrateNotification = null,Object? enableInfiniteScroll = null,Object? keepScreenOn = null,Object? enableHorizontalSwipe = null,Object? openSensitiveMediaOnDoubleTap = null,Object? noteTapAction = null,Object? noteDoubleTapAction = null,Object? noteLongPressAction = null,Object? confirmBeforePost = null,Object? confirmBeforeRenote = null,Object? confirmBeforeReact = null,Object? confirmBeforeFollow = null,Object? confirmWhenRevealingSensitiveMedia = null,Object? launchMode = null,Object? enableSpellCheck = null,Object? enablePredictiveBack = null,Object? themeMode = null,Object? lightThemeId = null,Object? darkThemeId = null,}) {
  return _then(_self.copyWith(
locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as AppLocale?,collapseRenotes: null == collapseRenotes ? _self.collapseRenotes : collapseRenotes // ignore: cast_nullable_to_non_nullable
as bool,sensitive: null == sensitive ? _self.sensitive : sensitive // ignore: cast_nullable_to_non_nullable
as SensitiveMediaDisplay,highlightSensitiveMedia: null == highlightSensitiveMedia ? _self.highlightSensitiveMedia : highlightSensitiveMedia // ignore: cast_nullable_to_non_nullable
as bool,animatedMfm: null == animatedMfm ? _self.animatedMfm : animatedMfm // ignore: cast_nullable_to_non_nullable
as bool,advancedMfm: null == advancedMfm ? _self.advancedMfm : advancedMfm // ignore: cast_nullable_to_non_nullable
as bool,showRepliesCount: null == showRepliesCount ? _self.showRepliesCount : showRepliesCount // ignore: cast_nullable_to_non_nullable
as bool,showRenotesCount: null == showRenotesCount ? _self.showRenotesCount : showRenotesCount // ignore: cast_nullable_to_non_nullable
as bool,showReactionsCount: null == showReactionsCount ? _self.showReactionsCount : showReactionsCount // ignore: cast_nullable_to_non_nullable
as bool,showReactionsCountInReactionButton: null == showReactionsCountInReactionButton ? _self.showReactionsCountInReactionButton : showReactionsCountInReactionButton // ignore: cast_nullable_to_non_nullable
as bool,showGapBetweenNotesInTimeline: null == showGapBetweenNotesInTimeline ? _self.showGapBetweenNotesInTimeline : showGapBetweenNotesInTimeline // ignore: cast_nullable_to_non_nullable
as bool,loadRawImages: null == loadRawImages ? _self.loadRawImages : loadRawImages // ignore: cast_nullable_to_non_nullable
as bool,instanceTicker: null == instanceTicker ? _self.instanceTicker : instanceTicker // ignore: cast_nullable_to_non_nullable
as InstanceTicker,showNoteCreatedAt: null == showNoteCreatedAt ? _self.showNoteCreatedAt : showNoteCreatedAt // ignore: cast_nullable_to_non_nullable
as bool,showAvatarsInNote: null == showAvatarsInNote ? _self.showAvatarsInNote : showAvatarsInNote // ignore: cast_nullable_to_non_nullable
as bool,showAvatarsInSubNote: null == showAvatarsInSubNote ? _self.showAvatarsInSubNote : showAvatarsInSubNote // ignore: cast_nullable_to_non_nullable
as bool,squareAvatars: null == squareAvatars ? _self.squareAvatars : squareAvatars // ignore: cast_nullable_to_non_nullable
as bool,showAvatarDecorations: null == showAvatarDecorations ? _self.showAvatarDecorations : showAvatarDecorations // ignore: cast_nullable_to_non_nullable
as bool,showQuoteButtonInNoteFooter: null == showQuoteButtonInNoteFooter ? _self.showQuoteButtonInNoteFooter : showQuoteButtonInNoteFooter // ignore: cast_nullable_to_non_nullable
as bool,showLikeButtonInNoteFooter: null == showLikeButtonInNoteFooter ? _self.showLikeButtonInNoteFooter : showLikeButtonInNoteFooter // ignore: cast_nullable_to_non_nullable
as bool,showClipButtonInNoteFooter: null == showClipButtonInNoteFooter ? _self.showClipButtonInNoteFooter : showClipButtonInNoteFooter // ignore: cast_nullable_to_non_nullable
as bool,showTranslateButtonInNoteFooter: null == showTranslateButtonInNoteFooter ? _self.showTranslateButtonInNoteFooter : showTranslateButtonInNoteFooter // ignore: cast_nullable_to_non_nullable
as bool,showNoteReactionsViewer: null == showNoteReactionsViewer ? _self.showNoteReactionsViewer : showNoteReactionsViewer // ignore: cast_nullable_to_non_nullable
as bool,showSubNoteReactionsViewer: null == showSubNoteReactionsViewer ? _self.showSubNoteReactionsViewer : showSubNoteReactionsViewer // ignore: cast_nullable_to_non_nullable
as bool,showNoteFooter: null == showNoteFooter ? _self.showNoteFooter : showNoteFooter // ignore: cast_nullable_to_non_nullable
as bool,showSubNoteFooter: null == showSubNoteFooter ? _self.showSubNoteFooter : showSubNoteFooter // ignore: cast_nullable_to_non_nullable
as bool,alwaysExpandCw: null == alwaysExpandCw ? _self.alwaysExpandCw : alwaysExpandCw // ignore: cast_nullable_to_non_nullable
as bool,alwaysExpandLongNote: null == alwaysExpandLongNote ? _self.alwaysExpandLongNote : alwaysExpandLongNote // ignore: cast_nullable_to_non_nullable
as bool,alwaysExpandMediaInSubNote: null == alwaysExpandMediaInSubNote ? _self.alwaysExpandMediaInSubNote : alwaysExpandMediaInSubNote // ignore: cast_nullable_to_non_nullable
as bool,mergeReactionsByName: null == mergeReactionsByName ? _self.mergeReactionsByName : mergeReactionsByName // ignore: cast_nullable_to_non_nullable
as bool,alwaysShowAllReactions: null == alwaysShowAllReactions ? _self.alwaysShowAllReactions : alwaysShowAllReactions // ignore: cast_nullable_to_non_nullable
as bool,mediaListWithOneImageAppearance: freezed == mediaListWithOneImageAppearance ? _self.mediaListWithOneImageAppearance : mediaListWithOneImageAppearance // ignore: cast_nullable_to_non_nullable
as MediaListWithOneImageAppearance?,thumbnailBoxFit: null == thumbnailBoxFit ? _self.thumbnailBoxFit : thumbnailBoxFit // ignore: cast_nullable_to_non_nullable
as BoxFit,emojiStyle: null == emojiStyle ? _self.emojiStyle : emojiStyle // ignore: cast_nullable_to_non_nullable
as EmojiStyle,fontFamily: freezed == fontFamily ? _self.fontFamily : fontFamily // ignore: cast_nullable_to_non_nullable
as String?,fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,lineHeight: null == lineHeight ? _self.lineHeight : lineHeight // ignore: cast_nullable_to_non_nullable
as double,avatarScale: null == avatarScale ? _self.avatarScale : avatarScale // ignore: cast_nullable_to_non_nullable
as double,reactionsDisplayScale: null == reactionsDisplayScale ? _self.reactionsDisplayScale : reactionsDisplayScale // ignore: cast_nullable_to_non_nullable
as double,limitWidthOfReaction: null == limitWidthOfReaction ? _self.limitWidthOfReaction : limitWidthOfReaction // ignore: cast_nullable_to_non_nullable
as bool,noteFooterScale: null == noteFooterScale ? _self.noteFooterScale : noteFooterScale // ignore: cast_nullable_to_non_nullable
as double,noteVerticalPadding: null == noteVerticalPadding ? _self.noteVerticalPadding : noteVerticalPadding // ignore: cast_nullable_to_non_nullable
as double,noteHorizontalPadding: null == noteHorizontalPadding ? _self.noteHorizontalPadding : noteHorizontalPadding // ignore: cast_nullable_to_non_nullable
as double,publicNoteBackgroundColor: freezed == publicNoteBackgroundColor ? _self.publicNoteBackgroundColor : publicNoteBackgroundColor // ignore: cast_nullable_to_non_nullable
as Color?,homeNoteBackgroundColor: freezed == homeNoteBackgroundColor ? _self.homeNoteBackgroundColor : homeNoteBackgroundColor // ignore: cast_nullable_to_non_nullable
as Color?,followersNoteBackgroundColor: freezed == followersNoteBackgroundColor ? _self.followersNoteBackgroundColor : followersNoteBackgroundColor // ignore: cast_nullable_to_non_nullable
as Color?,specifiedNoteBackgroundColor: freezed == specifiedNoteBackgroundColor ? _self.specifiedNoteBackgroundColor : specifiedNoteBackgroundColor // ignore: cast_nullable_to_non_nullable
as Color?,emojiPickerUseDialog: null == emojiPickerUseDialog ? _self.emojiPickerUseDialog : emojiPickerUseDialog // ignore: cast_nullable_to_non_nullable
as bool,emojiPickerScale: null == emojiPickerScale ? _self.emojiPickerScale : emojiPickerScale // ignore: cast_nullable_to_non_nullable
as double,emojiPickerAutofocus: null == emojiPickerAutofocus ? _self.emojiPickerAutofocus : emojiPickerAutofocus // ignore: cast_nullable_to_non_nullable
as bool,emojiPickerKeepOpen: null == emojiPickerKeepOpen ? _self.emojiPickerKeepOpen : emojiPickerKeepOpen // ignore: cast_nullable_to_non_nullable
as bool,dataSaverMedia: null == dataSaverMedia ? _self.dataSaverMedia : dataSaverMedia // ignore: cast_nullable_to_non_nullable
as bool,dataSaverAvatar: null == dataSaverAvatar ? _self.dataSaverAvatar : dataSaverAvatar // ignore: cast_nullable_to_non_nullable
as bool,dataSaverUrlPreview: null == dataSaverUrlPreview ? _self.dataSaverUrlPreview : dataSaverUrlPreview // ignore: cast_nullable_to_non_nullable
as bool,disableDataSaverWhenOnWifi: null == disableDataSaverWhenOnWifi ? _self.disableDataSaverWhenOnWifi : disableDataSaverWhenOnWifi // ignore: cast_nullable_to_non_nullable
as bool,reduceAnimation: null == reduceAnimation ? _self.reduceAnimation : reduceAnimation // ignore: cast_nullable_to_non_nullable
as bool,disableShowingAnimatedImages: null == disableShowingAnimatedImages ? _self.disableShowingAnimatedImages : disableShowingAnimatedImages // ignore: cast_nullable_to_non_nullable
as bool,enableEmojiFadeIn: null == enableEmojiFadeIn ? _self.enableEmojiFadeIn : enableEmojiFadeIn // ignore: cast_nullable_to_non_nullable
as bool,forceShowAds: null == forceShowAds ? _self.forceShowAds : forceShowAds // ignore: cast_nullable_to_non_nullable
as bool,useGroupedNotifications: null == useGroupedNotifications ? _self.useGroupedNotifications : useGroupedNotifications // ignore: cast_nullable_to_non_nullable
as bool,showTimelineTabBarAtBottom: null == showTimelineTabBarAtBottom ? _self.showTimelineTabBarAtBottom : showTimelineTabBarAtBottom // ignore: cast_nullable_to_non_nullable
as bool,showMenuButtonInTabBar: null == showMenuButtonInTabBar ? _self.showMenuButtonInTabBar : showMenuButtonInTabBar // ignore: cast_nullable_to_non_nullable
as bool,timelinesPageButtonTypes: null == timelinesPageButtonTypes ? _self.timelinesPageButtonTypes : timelinesPageButtonTypes // ignore: cast_nullable_to_non_nullable
as List<TimelinesPageButtonType?>,showSmallTimelinesPageButtons: null == showSmallTimelinesPageButtons ? _self.showSmallTimelinesPageButtons : showSmallTimelinesPageButtons // ignore: cast_nullable_to_non_nullable
as bool,showSquaredTimelinesPageButtons: null == showSquaredTimelinesPageButtons ? _self.showSquaredTimelinesPageButtons : showSquaredTimelinesPageButtons // ignore: cast_nullable_to_non_nullable
as bool,showTabHeaderInOneLine: null == showTabHeaderInOneLine ? _self.showTabHeaderInOneLine : showTabHeaderInOneLine // ignore: cast_nullable_to_non_nullable
as bool,alwaysShowTabHeader: null == alwaysShowTabHeader ? _self.alwaysShowTabHeader : alwaysShowTabHeader // ignore: cast_nullable_to_non_nullable
as bool,showTimelineLastViewedAt: null == showTimelineLastViewedAt ? _self.showTimelineLastViewedAt : showTimelineLastViewedAt // ignore: cast_nullable_to_non_nullable
as bool,showPopupOnNewNote: null == showPopupOnNewNote ? _self.showPopupOnNewNote : showPopupOnNewNote // ignore: cast_nullable_to_non_nullable
as bool,vibrateNote: null == vibrateNote ? _self.vibrateNote : vibrateNote // ignore: cast_nullable_to_non_nullable
as bool,vibrateNotification: null == vibrateNotification ? _self.vibrateNotification : vibrateNotification // ignore: cast_nullable_to_non_nullable
as bool,enableInfiniteScroll: null == enableInfiniteScroll ? _self.enableInfiniteScroll : enableInfiniteScroll // ignore: cast_nullable_to_non_nullable
as bool,keepScreenOn: null == keepScreenOn ? _self.keepScreenOn : keepScreenOn // ignore: cast_nullable_to_non_nullable
as bool,enableHorizontalSwipe: null == enableHorizontalSwipe ? _self.enableHorizontalSwipe : enableHorizontalSwipe // ignore: cast_nullable_to_non_nullable
as bool,openSensitiveMediaOnDoubleTap: null == openSensitiveMediaOnDoubleTap ? _self.openSensitiveMediaOnDoubleTap : openSensitiveMediaOnDoubleTap // ignore: cast_nullable_to_non_nullable
as bool,noteTapAction: null == noteTapAction ? _self.noteTapAction : noteTapAction // ignore: cast_nullable_to_non_nullable
as NoteActionType,noteDoubleTapAction: null == noteDoubleTapAction ? _self.noteDoubleTapAction : noteDoubleTapAction // ignore: cast_nullable_to_non_nullable
as NoteActionType,noteLongPressAction: null == noteLongPressAction ? _self.noteLongPressAction : noteLongPressAction // ignore: cast_nullable_to_non_nullable
as NoteActionType,confirmBeforePost: null == confirmBeforePost ? _self.confirmBeforePost : confirmBeforePost // ignore: cast_nullable_to_non_nullable
as bool,confirmBeforeRenote: null == confirmBeforeRenote ? _self.confirmBeforeRenote : confirmBeforeRenote // ignore: cast_nullable_to_non_nullable
as bool,confirmBeforeReact: null == confirmBeforeReact ? _self.confirmBeforeReact : confirmBeforeReact // ignore: cast_nullable_to_non_nullable
as bool,confirmBeforeFollow: null == confirmBeforeFollow ? _self.confirmBeforeFollow : confirmBeforeFollow // ignore: cast_nullable_to_non_nullable
as bool,confirmWhenRevealingSensitiveMedia: null == confirmWhenRevealingSensitiveMedia ? _self.confirmWhenRevealingSensitiveMedia : confirmWhenRevealingSensitiveMedia // ignore: cast_nullable_to_non_nullable
as bool,launchMode: null == launchMode ? _self.launchMode : launchMode // ignore: cast_nullable_to_non_nullable
as LaunchMode,enableSpellCheck: null == enableSpellCheck ? _self.enableSpellCheck : enableSpellCheck // ignore: cast_nullable_to_non_nullable
as bool,enablePredictiveBack: null == enablePredictiveBack ? _self.enablePredictiveBack : enablePredictiveBack // ignore: cast_nullable_to_non_nullable
as bool,themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,lightThemeId: null == lightThemeId ? _self.lightThemeId : lightThemeId // ignore: cast_nullable_to_non_nullable
as String,darkThemeId: null == darkThemeId ? _self.darkThemeId : darkThemeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GeneralSettings implements GeneralSettings {
  const _GeneralSettings({@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) this.locale, this.collapseRenotes = true, this.sensitive = SensitiveMediaDisplay.respect, this.highlightSensitiveMedia = false, this.animatedMfm = true, this.advancedMfm = true, this.showRepliesCount = true, this.showRenotesCount = true, this.showReactionsCount = false, this.showReactionsCountInReactionButton = true, this.showGapBetweenNotesInTimeline = false, this.loadRawImages = false, this.instanceTicker = InstanceTicker.remote, this.showNoteCreatedAt = false, this.showAvatarsInNote = true, this.showAvatarsInSubNote = true, this.squareAvatars = false, this.showAvatarDecorations = true, this.showQuoteButtonInNoteFooter = true, this.showLikeButtonInNoteFooter = false, this.showClipButtonInNoteFooter = false, this.showTranslateButtonInNoteFooter = false, this.showNoteReactionsViewer = true, this.showSubNoteReactionsViewer = false, this.showNoteFooter = true, this.showSubNoteFooter = false, this.alwaysExpandCw = false, this.alwaysExpandLongNote = false, this.alwaysExpandMediaInSubNote = false, this.mergeReactionsByName = false, this.alwaysShowAllReactions = false, this.mediaListWithOneImageAppearance, this.thumbnailBoxFit = BoxFit.contain, this.emojiStyle = EmojiStyle.twemoji, this.fontFamily, this.fontSize = defaultFontSize, this.lineHeight = defaultLineHeight, this.avatarScale = defaultAvatarScale, this.reactionsDisplayScale = 1.0, this.limitWidthOfReaction = true, this.noteFooterScale = 1.0, this.noteVerticalPadding = defaultNoteVerticalPadding, this.noteHorizontalPadding = defaultNoteHorizontalPadding, @_ColorConverter() this.publicNoteBackgroundColor, @_ColorConverter() this.homeNoteBackgroundColor, @_ColorConverter() this.followersNoteBackgroundColor, @_ColorConverter() this.specifiedNoteBackgroundColor, this.emojiPickerUseDialog = false, this.emojiPickerScale = 1.0, this.emojiPickerAutofocus = true, this.emojiPickerKeepOpen = false, this.dataSaverMedia = false, this.dataSaverAvatar = false, this.dataSaverUrlPreview = false, this.disableDataSaverWhenOnWifi = false, this.reduceAnimation = false, this.disableShowingAnimatedImages = false, this.enableEmojiFadeIn = false, this.forceShowAds = false, this.useGroupedNotifications = false, this.showTimelineTabBarAtBottom = false, this.showMenuButtonInTabBar = false, final  List<TimelinesPageButtonType?> timelinesPageButtonTypes = defaultTimelinesPageButtonTypes, this.showSmallTimelinesPageButtons = false, this.showSquaredTimelinesPageButtons = false, this.showTabHeaderInOneLine = true, this.alwaysShowTabHeader = false, this.showTimelineLastViewedAt = true, this.showPopupOnNewNote = true, this.vibrateNote = false, this.vibrateNotification = false, this.enableInfiniteScroll = true, this.keepScreenOn = false, this.enableHorizontalSwipe = true, this.openSensitiveMediaOnDoubleTap = false, this.noteTapAction = NoteActionType.expand, this.noteDoubleTapAction = NoteActionType.menu, this.noteLongPressAction = NoteActionType.reaction, this.confirmBeforePost = true, this.confirmBeforeRenote = true, this.confirmBeforeReact = true, this.confirmBeforeFollow = true, this.confirmWhenRevealingSensitiveMedia = false, this.launchMode = LaunchMode.externalApplication, this.enableSpellCheck = false, this.enablePredictiveBack = false, this.themeMode = ThemeMode.system, this.lightThemeId = 'a58a0abb-ff8c-476a-8dec-0ad7837e7e96', this.darkThemeId = '66e7e5a9-cd43-42cd-837d-12f47841fa34'}): _timelinesPageButtonTypes = timelinesPageButtonTypes;
  factory _GeneralSettings.fromJson(Map<String, dynamic> json) => _$GeneralSettingsFromJson(json);

// Locale
// ignore: invalid_annotation_target
@override@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) final  AppLocale? locale;
// Note display
@override@JsonKey() final  bool collapseRenotes;
@override@JsonKey() final  SensitiveMediaDisplay sensitive;
@override@JsonKey() final  bool highlightSensitiveMedia;
@override@JsonKey() final  bool animatedMfm;
@override@JsonKey() final  bool advancedMfm;
@override@JsonKey() final  bool showRepliesCount;
@override@JsonKey() final  bool showRenotesCount;
@override@JsonKey() final  bool showReactionsCount;
@override@JsonKey() final  bool showReactionsCountInReactionButton;
@override@JsonKey() final  bool showGapBetweenNotesInTimeline;
@override@JsonKey() final  bool loadRawImages;
@override@JsonKey() final  InstanceTicker instanceTicker;
@override@JsonKey() final  bool showNoteCreatedAt;
@override@JsonKey() final  bool showAvatarsInNote;
@override@JsonKey() final  bool showAvatarsInSubNote;
@override@JsonKey() final  bool squareAvatars;
@override@JsonKey() final  bool showAvatarDecorations;
@override@JsonKey() final  bool showQuoteButtonInNoteFooter;
@override@JsonKey() final  bool showLikeButtonInNoteFooter;
@override@JsonKey() final  bool showClipButtonInNoteFooter;
@override@JsonKey() final  bool showTranslateButtonInNoteFooter;
@override@JsonKey() final  bool showNoteReactionsViewer;
@override@JsonKey() final  bool showSubNoteReactionsViewer;
@override@JsonKey() final  bool showNoteFooter;
@override@JsonKey() final  bool showSubNoteFooter;
@override@JsonKey() final  bool alwaysExpandCw;
@override@JsonKey() final  bool alwaysExpandLongNote;
@override@JsonKey() final  bool alwaysExpandMediaInSubNote;
@override@JsonKey() final  bool mergeReactionsByName;
@override@JsonKey() final  bool alwaysShowAllReactions;
@override final  MediaListWithOneImageAppearance? mediaListWithOneImageAppearance;
@override@JsonKey() final  BoxFit thumbnailBoxFit;
@override@JsonKey() final  EmojiStyle emojiStyle;
@override final  String? fontFamily;
@override@JsonKey() final  double fontSize;
@override@JsonKey() final  double lineHeight;
@override@JsonKey() final  double avatarScale;
@override@JsonKey() final  double reactionsDisplayScale;
@override@JsonKey() final  bool limitWidthOfReaction;
@override@JsonKey() final  double noteFooterScale;
@override@JsonKey() final  double noteVerticalPadding;
@override@JsonKey() final  double noteHorizontalPadding;
@override@_ColorConverter() final  Color? publicNoteBackgroundColor;
@override@_ColorConverter() final  Color? homeNoteBackgroundColor;
@override@_ColorConverter() final  Color? followersNoteBackgroundColor;
@override@_ColorConverter() final  Color? specifiedNoteBackgroundColor;
// Emoji picker
@override@JsonKey() final  bool emojiPickerUseDialog;
@override@JsonKey() final  double emojiPickerScale;
@override@JsonKey() final  bool emojiPickerAutofocus;
@override@JsonKey() final  bool emojiPickerKeepOpen;
// Appearance
@override@JsonKey() final  bool dataSaverMedia;
@override@JsonKey() final  bool dataSaverAvatar;
@override@JsonKey() final  bool dataSaverUrlPreview;
@override@JsonKey() final  bool disableDataSaverWhenOnWifi;
@override@JsonKey() final  bool reduceAnimation;
@override@JsonKey() final  bool disableShowingAnimatedImages;
@override@JsonKey() final  bool enableEmojiFadeIn;
@override@JsonKey() final  bool forceShowAds;
@override@JsonKey() final  bool useGroupedNotifications;
@override@JsonKey() final  bool showTimelineTabBarAtBottom;
@override@JsonKey() final  bool showMenuButtonInTabBar;
 final  List<TimelinesPageButtonType?> _timelinesPageButtonTypes;
@override@JsonKey() List<TimelinesPageButtonType?> get timelinesPageButtonTypes {
  if (_timelinesPageButtonTypes is EqualUnmodifiableListView) return _timelinesPageButtonTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_timelinesPageButtonTypes);
}

@override@JsonKey() final  bool showSmallTimelinesPageButtons;
@override@JsonKey() final  bool showSquaredTimelinesPageButtons;
@override@JsonKey() final  bool showTabHeaderInOneLine;
@override@JsonKey() final  bool alwaysShowTabHeader;
@override@JsonKey() final  bool showTimelineLastViewedAt;
@override@JsonKey() final  bool showPopupOnNewNote;
@override@JsonKey() final  bool vibrateNote;
@override@JsonKey() final  bool vibrateNotification;
// Behavior
@override@JsonKey() final  bool enableInfiniteScroll;
@override@JsonKey() final  bool keepScreenOn;
@override@JsonKey() final  bool enableHorizontalSwipe;
@override@JsonKey() final  bool openSensitiveMediaOnDoubleTap;
@override@JsonKey() final  NoteActionType noteTapAction;
@override@JsonKey() final  NoteActionType noteDoubleTapAction;
@override@JsonKey() final  NoteActionType noteLongPressAction;
@override@JsonKey() final  bool confirmBeforePost;
@override@JsonKey() final  bool confirmBeforeRenote;
@override@JsonKey() final  bool confirmBeforeReact;
@override@JsonKey() final  bool confirmBeforeFollow;
@override@JsonKey() final  bool confirmWhenRevealingSensitiveMedia;
@override@JsonKey() final  LaunchMode launchMode;
@override@JsonKey() final  bool enableSpellCheck;
@override@JsonKey() final  bool enablePredictiveBack;
// Theme
@override@JsonKey() final  ThemeMode themeMode;
@override@JsonKey() final  String lightThemeId;
@override@JsonKey() final  String darkThemeId;

/// Create a copy of GeneralSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneralSettingsCopyWith<_GeneralSettings> get copyWith => __$GeneralSettingsCopyWithImpl<_GeneralSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeneralSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneralSettings&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.collapseRenotes, collapseRenotes) || other.collapseRenotes == collapseRenotes)&&(identical(other.sensitive, sensitive) || other.sensitive == sensitive)&&(identical(other.highlightSensitiveMedia, highlightSensitiveMedia) || other.highlightSensitiveMedia == highlightSensitiveMedia)&&(identical(other.animatedMfm, animatedMfm) || other.animatedMfm == animatedMfm)&&(identical(other.advancedMfm, advancedMfm) || other.advancedMfm == advancedMfm)&&(identical(other.showRepliesCount, showRepliesCount) || other.showRepliesCount == showRepliesCount)&&(identical(other.showRenotesCount, showRenotesCount) || other.showRenotesCount == showRenotesCount)&&(identical(other.showReactionsCount, showReactionsCount) || other.showReactionsCount == showReactionsCount)&&(identical(other.showReactionsCountInReactionButton, showReactionsCountInReactionButton) || other.showReactionsCountInReactionButton == showReactionsCountInReactionButton)&&(identical(other.showGapBetweenNotesInTimeline, showGapBetweenNotesInTimeline) || other.showGapBetweenNotesInTimeline == showGapBetweenNotesInTimeline)&&(identical(other.loadRawImages, loadRawImages) || other.loadRawImages == loadRawImages)&&(identical(other.instanceTicker, instanceTicker) || other.instanceTicker == instanceTicker)&&(identical(other.showNoteCreatedAt, showNoteCreatedAt) || other.showNoteCreatedAt == showNoteCreatedAt)&&(identical(other.showAvatarsInNote, showAvatarsInNote) || other.showAvatarsInNote == showAvatarsInNote)&&(identical(other.showAvatarsInSubNote, showAvatarsInSubNote) || other.showAvatarsInSubNote == showAvatarsInSubNote)&&(identical(other.squareAvatars, squareAvatars) || other.squareAvatars == squareAvatars)&&(identical(other.showAvatarDecorations, showAvatarDecorations) || other.showAvatarDecorations == showAvatarDecorations)&&(identical(other.showQuoteButtonInNoteFooter, showQuoteButtonInNoteFooter) || other.showQuoteButtonInNoteFooter == showQuoteButtonInNoteFooter)&&(identical(other.showLikeButtonInNoteFooter, showLikeButtonInNoteFooter) || other.showLikeButtonInNoteFooter == showLikeButtonInNoteFooter)&&(identical(other.showClipButtonInNoteFooter, showClipButtonInNoteFooter) || other.showClipButtonInNoteFooter == showClipButtonInNoteFooter)&&(identical(other.showTranslateButtonInNoteFooter, showTranslateButtonInNoteFooter) || other.showTranslateButtonInNoteFooter == showTranslateButtonInNoteFooter)&&(identical(other.showNoteReactionsViewer, showNoteReactionsViewer) || other.showNoteReactionsViewer == showNoteReactionsViewer)&&(identical(other.showSubNoteReactionsViewer, showSubNoteReactionsViewer) || other.showSubNoteReactionsViewer == showSubNoteReactionsViewer)&&(identical(other.showNoteFooter, showNoteFooter) || other.showNoteFooter == showNoteFooter)&&(identical(other.showSubNoteFooter, showSubNoteFooter) || other.showSubNoteFooter == showSubNoteFooter)&&(identical(other.alwaysExpandCw, alwaysExpandCw) || other.alwaysExpandCw == alwaysExpandCw)&&(identical(other.alwaysExpandLongNote, alwaysExpandLongNote) || other.alwaysExpandLongNote == alwaysExpandLongNote)&&(identical(other.alwaysExpandMediaInSubNote, alwaysExpandMediaInSubNote) || other.alwaysExpandMediaInSubNote == alwaysExpandMediaInSubNote)&&(identical(other.mergeReactionsByName, mergeReactionsByName) || other.mergeReactionsByName == mergeReactionsByName)&&(identical(other.alwaysShowAllReactions, alwaysShowAllReactions) || other.alwaysShowAllReactions == alwaysShowAllReactions)&&(identical(other.mediaListWithOneImageAppearance, mediaListWithOneImageAppearance) || other.mediaListWithOneImageAppearance == mediaListWithOneImageAppearance)&&(identical(other.thumbnailBoxFit, thumbnailBoxFit) || other.thumbnailBoxFit == thumbnailBoxFit)&&(identical(other.emojiStyle, emojiStyle) || other.emojiStyle == emojiStyle)&&(identical(other.fontFamily, fontFamily) || other.fontFamily == fontFamily)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.lineHeight, lineHeight) || other.lineHeight == lineHeight)&&(identical(other.avatarScale, avatarScale) || other.avatarScale == avatarScale)&&(identical(other.reactionsDisplayScale, reactionsDisplayScale) || other.reactionsDisplayScale == reactionsDisplayScale)&&(identical(other.limitWidthOfReaction, limitWidthOfReaction) || other.limitWidthOfReaction == limitWidthOfReaction)&&(identical(other.noteFooterScale, noteFooterScale) || other.noteFooterScale == noteFooterScale)&&(identical(other.noteVerticalPadding, noteVerticalPadding) || other.noteVerticalPadding == noteVerticalPadding)&&(identical(other.noteHorizontalPadding, noteHorizontalPadding) || other.noteHorizontalPadding == noteHorizontalPadding)&&(identical(other.publicNoteBackgroundColor, publicNoteBackgroundColor) || other.publicNoteBackgroundColor == publicNoteBackgroundColor)&&(identical(other.homeNoteBackgroundColor, homeNoteBackgroundColor) || other.homeNoteBackgroundColor == homeNoteBackgroundColor)&&(identical(other.followersNoteBackgroundColor, followersNoteBackgroundColor) || other.followersNoteBackgroundColor == followersNoteBackgroundColor)&&(identical(other.specifiedNoteBackgroundColor, specifiedNoteBackgroundColor) || other.specifiedNoteBackgroundColor == specifiedNoteBackgroundColor)&&(identical(other.emojiPickerUseDialog, emojiPickerUseDialog) || other.emojiPickerUseDialog == emojiPickerUseDialog)&&(identical(other.emojiPickerScale, emojiPickerScale) || other.emojiPickerScale == emojiPickerScale)&&(identical(other.emojiPickerAutofocus, emojiPickerAutofocus) || other.emojiPickerAutofocus == emojiPickerAutofocus)&&(identical(other.emojiPickerKeepOpen, emojiPickerKeepOpen) || other.emojiPickerKeepOpen == emojiPickerKeepOpen)&&(identical(other.dataSaverMedia, dataSaverMedia) || other.dataSaverMedia == dataSaverMedia)&&(identical(other.dataSaverAvatar, dataSaverAvatar) || other.dataSaverAvatar == dataSaverAvatar)&&(identical(other.dataSaverUrlPreview, dataSaverUrlPreview) || other.dataSaverUrlPreview == dataSaverUrlPreview)&&(identical(other.disableDataSaverWhenOnWifi, disableDataSaverWhenOnWifi) || other.disableDataSaverWhenOnWifi == disableDataSaverWhenOnWifi)&&(identical(other.reduceAnimation, reduceAnimation) || other.reduceAnimation == reduceAnimation)&&(identical(other.disableShowingAnimatedImages, disableShowingAnimatedImages) || other.disableShowingAnimatedImages == disableShowingAnimatedImages)&&(identical(other.enableEmojiFadeIn, enableEmojiFadeIn) || other.enableEmojiFadeIn == enableEmojiFadeIn)&&(identical(other.forceShowAds, forceShowAds) || other.forceShowAds == forceShowAds)&&(identical(other.useGroupedNotifications, useGroupedNotifications) || other.useGroupedNotifications == useGroupedNotifications)&&(identical(other.showTimelineTabBarAtBottom, showTimelineTabBarAtBottom) || other.showTimelineTabBarAtBottom == showTimelineTabBarAtBottom)&&(identical(other.showMenuButtonInTabBar, showMenuButtonInTabBar) || other.showMenuButtonInTabBar == showMenuButtonInTabBar)&&const DeepCollectionEquality().equals(other._timelinesPageButtonTypes, _timelinesPageButtonTypes)&&(identical(other.showSmallTimelinesPageButtons, showSmallTimelinesPageButtons) || other.showSmallTimelinesPageButtons == showSmallTimelinesPageButtons)&&(identical(other.showSquaredTimelinesPageButtons, showSquaredTimelinesPageButtons) || other.showSquaredTimelinesPageButtons == showSquaredTimelinesPageButtons)&&(identical(other.showTabHeaderInOneLine, showTabHeaderInOneLine) || other.showTabHeaderInOneLine == showTabHeaderInOneLine)&&(identical(other.alwaysShowTabHeader, alwaysShowTabHeader) || other.alwaysShowTabHeader == alwaysShowTabHeader)&&(identical(other.showTimelineLastViewedAt, showTimelineLastViewedAt) || other.showTimelineLastViewedAt == showTimelineLastViewedAt)&&(identical(other.showPopupOnNewNote, showPopupOnNewNote) || other.showPopupOnNewNote == showPopupOnNewNote)&&(identical(other.vibrateNote, vibrateNote) || other.vibrateNote == vibrateNote)&&(identical(other.vibrateNotification, vibrateNotification) || other.vibrateNotification == vibrateNotification)&&(identical(other.enableInfiniteScroll, enableInfiniteScroll) || other.enableInfiniteScroll == enableInfiniteScroll)&&(identical(other.keepScreenOn, keepScreenOn) || other.keepScreenOn == keepScreenOn)&&(identical(other.enableHorizontalSwipe, enableHorizontalSwipe) || other.enableHorizontalSwipe == enableHorizontalSwipe)&&(identical(other.openSensitiveMediaOnDoubleTap, openSensitiveMediaOnDoubleTap) || other.openSensitiveMediaOnDoubleTap == openSensitiveMediaOnDoubleTap)&&(identical(other.noteTapAction, noteTapAction) || other.noteTapAction == noteTapAction)&&(identical(other.noteDoubleTapAction, noteDoubleTapAction) || other.noteDoubleTapAction == noteDoubleTapAction)&&(identical(other.noteLongPressAction, noteLongPressAction) || other.noteLongPressAction == noteLongPressAction)&&(identical(other.confirmBeforePost, confirmBeforePost) || other.confirmBeforePost == confirmBeforePost)&&(identical(other.confirmBeforeRenote, confirmBeforeRenote) || other.confirmBeforeRenote == confirmBeforeRenote)&&(identical(other.confirmBeforeReact, confirmBeforeReact) || other.confirmBeforeReact == confirmBeforeReact)&&(identical(other.confirmBeforeFollow, confirmBeforeFollow) || other.confirmBeforeFollow == confirmBeforeFollow)&&(identical(other.confirmWhenRevealingSensitiveMedia, confirmWhenRevealingSensitiveMedia) || other.confirmWhenRevealingSensitiveMedia == confirmWhenRevealingSensitiveMedia)&&(identical(other.launchMode, launchMode) || other.launchMode == launchMode)&&(identical(other.enableSpellCheck, enableSpellCheck) || other.enableSpellCheck == enableSpellCheck)&&(identical(other.enablePredictiveBack, enablePredictiveBack) || other.enablePredictiveBack == enablePredictiveBack)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.lightThemeId, lightThemeId) || other.lightThemeId == lightThemeId)&&(identical(other.darkThemeId, darkThemeId) || other.darkThemeId == darkThemeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,locale,collapseRenotes,sensitive,highlightSensitiveMedia,animatedMfm,advancedMfm,showRepliesCount,showRenotesCount,showReactionsCount,showReactionsCountInReactionButton,showGapBetweenNotesInTimeline,loadRawImages,instanceTicker,showNoteCreatedAt,showAvatarsInNote,showAvatarsInSubNote,squareAvatars,showAvatarDecorations,showQuoteButtonInNoteFooter,showLikeButtonInNoteFooter,showClipButtonInNoteFooter,showTranslateButtonInNoteFooter,showNoteReactionsViewer,showSubNoteReactionsViewer,showNoteFooter,showSubNoteFooter,alwaysExpandCw,alwaysExpandLongNote,alwaysExpandMediaInSubNote,mergeReactionsByName,alwaysShowAllReactions,mediaListWithOneImageAppearance,thumbnailBoxFit,emojiStyle,fontFamily,fontSize,lineHeight,avatarScale,reactionsDisplayScale,limitWidthOfReaction,noteFooterScale,noteVerticalPadding,noteHorizontalPadding,publicNoteBackgroundColor,homeNoteBackgroundColor,followersNoteBackgroundColor,specifiedNoteBackgroundColor,emojiPickerUseDialog,emojiPickerScale,emojiPickerAutofocus,emojiPickerKeepOpen,dataSaverMedia,dataSaverAvatar,dataSaverUrlPreview,disableDataSaverWhenOnWifi,reduceAnimation,disableShowingAnimatedImages,enableEmojiFadeIn,forceShowAds,useGroupedNotifications,showTimelineTabBarAtBottom,showMenuButtonInTabBar,const DeepCollectionEquality().hash(_timelinesPageButtonTypes),showSmallTimelinesPageButtons,showSquaredTimelinesPageButtons,showTabHeaderInOneLine,alwaysShowTabHeader,showTimelineLastViewedAt,showPopupOnNewNote,vibrateNote,vibrateNotification,enableInfiniteScroll,keepScreenOn,enableHorizontalSwipe,openSensitiveMediaOnDoubleTap,noteTapAction,noteDoubleTapAction,noteLongPressAction,confirmBeforePost,confirmBeforeRenote,confirmBeforeReact,confirmBeforeFollow,confirmWhenRevealingSensitiveMedia,launchMode,enableSpellCheck,enablePredictiveBack,themeMode,lightThemeId,darkThemeId]);

@override
String toString() {
  return 'GeneralSettings(locale: $locale, collapseRenotes: $collapseRenotes, sensitive: $sensitive, highlightSensitiveMedia: $highlightSensitiveMedia, animatedMfm: $animatedMfm, advancedMfm: $advancedMfm, showRepliesCount: $showRepliesCount, showRenotesCount: $showRenotesCount, showReactionsCount: $showReactionsCount, showReactionsCountInReactionButton: $showReactionsCountInReactionButton, showGapBetweenNotesInTimeline: $showGapBetweenNotesInTimeline, loadRawImages: $loadRawImages, instanceTicker: $instanceTicker, showNoteCreatedAt: $showNoteCreatedAt, showAvatarsInNote: $showAvatarsInNote, showAvatarsInSubNote: $showAvatarsInSubNote, squareAvatars: $squareAvatars, showAvatarDecorations: $showAvatarDecorations, showQuoteButtonInNoteFooter: $showQuoteButtonInNoteFooter, showLikeButtonInNoteFooter: $showLikeButtonInNoteFooter, showClipButtonInNoteFooter: $showClipButtonInNoteFooter, showTranslateButtonInNoteFooter: $showTranslateButtonInNoteFooter, showNoteReactionsViewer: $showNoteReactionsViewer, showSubNoteReactionsViewer: $showSubNoteReactionsViewer, showNoteFooter: $showNoteFooter, showSubNoteFooter: $showSubNoteFooter, alwaysExpandCw: $alwaysExpandCw, alwaysExpandLongNote: $alwaysExpandLongNote, alwaysExpandMediaInSubNote: $alwaysExpandMediaInSubNote, mergeReactionsByName: $mergeReactionsByName, alwaysShowAllReactions: $alwaysShowAllReactions, mediaListWithOneImageAppearance: $mediaListWithOneImageAppearance, thumbnailBoxFit: $thumbnailBoxFit, emojiStyle: $emojiStyle, fontFamily: $fontFamily, fontSize: $fontSize, lineHeight: $lineHeight, avatarScale: $avatarScale, reactionsDisplayScale: $reactionsDisplayScale, limitWidthOfReaction: $limitWidthOfReaction, noteFooterScale: $noteFooterScale, noteVerticalPadding: $noteVerticalPadding, noteHorizontalPadding: $noteHorizontalPadding, publicNoteBackgroundColor: $publicNoteBackgroundColor, homeNoteBackgroundColor: $homeNoteBackgroundColor, followersNoteBackgroundColor: $followersNoteBackgroundColor, specifiedNoteBackgroundColor: $specifiedNoteBackgroundColor, emojiPickerUseDialog: $emojiPickerUseDialog, emojiPickerScale: $emojiPickerScale, emojiPickerAutofocus: $emojiPickerAutofocus, emojiPickerKeepOpen: $emojiPickerKeepOpen, dataSaverMedia: $dataSaverMedia, dataSaverAvatar: $dataSaverAvatar, dataSaverUrlPreview: $dataSaverUrlPreview, disableDataSaverWhenOnWifi: $disableDataSaverWhenOnWifi, reduceAnimation: $reduceAnimation, disableShowingAnimatedImages: $disableShowingAnimatedImages, enableEmojiFadeIn: $enableEmojiFadeIn, forceShowAds: $forceShowAds, useGroupedNotifications: $useGroupedNotifications, showTimelineTabBarAtBottom: $showTimelineTabBarAtBottom, showMenuButtonInTabBar: $showMenuButtonInTabBar, timelinesPageButtonTypes: $timelinesPageButtonTypes, showSmallTimelinesPageButtons: $showSmallTimelinesPageButtons, showSquaredTimelinesPageButtons: $showSquaredTimelinesPageButtons, showTabHeaderInOneLine: $showTabHeaderInOneLine, alwaysShowTabHeader: $alwaysShowTabHeader, showTimelineLastViewedAt: $showTimelineLastViewedAt, showPopupOnNewNote: $showPopupOnNewNote, vibrateNote: $vibrateNote, vibrateNotification: $vibrateNotification, enableInfiniteScroll: $enableInfiniteScroll, keepScreenOn: $keepScreenOn, enableHorizontalSwipe: $enableHorizontalSwipe, openSensitiveMediaOnDoubleTap: $openSensitiveMediaOnDoubleTap, noteTapAction: $noteTapAction, noteDoubleTapAction: $noteDoubleTapAction, noteLongPressAction: $noteLongPressAction, confirmBeforePost: $confirmBeforePost, confirmBeforeRenote: $confirmBeforeRenote, confirmBeforeReact: $confirmBeforeReact, confirmBeforeFollow: $confirmBeforeFollow, confirmWhenRevealingSensitiveMedia: $confirmWhenRevealingSensitiveMedia, launchMode: $launchMode, enableSpellCheck: $enableSpellCheck, enablePredictiveBack: $enablePredictiveBack, themeMode: $themeMode, lightThemeId: $lightThemeId, darkThemeId: $darkThemeId)';
}


}

/// @nodoc
abstract mixin class _$GeneralSettingsCopyWith<$Res> implements $GeneralSettingsCopyWith<$Res> {
  factory _$GeneralSettingsCopyWith(_GeneralSettings value, $Res Function(_GeneralSettings) _then) = __$GeneralSettingsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) AppLocale? locale, bool collapseRenotes, SensitiveMediaDisplay sensitive, bool highlightSensitiveMedia, bool animatedMfm, bool advancedMfm, bool showRepliesCount, bool showRenotesCount, bool showReactionsCount, bool showReactionsCountInReactionButton, bool showGapBetweenNotesInTimeline, bool loadRawImages, InstanceTicker instanceTicker, bool showNoteCreatedAt, bool showAvatarsInNote, bool showAvatarsInSubNote, bool squareAvatars, bool showAvatarDecorations, bool showQuoteButtonInNoteFooter, bool showLikeButtonInNoteFooter, bool showClipButtonInNoteFooter, bool showTranslateButtonInNoteFooter, bool showNoteReactionsViewer, bool showSubNoteReactionsViewer, bool showNoteFooter, bool showSubNoteFooter, bool alwaysExpandCw, bool alwaysExpandLongNote, bool alwaysExpandMediaInSubNote, bool mergeReactionsByName, bool alwaysShowAllReactions, MediaListWithOneImageAppearance? mediaListWithOneImageAppearance, BoxFit thumbnailBoxFit, EmojiStyle emojiStyle, String? fontFamily, double fontSize, double lineHeight, double avatarScale, double reactionsDisplayScale, bool limitWidthOfReaction, double noteFooterScale, double noteVerticalPadding, double noteHorizontalPadding,@_ColorConverter() Color? publicNoteBackgroundColor,@_ColorConverter() Color? homeNoteBackgroundColor,@_ColorConverter() Color? followersNoteBackgroundColor,@_ColorConverter() Color? specifiedNoteBackgroundColor, bool emojiPickerUseDialog, double emojiPickerScale, bool emojiPickerAutofocus, bool emojiPickerKeepOpen, bool dataSaverMedia, bool dataSaverAvatar, bool dataSaverUrlPreview, bool disableDataSaverWhenOnWifi, bool reduceAnimation, bool disableShowingAnimatedImages, bool enableEmojiFadeIn, bool forceShowAds, bool useGroupedNotifications, bool showTimelineTabBarAtBottom, bool showMenuButtonInTabBar, List<TimelinesPageButtonType?> timelinesPageButtonTypes, bool showSmallTimelinesPageButtons, bool showSquaredTimelinesPageButtons, bool showTabHeaderInOneLine, bool alwaysShowTabHeader, bool showTimelineLastViewedAt, bool showPopupOnNewNote, bool vibrateNote, bool vibrateNotification, bool enableInfiniteScroll, bool keepScreenOn, bool enableHorizontalSwipe, bool openSensitiveMediaOnDoubleTap, NoteActionType noteTapAction, NoteActionType noteDoubleTapAction, NoteActionType noteLongPressAction, bool confirmBeforePost, bool confirmBeforeRenote, bool confirmBeforeReact, bool confirmBeforeFollow, bool confirmWhenRevealingSensitiveMedia, LaunchMode launchMode, bool enableSpellCheck, bool enablePredictiveBack, ThemeMode themeMode, String lightThemeId, String darkThemeId
});




}
/// @nodoc
class __$GeneralSettingsCopyWithImpl<$Res>
    implements _$GeneralSettingsCopyWith<$Res> {
  __$GeneralSettingsCopyWithImpl(this._self, this._then);

  final _GeneralSettings _self;
  final $Res Function(_GeneralSettings) _then;

/// Create a copy of GeneralSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? locale = freezed,Object? collapseRenotes = null,Object? sensitive = null,Object? highlightSensitiveMedia = null,Object? animatedMfm = null,Object? advancedMfm = null,Object? showRepliesCount = null,Object? showRenotesCount = null,Object? showReactionsCount = null,Object? showReactionsCountInReactionButton = null,Object? showGapBetweenNotesInTimeline = null,Object? loadRawImages = null,Object? instanceTicker = null,Object? showNoteCreatedAt = null,Object? showAvatarsInNote = null,Object? showAvatarsInSubNote = null,Object? squareAvatars = null,Object? showAvatarDecorations = null,Object? showQuoteButtonInNoteFooter = null,Object? showLikeButtonInNoteFooter = null,Object? showClipButtonInNoteFooter = null,Object? showTranslateButtonInNoteFooter = null,Object? showNoteReactionsViewer = null,Object? showSubNoteReactionsViewer = null,Object? showNoteFooter = null,Object? showSubNoteFooter = null,Object? alwaysExpandCw = null,Object? alwaysExpandLongNote = null,Object? alwaysExpandMediaInSubNote = null,Object? mergeReactionsByName = null,Object? alwaysShowAllReactions = null,Object? mediaListWithOneImageAppearance = freezed,Object? thumbnailBoxFit = null,Object? emojiStyle = null,Object? fontFamily = freezed,Object? fontSize = null,Object? lineHeight = null,Object? avatarScale = null,Object? reactionsDisplayScale = null,Object? limitWidthOfReaction = null,Object? noteFooterScale = null,Object? noteVerticalPadding = null,Object? noteHorizontalPadding = null,Object? publicNoteBackgroundColor = freezed,Object? homeNoteBackgroundColor = freezed,Object? followersNoteBackgroundColor = freezed,Object? specifiedNoteBackgroundColor = freezed,Object? emojiPickerUseDialog = null,Object? emojiPickerScale = null,Object? emojiPickerAutofocus = null,Object? emojiPickerKeepOpen = null,Object? dataSaverMedia = null,Object? dataSaverAvatar = null,Object? dataSaverUrlPreview = null,Object? disableDataSaverWhenOnWifi = null,Object? reduceAnimation = null,Object? disableShowingAnimatedImages = null,Object? enableEmojiFadeIn = null,Object? forceShowAds = null,Object? useGroupedNotifications = null,Object? showTimelineTabBarAtBottom = null,Object? showMenuButtonInTabBar = null,Object? timelinesPageButtonTypes = null,Object? showSmallTimelinesPageButtons = null,Object? showSquaredTimelinesPageButtons = null,Object? showTabHeaderInOneLine = null,Object? alwaysShowTabHeader = null,Object? showTimelineLastViewedAt = null,Object? showPopupOnNewNote = null,Object? vibrateNote = null,Object? vibrateNotification = null,Object? enableInfiniteScroll = null,Object? keepScreenOn = null,Object? enableHorizontalSwipe = null,Object? openSensitiveMediaOnDoubleTap = null,Object? noteTapAction = null,Object? noteDoubleTapAction = null,Object? noteLongPressAction = null,Object? confirmBeforePost = null,Object? confirmBeforeRenote = null,Object? confirmBeforeReact = null,Object? confirmBeforeFollow = null,Object? confirmWhenRevealingSensitiveMedia = null,Object? launchMode = null,Object? enableSpellCheck = null,Object? enablePredictiveBack = null,Object? themeMode = null,Object? lightThemeId = null,Object? darkThemeId = null,}) {
  return _then(_GeneralSettings(
locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as AppLocale?,collapseRenotes: null == collapseRenotes ? _self.collapseRenotes : collapseRenotes // ignore: cast_nullable_to_non_nullable
as bool,sensitive: null == sensitive ? _self.sensitive : sensitive // ignore: cast_nullable_to_non_nullable
as SensitiveMediaDisplay,highlightSensitiveMedia: null == highlightSensitiveMedia ? _self.highlightSensitiveMedia : highlightSensitiveMedia // ignore: cast_nullable_to_non_nullable
as bool,animatedMfm: null == animatedMfm ? _self.animatedMfm : animatedMfm // ignore: cast_nullable_to_non_nullable
as bool,advancedMfm: null == advancedMfm ? _self.advancedMfm : advancedMfm // ignore: cast_nullable_to_non_nullable
as bool,showRepliesCount: null == showRepliesCount ? _self.showRepliesCount : showRepliesCount // ignore: cast_nullable_to_non_nullable
as bool,showRenotesCount: null == showRenotesCount ? _self.showRenotesCount : showRenotesCount // ignore: cast_nullable_to_non_nullable
as bool,showReactionsCount: null == showReactionsCount ? _self.showReactionsCount : showReactionsCount // ignore: cast_nullable_to_non_nullable
as bool,showReactionsCountInReactionButton: null == showReactionsCountInReactionButton ? _self.showReactionsCountInReactionButton : showReactionsCountInReactionButton // ignore: cast_nullable_to_non_nullable
as bool,showGapBetweenNotesInTimeline: null == showGapBetweenNotesInTimeline ? _self.showGapBetweenNotesInTimeline : showGapBetweenNotesInTimeline // ignore: cast_nullable_to_non_nullable
as bool,loadRawImages: null == loadRawImages ? _self.loadRawImages : loadRawImages // ignore: cast_nullable_to_non_nullable
as bool,instanceTicker: null == instanceTicker ? _self.instanceTicker : instanceTicker // ignore: cast_nullable_to_non_nullable
as InstanceTicker,showNoteCreatedAt: null == showNoteCreatedAt ? _self.showNoteCreatedAt : showNoteCreatedAt // ignore: cast_nullable_to_non_nullable
as bool,showAvatarsInNote: null == showAvatarsInNote ? _self.showAvatarsInNote : showAvatarsInNote // ignore: cast_nullable_to_non_nullable
as bool,showAvatarsInSubNote: null == showAvatarsInSubNote ? _self.showAvatarsInSubNote : showAvatarsInSubNote // ignore: cast_nullable_to_non_nullable
as bool,squareAvatars: null == squareAvatars ? _self.squareAvatars : squareAvatars // ignore: cast_nullable_to_non_nullable
as bool,showAvatarDecorations: null == showAvatarDecorations ? _self.showAvatarDecorations : showAvatarDecorations // ignore: cast_nullable_to_non_nullable
as bool,showQuoteButtonInNoteFooter: null == showQuoteButtonInNoteFooter ? _self.showQuoteButtonInNoteFooter : showQuoteButtonInNoteFooter // ignore: cast_nullable_to_non_nullable
as bool,showLikeButtonInNoteFooter: null == showLikeButtonInNoteFooter ? _self.showLikeButtonInNoteFooter : showLikeButtonInNoteFooter // ignore: cast_nullable_to_non_nullable
as bool,showClipButtonInNoteFooter: null == showClipButtonInNoteFooter ? _self.showClipButtonInNoteFooter : showClipButtonInNoteFooter // ignore: cast_nullable_to_non_nullable
as bool,showTranslateButtonInNoteFooter: null == showTranslateButtonInNoteFooter ? _self.showTranslateButtonInNoteFooter : showTranslateButtonInNoteFooter // ignore: cast_nullable_to_non_nullable
as bool,showNoteReactionsViewer: null == showNoteReactionsViewer ? _self.showNoteReactionsViewer : showNoteReactionsViewer // ignore: cast_nullable_to_non_nullable
as bool,showSubNoteReactionsViewer: null == showSubNoteReactionsViewer ? _self.showSubNoteReactionsViewer : showSubNoteReactionsViewer // ignore: cast_nullable_to_non_nullable
as bool,showNoteFooter: null == showNoteFooter ? _self.showNoteFooter : showNoteFooter // ignore: cast_nullable_to_non_nullable
as bool,showSubNoteFooter: null == showSubNoteFooter ? _self.showSubNoteFooter : showSubNoteFooter // ignore: cast_nullable_to_non_nullable
as bool,alwaysExpandCw: null == alwaysExpandCw ? _self.alwaysExpandCw : alwaysExpandCw // ignore: cast_nullable_to_non_nullable
as bool,alwaysExpandLongNote: null == alwaysExpandLongNote ? _self.alwaysExpandLongNote : alwaysExpandLongNote // ignore: cast_nullable_to_non_nullable
as bool,alwaysExpandMediaInSubNote: null == alwaysExpandMediaInSubNote ? _self.alwaysExpandMediaInSubNote : alwaysExpandMediaInSubNote // ignore: cast_nullable_to_non_nullable
as bool,mergeReactionsByName: null == mergeReactionsByName ? _self.mergeReactionsByName : mergeReactionsByName // ignore: cast_nullable_to_non_nullable
as bool,alwaysShowAllReactions: null == alwaysShowAllReactions ? _self.alwaysShowAllReactions : alwaysShowAllReactions // ignore: cast_nullable_to_non_nullable
as bool,mediaListWithOneImageAppearance: freezed == mediaListWithOneImageAppearance ? _self.mediaListWithOneImageAppearance : mediaListWithOneImageAppearance // ignore: cast_nullable_to_non_nullable
as MediaListWithOneImageAppearance?,thumbnailBoxFit: null == thumbnailBoxFit ? _self.thumbnailBoxFit : thumbnailBoxFit // ignore: cast_nullable_to_non_nullable
as BoxFit,emojiStyle: null == emojiStyle ? _self.emojiStyle : emojiStyle // ignore: cast_nullable_to_non_nullable
as EmojiStyle,fontFamily: freezed == fontFamily ? _self.fontFamily : fontFamily // ignore: cast_nullable_to_non_nullable
as String?,fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,lineHeight: null == lineHeight ? _self.lineHeight : lineHeight // ignore: cast_nullable_to_non_nullable
as double,avatarScale: null == avatarScale ? _self.avatarScale : avatarScale // ignore: cast_nullable_to_non_nullable
as double,reactionsDisplayScale: null == reactionsDisplayScale ? _self.reactionsDisplayScale : reactionsDisplayScale // ignore: cast_nullable_to_non_nullable
as double,limitWidthOfReaction: null == limitWidthOfReaction ? _self.limitWidthOfReaction : limitWidthOfReaction // ignore: cast_nullable_to_non_nullable
as bool,noteFooterScale: null == noteFooterScale ? _self.noteFooterScale : noteFooterScale // ignore: cast_nullable_to_non_nullable
as double,noteVerticalPadding: null == noteVerticalPadding ? _self.noteVerticalPadding : noteVerticalPadding // ignore: cast_nullable_to_non_nullable
as double,noteHorizontalPadding: null == noteHorizontalPadding ? _self.noteHorizontalPadding : noteHorizontalPadding // ignore: cast_nullable_to_non_nullable
as double,publicNoteBackgroundColor: freezed == publicNoteBackgroundColor ? _self.publicNoteBackgroundColor : publicNoteBackgroundColor // ignore: cast_nullable_to_non_nullable
as Color?,homeNoteBackgroundColor: freezed == homeNoteBackgroundColor ? _self.homeNoteBackgroundColor : homeNoteBackgroundColor // ignore: cast_nullable_to_non_nullable
as Color?,followersNoteBackgroundColor: freezed == followersNoteBackgroundColor ? _self.followersNoteBackgroundColor : followersNoteBackgroundColor // ignore: cast_nullable_to_non_nullable
as Color?,specifiedNoteBackgroundColor: freezed == specifiedNoteBackgroundColor ? _self.specifiedNoteBackgroundColor : specifiedNoteBackgroundColor // ignore: cast_nullable_to_non_nullable
as Color?,emojiPickerUseDialog: null == emojiPickerUseDialog ? _self.emojiPickerUseDialog : emojiPickerUseDialog // ignore: cast_nullable_to_non_nullable
as bool,emojiPickerScale: null == emojiPickerScale ? _self.emojiPickerScale : emojiPickerScale // ignore: cast_nullable_to_non_nullable
as double,emojiPickerAutofocus: null == emojiPickerAutofocus ? _self.emojiPickerAutofocus : emojiPickerAutofocus // ignore: cast_nullable_to_non_nullable
as bool,emojiPickerKeepOpen: null == emojiPickerKeepOpen ? _self.emojiPickerKeepOpen : emojiPickerKeepOpen // ignore: cast_nullable_to_non_nullable
as bool,dataSaverMedia: null == dataSaverMedia ? _self.dataSaverMedia : dataSaverMedia // ignore: cast_nullable_to_non_nullable
as bool,dataSaverAvatar: null == dataSaverAvatar ? _self.dataSaverAvatar : dataSaverAvatar // ignore: cast_nullable_to_non_nullable
as bool,dataSaverUrlPreview: null == dataSaverUrlPreview ? _self.dataSaverUrlPreview : dataSaverUrlPreview // ignore: cast_nullable_to_non_nullable
as bool,disableDataSaverWhenOnWifi: null == disableDataSaverWhenOnWifi ? _self.disableDataSaverWhenOnWifi : disableDataSaverWhenOnWifi // ignore: cast_nullable_to_non_nullable
as bool,reduceAnimation: null == reduceAnimation ? _self.reduceAnimation : reduceAnimation // ignore: cast_nullable_to_non_nullable
as bool,disableShowingAnimatedImages: null == disableShowingAnimatedImages ? _self.disableShowingAnimatedImages : disableShowingAnimatedImages // ignore: cast_nullable_to_non_nullable
as bool,enableEmojiFadeIn: null == enableEmojiFadeIn ? _self.enableEmojiFadeIn : enableEmojiFadeIn // ignore: cast_nullable_to_non_nullable
as bool,forceShowAds: null == forceShowAds ? _self.forceShowAds : forceShowAds // ignore: cast_nullable_to_non_nullable
as bool,useGroupedNotifications: null == useGroupedNotifications ? _self.useGroupedNotifications : useGroupedNotifications // ignore: cast_nullable_to_non_nullable
as bool,showTimelineTabBarAtBottom: null == showTimelineTabBarAtBottom ? _self.showTimelineTabBarAtBottom : showTimelineTabBarAtBottom // ignore: cast_nullable_to_non_nullable
as bool,showMenuButtonInTabBar: null == showMenuButtonInTabBar ? _self.showMenuButtonInTabBar : showMenuButtonInTabBar // ignore: cast_nullable_to_non_nullable
as bool,timelinesPageButtonTypes: null == timelinesPageButtonTypes ? _self._timelinesPageButtonTypes : timelinesPageButtonTypes // ignore: cast_nullable_to_non_nullable
as List<TimelinesPageButtonType?>,showSmallTimelinesPageButtons: null == showSmallTimelinesPageButtons ? _self.showSmallTimelinesPageButtons : showSmallTimelinesPageButtons // ignore: cast_nullable_to_non_nullable
as bool,showSquaredTimelinesPageButtons: null == showSquaredTimelinesPageButtons ? _self.showSquaredTimelinesPageButtons : showSquaredTimelinesPageButtons // ignore: cast_nullable_to_non_nullable
as bool,showTabHeaderInOneLine: null == showTabHeaderInOneLine ? _self.showTabHeaderInOneLine : showTabHeaderInOneLine // ignore: cast_nullable_to_non_nullable
as bool,alwaysShowTabHeader: null == alwaysShowTabHeader ? _self.alwaysShowTabHeader : alwaysShowTabHeader // ignore: cast_nullable_to_non_nullable
as bool,showTimelineLastViewedAt: null == showTimelineLastViewedAt ? _self.showTimelineLastViewedAt : showTimelineLastViewedAt // ignore: cast_nullable_to_non_nullable
as bool,showPopupOnNewNote: null == showPopupOnNewNote ? _self.showPopupOnNewNote : showPopupOnNewNote // ignore: cast_nullable_to_non_nullable
as bool,vibrateNote: null == vibrateNote ? _self.vibrateNote : vibrateNote // ignore: cast_nullable_to_non_nullable
as bool,vibrateNotification: null == vibrateNotification ? _self.vibrateNotification : vibrateNotification // ignore: cast_nullable_to_non_nullable
as bool,enableInfiniteScroll: null == enableInfiniteScroll ? _self.enableInfiniteScroll : enableInfiniteScroll // ignore: cast_nullable_to_non_nullable
as bool,keepScreenOn: null == keepScreenOn ? _self.keepScreenOn : keepScreenOn // ignore: cast_nullable_to_non_nullable
as bool,enableHorizontalSwipe: null == enableHorizontalSwipe ? _self.enableHorizontalSwipe : enableHorizontalSwipe // ignore: cast_nullable_to_non_nullable
as bool,openSensitiveMediaOnDoubleTap: null == openSensitiveMediaOnDoubleTap ? _self.openSensitiveMediaOnDoubleTap : openSensitiveMediaOnDoubleTap // ignore: cast_nullable_to_non_nullable
as bool,noteTapAction: null == noteTapAction ? _self.noteTapAction : noteTapAction // ignore: cast_nullable_to_non_nullable
as NoteActionType,noteDoubleTapAction: null == noteDoubleTapAction ? _self.noteDoubleTapAction : noteDoubleTapAction // ignore: cast_nullable_to_non_nullable
as NoteActionType,noteLongPressAction: null == noteLongPressAction ? _self.noteLongPressAction : noteLongPressAction // ignore: cast_nullable_to_non_nullable
as NoteActionType,confirmBeforePost: null == confirmBeforePost ? _self.confirmBeforePost : confirmBeforePost // ignore: cast_nullable_to_non_nullable
as bool,confirmBeforeRenote: null == confirmBeforeRenote ? _self.confirmBeforeRenote : confirmBeforeRenote // ignore: cast_nullable_to_non_nullable
as bool,confirmBeforeReact: null == confirmBeforeReact ? _self.confirmBeforeReact : confirmBeforeReact // ignore: cast_nullable_to_non_nullable
as bool,confirmBeforeFollow: null == confirmBeforeFollow ? _self.confirmBeforeFollow : confirmBeforeFollow // ignore: cast_nullable_to_non_nullable
as bool,confirmWhenRevealingSensitiveMedia: null == confirmWhenRevealingSensitiveMedia ? _self.confirmWhenRevealingSensitiveMedia : confirmWhenRevealingSensitiveMedia // ignore: cast_nullable_to_non_nullable
as bool,launchMode: null == launchMode ? _self.launchMode : launchMode // ignore: cast_nullable_to_non_nullable
as LaunchMode,enableSpellCheck: null == enableSpellCheck ? _self.enableSpellCheck : enableSpellCheck // ignore: cast_nullable_to_non_nullable
as bool,enablePredictiveBack: null == enablePredictiveBack ? _self.enablePredictiveBack : enablePredictiveBack // ignore: cast_nullable_to_non_nullable
as bool,themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,lightThemeId: null == lightThemeId ? _self.lightThemeId : lightThemeId // ignore: cast_nullable_to_non_nullable
as String,darkThemeId: null == darkThemeId ? _self.darkThemeId : darkThemeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
