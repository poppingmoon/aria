///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsSvSe extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsSvSe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.svSe,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <sv-SE>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsSvSe _root = this; // ignore: unused_field

	@override 
	TranslationsSvSe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsSvSe(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAriaSvSe aria = _TranslationsAriaSvSe._(_root);
	@override late final _TranslationsMisskeySvSe misskey = _TranslationsMisskeySvSe._(_root);
}

// Path: aria
class _TranslationsAriaSvSe extends TranslationsAriaEnUs {
	_TranslationsAriaSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

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
class _TranslationsMisskeySvSe extends TranslationsMisskeyEnUs {
	_TranslationsMisskeySvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

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
	@override String get markAsReadAllTalkMessages => 'Markera alla meddelanden som lästa';
	@override String get help => 'Hjälp';
	@override String get close => 'Stäng';
	@override String get invites => 'Inbjudan';
	@override String get members => 'Medlemmar';
	@override String get transfer => 'Överför';
	@override String get text => 'Text';
	@override String get enable => 'Aktivera';
	@override String get next => 'Nästa';
	@override String get retype => 'Ange igen';
	@override String get invitations => 'Inbjudan';
	@override String get invitationCode => 'Inbjudningskod';
	@override String get available => 'Tillgängligt';
	@override String get weakPassword => 'Svagt Lösenord';
	@override String get normalPassword => 'Medel Lösenord';
	@override String get strongPassword => 'Starkt Lösenord';
	@override String signinWith({required Object x}) => 'Logga in med ${x}';
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
	@override String get appearance => 'Utseende';
	@override String get clientSettings => 'Klientinställningar';
	@override String get accountSettings => 'Kontoinställningar';
	@override String get numberOfDays => 'Antal dagar';
	@override String get objectStorageUseSSL => 'Använd SSL';
	@override String get serverLogs => 'Serverloggar';
	@override String get deleteAll => 'Radera alla';
	@override String get sounds => 'Ljud';
	@override String get sound => 'Ljud';
	@override String get listen => 'Lyssna';
	@override String get none => 'Ingen';
	@override String get volume => 'Volym';
	@override String get notUseSound => 'Inaktivera ljud';
	@override String get chooseEmoji => 'Välj en emoji';
	@override String get recentUsed => 'Senast använd';
	@override String get install => 'Installera';
	@override String get uninstall => 'Avinstallera';
	@override String get deleteAllFiles => 'Radera alla filer';
	@override String get deleteAllFilesConfirm => 'Är du säker på att du vill radera alla filer?';
	@override String get menu => 'Meny';
	@override String get addItem => 'Lägg till objekt';
	@override String get serviceworkerInfo => 'Måste vara aktiverad för pushnotiser.';
	@override String get enableInfiniteScroll => 'Ladda mer automatiskt';
	@override String get enablePlayer => 'Öppna videospelare';
	@override String get description => 'Beskrivning';
	@override String get permission => 'Behörigheter';
	@override String get enableAll => 'Aktivera alla';
	@override String get disableAll => 'Inaktivera alla';
	@override String get edit => 'Ändra';
	@override String get enableEmail => 'Aktivera epost-utskick';
	@override String get email => 'E-post';
	@override String get emailAddress => 'E-postadress';
	@override String get smtpHost => 'Värd';
	@override String get smtpUser => 'Användarnamn';
	@override String get smtpPass => 'Lösenord';
	@override String get emptyToDisableSmtpAuth => 'Lämna användarnamn och lösenord tomt för att avaktivera SMTP verifiering';
	@override String get makeActive => 'Aktivera';
	@override String get copy => 'Kopiera';
	@override String get overview => 'Översikt';
	@override String get logs => 'Logg';
	@override String get database => 'Databas';
	@override String get channel => 'kanal';
	@override String get create => 'Skapa';
	@override String get other => 'Mer';
	@override String get abuseReports => 'Rapporter';
	@override String get reportAbuse => 'Rapporter';
	@override String reportAbuseOf({required Object name}) => 'Rapportera ${name}';
	@override String get abuseReported => 'Din rapport har skickats. Tack så mycket.';
	@override String get send => 'Skicka';
	@override String get openInNewTab => 'Öppna i ny flik';
	@override String get createNew => 'Skapa ny';
	@override String get private => 'Privat';
	@override String i18nInfo({required Object link}) => 'Misskey översätts till många olika språk av volontärer. Du kan hjälpa till med översättningen på ${link}.';
	@override String get accountInfo => 'Kontoinformation';
	@override String get followersCount => 'Antal följare';
	@override String get yes => 'Ja';
	@override String get no => 'Nej';
	@override String get clips => 'Klipp';
	@override String get duplicate => 'Duplicera';
	@override String get reloadToApplySetting => 'Inställningen tillämpas efter sidan laddas om. Vill du göra det nu?';
	@override String get clearCache => 'Rensa cache';
	@override String onlineUsersCount({required Object n}) => '${n} användare är online';
	@override String nUsers({required Object n}) => '${n} användare';
	@override String nNotes({required Object n}) => '${n} Noter';
	@override String get backgroundColor => 'Bakgrundsbild';
	@override String get textColor => 'Text';
	@override String get saveAs => 'Spara som...';
	@override String get saveConfirm => 'Spara ändringar?';
	@override String get youAreRunningUpToDateClient => 'Klienten du använder är uppdaterat.';
	@override String get newVersionOfClientAvailable => 'Ny version av klienten är tillgänglig.';
	@override String get editCode => 'Redigera kod';
	@override String get publish => 'Publicera';
	@override String typingUsers({required Object users}) => '${users} skriver';
	@override String get goBack => 'Tillbaka';
	@override String get addDescription => 'Lägg till beskrivning';
	@override String get info => 'Om';
	@override String get online => 'Online';
	@override String get active => 'Aktiv';
	@override String get offline => 'Offline';
	@override String get enabled => 'Aktiverad';
	@override String get quickAction => 'Snabbåtgärder';
	@override String get user => 'Användare';
	@override String get gallery => 'Galleri';
	@override String get popularPosts => 'Populära inlägg';
	@override String get customCssWarn => 'Den här inställningen borde bara ändrats av en som har rätta kunskaper. Om du ställer in det här fel så kan klienten sluta fungera rätt.';
	@override String get global => 'Global';
	@override String get squareAvatars => 'Visa fyrkantiga profilbilder';
	@override String get sent => 'Skicka';
	@override String get searchResult => 'Sökresultat';
	@override String get learnMore => 'Läs mer';
	@override String get misskeyUpdated => 'Misskey har uppdaterats!';
	@override String get translate => 'Översätt';
	@override String get controlPanel => 'Kontrollpanel';
	@override String get manageAccounts => 'Hantera konton';
	@override String get incorrectPassword => 'Fel lösenord.';
	@override String get hide => 'Dölj';
	@override String welcomeBackWithName({required Object name}) => 'Välkommen tillbaka, ${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => 'Tryck på [${ok}] för att slutföra bekräftelsen på e-postadressen.';
	@override String get size => 'Storlek';
	@override String get searchByGoogle => 'Sök';
	@override String get indefinitely => 'Aldrig';
	@override String get tenMinutes => '10 minuter';
	@override String get oneHour => 'En timme';
	@override String get oneDay => 'En dag';
	@override String get oneWeek => 'En vecka';
	@override String get oneMonth => 'En månad';
	@override String get threeMonths => '3 månader';
	@override String get oneYear => '1 år';
	@override String get threeDays => '3 dagar';
	@override String get file => 'Filer';
	@override String get deleteAccount => 'Radera konto';
	@override String get label => 'Etikett';
	@override String get cannotUploadBecauseNoFreeSpace => 'Kan inte ladda upp filen för att det finns inget lagringsutrymme kvar.';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'Kan inte ladda upp filen för att den är större än filstorleksgränsen.';
	@override String get beta => 'Beta';
	@override String get enableAutoSensitive => 'Automatisk NSFW markering';
	@override String get enableAutoSensitiveDescription => 'Tillåter automatiskt detektering och marketing av NSFW media genom Maskininlärning när möjligt. Även om denna inställningen är avaktiverad, kan det vara aktiverat på hela instansen.';
	@override String get move => 'Flytta';
	@override String get pushNotification => 'Pushnotiser';
	@override String get subscribePushNotification => 'Aktivera pushnotiser';
	@override String get unsubscribePushNotification => 'Avaktivera pushnotiser';
	@override String get pushNotificationAlreadySubscribed => 'Pushnotiser är redan aktiverade';
	@override String get pushNotificationNotSupported => 'Din webbläsare eller instans har inte stöd för pushnotiser';
	@override String get windowMaximize => 'Maximera';
	@override String get windowMinimize => 'Minimera';
	@override String get windowRestore => 'Återställ';
	@override String get tools => 'Verktyg';
	@override String get like => 'Gilla';
	@override String pleaseDonate({required Object host}) => 'Misskey är en gratis programvara som används på ${host}. Donera gärna för att göra utvecklingen ständigt, tack!';
	@override String get roles => 'Roll';
	@override String get role => 'Roll';
	@override String get color => 'Färg';
	@override String get resetPasswordConfirm => 'Återställ verkligen ditt lösenord?';
	@override String get dataSaver => 'Databesparing';
	@override String get icon => 'Profilbild';
	@override String get forYou => 'För dig';
	@override String get replies => 'Svara';
	@override String get renotes => 'Omnotera';
	@override String get loadReplies => 'Visa svar';
	@override String get loadConversation => 'Visa konversation';
	@override String get authentication => 'Autentisering';
	@override String get sourceCode => 'Källkod';
	@override String get doReaction => 'Lägg till reaktion';
	@override String get code => 'Kod';
	@override String get gameRetry => 'Försök igen';
	@override String get inquiry => 'Kontakt';
	@override String get tryAgain => 'Försök igen senare';
	@override String get signinWithPasskey => 'Logga in med nyckel';
	@override String get unknownWebAuthnKey => 'Okänd nyckel';
	@override String get information => 'Om';
	@override late final _TranslationsMisskeyChatSvSe chat_ = _TranslationsMisskeyChatSvSe._(_root);
	@override late final _TranslationsMisskeyDeliverySvSe delivery_ = _TranslationsMisskeyDeliverySvSe._(_root);
	@override late final _TranslationsMisskeyInitialAccountSettingSvSe initialAccountSetting_ = _TranslationsMisskeyInitialAccountSettingSvSe._(_root);
	@override late final _TranslationsMisskeyInitialTutorialSvSe initialTutorial_ = _TranslationsMisskeyInitialTutorialSvSe._(_root);
	@override late final _TranslationsMisskeyAchievementsSvSe achievements_ = _TranslationsMisskeyAchievementsSvSe._(_root);
	@override late final _TranslationsMisskeyRoleSvSe role_ = _TranslationsMisskeyRoleSvSe._(_root);
	@override late final _TranslationsMisskeyFfVisibilitySvSe ffVisibility_ = _TranslationsMisskeyFfVisibilitySvSe._(_root);
	@override late final _TranslationsMisskeyAccountDeleteSvSe accountDelete_ = _TranslationsMisskeyAccountDeleteSvSe._(_root);
	@override late final _TranslationsMisskeyAdSvSe ad_ = _TranslationsMisskeyAdSvSe._(_root);
	@override late final _TranslationsMisskeyGallerySvSe gallery_ = _TranslationsMisskeyGallerySvSe._(_root);
	@override late final _TranslationsMisskeyEmailSvSe email_ = _TranslationsMisskeyEmailSvSe._(_root);
	@override late final _TranslationsMisskeyAboutMisskeySvSe aboutMisskey_ = _TranslationsMisskeyAboutMisskeySvSe._(_root);
	@override late final _TranslationsMisskeyChannelSvSe channel_ = _TranslationsMisskeyChannelSvSe._(_root);
	@override late final _TranslationsMisskeyMenuDisplaySvSe menuDisplay_ = _TranslationsMisskeyMenuDisplaySvSe._(_root);
	@override late final _TranslationsMisskeyThemeSvSe theme_ = _TranslationsMisskeyThemeSvSe._(_root);
	@override late final _TranslationsMisskeySfxSvSe sfx_ = _TranslationsMisskeySfxSvSe._(_root);
	@override late final _TranslationsMisskeyAgoSvSe ago_ = _TranslationsMisskeyAgoSvSe._(_root);
	@override late final _TranslationsMisskeyX2faSvSe x2fa_ = _TranslationsMisskeyX2faSvSe._(_root);
	@override late final _TranslationsMisskeyPermissionsSvSe permissions_ = _TranslationsMisskeyPermissionsSvSe._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesSvSe antennaSources_ = _TranslationsMisskeyAntennaSourcesSvSe._(_root);
	@override late final _TranslationsMisskeyWidgetsSvSe widgets_ = _TranslationsMisskeyWidgetsSvSe._(_root);
	@override late final _TranslationsMisskeyCwSvSe cw_ = _TranslationsMisskeyCwSvSe._(_root);
	@override late final _TranslationsMisskeyPollSvSe poll_ = _TranslationsMisskeyPollSvSe._(_root);
	@override late final _TranslationsMisskeyVisibilitySvSe visibility_ = _TranslationsMisskeyVisibilitySvSe._(_root);
	@override late final _TranslationsMisskeyProfileSvSe profile_ = _TranslationsMisskeyProfileSvSe._(_root);
	@override late final _TranslationsMisskeyExportOrImportSvSe exportOrImport_ = _TranslationsMisskeyExportOrImportSvSe._(_root);
	@override late final _TranslationsMisskeyChartsSvSe charts_ = _TranslationsMisskeyChartsSvSe._(_root);
	@override late final _TranslationsMisskeyTimelinesSvSe timelines_ = _TranslationsMisskeyTimelinesSvSe._(_root);
	@override late final _TranslationsMisskeyPlaySvSe play_ = _TranslationsMisskeyPlaySvSe._(_root);
	@override late final _TranslationsMisskeyPagesSvSe pages_ = _TranslationsMisskeyPagesSvSe._(_root);
	@override late final _TranslationsMisskeyNotificationSvSe notification_ = _TranslationsMisskeyNotificationSvSe._(_root);
	@override late final _TranslationsMisskeyDeckSvSe deck_ = _TranslationsMisskeyDeckSvSe._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsSvSe webhookSettings_ = _TranslationsMisskeyWebhookSettingsSvSe._(_root);
	@override late final _TranslationsMisskeyAbuseReportSvSe abuseReport_ = _TranslationsMisskeyAbuseReportSvSe._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesSvSe moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesSvSe._(_root);
	@override late final _TranslationsMisskeyReversiSvSe reversi_ = _TranslationsMisskeyReversiSvSe._(_root);
	@override late final _TranslationsMisskeySelfXssPreventionSvSe selfXssPrevention_ = _TranslationsMisskeySelfXssPreventionSvSe._(_root);
	@override late final _TranslationsMisskeySearchSvSe search_ = _TranslationsMisskeySearchSvSe._(_root);
	@override late final _TranslationsMisskeyWatermarkEditorSvSe watermarkEditor_ = _TranslationsMisskeyWatermarkEditorSvSe._(_root);
	@override late final _TranslationsMisskeyImageEffectorSvSe imageEffector_ = _TranslationsMisskeyImageEffectorSvSe._(_root);
}

// Path: misskey.chat_
class _TranslationsMisskeyChatSvSe extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get invitations => 'Inbjudan';
	@override String get members => 'Medlemmar';
	@override String get home => 'Hem';
	@override String get send => 'Skicka';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliverySvSe extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliverySvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get stop => 'Suspenderad';
	@override late final _TranslationsMisskeyDeliveryTypeSvSe type_ = _TranslationsMisskeyDeliveryTypeSvSe._(_root);
}

// Path: misskey.initialAccountSetting_
class _TranslationsMisskeyInitialAccountSettingSvSe extends TranslationsMisskeyInitialAccountSettingEnUs {
	_TranslationsMisskeyInitialAccountSettingSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get profileSetting => 'Profilinställningar';
}

// Path: misskey.initialTutorial_
class _TranslationsMisskeyInitialTutorialSvSe extends TranslationsMisskeyInitialTutorialEnUs {
	_TranslationsMisskeyInitialTutorialSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyInitialTutorialReactionSvSe reaction_ = _TranslationsMisskeyInitialTutorialReactionSvSe._(_root);
}

// Path: misskey.achievements_
class _TranslationsMisskeyAchievementsSvSe extends TranslationsMisskeyAchievementsEnUs {
	_TranslationsMisskeyAchievementsSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesSvSe types_ = _TranslationsMisskeyAchievementsTypesSvSe._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRoleSvSe extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRoleSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get edit => 'Redigera roll';
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilitySvSe extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilitySvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get public => 'Publicera';
	@override String get private => 'Privat';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeleteSvSe extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeleteSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Radera konto';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdSvSe extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get back => 'Tillbaka';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGallerySvSe extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGallerySvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get like => 'Gilla';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailSvSe extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowSvSe follow_ = _TranslationsMisskeyEmailFollowSvSe._(_root);
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeySvSe extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeySvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get source => 'Källkod';
	@override String get projectMembers => 'Projektmedlemmar';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelSvSe extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get setBanner => 'Välj banner';
	@override String get removeBanner => 'Ta bort banner';
	@override String get nameAndDescription => 'Namn och beskrivning';
}

// Path: misskey.menuDisplay_
class _TranslationsMisskeyMenuDisplaySvSe extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplaySvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Dölj';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeSvSe extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Beskrivning';
	@override String get color => 'Färg';
	@override late final _TranslationsMisskeyThemeKeysSvSe keys = _TranslationsMisskeyThemeKeysSvSe._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxSvSe extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get note => 'Noter';
	@override String get notification => 'Notifikationer';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoSvSe extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get justNow => 'Just nu';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faSvSe extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get step3Title => 'Ange en autentiseringskod';
	@override String get renewTOTPCancel => 'Nej tack';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsSvSe extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get readReactions => 'Visa dina reaktioner';
	@override String get writeReactions => 'Redigera dina reaktioner';
	@override String get writeAdminDeleteAccount => 'Radera användarkonto';
	@override String get writeAdminRoles => 'Hantera roller';
	@override String get readAdminRoles => 'Visa roller';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesSvSe extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get all => 'Alla noter';
	@override String get homeTimeline => 'Noter från följda användare';
	@override String get users => 'Noter från specifika användare';
	@override String get userList => 'Noter från en specificerad lista av användare';
}

// Path: misskey.widgets_
class _TranslationsMisskeyWidgetsSvSe extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Profil';
	@override String get instanceInfo => 'Instansinformation';
	@override String get notifications => 'Notifikationer';
	@override String get timeline => 'Tidslinje';
	@override String get activity => 'Aktivitet';
	@override String get federation => 'Federation';
	@override String get jobQueue => 'Jobbkö';
	@override late final _TranslationsMisskeyWidgetsUserListSvSe userList_ = _TranslationsMisskeyWidgetsUserListSvSe._(_root);
}

// Path: misskey.cw_
class _TranslationsMisskeyCwSvSe extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Dölj';
	@override String get show => 'Ladda mer';
	@override String chars({required Object count}) => '${count} tecken';
	@override String files({required Object count}) => '${count} fil(er)';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollSvSe extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get infinite => 'Aldrig';
}

// Path: misskey.visibility_
class _TranslationsMisskeyVisibilitySvSe extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilitySvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get home => 'Hem';
	@override String get followers => 'Följare';
	@override String get specified => 'Direktnoter';
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileSvSe extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Namn';
	@override String get username => 'Användarnamn';
	@override String get metadataLabel => 'Etikett';
	@override String get changeAvatar => 'Ändra profilbild';
	@override String get changeBanner => 'Ändra banner';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportSvSe extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Alla noter';
	@override String get followingList => 'Följer';
	@override String get muteList => 'Tysta';
	@override String get blockingList => 'Blockera';
	@override String get userLists => 'Listor';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsSvSe extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Federation';
	@override String get activeUsers => 'Aktiva användare';
}

// Path: misskey.timelines_
class _TranslationsMisskeyTimelinesSvSe extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get home => 'Hem';
	@override String get global => 'Global';
}

// Path: misskey.play_
class _TranslationsMisskeyPlaySvSe extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlaySvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get summary => 'Beskrivning';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesSvSe extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyPagesBlocksSvSe blocks = _TranslationsMisskeyPagesBlocksSvSe._(_root);
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationSvSe extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get youWereFollowed => 'följde dig';
	@override String unreadAntennaNote({required Object name}) => 'Antenn ${name}';
	@override late final _TranslationsMisskeyNotificationTypesSvSe types_ = _TranslationsMisskeyNotificationTypesSvSe._(_root);
	@override late final _TranslationsMisskeyNotificationActionsSvSe actions_ = _TranslationsMisskeyNotificationActionsSvSe._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckSvSe extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get addColumn => 'Lägg till kolumn';
	@override String get deleteProfile => 'Radera profil';
	@override late final _TranslationsMisskeyDeckColumnsSvSe columns_ = _TranslationsMisskeyDeckColumnsSvSe._(_root);
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsSvSe extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Namn';
	@override String get active => 'Aktiverad';
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportSvSe extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientSvSe notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientSvSe._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesSvSe extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'Suspendera';
	@override String get resetPassword => 'Återställ Lösenord';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiSvSe extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get blackOrWhite => 'Svart/Vit';
	@override String get rules => 'Regler';
	@override String get black => 'Svart';
	@override String get white => 'Vit';
}

// Path: misskey.selfXssPrevention_
class _TranslationsMisskeySelfXssPreventionSvSe extends TranslationsMisskeySelfXssPreventionEnUs {
	_TranslationsMisskeySelfXssPreventionSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get warning => 'VARNING';
}

// Path: misskey.search_
class _TranslationsMisskeySearchSvSe extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Allt';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorSvSe extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get scale => 'Storlek';
	@override String get image => 'Bilder';
}

// Path: misskey.imageEffector_
class _TranslationsMisskeyImageEffectorSvSe extends TranslationsMisskeyImageEffectorEnUs {
	_TranslationsMisskeyImageEffectorSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyImageEffectorFxPropsSvSe fxProps_ = _TranslationsMisskeyImageEffectorFxPropsSvSe._(_root);
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypeSvSe extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypeSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get none => 'Publiceras';
}

// Path: misskey.initialTutorial_.reaction_
class _TranslationsMisskeyInitialTutorialReactionSvSe extends TranslationsMisskeyInitialTutorialReactionEnUs {
	_TranslationsMisskeyInitialTutorialReactionSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vad är reaktioner?';
}

// Path: misskey.achievements_.types_
class _TranslationsMisskeyAchievementsTypesSvSe extends TranslationsMisskeyAchievementsTypesEnUs {
	_TranslationsMisskeyAchievementsTypesSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesOpen3windowsSvSe open3windows_ = _TranslationsMisskeyAchievementsTypesOpen3windowsSvSe._(_root);
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowSvSe extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get title => 'följde dig';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysSvSe extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get mention => 'Nämn';
	@override String get renote => 'Omnotera';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListSvSe extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Välj lista';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksSvSe extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get image => 'Bilder';
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesSvSe extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Följer';
	@override String get mention => 'Nämn';
	@override String get renote => 'Omnotera';
	@override String get quote => 'Citat';
	@override String get reaction => 'Reaktioner';
	@override String get login => 'Logga in';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsSvSe extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get reply => 'Svara';
	@override String get renote => 'Omnotera';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsSvSe extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Notifikationer';
	@override String get tl => 'Tidslinje';
	@override String get antenna => 'Antenner';
	@override String get list => 'Listor';
	@override String get channel => 'kanal';
	@override String get mentions => 'Omnämningar';
	@override String get direct => 'Direktnoter';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientSvSe extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeSvSe recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeSvSe._(_root);
}

// Path: misskey.imageEffector_.fxProps_
class _TranslationsMisskeyImageEffectorFxPropsSvSe extends TranslationsMisskeyImageEffectorFxPropsEnUs {
	_TranslationsMisskeyImageEffectorFxPropsSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get scale => 'Storlek';
	@override String get size => 'Storlek';
	@override String get color => 'Färg';
}

// Path: misskey.achievements_.types_.open3windows_
class _TranslationsMisskeyAchievementsTypesOpen3windowsSvSe extends TranslationsMisskeyAchievementsTypesOpen3windowsEnUs {
	_TranslationsMisskeyAchievementsTypesOpen3windowsSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Flera Fönster';
	@override String get description => 'Ha minst 3 fönster öppna samtidigt';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeSvSe extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeSvSe._(TranslationsSvSe root) : this._root = root, super.internal(root);

	final TranslationsSvSe _root; // ignore: unused_field

	// Translations
	@override String get mail => 'E-post';
}
