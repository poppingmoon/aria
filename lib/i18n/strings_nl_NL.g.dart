///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint

part of 'strings.g.dart';

// Path: <root>
class _StringsNlNl extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsNlNl.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.nlNl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <nl-NL>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	@override late final _StringsNlNl _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAriaNlNl aria = _StringsAriaNlNl._(_root);
	@override late final _StringsMisskeyNlNl misskey = _StringsMisskeyNlNl._(_root);
}

// Path: aria
class _StringsAriaNlNl extends _StringsAriaEnUs {
	_StringsAriaNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Weet je zeker dat je '),
		name,
		const TextSpan(text: ' wilt volgen?'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Hergedeeld door '),
		user,
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Weet je zeker dat je '),
		name,
		const TextSpan(text: ' wilt ontvolgen?'),
	]);
}

// Path: misskey
class _StringsMisskeyNlNl extends _StringsMisskeyEnUs {
	_StringsMisskeyNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Nederlands';
	@override String get headlineMisskey => 'Netwerk verbonden door notities';
	@override String get introMisskey => 'Welkom! Misskey is een open source, gedecentraliseerde microblogdienst.\nMaak "notities" om je gedachten te delen met iedereen om je heen. 📡\nMet "reacties" kun je ook snel je mening geven over berichten van anderen. 👍\nLaten we een nieuwe wereld verkennen! 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} is één van de services die door het open source platform <b>Misskey</b> wordt geleverd (het wordt ook wel een "Misskey server genmoemd").';
	@override String monthAndDay({required Object day, required Object month}) => '${day} ${month}';
	@override String get search => 'Zoeken';
	@override String get notifications => 'Meldingen';
	@override String get username => 'Gebruikersnaam';
	@override String get password => 'Wachtwoord';
	@override String get forgotPassword => 'Wachtwoord vergeten';
	@override String get fetchingAsApObject => 'Ophalen vanuit de Fediverse';
	@override String get ok => 'Ok';
	@override String get gotIt => 'Begrepen';
	@override String get cancel => 'Annuleren';
	@override String get noThankYou => 'Nee, bedankt';
	@override String get enterUsername => 'Voer een gebruikersnaam in';
	@override String renotedBy({required Object user}) => 'Hergedeeld door ${user}';
	@override String get noNotes => 'Geen notities';
	@override String get noNotifications => 'Geen meldingen';
	@override String get instance => 'Server';
	@override String get settings => 'Instellingen';
	@override String get notificationSettings => 'Notificatie instellingen';
	@override String get basicSettings => 'Basisinstellingen';
	@override String get otherSettings => 'Overige instellingen';
	@override String get openInWindow => 'In een venster openen';
	@override String get profile => 'Profiel';
	@override String get timeline => 'Tijdlijn';
	@override String get noAccountDescription => 'Deze gebruiker heeft nog geen bio geschreven';
	@override String get login => 'Inloggen';
	@override String get loggingIn => 'Aan het inloggen';
	@override String get logout => 'Afmelden';
	@override String get signup => 'Registreren';
	@override String get uploading => 'Bezig met uploaden';
	@override String get save => 'Opslaan';
	@override String get users => 'Gebruikers';
	@override String get addUser => 'Toevoegen gebruiker';
	@override String get favorite => 'Favorieten';
	@override String get favorites => 'Toevoegen aan favorieten';
	@override String get unfavorite => 'Verwijderen uit favorieten';
	@override String get favorited => 'Toegevoegd aan favorieten.';
	@override String get alreadyFavorited => 'Al toegevoegd aan favorieten';
	@override String get cantFavorite => 'Kon niet toevoegen aan favorieten';
	@override String get pin => 'Vastmaken aan profielpagina';
	@override String get unpin => 'Losmaken van profielpagina';
	@override String get copyContent => 'Kopiëren inhoud';
	@override String get copyLink => 'Kopiëren link';
	@override String get copyLinkRenote => '';
	@override String get delete => 'Verwijderen';
	@override String get deleteAndEdit => 'Verwijderen en bewerken';
	@override String get deleteAndEditConfirm => 'Weet je zeker dat je deze notitie wilt verwijderen en dan bewerken? Je verliest alle reacties, herdelingen en antwoorden erop.';
	@override String get addToList => 'Aan lijst toevoegen';
	@override String get addToAntenna => 'Voeg toe aan antenne';
	@override String get sendMessage => 'Verstuur bericht';
	@override String get copyRSS => 'Kopieer RSS';
	@override String get copyUsername => 'Kopiëren gebruikersnaam ';
	@override String get copyUserId => 'Kopieer gebruiker ID';
	@override String get copyNoteId => 'Kopieer notitie ID';
	@override String get copyFileId => 'Kopieer veld ID';
	@override String get copyFolderId => 'Kopieer folder ID';
	@override String get copyProfileUrl => 'Kopieer profiel URL';
	@override String get searchUser => 'Zoeken een gebruiker';
	@override String get reply => 'Antwoord';
	@override String get loadMore => 'Laad meer';
	@override String get showMore => 'Toon meer';
	@override String get showLess => 'Sluiten';
	@override String get youGotNewFollower => 'volgde jou';
	@override String get receiveFollowRequest => 'Volgverzoek ontvangen';
	@override String get followRequestAccepted => 'Volgverzoek geaccepteerd';
	@override String get mention => 'Vermelding';
	@override String get mentions => 'Vermeldingen';
	@override String get directNotes => 'Directe notities';
	@override String get importAndExport => 'Import / export';
	@override String get import => 'Import';
	@override String get export => 'Export';
	@override String get files => 'Bestanden';
	@override String get download => 'Downloaden';
	@override String driveFileDeleteConfirm({required Object name}) => 'Weet je zeker dat je het bestand "${name}" wilt verwijderen? Notities met dit bestand als bijlage worden ook verwijderd.';
	@override String unfollowConfirm({required Object name}) => 'Weet je zeker dat je ${name} wilt ontvolgen?';
	@override String get exportRequested => 'Je hebt een export aangevraagd. Dit kan een tijdje duren. Het wordt toegevoegd aan je Drive zodra het is voltooid.';
	@override String get importRequested => 'Je hebt een import aangevraagd. Dit kan even duren.';
	@override String get lists => 'Lijsten';
	@override String get noLists => 'Je hebt geen lijsten';
	@override String get note => 'Notitie';
	@override String get notes => 'Notities';
	@override String get following => 'Volgend';
	@override String get followers => 'Volgers';
	@override String get followsYou => 'Volgt jou';
	@override String get createList => 'Creëer lijst';
	@override String get manageLists => 'Beheren lijsten';
	@override String get error => 'Fout';
	@override String get somethingHappened => 'Er is iets misgegaan.';
	@override String get retry => 'Probeer opnieuw';
	@override String get pageLoadError => 'Pagina laden mislukt';
	@override String get pageLoadErrorDescription => 'Dit wordt normaal gesproken veroorzaakt door netwerkfouten of door de cache van de browser. Probeer de cache te wissen en probeer het na een tijdje wachten opnieuw.';
	@override String get serverIsDead => 'De server reageert niet. Wacht even en probeer het opnieuw.';
	@override String get youShouldUpgradeClient => 'Werk je client bij om deze pagina te zien.';
	@override String get enterListName => 'Voer de naam van de lijst in';
	@override String get privacy => 'Privacy';
	@override String get makeFollowManuallyApprove => 'Volgverzoeken vergen een goedkeuring';
	@override String get defaultNoteVisibility => 'Standaard zichtbaarheid';
	@override String get follow => 'Volgen';
	@override String get followRequest => 'Verzoek om te mogen volgen';
	@override String get followRequests => 'Volgverzoeken';
	@override String get unfollow => 'Ontvolgen';
	@override String get followRequestPending => 'Wachten op goedkeuring volgverzoek';
	@override String get enterEmoji => 'Voer een emoji in';
	@override String get renote => 'Herdelen';
	@override String get unrenote => 'Stop herdelen';
	@override String get renoted => 'Herdeeld';
	@override String get cantRenote => 'Dit bericht kan niet worden herdeeld';
	@override String get cantReRenote => 'Een herdeling kan niet worden herdeeld';
	@override String get quote => 'Quote';
	@override String get pinnedNote => 'Vastgemaakte notitie';
	@override String get pinned => 'Vastmaken aan profielpagina';
	@override String get you => 'Jij';
	@override String get clickToShow => 'Klik om te bekijken';
	@override String get sensitive => 'NSFW';
	@override String get add => 'Toevoegen';
	@override String get reaction => 'Reacties';
	@override String get reactions => 'Reacties';
	@override String get reactionSettingDescription2 => 'Sleep om opnieuw te ordenen, Klik om te verwijderen, Druk op "+" om toe te voegen';
	@override String get rememberNoteVisibility => 'Vergeet niet de notitie zichtbaarheidsinstellingen';
	@override String get attachCancel => 'Verwijder bijlage';
	@override String get markAsSensitive => 'Markeren als NSFW';
	@override String get unmarkAsSensitive => 'Geen NSFW';
	@override String get enterFileName => 'Invoeren bestandsnaam';
	@override String get mute => 'Dempen';
	@override String get unmute => 'Stop dempen';
	@override String get block => 'Blokkeren';
	@override String get unblock => 'Deblokkeren';
	@override String get suspend => 'Opschorten';
	@override String get unsuspend => 'Heractiveren';
	@override String get blockConfirm => 'Weet je zeker dat je dit account wil blokkeren?';
	@override String get unblockConfirm => 'Ben je zeker dat je deze account wil blokkeren?';
	@override String get suspendConfirm => 'Ben je zeker dat je deze account wil suspenderen?';
	@override String get unsuspendConfirm => 'Ben je zeker dat je deze account wil opnieuw aanstellen?';
	@override String get selectList => 'Kies een lijst.';
	@override String get selectAntenna => 'Kies een antenne';
	@override String get selectWidget => 'Kies een widget';
	@override String get editWidgets => 'Bewerk widgets';
	@override String get editWidgetsExit => 'Klaar';
	@override String get customEmojis => 'Maatwerk emoji';
	@override String get emoji => 'Emoji';
	@override String get emojis => 'Emoji';
	@override String get emojiName => 'Naam emoji';
	@override String get emojiUrl => 'URL emoji';
	@override String get addEmoji => 'Toevoegen emoji';
	@override String get settingGuide => 'Aanbevolen instellingen';
	@override String get cacheRemoteFiles => 'Externe bestanden cachen';
	@override String get flagAsBot => 'Markeer dit account als een robot.';
	@override String get flagAsBotDescription => 'Als dit account van een programma wordt beheerd, zet deze vlag aan. Het aanzetten helpt andere ontwikkelaars om bijvoorbeeld onbedoelde feedback loops te doorbreken of om Misskey meer geschikt te maken.';
	@override String get flagAsCat => 'Markeer dit account als een kat.';
	@override String get flagAsCatDescription => 'Zet deze vlag aan als je wilt aangeven dat dit account een kat is.';
	@override String get flagShowTimelineReplies => 'Toon antwoorden op de tijdlijn.';
	@override String get flagShowTimelineRepliesDescription => 'Als je dit vlag aanzet, toont de tijdlijn ook antwoorden op andere en niet alleen jouw eigen notities.';
	@override String get autoAcceptFollowed => 'Accepteer verzoeken om jezelf te volgen vanzelf als je de verzoeker al volgt.';
	@override String get addAccount => 'Account toevoegen';
	@override String get loginFailed => 'Aanmelding mislukt.';
	@override String get showOnRemote => 'Toon op de externe instantie.';
	@override String get general => 'Algemeen';
	@override String get wallpaper => 'Achtergrond';
	@override String get setWallpaper => 'Achtergrond instellen';
	@override String get removeWallpaper => 'Achtergrond verwijderen';
	@override String searchWith({required Object q}) => 'Zoeken: ${q}';
	@override String get youHaveNoLists => 'Je hebt geen lijsten';
	@override String followConfirm({required Object name}) => 'Weet je zeker dat je ${name} wilt volgen?';
	@override String get proxyAccount => 'Proxy account';
	@override String get proxyAccountDescription => 'Een proxy-account is een account dat onder bepaalde voorwaarden fungeert als externe volger voor gebruikers. Als een gebruiker bijvoorbeeld een externe gebruiker aan de lijst toevoegt, wordt de activiteit van de externe gebruiker niet aan de server geleverd als geen lokale gebruiker die gebruiker volgt, dus het proxy-account volgt in plaats daarvan.';
	@override String get host => 'Server';
	@override String get selectUser => 'Kies een gebruiker';
	@override String get recipient => 'Ontvanger';
	@override String get annotation => 'Reacties';
	@override String get federation => 'Federatie';
	@override String get instances => 'Server';
	@override String get registeredAt => 'Geregistreerd op';
	@override String get latestRequestReceivedAt => 'Laatste aanvraag ontvangen';
	@override String get latestStatus => 'Laatste status';
	@override String get storageUsage => 'Gebruikte opslagruimte';
	@override String get charts => 'Grafieken';
	@override String get perHour => 'Per uur';
	@override String get perDay => 'Per dag';
	@override String get stopActivityDelivery => 'Stop met versturen activiteiten';
	@override String get blockThisInstance => 'Blokkeer deze server';
	@override String get operations => 'Verwerkingen';
	@override String get software => 'Software';
	@override String get version => 'Versie';
	@override String get metadata => 'Metadata';
	@override String withNFiles({required Object n}) => '${n} bestand(en)';
	@override String get monitor => 'Monitor';
	@override String get jobQueue => 'Job Queue';
	@override String get cpuAndMemory => 'CPU en geheugen';
	@override String get network => 'Netwerk';
	@override String get disk => 'Schijfruimte';
	@override String get instanceInfo => 'Serverinformatie';
	@override String get statistics => 'Statistieken';
	@override String get clearQueue => 'Wachtrij wissen';
	@override String get clearQueueConfirmTitle => 'Weet je zeker dat je de wachtrji leeg wil maken?';
	@override String get clearQueueConfirmText => 'Niet-bezorgde biljetten die nog in de wachtrij staan, worden niet gefedereerd. Meestal is deze operatie niet nodig.';
	@override String get clearCachedFiles => 'Cache opschonen';
	@override String get clearCachedFilesConfirm => 'Weet je zeker dat je alle externe bestanden in de cache wilt verwijderen?';
	@override String get blockedInstances => 'Geblokkeerde servers';
	@override String get blockedInstancesDescription => 'Maak een lijst van de servers die moeten worden geblokkeerd, gescheiden door regeleinden. Geblokkeerde servers kunnen niet meer communiceren met deze server.';
	@override String get muteAndBlock => 'Gedempt en geblokkeerd';
	@override String get mutedUsers => 'Gedempte gebruikers';
	@override String get blockedUsers => 'Geblokkeerde gebruikers';
	@override String get noUsers => 'Er zijn geen gebruikers.';
	@override String get editProfile => 'Bewerk Profiel';
	@override String get noteDeleteConfirm => 'Ben je zeker dat je dit bericht wil verwijderen?';
	@override String get pinLimitExceeded => 'Je kunt geen berichten meer vastprikken';
	@override String get intro => 'Installatie van Misskey geëindigd! Maak nu een beheerder aan.';
	@override String get done => 'Klaar';
	@override String get processing => 'Bezig met verwerken';
	@override String get preview => 'Voorbeeld';
	@override String get default_ => 'Standaard';
	@override String defaultValueIs({required Object value}) => 'Standaard: ${value}';
	@override String get noCustomEmojis => 'Er zijn geen emojis';
	@override String get noJobs => 'Er zijn geen taken';
	@override String get federating => 'Federeren';
	@override String get blocked => 'Geblokkeerd';
	@override String get suspended => 'Opgeschort';
	@override String get all => 'Alle';
	@override String get subscribing => 'Abonneren';
	@override String get publishing => 'Publiceren';
	@override String get notResponding => 'Reageert niet';
	@override String get instanceFollowing => 'Volgend op server';
	@override String get instanceFollowers => 'Volgers op server';
	@override String get instanceUsers => 'Gebruikers van deze server';
	@override String get changePassword => 'Wachtwoord wijzigen';
	@override String get security => 'Beveiliging';
	@override String get retypedNotMatch => 'Invoer komt niet overeen';
	@override String get currentPassword => 'Huidig wachtwoord';
	@override String get newPassword => 'Nieuwe wachtwoord';
	@override String get newPasswordRetype => 'Nieuw wachtwoord (herhalen)';
	@override String get attachFile => 'Bestanden toevoegen';
	@override String get more => 'Meer!';
	@override String get featured => 'Uitgelicht';
	@override String get usernameOrUserId => 'Gebruikersnaam of id';
	@override String get noSuchUser => 'Gebruiker niet gevonden';
	@override String get lookup => 'Opzoeken';
	@override String get announcements => 'Aankondigingen';
	@override String get imageUrl => 'AfbeeldingsURL';
	@override String get remove => 'Verwijderen';
	@override String get removed => 'Succesvol verwijderd';
	@override String removeAreYouSure({required Object x}) => 'Weet je zeker dat je "${x}" wil verwijderen?';
	@override String deleteAreYouSure({required Object x}) => 'Weet je zeker dat je "${x}" wil verwijderen?';
	@override String get resetAreYouSure => 'Resetten?';
	@override String get saved => 'Opgeslagen';
	@override String get messaging => 'Chat';
	@override String get upload => 'Uploaden';
	@override String get keepOriginalUploading => 'Origineel beeld behouden.';
	@override String get keepOriginalUploadingDescription => 'Bewaar de originele versie bij het uploaden van afbeeldingen. Indien uitgeschakeld, wordt bij het uploaden een alternatieve versie voor webpublicatie genereert.';
	@override String get fromDrive => 'Van schijf';
	@override String get fromUrl => 'Van  URL';
	@override String get uploadFromUrl => 'Uploaden vanaf een URL';
	@override String get uploadFromUrlDescription => 'URL van het bestand dat je wil uploaden';
	@override String get uploadFromUrlRequested => 'Uploadverzoek';
	@override String get uploadFromUrlMayTakeTime => 'Het kan even duren voordat het uploaden voltooid is.';
	@override String get explore => 'Verkennen';
	@override String get messageRead => 'Lezen';
	@override String get noMoreHistory => 'Er is geen verdere geschiedenis';
	@override String get startMessaging => 'Start een gesprek';
	@override String nUsersRead({required Object n}) => 'gelezen door ${n}';
	@override String agreeTo({required Object x0}) => 'Ik stem in met ${x0}';
	@override String get start => 'Aan de slag';
	@override String get home => 'Startpagina';
	@override String get remoteUserCaution => 'Aangezien deze gebruiker van een externe server afkomstig is, kan de weergegeven informatie onvolledig zijn.';
	@override String get activity => 'Activiteit';
	@override String get images => 'Afbeeldingen';
	@override String get image => 'Afbeeldingen';
	@override String get birthday => 'Geboortedatum';
	@override String yearsOld({required Object age}) => '${age} jaar';
	@override String get registeredDate => 'Inschrijvingsdatum';
	@override String get location => 'Locatie';
	@override String get theme => 'Thema\'s';
	@override String get themeForLightMode => 'Thema voor gebruik in de lichte modus';
	@override String get themeForDarkMode => 'Thema voor gebruik in de donkere modus';
	@override String get light => 'Licht';
	@override String get dark => 'Donker';
	@override String get lightThemes => 'Licht thema\'s';
	@override String get darkThemes => 'Donkere thema\'s';
	@override String get syncDeviceDarkMode => 'Synchroniseer donkere modus met je apparaatinstellingen';
	@override String get drive => 'Schijf';
	@override String get fileName => 'Bestandsnaam';
	@override String get selectFile => 'Kies een bestand';
	@override String get selectFiles => 'Selecteer bestanden';
	@override String get selectFolder => 'Kies een map';
	@override String get selectFolders => 'Kies mappen';
	@override String get renameFile => 'Wijzig bestandsnaam';
	@override String get folderName => 'Mapnaam';
	@override String get createFolder => 'Map aanmaken';
	@override String get renameFolder => 'Map hernoemen';
	@override String get deleteFolder => 'Map verwijderen';
	@override String get addFile => 'Bestand toevoegen';
	@override String get emptyDrive => 'Jouw Drive is leeg.';
	@override String get emptyFolder => 'Deze map is leeg';
	@override String get unableToDelete => 'Kan niet worden verwijderd';
	@override String get inputNewFileName => 'Voer een nieuwe naam in';
	@override String get inputNewDescription => 'Voer hier het onderschrift in';
	@override String get inputNewFolderName => 'Naam invoeren voor nieuwe map';
	@override String get circularReferenceFolder => 'De bestemmingsmap is een submap van de map die je wilt verplaatsen.';
	@override String get hasChildFilesOrFolders => 'Omdat deze map niet leeg is, kan die niet worden verwijderd.';
	@override String get copyUrl => 'URL kopiëren';
	@override String get rename => 'Hernoemen';
	@override String get avatar => 'Avatar';
	@override String get banner => 'Banner';
	@override String get whenServerDisconnected => 'Wanneer de verbinding met de server wordt onderbroken';
	@override String get disconnectedFromServer => 'Verbinding met de server onderbroken.';
	@override String get reload => 'Verversen';
	@override String get doNothing => 'Negeren';
	@override String get reloadConfirm => 'Weet je zeker dat je je tijdlijn wil verversen?';
	@override String get watch => 'Volgen';
	@override String get unwatch => 'Niet meer volgen';
	@override String get accept => 'Accepteren';
	@override String get reject => 'Weigeren';
	@override String get normal => 'Normaal';
	@override String get instanceName => 'Naam van de server';
	@override String get instanceDescription => 'Beschrijving van de server';
	@override String get maintainerName => 'Onderhouder';
	@override String get maintainerEmail => 'E-mailadres beheerder';
	@override String get tosUrl => 'URL gebruiksvoorwaarden';
	@override String get thisYear => 'Jaar';
	@override String get thisMonth => 'Maand';
	@override String get today => 'Vandaag';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => '${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'Pagina\'s';
	@override String get integration => 'Integraties';
	@override String get connectService => 'Verbinden';
	@override String get disconnectService => 'Verbinding verbreken';
	@override String get enableLocalTimeline => 'Inschakelen lokale tijdlijn';
	@override String get enableGlobalTimeline => 'Inschakelen globale tijdlijn ';
	@override String get disablingTimelinesInfo => 'Beheerders en moderators hebben altijd toegang tot alle tijdlijnen, ook als ze niet actief zijn.';
	@override String get registration => 'Registreren';
	@override String get enableRegistration => 'Inschakelen registratie nieuwe gebruikers ';
	@override String get invite => 'Uitnodigen';
	@override String get driveCapacityPerLocalAccount => 'Opslagruimte per lokale gebruiker';
	@override String get driveCapacityPerRemoteAccount => 'Opslagruimte per externe gebruiker';
	@override String get inMb => 'in megabytes';
	@override String get bannerUrl => 'Banner URL';
	@override String get backgroundImageUrl => 'URL afbeelding';
	@override String get basicInfo => 'Basisinformatie';
	@override String get pinnedUsers => 'Vastgeprikte gebruikers';
	@override String get pinnedPages => 'Vastgeprikte pagina\'s';
	@override String get pinnedNotes => 'Vastgemaakte notitie';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'Inschakelen hCaptcha';
	@override String get hcaptchaSiteKey => 'Site sleutel';
	@override String get hcaptchaSecretKey => 'Geheime sleutel';
	@override String get mcaptchaSiteKey => 'Site sleutel';
	@override String get mcaptchaSecretKey => 'Geheime sleutel';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'Inschakelen reCAPTCHA';
	@override String get recaptchaSiteKey => 'Site sleutel';
	@override String get recaptchaSecretKey => 'Geheime sleutel';
	@override String get turnstile => 'Tourniquet';
	@override String get enableTurnstile => 'Inschakelen tourniquet';
	@override String get turnstileSiteKey => 'Site sleutel';
	@override String get turnstileSecretKey => 'Geheime sleutel';
	@override String get antennas => 'Antennes';
	@override String get manageAntennas => 'Antennes beheren';
	@override String get name => 'Naam';
	@override String get antennaSource => 'Bron antenne';
	@override String get antennaKeywords => 'Sleutelwoorden';
	@override String get antennaExcludeKeywords => 'Blokkeerwoorden';
	@override String get withReplies => 'Antwoorden toevoegen';
	@override String get connectedTo => 'De volgende accounts zijn verbonden';
	@override String get notesAndReplies => 'Berichten en reacties';
	@override String get withFiles => 'Bestanden toevoegen';
	@override String get silence => 'Dempen';
	@override String get silenceConfirm => 'Weet je zeker dat je deze gebruiker wil dempen?';
	@override String get unsilence => 'Dempen uitschakelen';
	@override String get unsilenceConfirm => 'Weet je zeker dat je deze gebruiker niet meer wil dempen?';
	@override String get popularUsers => 'Populaire gebruikers';
	@override String get recentlyUpdatedUsers => 'Recent actieve gebruikers';
	@override String get recentlyRegisteredUsers => 'Recent geregistreerde gebruikers';
	@override String get recentlyDiscoveredUsers => 'Nieuw ontdekte gebruikers ';
	@override String exploreUsersCount({required Object count}) => 'Er zijn ${count} gebruikers';
	@override String get exploreFediverse => 'Ontdek de Fediverse';
	@override String get popularTags => 'Populaire tags';
	@override String get userList => 'Lijsten';
	@override String get about => 'Over';
	@override String get aboutMisskey => 'Over Misskey';
	@override String get administrator => 'Beheerder';
	@override String get token => 'Token';
	@override String get moderator => 'Moderator';
	@override String get moderation => 'Moderatie';
	@override String nUsersMentioned({required Object n}) => 'Vermeld door ${n} gebruikers';
	@override String get securityKey => 'Beveiligingssleutel';
	@override String get lastUsed => 'Laatst gebruikt';
	@override String get unregister => 'Uitschrijven';
	@override String get passwordLessLogin => 'Inloggen zonder wachtwoord';
	@override String get resetPassword => 'Wachtwoord terugzetten';
	@override String newPasswordIs({required Object password}) => 'Het nieuwe wachtwoord is „${password}”.';
	@override String get reduceUiAnimation => 'Verminder beweging in de UI';
	@override String get share => 'Delen';
	@override String get notFound => 'Niet gevonden';
	@override String get uploadFolder => 'Standaardmap voor uploaden';
	@override String get markAsReadAllNotifications => 'Markeer alle meldingen als gelezen';
	@override String get markAsReadAllUnreadNotes => 'Markeer alle berichten als gelezen';
	@override String get markAsReadAllTalkMessages => 'Markeer alle berichten als gelezen';
	@override String get help => 'Help';
	@override String get inputMessageHere => 'Voer hier je bericht in';
	@override String get close => 'Sluiten';
	@override String get invites => 'Uitnodigen';
	@override String get invitations => 'Uitnodigen';
	@override String get sound => 'Geluid';
	@override String get smtpHost => 'Server';
	@override String get smtpUser => 'Gebruikersnaam';
	@override String get smtpPass => 'Wachtwoord';
	@override String get clearCache => 'Cache opschonen';
	@override String get info => 'Over';
	@override String get user => 'Gebruikers';
	@override String get muteThread => 'Discussies dempen ';
	@override String get unmuteThread => 'Dempen van discussie ongedaan maken';
	@override String get hide => 'Verbergen';
	@override String get searchByGoogle => 'Zoeken';
	@override String get cropImage => 'Afbeelding bijsnijden';
	@override String get cropImageAsk => 'Bijsnijdengevraagd';
	@override String get file => 'Bestanden';
	@override String get pushNotification => 'Pushberichten';
	@override String get subscribePushNotification => 'Push meldingen inschakelen';
	@override String get unsubscribePushNotification => 'Pushberichten uitschakelen';
	@override String get pushNotificationAlreadySubscribed => 'Pushberichtrn al ingeschakeld';
	@override String get windowMaximize => 'Maximaliseren';
	@override String get windowRestore => 'Herstellen';
	@override String get loggedInAsBot => 'Momenteel als bot ingelogd';
	@override String get icon => 'Avatar';
	@override String get replies => 'Antwoord';
	@override String get renotes => 'Herdelen';
	@override late final _StringsMisskeyDeliveryNlNl delivery_ = _StringsMisskeyDeliveryNlNl._(_root);
	@override late final _StringsMisskeyEmailNlNl email_ = _StringsMisskeyEmailNlNl._(_root);
	@override late final _StringsMisskeyThemeNlNl theme_ = _StringsMisskeyThemeNlNl._(_root);
	@override late final _StringsMisskeySfxNlNl sfx_ = _StringsMisskeySfxNlNl._(_root);
	@override late final _StringsMisskeyX2faNlNl x2fa_ = _StringsMisskeyX2faNlNl._(_root);
	@override late final _StringsMisskeyWidgetsNlNl widgets_ = _StringsMisskeyWidgetsNlNl._(_root);
	@override late final _StringsMisskeyCwNlNl cw_ = _StringsMisskeyCwNlNl._(_root);
	@override late final _StringsMisskeyVisibilityNlNl visibility_ = _StringsMisskeyVisibilityNlNl._(_root);
	@override late final _StringsMisskeyProfileNlNl profile_ = _StringsMisskeyProfileNlNl._(_root);
	@override late final _StringsMisskeyExportOrImportNlNl exportOrImport_ = _StringsMisskeyExportOrImportNlNl._(_root);
	@override late final _StringsMisskeyChartsNlNl charts_ = _StringsMisskeyChartsNlNl._(_root);
	@override late final _StringsMisskeyTimelinesNlNl timelines_ = _StringsMisskeyTimelinesNlNl._(_root);
	@override late final _StringsMisskeyPagesNlNl pages_ = _StringsMisskeyPagesNlNl._(_root);
	@override late final _StringsMisskeyNotificationNlNl notification_ = _StringsMisskeyNotificationNlNl._(_root);
	@override late final _StringsMisskeyDeckNlNl deck_ = _StringsMisskeyDeckNlNl._(_root);
	@override late final _StringsMisskeyWebhookSettingsNlNl webhookSettings_ = _StringsMisskeyWebhookSettingsNlNl._(_root);
	@override late final _StringsMisskeyModerationLogTypesNlNl moderationLogTypes_ = _StringsMisskeyModerationLogTypesNlNl._(_root);
}

// Path: misskey.delivery_
class _StringsMisskeyDeliveryNlNl extends _StringsMisskeyDeliveryEnUs {
	_StringsMisskeyDeliveryNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get stop => 'Opgeschort';
	@override late final _StringsMisskeyDeliveryTypeNlNl type_ = _StringsMisskeyDeliveryTypeNlNl._(_root);
}

// Path: misskey.email_
class _StringsMisskeyEmailNlNl extends _StringsMisskeyEmailEnUs {
	_StringsMisskeyEmailNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyEmailFollowNlNl follow_ = _StringsMisskeyEmailFollowNlNl._(_root);
}

// Path: misskey.theme_
class _StringsMisskeyThemeNlNl extends _StringsMisskeyThemeEnUs {
	_StringsMisskeyThemeNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyThemeKeysNlNl keys = _StringsMisskeyThemeKeysNlNl._(_root);
}

// Path: misskey.sfx_
class _StringsMisskeySfxNlNl extends _StringsMisskeySfxEnUs {
	_StringsMisskeySfxNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get note => 'Notities';
	@override String get notification => 'Meldingen';
}

// Path: misskey.x2fa_
class _StringsMisskeyX2faNlNl extends _StringsMisskeyX2faEnUs {
	_StringsMisskeyX2faNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get renewTOTPCancel => 'Nee, bedankt';
}

// Path: misskey.widgets_
class _StringsMisskeyWidgetsNlNl extends _StringsMisskeyWidgetsEnUs {
	_StringsMisskeyWidgetsNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Profiel';
	@override String get instanceInfo => 'Serverinformatie';
	@override String get notifications => 'Meldingen';
	@override String get timeline => 'Tijdlijn';
	@override String get activity => 'Activiteit';
	@override String get federation => 'Federatie';
	@override String get jobQueue => 'Job Queue';
	@override late final _StringsMisskeyWidgetsUserListNlNl userList_ = _StringsMisskeyWidgetsUserListNlNl._(_root);
}

// Path: misskey.cw_
class _StringsMisskeyCwNlNl extends _StringsMisskeyCwEnUs {
	_StringsMisskeyCwNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get show => 'Laad meer';
}

// Path: misskey.visibility_
class _StringsMisskeyVisibilityNlNl extends _StringsMisskeyVisibilityEnUs {
	_StringsMisskeyVisibilityNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get home => 'Startpagina';
	@override String get followers => 'Volgers';
}

// Path: misskey.profile_
class _StringsMisskeyProfileNlNl extends _StringsMisskeyProfileEnUs {
	_StringsMisskeyProfileNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Naam';
	@override String get username => 'Gebruikersnaam';
}

// Path: misskey.exportOrImport_
class _StringsMisskeyExportOrImportNlNl extends _StringsMisskeyExportOrImportEnUs {
	_StringsMisskeyExportOrImportNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get followingList => 'Volgend';
	@override String get muteList => 'Dempen';
	@override String get blockingList => 'Blokkeren';
	@override String get userLists => 'Lijsten';
	@override String get excludeMutingUsers => 'Negeer gedempte gebruikers';
	@override String get excludeInactiveUsers => 'Negeer inactieve gebruikers';
}

// Path: misskey.charts_
class _StringsMisskeyChartsNlNl extends _StringsMisskeyChartsEnUs {
	_StringsMisskeyChartsNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Federatie';
}

// Path: misskey.timelines_
class _StringsMisskeyTimelinesNlNl extends _StringsMisskeyTimelinesEnUs {
	_StringsMisskeyTimelinesNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get home => 'Startpagina';
}

// Path: misskey.pages_
class _StringsMisskeyPagesNlNl extends _StringsMisskeyPagesEnUs {
	_StringsMisskeyPagesNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyPagesBlocksNlNl blocks = _StringsMisskeyPagesBlocksNlNl._(_root);
}

// Path: misskey.notification_
class _StringsMisskeyNotificationNlNl extends _StringsMisskeyNotificationEnUs {
	_StringsMisskeyNotificationNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get youWereFollowed => 'volgde jou';
	@override String unreadAntennaNote({required Object name}) => 'Antenne ${name}';
	@override late final _StringsMisskeyNotificationTypesNlNl types_ = _StringsMisskeyNotificationTypesNlNl._(_root);
	@override late final _StringsMisskeyNotificationActionsNlNl actions_ = _StringsMisskeyNotificationActionsNlNl._(_root);
}

// Path: misskey.deck_
class _StringsMisskeyDeckNlNl extends _StringsMisskeyDeckEnUs {
	_StringsMisskeyDeckNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyDeckColumnsNlNl columns_ = _StringsMisskeyDeckColumnsNlNl._(_root);
}

// Path: misskey.webhookSettings_
class _StringsMisskeyWebhookSettingsNlNl extends _StringsMisskeyWebhookSettingsEnUs {
	_StringsMisskeyWebhookSettingsNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Naam';
}

// Path: misskey.moderationLogTypes_
class _StringsMisskeyModerationLogTypesNlNl extends _StringsMisskeyModerationLogTypesEnUs {
	_StringsMisskeyModerationLogTypesNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'Opschorten';
	@override String get resetPassword => 'Wachtwoord terugzetten';
}

// Path: misskey.delivery_.type_
class _StringsMisskeyDeliveryTypeNlNl extends _StringsMisskeyDeliveryTypeEnUs {
	_StringsMisskeyDeliveryTypeNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get none => 'Publiceren';
}

// Path: misskey.email_.follow_
class _StringsMisskeyEmailFollowNlNl extends _StringsMisskeyEmailFollowEnUs {
	_StringsMisskeyEmailFollowNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'volgde jou';
}

// Path: misskey.theme_.keys
class _StringsMisskeyThemeKeysNlNl extends _StringsMisskeyThemeKeysEnUs {
	_StringsMisskeyThemeKeysNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get mention => 'Vermelding';
	@override String get renote => 'Herdelen';
}

// Path: misskey.widgets_.userList_
class _StringsMisskeyWidgetsUserListNlNl extends _StringsMisskeyWidgetsUserListEnUs {
	_StringsMisskeyWidgetsUserListNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Kies een lijst.';
}

// Path: misskey.pages_.blocks
class _StringsMisskeyPagesBlocksNlNl extends _StringsMisskeyPagesBlocksEnUs {
	_StringsMisskeyPagesBlocksNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get image => 'Afbeeldingen';
}

// Path: misskey.notification_.types_
class _StringsMisskeyNotificationTypesNlNl extends _StringsMisskeyNotificationTypesEnUs {
	_StringsMisskeyNotificationTypesNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Volgend';
	@override String get mention => 'Vermelding';
	@override String get renote => 'Herdelen';
	@override String get quote => 'Quote';
	@override String get reaction => 'Reacties';
	@override String get login => 'Inloggen';
}

// Path: misskey.notification_.actions_
class _StringsMisskeyNotificationActionsNlNl extends _StringsMisskeyNotificationActionsEnUs {
	_StringsMisskeyNotificationActionsNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get reply => 'Antwoord';
	@override String get renote => 'Herdelen';
}

// Path: misskey.deck_.columns_
class _StringsMisskeyDeckColumnsNlNl extends _StringsMisskeyDeckColumnsEnUs {
	_StringsMisskeyDeckColumnsNlNl._(_StringsNlNl root) : this._root = root, super._(root);

	@override final _StringsNlNl _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Meldingen';
	@override String get tl => 'Tijdlijn';
	@override String get antenna => 'Antennes';
	@override String get list => 'Lijsten';
	@override String get mentions => 'Vermeldingen';
}
