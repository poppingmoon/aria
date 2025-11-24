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
class TranslationsNoNo extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsNoNo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.noNo,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <no-NO>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsNoNo _root = this; // ignore: unused_field

	@override 
	TranslationsNoNo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsNoNo(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAriaNoNo aria = _TranslationsAriaNoNo._(_root);
	@override late final _TranslationsMisskeyNoNo misskey = _TranslationsMisskeyNoNo._(_root);
}

// Path: aria
class _TranslationsAriaNoNo extends TranslationsAriaEnUs {
	_TranslationsAriaNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

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
class _TranslationsMisskeyNoNo extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

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
	@override String get information => 'Informasjon';
	@override String get inMinutes => 'Minutter';
	@override String get inDays => 'Dager';
	@override late final _TranslationsMisskeyChatNoNo chat_ = _TranslationsMisskeyChatNoNo._(_root);
	@override late final _TranslationsMisskeyDeliveryNoNo delivery_ = _TranslationsMisskeyDeliveryNoNo._(_root);
	@override late final _TranslationsMisskeyInitialAccountSettingNoNo initialAccountSetting_ = _TranslationsMisskeyInitialAccountSettingNoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsNoNo achievements_ = _TranslationsMisskeyAchievementsNoNo._(_root);
	@override late final _TranslationsMisskeyRoleNoNo role_ = _TranslationsMisskeyRoleNoNo._(_root);
	@override late final _TranslationsMisskeyEmailUnavailableNoNo emailUnavailable_ = _TranslationsMisskeyEmailUnavailableNoNo._(_root);
	@override late final _TranslationsMisskeyAccountDeleteNoNo accountDelete_ = _TranslationsMisskeyAccountDeleteNoNo._(_root);
	@override late final _TranslationsMisskeyAdNoNo ad_ = _TranslationsMisskeyAdNoNo._(_root);
	@override late final _TranslationsMisskeyGalleryNoNo gallery_ = _TranslationsMisskeyGalleryNoNo._(_root);
	@override late final _TranslationsMisskeyEmailNoNo email_ = _TranslationsMisskeyEmailNoNo._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupsNoNo preferencesBackups_ = _TranslationsMisskeyPreferencesBackupsNoNo._(_root);
	@override late final _TranslationsMisskeyRegistryNoNo registry_ = _TranslationsMisskeyRegistryNoNo._(_root);
	@override late final _TranslationsMisskeyAboutMisskeyNoNo aboutMisskey_ = _TranslationsMisskeyAboutMisskeyNoNo._(_root);
	@override late final _TranslationsMisskeyInstanceTickerNoNo instanceTicker_ = _TranslationsMisskeyInstanceTickerNoNo._(_root);
	@override late final _TranslationsMisskeyChannelNoNo channel_ = _TranslationsMisskeyChannelNoNo._(_root);
	@override late final _TranslationsMisskeyMenuDisplayNoNo menuDisplay_ = _TranslationsMisskeyMenuDisplayNoNo._(_root);
	@override late final _TranslationsMisskeyThemeNoNo theme_ = _TranslationsMisskeyThemeNoNo._(_root);
	@override late final _TranslationsMisskeySfxNoNo sfx_ = _TranslationsMisskeySfxNoNo._(_root);
	@override late final _TranslationsMisskeyAgoNoNo ago_ = _TranslationsMisskeyAgoNoNo._(_root);
	@override late final _TranslationsMisskeyTimeNoNo time_ = _TranslationsMisskeyTimeNoNo._(_root);
	@override late final _TranslationsMisskeyX2faNoNo x2fa_ = _TranslationsMisskeyX2faNoNo._(_root);
	@override late final _TranslationsMisskeyWeekdayNoNo weekday_ = _TranslationsMisskeyWeekdayNoNo._(_root);
	@override late final _TranslationsMisskeyWidgetsNoNo widgets_ = _TranslationsMisskeyWidgetsNoNo._(_root);
	@override late final _TranslationsMisskeyCwNoNo cw_ = _TranslationsMisskeyCwNoNo._(_root);
	@override late final _TranslationsMisskeyPollNoNo poll_ = _TranslationsMisskeyPollNoNo._(_root);
	@override late final _TranslationsMisskeyVisibilityNoNo visibility_ = _TranslationsMisskeyVisibilityNoNo._(_root);
	@override late final _TranslationsMisskeyPostFormNoNo postForm_ = _TranslationsMisskeyPostFormNoNo._(_root);
	@override late final _TranslationsMisskeyProfileNoNo profile_ = _TranslationsMisskeyProfileNoNo._(_root);
	@override late final _TranslationsMisskeyExportOrImportNoNo exportOrImport_ = _TranslationsMisskeyExportOrImportNoNo._(_root);
	@override late final _TranslationsMisskeyChartsNoNo charts_ = _TranslationsMisskeyChartsNoNo._(_root);
	@override late final _TranslationsMisskeyInstanceChartsNoNo instanceCharts_ = _TranslationsMisskeyInstanceChartsNoNo._(_root);
	@override late final _TranslationsMisskeyTimelinesNoNo timelines_ = _TranslationsMisskeyTimelinesNoNo._(_root);
	@override late final _TranslationsMisskeyPlayNoNo play_ = _TranslationsMisskeyPlayNoNo._(_root);
	@override late final _TranslationsMisskeyPagesNoNo pages_ = _TranslationsMisskeyPagesNoNo._(_root);
	@override late final _TranslationsMisskeyNotificationNoNo notification_ = _TranslationsMisskeyNotificationNoNo._(_root);
	@override late final _TranslationsMisskeyDeckNoNo deck_ = _TranslationsMisskeyDeckNoNo._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsNoNo webhookSettings_ = _TranslationsMisskeyWebhookSettingsNoNo._(_root);
	@override late final _TranslationsMisskeyAbuseReportNoNo abuseReport_ = _TranslationsMisskeyAbuseReportNoNo._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesNoNo moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesNoNo._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoNo remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsNoNo._(_root);
	@override late final _TranslationsMisskeySearchNoNo search_ = _TranslationsMisskeySearchNoNo._(_root);
	@override late final _TranslationsMisskeyWatermarkEditorNoNo watermarkEditor_ = _TranslationsMisskeyWatermarkEditorNoNo._(_root);
	@override late final _TranslationsMisskeyImageEffectorNoNo imageEffector_ = _TranslationsMisskeyImageEffectorNoNo._(_root);
	@override late final _TranslationsMisskeyQrNoNo qr_ = _TranslationsMisskeyQrNoNo._(_root);
}

// Path: misskey.chat_
class _TranslationsMisskeyChatNoNo extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get invitations => 'Inviter';
	@override String get members => 'Medlemmer';
	@override String get home => 'Hjem';
	@override String get send => 'Send';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryNoNo extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get stop => 'Suspendert';
}

// Path: misskey.initialAccountSetting_
class _TranslationsMisskeyInitialAccountSettingNoNo extends TranslationsMisskeyInitialAccountSettingEnUs {
	_TranslationsMisskeyInitialAccountSettingNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get theseSettingsCanEditLater => 'Du kan endre disse innstillingene senere.';
}

// Path: misskey.achievements_
class _TranslationsMisskeyAchievementsNoNo extends TranslationsMisskeyAchievementsEnUs {
	_TranslationsMisskeyAchievementsNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesNoNo types_ = _TranslationsMisskeyAchievementsTypesNoNo._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRoleNoNo extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRoleNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get options => 'Alternativ';
	@override late final _TranslationsMisskeyRolePriorityNoNo priority_ = _TranslationsMisskeyRolePriorityNoNo._(_root);
}

// Path: misskey.emailUnavailable_
class _TranslationsMisskeyEmailUnavailableNoNo extends TranslationsMisskeyEmailUnavailableEnUs {
	_TranslationsMisskeyEmailUnavailableNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get used => 'Allerede brukt';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeleteNoNo extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeleteNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Slett konto';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdNoNo extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Ikke vis';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryNoNo extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get like => 'Liker!';
	@override String get unlike => 'Liker ikke';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailNoNo extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowNoNo follow_ = _TranslationsMisskeyEmailFollowNoNo._(_root);
}

// Path: misskey.preferencesBackups_
class _TranslationsMisskeyPreferencesBackupsNoNo extends TranslationsMisskeyPreferencesBackupsEnUs {
	_TranslationsMisskeyPreferencesBackupsNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get saveNew => 'Lagre som ny';
	@override String get cannotSave => 'Kunne ikke lagre';
}

// Path: misskey.registry_
class _TranslationsMisskeyRegistryNoNo extends TranslationsMisskeyRegistryEnUs {
	_TranslationsMisskeyRegistryNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get key => 'Nøkkel';
	@override String get keys => 'Nøkler';
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeyNoNo extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeyNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey er programvare med åpen kildekode som har blitt utviklet av syuilo siden 2014.';
	@override String get translation => 'Oversett Misskey';
}

// Path: misskey.instanceTicker_
class _TranslationsMisskeyInstanceTickerNoNo extends TranslationsMisskeyInstanceTickerEnUs {
	_TranslationsMisskeyInstanceTickerNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get none => 'Ikke vis';
	@override String get always => 'Alltid vis';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelNoNo extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get create => 'Opprett kanal';
	@override String get edit => 'Rediger kanal';
	@override String get featured => 'Populært';
	@override String get following => 'Følger';
	@override String get nameAndDescription => 'Navn og beskrivelse';
}

// Path: misskey.menuDisplay_
class _TranslationsMisskeyMenuDisplayNoNo extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplayNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Skjul';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeNoNo extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get description => 'Beskrivelse';
	@override String get color => 'Farge';
	@override String get key => 'Nøkkel';
	@override late final _TranslationsMisskeyThemeKeysNoNo keys = _TranslationsMisskeyThemeKeysNoNo._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxNoNo extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get note => 'Notes';
	@override String get notification => 'Varsler';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoNoNo extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

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
class _TranslationsMisskeyTimeNoNo extends TranslationsMisskeyTimeEnUs {
	_TranslationsMisskeyTimeNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get second => 'Sekunder';
	@override String get minute => 'Minutter';
	@override String get hour => 'Timer';
	@override String get day => 'Dager';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faNoNo extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get renewTOTPCancel => 'Avbryt';
}

// Path: misskey.weekday_
class _TranslationsMisskeyWeekdayNoNo extends TranslationsMisskeyWeekdayEnUs {
	_TranslationsMisskeyWeekdayNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

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
class _TranslationsMisskeyWidgetsNoNo extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

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
	@override late final _TranslationsMisskeyWidgetsUserListNoNo userList_ = _TranslationsMisskeyWidgetsUserListNoNo._(_root);
}

// Path: misskey.cw_
class _TranslationsMisskeyCwNoNo extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Skjul';
	@override String get show => 'Vis mer';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollNoNo extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

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
class _TranslationsMisskeyVisibilityNoNo extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get home => 'Hjem';
	@override String get followers => 'Følgere';
}

// Path: misskey.postForm_
class _TranslationsMisskeyPostFormNoNo extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyPostFormPlaceholdersNoNo placeholders_ = _TranslationsMisskeyPostFormPlaceholdersNoNo._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileNoNo extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Navn';
	@override String get username => 'Brukernavn';
	@override String get description => 'Biografi';
	@override String get metadataContent => 'Innhold';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportNoNo extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get followingList => 'Følg';
	@override String get muteList => 'Skjul';
	@override String get blockingList => 'Blokker';
	@override String get userLists => 'Lister';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsNoNo extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Føderasjon';
	@override String get filesIncDec => 'Forskjell på antall filer';
}

// Path: misskey.instanceCharts_
class _TranslationsMisskeyInstanceChartsNoNo extends TranslationsMisskeyInstanceChartsEnUs {
	_TranslationsMisskeyInstanceChartsNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get users => 'Forskjell på antall brukere';
	@override String get ff => 'Forskjell på antall Følg/Følgere';
	@override String get files => 'Forskjell på antall filer';
}

// Path: misskey.timelines_
class _TranslationsMisskeyTimelinesNoNo extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get home => 'Hjem';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayNoNo extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Opprett Play';
	@override String get edit => 'Rediger Play';
	@override String get featured => 'Populært';
	@override String get title => 'Tittel';
	@override String get summary => 'Beskrivelse';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesNoNo extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

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
	@override late final _TranslationsMisskeyPagesBlocksNoNo blocks = _TranslationsMisskeyPagesBlocksNoNo._(_root);
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationNoNo extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get youWereFollowed => 'fulgte deg';
	@override String unreadAntennaNote({required Object name}) => 'Antenne ${name}';
	@override String get achievementEarned => 'Prestasjon låst opp';
	@override late final _TranslationsMisskeyNotificationTypesNoNo types_ = _TranslationsMisskeyNotificationTypesNoNo._(_root);
	@override late final _TranslationsMisskeyNotificationActionsNoNo actions_ = _TranslationsMisskeyNotificationActionsNoNo._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckNoNo extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get swapLeft => 'Flytt til venstre';
	@override String get swapRight => 'Flytt til høyre';
	@override String get swapUp => 'Flytt opp';
	@override String get swapDown => 'Flytt ned';
	@override String get profile => 'Profil';
	@override String get newProfile => 'Ny profil';
	@override String get deleteProfile => 'Slett profil';
	@override late final _TranslationsMisskeyDeckColumnsNoNo columns_ = _TranslationsMisskeyDeckColumnsNoNo._(_root);
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsNoNo extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Navn';
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportNoNo extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientNoNo notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientNoNo._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesNoNo extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'Suspender';
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsNoNo extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectNoNo noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectNoNo._(_root);
}

// Path: misskey.search_
class _TranslationsMisskeySearchNoNo extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Alle';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorNoNo extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get scale => 'Størrelse';
	@override String get text => 'Tekst';
	@override String get type => 'Type';
	@override String get image => 'Bilder';
}

// Path: misskey.imageEffector_
class _TranslationsMisskeyImageEffectorNoNo extends TranslationsMisskeyImageEffectorEnUs {
	_TranslationsMisskeyImageEffectorNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyImageEffectorFxPropsNoNo fxProps_ = _TranslationsMisskeyImageEffectorFxPropsNoNo._(_root);
}

// Path: misskey.qr_
class _TranslationsMisskeyQrNoNo extends TranslationsMisskeyQrEnUs {
	_TranslationsMisskeyQrNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get raw => 'Tekst';
}

// Path: misskey.achievements_.types_
class _TranslationsMisskeyAchievementsTypesNoNo extends TranslationsMisskeyAchievementsTypesEnUs {
	_TranslationsMisskeyAchievementsTypesNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesNotes10NoNo notes10_ = _TranslationsMisskeyAchievementsTypesNotes10NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100NoNo notes100_ = _TranslationsMisskeyAchievementsTypesNotes100NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes500NoNo notes500_ = _TranslationsMisskeyAchievementsTypesNotes500NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes1000NoNo notes1000_ = _TranslationsMisskeyAchievementsTypesNotes1000NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes5000NoNo notes5000_ = _TranslationsMisskeyAchievementsTypesNotes5000NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10000NoNo notes10000_ = _TranslationsMisskeyAchievementsTypesNotes10000NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes20000NoNo notes20000_ = _TranslationsMisskeyAchievementsTypesNotes20000NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes30000NoNo notes30000_ = _TranslationsMisskeyAchievementsTypesNotes30000NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes40000NoNo notes40000_ = _TranslationsMisskeyAchievementsTypesNotes40000NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes50000NoNo notes50000_ = _TranslationsMisskeyAchievementsTypesNotes50000NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100000NoNo notes100000_ = _TranslationsMisskeyAchievementsTypesNotes100000NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteFavorited1NoNo noteFavorited1_ = _TranslationsMisskeyAchievementsTypesNoteFavorited1NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMyNoteFavorited1NoNo myNoteFavorited1_ = _TranslationsMisskeyAchievementsTypesMyNoteFavorited1NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing50NoNo following50_ = _TranslationsMisskeyAchievementsTypesFollowing50NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing100NoNo following100_ = _TranslationsMisskeyAchievementsTypesFollowing100NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing300NoNo following300_ = _TranslationsMisskeyAchievementsTypesFollowing300NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers10NoNo followers10_ = _TranslationsMisskeyAchievementsTypesFollowers10NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers100NoNo followers100_ = _TranslationsMisskeyAchievementsTypesFollowers100NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAtLateNightNoNo postedAtLateNight_ = _TranslationsMisskeyAchievementsTypesPostedAtLateNightNoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceNoNo driveFolderCircularReference_ = _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceNoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesReactWithoutReadNoNo reactWithoutRead_ = _TranslationsMisskeyAchievementsTypesReactWithoutReadNoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClickedClickHereNoNo clickedClickHere_ = _TranslationsMisskeyAchievementsTypesClickedClickHereNoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesJustPlainLuckyNoNo justPlainLucky_ = _TranslationsMisskeyAchievementsTypesJustPlainLuckyNoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSetNameToSyuiloNoNo setNameToSyuilo_ = _TranslationsMisskeyAchievementsTypesSetNameToSyuiloNoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1NoNo passedSinceAccountCreated1_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2NoNo passedSinceAccountCreated2_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3NoNo passedSinceAccountCreated3_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3NoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayNoNo loggedInOnBirthday_ = _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayNoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayNoNo loggedInOnNewYearsDay_ = _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayNoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCookieClickedNoNo cookieClicked_ = _TranslationsMisskeyAchievementsTypesCookieClickedNoNo._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBrainDiverNoNo brainDiver_ = _TranslationsMisskeyAchievementsTypesBrainDiverNoNo._(_root);
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityNoNo extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get low => 'Lav';
	@override String get high => 'Høy';
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowNoNo extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'fulgte deg';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysNoNo extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get link => 'Lenke';
	@override String get renote => 'Renote';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListNoNo extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Velg liste';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersNoNo extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get a => 'Hva skjer?';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksNoNo extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get text => 'Tekst';
	@override String get section => 'Seksjon';
	@override String get image => 'Bilde';
	@override String get button => 'Knapp';
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesNoNo extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Nye følgere';
	@override String get reply => 'Svar';
	@override String get renote => 'Renotes';
	@override String get quote => 'Sitater';
	@override String get reaction => 'Reaksjoner';
	@override String get login => 'Logg inn';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsNoNo extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get reply => 'Svar';
	@override String get renote => 'Renote';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsNoNo extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Varsler';
	@override String get tl => 'Tidslinje';
	@override String get antenna => 'Antenner';
	@override String get list => 'Lister';
	@override String get channel => 'Kanaler';
	@override String get direct => 'Direkte';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientNoNo extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeNoNo recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeNoNo._(_root);
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectNoNo extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ikke funnet';
}

// Path: misskey.imageEffector_.fxProps_
class _TranslationsMisskeyImageEffectorFxPropsNoNo extends TranslationsMisskeyImageEffectorFxPropsEnUs {
	_TranslationsMisskeyImageEffectorFxPropsNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get scale => 'Størrelse';
	@override String get size => 'Størrelse';
	@override String get color => 'Farge';
}

// Path: misskey.achievements_.types_.notes10_
class _TranslationsMisskeyAchievementsTypesNotes10NoNo extends TranslationsMisskeyAchievementsTypesNotes10EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Noen Notes';
}

// Path: misskey.achievements_.types_.notes100_
class _TranslationsMisskeyAchievementsTypesNotes100NoNo extends TranslationsMisskeyAchievementsTypesNotes100EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mange Notes';
}

// Path: misskey.achievements_.types_.notes500_
class _TranslationsMisskeyAchievementsTypesNotes500NoNo extends TranslationsMisskeyAchievementsTypesNotes500EnUs {
	_TranslationsMisskeyAchievementsTypesNotes500NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dekket i Notes';
}

// Path: misskey.achievements_.types_.notes1000_
class _TranslationsMisskeyAchievementsTypesNotes1000NoNo extends TranslationsMisskeyAchievementsTypesNotes1000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1000NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Et fjell av Notes';
}

// Path: misskey.achievements_.types_.notes5000_
class _TranslationsMisskeyAchievementsTypesNotes5000NoNo extends TranslationsMisskeyAchievementsTypesNotes5000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes5000NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Overfylte Notes';
}

// Path: misskey.achievements_.types_.notes10000_
class _TranslationsMisskeyAchievementsTypesNotes10000NoNo extends TranslationsMisskeyAchievementsTypesNotes10000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10000NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Super Notes';
}

// Path: misskey.achievements_.types_.notes20000_
class _TranslationsMisskeyAchievementsTypesNotes20000NoNo extends TranslationsMisskeyAchievementsTypesNotes20000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes20000NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trenger... mer... Notes...';
}

// Path: misskey.achievements_.types_.notes30000_
class _TranslationsMisskeyAchievementsTypesNotes30000NoNo extends TranslationsMisskeyAchievementsTypesNotes30000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes30000NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notes Notes Notes!';
}

// Path: misskey.achievements_.types_.notes40000_
class _TranslationsMisskeyAchievementsTypesNotes40000NoNo extends TranslationsMisskeyAchievementsTypesNotes40000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes40000NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Note fabrikk';
}

// Path: misskey.achievements_.types_.notes50000_
class _TranslationsMisskeyAchievementsTypesNotes50000NoNo extends TranslationsMisskeyAchievementsTypesNotes50000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes50000NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Planet av Notes';
}

// Path: misskey.achievements_.types_.notes100000_
class _TranslationsMisskeyAchievementsTypesNotes100000NoNo extends TranslationsMisskeyAchievementsTypesNotes100000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100000NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get flavor => 'Du har jammen mye å si.';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _TranslationsMisskeyAchievementsTypesNoteFavorited1NoNo extends TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteFavorited1NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stjernekikker';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _TranslationsMisskeyAchievementsTypesMyNoteFavorited1NoNo extends TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesMyNoteFavorited1NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jeg vil gjerne få en stjerne';
}

// Path: misskey.achievements_.types_.following50_
class _TranslationsMisskeyAchievementsTypesFollowing50NoNo extends TranslationsMisskeyAchievementsTypesFollowing50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing50NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mange venner';
}

// Path: misskey.achievements_.types_.following100_
class _TranslationsMisskeyAchievementsTypesFollowing100NoNo extends TranslationsMisskeyAchievementsTypesFollowing100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing100NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => '100 venner';
}

// Path: misskey.achievements_.types_.following300_
class _TranslationsMisskeyAchievementsTypesFollowing300NoNo extends TranslationsMisskeyAchievementsTypesFollowing300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing300NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'For mange venner';
}

// Path: misskey.achievements_.types_.followers10_
class _TranslationsMisskeyAchievementsTypesFollowers10NoNo extends TranslationsMisskeyAchievementsTypesFollowers10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers10NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Følg meg!';
}

// Path: misskey.achievements_.types_.followers100_
class _TranslationsMisskeyAchievementsTypesFollowers100NoNo extends TranslationsMisskeyAchievementsTypesFollowers100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers100NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Populær';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _TranslationsMisskeyAchievementsTypesPostedAtLateNightNoNo extends TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAtLateNightNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get flavor => 'Det er på tide å gå til sengs.';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceNoNo extends TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rundskrivreferanse';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _TranslationsMisskeyAchievementsTypesReactWithoutReadNoNo extends TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_TranslationsMisskeyAchievementsTypesReactWithoutReadNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leste du det virkelig?';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _TranslationsMisskeyAchievementsTypesClickedClickHereNoNo extends TranslationsMisskeyAchievementsTypesClickedClickHereEnUs {
	_TranslationsMisskeyAchievementsTypesClickedClickHereNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Klikk her';
	@override String get description => 'Du har klikket her';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _TranslationsMisskeyAchievementsTypesJustPlainLuckyNoNo extends TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_TranslationsMisskeyAchievementsTypesJustPlainLuckyNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rett og slett heldig';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _TranslationsMisskeyAchievementsTypesSetNameToSyuiloNoNo extends TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_TranslationsMisskeyAchievementsTypesSetNameToSyuiloNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get description => 'Du satte navnet ditt til "syuilo"';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1NoNo extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ett års jubileum';
	@override String get description => 'Det har gått ett år siden kontoen din ble opprettet';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2NoNo extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'To års jubileum';
	@override String get description => 'Det har gått to år siden kontoen din ble opprettet';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3NoNo extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3NoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tre års jubileum';
	@override String get description => 'Det har gått tre år siden kontoen din ble opprettet';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayNoNo extends TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gratulerer med dagen';
	@override String get description => 'Du logget inn på bursdagen din';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayNoNo extends TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Godt nytt år';
	@override String get description => 'Du logget inn på årets første dag';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _TranslationsMisskeyAchievementsTypesCookieClickedNoNo extends TranslationsMisskeyAchievementsTypesCookieClickedEnUs {
	_TranslationsMisskeyAchievementsTypesCookieClickedNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get description => 'Du klikket på kjeksen';
	@override String get flavor => 'Er du på riktig nettsted?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _TranslationsMisskeyAchievementsTypesBrainDiverNoNo extends TranslationsMisskeyAchievementsTypesBrainDiverEnUs {
	_TranslationsMisskeyAchievementsTypesBrainDiverNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeNoNo extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeNoNo._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get mail => 'E-post';
}
