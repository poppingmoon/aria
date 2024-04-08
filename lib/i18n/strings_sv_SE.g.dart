///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint

part of 'strings.g.dart';

// Path: <root>
class _StringsSvSe extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsSvSe.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.svSe,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <sv-SE>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	@override late final _StringsSvSe _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAriaSvSe aria = _StringsAriaSvSe._(_root);
	@override late final _StringsMisskeySvSe misskey = _StringsMisskeySvSe._(_root);
}

// Path: aria
class _StringsAriaSvSe extends _StringsAriaEnUs {
	_StringsAriaSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Är du säker att du vill följa '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria översätts till många olika språk av volontärer. Du kan hjälpa till med översättningen på '),
		link,
		const TextSpan(text: '.'),
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' användare är online'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Omnoterad av '),
		user,
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Är du säker att du vill avfölja '),
		name,
		const TextSpan(text: '?'),
	]);
}

// Path: misskey
class _StringsMisskeySvSe extends _StringsMisskeyEnUs {
	_StringsMisskeySvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Svenska';
	@override String get headlineMisskey => 'Ett nätverk kopplat av noter';
	@override String get introMisskey => 'Välkommen! Misskey är en öppen och decentraliserad mikrobloggningstjänst.\nSkapa en "not" och dela dina tankar med alla runtomkring dig. 📡\nMed "reaktioner" kan du snabbt uttrycka dina känslor kring andras noter. 👍\nLåt oss utforska en ny värld! 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} är en tjänst driven av den öppna källkodsplatformen <b>Misskey</b> (benämns "Misskey instans").';
	@override String monthAndDay({required Object day, required Object month}) => '${day}/${month}';
	@override String get search => 'Sök';
	@override String get notifications => 'Notifikationer';
	@override String get username => 'Användarnamn';
	@override String get password => 'Lösenord';
	@override String get forgotPassword => 'Glömt lösenord';
	@override String get fetchingAsApObject => 'Hämtar från Fediversum...';
	@override String get ok => 'OK';
	@override String get gotIt => 'Uppfattat!';
	@override String get cancel => 'Avbryt';
	@override String get noThankYou => 'Nej tack';
	@override String get enterUsername => 'Ange användarnamn';
	@override String renotedBy({required Object user}) => 'Omnoterad av ${user}';
	@override String get noNotes => 'Inga noteringar';
	@override String get noNotifications => 'Inga notifikationer';
	@override String get instance => 'Instanser';
	@override String get settings => 'Inställningar';
	@override String get notificationSettings => 'Notifieringsinställningar';
	@override String get basicSettings => 'Basinställningar';
	@override String get otherSettings => 'Andra inställningar';
	@override String get openInWindow => 'Öppna i ett fönster';
	@override String get profile => 'Profil';
	@override String get timeline => 'Tidslinje';
	@override String get noAccountDescription => 'Användaren har inte skrivit en biografi än.';
	@override String get login => 'Logga in';
	@override String get loggingIn => 'Loggar in';
	@override String get logout => 'Logga ut';
	@override String get signup => 'Registrera';
	@override String get uploading => 'Laddar upp...';
	@override String get save => 'Spara';
	@override String get users => 'Användare';
	@override String get addUser => 'Lägg till användare';
	@override String get favorite => 'Lägg till i favoriter';
	@override String get favorites => 'Favoriter';
	@override String get unfavorite => 'Ta bort från favoriter';
	@override String get favorited => 'Tillagd i favoriter.';
	@override String get alreadyFavorited => 'Redan tillagd i favoriter.';
	@override String get cantFavorite => 'Gick inte att lägga till i favoriter.';
	@override String get pin => 'Fäst till profil';
	@override String get unpin => 'Lossa från profil';
	@override String get copyContent => 'Kopiera innehåll';
	@override String get copyLink => 'Kopiera länk';
	@override String get delete => 'Radera';
	@override String get deleteAndEdit => 'Radera och ändra';
	@override String get deleteAndEditConfirm => 'Är du säker att du vill radera denna not och ändra den? Du kommer förlora alla reaktioner, omnoteringar och svar till den.';
	@override String get addToList => 'Lägg till i lista';
	@override String get sendMessage => 'Skicka ett meddelande';
	@override String get copyRSS => 'Kopiera RSS';
	@override String get copyUsername => 'Kopiera användarnamn';
	@override String get copyUserId => 'Kopiera användar-ID';
	@override String get copyNoteId => 'Kopiera noter-ID';
	@override String get copyFileId => 'Kopiera Fil-ID';
	@override String get copyFolderId => 'Kopiera mapp-ID';
	@override String get searchUser => 'Sök användare';
	@override String get reply => 'Svara';
	@override String get loadMore => 'Ladda mer';
	@override String get showMore => 'Visa mer';
	@override String get showLess => 'Stäng';
	@override String get youGotNewFollower => 'följde dig';
	@override String get receiveFollowRequest => 'Följarförfrågan mottagen';
	@override String get followRequestAccepted => 'Följarförfrågan accepterad';
	@override String get mention => 'Nämn';
	@override String get mentions => 'Omnämningar';
	@override String get directNotes => 'Direktnoter';
	@override String get importAndExport => 'Importera / Exportera';
	@override String get import => 'Importera';
	@override String get export => 'Exportera';
	@override String get files => 'Filer';
	@override String get download => 'Nedladdning';
	@override String driveFileDeleteConfirm({required Object name}) => 'Är du säker att du vill radera filen "${name}"? Noter med denna fil bifogad kommer också raderas.';
	@override String unfollowConfirm({required Object name}) => 'Är du säker att du vill avfölja ${name}?';
	@override String get exportRequested => 'Du har begärt en export. Detta kan ta lite tid. Den kommer läggas till i din Drive när den blir klar.';
	@override String get importRequested => 'Du har begärt en import. Detta kan ta lite tid.';
	@override String get lists => 'Listor';
	@override String get noLists => 'Du har inga listor';
	@override String get note => 'Not';
	@override String get notes => 'Noter';
	@override String get following => 'Följer';
	@override String get followers => 'Följare';
	@override String get followsYou => 'Följer dig';
	@override String get createList => 'Skapa lista';
	@override String get manageLists => 'Hantera lista';
	@override String get error => 'Fel!';
	@override String get somethingHappened => 'Ett fel har uppstått';
	@override String get retry => 'Försök igen';
	@override String get pageLoadError => 'Det gick inte att ladda sidan.';
	@override String get pageLoadErrorDescription => 'Detta händer oftast p.g.a. nätverksfel eller din webbläsarcache. Försök tömma din cache och testa sedan igen efter en liten stund.';
	@override String get serverIsDead => 'Servern svarar inte. Vänta ett litet tag och försök igen.';
	@override String get youShouldUpgradeClient => 'För att kunna se denna sida, vänligen ladda om sidan för att uppdatera din klient.';
	@override String get enterListName => 'Skriv ett namn till listan';
	@override String get privacy => 'Integritet';
	@override String get makeFollowManuallyApprove => 'Följarförfrågningar kräver manuellt godkännande';
	@override String get defaultNoteVisibility => 'Standardsynlighet';
	@override String get follow => 'Följ';
	@override String get followRequest => 'Skicka följarförfrågan';
	@override String get followRequests => 'Följarförfrågningar';
	@override String get unfollow => 'Avfölj';
	@override String get followRequestPending => 'Följarförfrågning avvaktar för svar';
	@override String get enterEmoji => 'Skriv en emoji';
	@override String get renote => 'Omnotera';
	@override String get unrenote => 'Ta tillbaka omnotering';
	@override String get renoted => 'Omnoterad.';
	@override String get cantRenote => 'Inlägget kunde inte bli omnoterat.';
	@override String get cantReRenote => 'En omnotering kan inte bli omnoterad.';
	@override String get quote => 'Citat';
	@override String get inChannelRenote => 'Omnotera inom kanalen';
	@override String get inChannelQuote => 'I kanal citat';
	@override String get pinnedNote => 'Fästad not';
	@override String get pinned => 'Fäst till profil';
	@override String get you => 'Du';
	@override String get clickToShow => 'Klicka för att visa';
	@override String get sensitive => 'Känsligt innehåll';
	@override String get add => 'Lägg till';
	@override String get reaction => 'Reaktioner';
	@override String get reactions => 'Reaktioner';
	@override String get reactionSettingDescription2 => 'Dra för att omordna, klicka för att radera, tryck "+" för att lägga till.';
	@override String get rememberNoteVisibility => 'Komihåg notvisningsinställningar';
	@override String get attachCancel => 'Ta bort bilaga';
	@override String get markAsSensitive => 'Markera som känsligt innehåll';
	@override String get unmarkAsSensitive => 'Avmarkera som känsligt innehåll';
	@override String get enterFileName => 'Ange filnamn';
	@override String get mute => 'Tysta';
	@override String get unmute => 'Avtysta';
	@override String get block => 'Blockera';
	@override String get unblock => 'Avblockera';
	@override String get suspend => 'Suspendera';
	@override String get unsuspend => 'Ta bort suspenderingen';
	@override String get blockConfirm => 'Är du säker att du vill blockera kontot?';
	@override String get unblockConfirm => 'Är du säkert att du vill avblockera kontot?';
	@override String get suspendConfirm => 'Är du säker att du vill suspendera detta konto?';
	@override String get unsuspendConfirm => 'Är du säker att du vill avsuspendera detta konto?';
	@override String get selectList => 'Välj lista';
	@override String get editList => 'Redigera lista';
	@override String get selectChannel => 'Välj en kanal';
	@override String get selectAntenna => 'Välj en antenn';
	@override String get editAntenna => 'Redigera en antenn';
	@override String get selectWidget => 'Välj en widget';
	@override String get editWidgets => 'Redigera widgets';
	@override String get editWidgetsExit => 'Avsluta redigering';
	@override String get customEmojis => 'Anpassa emoji';
	@override String get emoji => 'Emoji';
	@override String get emojis => 'Emoji';
	@override String get emojiName => 'Emoji namn';
	@override String get emojiUrl => 'Emoji länk';
	@override String get addEmoji => 'Lägg till emoji';
	@override String get settingGuide => 'Rekommenderade inställningar';
	@override String get cacheRemoteFiles => 'Spara externa filer till cachen';
	@override String get cacheRemoteFilesDescription => 'När denna inställning är avstängd kommer externa filer laddas direkt från den externa instansen. Genom att stänga av detta kommer lagringsutrymme minska i användning men kommer öka datatrafiken eftersom miniatyrer inte kommer genereras.';
	@override String get flagAsBot => 'Markera konto som bot';
	@override String get flagAsBotDescription => 'Aktivera det här alternativet om kontot är kontrollerat av ett program. Om aktiverat kommer den fungera som en flagga för andra utvecklare för att hindra ändlösa kedjor med andra bottar. Det kommer också få Misskeys interna system att hantera kontot som en bot.';
	@override String get flagAsCat => 'Markera konto som katt';
	@override String get flagAsCatDescription => 'Aktivera denna inställning för att markera kontot som en katt.';
	@override String get flagShowTimelineReplies => 'Visa svar i tidslinje';
	@override String get flagShowTimelineRepliesDescription => 'Visar användarsvar till andra användares noter i tidslinjen om aktiverad.';
	@override String get autoAcceptFollowed => 'Godkänn följarförfrågningar från användare du följer automatiskt';
	@override String get addAccount => 'Lägg till konto';
	@override String get loginFailed => 'Inloggningen misslyckades';
	@override String get showOnRemote => 'Se på extern instans';
	@override String get general => 'Allmänt';
	@override String get wallpaper => 'Bakgrundsbild';
	@override String get setWallpaper => 'Välj bakgrund';
	@override String get removeWallpaper => 'Ta bort bakgrund';
	@override String searchWith({required Object q}) => 'Sök: ${q}';
	@override String get youHaveNoLists => 'Du har inga listor';
	@override String followConfirm({required Object name}) => 'Är du säker att du vill följa ${name}?';
	@override String get proxyAccount => 'Proxykonto';
	@override String get proxyAccountDescription => 'Ett proxykonto är ett konto som agerar som en extern följare för användare under vissa villkor. Till exempel, när en användare lägger till en extern användare till en lista så kommer den externa användarens aktivitet inte levireras till instansen om ingen lokal användare följer det kontot, så proxykontot används istället.';
	@override String get host => 'Värd';
	@override String get selectUser => 'Välj användare';
	@override String get recipient => 'Mottagare';
	@override String get annotation => 'Kommentarer';
	@override String get federation => 'Federation';
	@override String get instances => 'Instanser';
	@override String get registeredAt => 'Registrerad på';
	@override String get latestRequestReceivedAt => 'Senaste begäran mottagen';
	@override String get latestStatus => 'Senaste status';
	@override String get storageUsage => 'Använt lagringsutrymme';
	@override String get charts => 'Diagram';
	@override String get perHour => 'Per timme';
	@override String get perDay => 'Per dag';
	@override String get stopActivityDelivery => 'Sluta skicka aktiviteter';
	@override String get blockThisInstance => 'Blockera instans';
	@override String get operations => 'Operationer';
	@override String get software => 'Mjukvara';
	@override String get version => 'Version';
	@override String get metadata => 'Metadata';
	@override String withNFiles({required Object n}) => '${n} fil(er)';
	@override String get monitor => 'Övervakning';
	@override String get jobQueue => 'Jobbkö';
	@override String get cpuAndMemory => 'CPU och minne';
	@override String get network => 'Nätverk';
	@override String get disk => 'Disk';
	@override String get instanceInfo => 'Instansinformation';
	@override String get statistics => 'Statistik';
	@override String get clearQueue => 'Rensa kö';
	@override String get clearQueueConfirmTitle => 'Är du säker att du vill rensa kön?';
	@override String get clearQueueConfirmText => 'Om någon not är olevererad i kön kommer den inte federeras. Vanligtvis behövs inte denna handling.';
	@override String get clearCachedFiles => 'Rensa cache';
	@override String get clearCachedFilesConfirm => 'Är du säker att du vill radera alla cachade externa filer?';
	@override String get blockedInstances => 'Blockerade instanser';
	@override String get blockedInstancesDescription => 'Lista adressnamn av instanser som du vill blockera. Listade instanser kommer inte längre kommunicera med denna instans.';
	@override String get muteAndBlock => 'Tystningar och blockeringar';
	@override String get mutedUsers => 'Tystade användare';
	@override String get blockedUsers => 'Blockerade användare';
	@override String get noUsers => 'Det finns inga användare';
	@override String get editProfile => 'Redigera profil';
	@override String get noteDeleteConfirm => 'Är du säker på att du vill ta bort denna not?';
	@override String get pinLimitExceeded => 'Du kan inte fästa fler noter';
	@override String get intro => 'Misskey har installerats! Vänligen skapa en adminanvändare.';
	@override String get done => 'Klar';
	@override String get processing => 'Bearbetar...';
	@override String get preview => 'Förhandsvisning';
	@override String get default_ => 'Standard';
	@override String defaultValueIs({required Object value}) => 'Standard: ${value}';
	@override String get noCustomEmojis => 'Det finns ingen emoji';
	@override String get noJobs => 'Det finns inga jobb';
	@override String get federating => 'Federerar';
	@override String get blocked => 'Blockerad';
	@override String get suspended => 'Suspenderad';
	@override String get all => 'Allt';
	@override String get subscribing => 'Prenumererar';
	@override String get publishing => 'Publiceras';
	@override String get notResponding => 'Svarar inte';
	@override String get instanceFollowing => 'Följer på instans';
	@override String get instanceFollowers => 'Följare av instans';
	@override String get instanceUsers => 'Användare av denna instans';
	@override String get changePassword => 'Ändra lösenord';
	@override String get security => 'Säkerhet';
	@override String get retypedNotMatch => 'Inmatningen matchar inte';
	@override String get currentPassword => 'Nuvarande lösenord';
	@override String get newPassword => 'Nytt lösenord';
	@override String get newPasswordRetype => 'Bekräfta lösenord';
	@override String get attachFile => 'Bifoga filer';
	@override String get more => 'Mer!';
	@override String get featured => 'Utvalda';
	@override String get usernameOrUserId => 'Användarnamn eller användar-id';
	@override String get noSuchUser => 'Kan inte hitta användaren';
	@override String get lookup => 'Sökning';
	@override String get announcements => 'Nyheter';
	@override String get imageUrl => 'Bild-URL';
	@override String get remove => 'Radera';
	@override String get removed => 'Borttaget';
	@override String removeAreYouSure({required Object x}) => 'Är du säker att du vill radera "${x}"?';
	@override String deleteAreYouSure({required Object x}) => 'Är du säker att du vill radera "${x}"?';
	@override String get resetAreYouSure => 'Vill du återställa?';
	@override String get saved => 'Sparad';
	@override String get messaging => 'Chatt';
	@override String get upload => 'Ladda upp';
	@override String get keepOriginalUploading => 'Behåll originalbild';
	@override String get keepOriginalUploadingDescription => 'Sparar den originellt uppladdade bilden i sitt i befintliga skick. Om avstängd, kommer en webbversion bli genererad vid uppladdning.';
	@override String get fromDrive => 'Från Drive';
	@override String get fromUrl => 'Från en länk';
	@override String get uploadFromUrl => 'Ladda upp från länk';
	@override String get uploadFromUrlDescription => 'Länken av filen du vill ladda upp';
	@override String get uploadFromUrlRequested => 'Uppladdning begärd';
	@override String get uploadFromUrlMayTakeTime => 'Det kan ta tid tills att uppladdningen blir klar.';
	@override String get explore => 'Utforska';
	@override String get messageRead => 'Läs';
	@override String get noMoreHistory => 'Det finns ingen mer historik';
	@override String get startMessaging => 'Starta en chatt';
	@override String nUsersRead({required Object n}) => 'läst av ${n}';
	@override String agreeTo({required Object x0}) => 'Jag accepterar ${x0}';
	@override String get agree => 'Överens';
	@override String get termsOfService => 'Användarvillkor';
	@override String get start => 'Kom igång';
	@override String get home => 'Hem';
	@override String get remoteUserCaution => 'Då denna användaren kommer från en fjärrinstans, kan informationen visad vara ofullständig.';
	@override String get activity => 'Aktivitet';
	@override String get images => 'Bilder';
	@override String get image => 'Bilder';
	@override String get birthday => 'Födelsedag';
	@override String yearsOld({required Object age}) => '${age} år gammal';
	@override String get registeredDate => 'Gick med';
	@override String get location => 'Plats';
	@override String get theme => 'Teman';
	@override String get themeForLightMode => 'Tema att använda i Ljust Läge';
	@override String get themeForDarkMode => 'Tema att använda i Mörkt Läge';
	@override String get light => 'Ljust';
	@override String get dark => 'Mörk';
	@override String get lightThemes => 'Ljusa teman';
	@override String get darkThemes => 'Mörka teman';
	@override String get syncDeviceDarkMode => 'Synka Mörkt Läge med din enhets inställningar';
	@override String get drive => 'Drive';
	@override String get fileName => 'Filnamn';
	@override String get selectFile => 'Välj en fil';
	@override String get selectFiles => 'Välj filer';
	@override String get selectFolder => 'Välj en mapp';
	@override String get selectFolders => 'Välj mappar';
	@override String get renameFile => 'Byt namn på filen';
	@override String get folderName => 'Mappnamn';
	@override String get createFolder => 'Skapa en mapp';
	@override String get renameFolder => 'Byt namn på mappen';
	@override String get deleteFolder => 'Ta bort mappen';
	@override String get addFile => 'Lägg till fil';
	@override String get emptyDrive => 'Din Drive är tom';
	@override String get emptyFolder => 'Denna mappen är tom';
	@override String get unableToDelete => 'Kunde inte ta bort';
	@override String get inputNewFileName => 'Ange nytt filnamn';
	@override String get inputNewDescription => 'Ange ny bildtext';
	@override String get inputNewFolderName => 'Ange nytt mappnamn';
	@override String get circularReferenceFolder => 'Destinationsmappen är en undermapp av mappen du vill flytta.';
	@override String get hasChildFilesOrFolders => 'Då denna mappen inte är tom, kan den inte tas bort.';
	@override String get copyUrl => 'Kopiera URL';
	@override String get rename => 'Byt namn';
	@override String get avatar => 'Profilbild';
	@override String get banner => 'Banner';
	@override String get reload => 'Ladda om';
	@override String get doNothing => 'Ignorera';
	@override String get reloadConfirm => 'Vill du ladda om tidslinjen?';
	@override String get watch => 'Titta';
	@override String get accept => 'Tillåt';
	@override String get reject => 'Neka';
	@override String get normal => 'Normal';
	@override String get instanceName => 'Instansnamn';
	@override String get instanceDescription => 'Instansbeskrivning';
	@override String get maintainerEmail => 'Administratörens epost';
	@override String get tosUrl => 'URL till användarvillkår';
	@override String get thisYear => 'Detta året';
	@override String get thisMonth => 'Denna månaden';
	@override String get today => 'Idag';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => '${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'Sidor';
	@override String get integration => 'Integrationer';
	@override String get connectService => 'Anslut';
	@override String get disconnectService => 'Koppla från';
	@override String get enableLocalTimeline => 'Aktivera lokal tidslinje';
	@override String get enableGlobalTimeline => 'Aktivera global tidslinje';
	@override String get registration => 'Registrera';
	@override String get enableRegistration => 'Aktivera registrering av nya användare';
	@override String get invite => 'Inbjudan';
	@override String get inMb => 'I megabyte';
	@override String get bannerUrl => 'URL till banner-bilden';
	@override String get basicInfo => 'Grundläggande info';
	@override String get pinnedUsers => 'Fästa användare';
	@override String get pinnedPages => 'Fästa sidor';
	@override String get pinnedNotes => 'Fästad not';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'Aktivera hCaptcha';
	@override String get hcaptchaSiteKey => 'Webbplatsnyckel';
	@override String get hcaptchaSecretKey => 'Hemlig nyckel';
	@override String get mcaptchaSiteKey => 'Webbplatsnyckel';
	@override String get mcaptchaSecretKey => 'Hemlig nyckel';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'Aktivera reCAPTCHA';
	@override String get recaptchaSiteKey => 'Webbplatsnyckel';
	@override String get recaptchaSecretKey => 'Hemlig nyckel';
	@override String get turnstile => 'Turnstile';
	@override String get enableTurnstile => 'Aktivera Turnstile';
	@override String get turnstileSiteKey => 'Webbplatsnyckel';
	@override String get turnstileSecretKey => 'Hemlig nyckel';
	@override String get antennas => 'Antenner';
	@override String get manageAntennas => 'Hantera Antenner';
	@override String get name => 'Namn';
	@override String get antennaSource => 'Antennkälla';
	@override String get antennaKeywords => 'Nyckelord att lyssna efter';
	@override String get antennaExcludeKeywords => 'Nyckelord att exkludera';
	@override String get antennaKeywordsDescription => 'Separera med mellanslag för en AND kondition, eller med nya linjer för en OR kondition';
	@override String get notifyAntenna => 'Notifiera om nya noter';
	@override String get withFileAntenna => 'Endast noter med filer';
	@override String get enableServiceworker => 'Aktivera pushnotiser i denna webbläsaren';
	@override String get antennaUsersDescription => 'Ange ett användarnamn per linje';
	@override String get withReplies => 'Med svar';
	@override String get notesAndReplies => 'Inlägg och svar';
	@override String get silence => 'Tystnad';
	@override String get recentlyUpdatedUsers => 'Nyligen aktiva användare';
	@override String get recentlyRegisteredUsers => 'Nyligen registrerade användare';
	@override String get exploreFediverse => 'Utforska Fediverse';
	@override String get popularTags => 'Populära taggar';
	@override String get userList => 'Listor';
	@override String get about => 'Om';
	@override String get aboutMisskey => 'Om Misskey';
	@override String get administrator => 'Administratör';
	@override String get x2fa => 'Tvåfaktorsautentisering';
	@override String get totp => 'Autentiseringsapp';
	@override String get moderator => 'Moderator';
	@override String get passwordLessLogin => 'Lösenordsfri inloggning';
	@override String get passwordLessLoginDescription => 'Tillåter lösenordsfri inloggning med endast en säkerhetsnyckel eller en passkey.';
	@override String get resetPassword => 'Återställ Lösenord';
	@override String newPasswordIs({required Object password}) => 'Det nya lösenordet är "${password}"';
	@override String get share => 'Dela';
	@override String get help => 'Hjälp';
	@override String get close => 'Stäng';
	@override String get invites => 'Inbjudan';
	@override String get members => 'Medlemmar';
	@override String get transfer => 'Överför';
	@override String get text => 'Text';
	@override String get enable => 'Aktivera';
	@override String get next => 'Nästa';
	@override String get invitations => 'Inbjudan';
	@override String get invitationCode => 'Inbjudningskod';
	@override String get available => 'Tillgängligt';
	@override String get weakPassword => 'Svagt Lösenord';
	@override String get normalPassword => 'Medel Lösenord';
	@override String get strongPassword => 'Starkt Lösenord';
	@override String get signinFailed => 'Kan inte logga in. Det angivna användarnamnet eller lösenordet är felaktigt.';
	@override String get or => 'eller';
	@override String get language => 'Språk';
	@override String aboutX({required Object x}) => 'Om ${x}';
	@override String get category => 'Kategori';
	@override String get tags => 'Taggar';
	@override String get createAccount => 'Skapa ett konto';
	@override String get existingAccount => 'Existerande konto';
	@override String get regenerate => 'Regenerera';
	@override String get fontSize => 'Textstorlek';
	@override String get openImageInNewTab => 'Öppna bild i ny flik';
	@override String get clientSettings => 'Klientinställningar';
	@override String get accountSettings => 'Kontoinställningar';
	@override String get numberOfDays => 'Antal dagar';
	@override String get deleteAll => 'Radera alla';
	@override String get sounds => 'Ljud';
	@override String get sound => 'Ljud';
	@override String get listen => 'Lyssna';
	@override String get none => 'Ingen';
	@override String get volume => 'Volym';
	@override String get chooseEmoji => 'Välj en emoji';
	@override String get recentUsed => 'Senast använd';
	@override String get install => 'Installera';
	@override String get uninstall => 'Avinstallera';
	@override String get menu => 'Meny';
	@override String get serviceworkerInfo => 'Måste vara aktiverad för pushnotiser.';
	@override String get enableInfiniteScroll => 'Ladda mer automatiskt';
	@override String get enablePlayer => 'Öppna videospelare';
	@override String get permission => 'Behörigheter';
	@override String get enableAll => 'Aktivera alla';
	@override String get edit => 'Ändra';
	@override String get enableEmail => 'Aktivera epost-utskick';
	@override String get email => 'E-post';
	@override String get smtpHost => 'Värd';
	@override String get smtpUser => 'Användarnamn';
	@override String get smtpPass => 'Lösenord';
	@override String get emptyToDisableSmtpAuth => 'Lämna användarnamn och lösenord tomt för att avaktivera SMTP verifiering';
	@override String get logs => 'Logg';
	@override String get channel => 'kanal';
	@override String get create => 'Skapa';
	@override String get other => 'Mer';
	@override String get send => 'Skicka';
	@override String get openInNewTab => 'Öppna i ny flik';
	@override String get createNew => 'Skapa ny';
	@override String i18nInfo({required Object link}) => 'Misskey översätts till många olika språk av volontärer. Du kan hjälpa till med översättningen på ${link}.';
	@override String get accountInfo => 'Kontoinformation';
	@override String get clips => 'Klipp';
	@override String get duplicate => 'Duplicera';
	@override String get reloadToApplySetting => 'Inställningen tillämpas efter sidan laddas om. Vill du göra det nu?';
	@override String get clearCache => 'Rensa cache';
	@override String onlineUsersCount({required Object n}) => '${n} användare är online';
	@override String nNotes({required Object n}) => '${n} Noter';
	@override String get backgroundColor => 'Bakgrundsbild';
	@override String get textColor => 'Text';
	@override String get youAreRunningUpToDateClient => 'Klienten du använder är uppdaterat.';
	@override String get newVersionOfClientAvailable => 'Ny version av klienten är tillgänglig.';
	@override String get publish => 'Publicera';
	@override String typingUsers({required Object users}) => '${users} skriver';
	@override String get info => 'Om';
	@override String get enabled => 'Aktiverad';
	@override String get user => 'Användare';
	@override String get customCssWarn => 'Den här inställningen borde bara ändrats av en som har rätta kunskaper. Om du ställer in det här fel så kan klienten sluta fungera rätt.';
	@override String get global => 'Global';
	@override String get squareAvatars => 'Visa fyrkantiga profilbilder';
	@override String get sent => 'Skicka';
	@override String get misskeyUpdated => 'Misskey har uppdaterats!';
	@override String get incorrectPassword => 'Fel lösenord.';
	@override String welcomeBackWithName({required Object name}) => 'Välkommen tillbaka, ${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => 'Tryck på [${ok}] för att slutföra bekräftelsen på e-postadressen.';
	@override String get searchByGoogle => 'Sök';
	@override String get file => 'Filer';
	@override String get cannotUploadBecauseNoFreeSpace => 'Kan inte ladda upp filen för att det finns inget lagringsutrymme kvar.';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'Kan inte ladda upp filen för att den är större än filstorleksgränsen.';
	@override String get enableAutoSensitive => 'Automatisk NSFW markering';
	@override String get enableAutoSensitiveDescription => 'Tillåter automatiskt detektering och marketing av NSFW media genom Maskininlärning när möjligt. Även om denna inställningen är avaktiverad, kan det vara aktiverat på hela instansen.';
	@override String get pushNotification => 'Pushnotiser';
	@override String get subscribePushNotification => 'Aktivera pushnotiser';
	@override String get unsubscribePushNotification => 'Avaktivera pushnotiser';
	@override String get pushNotificationAlreadySubscribed => 'Pushnotiser är redan aktiverade';
	@override String get pushNotificationNotSupported => 'Din webbläsare eller instans har inte stöd för pushnotiser';
	@override String get windowMaximize => 'Maximera';
	@override String get windowMinimize => 'Minimera';
	@override String get windowRestore => 'Återställ';
	@override String pleaseDonate({required Object host}) => 'Misskey är en gratis programvara som används på ${host}. Donera gärna för att göra utvecklingen ständigt, tack!';
	@override String get resetPasswordConfirm => 'Återställ verkligen ditt lösenord?';
	@override String get dataSaver => 'Databesparing';
	@override String get icon => 'Profilbild';
	@override String get replies => 'Svara';
	@override String get renotes => 'Omnotera';
	@override late final _StringsMisskeyAchievementsSvSe achievements_ = _StringsMisskeyAchievementsSvSe._(_root);
	@override late final _StringsMisskeyFfVisibilitySvSe ffVisibility_ = _StringsMisskeyFfVisibilitySvSe._(_root);
	@override late final _StringsMisskeyEmailSvSe email_ = _StringsMisskeyEmailSvSe._(_root);
	@override late final _StringsMisskeyChannelSvSe channel_ = _StringsMisskeyChannelSvSe._(_root);
	@override late final _StringsMisskeyThemeSvSe theme_ = _StringsMisskeyThemeSvSe._(_root);
	@override late final _StringsMisskeySfxSvSe sfx_ = _StringsMisskeySfxSvSe._(_root);
	@override late final _StringsMisskeyX2faSvSe x2fa_ = _StringsMisskeyX2faSvSe._(_root);
	@override late final _StringsMisskeyAntennaSourcesSvSe antennaSources_ = _StringsMisskeyAntennaSourcesSvSe._(_root);
	@override late final _StringsMisskeyWidgetsSvSe widgets_ = _StringsMisskeyWidgetsSvSe._(_root);
	@override late final _StringsMisskeyCwSvSe cw_ = _StringsMisskeyCwSvSe._(_root);
	@override late final _StringsMisskeyVisibilitySvSe visibility_ = _StringsMisskeyVisibilitySvSe._(_root);
	@override late final _StringsMisskeyProfileSvSe profile_ = _StringsMisskeyProfileSvSe._(_root);
	@override late final _StringsMisskeyExportOrImportSvSe exportOrImport_ = _StringsMisskeyExportOrImportSvSe._(_root);
	@override late final _StringsMisskeyChartsSvSe charts_ = _StringsMisskeyChartsSvSe._(_root);
	@override late final _StringsMisskeyTimelinesSvSe timelines_ = _StringsMisskeyTimelinesSvSe._(_root);
	@override late final _StringsMisskeyPagesSvSe pages_ = _StringsMisskeyPagesSvSe._(_root);
	@override late final _StringsMisskeyNotificationSvSe notification_ = _StringsMisskeyNotificationSvSe._(_root);
	@override late final _StringsMisskeyDeckSvSe deck_ = _StringsMisskeyDeckSvSe._(_root);
	@override late final _StringsMisskeyWebhookSettingsSvSe webhookSettings_ = _StringsMisskeyWebhookSettingsSvSe._(_root);
	@override late final _StringsMisskeyModerationLogTypesSvSe moderationLogTypes_ = _StringsMisskeyModerationLogTypesSvSe._(_root);
}

// Path: misskey.achievements_
class _StringsMisskeyAchievementsSvSe extends _StringsMisskeyAchievementsEnUs {
	_StringsMisskeyAchievementsSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAchievementsTypesSvSe types_ = _StringsMisskeyAchievementsTypesSvSe._(_root);
}

// Path: misskey.ffVisibility_
class _StringsMisskeyFfVisibilitySvSe extends _StringsMisskeyFfVisibilityEnUs {
	_StringsMisskeyFfVisibilitySvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get public => 'Publicera';
}

// Path: misskey.email_
class _StringsMisskeyEmailSvSe extends _StringsMisskeyEmailEnUs {
	_StringsMisskeyEmailSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyEmailFollowSvSe follow_ = _StringsMisskeyEmailFollowSvSe._(_root);
}

// Path: misskey.channel_
class _StringsMisskeyChannelSvSe extends _StringsMisskeyChannelEnUs {
	_StringsMisskeyChannelSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get setBanner => 'Välj banner';
	@override String get removeBanner => 'Ta bort banner';
}

// Path: misskey.theme_
class _StringsMisskeyThemeSvSe extends _StringsMisskeyThemeEnUs {
	_StringsMisskeyThemeSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyThemeKeysSvSe keys = _StringsMisskeyThemeKeysSvSe._(_root);
}

// Path: misskey.sfx_
class _StringsMisskeySfxSvSe extends _StringsMisskeySfxEnUs {
	_StringsMisskeySfxSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get note => 'Noter';
	@override String get notification => 'Notifikationer';
	@override String get antenna => 'Antenner';
}

// Path: misskey.x2fa_
class _StringsMisskeyX2faSvSe extends _StringsMisskeyX2faEnUs {
	_StringsMisskeyX2faSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get renewTOTPCancel => 'Nej tack';
}

// Path: misskey.antennaSources_
class _StringsMisskeyAntennaSourcesSvSe extends _StringsMisskeyAntennaSourcesEnUs {
	_StringsMisskeyAntennaSourcesSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get all => 'Alla noter';
	@override String get homeTimeline => 'Noter från följda användare';
	@override String get users => 'Noter från specifika användare';
	@override String get userList => 'Noter från en specificerad lista av användare';
}

// Path: misskey.widgets_
class _StringsMisskeyWidgetsSvSe extends _StringsMisskeyWidgetsEnUs {
	_StringsMisskeyWidgetsSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Profil';
	@override String get instanceInfo => 'Instansinformation';
	@override String get notifications => 'Notifikationer';
	@override String get timeline => 'Tidslinje';
	@override String get activity => 'Aktivitet';
	@override String get federation => 'Federation';
	@override String get jobQueue => 'Jobbkö';
	@override late final _StringsMisskeyWidgetsUserListSvSe userList_ = _StringsMisskeyWidgetsUserListSvSe._(_root);
}

// Path: misskey.cw_
class _StringsMisskeyCwSvSe extends _StringsMisskeyCwEnUs {
	_StringsMisskeyCwSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get show => 'Ladda mer';
}

// Path: misskey.visibility_
class _StringsMisskeyVisibilitySvSe extends _StringsMisskeyVisibilityEnUs {
	_StringsMisskeyVisibilitySvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get home => 'Hem';
	@override String get followers => 'Följare';
}

// Path: misskey.profile_
class _StringsMisskeyProfileSvSe extends _StringsMisskeyProfileEnUs {
	_StringsMisskeyProfileSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Namn';
	@override String get username => 'Användarnamn';
	@override String get changeAvatar => 'Ändra profilbild';
	@override String get changeBanner => 'Ändra banner';
}

// Path: misskey.exportOrImport_
class _StringsMisskeyExportOrImportSvSe extends _StringsMisskeyExportOrImportEnUs {
	_StringsMisskeyExportOrImportSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Alla noter';
	@override String get followingList => 'Följer';
	@override String get muteList => 'Tysta';
	@override String get blockingList => 'Blockera';
	@override String get userLists => 'Listor';
}

// Path: misskey.charts_
class _StringsMisskeyChartsSvSe extends _StringsMisskeyChartsEnUs {
	_StringsMisskeyChartsSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Federation';
}

// Path: misskey.timelines_
class _StringsMisskeyTimelinesSvSe extends _StringsMisskeyTimelinesEnUs {
	_StringsMisskeyTimelinesSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get home => 'Hem';
	@override String get global => 'Global';
}

// Path: misskey.pages_
class _StringsMisskeyPagesSvSe extends _StringsMisskeyPagesEnUs {
	_StringsMisskeyPagesSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyPagesBlocksSvSe blocks = _StringsMisskeyPagesBlocksSvSe._(_root);
}

// Path: misskey.notification_
class _StringsMisskeyNotificationSvSe extends _StringsMisskeyNotificationEnUs {
	_StringsMisskeyNotificationSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get youWereFollowed => 'följde dig';
	@override String unreadAntennaNote({required Object name}) => 'Antenn ${name}';
	@override late final _StringsMisskeyNotificationTypesSvSe types_ = _StringsMisskeyNotificationTypesSvSe._(_root);
	@override late final _StringsMisskeyNotificationActionsSvSe actions_ = _StringsMisskeyNotificationActionsSvSe._(_root);
}

// Path: misskey.deck_
class _StringsMisskeyDeckSvSe extends _StringsMisskeyDeckEnUs {
	_StringsMisskeyDeckSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyDeckColumnsSvSe columns_ = _StringsMisskeyDeckColumnsSvSe._(_root);
}

// Path: misskey.webhookSettings_
class _StringsMisskeyWebhookSettingsSvSe extends _StringsMisskeyWebhookSettingsEnUs {
	_StringsMisskeyWebhookSettingsSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Namn';
	@override String get active => 'Aktiverad';
}

// Path: misskey.moderationLogTypes_
class _StringsMisskeyModerationLogTypesSvSe extends _StringsMisskeyModerationLogTypesEnUs {
	_StringsMisskeyModerationLogTypesSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'Suspendera';
	@override String get resetPassword => 'Återställ Lösenord';
}

// Path: misskey.achievements_.types_
class _StringsMisskeyAchievementsTypesSvSe extends _StringsMisskeyAchievementsTypesEnUs {
	_StringsMisskeyAchievementsTypesSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAchievementsTypesOpen3windowsSvSe open3windows_ = _StringsMisskeyAchievementsTypesOpen3windowsSvSe._(_root);
}

// Path: misskey.email_.follow_
class _StringsMisskeyEmailFollowSvSe extends _StringsMisskeyEmailFollowEnUs {
	_StringsMisskeyEmailFollowSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get title => 'följde dig';
}

// Path: misskey.theme_.keys
class _StringsMisskeyThemeKeysSvSe extends _StringsMisskeyThemeKeysEnUs {
	_StringsMisskeyThemeKeysSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get mention => 'Nämn';
	@override String get renote => 'Omnotera';
}

// Path: misskey.widgets_.userList_
class _StringsMisskeyWidgetsUserListSvSe extends _StringsMisskeyWidgetsUserListEnUs {
	_StringsMisskeyWidgetsUserListSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Välj lista';
}

// Path: misskey.pages_.blocks
class _StringsMisskeyPagesBlocksSvSe extends _StringsMisskeyPagesBlocksEnUs {
	_StringsMisskeyPagesBlocksSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get image => 'Bilder';
}

// Path: misskey.notification_.types_
class _StringsMisskeyNotificationTypesSvSe extends _StringsMisskeyNotificationTypesEnUs {
	_StringsMisskeyNotificationTypesSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Följer';
	@override String get mention => 'Nämn';
	@override String get renote => 'Omnotera';
	@override String get quote => 'Citat';
	@override String get reaction => 'Reaktioner';
}

// Path: misskey.notification_.actions_
class _StringsMisskeyNotificationActionsSvSe extends _StringsMisskeyNotificationActionsEnUs {
	_StringsMisskeyNotificationActionsSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get reply => 'Svara';
	@override String get renote => 'Omnotera';
}

// Path: misskey.deck_.columns_
class _StringsMisskeyDeckColumnsSvSe extends _StringsMisskeyDeckColumnsEnUs {
	_StringsMisskeyDeckColumnsSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Notifikationer';
	@override String get tl => 'Tidslinje';
	@override String get antenna => 'Antenner';
	@override String get list => 'Listor';
	@override String get channel => 'kanal';
	@override String get mentions => 'Omnämningar';
}

// Path: misskey.achievements_.types_.open3windows_
class _StringsMisskeyAchievementsTypesOpen3windowsSvSe extends _StringsMisskeyAchievementsTypesOpen3windowsEnUs {
	_StringsMisskeyAchievementsTypesOpen3windowsSvSe._(_StringsSvSe root) : this._root = root, super._(root);

	@override final _StringsSvSe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Flera Fönster';
	@override String get description => 'Ha minst 3 fönster öppna samtidigt';
}
