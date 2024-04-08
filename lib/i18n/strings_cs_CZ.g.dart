///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint

part of 'strings.g.dart';

// Path: <root>
class _StringsCsCz extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsCsCz.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.csCz,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <cs-CZ>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	@override late final _StringsCsCz _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAriaCsCz aria = _StringsAriaCsCz._(_root);
	@override late final _StringsMisskeyCsCz misskey = _StringsMisskeyCsCz._(_root);
}

// Path: aria
class _StringsAriaCsCz extends _StringsAriaEnUs {
	_StringsAriaCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Jste si jisti, že chcete sledovat '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria je překládán do jiných jazyků dobrovolníkama. Můžete pomoci na '),
		link,
		const TextSpan(text: '.'),
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' uživatelů je online'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: ' přeposla/a'),
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Jste si jisti že už nechcete sledovat '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' řekl/a něco'),
	]);
}

// Path: misskey
class _StringsMisskeyCsCz extends _StringsMisskeyEnUs {
	_StringsMisskeyCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Čeština';
	@override String get headlineMisskey => 'Síť propojená poznámkami';
	@override String get introMisskey => 'Vítejte! Misskey je otevřený a decentralizovaný microblogový servis.\n"Poznámkami" můžete sdílet co se zrovna děje se všemi ve Vašem okolí. 📡\nPomocí "reakcí" můžete sdílet své názory a pocity na ostatní poznámky. 👍\nPojďte objevovat nový svět! 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} je jeden ze serverů využívající open source platformu <b>Misskey<b> (nazývaná "Misskey instance").';
	@override String monthAndDay({required Object day, required Object month}) => '${day}. ${month}.';
	@override String get search => 'Vyhledávání';
	@override String get notifications => 'Oznámení';
	@override String get username => 'Uživatelské jméno';
	@override String get password => 'Heslo';
	@override String get forgotPassword => 'Zapomenuté heslo';
	@override String get fetchingAsApObject => 'Načítám data z Fediversu...';
	@override String get ok => 'Potvrdit';
	@override String get gotIt => 'Rozumím!';
	@override String get cancel => 'Zrušit';
	@override String get noThankYou => 'Ne děkuji';
	@override String get enterUsername => 'Zadej uživatelské jméno';
	@override String renotedBy({required Object user}) => '${user} přeposla/a';
	@override String get noNotes => 'Žádné poznámky';
	@override String get noNotifications => 'Žádná oznámení';
	@override String get instance => 'Instance';
	@override String get settings => 'Nastavení';
	@override String get notificationSettings => 'Nastavení oznámení';
	@override String get basicSettings => 'Obecná nastavení';
	@override String get otherSettings => 'Rozšířená nastavení';
	@override String get openInWindow => 'Otevřít v novém okně';
	@override String get profile => 'Váš profil';
	@override String get timeline => 'Časová osa';
	@override String get noAccountDescription => 'Tento uživatel zatím nenapsal svou biografii.';
	@override String get login => 'Přihlásit se';
	@override String get loggingIn => 'Probíhá přihlašování';
	@override String get logout => 'Odhlásit';
	@override String get signup => 'Registrace';
	@override String get uploading => 'Nahrávám';
	@override String get save => 'Uložit';
	@override String get users => 'Uživatelé';
	@override String get addUser => 'Přidat uživatele';
	@override String get favorite => 'Oblíbené';
	@override String get favorites => 'Oblíbené';
	@override String get unfavorite => 'Odebrat z oblízených';
	@override String get favorited => 'Přidáno do oblíbených';
	@override String get alreadyFavorited => 'Už je mezi oblíbenými';
	@override String get cantFavorite => 'Nepodařilo se přidat mezi oblíbené.';
	@override String get pin => 'Připnout';
	@override String get unpin => 'Odepnout';
	@override String get copyContent => 'Zkopírovat obsah';
	@override String get copyLink => 'Kopírovat odkaz';
	@override String get delete => 'Smazat';
	@override String get deleteAndEdit => 'Smazat a upravit';
	@override String get deleteAndEditConfirm => 'Jste si jistí že chcete smazat tuto poznámku a editovat ji? Ztratíte tím všechny reakce, sdílení a odpovědi na ni.';
	@override String get addToList => 'Přidat do seznamu';
	@override String get addToAntenna => 'Přidat do antény';
	@override String get sendMessage => 'Odeslat zprávu';
	@override String get copyRSS => 'Kopírovat RSS';
	@override String get copyUsername => 'Kopírovat uživatelské jméno';
	@override String get copyUserId => 'Kopírovat ID uživatele';
	@override String get copyNoteId => 'Kopírovat ID poznámky';
	@override String get copyFileId => 'Kopírovat ID souboru';
	@override String get copyFolderId => 'Kopírovat ID složky';
	@override String get copyProfileUrl => 'Kopírovat URL profilu';
	@override String get searchUser => 'Vyhledat uživatele';
	@override String get reply => 'Odpovědět';
	@override String get loadMore => 'Zobrazit více';
	@override String get showMore => 'Zobrazit více';
	@override String get showLess => 'Zavřít';
	@override String get youGotNewFollower => 'Máte nového následovníka';
	@override String get receiveFollowRequest => 'Žádost o sledování přijata';
	@override String get followRequestAccepted => 'Žádost o sledování přijata';
	@override String get mention => 'Zmínění';
	@override String get mentions => 'Zmínění';
	@override String get directNotes => 'Přímé poznámky';
	@override String get importAndExport => 'Import a export';
	@override String get import => 'Importovat';
	@override String get export => 'Exportovat';
	@override String get files => 'Soubor(ů)';
	@override String get download => 'Stáhnout';
	@override String driveFileDeleteConfirm({required Object name}) => 'Opravdu chcete smazat soubor "${name}"? Poznámky, ke kterým je tento soubor připojen, budou také smazány.';
	@override String unfollowConfirm({required Object name}) => 'Jste si jisti že už nechcete sledovat ${name}?';
	@override String get exportRequested => 'Požádali jste o export. To může chvíli trvat. Přidáme ho na váš Disk až bude dokončen.';
	@override String get importRequested => 'Požádali jste o export. To může chvilku trvat.';
	@override String get lists => 'Seznamy';
	@override String get noLists => 'Nemáte žádné seznamy';
	@override String get note => 'Poznámka';
	@override String get notes => 'Poznámky';
	@override String get following => 'Sledovaní';
	@override String get followers => 'Sledující';
	@override String get followsYou => 'Sledují vás';
	@override String get createList => 'Vytvořit seznam';
	@override String get manageLists => 'Spravovat seznam';
	@override String get error => 'Chyba';
	@override String get somethingHappened => 'Jejda. Něco se nepovedlo.';
	@override String get retry => 'Opakovat';
	@override String get pageLoadError => 'Nepodařilo se načíst stránku';
	@override String get pageLoadErrorDescription => 'Tohle je obvykle způsobeno chybou sítě nebo mezipaměti prohlížeče. Zkuste vymazat mezipaměť a po chvíli čekání to zkuste znovu.';
	@override String get serverIsDead => 'Server neodpovídá. Počkejte chvíli a zkuste to znovu.';
	@override String get youShouldUpgradeClient => 'Pro zobrazení této stránky obnovte stránku pro aktualizaci klienta.';
	@override String get enterListName => 'Jméno seznamu';
	@override String get privacy => 'Soukromí';
	@override String get makeFollowManuallyApprove => 'Žádosti o sledování vyžadují potvrzení';
	@override String get defaultNoteVisibility => 'Výchozí viditelnost';
	@override String get follow => 'Sledovaní';
	@override String get followRequest => 'Odeslat žádost o sledování';
	@override String get followRequests => 'Žádosti o sledování';
	@override String get unfollow => 'Přestat sledovat';
	@override String get followRequestPending => 'Čekající žádosti o sledování';
	@override String get enterEmoji => 'Vložte emoji';
	@override String get renote => 'Přeposlat';
	@override String get unrenote => 'Zrušit přeposlání';
	@override String get renoted => 'Přeposláno';
	@override String get cantRenote => 'Tento příspěvek nelze přeposlat.';
	@override String get cantReRenote => 'Odpověď nemůže být odstraněna.';
	@override String get quote => 'Citovat';
	@override String get inChannelRenote => 'Přeposlání v kanálu';
	@override String get inChannelQuote => 'Citace v kanálu';
	@override String get pinnedNote => 'Připnutá poznámka';
	@override String get pinned => 'Připnout';
	@override String get you => 'Vy';
	@override String get clickToShow => 'Klikněte pro zobrazení';
	@override String get sensitive => 'NSFW';
	@override String get add => 'Přidat';
	@override String get reaction => 'Reakce';
	@override String get reactions => 'Reakce';
	@override String get reactionSettingDescription2 => 'Přetažením změníte pořadí, kliknutím smažete, zmáčkněte "+" k přidání';
	@override String get rememberNoteVisibility => 'Zapamatovat nastavení zobrazení poznámky';
	@override String get attachCancel => 'Odstranit přílohu';
	@override String get markAsSensitive => 'Označit jako NSFW';
	@override String get unmarkAsSensitive => 'Odznačit jako NSFW';
	@override String get enterFileName => 'Zadejte název souboru';
	@override String get mute => 'Ztlumit';
	@override String get unmute => 'Odmlčet';
	@override String get renoteMute => 'Ztlumit poznámky';
	@override String get renoteUnmute => 'Zrušit ztlumení poznámek';
	@override String get block => 'Zablokovat';
	@override String get unblock => 'Odblokovat';
	@override String get suspend => 'Zmrazit';
	@override String get unsuspend => 'Odmrazit';
	@override String get blockConfirm => 'Jste si jistí že chcete zablokovat tento účet?';
	@override String get unblockConfirm => 'Jste si jistí že chcete odblokovat tento účet?';
	@override String get suspendConfirm => 'Jste si jistí že chcete suspendovat tenhle účet?';
	@override String get unsuspendConfirm => 'Jste si jistí že chcete obnovit tenhle účet?';
	@override String get selectList => 'Vybrat seznam';
	@override String get editList => 'Upravit seznam';
	@override String get selectChannel => 'Vybrat kanál';
	@override String get selectAntenna => 'Vyberte Anténu';
	@override String get editAntenna => 'Upravit anténu';
	@override String get selectWidget => 'Zvolte widget';
	@override String get editWidgets => 'Upravit widget';
	@override String get editWidgetsExit => 'Hotovo';
	@override String get customEmojis => 'Vlastní emoji';
	@override String get emoji => 'Emoji';
	@override String get emojis => 'Emoji';
	@override String get emojiName => 'Jméno emoji';
	@override String get emojiUrl => 'URL obrázku';
	@override String get addEmoji => 'Přidat emoji';
	@override String get settingGuide => 'Doporučené nastavení';
	@override String get cacheRemoteFiles => 'Ukládání vzdálených souborů do mezipaměti';
	@override String get cacheRemoteFilesDescription => 'Zakázání tohoto nastavení způsobí, že vzdálené soubory budou odkazovány přímo, místo aby byly ukládány do mezipaměti. Tím se ušetří úložiště na serveru, ale zvýší se provoz, protože se negenerují miniatury.';
	@override String get cacheRemoteSensitiveFiles => 'Uložit do mezipaměti vzdálené citlivé soubory';
	@override String get cacheRemoteSensitiveFilesDescription => 'Když je tohle nastavení zrušeno, tak jsou vzdálené citlivé soubory načítány přímo ze vzdálených instancí bez uložení do mezipaměti.';
	@override String get flagAsBot => 'Tento účet je bot';
	@override String get flagAsBotDescription => 'Pokud je tento účet kontrolován programem zaškrtněte tuto možnost. To označí tento účet jako bot pro ostatní vývojáře a zabrání tak nekonečným interakcím s ostatními boty a upraví Misskey systém aby se choval k tomuhle účtu jako bot.';
	@override String get flagAsCat => 'Tenhle účet je kočka';
	@override String get flagAsCatDescription => 'Vyberte tuto možnost aby tento účet byl označen jako kočka.';
	@override String get flagShowTimelineReplies => 'Zobrazovat odpovědi na časové ose';
	@override String get flagShowTimelineRepliesDescription => 'Je-li zapnuto, zobrazí odpovědi uživatelů na poznámky jiných uživatelů na vaší časové ose.';
	@override String get autoAcceptFollowed => 'Automaticky akceptovat následování od účtů které sledujete';
	@override String get addAccount => 'Přidat účet';
	@override String get reloadAccountsList => 'Obnovit list účtů';
	@override String get loginFailed => 'Přihlášení se nezdařilo.';
	@override String get showOnRemote => 'Více na původním profilu';
	@override String get general => 'Obecně';
	@override String get wallpaper => 'Obrázek na pozadí';
	@override String get setWallpaper => 'Nastavení obrázku na pozadí';
	@override String get removeWallpaper => 'Odstranit pozadí';
	@override String searchWith({required Object q}) => 'Hledat: ${q}';
	@override String get youHaveNoLists => 'Nemáte žádné seznamy';
	@override String followConfirm({required Object name}) => 'Jste si jisti, že chcete sledovat ${name}?';
	@override String get proxyAccount => 'Proxy účet';
	@override String get proxyAccountDescription => 'Proxy účet je účet, který za určitých podmínek sleduje uživatele na dálku vaším jménem. Například když uživatel zařadí vzdáleného uživatele do seznamu, pokud nikdo nesleduje uživatele na seznamu, aktivita nebude doručena instanci, takže místo toho bude uživatele sledovat účet proxy.';
	@override String get host => 'Hostitel';
	@override String get selectUser => 'Vyberte uživatele';
	@override String get recipient => 'Pro';
	@override String get annotation => 'Komentáře';
	@override String get federation => 'Federace';
	@override String get instances => 'Instance';
	@override String get registeredAt => 'Registrován';
	@override String get latestRequestReceivedAt => 'Poslední požadavek přijat';
	@override String get latestStatus => 'Poslední status';
	@override String get storageUsage => 'Využití úložiště';
	@override String get charts => 'Grafy';
	@override String get perHour => 'za hodinu';
	@override String get perDay => 'za den';
	@override String get stopActivityDelivery => 'Přestat zasílat aktivitu';
	@override String get blockThisInstance => 'Blokovat tuto instanci';
	@override String get operations => 'Operace';
	@override String get software => 'Software';
	@override String get version => 'Verze';
	@override String get metadata => 'Metadata';
	@override String withNFiles({required Object n}) => '${n} soubor(ů)';
	@override String get monitor => 'Monitorovat';
	@override String get jobQueue => 'Fronta úloh';
	@override String get cpuAndMemory => 'CPU a paměť';
	@override String get network => 'Síť';
	@override String get disk => 'Disk';
	@override String get instanceInfo => 'Informace o instanci';
	@override String get statistics => 'Statistiky';
	@override String get clearQueue => 'Vyčistit frontu';
	@override String get clearQueueConfirmTitle => 'Jste si jisti že zrušit všechny úlohy ve frontě?';
	@override String get clearQueueConfirmText => 'Jakékoliv nedoručené poznámky ve frontě nebudou sdružovány. Většinou tahle operace není zapotřebí.';
	@override String get clearCachedFiles => 'Vyprázdnit mezipaměť';
	@override String get clearCachedFilesConfirm => 'Jste jistí že chcete smazat všechny vzdálené soubory v mezipaměti?';
	@override String get blockedInstances => 'Blokované instance';
	@override String get blockedInstancesDescription => 'Vypište názvy hostitelů instancí, které chcete blokovat odděleně řádkovými zlomky. Uvedené instance již nebudou moci s touto instancí komunikovat.';
	@override String get muteAndBlock => 'Ztlumení a blokování';
	@override String get mutedUsers => 'Zltumení uživatelé';
	@override String get blockedUsers => 'Blokovaní uživatelé';
	@override String get noUsers => 'Žádní uživatelé';
	@override String get editProfile => 'Upravit můj profil';
	@override String get noteDeleteConfirm => 'Jste si jistí že chcete smazat tuhle poznámku?';
	@override String get pinLimitExceeded => 'Nemůžete připnout další poznámky.';
	@override String get intro => 'Instalace Misskey byla dokončena! Prosím vytvořte admina.';
	@override String get done => 'Hotovo';
	@override String get processing => 'Zpracovávám';
	@override String get preview => 'Náhled';
	@override String get default_ => 'Výchozí';
	@override String defaultValueIs({required Object value}) => 'Základní hodnota: ${value}';
	@override String get noCustomEmojis => 'Bez Emoji';
	@override String get noJobs => 'Žádné úlohy';
	@override String get federating => 'Sdružování';
	@override String get blocked => 'Blokováno';
	@override String get suspended => 'Suspendováno';
	@override String get all => 'Vše';
	@override String get subscribing => 'Odebíráte';
	@override String get publishing => 'Publikuji';
	@override String get notResponding => 'Neodpovídá';
	@override String get instanceFollowing => 'Následovníci na instanci';
	@override String get instanceFollowers => 'Následovníci na instanci';
	@override String get instanceUsers => 'Uživatelé této instance';
	@override String get changePassword => 'Změnit heslo';
	@override String get security => 'Zabezpečení';
	@override String get retypedNotMatch => 'Zadané údaje se neshodují.';
	@override String get currentPassword => 'Současné heslo';
	@override String get newPassword => 'Nové heslo';
	@override String get newPasswordRetype => 'Nové heslo (znovu)';
	@override String get attachFile => 'Přiložit soubor';
	@override String get more => 'Více!';
	@override String get featured => 'Oblíbené poznámky';
	@override String get usernameOrUserId => 'Uživatelské jméno nebo uživatelské id';
	@override String get noSuchUser => 'Uživatel nebyl nalezen';
	@override String get lookup => 'Vyhledat';
	@override String get announcements => 'Oznámení';
	@override String get imageUrl => 'URL obrázku';
	@override String get remove => 'Smazat';
	@override String get removed => 'Smazáno';
	@override String removeAreYouSure({required Object x}) => 'Jste si jistí že chcete smazat "${x}"?';
	@override String deleteAreYouSure({required Object x}) => 'Jste si jistí že chcete smazat "${x}"?';
	@override String get resetAreYouSure => 'Opravdu resetovat?';
	@override String get saved => 'Uloženo';
	@override String get messaging => 'Zprávy';
	@override String get upload => 'Nahrát soubory';
	@override String get keepOriginalUploading => 'Ponechat originální obrázek';
	@override String get keepOriginalUploadingDescription => 'Uloží původní nahraný obrázek jak je. Pokud je to vypnuté, vygeneruje se zobrazení verze na webu při nahrátí.';
	@override String get fromDrive => 'Z disku';
	@override String get fromUrl => 'Z URL';
	@override String get uploadFromUrl => 'Nahrát z URL adresy';
	@override String get uploadFromUrlDescription => 'URL adresa souboru, který chcete nahrát';
	@override String get uploadFromUrlRequested => 'Upload zažádán';
	@override String get uploadFromUrlMayTakeTime => 'Může trvat nějakou dobu, dokud nebude dokončeno nahrávání.';
	@override String get explore => 'Objevovat';
	@override String get messageRead => 'Přečtené';
	@override String get noMoreHistory => 'To je vše';
	@override String get startMessaging => 'Zahájit chat';
	@override String nUsersRead({required Object n}) => 'přečteno ${n} uživateli';
	@override String agreeTo({required Object x0}) => 'Souhlasím s ${x0}';
	@override String get agree => 'Souhlasím';
	@override String get agreeBelow => 'Souhlasím s následným';
	@override String get basicNotesBeforeCreateAccount => 'Důležité poznámky';
	@override String get termsOfService => 'Podmínky užívání';
	@override String get start => 'Začít';
	@override String get home => 'Domů';
	@override String get remoteUserCaution => 'Tyto informace nemusí být aktuální jelikož uživatel je ze vzdálené instance.';
	@override String get activity => 'Aktivita';
	@override String get images => 'Obrázky';
	@override String get image => 'Obrázky';
	@override String get birthday => 'Datum narození';
	@override String yearsOld({required Object age}) => '${age} let';
	@override String get registeredDate => 'Datum registrace';
	@override String get location => 'Lokace';
	@override String get theme => 'Vzhled';
	@override String get themeForLightMode => 'Vzhled pro použití ve světlém režimu';
	@override String get themeForDarkMode => 'Vzhled k použití v tmavém režimu';
	@override String get light => 'Světlý';
	@override String get dark => 'Tmavý';
	@override String get lightThemes => 'Světlý vzhled';
	@override String get darkThemes => 'Tmavý vzhled';
	@override String get syncDeviceDarkMode => 'Synchronizovat tmavý vzhled s nastavením Vašeho systému';
	@override String get drive => 'Úložiště';
	@override String get fileName => 'Název souboru';
	@override String get selectFile => 'Vybrat soubor';
	@override String get selectFiles => 'Vybrat soubory';
	@override String get selectFolder => 'Vyberte složku';
	@override String get selectFolders => 'Vyberte složky';
	@override String get renameFile => 'Přejmenovat soubor';
	@override String get folderName => 'Název složky';
	@override String get createFolder => 'Vytvořit složku';
	@override String get renameFolder => 'Přejmenovat složku';
	@override String get deleteFolder => 'Odstranit složku';
	@override String get addFile => 'Přidat soubor';
	@override String get emptyDrive => 'Váš disk je prázdný';
	@override String get emptyFolder => 'Tato složka je prázdná';
	@override String get unableToDelete => 'Nelze smazat';
	@override String get inputNewFileName => 'Zadejte nový název';
	@override String get inputNewDescription => 'Zadejte nový popisek';
	@override String get inputNewFolderName => 'Zadejte název nové složky';
	@override String get circularReferenceFolder => 'Koncová složka je podsložka složky, kterou chcete přesunout.';
	@override String get hasChildFilesOrFolders => 'Nemůžete odstranit složku, která není prázdná.';
	@override String get copyUrl => 'Kopírovat URL';
	@override String get rename => 'Přejmenovat';
	@override String get avatar => 'Avatar';
	@override String get banner => 'Baner';
	@override String get displayOfSensitiveMedia => 'Zobrazit citlivé média';
	@override String get whenServerDisconnected => 'Když ztratíte spojení se serverem';
	@override String get disconnectedFromServer => 'Spojení bylo přerušeno';
	@override String get reload => 'Aktualizovat';
	@override String get doNothing => 'Ignorovat';
	@override String get reloadConfirm => 'Chcete obnovit časovou osu?';
	@override String get watch => 'Sledovat';
	@override String get unwatch => 'Přestat sledovat';
	@override String get accept => 'Souhlasím';
	@override String get reject => 'Odmítnout';
	@override String get normal => 'Normální';
	@override String get instanceName => 'Název instance';
	@override String get instanceDescription => 'Popis instance';
	@override String get maintainerName => 'Správce';
	@override String get maintainerEmail => 'E-mailová adresa správce';
	@override String get tosUrl => 'URL pro smluvní podmínky';
	@override String get thisYear => 'Tento rok';
	@override String get thisMonth => 'Tento měsíc';
	@override String get today => 'Dnes';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => '${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'Stránky';
	@override String get integration => 'Integrace';
	@override String get connectService => 'Připojit';
	@override String get disconnectService => 'Odpojit';
	@override String get enableLocalTimeline => 'Povolit lokální čas';
	@override String get enableGlobalTimeline => 'Povolit globální čas';
	@override String get disablingTimelinesInfo => 'Administrátoři a Moderátoři budou mít stálý přístup ke všem časovým osám i přes to že nejsou zapnuté.';
	@override String get registration => 'Registrace';
	@override String get enableRegistration => 'Povolit registraci novým uživatelům';
	@override String get invite => 'Pozvat';
	@override String get driveCapacityPerLocalAccount => 'Kapacita disku na lokálního uživatele';
	@override String get driveCapacityPerRemoteAccount => 'Kapacita disku na vzdáleného uživatele';
	@override String get inMb => 'V megabajtech';
	@override String get bannerUrl => 'Baner URL';
	@override String get backgroundImageUrl => 'Adresa URL obrázku pozadí';
	@override String get basicInfo => 'Základní informace';
	@override String get pinnedUsers => 'Připnutí uživatelé';
	@override String get pinnedUsersDescription => 'Seznam uživatelských přezdívek oddělených řádkami bude připnutý v záložce "Objevit".';
	@override String get pinnedPages => 'Připnutý stránky';
	@override String get pinnedPagesDescription => 'Zadejte cesty stránek oddělené řádkami, které si přejete mít přípnutý na vrcholu téhle instance.';
	@override String get pinnedClipId => 'ID připnutého klipu';
	@override String get pinnedNotes => 'Připnutá poznámka';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'Aktivovat hCaptchu';
	@override String get hcaptchaSiteKey => 'Klíč stránky';
	@override String get hcaptchaSecretKey => 'Tajný Klíč (Secret Key)';
	@override String get mcaptchaSiteKey => 'Klíč stránky';
	@override String get mcaptchaSecretKey => 'Tajný Klíč (Secret Key)';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'Zapnout ReCAPTCHu';
	@override String get recaptchaSiteKey => 'Klíč stránky';
	@override String get recaptchaSecretKey => 'Tajný Klíč (Secret Key)';
	@override String get turnstile => 'Turnstile';
	@override String get enableTurnstile => 'Povolit Turnstile';
	@override String get turnstileSiteKey => 'Klíč stránky';
	@override String get turnstileSecretKey => 'Tajný Klíč (Secret Key)';
	@override String get avoidMultiCaptchaConfirm => 'Používání několik Captcha systému může způsobit konflikt mezi nimi. Chtěli byste vypnout ostatní aktivní Captcha systémy? Pokud je chcete nechat zapnuté, stiskněte zrušit.';
	@override String get antennas => 'Antény';
	@override String get manageAntennas => 'Spravovat Antény';
	@override String get name => 'Jméno';
	@override String get antennaSource => 'Zdroj Antény';
	@override String get antennaKeywords => 'Klíčová slova na poslech';
	@override String get antennaExcludeKeywords => 'Vyloučená klíčová slova';
	@override String get antennaKeywordsDescription => 'Oddělte mezerami pro AND kondice nebo řádkami pro OR kondice.';
	@override String get notifyAntenna => 'Upozornit na nové poznámky';
	@override String get withFileAntenna => 'Poznámky jenom se souborama';
	@override String get enableServiceworker => 'Povolit ServiceWorker';
	@override String get antennaUsersDescription => 'Vypsat jednoho uživatele na řádek';
	@override String get caseSensitive => 'Rozlišuje malá a velká písmena';
	@override String get withReplies => 'Zahrnout odpovědi';
	@override String get connectedTo => 'Následující účty jsou připojeny';
	@override String get notesAndReplies => 'Poznámky a odpovědi';
	@override String get withFiles => 'Včetně souborů';
	@override String get silence => 'Ztlumení';
	@override String get silenceConfirm => 'Jste si jistí že chcete ztlumit tohoto uživatele?';
	@override String get unsilence => 'Zrušit ztlumení';
	@override String get unsilenceConfirm => 'Jste jistí že chcete vrátit zltumení tohoto uživatele?';
	@override String get popularUsers => 'Populární uživatelé';
	@override String get recentlyUpdatedUsers => 'Nedávno aktívni uživatelé';
	@override String get recentlyRegisteredUsers => 'Nově připojený uživatelé';
	@override String get recentlyDiscoveredUsers => 'Nově objevený uživatelé';
	@override String exploreUsersCount({required Object count}) => 'Existuje ${count} uživatelů';
	@override String get exploreFediverse => 'Objevovat Fediverse';
	@override String get popularTags => 'Populární tagy';
	@override String get userList => 'Seznamy';
	@override String get about => 'Informace';
	@override String get aboutMisskey => 'O Misskey';
	@override String get administrator => 'Administrátor';
	@override String get token => 'Token';
	@override String get x2fa => 'Dvoufázové ověření';
	@override String get totp => 'Ověřovací aplikace';
	@override String get totpDescription => 'Použít ověřovací aplikaci pro použití jednorázových hesel';
	@override String get moderator => 'Moderátor';
	@override String get moderation => 'Moderování';
	@override String nUsersMentioned({required Object n}) => '${n} uživatelů zmínilo';
	@override String get securityKeyAndPasskey => 'Bezpečnostní klíče a tokeny';
	@override String get securityKey => 'Bezpečnostní klíč';
	@override String get lastUsed => 'Naposledy použito';
	@override String lastUsedAt({required Object t}) => 'Naposledy použito: ${t}';
	@override String get unregister => 'Odstranit';
	@override String get passwordLessLogin => 'Přihlášení bez hesla';
	@override String get passwordLessLoginDescription => 'Umožní bez-heslové přihlášení pomocí bezpečnostního klíče či tokenu';
	@override String get resetPassword => 'Resetovat heslo';
	@override String newPasswordIs({required Object password}) => 'Nové heslo je "${password}"';
	@override String get reduceUiAnimation => 'Snížit UI animace';
	@override String get share => 'Sdílet';
	@override String get notFound => 'Nenalezeno';
	@override String get notFoundDescription => 'Nebyla nalezená žádná stránka korespondující se zadanou URL.';
	@override String get uploadFolder => 'Výchozí lokace pro upload';
	@override String get markAsReadAllNotifications => 'Označit všechna oznámení za přečtená';
	@override String get markAsReadAllUnreadNotes => 'Označit všechny příspěvky za přečtené';
	@override String get markAsReadAllTalkMessages => 'Označit všechny zprávy za přečtené';
	@override String get help => 'Nápověda';
	@override String get inputMessageHere => 'Sem zadejte zprávu';
	@override String get close => 'Zavřít';
	@override String get invites => 'Pozvat';
	@override String get members => 'Členové';
	@override String get transfer => 'Převod';
	@override String get title => 'Titulek';
	@override String get text => 'Text';
	@override String get enable => 'Povolit';
	@override String get next => 'Další';
	@override String get retype => 'Zadejte znovu';
	@override String noteOf({required Object user}) => '${user} poznámky';
	@override String get quoteAttached => 'Citace';
	@override String get quoteQuestion => 'Přiložit jako citaci?';
	@override String get noMessagesYet => 'Zatím tu nejsou žádné zprávy';
	@override String get newMessageExists => 'Máte novou zprávu';
	@override String get onlyOneFileCanBeAttached => 'Ke zprávě můžete přiložit jenom jeden soubor';
	@override String get signinRequired => 'Přihlašte se, prosím';
	@override String get invitations => 'Pozvat';
	@override String get invitationCode => 'Kód pozvánky';
	@override String get checking => 'Ověřuji';
	@override String get available => 'K dispozici';
	@override String get unavailable => 'Není k dispozici';
	@override String get usernameInvalidFormat => 'Písmena, čísla a _ jsou povolená.';
	@override String get tooShort => 'Příliš krátké';
	@override String get tooLong => 'Příliš dlouhé';
	@override String get weakPassword => 'Slabé heslo';
	@override String get normalPassword => 'Dobré heslo';
	@override String get strongPassword => 'Silné heslo';
	@override String get passwordMatched => 'Hesla se schodují';
	@override String get passwordNotMatched => 'Hesla se neschodují';
	@override String signinWith({required Object x}) => 'Přihlásit se s ${x}';
	@override String get signinFailed => 'Nelze se přihlásit. Zkontrolujte prosím své uživatelské jméno a heslo.';
	@override String get or => 'Nebo';
	@override String get language => 'Jazyk';
	@override String get uiLanguage => 'Jazyk uživatelského rozhraní';
	@override String aboutX({required Object x}) => 'O ${x}';
	@override String get emojiStyle => 'Styl emoji';
	@override String get native => 'Výchozí';
	@override String get disableDrawer => 'Nepoužívat šuplíkové menu';
	@override String get showNoteActionsOnlyHover => 'Zobrazit akce poznámky jenom při naběhnutí myši';
	@override String get noHistory => 'Žádná historie';
	@override String get signinHistory => 'Historie přihlášení';
	@override String get enableAdvancedMfm => 'Zapnout pokročilé MFM';
	@override String get enableAnimatedMfm => 'Zapnout animované MFM';
	@override String get doing => 'Procesuju...';
	@override String get category => 'Kategorie';
	@override String get tags => 'Štítky';
	@override String get docSource => 'Zdroj tohoto dokumentu';
	@override String get createAccount => 'Vytvořit účet';
	@override String get existingAccount => 'Existující účet';
	@override String get regenerate => 'Obnovit';
	@override String get fontSize => 'Velikost písma';
	@override String get mediaListWithOneImageAppearance => 'Výška seznamu médií s jedním obrázkem';
	@override String limitTo({required Object x}) => 'Omezeno na ${x}';
	@override String get noFollowRequests => 'Nemáte žádné žádosti o sledování';
	@override String get openImageInNewTab => 'Otevřít obrázek v novém panelu';
	@override String get dashboard => 'Přehled';
	@override String get local => 'Lokální';
	@override String get remote => 'Vzdálené';
	@override String get total => 'Celkem';
	@override String get weekOverWeekChanges => 'Týdně';
	@override String get dayOverDayChanges => 'Denně';
	@override String get appearance => 'Vzhled';
	@override String get clientSettings => 'Nastavení klienta';
	@override String get accountSettings => 'Nastavení účtu';
	@override String get promotion => 'Propagace';
	@override String get promote => 'Propagovat';
	@override String get numberOfDays => 'Počet dní';
	@override String get hideThisNote => 'Skrýt tuto poznámku';
	@override String get showFeaturedNotesInTimeline => 'Zobrazit významné poznámky v časové ose';
	@override String get objectStorage => 'Úložiště objektů';
	@override String get useObjectStorage => 'Použít úložiště objektů';
	@override String get objectStorageBaseUrl => 'Base URL';
	@override String get objectStorageBaseUrlDesc => 'URL použitá jako reference. Upřesněte URL vlastní CDN nebo Proxy pokud používáte jeden z nich. Pro S3 použijte \'https://<bucket>.s3.amazonaws.com\' a pro GCS nebo ekvivalentní služby použijte \'https://storage.googleapis.com/<bucket>\', apd.';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => 'Prosím upřesněte název bucketu používaný poskytovatelem.';
	@override String get objectStoragePrefix => 'Předpona';
	@override String get objectStoragePrefixDesc => 'Soubory budou ukládány pod složkama s tímhle prefixem.';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageEndpointDesc => 'Ponechte tohle prázdné pokud používáte AWS S3, jinak upřesněte endpoint jako "<host>" nebo "<host>:<port>", podle toho jakou službu používáte.';
	@override String get objectStorageRegion => 'Región';
	@override String get objectStorageRegionDesc => 'Upřesněte region jako například "xx-east-1". Pokud vlastní služba nerozlišuje mezi regiony, zadejte "us-east-1". Zanechte prázdné pokud používáte AWS konfiguraci či proměnné veličiny.';
	@override String get objectStorageUseSSL => 'Použít SSL';
	@override String get objectStorageUseSSLDesc => 'Vypněte to pokud nebudete používat HTTPS pro API připojení';
	@override String get objectStorageUseProxy => 'Připojení skrze Proxy';
	@override String get objectStorageUseProxyDesc => 'Vypněte to pokud nebudete používat Proxy pro API připojení.';
	@override String get objectStorageSetPublicRead => 'Při nahrátí nastavit na "public-read"';
	@override String get s3ForcePathStyleDesc => 'Pokud je povolena funkce s3ForcePathStyle, musí být název Bucketu zahrnut do cesty k adrese URL, nikoli do názvu hostitele adresy URL. Toto nastavení může být nutné povolit při používání služeb, jako je například samostatně hostovaná instance Minio.';
	@override String get serverLogs => 'Logy serveru';
	@override String get deleteAll => 'Smazat vše';
	@override String get showFixedPostForm => 'Zobrazit formulář pro nové příspěvky nad časovou osou';
	@override String get showFixedPostFormInChannel => 'Zobrazit vkládací formulář na vrcholu časové osy (Kanály)';
	@override String get newNoteRecived => 'Jsou k dispozici nové poznámky';
	@override String get sounds => 'Zvuky';
	@override String get sound => 'Zvuky';
	@override String get listen => 'Poslouchat';
	@override String get none => 'Žádný';
	@override String get showInPage => 'Zobrazit na stránce';
	@override String get popout => 'Pop-out';
	@override String get volume => 'Hlasitost';
	@override String get masterVolume => 'Celková hlasitost';
	@override String get details => 'Detaily';
	@override String get chooseEmoji => 'Vybrat emotikon';
	@override String get unableToProcess => 'Operace nebyla dokončena.';
	@override String get recentUsed => 'Naposledy použité';
	@override String get install => 'Nainstalovat';
	@override String get uninstall => 'Odinstalovat';
	@override String get installedApps => 'Autorizované aplikace';
	@override String get nothing => 'Nic nebylo nalezeno';
	@override String get installedDate => 'Datum autorizace';
	@override String get lastUsedDate => 'Poslední použití';
	@override String get state => 'Stav';
	@override String get sort => 'Seřadit';
	@override String get ascendingOrder => 'Vzestupně';
	@override String get descendingOrder => 'Sestupně';
	@override String get scratchpad => 'Zápisník';
	@override String get scratchpadDescription => 'Scratchpad poskytuje rozhraní pro AiScript experimenty. Můžete psát, spustit či zkontrolovat výsledky jeho interakce s Misskey.';
	@override String get output => 'Výstup';
	@override String get script => 'Skript';
	@override String get disablePagesScript => 'Vypnout AiScript na stránkách';
	@override String get updateRemoteUser => 'Aktualizovat informace o vzdáleném účtu';
	@override String get deleteAllFiles => 'Smazat všechny soubory';
	@override String get deleteAllFilesConfirm => 'Jste si jistí že chcete smazat všechny soubory?';
	@override String get removeAllFollowing => 'Přestat sledovat všechny sledované uživatele';
	@override String removeAllFollowingDescription({required Object host}) => 'Spuštěním přestanete sledovat všechny účty z ${host}. Prosíme spustěte tohle v případě že instance už neexistuje. ';
	@override String get userSuspended => 'Tomuto uživateli byl pozastaven účet.';
	@override String get userSilenced => 'Tenhle uživatel je umlčen.';
	@override String get yourAccountSuspendedTitle => 'Tenhle účet je zmrazený';
	@override String get yourAccountSuspendedDescription => 'Tenhle účet byl zmrazen z důvodu porušení smluvní podmínky serveru. Pro přesnější informace kontaktujte administrátora. Prosíme nezakládejte si nový účet.';
	@override String get tokenRevoked => 'Nesprávný token';
	@override String get tokenRevokedDescription => 'Tenhle token vyprchal. Prosíme přihlašte se znova.';
	@override String get accountDeleted => 'Účet smazán';
	@override String get accountDeletedDescription => 'Tenhle účet byl smazán.';
	@override String get menu => 'Menu';
	@override String get divider => 'Dělící čára';
	@override String get addItem => 'Přidat položku';
	@override String get rearrange => 'Přeřadit';
	@override String get relays => 'Relay';
	@override String get addRelay => 'Přidat Relay';
	@override String get inboxUrl => 'Inbox URL';
	@override String get addedRelays => 'Přidané přenosy';
	@override String get serviceworkerInfo => 'Musí být zapnut pro push notifikace.';
	@override String get deletedNote => 'Odstraněné příspěvky';
	@override String get invisibleNote => 'Skryté příspěvky';
	@override String get enableInfiniteScroll => 'Automaticky načítat více';
	@override String get visibility => 'Viditelnost';
	@override String get poll => 'Anketa';
	@override String get useCw => 'Schovat obsah';
	@override String get enablePlayer => 'Otevřít video přehrávač';
	@override String get disablePlayer => 'Zavřít video přehrávač';
	@override String get expandTweet => 'Rozbalit tweet';
	@override String get themeEditor => 'Editor témat';
	@override String get description => 'Popis';
	@override String get describeFile => 'Přidat popisek';
	@override String get enterFileDescription => 'Vložit popisek';
	@override String get author => 'Autor';
	@override String get leaveConfirm => 'Máte neuložené změny. Opravdu je chcete zahodit?';
	@override String get manage => 'Administrace';
	@override String get plugins => 'Pluginy';
	@override String get preferencesBackups => 'Zálohy nastavení';
	@override String get deck => 'Deck';
	@override String get undeck => 'Opustit Deck';
	@override String get useBlurEffectForModal => 'Použít efekt rozostření na okna';
	@override String get useFullReactionPicker => 'Používat plnou velikost výběru emoji';
	@override String get width => 'Šířka';
	@override String get height => 'Výška';
	@override String get large => 'Velké';
	@override String get medium => 'Střední';
	@override String get small => 'Malé';
	@override String get generateAccessToken => 'Vygenerovat přístupový token';
	@override String get permission => 'Oprávnění';
	@override String get enableAll => 'Povolit vše';
	@override String get disableAll => 'Vypnout vše';
	@override String get tokenRequested => 'Povolit přístup k účtu';
	@override String get pluginTokenRequestedDescription => 'Tenhle plugin bude moct používat oprávnění nastavená zde.';
	@override String get notificationType => 'Typy oznámení';
	@override String get edit => 'Upravit';
	@override String get emailServer => 'Mailový server';
	@override String get enableEmail => 'Zapnout email dystribuci';
	@override String get emailConfigInfo => 'Používá se na ověření emailové adresy během registrace nebo při zapomenutí hesla.';
	@override String get email => 'Email';
	@override String get emailAddress => 'Emailová adresa';
	@override String get smtpConfig => 'Konfigurace SMTP serveru';
	@override String get smtpHost => 'Hostitel';
	@override String get smtpPort => 'Port';
	@override String get smtpUser => 'Uživatelské jméno';
	@override String get smtpPass => 'Heslo';
	@override String get emptyToDisableSmtpAuth => 'Zanechte uživatelské jméno a heslo prázdné pro vypnutí SMTP verifikace.';
	@override String get smtpSecure => 'Použít implicitní SSL/TLS pro SMTP připojení';
	@override String get smtpSecureInfo => 'Toto vypněte pokud používáte STARTTLS';
	@override String get testEmail => 'Otestovat doručení emailů';
	@override String get wordMute => 'Ztlumené slova';
	@override String get regexpError => 'Chyba v regulérním výrazu';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'Došlo k chybě v regulérním výrazu v řádku ${line} tabulky ${tab} ztlumených slov:';
	@override String get instanceMute => 'Ztlumené instance';
	@override String userSaysSomething({required Object name}) => '${name} řekl/a něco';
	@override String get makeActive => 'Aktivovat';
	@override String get display => 'Zobrazit';
	@override String get copy => 'Kopírovat';
	@override String get metrics => 'Metriky';
	@override String get overview => 'Shrnutí';
	@override String get logs => 'Logy';
	@override String get delayed => 'Prodleva';
	@override String get database => 'Databáze';
	@override String get channel => 'Kanály';
	@override String get create => 'Vytvořit';
	@override String get notificationSetting => 'Nastavení oznámení';
	@override String get notificationSettingDesc => 'Vyberte typy oznámení k zobrazení.';
	@override String get useGlobalSetting => 'Použít globální nastavení';
	@override String get useGlobalSettingDesc => 'Pokud je to zapnuté, tak nastavení oznámení účtu bude použito. Pokud je to vypnuté, tak se bude moct použít jednotlivá nastavení.';
	@override String get other => 'Ostatní';
	@override String get regenerateLoginToken => 'Přegenerovat přihlašovací token';
	@override String get regenerateLoginTokenDescription => 'Přegeneruje token interně používaný během přihlášení. Běžně tahle akce není nutná. Pokud bude token přegenerovaný, tak se všechna přihlášená zařízení odhlásí.';
	@override String get setMultipleBySeparatingWithSpace => 'Oddělení více položek mezerami.';
	@override String get fileIdOrUrl => 'ID nebo URL souboru';
	@override String get behavior => 'Chování';
	@override String get sample => 'Ukázka';
	@override String get abuseReports => 'Nahlášení';
	@override String get reportAbuse => 'Nahlášení';
	@override String reportAbuseOf({required Object name}) => 'Nahlásit ${name}';
	@override String get fillAbuseReportDescription => 'Prosíme vyplňte všechny detaily ohledně tohodle nahlášení. Pokud jde o specifickou poznámku, prosíme o přiložení její URL.';
	@override String get abuseReported => 'Nahlášení bylo odesláno. Děkujeme převelice.';
	@override String get reporter => 'Nahlásil';
	@override String get reporteeOrigin => 'Původ nahlášení';
	@override String get reporterOrigin => 'Původ nahlasovače';
	@override String get forwardReport => 'Přeposlat nahlášení do vzdálené instance';
	@override String get forwardReportIsAnonymous => 'Místo vašeho účtu se ve vzdálené instanci zobrazí anonymní systémový účet jako nahlašovač.';
	@override String get send => 'Odeslat';
	@override String get abuseMarkAsResolved => 'Označit nahlášení jako vyřešené';
	@override String get openInNewTab => 'Otevřít v nové kartě';
	@override String get openInSideView => 'Otevřít v bočním panelu';
	@override String get defaultNavigationBehaviour => 'Výchozí chování navigace';
	@override String get editTheseSettingsMayBreakAccount => 'Uprávou těchto nastavení si můžete poškodit účet.';
	@override String get instanceTicker => 'Informace instance o poznámkách';
	@override String waitingFor({required Object x}) => 'Čeká se na ${x}';
	@override String get random => 'Náhodně';
	@override String get system => 'Systém';
	@override String get switchUi => 'Přepnout UI';
	@override String get desktop => 'Plocha';
	@override String get clip => 'Oříznout';
	@override String get createNew => 'Vytvořit nový';
	@override String get optional => 'Volitelné';
	@override String get createNewClip => 'Vytvořit nový klip';
	@override String get unclip => 'Odepnout';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'Tahle poznámku je už součásti "${name}" klipu. Chcete ji místo toho odepnout z tohodle klipu?';
	@override String get public => 'Veřejný';
	@override String get private => 'Soukromý';
	@override String i18nInfo({required Object link}) => 'Misskey je překládán do jiných jazyků dobrovolníkama. Můžete pomoci na ${link}.';
	@override String get manageAccessTokens => 'Spravovat přístupové tokeny';
	@override String get accountInfo => 'Informace o účtu';
	@override String get notesCount => 'Počet poznámek';
	@override String get repliesCount => 'Počet odeslaných odpovědí';
	@override String get renotesCount => 'Počet přeposlaných poznámek';
	@override String get repliedCount => 'Počet přijatých odpovědí';
	@override String get renotedCount => 'Počet přijatých přeposlaných poznámek';
	@override String get followingCount => 'Počet sledovaných účtů';
	@override String get followersCount => 'Počet sledujících';
	@override String get sentReactionsCount => 'Počet odeslaných reakcí';
	@override String get receivedReactionsCount => 'Počet přijatých reakcí';
	@override String get pollVotesCount => 'Počet odeslaných anketových hlasů';
	@override String get pollVotedCount => 'Počet přijatých anketových hlasů';
	@override String get yes => 'Ano';
	@override String get no => 'Ne';
	@override String get driveFilesCount => 'Počet souborů na disku';
	@override String get driveUsage => 'Využití disku';
	@override String get noCrawle => 'Odmítat indexování crawleru';
	@override String get noCrawleDescription => 'Požádat vyhledávače aby neindexovali váš profil, poznámky, stránky, atd.';
	@override String get lockedAccountInfo => 'Pokud nenastavíte viditelnost poznámek na "Pouze pro sledující", budou poznámky viditelné všem i přesto že vyžadujete manuální potvrzení pro sledování.';
	@override String get alwaysMarkSensitive => 'Výchozně označovat jako citlivý';
	@override String get loadRawImages => 'Načítat originální obrázky místo náhledů';
	@override String get disableShowingAnimatedImages => 'Nepřehrávat animované obrázky';
	@override String get verificationEmailSent => 'Ověřovací email byl zaslán. Ověření dokončíte kliknutím na odkaz v emailu.';
	@override String get notSet => 'Není nastaveno';
	@override String get emailVerified => 'Váš e-mail byl ověřen';
	@override String get noteFavoritesCount => 'Počet oblíbených poznámek';
	@override String get pageLikesCount => 'Počet oblíbených stránek';
	@override String get pageLikedCount => 'Počet přijatých "Libí se mi"';
	@override String get contact => 'Kontakt';
	@override String get useSystemFont => 'Použít výchozí font systému';
	@override String get clips => 'Oříznout';
	@override String get experimentalFeatures => 'Experimentální funkce';
	@override String get experimental => 'Experimentální';
	@override String get thisIsExperimentalFeature => 'Tohle je experimentální funkce. Její funkce se může změnit a nemusí fungovat tak, jak bylo zamýšleno.';
	@override String get developer => 'Vývojář';
	@override String get makeExplorable => 'Udělat účet viditelný v "Objevit"';
	@override String get makeExplorableDescription => 'Pokud tohle vypnete, tak se účet přestane zobrazovat v sekci "Objevit".';
	@override String get showGapBetweenNotesInTimeline => 'Zobrazit mezeru mezi příspěvkama na časové ose';
	@override String get duplicate => 'Duplikovat';
	@override String get left => 'Vlevo';
	@override String get center => 'Uprostřed';
	@override String get wide => 'Široké';
	@override String get narrow => 'Úzké';
	@override String get reloadToApplySetting => 'Tohle nastavení se použije až po obnovení stránky. Obnovit teď?';
	@override String get needReloadToApply => 'K projevení nastavení je zapotřebí obnovit stránku.';
	@override String get showTitlebar => 'Zobrazit řádek s nadpisem';
	@override String get clearCache => 'Vyprázdnit mezipaměť';
	@override String onlineUsersCount({required Object n}) => '${n} uživatelů je online';
	@override String nUsers({required Object n}) => '${n} užívatelů';
	@override String nNotes({required Object n}) => '${n} poznámek';
	@override String get sendErrorReports => 'Odesílat chybové záznamy';
	@override String get sendErrorReportsDescription => 'Pokud je tato funkce zapnutá, budou se při výskytu problému sdílet podrobné informace o chybách se službou Misskey, což pomůže zlepšit kvalitu služby Misskey. Tyto informace budou zahrnovat například verzi operačního systému, jaký prohlížeč používáte, vaši aktivitu v Misskey atd.';
	@override String get myTheme => 'Moje vzhledy';
	@override String get backgroundColor => 'Pozadí';
	@override String get accentColor => 'Akcent';
	@override String get textColor => 'Barva textu';
	@override String get saveAs => 'Uložit jako…';
	@override String get advanced => 'Pokročilé';
	@override String get advancedSettings => 'Pokročilá nastavení';
	@override String get value => 'Hodnota';
	@override String get createdAt => 'Vytvořeno';
	@override String get updatedAt => 'Upraveno';
	@override String get saveConfirm => 'Uložit změny?';
	@override String get deleteConfirm => 'Opravdu smazat?';
	@override String get invalidValue => 'Neplatná hodnota.';
	@override String get registry => 'Registr';
	@override String get closeAccount => 'Uzavřít účet';
	@override String get currentVersion => 'Aktuální verze';
	@override String get latestVersion => 'Nejnovější verze';
	@override String get youAreRunningUpToDateClient => 'Používáte nejnovější verzi klienta.';
	@override String get newVersionOfClientAvailable => 'Nová verze klienta je k dispozici.';
	@override String get usageAmount => 'Využití';
	@override String get capacity => 'Kapacita';
	@override String get inUse => 'Používáno';
	@override String get editCode => 'Upravit kód';
	@override String get apply => 'Potvrdit';
	@override String get receiveAnnouncementFromInstance => 'Dostávat oznámení z téhle instance';
	@override String get emailNotification => 'Emailové oznámení';
	@override String get publish => 'Zveřejnit';
	@override String get inChannelSearch => 'Vyhledat v kanálech';
	@override String get useReactionPickerForContextMenu => 'Otevřít výběr reakce na kliknutí pravého tlačítka myši';
	@override String typingUsers({required Object users}) => '${users} píše...';
	@override String get jumpToSpecifiedDate => 'Skočit do konkrétního datumu';
	@override String get showingPastTimeline => 'Právě je zobrazována stará časová osa';
	@override String get clear => 'Vrátit';
	@override String get markAllAsRead => 'Označit všechno jako přečtené';
	@override String get goBack => 'Zpět';
	@override String get unlikeConfirm => 'Opravdu chcete odstranit like?';
	@override String get fullView => 'Plné zobrazení';
	@override String get quitFullView => 'Odejít z plného zobrazení';
	@override String get addDescription => 'Přidat popis';
	@override String get userPagePinTip => 'Zde můžete zobrazovat poznámky vybráním "Připnout na profil" z menu jednotlivých poznámek.';
	@override String get notSpecifiedMentionWarning => 'Tahle poznámka zmiňuje uživatele, které nejsou mezi adresáty';
	@override String get info => 'Informace';
	@override String get userInfo => 'Informace o uživateli';
	@override String get unknown => 'Neznámý';
	@override String get onlineStatus => 'Online status';
	@override String get hideOnlineStatus => 'Skrýt Váš online status';
	@override String get hideOnlineStatusDescription => 'Skrytí vašeho online stavu může snížit funkcionalitu některých funkcí, například vyhledávání.';
	@override String get online => 'Online';
	@override String get active => 'Aktivní';
	@override String get offline => 'Offline';
	@override String get notRecommended => 'Nedoporučuje se';
	@override String get botProtection => 'Bot ochrana';
	@override String get instanceBlocking => 'Blokované instance';
	@override String get selectAccount => 'Vybrat účet';
	@override String get switchAccount => 'Přepnout účet';
	@override String get enabled => 'Zapnuto';
	@override String get disabled => 'Vypnuto';
	@override String get quickAction => 'Rychlé akce';
	@override String get user => 'Uživatelé';
	@override String get administration => 'Administrace';
	@override String get accounts => 'Účty';
	@override String get switch_ => 'Přepnout';
	@override String get noMaintainerInformationWarning => 'Informace o správci nejsou nastavené';
	@override String get noBotProtectionWarning => 'Ochrana proti botům není nastavena';
	@override String get configure => 'Nastavit';
	@override String get postToGallery => 'Vytvořit nový příspěvek v galerii';
	@override String get postToHashtag => 'Přidat příspěvek k tomuhle hastagu';
	@override String get gallery => 'Galerie';
	@override String get recentPosts => 'Poslední příspěvky';
	@override String get popularPosts => 'Populární příspěvky';
	@override String get shareWithNote => 'Sdílet s poznámkou';
	@override String get ads => 'Reklamy';
	@override String get expiration => 'Ukončit hlasování';
	@override String get startingperiod => 'Začátek';
	@override String get memo => 'Memo';
	@override String get priority => 'Priorita';
	@override String get high => 'Vysoká';
	@override String get middle => 'Střední';
	@override String get low => 'Nízká';
	@override String get emailNotConfiguredWarning => 'E-mailová adresa není nastavena.';
	@override String get ratio => 'Poměr';
	@override String get previewNoteText => 'Zobrazit náhled';
	@override String get customCss => 'Vlastní CSS';
	@override String get customCssWarn => 'Tohle nastavení by mělo být použito pouze v případě pokud víte co děláte. Vložením nesprávných hodnot může způsobit nefunkčnost klienta.';
	@override String get global => 'Globální';
	@override String get squareAvatars => 'Zobrazovat čtvercové avatary';
	@override String get sent => 'Odeslat';
	@override String get received => 'Přijaté';
	@override String get searchResult => 'Výsledky hledání';
	@override String get hashtags => 'Hashtagy';
	@override String get troubleshooting => 'Poradce při potížích';
	@override String get useBlurEffect => 'Použít efekt rozostření v UI';
	@override String get learnMore => 'Zjistit více';
	@override String get misskeyUpdated => 'Misskey byl aktualizován!';
	@override String get whatIsNew => 'Zobrazit změny';
	@override String get translate => 'Přeložit';
	@override String translatedFrom({required Object x}) => 'Přeloženo z ${x}';
	@override String get accountDeletionInProgress => 'Smazání účtu právě probíhá';
	@override String get usernameInfo => 'Jméno které identifikuje váš účet od jiných na tomhle serveru. Můžete použít abecedu (a~z, A~Z), čísla (0~9) nebo podtržítka (_). Uživatelské jména nemůžou být změněna později.';
	@override String get aiChanMode => 'Režim Ai';
	@override String get devMode => 'Vývojářský režim';
	@override String get keepCw => 'Zachovat varování o obsahu';
	@override String get pubSub => 'Pub/Sub účty';
	@override String get lastCommunication => 'Poslední komunikace';
	@override String get resolved => 'Vyřešeno';
	@override String get unresolved => 'Nevyřešené';
	@override String get breakFollow => 'Odstranit sledujícího';
	@override String get breakFollowConfirm => 'Opravdu chcete odstranit tohodle sledujícího?';
	@override String get itsOn => 'Zapnuto';
	@override String get itsOff => 'Vypnuto';
	@override String get on => 'Zapnuto';
	@override String get off => 'Vypnuto';
	@override String get emailRequiredForSignup => 'Vyžadovat email pro registraci';
	@override String get unread => 'Nepřečtený';
	@override String get filter => 'Filtr';
	@override String get controlPanel => 'Ovládací panel';
	@override String get manageAccounts => 'Spravovat účty';
	@override String get makeReactionsPublic => 'Nastavit historii reakcí jako veřejnou';
	@override String get makeReactionsPublicDescription => 'Tohle zviditelný seznam vašich předchozích reakcí veřejně.';
	@override String get classic => 'Klasický';
	@override String get muteThread => 'Ztlumit vlákno';
	@override String get unmuteThread => 'Zrušit ztlumení vlákna';
	@override String get continueThread => 'Zobrazit pokračování vlákna';
	@override String get deleteAccountConfirm => 'Tohle nenávratně smaže váš účet, chcete pokračovat?';
	@override String get incorrectPassword => 'Nesprávné heslo.';
	@override String voteConfirm({required Object choice}) => 'Potvrdit hlas pro "${choice}"?';
	@override String get hide => 'Skrýt';
	@override String get useDrawerReactionPickerForMobile => 'Zobrazit výběr reakcí jako šuplík na mobilním zařízení';
	@override String welcomeBackWithName({required Object name}) => 'Vítejte zpět, ${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => 'Prosíme klikněte na [${ok}] pro dokončení ověření emailu.';
	@override String get overridedDeviceKind => 'Typ zařízení';
	@override String get smartphone => 'Telefon';
	@override String get tablet => 'Tablet';
	@override String get auto => 'Auto';
	@override String get themeColor => 'Barva motivu';
	@override String get size => 'Velikost';
	@override String get numberOfColumn => 'Počet sloupců';
	@override String get searchByGoogle => 'Vyhledávání';
	@override String get instanceDefaultLightTheme => 'Výchozí světlý motiv instance';
	@override String get instanceDefaultDarkTheme => 'Výhozí tmavý motiv instance';
	@override String get instanceDefaultThemeDescription => 'Zadejte kód motivu v objektovém formátu';
	@override String get mutePeriod => 'Délka ztlumení';
	@override String get period => 'Časový limit';
	@override String get indefinitely => 'Navždy';
	@override String get tenMinutes => '10 minut';
	@override String get oneHour => '1 hodina';
	@override String get oneDay => '1 den';
	@override String get oneWeek => '1 týden';
	@override String get oneMonth => '1 měsíc';
	@override String get reflectMayTakeTime => 'Může trvat nějakou dobu, než se projeví změny.';
	@override String get failedToFetchAccountInformation => 'Nepodařily se načíst informace o účtě';
	@override String get rateLimitExceeded => 'Překročení rychlostního limitu';
	@override String get cropImage => 'Oříznout obrázek';
	@override String get cropImageAsk => 'Chcete oříznout tenhle obrázek?';
	@override String get cropYes => 'Uříznout';
	@override String get cropNo => 'Použít tak jak je';
	@override String get file => 'Soubor(ů)';
	@override String recentNHours({required Object n}) => 'Posledních ${n} hodin';
	@override String recentNDays({required Object n}) => 'Posledních ${n} dnů';
	@override String get noEmailServerWarning => 'Emailový server není nastavený';
	@override String get thereIsUnresolvedAbuseReportWarning => 'Jsou k dispozici nevyřešené nahlášení zneužití';
	@override String get recommended => 'Doporučeno';
	@override String get check => 'Zkontrolovat';
	@override String get driveCapOverrideLabel => 'Změnit velikost disku pro tohoto uživatele';
	@override String get driveCapOverrideCaption => 'K vyresetování velikosti na výchozí hodnotu zadejte hodnotu 0 nebo nižší.';
	@override String get requireAdminForView => 'Pro zobrazení se musíte přihlásit administrátorským účtem.';
	@override String get isSystemAccount => 'Účet automaticky vytvořený a ovládaný serverem.';
	@override String typeToConfirm({required Object x}) => 'Prosíme zadejte ${x} pro potvrzení';
	@override String get deleteAccount => 'Odstranit účet';
	@override String get document => 'Dokumentace';
	@override String get numberOfPageCache => 'Počet stránek uložených v mezipaměti';
	@override String get numberOfPageCacheDescription => 'Zvýšením čísla zlepšíte pohodlí pro uživatele ale může to způsobit větší zátěž na server a na paměť.';
	@override String get logoutConfirm => 'Opravdu se chcete odhlásit?';
	@override String get lastActiveDate => 'Naposledy použito';
	@override String get statusbar => 'Stavový řádek';
	@override String get pleaseSelect => 'Vybrat možnost';
	@override String get reverse => 'Otočit';
	@override String get colored => 'Barevné';
	@override String get refreshInterval => 'Interval obnovení';
	@override String get label => 'Popisek';
	@override String get type => 'Typ';
	@override String get speed => 'Rychlost';
	@override String get slow => 'Pomalá';
	@override String get fast => 'Rychlá';
	@override String get sensitiveMediaDetection => 'Detekce citlivého média';
	@override String get localOnly => 'Jenom lokální';
	@override String get remoteOnly => 'Jenom vzdáleně';
	@override String get failedToUpload => 'Nahrání se nezdařilo';
	@override String get cannotUploadBecauseInappropriate => 'Tenhle soubor se nenahrál, protože některé části byly detekovány jako nevhodné.';
	@override String get cannotUploadBecauseNoFreeSpace => 'Nahrání se nezdařilo z důvodu nedostatku místa na disku.';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'Tenhle soubor nemůže být nahráný protože překračuje velikostní limit.';
	@override String get beta => 'Beta verze';
	@override String get enableAutoSensitive => 'Automaticky označovat jako citlivé';
	@override String get enableAutoSensitiveDescription => 'Umožňuje automatickou detekci a označování citlivého média skrze strojového účení všude kde je možno. I pokud je tahle možnost vypnutá, může být povolena instancí.';
	@override String get activeEmailValidationDescription => 'Umožňuje striktní validaci emailové adresy, která zahrnuje kontrolu pro jednorázové adresy a pokud je možno s ní komunikovat. Pokud je to vypnuté, bude se kontrolovat pouze formát emailu.';
	@override String get navbar => 'Navigační panel';
	@override String get shuffle => 'Zamíchat';
	@override String get account => 'Účty';
	@override String get move => 'Přesunout';
	@override String get pushNotification => 'Push oznámení';
	@override String get subscribePushNotification => 'Povolit push oznamení';
	@override String get unsubscribePushNotification => 'Vypnout push oznámení';
	@override String get pushNotificationAlreadySubscribed => 'Push oznámení jsou už zapnuté';
	@override String get pushNotificationNotSupported => 'Tenhle prohlížeč nepodporuje push oznámení';
	@override String get sendPushNotificationReadMessage => 'Odstraněnit oznámení push po jejich přečtení';
	@override String get sendPushNotificationReadMessageCaption => 'Tohle může zvýšit spotřebu energie vašeho zařízení.';
	@override String get windowMaximize => 'Maximalizovat';
	@override String get windowMinimize => 'Minimalizovat';
	@override String get windowRestore => 'Obnovit';
	@override String get caption => 'Titulek';
	@override String get loggedInAsBot => 'Právě jste přihlášen jako bot';
	@override String get tools => 'Nástroje';
	@override String get cannotLoad => 'Načtení se nezdařilo';
	@override String get numberOfProfileView => 'Počet zobrazení profilu';
	@override String get like => 'To se mi líbí';
	@override String get unlike => 'Už se mi to nelíbí';
	@override String get numberOfLikes => 'Počet "To se mi líbí"';
	@override String get show => 'Zobrazit';
	@override String get neverShow => 'Znovu nezobrazovat';
	@override String get remindMeLater => 'Možná později';
	@override String get didYouLikeMisskey => 'Oblíbili jste si Misskey?';
	@override String pleaseDonate({required Object host}) => '${host} používá bezplatný software Misskey. Velmi bychom ocenili vaše dary, aby mohl vývoj Misskey pokračovat!';
	@override String get roles => 'Role';
	@override String get role => 'Role';
	@override String get noRole => 'Role nenalezena';
	@override String get normalUser => 'Normální uživatel';
	@override String get undefined => 'Neurčeno';
	@override String get assign => 'Přiřadit';
	@override String get unassign => 'Zrušit přirazení';
	@override String get color => 'Barva';
	@override String get manageCustomEmojis => 'Spravovat vlastní emoji';
	@override String get youCannotCreateAnymore => 'Narazili jste na limit pro vytváření.';
	@override String get cannotPerformTemporary => 'Dočasně nedostupné';
	@override String get cannotPerformTemporaryDescription => 'Tuto akci nelze dočasně provést z důvodu překročení limitu provedení. Chvíli počkejte a zkuste to znovu.';
	@override String get invalidParamError => 'Neplatné parametry';
	@override String get invalidParamErrorDescription => 'Parametry požadavku jsou neplatné. Obvykle je to způsobeno chybou, ale může to být také způsobeno překročením limitů velikosti vstupů nebo podobně.';
	@override String get permissionDeniedError => 'Operace zamítnuta';
	@override String get permissionDeniedErrorDescription => 'Tento účet nemá oprávnění k provedení této akce.';
	@override String get preset => 'Předvolba';
	@override String get selectFromPresets => 'Vybrat z předvoleb';
	@override String get achievements => 'Úspěchy';
	@override String get gotInvalidResponseError => 'Neplatná odpověď serveru';
	@override String get gotInvalidResponseErrorDescription => 'Server může být nedostupný nebo na něm probíhá údržba. Zkuste to prosím později.';
	@override String get thisPostMayBeAnnoying => 'Tato poznámka může ostatní obtěžovat.';
	@override String get thisPostMayBeAnnoyingHome => 'Zveřejnit na domovskou časovou osu';
	@override String get thisPostMayBeAnnoyingCancel => 'Zrušit';
	@override String get thisPostMayBeAnnoyingIgnore => 'I přesto zveřejnit';
	@override String get collapseRenotes => 'Sbalit poznámky, které jste již viděli';
	@override String get internalServerError => 'Interní chyba serveru';
	@override String get internalServerErrorDescription => 'Server narazil na neočekávanou chybu.';
	@override String get copyErrorInfo => 'Zkopírovat detaily erroru';
	@override String get joinThisServer => 'Zaregistrovat se v této instanci';
	@override String get exploreOtherServers => 'Podívat se na ostatní instance';
	@override String get letsLookAtTimeline => 'Podívejte se na časovou osu';
	@override String get disableFederationConfirm => 'Chcete opravdu vypnout federace?';
	@override String get disableFederationConfirmWarn => 'I v případě defederace budou příspěvky nadále veřejné, pokud nebude nastaveno jinak. Obvykle to není nutné.';
	@override String get disableFederationOk => 'Vypnout';
	@override String get invitationRequiredToRegister => 'Tahle instance je pouze na pozvánku. Musíte zadat validní kód pozvánky.';
	@override String get emailNotSupported => 'Tahle instance nepodporuje zasílání emailů';
	@override String get postToTheChannel => 'Vložit do kanálu';
	@override String get cannotBeChangedLater => 'Tohle nemůže být změněno později.';
	@override String get reactionAcceptance => 'Přijímání reakcí';
	@override String get likeOnly => 'Jenom "oblíbené"';
	@override String get likeOnlyForRemote => 'Všechny (Pouze "oblíbené" pro vzdálenou instanci)';
	@override String get nonSensitiveOnly => 'Pouze bez citlivých medií';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'Pouze bez citlivých medií (Pouze vzdálený "oblíbený")';
	@override String get rolesAssignedToMe => 'Přiřazené role ke mně';
	@override String get resetPasswordConfirm => 'Opravdu chcete resetovat heslo?';
	@override String get sensitiveWords => 'Citlivá slova';
	@override String get sensitiveWordsDescription => 'Viditelnost všech poznámek obsahujících některé z nakonfigurovaných slov bude automaticky nastavena na "Domů". Můžete jich uvést více tak, že je oddělíte pomocí řádků.';
	@override String get sensitiveWordsDescription2 => 'Použití mezer vytvoří výrazy AND a obklopení klíčových slov lomítky je změní na regulární výraz.';
	@override String get prohibitedWordsDescription2 => 'Použití mezer vytvoří výrazy AND a obklopení klíčových slov lomítky je změní na regulární výraz.';
	@override String get notesSearchNotAvailable => 'Vyhledávání poznámek je nedostupné.';
	@override String get license => 'Licence';
	@override String get unfavoriteConfirm => 'Opravdu chcete odstranit z oblíbených?';
	@override String get myClips => 'Moje klipy';
	@override String get drivecleaner => 'Čistič disku';
	@override String get retryAllQueuesNow => 'Obnovit všechny běžící fronty';
	@override String get retryAllQueuesConfirmTitle => 'Opravdu chcete obnovit všechno?';
	@override String get retryAllQueuesConfirmText => 'Tohle dočasně zvýší zatěž na server.';
	@override String get enableChartsForRemoteUser => 'Vygenerovat grafy dat vzdálených uživatelů';
	@override String get enableChartsForFederatedInstances => 'Vygenerovat grafy dat vzdálených instancí';
	@override String get showClipButtonInNoteFooter => 'Přidat "Připnout" do akčního menu poznámky';
	@override String get noteIdOrUrl => 'ID nebo URL poznámky';
	@override String get video => 'Video';
	@override String get videos => 'Videa';
	@override String get dataSaver => 'Spořič dat';
	@override String get accountMigration => 'Migrace účtu';
	@override String get accountMoved => 'Tenhle uživatel se přesunul na nový účet:';
	@override String get accountMovedShort => 'Tenhle účet byl migrován.';
	@override String get operationForbidden => 'Zakázaná operace';
	@override String get forceShowAds => 'Vždycky zobrazovat reklamy';
	@override String get addMemo => 'Přidat memo';
	@override String get editMemo => 'Upravit memo';
	@override String get reactionsList => 'Reakce';
	@override String get renotesList => 'Poznámky';
	@override String get notificationDisplay => 'Oznámení';
	@override String get leftTop => 'Vlevo nahoře';
	@override String get rightTop => 'Vpravo nahoře';
	@override String get leftBottom => 'Vlevo dole';
	@override String get rightBottom => 'Vpravo dole';
	@override String get stackAxis => 'Směr ukládání';
	@override String get vertical => 'Svisle';
	@override String get horizontal => 'Vodorovně';
	@override String get position => 'Pozice';
	@override String get serverRules => 'Pravidla serveru';
	@override String get pleaseConfirmBelowBeforeSignup => 'Abyste se mohli přihlásit na server, musíte souhlasit s následujícím.';
	@override String get pleaseAgreeAllToContinue => 'Musíte souhlasit se vším abyste mohli pokračovat.';
	@override String get continue_ => 'Pokračovat';
	@override String get preservedUsernames => 'Rezervované uživatelské jména';
	@override String get preservedUsernamesDescription => 'Seznam uživatelských jmén na rezervaci oddělené mezerama. Tyhle jména se potom nebudou moc použít při normálním procesu vytvoření účtu ale můžou být použiti manuálně administratorém. Existujících účtů se to nedotkne.';
	@override String get createNoteFromTheFile => 'Vytvořit poznámku z tohodle souboru';
	@override String get archive => 'Archiv';
	@override String channelArchiveConfirmTitle({required Object name}) => 'Opravdu chcete archivovat ${name}?';
	@override String get channelArchiveConfirmDescription => 'Archivovaný kanál se objeví v seznamu kanálů nebo ve výsledcích hledání. Nové poznámky se nedají vložit do seznamu.';
	@override String get thisChannelArchived => 'Tenhle kanál je archivovaný';
	@override String get displayOfNote => 'Zobrazit poznámku';
	@override String get initialAccountSetting => 'Nastavení profilu';
	@override String get youFollowing => 'Sleduji';
	@override String get preventAiLearning => 'Odmítnout použití v strojovém učení (Generative AI)';
	@override String get preventAiLearningDescription => 'Požaduje, aby prohlížeče nepoužívaly zveřejněný textový nebo obrazový materiál atd. v datových sadách pro strojové učení (prediktivní / generativní umělá inteligence). Toho se dosáhne přidáním příznaku "noai" HTML-Response k příslušnému obsahu. Úplné prevence však tímto příznakem nelze dosáhnout, protože může být jednoduše ignorován.';
	@override String get options => 'Možnosti';
	@override String get specifyUser => 'Upřesnit uživatele';
	@override String get failedToPreviewUrl => 'Náhled se nezdařil';
	@override String get update => 'Aktualizovat';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'Role, které můžou tuhle emoji použít jako reakci';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'Pokud nejsou určena role, tak pak každý může použít tenhle emoji.';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'Role musí být veřejné.';
	@override String get cancelReactionConfirm => 'Opravdu chcete odstranit vaší reakci?';
	@override String get changeReactionConfirm => 'Opravdu chcete změnit vaši reakci?';
	@override String get later => 'Později';
	@override String get goToMisskey => 'Jít na Misskey';
	@override String get additionalEmojiDictionary => 'Další slovníky emoji';
	@override String get installed => 'Nainstalováno';
	@override String get branding => 'Značka';
	@override String get enableServerMachineStats => 'Zveřejněnit statistiky hardwaru serveru';
	@override String get enableIdenticonGeneration => 'Povolit generování identicon uživatele';
	@override String get turnOffToImprovePerformance => 'Vypnutí této funkce může zvýšit výkon.';
	@override String get createInviteCode => 'Vygenerovat pozvánku';
	@override String get createWithOptions => 'Vygenerovat s nastavením';
	@override String get createCount => 'Počet vytvořených pozvánek';
	@override String get inviteCodeCreated => 'Pozvánka vygenerována';
	@override String get inviteLimitExceeded => 'Překročili jste limit pozvánek, které můžete vygenerovat.';
	@override String createLimitRemaining({required Object limit}) => 'Limit pozvánek: ${limit} zbývá';
	@override String inviteLimitResetCycle({required Object limit, required Object time}) => 'Tento limit se obnoví na hodnotu ${limit} v ${time}.';
	@override String get expirationDate => 'Datum expirace';
	@override String get noExpirationDate => 'Bez expirace';
	@override String get inviteCodeUsedAt => 'Kód pozvánky použitý na';
	@override String get registeredUserUsingInviteCode => 'Pozvánku používá';
	@override String get waitingForMailAuth => 'Čeká se na ověření emailu';
	@override String get inviteCodeCreator => 'Pozvánku vytvořil';
	@override String get usedAt => 'Používá se v';
	@override String get unused => 'Nepoužívaná';
	@override String get used => 'Používaná';
	@override String get expired => 'Prošlá';
	@override String get doYouAgree => 'Souhlasíte?';
	@override String get beSureToReadThisAsItIsImportant => 'Přečtěte si prosím tyto důležité informace.';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => 'Přečetl jsem si text "${x}" a souhlasím s ním.';
	@override String get icon => 'Avatar';
	@override String get replies => 'Odpovědět';
	@override String get renotes => 'Přeposlat';
	@override String get sourceCode => 'Zdrojový kód';
	@override String get flip => 'Otočit';
	@override String lastNDays({required Object n}) => 'Posledních ${n} dnů';
	@override String get surrender => 'Zrušit';
	@override late final _StringsMisskeyInitialAccountSettingCsCz initialAccountSetting_ = _StringsMisskeyInitialAccountSettingCsCz._(_root);
	@override late final _StringsMisskeyServerRulesCsCz serverRules_ = _StringsMisskeyServerRulesCsCz._(_root);
	@override late final _StringsMisskeyServerSettingsCsCz serverSettings_ = _StringsMisskeyServerSettingsCsCz._(_root);
	@override late final _StringsMisskeyAccountMigrationCsCz accountMigration_ = _StringsMisskeyAccountMigrationCsCz._(_root);
	@override late final _StringsMisskeyAchievementsCsCz achievements_ = _StringsMisskeyAchievementsCsCz._(_root);
	@override late final _StringsMisskeyRoleCsCz role_ = _StringsMisskeyRoleCsCz._(_root);
	@override late final _StringsMisskeySensitiveMediaDetectionCsCz sensitiveMediaDetection_ = _StringsMisskeySensitiveMediaDetectionCsCz._(_root);
	@override late final _StringsMisskeyEmailUnavailableCsCz emailUnavailable_ = _StringsMisskeyEmailUnavailableCsCz._(_root);
	@override late final _StringsMisskeyFfVisibilityCsCz ffVisibility_ = _StringsMisskeyFfVisibilityCsCz._(_root);
	@override late final _StringsMisskeySignupCsCz signup_ = _StringsMisskeySignupCsCz._(_root);
	@override late final _StringsMisskeyAccountDeleteCsCz accountDelete_ = _StringsMisskeyAccountDeleteCsCz._(_root);
	@override late final _StringsMisskeyAdCsCz ad_ = _StringsMisskeyAdCsCz._(_root);
	@override late final _StringsMisskeyForgotPasswordCsCz forgotPassword_ = _StringsMisskeyForgotPasswordCsCz._(_root);
	@override late final _StringsMisskeyGalleryCsCz gallery_ = _StringsMisskeyGalleryCsCz._(_root);
	@override late final _StringsMisskeyEmailCsCz email_ = _StringsMisskeyEmailCsCz._(_root);
	@override late final _StringsMisskeyPluginCsCz plugin_ = _StringsMisskeyPluginCsCz._(_root);
	@override late final _StringsMisskeyPreferencesBackupsCsCz preferencesBackups_ = _StringsMisskeyPreferencesBackupsCsCz._(_root);
	@override late final _StringsMisskeyRegistryCsCz registry_ = _StringsMisskeyRegistryCsCz._(_root);
	@override late final _StringsMisskeyAboutMisskeyCsCz aboutMisskey_ = _StringsMisskeyAboutMisskeyCsCz._(_root);
	@override late final _StringsMisskeyDisplayOfSensitiveMediaCsCz displayOfSensitiveMedia_ = _StringsMisskeyDisplayOfSensitiveMediaCsCz._(_root);
	@override late final _StringsMisskeyInstanceTickerCsCz instanceTicker_ = _StringsMisskeyInstanceTickerCsCz._(_root);
	@override late final _StringsMisskeyServerDisconnectedBehaviorCsCz serverDisconnectedBehavior_ = _StringsMisskeyServerDisconnectedBehaviorCsCz._(_root);
	@override late final _StringsMisskeyChannelCsCz channel_ = _StringsMisskeyChannelCsCz._(_root);
	@override late final _StringsMisskeyMenuDisplayCsCz menuDisplay_ = _StringsMisskeyMenuDisplayCsCz._(_root);
	@override late final _StringsMisskeyWordMuteCsCz wordMute_ = _StringsMisskeyWordMuteCsCz._(_root);
	@override late final _StringsMisskeyInstanceMuteCsCz instanceMute_ = _StringsMisskeyInstanceMuteCsCz._(_root);
	@override late final _StringsMisskeyThemeCsCz theme_ = _StringsMisskeyThemeCsCz._(_root);
	@override late final _StringsMisskeySfxCsCz sfx_ = _StringsMisskeySfxCsCz._(_root);
	@override late final _StringsMisskeyAgoCsCz ago_ = _StringsMisskeyAgoCsCz._(_root);
	@override late final _StringsMisskeyTimeCsCz time_ = _StringsMisskeyTimeCsCz._(_root);
	@override late final _StringsMisskeyX2faCsCz x2fa_ = _StringsMisskeyX2faCsCz._(_root);
	@override late final _StringsMisskeyPermissionsCsCz permissions_ = _StringsMisskeyPermissionsCsCz._(_root);
	@override late final _StringsMisskeyAuthCsCz auth_ = _StringsMisskeyAuthCsCz._(_root);
	@override late final _StringsMisskeyAntennaSourcesCsCz antennaSources_ = _StringsMisskeyAntennaSourcesCsCz._(_root);
	@override late final _StringsMisskeyWeekdayCsCz weekday_ = _StringsMisskeyWeekdayCsCz._(_root);
	@override late final _StringsMisskeyWidgetsCsCz widgets_ = _StringsMisskeyWidgetsCsCz._(_root);
	@override late final _StringsMisskeyCwCsCz cw_ = _StringsMisskeyCwCsCz._(_root);
	@override late final _StringsMisskeyPollCsCz poll_ = _StringsMisskeyPollCsCz._(_root);
	@override late final _StringsMisskeyVisibilityCsCz visibility_ = _StringsMisskeyVisibilityCsCz._(_root);
	@override late final _StringsMisskeyPostFormCsCz postForm_ = _StringsMisskeyPostFormCsCz._(_root);
	@override late final _StringsMisskeyProfileCsCz profile_ = _StringsMisskeyProfileCsCz._(_root);
	@override late final _StringsMisskeyExportOrImportCsCz exportOrImport_ = _StringsMisskeyExportOrImportCsCz._(_root);
	@override late final _StringsMisskeyChartsCsCz charts_ = _StringsMisskeyChartsCsCz._(_root);
	@override late final _StringsMisskeyInstanceChartsCsCz instanceCharts_ = _StringsMisskeyInstanceChartsCsCz._(_root);
	@override late final _StringsMisskeyTimelinesCsCz timelines_ = _StringsMisskeyTimelinesCsCz._(_root);
	@override late final _StringsMisskeyPlayCsCz play_ = _StringsMisskeyPlayCsCz._(_root);
	@override late final _StringsMisskeyPagesCsCz pages_ = _StringsMisskeyPagesCsCz._(_root);
	@override late final _StringsMisskeyRelayStatusCsCz relayStatus_ = _StringsMisskeyRelayStatusCsCz._(_root);
	@override late final _StringsMisskeyNotificationCsCz notification_ = _StringsMisskeyNotificationCsCz._(_root);
	@override late final _StringsMisskeyDeckCsCz deck_ = _StringsMisskeyDeckCsCz._(_root);
	@override late final _StringsMisskeyDialogCsCz dialog_ = _StringsMisskeyDialogCsCz._(_root);
	@override late final _StringsMisskeyDisabledTimelineCsCz disabledTimeline_ = _StringsMisskeyDisabledTimelineCsCz._(_root);
	@override late final _StringsMisskeyDrivecleanerCsCz drivecleaner_ = _StringsMisskeyDrivecleanerCsCz._(_root);
	@override late final _StringsMisskeyWebhookSettingsCsCz webhookSettings_ = _StringsMisskeyWebhookSettingsCsCz._(_root);
	@override late final _StringsMisskeyModerationLogTypesCsCz moderationLogTypes_ = _StringsMisskeyModerationLogTypesCsCz._(_root);
	@override late final _StringsMisskeyReversiCsCz reversi_ = _StringsMisskeyReversiCsCz._(_root);
}

// Path: misskey.initialAccountSetting_
class _StringsMisskeyInitialAccountSettingCsCz extends _StringsMisskeyInitialAccountSettingEnUs {
	_StringsMisskeyInitialAccountSettingCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => 'Váš účet byl úspěšně vytvořen!';
	@override String get letsStartAccountSetup => 'Pro začátek si nastavte svůj profil.';
	@override String get letsFillYourProfile => 'Nejprve si nastavte svůj profil.';
	@override String get profileSetting => 'Nastavení profilu';
	@override String get privacySetting => 'Nastavení soukromí';
	@override String get theseSettingsCanEditLater => 'Tato nastavení můžete vždy později změnit.';
	@override String get youCanEditMoreSettingsInSettingsPageLater => 'Na stránce "Nastavení" můžete nakonfigurovat mnoho dalších nastavení. Nezapomeňte ji navštívit později.';
	@override String get followUsers => 'Zkuste sledovat některé uživatele, kteří vás zajímají pro vystavění časový osy.';
	@override String pushNotificationDescription({required Object name}) => 'Povolení push oznámení vám umožní přijímat oznámení od ${name} přímo ve vašem zařízení.';
	@override String get initialAccountSettingCompleted => 'Nastavení profilu dokončeno!';
	@override String haveFun({required Object name}) => 'Užívejte ${name}!';
	@override String get skipAreYouSure => 'Opravdu chcete přeskočit nastavení profilu?';
	@override String get laterAreYouSure => 'Opravdu chcete provést nastavení profilu později?';
}

// Path: misskey.serverRules_
class _StringsMisskeyServerRulesCsCz extends _StringsMisskeyServerRulesEnUs {
	_StringsMisskeyServerRulesCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get description => 'Soubor pravidel, která se zobrazí před registrací. Doporučuje se nastavit shrnutí podmínek služby.';
}

// Path: misskey.serverSettings_
class _StringsMisskeyServerSettingsCsCz extends _StringsMisskeyServerSettingsEnUs {
	_StringsMisskeyServerSettingsCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get iconUrl => 'URL ikony';
}

// Path: misskey.accountMigration_
class _StringsMisskeyAccountMigrationCsCz extends _StringsMisskeyAccountMigrationEnUs {
	_StringsMisskeyAccountMigrationCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => 'Migrace jiného účtu na tento účet';
	@override String get moveFromSub => 'Vytvořit alias na jiný účet';
	@override String moveFromLabel({required Object n}) => 'Původní účet #${n}';
	@override String get moveFromDescription => 'Pro účet, ze kterého se chcete přesunout, musíte vytvořit alias na tomto účtu.\nZadejte účet, ze kterého chcete přejít, v následujícím formátu: @username@server.example.com\nChcete-li alias odstranit, ponechte pole prázdné (nedoporučuje se).';
	@override String get moveTo => 'Přesunout tenhle účet do jiného';
	@override String get moveToLabel => 'Cílový účet pro přesunutí:';
	@override String get moveCannotBeUndone => 'Migrace účtu nemůže být vrácena.';
	@override String get moveAccountDescription => 'Tím dojde k migraci vašeho účtu na jiný účet.\n　・Sledovatelé z tohoto účtu budou automaticky převedeni na nový účet.\n　・Tento účet zruší sledování všech uživatelů, které aktuálně sleduje.\n　・Na tomto účtu nebude možné vytvářet nové poznámky atd.\n\nZatímco migrace sledovaných uživatelů probíhá automaticky, pro migraci seznamu sledovaných uživatelů je nutné připravit některé kroky ručně. Za tímto účelem proveďte export sledovaných, který později naimportujete na nový účet v nabídce nastavení. Stejný postup platí pro seznamy i pro ztlumené a zablokované uživatele.\n\n(Tento výklad platí pro Misskey v13.12.0 a novější. Jiný software ActivityPub, například Mastodon, může fungovat jinak.)';
	@override String get moveAccountHowTo => 'Chcete-li migrovat, vytvořte nejprve alias tohoto účtu na účtu, na který chcete přejít.\nPo vytvoření aliasu zadejte účet, na který chcete přejít, v následujícím formátu: @username@server.example.com';
	@override String get startMigration => 'Migrovat';
	@override String migrationConfirm({required Object account}) => 'Opravdu chcete migrovat tento účet na ${account}? Jednou zahájený proces nelze zastavit ani vrátit zpět a tento účet již nebudete moci používat v původním stavu.';
	@override String get movedAndCannotBeUndone => '\nTento účet byl převeden.\nMigraci nelze vrátit zpět.';
	@override String get postMigrationNote => 'Tento účet zruší sledování všech účtů, které aktuálně sleduje, 24 hodin po dokončení migrace.\nPočet sledujících i následovníků se poté vynuluje. Aby se zabránilo tomu, že vaši sledující nebudou moci vidět příspěvky tohoto účtu určené pouze pro sledující, budou však tento účet sledovat i nadále.';
	@override String get movedTo => 'Cílový účet pro přesunutí:';
}

// Path: misskey.achievements_
class _StringsMisskeyAchievementsCsCz extends _StringsMisskeyAchievementsEnUs {
	_StringsMisskeyAchievementsCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Odemčeno v';
	@override late final _StringsMisskeyAchievementsTypesCsCz types_ = _StringsMisskeyAchievementsTypesCsCz._(_root);
}

// Path: misskey.role_
class _StringsMisskeyRoleCsCz extends _StringsMisskeyRoleEnUs {
	_StringsMisskeyRoleCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Nová role';
	@override String get edit => 'Upravit roli';
	@override String get name => 'Název role';
	@override String get description => 'Popis role';
	@override String get permission => 'Oprávnění role';
	@override String get descriptionOfPermission => '<b>Moderators</b> může provádět základní operace moderování.\n<b>Administrators</b> může měnit všechna nastavení instance.';
	@override String get assignTarget => 'Přiřadit';
	@override String get descriptionOfAssignTarget => '<b>Manual</b> ručně změnit, kdo je součástí této role a kdo ne.\n<b>Conditional</b> mít uživatelé automaticky přiřazováni a odebíráni z této role na základě podmínky.';
	@override String get manual => 'Dokumentace';
	@override String get conditional => 'Podmíněné';
	@override String get condition => 'Podmínky';
	@override String get isConditionalRole => 'Tato role je podmíněná.';
	@override String get isPublic => 'Veřejná role';
	@override String get descriptionOfIsPublic => 'Tato role se zobrazí v profilech přiřazených uživatelů.';
	@override String get options => 'Nastavení';
	@override String get policies => 'Zásady';
	@override String get baseRole => 'Šablona role';
	@override String get useBaseValue => 'Použít hodnotu šablony role';
	@override String get chooseRoleToAssign => 'Vyberte roli, kterou chcete přiřadit';
	@override String get iconUrl => 'URL ikony';
	@override String get asBadge => 'Zobrazovat jako odznak';
	@override String get descriptionOfAsBadge => 'Ikona této role se zobrazí vedle uživatelského jména uživatelů s touto rolí, pokud je zapnuta.';
	@override String get isExplorable => 'Udělat roli objevitelnou';
	@override String get descriptionOfIsExplorable => 'Časová osa této role a seznam uživatelů s touto rolí budou zveřejněny, pokud jsou povoleny.';
	@override String get displayOrder => 'Pozice';
	@override String get descriptionOfDisplayOrder => 'Čím vyšší číslo, tím vyšší pozice v uživatelském rozhraní.';
	@override String get canEditMembersByModerator => 'Umožnit moderátorům upravovat seznam členů pro tuto roli';
	@override String get descriptionOfCanEditMembersByModerator => 'Po zapnutí této role budou moci moderátoři i administrátoři přiřazovat a odebírat uživatele do této role. Pokud je tato funkce vypnutá, budou moci uživatele přiřazovat pouze správci.';
	@override String get priority => 'Priorita';
	@override late final _StringsMisskeyRolePriorityCsCz priority_ = _StringsMisskeyRolePriorityCsCz._(_root);
	@override late final _StringsMisskeyRoleOptionsCsCz options_ = _StringsMisskeyRoleOptionsCsCz._(_root);
	@override late final _StringsMisskeyRoleConditionCsCz condition_ = _StringsMisskeyRoleConditionCsCz._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _StringsMisskeySensitiveMediaDetectionCsCz extends _StringsMisskeySensitiveMediaDetectionEnUs {
	_StringsMisskeySensitiveMediaDetectionCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get description => 'Snižuje náročnost moderování serveru díky automatickému rozpoznávání citlivých médií pomocí strojového učení. Tím se mírně zvýší zatížení serveru.';
	@override String get sensitivity => 'Detekce citlivosti';
	@override String get sensitivityDescription => 'Snížení citlivosti povede k menšímu počtu chybných detekcí (falešně pozitivních), zatímco její zvýšení povede k menšímu počtu chybných detekcí (falešně negativních).';
	@override String get setSensitiveFlagAutomatically => 'Označit jako citlivé';
	@override String get setSensitiveFlagAutomaticallyDescription => 'Výsledky interní detekce se zachovají, i když je tato možnost vypnutá.';
	@override String get analyzeVideos => 'Povolit analýzy videí';
	@override String get analyzeVideosDescription => 'Kromě obrázků analyzuje i videa. Tím se mírně zvýší zatížení serveru.';
}

// Path: misskey.emailUnavailable_
class _StringsMisskeyEmailUnavailableCsCz extends _StringsMisskeyEmailUnavailableEnUs {
	_StringsMisskeyEmailUnavailableCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get used => 'Tato emailová adresa se již používá';
	@override String get format => 'Formát této emailové adresy je neplatný';
	@override String get disposable => 'Jednorázové emailové adresy se nesmí používat';
	@override String get mx => 'Tento e-mailový server je neplatný';
	@override String get smtp => 'Tento emailový server neodpovídá';
}

// Path: misskey.ffVisibility_
class _StringsMisskeyFfVisibilityCsCz extends _StringsMisskeyFfVisibilityEnUs {
	_StringsMisskeyFfVisibilityCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get public => 'Zveřejnit';
	@override String get followers => 'Viditelné pouze pro sledující';
	@override String get private => 'Soukromý';
}

// Path: misskey.signup_
class _StringsMisskeySignupCsCz extends _StringsMisskeySignupEnUs {
	_StringsMisskeySignupCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Už to skoro je';
	@override String get emailAddressInfo => 'Zadejte prosím svou emailovou adresu. Nebude zveřejněna.';
	@override String emailSent({required Object email}) => 'Na vaši e-mailovou adresu (${email}) byl odeslán potvrzovací e-mail. Kliknutím na přiložený odkaz dokončete vytvoření účtu.';
}

// Path: misskey.accountDelete_
class _StringsMisskeyAccountDeleteCsCz extends _StringsMisskeyAccountDeleteEnUs {
	_StringsMisskeyAccountDeleteCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Smazat účet';
	@override String get mayTakeTime => 'Vzhledem k tomu, že odstranění účtu je proces náročný na zdroje, může jeho dokončení trvat určitou dobu v závislosti na tom, kolik obsahu jste vytvořili a kolik souborů jste nahráli.';
	@override String get sendEmail => 'Po dokončení odstranění účtu bude na emailovou adresu registrovanou k tomuto účtu zaslán email.';
	@override String get requestAccountDelete => 'Žádost o smazání účtu';
	@override String get started => 'Bylo zahájeno mazání.';
	@override String get inProgress => 'V současné době probíhá mazání';
}

// Path: misskey.ad_
class _StringsMisskeyAdCsCz extends _StringsMisskeyAdEnUs {
	_StringsMisskeyAdCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get back => 'Zpět';
	@override String get reduceFrequencyOfThisAd => 'Zobrazovat tuto reklamu méně';
	@override String get hide => 'Schovat';
	@override String get timezoneinfo => 'Den v týdnu se určuje podle časového pásma serveru.';
}

// Path: misskey.forgotPassword_
class _StringsMisskeyForgotPasswordCsCz extends _StringsMisskeyForgotPasswordEnUs {
	_StringsMisskeyForgotPasswordCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Zadejte emailovou adresu, kterou jste použili při registraci. Na ni vám pak bude zaslán odkaz, pomocí kterého si můžete obnovit heslo.';
	@override String get ifNoEmail => 'Pokud jste při registraci nepoužili email, obraťte se na správce instance.';
	@override String get contactAdmin => 'Tato instance nepodporuje používání emailových adres, pro obnovení hesla se obraťte na správce instance.';
}

// Path: misskey.gallery_
class _StringsMisskeyGalleryCsCz extends _StringsMisskeyGalleryEnUs {
	_StringsMisskeyGalleryCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get my => 'Moje galerie';
	@override String get liked => 'Oblíbené příspěvky';
	@override String get like => 'To se mi líbí';
	@override String get unlike => 'Už se mi to nelíbí';
}

// Path: misskey.email_
class _StringsMisskeyEmailCsCz extends _StringsMisskeyEmailEnUs {
	_StringsMisskeyEmailCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyEmailFollowCsCz follow_ = _StringsMisskeyEmailFollowCsCz._(_root);
	@override late final _StringsMisskeyEmailReceiveFollowRequestCsCz receiveFollowRequest_ = _StringsMisskeyEmailReceiveFollowRequestCsCz._(_root);
}

// Path: misskey.plugin_
class _StringsMisskeyPluginCsCz extends _StringsMisskeyPluginEnUs {
	_StringsMisskeyPluginCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get install => 'Instalovat plugin';
	@override String get installWarn => 'Neinstalujte nedůvěryhodné pluginy.';
	@override String get manage => 'Správce pluginů';
	@override String get viewSource => 'Zobrazit zdroj';
}

// Path: misskey.preferencesBackups_
class _StringsMisskeyPreferencesBackupsCsCz extends _StringsMisskeyPreferencesBackupsEnUs {
	_StringsMisskeyPreferencesBackupsCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get list => 'Vytvořit backup';
	@override String get saveNew => 'Uložit novou zálohu';
	@override String get loadFile => 'Načíst ze souboru';
	@override String get apply => 'Použít pro toto zařízení';
	@override String get save => 'Uložit změny';
	@override String get inputName => 'Zadejte prosím název pro tuto zálohu';
	@override String get cannotSave => 'Uložení selhalo';
	@override String nameAlreadyExists({required Object name}) => 'Záloha s názvem "${name}" již existuje. Zadejte prosím jiný název.';
	@override String applyConfirm({required Object name}) => 'Opravdu chcete na toto zařízení použít zálohu "${name}"? Stávající nastavení tohoto zařízení bude přepsáno.';
	@override String saveConfirm({required Object name}) => 'Uložit zálohu jako ${name}?';
	@override String deleteConfirm({required Object name}) => 'Odstranit zálohu ${name}?';
	@override String renameConfirm({required Object old, required Object new_}) => 'Přejmenovat tuto zálohu z "${old}" na "${new_}"?';
	@override String get noBackups => 'Neexistují žádné zálohy. Nastavení klienta na tomto serveru můžete zálohovat pomocí "Vytvořit novou zálohu".';
	@override String createdAt({required Object date, required Object time}) => 'Vytvořeno v: ${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => 'Aktualizováno: ${date} ${time}';
	@override String get cannotLoad => 'Načítání selhalo';
	@override String get invalidFile => 'Neplatný typ souboru';
}

// Path: misskey.registry_
class _StringsMisskeyRegistryCsCz extends _StringsMisskeyRegistryEnUs {
	_StringsMisskeyRegistryCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Rozsah';
	@override String get key => 'Klíč';
	@override String get keys => 'Klíče';
	@override String get domain => 'Doména';
	@override String get createKey => 'Vytvořit klíč';
}

// Path: misskey.aboutMisskey_
class _StringsMisskeyAboutMisskeyCsCz extends _StringsMisskeyAboutMisskeyEnUs {
	_StringsMisskeyAboutMisskeyCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey je open-source software vyvíjený syuilo od roku 2014.';
	@override String get contributors => 'Hlavní přispěvatelé';
	@override String get allContributors => 'Všichni přispěvatelé';
	@override String get source => 'Zdrojový kód';
	@override String get translation => 'Přeložit Misskey';
	@override String get donate => 'Přispějte na Misskey';
	@override String get morePatrons => 'Vážíme si také podpory mnoha dalších pomocníků, kteří zde nejsou uvedeni. Děkujeme! 🥰';
	@override String get patrons => 'Patroni';
}

// Path: misskey.displayOfSensitiveMedia_
class _StringsMisskeyDisplayOfSensitiveMediaCsCz extends _StringsMisskeyDisplayOfSensitiveMediaEnUs {
	_StringsMisskeyDisplayOfSensitiveMediaCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get respect => 'Skrýt média označená jako citlivá';
	@override String get ignore => 'Zobrazit média označená jako citlivá';
	@override String get force => 'Skrýt všechna média';
}

// Path: misskey.instanceTicker_
class _StringsMisskeyInstanceTickerCsCz extends _StringsMisskeyInstanceTickerEnUs {
	_StringsMisskeyInstanceTickerCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get none => 'Nikdy nezobrazovat';
	@override String get remote => 'Zobrazit pro vzdálené uživatelé';
	@override String get always => 'Vždy zobrazovat';
}

// Path: misskey.serverDisconnectedBehavior_
class _StringsMisskeyServerDisconnectedBehaviorCsCz extends _StringsMisskeyServerDisconnectedBehaviorEnUs {
	_StringsMisskeyServerDisconnectedBehaviorCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Automatické znovunačtení';
	@override String get dialog => 'Zobrazení dialogového okna s varováním';
	@override String get quiet => 'Zobrazit nerušivé upozornění';
}

// Path: misskey.channel_
class _StringsMisskeyChannelCsCz extends _StringsMisskeyChannelEnUs {
	_StringsMisskeyChannelCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get create => 'Vytvořit kanál';
	@override String get edit => 'Upravit kanál';
	@override String get setBanner => 'Nastavit banner';
	@override String get removeBanner => 'Odstranit banner';
	@override String get featured => 'Trendy';
	@override String get owned => 'Vlastněný';
	@override String get following => 'Sledovaný';
	@override String usersCount({required Object n}) => '${n} Účastníků';
	@override String notesCount({required Object n}) => '${n} Poznámek';
	@override String get nameAndDescription => 'Název a popis';
	@override String get nameOnly => 'Pouze název';
}

// Path: misskey.menuDisplay_
class _StringsMisskeyMenuDisplayCsCz extends _StringsMisskeyMenuDisplayEnUs {
	_StringsMisskeyMenuDisplayCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Postranně';
	@override String get sideIcon => 'Postranně (Ikony)';
	@override String get top => 'Nahoru';
	@override String get hide => 'Skrýt';
}

// Path: misskey.wordMute_
class _StringsMisskeyWordMuteCsCz extends _StringsMisskeyWordMuteEnUs {
	_StringsMisskeyWordMuteCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Ztlumená slova';
	@override String get muteWordsDescription => 'Podmínku AND oddělujte mezerami, podmínku OR oddělujte řádkovými zlomy.';
	@override String get muteWordsDescription2 => 'Chcete-li použít regulární výrazy, obklopte klíčová slova lomítky.';
}

// Path: misskey.instanceMute_
class _StringsMisskeyInstanceMuteCsCz extends _StringsMisskeyInstanceMuteEnUs {
	_StringsMisskeyInstanceMuteCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Tímhle se ztlumí všechny poznámky/poznámky z uvedených instancí, včetně poznámek uživatelů, kteří odpovídají uživateli ze ztlumené instance.';
	@override String get instanceMuteDescription2 => 'Oddělte novými řádky';
	@override String get title => 'Skryje poznámky z uvedených případů.';
	@override String get heading => 'Seznam instancí, které mají být ztlumeny';
}

// Path: misskey.theme_
class _StringsMisskeyThemeCsCz extends _StringsMisskeyThemeEnUs {
	_StringsMisskeyThemeCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get explore => 'Objevit témata';
	@override String get install => 'Nainstalovat vzhled';
	@override String get manage => 'Správa vzhledů';
	@override String get code => 'Kód vzhledu';
	@override String get description => 'Popis';
	@override String installed({required Object name}) => '${name} byl nainstalován';
	@override String get installedThemes => 'Nainstalované vzhledy';
	@override String get builtinThemes => 'Vestavěné temáta';
	@override String get alreadyInstalled => 'Tento vzhled je již nainstalován.';
	@override String get invalid => 'Formát tohoto tématu je neplatný';
	@override String get make => 'Vytvořit téma';
	@override String get base => 'Základ';
	@override String get addConstant => 'Přidat konstantu';
	@override String get constant => 'Konstanta';
	@override String get defaultValue => 'Výchozí hodnota';
	@override String get color => 'Barva';
	@override String get refProp => 'Odkázat na vlastnost';
	@override String get refConst => 'Odkázat na konstantu';
	@override String get key => 'Klíč';
	@override String get func => 'Funkce ';
	@override String get funcKind => 'Typ funkce';
	@override String get argument => 'Argument';
	@override String get basedProp => 'Odkazovaná vlastnost';
	@override String get alpha => 'Průhlednost';
	@override String get darken => 'Ztmavit';
	@override String get lighten => 'Zesvětlit';
	@override String get inputConstantName => 'Zadejte název pro tuto konstantu';
	@override String get importInfo => 'Pokud zde zadáte kód motivu, můžete jej importovat do editoru motivu.';
	@override String deleteConstantConfirm({required Object const_}) => 'Opravdu chcete odstranit konstantu ${const_}?';
	@override late final _StringsMisskeyThemeKeysCsCz keys = _StringsMisskeyThemeKeysCsCz._(_root);
}

// Path: misskey.sfx_
class _StringsMisskeySfxCsCz extends _StringsMisskeySfxEnUs {
	_StringsMisskeySfxCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get note => 'Poznámky';
	@override String get noteMy => 'Moje poznámka';
	@override String get notification => 'Oznámení';
	@override String get antenna => 'Antény';
	@override String get channel => 'Oznámení kanálu';
}

// Path: misskey.ago_
class _StringsMisskeyAgoCsCz extends _StringsMisskeyAgoEnUs {
	_StringsMisskeyAgoCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get future => 'Budoucí';
	@override String get justNow => 'Teď';
	@override String secondsAgo({required Object n}) => 'Před ${n}s';
	@override String minutesAgo({required Object n}) => 'Před ${n}min';
	@override String hoursAgo({required Object n}) => 'Před ${n}h';
	@override String daysAgo({required Object n}) => 'Před ${n}d';
	@override String weeksAgo({required Object n}) => 'Před ${n}t';
	@override String monthsAgo({required Object n}) => 'Před ${n}m';
	@override String yearsAgo({required Object n}) => 'Před ${n}r';
	@override String get invalid => 'Nic nebylo nalezeno';
}

// Path: misskey.time_
class _StringsMisskeyTimeCsCz extends _StringsMisskeyTimeEnUs {
	_StringsMisskeyTimeCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get second => 'Sekund';
	@override String get minute => 'Minut';
	@override String get hour => 'Hodin';
	@override String get day => 'Dnů';
}

// Path: misskey.x2fa_
class _StringsMisskeyX2faCsCz extends _StringsMisskeyX2faEnUs {
	_StringsMisskeyX2faCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'Již jste zaregistrovali dvoufaktorové ověřovací zařízení.';
	@override String get registerTOTP => 'Registrovat aplikaci autentizátoru';
	@override String step1({required Object a, required Object b}) => 'Nejprve si do zařízení nainstalujte aplikaci pro ověřování (například ${a} nebo ${b}).';
	@override String get step2 => 'Poté naskenujte QR kód zobrazený na této obrazovce.';
	@override String get step2Click => 'Kliknutím na tento QR kód můžete zaregistrovat 2FA do bezpečnostního klíče nebo aplikace autentizace telefonu.';
	@override String get step3Title => 'Zadejte ověřovací kód';
	@override String get step3 => 'Pro dokončení nastavení zadejte token poskytnutý vaší aplikací.';
	@override String get step4 => 'Od této chvíle budou všechny budoucí pokusy o přihlášení vyžadovat tento přihlašovací token.';
	@override String get securityKeyNotSupported => 'Váš prohlížeč nepodporuje bezpečnostní klíče.';
	@override String get registerTOTPBeforeKey => 'Nastavte aplikaci autentizátoru pro registraci bezpečnostního nebo přístupového klíče.';
	@override String get securityKeyInfo => 'Kromě ověřování otiskem prstu nebo PIN můžete nastavit také ověřování pomocí hardwarových bezpečnostních klíčů, které podporují FIDO2, a svůj účet tak dále zabezpečit.';
	@override String get registerSecurityKey => 'Registrace bezpečnostního nebo přístupového klíče';
	@override String get securityKeyName => 'Zadejte název klíče';
	@override String get tapSecurityKey => 'Při registraci bezpečnostního nebo přístupového klíče postupujte podle svého prohlížeče.';
	@override String get removeKey => 'Odstranit bezpečnostní klíč';
	@override String removeKeyConfirm({required Object name}) => 'Opravdu chcete odstranit klíč ${name}?';
	@override String get whyTOTPOnlyRenew => 'Aplikaci autentizátoru nelze odstranit, dokud je zaregistrován bezpečnostní klíč.';
	@override String get renewTOTP => 'Překonfigurování aplikace autentizátor';
	@override String get renewTOTPConfirm => 'Tohle způsobí, že ověřovací kódy z předchozí aplikace přestanou fungovat.';
	@override String get renewTOTPOk => 'Přenastavit';
	@override String get renewTOTPCancel => 'Ne děkuji';
}

// Path: misskey.permissions_
class _StringsMisskeyPermissionsCsCz extends _StringsMisskeyPermissionsEnUs {
	_StringsMisskeyPermissionsCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'Zobrazit informace o účtu';
	@override String get writeAccount => 'Upravit informace o účtu';
	@override String get readBlocks => 'Zobrazit seznam blokovaných uživatelů';
	@override String get writeBlocks => 'Upravit seznam blokovaných uživatelů';
	@override String get readDrive => 'Přístup k souborům a složkám na disku';
	@override String get writeDrive => 'Úprava nebo odstranění souborů a složek na disku';
	@override String get readFavorites => 'Zobrazit seznam oblíbených';
	@override String get writeFavorites => 'Upravit seznam oblíbených';
	@override String get readFollowing => 'Zobrazit informace o tom, koho sledujete';
	@override String get writeFollowing => 'Sledování nebo zrušení sledování jiných účtů';
	@override String get readMessaging => 'Zobrazit chat';
	@override String get writeMessaging => 'Sestavit nebo mazat zprávy chatu';
	@override String get readMutes => 'Zobrazit seznam ztlumených uživatelů';
	@override String get writeMutes => 'Upravit seznam ztlumených uživatelů';
	@override String get writeNotes => 'Sestavit nebo odstranit poznámky';
	@override String get readNotifications => 'Zobrazit oznámení';
	@override String get writeNotifications => 'Spravit oznámení';
	@override String get readReactions => 'Zobrazit vaše reakce';
	@override String get writeReactions => 'Upravit své reakce';
	@override String get writeVotes => 'Hlasovat v anketě';
	@override String get readPages => 'Zobrazit své stránky';
	@override String get writePages => 'Upravit nebo odstranit stránky';
	@override String get readPageLikes => 'Zobrazit to se mi líbí na stránkách';
	@override String get writePageLikes => 'Upravit to se mi líbí na stránkách';
	@override String get readUserGroups => 'Zobrazit skupiny uživatelů';
	@override String get writeUserGroups => 'Upravit nebo odstranit skupiny uživatelů';
	@override String get readChannels => 'Zobrazit své kanály';
	@override String get writeChannels => 'Upravit kanály';
	@override String get readGallery => 'Zobrazit galerii';
	@override String get writeGallery => 'Upravit galerii';
	@override String get readGalleryLikes => 'Zobrazit seznam to se mi líbí příspěvků v galerii';
	@override String get writeGalleryLikes => 'Upravit seznam to se mi líbí příspěvků v galerii';
}

// Path: misskey.auth_
class _StringsMisskeyAuthCsCz extends _StringsMisskeyAuthEnUs {
	_StringsMisskeyAuthCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'Udělovat oprávnění k aplikacím';
	@override String shareAccess({required Object name}) => 'Chcete autorizovat "${name}" pro přístup k tomuto účtu?';
	@override String get shareAccessAsk => 'Opravdu chcete této aplikaci povolit přístup k vašemu účtu?';
	@override String permission({required Object name}) => '${name} požaduje tato oprávnění';
	@override String get permissionAsk => 'Tato aplikace požaduje následující oprávnění';
	@override String get pleaseGoBack => 'Vraťte se prosím zpět do aplikace';
	@override String get callback => 'Návrat k aplikaci';
	@override String get denied => 'Přístup odepřen';
	@override String get pleaseLogin => 'Pro autorizaci aplikací se prosím přihlaste.';
}

// Path: misskey.antennaSources_
class _StringsMisskeyAntennaSourcesCsCz extends _StringsMisskeyAntennaSourcesEnUs {
	_StringsMisskeyAntennaSourcesCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get all => 'Všechny poznámky';
	@override String get homeTimeline => 'Poznámky sledovaných uživatelů';
	@override String get users => 'Poznámky konkrétních uživatelů';
	@override String get userList => 'Poznámky z určitého seznamu uživatelů';
}

// Path: misskey.weekday_
class _StringsMisskeyWeekdayCsCz extends _StringsMisskeyWeekdayEnUs {
	_StringsMisskeyWeekdayCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get sunday => 'Neděle';
	@override String get monday => 'Pondělí';
	@override String get tuesday => 'Úterý';
	@override String get wednesday => 'Středa';
	@override String get thursday => 'Čtvrtek';
	@override String get friday => 'Pátek';
	@override String get saturday => 'Sobota';
}

// Path: misskey.widgets_
class _StringsMisskeyWidgetsCsCz extends _StringsMisskeyWidgetsEnUs {
	_StringsMisskeyWidgetsCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Váš profil';
	@override String get instanceInfo => 'Informace o instanci';
	@override String get memo => 'Přilepené poznámky';
	@override String get notifications => 'Oznámení';
	@override String get timeline => 'Časová osa';
	@override String get calendar => 'Kalendář';
	@override String get trends => 'Trendy';
	@override String get clock => 'Hodiny';
	@override String get rss => 'RSS čtečka';
	@override String get rssTicker => 'RSS Ticker';
	@override String get activity => 'Aktivita';
	@override String get photos => 'Fotky';
	@override String get digitalClock => 'Digitální hodiny';
	@override String get unixClock => 'Hodiny UNIX';
	@override String get federation => 'Federace';
	@override String get instanceCloud => 'Cloud instance';
	@override String get postForm => 'Formulář pro odeslání';
	@override String get slideshow => 'Prezentace';
	@override String get button => 'Tlačítko';
	@override String get onlineUsers => 'Online uživatelé';
	@override String get jobQueue => 'Fronta úloh';
	@override String get serverMetric => 'Metriky serveru';
	@override String get aiscript => 'AiScript conzole';
	@override String get aiscriptApp => 'Aplikace AiScript';
	@override String get aichan => 'Ai';
	@override String get userList => 'Seznam uživatelů';
	@override late final _StringsMisskeyWidgetsUserListCsCz userList_ = _StringsMisskeyWidgetsUserListCsCz._(_root);
	@override String get clicker => 'Clicker';
}

// Path: misskey.cw_
class _StringsMisskeyCwCsCz extends _StringsMisskeyCwEnUs {
	_StringsMisskeyCwCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Skrýt';
	@override String get show => 'Zobrazit více';
	@override String chars({required Object count}) => '${count} charakterů';
	@override String files({required Object count}) => '${count} souborů';
}

// Path: misskey.poll_
class _StringsMisskeyPollCsCz extends _StringsMisskeyPollEnUs {
	_StringsMisskeyPollCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'Jsou zapotřebí alespoň dvě možnosti';
	@override String choiceN({required Object n}) => 'Volba ${n}';
	@override String get noMore => 'Více už přidat nemůžete';
	@override String get canMultipleVote => 'Umožnit výběr více možností';
	@override String get expiration => 'Ukončení ankety';
	@override String get infinite => 'Nikdy';
	@override String get at => 'Ukončit v';
	@override String get after => 'Ukončit po';
	@override String get deadlineDate => 'Datum ukončení';
	@override String get deadlineTime => 'Hodin';
	@override String get duration => 'Trvání';
	@override String votesCount({required Object n}) => '${n} hlasů';
	@override String totalVotes({required Object n}) => '${n} hlasů celkově';
	@override String get vote => 'Hlasovat v anketě';
	@override String get showResult => 'Zobrazit výsledky';
	@override String get voted => 'Odhlasováno';
	@override String get closed => 'Uzavřeno';
	@override String remainingDays({required Object d, required Object h}) => 'Zbývá ${d} den/dní a ${h} hodin/a';
	@override String remainingHours({required Object h, required Object m}) => 'Zbývá ${h} hodin/a a ${m} minut/a';
	@override String remainingMinutes({required Object m, required Object s}) => 'Zbývá ${m} minut/a a ${s} sekund/a';
	@override String remainingSeconds({required Object s}) => 'Zbývá ${s} sekund/a';
}

// Path: misskey.visibility_
class _StringsMisskeyVisibilityCsCz extends _StringsMisskeyVisibilityEnUs {
	_StringsMisskeyVisibilityCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get public => 'Veřejný';
	@override String get publicDescription => 'Vaše poznámka bude viditelná pro všechny uživatele';
	@override String get home => 'Domů';
	@override String get homeDescription => 'Zveřejnit příspěvek pouze na domovskou časovou osu';
	@override String get followers => 'Sledující';
	@override String get followersDescription => 'Zviditelnit pouze pro své sledující';
	@override String get specified => 'Přímý';
	@override String get specifiedDescription => 'Zviditelnit pouze pro určité uživatele';
	@override String get disableFederation => 'Defederace';
	@override String get disableFederationDescription => 'Nepřenášet do jiných instancí';
}

// Path: misskey.postForm_
class _StringsMisskeyPostFormCsCz extends _StringsMisskeyPostFormEnUs {
	_StringsMisskeyPostFormCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'Odpovědět na tuto poznámku...';
	@override String get quotePlaceholder => 'Citovat tuto poznámku...';
	@override String get channelPlaceholder => 'Zveřejnit příspěvek do kanálu...';
	@override late final _StringsMisskeyPostFormPlaceholdersCsCz placeholders_ = _StringsMisskeyPostFormPlaceholdersCsCz._(_root);
}

// Path: misskey.profile_
class _StringsMisskeyProfileCsCz extends _StringsMisskeyProfileEnUs {
	_StringsMisskeyProfileCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get name => 'Jméno';
	@override String get username => 'Uživatelské jméno';
	@override String get description => 'O mně';
	@override String get youCanIncludeHashtags => 'V popisku o Vás můžete použít i hastagy.';
	@override String get metadata => 'Doplňující informace';
	@override String get metadataEdit => 'Upravit doplňující informace';
	@override String get metadataDescription => 'Pomocí nich můžete ve svém profilu zobrazit doplňující informační pole.';
	@override String get metadataLabel => 'Popisek';
	@override String get metadataContent => 'Obsah';
	@override String get changeAvatar => 'Změnit avatara';
	@override String get changeBanner => 'Změnit banner';
}

// Path: misskey.exportOrImport_
class _StringsMisskeyExportOrImportCsCz extends _StringsMisskeyExportOrImportEnUs {
	_StringsMisskeyExportOrImportCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Všechny poznámky';
	@override String get favoritedNotes => 'Oblíbené poznámky';
	@override String get clips => 'Oříznout';
	@override String get followingList => 'Sledovaní';
	@override String get muteList => 'Ztlumit';
	@override String get blockingList => 'Zablokovat';
	@override String get userLists => 'Seznamy';
	@override String get excludeMutingUsers => 'Vyloučit ztlumené uživatele';
	@override String get excludeInactiveUsers => 'Vyloučit neaktivní uživatele';
}

// Path: misskey.charts_
class _StringsMisskeyChartsCsCz extends _StringsMisskeyChartsEnUs {
	_StringsMisskeyChartsCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Federace';
	@override String get apRequest => 'Požadavek';
	@override String get usersIncDec => 'Rozdíl v počtech uživatelů';
	@override String get usersTotal => 'Celkem uživatelů';
	@override String get activeUsers => 'Aktivní uživatelé';
	@override String get notesIncDec => 'Rozdíl v počtu poznámek';
	@override String get localNotesIncDec => 'Rozdíl v počtu místních poznámek';
	@override String get remoteNotesIncDec => 'Rozdíl v počtu vzdálených poznámek';
	@override String get notesTotal => 'Celkový počet poznámek';
	@override String get filesIncDec => 'Rozdíl v počtu souborů';
	@override String get filesTotal => 'Celkový počet souborů';
	@override String get storageUsageIncDec => 'Rozdíl ve využití úložiště';
	@override String get storageUsageTotal => 'Celkové využití úložiště';
}

// Path: misskey.instanceCharts_
class _StringsMisskeyInstanceChartsCsCz extends _StringsMisskeyInstanceChartsEnUs {
	_StringsMisskeyInstanceChartsCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get requests => 'Požadavky';
	@override String get users => 'Rozdíl v počtech uživatelů';
	@override String get usersTotal => 'Kumulativní počet uživatelů';
	@override String get notes => 'Rozdíl v počtu poznámek';
	@override String get notesTotal => 'Kumulativní počet poznámek';
	@override String get ff => 'Rozdíl v počtu sledovaných uživatelů / sledujících';
	@override String get ffTotal => 'Kumulativní počet sledovaných uživatelů / sledujících';
	@override String get cacheSize => 'Rozdíl ve velikosti mezipaměti';
	@override String get cacheSizeTotal => 'Kumulativní celková velikost mezipaměti';
	@override String get files => 'Rozdíl v počtu souborů';
	@override String get filesTotal => 'Kumulativní počet souborů';
}

// Path: misskey.timelines_
class _StringsMisskeyTimelinesCsCz extends _StringsMisskeyTimelinesEnUs {
	_StringsMisskeyTimelinesCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get home => 'Domů';
	@override String get local => 'Místní';
	@override String get social => 'Sociální síť';
	@override String get global => 'Globální';
}

// Path: misskey.play_
class _StringsMisskeyPlayCsCz extends _StringsMisskeyPlayEnUs {
	_StringsMisskeyPlayCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Vytvořit Play';
	@override String get edit => 'Upravit Play';
	@override String get created => 'Play vytvořen';
	@override String get updated => 'Play upraven';
	@override String get deleted => 'Play smazán';
	@override String get pageSetting => 'Nastavení Play';
	@override String get editThisPage => 'Upravit tenhle Play';
	@override String get viewSource => 'Zobrazit zdroj';
	@override String get my => 'Moje Plays';
	@override String get liked => 'To se mi líbí Plays';
	@override String get featured => 'Populární';
	@override String get title => 'Titulek';
	@override String get script => 'Skript';
	@override String get summary => 'Popis';
}

// Path: misskey.pages_
class _StringsMisskeyPagesCsCz extends _StringsMisskeyPagesEnUs {
	_StringsMisskeyPagesCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'Vytvořit novou stránku';
	@override String get editPage => 'Upravit stránku';
	@override String get readPage => 'Prohlížení zdroje této stránky';
	@override String get created => 'Stránka byla úspěšně vytvořena';
	@override String get updated => 'Stránka byla úspěšně aktualizována';
	@override String get deleted => 'Stránka byla úspěšně smazána';
	@override String get pageSetting => 'Nastavení stránky';
	@override String get nameAlreadyExists => 'Zadaná adresa URL stránky již existuje';
	@override String get invalidNameTitle => 'Zadaná adresa URL stránky je neplatná';
	@override String get invalidNameText => 'Ujistěte se že jméno stránky je vyplněno';
	@override String get editThisPage => 'Upravit tuto stránku';
	@override String get viewSource => 'Zobrazit zdroj';
	@override String get viewPage => 'Zobrazit své stránky';
	@override String get like => 'To se mi líbí';
	@override String get unlike => 'Už se mi to nelíbí';
	@override String get my => 'Moje stránky';
	@override String get liked => 'To se mi líbí stránky';
	@override String get featured => 'Populární';
	@override String get inspector => 'Inspektor';
	@override String get contents => 'Obsah';
	@override String get content => 'Blok stránky';
	@override String get variables => 'Proměnné';
	@override String get title => 'Titulek';
	@override String get url => 'URL stránky';
	@override String get summary => 'Přehled stránky';
	@override String get alignCenter => 'Vycentrovat prvky';
	@override String get hideTitleWhenPinned => 'Skrytí názvu stránky při připnutí k profilu';
	@override String get font => 'Písmo';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
	@override String get eyeCatchingImageSet => 'Nastavení miniatury';
	@override String get eyeCatchingImageRemove => 'Smazání miniatury';
	@override String get chooseBlock => 'Přidat blok';
	@override String get selectType => 'Vyberte typ';
	@override String get contentBlocks => 'Obsah';
	@override String get inputBlocks => 'Vstup';
	@override String get specialBlocks => 'Speciální';
	@override late final _StringsMisskeyPagesBlocksCsCz blocks = _StringsMisskeyPagesBlocksCsCz._(_root);
}

// Path: misskey.relayStatus_
class _StringsMisskeyRelayStatusCsCz extends _StringsMisskeyRelayStatusEnUs {
	_StringsMisskeyRelayStatusCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'Čeká se';
	@override String get accepted => 'Schváleno';
	@override String get rejected => 'Odmítnuto';
}

// Path: misskey.notification_
class _StringsMisskeyNotificationCsCz extends _StringsMisskeyNotificationEnUs {
	_StringsMisskeyNotificationCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'Soubor úspěšně nahrán';
	@override String youGotMention({required Object name}) => '${name} vás zmínil';
	@override String youGotReply({required Object name}) => '${name} vám odpověděl';
	@override String youGotQuote({required Object name}) => '${name} vás citoval';
	@override String youRenoted({required Object name}) => 'Poznámka od ${name}';
	@override String get youWereFollowed => 'Máte nového následovníka';
	@override String get youReceivedFollowRequest => 'Obdrželi jste žádost o sledování';
	@override String get yourFollowRequestAccepted => 'Vaše žádost o sledování byla přijata';
	@override String get pollEnded => 'Výsledky ankety jsou k dispozici';
	@override String unreadAntennaNote({required Object name}) => 'Anténa ${name}';
	@override String get emptyPushNotificationMessage => 'Push oznámení byla aktualizována';
	@override String get achievementEarned => 'Úspěch odemčen';
	@override late final _StringsMisskeyNotificationTypesCsCz types_ = _StringsMisskeyNotificationTypesCsCz._(_root);
	@override late final _StringsMisskeyNotificationActionsCsCz actions_ = _StringsMisskeyNotificationActionsCsCz._(_root);
}

// Path: misskey.deck_
class _StringsMisskeyDeckCsCz extends _StringsMisskeyDeckEnUs {
	_StringsMisskeyDeckCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Vždy zobrazovat hlavní sloupec';
	@override String get columnAlign => 'Zarovnat sloupce';
	@override String get addColumn => 'Přidat sloupec';
	@override String get configureColumn => 'Nastavení sloupců';
	@override String get swapLeft => 'Prohodit s levým sloupcem';
	@override String get swapRight => 'Prohodit s pravým sloupcem';
	@override String get swapUp => 'Prohodit s výše uvedeným sloupcem';
	@override String get swapDown => 'Prohodit s níže uvedeným sloupcem';
	@override String get stackLeft => 'Nahromadit v levém sloupci';
	@override String get popRight => 'Popnout sloupec na pravou stranu';
	@override String get profile => 'Profil';
	@override String get newProfile => 'Nový profil';
	@override String get deleteProfile => 'Smazat profil';
	@override String get introduction => 'Vytvořte si dokonalé rozhraní volným uspořádáním sloupců!';
	@override String get introduction2 => 'Kliknutím na tlačítko + v pravé části obrazovky můžete kdykoli přidat nové sloupce.';
	@override String get widgetsIntroduction => 'V nabídce sloupce vyberte možnost "Upravit widgety" a přidejte widget.';
	@override String get useSimpleUiForNonRootPages => 'Použít zjednodušené uživatelské rozhraní pro navigaci na stránkách';
	@override late final _StringsMisskeyDeckColumnsCsCz columns_ = _StringsMisskeyDeckColumnsCsCz._(_root);
}

// Path: misskey.dialog_
class _StringsMisskeyDialogCsCz extends _StringsMisskeyDialogEnUs {
	_StringsMisskeyDialogCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => 'Překročili jste maximální počet znaků! V současné době je na hodnotě ${current} z ${max}.';
	@override String charactersBelow({required Object current, required Object min}) => 'Nedosahujete minimálního limitu znaků! V současné době je na ${current} z ${min}.';
}

// Path: misskey.disabledTimeline_
class _StringsMisskeyDisabledTimelineCsCz extends _StringsMisskeyDisabledTimelineEnUs {
	_StringsMisskeyDisabledTimelineCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Časová osa vypnuta';
	@override String get description => 'Tuto časovou osu nemůžete používat v rámci svých současných rolí.';
}

// Path: misskey.drivecleaner_
class _StringsMisskeyDrivecleanerCsCz extends _StringsMisskeyDrivecleanerEnUs {
	_StringsMisskeyDrivecleanerCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'Sestupná velikost souborů';
	@override String get orderByCreatedAtAsc => 'Vzestupné datumy';
}

// Path: misskey.webhookSettings_
class _StringsMisskeyWebhookSettingsCsCz extends _StringsMisskeyWebhookSettingsEnUs {
	_StringsMisskeyWebhookSettingsCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Vytvořit Webhook';
	@override String get name => 'Jméno';
	@override String get secret => 'Tajné';
	@override String get events => 'Události Webhook';
	@override String get active => 'Zapnuto';
	@override late final _StringsMisskeyWebhookSettingsEventsCsCz events_ = _StringsMisskeyWebhookSettingsEventsCsCz._(_root);
}

// Path: misskey.moderationLogTypes_
class _StringsMisskeyModerationLogTypesCsCz extends _StringsMisskeyModerationLogTypesEnUs {
	_StringsMisskeyModerationLogTypesCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'Zmrazit';
	@override String get resetPassword => 'Resetovat heslo';
	@override String get createInvitation => 'Vygenerovat pozvánku';
}

// Path: misskey.reversi_
class _StringsMisskeyReversiCsCz extends _StringsMisskeyReversiEnUs {
	_StringsMisskeyReversiCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get total => 'Celkem';
}

// Path: misskey.achievements_.types_
class _StringsMisskeyAchievementsTypesCsCz extends _StringsMisskeyAchievementsTypesEnUs {
	_StringsMisskeyAchievementsTypesCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAchievementsTypesNotes1CsCz notes1_ = _StringsMisskeyAchievementsTypesNotes1CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10CsCz notes10_ = _StringsMisskeyAchievementsTypesNotes10CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100CsCz notes100_ = _StringsMisskeyAchievementsTypesNotes100CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes500CsCz notes500_ = _StringsMisskeyAchievementsTypesNotes500CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes1000CsCz notes1000_ = _StringsMisskeyAchievementsTypesNotes1000CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes5000CsCz notes5000_ = _StringsMisskeyAchievementsTypesNotes5000CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10000CsCz notes10000_ = _StringsMisskeyAchievementsTypesNotes10000CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes20000CsCz notes20000_ = _StringsMisskeyAchievementsTypesNotes20000CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes30000CsCz notes30000_ = _StringsMisskeyAchievementsTypesNotes30000CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes40000CsCz notes40000_ = _StringsMisskeyAchievementsTypesNotes40000CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes50000CsCz notes50000_ = _StringsMisskeyAchievementsTypesNotes50000CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes60000CsCz notes60000_ = _StringsMisskeyAchievementsTypesNotes60000CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes70000CsCz notes70000_ = _StringsMisskeyAchievementsTypesNotes70000CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes80000CsCz notes80000_ = _StringsMisskeyAchievementsTypesNotes80000CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes90000CsCz notes90000_ = _StringsMisskeyAchievementsTypesNotes90000CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100000CsCz notes100000_ = _StringsMisskeyAchievementsTypesNotes100000CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin3CsCz login3_ = _StringsMisskeyAchievementsTypesLogin3CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin7CsCz login7_ = _StringsMisskeyAchievementsTypesLogin7CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin15CsCz login15_ = _StringsMisskeyAchievementsTypesLogin15CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin30CsCz login30_ = _StringsMisskeyAchievementsTypesLogin30CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin60CsCz login60_ = _StringsMisskeyAchievementsTypesLogin60CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin100CsCz login100_ = _StringsMisskeyAchievementsTypesLogin100CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin200CsCz login200_ = _StringsMisskeyAchievementsTypesLogin200CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin300CsCz login300_ = _StringsMisskeyAchievementsTypesLogin300CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin400CsCz login400_ = _StringsMisskeyAchievementsTypesLogin400CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin500CsCz login500_ = _StringsMisskeyAchievementsTypesLogin500CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin600CsCz login600_ = _StringsMisskeyAchievementsTypesLogin600CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin700CsCz login700_ = _StringsMisskeyAchievementsTypesLogin700CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin800CsCz login800_ = _StringsMisskeyAchievementsTypesLogin800CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin900CsCz login900_ = _StringsMisskeyAchievementsTypesLogin900CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin1000CsCz login1000_ = _StringsMisskeyAchievementsTypesLogin1000CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteClipped1CsCz noteClipped1_ = _StringsMisskeyAchievementsTypesNoteClipped1CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteFavorited1CsCz noteFavorited1_ = _StringsMisskeyAchievementsTypesNoteFavorited1CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesMyNoteFavorited1CsCz myNoteFavorited1_ = _StringsMisskeyAchievementsTypesMyNoteFavorited1CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesProfileFilledCsCz profileFilled_ = _StringsMisskeyAchievementsTypesProfileFilledCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesMarkedAsCatCsCz markedAsCat_ = _StringsMisskeyAchievementsTypesMarkedAsCatCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing1CsCz following1_ = _StringsMisskeyAchievementsTypesFollowing1CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing10CsCz following10_ = _StringsMisskeyAchievementsTypesFollowing10CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing50CsCz following50_ = _StringsMisskeyAchievementsTypesFollowing50CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing100CsCz following100_ = _StringsMisskeyAchievementsTypesFollowing100CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing300CsCz following300_ = _StringsMisskeyAchievementsTypesFollowing300CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers1CsCz followers1_ = _StringsMisskeyAchievementsTypesFollowers1CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers10CsCz followers10_ = _StringsMisskeyAchievementsTypesFollowers10CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers50CsCz followers50_ = _StringsMisskeyAchievementsTypesFollowers50CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers100CsCz followers100_ = _StringsMisskeyAchievementsTypesFollowers100CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers300CsCz followers300_ = _StringsMisskeyAchievementsTypesFollowers300CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers500CsCz followers500_ = _StringsMisskeyAchievementsTypesFollowers500CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers1000CsCz followers1000_ = _StringsMisskeyAchievementsTypesFollowers1000CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesCollectAchievements30CsCz collectAchievements30_ = _StringsMisskeyAchievementsTypesCollectAchievements30CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesViewAchievements3minCsCz viewAchievements3min_ = _StringsMisskeyAchievementsTypesViewAchievements3minCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesILoveMisskeyCsCz iLoveMisskey_ = _StringsMisskeyAchievementsTypesILoveMisskeyCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesFoundTreasureCsCz foundTreasure_ = _StringsMisskeyAchievementsTypesFoundTreasureCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesClient30minCsCz client30min_ = _StringsMisskeyAchievementsTypesClient30minCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesClient60minCsCz client60min_ = _StringsMisskeyAchievementsTypesClient60minCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteDeletedWithin1minCsCz noteDeletedWithin1min_ = _StringsMisskeyAchievementsTypesNoteDeletedWithin1minCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesPostedAtLateNightCsCz postedAtLateNight_ = _StringsMisskeyAchievementsTypesPostedAtLateNightCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesPostedAt0min0secCsCz postedAt0min0sec_ = _StringsMisskeyAchievementsTypesPostedAt0min0secCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesSelfQuoteCsCz selfQuote_ = _StringsMisskeyAchievementsTypesSelfQuoteCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesHtl20npmCsCz htl20npm_ = _StringsMisskeyAchievementsTypesHtl20npmCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesViewInstanceChartCsCz viewInstanceChart_ = _StringsMisskeyAchievementsTypesViewInstanceChartCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadCsCz outputHelloWorldOnScratchpad_ = _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesOpen3windowsCsCz open3windows_ = _StringsMisskeyAchievementsTypesOpen3windowsCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceCsCz driveFolderCircularReference_ = _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesReactWithoutReadCsCz reactWithoutRead_ = _StringsMisskeyAchievementsTypesReactWithoutReadCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesClickedClickHereCsCz clickedClickHere_ = _StringsMisskeyAchievementsTypesClickedClickHereCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesJustPlainLuckyCsCz justPlainLucky_ = _StringsMisskeyAchievementsTypesJustPlainLuckyCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesSetNameToSyuiloCsCz setNameToSyuilo_ = _StringsMisskeyAchievementsTypesSetNameToSyuiloCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1CsCz passedSinceAccountCreated1_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2CsCz passedSinceAccountCreated2_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3CsCz passedSinceAccountCreated3_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3CsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesLoggedInOnBirthdayCsCz loggedInOnBirthday_ = _StringsMisskeyAchievementsTypesLoggedInOnBirthdayCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayCsCz loggedInOnNewYearsDay_ = _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesCookieClickedCsCz cookieClicked_ = _StringsMisskeyAchievementsTypesCookieClickedCsCz._(_root);
	@override late final _StringsMisskeyAchievementsTypesBrainDiverCsCz brainDiver_ = _StringsMisskeyAchievementsTypesBrainDiverCsCz._(_root);
}

// Path: misskey.role_.priority_
class _StringsMisskeyRolePriorityCsCz extends _StringsMisskeyRolePriorityEnUs {
	_StringsMisskeyRolePriorityCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get low => 'Nízká';
	@override String get middle => 'Střední';
	@override String get high => 'Vysoká';
}

// Path: misskey.role_.options_
class _StringsMisskeyRoleOptionsCsCz extends _StringsMisskeyRoleOptionsEnUs {
	_StringsMisskeyRoleOptionsCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'Může zobrazit globální časovou osu';
	@override String get ltlAvailable => 'Může zobrazit místní časovou osu';
	@override String get canPublicNote => 'Může posílat veřejné poznámky';
	@override String get canInvite => 'Může vytvářet kódy pozvánek instance';
	@override String get inviteLimit => 'Limit pozvánek';
	@override String get inviteLimitCycle => 'Limit mezi pozvánkama';
	@override String get inviteExpirationTime => 'Interval vypršení platnosti pozvánky';
	@override String get canManageCustomEmojis => 'Spravovat vlastní emoji';
	@override String get driveCapacity => 'Velikost disku';
	@override String get alwaysMarkNsfw => 'Vždy označovat soubory jako NSFW';
	@override String get pinMax => 'Maximální počet připnutých poznámek';
	@override String get antennaMax => 'Maximální počet antén';
	@override String get wordMuteMax => 'Maximální počet znaků povolených v ztlumených slovech';
	@override String get webhookMax => 'Maximální počet Webhooků';
	@override String get clipMax => 'Maximální počet připnutí';
	@override String get noteEachClipsMax => 'Maximální počet poznámek v připnutí';
	@override String get userListMax => 'Maximální počet seznamů uživatelů';
	@override String get userEachUserListsMax => 'Maximální počet uživatelů v seznamu uživatelů';
	@override String get rateLimitFactor => 'Limit rychlosti';
	@override String get descriptionOfRateLimitFactor => 'Nižší limity rychlosti jsou méně omezující, vyšší více omezující. ';
	@override String get canHideAds => 'Může schovat reklamy';
	@override String get canSearchNotes => 'Použití vyhledávání poznámek';
}

// Path: misskey.role_.condition_
class _StringsMisskeyRoleConditionCsCz extends _StringsMisskeyRoleConditionEnUs {
	_StringsMisskeyRoleConditionCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get isLocal => 'Místní uživatel';
	@override String get isRemote => 'Vzdálený uživatel';
	@override String get createdLessThan => 'Od vytvoření účtu uplynulo méně než X';
	@override String get createdMoreThan => 'Od vytvoření účtu uplynulo více než X';
	@override String get followersLessThanOrEq => 'Má X nebo méně sledujících';
	@override String get followersMoreThanOrEq => 'Má X nebo více sledujících';
	@override String get followingLessThanOrEq => 'Sleduje X nebo méně účtů';
	@override String get followingMoreThanOrEq => 'Sleduje X nebo více účtů';
	@override String get notesLessThanOrEq => 'Počet příspěvků je menší než/rovná se';
	@override String get notesMoreThanOrEq => 'Počet příspěvků je větší než/rovná se';
	@override String get and => 'AND kondice';
	@override String get or => 'OR kondice';
	@override String get not => 'NOT kondice';
}

// Path: misskey.email_.follow_
class _StringsMisskeyEmailFollowCsCz extends _StringsMisskeyEmailFollowEnUs {
	_StringsMisskeyEmailFollowCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Máte nového následovníka';
}

// Path: misskey.email_.receiveFollowRequest_
class _StringsMisskeyEmailReceiveFollowRequestCsCz extends _StringsMisskeyEmailReceiveFollowRequestEnUs {
	_StringsMisskeyEmailReceiveFollowRequestCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Obdrželi jste žádost o sledování';
}

// Path: misskey.theme_.keys
class _StringsMisskeyThemeKeysCsCz extends _StringsMisskeyThemeKeysEnUs {
	_StringsMisskeyThemeKeysCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get accent => 'Akcent';
	@override String get bg => 'Pozadí';
	@override String get fg => 'Text';
	@override String get focus => 'Fokus';
	@override String get indicator => 'Indikátor';
	@override String get panel => 'Panely';
	@override String get shadow => 'Stín';
	@override String get header => 'Nadpis';
	@override String get navBg => 'Pozadí postranního panelu';
	@override String get navFg => 'Text na postranním panelu';
	@override String get navHoverFg => 'Text na postranním panelu (Hover)';
	@override String get navActive => 'Text na postranním panelu (Aktivní)';
	@override String get navIndicator => 'Indikátor na postranním panelu';
	@override String get link => 'Odkaz';
	@override String get hashtag => 'Hashtag';
	@override String get mention => 'Zmínění';
	@override String get mentionMe => 'Zmínky (mě)';
	@override String get renote => 'Přeposlat';
	@override String get modalBg => 'Pozadí Modalu';
	@override String get divider => 'Dělící čára';
	@override String get scrollbarHandle => 'Rukojeť posuvníku';
	@override String get scrollbarHandleHover => 'Rukojeť posuvníku (Hover)';
	@override String get dateLabelFg => 'Text štítku s datem';
	@override String get infoBg => 'Pozadí informací';
	@override String get infoFg => 'Text informací';
	@override String get infoWarnBg => 'Pozadí varování';
	@override String get infoWarnFg => 'Text varování';
	@override String get toastBg => 'Pozadí oznámení';
	@override String get toastFg => 'Text oznámení';
	@override String get buttonBg => 'Pozadí tlačítka';
	@override String get buttonHoverBg => 'Pozadí tlačítka (Hover)';
	@override String get inputBorder => 'Ohraničení vstupního pole';
	@override String get listItemHoverBg => 'Pozadí položky seznamu (Hover)';
	@override String get driveFolderBg => 'Pozadí složky disku';
	@override String get wallpaperOverlay => 'Překrytí tapety';
	@override String get badge => 'Odznak';
	@override String get messageBg => 'Pozadí chatu';
	@override String get accentDarken => 'Akcent (Ztmavený)';
	@override String get accentLighten => 'Akcent (Zesvětlený)';
	@override String get fgHighlighted => 'Zvýrazněný text';
}

// Path: misskey.widgets_.userList_
class _StringsMisskeyWidgetsUserListCsCz extends _StringsMisskeyWidgetsUserListEnUs {
	_StringsMisskeyWidgetsUserListCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Vybrat seznam';
}

// Path: misskey.postForm_.placeholders_
class _StringsMisskeyPostFormPlaceholdersCsCz extends _StringsMisskeyPostFormPlaceholdersEnUs {
	_StringsMisskeyPostFormPlaceholdersCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get a => 'Co máte v plánu?';
	@override String get b => 'Co se děje kolem vás?';
	@override String get c => 'Co máte na mysli?';
	@override String get d => 'Co chcete říct?';
	@override String get e => 'Začít psát...';
	@override String get f => 'Čekám, až něco napíšete...';
}

// Path: misskey.pages_.blocks
class _StringsMisskeyPagesBlocksCsCz extends _StringsMisskeyPagesBlocksEnUs {
	_StringsMisskeyPagesBlocksCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get text => 'Text';
	@override String get textarea => 'Textové pole';
	@override String get section => 'Sekce';
	@override String get image => 'Obrázky';
	@override String get button => 'Tlačítko';
	@override String get note => 'Vestavěná poznámka';
	@override late final _StringsMisskeyPagesBlocksNoteCsCz note_ = _StringsMisskeyPagesBlocksNoteCsCz._(_root);
}

// Path: misskey.notification_.types_
class _StringsMisskeyNotificationTypesCsCz extends _StringsMisskeyNotificationTypesEnUs {
	_StringsMisskeyNotificationTypesCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get all => 'Vše';
	@override String get follow => 'Sledovaní';
	@override String get mention => 'Zmínění';
	@override String get reply => 'Odpovědi';
	@override String get renote => 'Přeposlat';
	@override String get quote => 'Citovat';
	@override String get reaction => 'Reakce';
	@override String get pollEnded => 'Anketa končí';
	@override String get receiveFollowRequest => 'Obdržené žádosti o sledování';
	@override String get followRequestAccepted => 'Přijaté žádosti o sledování';
	@override String get achievementEarned => 'Úspěch odemčen';
	@override String get app => 'Oznámení z propojených aplikací';
}

// Path: misskey.notification_.actions_
class _StringsMisskeyNotificationActionsCsCz extends _StringsMisskeyNotificationActionsEnUs {
	_StringsMisskeyNotificationActionsCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'vás začal sledovat zpět';
	@override String get reply => 'Odpovědět';
	@override String get renote => 'Přeposlat';
}

// Path: misskey.deck_.columns_
class _StringsMisskeyDeckColumnsCsCz extends _StringsMisskeyDeckColumnsEnUs {
	_StringsMisskeyDeckColumnsCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get main => 'Hlavní';
	@override String get widgets => 'Widgety';
	@override String get notifications => 'Oznámení';
	@override String get tl => 'Časová osa';
	@override String get antenna => 'Antény';
	@override String get list => 'Seznamy';
	@override String get channel => 'Kanály';
	@override String get mentions => 'Zmínění';
	@override String get direct => 'Přímý';
	@override String get roleTimeline => 'Časová osa role';
}

// Path: misskey.webhookSettings_.events_
class _StringsMisskeyWebhookSettingsEventsCsCz extends _StringsMisskeyWebhookSettingsEventsEnUs {
	_StringsMisskeyWebhookSettingsEventsCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Při sledování uživatele';
	@override String get followed => 'Při sledování';
	@override String get note => 'Při zveřejňování poznámky';
	@override String get reply => 'Při obdržení odpovědi';
	@override String get renote => 'Při renotaci poznámky';
	@override String get reaction => 'Při obdržení reakce';
	@override String get mention => 'Při zmínce';
}

// Path: misskey.achievements_.types_.notes1_
class _StringsMisskeyAchievementsTypesNotes1CsCz extends _StringsMisskeyAchievementsTypesNotes1EnUs {
	_StringsMisskeyAchievementsTypesNotes1CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dobrý den Misskey!';
	@override String get description => 'Zveřejněte vaší první poznámku';
	@override String get flavor => 'Užijte si to s Misskey!';
}

// Path: misskey.achievements_.types_.notes10_
class _StringsMisskeyAchievementsTypesNotes10CsCz extends _StringsMisskeyAchievementsTypesNotes10EnUs {
	_StringsMisskeyAchievementsTypesNotes10CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pár poznámek';
	@override String get description => 'Zveřejněte 10 poznámek';
}

// Path: misskey.achievements_.types_.notes100_
class _StringsMisskeyAchievementsTypesNotes100CsCz extends _StringsMisskeyAchievementsTypesNotes100EnUs {
	_StringsMisskeyAchievementsTypesNotes100CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hodně poznámek';
	@override String get description => 'Zveřejněte 100 poznámek';
}

// Path: misskey.achievements_.types_.notes500_
class _StringsMisskeyAchievementsTypesNotes500CsCz extends _StringsMisskeyAchievementsTypesNotes500EnUs {
	_StringsMisskeyAchievementsTypesNotes500CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zahlcen poznámkama';
	@override String get description => 'Zveřejněte 500 poznámek';
}

// Path: misskey.achievements_.types_.notes1000_
class _StringsMisskeyAchievementsTypesNotes1000CsCz extends _StringsMisskeyAchievementsTypesNotes1000EnUs {
	_StringsMisskeyAchievementsTypesNotes1000CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hora poznámek';
	@override String get description => 'Zveřejněte 1000 poznámek';
}

// Path: misskey.achievements_.types_.notes5000_
class _StringsMisskeyAchievementsTypesNotes5000CsCz extends _StringsMisskeyAchievementsTypesNotes5000EnUs {
	_StringsMisskeyAchievementsTypesNotes5000CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Přetékající poznámky';
	@override String get description => 'Zveřejněte 5000 poznámek';
}

// Path: misskey.achievements_.types_.notes10000_
class _StringsMisskeyAchievementsTypesNotes10000CsCz extends _StringsMisskeyAchievementsTypesNotes10000EnUs {
	_StringsMisskeyAchievementsTypesNotes10000CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Super poznámka';
	@override String get description => 'Zveřejněte 10 000 poznámek';
}

// Path: misskey.achievements_.types_.notes20000_
class _StringsMisskeyAchievementsTypesNotes20000CsCz extends _StringsMisskeyAchievementsTypesNotes20000EnUs {
	_StringsMisskeyAchievementsTypesNotes20000CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Potřebuju... více... poznámek...';
	@override String get description => 'Zveřejněte 20 000 poznámek';
}

// Path: misskey.achievements_.types_.notes30000_
class _StringsMisskeyAchievementsTypesNotes30000CsCz extends _StringsMisskeyAchievementsTypesNotes30000EnUs {
	_StringsMisskeyAchievementsTypesNotes30000CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Poznámky, poznámky, POZNÁMKY!';
	@override String get description => 'Zveřejněte 30 000 poznámek';
}

// Path: misskey.achievements_.types_.notes40000_
class _StringsMisskeyAchievementsTypesNotes40000CsCz extends _StringsMisskeyAchievementsTypesNotes40000EnUs {
	_StringsMisskeyAchievementsTypesNotes40000CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Továrna na poznámky';
	@override String get description => 'Zveřejněte 40 000 poznámek';
}

// Path: misskey.achievements_.types_.notes50000_
class _StringsMisskeyAchievementsTypesNotes50000CsCz extends _StringsMisskeyAchievementsTypesNotes50000EnUs {
	_StringsMisskeyAchievementsTypesNotes50000CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Planeta poznámek';
	@override String get description => 'Zveřejněte 50 000 poznámek';
}

// Path: misskey.achievements_.types_.notes60000_
class _StringsMisskeyAchievementsTypesNotes60000CsCz extends _StringsMisskeyAchievementsTypesNotes60000EnUs {
	_StringsMisskeyAchievementsTypesNotes60000CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Poznámkový kvasar';
	@override String get description => 'Zveřejněte 60 000 poznámek';
}

// Path: misskey.achievements_.types_.notes70000_
class _StringsMisskeyAchievementsTypesNotes70000CsCz extends _StringsMisskeyAchievementsTypesNotes70000EnUs {
	_StringsMisskeyAchievementsTypesNotes70000CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Černá díra poznámek';
	@override String get description => 'Zveřejněte 70 000 poznámek';
}

// Path: misskey.achievements_.types_.notes80000_
class _StringsMisskeyAchievementsTypesNotes80000CsCz extends _StringsMisskeyAchievementsTypesNotes80000EnUs {
	_StringsMisskeyAchievementsTypesNotes80000CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Galaxie poznámek';
	@override String get description => 'Zveřejněte 80 000 poznámek';
}

// Path: misskey.achievements_.types_.notes90000_
class _StringsMisskeyAchievementsTypesNotes90000CsCz extends _StringsMisskeyAchievementsTypesNotes90000EnUs {
	_StringsMisskeyAchievementsTypesNotes90000CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vesmír poznámek';
	@override String get description => 'Zveřejněte 90 000 poznámek';
}

// Path: misskey.achievements_.types_.notes100000_
class _StringsMisskeyAchievementsTypesNotes100000CsCz extends _StringsMisskeyAchievementsTypesNotes100000EnUs {
	_StringsMisskeyAchievementsTypesNotes100000CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => 'Zveřejněte 100 000 poznámek';
	@override String get flavor => 'Máte toho hodně co říct.';
}

// Path: misskey.achievements_.types_.login3_
class _StringsMisskeyAchievementsTypesLogin3CsCz extends _StringsMisskeyAchievementsTypesLogin3EnUs {
	_StringsMisskeyAchievementsTypesLogin3CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Začátečník I';
	@override String get description => 'Přihlaste se celkově za 3 dny';
	@override String get flavor => 'Ode dneška mi říkejte Misskista.';
}

// Path: misskey.achievements_.types_.login7_
class _StringsMisskeyAchievementsTypesLogin7CsCz extends _StringsMisskeyAchievementsTypesLogin7EnUs {
	_StringsMisskeyAchievementsTypesLogin7CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Začátečník II';
	@override String get description => 'Přihlaste se celkově za 7 dní';
	@override String get flavor => 'Máte pocit, že už jste se v tom vyznali?';
}

// Path: misskey.achievements_.types_.login15_
class _StringsMisskeyAchievementsTypesLogin15CsCz extends _StringsMisskeyAchievementsTypesLogin15EnUs {
	_StringsMisskeyAchievementsTypesLogin15CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Začátečník III';
	@override String get description => 'Přihlaste se celkově za 15 dní';
}

// Path: misskey.achievements_.types_.login30_
class _StringsMisskeyAchievementsTypesLogin30CsCz extends _StringsMisskeyAchievementsTypesLogin30EnUs {
	_StringsMisskeyAchievementsTypesLogin30CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskista I';
	@override String get description => 'Přihlaste se celkově za 30 dní';
}

// Path: misskey.achievements_.types_.login60_
class _StringsMisskeyAchievementsTypesLogin60CsCz extends _StringsMisskeyAchievementsTypesLogin60EnUs {
	_StringsMisskeyAchievementsTypesLogin60CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskista II';
	@override String get description => 'Přihlaste se celkově za 60 dní';
}

// Path: misskey.achievements_.types_.login100_
class _StringsMisskeyAchievementsTypesLogin100CsCz extends _StringsMisskeyAchievementsTypesLogin100EnUs {
	_StringsMisskeyAchievementsTypesLogin100CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskista III';
	@override String get description => 'Přihlaste se celkově za 100 dní';
	@override String get flavor => 'Violent Misskista';
}

// Path: misskey.achievements_.types_.login200_
class _StringsMisskeyAchievementsTypesLogin200CsCz extends _StringsMisskeyAchievementsTypesLogin200EnUs {
	_StringsMisskeyAchievementsTypesLogin200CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stálý zákazník I';
	@override String get description => 'Přihlaste se celkově za 200 dní';
}

// Path: misskey.achievements_.types_.login300_
class _StringsMisskeyAchievementsTypesLogin300CsCz extends _StringsMisskeyAchievementsTypesLogin300EnUs {
	_StringsMisskeyAchievementsTypesLogin300CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stálý zákazník II';
	@override String get description => 'Přihlaste se celkově za 300 dní';
}

// Path: misskey.achievements_.types_.login400_
class _StringsMisskeyAchievementsTypesLogin400CsCz extends _StringsMisskeyAchievementsTypesLogin400EnUs {
	_StringsMisskeyAchievementsTypesLogin400CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stálý zákazník III';
	@override String get description => 'Přihlaste se celkově za 400 dní';
}

// Path: misskey.achievements_.types_.login500_
class _StringsMisskeyAchievementsTypesLogin500CsCz extends _StringsMisskeyAchievementsTypesLogin500EnUs {
	_StringsMisskeyAchievementsTypesLogin500CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Expert I';
	@override String get description => 'Přihlaste se celkově za 500 dní';
	@override String get flavor => 'Moji přátelé, často se říká, že mám rád poznámky.';
}

// Path: misskey.achievements_.types_.login600_
class _StringsMisskeyAchievementsTypesLogin600CsCz extends _StringsMisskeyAchievementsTypesLogin600EnUs {
	_StringsMisskeyAchievementsTypesLogin600CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Expert II';
	@override String get description => 'Přihlaste se celkově za 600 dní';
}

// Path: misskey.achievements_.types_.login700_
class _StringsMisskeyAchievementsTypesLogin700CsCz extends _StringsMisskeyAchievementsTypesLogin700EnUs {
	_StringsMisskeyAchievementsTypesLogin700CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Expert III';
	@override String get description => 'Přihlaste se celkově za 700 dní';
}

// Path: misskey.achievements_.types_.login800_
class _StringsMisskeyAchievementsTypesLogin800CsCz extends _StringsMisskeyAchievementsTypesLogin800EnUs {
	_StringsMisskeyAchievementsTypesLogin800CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mistr poznámek I';
	@override String get description => 'Přihlaste se celkově za 800 dní';
}

// Path: misskey.achievements_.types_.login900_
class _StringsMisskeyAchievementsTypesLogin900CsCz extends _StringsMisskeyAchievementsTypesLogin900EnUs {
	_StringsMisskeyAchievementsTypesLogin900CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mistr poznámek II';
	@override String get description => 'Přihlaste se celkově za 900 dní';
}

// Path: misskey.achievements_.types_.login1000_
class _StringsMisskeyAchievementsTypesLogin1000CsCz extends _StringsMisskeyAchievementsTypesLogin1000EnUs {
	_StringsMisskeyAchievementsTypesLogin1000CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mistr poznámek III';
	@override String get description => 'Přihlaste se celkově za 1000 dní';
	@override String get flavor => 'Děkujeme, že používáte Misskey!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _StringsMisskeyAchievementsTypesNoteClipped1CsCz extends _StringsMisskeyAchievementsTypesNoteClipped1EnUs {
	_StringsMisskeyAchievementsTypesNoteClipped1CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Musím... připnout...';
	@override String get description => 'Připněte si první poznámku';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _StringsMisskeyAchievementsTypesNoteFavorited1CsCz extends _StringsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesNoteFavorited1CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvězdář';
	@override String get description => 'Oblíbena první poznámka';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _StringsMisskeyAchievementsTypesMyNoteFavorited1CsCz extends _StringsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesMyNoteFavorited1CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hledání hvězd';
	@override String get description => 'Někdo si oblíbil jednu z vašich poznámek';
}

// Path: misskey.achievements_.types_.profileFilled_
class _StringsMisskeyAchievementsTypesProfileFilledCsCz extends _StringsMisskeyAchievementsTypesProfileFilledEnUs {
	_StringsMisskeyAchievementsTypesProfileFilledCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dobře připravený';
	@override String get description => 'Nastavte si profil';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _StringsMisskeyAchievementsTypesMarkedAsCatCsCz extends _StringsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_StringsMisskeyAchievementsTypesMarkedAsCatCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Já jsem kočka';
	@override String get description => 'Označte váš účet "jako kočka"';
	@override String get flavor => 'Jméno ti dám později.';
}

// Path: misskey.achievements_.types_.following1_
class _StringsMisskeyAchievementsTypesFollowing1CsCz extends _StringsMisskeyAchievementsTypesFollowing1EnUs {
	_StringsMisskeyAchievementsTypesFollowing1CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sledujte prvního uživatele';
	@override String get description => 'Sledujte uživatele';
}

// Path: misskey.achievements_.types_.following10_
class _StringsMisskeyAchievementsTypesFollowing10CsCz extends _StringsMisskeyAchievementsTypesFollowing10EnUs {
	_StringsMisskeyAchievementsTypesFollowing10CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Drž se... drž se...';
	@override String get description => 'Sledujte 10 uživatelů';
}

// Path: misskey.achievements_.types_.following50_
class _StringsMisskeyAchievementsTypesFollowing50CsCz extends _StringsMisskeyAchievementsTypesFollowing50EnUs {
	_StringsMisskeyAchievementsTypesFollowing50CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hodně přátel';
	@override String get description => 'Sledujte 50 uživatelů';
}

// Path: misskey.achievements_.types_.following100_
class _StringsMisskeyAchievementsTypesFollowing100CsCz extends _StringsMisskeyAchievementsTypesFollowing100EnUs {
	_StringsMisskeyAchievementsTypesFollowing100CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => '100 přátel';
	@override String get description => 'Sledujte 100 uživatelů';
}

// Path: misskey.achievements_.types_.following300_
class _StringsMisskeyAchievementsTypesFollowing300CsCz extends _StringsMisskeyAchievementsTypesFollowing300EnUs {
	_StringsMisskeyAchievementsTypesFollowing300CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Přetížení přátel';
	@override String get description => 'Sledujte 300 účtů';
}

// Path: misskey.achievements_.types_.followers1_
class _StringsMisskeyAchievementsTypesFollowers1CsCz extends _StringsMisskeyAchievementsTypesFollowers1EnUs {
	_StringsMisskeyAchievementsTypesFollowers1CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'První sledující';
	@override String get description => 'Získejte 1 sledujícího';
}

// Path: misskey.achievements_.types_.followers10_
class _StringsMisskeyAchievementsTypesFollowers10CsCz extends _StringsMisskeyAchievementsTypesFollowers10EnUs {
	_StringsMisskeyAchievementsTypesFollowers10CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sledujte mě!';
	@override String get description => 'Získejte 10 sledujících';
}

// Path: misskey.achievements_.types_.followers50_
class _StringsMisskeyAchievementsTypesFollowers50CsCz extends _StringsMisskeyAchievementsTypesFollowers50EnUs {
	_StringsMisskeyAchievementsTypesFollowers50CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Přicházejí davy';
	@override String get description => 'Získejte 50 sledujících';
}

// Path: misskey.achievements_.types_.followers100_
class _StringsMisskeyAchievementsTypesFollowers100CsCz extends _StringsMisskeyAchievementsTypesFollowers100EnUs {
	_StringsMisskeyAchievementsTypesFollowers100CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Populární';
	@override String get description => 'Získejte 100 sledujících';
}

// Path: misskey.achievements_.types_.followers300_
class _StringsMisskeyAchievementsTypesFollowers300CsCz extends _StringsMisskeyAchievementsTypesFollowers300EnUs {
	_StringsMisskeyAchievementsTypesFollowers300CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Prosíme srovnejte se do jedné řady!';
	@override String get description => 'Získejte 300 sledujících';
}

// Path: misskey.achievements_.types_.followers500_
class _StringsMisskeyAchievementsTypesFollowers500CsCz extends _StringsMisskeyAchievementsTypesFollowers500EnUs {
	_StringsMisskeyAchievementsTypesFollowers500CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rádiová věž';
	@override String get description => 'Získejte 500 sledujících';
}

// Path: misskey.achievements_.types_.followers1000_
class _StringsMisskeyAchievementsTypesFollowers1000CsCz extends _StringsMisskeyAchievementsTypesFollowers1000EnUs {
	_StringsMisskeyAchievementsTypesFollowers1000CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Influencer';
	@override String get description => 'Získejte 1000 sledujících';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _StringsMisskeyAchievementsTypesCollectAchievements30CsCz extends _StringsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_StringsMisskeyAchievementsTypesCollectAchievements30CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sběratel úspěchů';
	@override String get description => 'Získejte 30 úspěchů';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _StringsMisskeyAchievementsTypesViewAchievements3minCsCz extends _StringsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_StringsMisskeyAchievementsTypesViewAchievements3minCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Máš rád úspěchy';
	@override String get description => 'Koukejte na váš seznam úspěchů alespoň po dobu 3 minut';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _StringsMisskeyAchievementsTypesILoveMisskeyCsCz extends _StringsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_StringsMisskeyAchievementsTypesILoveMisskeyCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Miluju Misskey';
	@override String get description => 'Zveřejněte " I ❤ #Misskey"';
	@override String get flavor => 'Vývojový tým Misskey si velmi váží vaší podpory!';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _StringsMisskeyAchievementsTypesFoundTreasureCsCz extends _StringsMisskeyAchievementsTypesFoundTreasureEnUs {
	_StringsMisskeyAchievementsTypesFoundTreasureCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hon za pokladem';
	@override String get description => 'Našli jste schovaný poklad!';
}

// Path: misskey.achievements_.types_.client30min_
class _StringsMisskeyAchievementsTypesClient30minCsCz extends _StringsMisskeyAchievementsTypesClient30minEnUs {
	_StringsMisskeyAchievementsTypesClient30minCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Krátká pauza';
	@override String get description => 'Mějte otevřený Misskey alespoň po dobu 30 minut';
}

// Path: misskey.achievements_.types_.client60min_
class _StringsMisskeyAchievementsTypesClient60minCsCz extends _StringsMisskeyAchievementsTypesClient60minEnUs {
	_StringsMisskeyAchievementsTypesClient60minCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Žádný "Miss" v Misskey';
	@override String get description => 'Mějte otevřený Misskey alespoň po dobu 60 minut';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _StringsMisskeyAchievementsTypesNoteDeletedWithin1minCsCz extends _StringsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_StringsMisskeyAchievementsTypesNoteDeletedWithin1minCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ups, nevadí';
	@override String get description => 'Vymažte poznámku během minuty co ji zveřejníte';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _StringsMisskeyAchievementsTypesPostedAtLateNightCsCz extends _StringsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_StringsMisskeyAchievementsTypesPostedAtLateNightCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Noční typ';
	@override String get description => 'Zveřejněte poznámku pozdě v noci';
	@override String get flavor => 'Je nejvyšší čas jít spát.';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _StringsMisskeyAchievementsTypesPostedAt0min0secCsCz extends _StringsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_StringsMisskeyAchievementsTypesPostedAt0min0secCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mluvící hodiny';
	@override String get description => 'Zveřejněte poznámku přesně v 00:00';
	@override String get flavor => 'Klik Klik Klik Bum';
}

// Path: misskey.achievements_.types_.selfQuote_
class _StringsMisskeyAchievementsTypesSelfQuoteCsCz extends _StringsMisskeyAchievementsTypesSelfQuoteEnUs {
	_StringsMisskeyAchievementsTypesSelfQuoteCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sebereference';
	@override String get description => 'Citujte vlastní poznámku';
}

// Path: misskey.achievements_.types_.htl20npm_
class _StringsMisskeyAchievementsTypesHtl20npmCsCz extends _StringsMisskeyAchievementsTypesHtl20npmEnUs {
	_StringsMisskeyAchievementsTypesHtl20npmCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Plynoucí časová osa';
	@override String get description => 'Mějte rychlost vaší domovské časové osy vyšší než 20 pzm (poznámek za minutu).';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _StringsMisskeyAchievementsTypesViewInstanceChartCsCz extends _StringsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_StringsMisskeyAchievementsTypesViewInstanceChartCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analytik';
	@override String get description => 'Zobrazte graf instance';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadCsCz extends _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hello, world!';
	@override String get description => 'Dostaňte výpis "hello world" do Scratchpadu';
}

// Path: misskey.achievements_.types_.open3windows_
class _StringsMisskeyAchievementsTypesOpen3windowsCsCz extends _StringsMisskeyAchievementsTypesOpen3windowsEnUs {
	_StringsMisskeyAchievementsTypesOpen3windowsCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Splitscreen';
	@override String get description => 'Mějte otevřená alespoň 3 okna zároveň';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceCsCz extends _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_StringsMisskeyAchievementsTypesDriveFolderCircularReferenceCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Okružní reference';
	@override String get description => 'Pokuste se o vytvoření rekurzivně vnořené složky v disku';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _StringsMisskeyAchievementsTypesReactWithoutReadCsCz extends _StringsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_StringsMisskeyAchievementsTypesReactWithoutReadCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opravdu jste to četl/a?';
	@override String get description => 'Reagujte na poznámku, která má více než 100 znaků, do 3 sekund od jejího zveřejnění.';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _StringsMisskeyAchievementsTypesClickedClickHereCsCz extends _StringsMisskeyAchievementsTypesClickedClickHereEnUs {
	_StringsMisskeyAchievementsTypesClickedClickHereCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Klikněte sem';
	@override String get description => 'Kliknul si tam';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _StringsMisskeyAchievementsTypesJustPlainLuckyCsCz extends _StringsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_StringsMisskeyAchievementsTypesJustPlainLuckyCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Čisté štěstí';
	@override String get description => 'Mějte šanci na získání s pravděpodobností 0,005 % každých 10 sekund.';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _StringsMisskeyAchievementsTypesSetNameToSyuiloCsCz extends _StringsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_StringsMisskeyAchievementsTypesSetNameToSyuiloCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Boží komplex';
	@override String get description => 'Nastavte si jméno na "syuilo"';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1CsCz extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated1CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Roční výročí';
	@override String get description => 'Od vytvoření vašeho účtu uplynul jeden rok';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2CsCz extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated2CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dvouleté výročí';
	@override String get description => 'Od vytvoření vašeho účtu uplynuly dva roky';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3CsCz extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated3CsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tříleté výročí';
	@override String get description => 'Od vytvoření vašeho účtu uplynuly tři roky';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _StringsMisskeyAchievementsTypesLoggedInOnBirthdayCsCz extends _StringsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnBirthdayCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Všechno nejlepší!';
	@override String get description => 'Přihlašte se v den vašich narozenin';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayCsCz extends _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Štastný nový rok!';
	@override String get description => 'Přihlašte se v den nového roku';
	@override String get flavor => 'Na další skvělý rok v této instanci';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _StringsMisskeyAchievementsTypesCookieClickedCsCz extends _StringsMisskeyAchievementsTypesCookieClickedEnUs {
	_StringsMisskeyAchievementsTypesCookieClickedCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hra, ve které klikáte na sušenky';
	@override String get description => 'Klikněte na soubor cookie';
	@override String get flavor => 'Počkejte, jste na správné webové stránce?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _StringsMisskeyAchievementsTypesBrainDiverCsCz extends _StringsMisskeyAchievementsTypesBrainDiverEnUs {
	_StringsMisskeyAchievementsTypesBrainDiverCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Zveřejněte odkaz na Brain Diver';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.pages_.blocks.note_
class _StringsMisskeyPagesBlocksNoteCsCz extends _StringsMisskeyPagesBlocksNoteEnUs {
	_StringsMisskeyPagesBlocksNoteCsCz._(_StringsCsCz root) : this._root = root, super._(root);

	@override final _StringsCsCz _root; // ignore: unused_field

	// Translations
	@override String get id => 'ID poznámky';
	@override String get idDescription => 'Adresu URL poznámky můžete vložit také sem.';
	@override String get detailed => 'Podrobné zobrazení';
}
