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
      emojiStyle:
          $enumDecodeNullable(_$EmojiStyleEnumMap, json['emojiStyle']) ??
              EmojiStyle.twemoji,
      emojiPickerUseDialog: json['emojiPickerUseDialog'] as bool? ?? false,
      emojiPickerScale: (json['emojiPickerScale'] as num?)?.toDouble() ?? 1.0,
      emojiPickerAutofocus: json['emojiPickerAutofocus'] as bool? ?? true,
      squareAvatars: json['squareAvatars'] as bool? ?? false,
      showAvatarDecorations: json['showAvatarDecorations'] as bool? ?? true,
      showClipButtonInNoteFooter:
          json['showClipButtonInNoteFooter'] as bool? ?? false,
      reactionsDisplayScale:
          (json['reactionsDisplayScale'] as num?)?.toDouble() ?? 1.0,
      limitWidthOfReaction: json['limitWidthOfReaction'] as bool? ?? true,
      forceShowAds: json['forceShowAds'] as bool? ?? false,
      useGroupedNotifications:
          json['useGroupedNotifications'] as bool? ?? false,
      dataSaverMedia: json['dataSaverMedia'] as bool? ?? false,
      dataSaverUrlPreview: json['dataSaverUrlPreview'] as bool? ?? false,
      showTranslateButtonInNoteFooter:
          json['showTranslateButtonInNoteFooter'] as bool? ?? false,
      fontSize: (json['fontSize'] as num?)?.toDouble() ?? defaultFontSize,
      fontFamily: json['fontFamily'] as String?,
      showAvatarsInNote: json['showAvatarsInNote'] as bool? ?? true,
      showAvatarsInSubNote: json['showAvatarsInSubNote'] as bool? ?? true,
      showNoteReactionsViewer: json['showNoteReactionsViewer'] as bool? ?? true,
      showNoteFooter: json['showNoteFooter'] as bool? ?? true,
      showSubNoteReactionsViewer:
          json['showSubNoteReactionsViewer'] as bool? ?? false,
      showSubNoteFooter: json['showSubNoteFooter'] as bool? ?? false,
      vibrateNote: json['vibrateNote'] as bool? ?? false,
      vibrateNotification: json['vibrateNotification'] as bool? ?? false,
      showTimelineTabBarOnBottom:
          json['showTimelineTabBarOnBottom'] as bool? ?? false,
      noteFooterScale: (json['noteFooterScale'] as num?)?.toDouble() ?? 1.0,
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
  val['emojiStyle'] = _$EmojiStyleEnumMap[instance.emojiStyle]!;
  val['emojiPickerUseDialog'] = instance.emojiPickerUseDialog;
  val['emojiPickerScale'] = instance.emojiPickerScale;
  val['emojiPickerAutofocus'] = instance.emojiPickerAutofocus;
  val['squareAvatars'] = instance.squareAvatars;
  val['showAvatarDecorations'] = instance.showAvatarDecorations;
  val['showClipButtonInNoteFooter'] = instance.showClipButtonInNoteFooter;
  val['reactionsDisplayScale'] = instance.reactionsDisplayScale;
  val['limitWidthOfReaction'] = instance.limitWidthOfReaction;
  val['forceShowAds'] = instance.forceShowAds;
  val['useGroupedNotifications'] = instance.useGroupedNotifications;
  val['dataSaverMedia'] = instance.dataSaverMedia;
  val['dataSaverUrlPreview'] = instance.dataSaverUrlPreview;
  val['showTranslateButtonInNoteFooter'] =
      instance.showTranslateButtonInNoteFooter;
  val['fontSize'] = instance.fontSize;
  writeNotNull('fontFamily', instance.fontFamily);
  val['showAvatarsInNote'] = instance.showAvatarsInNote;
  val['showAvatarsInSubNote'] = instance.showAvatarsInSubNote;
  val['showNoteReactionsViewer'] = instance.showNoteReactionsViewer;
  val['showNoteFooter'] = instance.showNoteFooter;
  val['showSubNoteReactionsViewer'] = instance.showSubNoteReactionsViewer;
  val['showSubNoteFooter'] = instance.showSubNoteFooter;
  val['vibrateNote'] = instance.vibrateNote;
  val['vibrateNotification'] = instance.vibrateNotification;
  val['showTimelineTabBarOnBottom'] = instance.showTimelineTabBarOnBottom;
  val['noteFooterScale'] = instance.noteFooterScale;
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

const _$EmojiStyleEnumMap = {
  EmojiStyle.native: 'native',
  EmojiStyle.twemoji: 'twemoji',
};

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
