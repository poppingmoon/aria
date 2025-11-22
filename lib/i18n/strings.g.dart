/// Generated file. Do not edit.
///
/// Source: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 31
/// Strings: 67912 (2190 per locale)

// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

import 'strings_ar_SA.g.dart' deferred as l_ar_SA;
import 'strings_bn_BD.g.dart' deferred as l_bn_BD;
import 'strings_ca_ES.g.dart' deferred as l_ca_ES;
import 'strings_cs_CZ.g.dart' deferred as l_cs_CZ;
import 'strings_de_DE.g.dart' deferred as l_de_DE;
import 'strings_el_GR.g.dart' deferred as l_el_GR;
import 'strings_es_ES.g.dart' deferred as l_es_ES;
import 'strings_fr_FR.g.dart' deferred as l_fr_FR;
import 'strings_id_ID.g.dart' deferred as l_id_ID;
import 'strings_it_IT.g.dart' deferred as l_it_IT;
import 'strings_ja_JP.g.dart' deferred as l_ja_JP;
import 'strings_ja_KS.g.dart' deferred as l_ja_KS;
import 'strings_ko_GS.g.dart' deferred as l_ko_GS;
import 'strings_ko_KR.g.dart' deferred as l_ko_KR;
import 'strings_lo_LA.g.dart' deferred as l_lo_LA;
import 'strings_nl_NL.g.dart' deferred as l_nl_NL;
import 'strings_no_NO.g.dart' deferred as l_no_NO;
import 'strings_pl_PL.g.dart' deferred as l_pl_PL;
import 'strings_pt_PT.g.dart' deferred as l_pt_PT;
import 'strings_ro_RO.g.dart' deferred as l_ro_RO;
import 'strings_ru_RU.g.dart' deferred as l_ru_RU;
import 'strings_sk_SK.g.dart' deferred as l_sk_SK;
import 'strings_sv_SE.g.dart' deferred as l_sv_SE;
import 'strings_th_TH.g.dart' deferred as l_th_TH;
import 'strings_tr_TR.g.dart' deferred as l_tr_TR;
import 'strings_uk_UA.g.dart' deferred as l_uk_UA;
import 'strings_uz_UZ.g.dart' deferred as l_uz_UZ;
import 'strings_vi_VN.g.dart' deferred as l_vi_VN;
import 'strings_zh_CN.g.dart' deferred as l_zh_CN;
import 'strings_zh_TW.g.dart' deferred as l_zh_TW;
part 'strings_en_US.g.dart';

/// Supported locales.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.enUs) // set locale
/// - Locale locale = AppLocale.enUs.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.enUs) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	enUs(languageCode: 'en', countryCode: 'US'),
	arSa(languageCode: 'ar', countryCode: 'SA'),
	bnBd(languageCode: 'bn', countryCode: 'BD'),
	caEs(languageCode: 'ca', countryCode: 'ES'),
	csCz(languageCode: 'cs', countryCode: 'CZ'),
	deDe(languageCode: 'de', countryCode: 'DE'),
	elGr(languageCode: 'el', countryCode: 'GR'),
	esEs(languageCode: 'es', countryCode: 'ES'),
	frFr(languageCode: 'fr', countryCode: 'FR'),
	idId(languageCode: 'id', countryCode: 'ID'),
	itIt(languageCode: 'it', countryCode: 'IT'),
	jaJp(languageCode: 'ja', countryCode: 'JP'),
	jaKs(languageCode: 'ja', countryCode: 'KS'),
	koGs(languageCode: 'ko', countryCode: 'GS'),
	koKr(languageCode: 'ko', countryCode: 'KR'),
	loLa(languageCode: 'lo', countryCode: 'LA'),
	nlNl(languageCode: 'nl', countryCode: 'NL'),
	noNo(languageCode: 'no', countryCode: 'NO'),
	plPl(languageCode: 'pl', countryCode: 'PL'),
	ptPt(languageCode: 'pt', countryCode: 'PT'),
	roRo(languageCode: 'ro', countryCode: 'RO'),
	ruRu(languageCode: 'ru', countryCode: 'RU'),
	skSk(languageCode: 'sk', countryCode: 'SK'),
	svSe(languageCode: 'sv', countryCode: 'SE'),
	thTh(languageCode: 'th', countryCode: 'TH'),
	trTr(languageCode: 'tr', countryCode: 'TR'),
	ukUa(languageCode: 'uk', countryCode: 'UA'),
	uzUz(languageCode: 'uz', countryCode: 'UZ'),
	viVn(languageCode: 'vi', countryCode: 'VN'),
	zhCn(languageCode: 'zh', countryCode: 'CN'),
	zhTw(languageCode: 'zh', countryCode: 'TW');

	const AppLocale({
		required this.languageCode,
		this.scriptCode, // ignore: unused_element, unused_element_parameter
		this.countryCode, // ignore: unused_element, unused_element_parameter
	});

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;

	@override
	Future<Translations> build({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) async {
		switch (this) {
			case AppLocale.enUs:
				return TranslationsEnUs(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.arSa:
				await l_ar_SA.loadLibrary();
				return l_ar_SA.TranslationsArSa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.bnBd:
				await l_bn_BD.loadLibrary();
				return l_bn_BD.TranslationsBnBd(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.caEs:
				await l_ca_ES.loadLibrary();
				return l_ca_ES.TranslationsCaEs(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.csCz:
				await l_cs_CZ.loadLibrary();
				return l_cs_CZ.TranslationsCsCz(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.deDe:
				await l_de_DE.loadLibrary();
				return l_de_DE.TranslationsDeDe(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.elGr:
				await l_el_GR.loadLibrary();
				return l_el_GR.TranslationsElGr(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.esEs:
				await l_es_ES.loadLibrary();
				return l_es_ES.TranslationsEsEs(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.frFr:
				await l_fr_FR.loadLibrary();
				return l_fr_FR.TranslationsFrFr(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.idId:
				await l_id_ID.loadLibrary();
				return l_id_ID.TranslationsIdId(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.itIt:
				await l_it_IT.loadLibrary();
				return l_it_IT.TranslationsItIt(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.jaJp:
				await l_ja_JP.loadLibrary();
				return l_ja_JP.TranslationsJaJp(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.jaKs:
				await l_ja_KS.loadLibrary();
				return l_ja_KS.TranslationsJaKs(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.koGs:
				await l_ko_GS.loadLibrary();
				return l_ko_GS.TranslationsKoGs(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.koKr:
				await l_ko_KR.loadLibrary();
				return l_ko_KR.TranslationsKoKr(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.loLa:
				await l_lo_LA.loadLibrary();
				return l_lo_LA.TranslationsLoLa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.nlNl:
				await l_nl_NL.loadLibrary();
				return l_nl_NL.TranslationsNlNl(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.noNo:
				await l_no_NO.loadLibrary();
				return l_no_NO.TranslationsNoNo(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.plPl:
				await l_pl_PL.loadLibrary();
				return l_pl_PL.TranslationsPlPl(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ptPt:
				await l_pt_PT.loadLibrary();
				return l_pt_PT.TranslationsPtPt(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.roRo:
				await l_ro_RO.loadLibrary();
				return l_ro_RO.TranslationsRoRo(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ruRu:
				await l_ru_RU.loadLibrary();
				return l_ru_RU.TranslationsRuRu(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.skSk:
				await l_sk_SK.loadLibrary();
				return l_sk_SK.TranslationsSkSk(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.svSe:
				await l_sv_SE.loadLibrary();
				return l_sv_SE.TranslationsSvSe(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.thTh:
				await l_th_TH.loadLibrary();
				return l_th_TH.TranslationsThTh(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.trTr:
				await l_tr_TR.loadLibrary();
				return l_tr_TR.TranslationsTrTr(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ukUa:
				await l_uk_UA.loadLibrary();
				return l_uk_UA.TranslationsUkUa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.uzUz:
				await l_uz_UZ.loadLibrary();
				return l_uz_UZ.TranslationsUzUz(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.viVn:
				await l_vi_VN.loadLibrary();
				return l_vi_VN.TranslationsViVn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.zhCn:
				await l_zh_CN.loadLibrary();
				return l_zh_CN.TranslationsZhCn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.zhTw:
				await l_zh_TW.loadLibrary();
				return l_zh_TW.TranslationsZhTw(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}

	@override
	Translations buildSync({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) {
		switch (this) {
			case AppLocale.enUs:
				return TranslationsEnUs(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.arSa:
				return l_ar_SA.TranslationsArSa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.bnBd:
				return l_bn_BD.TranslationsBnBd(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.caEs:
				return l_ca_ES.TranslationsCaEs(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.csCz:
				return l_cs_CZ.TranslationsCsCz(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.deDe:
				return l_de_DE.TranslationsDeDe(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.elGr:
				return l_el_GR.TranslationsElGr(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.esEs:
				return l_es_ES.TranslationsEsEs(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.frFr:
				return l_fr_FR.TranslationsFrFr(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.idId:
				return l_id_ID.TranslationsIdId(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.itIt:
				return l_it_IT.TranslationsItIt(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.jaJp:
				return l_ja_JP.TranslationsJaJp(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.jaKs:
				return l_ja_KS.TranslationsJaKs(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.koGs:
				return l_ko_GS.TranslationsKoGs(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.koKr:
				return l_ko_KR.TranslationsKoKr(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.loLa:
				return l_lo_LA.TranslationsLoLa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.nlNl:
				return l_nl_NL.TranslationsNlNl(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.noNo:
				return l_no_NO.TranslationsNoNo(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.plPl:
				return l_pl_PL.TranslationsPlPl(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ptPt:
				return l_pt_PT.TranslationsPtPt(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.roRo:
				return l_ro_RO.TranslationsRoRo(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ruRu:
				return l_ru_RU.TranslationsRuRu(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.skSk:
				return l_sk_SK.TranslationsSkSk(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.svSe:
				return l_sv_SE.TranslationsSvSe(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.thTh:
				return l_th_TH.TranslationsThTh(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.trTr:
				return l_tr_TR.TranslationsTrTr(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ukUa:
				return l_uk_UA.TranslationsUkUa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.uzUz:
				return l_uz_UZ.TranslationsUzUz(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.viVn:
				return l_vi_VN.TranslationsViVn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.zhCn:
				return l_zh_CN.TranslationsZhCn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.zhTw:
				return l_zh_TW.TranslationsZhTw(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.getTranslations(this);
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
	LocaleSettings._() : super(
		utils: AppLocaleUtils.instance,
		lazy: true,
	);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static Future<AppLocale> setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static Future<AppLocale> setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static Future<AppLocale> useDeviceLocale() => instance.useDeviceLocale();
	static Future<void> setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);

	// synchronous versions
	static AppLocale setLocaleSync(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocaleSync(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRawSync(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRawSync(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocaleSync() => instance.useDeviceLocaleSync();
	static void setPluralResolverSync({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolverSync(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(
		baseLocale: AppLocale.enUs,
		locales: AppLocale.values,
	);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}
