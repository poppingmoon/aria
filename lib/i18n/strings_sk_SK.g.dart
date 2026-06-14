///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsSkSk extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsSkSk({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.skSk,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <sk-SK>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsSkSk _root = this; // ignore: unused_field

	@override 
	TranslationsSkSk $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsSkSk(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$aria$sk_SK aria = _Translations$aria$sk_SK._(_root);
	@override late final _Translations$misskey$sk_SK misskey = _Translations$misskey$sk_SK._(_root);
}

// Path: aria
class _Translations$aria$sk_SK extends Translations$aria$en_US {
	_Translations$aria$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Naozaj chcete sledovať '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria je prekladaný do rôznych jazykov dobrovoľníkmi. Pomôcť môžete na '),
		link,
		const TextSpan(text: '.'),
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' používateľov je online'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: ' preposlal/a'),
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Naozaj už nechcete sledovať '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' niečo povedal/a'),
	]);
}

// Path: misskey
class _Translations$misskey$sk_SK extends Translations$misskey$en_US {
	_Translations$misskey$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Slovenčina';
	@override String get headlineMisskey => 'Sieť prepojená poznámkami';
	@override String get introMisskey => 'Vitajte! Misskey je otvorená a decentralizovaná mikroblogovacia služba.\n"Poznámkami" môžete zdieľať svoje myšlienky so všetkými okolo. 📡\nPomocou "reakcií" môžete rýchlo vyjadri svoje pocity o každého poznámkach. 👍\nPoďte objavovať svet! 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} je jedným zo serverov využívajúcich open source platformu <b>Misskey</b> (nazývaných Misskey inštancia).';
	@override String monthAndDay({required Object day, required Object month}) => '${day}. ${month}.';
	@override String get search => 'Hľadať';
	@override String get notifications => 'Oznámenia';
	@override String get username => 'Meno používateľa';
	@override String get password => 'Heslo';
	@override String get forgotPassword => 'Zabudnuté heslo';
	@override String get fetchingAsApObject => 'Načítam údaje z Fediverzu';
	@override String get ok => 'OK';
	@override String get gotIt => 'Rozumiem!';
	@override String get cancel => 'Zrušiť';
	@override String get noThankYou => 'Nie, ďakujem';
	@override String get enterUsername => 'Zadajte meno používateľa';
	@override String renotedBy({required Object user}) => '${user} preposlal/a';
	@override String get noNotes => 'Žiadne poznámky';
	@override String get noNotifications => 'Žiadne oznámenia';
	@override String get instance => 'Inštancia';
	@override String get settings => 'Nastavenia';
	@override String get basicSettings => 'Všeobecné nastavenia';
	@override String get otherSettings => 'Rozšírené nastavenia';
	@override String get openInWindow => 'Otvoriť v novom okne';
	@override String get profile => 'Profil';
	@override String get timeline => 'Časová os';
	@override String get noAccountDescription => 'Tento používateľ zatiaľ nenapísal o sebe.';
	@override String get login => 'Prihlásiť sa';
	@override String get loggingIn => 'Prebieha prihlasovanie';
	@override String get logout => 'Odhlásiť';
	@override String get signup => 'Registrovať';
	@override String get uploading => 'Nahrávanie...';
	@override String get save => 'Uložiť';
	@override String get users => 'Používatelia';
	@override String get addUser => 'Pridať používateľa';
	@override String get favorite => 'Páči sa mi';
	@override String get favorites => 'Obľúbené';
	@override String get unfavorite => 'Nepáči sa mi';
	@override String get favorited => 'Pridané do obľúbených';
	@override String get alreadyFavorited => 'Už je medzi obľúbenými';
	@override String get cantFavorite => 'Nepodarilo sa pridať medzi obľúbené.';
	@override String get pin => 'Pripnúť';
	@override String get unpin => 'Odopnúť';
	@override String get copyContent => 'Kopírovať obsah';
	@override String get copyLink => 'Kopírovať odkaz';
	@override String get delete => 'Odstrániť';
	@override String get deleteAndEdit => 'Odstrániť a upraviť';
	@override String get deleteAndEditConfirm => 'Naozaj chcete odstrániť túto poznámku a upraviť ju? Stratíte tým všetky reakcie a odpovede na ňu.';
	@override String get addToList => 'Pridať do zoznamu';
	@override String get sendMessage => 'Odoslať správu';
	@override String get copyRSS => 'Kopírovať RSS';
	@override String get copyUsername => 'Kopírovať meno používateľa';
	@override String get searchUser => 'Hľadať používateľov';
	@override String get reply => 'Odpovedať';
	@override String get loadMore => 'Zobraziť viac';
	@override String get showMore => 'Zobraziť viac';
	@override String get showLess => 'Zavrieť';
	@override String get youGotNewFollower => 'Máte nového sledujúceho';
	@override String get receiveFollowRequest => 'Žiadosť o sledovanie prijatá';
	@override String get followRequestAccepted => 'Žiadosť o sledovanie akceptovaná';
	@override String get mention => 'Zmienka';
	@override String get mentions => 'Zmienky';
	@override String get directNotes => 'Priame poznámky';
	@override String get importAndExport => 'Import a export';
	@override String get import => 'Importovať';
	@override String get export => 'Exportovať';
	@override String get files => 'Súbor/y';
	@override String get download => 'Stiahnuť';
	@override String driveFileDeleteConfirm({required Object name}) => 'Naozaj chcete odstrániť súbor "${name}"? Poznámky s týmto súborom sa odstránia tiež.';
	@override String unfollowConfirm({required Object name}) => 'Naozaj už nechcete sledovať ${name}?';
	@override String get exportRequested => 'Vyžiadali ste export. Môže to chvíľu trvať. Po skončení pribudne na vašom disku.';
	@override String get importRequested => 'Požiadali ste o export. Môže to chvíľu trvať.';
	@override String get lists => 'Zoznamy';
	@override String get noLists => 'Nemáte žiadne zoznamy';
	@override String get note => 'Poznámka';
	@override String get notes => 'Poznámky';
	@override String get following => 'Sledujete';
	@override String get followers => 'Sledujúci';
	@override String get followsYou => 'Sledujú vás';
	@override String get createList => 'Vytvoriť zoznam';
	@override String get manageLists => 'Spravovať zoznamy';
	@override String get error => 'Chyba';
	@override String get somethingHappened => 'Ups. Niečo sa nepodarilo.';
	@override String get retry => 'Opakovať';
	@override String get pageLoadError => 'Nepodarilo sa načítať stránku';
	@override String get pageLoadErrorDescription => 'Toto môže byť spôsobené problémami so sieťou alebo cachou prehliadača. Skúste vyčistiť cache a potom skúsiť znova po chvíli.';
	@override String get serverIsDead => 'Tento server nereaguje. Prosím chvíľu počkajte a skúste znova.';
	@override String get youShouldUpgradeClient => 'Na pozretie tejto stránky prosím obnovte svojho klienta.';
	@override String get enterListName => 'Zadajte názov zoznamu';
	@override String get privacy => 'Súkromie';
	@override String get makeFollowManuallyApprove => 'Žiadosti o sledovanie treba schváliť';
	@override String get defaultNoteVisibility => 'Predvolená viditeľnosť';
	@override String get follow => 'Sledovať';
	@override String get followRequest => 'Požiadať o sledovanie';
	@override String get followRequests => 'Žiadosti o sledovanie';
	@override String get unfollow => 'Nesledovať';
	@override String get followRequestPending => 'Žiadosť o sledovanie čaká';
	@override String get enterEmoji => 'Zadajte emoji';
	@override String get renote => 'Preposlať';
	@override String get unrenote => 'Vrátiť preposlanie';
	@override String get renoted => 'Preposlané.';
	@override String get cantRenote => 'Tento príspevok sa nedá preposlať.';
	@override String get cantReRenote => 'Odpoveď nemôže byť odstránená.';
	@override String get quote => 'Citovať';
	@override String get inChannelRenote => 'Preposlania v kanáli';
	@override String get inChannelQuote => 'Citácie v kanáli';
	@override String get pinnedNote => 'Pripnuté poznámky';
	@override String get pinned => 'Pripnúť';
	@override String get you => 'Vy';
	@override String get clickToShow => 'Kliknutím zobrazíte';
	@override String get sensitive => 'NSFW';
	@override String get add => 'Pridať';
	@override String get reaction => 'Reakcie';
	@override String get reactions => 'Reakcie';
	@override String get reactionSettingDescription2 => 'Ťahaním preusporiadate, kliknutím odstránite, Stlačením "+" pridáte';
	@override String get rememberNoteVisibility => 'Zapamätať nastavenia viditeľnosti poznámky';
	@override String get attachCancel => 'Odstrániť prílohu';
	@override String get markAsSensitive => 'Označiť ako NSFW';
	@override String get unmarkAsSensitive => 'Odznačiť NSFW';
	@override String get enterFileName => 'Zadajte názov súboru';
	@override String get mute => 'Vypnúť zvuk';
	@override String get unmute => 'Zapnúť zvuk';
	@override String get block => 'Zablokovať';
	@override String get unblock => 'Odblokovať';
	@override String get suspend => 'Zmraziť';
	@override String get unsuspend => 'Odmraziť';
	@override String get blockConfirm => 'Naozaj chcete zablokovať tento účet?';
	@override String get unblockConfirm => 'Naozaj chcete odblokovať tento účet?';
	@override String get suspendConfirm => 'Naozaj chcete zmraziť tento účet?';
	@override String get unsuspendConfirm => 'Naozaj chcete odmraziť tento účet?';
	@override String get selectList => 'Vyberte zoznam';
	@override String get selectChannel => 'Zvoľte kanál';
	@override String get selectAntenna => 'Vyberte anténu';
	@override String get selectWidget => 'Vyberte widget';
	@override String get editWidgets => 'Upraviť widget';
	@override String get editWidgetsExit => 'Hotovo';
	@override String get customEmojis => 'Vlastné emoji';
	@override String get emoji => 'Emoji';
	@override String get emojis => 'Emoji';
	@override String get emojiName => 'Názov emoji';
	@override String get emojiUrl => 'URL obrázku';
	@override String get addEmoji => 'Pridať emoji';
	@override String get settingGuide => 'Odporúčané nastavenia';
	@override String get cacheRemoteFiles => 'Cachovanie vzdialených súborov';
	@override String get cacheRemoteFilesDescription => 'Zakázanie tohoto nastavenia spôsobí, že vzdialené súbory budú odkazované priamo, namiesto ukladania do cache. Ušetrí sa tak miesto na serveri, ale zvýši sa dátový tok, pretože sa negenerujú miniatúry.';
	@override String get flagAsBot => 'Tento účet je bot';
	@override String get flagAsBotDescription => 'Ak je tento účet ovládaný programom, zaškrtnite túto voľbu. Ostatní uvidia, že je to bot a zabráni nekonečným interakciám s ďalšími botmi a upraví interné systémy Misskey, aby ho považoval za bota.';
	@override String get flagAsCat => 'Tento účet je mačka';
	@override String get flagAsCatDescription => 'Zvoľte túto voľbu, aby bol tento účet označený ako mačka.';
	@override String get flagShowTimelineReplies => 'Zobraziť odpovede na poznámky v časovej osi';
	@override String get flagShowTimelineRepliesDescription => 'Keď je zapnuté, na časovej osi sa zobrazia odpovede k poznámkam používateľov okrem samotných poznámok.';
	@override String get autoAcceptFollowed => 'Automaticky prijať sledovanie od účtov, ktoré sledujete';
	@override String get addAccount => 'Pridať účet';
	@override String get loginFailed => 'Prihlásenie sa nepodarilo.';
	@override String get showOnRemote => 'Zobraziť na vzdialenom serveri';
	@override String get general => 'Všeobecné';
	@override String get wallpaper => 'Tapeta';
	@override String get setWallpaper => 'Nastaviť tapetu';
	@override String get removeWallpaper => 'Odstrániť tapetu';
	@override String searchWith({required Object q}) => 'Hľadať: ${q}';
	@override String get youHaveNoLists => 'Nemáte žiadne zoznamy';
	@override String followConfirm({required Object name}) => 'Naozaj chcete sledovať ${name}?';
	@override String get proxyAccount => 'Proxy účet';
	@override String get proxyAccountDescription => 'Proxy účet je účet, ktorý za určitých podmienok sleduje používateľov na diaľku vaším menom. Napríklad keď používateľ zaradí vzdialeného používateľa do zoznamu, pokiaľ nikto nesleduje používateľa na zozname, aktivita nebude doručená na server, takže namiesto toho bude používateľa sledova proxy účet.';
	@override String get host => 'Host';
	@override String get selectUser => 'Vyberte používateľa';
	@override String get recipient => 'Prijímateľ';
	@override String get annotation => 'Komentáre';
	@override String get federation => 'Federácia';
	@override String get instances => 'Inštancia';
	@override String get registeredAt => 'Registrácia';
	@override String get latestRequestReceivedAt => 'Posledná prijatá požiadavka';
	@override String get latestStatus => 'Posledný status';
	@override String get storageUsage => 'Využité úložisko';
	@override String get charts => 'Grafy';
	@override String get perHour => 'za hodinu';
	@override String get perDay => 'za deň';
	@override String get stopActivityDelivery => 'Zastaviť posielanie aktivít';
	@override String get blockThisInstance => 'Blokovať tento server';
	@override String get operations => 'Operácie';
	@override String get software => 'Softvér';
	@override String get version => 'Verzia';
	@override String get metadata => 'Metadáta';
	@override String withNFiles({required Object n}) => '${n} súbor(ov)';
	@override String get monitor => 'Monitor';
	@override String get jobQueue => 'Fronta úloh';
	@override String get cpuAndMemory => 'CPU a pamäť';
	@override String get network => 'Sieť';
	@override String get disk => 'Disk';
	@override String get instanceInfo => 'Informácie o serveri';
	@override String get statistics => 'Štatistiky';
	@override String get clearQueue => 'Vyčistiť frontu';
	@override String get clearQueueConfirmTitle => 'Naozaj chcete zrušiť všetky úlohy vo fronte?';
	@override String get clearQueueConfirmText => 'Všetky nedoručené poznámky čakajúce vo fronte nebudú federované. Zvyčajne táto operácia nie je potrebná.';
	@override String get clearCachedFiles => 'Vyprázdniť cache';
	@override String get clearCachedFilesConfirm => 'Naozaj chcete odstrániť všetky nacachované vzdialené súbory?';
	@override String get blockedInstances => 'Blokované servery';
	@override String get blockedInstancesDescription => 'Zoznam blokovaných serverov na riadkoch. Blokované servery nebudú môcť komunikovať s týmto serverom.';
	@override String get muteAndBlock => 'Umlčania a blokácie';
	@override String get mutedUsers => 'Umlčaní používatelia';
	@override String get blockedUsers => 'Blokovaní používatelia';
	@override String get noUsers => 'Žiadni používatelia';
	@override String get editProfile => 'Upraviť profil';
	@override String get noteDeleteConfirm => 'Naozaj chcete odstrániť túto poznámku?';
	@override String get pinLimitExceeded => 'Ďalšie poznámky už nemôžete pripnúť.';
	@override String get done => 'Hotovo';
	@override String get processing => 'Pracujem...';
	@override String get preview => 'Náhľad';
	@override String get default_ => 'Predvolené';
	@override String defaultValueIs({required Object value}) => 'Predvolené: ${value}';
	@override String get noCustomEmojis => 'Žiadne emoji';
	@override String get noJobs => 'Žiadne úlohy';
	@override String get federating => 'Federácia';
	@override String get blocked => 'Blokované';
	@override String get suspended => 'Zmrazené';
	@override String get all => 'Všetko';
	@override String get subscribing => 'Odoberanie';
	@override String get publishing => 'Zverejňovanie';
	@override String get notResponding => 'Neodpovedá';
	@override String get instanceFollowing => 'Sledujem na serveri';
	@override String get instanceFollowers => 'Sledujúci zo servera';
	@override String get instanceUsers => 'Používatelia servera';
	@override String get changePassword => 'Zmeniť heslo';
	@override String get security => 'Zabezpečenie';
	@override String get retypedNotMatch => 'Zadané vstupy nesúhlasia';
	@override String get currentPassword => 'Aktuálne heslo';
	@override String get newPassword => 'Nové heslo';
	@override String get newPasswordRetype => 'Nové heslo (znovu)';
	@override String get attachFile => 'Priložiť súbor';
	@override String get more => 'Viac!';
	@override String get featured => 'Obľúbené poznámky';
	@override String get usernameOrUserId => 'Meno používateľa alebo ID používateľa';
	@override String get noSuchUser => 'Používateľ sa nenašiel';
	@override String get lookup => 'Vyhľadať';
	@override String get announcements => 'Oznamy';
	@override String get imageUrl => 'URL obrázku';
	@override String get remove => 'Odstrániť';
	@override String get removed => 'Odstránené';
	@override String removeAreYouSure({required Object x}) => 'Naozaj chcete odstrániť "${x}"?';
	@override String deleteAreYouSure({required Object x}) => 'Naozaj chcete odstrániť "${x}"?';
	@override String get resetAreYouSure => 'Naozaj resetovať?';
	@override String get saved => 'Uložené';
	@override String get upload => 'Nahrať súbor';
	@override String get keepOriginalUploading => 'Zachovať pôvodný obrázok';
	@override String get keepOriginalUploadingDescription => 'Uloží pôvodný obrázok ako je. Ak je vypnuté, verzia pre web sa vygeneruje pri nahratí.';
	@override String get fromDrive => 'Z disku';
	@override String get fromUrl => 'Z URL';
	@override String get uploadFromUrl => 'Nahrať z URL adresy';
	@override String get uploadFromUrlDescription => 'URL adresa nahrávaného súboru';
	@override String get uploadFromUrlRequested => 'Upload vyžiadaný';
	@override String get uploadFromUrlMayTakeTime => 'Nahrávanie môže nejaký čas trvať.';
	@override String get explore => 'Objavovať';
	@override String get messageRead => 'Prečítané';
	@override String get noMoreHistory => 'To je všetko';
	@override String nUsersRead({required Object n}) => 'prečítané ${n} používateľmi';
	@override String agreeTo({required Object x0}) => 'Súhlasím s ${x0}';
	@override String get agreeBelow => 'Súhlasím s nasledovným';
	@override String get basicNotesBeforeCreateAccount => 'Základné bezpečnostné opatrenia';
	@override String get start => 'Začať';
	@override String get home => 'Domov';
	@override String get remoteUserCaution => 'Tieto informácie nemusia byť aktuálne, keďže používateľ je na vzdialenom serveri.';
	@override String get activity => 'Aktivita';
	@override String get images => 'Obrázky';
	@override String get image => 'Obrázky';
	@override String get birthday => 'Dátum narodenia';
	@override String yearsOld({required Object age}) => '${age} rokov';
	@override String get registeredDate => 'Dátum registrácie';
	@override String get location => 'Lokalita';
	@override String get theme => 'Téma';
	@override String get themeForLightMode => 'Téma pri svetlom režime';
	@override String get themeForDarkMode => 'Téma pri tmavom režime';
	@override String get light => 'Svetlá';
	@override String get dark => 'Tmavá';
	@override String get lightThemes => 'Svetlá téma';
	@override String get darkThemes => 'Tmavá téma';
	@override String get syncDeviceDarkMode => 'Synchronizovať tmavú tému s nastavení vášho systému';
	@override String get drive => 'Disk';
	@override String get fileName => 'Názov súboru';
	@override String get selectFile => 'Vyberte súbor';
	@override String get selectFiles => 'Vyberte súbory';
	@override String get selectFolder => 'Vyberte priečinok';
	@override String get selectFolders => 'Vyberte priečinky';
	@override String get renameFile => 'Premenovať súbor';
	@override String get folderName => 'Názov priečinka';
	@override String get createFolder => 'Vytvoriť priečinok';
	@override String get renameFolder => 'Premenovať priečinok';
	@override String get deleteFolder => 'Odstrániť priečinok';
	@override String get addFile => 'Pridať súbor';
	@override String get emptyDrive => 'Váš disk je prázdny';
	@override String get emptyFolder => 'Tento priečinok je prázdny';
	@override String get unableToDelete => 'Nedá sa odstrániť';
	@override String get inputNewFileName => 'Zadajte nový názov';
	@override String get inputNewDescription => 'Zadajte nový popis';
	@override String get inputNewFolderName => 'Zadajte nový názov priečinka';
	@override String get circularReferenceFolder => 'Cieľový priečinok je podpriečinkom priečinka, ktorý chcete presunúť.';
	@override String get hasChildFilesOrFolders => 'Nemôžete odstrániť priečinok sú súbormi.';
	@override String get copyUrl => 'Kopírovať URL';
	@override String get rename => 'Premenovať';
	@override String get avatar => 'Avatar';
	@override String get banner => 'BAnner';
	@override String get whenServerDisconnected => 'Keď sa stratí spojenie so serverom';
	@override String get disconnectedFromServer => 'Spojenie so serverom bolo prerušené';
	@override String get reload => 'Obnoviť';
	@override String get doNothing => 'Ignorovať';
	@override String get reloadConfirm => 'Chcete obnoviť časovú os?';
	@override String get watch => 'Sledovať';
	@override String get unwatch => 'Nesledovať';
	@override String get accept => 'Súhlasím';
	@override String get reject => 'Nesúhlasím';
	@override String get normal => 'Normálne';
	@override String get instanceName => 'Názov servera';
	@override String get instanceDescription => 'Popis servera';
	@override String get maintainerName => 'Správca';
	@override String get maintainerEmail => 'E-mailová adresa správcu';
	@override String get tosUrl => 'URL zmluvných podmienok';
	@override String get thisYear => 'Rok';
	@override String get thisMonth => 'Mesiac';
	@override String get today => 'Dnes';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => '${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'Stránky';
	@override String get integration => 'Integrácia';
	@override String get connectService => 'Pripojiť';
	@override String get disconnectService => 'Odpojiť';
	@override String get enableLocalTimeline => 'Povoliť lokálnu časovú os';
	@override String get enableGlobalTimeline => 'Povoliť globálnu časovú os';
	@override String get disablingTimelinesInfo => 'Administrátori a moderátori majú vždy prístup ku všetkým časovým osiam, aj keď sú vypnuté.';
	@override String get registration => 'Registrácia';
	@override String get invite => 'Pozvať';
	@override String get driveCapacityPerLocalAccount => 'Kapacita disku pre používateľa';
	@override String get driveCapacityPerRemoteAccount => 'Kapacita disku pre vzdialeného používateľa';
	@override String get inMb => 'V megabajtoch';
	@override String get bannerUrl => 'URL obrázku bannera';
	@override String get backgroundImageUrl => 'URL obrázku pozadia';
	@override String get basicInfo => 'Základné informácie';
	@override String get pinnedUsers => 'Pripnutí používatelia';
	@override String get pinnedUsersDescription => 'Zoznam mien používateľov oddelených riadkami, ktorý budú pripnutí v záložke "Objavovať".';
	@override String get pinnedPages => 'Pripnuté stránky';
	@override String get pinnedPagesDescription => 'Na každý riadok zadajte cesty stránok, ktoré chcete pripnúť na vrch stránky tohoto servera.';
	@override String get pinnedClipId => 'ID pripnutého klipu';
	@override String get pinnedNotes => 'Pripnuté poznámky';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'Zapnúť hCaptchu';
	@override String get hcaptchaSiteKey => 'Site key';
	@override String get hcaptchaSecretKey => 'Secret key';
	@override String get mcaptchaSiteKey => 'Site key';
	@override String get mcaptchaSecretKey => 'Secret key';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'Zapnúť ReCAPTCHA';
	@override String get recaptchaSiteKey => 'Site key';
	@override String get recaptchaSecretKey => 'Secret key';
	@override String get turnstile => 'Turnstile';
	@override String get enableTurnstile => 'Povoliť turnstile';
	@override String get turnstileSiteKey => 'Site key';
	@override String get turnstileSecretKey => 'Secret key';
	@override String get avoidMultiCaptchaConfirm => 'Použitie viacerých Captcha systémov môže sposobiť problémy. Chcete radšej vypnúť ostatné Captcha systémy? Môžete ich povoliť viaceré stlačení Zrušiť.';
	@override String get antennas => 'Antény';
	@override String get manageAntennas => 'Spravovať antény';
	@override String get name => 'Názov';
	@override String get antennaSource => 'Zdroj antény';
	@override String get antennaKeywords => 'Počúvané kľúčové slová';
	@override String get antennaExcludeKeywords => 'Vylúčené kľúčové slová';
	@override String get antennaKeywordsDescription => 'Oddeľte medzerami pre podmienku AND alebo novými riadkami pre podmienku OR.';
	@override String get notifyAntenna => 'Upozorniť na nové poznámky';
	@override String get withFileAntenna => 'Len poznámky so súbormi';
	@override String get enableServiceworker => 'Povoliť Service Worker';
	@override String get antennaUsersDescription => 'Zoznam používateľov jeden na riadok';
	@override String get caseSensitive => 'Rozlišuje malé a veľké písmená';
	@override String get withReplies => 'Vrátane odpovedí';
	@override String get connectedTo => 'Nasledujúce účty sú pripojené';
	@override String get notesAndReplies => 'Poznámky a odpovede';
	@override String get withFiles => 'Vrátane súborov';
	@override String get silence => 'Ticho';
	@override String get silenceConfirm => 'Naozaj chcete utíšiť tohoto používateľa?';
	@override String get unsilence => 'Vrátiť utíšenie';
	@override String get unsilenceConfirm => 'Naozaj chcete vrátiť utíšenie tohoto používateľa?';
	@override String get popularUsers => 'Populárni používatelia';
	@override String get recentlyUpdatedUsers => 'Používatelia s najnovšou aktivitou';
	@override String get recentlyRegisteredUsers => 'Najnovší používatelia';
	@override String get recentlyDiscoveredUsers => 'Naposledy objavení používatelia';
	@override String exploreUsersCount({required Object count}) => 'Existuje ${count} používateľov';
	@override String get exploreFediverse => 'Objavovať Fediverzum';
	@override String get popularTags => 'Populárne značky';
	@override String get userList => 'Zoznamy';
	@override String get about => 'Informácie';
	@override String get aboutMisskey => 'O Misskey';
	@override String get administrator => 'Administrátor';
	@override String get token => 'Token';
	@override String get x2fa => 'Dvojfaktorové overenie (2FA)';
	@override String get totp => 'Overovacia aplikácia';
	@override String get totpDescription => 'Zadajte jednorazové heslo z overovacej aplikácie';
	@override String get moderator => 'Moderátor';
	@override String get moderation => 'Moderovanie';
	@override String nUsersMentioned({required Object n}) => '${n} používateľov spomenulo';
	@override String get securityKeyAndPasskey => 'Bezpečnostný kľúč/heslo';
	@override String get securityKey => 'Bezpečnostný kľúč';
	@override String get lastUsed => 'Naposledy použité';
	@override String lastUsedAt({required Object t}) => 'Naposledy použité: ${t}';
	@override String get unregister => 'Odregistrovať';
	@override String get passwordLessLogin => 'Nastaviť bezheslové prihlásenie';
	@override String get passwordLessLoginDescription => 'Prihlásenie bez hesla, len bezpečnostným kľúčom alebo prístupovým kľúčom';
	@override String get resetPassword => 'Resetovať heslo';
	@override String newPasswordIs({required Object password}) => 'Nové heslo je "${password}"';
	@override String get reduceUiAnimation => 'Menej UI animácií';
	@override String get share => 'Zdieľať';
	@override String get notFound => 'Nenájdené';
	@override String get notFoundDescription => 'Nenašla sa žiadna stránka na zadanej URL.';
	@override String get uploadFolder => 'Predvolený priečinok pre nahrávanie';
	@override String get markAsReadAllNotifications => 'Označiť všetky oznámenia ako prečítané';
	@override String get markAsReadAllUnreadNotes => 'Označiť všetky poznámky ako prečítané';
	@override String get markAsReadAllTalkMessages => 'Označiť všetky správy ako prečítané';
	@override String get help => 'Pomoc';
	@override String get inputMessageHere => 'Sem napíšte správu';
	@override String get close => 'Zavrieť';
	@override String get invites => 'Pozvať';
	@override String get members => 'Členovia';
	@override String get transfer => 'Presun';
	@override String get title => 'Nadpis';
	@override String get text => 'Text';
	@override String get enable => 'Povoliť';
	@override String get next => 'Ďalší';
	@override String get retype => 'Zadajte znovu';
	@override String noteOf({required Object user}) => 'Poznámky používateľa ${user}';
	@override String get quoteAttached => 'Citované';
	@override String get quoteQuestion => 'Pripojiť ako citát?';
	@override String get onlyOneFileCanBeAttached => 'Ku správe môžete priložiť len jeden súbor';
	@override String get signinRequired => 'Prihláste sa, prosím!';
	@override String get invitations => 'Pozvať';
	@override String get invitationCode => 'Kód pozvánky';
	@override String get checking => 'Overujem...';
	@override String get available => 'Dostupné';
	@override String get unavailable => 'Nedostupné';
	@override String get usernameInvalidFormat => 'Povolené sú písmená, čísla a _.';
	@override String get tooShort => 'Príliš krátke';
	@override String get tooLong => 'Príliš dlhé';
	@override String get weakPassword => 'Slabé heslo';
	@override String get normalPassword => 'Dobré heslo';
	@override String get strongPassword => 'Silné heslo';
	@override String get passwordMatched => 'Heslá sú rovnaké';
	@override String get passwordNotMatched => 'Heslá nie sú rovnaké';
	@override String signinWith({required Object x}) => 'Prihlásiť sa použitím ${x}';
	@override String get signinFailed => 'Nedá sa prihlásiť. Skontrolujte prosím meno používateľa a heslo.';
	@override String get or => 'Alebo';
	@override String get language => 'Jazyk';
	@override String get uiLanguage => 'Jazyk používateľského prostredia';
	@override String aboutX({required Object x}) => 'O ${x}';
	@override String get emojiStyle => 'Štýl emoji';
	@override String get native => 'Natívne';
	@override String get showNoteActionsOnlyHover => 'Ovládacie prvky poznámky sa zobrazujú len po nabehnutí myši';
	@override String get noHistory => 'Žiadna história';
	@override String get signinHistory => 'História prihlásení';
	@override String get enableAdvancedMfm => 'Povolenie pokročilého MFM';
	@override String get enableAnimatedMfm => 'Povoliť animované MFM';
	@override String get doing => 'Pracujem...';
	@override String get category => 'Kategórie';
	@override String get tags => 'Značky';
	@override String get docSource => 'Zdroj tohoto dokumentu';
	@override String get createAccount => 'Vytvoriť účet';
	@override String get existingAccount => 'Existujúci účet';
	@override String get regenerate => 'Pregenerovať';
	@override String get fontSize => 'Veľkosť písma';
	@override String get noFollowRequests => 'Nemáte nijaké čakajúce žiadosti o sledovanie';
	@override String get openImageInNewTab => 'Otvoriť obrázok v novom tabe';
	@override String get dashboard => 'Prehľad';
	@override String get local => 'Lokálne';
	@override String get remote => 'Vzdialené';
	@override String get total => 'Celkom';
	@override String get weekOverWeekChanges => 'Medzitýždňové zmeny';
	@override String get dayOverDayChanges => 'Medzidenné zmeny';
	@override String get appearance => 'Vzhľad';
	@override String get clientSettings => 'Nastavenia klienta';
	@override String get accountSettings => 'Nastavenia účtu';
	@override String get promotion => 'Propagácia';
	@override String get promote => 'Propagovať';
	@override String get numberOfDays => 'Počet dní';
	@override String get hideThisNote => 'Skryť túto poznámku';
	@override String get showFeaturedNotesInTimeline => 'Zobraziť významné poznámky v časovej osi';
	@override String get objectStorage => 'Objektové úložisko';
	@override String get useObjectStorage => 'Použiť objektové úložisko';
	@override String get objectStorageBaseUrl => 'Základná URL';
	@override String get objectStorageBaseUrlDesc => 'URL použitá ako referencia. Zadajte URL svojho CDN alebo Proxy ak niektoré používate. S3: \'https://<bucket>.s3.amazonaws.com\', GCS: \'https://storage.googleapis.com/<bucket>\' atď.';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => 'Prosím zadajte názov bucketu od svojho poskytovateľa.';
	@override String get objectStoragePrefix => 'Prefix';
	@override String get objectStoragePrefixDesc => 'Súbory budú ukladané do priečinkov pod týmto prefixom.';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageEndpointDesc => 'Nechajte prázdne ak používate AWS S3, inak zadajte endpoint ako "<host>" alebo "<host>:<port>". Záleží to od služby, ktorú používate.';
	@override String get objectStorageRegion => 'Región';
	@override String get objectStorageRegionDesc => 'Zadajte región ako \'xx-east-1\'. Ak vaša služba nerozlišuje regióny, nechajte prázdne alebo zadajte \'us-east-1\'.';
	@override String get objectStorageUseSSL => 'Použiť SSL';
	@override String get objectStorageUseSSLDesc => 'Vypnite to ak nechcete použiť HTTPS na API spojenia.';
	@override String get objectStorageUseProxy => 'Pripájať cez Proxy';
	@override String get objectStorageUseProxyDesc => 'Vypnite ak nechcete, aby spojenia na API išli cez Proxy';
	@override String get objectStorageSetPublicRead => 'Pri nahratí nastaviť "public-read"';
	@override String get serverLogs => 'Logy servera';
	@override String get deleteAll => 'Odstrániť všetko';
	@override String get showFixedPostForm => 'Zobraziť formulár na nové príspevky nad časovou osou';
	@override String get newNoteRecived => 'Sú nové poznámky';
	@override String get sounds => 'Zvuky';
	@override String get sound => 'Zvuky';
	@override String get listen => 'Počúvať';
	@override String get none => 'Žiadne';
	@override String get showInPage => 'Zobraziť v stránke';
	@override String get popout => 'Pop-out';
	@override String get volume => 'Hlasitosť';
	@override String get masterVolume => 'Celková hlasitosť';
	@override String get details => 'Detaily';
	@override String get chooseEmoji => 'Vybrať emoji';
	@override String get unableToProcess => 'Operáciu sa nepodarilo dokončiť.';
	@override String get recentUsed => 'Neposledy použité';
	@override String get install => 'Nainštalovať';
	@override String get uninstall => 'Odinštalovať';
	@override String get installedApps => 'Autorizované aplikácie';
	@override String get nothing => 'Nič tu nie je';
	@override String get installedDate => 'Dátum autorizácie';
	@override String get lastUsedDate => 'Naposledy použité';
	@override String get state => 'Status';
	@override String get sort => 'Zoradiť';
	@override String get ascendingOrder => 'Vzostupne';
	@override String get descendingOrder => 'Zostupne';
	@override String get scratchpad => 'Zápisník';
	@override String get scratchpadDescription => 'Zápisník poskytuje prostredia pre experimenty s AiScriptom. Môžete písať, spúšťať a skúšať vysledky pri interakcii s Misskey.';
	@override String get output => 'Výstup';
	@override String get script => 'Skript';
	@override String get disablePagesScript => 'Vypnúť AiScript na stránkach';
	@override String get updateRemoteUser => 'Aktualizovať informácie o vzdialenom účte';
	@override String get deleteAllFiles => 'Odstrániť všetky súbory';
	@override String get deleteAllFilesConfirm => 'Naozaj chcete odstrániť všetky súbory';
	@override String get removeAllFollowing => 'Zrušiť sledovani všetkých používateľov';
	@override String removeAllFollowingDescription({required Object host}) => 'Týmto zrušíte sledovanie všetkých používateľov z ${host}. Spustite to prosím, keď server napríklad už neexistuje.';
	@override String get userSuspended => 'Tento používateľ je zmrazený.';
	@override String get userSilenced => 'Tento používateľ je umlčaný.';
	@override String get yourAccountSuspendedTitle => 'Tento účet je zmrazený';
	@override String get yourAccountSuspendedDescription => 'Tento účet bol zmrazený, lebo porušoval zmluvné podmienky. Kontaktujte administrátora ak chcete viac podrobností. Prosím nevytvárajte nový účet.';
	@override String get menu => 'Menu';
	@override String get divider => 'Oddeľovač';
	@override String get addItem => 'Pridať položku';
	@override String get relays => 'Prenos';
	@override String get addRelay => 'Pridať prenos';
	@override String get inboxUrl => 'Inbox URL';
	@override String get addedRelays => 'Pridané prenosy';
	@override String get serviceworkerInfo => 'Musí byť zapnuté pre push notifikácie.';
	@override String get deletedNote => 'Odstránené príspevky';
	@override String get invisibleNote => 'Skryté príspevky';
	@override String get enableInfiniteScroll => 'Zapnúť nekonečné skrolovanie';
	@override String get visibility => 'Viditeľnosť';
	@override String get poll => 'Hlasovanie';
	@override String get useCw => 'Skryť obsah';
	@override String get enablePlayer => 'Otvoriť video prehrávač';
	@override String get disablePlayer => 'Zavrieť video prehrávač';
	@override String get expandTweet => 'Rozšíriť tweet';
	@override String get themeEditor => 'Editor tém';
	@override String get description => 'Popis';
	@override String get describeFile => 'Pridať nadpis';
	@override String get enterFileDescription => 'Zadajte nadpis';
	@override String get author => 'Autor';
	@override String get leaveConfirm => 'Máte neuložené zmeny. Chcete ich zahodiť?';
	@override String get manage => 'Administrácia';
	@override String get plugins => 'Pluginy';
	@override String get preferencesBackups => 'Zálohy nastavení';
	@override String get deck => 'Deck';
	@override String get undeck => 'Oddokovať';
	@override String get useBlurEffectForModal => 'Použiť efekt rozmazania na okná';
	@override String get useFullReactionPicker => 'Použiť plnú veľkosť výberu reakcií';
	@override String get width => 'Šírka';
	@override String get height => 'Výška';
	@override String get large => 'Veľké';
	@override String get medium => 'Stredné';
	@override String get small => 'Malé';
	@override String get generateAccessToken => 'Vygenerovať prístupový token';
	@override String get permission => 'Oprávnenia';
	@override String get enableAll => 'Povoliť všetko';
	@override String get disableAll => 'Vypnúť všetko';
	@override String get tokenRequested => 'Povoliť prístup k účtu';
	@override String get pluginTokenRequestedDescription => 'Tento plugin bude môcť používať oprávnenia nastavené tu.';
	@override String get notificationType => 'Typ oznámenia';
	@override String get edit => 'Upraviť';
	@override String get emailServer => 'Email server';
	@override String get enableEmail => 'Zapnúť email';
	@override String get emailConfigInfo => 'Používa sa na overenie emaily pri registrácii alebo pri zabudnutí hesla';
	@override String get email => 'Email';
	@override String get emailAddress => 'Emailová adresa';
	@override String get smtpConfig => 'Nastavenia SMTP servera';
	@override String get smtpHost => 'Host';
	@override String get smtpPort => 'Port';
	@override String get smtpUser => 'Meno používateľa';
	@override String get smtpPass => 'Heslo';
	@override String get emptyToDisableSmtpAuth => 'Vynechaním mena hesla vypnete SMTP verifikáciu';
	@override String get smtpSecure => 'Použiť implicitné SSL/TLS pre SMTP spojenia';
	@override String get smtpSecureInfo => 'Toto vypnite keď používate STARTTLS';
	@override String get testEmail => 'Doručenie testovacieho emailu';
	@override String get wordMute => 'Stíšenie slova';
	@override String get regexpError => 'Chyba v regulárnom výraze';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'Na riadku ${line} sa vyskytla chyba v stíšenom slove ${tab}.';
	@override String get instanceMute => 'Stíšené servery';
	@override String userSaysSomething({required Object name}) => '${name} niečo povedal/a';
	@override String get makeActive => 'Aktivovať';
	@override String get display => 'Zobraziť';
	@override String get copy => 'Kopírovať';
	@override String get metrics => 'Metriky';
	@override String get overview => 'Prehľad';
	@override String get logs => 'Logy';
	@override String get delayed => 'Oneskorené';
	@override String get database => 'Databáza';
	@override String get channel => 'Kanály';
	@override String get create => 'Vytvoriť';
	@override String get notificationSetting => 'Nastavenia oznámení';
	@override String get notificationSettingDesc => 'Vyberte typ oznámení na zobrazenie';
	@override String get useGlobalSetting => 'Použiť globálne nastavenie';
	@override String get useGlobalSettingDesc => 'Ak je zapnuté, použijú sa oznámenia vášho účtu. Ak je vypnuté, použijú sa jednotlivé nastavenia.';
	@override String get other => 'Ostatní';
	@override String get regenerateLoginToken => 'Pregenerovať prihlasovací token';
	@override String get regenerateLoginTokenDescription => 'Pregeneruje token interne používaný počas prihlásenia. Normálne toto netreba robiť. Ak sa pregeneruje, všetky zariadenia sa odhlásia.';
	@override String get setMultipleBySeparatingWithSpace => 'Viaceré položky oddeľte medzerami.';
	@override String get fileIdOrUrl => 'ID alebo URL súboru';
	@override String get behavior => 'Správanie';
	@override String get sample => 'Ukážka';
	@override String get abuseReports => 'Nahlásenia';
	@override String get reportAbuse => 'Nahlásiť';
	@override String reportAbuseOf({required Object name}) => 'Nahlásiť ${name}';
	@override String get fillAbuseReportDescription => 'Prosím vyplňte podrobnosti nahlásenia. Ak sa týka konkrétnej poznámky, prosím napíšte jej URL.';
	@override String get abuseReported => 'Vaše nahlásenie je odoslané. Veľmi pekne ďakujeme.';
	@override String get reporter => 'Nahlásil';
	@override String get reporteeOrigin => 'Pôvod nahláseného';
	@override String get reporterOrigin => 'Pôvod nahlasovača';
	@override String get send => 'Poslať';
	@override String get openInNewTab => 'Otvoriť v novom tabe';
	@override String get openInSideView => 'Otvoriť v bočnom paneli';
	@override String get defaultNavigationBehaviour => 'Predvolené správanie navigácie';
	@override String get editTheseSettingsMayBreakAccount => 'Úpravou týchto nastavení si môžete pokaziť účet.';
	@override String get instanceTicker => 'Informácie servera o poznámkach';
	@override String waitingFor({required Object x}) => 'Čaká sa na ${x}';
	@override String get random => 'Náhodné';
	@override String get system => 'Systém';
	@override String get switchUi => 'Prepnúť UI';
	@override String get desktop => 'Desktop';
	@override String get clip => 'Klip';
	@override String get createNew => 'Vytvoriť nový';
	@override String get optional => 'Voliteľné';
	@override String get createNewClip => 'Vytvoriť nový klip';
	@override String get unclip => 'Odopnúť';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'Táto poznámka je už pripnutá ako "${name}". Naozaj ju chcete odopnúť?';
	@override String get public => 'Verejné';
	@override String get private => 'Súkromné';
	@override String i18nInfo({required Object link}) => 'Misskey je prekladaný do rôznych jazykov dobrovoľníkmi. Pomôcť môžete na ${link}.';
	@override String get manageAccessTokens => 'Spravovať prístupové tokeny';
	@override String get accountInfo => 'Informácie o účte';
	@override String get notesCount => 'Počet poznámok';
	@override String get repliesCount => 'Počet odoslaných odpovedí';
	@override String get renotesCount => 'Počet preposlaných poznámok';
	@override String get repliedCount => 'Počet odpovedí prijatých';
	@override String get renotedCount => 'Počet preposlaní prijatých';
	@override String get followingCount => 'Počet sledovaných účtov';
	@override String get followersCount => 'Počet sledujúcich';
	@override String get sentReactionsCount => 'Počet poslaných reakcií';
	@override String get receivedReactionsCount => 'Počet prijatých reakcií';
	@override String get pollVotesCount => 'Počet odoslaných hlasov';
	@override String get pollVotedCount => 'Počet prijatých hlasov';
	@override String get yes => 'Áno';
	@override String get no => 'Nie';
	@override String get driveFilesCount => 'Počet súborov na disku';
	@override String get driveUsage => 'Využité miesto na disku';
	@override String get noCrawle => 'Odmietať indexovanie crawlerov';
	@override String get noCrawleDescription => 'Požiadať vyhľadávače, aby neindexovali váš profil, poznámky, stránky, atď.';
	@override String get lockedAccountInfo => 'Pokým nenastavíte viditeľnosť poznámok na "Len pre sledujúcich", vaše príspevky bude vidieť hocikto, aj keď vyžadujete manuálne potvrdenie sledovania.';
	@override String get alwaysMarkSensitive => 'Predvolene označovať ako NSFW';
	@override String get loadRawImages => 'Načítať originálne obrázky namiesto miniatúr';
	@override String get disableShowingAnimatedImages => 'Neprehrávať animované obrázky';
	@override String get verificationEmailSent => 'Odoslali sme overovací email. Overenie dokončíte kliknutím na odkaz v emaili.';
	@override String get notSet => 'Nenastavené';
	@override String get emailVerified => 'Email overený';
	@override String get noteFavoritesCount => 'Počet obľúbených poznámok';
	@override String get pageLikesCount => 'Počet obľúbených stránok';
	@override String get pageLikedCount => 'Počet prijatých "páči sa mi"';
	@override String get contact => 'Kontakt';
	@override String get useSystemFont => 'Použiť predvolené systémové písmo';
	@override String get clips => 'Klip';
	@override String get experimentalFeatures => 'Experimentálne funkcie';
	@override String get developer => 'Vývojár';
	@override String get makeExplorable => 'Spraviť účet viditeľný v "Objavovať"';
	@override String get makeExplorableDescription => 'Ak toto vypnete, váš účet sa nezobrazí v sekcii "Objavovat".';
	@override String get duplicate => 'Duplikovať';
	@override String get left => 'Naľavo';
	@override String get center => 'Stred';
	@override String get wide => 'Široko';
	@override String get narrow => 'Úzko';
	@override String get reloadToApplySetting => 'Toto nastavenia sa prejaví až po obnovení stránky. Obnoviť teraz?';
	@override String get needReloadToApply => 'Toto nastavenie sa prejaví až po obnovení stránky.';
	@override String get showTitlebar => 'Zobraziť riadok s nadpisom';
	@override String get clearCache => 'Vyprázdniť cache';
	@override String onlineUsersCount({required Object n}) => '${n} používateľov je online';
	@override String nUsers({required Object n}) => '${n} používateľov';
	@override String nNotes({required Object n}) => '${n} poznámok';
	@override String get sendErrorReports => 'Poslať nahlásenie chyby';
	@override String get sendErrorReportsDescription => 'Keď je zapnuté, v prípade problému sa odošlú podrobné informácie o chybe do Misskey. Pomôžete tak zvýšiť kvalitu Misskey.\nTieto informácie zahŕňajú verziu vášho OS, použitý prehliadač, históriu aktivít, atď.';
	@override String get myTheme => 'Moja téma';
	@override String get backgroundColor => 'Pozadie';
	@override String get accentColor => 'Akcent';
	@override String get textColor => 'Text';
	@override String get saveAs => 'Uložiť ako...';
	@override String get advanced => 'Rozšírené';
	@override String get advancedSettings => 'Rozšírené nastavenia';
	@override String get value => 'Hodnoty';
	@override String get createdAt => 'Vytvorené';
	@override String get updatedAt => 'Upravené';
	@override String get saveConfirm => 'Uložiť zmeny?';
	@override String get deleteConfirm => 'Naozaj odstrániť?';
	@override String get invalidValue => 'Nesprávna hodnota.';
	@override String get registry => 'Register';
	@override String get closeAccount => 'Zavrieť účet';
	@override String get currentVersion => 'Aktuálna verzia';
	@override String get latestVersion => 'Najnovšia verzia';
	@override String get youAreRunningUpToDateClient => 'Používate najnovšiu verziu vášho klienta.';
	@override String get newVersionOfClientAvailable => 'Je dostupná novšia verzia vášho klienta.';
	@override String get usageAmount => 'Využitie';
	@override String get capacity => 'Kapacita';
	@override String get inUse => 'Použité';
	@override String get editCode => 'Upraviť kód';
	@override String get apply => 'Použiť';
	@override String get receiveAnnouncementFromInstance => 'Prijať notifikácie z tohoto servera';
	@override String get emailNotification => 'Emailové upozornenia';
	@override String get publish => 'Zverejniť';
	@override String get inChannelSearch => 'Hľadať v kanáli';
	@override String get useReactionPickerForContextMenu => 'Otvoriť výber reakcií na pravý klik';
	@override String typingUsers({required Object users}) => '${users} píše/u';
	@override String get jumpToSpecifiedDate => 'Skočiť na konkrétny dátum';
	@override String get showingPastTimeline => 'Práve vidíte starú časovú os';
	@override String get clear => 'Vrátiť';
	@override String get markAllAsRead => 'Označiť všetko ako prečítané';
	@override String get goBack => 'Späť';
	@override String get unlikeConfirm => 'Naozaj odstrániť váš like?';
	@override String get fullView => 'Plný pohľad';
	@override String get quitFullView => 'Zavrieť plný pohľad';
	@override String get addDescription => 'Pridať popis';
	@override String get userPagePinTip => 'Tu môžete zobraziť poznámky zvolením "Pripnúť na profil" z menu jednotlivých poznámok.';
	@override String get notSpecifiedMentionWarning => 'Táto poznámka obsahuje spomenutých používateľov, ktorí nie sú medzi adresátmi.';
	@override String get info => 'Informácie';
	@override String get userInfo => 'Informácie o používateľovi';
	@override String get unknown => 'Neznáme';
	@override String get onlineStatus => 'Online status';
	@override String get hideOnlineStatus => 'Skryť online status';
	@override String get hideOnlineStatusDescription => 'Skrytie vášho online statusu zníži pohodlnosť niektorých funkcií ako napríklad vyhľadávanie.';
	@override String get online => 'Online';
	@override String get active => 'Aktívny';
	@override String get offline => 'Offline';
	@override String get notRecommended => 'Neodporúčané';
	@override String get botProtection => 'Bot ochrana';
	@override String get instanceBlocking => 'Blokované servery';
	@override String get selectAccount => 'Vyberte účet';
	@override String get switchAccount => 'Prepnút účet';
	@override String get enabled => 'Zapnuté';
	@override String get disabled => 'Vypnuté';
	@override String get quickAction => 'Rýchle akcie';
	@override String get user => 'Používatelia';
	@override String get administration => 'Spravovanie';
	@override String get accounts => 'Účty';
	@override String get switch_ => 'Prepnúť';
	@override String get noMaintainerInformationWarning => 'Informácie správcu nie sú nastavené.';
	@override String get noBotProtectionWarning => 'Ochrana proti botom nie je nastavená.';
	@override String get configure => 'Konfigurovať';
	@override String get postToGallery => 'Vytvoriť nový príspevok v galérii';
	@override String get gallery => 'Galéria';
	@override String get recentPosts => 'Najnovšie príspevky';
	@override String get popularPosts => 'Populárne príspevky';
	@override String get shareWithNote => 'Zdieľať s poznámkou';
	@override String get ads => 'Reklamy';
	@override String get expiration => 'Ukončiť hlasovanie';
	@override String get startingperiod => 'Začiatok';
	@override String get memo => 'Memo';
	@override String get priority => 'Priorita';
	@override String get high => 'Vysoká';
	@override String get middle => 'Stredné';
	@override String get low => 'Málo';
	@override String get emailNotConfiguredWarning => 'Nie je nastavená emailová adresa.';
	@override String get ratio => 'Pomer';
	@override String get previewNoteText => 'Zobraziť náhľad';
	@override String get customCss => 'Vlastné CSS';
	@override String get customCssWarn => 'Toto nastavenie by sa malo používať iba ak viete čo robíte. Zadanie nesprávnych hodnôt môže spôsobiť nenormálne správanie klienta.';
	@override String get global => 'Globálne';
	@override String get squareAvatars => 'Zobrazovať štvorcové avatary';
	@override String get sent => 'Poslať';
	@override String get received => 'Prijaté';
	@override String get searchResult => 'Výsledky hľadania';
	@override String get hashtags => 'Hashtagy';
	@override String get troubleshooting => 'Riešenie problémov';
	@override String get useBlurEffect => 'Používať efekty rozmazania v UI';
	@override String get learnMore => 'Zistiť viac';
	@override String get misskeyUpdated => 'Misskey sa aktualizoval!';
	@override String get whatIsNew => 'Čo je nové?';
	@override String get translate => 'Preložiť';
	@override String translatedFrom({required Object x}) => 'Preložené z ${x}';
	@override String get accountDeletionInProgress => 'Odstraňovanie účtu prebieha';
	@override String get usernameInfo => 'Meno, ktoré odlišuje váš účet od ostatných na tomto serveri. Môžete použiť abecedu (a~z, A~Z), čísla (0~9) alebo podtržník (_). Používateľské mená sa nedajú neskôr zmeniť.';
	@override String get aiChanMode => 'Ai režim';
	@override String get keepCw => 'Nechať varovania obsahu';
	@override String get pubSub => 'Pub/Sub účty';
	@override String get lastCommunication => 'Posledná komunikácia';
	@override String get resolved => 'Vyriešené';
	@override String get unresolved => 'Nevyriešené';
	@override String get breakFollow => 'Nesledovať';
	@override String get itsOn => 'Zapnuté';
	@override String get itsOff => 'Vypnuté';
	@override String get emailRequiredForSignup => 'Registrácia vyžaduje emailovú adresu';
	@override String get unread => 'Neprečítané';
	@override String get filter => 'Filter';
	@override String get controlPanel => 'Ovládací panel';
	@override String get manageAccounts => 'Správa účtov';
	@override String get makeReactionsPublic => 'Reakcie sú verejné';
	@override String get makeReactionsPublicDescription => 'Toto spraví všetky vaše minulé reakcie viditeľné verejnosti.';
	@override String get classic => 'Klasika';
	@override String get muteThread => 'Ztíšiť vlákno';
	@override String get unmuteThread => 'Zrušiť stíšenie vlákna';
	@override String get continueThread => 'Zobraziť pokračovanie vlákna';
	@override String get deleteAccountConfirm => 'Toto nezvrátiteľne vymaže váš účet. Pokračovať?';
	@override String get incorrectPassword => 'Nesprávne heslo.';
	@override String voteConfirm({required Object choice}) => 'Potvrdzujete svoj hlas za "${choice}"?';
	@override String get hide => 'Skryť';
	@override String get useDrawerReactionPickerForMobile => 'Zobraziť výber reakcií ako šuflík na mobile';
	@override String welcomeBackWithName({required Object name}) => 'Vitajte späť, ${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => 'Kliknutím na [${ok}] dokončíte overeniu emailu.';
	@override String get overridedDeviceKind => 'Typ zariadenia';
	@override String get smartphone => 'Smartfón';
	@override String get tablet => 'Tablet';
	@override String get auto => 'Automaticky';
	@override String get themeColor => 'Farba témy';
	@override String get size => 'Veľkosť';
	@override String get numberOfColumn => 'Počet stĺpcov';
	@override String get searchByGoogle => 'Hľadať cez Google';
	@override String get instanceDefaultLightTheme => 'Predvolená svetlá téma';
	@override String get instanceDefaultDarkTheme => 'Predvolená tmavá téma';
	@override String get instanceDefaultThemeDescription => 'Vložte kód témy v objektovom formáte';
	@override String get mutePeriod => 'Trvanie stíšenia';
	@override String get period => 'Ukončiť hlasovanie';
	@override String get indefinitely => 'Navždy';
	@override String get tenMinutes => '10 minút';
	@override String get oneHour => '1 hodina';
	@override String get oneDay => '1 deň';
	@override String get oneWeek => '1 týždeň';
	@override String get oneMonth => '1 mesiac';
	@override String get reflectMayTakeTime => 'Zmeny môžu chvíľu trvať kým sa prejavia.';
	@override String get failedToFetchAccountInformation => 'Nepodarilo sa načítať informácie o účte.';
	@override String get rateLimitExceeded => 'Prekročený limit rýchlosti';
	@override String get cropImage => 'Orezanie obrázku';
	@override String get cropImageAsk => 'Chcete orezať obrázok?';
	@override String get file => 'Súbor/y';
	@override String recentNHours({required Object n}) => 'Posledných ${n} hodín';
	@override String recentNDays({required Object n}) => 'Posledných ${n} dní';
	@override String get noEmailServerWarning => 'Nie je nastavený emailový server.';
	@override String get thereIsUnresolvedAbuseReportWarning => 'Existuje nevyriešené nahlásenie zneužitia.';
	@override String get recommended => 'Odporúčané';
	@override String get driveCapOverrideLabel => 'Zmena limitu úložiska pre tohoto používateľa';
	@override String get driveCapOverrideCaption => 'Ak je zadaná hodnota menšia alebo rovná 0, zruší sa.';
	@override String get requireAdminForView => 'Na zobrazenie sa musíte prihlásiť pod administrátorským účtom.';
	@override String get isSystemAccount => 'Tieto účty automaticky vytvoril a spravuje systém.';
	@override String typeToConfirm({required Object x}) => 'Ak chcete vykonať túto operáciu, napíšte ${x}';
	@override String get deleteAccount => 'Vymazať účet';
	@override String get document => 'Dokument';
	@override String get numberOfPageCache => 'Počet cachí pre stránky';
	@override String get numberOfPageCacheDescription => 'Zvýši rýchlosť ale tiež nároky na pamäť.';
	@override String get logoutConfirm => 'Naozaj sa chcete odhlásiť?';
	@override String get statusbar => 'Stavový riadok';
	@override String get pleaseSelect => 'Prosím vyberte';
	@override String get reverse => 'Preklopiť';
	@override String get colored => 'Farebné';
	@override String get refreshInterval => 'Interval obnovenia';
	@override String get label => 'Popisok';
	@override String get type => 'Typ';
	@override String get speed => 'Rýchlosť';
	@override String get slow => 'Pomaly';
	@override String get fast => 'Rýchlo';
	@override String get sensitiveMediaDetection => 'Detekcia citlivých médií.';
	@override String get localOnly => 'Iba lokálne';
	@override String get remoteOnly => 'Len vzdialené';
	@override String get failedToUpload => 'Nahrávanie zlyhalo';
	@override String get cannotUploadBecauseInappropriate => 'Nemožno nahrať, pretože pravdepodobne obsahuje nevhodný obsah.';
	@override String get cannotUploadBecauseNoFreeSpace => 'Nemožno nahrať kvôli nedostatku voľného úložiska.';
	@override String get beta => 'Beta';
	@override String get enableAutoSensitive => 'Automatická detekcia NSFW';
	@override String get enableAutoSensitiveDescription => 'Ak je zapnuté, príznak NSFW sa na médiách automaticky nastaví pomocou strojového učenia. Aj keď je táto funkcia vypnutá, v niektorých prípadoch sa môže nastaviť automaticky.';
	@override String get activeEmailValidationDescription => 'Dôkladnejšie overí e-mailovú adresu používateľa tým, že zistí, či ide o vyradenú e-mailovú adresu a či sa s ňou dá skutočne komunikovať. Ak nie je začiarknuté, e-mailová adresa sa kontroluje len ako text.';
	@override String get navbar => 'Navigačný panel';
	@override String get shuffle => 'Zamiešať';
	@override String get account => 'Účty';
	@override String get move => 'Pohyb';
	@override String get pushNotification => 'Push notifikácie';
	@override String get subscribePushNotification => 'Push notifikácie zapnuté';
	@override String get unsubscribePushNotification => 'Vypnúť push notifikácie';
	@override String get pushNotificationAlreadySubscribed => 'Push notifikácie sú zapnuté';
	@override String get pushNotificationNotSupported => 'Prehliadač alebo server nepodporujú push notifikácie';
	@override String get sendPushNotificationReadMessage => 'Odstrániť push notifikácie po ich prečítaní';
	@override String get sendPushNotificationReadMessageCaption => 'Na chvíľu sa zobrazí oznámenie "". Môže to zvýšiť spotrebu batérie zariadenia.';
	@override String get windowMaximize => 'Maximalizovať';
	@override String get windowRestore => 'Obnoviť';
	@override String get caption => 'Nadpis';
	@override String get tools => 'Nástroje';
	@override String get cannotLoad => 'Nedá sa načítať.';
	@override String get like => 'Páči sa mi';
	@override String get show => 'Zobraziť';
	@override String get neverShow => 'Nabudúce nezobrazovať';
	@override String get remindMeLater => 'Pripomenúť neskôr';
	@override String get didYouLikeMisskey => 'Páči sa vám Misskey?';
	@override String pleaseDonate({required Object host}) => 'Misskey je bezplatný softvér, ktorý používa ${host}. Prosím, prispejte, aby sme ho mohli ďalej rozvíjať!';
	@override String get color => 'Farba';
	@override String get horizontal => 'Strana';
	@override String get youFollowing => 'Sledované';
	@override String get icon => 'Avatar';
	@override String get replies => 'Odpovedať';
	@override String get renotes => 'Preposlať';
	@override String get sourceCode => 'Zdrojový kód';
	@override String get flip => 'Preklopiť';
	@override String lastNDays({required Object n}) => 'Posledných ${n} dní';
	@override String get postForm => 'Napísať poznámku';
	@override String get information => 'Informácie';
	@override String get inMinutes => 'min';
	@override String get inDays => 'dní';
	@override String get widgets => 'Widgety';
	@override String get previewingThemeRestore => 'Obnoviť';
	@override late final _Translations$misskey$imageEditing_$sk_SK imageEditing_ = _Translations$misskey$imageEditing_$sk_SK._(_root);
	@override late final _Translations$misskey$imageFrameEditor_$sk_SK imageFrameEditor_ = _Translations$misskey$imageFrameEditor_$sk_SK._(_root);
	@override late final _Translations$misskey$chat_$sk_SK chat_ = _Translations$misskey$chat_$sk_SK._(_root);
	@override late final _Translations$misskey$delivery_$sk_SK delivery_ = _Translations$misskey$delivery_$sk_SK._(_root);
	@override late final _Translations$misskey$role_$sk_SK role_ = _Translations$misskey$role_$sk_SK._(_root);
	@override late final _Translations$misskey$sensitiveMediaDetection_$sk_SK sensitiveMediaDetection_ = _Translations$misskey$sensitiveMediaDetection_$sk_SK._(_root);
	@override late final _Translations$misskey$emailUnavailable_$sk_SK emailUnavailable_ = _Translations$misskey$emailUnavailable_$sk_SK._(_root);
	@override late final _Translations$misskey$ffVisibility_$sk_SK ffVisibility_ = _Translations$misskey$ffVisibility_$sk_SK._(_root);
	@override late final _Translations$misskey$signup_$sk_SK signup_ = _Translations$misskey$signup_$sk_SK._(_root);
	@override late final _Translations$misskey$accountDelete_$sk_SK accountDelete_ = _Translations$misskey$accountDelete_$sk_SK._(_root);
	@override late final _Translations$misskey$ad_$sk_SK ad_ = _Translations$misskey$ad_$sk_SK._(_root);
	@override late final _Translations$misskey$forgotPassword_$sk_SK forgotPassword_ = _Translations$misskey$forgotPassword_$sk_SK._(_root);
	@override late final _Translations$misskey$gallery_$sk_SK gallery_ = _Translations$misskey$gallery_$sk_SK._(_root);
	@override late final _Translations$misskey$email_$sk_SK email_ = _Translations$misskey$email_$sk_SK._(_root);
	@override late final _Translations$misskey$plugin_$sk_SK plugin_ = _Translations$misskey$plugin_$sk_SK._(_root);
	@override late final _Translations$misskey$preferencesBackups_$sk_SK preferencesBackups_ = _Translations$misskey$preferencesBackups_$sk_SK._(_root);
	@override late final _Translations$misskey$registry_$sk_SK registry_ = _Translations$misskey$registry_$sk_SK._(_root);
	@override late final _Translations$misskey$aboutMisskey_$sk_SK aboutMisskey_ = _Translations$misskey$aboutMisskey_$sk_SK._(_root);
	@override late final _Translations$misskey$instanceTicker_$sk_SK instanceTicker_ = _Translations$misskey$instanceTicker_$sk_SK._(_root);
	@override late final _Translations$misskey$serverDisconnectedBehavior_$sk_SK serverDisconnectedBehavior_ = _Translations$misskey$serverDisconnectedBehavior_$sk_SK._(_root);
	@override late final _Translations$misskey$channel_$sk_SK channel_ = _Translations$misskey$channel_$sk_SK._(_root);
	@override late final _Translations$misskey$menuDisplay_$sk_SK menuDisplay_ = _Translations$misskey$menuDisplay_$sk_SK._(_root);
	@override late final _Translations$misskey$wordMute_$sk_SK wordMute_ = _Translations$misskey$wordMute_$sk_SK._(_root);
	@override late final _Translations$misskey$instanceMute_$sk_SK instanceMute_ = _Translations$misskey$instanceMute_$sk_SK._(_root);
	@override late final _Translations$misskey$theme_$sk_SK theme_ = _Translations$misskey$theme_$sk_SK._(_root);
	@override late final _Translations$misskey$sfx_$sk_SK sfx_ = _Translations$misskey$sfx_$sk_SK._(_root);
	@override late final _Translations$misskey$ago_$sk_SK ago_ = _Translations$misskey$ago_$sk_SK._(_root);
	@override late final _Translations$misskey$time_$sk_SK time_ = _Translations$misskey$time_$sk_SK._(_root);
	@override late final _Translations$misskey$x2fa_$sk_SK x2fa_ = _Translations$misskey$x2fa_$sk_SK._(_root);
	@override late final _Translations$misskey$permissions_$sk_SK permissions_ = _Translations$misskey$permissions_$sk_SK._(_root);
	@override late final _Translations$misskey$auth_$sk_SK auth_ = _Translations$misskey$auth_$sk_SK._(_root);
	@override late final _Translations$misskey$antennaSources_$sk_SK antennaSources_ = _Translations$misskey$antennaSources_$sk_SK._(_root);
	@override late final _Translations$misskey$weekday_$sk_SK weekday_ = _Translations$misskey$weekday_$sk_SK._(_root);
	@override late final _Translations$misskey$widgets_$sk_SK widgets_ = _Translations$misskey$widgets_$sk_SK._(_root);
	@override late final _Translations$misskey$widgetOptions_$sk_SK widgetOptions_ = _Translations$misskey$widgetOptions_$sk_SK._(_root);
	@override late final _Translations$misskey$cw_$sk_SK cw_ = _Translations$misskey$cw_$sk_SK._(_root);
	@override late final _Translations$misskey$poll_$sk_SK poll_ = _Translations$misskey$poll_$sk_SK._(_root);
	@override late final _Translations$misskey$visibility_$sk_SK visibility_ = _Translations$misskey$visibility_$sk_SK._(_root);
	@override late final _Translations$misskey$postForm_$sk_SK postForm_ = _Translations$misskey$postForm_$sk_SK._(_root);
	@override late final _Translations$misskey$profile_$sk_SK profile_ = _Translations$misskey$profile_$sk_SK._(_root);
	@override late final _Translations$misskey$exportOrImport_$sk_SK exportOrImport_ = _Translations$misskey$exportOrImport_$sk_SK._(_root);
	@override late final _Translations$misskey$charts_$sk_SK charts_ = _Translations$misskey$charts_$sk_SK._(_root);
	@override late final _Translations$misskey$instanceCharts_$sk_SK instanceCharts_ = _Translations$misskey$instanceCharts_$sk_SK._(_root);
	@override late final _Translations$misskey$timelines_$sk_SK timelines_ = _Translations$misskey$timelines_$sk_SK._(_root);
	@override late final _Translations$misskey$play_$sk_SK play_ = _Translations$misskey$play_$sk_SK._(_root);
	@override late final _Translations$misskey$pages_$sk_SK pages_ = _Translations$misskey$pages_$sk_SK._(_root);
	@override late final _Translations$misskey$relayStatus_$sk_SK relayStatus_ = _Translations$misskey$relayStatus_$sk_SK._(_root);
	@override late final _Translations$misskey$notification_$sk_SK notification_ = _Translations$misskey$notification_$sk_SK._(_root);
	@override late final _Translations$misskey$deck_$sk_SK deck_ = _Translations$misskey$deck_$sk_SK._(_root);
	@override late final _Translations$misskey$webhookSettings_$sk_SK webhookSettings_ = _Translations$misskey$webhookSettings_$sk_SK._(_root);
	@override late final _Translations$misskey$abuseReport_$sk_SK abuseReport_ = _Translations$misskey$abuseReport_$sk_SK._(_root);
	@override late final _Translations$misskey$moderationLogTypes_$sk_SK moderationLogTypes_ = _Translations$misskey$moderationLogTypes_$sk_SK._(_root);
	@override late final _Translations$misskey$reversi_$sk_SK reversi_ = _Translations$misskey$reversi_$sk_SK._(_root);
	@override late final _Translations$misskey$remoteLookupErrors_$sk_SK remoteLookupErrors_ = _Translations$misskey$remoteLookupErrors_$sk_SK._(_root);
	@override late final _Translations$misskey$search_$sk_SK search_ = _Translations$misskey$search_$sk_SK._(_root);
	@override late final _Translations$misskey$watermarkEditor_$sk_SK watermarkEditor_ = _Translations$misskey$watermarkEditor_$sk_SK._(_root);
	@override late final _Translations$misskey$imageEffector_$sk_SK imageEffector_ = _Translations$misskey$imageEffector_$sk_SK._(_root);
	@override late final _Translations$misskey$qr_$sk_SK qr_ = _Translations$misskey$qr_$sk_SK._(_root);
}

// Path: misskey.imageEditing_
class _Translations$misskey$imageEditing_$sk_SK extends Translations$misskey$imageEditing_$en_US {
	_Translations$misskey$imageEditing_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$imageEditing_$vars_$sk_SK vars_ = _Translations$misskey$imageEditing_$vars_$sk_SK._(_root);
}

// Path: misskey.imageFrameEditor_
class _Translations$misskey$imageFrameEditor_$sk_SK extends Translations$misskey$imageFrameEditor_$en_US {
	_Translations$misskey$imageFrameEditor_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get header => 'Hlavička';
	@override String get font => 'Písmo';
	@override String get fontSerif => 'Pätkové';
	@override String get fontSansSerif => 'Bezpätkové';
}

// Path: misskey.chat_
class _Translations$misskey$chat_$sk_SK extends Translations$misskey$chat_$en_US {
	_Translations$misskey$chat_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get invitations => 'Pozvať';
	@override String get noHistory => 'Žiadna história';
	@override String get members => 'Členovia';
	@override String get home => 'Domov';
	@override String get send => 'Poslať';
}

// Path: misskey.delivery_
class _Translations$misskey$delivery_$sk_SK extends Translations$misskey$delivery_$en_US {
	_Translations$misskey$delivery_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get stop => 'Zmrazené';
	@override late final _Translations$misskey$delivery_$type_$sk_SK type_ = _Translations$misskey$delivery_$type_$sk_SK._(_root);
}

// Path: misskey.role_
class _Translations$misskey$role_$sk_SK extends Translations$misskey$role_$en_US {
	_Translations$misskey$role_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get priority => 'Priorita';
	@override late final _Translations$misskey$role_$priority_$sk_SK priority_ = _Translations$misskey$role_$priority_$sk_SK._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _Translations$misskey$sensitiveMediaDetection_$sk_SK extends Translations$misskey$sensitiveMediaDetection_$en_US {
	_Translations$misskey$sensitiveMediaDetection_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get description => 'Strojové učenie sa použije na automatickú detekciu citlivých médií na účely ich moderovania. Mierne sa zvýši zaťaženie servera.';
	@override String get sensitivity => 'Citlivosť detekcie';
	@override String get sensitivityDescription => 'Nižšia citlivosť znižuje počet falošne pozitívnych výsledkov (false positives). Vyššia citlivosť znižuje počet falošne negatívnych výsledkov (false negatives).';
	@override String get setSensitiveFlagAutomatically => 'Nastaviť príznak NSFW';
	@override String get setSensitiveFlagAutomaticallyDescription => 'Aj keď je toto nastavenie vypnuté, výsledok rozhodnutia je interne uložený.';
	@override String get analyzeVideos => 'Zapnúť analýzu videa';
	@override String get analyzeVideosDescription => 'Okrem obrázkov zapne detekciu aj pre videá. Zaťaženie servera sa mierne zvýši.';
}

// Path: misskey.emailUnavailable_
class _Translations$misskey$emailUnavailable_$sk_SK extends Translations$misskey$emailUnavailable_$en_US {
	_Translations$misskey$emailUnavailable_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get used => 'Táto emailová adresa sa už používa';
	@override String get format => 'Formát emailovej adresy je nesprávny';
	@override String get disposable => 'Jednorázové emailové adresy sa nemôžu používať.';
	@override String get mx => 'Tento emailový server nefunguje.';
	@override String get smtp => 'Tento emailový server neodpovedá.';
}

// Path: misskey.ffVisibility_
class _Translations$misskey$ffVisibility_$sk_SK extends Translations$misskey$ffVisibility_$en_US {
	_Translations$misskey$ffVisibility_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get public => 'Zverejniť';
	@override String get followers => 'Len viditeľní sledujúci';
	@override String get private => 'Súkromné';
}

// Path: misskey.signup_
class _Translations$misskey$signup_$sk_SK extends Translations$misskey$signup_$en_US {
	_Translations$misskey$signup_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Skoro na konci';
	@override String get emailAddressInfo => 'Prosím zadajte svoju emailovú adresu!';
	@override String emailSent({required Object email}) => 'Na vašu emailovú adresu (${email}) sme odoslali email. Vytvorenie účtu dokončíte kliknutím na odkaz v emaili.';
}

// Path: misskey.accountDelete_
class _Translations$misskey$accountDelete_$sk_SK extends Translations$misskey$accountDelete_$en_US {
	_Translations$misskey$accountDelete_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Odstrániť účet';
	@override String get mayTakeTime => 'Keďže odstránenie účtu je náročný proces, môže to nejaký čas trvať. Záleží koľko obsahu ste vytvorili a koľko súborov ste nahrali.';
	@override String get sendEmail => 'Po odstránení účtu vám pošleme email na emailovú adresu zadanú pri registrácii tohoto účtu.';
	@override String get requestAccountDelete => 'Požiadať o zmazanie účtu';
	@override String get started => 'Odstraňovanie začalo.';
	@override String get inProgress => 'Odstraňovanie prebieha';
}

// Path: misskey.ad_
class _Translations$misskey$ad_$sk_SK extends Translations$misskey$ad_$en_US {
	_Translations$misskey$ad_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get back => 'Späť';
	@override String get reduceFrequencyOfThisAd => 'Túto reklamu zobrazovať menej';
	@override String get hide => 'Nikdy nezobrazovať';
}

// Path: misskey.forgotPassword_
class _Translations$misskey$forgotPassword_$sk_SK extends Translations$misskey$forgotPassword_$en_US {
	_Translations$misskey$forgotPassword_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Zadajte emailovú adresu, ktorú ste použili pri registrácii. Pošleme vám na ňu odkaz, cez ktorý si môžete obnoviť heslo.';
	@override String get ifNoEmail => 'Ak ste pri registrácii nepoužili email, prosím kontaktujte administrátora.';
	@override String get contactAdmin => 'Tento server nepodporuje používanie emailových adries, prosím kontaktuje administrátor, ktorý vám resetuje heslo.';
}

// Path: misskey.gallery_
class _Translations$misskey$gallery_$sk_SK extends Translations$misskey$gallery_$en_US {
	_Translations$misskey$gallery_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get my => 'Moja galéria';
	@override String get liked => 'Obľúbené príspevky';
	@override String get like => 'Páči sa mi';
	@override String get unlike => 'Nepáči sa mi';
}

// Path: misskey.email_
class _Translations$misskey$email_$sk_SK extends Translations$misskey$email_$en_US {
	_Translations$misskey$email_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$email_$follow_$sk_SK follow_ = _Translations$misskey$email_$follow_$sk_SK._(_root);
	@override late final _Translations$misskey$email_$receiveFollowRequest_$sk_SK receiveFollowRequest_ = _Translations$misskey$email_$receiveFollowRequest_$sk_SK._(_root);
}

// Path: misskey.plugin_
class _Translations$misskey$plugin_$sk_SK extends Translations$misskey$plugin_$en_US {
	_Translations$misskey$plugin_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get install => 'Inštalova pluginy';
	@override String get installWarn => 'Prosím neinštalujte nedôveryhodné pluginy.';
	@override String get manage => 'Spravovanie pluginov';
	@override String get viewSource => 'Ukázať zdroj';
}

// Path: misskey.preferencesBackups_
class _Translations$misskey$preferencesBackups_$sk_SK extends Translations$misskey$preferencesBackups_$en_US {
	_Translations$misskey$preferencesBackups_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get list => 'Vytvorené zálohy';
	@override String get saveNew => 'Uložiť novú';
	@override String get loadFile => 'Nahrať súbor';
	@override String get apply => 'Použiť na toto zariadenie';
	@override String get save => 'Uložiť';
	@override String get inputName => 'Názov zálohy';
	@override String get cannotSave => 'Nedá sa uložiť';
	@override String nameAlreadyExists({required Object name}) => 'Záloha s názvom "${name}" už existuje. Zadajte iný názov.';
	@override String applyConfirm({required Object name}) => 'Chcete použiť zálohu \'${name}\' na aktuálne zariadenie? Aktuálne nastavenia zariadenia sa stratia.';
	@override String saveConfirm({required Object name}) => 'Chcete prepísať ${name}?';
	@override String deleteConfirm({required Object name}) => 'Naozaj chcete odstrániť "${name}"?';
	@override String renameConfirm({required Object old, required Object new_}) => 'Chcete zmeniť "${old}" na "${new_}"?';
	@override String get noBackups => 'Nie je k dispozícii žiadna záloha. "Uložiť novú" umožňuje uložiť aktuálnu konfiguráciu zariadenia na server.';
	@override String createdAt({required Object date, required Object time}) => 'Dátum vytvorenia: ${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => 'Dátum úpravy: ${date} ${time}';
	@override String get cannotLoad => 'Nedá sa nahrať';
	@override String get invalidFile => 'Neplatný formát súboru';
}

// Path: misskey.registry_
class _Translations$misskey$registry_$sk_SK extends Translations$misskey$registry_$en_US {
	_Translations$misskey$registry_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Oblasť';
	@override String get key => 'Kľúč';
	@override String get keys => 'Kľúče';
	@override String get domain => 'Doména';
	@override String get createKey => 'Vytvoriť kľúč';
}

// Path: misskey.aboutMisskey_
class _Translations$misskey$aboutMisskey_$sk_SK extends Translations$misskey$aboutMisskey_$en_US {
	_Translations$misskey$aboutMisskey_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey je open-source softvér, ktorý vyvíja syuilo od 2014.';
	@override String get contributors => 'Hlavní prispievatelia';
	@override String get allContributors => 'Všetci prispievatelia';
	@override String get source => 'Zdrojový kód';
	@override String get translation => 'Preložiť Misskey';
	@override String get donate => 'Podporiť Misskey';
	@override String get morePatrons => 'Takisto oceňujeme podporu mnoých ďalších, ktorí tu nie sú uvedení. Ďakujeme! 🥰';
	@override String get patrons => 'Prispievatelia';
}

// Path: misskey.instanceTicker_
class _Translations$misskey$instanceTicker_$sk_SK extends Translations$misskey$instanceTicker_$en_US {
	_Translations$misskey$instanceTicker_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get none => 'Nikdy nezobrazovať';
	@override String get remote => 'Zobraziť pre vzdialených používateľov';
	@override String get always => 'Zobraziť vždy';
}

// Path: misskey.serverDisconnectedBehavior_
class _Translations$misskey$serverDisconnectedBehavior_$sk_SK extends Translations$misskey$serverDisconnectedBehavior_$en_US {
	_Translations$misskey$serverDisconnectedBehavior_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Automaticky obnoviť';
	@override String get dialog => 'Zobraziť okno s varovaním';
	@override String get quiet => 'Zobraziť nerušivé varovanie';
}

// Path: misskey.channel_
class _Translations$misskey$channel_$sk_SK extends Translations$misskey$channel_$en_US {
	_Translations$misskey$channel_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get create => 'Vytvoriť kanál';
	@override String get edit => 'Upraviť kanál';
	@override String get setBanner => 'Nastaviť banner';
	@override String get removeBanner => 'Odstrániť banner';
	@override String get featured => 'Trendy';
	@override String get owned => 'Vlastnené';
	@override String get following => 'Sledované';
	@override String usersCount({required Object n}) => '${n} účastníkov';
	@override String notesCount({required Object n}) => '${n} poznámok';
}

// Path: misskey.menuDisplay_
class _Translations$misskey$menuDisplay_$sk_SK extends Translations$misskey$menuDisplay_$en_US {
	_Translations$misskey$menuDisplay_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Strana';
	@override String get sideIcon => 'Strana (Ikony)';
	@override String get top => 'Hore';
	@override String get hide => 'Skryť';
}

// Path: misskey.wordMute_
class _Translations$misskey$wordMute_$sk_SK extends Translations$misskey$wordMute_$en_US {
	_Translations$misskey$wordMute_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Umlčané slová';
	@override String get muteWordsDescription => 'Medzerami oddeľte pre podmienku AND a novými riadkami pre podmienku OR.';
	@override String get muteWordsDescription2 => 'Regulárne výrazy sa použijú keď použijete okolo lomítka.';
}

// Path: misskey.instanceMute_
class _Translations$misskey$instanceMute_$sk_SK extends Translations$misskey$instanceMute_$en_US {
	_Translations$misskey$instanceMute_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Toto umlčí všetky poznámky/preposlania zo zoznamu serverov, vrátane tých, na ktoré používatelia odpovedajú z umlčaného servera.';
	@override String get instanceMuteDescription2 => 'Oddeľte novými riadkami';
	@override String get title => 'Skryje poznámky z uvedených serverov.';
	@override String get heading => 'Zoznam umlčaných inštancií';
}

// Path: misskey.theme_
class _Translations$misskey$theme_$sk_SK extends Translations$misskey$theme_$en_US {
	_Translations$misskey$theme_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get explore => 'Objavovať témy';
	@override String get install => 'Nainštalovať tému';
	@override String get manage => 'Spravovať témy';
	@override String get code => 'Kód témy';
	@override String get description => 'Popis';
	@override String installed({required Object name}) => '${name} je nainštalovaná';
	@override String get installedThemes => 'Nainštalované témy';
	@override String get builtinThemes => 'Vstavané témy';
	@override String get alreadyInstalled => 'Táto téma je už nainštalovaná';
	@override String get invalid => 'Formát tejto témy je nesprávny';
	@override String get make => 'Vytvoriť tému';
	@override String get base => 'Základ';
	@override String get addConstant => 'Pridať konštantu';
	@override String get constant => 'Konštanta';
	@override String get defaultValue => 'Predvolená hodnota';
	@override String get color => 'Farba';
	@override String get refProp => 'Odkaz na vlastnosť';
	@override String get refConst => 'Odkaz na konštantu';
	@override String get key => 'Kľúč';
	@override String get func => 'Funkcie';
	@override String get funcKind => 'Typ funkcie';
	@override String get argument => 'Argument';
	@override String get basedProp => 'Odkazovaná vlastnosť';
	@override String get alpha => 'Priehľadnosť';
	@override String get darken => 'Stmaviť';
	@override String get lighten => 'Zosvetliť';
	@override String get inputConstantName => 'Zadajte názov tejto konštanty';
	@override String get importInfo => 'Ak sem zadáte kód témy, môžete ju importovať do editora tém.';
	@override String deleteConstantConfirm({required Object const_}) => 'Naozaj chcete odstrániť konštantu ${const_}?';
	@override late final _Translations$misskey$theme_$keys$sk_SK keys = _Translations$misskey$theme_$keys$sk_SK._(_root);
}

// Path: misskey.sfx_
class _Translations$misskey$sfx_$sk_SK extends Translations$misskey$sfx_$en_US {
	_Translations$misskey$sfx_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get note => 'Poznámky';
	@override String get noteMy => 'Vlastná poznámka';
	@override String get notification => 'Oznámenia';
}

// Path: misskey.ago_
class _Translations$misskey$ago_$sk_SK extends Translations$misskey$ago_$en_US {
	_Translations$misskey$ago_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get future => 'Budúcnosť';
	@override String get justNow => 'Teraz';
	@override String secondsAgo({required Object n}) => 'pred ${n} sekundami';
	@override String minutesAgo({required Object n}) => 'pred ${n} minútami';
	@override String hoursAgo({required Object n}) => 'pred ${n} hodinami';
	@override String daysAgo({required Object n}) => 'pred ${n} dňami';
	@override String weeksAgo({required Object n}) => 'pred ${n} týždňami';
	@override String monthsAgo({required Object n}) => 'pred ${n} mesiacmi';
	@override String yearsAgo({required Object n}) => 'pred ${n} rokmi';
	@override String get invalid => 'Nič tu nie je';
}

// Path: misskey.time_
class _Translations$misskey$time_$sk_SK extends Translations$misskey$time_$en_US {
	_Translations$misskey$time_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get second => 's';
	@override String get minute => 'min';
	@override String get hour => 'hod';
	@override String get day => 'dní';
}

// Path: misskey.x2fa_
class _Translations$misskey$x2fa_$sk_SK extends Translations$misskey$x2fa_$en_US {
	_Translations$misskey$x2fa_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'Už ste zaregistrovali 2-faktorové autentifikačné zariadenie.';
	@override String step1({required Object a, required Object b}) => 'Najprv si nainštalujte autentifikačnú aplikáciu (napríklad ${a} alebo ${b}) na svoje zariadenie.';
	@override String get step2 => 'Potom, naskenujte QR kód zobrazený na obrazovke.';
	@override String get step3 => 'Nastavenie dokončíte zadaním tokenu z vašej aplikácie.';
	@override String get step4 => 'Od teraz, všetky ďalšie prihlásenia budú vyžadovať prihlasovací token.';
	@override String get securityKeyInfo => 'Okrem odtlačku prsta alebo PIN autentifikácie si môžete nastaviť autentifikáciu cez hardvérový bezpečnostný kľúč podporujúci FIDO2 a tak ešte viac zabezpečiť svoj účet.';
	@override String removeKeyConfirm({required Object name}) => 'Naozaj chcete odstrániť "${name}"?';
	@override String get renewTOTPCancel => 'Nie, ďakujem';
}

// Path: misskey.permissions_
class _Translations$misskey$permissions_$sk_SK extends Translations$misskey$permissions_$en_US {
	_Translations$misskey$permissions_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'Vidieť informácie o vašom účte';
	@override String get writeAccount => 'Upraviť informácie o vašom účte';
	@override String get readBlocks => 'Vidieť zoznam blokovaných používateľov';
	@override String get writeBlocks => 'Upraviť zoznam blokovaných používateľov';
	@override String get readDrive => 'Prístup k súborom a priečinkom na disku';
	@override String get writeDrive => 'Upraviť alebo odstrániť súbory a priečinky na disku';
	@override String get readFavorites => 'Vidieť váš zoznam obľúbených';
	@override String get writeFavorites => 'Upraviť váš zoznam obľúbených';
	@override String get readFollowing => 'Vidieť koho sledujete';
	@override String get writeFollowing => 'Sledovať alebo nesledovať ďalšie účty';
	@override String get readMessaging => 'Vidieť vaše chaty';
	@override String get writeMessaging => 'Písať alebo odstraňovať správy v chate';
	@override String get readMutes => 'Vidieť váš zoznam stíšených používateľov';
	@override String get writeMutes => 'Upravovať zoznam stíšených používateľov';
	@override String get writeNotes => 'Písať alebo odstrániť poznámky';
	@override String get readNotifications => 'Vidieť vaše oznámenia';
	@override String get writeNotifications => 'Pracovať s vašimi notifikáciami';
	@override String get readReactions => 'Vidieť vaše reakcie';
	@override String get writeReactions => 'Upravovať vaše reakcie';
	@override String get writeVotes => 'Hlasovať v hlasovaniach';
	@override String get readPages => 'Vidieť vaše stránky';
	@override String get writePages => 'Upraviť alebo odstrániť vaše stránky';
	@override String get readPageLikes => 'Vidieť vaše páčiky na stránkach';
	@override String get writePageLikes => 'Upraviť páčiky na stránkach';
	@override String get readUserGroups => 'Vidieť vaše skupiny';
	@override String get writeUserGroups => 'Upraviť alebo odstrániť vaše skupiny';
	@override String get readChannels => 'Čítať vaše kanály';
	@override String get writeChannels => 'Upravovať vaše kanály';
	@override String get readGallery => 'Vidieť vašu galériu';
	@override String get writeGallery => 'Upravovať vašu galériu';
	@override String get readGalleryLikes => 'Vidieť zoznam obľúbených príspevkov z galérie';
	@override String get writeGalleryLikes => 'Upraviť zoznam obľúbených príspevov z galérie';
	@override String get writeChat => 'Písať alebo odstraňovať správy v chate';
}

// Path: misskey.auth_
class _Translations$misskey$auth_$sk_SK extends Translations$misskey$auth_$en_US {
	_Translations$misskey$auth_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String shareAccess({required Object name}) => 'Prajete si povoliť "${name}", aby mal prístup k tomuto účtu?';
	@override String get shareAccessAsk => 'Naozaj chcete povoliť tejto aplikácii prístup k tomuto účtu?';
	@override String get permissionAsk => 'Táto aplikácia vyžaduje nasledujúce nastavenia';
	@override String get pleaseGoBack => 'Prosím prejdite späť na aplikáciu';
	@override String get callback => 'Vraciam sa späť na aplikáciu';
	@override String get denied => 'Prístup zamietnutý';
}

// Path: misskey.antennaSources_
class _Translations$misskey$antennaSources_$sk_SK extends Translations$misskey$antennaSources_$en_US {
	_Translations$misskey$antennaSources_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get all => 'Všetky poznámky';
	@override String get homeTimeline => 'Poznámky od sledovaného používateľa';
	@override String get users => 'Poznámky od konkrétneho používateľa';
	@override String get userList => 'Poznámky od používateľov v zozname';
}

// Path: misskey.weekday_
class _Translations$misskey$weekday_$sk_SK extends Translations$misskey$weekday_$en_US {
	_Translations$misskey$weekday_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get sunday => 'Nedeľa';
	@override String get monday => 'Pondelok';
	@override String get tuesday => 'Utorok';
	@override String get wednesday => 'Streda';
	@override String get thursday => 'Štvrtok';
	@override String get friday => 'Piatok';
	@override String get saturday => 'Sobota';
}

// Path: misskey.widgets_
class _Translations$misskey$widgets_$sk_SK extends Translations$misskey$widgets_$en_US {
	_Translations$misskey$widgets_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Profil';
	@override String get instanceInfo => 'Informácie o serveri';
	@override String get memo => 'Prilepené poznámky';
	@override String get notifications => 'Oznámenia';
	@override String get timeline => 'Časová os';
	@override String get calendar => 'Kalendár';
	@override String get trends => 'Trendy';
	@override String get clock => 'Hodiny';
	@override String get rss => 'RSS čítačka';
	@override String get rssTicker => 'RSS Ticker';
	@override String get activity => 'Aktivita';
	@override String get photos => 'Fotky';
	@override String get digitalClock => 'Digitálne hodiny';
	@override String get unixClock => 'UNIX čas';
	@override String get federation => 'Federácia';
	@override String get instanceCloud => 'Cloud serverov';
	@override String get postForm => 'Napísať poznámku';
	@override String get slideshow => 'Prezentácia';
	@override String get button => 'Tlačidlo';
	@override String get onlineUsers => 'Online používatelia';
	@override String get jobQueue => 'Fronta úloh';
	@override String get serverMetric => 'Metriky servera';
	@override String get aiscript => 'Konzola AiScript';
	@override String get aichan => 'Ai';
	@override late final _Translations$misskey$widgets_$userList_$sk_SK userList_ = _Translations$misskey$widgets_$userList_$sk_SK._(_root);
}

// Path: misskey.widgetOptions_
class _Translations$misskey$widgetOptions_$sk_SK extends Translations$misskey$widgetOptions_$en_US {
	_Translations$misskey$widgetOptions_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get height => 'Výška';
	@override late final _Translations$misskey$widgetOptions_$button_$sk_SK button_ = _Translations$misskey$widgetOptions_$button_$sk_SK._(_root);
	@override late final _Translations$misskey$widgetOptions_$clock_$sk_SK clock_ = _Translations$misskey$widgetOptions_$clock_$sk_SK._(_root);
	@override late final _Translations$misskey$widgetOptions_$birthdayFollowings_$sk_SK birthdayFollowings_ = _Translations$misskey$widgetOptions_$birthdayFollowings_$sk_SK._(_root);
}

// Path: misskey.cw_
class _Translations$misskey$cw_$sk_SK extends Translations$misskey$cw_$en_US {
	_Translations$misskey$cw_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Skryť';
	@override String get show => 'Zobraziť viac';
	@override String chars({required Object count}) => '${count} znakov';
	@override String files({required Object count}) => '${count} súbor/ov';
}

// Path: misskey.poll_
class _Translations$misskey$poll_$sk_SK extends Translations$misskey$poll_$en_US {
	_Translations$misskey$poll_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'Treba aspoň dve voľby';
	@override String choiceN({required Object n}) => 'Voľba ${n}';
	@override String get noMore => 'Nemôžete pridať viac volieb';
	@override String get canMultipleVote => 'Povoliť hlasovať za viac volieb.';
	@override String get expiration => 'Ukončiť hlasovanie';
	@override String get infinite => 'Nikdy';
	@override String get at => 'Konkrétny dátum...';
	@override String get after => 'Ukončiť po...';
	@override String get deadlineDate => 'Dátum ukončenia';
	@override String get deadlineTime => 'hod';
	@override String get duration => 'Trvanie';
	@override String votesCount({required Object n}) => '${n} hlasov';
	@override String totalVotes({required Object n}) => '${n} hlasov celkom';
	@override String get vote => 'Hlasovať';
	@override String get showResult => 'Vidieť výsledky hlasovania';
	@override String get voted => 'Zahlasované';
	@override String get closed => 'Skončilo';
	@override String remainingDays({required Object d, required Object h}) => 'zostáva ${d} dní ${h} hodín';
	@override String remainingHours({required Object h, required Object m}) => 'zostáva ${h} hodín ${m} minút';
	@override String remainingMinutes({required Object m, required Object s}) => 'zostáva ${m} minút ${s} sekúnd';
	@override String remainingSeconds({required Object s}) => 'zostáva ${s} sekúnd';
}

// Path: misskey.visibility_
class _Translations$misskey$visibility_$sk_SK extends Translations$misskey$visibility_$en_US {
	_Translations$misskey$visibility_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get public => 'Verejné';
	@override String get publicDescription => 'Vaša poznámku bude viditeľná všetkým používateľom';
	@override String get home => 'Domov';
	@override String get homeDescription => 'Pridať iba na domácu časovú os';
	@override String get followers => 'Sledujúci';
	@override String get followersDescription => 'Viditeľné iba tým, ktorí vás sledujú';
	@override String get specified => 'Priame';
	@override String get specifiedDescription => 'Viditeľné iba pre konkrétnych používateľov';
}

// Path: misskey.postForm_
class _Translations$misskey$postForm_$sk_SK extends Translations$misskey$postForm_$en_US {
	_Translations$misskey$postForm_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'Odpoveď na túto poznámku...';
	@override String get quotePlaceholder => 'Citovanie tejto poznámky...';
	@override String get channelPlaceholder => 'Poslať do kanála...';
	@override late final _Translations$misskey$postForm_$howToUse_$sk_SK howToUse_ = _Translations$misskey$postForm_$howToUse_$sk_SK._(_root);
	@override late final _Translations$misskey$postForm_$placeholders_$sk_SK placeholders_ = _Translations$misskey$postForm_$placeholders_$sk_SK._(_root);
}

// Path: misskey.profile_
class _Translations$misskey$profile_$sk_SK extends Translations$misskey$profile_$en_US {
	_Translations$misskey$profile_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Názov';
	@override String get username => 'Meno používateľa';
	@override String get description => 'Bio';
	@override String get youCanIncludeHashtags => 'Vo svojom bio môžete mať aj hashtagy.';
	@override String get metadata => 'Dodatočné informácie';
	@override String get metadataEdit => 'Upraviť dodatočné informácie';
	@override String get metadataDescription => 'Vo svojom profile môžete uviesť až štyri dodatočné informačné polia.';
	@override String get metadataLabel => 'Popisok';
	@override String get metadataContent => 'Obsah';
	@override String get changeAvatar => 'Zmeniť avatara';
	@override String get changeBanner => 'Zmeniť banner';
}

// Path: misskey.exportOrImport_
class _Translations$misskey$exportOrImport_$sk_SK extends Translations$misskey$exportOrImport_$en_US {
	_Translations$misskey$exportOrImport_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Všetky poznámky';
	@override String get clips => 'Klip';
	@override String get followingList => 'Sledujete';
	@override String get muteList => 'Vypnúť zvuk';
	@override String get blockingList => 'Zablokovať';
	@override String get userLists => 'Zoznamy';
	@override String get excludeMutingUsers => 'Vylúčiť stíšených používateľov';
	@override String get excludeInactiveUsers => 'Vylúčiť neaktívnych používateľov';
}

// Path: misskey.charts_
class _Translations$misskey$charts_$sk_SK extends Translations$misskey$charts_$en_US {
	_Translations$misskey$charts_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Federácia';
	@override String get apRequest => 'Žiadosti';
	@override String get usersIncDec => 'Rozdiel v počte používateľov';
	@override String get usersTotal => 'Celkový počet používateľov';
	@override String get activeUsers => 'Aktívni používatelia';
	@override String get notesIncDec => 'Rozdiel v počte poznámok';
	@override String get localNotesIncDec => 'Rozdiel v počte lokálnych poznámok';
	@override String get remoteNotesIncDec => 'Rozdiel v počte vzdialených poznámok';
	@override String get notesTotal => 'Celkový počet poznámok';
	@override String get filesIncDec => 'Rozdiel v počte súborov';
	@override String get filesTotal => 'Celkový počet súborov';
	@override String get storageUsageIncDec => 'Rozdiel využitého úložiska';
	@override String get storageUsageTotal => 'Celkové využité úložisko';
}

// Path: misskey.instanceCharts_
class _Translations$misskey$instanceCharts_$sk_SK extends Translations$misskey$instanceCharts_$en_US {
	_Translations$misskey$instanceCharts_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get requests => 'Žiadosti';
	@override String get users => 'Rozdiel v počte používateľov';
	@override String get usersTotal => 'Celkom spolu počet používateľov';
	@override String get notes => 'Rozdiel v počte poznámok';
	@override String get notesTotal => 'Celkom spolu počet poznámok';
	@override String get ff => 'Rozdiel v počte sledovaných/sledujúcich';
	@override String get ffTotal => 'Celkom spolu počet sledovaných / sledujúcich';
	@override String get cacheSize => 'Rozdiel vo veľkosti cache';
	@override String get cacheSizeTotal => 'Celkom spolu veľkosť cache';
	@override String get files => 'Rozdiel v počte súborov';
	@override String get filesTotal => 'Celkom spolu počet súborov';
}

// Path: misskey.timelines_
class _Translations$misskey$timelines_$sk_SK extends Translations$misskey$timelines_$en_US {
	_Translations$misskey$timelines_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get home => 'Domov';
	@override String get local => 'Lokálne';
	@override String get social => 'Sociálne';
	@override String get global => 'Globálne';
}

// Path: misskey.play_
class _Translations$misskey$play_$sk_SK extends Translations$misskey$play_$en_US {
	_Translations$misskey$play_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get viewSource => 'Ukázať zdroj';
	@override String get featured => 'Význačné';
	@override String get title => 'Nadpis';
	@override String get script => 'Skript';
	@override String get summary => 'Popis';
}

// Path: misskey.pages_
class _Translations$misskey$pages_$sk_SK extends Translations$misskey$pages_$en_US {
	_Translations$misskey$pages_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'Vytvoriť novú stránku';
	@override String get editPage => 'Upraviť túto stránku';
	@override String get readPage => 'Zobrazenie zdroja aktívne';
	@override String get pageSetting => 'Nastavenia stránky';
	@override String get nameAlreadyExists => 'Zadaná URL stránku už existuje';
	@override String get invalidNameTitle => 'Zadaná URL stránku je nesprávna';
	@override String get invalidNameText => 'Uistite sa, že nadpis stránky nie je prázdny';
	@override String get editThisPage => 'Upraviť túto stránku';
	@override String get viewSource => 'Ukázať zdroj';
	@override String get viewPage => 'Ukázať vaše stránky';
	@override String get like => 'Páči sa mi';
	@override String get unlike => 'Nepáči sa mi';
	@override String get my => 'Moje stránky';
	@override String get liked => 'Obľúbené stránky';
	@override String get featured => 'Význačné';
	@override String get inspector => 'Inšpektor';
	@override String get contents => 'Obsah';
	@override String get content => 'Blok stránky';
	@override String get variables => 'Premenné';
	@override String get title => 'Nadpis';
	@override String get url => 'URL stránky';
	@override String get summary => 'Zhrnutie stránky';
	@override String get alignCenter => 'Vystrediť prvky';
	@override String get hideTitleWhenPinned => 'Skryť nadpis stránky keď je pripnutá na profil';
	@override String get font => 'Písmo';
	@override String get fontSerif => 'Pätkové';
	@override String get fontSansSerif => 'Bezpätkové';
	@override String get eyeCatchingImageSet => 'Nastaviť miniatúru';
	@override String get eyeCatchingImageRemove => 'Odstrániť miniatúru';
	@override String get chooseBlock => 'Pridať blok';
	@override String get selectType => 'Vyberte typ';
	@override String get contentBlocks => 'Obsah';
	@override String get inputBlocks => 'Vstup';
	@override String get specialBlocks => 'Špeciálne';
	@override late final _Translations$misskey$pages_$blocks$sk_SK blocks = _Translations$misskey$pages_$blocks$sk_SK._(_root);
}

// Path: misskey.relayStatus_
class _Translations$misskey$relayStatus_$sk_SK extends Translations$misskey$relayStatus_$en_US {
	_Translations$misskey$relayStatus_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'Čaká sa';
	@override String get accepted => 'Akceptované';
	@override String get rejected => 'Odmietnuté';
}

// Path: misskey.notification_
class _Translations$misskey$notification_$sk_SK extends Translations$misskey$notification_$en_US {
	_Translations$misskey$notification_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'Súbor sa úspešne nahral';
	@override String youGotMention({required Object name}) => '${name} vás spomenul/a';
	@override String youGotReply({required Object name}) => '${name} vám odpovedal/a';
	@override String youGotQuote({required Object name}) => '${name} vás citoval/a';
	@override String youRenoted({required Object name}) => '${name} preposlal/a vašu poznámku';
	@override String get youWereFollowed => 'Máte nového sledujúceho';
	@override String get youReceivedFollowRequest => 'Dostali ste žiadosť o sledovanie';
	@override String get yourFollowRequestAccepted => 'Vaša žiadosť o sledovanie bola prijatá';
	@override String get pollEnded => 'Výsledky hlasovania sú k dispozícii.';
	@override String unreadAntennaNote({required Object name}) => 'Anténa ${name}';
	@override String get emptyPushNotificationMessage => 'Push notifikácie aktualizované';
	@override late final _Translations$misskey$notification_$types_$sk_SK types_ = _Translations$misskey$notification_$types_$sk_SK._(_root);
	@override late final _Translations$misskey$notification_$actions_$sk_SK actions_ = _Translations$misskey$notification_$actions_$sk_SK._(_root);
}

// Path: misskey.deck_
class _Translations$misskey$deck_$sk_SK extends Translations$misskey$deck_$en_US {
	_Translations$misskey$deck_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Vždy zobraziť v hlavnom stĺpci';
	@override String get columnAlign => 'Zarovnať stĺpce';
	@override String get addColumn => 'Pridať stĺpec';
	@override String get configureColumn => 'Nastavenie stĺpcov';
	@override String get swapLeft => 'Vymeniť vľavo';
	@override String get swapRight => 'Vymeniť vpravo';
	@override String get swapUp => 'Vymeniť hore';
	@override String get swapDown => 'Vymeniť s nasledujúcim';
	@override String get stackLeft => 'Priložiť do ľavého stĺpca';
	@override String get popRight => 'Vybrať napravo';
	@override String get profile => 'Profil';
	@override String get newProfile => 'Nový profil';
	@override String get deleteProfile => 'Odstrániť profil';
	@override String get introduction => 'Kombinujte stĺpce a vytvorte si svoje vlastné rozhranie!';
	@override String get introduction2 => 'Stlačením tlačidla + v pravej časti obrazovky môžete kedykoľvek pridať stĺpce.';
	@override String get widgetsIntroduction => 'V ponuke stĺpca vyberte možnosť "Upraviť widget" a pridajte widget';
	@override late final _Translations$misskey$deck_$columns_$sk_SK columns_ = _Translations$misskey$deck_$columns_$sk_SK._(_root);
}

// Path: misskey.webhookSettings_
class _Translations$misskey$webhookSettings_$sk_SK extends Translations$misskey$webhookSettings_$en_US {
	_Translations$misskey$webhookSettings_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Názov';
	@override String get active => 'Zapnuté';
}

// Path: misskey.abuseReport_
class _Translations$misskey$abuseReport_$sk_SK extends Translations$misskey$abuseReport_$en_US {
	_Translations$misskey$abuseReport_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$abuseReport_$notificationRecipient_$sk_SK notificationRecipient_ = _Translations$misskey$abuseReport_$notificationRecipient_$sk_SK._(_root);
}

// Path: misskey.moderationLogTypes_
class _Translations$misskey$moderationLogTypes_$sk_SK extends Translations$misskey$moderationLogTypes_$en_US {
	_Translations$misskey$moderationLogTypes_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'Zmraziť';
	@override String get resetPassword => 'Resetovať heslo';
}

// Path: misskey.reversi_
class _Translations$misskey$reversi_$sk_SK extends Translations$misskey$reversi_$en_US {
	_Translations$misskey$reversi_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get total => 'Celkom';
}

// Path: misskey.remoteLookupErrors_
class _Translations$misskey$remoteLookupErrors_$sk_SK extends Translations$misskey$remoteLookupErrors_$en_US {
	_Translations$misskey$remoteLookupErrors_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$remoteLookupErrors_$noSuchObject_$sk_SK noSuchObject_ = _Translations$misskey$remoteLookupErrors_$noSuchObject_$sk_SK._(_root);
}

// Path: misskey.search_
class _Translations$misskey$search_$sk_SK extends Translations$misskey$search_$en_US {
	_Translations$misskey$search_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Všetko';
	@override String get searchScopeLocal => 'Lokálne';
}

// Path: misskey.watermarkEditor_
class _Translations$misskey$watermarkEditor_$sk_SK extends Translations$misskey$watermarkEditor_$en_US {
	_Translations$misskey$watermarkEditor_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get opacity => 'Priehľadnosť';
	@override String get scale => 'Veľkosť';
	@override String get text => 'Text';
	@override String get type => 'Typ';
	@override String get image => 'Obrázky';
	@override String get advanced => 'Rozšírené';
}

// Path: misskey.imageEffector_
class _Translations$misskey$imageEffector_$sk_SK extends Translations$misskey$imageEffector_$en_US {
	_Translations$misskey$imageEffector_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$imageEffector_$fxProps_$sk_SK fxProps_ = _Translations$misskey$imageEffector_$fxProps_$sk_SK._(_root);
}

// Path: misskey.qr_
class _Translations$misskey$qr_$sk_SK extends Translations$misskey$qr_$en_US {
	_Translations$misskey$qr_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get showTabTitle => 'Zobraziť';
	@override String get raw => 'Text';
}

// Path: misskey.imageEditing_.vars_
class _Translations$misskey$imageEditing_$vars_$sk_SK extends Translations$misskey$imageEditing_$vars_$en_US {
	_Translations$misskey$imageEditing_$vars_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get filename => 'Názov súboru';
}

// Path: misskey.delivery_.type_
class _Translations$misskey$delivery_$type_$sk_SK extends Translations$misskey$delivery_$type_$en_US {
	_Translations$misskey$delivery_$type_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get none => 'Zverejňovanie';
}

// Path: misskey.role_.priority_
class _Translations$misskey$role_$priority_$sk_SK extends Translations$misskey$role_$priority_$en_US {
	_Translations$misskey$role_$priority_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get low => 'Málo';
	@override String get middle => 'Stredné';
	@override String get high => 'Vysoká';
}

// Path: misskey.email_.follow_
class _Translations$misskey$email_$follow_$sk_SK extends Translations$misskey$email_$follow_$en_US {
	_Translations$misskey$email_$follow_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Máte nového sledujúceho';
}

// Path: misskey.email_.receiveFollowRequest_
class _Translations$misskey$email_$receiveFollowRequest_$sk_SK extends Translations$misskey$email_$receiveFollowRequest_$en_US {
	_Translations$misskey$email_$receiveFollowRequest_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dostali ste žiadosť o sledovanie';
}

// Path: misskey.theme_.keys
class _Translations$misskey$theme_$keys$sk_SK extends Translations$misskey$theme_$keys$en_US {
	_Translations$misskey$theme_$keys$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get accent => 'Akcent';
	@override String get bg => 'Pozadie';
	@override String get fg => 'Text';
	@override String get focus => 'Fokus';
	@override String get indicator => 'Indikátor';
	@override String get panel => 'Panel';
	@override String get shadow => 'Tieň';
	@override String get header => 'Hlavička';
	@override String get navBg => 'Pozadie bočného panela';
	@override String get navFg => 'Text bočného panela';
	@override String get navActive => 'Text bočného panela (aktívny)';
	@override String get navIndicator => 'Indikátor bočného panela';
	@override String get link => 'Odkaz';
	@override String get hashtag => 'Hashtag';
	@override String get mention => 'Zmienka';
	@override String get mentionMe => 'Zmienky (mňa)';
	@override String get renote => 'Preposlať';
	@override String get modalBg => 'Pozadie modálu';
	@override String get divider => 'Oddeľovač';
	@override String get scrollbarHandle => 'Rúčka scrollbaru';
	@override String get scrollbarHandleHover => 'Rúčka scrollbaru (pod kurzorom)';
	@override String get dateLabelFg => 'Text dátového popisku';
	@override String get infoBg => 'Pozadie informácií';
	@override String get infoFg => 'Informačný text';
	@override String get infoWarnBg => 'Pozadie varovania';
	@override String get infoWarnFg => 'Text varovania';
	@override String get toastBg => 'Pozadie upozornenia';
	@override String get toastFg => 'Text upozornenia';
	@override String get buttonBg => 'Pozadie tlačidla';
	@override String get buttonHoverBg => 'Pozadie tlačidla (pod kurzorom)';
	@override String get inputBorder => 'Okraj vstupného poľa';
	@override String get badge => 'Odznak';
	@override String get messageBg => 'Pozadie chatu';
	@override String get fgHighlighted => 'Zvýraznený text';
}

// Path: misskey.widgets_.userList_
class _Translations$misskey$widgets_$userList_$sk_SK extends Translations$misskey$widgets_$userList_$en_US {
	_Translations$misskey$widgets_$userList_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Vyberte zoznam';
}

// Path: misskey.widgetOptions_.button_
class _Translations$misskey$widgetOptions_$button_$sk_SK extends Translations$misskey$widgetOptions_$button_$en_US {
	_Translations$misskey$widgetOptions_$button_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get colored => 'Farebné';
}

// Path: misskey.widgetOptions_.clock_
class _Translations$misskey$widgetOptions_$clock_$sk_SK extends Translations$misskey$widgetOptions_$clock_$en_US {
	_Translations$misskey$widgetOptions_$clock_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get size => 'Veľkosť';
}

// Path: misskey.widgetOptions_.birthdayFollowings_
class _Translations$misskey$widgetOptions_$birthdayFollowings_$sk_SK extends Translations$misskey$widgetOptions_$birthdayFollowings_$en_US {
	_Translations$misskey$widgetOptions_$birthdayFollowings_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get period => 'Trvanie';
}

// Path: misskey.postForm_.howToUse_
class _Translations$misskey$postForm_$howToUse_$sk_SK extends Translations$misskey$postForm_$howToUse_$en_US {
	_Translations$misskey$postForm_$howToUse_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get visibility_title => 'Viditeľnosť';
	@override String get menu_title => 'Menu';
}

// Path: misskey.postForm_.placeholders_
class _Translations$misskey$postForm_$placeholders_$sk_SK extends Translations$misskey$postForm_$placeholders_$en_US {
	_Translations$misskey$postForm_$placeholders_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get a => 'Čo máte v pláne?';
	@override String get b => 'Čo sa deje?';
	@override String get c => 'O čom rozmýšľaš?';
	@override String get d => 'Čo chcete povedať?';
	@override String get e => 'Začnite písať...';
	@override String get f => 'Čaká sa na písanie...';
}

// Path: misskey.pages_.blocks
class _Translations$misskey$pages_$blocks$sk_SK extends Translations$misskey$pages_$blocks$en_US {
	_Translations$misskey$pages_$blocks$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get text => 'Text';
	@override String get textarea => 'Textové pole';
	@override String get section => 'Sekcia';
	@override String get image => 'Obrázky';
	@override String get button => 'Tlačidlo';
	@override String get note => 'Vložená poznámka';
	@override late final _Translations$misskey$pages_$blocks$note_$sk_SK note_ = _Translations$misskey$pages_$blocks$note_$sk_SK._(_root);
}

// Path: misskey.notification_.types_
class _Translations$misskey$notification_$types_$sk_SK extends Translations$misskey$notification_$types_$en_US {
	_Translations$misskey$notification_$types_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get all => 'Všetky';
	@override String get follow => 'Sledujete';
	@override String get mention => 'Zmienka';
	@override String get reply => 'Odpovede';
	@override String get renote => 'Preposlať';
	@override String get quote => 'Citovať';
	@override String get reaction => 'Reakcie';
	@override String get pollEnded => 'Hlasovanie skončilo';
	@override String get receiveFollowRequest => 'Doručené žiadosti o sledovanie';
	@override String get followRequestAccepted => 'Schválené žiadosti o sledovanie';
	@override String get login => 'Prihlásiť sa';
	@override String get app => 'Oznámenia z prepojených aplikácií';
}

// Path: misskey.notification_.actions_
class _Translations$misskey$notification_$actions_$sk_SK extends Translations$misskey$notification_$actions_$en_US {
	_Translations$misskey$notification_$actions_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'Sledovať späť\n';
	@override String get reply => 'Odpovedať';
	@override String get renote => 'Preposlať';
}

// Path: misskey.deck_.columns_
class _Translations$misskey$deck_$columns_$sk_SK extends Translations$misskey$deck_$columns_$en_US {
	_Translations$misskey$deck_$columns_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get main => 'Hlavný';
	@override String get widgets => 'Widgety';
	@override String get notifications => 'Oznámenia';
	@override String get tl => 'Časová os';
	@override String get antenna => 'Antény';
	@override String get list => 'Zoznam';
	@override String get channel => 'Kanály';
	@override String get mentions => 'Zmienky';
	@override String get direct => 'Priame poznámky';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _Translations$misskey$abuseReport_$notificationRecipient_$sk_SK extends Translations$misskey$abuseReport_$notificationRecipient_$en_US {
	_Translations$misskey$abuseReport_$notificationRecipient_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$sk_SK recipientType_ = _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$sk_SK._(_root);
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _Translations$misskey$remoteLookupErrors_$noSuchObject_$sk_SK extends Translations$misskey$remoteLookupErrors_$noSuchObject_$en_US {
	_Translations$misskey$remoteLookupErrors_$noSuchObject_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nenájdené';
}

// Path: misskey.imageEffector_.fxProps_
class _Translations$misskey$imageEffector_$fxProps_$sk_SK extends Translations$misskey$imageEffector_$fxProps_$en_US {
	_Translations$misskey$imageEffector_$fxProps_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get scale => 'Veľkosť';
	@override String get size => 'Veľkosť';
	@override String get color => 'Farba';
	@override String get opacity => 'Priehľadnosť';
	@override String get lightness => 'Zosvetliť';
}

// Path: misskey.pages_.blocks.note_
class _Translations$misskey$pages_$blocks$note_$sk_SK extends Translations$misskey$pages_$blocks$note_$en_US {
	_Translations$misskey$pages_$blocks$note_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get id => 'ID poznámky';
	@override String get idDescription => 'Alebo môžete vložiť URL poznámky sem';
	@override String get detailed => 'Podrobný pohľad';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$sk_SK extends Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$en_US {
	_Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$sk_SK._(TranslationsSkSk root) : this._root = root, super.internal(root);

	final TranslationsSkSk _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Email';
}
