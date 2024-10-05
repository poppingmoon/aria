///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint

part of 'strings.g.dart';

// Path: <root>
class _StringsNoNo extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsNoNo.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.noNo,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <no-NO>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	@override late final _StringsNoNo _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAriaNoNo aria = _StringsAriaNoNo._(_root);
	@override late final _StringsMisskeyNoNo misskey = _StringsMisskeyNoNo._(_root);
}

// Path: aria
class _StringsAriaNoNo extends _StringsAriaEnUs {
	_StringsAriaNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Er du sikker på at du vil følge '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria oversettes til flere språk av frivillige. Du kan hjelpe til på '),
		link,
		const TextSpan(text: '.'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Renotes av '),
		user,
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Er du sikker på at du vil slutte å følge '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' sa noe'),
	]);
}

// Path: misskey
class _StringsMisskeyNoNo extends _StringsMisskeyEnUs {
	_StringsMisskeyNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Norsk Bokmål';
	@override String get headlineMisskey => 'Et nettverk forbundet med Notes';
	@override String get introMisskey => 'Velkommen! Misskey er en desentralisert mikrobloggtjeneste med åpen kildekode.\nOpprett "Notes" for å dele tankene dine med alle rundt deg. 📡\nMed "reaksjoner" kan du også raskt gi uttrykk for hva du synes om alles Notes. 👍\nLa oss utforske en ny verden! 🚀';
	@override String monthAndDay({required Object day, required Object month}) => '${day}-${month}';
	@override String get search => 'Søk';
	@override String get notifications => 'Varsler';
	@override String get username => 'Brukernavn';
	@override String get password => 'Passord';
	@override String get forgotPassword => 'Glemt passord';
	@override String get fetchingAsApObject => 'Henter fra Fediverse...';
	@override String get ok => 'OK';
	@override String get gotIt => 'Skjønner';
	@override String get cancel => 'Avbryt';
	@override String get noThankYou => 'Ikke nå';
	@override String get enterUsername => 'Skriv inn brukernavn';
	@override String renotedBy({required Object user}) => 'Renotes av ${user}';
	@override String get noNotes => 'Ingen Notes';
	@override String get noNotifications => 'Ingen varsler';
	@override String get instance => 'Server';
	@override String get settings => 'Innstillinger';
	@override String get notificationSettings => 'Varslingsinnstillinger';
	@override String get basicSettings => 'Grunnleggende innstillinger';
	@override String get otherSettings => 'Andre innstillinger';
	@override String get openInWindow => 'Åpne i vindu';
	@override String get profile => 'Profil';
	@override String get timeline => 'Tidslinje';
	@override String get noAccountDescription => 'Denne brukeren har ikke skrevet sin biografi ennå.';
	@override String get login => 'Logg inn';
	@override String get loggingIn => 'Logget inn';
	@override String get logout => 'Logg ut';
	@override String get signup => 'Bli med';
	@override String get uploading => 'Laster opp';
	@override String get save => 'Lagre';
	@override String get users => 'Brukere';
	@override String get addUser => 'Legg til bruker';
	@override String get favorite => 'Legg til i favoritter';
	@override String get favorites => 'Favoritter';
	@override String get unfavorite => 'Fjern fra favoritter';
	@override String get favorited => 'Lagt til i favoritter.';
	@override String get alreadyFavorited => 'Allerede lagt til i favoritter.';
	@override String get cantFavorite => 'Kunne ikke legge til i favoritter.';
	@override String get pin => 'Fest til profil';
	@override String get unpin => 'Fjern fra profil';
	@override String get copyContent => 'Kopier innhold';
	@override String get copyLink => 'Kopier lenke';
	@override String get delete => 'Slett';
	@override String get deleteAndEdit => 'Slett og rediger';
	@override String get deleteAndEditConfirm => 'Er du sikker på at du vil slette denne Noten og redigere den? Du vil miste alle reaksjoner, Renotes og svar på den.';
	@override String get addToList => 'Legg til i liste';
	@override String get sendMessage => 'Send en melding';
	@override String get copyRSS => 'Kopier RSS';
	@override String get copyUsername => 'Kopier brukernavn';
	@override String get searchUser => 'Søk brukere';
	@override String get reply => 'Svar';
	@override String get loadMore => 'Vis mer';
	@override String get showMore => 'Vis mer';
	@override String get showLess => 'Lukk';
	@override String get youGotNewFollower => 'fulgte deg';
	@override String get followRequestAccepted => 'Følgeforespørsel akseptert';
	@override String get importAndExport => 'Importer og eksporter';
	@override String get import => 'Importer';
	@override String get export => 'Eksporter';
	@override String get files => 'Filer';
	@override String get download => 'Nedlastinger';
	@override String driveFileDeleteConfirm({required Object name}) => 'Er du sikker på at du vil slette "${name}"? Det vil også forsvinne fra alt innhold som bruker det.';
	@override String unfollowConfirm({required Object name}) => 'Er du sikker på at du vil slutte å følge ${name}?';
	@override String get importRequested => 'Du har bedt om import. Dette kan ta en stund.';
	@override String get lists => 'Lister';
	@override String get noLists => 'Ingen lister';
	@override String get note => 'Note';
	@override String get notes => 'Notes';
	@override String get following => 'Følger';
	@override String get followers => 'Følgere';
	@override String get followsYou => 'Følger deg';
	@override String get createList => 'Opprett liste';
	@override String get error => 'Feil';
	@override String get somethingHappened => 'En feil har oppstått';
	@override String get retry => 'Prøv igjen';
	@override String get pageLoadError => 'Kunne ikke hente side.';
	@override String get serverIsDead => 'Denne serveren svarer ikke. Vennligst vent en stund og prøv igjen.';
	@override String get enterListName => 'Skriv inn et navn på listen';
	@override String get privacy => 'Personvern';
	@override String get defaultNoteVisibility => 'Standard synlighet';
	@override String get follow => 'Følg';
	@override String get followRequest => 'Følgeforespørsel';
	@override String get followRequests => 'Følgeforespørsel';
	@override String get unfollow => 'Avfølg';
	@override String get followRequestPending => 'Venter på godkjenning';
	@override String get enterEmoji => 'Skriv inn en emoji';
	@override String get renote => 'Renote';
	@override String get renoted => 'Renotet.';
	@override String get cantRenote => 'Dette innlegget kan ikke renotes.';
	@override String get cantReRenote => 'En Renote kan ikke renotes.';
	@override String get quote => 'Sitat';
	@override String get inChannelRenote => 'Renote kun for kanal';
	@override String get inChannelQuote => 'Sitat kun for kanal';
	@override String get pinnedNote => 'Festet Note';
	@override String get pinned => 'Fest til profil';
	@override String get you => 'Du';
	@override String get clickToShow => 'Klikk for å vise';
	@override String get add => 'Legg til';
	@override String get reaction => 'Reaksjon';
	@override String get reactions => 'Reaksjoner';
	@override String get reactionSettingDescription2 => 'Dra for å endre rekkefølgen, klikk for å slette, trykk "+" for å legge til.';
	@override String get rememberNoteVisibility => 'Husk innstillingene for synlighet av Notes';
	@override String get attachCancel => 'Fjern vedlegg';
	@override String get enterFileName => 'Skriv inn filnavn';
	@override String get mute => 'Skjul';
	@override String get unmute => 'Vis';
	@override String get renoteMute => 'Skjul Renotes';
	@override String get renoteUnmute => 'Vis Renotes';
	@override String get block => 'Blokker';
	@override String get unblock => 'Opphev blokkering';
	@override String get suspend => 'Suspender';
	@override String get blockConfirm => 'Er du sikker på at du vil blokke denne kontoen?';
	@override String get unblockConfirm => 'Er du sikker på at du vil oppheve blokkeringen av denne kontoen?';
	@override String get suspendConfirm => 'Er du sikker på at du vil suspendere denne kontoen?';
	@override String get selectList => 'Velg en liste';
	@override String get selectChannel => 'Velg en kanal';
	@override String get selectAntenna => 'Velg en antenne';
	@override String get selectWidget => 'Velg en widget';
	@override String get editWidgets => 'Rediger widgeter';
	@override String get editWidgetsExit => 'Ferdig';
	@override String get emoji => 'Emoji';
	@override String get emojis => 'Emojier';
	@override String get addEmoji => 'Legg til emoji';
	@override String get settingGuide => 'Anbefalte innstillinger';
	@override String get flagAsBot => 'Merk denne kontoen som en bot';
	@override String get flagAsBotDescription => 'Aktiver dette alternativet hvis denne kontoen styres av et program. Hvis det er aktivert, vil det fungere som et flagg for andre utviklere for å forhindre endeløse interaksjonskjeder med andre roboter og justere Misskeys interne systemer til å behandle denne kontoen som en bot.';
	@override String get flagAsCat => 'Merk denne kontoen som en katt';
	@override String get flagAsCatDescription => 'Aktiver dette alternativet for å merke denne kontoen som en katt.';
	@override String get flagShowTimelineReplies => 'Vis svar i tidslinje';
	@override String get addAccount => 'Legg til konto';
	@override String get reloadAccountsList => 'Last inn kontoliste på nytt';
	@override String get loginFailed => 'Kunne ikke logge inn';
	@override String get general => 'Generelt';
	@override String searchWith({required Object q}) => 'Søk: ${q}';
	@override String get youHaveNoLists => 'Du har ingen lister';
	@override String followConfirm({required Object name}) => 'Er du sikker på at du vil følge ${name}?';
	@override String get host => 'Vert';
	@override String get selectUser => 'Velg en bruker';
	@override String get recipient => 'Mottaker';
	@override String get annotation => 'Kommentarer';
	@override String get federation => 'Føderasjon';
	@override String get instances => 'Servere';
	@override String get registeredAt => 'Registrerte seg';
	@override String get latestRequestReceivedAt => 'Siste forespørsel mottatt';
	@override String get latestStatus => 'Siste status';
	@override String get charts => 'Diagrammer';
	@override String get perHour => 'Per time';
	@override String get perDay => 'Per dag';
	@override String get stopActivityDelivery => 'Slutt å sende aktiviteter';
	@override String get blockThisInstance => 'Blokker denne serveren';
	@override String get operations => 'Operasjoner';
	@override String get software => 'Programvare';
	@override String get version => 'Versjon';
	@override String get metadata => 'Metadata';
	@override String withNFiles({required Object n}) => '${n} fil(er)';
	@override String get network => 'Nettverk';
	@override String get instanceInfo => 'Serverinformasjon';
	@override String get statistics => 'Statistikk';
	@override String get clearQueue => 'Tøm kø';
	@override String get clearQueueConfirmTitle => 'Er du sikker på at du vil tømme køen?';
	@override String get blockedInstances => 'Blokkerte severe';
	@override String get blockedInstancesDescription => 'Skriv opp vertsnavnene til serverne du vil blokkere, atskilt med linjeskift. Serverne i listen vil ikke lenger kunne kommunisere med denne serveren.';
	@override String get muteAndBlock => 'Skjul og blokker';
	@override String get mutedUsers => 'Skjulte brukere';
	@override String get blockedUsers => 'Blokkerte brukere';
	@override String get noUsers => 'Det er ingen brukere';
	@override String get editProfile => 'Rediger profil';
	@override String get noteDeleteConfirm => 'Er du sikker på at du vil slette denne Noten?';
	@override String get pinLimitExceeded => 'Du kan ikke feste flere.';
	@override String get intro => 'Installasjonen av Misskey er ferdig! Vennligst opprett en administratorkonto.';
	@override String get done => 'Ferdig';
	@override String get default_ => 'Standard';
	@override String defaultValueIs({required Object value}) => 'Standard: ${value}';
	@override String get noCustomEmojis => 'Det er ingen emoji';
	@override String get noJobs => 'Det er ingen jobber';
	@override String get blocked => 'Blokkert';
	@override String get suspended => 'Suspendert';
	@override String get all => 'Alle';
	@override String get notResponding => 'Svarer ikke';
	@override String get changePassword => 'Endre passord';
	@override String get security => 'Sikkerhet';
	@override String get retypedNotMatch => 'Inngangene stemmer ikke overens.';
	@override String get currentPassword => 'Nåværende passord';
	@override String get newPassword => 'Nytt passord';
	@override String get newPasswordRetype => 'Nytt passord (gjenta)';
	@override String get attachFile => 'Legg ved filer';
	@override String get more => 'Mer!';
	@override String get noSuchUser => 'Bruker ikke funnet';
	@override String get announcements => 'Kunngjøringer';
	@override String get remove => 'Slett';
	@override String get removed => 'Vellykket slettet';
	@override String removeAreYouSure({required Object x}) => 'Er du sikker på at du vil fjerne "${x}"?';
	@override String deleteAreYouSure({required Object x}) => 'Er du sikker på at du vil slette "${x}"?';
	@override String get saved => 'Lagret';
	@override String get upload => 'Laste opp';
	@override String get keepOriginalUploading => 'Behold originalbildet';
	@override String get fromUrl => 'Fra URL';
	@override String get uploadFromUrl => 'Last opp fra en URL';
	@override String get uploadFromUrlDescription => 'URL til filen du vil laste opp';
	@override String get explore => 'Utforsk';
	@override String get messageRead => 'Lest';
	@override String nUsersRead({required Object n}) => 'lest av ${n}';
	@override String agreeTo({required Object x0}) => 'Jeg godtar ${x0}';
	@override String get agree => 'Godta';
	@override String get agreeBelow => 'Jeg godtar følgende';
	@override String get basicNotesBeforeCreateAccount => 'Viktige merknader';
	@override String get termsOfService => 'Vilkår for bruk';
	@override String get home => 'Hjem';
	@override String get activity => 'Aktivitet';
	@override String get images => 'Bilder';
	@override String get image => 'Bilde';
	@override String get birthday => 'Bursdag';
	@override String yearsOld({required Object age}) => '${age} år gammel';
	@override String get theme => 'Temaer';
	@override String get light => 'Lys';
	@override String get dark => 'Mørk';
	@override String get lightThemes => 'Lyse temaer';
	@override String get darkThemes => 'Mørke temaer';
	@override String get syncDeviceDarkMode => 'Synkroniser mørkmodus med enhetens innstillinger';
	@override String get fileName => 'Filnavn';
	@override String get selectFile => 'Velg en fil';
	@override String get selectFiles => 'Velg filer';
	@override String get selectFolder => 'Velg en mappe';
	@override String get selectFolders => 'Velg mapper';
	@override String get renameFile => 'Endre filnavn';
	@override String get folderName => 'Mappenavn';
	@override String get createFolder => 'Opprett en mappe';
	@override String get renameFolder => 'Endre mappenavn';
	@override String get deleteFolder => 'Slett denne mappen';
	@override String get addFile => 'Legg til en fil';
	@override String get emptyFolder => 'Denne mappen er tom';
	@override String get unableToDelete => 'Kan ikke slette';
	@override String get inputNewFileName => 'Skriv inn et nytt filnavn';
	@override String get inputNewDescription => 'Skriv inn ny bildetekst';
	@override String get inputNewFolderName => 'Skriv inn et nytt mappenavn';
	@override String get circularReferenceFolder => 'Målmappen er en undermappe til mappen du ønsker å flytte.';
	@override String get hasChildFilesOrFolders => 'Siden denne mappen ikke er tom, kan den ikke slettes.';
	@override String get copyUrl => 'Kopier URL';
	@override String get rename => 'Endre navn';
	@override String get avatar => 'Avatar';
	@override String get banner => 'Banner';
	@override String get doNothing => 'Ignorer';
	@override String get accept => 'Tillatt';
	@override String get reject => 'Avslå';
	@override String get instanceName => 'Servernavn';
	@override String get instanceDescription => 'Serverbeskrivelse';
	@override String get thisYear => 'År';
	@override String get thisMonth => 'Måned';
	@override String get today => 'I dag';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => '${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'Sider';
	@override String get integration => 'Integrasjon';
	@override String get enableLocalTimeline => 'Aktiver lokal tidslinje';
	@override String get enableGlobalTimeline => 'Aktiver global tidslinje';
	@override String get disablingTimelinesInfo => 'Administratorer og Moderatorer vil alltid ha tilgang til alle tidslinjer, selv om de ikke er aktivert.';
	@override String get registration => 'Registrer';
	@override String get enableRegistration => 'Aktiver registrering av nye brukere';
	@override String get invite => 'Inviter';
	@override String get basicInfo => 'Grunnleggende informasjon';
	@override String get pinnedUsers => 'Festede brukrere';
	@override String get pinnedUsersDescription => 'Liste over brukernavn atskilt med linjeskift som skal festes i "Utforsk" fanen.';
	@override String get pinnedPages => 'Festede sider';
	@override String get pinnedNotes => 'Festet Note';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'Aktiver hCaptcha';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'Aktiver reCAPTCHA';
	@override String get turnstile => 'Turnstile';
	@override String get enableTurnstile => 'Aktiver Turnstile';
	@override String get antennas => 'Antenner';
	@override String get name => 'Navn';
	@override String get antennaSource => 'Antennekilde';
	@override String get notifyAntenna => 'Varsle om nye Notes';
	@override String get withFileAntenna => 'Bare Notes med filer';
	@override String get notesAndReplies => 'Notes og svar';
	@override String get popularUsers => 'Populære brukere';
	@override String exploreUsersCount({required Object count}) => 'Det finnes ${count} brukere';
	@override String get exploreFediverse => 'Utforsk Fediverse';
	@override String get userList => 'Lister';
	@override String get about => 'Informasjon';
	@override String get aboutMisskey => 'Om Misskey';
	@override String newPasswordIs({required Object password}) => 'Det nye passordet er "${password}".';
	@override String get share => 'Del';
	@override String get notFound => 'Ikke funnet';
	@override String get markAsReadAllNotifications => 'Merk alle varsler som lest';
	@override String get markAsReadAllUnreadNotes => 'Merk alle Notes som lest';
	@override String get help => 'Hjelp';
	@override String get inputMessageHere => 'Skriv inn melding her';
	@override String get close => 'Lukk';
	@override String get invites => 'Inviter';
	@override String get members => 'Medlemmer';
	@override String get title => 'Tittel';
	@override String get text => 'Tekst';
	@override String get next => 'Neste';
	@override String get retype => 'Gjenta';
	@override String get quoteAttached => 'Sitat';
	@override String get noMessagesYet => 'Ingen meldinger ennå';
	@override String get newMessageExists => 'Det er nye meldinger';
	@override String get onlyOneFileCanBeAttached => 'Du kan bare legge ved én fil i en melding';
	@override String get invitations => 'Inviter';
	@override String get available => 'Tilgjengelig';
	@override String get unavailable => 'Utilgjengelig';
	@override String get tooShort => 'For kort';
	@override String get tooLong => 'For langt';
	@override String get weakPassword => 'Svakt passord';
	@override String get normalPassword => 'Gjennomsnittlig passord';
	@override String get strongPassword => 'Sterkt passord';
	@override String signinWith({required Object x}) => 'Logg inn med ${x}';
	@override String get signinFailed => 'Kunne ikke logge inn. Det oppgitte brukernavnet eller passordet er feil.';
	@override String get or => 'eller';
	@override String get language => 'Språk';
	@override String aboutX({required Object x}) => 'Om ${x}';
	@override String get category => 'Kategori';
	@override String get createAccount => 'Opprett konto';
	@override String get openImageInNewTab => 'Åpne bilder i ny fane';
	@override String get clientSettings => 'Klientinnstillinger';
	@override String get accountSettings => 'Kontoinnstillinger';
	@override String get objectStorageRegion => 'Region';
	@override String get objectStorageUseSSL => 'Bruk SSL';
	@override String get objectStorageUseProxy => 'Bruk Proxy';
	@override String get deleteAll => 'Slett alt';
	@override String get newNoteRecived => 'Det er nye Notes';
	@override String get listen => 'Lytt';
	@override String get none => 'Ingen';
	@override String get volume => 'Volum';
	@override String get chooseEmoji => 'Velg emoji';
	@override String get recentUsed => 'Sist brukte';
	@override String get install => 'Installer';
	@override String get uninstall => 'Avinstaller';
	@override String get nothing => 'Ingenting';
	@override String get deleteAllFiles => 'Slett alle filer';
	@override String get deleteAllFilesConfirm => 'Er du sikker på at du vil slette alle filer?';
	@override String get userSuspended => 'Denne brukeren har blitt suspendert.';
	@override String get accountDeleted => 'Kontoen blir slettet';
	@override String get accountDeletedDescription => 'Denne kontoen har blitt slettet.';
	@override String get menu => 'Meny';
	@override String get poll => 'Avstemning';
	@override String get description => 'Beskrivelse';
	@override String get author => 'Forfatter';
	@override String get height => 'Høyde';
	@override String get large => 'Stor';
	@override String get small => 'Liten';
	@override String get notificationType => 'Varseltype';
	@override String get edit => 'Rediger';
	@override String get email => 'E-post';
	@override String get smtpHost => 'Vert';
	@override String get smtpUser => 'Brukernavn';
	@override String get smtpPass => 'Passord';
	@override String userSaysSomething({required Object name}) => '${name} sa noe';
	@override String get copy => 'Kopier';
	@override String get channel => 'Kanaler';
	@override String get create => 'Opprett';
	@override String get notificationSetting => 'Varslingsinnstillinger';
	@override String get other => 'Andre';
	@override String get behavior => 'Oppførsel';
	@override String get sample => 'Eksempel';
	@override String get abuseReports => 'Rappoter';
	@override String get reportAbuse => 'Rappoter';
	@override String get send => 'Send';
	@override String get openInNewTab => 'Åpne i ny fane';
	@override String waitingFor({required Object x}) => 'Venter på ${x}';
	@override String get random => 'Tilfeldig';
	@override String get system => 'System';
	@override String get desktop => 'Skrivebord';
	@override String i18nInfo({required Object link}) => 'Misskey oversettes til flere språk av frivillige. Du kan hjelpe til på ${link}.';
	@override String get followingCount => 'Følger';
	@override String get followersCount => 'Følgere';
	@override String get yes => 'Ja';
	@override String get no => 'Nei';
	@override String get contact => 'Kontakt';
	@override String get developer => 'Utvikler';
	@override String get makeExplorable => 'Gjør konto synlig i "Utforsk"';
	@override String get makeExplorableDescription => 'Hvis du slår av dette, vises ikke kontoen din i "Utforsk" delen.';
	@override String get left => 'Venstre';
	@override String nNotes({required Object n}) => '${n} Notes';
	@override String get saveAs => 'Lagre som';
	@override String get value => 'Verdi';
	@override String get deleteConfirm => 'Vil du slette?';
	@override String get invalidValue => 'Verdien er ugyldig.';
	@override String get closeAccount => 'Avslutt konto';
	@override String get emailNotification => 'E-postvarsler';
	@override String get inChannelSearch => 'Søk i kanal';
	@override String get clear => 'Tøm';
	@override String get markAllAsRead => 'Merk alt som lest';
	@override String get addDescription => 'Legg til beskrivelse';
	@override String get info => 'Infomasjon';
	@override String get unknown => 'Ukjent';
	@override String get selectAccount => 'Velg konto';
	@override String get user => 'Brukere';
	@override String get accounts => 'Kontoer';
	@override String get switch_ => 'Bytt';
	@override String get gallery => 'Galleri';
	@override String get ads => 'Annonser';
	@override String get memo => 'Notat';
	@override String get high => 'Høy';
	@override String get low => 'Lav';
	@override String get sent => 'Sendt';
	@override String get received => 'Mottatt';
	@override String get learnMore => 'Les mer';
	@override String get misskeyUpdated => 'Misskey har blitt oppdatert!';
	@override String get translate => 'Oversett';
	@override String translatedFrom({required Object x}) => 'Oversatt fra ${x}';
	@override String get unread => 'Ulest';
	@override String get manageAccounts => 'Administrer konto';
	@override String get classic => 'Klassisk';
	@override String get muteThread => 'Skjul denne tråden';
	@override String get unmuteThread => 'Vis denne tråden';
	@override String get continueThread => 'Vis fortsettelse av tråden';
	@override String get hide => 'Skjul';
	@override String get smartphone => 'Smarttelefon';
	@override String get tablet => 'Nettbrett';
	@override String get auto => 'Automatisk';
	@override String get size => 'Størrelse';
	@override String get searchByGoogle => 'Søk';
	@override String get tenMinutes => '10 minutter';
	@override String get oneHour => '1 time';
	@override String get oneDay => '1 dag';
	@override String get oneWeek => '1 uke';
	@override String get oneMonth => '1 måned';
	@override String get file => 'Filer';
	@override String get recommended => 'Anbefalt';
	@override String get check => 'Sjekk';
	@override String get deleteAccount => 'Slett konto';
	@override String get document => 'Dokumenter';
	@override String get logoutConfirm => 'Vil du logge ut?';
	@override String get pleaseSelect => 'Velg et alternativ';
	@override String get type => 'Type';
	@override String get beta => 'Beta';
	@override String get account => 'Konto';
	@override String get move => 'Flytt';
	@override String get pushNotification => 'Push-varsler';
	@override String get tools => 'Verktøy';
	@override String get like => 'Liker!';
	@override String get unlike => 'Liker ikke';
	@override String get numberOfLikes => 'Likerklikk';
	@override String get show => 'Vis';
	@override String get neverShow => 'Ikke vis igjen';
	@override String get remindMeLater => 'Kanskje senere';
	@override String get didYouLikeMisskey => 'Likte du Misskey?';
	@override String get roles => 'Roller';
	@override String get role => 'Rolle';
	@override String get color => 'Farge';
	@override String get youCannotCreateAnymore => 'Du kan ikke opprette flere.';
	@override String get cannotPerformTemporary => 'Midlertidig utilgjengelig';
	@override String get achievements => 'Prestasjoner';
	@override String get thisPostMayBeAnnoyingCancel => 'Avbryt';
	@override String get exploreOtherServers => 'Utforsk andre severe';
	@override String get letsLookAtTimeline => 'La oss se på tidslinje';
	@override String get cannotBeChangedLater => 'Du kan ikke endre senere.';
	@override String get likeOnly => 'Bare liker';
	@override String get retryAllQueuesConfirmTitle => 'Vil du prøve igjen akkurat nå?';
	@override String get video => 'Video';
	@override String get videos => 'Videoer';
	@override String get continue_ => 'Fortsett';
	@override String get youFollowing => 'Følger';
	@override String get options => 'Alternativ';
	@override String get icon => 'Avatar';
	@override String get replies => 'Svar';
	@override String get renotes => 'Renote';
	@override String get surrender => 'Avbryt';
	@override late final _StringsMisskeyDeliveryNoNo delivery_ = _StringsMisskeyDeliveryNoNo._(_root);
	@override late final _StringsMisskeyInitialAccountSettingNoNo initialAccountSetting_ = _StringsMisskeyInitialAccountSettingNoNo._(_root);
	@override late final _StringsMisskeyAchievementsNoNo achievements_ = _StringsMisskeyAchievementsNoNo._(_root);
	@override late final _StringsMisskeyRoleNoNo role_ = _StringsMisskeyRoleNoNo._(_root);
	@override late final _StringsMisskeyEmailUnavailableNoNo emailUnavailable_ = _StringsMisskeyEmailUnavailableNoNo._(_root);
	@override late final _StringsMisskeyAccountDeleteNoNo accountDelete_ = _StringsMisskeyAccountDeleteNoNo._(_root);
	@override late final _StringsMisskeyAdNoNo ad_ = _StringsMisskeyAdNoNo._(_root);
	@override late final _StringsMisskeyGalleryNoNo gallery_ = _StringsMisskeyGalleryNoNo._(_root);
	@override late final _StringsMisskeyEmailNoNo email_ = _StringsMisskeyEmailNoNo._(_root);
	@override late final _StringsMisskeyPreferencesBackupsNoNo preferencesBackups_ = _StringsMisskeyPreferencesBackupsNoNo._(_root);
	@override late final _StringsMisskeyRegistryNoNo registry_ = _StringsMisskeyRegistryNoNo._(_root);
	@override late final _StringsMisskeyAboutMisskeyNoNo aboutMisskey_ = _StringsMisskeyAboutMisskeyNoNo._(_root);
	@override late final _StringsMisskeyInstanceTickerNoNo instanceTicker_ = _StringsMisskeyInstanceTickerNoNo._(_root);
	@override late final _StringsMisskeyChannelNoNo channel_ = _StringsMisskeyChannelNoNo._(_root);
	@override late final _StringsMisskeyMenuDisplayNoNo menuDisplay_ = _StringsMisskeyMenuDisplayNoNo._(_root);
	@override late final _StringsMisskeyThemeNoNo theme_ = _StringsMisskeyThemeNoNo._(_root);
	@override late final _StringsMisskeySfxNoNo sfx_ = _StringsMisskeySfxNoNo._(_root);
	@override late final _StringsMisskeyAgoNoNo ago_ = _StringsMisskeyAgoNoNo._(_root);
	@override late final _StringsMisskeyTimeNoNo time_ = _StringsMisskeyTimeNoNo._(_root);
	@override late final _StringsMisskeyX2faNoNo x2fa_ = _StringsMisskeyX2faNoNo._(_root);
	@override late final _StringsMisskeyWeekdayNoNo weekday_ = _StringsMisskeyWeekdayNoNo._(_root);
	@override late final _StringsMisskeyWidgetsNoNo widgets_ = _StringsMisskeyWidgetsNoNo._(_root);
	@override late final _StringsMisskeyCwNoNo cw_ = _StringsMisskeyCwNoNo._(_root);
	@override late final _StringsMisskeyPollNoNo poll_ = _StringsMisskeyPollNoNo._(_root);
	@override late final _StringsMisskeyVisibilityNoNo visibility_ = _StringsMisskeyVisibilityNoNo._(_root);
	@override late final _StringsMisskeyPostFormNoNo postForm_ = _StringsMisskeyPostFormNoNo._(_root);
	@override late final _StringsMisskeyProfileNoNo profile_ = _StringsMisskeyProfileNoNo._(_root);
	@override late final _StringsMisskeyExportOrImportNoNo exportOrImport_ = _StringsMisskeyExportOrImportNoNo._(_root);
	@override late final _StringsMisskeyChartsNoNo charts_ = _StringsMisskeyChartsNoNo._(_root);
	@override late final _StringsMisskeyInstanceChartsNoNo instanceCharts_ = _StringsMisskeyInstanceChartsNoNo._(_root);
	@override late final _StringsMisskeyTimelinesNoNo timelines_ = _StringsMisskeyTimelinesNoNo._(_root);
	@override late final _StringsMisskeyPlayNoNo play_ = _StringsMisskeyPlayNoNo._(_root);
	@override late final _StringsMisskeyPagesNoNo pages_ = _StringsMisskeyPagesNoNo._(_root);
	@override late final _StringsMisskeyNotificationNoNo notification_ = _StringsMisskeyNotificationNoNo._(_root);
	@override late final _StringsMisskeyDeckNoNo deck_ = _StringsMisskeyDeckNoNo._(_root);
	@override late final _StringsMisskeyWebhookSettingsNoNo webhookSettings_ = _StringsMisskeyWebhookSettingsNoNo._(_root);
	@override late final _StringsMisskeyAbuseReportNoNo abuseReport_ = _StringsMisskeyAbuseReportNoNo._(_root);
	@override late final _StringsMisskeyModerationLogTypesNoNo moderationLogTypes_ = _StringsMisskeyModerationLogTypesNoNo._(_root);
}

// Path: misskey.delivery_
class _StringsMisskeyDeliveryNoNo extends _StringsMisskeyDeliveryEnUs {
	_StringsMisskeyDeliveryNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get stop => 'Suspendert';
}

// Path: misskey.initialAccountSetting_
class _StringsMisskeyInitialAccountSettingNoNo extends _StringsMisskeyInitialAccountSettingEnUs {
	_StringsMisskeyInitialAccountSettingNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get theseSettingsCanEditLater => 'Du kan endre disse innstillingene senere.';
}

// Path: misskey.achievements_
class _StringsMisskeyAchievementsNoNo extends _StringsMisskeyAchievementsEnUs {
	_StringsMisskeyAchievementsNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAchievementsTypesNoNo types_ = _StringsMisskeyAchievementsTypesNoNo._(_root);
}

// Path: misskey.role_
class _StringsMisskeyRoleNoNo extends _StringsMisskeyRoleEnUs {
	_StringsMisskeyRoleNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get options => 'Alternativ';
	@override late final _StringsMisskeyRolePriorityNoNo priority_ = _StringsMisskeyRolePriorityNoNo._(_root);
}

// Path: misskey.emailUnavailable_
class _StringsMisskeyEmailUnavailableNoNo extends _StringsMisskeyEmailUnavailableEnUs {
	_StringsMisskeyEmailUnavailableNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get used => 'Allerede brukt';
}

// Path: misskey.accountDelete_
class _StringsMisskeyAccountDeleteNoNo extends _StringsMisskeyAccountDeleteEnUs {
	_StringsMisskeyAccountDeleteNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Slett konto';
}

// Path: misskey.ad_
class _StringsMisskeyAdNoNo extends _StringsMisskeyAdEnUs {
	_StringsMisskeyAdNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Ikke vis';
}

// Path: misskey.gallery_
class _StringsMisskeyGalleryNoNo extends _StringsMisskeyGalleryEnUs {
	_StringsMisskeyGalleryNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get like => 'Liker!';
	@override String get unlike => 'Liker ikke';
}

// Path: misskey.email_
class _StringsMisskeyEmailNoNo extends _StringsMisskeyEmailEnUs {
	_StringsMisskeyEmailNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyEmailFollowNoNo follow_ = _StringsMisskeyEmailFollowNoNo._(_root);
}

// Path: misskey.preferencesBackups_
class _StringsMisskeyPreferencesBackupsNoNo extends _StringsMisskeyPreferencesBackupsEnUs {
	_StringsMisskeyPreferencesBackupsNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get saveNew => 'Lagre som ny';
	@override String get cannotSave => 'Kunne ikke lagre';
}

// Path: misskey.registry_
class _StringsMisskeyRegistryNoNo extends _StringsMisskeyRegistryEnUs {
	_StringsMisskeyRegistryNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get key => 'Nøkkel';
	@override String get keys => 'Nøkler';
}

// Path: misskey.aboutMisskey_
class _StringsMisskeyAboutMisskeyNoNo extends _StringsMisskeyAboutMisskeyEnUs {
	_StringsMisskeyAboutMisskeyNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey er programvare med åpen kildekode som har blitt utviklet av syuilo siden 2014.';
	@override String get translation => 'Oversett Misskey';
}

// Path: misskey.instanceTicker_
class _StringsMisskeyInstanceTickerNoNo extends _StringsMisskeyInstanceTickerEnUs {
	_StringsMisskeyInstanceTickerNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get none => 'Ikke vis';
	@override String get always => 'Alltid vis';
}

// Path: misskey.channel_
class _StringsMisskeyChannelNoNo extends _StringsMisskeyChannelEnUs {
	_StringsMisskeyChannelNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get create => 'Opprett kanal';
	@override String get edit => 'Rediger kanal';
	@override String get featured => 'Populært';
	@override String get following => 'Følger';
	@override String get nameAndDescription => 'Navn og beskrivelse';
}

// Path: misskey.menuDisplay_
class _StringsMisskeyMenuDisplayNoNo extends _StringsMisskeyMenuDisplayEnUs {
	_StringsMisskeyMenuDisplayNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Skjul';
}

// Path: misskey.theme_
class _StringsMisskeyThemeNoNo extends _StringsMisskeyThemeEnUs {
	_StringsMisskeyThemeNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get description => 'Beskrivelse';
	@override String get color => 'Farge';
	@override String get key => 'Nøkkel';
	@override late final _StringsMisskeyThemeKeysNoNo keys = _StringsMisskeyThemeKeysNoNo._(_root);
}

// Path: misskey.sfx_
class _StringsMisskeySfxNoNo extends _StringsMisskeySfxEnUs {
	_StringsMisskeySfxNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get note => 'Notes';
	@override String get notification => 'Varsler';
}

// Path: misskey.ago_
class _StringsMisskeyAgoNoNo extends _StringsMisskeyAgoEnUs {
	_StringsMisskeyAgoNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get future => 'Fremitid';
	@override String get justNow => 'Akkurat nå';
	@override String secondsAgo({required Object n}) => '${n}s siden';
	@override String minutesAgo({required Object n}) => '${n}m siden';
	@override String hoursAgo({required Object n}) => '${n}t siden';
	@override String daysAgo({required Object n}) => '${n}d siden';
	@override String weeksAgo({required Object n}) => '${n} uker siden';
	@override String monthsAgo({required Object n}) => '${n} måneder siden';
	@override String yearsAgo({required Object n}) => '${n} år siden';
	@override String get invalid => 'Ingenting';
}

// Path: misskey.time_
class _StringsMisskeyTimeNoNo extends _StringsMisskeyTimeEnUs {
	_StringsMisskeyTimeNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get second => 'Sekunder';
	@override String get minute => 'Minutter';
	@override String get hour => 'Timer';
	@override String get day => 'Dager';
}

// Path: misskey.x2fa_
class _StringsMisskeyX2faNoNo extends _StringsMisskeyX2faEnUs {
	_StringsMisskeyX2faNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get renewTOTPCancel => 'Avbryt';
}

// Path: misskey.weekday_
class _StringsMisskeyWeekdayNoNo extends _StringsMisskeyWeekdayEnUs {
	_StringsMisskeyWeekdayNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get sunday => 'Søndag';
	@override String get monday => 'Mandag';
	@override String get tuesday => 'Tirsdag';
	@override String get wednesday => 'Onsdag';
	@override String get thursday => 'Torsdag';
	@override String get friday => 'Fredag';
	@override String get saturday => 'Lørdag';
}

// Path: misskey.widgets_
class _StringsMisskeyWidgetsNoNo extends _StringsMisskeyWidgetsEnUs {
	_StringsMisskeyWidgetsNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Profil';
	@override String get instanceInfo => 'Serverinformasjon';
	@override String get notifications => 'Varsler';
	@override String get timeline => 'Tidslinje';
	@override String get calendar => 'Kalender';
	@override String get trends => 'Populært';
	@override String get clock => 'Klokke';
	@override String get activity => 'Aktivitet';
	@override String get photos => 'Bilder';
	@override String get federation => 'Føderasjon';
	@override String get button => 'Knapp';
	@override String get aiscriptApp => 'AiScript App';
	@override String get userList => 'Brukerliste';
	@override late final _StringsMisskeyWidgetsUserListNoNo userList_ = _StringsMisskeyWidgetsUserListNoNo._(_root);
}

// Path: misskey.cw_
class _StringsMisskeyCwNoNo extends _StringsMisskeyCwEnUs {
	_StringsMisskeyCwNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Skjul';
	@override String get show => 'Vis mer';
}

// Path: misskey.poll_
class _StringsMisskeyPollNoNo extends _StringsMisskeyPollEnUs {
	_StringsMisskeyPollNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'Trenger minst to valger.';
	@override String choiceN({required Object n}) => 'Valg ${n}';
	@override String get noMore => 'Du kan ikke legge til flere.';
	@override String get deadlineTime => 'Timer';
	@override String votesCount({required Object n}) => '${n} stemmer';
	@override String get vote => 'Stem';
	@override String get showResult => 'Vis resultatet';
	@override String get voted => 'Stemt';
	@override String get closed => 'Avsluttet';
}

// Path: misskey.visibility_
class _StringsMisskeyVisibilityNoNo extends _StringsMisskeyVisibilityEnUs {
	_StringsMisskeyVisibilityNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get home => 'Hjem';
	@override String get followers => 'Følgere';
}

// Path: misskey.postForm_
class _StringsMisskeyPostFormNoNo extends _StringsMisskeyPostFormEnUs {
	_StringsMisskeyPostFormNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyPostFormPlaceholdersNoNo placeholders_ = _StringsMisskeyPostFormPlaceholdersNoNo._(_root);
}

// Path: misskey.profile_
class _StringsMisskeyProfileNoNo extends _StringsMisskeyProfileEnUs {
	_StringsMisskeyProfileNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Navn';
	@override String get username => 'Brukernavn';
	@override String get description => 'Biografi';
	@override String get metadataContent => 'Innhold';
}

// Path: misskey.exportOrImport_
class _StringsMisskeyExportOrImportNoNo extends _StringsMisskeyExportOrImportEnUs {
	_StringsMisskeyExportOrImportNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get followingList => 'Følg';
	@override String get muteList => 'Skjul';
	@override String get blockingList => 'Blokker';
	@override String get userLists => 'Lister';
}

// Path: misskey.charts_
class _StringsMisskeyChartsNoNo extends _StringsMisskeyChartsEnUs {
	_StringsMisskeyChartsNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Føderasjon';
	@override String get filesIncDec => 'Forskjell på antall filer';
}

// Path: misskey.instanceCharts_
class _StringsMisskeyInstanceChartsNoNo extends _StringsMisskeyInstanceChartsEnUs {
	_StringsMisskeyInstanceChartsNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get users => 'Forskjell på antall brukere';
	@override String get ff => 'Forskjell på antall Følg/Følgere';
	@override String get files => 'Forskjell på antall filer';
}

// Path: misskey.timelines_
class _StringsMisskeyTimelinesNoNo extends _StringsMisskeyTimelinesEnUs {
	_StringsMisskeyTimelinesNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get home => 'Hjem';
}

// Path: misskey.play_
class _StringsMisskeyPlayNoNo extends _StringsMisskeyPlayEnUs {
	_StringsMisskeyPlayNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Opprett Play';
	@override String get edit => 'Rediger Play';
	@override String get featured => 'Populært';
	@override String get title => 'Tittel';
	@override String get summary => 'Beskrivelse';
}

// Path: misskey.pages_
class _StringsMisskeyPagesNoNo extends _StringsMisskeyPagesEnUs {
	_StringsMisskeyPagesNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get invalidNameText => 'Pass på at sidetittelen ikke er tom';
	@override String get like => 'Liker';
	@override String get unlike => 'Liker ikke';
	@override String get my => 'Mine sider';
	@override String get featured => 'Populært';
	@override String get contents => 'Innhold';
	@override String get title => 'Tittel';
	@override String get url => 'Side URL';
	@override String get hideTitleWhenPinned => 'Skjul sidetittel når festet til profil';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
	@override String get selectType => 'Velg type';
	@override late final _StringsMisskeyPagesBlocksNoNo blocks = _StringsMisskeyPagesBlocksNoNo._(_root);
}

// Path: misskey.notification_
class _StringsMisskeyNotificationNoNo extends _StringsMisskeyNotificationEnUs {
	_StringsMisskeyNotificationNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get youWereFollowed => 'fulgte deg';
	@override String unreadAntennaNote({required Object name}) => 'Antenne ${name}';
	@override String get achievementEarned => 'Prestasjon låst opp';
	@override late final _StringsMisskeyNotificationTypesNoNo types_ = _StringsMisskeyNotificationTypesNoNo._(_root);
	@override late final _StringsMisskeyNotificationActionsNoNo actions_ = _StringsMisskeyNotificationActionsNoNo._(_root);
}

// Path: misskey.deck_
class _StringsMisskeyDeckNoNo extends _StringsMisskeyDeckEnUs {
	_StringsMisskeyDeckNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get swapLeft => 'Flytt til venstre';
	@override String get swapRight => 'Flytt til høyre';
	@override String get swapUp => 'Flytt opp';
	@override String get swapDown => 'Flytt ned';
	@override String get profile => 'Profil';
	@override String get newProfile => 'Ny profil';
	@override String get deleteProfile => 'Slett profil';
	@override late final _StringsMisskeyDeckColumnsNoNo columns_ = _StringsMisskeyDeckColumnsNoNo._(_root);
}

// Path: misskey.webhookSettings_
class _StringsMisskeyWebhookSettingsNoNo extends _StringsMisskeyWebhookSettingsEnUs {
	_StringsMisskeyWebhookSettingsNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Navn';
}

// Path: misskey.abuseReport_
class _StringsMisskeyAbuseReportNoNo extends _StringsMisskeyAbuseReportEnUs {
	_StringsMisskeyAbuseReportNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAbuseReportNotificationRecipientNoNo notificationRecipient_ = _StringsMisskeyAbuseReportNotificationRecipientNoNo._(_root);
}

// Path: misskey.moderationLogTypes_
class _StringsMisskeyModerationLogTypesNoNo extends _StringsMisskeyModerationLogTypesEnUs {
	_StringsMisskeyModerationLogTypesNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'Suspender';
}

// Path: misskey.achievements_.types_
class _StringsMisskeyAchievementsTypesNoNo extends _StringsMisskeyAchievementsTypesEnUs {
	_StringsMisskeyAchievementsTypesNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAchievementsTypesNotes10NoNo notes10_ = _StringsMisskeyAchievementsTypesNotes10NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100NoNo notes100_ = _StringsMisskeyAchievementsTypesNotes100NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes500NoNo notes500_ = _StringsMisskeyAchievementsTypesNotes500NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes1000NoNo notes1000_ = _StringsMisskeyAchievementsTypesNotes1000NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes5000NoNo notes5000_ = _StringsMisskeyAchievementsTypesNotes5000NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10000NoNo notes10000_ = _StringsMisskeyAchievementsTypesNotes10000NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes20000NoNo notes20000_ = _StringsMisskeyAchievementsTypesNotes20000NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes30000NoNo notes30000_ = _StringsMisskeyAchievementsTypesNotes30000NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes40000NoNo notes40000_ = _StringsMisskeyAchievementsTypesNotes40000NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes50000NoNo notes50000_ = _StringsMisskeyAchievementsTypesNotes50000NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100000NoNo notes100000_ = _StringsMisskeyAchievementsTypesNotes100000NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteFavorited1NoNo noteFavorited1_ = _StringsMisskeyAchievementsTypesNoteFavorited1NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesMyNoteFavorited1NoNo myNoteFavorited1_ = _StringsMisskeyAchievementsTypesMyNoteFavorited1NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing50NoNo following50_ = _StringsMisskeyAchievementsTypesFollowing50NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing100NoNo following100_ = _StringsMisskeyAchievementsTypesFollowing100NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing300NoNo following300_ = _StringsMisskeyAchievementsTypesFollowing300NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers10NoNo followers10_ = _StringsMisskeyAchievementsTypesFollowers10NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers100NoNo followers100_ = _StringsMisskeyAchievementsTypesFollowers100NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesPostedAtLateNightNoNo postedAtLateNight_ = _StringsMisskeyAchievementsTypesPostedAtLateNightNoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceNoNo driveFolderCircularReference_ = _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceNoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesReactWithoutReadNoNo reactWithoutRead_ = _StringsMisskeyAchievementsTypesReactWithoutReadNoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesClickedClickHereNoNo clickedClickHere_ = _StringsMisskeyAchievementsTypesClickedClickHereNoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesJustPlainLuckyNoNo justPlainLucky_ = _StringsMisskeyAchievementsTypesJustPlainLuckyNoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesSetNameToSyuiloNoNo setNameToSyuilo_ = _StringsMisskeyAchievementsTypesSetNameToSyuiloNoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1NoNo passedSinceAccountCreated1_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2NoNo passedSinceAccountCreated2_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3NoNo passedSinceAccountCreated3_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3NoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesLoggedInOnBirthdayNoNo loggedInOnBirthday_ = _StringsMisskeyAchievementsTypesLoggedInOnBirthdayNoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayNoNo loggedInOnNewYearsDay_ = _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayNoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesCookieClickedNoNo cookieClicked_ = _StringsMisskeyAchievementsTypesCookieClickedNoNo._(_root);
	@override late final _StringsMisskeyAchievementsTypesBrainDiverNoNo brainDiver_ = _StringsMisskeyAchievementsTypesBrainDiverNoNo._(_root);
}

// Path: misskey.role_.priority_
class _StringsMisskeyRolePriorityNoNo extends _StringsMisskeyRolePriorityEnUs {
	_StringsMisskeyRolePriorityNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get low => 'Lav';
	@override String get high => 'Høy';
}

// Path: misskey.email_.follow_
class _StringsMisskeyEmailFollowNoNo extends _StringsMisskeyEmailFollowEnUs {
	_StringsMisskeyEmailFollowNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'fulgte deg';
}

// Path: misskey.theme_.keys
class _StringsMisskeyThemeKeysNoNo extends _StringsMisskeyThemeKeysEnUs {
	_StringsMisskeyThemeKeysNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get link => 'Lenke';
	@override String get renote => 'Renote';
}

// Path: misskey.widgets_.userList_
class _StringsMisskeyWidgetsUserListNoNo extends _StringsMisskeyWidgetsUserListEnUs {
	_StringsMisskeyWidgetsUserListNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Velg liste';
}

// Path: misskey.postForm_.placeholders_
class _StringsMisskeyPostFormPlaceholdersNoNo extends _StringsMisskeyPostFormPlaceholdersEnUs {
	_StringsMisskeyPostFormPlaceholdersNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get a => 'Hva skjer?';
}

// Path: misskey.pages_.blocks
class _StringsMisskeyPagesBlocksNoNo extends _StringsMisskeyPagesBlocksEnUs {
	_StringsMisskeyPagesBlocksNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get text => 'Tekst';
	@override String get section => 'Seksjon';
	@override String get image => 'Bilde';
	@override String get button => 'Knapp';
}

// Path: misskey.notification_.types_
class _StringsMisskeyNotificationTypesNoNo extends _StringsMisskeyNotificationTypesEnUs {
	_StringsMisskeyNotificationTypesNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Nye følgere';
	@override String get reply => 'Svar';
	@override String get renote => 'Renotes';
	@override String get quote => 'Sitater';
	@override String get reaction => 'Reaksjoner';
	@override String get login => 'Logg inn';
}

// Path: misskey.notification_.actions_
class _StringsMisskeyNotificationActionsNoNo extends _StringsMisskeyNotificationActionsEnUs {
	_StringsMisskeyNotificationActionsNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get reply => 'Svar';
	@override String get renote => 'Renote';
}

// Path: misskey.deck_.columns_
class _StringsMisskeyDeckColumnsNoNo extends _StringsMisskeyDeckColumnsEnUs {
	_StringsMisskeyDeckColumnsNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Varsler';
	@override String get tl => 'Tidslinje';
	@override String get antenna => 'Antenner';
	@override String get list => 'Lister';
	@override String get channel => 'Kanaler';
	@override String get direct => 'Direkte';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _StringsMisskeyAbuseReportNotificationRecipientNoNo extends _StringsMisskeyAbuseReportNotificationRecipientEnUs {
	_StringsMisskeyAbuseReportNotificationRecipientNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeNoNo recipientType_ = _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeNoNo._(_root);
}

// Path: misskey.achievements_.types_.notes10_
class _StringsMisskeyAchievementsTypesNotes10NoNo extends _StringsMisskeyAchievementsTypesNotes10EnUs {
	_StringsMisskeyAchievementsTypesNotes10NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Noen Notes';
}

// Path: misskey.achievements_.types_.notes100_
class _StringsMisskeyAchievementsTypesNotes100NoNo extends _StringsMisskeyAchievementsTypesNotes100EnUs {
	_StringsMisskeyAchievementsTypesNotes100NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mange Notes';
}

// Path: misskey.achievements_.types_.notes500_
class _StringsMisskeyAchievementsTypesNotes500NoNo extends _StringsMisskeyAchievementsTypesNotes500EnUs {
	_StringsMisskeyAchievementsTypesNotes500NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dekket i Notes';
}

// Path: misskey.achievements_.types_.notes1000_
class _StringsMisskeyAchievementsTypesNotes1000NoNo extends _StringsMisskeyAchievementsTypesNotes1000EnUs {
	_StringsMisskeyAchievementsTypesNotes1000NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Et fjell av Notes';
}

// Path: misskey.achievements_.types_.notes5000_
class _StringsMisskeyAchievementsTypesNotes5000NoNo extends _StringsMisskeyAchievementsTypesNotes5000EnUs {
	_StringsMisskeyAchievementsTypesNotes5000NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Overfylte Notes';
}

// Path: misskey.achievements_.types_.notes10000_
class _StringsMisskeyAchievementsTypesNotes10000NoNo extends _StringsMisskeyAchievementsTypesNotes10000EnUs {
	_StringsMisskeyAchievementsTypesNotes10000NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Super Notes';
}

// Path: misskey.achievements_.types_.notes20000_
class _StringsMisskeyAchievementsTypesNotes20000NoNo extends _StringsMisskeyAchievementsTypesNotes20000EnUs {
	_StringsMisskeyAchievementsTypesNotes20000NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trenger... mer... Notes...';
}

// Path: misskey.achievements_.types_.notes30000_
class _StringsMisskeyAchievementsTypesNotes30000NoNo extends _StringsMisskeyAchievementsTypesNotes30000EnUs {
	_StringsMisskeyAchievementsTypesNotes30000NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notes Notes Notes!';
}

// Path: misskey.achievements_.types_.notes40000_
class _StringsMisskeyAchievementsTypesNotes40000NoNo extends _StringsMisskeyAchievementsTypesNotes40000EnUs {
	_StringsMisskeyAchievementsTypesNotes40000NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Note fabrikk';
}

// Path: misskey.achievements_.types_.notes50000_
class _StringsMisskeyAchievementsTypesNotes50000NoNo extends _StringsMisskeyAchievementsTypesNotes50000EnUs {
	_StringsMisskeyAchievementsTypesNotes50000NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Planet av Notes';
}

// Path: misskey.achievements_.types_.notes100000_
class _StringsMisskeyAchievementsTypesNotes100000NoNo extends _StringsMisskeyAchievementsTypesNotes100000EnUs {
	_StringsMisskeyAchievementsTypesNotes100000NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get flavor => 'Du har jammen mye å si.';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _StringsMisskeyAchievementsTypesNoteFavorited1NoNo extends _StringsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesNoteFavorited1NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stjernekikker';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _StringsMisskeyAchievementsTypesMyNoteFavorited1NoNo extends _StringsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesMyNoteFavorited1NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jeg vil gjerne få en stjerne';
}

// Path: misskey.achievements_.types_.following50_
class _StringsMisskeyAchievementsTypesFollowing50NoNo extends _StringsMisskeyAchievementsTypesFollowing50EnUs {
	_StringsMisskeyAchievementsTypesFollowing50NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mange venner';
}

// Path: misskey.achievements_.types_.following100_
class _StringsMisskeyAchievementsTypesFollowing100NoNo extends _StringsMisskeyAchievementsTypesFollowing100EnUs {
	_StringsMisskeyAchievementsTypesFollowing100NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => '100 venner';
}

// Path: misskey.achievements_.types_.following300_
class _StringsMisskeyAchievementsTypesFollowing300NoNo extends _StringsMisskeyAchievementsTypesFollowing300EnUs {
	_StringsMisskeyAchievementsTypesFollowing300NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'For mange venner';
}

// Path: misskey.achievements_.types_.followers10_
class _StringsMisskeyAchievementsTypesFollowers10NoNo extends _StringsMisskeyAchievementsTypesFollowers10EnUs {
	_StringsMisskeyAchievementsTypesFollowers10NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Følg meg!';
}

// Path: misskey.achievements_.types_.followers100_
class _StringsMisskeyAchievementsTypesFollowers100NoNo extends _StringsMisskeyAchievementsTypesFollowers100EnUs {
	_StringsMisskeyAchievementsTypesFollowers100NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Populær';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _StringsMisskeyAchievementsTypesPostedAtLateNightNoNo extends _StringsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_StringsMisskeyAchievementsTypesPostedAtLateNightNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get flavor => 'Det er på tide å gå til sengs.';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceNoNo extends _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_StringsMisskeyAchievementsTypesDriveFolderCircularReferenceNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rundskrivreferanse';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _StringsMisskeyAchievementsTypesReactWithoutReadNoNo extends _StringsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_StringsMisskeyAchievementsTypesReactWithoutReadNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leste du det virkelig?';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _StringsMisskeyAchievementsTypesClickedClickHereNoNo extends _StringsMisskeyAchievementsTypesClickedClickHereEnUs {
	_StringsMisskeyAchievementsTypesClickedClickHereNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Klikk her';
	@override String get description => 'Du har klikket her';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _StringsMisskeyAchievementsTypesJustPlainLuckyNoNo extends _StringsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_StringsMisskeyAchievementsTypesJustPlainLuckyNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rett og slett heldig';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _StringsMisskeyAchievementsTypesSetNameToSyuiloNoNo extends _StringsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_StringsMisskeyAchievementsTypesSetNameToSyuiloNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get description => 'Du satte navnet ditt til "syuilo"';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1NoNo extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated1NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ett års jubileum';
	@override String get description => 'Det har gått ett år siden kontoen din ble opprettet';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2NoNo extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated2NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'To års jubileum';
	@override String get description => 'Det har gått to år siden kontoen din ble opprettet';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3NoNo extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated3NoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tre års jubileum';
	@override String get description => 'Det har gått tre år siden kontoen din ble opprettet';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _StringsMisskeyAchievementsTypesLoggedInOnBirthdayNoNo extends _StringsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnBirthdayNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gratulerer med dagen';
	@override String get description => 'Du logget inn på bursdagen din';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayNoNo extends _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Godt nytt år';
	@override String get description => 'Du logget inn på årets første dag';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _StringsMisskeyAchievementsTypesCookieClickedNoNo extends _StringsMisskeyAchievementsTypesCookieClickedEnUs {
	_StringsMisskeyAchievementsTypesCookieClickedNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get description => 'Du klikket på kjeksen';
	@override String get flavor => 'Er du på riktig nettsted?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _StringsMisskeyAchievementsTypesBrainDiverNoNo extends _StringsMisskeyAchievementsTypesBrainDiverEnUs {
	_StringsMisskeyAchievementsTypesBrainDiverNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeNoNo extends _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_StringsMisskeyAbuseReportNotificationRecipientRecipientTypeNoNo._(_StringsNoNo root) : this._root = root, super._(root);

	@override final _StringsNoNo _root; // ignore: unused_field

	// Translations
	@override String get mail => 'E-post';
}
