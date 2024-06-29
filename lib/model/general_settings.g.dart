// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneralSettingsImpl _$$GeneralSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$GeneralSettingsImpl(
      locale: $enumDecodeNullable(_$AppLocaleEnumMap, json['locale'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
      collapseRenotes: json['collapseRenotes'] as bool? ?? true,
      sensitive: $enumDecodeNullable(
              _$SensitiveMediaDisplayEnumMap, json['sensitive']) ??
          SensitiveMediaDisplay.respect,
      highlightSensitiveMedia:
          json['highlightSensitiveMedia'] as bool? ?? false,
      animatedMfm: json['animatedMfm'] as bool? ?? true,
      advancedMfm: json['advancedMfm'] as bool? ?? true,
      showReactionsCount: json['showReactionsCount'] as bool? ?? false,
      loadRawImages: json['loadRawImages'] as bool? ?? false,
      instanceTicker: $enumDecodeNullable(
              _$InstanceTickerEnumMap, json['instanceTicker']) ??
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
      emojiStyle:
          $enumDecodeNullable(_$EmojiStyleEnumMap, json['emojiStyle']) ??
              EmojiStyle.twemoji,
      fontFamily: json['fontFamily'] as String?,
      fontSize: (json['fontSize'] as num?)?.toDouble() ?? defaultFontSize,
      lineHeight: (json['lineHeight'] as num?)?.toDouble() ?? defaultLineHeight,
      avatarScale:
          (json['avatarScale'] as num?)?.toDouble() ?? defaultAvatarScale,
      reactionsDisplayScale:
          (json['reactionsDisplayScale'] as num?)?.toDouble() ?? 1.0,
      limitWidthOfReaction: json['limitWidthOfReaction'] as bool? ?? true,
      noteFooterScale: (json['noteFooterScale'] as num?)?.toDouble() ?? 1.0,
      noteVerticalPadding: (json['noteVerticalPadding'] as num?)?.toDouble() ??
          defaultNoteVerticalPadding,
      noteHorizontalPadding:
          (json['noteHorizontalPadding'] as num?)?.toDouble() ??
              defaultNoteHorizontalPadding,
      publicNoteBackgroundColor: _$JsonConverterFromJson<int, Color>(
          json['publicNoteBackgroundColor'], const ColorConverter().fromJson),
      homeNoteBackgroundColor: _$JsonConverterFromJson<int, Color>(
          json['homeNoteBackgroundColor'], const ColorConverter().fromJson),
      followersNoteBackgroundColor: _$JsonConverterFromJson<int, Color>(
          json['followersNoteBackgroundColor'],
          const ColorConverter().fromJson),
      specifiedNoteBackgroundColor: _$JsonConverterFromJson<int, Color>(
          json['specifiedNoteBackgroundColor'],
          const ColorConverter().fromJson),
      emojiPickerUseDialog: json['emojiPickerUseDialog'] as bool? ?? false,
      emojiPickerScale: (json['emojiPickerScale'] as num?)?.toDouble() ?? 1.0,
      emojiPickerAutofocus: json['emojiPickerAutofocus'] as bool? ?? true,
      emojiPickerKeepOpen: json['emojiPickerKeepOpen'] as bool? ?? false,
      dataSaverMedia: json['dataSaverMedia'] as bool? ?? false,
      dataSaverAvatar: json['dataSaverAvatar'] as bool? ?? false,
      dataSaverUrlPreview: json['dataSaverUrlPreview'] as bool? ?? false,
      disableDataSaverWhenOnWifi:
          json['disableDataSaverWhenOnWifi'] as bool? ?? false,
      disableShowingAnimatedImages:
          json['disableShowingAnimatedImages'] as bool? ?? false,
      forceShowAds: json['forceShowAds'] as bool? ?? false,
      useGroupedNotifications:
          json['useGroupedNotifications'] as bool? ?? false,
      showTimelineTabBarAtBottom:
          json['showTimelineTabBarAtBottom'] as bool? ?? false,
      showMenuButtonInTabBar: json['showMenuButtonInTabBar'] as bool? ?? false,
      alwaysShowTabHeader: json['alwaysShowTabHeader'] as bool? ?? false,
      showTimelineLastViewedAt:
          json['showTimelineLastViewedAt'] as bool? ?? true,
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
      noteDoubleTapAction: $enumDecodeNullable(
              _$NoteActionTypeEnumMap, json['noteDoubleTapAction']) ??
          NoteActionType.menu,
      noteLongPressAction: $enumDecodeNullable(
              _$NoteActionTypeEnumMap, json['noteLongPressAction']) ??
          NoteActionType.reaction,
      confirmBeforePost: json['confirmBeforePost'] as bool? ?? true,
      confirmBeforeReact: json['confirmBeforeReact'] as bool? ?? true,
      confirmBeforeFollow: json['confirmBeforeFollow'] as bool? ?? true,
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      lightThemeId: json['lightThemeId'] as String? ??
          'a58a0abb-ff8c-476a-8dec-0ad7837e7e96',
      darkThemeId: json['darkThemeId'] as String? ??
          '66e7e5a9-cd43-42cd-837d-12f47841fa34',
    );

Map<String, dynamic> _$$GeneralSettingsImplToJson(
    _$GeneralSettingsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$AppLocaleEnumMap[instance.locale]);
  val['collapseRenotes'] = instance.collapseRenotes;
  val['sensitive'] = _$SensitiveMediaDisplayEnumMap[instance.sensitive]!;
  val['highlightSensitiveMedia'] = instance.highlightSensitiveMedia;
  val['animatedMfm'] = instance.animatedMfm;
  val['advancedMfm'] = instance.advancedMfm;
  val['showReactionsCount'] = instance.showReactionsCount;
  val['loadRawImages'] = instance.loadRawImages;
  val['instanceTicker'] = _$InstanceTickerEnumMap[instance.instanceTicker]!;
  val['showNoteCreatedAt'] = instance.showNoteCreatedAt;
  val['showAvatarsInNote'] = instance.showAvatarsInNote;
  val['showAvatarsInSubNote'] = instance.showAvatarsInSubNote;
  val['squareAvatars'] = instance.squareAvatars;
  val['showAvatarDecorations'] = instance.showAvatarDecorations;
  val['showQuoteButtonInNoteFooter'] = instance.showQuoteButtonInNoteFooter;
  val['showLikeButtonInNoteFooter'] = instance.showLikeButtonInNoteFooter;
  val['showClipButtonInNoteFooter'] = instance.showClipButtonInNoteFooter;
  val['showTranslateButtonInNoteFooter'] =
      instance.showTranslateButtonInNoteFooter;
  val['showNoteReactionsViewer'] = instance.showNoteReactionsViewer;
  val['showSubNoteReactionsViewer'] = instance.showSubNoteReactionsViewer;
  val['showNoteFooter'] = instance.showNoteFooter;
  val['showSubNoteFooter'] = instance.showSubNoteFooter;
  val['emojiStyle'] = _$EmojiStyleEnumMap[instance.emojiStyle]!;
  writeNotNull('fontFamily', instance.fontFamily);
  val['fontSize'] = instance.fontSize;
  val['lineHeight'] = instance.lineHeight;
  val['avatarScale'] = instance.avatarScale;
  val['reactionsDisplayScale'] = instance.reactionsDisplayScale;
  val['limitWidthOfReaction'] = instance.limitWidthOfReaction;
  val['noteFooterScale'] = instance.noteFooterScale;
  val['noteVerticalPadding'] = instance.noteVerticalPadding;
  val['noteHorizontalPadding'] = instance.noteHorizontalPadding;
  writeNotNull(
      'publicNoteBackgroundColor',
      _$JsonConverterToJson<int, Color>(
          instance.publicNoteBackgroundColor, const ColorConverter().toJson));
  writeNotNull(
      'homeNoteBackgroundColor',
      _$JsonConverterToJson<int, Color>(
          instance.homeNoteBackgroundColor, const ColorConverter().toJson));
  writeNotNull(
      'followersNoteBackgroundColor',
      _$JsonConverterToJson<int, Color>(instance.followersNoteBackgroundColor,
          const ColorConverter().toJson));
  writeNotNull(
      'specifiedNoteBackgroundColor',
      _$JsonConverterToJson<int, Color>(instance.specifiedNoteBackgroundColor,
          const ColorConverter().toJson));
  val['emojiPickerUseDialog'] = instance.emojiPickerUseDialog;
  val['emojiPickerScale'] = instance.emojiPickerScale;
  val['emojiPickerAutofocus'] = instance.emojiPickerAutofocus;
  val['emojiPickerKeepOpen'] = instance.emojiPickerKeepOpen;
  val['dataSaverMedia'] = instance.dataSaverMedia;
  val['dataSaverAvatar'] = instance.dataSaverAvatar;
  val['dataSaverUrlPreview'] = instance.dataSaverUrlPreview;
  val['disableDataSaverWhenOnWifi'] = instance.disableDataSaverWhenOnWifi;
  val['disableShowingAnimatedImages'] = instance.disableShowingAnimatedImages;
  val['forceShowAds'] = instance.forceShowAds;
  val['useGroupedNotifications'] = instance.useGroupedNotifications;
  val['showTimelineTabBarAtBottom'] = instance.showTimelineTabBarAtBottom;
  val['showMenuButtonInTabBar'] = instance.showMenuButtonInTabBar;
  val['alwaysShowTabHeader'] = instance.alwaysShowTabHeader;
  val['showTimelineLastViewedAt'] = instance.showTimelineLastViewedAt;
  val['vibrateNote'] = instance.vibrateNote;
  val['vibrateNotification'] = instance.vibrateNotification;
  val['enableInfiniteScroll'] = instance.enableInfiniteScroll;
  val['keepScreenOn'] = instance.keepScreenOn;
  val['enableHorizontalSwipe'] = instance.enableHorizontalSwipe;
  val['openSensitiveMediaOnDoubleTap'] = instance.openSensitiveMediaOnDoubleTap;
  val['noteTapAction'] = _$NoteActionTypeEnumMap[instance.noteTapAction]!;
  val['noteDoubleTapAction'] =
      _$NoteActionTypeEnumMap[instance.noteDoubleTapAction]!;
  val['noteLongPressAction'] =
      _$NoteActionTypeEnumMap[instance.noteLongPressAction]!;
  val['confirmBeforePost'] = instance.confirmBeforePost;
  val['confirmBeforeReact'] = instance.confirmBeforeReact;
  val['confirmBeforeFollow'] = instance.confirmBeforeFollow;
  val['themeMode'] = _$ThemeModeEnumMap[instance.themeMode]!;
  val['lightThemeId'] = instance.lightThemeId;
  val['darkThemeId'] = instance.darkThemeId;
  return val;
}

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

const _$EmojiStyleEnumMap = {
  EmojiStyle.native: 'native',
  EmojiStyle.twemoji: 'twemoji',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$NoteActionTypeEnumMap = {
  NoteActionType.none: 'none',
  NoteActionType.expand: 'expand',
  NoteActionType.menu: 'menu',
  NoteActionType.reaction: 'reaction',
};

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
