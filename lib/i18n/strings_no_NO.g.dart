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
	@override late final _Translations$aria$no_NO aria = _Translations$aria$no_NO._(_root);
	@override late final _Translations$misskey$no_NO misskey = _Translations$misskey$no_NO._(_root);
}

// Path: aria
class _Translations$aria$no_NO extends Translations$aria$en_US {
	_Translations$aria$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

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
class _Translations$misskey$no_NO extends Translations$misskey$en_US {
	_Translations$misskey$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

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
	@override late final _Translations$misskey$imageEditing_$no_NO imageEditing_ = _Translations$misskey$imageEditing_$no_NO._(_root);
	@override late final _Translations$misskey$imageFrameEditor_$no_NO imageFrameEditor_ = _Translations$misskey$imageFrameEditor_$no_NO._(_root);
	@override late final _Translations$misskey$chat_$no_NO chat_ = _Translations$misskey$chat_$no_NO._(_root);
	@override late final _Translations$misskey$delivery_$no_NO delivery_ = _Translations$misskey$delivery_$no_NO._(_root);
	@override late final _Translations$misskey$initialAccountSetting_$no_NO initialAccountSetting_ = _Translations$misskey$initialAccountSetting_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$no_NO achievements_ = _Translations$misskey$achievements_$no_NO._(_root);
	@override late final _Translations$misskey$role_$no_NO role_ = _Translations$misskey$role_$no_NO._(_root);
	@override late final _Translations$misskey$emailUnavailable_$no_NO emailUnavailable_ = _Translations$misskey$emailUnavailable_$no_NO._(_root);
	@override late final _Translations$misskey$accountDelete_$no_NO accountDelete_ = _Translations$misskey$accountDelete_$no_NO._(_root);
	@override late final _Translations$misskey$ad_$no_NO ad_ = _Translations$misskey$ad_$no_NO._(_root);
	@override late final _Translations$misskey$gallery_$no_NO gallery_ = _Translations$misskey$gallery_$no_NO._(_root);
	@override late final _Translations$misskey$email_$no_NO email_ = _Translations$misskey$email_$no_NO._(_root);
	@override late final _Translations$misskey$preferencesBackups_$no_NO preferencesBackups_ = _Translations$misskey$preferencesBackups_$no_NO._(_root);
	@override late final _Translations$misskey$registry_$no_NO registry_ = _Translations$misskey$registry_$no_NO._(_root);
	@override late final _Translations$misskey$aboutMisskey_$no_NO aboutMisskey_ = _Translations$misskey$aboutMisskey_$no_NO._(_root);
	@override late final _Translations$misskey$instanceTicker_$no_NO instanceTicker_ = _Translations$misskey$instanceTicker_$no_NO._(_root);
	@override late final _Translations$misskey$channel_$no_NO channel_ = _Translations$misskey$channel_$no_NO._(_root);
	@override late final _Translations$misskey$menuDisplay_$no_NO menuDisplay_ = _Translations$misskey$menuDisplay_$no_NO._(_root);
	@override late final _Translations$misskey$theme_$no_NO theme_ = _Translations$misskey$theme_$no_NO._(_root);
	@override late final _Translations$misskey$sfx_$no_NO sfx_ = _Translations$misskey$sfx_$no_NO._(_root);
	@override late final _Translations$misskey$ago_$no_NO ago_ = _Translations$misskey$ago_$no_NO._(_root);
	@override late final _Translations$misskey$time_$no_NO time_ = _Translations$misskey$time_$no_NO._(_root);
	@override late final _Translations$misskey$x2fa_$no_NO x2fa_ = _Translations$misskey$x2fa_$no_NO._(_root);
	@override late final _Translations$misskey$weekday_$no_NO weekday_ = _Translations$misskey$weekday_$no_NO._(_root);
	@override late final _Translations$misskey$widgets_$no_NO widgets_ = _Translations$misskey$widgets_$no_NO._(_root);
	@override late final _Translations$misskey$widgetOptions_$no_NO widgetOptions_ = _Translations$misskey$widgetOptions_$no_NO._(_root);
	@override late final _Translations$misskey$cw_$no_NO cw_ = _Translations$misskey$cw_$no_NO._(_root);
	@override late final _Translations$misskey$poll_$no_NO poll_ = _Translations$misskey$poll_$no_NO._(_root);
	@override late final _Translations$misskey$visibility_$no_NO visibility_ = _Translations$misskey$visibility_$no_NO._(_root);
	@override late final _Translations$misskey$postForm_$no_NO postForm_ = _Translations$misskey$postForm_$no_NO._(_root);
	@override late final _Translations$misskey$profile_$no_NO profile_ = _Translations$misskey$profile_$no_NO._(_root);
	@override late final _Translations$misskey$exportOrImport_$no_NO exportOrImport_ = _Translations$misskey$exportOrImport_$no_NO._(_root);
	@override late final _Translations$misskey$charts_$no_NO charts_ = _Translations$misskey$charts_$no_NO._(_root);
	@override late final _Translations$misskey$instanceCharts_$no_NO instanceCharts_ = _Translations$misskey$instanceCharts_$no_NO._(_root);
	@override late final _Translations$misskey$timelines_$no_NO timelines_ = _Translations$misskey$timelines_$no_NO._(_root);
	@override late final _Translations$misskey$play_$no_NO play_ = _Translations$misskey$play_$no_NO._(_root);
	@override late final _Translations$misskey$pages_$no_NO pages_ = _Translations$misskey$pages_$no_NO._(_root);
	@override late final _Translations$misskey$notification_$no_NO notification_ = _Translations$misskey$notification_$no_NO._(_root);
	@override late final _Translations$misskey$deck_$no_NO deck_ = _Translations$misskey$deck_$no_NO._(_root);
	@override late final _Translations$misskey$webhookSettings_$no_NO webhookSettings_ = _Translations$misskey$webhookSettings_$no_NO._(_root);
	@override late final _Translations$misskey$abuseReport_$no_NO abuseReport_ = _Translations$misskey$abuseReport_$no_NO._(_root);
	@override late final _Translations$misskey$moderationLogTypes_$no_NO moderationLogTypes_ = _Translations$misskey$moderationLogTypes_$no_NO._(_root);
	@override late final _Translations$misskey$remoteLookupErrors_$no_NO remoteLookupErrors_ = _Translations$misskey$remoteLookupErrors_$no_NO._(_root);
	@override late final _Translations$misskey$search_$no_NO search_ = _Translations$misskey$search_$no_NO._(_root);
	@override late final _Translations$misskey$watermarkEditor_$no_NO watermarkEditor_ = _Translations$misskey$watermarkEditor_$no_NO._(_root);
	@override late final _Translations$misskey$imageEffector_$no_NO imageEffector_ = _Translations$misskey$imageEffector_$no_NO._(_root);
	@override late final _Translations$misskey$qr_$no_NO qr_ = _Translations$misskey$qr_$no_NO._(_root);
}

// Path: misskey.imageEditing_
class _Translations$misskey$imageEditing_$no_NO extends Translations$misskey$imageEditing_$en_US {
	_Translations$misskey$imageEditing_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$imageEditing_$vars_$no_NO vars_ = _Translations$misskey$imageEditing_$vars_$no_NO._(_root);
}

// Path: misskey.imageFrameEditor_
class _Translations$misskey$imageFrameEditor_$no_NO extends Translations$misskey$imageFrameEditor_$en_US {
	_Translations$misskey$imageFrameEditor_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
}

// Path: misskey.chat_
class _Translations$misskey$chat_$no_NO extends Translations$misskey$chat_$en_US {
	_Translations$misskey$chat_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get invitations => 'Inviter';
	@override String get members => 'Medlemmer';
	@override String get home => 'Hjem';
	@override String get send => 'Send';
}

// Path: misskey.delivery_
class _Translations$misskey$delivery_$no_NO extends Translations$misskey$delivery_$en_US {
	_Translations$misskey$delivery_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get stop => 'Suspendert';
}

// Path: misskey.initialAccountSetting_
class _Translations$misskey$initialAccountSetting_$no_NO extends Translations$misskey$initialAccountSetting_$en_US {
	_Translations$misskey$initialAccountSetting_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get theseSettingsCanEditLater => 'Du kan endre disse innstillingene senere.';
}

// Path: misskey.achievements_
class _Translations$misskey$achievements_$no_NO extends Translations$misskey$achievements_$en_US {
	_Translations$misskey$achievements_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$achievements_$types_$no_NO types_ = _Translations$misskey$achievements_$types_$no_NO._(_root);
}

// Path: misskey.role_
class _Translations$misskey$role_$no_NO extends Translations$misskey$role_$en_US {
	_Translations$misskey$role_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get options => 'Alternativ';
	@override late final _Translations$misskey$role_$priority_$no_NO priority_ = _Translations$misskey$role_$priority_$no_NO._(_root);
}

// Path: misskey.emailUnavailable_
class _Translations$misskey$emailUnavailable_$no_NO extends Translations$misskey$emailUnavailable_$en_US {
	_Translations$misskey$emailUnavailable_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get used => 'Allerede brukt';
}

// Path: misskey.accountDelete_
class _Translations$misskey$accountDelete_$no_NO extends Translations$misskey$accountDelete_$en_US {
	_Translations$misskey$accountDelete_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Slett konto';
}

// Path: misskey.ad_
class _Translations$misskey$ad_$no_NO extends Translations$misskey$ad_$en_US {
	_Translations$misskey$ad_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Ikke vis';
}

// Path: misskey.gallery_
class _Translations$misskey$gallery_$no_NO extends Translations$misskey$gallery_$en_US {
	_Translations$misskey$gallery_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get like => 'Liker!';
	@override String get unlike => 'Liker ikke';
}

// Path: misskey.email_
class _Translations$misskey$email_$no_NO extends Translations$misskey$email_$en_US {
	_Translations$misskey$email_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$email_$follow_$no_NO follow_ = _Translations$misskey$email_$follow_$no_NO._(_root);
}

// Path: misskey.preferencesBackups_
class _Translations$misskey$preferencesBackups_$no_NO extends Translations$misskey$preferencesBackups_$en_US {
	_Translations$misskey$preferencesBackups_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get saveNew => 'Lagre som ny';
	@override String get cannotSave => 'Kunne ikke lagre';
}

// Path: misskey.registry_
class _Translations$misskey$registry_$no_NO extends Translations$misskey$registry_$en_US {
	_Translations$misskey$registry_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get key => 'Nøkkel';
	@override String get keys => 'Nøkler';
}

// Path: misskey.aboutMisskey_
class _Translations$misskey$aboutMisskey_$no_NO extends Translations$misskey$aboutMisskey_$en_US {
	_Translations$misskey$aboutMisskey_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey er programvare med åpen kildekode som har blitt utviklet av syuilo siden 2014.';
	@override String get translation => 'Oversett Misskey';
}

// Path: misskey.instanceTicker_
class _Translations$misskey$instanceTicker_$no_NO extends Translations$misskey$instanceTicker_$en_US {
	_Translations$misskey$instanceTicker_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get none => 'Ikke vis';
	@override String get always => 'Alltid vis';
}

// Path: misskey.channel_
class _Translations$misskey$channel_$no_NO extends Translations$misskey$channel_$en_US {
	_Translations$misskey$channel_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get create => 'Opprett kanal';
	@override String get edit => 'Rediger kanal';
	@override String get featured => 'Populært';
	@override String get following => 'Følger';
	@override String get nameAndDescription => 'Navn og beskrivelse';
}

// Path: misskey.menuDisplay_
class _Translations$misskey$menuDisplay_$no_NO extends Translations$misskey$menuDisplay_$en_US {
	_Translations$misskey$menuDisplay_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Skjul';
}

// Path: misskey.theme_
class _Translations$misskey$theme_$no_NO extends Translations$misskey$theme_$en_US {
	_Translations$misskey$theme_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get description => 'Beskrivelse';
	@override String get color => 'Farge';
	@override String get key => 'Nøkkel';
	@override late final _Translations$misskey$theme_$keys$no_NO keys = _Translations$misskey$theme_$keys$no_NO._(_root);
}

// Path: misskey.sfx_
class _Translations$misskey$sfx_$no_NO extends Translations$misskey$sfx_$en_US {
	_Translations$misskey$sfx_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get note => 'Notes';
	@override String get notification => 'Varsler';
}

// Path: misskey.ago_
class _Translations$misskey$ago_$no_NO extends Translations$misskey$ago_$en_US {
	_Translations$misskey$ago_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

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
class _Translations$misskey$time_$no_NO extends Translations$misskey$time_$en_US {
	_Translations$misskey$time_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get second => 'Sekunder';
	@override String get minute => 'Minutter';
	@override String get hour => 'Timer';
	@override String get day => 'Dager';
}

// Path: misskey.x2fa_
class _Translations$misskey$x2fa_$no_NO extends Translations$misskey$x2fa_$en_US {
	_Translations$misskey$x2fa_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get renewTOTPCancel => 'Avbryt';
}

// Path: misskey.weekday_
class _Translations$misskey$weekday_$no_NO extends Translations$misskey$weekday_$en_US {
	_Translations$misskey$weekday_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

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
class _Translations$misskey$widgets_$no_NO extends Translations$misskey$widgets_$en_US {
	_Translations$misskey$widgets_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

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
	@override late final _Translations$misskey$widgets_$userList_$no_NO userList_ = _Translations$misskey$widgets_$userList_$no_NO._(_root);
}

// Path: misskey.widgetOptions_
class _Translations$misskey$widgetOptions_$no_NO extends Translations$misskey$widgetOptions_$en_US {
	_Translations$misskey$widgetOptions_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get height => 'Høyde';
	@override late final _Translations$misskey$widgetOptions_$clock_$no_NO clock_ = _Translations$misskey$widgetOptions_$clock_$no_NO._(_root);
}

// Path: misskey.cw_
class _Translations$misskey$cw_$no_NO extends Translations$misskey$cw_$en_US {
	_Translations$misskey$cw_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Skjul';
	@override String get show => 'Vis mer';
}

// Path: misskey.poll_
class _Translations$misskey$poll_$no_NO extends Translations$misskey$poll_$en_US {
	_Translations$misskey$poll_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

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
class _Translations$misskey$visibility_$no_NO extends Translations$misskey$visibility_$en_US {
	_Translations$misskey$visibility_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get home => 'Hjem';
	@override String get followers => 'Følgere';
}

// Path: misskey.postForm_
class _Translations$misskey$postForm_$no_NO extends Translations$misskey$postForm_$en_US {
	_Translations$misskey$postForm_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$postForm_$howToUse_$no_NO howToUse_ = _Translations$misskey$postForm_$howToUse_$no_NO._(_root);
	@override late final _Translations$misskey$postForm_$placeholders_$no_NO placeholders_ = _Translations$misskey$postForm_$placeholders_$no_NO._(_root);
}

// Path: misskey.profile_
class _Translations$misskey$profile_$no_NO extends Translations$misskey$profile_$en_US {
	_Translations$misskey$profile_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Navn';
	@override String get username => 'Brukernavn';
	@override String get description => 'Biografi';
	@override String get metadataContent => 'Innhold';
}

// Path: misskey.exportOrImport_
class _Translations$misskey$exportOrImport_$no_NO extends Translations$misskey$exportOrImport_$en_US {
	_Translations$misskey$exportOrImport_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get followingList => 'Følg';
	@override String get muteList => 'Skjul';
	@override String get blockingList => 'Blokker';
	@override String get userLists => 'Lister';
}

// Path: misskey.charts_
class _Translations$misskey$charts_$no_NO extends Translations$misskey$charts_$en_US {
	_Translations$misskey$charts_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Føderasjon';
	@override String get filesIncDec => 'Forskjell på antall filer';
}

// Path: misskey.instanceCharts_
class _Translations$misskey$instanceCharts_$no_NO extends Translations$misskey$instanceCharts_$en_US {
	_Translations$misskey$instanceCharts_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get users => 'Forskjell på antall brukere';
	@override String get ff => 'Forskjell på antall Følg/Følgere';
	@override String get files => 'Forskjell på antall filer';
}

// Path: misskey.timelines_
class _Translations$misskey$timelines_$no_NO extends Translations$misskey$timelines_$en_US {
	_Translations$misskey$timelines_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get home => 'Hjem';
}

// Path: misskey.play_
class _Translations$misskey$play_$no_NO extends Translations$misskey$play_$en_US {
	_Translations$misskey$play_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Opprett Play';
	@override String get edit => 'Rediger Play';
	@override String get featured => 'Populært';
	@override String get title => 'Tittel';
	@override String get summary => 'Beskrivelse';
}

// Path: misskey.pages_
class _Translations$misskey$pages_$no_NO extends Translations$misskey$pages_$en_US {
	_Translations$misskey$pages_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

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
	@override late final _Translations$misskey$pages_$blocks$no_NO blocks = _Translations$misskey$pages_$blocks$no_NO._(_root);
}

// Path: misskey.notification_
class _Translations$misskey$notification_$no_NO extends Translations$misskey$notification_$en_US {
	_Translations$misskey$notification_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get youWereFollowed => 'fulgte deg';
	@override String unreadAntennaNote({required Object name}) => 'Antenne ${name}';
	@override String get achievementEarned => 'Prestasjon låst opp';
	@override late final _Translations$misskey$notification_$types_$no_NO types_ = _Translations$misskey$notification_$types_$no_NO._(_root);
	@override late final _Translations$misskey$notification_$actions_$no_NO actions_ = _Translations$misskey$notification_$actions_$no_NO._(_root);
}

// Path: misskey.deck_
class _Translations$misskey$deck_$no_NO extends Translations$misskey$deck_$en_US {
	_Translations$misskey$deck_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get swapLeft => 'Flytt til venstre';
	@override String get swapRight => 'Flytt til høyre';
	@override String get swapUp => 'Flytt opp';
	@override String get swapDown => 'Flytt ned';
	@override String get profile => 'Profil';
	@override String get newProfile => 'Ny profil';
	@override String get deleteProfile => 'Slett profil';
	@override late final _Translations$misskey$deck_$columns_$no_NO columns_ = _Translations$misskey$deck_$columns_$no_NO._(_root);
}

// Path: misskey.webhookSettings_
class _Translations$misskey$webhookSettings_$no_NO extends Translations$misskey$webhookSettings_$en_US {
	_Translations$misskey$webhookSettings_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Navn';
}

// Path: misskey.abuseReport_
class _Translations$misskey$abuseReport_$no_NO extends Translations$misskey$abuseReport_$en_US {
	_Translations$misskey$abuseReport_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$abuseReport_$notificationRecipient_$no_NO notificationRecipient_ = _Translations$misskey$abuseReport_$notificationRecipient_$no_NO._(_root);
}

// Path: misskey.moderationLogTypes_
class _Translations$misskey$moderationLogTypes_$no_NO extends Translations$misskey$moderationLogTypes_$en_US {
	_Translations$misskey$moderationLogTypes_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'Suspender';
}

// Path: misskey.remoteLookupErrors_
class _Translations$misskey$remoteLookupErrors_$no_NO extends Translations$misskey$remoteLookupErrors_$en_US {
	_Translations$misskey$remoteLookupErrors_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$remoteLookupErrors_$noSuchObject_$no_NO noSuchObject_ = _Translations$misskey$remoteLookupErrors_$noSuchObject_$no_NO._(_root);
}

// Path: misskey.search_
class _Translations$misskey$search_$no_NO extends Translations$misskey$search_$en_US {
	_Translations$misskey$search_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Alle';
}

// Path: misskey.watermarkEditor_
class _Translations$misskey$watermarkEditor_$no_NO extends Translations$misskey$watermarkEditor_$en_US {
	_Translations$misskey$watermarkEditor_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get scale => 'Størrelse';
	@override String get text => 'Tekst';
	@override String get type => 'Type';
	@override String get image => 'Bilder';
}

// Path: misskey.imageEffector_
class _Translations$misskey$imageEffector_$no_NO extends Translations$misskey$imageEffector_$en_US {
	_Translations$misskey$imageEffector_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$imageEffector_$fxProps_$no_NO fxProps_ = _Translations$misskey$imageEffector_$fxProps_$no_NO._(_root);
}

// Path: misskey.qr_
class _Translations$misskey$qr_$no_NO extends Translations$misskey$qr_$en_US {
	_Translations$misskey$qr_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get raw => 'Tekst';
}

// Path: misskey.imageEditing_.vars_
class _Translations$misskey$imageEditing_$vars_$no_NO extends Translations$misskey$imageEditing_$vars_$en_US {
	_Translations$misskey$imageEditing_$vars_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get filename => 'Filnavn';
}

// Path: misskey.achievements_.types_
class _Translations$misskey$achievements_$types_$no_NO extends Translations$misskey$achievements_$types_$en_US {
	_Translations$misskey$achievements_$types_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$achievements_$types_$notes10_$no_NO notes10_ = _Translations$misskey$achievements_$types_$notes10_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes100_$no_NO notes100_ = _Translations$misskey$achievements_$types_$notes100_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes500_$no_NO notes500_ = _Translations$misskey$achievements_$types_$notes500_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes1000_$no_NO notes1000_ = _Translations$misskey$achievements_$types_$notes1000_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes5000_$no_NO notes5000_ = _Translations$misskey$achievements_$types_$notes5000_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes10000_$no_NO notes10000_ = _Translations$misskey$achievements_$types_$notes10000_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes20000_$no_NO notes20000_ = _Translations$misskey$achievements_$types_$notes20000_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes30000_$no_NO notes30000_ = _Translations$misskey$achievements_$types_$notes30000_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes40000_$no_NO notes40000_ = _Translations$misskey$achievements_$types_$notes40000_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes50000_$no_NO notes50000_ = _Translations$misskey$achievements_$types_$notes50000_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes100000_$no_NO notes100000_ = _Translations$misskey$achievements_$types_$notes100000_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$noteFavorited1_$no_NO noteFavorited1_ = _Translations$misskey$achievements_$types_$noteFavorited1_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$myNoteFavorited1_$no_NO myNoteFavorited1_ = _Translations$misskey$achievements_$types_$myNoteFavorited1_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$following50_$no_NO following50_ = _Translations$misskey$achievements_$types_$following50_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$following100_$no_NO following100_ = _Translations$misskey$achievements_$types_$following100_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$following300_$no_NO following300_ = _Translations$misskey$achievements_$types_$following300_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers10_$no_NO followers10_ = _Translations$misskey$achievements_$types_$followers10_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers100_$no_NO followers100_ = _Translations$misskey$achievements_$types_$followers100_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$postedAtLateNight_$no_NO postedAtLateNight_ = _Translations$misskey$achievements_$types_$postedAtLateNight_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$driveFolderCircularReference_$no_NO driveFolderCircularReference_ = _Translations$misskey$achievements_$types_$driveFolderCircularReference_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$reactWithoutRead_$no_NO reactWithoutRead_ = _Translations$misskey$achievements_$types_$reactWithoutRead_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$clickedClickHere_$no_NO clickedClickHere_ = _Translations$misskey$achievements_$types_$clickedClickHere_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$justPlainLucky_$no_NO justPlainLucky_ = _Translations$misskey$achievements_$types_$justPlainLucky_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$setNameToSyuilo_$no_NO setNameToSyuilo_ = _Translations$misskey$achievements_$types_$setNameToSyuilo_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$no_NO passedSinceAccountCreated1_ = _Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$no_NO passedSinceAccountCreated2_ = _Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$no_NO passedSinceAccountCreated3_ = _Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$loggedInOnBirthday_$no_NO loggedInOnBirthday_ = _Translations$misskey$achievements_$types_$loggedInOnBirthday_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$no_NO loggedInOnNewYearsDay_ = _Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$cookieClicked_$no_NO cookieClicked_ = _Translations$misskey$achievements_$types_$cookieClicked_$no_NO._(_root);
	@override late final _Translations$misskey$achievements_$types_$brainDiver_$no_NO brainDiver_ = _Translations$misskey$achievements_$types_$brainDiver_$no_NO._(_root);
}

// Path: misskey.role_.priority_
class _Translations$misskey$role_$priority_$no_NO extends Translations$misskey$role_$priority_$en_US {
	_Translations$misskey$role_$priority_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get low => 'Lav';
	@override String get high => 'Høy';
}

// Path: misskey.email_.follow_
class _Translations$misskey$email_$follow_$no_NO extends Translations$misskey$email_$follow_$en_US {
	_Translations$misskey$email_$follow_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'fulgte deg';
}

// Path: misskey.theme_.keys
class _Translations$misskey$theme_$keys$no_NO extends Translations$misskey$theme_$keys$en_US {
	_Translations$misskey$theme_$keys$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get link => 'Lenke';
	@override String get renote => 'Renote';
}

// Path: misskey.widgets_.userList_
class _Translations$misskey$widgets_$userList_$no_NO extends Translations$misskey$widgets_$userList_$en_US {
	_Translations$misskey$widgets_$userList_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Velg liste';
}

// Path: misskey.widgetOptions_.clock_
class _Translations$misskey$widgetOptions_$clock_$no_NO extends Translations$misskey$widgetOptions_$clock_$en_US {
	_Translations$misskey$widgetOptions_$clock_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get size => 'Størrelse';
}

// Path: misskey.postForm_.howToUse_
class _Translations$misskey$postForm_$howToUse_$no_NO extends Translations$misskey$postForm_$howToUse_$en_US {
	_Translations$misskey$postForm_$howToUse_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get menu_title => 'Meny';
}

// Path: misskey.postForm_.placeholders_
class _Translations$misskey$postForm_$placeholders_$no_NO extends Translations$misskey$postForm_$placeholders_$en_US {
	_Translations$misskey$postForm_$placeholders_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get a => 'Hva skjer?';
}

// Path: misskey.pages_.blocks
class _Translations$misskey$pages_$blocks$no_NO extends Translations$misskey$pages_$blocks$en_US {
	_Translations$misskey$pages_$blocks$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get text => 'Tekst';
	@override String get section => 'Seksjon';
	@override String get image => 'Bilde';
	@override String get button => 'Knapp';
}

// Path: misskey.notification_.types_
class _Translations$misskey$notification_$types_$no_NO extends Translations$misskey$notification_$types_$en_US {
	_Translations$misskey$notification_$types_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

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
class _Translations$misskey$notification_$actions_$no_NO extends Translations$misskey$notification_$actions_$en_US {
	_Translations$misskey$notification_$actions_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get reply => 'Svar';
	@override String get renote => 'Renote';
}

// Path: misskey.deck_.columns_
class _Translations$misskey$deck_$columns_$no_NO extends Translations$misskey$deck_$columns_$en_US {
	_Translations$misskey$deck_$columns_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

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
class _Translations$misskey$abuseReport_$notificationRecipient_$no_NO extends Translations$misskey$abuseReport_$notificationRecipient_$en_US {
	_Translations$misskey$abuseReport_$notificationRecipient_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$no_NO recipientType_ = _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$no_NO._(_root);
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _Translations$misskey$remoteLookupErrors_$noSuchObject_$no_NO extends Translations$misskey$remoteLookupErrors_$noSuchObject_$en_US {
	_Translations$misskey$remoteLookupErrors_$noSuchObject_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ikke funnet';
}

// Path: misskey.imageEffector_.fxProps_
class _Translations$misskey$imageEffector_$fxProps_$no_NO extends Translations$misskey$imageEffector_$fxProps_$en_US {
	_Translations$misskey$imageEffector_$fxProps_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get scale => 'Størrelse';
	@override String get size => 'Størrelse';
	@override String get color => 'Farge';
}

// Path: misskey.achievements_.types_.notes10_
class _Translations$misskey$achievements_$types_$notes10_$no_NO extends Translations$misskey$achievements_$types_$notes10_$en_US {
	_Translations$misskey$achievements_$types_$notes10_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Noen Notes';
}

// Path: misskey.achievements_.types_.notes100_
class _Translations$misskey$achievements_$types_$notes100_$no_NO extends Translations$misskey$achievements_$types_$notes100_$en_US {
	_Translations$misskey$achievements_$types_$notes100_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mange Notes';
}

// Path: misskey.achievements_.types_.notes500_
class _Translations$misskey$achievements_$types_$notes500_$no_NO extends Translations$misskey$achievements_$types_$notes500_$en_US {
	_Translations$misskey$achievements_$types_$notes500_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dekket i Notes';
}

// Path: misskey.achievements_.types_.notes1000_
class _Translations$misskey$achievements_$types_$notes1000_$no_NO extends Translations$misskey$achievements_$types_$notes1000_$en_US {
	_Translations$misskey$achievements_$types_$notes1000_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Et fjell av Notes';
}

// Path: misskey.achievements_.types_.notes5000_
class _Translations$misskey$achievements_$types_$notes5000_$no_NO extends Translations$misskey$achievements_$types_$notes5000_$en_US {
	_Translations$misskey$achievements_$types_$notes5000_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Overfylte Notes';
}

// Path: misskey.achievements_.types_.notes10000_
class _Translations$misskey$achievements_$types_$notes10000_$no_NO extends Translations$misskey$achievements_$types_$notes10000_$en_US {
	_Translations$misskey$achievements_$types_$notes10000_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Super Notes';
}

// Path: misskey.achievements_.types_.notes20000_
class _Translations$misskey$achievements_$types_$notes20000_$no_NO extends Translations$misskey$achievements_$types_$notes20000_$en_US {
	_Translations$misskey$achievements_$types_$notes20000_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trenger... mer... Notes...';
}

// Path: misskey.achievements_.types_.notes30000_
class _Translations$misskey$achievements_$types_$notes30000_$no_NO extends Translations$misskey$achievements_$types_$notes30000_$en_US {
	_Translations$misskey$achievements_$types_$notes30000_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notes Notes Notes!';
}

// Path: misskey.achievements_.types_.notes40000_
class _Translations$misskey$achievements_$types_$notes40000_$no_NO extends Translations$misskey$achievements_$types_$notes40000_$en_US {
	_Translations$misskey$achievements_$types_$notes40000_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Note fabrikk';
}

// Path: misskey.achievements_.types_.notes50000_
class _Translations$misskey$achievements_$types_$notes50000_$no_NO extends Translations$misskey$achievements_$types_$notes50000_$en_US {
	_Translations$misskey$achievements_$types_$notes50000_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Planet av Notes';
}

// Path: misskey.achievements_.types_.notes100000_
class _Translations$misskey$achievements_$types_$notes100000_$no_NO extends Translations$misskey$achievements_$types_$notes100000_$en_US {
	_Translations$misskey$achievements_$types_$notes100000_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get flavor => 'Du har jammen mye å si.';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _Translations$misskey$achievements_$types_$noteFavorited1_$no_NO extends Translations$misskey$achievements_$types_$noteFavorited1_$en_US {
	_Translations$misskey$achievements_$types_$noteFavorited1_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stjernekikker';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _Translations$misskey$achievements_$types_$myNoteFavorited1_$no_NO extends Translations$misskey$achievements_$types_$myNoteFavorited1_$en_US {
	_Translations$misskey$achievements_$types_$myNoteFavorited1_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jeg vil gjerne få en stjerne';
}

// Path: misskey.achievements_.types_.following50_
class _Translations$misskey$achievements_$types_$following50_$no_NO extends Translations$misskey$achievements_$types_$following50_$en_US {
	_Translations$misskey$achievements_$types_$following50_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mange venner';
}

// Path: misskey.achievements_.types_.following100_
class _Translations$misskey$achievements_$types_$following100_$no_NO extends Translations$misskey$achievements_$types_$following100_$en_US {
	_Translations$misskey$achievements_$types_$following100_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => '100 venner';
}

// Path: misskey.achievements_.types_.following300_
class _Translations$misskey$achievements_$types_$following300_$no_NO extends Translations$misskey$achievements_$types_$following300_$en_US {
	_Translations$misskey$achievements_$types_$following300_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'For mange venner';
}

// Path: misskey.achievements_.types_.followers10_
class _Translations$misskey$achievements_$types_$followers10_$no_NO extends Translations$misskey$achievements_$types_$followers10_$en_US {
	_Translations$misskey$achievements_$types_$followers10_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Følg meg!';
}

// Path: misskey.achievements_.types_.followers100_
class _Translations$misskey$achievements_$types_$followers100_$no_NO extends Translations$misskey$achievements_$types_$followers100_$en_US {
	_Translations$misskey$achievements_$types_$followers100_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Populær';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _Translations$misskey$achievements_$types_$postedAtLateNight_$no_NO extends Translations$misskey$achievements_$types_$postedAtLateNight_$en_US {
	_Translations$misskey$achievements_$types_$postedAtLateNight_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get flavor => 'Det er på tide å gå til sengs.';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _Translations$misskey$achievements_$types_$driveFolderCircularReference_$no_NO extends Translations$misskey$achievements_$types_$driveFolderCircularReference_$en_US {
	_Translations$misskey$achievements_$types_$driveFolderCircularReference_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rundskrivreferanse';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _Translations$misskey$achievements_$types_$reactWithoutRead_$no_NO extends Translations$misskey$achievements_$types_$reactWithoutRead_$en_US {
	_Translations$misskey$achievements_$types_$reactWithoutRead_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leste du det virkelig?';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _Translations$misskey$achievements_$types_$clickedClickHere_$no_NO extends Translations$misskey$achievements_$types_$clickedClickHere_$en_US {
	_Translations$misskey$achievements_$types_$clickedClickHere_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Klikk her';
	@override String get description => 'Du har klikket her';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _Translations$misskey$achievements_$types_$justPlainLucky_$no_NO extends Translations$misskey$achievements_$types_$justPlainLucky_$en_US {
	_Translations$misskey$achievements_$types_$justPlainLucky_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rett og slett heldig';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _Translations$misskey$achievements_$types_$setNameToSyuilo_$no_NO extends Translations$misskey$achievements_$types_$setNameToSyuilo_$en_US {
	_Translations$misskey$achievements_$types_$setNameToSyuilo_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get description => 'Du satte navnet ditt til "syuilo"';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$no_NO extends Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$en_US {
	_Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ett års jubileum';
	@override String get description => 'Det har gått ett år siden kontoen din ble opprettet';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$no_NO extends Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$en_US {
	_Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'To års jubileum';
	@override String get description => 'Det har gått to år siden kontoen din ble opprettet';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$no_NO extends Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$en_US {
	_Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tre års jubileum';
	@override String get description => 'Det har gått tre år siden kontoen din ble opprettet';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _Translations$misskey$achievements_$types_$loggedInOnBirthday_$no_NO extends Translations$misskey$achievements_$types_$loggedInOnBirthday_$en_US {
	_Translations$misskey$achievements_$types_$loggedInOnBirthday_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gratulerer med dagen';
	@override String get description => 'Du logget inn på bursdagen din';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$no_NO extends Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$en_US {
	_Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Godt nytt år';
	@override String get description => 'Du logget inn på årets første dag';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _Translations$misskey$achievements_$types_$cookieClicked_$no_NO extends Translations$misskey$achievements_$types_$cookieClicked_$en_US {
	_Translations$misskey$achievements_$types_$cookieClicked_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get description => 'Du klikket på kjeksen';
	@override String get flavor => 'Er du på riktig nettsted?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _Translations$misskey$achievements_$types_$brainDiver_$no_NO extends Translations$misskey$achievements_$types_$brainDiver_$en_US {
	_Translations$misskey$achievements_$types_$brainDiver_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$no_NO extends Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$en_US {
	_Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$no_NO._(TranslationsNoNo root) : this._root = root, super.internal(root);

	final TranslationsNoNo _root; // ignore: unused_field

	// Translations
	@override String get mail => 'E-post';
}
