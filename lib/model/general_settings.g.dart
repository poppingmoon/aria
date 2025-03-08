// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeneralSettings _$GeneralSettingsFromJson(
  Map<String, dynamic> json,
) => _GeneralSettings(
  locale: $enumDecodeNullable(
    _$AppLocaleEnumMap,
    json['locale'],
    unknownValue: JsonKey.nullForUndefinedEnumValue,
  ),
  collapseRenotes: json['collapseRenotes'] as bool? ?? true,
  sensitive:
      $enumDecodeNullable(_$SensitiveMediaDisplayEnumMap, json['sensitive']) ??
      SensitiveMediaDisplay.respect,
  highlightSensitiveMedia: json['highlightSensitiveMedia'] as bool? ?? false,
  animatedMfm: json['animatedMfm'] as bool? ?? true,
  advancedMfm: json['advancedMfm'] as bool? ?? true,
  showRepliesCount: json['showRepliesCount'] as bool? ?? true,
  showRenotesCount: json['showRenotesCount'] as bool? ?? true,
  showReactionsCount: json['showReactionsCount'] as bool? ?? false,
  showReactionsCountInReactionButton:
      json['showReactionsCountInReactionButton'] as bool? ?? true,
  showGapBetweenNotesInTimeline:
      json['showGapBetweenNotesInTimeline'] as bool? ?? false,
  loadRawImages: json['loadRawImages'] as bool? ?? false,
  instanceTicker:
      $enumDecodeNullable(_$InstanceTickerEnumMap, json['instanceTicker']) ??
      InstanceTicker.remote,
  showNoteCreatedAt: json['showNoteCreatedAt'] as bool? ?? false,
  showAvatarsInNote: json['showAvatarsInNote'] as bool? ?? true,
  showAvatarsInSubNote: json['showAvatarsInSubNote'] as bool? ?? true,
  squareAvatars: json['squareAvatars'] as bool? ?? false,
  showAvatarDecorations: json['showAvatarDecorations'] as bool? ?? true,
  showQuoteButtonInNoteFooter:
      json['showQuoteButtonInNoteFooter'] as bool? ?? true,
  showLikeButtonInNoteFooter:
      json['showLikeButtonInNoteFooter'] as bool? ?? false,
  showClipButtonInNoteFooter:
      json['showClipButtonInNoteFooter'] as bool? ?? false,
  showTranslateButtonInNoteFooter:
      json['showTranslateButtonInNoteFooter'] as bool? ?? false,
  showNoteReactionsViewer: json['showNoteReactionsViewer'] as bool? ?? true,
  showSubNoteReactionsViewer:
      json['showSubNoteReactionsViewer'] as bool? ?? false,
  showNoteFooter: json['showNoteFooter'] as bool? ?? true,
  showSubNoteFooter: json['showSubNoteFooter'] as bool? ?? false,
  alwaysExpandCw: json['alwaysExpandCw'] as bool? ?? false,
  alwaysExpandLongNote: json['alwaysExpandLongNote'] as bool? ?? false,
  alwaysExpandMediaInSubNote:
      json['alwaysExpandMediaInSubNote'] as bool? ?? false,
  mergeReactionsByName: json['mergeReactionsByName'] as bool? ?? false,
  alwaysShowAllReactions: json['alwaysShowAllReactions'] as bool? ?? false,
  mediaListWithOneImageAppearance: $enumDecodeNullable(
    _$MediaListWithOneImageAppearanceEnumMap,
    json['mediaListWithOneImageAppearance'],
  ),
  thumbnailBoxFit:
      $enumDecodeNullable(_$BoxFitEnumMap, json['thumbnailBoxFit']) ??
      BoxFit.contain,
  emojiStyle:
      $enumDecodeNullable(_$EmojiStyleEnumMap, json['emojiStyle']) ??
      EmojiStyle.twemoji,
  fontFamily: json['fontFamily'] as String?,
  fontSize: (json['fontSize'] as num?)?.toDouble() ?? defaultFontSize,
  lineHeight: (json['lineHeight'] as num?)?.toDouble() ?? defaultLineHeight,
  avatarScale: (json['avatarScale'] as num?)?.toDouble() ?? defaultAvatarScale,
  reactionsDisplayScale:
      (json['reactionsDisplayScale'] as num?)?.toDouble() ?? 1.0,
  limitWidthOfReaction: json['limitWidthOfReaction'] as bool? ?? true,
  noteFooterScale: (json['noteFooterScale'] as num?)?.toDouble() ?? 1.0,
  noteVerticalPadding:
      (json['noteVerticalPadding'] as num?)?.toDouble() ??
      defaultNoteVerticalPadding,
  noteHorizontalPadding:
      (json['noteHorizontalPadding'] as num?)?.toDouble() ??
      defaultNoteHorizontalPadding,
  publicNoteBackgroundColor: _$JsonConverterFromJson<int, Color>(
    json['publicNoteBackgroundColor'],
    const _ColorConverter().fromJson,
  ),
  homeNoteBackgroundColor: _$JsonConverterFromJson<int, Color>(
    json['homeNoteBackgroundColor'],
    const _ColorConverter().fromJson,
  ),
  followersNoteBackgroundColor: _$JsonConverterFromJson<int, Color>(
    json['followersNoteBackgroundColor'],
    const _ColorConverter().fromJson,
  ),
  specifiedNoteBackgroundColor: _$JsonConverterFromJson<int, Color>(
    json['specifiedNoteBackgroundColor'],
    const _ColorConverter().fromJson,
  ),
  emojiPickerUseDialog: json['emojiPickerUseDialog'] as bool? ?? false,
  emojiPickerScale: (json['emojiPickerScale'] as num?)?.toDouble() ?? 1.0,
  emojiPickerAutofocus: json['emojiPickerAutofocus'] as bool? ?? true,
  emojiPickerKeepOpen: json['emojiPickerKeepOpen'] as bool? ?? false,
  dataSaverMedia: json['dataSaverMedia'] as bool? ?? false,
  dataSaverAvatar: json['dataSaverAvatar'] as bool? ?? false,
  dataSaverUrlPreview: json['dataSaverUrlPreview'] as bool? ?? false,
  disableDataSaverWhenOnWifi:
      json['disableDataSaverWhenOnWifi'] as bool? ?? false,
  reduceAnimation: json['reduceAnimation'] as bool? ?? false,
  disableShowingAnimatedImages:
      json['disableShowingAnimatedImages'] as bool? ?? false,
  enableEmojiFadeIn: json['enableEmojiFadeIn'] as bool? ?? false,
  forceShowAds: json['forceShowAds'] as bool? ?? false,
  useGroupedNotifications: json['useGroupedNotifications'] as bool? ?? false,
  showTimelineTabBarAtBottom:
      json['showTimelineTabBarAtBottom'] as bool? ?? false,
  showMenuButtonInTabBar: json['showMenuButtonInTabBar'] as bool? ?? false,
  timelinesPageButtonTypes:
      (json['timelinesPageButtonTypes'] as List<dynamic>?)
          ?.map((e) => $enumDecodeNullable(_$TimelinesPageButtonTypeEnumMap, e))
          .toList() ??
      defaultTimelinesPageButtonTypes,
  showSmallTimelinesPageButtons:
      json['showSmallTimelinesPageButtons'] as bool? ?? false,
  showSquaredTimelinesPageButtons:
      json['showSquaredTimelinesPageButtons'] as bool? ?? false,
  showTabHeaderInOneLine: json['showTabHeaderInOneLine'] as bool? ?? true,
  alwaysShowTabHeader: json['alwaysShowTabHeader'] as bool? ?? false,
  showTimelineLastViewedAt: json['showTimelineLastViewedAt'] as bool? ?? true,
  showPopupOnNewNote: json['showPopupOnNewNote'] as bool? ?? true,
  vibrateNote: json['vibrateNote'] as bool? ?? false,
  vibrateNotification: json['vibrateNotification'] as bool? ?? false,
  enableInfiniteScroll: json['enableInfiniteScroll'] as bool? ?? true,
  keepScreenOn: json['keepScreenOn'] as bool? ?? false,
  enableHorizontalSwipe: json['enableHorizontalSwipe'] as bool? ?? true,
  openSensitiveMediaOnDoubleTap:
      json['openSensitiveMediaOnDoubleTap'] as bool? ?? false,
  noteTapAction:
      $enumDecodeNullable(_$NoteActionTypeEnumMap, json['noteTapAction']) ??
      NoteActionType.expand,
  noteDoubleTapAction:
      $enumDecodeNullable(
        _$NoteActionTypeEnumMap,
        json['noteDoubleTapAction'],
      ) ??
      NoteActionType.menu,
  noteLongPressAction:
      $enumDecodeNullable(
        _$NoteActionTypeEnumMap,
        json['noteLongPressAction'],
      ) ??
      NoteActionType.reaction,
  confirmBeforePost: json['confirmBeforePost'] as bool? ?? true,
  confirmBeforeRenote: json['confirmBeforeRenote'] as bool? ?? true,
  confirmBeforeReact: json['confirmBeforeReact'] as bool? ?? true,
  confirmBeforeFollow: json['confirmBeforeFollow'] as bool? ?? true,
  confirmWhenRevealingSensitiveMedia:
      json['confirmWhenRevealingSensitiveMedia'] as bool? ?? false,
  launchMode:
      $enumDecodeNullable(_$LaunchModeEnumMap, json['launchMode']) ??
      LaunchMode.externalApplication,
  enableSpellCheck: json['enableSpellCheck'] as bool? ?? false,
  enablePredictiveBack: json['enablePredictiveBack'] as bool? ?? false,
  themeMode:
      $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
      ThemeMode.system,
  lightThemeId:
      json['lightThemeId'] as String? ?? 'a58a0abb-ff8c-476a-8dec-0ad7837e7e96',
  darkThemeId:
      json['darkThemeId'] as String? ?? '66e7e5a9-cd43-42cd-837d-12f47841fa34',
);

Map<String, dynamic> _$GeneralSettingsToJson(
  _GeneralSettings instance,
) => <String, dynamic>{
  if (_$AppLocaleEnumMap[instance.locale] case final value?) 'locale': value,
  'collapseRenotes': instance.collapseRenotes,
  'sensitive': _$SensitiveMediaDisplayEnumMap[instance.sensitive]!,
  'highlightSensitiveMedia': instance.highlightSensitiveMedia,
  'animatedMfm': instance.animatedMfm,
  'advancedMfm': instance.advancedMfm,
  'showRepliesCount': instance.showRepliesCount,
  'showRenotesCount': instance.showRenotesCount,
  'showReactionsCount': instance.showReactionsCount,
  'showReactionsCountInReactionButton':
      instance.showReactionsCountInReactionButton,
  'showGapBetweenNotesInTimeline': instance.showGapBetweenNotesInTimeline,
  'loadRawImages': instance.loadRawImages,
  'instanceTicker': _$InstanceTickerEnumMap[instance.instanceTicker]!,
  'showNoteCreatedAt': instance.showNoteCreatedAt,
  'showAvatarsInNote': instance.showAvatarsInNote,
  'showAvatarsInSubNote': instance.showAvatarsInSubNote,
  'squareAvatars': instance.squareAvatars,
  'showAvatarDecorations': instance.showAvatarDecorations,
  'showQuoteButtonInNoteFooter': instance.showQuoteButtonInNoteFooter,
  'showLikeButtonInNoteFooter': instance.showLikeButtonInNoteFooter,
  'showClipButtonInNoteFooter': instance.showClipButtonInNoteFooter,
  'showTranslateButtonInNoteFooter': instance.showTranslateButtonInNoteFooter,
  'showNoteReactionsViewer': instance.showNoteReactionsViewer,
  'showSubNoteReactionsViewer': instance.showSubNoteReactionsViewer,
  'showNoteFooter': instance.showNoteFooter,
  'showSubNoteFooter': instance.showSubNoteFooter,
  'alwaysExpandCw': instance.alwaysExpandCw,
  'alwaysExpandLongNote': instance.alwaysExpandLongNote,
  'alwaysExpandMediaInSubNote': instance.alwaysExpandMediaInSubNote,
  'mergeReactionsByName': instance.mergeReactionsByName,
  'alwaysShowAllReactions': instance.alwaysShowAllReactions,
  if (_$MediaListWithOneImageAppearanceEnumMap[instance
          .mediaListWithOneImageAppearance]
      case final value?)
    'mediaListWithOneImageAppearance': value,
  'thumbnailBoxFit': _$BoxFitEnumMap[instance.thumbnailBoxFit]!,
  'emojiStyle': _$EmojiStyleEnumMap[instance.emojiStyle]!,
  if (instance.fontFamily case final value?) 'fontFamily': value,
  'fontSize': instance.fontSize,
  'lineHeight': instance.lineHeight,
  'avatarScale': instance.avatarScale,
  'reactionsDisplayScale': instance.reactionsDisplayScale,
  'limitWidthOfReaction': instance.limitWidthOfReaction,
  'noteFooterScale': instance.noteFooterScale,
  'noteVerticalPadding': instance.noteVerticalPadding,
  'noteHorizontalPadding': instance.noteHorizontalPadding,
  if (_$JsonConverterToJson<int, Color>(
        instance.publicNoteBackgroundColor,
        const _ColorConverter().toJson,
      )
      case final value?)
    'publicNoteBackgroundColor': value,
  if (_$JsonConverterToJson<int, Color>(
        instance.homeNoteBackgroundColor,
        const _ColorConverter().toJson,
      )
      case final value?)
    'homeNoteBackgroundColor': value,
  if (_$JsonConverterToJson<int, Color>(
        instance.followersNoteBackgroundColor,
        const _ColorConverter().toJson,
      )
      case final value?)
    'followersNoteBackgroundColor': value,
  if (_$JsonConverterToJson<int, Color>(
        instance.specifiedNoteBackgroundColor,
        const _ColorConverter().toJson,
      )
      case final value?)
    'specifiedNoteBackgroundColor': value,
  'emojiPickerUseDialog': instance.emojiPickerUseDialog,
  'emojiPickerScale': instance.emojiPickerScale,
  'emojiPickerAutofocus': instance.emojiPickerAutofocus,
  'emojiPickerKeepOpen': instance.emojiPickerKeepOpen,
  'dataSaverMedia': instance.dataSaverMedia,
  'dataSaverAvatar': instance.dataSaverAvatar,
  'dataSaverUrlPreview': instance.dataSaverUrlPreview,
  'disableDataSaverWhenOnWifi': instance.disableDataSaverWhenOnWifi,
  'reduceAnimation': instance.reduceAnimation,
  'disableShowingAnimatedImages': instance.disableShowingAnimatedImages,
  'enableEmojiFadeIn': instance.enableEmojiFadeIn,
  'forceShowAds': instance.forceShowAds,
  'useGroupedNotifications': instance.useGroupedNotifications,
  'showTimelineTabBarAtBottom': instance.showTimelineTabBarAtBottom,
  'showMenuButtonInTabBar': instance.showMenuButtonInTabBar,
  'timelinesPageButtonTypes':
      instance.timelinesPageButtonTypes
          .map((e) => _$TimelinesPageButtonTypeEnumMap[e])
          .toList(),
  'showSmallTimelinesPageButtons': instance.showSmallTimelinesPageButtons,
  'showSquaredTimelinesPageButtons': instance.showSquaredTimelinesPageButtons,
  'showTabHeaderInOneLine': instance.showTabHeaderInOneLine,
  'alwaysShowTabHeader': instance.alwaysShowTabHeader,
  'showTimelineLastViewedAt': instance.showTimelineLastViewedAt,
  'showPopupOnNewNote': instance.showPopupOnNewNote,
  'vibrateNote': instance.vibrateNote,
  'vibrateNotification': instance.vibrateNotification,
  'enableInfiniteScroll': instance.enableInfiniteScroll,
  'keepScreenOn': instance.keepScreenOn,
  'enableHorizontalSwipe': instance.enableHorizontalSwipe,
  'openSensitiveMediaOnDoubleTap': instance.openSensitiveMediaOnDoubleTap,
  'noteTapAction': _$NoteActionTypeEnumMap[instance.noteTapAction]!,
  'noteDoubleTapAction': _$NoteActionTypeEnumMap[instance.noteDoubleTapAction]!,
  'noteLongPressAction': _$NoteActionTypeEnumMap[instance.noteLongPressAction]!,
  'confirmBeforePost': instance.confirmBeforePost,
  'confirmBeforeRenote': instance.confirmBeforeRenote,
  'confirmBeforeReact': instance.confirmBeforeReact,
  'confirmBeforeFollow': instance.confirmBeforeFollow,
  'confirmWhenRevealingSensitiveMedia':
      instance.confirmWhenRevealingSensitiveMedia,
  'launchMode': _$LaunchModeEnumMap[instance.launchMode]!,
  'enableSpellCheck': instance.enableSpellCheck,
  'enablePredictiveBack': instance.enablePredictiveBack,
  'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
  'lightThemeId': instance.lightThemeId,
  'darkThemeId': instance.darkThemeId,
};

const _$AppLocaleEnumMap = {
  AppLocale.enUs: 'enUs',
  AppLocale.arSa: 'arSa',
  AppLocale.bnBd: 'bnBd',
  AppLocale.caEs: 'caEs',
  AppLocale.csCz: 'csCz',
  AppLocale.deDe: 'deDe',
  AppLocale.elGr: 'elGr',
  AppLocale.esEs: 'esEs',
  AppLocale.frFr: 'frFr',
  AppLocale.idId: 'idId',
  AppLocale.itIt: 'itIt',
  AppLocale.jaJp: 'jaJp',
  AppLocale.jaKs: 'jaKs',
  AppLocale.koGs: 'koGs',
  AppLocale.koKr: 'koKr',
  AppLocale.loLa: 'loLa',
  AppLocale.nlNl: 'nlNl',
  AppLocale.noNo: 'noNo',
  AppLocale.plPl: 'plPl',
  AppLocale.ptPt: 'ptPt',
  AppLocale.roRo: 'roRo',
  AppLocale.ruRu: 'ruRu',
  AppLocale.skSk: 'skSk',
  AppLocale.svSe: 'svSe',
  AppLocale.thTh: 'thTh',
  AppLocale.trTr: 'trTr',
  AppLocale.ukUa: 'ukUa',
  AppLocale.uzUz: 'uzUz',
  AppLocale.viVn: 'viVn',
  AppLocale.zhCn: 'zhCn',
  AppLocale.zhTw: 'zhTw',
};

const _$SensitiveMediaDisplayEnumMap = {
  SensitiveMediaDisplay.respect: 'respect',
  SensitiveMediaDisplay.ignore: 'ignore',
  SensitiveMediaDisplay.force: 'force',
};

const _$InstanceTickerEnumMap = {
  InstanceTicker.none: 'none',
  InstanceTicker.remote: 'remote',
  InstanceTicker.always: 'always',
};

const _$MediaListWithOneImageAppearanceEnumMap = {
  MediaListWithOneImageAppearance.r16_9: 'r16_9',
  MediaListWithOneImageAppearance.r1_1: 'r1_1',
  MediaListWithOneImageAppearance.r2_3: 'r2_3',
};

const _$BoxFitEnumMap = {
  BoxFit.fill: 'fill',
  BoxFit.contain: 'contain',
  BoxFit.cover: 'cover',
  BoxFit.fitWidth: 'fitWidth',
  BoxFit.fitHeight: 'fitHeight',
  BoxFit.none: 'none',
  BoxFit.scaleDown: 'scaleDown',
};

const _$EmojiStyleEnumMap = {
  EmojiStyle.native: 'native',
  EmojiStyle.twemoji: 'twemoji',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

const _$TimelinesPageButtonTypeEnumMap = {
  TimelinesPageButtonType.announcements: 'announcements',
  TimelinesPageButtonType.antennas: 'antennas',
  TimelinesPageButtonType.channels: 'channels',
  TimelinesPageButtonType.clips: 'clips',
  TimelinesPageButtonType.drive: 'drive',
  TimelinesPageButtonType.explore: 'explore',
  TimelinesPageButtonType.favorites: 'favorites',
  TimelinesPageButtonType.gallery: 'gallery',
  TimelinesPageButtonType.games: 'games',
  TimelinesPageButtonType.home: 'home',
  TimelinesPageButtonType.instanceInfo: 'instanceInfo',
  TimelinesPageButtonType.lists: 'lists',
  TimelinesPageButtonType.lookup: 'lookup',
  TimelinesPageButtonType.menu: 'menu',
  TimelinesPageButtonType.note: 'note',
  TimelinesPageButtonType.notifications: 'notifications',
  TimelinesPageButtonType.pages: 'pages',
  TimelinesPageButtonType.play: 'play',
  TimelinesPageButtonType.postForm: 'postForm',
  TimelinesPageButtonType.profile: 'profile',
  TimelinesPageButtonType.reload: 'reload',
  TimelinesPageButtonType.search: 'search',
  TimelinesPageButtonType.settings: 'settings',
};

const _$NoteActionTypeEnumMap = {
  NoteActionType.none: 'none',
  NoteActionType.expand: 'expand',
  NoteActionType.menu: 'menu',
  NoteActionType.reaction: 'reaction',
};

const _$LaunchModeEnumMap = {
  LaunchMode.platformDefault: 'platformDefault',
  LaunchMode.inAppWebView: 'inAppWebView',
  LaunchMode.inAppBrowserView: 'inAppBrowserView',
  LaunchMode.externalApplication: 'externalApplication',
  LaunchMode.externalNonBrowserApplication: 'externalNonBrowserApplication',
};

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
