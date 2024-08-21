/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 31
/// Strings: 53262 (1718 per locale)

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

part 'strings_en_US.g.dart';
part 'strings_ar_SA.g.dart';
part 'strings_bn_BD.g.dart';
part 'strings_ca_ES.g.dart';
part 'strings_cs_CZ.g.dart';
part 'strings_de_DE.g.dart';
part 'strings_el_GR.g.dart';
part 'strings_es_ES.g.dart';
part 'strings_fr_FR.g.dart';
part 'strings_id_ID.g.dart';
part 'strings_it_IT.g.dart';
part 'strings_ja_JP.g.dart';
part 'strings_ja_KS.g.dart';
part 'strings_ko_GS.g.dart';
part 'strings_ko_KR.g.dart';
part 'strings_lo_LA.g.dart';
part 'strings_nl_NL.g.dart';
part 'strings_no_NO.g.dart';
part 'strings_pl_PL.g.dart';
part 'strings_pt_PT.g.dart';
part 'strings_ro_RO.g.dart';
part 'strings_ru_RU.g.dart';
part 'strings_sk_SK.g.dart';
part 'strings_sv_SE.g.dart';
part 'strings_th_TH.g.dart';
part 'strings_tr_TR.g.dart';
part 'strings_uk_UA.g.dart';
part 'strings_uz_UZ.g.dart';
part 'strings_vi_VN.g.dart';
part 'strings_zh_CN.g.dart';
part 'strings_zh_TW.g.dart';

const AppLocale _baseLocale = AppLocale.enUs;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.enUs) // set locale
/// - Locale locale = AppLocale.enUs.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.enUs) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	enUs(languageCode: 'en', countryCode: 'US', build: Translations.build),
	arSa(languageCode: 'ar', countryCode: 'SA', build: _StringsArSa.build),
	bnBd(languageCode: 'bn', countryCode: 'BD', build: _StringsBnBd.build),
	caEs(languageCode: 'ca', countryCode: 'ES', build: _StringsCaEs.build),
	csCz(languageCode: 'cs', countryCode: 'CZ', build: _StringsCsCz.build),
	deDe(languageCode: 'de', countryCode: 'DE', build: _StringsDeDe.build),
	elGr(languageCode: 'el', countryCode: 'GR', build: _StringsElGr.build),
	esEs(languageCode: 'es', countryCode: 'ES', build: _StringsEsEs.build),
	frFr(languageCode: 'fr', countryCode: 'FR', build: _StringsFrFr.build),
	idId(languageCode: 'id', countryCode: 'ID', build: _StringsIdId.build),
	itIt(languageCode: 'it', countryCode: 'IT', build: _StringsItIt.build),
	jaJp(languageCode: 'ja', countryCode: 'JP', build: _StringsJaJp.build),
	jaKs(languageCode: 'ja', countryCode: 'KS', build: _StringsJaKs.build),
	koGs(languageCode: 'ko', countryCode: 'GS', build: _StringsKoGs.build),
	koKr(languageCode: 'ko', countryCode: 'KR', build: _StringsKoKr.build),
	loLa(languageCode: 'lo', countryCode: 'LA', build: _StringsLoLa.build),
	nlNl(languageCode: 'nl', countryCode: 'NL', build: _StringsNlNl.build),
	noNo(languageCode: 'no', countryCode: 'NO', build: _StringsNoNo.build),
	plPl(languageCode: 'pl', countryCode: 'PL', build: _StringsPlPl.build),
	ptPt(languageCode: 'pt', countryCode: 'PT', build: _StringsPtPt.build),
	roRo(languageCode: 'ro', countryCode: 'RO', build: _StringsRoRo.build),
	ruRu(languageCode: 'ru', countryCode: 'RU', build: _StringsRuRu.build),
	skSk(languageCode: 'sk', countryCode: 'SK', build: _StringsSkSk.build),
	svSe(languageCode: 'sv', countryCode: 'SE', build: _StringsSvSe.build),
	thTh(languageCode: 'th', countryCode: 'TH', build: _StringsThTh.build),
	trTr(languageCode: 'tr', countryCode: 'TR', build: _StringsTrTr.build),
	ukUa(languageCode: 'uk', countryCode: 'UA', build: _StringsUkUa.build),
	uzUz(languageCode: 'uz', countryCode: 'UZ', build: _StringsUzUz.build),
	viVn(languageCode: 'vi', countryCode: 'VN', build: _StringsViVn.build),
	zhCn(languageCode: 'zh', countryCode: 'CN', build: _StringsZhCn.build),
	zhTw(languageCode: 'zh', countryCode: 'TW', build: _StringsZhTw.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}
