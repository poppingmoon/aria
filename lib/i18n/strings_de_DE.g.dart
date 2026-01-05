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
class TranslationsDeDe extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDeDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.deDe,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <de-DE>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsDeDe _root = this; // ignore: unused_field

	@override 
	TranslationsDeDe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDeDe(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAriaDeDe aria = _TranslationsAriaDeDe._(_root);
	@override late final _TranslationsMisskeyDeDe misskey = _TranslationsMisskeyDeDe._(_root);
}

// Path: aria
class _TranslationsAriaDeDe extends TranslationsAriaEnUs {
	_TranslationsAriaDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get aboutAria => 'Über Aria';
	@override TextSpan acceptFollowRequestConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Möchtest du die Follower-Anfrage von '),
		name,
		const TextSpan(text: ' akzeptieren?'),
	]);
	@override String get accessToken => 'Zugangstoken';
	@override String get accessTokenUpdated => 'Zugangstoken erfolgreich aktualisiert';
	@override String get accountAdded => 'Konto erfolgreich hinzugefügt';
	@override TextSpan acknowledgements({required InlineSpan miria, required InlineSpan misskey}) => TextSpan(children: [
		const TextSpan(text: 'Aria ist ein Fork von '),
		miria,
		const TextSpan(text: '.\nDie Lokalisierung von Aria basiert auf Lokalisierungsdateien von '),
		misskey,
		const TextSpan(text: '.\nWir möchten allen Mitwirkenden dieser Projekte unseren Dank aussprechen.'),
	]);
	@override String get addTab => 'Tab hinzufügen';
	@override String get alwaysExpandCw => 'Inhalt trotz Warnung immer anzeigen';
	@override String get alwaysExpandLongNote => 'Lange Notiz immer ausklappen';
	@override String get alwaysExpandMediaInSubNote => 'Medien in Zitaten und Antworten immer anzeigen';
	@override String get alwaysShowAllReactions => 'Immer alle Reaktionen anzeigen';
	@override String get alwaysShowTabHeader => 'Tab-Info immer anzeigen';
	@override String get authenticate => 'Authentifizieren';
	@override String get authenticated => 'Authentifiziert';
	@override String get avatarSize => 'Avatargröße';
	@override String get background => 'Hintergrund';
	@override String get buttonTypes => 'Schaltflächentyp';
	@override String get cache => 'Cache';
	@override String get calculating => 'Berechne...';
	@override TextSpan cancelFollowRequestConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Möchtest du die Follower-Anfrage an '),
		name,
		const TextSpan(text: ' zurückziehen?'),
	]);
	@override String get clientInfo => 'Client-Informationen';
	@override String get confirmBeforeFollow => 'Folgen bestätigen';
	@override String get confirmBeforePost => 'Posten bestätigen';
	@override String get confirmBeforeReact => 'Reaktion bestätigen';
	@override String get confirmBeforeRenote => 'Renote bestätigen';
	@override String get copied => 'In Zwischenablage kopiert';
	@override String get copyName => 'Name kopieren';
	@override String get crop => 'Zuschneiden';
	@override String get custom => 'Benutzerdefiniert';
	@override String get defaultReaction => 'Standardreaktion';
	@override String deleteAccountTabsConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: 'Möchtest du ${n} Tab für dieses Konto löschen?',
		other: 'Möchtest du ${n} Tabs für dieses Konto löschen?',
	);
	@override String deleteFilesConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: 'Willst du ${n} Datei wirklich löschen?',
		other: 'Willst du ${n} Dateien wirklich löschen?',
	);
	@override String get deleteTabConfirm => 'Willst du diesen Tab wirklich löschen?';
	@override String get device => 'Gerät';
	@override String get disableDataSaverWhenOnWifi => 'Datensparmodus bei Wi-Fi deaktivieren';
	@override String get disableStreamingTimeline => 'Echtzeitaktualisierung der Chronik deaktivieren';
	@override String get disableSubscribingNotes => 'Echtzeitaktualisierung der Reaktionen deaktivieren';
	@override String get discardChangesConfirm => 'Änderungen verwerfen und zurück?';
	@override String get displayOfThumbnail => 'Anzeige von Vorschaubildern';
	@override String get doubleTapToShow => 'Zum Anzeigen doppelt antippen';
	@override String get draw => 'Zeichnen';
	@override String get editImage => 'Bild bearbeiten';
	@override String get emojiPickerAutofocus => 'Tastatur beim Öffnen des Emoji-Pickers erweitern';
	@override String get emojiPickerScale => 'Skalierung im Emoji-Picker';
	@override String get emojiPickerUseDialog => 'Emoji-Picker als Dialog anzeigen';
	@override String get enableEmojiFadeIn => 'Einblendanimationen für benutzerdefinierte Emojis aktivieren';
	@override String get enableFederation => 'Föderation aktivieren';
	@override String get enableHapticFeedback => 'Haptisches Feedback aktivieren';
	@override String get enablePredictiveBack => 'Vorausschauende Zurück-Animationen aktivieren';
	@override String get enableSpellCheck => 'Rechtschreibprüfung aktivieren';
	@override String get endpoint => 'Endpunkt';
	@override String get exitPlayConfirm => 'Diesen Play verlassen?';
	@override String get expandNote => 'Notiz ausklappen';
	@override String get extraMentionsWarning => 'Diese Notiz enthält Erwähnungen, die nicht in der Zielnotiz der Antwort enthalten sind';
	@override String get fileNotFound => 'Datei existiert nicht';
	@override String get findServer => 'Einen Misskey-Server finden';
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Möchtest du '),
		name,
		const TextSpan(text: ' wirklich folgen?'),
	]);
	@override String get font => 'Schriftart';
	@override String get fromDevice => 'Vom Gerät';
	@override String get guest => 'Gast';
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria wird durch freiwillige Helfer in viele verschiedene Sprachen übersetzt. Auf '),
		link,
		const TextSpan(text: ' kannst du mithelfen.'),
	]);
	@override TextSpan iconAttribution({required InlineSpan sevenc_nanashi, required InlineSpan cc_by}) => TextSpan(children: [
		const TextSpan(text: 'Das Aria-Icon wurde von '),
		sevenc_nanashi,
		const TextSpan(text: ' erstellt und ist unter '),
		cc_by,
		const TextSpan(text: ' lizenziert.'),
	]);
	@override String get importCompleted => 'Import abgeschlossen';
	@override String get importConfirm => 'Willst du wirklich Einstellungen importieren? Bestehende Einstellungen werden überschrieben.';
	@override String get invalidListFormat => 'Format der Liste ist ungültig';
	@override String jumpTo({required Object x}) => 'Zu ${x} springen';
	@override String get keepOpen => 'Geöffnet halten';
	@override String get keepTimelinePosition => 'Position der Chronik beibehalten';
	@override String get lineHeight => 'Zeilenhöhe';
	@override String get loadFromDrive => 'Aus Drive auswählen';
	@override String get loginWithAccessToken => 'Mit einem Zugangstoken anmelden';
	@override String get margin => 'Außenabstand';
	@override String get media => 'Medien';
	@override String get mentionToRemoteWarning => 'Diese Notiz enthält Erwähnungen fremder Benutzer';
	@override String get mergeReactionsByName => 'Reaktionen mit dem gleichen Namen zusammenführen';
	@override String get moved => 'Verschoben';
	@override String get muted => 'Stummgeschaltet';
	@override String get mutedEmojis => 'Stummgeschaltete Emojis';
	@override String nFiles({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '${n} Datei',
		other: '${n} Dateien',
	);
	@override String get newFollowRequestReceived => 'Es gibt neue Follower-Anfragen';
	@override String get newNotes => 'Neue Notizen';
	@override String get newNotificationReceived => 'Es gibt neue Benachrichtigungen';
	@override String get newNotifications => 'Neue Benachrichtigungen';
	@override String get noAccounts => 'Keine Konten';
	@override String get noTabs => 'Keine Tabs';
	@override String get noThemes => 'Keine Designs';
	@override String get noteDoubleTapAction => 'Aktion für doppeltes Antippen';
	@override String get noteFooterSize => 'Größe der Aktionstasten';
	@override String get noteLongPressAction => 'Aktion für Gedrückthalten';
	@override String get noteScheduled => 'Notiz wurde geplant';
	@override String get noteTapAction => 'Aktion für Antippen';
	@override String get notesAfterRenotes => 'Notizen nach Renotes';
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' Benutzer sind online'),
	]);
	@override String get opacity => 'Deckkraft';
	@override String get openAsGuest => 'Als Gast öffnen';
	@override String get openInAnotherAccount => 'In einem anderen Konto öffnen';
	@override String get openInBrowser => 'Im Browser anzeigen';
	@override String get openInExternalBrowser => 'In externem Browser öffnen';
	@override String get openInInternalBrowser => 'In internem Browser öffnen';
	@override String get openMenu => 'Menü öffnen';
	@override TextSpan openScratchpadAndRunCode({required InlineSpan scratchpad}) => TextSpan(children: [
		const TextSpan(text: 'Öffne '),
		scratchpad,
		const TextSpan(text: ' in deinem Browser, dann gib den folgenden Code ein und führe ihn aus.'),
	]);
	@override String get openSensitiveMediaOnDoubleTap => 'Öffne sensible Medien bei Doppeltippen';
	@override String get owner => 'Eigentümer';
	@override String get parameters => 'Parameter';
	@override String get paste => 'Einfügen';
	@override TextSpan pastePinnedEmojisDescription({required InlineSpan url}) => TextSpan(children: [
		const TextSpan(text: 'Füge Emoji-Liste ein, um die Emojis anzupinnen.\nDu kannst deine angehefteten Emojis für Misskey Web von '),
		url,
		const TextSpan(text: ' kopieren.'),
	]);
	@override String get pasteResponseBelow => 'Füge die Ausgabe unten ein.';
	@override String get permissionDeniedErrorDescription => 'Der Zugangstoken ist nicht berechtigt, diese Aktion auszuführen. Bitte melde dich erneut an.';
	@override String get pinToEmojiPicker => 'An Emoji-Picker anheften';
	@override String get playAudio => 'Audioinhalte wiedergeben';
	@override String get playVideo => 'Video wiedergeben';
	@override String get pleaseCopyResponse => 'Bitte kopiere diese Ausgabe';
	@override String pleaseLoginAs({required Object user}) => 'Bitte als ${user} anmelden';
	@override String get postConfirm => 'Diese Notiz veröffentlichen?';
	@override String get reactionConfirm => 'Reaktion hinzufügen?';
	@override String get recentlyUsedEmojis => 'Kürzlich verwendete Emojis';
	@override TextSpan rejectFollowRequestConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Möchtest du die Follower-Anfrage von '),
		name,
		const TextSpan(text: ' ablehnen?'),
	]);
	@override String get renoteConfirm => 'Diese Notiz renoten?';
	@override String get renoteToChannel => 'In Kanal renoten';
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Renote von '),
		user,
	]);
	@override String get reset => 'Zurücksetzen';
	@override String get rotate => 'Drehen';
	@override String get saveToDrive => 'In Drive speichern';
	@override String get selectIcon => 'Symbol auswählen';
	@override TextSpan selfRenotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Selbst-Renote von '),
		user,
	]);
	@override String get sendMessageConfirm => 'Diese Nachricht senden?';
	@override String get serverUrl => 'Server-URL';
	@override String get settingsFileForAria => 'Konfigurationsdatei für Aria';
	@override TextSpan settingsForUser({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Einstellungen für '),
		user,
	]);
	@override String get showAvatarsInNote => 'Avatare in Notizen anzeigen';
	@override String get showAvatarsInSubNote => 'Avatare in Zitaten und Antworten anzeigen';
	@override String get showCaption => 'Alternativtext anzeigen';
	@override String get showEntireImage => 'Seitenverhältnis beibehalten';
	@override String get showExpandedImage => 'Anzeigebereich ausfüllen';
	@override String get showGapBetweenNotesInTimeline => 'Abstände zwischen Notizen in der Chronik anzeigen';
	@override String get showImage => 'Bild anzeigen';
	@override String get showLikeButtonInNoteFooter => '"Mag ich" den Notiz-Aktionen hinzufügen';
	@override String get showMenuButtonInTabBar => 'Menü-Schaltfläche in der Tableiste anzeigen';
	@override String get showNote => 'Notiz anzeigen';
	@override String get showNoteCreatedAt => 'Veröffentlichungsdatum anzeigen';
	@override String get showNoteFooter => 'Aktionsschaltflächen in Notizen anzeigen';
	@override String get showNoteReactionsViewer => 'Reaktionen in Notizen anzeigen';
	@override String get showOnlineStatus => 'Online-Status anzeigen';
	@override String get showPopupOnNewNote => 'Popup bei neuer Notiz anzeigen';
	@override String get showQuoteButtonInNoteFooter => '"Zitieren" den Notiz-Aktionen hinzufügen';
	@override String get showReactionsCountForEachTypes => 'Zeige die Anzahl für jede Reaktion';
	@override String get showRenotesCount => 'Zeige die Anzahl von Renotes in Notizen';
	@override String get showRepliesCount => 'Zeige die Anzahl von Antworten in Notizen';
	@override String get showSelfRenotes => 'Selbst-Renotes anzeigen';
	@override String get showSmallButtons => 'Kleine Schaltflächen anzeigen';
	@override String get showSquaredButtons => 'Quadratische Schaltflächen';
	@override String get showStackTrace => 'Stacktrace anzeigen';
	@override String get showSubNoteFooter => 'Aktionen in Zitaten und Antworten anzeigen';
	@override String get showSubNoteReactionsViewer => 'Reaktionen in Antworten und Zitaten anzeigen';
	@override String get showTabHeaderInOneLine => 'Einzeilige Tab-Informationen';
	@override String get showTimelineLastViewedAt => 'Zeitpunkt des letzten Besuchs der Chronik anzeigen';
	@override String get showTimelineTabBarAtBottom => 'Chronik-Tableiste am unteren Rand anzeigen';
	@override String get showTranslateButtonInNoteFooter => '"Übersetzen" den Notiz-Aktionen hinzufügen';
	@override String get sinceDate => 'Datum von';
	@override String get springStiffness => 'Wischwiderstand';
	@override String get stackTrace => 'Stacktrace';
	@override String get streamingChannel => 'Kanalstream';
	@override String get swapCw => 'Notiz und Inhaltswarnung tauschen';
	@override String get swipeSensitivity => 'Wischempfindlichkeit';
	@override String get tabName => 'Tabname';
	@override String get tabSwitching => 'Tabwechsel';
	@override String get tabType => 'Typ';
	@override String get tabs => 'Tabs';
	@override String get tapToShow => 'Antippen zum Anzeigen';
	@override String get timeMachine => 'Zeitmaschine';
	@override String get timelinesPageButtons => 'Chronik-Schaltflächen';
	@override String get unfavorited => 'Aus Favoriten entfernt';
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Möchtest du '),
		name,
		const TextSpan(text: ' wirklich nicht mehr folgen?'),
	]);
	@override String get untilDate => 'Datum bis';
	@override String get uploaded => 'Hochgeladen';
	@override String get useThisEmoji => 'Dieses Emoji verwenden';
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' hat etwas gesagt'),
	]);
	@override TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' sagt etwas mit sensiblem Inhalt.'),
	]);
	@override String get vibrateNote => 'Bei neuer Notiz vibrieren';
	@override String get vibrateNotification => 'Bei neuer Benachrichtigung vibrieren';
	@override String get vibration => 'Vibration';
	@override String get webBrowser => 'Webbrowser';
}

// Path: misskey
class _TranslationsMisskeyDeDe extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Deutsch';
	@override String get headlineMisskey => 'Ein durch Notizen verbundenes Netzwerk';
	@override String get introMisskey => 'Willkommen! Misskey ist eine dezentralisierte Open-Source Microblogging-Platform.\nVerfasse „Notizen“ um mitzuteilen, was gerade passiert oder um Ereignisse mit anderen zu teilen. 📡\nMit „Reaktionen“ kannst du außerdem schnell deine Gefühle über Notizen anderer Benutzer zum Ausdruck bringen. 👍\nEine neue Welt wartet auf dich! 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} ist einer der durch die Open-Source-Plattform <b>Misskey</b> betriebenen Dienste.';
	@override String monthAndDay({required Object day, required Object month}) => '${day}.${month}.';
	@override String get search => 'Suchen';
	@override String get reset => 'Zurücksetzen';
	@override String get notifications => 'Benachrichtigungen';
	@override String get username => 'Benutzername';
	@override String get password => 'Passwort';
	@override String get initialPasswordForSetup => 'Initiales Passwort für die Einrichtung';
	@override String get initialPasswordIsIncorrect => 'Das initiale Passwort für die Einrichtung ist falsch';
	@override String get initialPasswordForSetupDescription => 'Verwende das in der Konfigurationsdatei angegebene Passwort, wenn du Misskey selbst installiert hast.\nWenn du einen Misskey-Hostingdienst o.ä. nutzt, verwende das dort angegebene Kennwort.\nWenn du kein Passwort festgelegt hast, lasse es leer, um fortzufahren.';
	@override String get forgotPassword => 'Passwort vergessen';
	@override String get fetchingAsApObject => 'Wird aus dem Fediverse angefragt …';
	@override String get ok => 'OK';
	@override String get gotIt => 'Verstanden!';
	@override String get cancel => 'Abbrechen';
	@override String get noThankYou => 'Nein, danke';
	@override String get enterUsername => 'Benutzername eingeben';
	@override String renotedBy({required Object user}) => 'Renote von ${user}';
	@override String get noNotes => 'Keine Notizen gefunden';
	@override String get noNotifications => 'Keine Benachrichtigungen gefunden';
	@override String get instance => 'Instanz';
	@override String get settings => 'Einstellungen';
	@override String get notificationSettings => 'Benachrichtigungseinstellungen';
	@override String get basicSettings => 'Allgemeine Einstellungen';
	@override String get otherSettings => 'Weitere Einstellungen';
	@override String get openInWindow => 'In einem Fenster öffnen';
	@override String get profile => 'Profil';
	@override String get timeline => 'Chronik';
	@override String get noAccountDescription => 'Dieser Nutzer hat seine Profilbeschreibung noch nicht ausgefüllt';
	@override String get login => 'Anmelden';
	@override String get loggingIn => 'Du wirst angemeldet …';
	@override String get logout => 'Abmelden';
	@override String get signup => 'Registrieren';
	@override String get uploading => 'Wird hochgeladen …';
	@override String get save => 'Speichern';
	@override String get users => 'Benutzer';
	@override String get addUser => 'Benutzer hinzufügen';
	@override String get favorite => 'Zu Favoriten hinzufügen';
	@override String get favorites => 'Favoriten';
	@override String get unfavorite => 'Aus Favoriten entfernen';
	@override String get favorited => 'Zu Favoriten hinzugefügt.';
	@override String get alreadyFavorited => 'Bereits zu den Favoriten hinzugefügt.';
	@override String get cantFavorite => 'Hinzufügen zu Favoriten fehlgeschlagen.';
	@override String get pin => 'An dein Profil anheften';
	@override String get unpin => 'Von deinem Profil lösen';
	@override String get copyContent => 'Inhalt kopieren';
	@override String get copyLink => 'Link kopieren';
	@override String get copyRemoteLink => 'Remote-Link kopieren';
	@override String get copyLinkRenote => 'Renote-Link kopieren';
	@override String get delete => 'Löschen';
	@override String get deleteAndEdit => 'Löschen und Bearbeiten';
	@override String get deleteAndEditConfirm => 'Möchtest du diese Notiz wirklich löschen und bearbeiten? Alle Reaktionen, Renotes und Antworten dieser Notiz werden verloren gehen.';
	@override String get addToList => 'Zu Liste hinzufügen';
	@override String get addToAntenna => 'Zu Antenne hinzufügen';
	@override String get sendMessage => 'Nachricht senden';
	@override String get copyRSS => 'RSS kopieren';
	@override String get copyUsername => 'Benutzernamen kopieren';
	@override String get copyUserId => 'Benutzer-ID kopieren';
	@override String get copyNoteId => 'Notiz-ID kopieren';
	@override String get copyFileId => 'Datei-ID kopieren';
	@override String get copyFolderId => 'Ordner-ID kopieren';
	@override String get copyProfileUrl => 'Profil-URL kopieren';
	@override String get searchUser => 'Nach einem Benutzer suchen';
	@override String get searchThisUsersNotes => 'Notizen dieses Benutzers suchen';
	@override String get reply => 'Antworten';
	@override String get loadMore => 'Mehr laden';
	@override String get showMore => 'Mehr anzeigen';
	@override String get showLess => 'Schließen';
	@override String get youGotNewFollower => 'ist dir gefolgt';
	@override String get receiveFollowRequest => 'Follow-Anfrage erhalten';
	@override String get followRequestAccepted => 'Follow-Anfrage akzeptiert';
	@override String get mention => 'Erwähnung';
	@override String get mentions => 'Erwähnungen';
	@override String get directNotes => 'Direktnachrichten';
	@override String get importAndExport => 'Import und Export';
	@override String get import => 'Import';
	@override String get export => 'Export';
	@override String get files => 'Dateien';
	@override String get download => 'Herunterladen';
	@override String driveFileDeleteConfirm({required Object name}) => 'Möchtest du die Datei „${name}“ wirklich löschen? Einige Inhalte, die diese Datei verwenden, werden auch verschwinden.';
	@override String unfollowConfirm({required Object name}) => 'Möchtest du ${name} wirklich nicht mehr folgen?';
	@override String rejectFollowRequestConfirm({required Object name}) => 'Möchtest du die Follow-Anfrage von ${name} ablehnen?';
	@override String get exportRequested => 'Du hast einen Export angefragt. Dies kann etwas Zeit in Anspruch nehmen. Sobald der Export abgeschlossen ist, wird er deiner Drive hinzugefügt.';
	@override String get importRequested => 'Du hast einen Import angefragt. Dies kann etwas Zeit in Anspruch nehmen.';
	@override String get lists => 'Listen';
	@override String get noLists => 'Keine Listen gefunden';
	@override String get note => 'Notiz';
	@override String get notes => 'Notizen';
	@override String get following => 'Folgt';
	@override String get followers => 'Gefolgt von';
	@override String get followsYou => 'Folgt dir';
	@override String get createList => 'Liste erstellen';
	@override String get manageLists => 'Listen verwalten';
	@override String get error => 'Fehler';
	@override String get somethingHappened => 'Ein Fehler ist aufgetreten';
	@override String get retry => 'Wiederholen';
	@override String get pageLoadError => 'Die Seite konnte nicht geladen werden.';
	@override String get pageLoadErrorDescription => 'Dieser Fehler wird meist durch Netzwerkfehler oder den Browser-Cache verursacht. Bitte leere den Cache oder versuche es nach einiger Zeit erneut.';
	@override String get serverIsDead => 'Dieser Server antwortet nicht. Bitte warte einen Moment und versuche es dann erneut.';
	@override String get youShouldUpgradeClient => 'Bitte aktualisiere diese Seite, um eine neuere Version deines Clients zu verwenden.';
	@override String get enterListName => 'Listennamen eingeben';
	@override String get privacy => 'Privatsphäre';
	@override String get makeFollowManuallyApprove => 'Follow-Anfragen benötigen Bestätigung';
	@override String get defaultNoteVisibility => 'Standardsichtbarkeit';
	@override String get follow => 'Folgen';
	@override String get followRequest => 'Follow-Anfrage senden';
	@override String get followRequests => 'Follow-Anfragen';
	@override String get unfollow => 'Entfolgen';
	@override String get followRequestPending => 'Follow-Anfrage ausstehend';
	@override String get enterEmoji => 'Gib ein Emoji ein';
	@override String get renote => 'Renote';
	@override String get unrenote => 'Renote zurücknehmen';
	@override String get renoted => 'Renote getätigt.';
	@override String renotedToX({required Object name}) => 'Renoted zu ${name}.';
	@override String get cantRenote => 'Renote dieses Beitrags nicht möglich.';
	@override String get cantReRenote => 'Renote einer Renote nicht möglich.';
	@override String get quote => 'Zitieren';
	@override String get inChannelRenote => 'Kanal-interner Renote';
	@override String get inChannelQuote => 'Kanal-internes Zitat';
	@override String get renoteToChannel => 'Renote zu Kanal';
	@override String get renoteToOtherChannel => 'Renote zu anderem Kanal';
	@override String get pinnedNote => 'Angeheftete Notiz';
	@override String get pinned => 'Angeheftet';
	@override String get you => 'Du';
	@override String get clickToShow => 'Zum Anzeigen anklicken';
	@override String get sensitive => 'Sensibel';
	@override String get add => 'Hinzufügen';
	@override String get reaction => 'Reaktionen';
	@override String get reactions => 'Reaktionen';
	@override String get emojiPicker => 'Emoji auswählen';
	@override String get pinnedEmojisForReactionSettingDescription => 'Lege Emojis fest, die angepinnt werden sollen, um sie beim Reagieren als Erstes anzuzeigen.';
	@override String get pinnedEmojisSettingDescription => 'Lege Emojis fest, die angepinnt werden sollen, um sie in der Emoji-Auswahl als Erstes anzuzeigen';
	@override String get emojiPickerDisplay => 'Anzeige der Emoji-Auswahl';
	@override String get overwriteFromPinnedEmojisForReaction => 'Überschreiben mit den Reaktions-Einstellungen';
	@override String get overwriteFromPinnedEmojis => 'Überschreiben mit den allgemeinen Einstellungen';
	@override String get reactionSettingDescription2 => 'Ziehe um Anzuordnen, klicke um zu löschen, drücke „+“ um hinzuzufügen';
	@override String get rememberNoteVisibility => 'Notizsichtbarkeit merken';
	@override String get attachCancel => 'Anhang entfernen';
	@override String get deleteFile => 'Datei löschen';
	@override String get markAsSensitive => 'Als sensibel markieren';
	@override String get unmarkAsSensitive => 'Als nicht sensibel markieren';
	@override String get enterFileName => 'Dateinamen eingeben';
	@override String get mute => 'Stummschalten';
	@override String get unmute => 'Stummschaltung aufheben';
	@override String get renoteMute => 'Renotes stummschalten';
	@override String get renoteUnmute => 'Renote-Stummschaltung aufheben';
	@override String get block => 'Blockieren';
	@override String get unblock => 'Blockierung aufheben';
	@override String get suspend => 'Sperren';
	@override String get unsuspend => 'Sperrung aufheben';
	@override String get blockConfirm => 'Möchtest du diesen Benutzer wirklich blockieren?';
	@override String get unblockConfirm => 'Möchtest du diese Blockierung wirklich aufheben?';
	@override String get suspendConfirm => 'Möchtest du diesen Benutzer wirklich sperren?';
	@override String get unsuspendConfirm => 'Möchtest du diesen Benutzer wirklich entsperren?';
	@override String get selectList => 'Liste auswählen';
	@override String get editList => 'Liste bearbeiten';
	@override String get selectChannel => 'Kanal auswählen';
	@override String get selectAntenna => 'Antenne auswählen';
	@override String get editAntenna => 'Antenne bearbeiten';
	@override String get createAntenna => 'Erstelle eine Antenne';
	@override String get selectWidget => 'Widget auswählen';
	@override String get editWidgets => 'Widgets bearbeiten';
	@override String get editWidgetsExit => 'Fertig';
	@override String get customEmojis => 'Benutzerdefinierte Emojis';
	@override String get emoji => 'Emoji';
	@override String get emojis => 'Emojis';
	@override String get emojiName => 'Emoji-Name';
	@override String get emojiUrl => 'Emoji-URL';
	@override String get addEmoji => 'Emoji hinzufügen';
	@override String get settingGuide => 'Empfohlene Einstellung';
	@override String get cacheRemoteFiles => 'Dateien von fremden Instanzen im Cache speichern';
	@override String get cacheRemoteFilesDescription => 'Ist diese Einstellung deaktiviert, so werden Dateien fremder Instanzen direkt von dort geladen. Hierdurch wird Speicherplatz auf diesem Server gespart, aber durch fehlende Generierung von Vorschaubildern mehr Bandbreite verwendet.';
	@override String get youCanCleanRemoteFilesCache => 'Klicke auf den 🗑️-Knopf der Dateiverwaltungsansicht, um den Cache zu leeren.';
	@override String get cacheRemoteSensitiveFiles => 'Sensitive Dateien von fremden Instanzen im Cache speichern';
	@override String get cacheRemoteSensitiveFilesDescription => 'Ist diese Einstellung deaktiviert, so werden sensitive Dateien fremder Instanzen direkt von dort ohne Zwischenspeicherung geladen.';
	@override String get flagAsBot => 'Als Bot markieren';
	@override String get flagAsBotDescription => 'Aktiviere diese Option, falls dieses Benutzerkonto durch ein Programm gesteuert wird. Falls aktiviert, agiert es als Flag für andere Entwickler zur Verhinderung von endlosen Kettenreaktionen mit anderen Bots und lässt Misskeys interne Systeme dieses Benutzerkonto als Bot behandeln.';
	@override String get flagAsCat => 'Als Katze markieren';
	@override String get flagAsCatDescription => 'Aktiviere diese Option, um dieses Benutzerkonto als Katze zu markieren.';
	@override String get flagShowTimelineReplies => 'Antworten in der Chronik anzeigen';
	@override String get flagShowTimelineRepliesDescription => 'Ist diese Option aktiviert, so werden Antworten von Benutzern auf die Notizen anderer Benutzer in der Chronik angezeigt.';
	@override String get autoAcceptFollowed => 'Follow-Anfragen von Benutzern, denen du folgst, automatisch akzeptieren';
	@override String get addAccount => 'Benutzerkonto hinzufügen';
	@override String get reloadAccountsList => 'Benutzerkontoliste aktualisieren';
	@override String get loginFailed => 'Anmeldung fehlgeschlagen';
	@override String get showOnRemote => 'Auf Ursprungsinstanz ansehen';
	@override String get continueOnRemote => 'Weiter auf Remote-Server';
	@override String get chooseServerOnMisskeyHub => 'Wähle einen Server aus dem Misskey Hub';
	@override String get specifyServerHost => 'Server-Host auswählen';
	@override String get inputHostName => 'Gib die Domain an';
	@override String get general => 'Allgemein';
	@override String get wallpaper => 'Hintergrund';
	@override String get setWallpaper => 'Hintergrund festlegen';
	@override String get removeWallpaper => 'Hintergrund entfernen';
	@override String searchWith({required Object q}) => 'Suchen: ${q}';
	@override String get youHaveNoLists => 'Du hast keine Listen';
	@override String followConfirm({required Object name}) => 'Möchtest du ${name} wirklich folgen?';
	@override String get proxyAccount => 'Proxy-Benutzerkonto';
	@override String get proxyAccountDescription => 'Ein Proxy-Konto ist ein Benutzerkonto, das unter bestimmten Bedingungen als Follower für Benutzer fremder Instanzen fungiert. Wenn zum Beispiel ein Benutzer einen Benutzer einer fremden Instanz zu einer Liste hinzufügt, werden die Aktivitäten des entfernten Benutzers nicht an die Instanz übermittelt, wenn kein lokaler Benutzer diesem Benutzer folgt; stattdessen folgt das Proxy-Konto.';
	@override String get host => 'Hostname';
	@override String get selectSelf => 'Mich auswählen';
	@override String get selectUser => 'Benutzer auswählen';
	@override String get recipient => 'Empfänger';
	@override String get annotation => 'Anmerkung';
	@override String get federation => 'Föderation';
	@override String get instances => 'Instanzen';
	@override String get registeredAt => 'Registriert am';
	@override String get latestRequestReceivedAt => 'Letzte Anfrage erhalten';
	@override String get latestStatus => 'Neuster Status';
	@override String get storageUsage => 'Verbrauchter Speicherplatz';
	@override String get charts => 'Diagramme';
	@override String get perHour => 'Pro Stunde';
	@override String get perDay => 'Pro Tag';
	@override String get stopActivityDelivery => 'Senden von Aktivitäten einstellen';
	@override String get blockThisInstance => 'Diese Instanz blockieren';
	@override String get silenceThisInstance => 'Instanz stummschalten';
	@override String get mediaSilenceThisInstance => 'Medien dieses Servers stummschalten';
	@override String get operations => 'Aktionen';
	@override String get software => 'Software';
	@override String get softwareName => 'Software Name';
	@override String get version => 'Version';
	@override String get metadata => 'Metadaten';
	@override String withNFiles({required Object n}) => '${n} Datei(en)';
	@override String get monitor => 'Beobachten';
	@override String get jobQueue => 'Job-Warteschlange';
	@override String get cpuAndMemory => 'CPU und Arbeitsspeicher';
	@override String get network => 'Netzwerk';
	@override String get disk => 'Festplatte';
	@override String get instanceInfo => 'Instanzinformationen';
	@override String get statistics => 'Statistiken';
	@override String get clearQueue => 'Warteschlange leeren';
	@override String get clearQueueConfirmTitle => 'Möchtest du die Warteschlange wirklich leeren?';
	@override String get clearQueueConfirmText => 'Hierdurch werden jegliche noch nicht gesendete Notizen nicht föderiert. Normalerweise wird dies nicht benötigt.';
	@override String get clearCachedFiles => 'Cache leeren';
	@override String get clearCachedFilesConfirm => 'Sollen alle im Cache gespeicherten Dateien von anderen Instanzen wirklich gelöscht werden?';
	@override String get blockedInstances => 'Blockierte Instanzen';
	@override String get blockedInstancesDescription => 'Gib die Hostnamen der Instanzen, welche blockiert werden sollen, durch Zeilenumbrüche getrennt an. Blockierte Instanzen können mit dieser instanz nicht mehr kommunizieren.';
	@override String get silencedInstances => 'Stummgeschaltete Instanzen';
	@override String get silencedInstancesDescription => 'Gib die Hostnamen der Instanzen, welche stummgeschaltet werden sollen, durch Zeilenumbrüche getrennt an. Alle Konten dieser Instanzen werden als stummgeschaltet behandelt, können nur noch Follow-Anfragen stellen und wenn nicht gefolgt keine lokalen Konten erwähnen. Blockierte Instanzen sind davon nicht betroffen.';
	@override String get mediaSilencedInstances => 'Medien-stummgeschaltete Server';
	@override String get mediaSilencedInstancesDescription => 'Gib pro Zeile die Hostnamen der Server ein, dessen Medien du stummschalten möchtest. Alle Benutzerkonten der aufgeführten Server werden als sensibel behandelt und können keine benutzerdefinierten Emojis verwenden. Gesperrte Server sind davon nicht betroffen.';
	@override String get federationAllowedHosts => 'Föderierte Instanzen';
	@override String get federationAllowedHostsDescription => 'Trage die Hostnamen ein mit den du eine Föderation eingehen möchtest. Trenne mit Zeilenumbruch.';
	@override String get muteAndBlock => 'Stummschaltungen und Blockierungen';
	@override String get mutedUsers => 'Stummgeschaltete Benutzer';
	@override String get blockedUsers => 'Blockierte Benutzer';
	@override String get noUsers => 'Keine Benutzer gefunden';
	@override String get editProfile => 'Profil bearbeiten';
	@override String get noteDeleteConfirm => 'Möchtest du diese Notiz wirklich löschen?';
	@override String get pinLimitExceeded => 'Du kannst nicht noch mehr Notizen anheften.';
	@override String get done => 'Fertig';
	@override String get processing => 'In Bearbeitung …';
	@override String get preview => 'Vorschau';
	@override String get default_ => 'Standard';
	@override String defaultValueIs({required Object value}) => 'Standardwert: ${value}';
	@override String get noCustomEmojis => 'Keine benutzerdefinierten Emojis gefunden';
	@override String get noJobs => 'Keine Jobs vorhanden';
	@override String get federating => 'Wird föderiert';
	@override String get blocked => 'Blockiert';
	@override String get suspended => 'Gesperrt';
	@override String get all => 'Alle';
	@override String get subscribing => 'Wird abonniert';
	@override String get publishing => 'Wird veröffentlicht';
	@override String get notResponding => 'Antwortet nicht';
	@override String get instanceFollowing => 'Gefolgt auf der Instanz';
	@override String get instanceFollowers => 'Follower der Instanz';
	@override String get instanceUsers => 'Benutzer der Instanz';
	@override String get changePassword => 'Passwort ändern';
	@override String get security => 'Sicherheit';
	@override String get retypedNotMatch => 'Die Eingaben stimmen nicht überein.';
	@override String get currentPassword => 'Aktuelles Passwort';
	@override String get newPassword => 'Neues Passwort';
	@override String get newPasswordRetype => 'Neues Passwort bestätigen';
	@override String get attachFile => 'Datei anhängen';
	@override String get more => 'Mehr!';
	@override String get featured => 'Beliebt';
	@override String get usernameOrUserId => 'Benutzername oder Benutzer-ID';
	@override String get noSuchUser => 'Benutzer nicht gefunden';
	@override String get lookup => 'Anfragen';
	@override String get announcements => 'Ankündigungen';
	@override String get imageUrl => 'Bild-URL';
	@override String get remove => 'Löschen';
	@override String get removed => 'Erfolgreich gelöscht';
	@override String removeAreYouSure({required Object x}) => 'Möchtest du „${x}“ wirklich entfernen?';
	@override String deleteAreYouSure({required Object x}) => 'Möchtest du „${x}“ wirklich löschen?';
	@override String get resetAreYouSure => 'Wirklich zurücksetzen?';
	@override String get areYouSure => 'Bist du sicher?';
	@override String get saved => 'Erfolgreich gespeichert';
	@override String get upload => 'Hochladen';
	@override String get keepOriginalUploading => 'Originalbild speichern';
	@override String get keepOriginalUploadingDescription => 'Speichert das Originalbild so, wie es ist. Ist dies deaktiviert, wird eine Version zum Anzeigen im Internet generiert.';
	@override String get fromDrive => 'Aus Drive';
	@override String get fromUrl => 'Von einer URL';
	@override String get uploadFromUrl => 'Von einer URL hochladen';
	@override String get uploadFromUrlDescription => 'URL der hochzuladenden Datei';
	@override String get uploadFromUrlRequested => 'Upload angefordert';
	@override String get uploadFromUrlMayTakeTime => 'Es kann eine Weile dauern, bis das Hochladen abgeschlossen ist.';
	@override String uploadNFiles({required Object n}) => 'Lade ${n} Dateien hoch';
	@override String get explore => 'Erkunden';
	@override String get messageRead => 'Gelesen';
	@override String get noMoreHistory => 'Kein weiterer Verlauf vorhanden';
	@override String get startChat => 'Chat starten';
	@override String nUsersRead({required Object n}) => 'Von ${n} Benutzern gelesen';
	@override String agreeTo({required Object x0}) => 'Ich stimme ${x0} zu';
	@override String get agree => 'Zustimmen';
	@override String get agreeBelow => 'Ich stimme Untenstehendem zu';
	@override String get basicNotesBeforeCreateAccount => 'Wichtige Infos';
	@override String get termsOfService => 'Nutzungsbedingungen';
	@override String get start => 'Anfangen';
	@override String get home => 'Startseite';
	@override String get remoteUserCaution => 'Diese Informationen sind möglicherweise unvollständig, da der Benutzer von einer fremden Instanz stammt.';
	@override String get activity => 'Aktivität';
	@override String get images => 'Bilder';
	@override String get image => 'Bild';
	@override String get birthday => 'Geburtstag';
	@override String yearsOld({required Object age}) => '${age} Jahre alt';
	@override String get registeredDate => 'Registrationsdatum';
	@override String get location => 'Ort';
	@override String get theme => 'Farbschema';
	@override String get themeForLightMode => 'Helles Farbschema';
	@override String get themeForDarkMode => 'Dunkles Farbschema';
	@override String get light => 'Hell';
	@override String get dark => 'Dunkel';
	@override String get lightThemes => 'Helle Farbschemata';
	@override String get darkThemes => 'Dunkle Farbschemata';
	@override String get syncDeviceDarkMode => 'Einstellung deines Geräts übernehmen';
	@override String switchDarkModeManuallyWhenSyncEnabledConfirm({required Object x}) => '"${x}" ist eingeschaltet. Möchtest du die Synchronisation ausschalten und den Modus manuell wechseln?';
	@override String get drive => 'Drive';
	@override String get fileName => 'Dateiname';
	@override String get selectFile => 'Datei auswählen';
	@override String get selectFiles => 'Dateien auswählen';
	@override String get selectFolder => 'Ordner auswählen';
	@override String get selectFolders => 'Ordner auswählen';
	@override String get fileNotSelected => 'Keine Datei ausgewählt';
	@override String get renameFile => 'Datei umbenennen';
	@override String get folderName => 'Ordnername';
	@override String get createFolder => 'Ordner erstellen';
	@override String get renameFolder => 'Ordner umbenennen';
	@override String get deleteFolder => 'Ordner löschen';
	@override String get folder => 'Ordner';
	@override String get addFile => 'Datei hinzufügen';
	@override String get showFile => 'Datei anzeigen';
	@override String get emptyDrive => 'Deine Drive ist leer';
	@override String get emptyFolder => 'Dieser Ordner ist leer';
	@override String get unableToDelete => 'Nicht löschbar';
	@override String get inputNewFileName => 'Gib einen neuen Dateinamen ein';
	@override String get inputNewDescription => 'Gib eine neue Beschreibung ein';
	@override String get inputNewFolderName => 'Gib einen neuen Ordnernamen ein';
	@override String get circularReferenceFolder => 'Der Zielordner ist ein Unterorder des Ordners, den du verschieben möchtest.';
	@override String get hasChildFilesOrFolders => 'Dieser Ordner kann nicht gelöscht werden, da er nicht leer ist.';
	@override String get copyUrl => 'URL kopieren';
	@override String get rename => 'Umbenennen';
	@override String get avatar => 'Profilbild';
	@override String get banner => 'Banner';
	@override String get displayOfSensitiveMedia => 'Darstellung sensibler Medien';
	@override String get whenServerDisconnected => 'Bei Verbindungsverlust zum Server';
	@override String get disconnectedFromServer => 'Die Verbindung zum Server wurde getrennt';
	@override String get reload => 'Aktualisieren';
	@override String get doNothing => 'Ignorieren';
	@override String get reloadConfirm => 'Seite neu laden?';
	@override String get watch => 'Beobachten';
	@override String get unwatch => 'Nicht mehr beobachten';
	@override String get accept => 'Akzeptieren';
	@override String get reject => 'Ablehnen';
	@override String get normal => 'Normal';
	@override String get instanceName => 'Name der Instanz';
	@override String get instanceDescription => 'Beschreibung der Instanz';
	@override String get maintainerName => 'Betreiber';
	@override String get maintainerEmail => 'Betreiber-Email';
	@override String get tosUrl => 'URL der Nutzungsbedingungen';
	@override String get thisYear => 'Jahr';
	@override String get thisMonth => 'Monat';
	@override String get today => 'Heute';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => '${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'Seiten';
	@override String get integration => 'Integration';
	@override String get connectService => 'Verbinden';
	@override String get disconnectService => 'Trennen';
	@override String get enableLocalTimeline => 'Lokale Chronik aktivieren';
	@override String get enableGlobalTimeline => 'Globale Chronik aktivieren';
	@override String get disablingTimelinesInfo => 'Administratoren und Moderatoren haben immer Zugriff auf alle Chroniken, auch wenn diese deaktiviert sind.';
	@override String get registration => 'Registrieren';
	@override String get invite => 'Einladen';
	@override String get driveCapacityPerLocalAccount => 'Drive-Kapazität pro lokalem Benutzerkonto';
	@override String get driveCapacityPerRemoteAccount => 'Drive-Kapazität pro Benutzer fremder Instanzen';
	@override String get inMb => 'In Megabytes';
	@override String get bannerUrl => 'Banner-URL';
	@override String get backgroundImageUrl => 'Hintergrundbild-URL';
	@override String get basicInfo => 'Grundlegende Informationen';
	@override String get pinnedUsers => 'Angeheftete Benutzer';
	@override String get pinnedUsersDescription => 'Gib durch Leerzeichen getrennte Benutzer an, die an die "Erkunden"-Seite angeheftet werden sollen.';
	@override String get pinnedPages => 'Angeheftete Seiten';
	@override String get pinnedPagesDescription => 'Gib durch Leerzeilen getrennte Pfade zu Seiten an, die an die Startseite dieser Instanz angeheftet werden sollen.';
	@override String get pinnedClipId => 'ID des anzuheftenden Clips';
	@override String get pinnedNotes => 'Angeheftete Notizen';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'hCaptcha aktivieren';
	@override String get hcaptchaSiteKey => 'Site key';
	@override String get hcaptchaSecretKey => 'Secret key';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => 'mCaptcha aktivieren';
	@override String get mcaptchaSiteKey => 'Site key';
	@override String get mcaptchaSecretKey => 'Secret key';
	@override String get mcaptchaInstanceUrl => 'mCaptcha Instanz-URL';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'reCAPTCHA aktivieren';
	@override String get recaptchaSiteKey => 'Site key';
	@override String get recaptchaSecretKey => 'Secret key';
	@override String get turnstile => 'Turnstile';
	@override String get enableTurnstile => 'Turnstile aktivieren';
	@override String get turnstileSiteKey => 'Site key';
	@override String get turnstileSecretKey => 'Secret key';
	@override String get avoidMultiCaptchaConfirm => 'Das Verwenden von mehreren Captcha-Systemen kann zu Störungen führen. Sollen die anderen Systeme deaktiviert werden? Durch Abbrechen können mehrere Systeme aktiviert bleiben.';
	@override String get antennas => 'Antennen';
	@override String get manageAntennas => 'Antennen verwalten';
	@override String get name => 'Name';
	@override String get antennaSource => 'Antennenquelle';
	@override String get antennaKeywords => 'Zu beobachtende Schlüsselwörter';
	@override String get antennaExcludeKeywords => 'Zu ignorierende Schlüsselwörter';
	@override String get antennaExcludeBots => 'Bot-Accounts ausschließen';
	@override String get antennaKeywordsDescription => 'Zum Nutzen einer "UND"-Verknüpfung Einträge mit Leerzeichen trennen, zum Nutzen einer "ODER"-Verknüpfung Einträge mit einem Zeilenumbruch trennen';
	@override String get notifyAntenna => 'Über neue Notizen benachrichtigen';
	@override String get withFileAntenna => 'Nur Notizen mit Dateien';
	@override String get excludeNotesInSensitiveChannel => 'Schließe Notizen von sensitive Kanäle aus';
	@override String get enableServiceworker => 'Push-Benachrichtigungen im Browser aktivieren';
	@override String get antennaUsersDescription => 'Benutzernamen getrennt durch Zeilenumbrüche angeben';
	@override String get caseSensitive => 'Groß-/Kleinschreibung unterscheiden';
	@override String get withReplies => 'Antworten beinhalten';
	@override String get connectedTo => 'Mit folgenden Benutzerkonten verknüpft';
	@override String get notesAndReplies => 'Notizen und Antworten';
	@override String get withFiles => 'Notizen mit Dateien';
	@override String get silence => 'Instanzweit stummschalten';
	@override String get silenceConfirm => 'Möchtest du diesen Benutzer wirklich instanzweit stummschalten?';
	@override String get unsilence => 'Instanzweite Stummschaltung aufheben';
	@override String get unsilenceConfirm => 'Möchtest du die instanzweite Stummschaltung dieses Benutzers wirklich aufheben?';
	@override String get popularUsers => 'Beliebte Benutzer';
	@override String get recentlyUpdatedUsers => 'Vor kurzem aktive Benutzer';
	@override String get recentlyRegisteredUsers => 'Vor kurzem registrierte Benutzer';
	@override String get recentlyDiscoveredUsers => 'Vor kurzem gefundene Benutzer';
	@override String exploreUsersCount({required Object count}) => 'Es gibt ${count} Benutzer';
	@override String get exploreFediverse => 'Das Fediverse erkunden';
	@override String get popularTags => 'Beliebte Schlagwörter';
	@override String get userList => 'Liste';
	@override String get about => 'Über';
	@override String get aboutMisskey => 'Über Misskey';
	@override String get administrator => 'Administrator';
	@override String get token => 'Token';
	@override String get x2fa => 'Zwei-Faktor-Authentifizierung';
	@override String get setupOf2fa => 'Zweifaktorauthentifizierung einrichten';
	@override String get totp => 'Authentifizierungs-App';
	@override String get totpDescription => 'Logge dich via Authentifizierungs-App mit Einmalpasswort ein';
	@override String get moderator => 'Moderator';
	@override String get moderation => 'Moderation';
	@override String get moderationNote => 'Moderationsnotiz';
	@override String get moderationNoteDescription => 'Trage hier Notizen ein. Diese sind nur für die Moderatoren sichtbar.';
	@override String get addModerationNote => 'Moderationsnotiz hinzufügen';
	@override String get moderationLogs => 'Moderationsprotokolle';
	@override String nUsersMentioned({required Object n}) => 'Von ${n} Benutzern erwähnt';
	@override String get securityKeyAndPasskey => 'Hardware-Sicherheitsschlüssel und Passkeys';
	@override String get securityKey => 'Hardware-Sicherheitsschlüssel';
	@override String get lastUsed => 'Zuletzt benutzt';
	@override String lastUsedAt({required Object t}) => 'Zuletzt verwendet: ${t}';
	@override String get unregister => 'Deaktivieren';
	@override String get passwordLessLogin => 'Passwortloses Anmelden';
	@override String get passwordLessLoginDescription => 'Ermöglicht passwortloses Einloggen mit einem Security-Token oder Passkey';
	@override String get resetPassword => 'Passwort zurücksetzen';
	@override String newPasswordIs({required Object password}) => 'Das neue Passwort ist „${password}“';
	@override String get reduceUiAnimation => 'Animationen der Benutzeroberfläche reduzieren';
	@override String get share => 'Teilen';
	@override String get notFound => 'Nicht gefunden';
	@override String get notFoundDescription => 'Es konnte keine Seite unter dieser URL gefunden werden.';
	@override String get uploadFolder => 'Standardordner für Uploads';
	@override String get markAsReadAllNotifications => 'Alle Benachrichtigungen als gelesen markieren';
	@override String get markAsReadAllUnreadNotes => 'Alle Notizen als gelesen markieren';
	@override String get markAsReadAllTalkMessages => 'Alle Chats als gelesen markieren';
	@override String get help => 'Hilfe';
	@override String get inputMessageHere => 'Hier Nachricht eingeben';
	@override String get close => 'Schließen';
	@override String get invites => 'Einladungen';
	@override String get members => 'Mitglieder';
	@override String get transfer => 'Übertragen';
	@override String get title => 'Titel';
	@override String get text => 'Text';
	@override String get enable => 'Aktivieren';
	@override String get next => 'Weiter';
	@override String get retype => 'Erneut eingeben';
	@override String noteOf({required Object user}) => 'Notiz von ${user}';
	@override String get quoteAttached => 'Zitat';
	@override String get quoteQuestion => 'Als Zitat anhängen?';
	@override String get attachAsFileQuestion => 'Der Text in der Zwischenablage ist lang. Möchtest du ihn als Textdatei anhängen?';
	@override String get onlyOneFileCanBeAttached => 'Es kann pro Nachricht nur eine Datei angehängt werden';
	@override String get signinRequired => 'Bitte registriere oder melde dich an, um fortzufahren';
	@override String get signinOrContinueOnRemote => 'Um fortzufahren, gehe zu deiner Instanz oder registriere bzw. melde dich an dieser Instanz an. ';
	@override String get invitations => 'Einladungen';
	@override String get invitationCode => 'Einladungscode';
	@override String get checking => 'Wird überprüft …';
	@override String get available => 'Verfügbar';
	@override String get unavailable => 'Unverfügbar';
	@override String get usernameInvalidFormat => 'Du kannst Klein- und Großbuchstaben, Zahlen sowie Unterstriche verwenden';
	@override String get tooShort => 'Zu kurz';
	@override String get tooLong => 'Zu lang';
	@override String get weakPassword => 'Schwaches Passwort';
	@override String get normalPassword => 'Durchschnittliches Passwort';
	@override String get strongPassword => 'Starkes Passwort';
	@override String get passwordMatched => 'Stimmt überein';
	@override String get passwordNotMatched => 'Stimmt nicht überein';
	@override String signinWith({required Object x}) => 'Mit ${x} anmelden';
	@override String get signinFailed => 'Anmeldung fehlgeschlagen. Überprüfe Benutzername und Passswort.';
	@override String get or => 'Oder';
	@override String get language => 'Sprache';
	@override String get uiLanguage => 'Sprache der Benutzeroberfläche';
	@override String aboutX({required Object x}) => 'Über ${x}';
	@override String get emojiStyle => 'Emoji-Stil';
	@override String get native => 'Nativ';
	@override String get menuStyle => 'Menü Stil';
	@override String get style => 'Stil';
	@override String get drawer => 'App-Übersicht';
	@override String get popup => 'Pop-up';
	@override String get showNoteActionsOnlyHover => 'Notizmenü nur bei Mouseover anzeigen';
	@override String get showReactionsCount => 'Zeige die Anzahl der Reaktionen auf Notizen an';
	@override String get noHistory => 'Kein Verlauf gefunden';
	@override String get signinHistory => 'Anmeldungsverlauf';
	@override String get enableAdvancedMfm => 'Erweitertes MFM aktivieren';
	@override String get enableAnimatedMfm => 'Animiertes MFM aktivieren';
	@override String get doing => 'In Bearbeitung …';
	@override String get category => 'Kategorie';
	@override String get tags => 'Aliasse';
	@override String get docSource => 'Quellcode dieses Dokuments';
	@override String get createAccount => 'Benutzerkonto erstellen';
	@override String get existingAccount => 'Bestehendes Benutzerkonto';
	@override String get regenerate => 'Regenerieren';
	@override String get fontSize => 'Schriftgröße';
	@override String get mediaListWithOneImageAppearance => 'Höhe von Medienlisten mit nur einem Bild';
	@override String limitTo({required Object x}) => 'Auf ${x} begrenzen';
	@override String get noFollowRequests => 'Keine ausstehenden Follow-Anfragen vorhanden';
	@override String get openImageInNewTab => 'Bilder in neuem Tab öffnen';
	@override String get dashboard => 'Dashboard';
	@override String get local => 'Lokal';
	@override String get remote => 'Fremd';
	@override String get total => 'Gesamt';
	@override String get weekOverWeekChanges => 'Veränderung zu letzter Woche';
	@override String get dayOverDayChanges => 'Veränderung zu Gestern';
	@override String get appearance => 'Aussehen';
	@override String get clientSettings => 'Client-Einstellungen';
	@override String get accountSettings => 'Benutzerkonto-Einstellungen';
	@override String get promotion => 'Werbung';
	@override String get promote => 'Werbung schalten';
	@override String get numberOfDays => 'Anzahl der Tage';
	@override String get hideThisNote => 'Diese Notiz verstecken';
	@override String get showFeaturedNotesInTimeline => 'Beliebte Notizen in der Chronik anzeigen';
	@override String get objectStorage => 'Object Storage';
	@override String get useObjectStorage => 'Object Storage verwenden';
	@override String get objectStorageBaseUrl => 'Basis-URL';
	@override String get objectStorageBaseUrlDesc => 'Die als Referenz verwendete URL. Verwendest du einen CDN oder Proxy, gib dessen URL an. Für S3 verwende \'https://<bucket>.s3.amazonaws.com\'. Für GCS o.ä. verwende \'https://storage.googleapis.com/<bucket>\'.';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => 'Bitte gib den Namen des Buckets an, der bei deinem Anbieter verwendet wird.';
	@override String get objectStoragePrefix => 'Prefix';
	@override String get objectStoragePrefixDesc => 'Dateien werden in Ordnern unter diesem Prefix gespeichert.';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageEndpointDesc => 'Im Falle von S3 leerlassen, für andere Anbieter den relevanten Endpoint im Format „<host>“ oder „<host>:<port>“ angeben.';
	@override String get objectStorageRegion => 'Region';
	@override String get objectStorageRegionDesc => 'Gib eine Region wie z.B. „xx-east-1“ an. Falls dein Anbieter nicht zwischen Regionen unterscheidet, gib „us-east-1“ an. Lasse es leer bei Verwendung von AWS Konfigurationsdateien oder Umgebungsvariablen.';
	@override String get objectStorageUseSSL => 'SSL verwenden';
	@override String get objectStorageUseSSLDesc => 'Deaktiviere dies, falls du für API-Verbindungen kein HTTPS verwenden wirst';
	@override String get objectStorageUseProxy => 'Über Proxy verbinden';
	@override String get objectStorageUseProxyDesc => 'Deaktiviere dies, falls du für Verbindungen zur API keinen Proxy verwenden wirst';
	@override String get objectStorageSetPublicRead => 'Bei Upload auf "public-read" stellen';
	@override String get s3ForcePathStyleDesc => 'Ist s3ForcePathStyle aktiviert, so muss der Bucketname nicht im Hostnamen der URL, sondern im Pfad der URL angeben werden. Diese Option muss eventuell aktiviert werden, wenn Dienste wie z.B. eine selbstbetriebene Minio-Instanz verwendet werden.';
	@override String get serverLogs => 'Serverprotokolle';
	@override String get deleteAll => 'Alle löschen';
	@override String get showFixedPostForm => 'Bereich zum Schreiben neuer Notizen am Anfang der Chronik anzeigen';
	@override String get showFixedPostFormInChannel => 'Bereich zum Schreiben neuer Notizen am Anfang der Chronik anzeigen (Kanäle)';
	@override String get withRepliesByDefaultForNewlyFollowed => 'Standardmäßig Antworten von neu gefolgten Benutzern in der Chronik anzeigen';
	@override String get newNoteRecived => 'Es gibt neue Notizen';
	@override String get newNote => 'Neue Notiz';
	@override String get sounds => 'Töne';
	@override String get sound => 'Töne';
	@override String get notificationSoundSettings => 'Benachrichtigungston festlegen';
	@override String get listen => 'Anhören';
	@override String get none => 'Nichts';
	@override String get showInPage => 'In einer Seite anzeigen';
	@override String get popout => 'Pop-Up';
	@override String get volume => 'Lautstärke';
	@override String get masterVolume => 'Gesamtlautstärke';
	@override String get notUseSound => 'Gebe kein Ton aus';
	@override String get useSoundOnlyWhenActive => 'Gebe nur Ton aus, wenn Misskey aktiv ist';
	@override String get details => 'Details';
	@override String get renoteDetails => 'Renote Details';
	@override String get chooseEmoji => 'Emoji auswählen';
	@override String get unableToProcess => 'Der Vorgang konnte nicht abgeschlossen werden';
	@override String get recentUsed => 'Vor kurzem verwendet';
	@override String get install => 'Installieren';
	@override String get uninstall => 'Deinstallieren';
	@override String get installedApps => 'Authorisierte Anwendungen';
	@override String get nothing => 'Hier gibt es nichts zu sehen';
	@override String get installedDate => 'Authorisiert am';
	@override String get lastUsedDate => 'Zuletzt verwendet am';
	@override String get state => 'Status';
	@override String get sort => 'Sortieren';
	@override String get ascendingOrder => 'Aufsteigende Reihenfolge';
	@override String get descendingOrder => 'Absteigende Reihenfolge';
	@override String get scratchpad => 'Testumgebung';
	@override String get scratchpadDescription => 'Die Testumgebung bietet einen Bereich für AiScript-Experimente. Dort kannst du AiScript schreiben, ausführen sowie dessen Auswirkungen auf Misskey überprüfen.';
	@override String get uiInspector => 'UI-Inspektor';
	@override String get uiInspectorDescription => 'Die Liste der UI-Komponenten-Server können im Zwischenspeicher angesehen werden. Die UI-Komponente wird von der Funktion Ui:C: generiert.';
	@override String get output => 'Ausgabe';
	@override String get script => 'Skript';
	@override String get disablePagesScript => 'AiScript auf Seiten deaktivieren';
	@override String get updateRemoteUser => 'Benutzerinformationen aktualisieren';
	@override String get unsetUserAvatar => 'Entferne Profilbild';
	@override String get unsetUserAvatarConfirm => 'Möchtest du dein Profilbild entfernen?';
	@override String get unsetUserBanner => 'Entferne Profilbanner';
	@override String get unsetUserBannerConfirm => 'Möchtest du dein Profilbanner entfernen?';
	@override String get deleteAllFiles => 'Alle Dateien löschen';
	@override String get deleteAllFilesConfirm => 'Möchtest du wirklich alle Dateien löschen?';
	@override String get removeAllFollowing => 'Allen gefolgten Benutzern entfolgen';
	@override String removeAllFollowingDescription({required Object host}) => 'Dies entfolgt allen Benutzerkonten von ${host}. Bitte führe dies durch, falls diese Instanz z.B. nicht mehr existiert.';
	@override String get userSuspended => 'Dieser Benutzer wurde gesperrt.';
	@override String get userSilenced => 'Dieser Benutzer wurde instanzweit stummgeschaltet.';
	@override String get yourAccountSuspendedTitle => 'Dieses Benutzerkonto ist gesperrt';
	@override String get yourAccountSuspendedDescription => 'Dieses Benutzerkonto wurde gesperrt, da es gegen die Nutzungsbedingungen dieses Servers verstoßen hat. Trete mit dem Betreiber in Kontakt, falls du weitere Details erfahren möchtest. Bitte erstelle kein neues Benutzerkonto.';
	@override String get tokenRevoked => 'Ungültiger Token';
	@override String get tokenRevokedDescription => 'Der Token ist abgelaufen. Bitte melde dich erneut an.';
	@override String get accountDeleted => 'Benutzerkonto wurde gelöscht';
	@override String get accountDeletedDescription => 'Dieses Konto wurde gelöscht.';
	@override String get menu => 'Menü';
	@override String get divider => 'Trenner';
	@override String get addItem => 'Element hinzufügen';
	@override String get rearrange => 'Sortieren';
	@override String get relays => 'Relays';
	@override String get addRelay => 'Relay hinzufügen';
	@override String get inboxUrl => 'inbox-URL';
	@override String get addedRelays => 'Hinzugefügte Relays';
	@override String get serviceworkerInfo => 'Muss für Push-Benachrichtigungen aktiviert sein.';
	@override String get deletedNote => 'Gelöschte Notiz';
	@override String get invisibleNote => 'Private Notiz';
	@override String get enableInfiniteScroll => 'Automatisch mehr laden';
	@override String get visibility => 'Sichtbarkeit';
	@override String get poll => 'Umfrage';
	@override String get useCw => 'Inhaltswarnung verwenden';
	@override String get enablePlayer => 'Video-Player öffnen';
	@override String get disablePlayer => 'Video-Player schließen';
	@override String get expandTweet => 'Tweet ausklappen';
	@override String get themeEditor => 'Farbschema-Editor';
	@override String get description => 'Beschreibung';
	@override String get describeFile => 'Beschreibung hinzufügen';
	@override String get enterFileDescription => 'Beschreibung eingeben';
	@override String get author => 'Autor';
	@override String get leaveConfirm => 'Es gibt unspeicherte Änderungen. Möchtest du diese verwerfen?';
	@override String get manage => 'Verwaltung';
	@override String get plugins => 'Plugins';
	@override String get preferencesBackups => 'Einstellungsbackups';
	@override String get deck => 'Deck';
	@override String get undeck => 'Deck verlassen';
	@override String get useBlurEffectForModal => 'Weichzeichnungseffekt für Modals verwenden';
	@override String get useFullReactionPicker => 'Vollständige Reaktionsauswahl verwenden';
	@override String get width => 'Breite';
	@override String get height => 'Höhe';
	@override String get large => 'Groß';
	@override String get medium => 'Mittel';
	@override String get small => 'Klein';
	@override String get generateAccessToken => 'Zugriffstoken generieren';
	@override String get permission => 'Berechtigungen';
	@override String get adminPermission => 'Administratorberechtigung';
	@override String get enableAll => 'Alle aktivieren';
	@override String get disableAll => 'Alle deaktivieren';
	@override String get tokenRequested => 'Zugriff zum Benutzerkonto gewähren';
	@override String get pluginTokenRequestedDescription => 'Dieses Plugin wird die hier konfigurierten Berechtigungen verwenden können.';
	@override String get notificationType => 'Art der Benachrichtigung';
	@override String get edit => 'Bearbeiten';
	@override String get emailServer => 'Email-Server';
	@override String get enableEmail => 'Email-Versand aktivieren';
	@override String get emailConfigInfo => 'Zur Email-Bestätigung bei Registrierung oder zum Zurücksetzen des Passworts verwendet';
	@override String get email => 'Email';
	@override String get emailAddress => 'Email-Adresse';
	@override String get smtpConfig => 'SMTP-Server Konfiguration';
	@override String get smtpHost => 'Host';
	@override String get smtpPort => 'Port';
	@override String get smtpUser => 'Benutzername';
	@override String get smtpPass => 'Passwort';
	@override String get emptyToDisableSmtpAuth => 'Benutzername und Passwort leer lassen, um SMTP-Verifizierung zu deaktivieren';
	@override String get smtpSecure => 'Für SMTP-Verbindungen implizit SSL/TLS verwenden';
	@override String get smtpSecureInfo => 'Schalte dies aus, falls du STARTTLS verwendest.';
	@override String get testEmail => 'Emailversand testen';
	@override String get wordMute => 'Wortstummschaltung';
	@override String get wordMuteDescription => 'Minimiert Notizen, die das angegebene Wort oder den angegebenen Ausdruck enthalten. Minimierte Notizen können angezeigt werden, indem du auf sie klickst.';
	@override String get hardWordMute => 'Harte Wortstummschaltung';
	@override String get showMutedWord => 'Stummgeschaltete Wörter anzeigen';
	@override String get hardWordMuteDescription => 'Blendet Notizen aus, die das angegebene Wort oder die angegebene Phrase enthalten. Im Gegensatz zur Wortstummschaltung wird die Notiz vollständig ausgeblendet.';
	@override String get regexpError => 'Fehler in einem regulären Ausdruck';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'Im regulären Ausdruck deiner in Zeile ${line} von ${tab}en Wortstummschaltungen ist ein Fehler aufgetreten:';
	@override String get instanceMute => 'Instanzstummschaltungen';
	@override String userSaysSomething({required Object name}) => '${name} hat etwas gesagt';
	@override String userSaysSomethingAbout({required Object name, required Object word}) => '${name} sagt etwas über \'${word}\'';
	@override String get makeActive => 'Aktivieren';
	@override String get display => 'Anzeigeart';
	@override String get copy => 'Kopieren';
	@override String get copiedToClipboard => 'In die Zwischenablage kopiert';
	@override String get metrics => 'Metriken';
	@override String get overview => 'Übersicht';
	@override String get logs => 'Protokolle';
	@override String get delayed => 'Verzögert';
	@override String get database => 'Datenbank';
	@override String get channel => 'Kanäle';
	@override String get create => 'Erstellen';
	@override String get notificationSetting => 'Benachrichtigungseinstellungen';
	@override String get notificationSettingDesc => 'Wähle die Art der anzuzeigenden Benachrichtigungen.';
	@override String get useGlobalSetting => 'Globale Einstellung verwenden';
	@override String get useGlobalSettingDesc => 'Ist diese Option aktiviert, werden die Benachrichtigungseinstellungen deines Benutzerkontos verwendet. Durch ausschalten dieser Option können individuelle Einstellungen vorgenommen werden.';
	@override String get other => 'Anderes';
	@override String get regenerateLoginToken => 'Anmeldetoken regenerieren';
	@override String get regenerateLoginTokenDescription => 'Den zur Anmeldung intern verwendeten Token regenerieren. Normalerweise wird dies nicht benötigt. Bei Regeneration werden alle Geräte ausgeloggt.';
	@override String get theKeywordWhenSearchingForCustomEmoji => 'Das ist das Schlagwort beim Suchen von benutzerdefinierten Emojis.';
	@override String get setMultipleBySeparatingWithSpace => 'Trenne Elemente durch ein Leerzeichen um mehrere Einstellungen zu kofigurieren.';
	@override String get fileIdOrUrl => 'Datei-ID oder URL';
	@override String get behavior => 'Verhalten';
	@override String get sample => 'Beispiel';
	@override String get abuseReports => 'Meldungen';
	@override String get reportAbuse => 'Melden';
	@override String get reportAbuseRenote => 'Renote melden';
	@override String reportAbuseOf({required Object name}) => '${name} melden';
	@override String get fillAbuseReportDescription => 'Bitte gib zusätzliche Informationen zu dieser Meldung an. Falls es sich um eine spezielle Notiz handelt, bitte gib dessen URL an.';
	@override String get abuseReported => 'Deine Meldung wurde versendet. Vielen Dank.';
	@override String get reporter => 'Melder';
	@override String get reporteeOrigin => 'Herkunft des Gemeldeten';
	@override String get reporterOrigin => 'Herkunft des Meldenden';
	@override String get send => 'Senden';
	@override String get openInNewTab => 'In neuem Tab öffnen';
	@override String get openInSideView => 'In Seitenansicht öffnen';
	@override String get defaultNavigationBehaviour => 'Standardnavigationsverhalten';
	@override String get editTheseSettingsMayBreakAccount => 'Bei Bearbeitung dieser Einstellungen besteht die Gefahr, dein Benutzerkonto zu beschädigen.';
	@override String get instanceTicker => 'Instanz-Informationen von Notizen';
	@override String waitingFor({required Object x}) => 'Warte auf ${x} …';
	@override String get random => 'Zufällig';
	@override String get system => 'System';
	@override String get switchUi => 'UI wechseln';
	@override String get desktop => 'Desktop';
	@override String get clip => 'Clip erstellen';
	@override String get createNew => 'Neu erstellen';
	@override String get optional => 'Optional';
	@override String get createNewClip => 'Neuen Clip erstellen';
	@override String get unclip => 'Aus Clip entfernen';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'Diese Notiz ist bereits im "${name}" Clip enthalten. Möchtest du sie aus diesem Clip entfernen?';
	@override String get public => 'Öffentlich';
	@override String get private => 'Privat';
	@override String i18nInfo({required Object link}) => 'Misskey wird durch freiwillige Helfer in viele verschiedene Sprachen übersetzt. Auf ${link} kannst du mithelfen.';
	@override String get manageAccessTokens => 'Zugriffstokens verwalten';
	@override String get accountInfo => 'Benutzerkonto-Informationen';
	@override String get notesCount => 'Anzahl der Notizen';
	@override String get repliesCount => 'Anzahl gesendeter Antworten';
	@override String get renotesCount => 'Anzahl getätigter Renotes';
	@override String get repliedCount => 'Anzahl erhaltener Antworten';
	@override String get renotedCount => 'Anzahl erhaltener Renotes';
	@override String get followingCount => 'Anzahl gefolgter Benutzer';
	@override String get followersCount => 'Anzahl an Followern';
	@override String get sentReactionsCount => 'Anzahl gesendeter Reaktionen';
	@override String get receivedReactionsCount => 'Anzahl erhaltener Reaktionen';
	@override String get pollVotesCount => 'Anzahl gesendeter Antworten auf Umfragen';
	@override String get pollVotedCount => 'Anzahl erhaltener Antworten auf Umfragen';
	@override String get yes => 'Ja';
	@override String get no => 'Nein';
	@override String get driveFilesCount => 'Anzahl der Dateien in Drive';
	@override String get driveUsage => 'Drive-Auslastung';
	@override String get noCrawle => 'Crawler-Indexierung ablehnen';
	@override String get noCrawleDescription => 'Suchmaschinen bitten, die eigene Profilseite, Notizen, Seiten usw. nicht zu indexieren.';
	@override String get lockedAccountInfo => 'Auch wenn du Follow-Anfragen auf manuelle Bestätigung setzt, wird jede deiner Notizen öffentlich sichtbar sein, sofern du ihre Notizsichtbarkeit nicht auf "Nur Follower" setzt.';
	@override String get alwaysMarkSensitive => 'Medien standardmäßig als sensibel markieren';
	@override String get loadRawImages => 'Anstatt Vorschaubilder immer Originalbilder anzeigen';
	@override String get disableShowingAnimatedImages => 'Animierte Bilder nicht abspielen';
	@override String get highlightSensitiveMedia => 'Sensitive Medien markieren';
	@override String get verificationEmailSent => 'Eine Bestätigungsmail wurde an deine Email-Adresse versendet. Besuche den dort enthaltenen Link, um die Verifizierung abzuschließen.';
	@override String get notSet => 'Nicht konfiguriert';
	@override String get emailVerified => 'Email-Adresse bestätigt';
	@override String get noteFavoritesCount => 'Anzahl an als Favorit markierter Notizen';
	@override String get pageLikesCount => 'Anzahl an als "Gefällt mir" markierter Seiten';
	@override String get pageLikedCount => 'Anzahl erhaltener "Gefällt mir" auf Seiten';
	@override String get contact => 'Kontakt';
	@override String get useSystemFont => 'Standardschriftart des Systems verwenden';
	@override String get clips => 'Clips';
	@override String get experimentalFeatures => 'Experimentelle Funktionalitäten';
	@override String get experimental => 'Experimentell';
	@override String get thisIsExperimentalFeature => 'Dies ist eine experimentelle Funktion. Änderungen an ihrer Funktionsweise sind vorbehalten, zudem kann eine Verwendung zu unerwarteten Effekten führen.';
	@override String get developer => 'Entwickler';
	@override String get makeExplorable => 'Benutzerkonto in „Erkunden“ sichtbar machen';
	@override String get makeExplorableDescription => 'Wenn diese Option deaktiviert ist, ist dein Benutzerkonto nicht im „Erkunden“-Bereich sichtbar.';
	@override String get duplicate => 'Duplizieren';
	@override String get left => 'Links';
	@override String get center => 'Mittig';
	@override String get wide => 'Breit';
	@override String get narrow => 'Schmal';
	@override String get reloadToApplySetting => 'Diese Einstellung tritt nach einer Aktualisierung der Seite in Kraft. Jetzt aktualisieren?';
	@override String get needReloadToApply => 'Diese Einstellung tritt nach einer Aktualisierung der Seite in Kraft.';
	@override String get needToRestartServerToApply => 'Diese Einstellung tritt nach einem Neustart des Servers in Kraft.';
	@override String get showTitlebar => 'Titelleiste anzeigen';
	@override String get clearCache => 'Cache leeren';
	@override String onlineUsersCount({required Object n}) => '${n} Benutzer sind online';
	@override String nUsers({required Object n}) => '${n} Benutzer';
	@override String nNotes({required Object n}) => '${n} Notizen';
	@override String get sendErrorReports => 'Fehlerberichte senden';
	@override String get sendErrorReportsDescription => 'Ist diese Option aktiviert, so werden beim Auftreten von Fehlern detaillierte Fehlerinformationen an Misskey weitergegeben, was zur Verbesserung der Qualität von Misskey beiträgt.\nEnthalten in diesen Informationen sind u.a. die Version deines Betriebssystems, welchen Browser du verwendest und ein Verlauf deiner Aktivitäten innerhalb Misskey.';
	@override String get myTheme => 'Mein Farbschema';
	@override String get backgroundColor => 'Hintergrundfarbe';
	@override String get accentColor => 'Akzentfarbe';
	@override String get textColor => 'Textfarbe';
	@override String get saveAs => 'Speichern als …';
	@override String get advanced => 'Fortgeschritten';
	@override String get advancedSettings => 'Erweiterte Einstellungen';
	@override String get value => 'Wert';
	@override String get createdAt => 'Erstellt am';
	@override String get updatedAt => 'Zuletzt geändert am';
	@override String get saveConfirm => 'Änderungen speichern?';
	@override String get deleteConfirm => 'Wirklich löschen?';
	@override String get invalidValue => 'Dieser Wert ist ungültig.';
	@override String get registry => 'Registry';
	@override String get closeAccount => 'Benutzerkonto schließen';
	@override String get currentVersion => 'Momentane Version';
	@override String get latestVersion => 'Neuste Version';
	@override String get youAreRunningUpToDateClient => 'Du verwendest die neuste Version deines Clients.';
	@override String get newVersionOfClientAvailable => 'Eine neuere Version deines Clients ist verfügbar.';
	@override String get usageAmount => 'Verwendung';
	@override String get capacity => 'Kapazität';
	@override String get inUse => 'Verwendet';
	@override String get editCode => 'Code bearbeiten';
	@override String get apply => 'Anwenden';
	@override String get receiveAnnouncementFromInstance => 'Benachrichtigungen von dieser Instanz empfangen';
	@override String get emailNotification => 'Email-Benachrichtigungen';
	@override String get publish => 'Veröffentlichen';
	@override String get inChannelSearch => 'In Kanal suchen';
	@override String get useReactionPickerForContextMenu => 'Reaktionsauswahl durch Rechtsklick öffnen';
	@override String typingUsers({required Object users}) => '${users} ist/sind am schreiben …';
	@override String get jumpToSpecifiedDate => 'Zu bestimmtem Datum springen';
	@override String get showingPastTimeline => 'Es wird eine alte Chronik angezeigt';
	@override String get clear => 'Zurückkehren';
	@override String get markAllAsRead => 'Alle als gelesen markieren';
	@override String get goBack => 'Zurück';
	@override String get unlikeConfirm => '"Gefällt mir" wirklich entfernen?';
	@override String get fullView => 'Vollansicht';
	@override String get quitFullView => 'Vollansicht verlassen';
	@override String get addDescription => 'Beschreibung hinzufügen';
	@override String get userPagePinTip => 'Um Notizen hier erscheinen zu lassen, drücke "An dein Profil anheften" im Menü individueller Notizen.';
	@override String get notSpecifiedMentionWarning => 'Diese Notiz enthält Erwähnungen von Nutzern, die nicht als Empfänger ausgewählt sind';
	@override String get info => 'Über';
	@override String get userInfo => 'Benutzerinformation';
	@override String get unknown => 'Unbekannt';
	@override String get onlineStatus => 'Onlinestatus';
	@override String get hideOnlineStatus => 'Onlinestatus verbergen';
	@override String get hideOnlineStatusDescription => 'Das Verbergen deines Onlinestatuses reduziert die Nützlichkeit von Funktionen wie der Suche.';
	@override String get online => 'Online';
	@override String get active => 'Aktiv';
	@override String get offline => 'Offline';
	@override String get notRecommended => 'Nicht empfohlen';
	@override String get botProtection => 'Schutz vor Bots';
	@override String get instanceBlocking => 'Blockierte/Stummgeschaltete Instanzen';
	@override String get selectAccount => 'Benutzerkonto auswählen';
	@override String get switchAccount => 'Konto wechseln';
	@override String get enabled => 'Aktiviert';
	@override String get disabled => 'Deaktiviert';
	@override String get quickAction => 'Schnellaktionen';
	@override String get user => 'Benutzer';
	@override String get administration => 'Verwaltung';
	@override String get accounts => 'Benutzerkonten';
	@override String get switch_ => 'Wechseln';
	@override String get noMaintainerInformationWarning => 'Betreiberinformationen sind nicht konfiguriert.';
	@override String get noInquiryUrlWarning => 'Keine gültige Kontakt-URL.';
	@override String get noBotProtectionWarning => 'Schutz vor Bots ist nicht konfiguriert.';
	@override String get configure => 'Konfigurieren';
	@override String get postToGallery => 'Neuen Galeriebeitrag erstellen';
	@override String get postToHashtag => 'Mit diesem Hashtag senden';
	@override String get gallery => 'Galerie';
	@override String get recentPosts => 'Neue Beiträge';
	@override String get popularPosts => 'Beliebte Beiträge';
	@override String get shareWithNote => 'Mit Notiz teilen';
	@override String get ads => 'Werbung';
	@override String get expiration => 'Frist';
	@override String get startingperiod => 'Start';
	@override String get memo => 'Merkzettel';
	@override String get priority => 'Priorität';
	@override String get high => 'Hoch';
	@override String get middle => 'Mittel';
	@override String get low => 'Niedrig';
	@override String get emailNotConfiguredWarning => 'Keine Email-Adresse hinterlegt.';
	@override String get ratio => 'Verhältnis';
	@override String get previewNoteText => 'Vorschau anzeigen';
	@override String get customCss => 'Benutzerdefiniertes CSS';
	@override String get customCssWarn => 'Verwende diese Einstellung nur, wenn du weißt, was sie tut. Ungültige Eingaben können dazu führen, dass der Client nicht mehr normal funktioniert.';
	@override String get global => 'Global';
	@override String get squareAvatars => 'Profilbilder quadratisch anzeigen';
	@override String get sent => 'Gesendet';
	@override String get received => 'Erhalten';
	@override String get searchResult => 'Suchergebnisse';
	@override String get hashtags => 'Hashtags';
	@override String get troubleshooting => 'Problembehandlung';
	@override String get useBlurEffect => 'Weichzeichnungseffekt in der Benutzeroberfläche verwenden';
	@override String get learnMore => 'Mehr erfahren';
	@override String get misskeyUpdated => 'Misskey wurde aktualisiert!';
	@override String get whatIsNew => 'Änderungen anzeigen';
	@override String get translate => 'Übersetzen';
	@override String translatedFrom({required Object x}) => 'Aus ${x} übersetzt';
	@override String get accountDeletionInProgress => 'Die Löschung deines Benutzerkontos ist momentan in Bearbeitung.';
	@override String get usernameInfo => 'Ein Name, durch den dein Benutzerkonto auf diesem Server identifiziert werden kann. Du kannst das Alphabet (a~z, A~Z), Ziffern (0~9) oder Unterstriche (_) verwenden. Benutzernamen können später nicht geändert werden.';
	@override String get aiChanMode => 'Ai-Modus';
	@override String get devMode => 'Entwicklermodus';
	@override String get keepCw => 'Inhaltswarnungen beibehalten';
	@override String get pubSub => 'Pub/Sub Benutzerkonten';
	@override String get lastCommunication => 'Letzte Kommunikation';
	@override String get resolved => 'Gelöst';
	@override String get unresolved => 'Ungelöst';
	@override String get breakFollow => 'Follower entfernen';
	@override String get breakFollowConfirm => 'Diesen Follower wirklich entfernen?';
	@override String get itsOn => 'Eingeschaltet';
	@override String get itsOff => 'Ausgeschaltet';
	@override String get on => 'An';
	@override String get off => 'Aus';
	@override String get emailRequiredForSignup => 'Angabe einer Email-Adresse als benötigt markieren';
	@override String get unread => 'Ungelesen';
	@override String get filter => 'Filter';
	@override String get controlPanel => 'Systemsteuerung';
	@override String get manageAccounts => 'Benutzerkonten verwalten';
	@override String get makeReactionsPublic => 'Reaktionsverlauf veröffentlichen';
	@override String get makeReactionsPublicDescription => 'Jeder wird die Liste deiner gesendeten Reaktionen einsehen können.';
	@override String get classic => 'Classic';
	@override String get muteThread => 'Thread stummschalten';
	@override String get unmuteThread => 'Threadstummschaltung aufheben';
	@override String get followingVisibility => 'Sichtbarkeit der Gefolgten';
	@override String get followersVisibility => 'Sichtbarkeit der Folgenden';
	@override String get continueThread => 'Weiteren Threadverlauf anzeigen';
	@override String get deleteAccountConfirm => 'Dein Benutzerkonto wird unwiderruflich gelöscht. Trotzdem fortfahren?';
	@override String get incorrectPassword => 'Falsches Passwort.';
	@override String get incorrectTotp => 'Das Einmalpasswort ist falsch oder abgelaufen.';
	@override String voteConfirm({required Object choice}) => 'Wirklich für „${choice}“ abstimmen?';
	@override String get hide => 'Inhalt verbergen';
	@override String get useDrawerReactionPickerForMobile => 'Auf mobilen Geräten ausfahrbare Reaktionsauswahl anzeigen';
	@override String welcomeBackWithName({required Object name}) => 'Willkommen zurück, ${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => 'Drücke bitte auf [${ok}], um die Email-Bestätigung abzuschließen.';
	@override String get overridedDeviceKind => 'Gerätetyp';
	@override String get smartphone => 'Smartphone';
	@override String get tablet => 'Tablet';
	@override String get auto => 'Automatisch';
	@override String get themeColor => 'Farbe der Instanz-Information';
	@override String get size => 'Größe';
	@override String get numberOfColumn => 'Spaltenanzahl';
	@override String get searchByGoogle => 'Suchen';
	@override String get instanceDefaultLightTheme => 'Instanzweites Standardfarbschema (Hell)';
	@override String get instanceDefaultDarkTheme => 'Instanzweites Standardfarbschema (Dunkel)';
	@override String get instanceDefaultThemeDescription => 'Gib den Farbschemencode im Objektformat ein.';
	@override String get mutePeriod => 'Stummschaltungsdauer';
	@override String get period => 'Zeitlimit';
	@override String get indefinitely => 'Dauerhaft';
	@override String get tenMinutes => '10 Minuten';
	@override String get oneHour => 'Eine Stunde';
	@override String get oneDay => 'Einen Tag';
	@override String get oneWeek => 'Eine Woche';
	@override String get oneMonth => '1 Monat';
	@override String get threeMonths => '3 Monate';
	@override String get oneYear => '1 Jahr';
	@override String get threeDays => '3 Tage';
	@override String get reflectMayTakeTime => 'Es kann etwas dauern, bis sich dies widerspiegelt.';
	@override String get failedToFetchAccountInformation => 'Benutzerkontoinformationen konnten nicht abgefragt werden';
	@override String get rateLimitExceeded => 'Versuchsanzahl überschritten';
	@override String get cropImage => 'Bild zuschneiden';
	@override String get cropImageAsk => 'Möchtest du das Bild zuschneiden?';
	@override String get cropYes => 'Zuschneiden';
	@override String get cropNo => 'Unbearbeitet verwenden';
	@override String get file => 'Datei';
	@override String recentNHours({required Object n}) => 'Letzte ${n} Stunden';
	@override String recentNDays({required Object n}) => 'Letzte ${n} Tage';
	@override String get noEmailServerWarning => 'Es ist kein Email-Server konfiguriert.';
	@override String get thereIsUnresolvedAbuseReportWarning => 'Es liegen ungelöste Meldungen vor.';
	@override String get recommended => 'Empfehlung';
	@override String get check => 'Check';
	@override String get driveCapOverrideLabel => 'Die Drive-Kapazität dieses Nutzers verändern';
	@override String get driveCapOverrideCaption => 'Gib einen Wert von 0 oder weniger ein, um die Kapazität auf den Standard zurückzusetzen.';
	@override String get requireAdminForView => 'Melde dich mit einem Administratorkonto an, um dies einzusehen.';
	@override String get isSystemAccount => 'Ein Benutzerkonto, das durch das System erstellt und automatisch verwaltet wird.';
	@override String typeToConfirm({required Object x}) => 'Bitte gib zur Bestätigung ${x} ein';
	@override String get deleteAccount => 'Benutzerkonto löschen';
	@override String get document => 'Dokumentation';
	@override String get numberOfPageCache => 'Seitencachegröße';
	@override String get numberOfPageCacheDescription => 'Das Erhöhen dieses Caches führt zu einer angenehmerern Benutzererfahrung, aber erhöht Last und Arbeitsspeicherauslastung auf dem Nutzergerät.';
	@override String get logoutConfirm => 'Wirklich abmelden?';
	@override String get logoutWillClearClientData => 'Beim Abmelden werden die Konfigurationsdaten des Clients aus dem Browser gelöscht. Um sicherzustellen, dass die Konfigurationsdaten beim erneuten Einloggen wiederhergestellt werden können, aktivieren Sie bitte die automatische Sicherung der Konfiguration.';
	@override String get lastActiveDate => 'Zuletzt verwendet am';
	@override String get statusbar => 'Statusleiste';
	@override String get pleaseSelect => 'Wähle eine Option';
	@override String get reverse => 'Umkehren';
	@override String get colored => 'Farbig';
	@override String get refreshInterval => 'Aktualisierungsrate';
	@override String get label => 'Beschriftung';
	@override String get type => 'Art';
	@override String get speed => 'Geschwindigkeit';
	@override String get slow => 'Langsam';
	@override String get fast => 'Schnell';
	@override String get sensitiveMediaDetection => 'Erkennung von sensiblen Medien';
	@override String get localOnly => 'Nur Lokal';
	@override String get remoteOnly => 'Nur für fremde Instanzen';
	@override String get failedToUpload => 'Hochladen fehlgeschlagen';
	@override String get cannotUploadBecauseInappropriate => 'Diese Datei kann nicht hochgeladen werden, da Anteile der Datei als möglicherweise unangebracht festgestellt wurden.';
	@override String get cannotUploadBecauseNoFreeSpace => 'Die Datei konnte nicht hochgeladen werden, da dein Drive-Speicherplatz aufgebraucht ist.';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'Diese Datei kann wegen Überschreitung der Maximalgröße nicht hochgeladen werden.';
	@override String get cannotUploadBecauseUnallowedFileType => 'Hochladen nicht möglich wegen unzulässigem Dateityp.';
	@override String get beta => 'Beta';
	@override String get enableAutoSensitive => 'Automarkierung sensibler Medien';
	@override String get enableAutoSensitiveDescription => 'Setzt soweit möglich durch Verwendung von Machine Learning automatisch Markierungen für sensible Medien. Auch wenn du diese Option deaktiviert hast, ist sie möglicherweise auf Instanzebene aktiviert.';
	@override String get activeEmailValidationDescription => 'Aktivert strengere Überprüfung von E-Mail-Adressen, d.h. Testen auf Wegwerfadressen und darauf, ob mit der Adresse tatsächlich kommuniziert werden kann. Ist dies deaktiviert, so wird nur das Format der E-Mail überprüft.';
	@override String get navbar => 'Navigationsleiste';
	@override String get shuffle => 'Mischen';
	@override String get account => 'Benutzerkonto';
	@override String get move => 'Verschieben';
	@override String get pushNotification => 'Push-Benachrichtigungen';
	@override String get subscribePushNotification => 'Push-Benachrichtigungen aktivieren';
	@override String get unsubscribePushNotification => 'Push-Benachrichtigungen deaktivieren';
	@override String get pushNotificationAlreadySubscribed => 'Push-Benachrichtigungen sind bereits aktiviert';
	@override String get pushNotificationNotSupported => 'Entweder dein Browser oder deine Instanz unterstützt Push-Benachrichtigungen nicht';
	@override String get sendPushNotificationReadMessage => 'Push-Benachrichtigungen löschen, sobald sie gelesen wurden';
	@override String get sendPushNotificationReadMessageCaption => 'Dies kann gegebenenfalls den Batterieverbrauch deines Gerätes erhöhen.';
	@override String get pleaseAllowPushNotification => 'Bitte erlauben Sie Benachrichtigungen in Ihrem Browser.';
	@override String get windowMaximize => 'Maximieren';
	@override String get windowMinimize => 'Minimieren';
	@override String get windowRestore => 'Wiederherstellen';
	@override String get caption => 'Beschreibung';
	@override String get loggedInAsBot => 'Momentan als Bot angemeldet';
	@override String get tools => 'Werkzeuge';
	@override String get cannotLoad => 'Kann nicht geladen werden';
	@override String get numberOfProfileView => 'Profilaufrufe';
	@override String get like => 'Gefällt mir';
	@override String get unlike => '"Gefällt mir" entfernen';
	@override String get numberOfLikes => '"Gefällt mir"-Anzahl';
	@override String get show => 'Anzeigen';
	@override String get neverShow => 'Nicht wieder anzeigen';
	@override String get remindMeLater => 'Vielleicht später';
	@override String get didYouLikeMisskey => 'Gefällt dir Misskey?';
	@override String pleaseDonate({required Object host}) => 'Misskey ist die kostenlose Software, die von ${host} verwendet wird. Wir würden uns über Spenden freuen, damit dessen Entwicklung weitergeführt werden kann!';
	@override String correspondingSourceIsAvailable({required Object anchor}) => 'Der entsprechende Quellcode ist verfügbar unter ${anchor}';
	@override String get roles => 'Rollen';
	@override String get role => 'Rolle';
	@override String get noRole => 'Rolle nicht gefunden';
	@override String get normalUser => 'Standardbenutzer';
	@override String get undefined => 'Undefiniert';
	@override String get assign => 'Zuweisen';
	@override String get unassign => 'Entfernen';
	@override String get color => 'Farbe';
	@override String get manageCustomEmojis => 'Kann benutzerdefinierte Emojis verwalten';
	@override String get manageAvatarDecorations => 'Profilbilddekorationen verwalten';
	@override String get youCannotCreateAnymore => 'Du hast das Erstellungslimit erreicht.';
	@override String get cannotPerformTemporary => 'Vorübergehend nicht verfügbar';
	@override String get cannotPerformTemporaryDescription => 'Diese Aktion ist wegen des Überschreitenes des Ausführungslimits temporär nicht verfügbar. Bitte versuche es nach einiger Zeit erneut.';
	@override String get invalidParamError => 'Ungültige Parameter';
	@override String get invalidParamErrorDescription => 'Die Anfrageparameter sind fehlerhaft. Dies liegt meist an einem Bug, kann aber auch durch eine zu langen Eingabe o.ä. ausgelöst werden.';
	@override String get permissionDeniedError => 'Aktion verweigert';
	@override String get permissionDeniedErrorDescription => 'Dieses Benutzerkonto besitzt nicht die Berechtigung, um diese Aktion auszuführen.';
	@override String get preset => 'Vorlage';
	@override String get selectFromPresets => 'Aus Vorlagen wählen';
	@override String get custom => 'Benutzerdefiniert';
	@override String get achievements => 'Errungenschaften';
	@override String get gotInvalidResponseError => 'Ungültige Antwort des Servers';
	@override String get gotInvalidResponseErrorDescription => 'Eventuell ist der Server momentan nicht erreichbar oder untergeht Wartungsarbeiten. Bitte versuche es später noch einmal.';
	@override String get thisPostMayBeAnnoying => 'Dieser Beitrag stört eventuell andere Benutzer.';
	@override String get thisPostMayBeAnnoyingHome => 'Zur Startseite schicken';
	@override String get thisPostMayBeAnnoyingCancel => 'Abbrechen';
	@override String get thisPostMayBeAnnoyingIgnore => 'Trotzdem schicken';
	@override String get collapseRenotes => 'Bereits gesehene Renotes verkürzt anzeigen';
	@override String get collapseRenotesDescription => 'Klappe Notizen ein, auf die du bereits reagiert oder die du renoted hast.';
	@override String get internalServerError => 'Serverinterner Fehler';
	@override String get internalServerErrorDescription => 'Im Server ist ein unerwarteter Fehler aufgetreten.';
	@override String get copyErrorInfo => 'Fehlerdetails kopieren';
	@override String get joinThisServer => 'Bei dieser Instanz registrieren';
	@override String get exploreOtherServers => 'Eine andere Instanz finden';
	@override String get letsLookAtTimeline => 'Die Chronik durchstöbern';
	@override String get disableFederationConfirm => 'Föderation wirklich deaktivieren?';
	@override String get disableFederationConfirmWarn => 'Auch mit deaktivierter Föderation bleiben Notizen, sofern nicht umgestellt, öffentlich. In den meisten Fällen wird dies nicht benötigt.';
	@override String get disableFederationOk => 'Deaktivieren';
	@override String get invitationRequiredToRegister => 'Diese Instanz ist einladungsbasiert. Du musst einen validen Einladungscode eingeben, um dich zu registrieren.';
	@override String get emailNotSupported => 'Diese Instanz unterstützt das Versenden von Emails nicht';
	@override String get postToTheChannel => 'In Kanal senden';
	@override String get cannotBeChangedLater => 'Kann später nicht mehr geändert werden.';
	@override String get reactionAcceptance => 'Reaktionsannahme';
	@override String get likeOnly => 'Nur "Gefällt mir"';
	@override String get likeOnlyForRemote => 'Alle (Nur "Gefällt mir" für fremde Instanzen)';
	@override String get nonSensitiveOnly => 'Keine Sensitiven';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'Keine Sensitiven (Nur "Gefällt mir" von fremden Instanzen)';
	@override String get rolesAssignedToMe => 'Mir zugewiesene Rollen';
	@override String get resetPasswordConfirm => 'Wirklich Passwort zurücksetzen?';
	@override String get sensitiveWords => 'Sensible Wörter';
	@override String get sensitiveWordsDescription => 'Die Notizsichtbarkeit aller Notizen, die diese Wörter enthalten, wird automatisch auf "Startseite" gesetzt. Durch Zeilenumbrüche können mehrere konfiguriert werden.';
	@override String get sensitiveWordsDescription2 => 'Durch die Verwendung von Leerzeichen können AND-Verknüpfungen angegeben werden und durch das Umgeben von Schrägstrichen können reguläre Ausdrücke verwendet werden.';
	@override String get prohibitedWords => 'Verbotene Wörter';
	@override String get prohibitedWordsDescription => 'Aktiviert eine Fehlermeldung, wenn versucht wird, eine Notiz zu veröffentlichen, die das/die eingestellte(n) Wort(e) enthält. Mehrere Begriffe können durch Zeilenumbrüche getrennt festgelegt werden.';
	@override String get prohibitedWordsDescription2 => 'Durch die Verwendung von Leerzeichen können AND-Verknüpfungen angegeben werden und durch das Umgeben von Schrägstrichen können reguläre Ausdrücke verwendet werden.';
	@override String get hiddenTags => 'Ausgeblendete Hashtags';
	@override String get hiddenTagsDescription => 'Die hier eingestellten Tags werden nicht mehr in den Trends angezeigt. Mit der Umschalttaste können mehrere ausgewählt werden.';
	@override String get notesSearchNotAvailable => 'Die Notizsuche ist nicht verfügbar.';
	@override String get license => 'Lizenz';
	@override String get unfavoriteConfirm => 'Wirklich aus Favoriten entfernen?';
	@override String get myClips => 'Meine Clips';
	@override String get drivecleaner => 'Drive-Reiniger';
	@override String get retryAllQueuesNow => 'Sofort Warteschlangen erneut ausführen';
	@override String get retryAllQueuesConfirmTitle => 'Wirklich erneut versuchen?';
	@override String get retryAllQueuesConfirmText => 'Dies wird zu einer temporären Erhöhung der Serverlast führen.';
	@override String get enableChartsForRemoteUser => 'Diagramme für Nutzer fremder Instanzen erstellen';
	@override String get enableChartsForFederatedInstances => 'Diagramme für fremde Instanzen erstellen';
	@override String get enableStatsForFederatedInstances => 'Abruf von Informationen über förderierte Server';
	@override String get showClipButtonInNoteFooter => '"Clip" zum Notizmenu hinzufügen';
	@override String get reactionsDisplaySize => 'Reaktionsanzeigegröße';
	@override String get limitWidthOfReaction => 'Begrenze die Breite der Reaktion und zeige sie verkleinert an';
	@override String get noteIdOrUrl => 'Notiz-ID oder URL';
	@override String get video => 'Video';
	@override String get videos => 'Videos';
	@override String get audio => 'Audio';
	@override String get audioFiles => 'Audio';
	@override String get dataSaver => 'Datensparmodus';
	@override String get accountMigration => 'Kontomigration';
	@override String get accountMoved => 'Dieser Benutzer ist zu einem neuen Konto migriert:';
	@override String get accountMovedShort => 'Dieses Konto wurde migriert.';
	@override String get operationForbidden => 'Aktion nicht möglich';
	@override String get forceShowAds => 'Werbung immer anzeigen';
	@override String get addMemo => 'Bemerkung hinzufügen';
	@override String get editMemo => 'Bemerkung bearbeiten';
	@override String get reactionsList => 'Reaktionen';
	@override String get renotesList => 'Renotes';
	@override String get notificationDisplay => 'Benachrichtigungen';
	@override String get leftTop => 'Oben links';
	@override String get rightTop => 'Oben rechts';
	@override String get leftBottom => 'Unten links';
	@override String get rightBottom => 'Unten rechts';
	@override String get stackAxis => 'Stapelrichtung';
	@override String get vertical => 'Vertikal';
	@override String get horizontal => 'Horizontal';
	@override String get position => 'Position';
	@override String get serverRules => 'Serverregeln';
	@override String get pleaseConfirmBelowBeforeSignup => 'Lies bitte diese Informationen und stimme ihnen vor der Registration zu.';
	@override String get pleaseAgreeAllToContinue => 'Zum Fortfahren muss allen obigen Feldern zugestimmt werden.';
	@override String get continue_ => 'Fortfahren';
	@override String get preservedUsernames => 'Reservierte Benutzernamen';
	@override String get preservedUsernamesDescription => 'Gib zu reservierende Benutzernamen durch Zeilenumbrüche getrennt an. Diese werden für die Registrierung gesperrt, können aber von Administratoren zur manuellen Erstellung von Konten verwendet werden. Existierende Konten, die diese Namen bereits verwenden, werden nicht beeinträchtigt.';
	@override String get createNoteFromTheFile => 'Notiz für diese Datei schreiben';
	@override String get archive => 'Archivieren';
	@override String get archived => 'Archiviert';
	@override String get unarchive => 'Dearchivieren';
	@override String channelArchiveConfirmTitle({required Object name}) => '${name} wirklich archivieren?';
	@override String get channelArchiveConfirmDescription => 'Ein archivierter Kanal taucht nicht mehr in der Kanalliste oder in Suchergebnissen auf. Zudem können ihm keine Beiträge mehr hinzugefügt werden.';
	@override String get thisChannelArchived => 'Dieser Kanal wurde archiviert.';
	@override String get displayOfNote => 'Darstellung von Notizen';
	@override String get initialAccountSetting => 'Kontoeinrichtung';
	@override String get youFollowing => 'Gefolgt';
	@override String get preventAiLearning => 'Verwendung in machinellem Lernen (Generative bzw. Prediktive AI/KI) ablehnen';
	@override String get preventAiLearningDescription => 'Fordert Crawler auf, gepostetes Text- oder Bildmaterial usw. nicht in Datensätzen für maschinelles Lernen (Generative bzw. Prediktive AI/KI) zu verwenden. Dies wird durch das Hinzufügen einer "noai"-Flag in der HTML-Antwort des jeweiligen Inhalts erreicht. Da diese Flag jedoch ignoriert werden kann, ist eine vollständige Verhinderung hierdurch nicht möglich.';
	@override String get options => 'Optionen';
	@override String get specifyUser => 'Spezifischer Benutzer';
	@override String get lookupConfirm => 'Bist du sicher, dass du das nachschlagen möchtest?';
	@override String get openTagPageConfirm => 'Hashtag Seite wirklich öffnen?';
	@override String get specifyHost => 'Host';
	@override String get failedToPreviewUrl => 'Vorschau nicht anzeigbar';
	@override String get update => 'Aktualisieren';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'Rollen, die dieses Emoji als Reaktion verwenden können';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'Sind keine Rollen angegeben, kann jeder dieses Emoji als Reaktion verwenden.';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'Diese Rollen müssen öffentlich sein.';
	@override String get cancelReactionConfirm => 'Möchtest du deine Reaktion wirklich löschen?';
	@override String get changeReactionConfirm => 'Möchtest du deine Reaktion wirklich ändern?';
	@override String get later => 'Später';
	@override String get goToMisskey => 'Zu Misskey';
	@override String get additionalEmojiDictionary => 'Zusätzliche Emoji-Wörterbücher';
	@override String get installed => 'Installiert';
	@override String get branding => 'Branding';
	@override String get enableServerMachineStats => 'Hardwareinformationen des Servers veröffentlichen';
	@override String get enableIdenticonGeneration => 'Generierung von Benutzer-Identicons aktivieren';
	@override String get turnOffToImprovePerformance => 'Deaktivierung kann zu höherer Leistung führen.';
	@override String get createInviteCode => 'Einladung erstellen';
	@override String get createWithOptions => 'Einladung mit Optionen erstellen';
	@override String get createCount => 'Einladungsanzahl';
	@override String get inviteCodeCreated => 'Einladung erstellt';
	@override String get inviteLimitExceeded => 'Du hast das Maximum an erstellbaren Einladungen erreicht.';
	@override String createLimitRemaining({required Object limit}) => 'Erstellbare Einladungen: Noch ${limit}';
	@override String inviteLimitResetCycle({required Object time, required Object limit}) => 'Am ${time} wird dies auf ${limit} zurückgesetzt.';
	@override String get expirationDate => 'Ablaufdatum';
	@override String get noExpirationDate => 'Keins';
	@override String get inviteCodeUsedAt => 'Einladung verwendet am';
	@override String get registeredUserUsingInviteCode => 'Einladung verwendet von';
	@override String get waitingForMailAuth => 'Bestätigungsemail ausstehend';
	@override String get inviteCodeCreator => 'Einladung erstellt von';
	@override String get usedAt => 'Benutzt am';
	@override String get unused => 'Unbenutzt';
	@override String get used => 'Benutzt';
	@override String get expired => 'Abgelaufen';
	@override String get doYouAgree => 'Zustimmen?';
	@override String get beSureToReadThisAsItIsImportant => 'Lies bitte diese wichtige Informationen.';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => 'Ich habe den Text "${x}" gelesen und stimme zu.';
	@override String get dialog => 'Dialogfeld';
	@override String get icon => 'Symbol';
	@override String get forYou => 'Für dich';
	@override String get currentAnnouncements => 'Aktuelle Ankündigungen';
	@override String get pastAnnouncements => 'Alte Ankündigungen';
	@override String get youHaveUnreadAnnouncements => 'Es gibt neue Ankündigungen.';
	@override String get useSecurityKey => 'Folge bitten den Anweisungen deines Browsers bzw. Gerätes und verwende deinen Hardware-Sicherheitsschlüssel oder Passkey.';
	@override String get replies => 'Antworten';
	@override String get renotes => 'Renotes';
	@override String get loadReplies => 'Antworten anzeigen';
	@override String get loadConversation => 'Unterhaltung anzeigen';
	@override String get pinnedList => 'Angeheftete Liste';
	@override String get keepScreenOn => 'Bildschirm angeschaltet lassen';
	@override String get verifiedLink => 'Link-Besitz wurde verifiziert';
	@override String get notifyNotes => 'Über neue Notizen benachrichtigen';
	@override String get unnotifyNotes => 'Nicht über neue Notizen benachrichtigen';
	@override String get authentication => 'Authentifikation';
	@override String get authenticationRequiredToContinue => 'Bitte authentifiziere dich, um fortzufahren';
	@override String get dateAndTime => 'Zeit';
	@override String get showRenotes => 'Renotes anzeigen';
	@override String get edited => 'Bearbeitet';
	@override String get notificationRecieveConfig => 'Benachrichtigungseinstellungen';
	@override String get mutualFollow => 'Gegenseitig gefolgt';
	@override String get followingOrFollower => 'Follow oder Follower';
	@override String get fileAttachedOnly => 'Nur Notizen mit Dateien';
	@override String get showRepliesToOthersInTimeline => 'Antworten in Chronik anzeigen';
	@override String get hideRepliesToOthersInTimeline => 'Antworten nicht in Chronik anzeigen';
	@override String get showRepliesToOthersInTimelineAll => 'Antworten von allen momentan gefolgten Benutzern in Chronik anzeigen';
	@override String get hideRepliesToOthersInTimelineAll => 'Antworten von allen momentan gefolgten Benutzern nicht in Chronik anzeigen';
	@override String get confirmShowRepliesAll => 'Dies ist eine unwiderrufliche Aktion. Wirklich Antworten von allen momentan gefolgten Benutzern in der Chronik anzeigen?';
	@override String get confirmHideRepliesAll => 'Dies ist eine unwiderrufliche Aktion. Wirklich Antworten von allen momentan gefolgten Benutzern nicht in der Chronik anzeigen?';
	@override String get externalServices => 'Externe Dienste';
	@override String get sourceCode => 'Quellcode';
	@override String get sourceCodeIsNotYetProvided => 'Der Quellcode ist noch nicht verfügbar. Kontaktiere den Administrator, um das Problem zu lösen.';
	@override String get repositoryUrl => 'Repository URL';
	@override String get repositoryUrlDescription => 'Solltest du Misskey so wie es ist verwenden (im unveränderten Quellcode), gebe Folgendes an:\nhttps://github.com/misskey-dev/misskey';
	@override String get repositoryUrlOrTarballRequired => 'Wenn du kein Repository veröffentlicht hast, musst du stattdessen einen Tarball bereitstellen. Siehe .config/example.yml für weitere Informationen.';
	@override String get feedback => 'Feedback';
	@override String get feedbackUrl => 'Feedback-Website';
	@override String get impressum => 'Impressum';
	@override String get impressumUrl => 'Impressums-URL';
	@override String get impressumDescription => 'In manchen Ländern, wie Deutschland und dessen Umgebung, ist die Angabe von Betreiberinformationen (ein Impressum) bei kommerziellem Betrieb zwingend.';
	@override String get privacyPolicy => 'Datenschutzerklärung';
	@override String get privacyPolicyUrl => 'Datenschutzerklärungs-URL';
	@override String get tosAndPrivacyPolicy => 'Nutzungsbedingungen und Datenschutzerklärung';
	@override String get avatarDecorations => 'Profilbilddekoration';
	@override String get attach => 'Anbringen';
	@override String get detach => 'Entfernen';
	@override String get detachAll => 'Alles Entfernen';
	@override String get angle => 'Winkel';
	@override String get flip => 'Umdrehen';
	@override String get showAvatarDecorations => 'Profilbilddekoration anzeigen';
	@override String get releaseToRefresh => 'Zum Aktualisieren loslassen';
	@override String get refreshing => 'Wird aktualisiert...';
	@override String get pullDownToRefresh => 'Zum Aktualisieren ziehen';
	@override String get useGroupedNotifications => 'Benachrichtigungen gruppieren';
	@override String get emailVerificationFailedError => 'Es gab ein Problem bei der Überprüfung Ihrer E-Mail-Adresse. Der Link ist möglicherweise abgelaufen.';
	@override String get cwNotationRequired => 'Ist "Inhaltswarnung verwenden" aktiviert, muss eine Beschreibung gegeben werden.';
	@override String get doReaction => 'Reagieren';
	@override String get code => 'Code';
	@override String get reloadRequiredToApplySettings => 'Eine Aktualisierung ist erforderlich, um die Einstellungen zu übernehmen.';
	@override String remainingN({required Object n}) => 'Verbleibend: ${n}';
	@override String get overwriteContentConfirm => 'Bist du sicher, dass du den aktuellen Inhalt überschreiben willst?';
	@override String get seasonalScreenEffect => 'Saisonaler Bildschirmeffekt';
	@override String get decorate => 'Dekorieren';
	@override String get addMfmFunction => 'MFM hinzufügen';
	@override String get enableQuickAddMfmFunction => 'Erweiterte MFM-Auswahl anzeigen';
	@override String get bubbleGame => 'Bubble Game';
	@override String get sfx => 'Soundeffekte';
	@override String get soundWillBePlayed => 'Es wird Ton wiedergegeben';
	@override String get showReplay => 'Wiederholung anzeigen';
	@override String get replay => 'Aufzeichnen';
	@override String get replaying => 'Aufzeichnung';
	@override String get endReplay => 'Aufzeichnung verlassen';
	@override String get copyReplayData => 'Aufzeichnung kopieren';
	@override String get ranking => 'Rangliste';
	@override String lastNDays({required Object n}) => 'Letzte ${n} Tage';
	@override String get backToTitle => 'Zurück zum Startbildschirm';
	@override String get hemisphere => 'Hemisphäre';
	@override String get withSensitive => 'Zeige "sensitive Inhalte" an';
	@override String userSaysSomethingSensitive({required Object name}) => '${name} sagt etwas mit sensiblem Inhalt.';
	@override String get enableHorizontalSwipe => 'Wischen, um zwischen Tabs zu wechseln';
	@override String get loading => 'Laden';
	@override String get surrender => 'Abbrechen';
	@override String get gameRetry => 'Erneut versuchen';
	@override String get notUsePleaseLeaveBlank => 'Leer lassen, wenn nicht verwendet';
	@override String get useTotp => 'Gib das Einmalpasswort ein';
	@override String get useBackupCode => 'Verwende die Backup-Codes';
	@override String get launchApp => 'Starte die App';
	@override String get useNativeUIForVideoAudioPlayer => 'Browser-Benutzeroberfläche für die Video- und Audiowiedergabe verwenden';
	@override String get keepOriginalFilename => 'Ursprünglichen Dateinamen beibehalten';
	@override String get keepOriginalFilenameDescription => 'Wenn diese Einstellung deaktiviert ist, wird der Dateiname beim Hochladen automatisch durch eine zufällige Zeichenfolge ersetzt.';
	@override String get noDescription => 'Keine Beschreibung vorhanden';
	@override String get alwaysConfirmFollow => 'Folgen immer bestätigen';
	@override String get inquiry => 'Kontakt';
	@override String get tryAgain => 'Bitte später erneut versuchen';
	@override String get confirmWhenRevealingSensitiveMedia => 'Das Anzeigen von sensiblen Medien bestätigen';
	@override String get sensitiveMediaRevealConfirm => 'Es könnte sich um sensible Medien handeln. Möchtest du sie anzeigen?';
	@override String get createdLists => 'Erstellte Listen';
	@override String get createdAntennas => 'Erstellte Antennen';
	@override String fromX({required Object x}) => 'Von ${x}';
	@override String get genEmbedCode => 'Einbettungscode generieren';
	@override String get noteOfThisUser => 'Notizen dieses Benutzers';
	@override String get clipNoteLimitExceeded => 'Zu diesem Clip können keine weiteren Notizen hinzugefügt werden.';
	@override String get performance => 'Leistung';
	@override String get modified => 'Bearbeitet';
	@override String get discard => 'Verwerfen';
	@override String thereAreNChanges({required Object n}) => 'Es gibt ${n} Änderung(en)';
	@override String get signinWithPasskey => 'Mit Passkey anmelden';
	@override String get unknownWebAuthnKey => 'Unbekannter Passkey';
	@override String get passkeyVerificationFailed => 'Die Passkey-Verifizierung ist fehlgeschlagen.';
	@override String get passkeyVerificationSucceededButPasswordlessLoginDisabled => 'Die Verifizierung des Passkeys war erfolgreich, aber die passwortlose Anmeldung ist deaktiviert.';
	@override String get messageToFollower => 'Nachricht an die Follower';
	@override String get target => 'Speicherort';
	@override String get testCaptchaWarning => 'Diese Funktion ist für CAPTCHA-Testzwecke gedacht.\n<strong>Nicht in einer Produktivumgebung verwenden.</strong>';
	@override String get prohibitedWordsForNameOfUser => 'Verbotene Begriffe für Benutzernamen';
	@override String get prohibitedWordsForNameOfUserDescription => 'Wenn eine Zeichenfolge aus dieser Liste im Namen eines Benutzers enthalten ist, wird der Benutzername abgelehnt. Benutzer mit Moderatorenrechten sind von dieser Einschränkung nicht betroffen.';
	@override String get yourNameContainsProhibitedWords => 'Dein Name enthält einen verbotenen Begriff';
	@override String get yourNameContainsProhibitedWordsDescription => 'Der Name enthält eine verbotene Zeichenfolge. Wende dich an deinen Serveradministrator, wenn du diesen Namen verwenden möchtest.';
	@override String get thisContentsAreMarkedAsSigninRequiredByAuthor => 'Logge dich ein, um weitere Inhalte von diesem Nutzer zu sehen.';
	@override String get lockdown => 'Sperren';
	@override String get pleaseSelectAccount => 'Bitte Konto auswählen';
	@override String get availableRoles => 'Verfügbare Rollen';
	@override String get acknowledgeNotesAndEnable => 'Schalten Sie dies erst ein, wenn Sie die Vorsichtsmaßnahmen verstanden haben.';
	@override String get federationSpecified => 'Dieser Server arbeitet mit Whitelist-Föderation. Er kann nicht mit anderen als den vom Administrator angegebenen Servern interagieren.';
	@override String get federationDisabled => 'Föderation ist auf diesem Server deaktiviert. Es ist nicht möglich, mit Benutzern auf anderen Servern zu interagieren.';
	@override String get draft => 'Entwurf';
	@override String get confirmOnReact => 'Reagieren bestätigen';
	@override String reactAreYouSure({required Object emoji}) => 'Willst du eine "${emoji}"-Reaktion hinzufügen?';
	@override String get markAsSensitiveConfirm => 'Möchtest du dieses Medium als sensibel kennzeichnen?';
	@override String get unmarkAsSensitiveConfirm => 'Möchtest du die Kennzeichnung dieses Mediums als sensibel aufheben?';
	@override String get preferences => 'Einstellungen';
	@override String get accessibility => 'Eingabehilfe';
	@override String get preferencesProfile => 'Einstellungsprofil';
	@override String get copyPreferenceId => 'Kopiere die Einstellungs-ID';
	@override String get resetToDefaultValue => 'Auf Standard zurücksetzen';
	@override String get overrideByAccount => 'Überschreibung durch das Konto';
	@override String get untitled => 'Unbenannt';
	@override String get noName => 'Kein Name';
	@override String get skip => 'Überspringen';
	@override String get restore => 'Wiederherstellen';
	@override String get syncBetweenDevices => 'Zwischen Geräten synchronisieren';
	@override String get preferenceSyncConflictTitle => 'Der konfigurierte Wert ist auf dem Server bereits vorhanden.';
	@override String get preferenceSyncConflictText => 'Die Einstellungen mit aktivierter Synchronisierung werden ihre Werte auf dem Server speichern. Es gibt jedoch bereits Werte auf dem Server. Welche Einstellungswerte sollen überschrieben werden?';
	@override String get preferenceSyncConflictChoiceMerge => 'Zusammenführen';
	@override String get preferenceSyncConflictChoiceServer => 'Konfigurierte Werte auf dem Server';
	@override String get preferenceSyncConflictChoiceDevice => 'Konfigurierte Werte auf dem Gerät';
	@override String get preferenceSyncConflictChoiceCancel => 'Einrichten der Synchronisierung abbrechen';
	@override String get paste => 'Einfügen';
	@override String get emojiPalette => 'Emoji-Palette';
	@override String get postForm => 'Notizfenster';
	@override String get textCount => 'Zeichenanzahl';
	@override String get information => 'Über';
	@override String get chat => 'Chat';
	@override String get directMessage => 'Mit dem Benutzer chatten';
	@override String get migrateOldSettings => 'Alte Client-Einstellungen migrieren';
	@override String get migrateOldSettings_description => 'Dies sollte normalerweise automatisch geschehen, aber wenn die Migration aus irgendeinem Grund nicht erfolgreich war, kannst du den Migrationsprozess selbst manuell auslösen. Die aktuellen Konfigurationsinformationen werden dabei überschrieben.';
	@override String get compress => 'Komprimieren';
	@override String get right => 'Rechts';
	@override String get bottom => 'Unten';
	@override String get top => 'Oben';
	@override String get embed => 'Einbetten';
	@override String get settingsMigrating => 'Deine Einstellungen werden gerade migriert. Bitte warte einen Moment... (Du kannst die Einstellungen später auch manuell migrieren, indem du zu Einstellungen → Anderes → Alte Einstellungen migrieren gehst)';
	@override String get readonly => 'Nur Lesezugriff';
	@override String get goToDeck => 'Zurück zum Deck';
	@override String get federationJobs => 'Föderation Jobs';
	@override String get driveAboutTip => 'In Drive sehen Sie eine Liste der Dateien, die Sie in der Vergangenheit hochgeladen haben. <br>\nSie können diese Dateien wiederverwenden um sie zu beispiel an Notizen anzuhängen, oder sie können Dateien vorab hochzuladen, um sie später zu versenden! <br>\n<b>Wenn Sie eine Datei löschen, verschwindet sie auch von allen Stellen, an denen Sie sie verwendet haben (Notizen, Seiten, Avatare, Banner usw.).</b><br>\nSie können auch Ordner erstellen, um sie zu organisieren.';
	@override String get scrollToClose => 'Zum Schließen scrollen';
	@override String get advice => 'Tipps';
	@override String get realtimeMode => 'Echtzeit-Modus';
	@override String get turnItOn => 'Einschalten';
	@override String get turnItOff => 'Ausschalten';
	@override String get emojiMute => 'Emoji stummschalten';
	@override String get emojiUnmute => 'Emoji-Stummschaltung aufheben';
	@override String muteX({required Object x}) => '${x} stummschalten';
	@override String unmuteX({required Object x}) => 'Stummschaltung von ${x} aufheben';
	@override String get abort => 'Abbrechen';
	@override String get tip => 'Tipps und Tricks';
	@override String get redisplayAllTips => 'Alle „Tipps und Tricks“ wieder anzeigen';
	@override String get hideAllTips => 'Alle „Tipps und Tricks“ ausblenden';
	@override String get defaultImageCompressionLevel => 'Standard-Bildkomprimierungsstufe';
	@override String get defaultImageCompressionLevel_description => 'Ein niedrigerer Wert erhält die Bildqualität, erhöht aber die Dateigröße. <br>Höhere Werte reduzieren die Dateigröße, verringern aber die Bildqualität.';
	@override String get inMinutes => 'Minute(n)';
	@override String get inDays => 'Tag(en)';
	@override String get safeModeEnabled => 'Der abgesicherte Modus ist aktiviert.';
	@override String get schedule => 'Planen';
	@override String get scheduled => 'Geplant';
	@override String get widgets => 'Widgets';
	@override String get deviceInfo => 'Geräteinformation';
	@override String get youAreAdmin => 'Sie sind ein Administrator';
	@override String get presets => 'Vorlage';
	@override late final _TranslationsMisskeyImageEditingDeDe imageEditing_ = _TranslationsMisskeyImageEditingDeDe._(_root);
	@override late final _TranslationsMisskeyImageFrameEditorDeDe imageFrameEditor_ = _TranslationsMisskeyImageFrameEditorDeDe._(_root);
	@override late final _TranslationsMisskeyOrderDeDe order_ = _TranslationsMisskeyOrderDeDe._(_root);
	@override late final _TranslationsMisskeyChatDeDe chat_ = _TranslationsMisskeyChatDeDe._(_root);
	@override late final _TranslationsMisskeyEmojiPaletteDeDe emojiPalette_ = _TranslationsMisskeyEmojiPaletteDeDe._(_root);
	@override late final _TranslationsMisskeySettingsDeDe settings_ = _TranslationsMisskeySettingsDeDe._(_root);
	@override late final _TranslationsMisskeyPreferencesProfileDeDe preferencesProfile_ = _TranslationsMisskeyPreferencesProfileDeDe._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupDeDe preferencesBackup_ = _TranslationsMisskeyPreferencesBackupDeDe._(_root);
	@override late final _TranslationsMisskeyAccountSettingsDeDe accountSettings_ = _TranslationsMisskeyAccountSettingsDeDe._(_root);
	@override late final _TranslationsMisskeyAbuseUserReportDeDe abuseUserReport_ = _TranslationsMisskeyAbuseUserReportDeDe._(_root);
	@override late final _TranslationsMisskeyDeliveryDeDe delivery_ = _TranslationsMisskeyDeliveryDeDe._(_root);
	@override late final _TranslationsMisskeyBubbleGameDeDe bubbleGame_ = _TranslationsMisskeyBubbleGameDeDe._(_root);
	@override late final _TranslationsMisskeyAnnouncementDeDe announcement_ = _TranslationsMisskeyAnnouncementDeDe._(_root);
	@override late final _TranslationsMisskeyInitialAccountSettingDeDe initialAccountSetting_ = _TranslationsMisskeyInitialAccountSettingDeDe._(_root);
	@override late final _TranslationsMisskeyInitialTutorialDeDe initialTutorial_ = _TranslationsMisskeyInitialTutorialDeDe._(_root);
	@override late final _TranslationsMisskeyTimelineDescriptionDeDe timelineDescription_ = _TranslationsMisskeyTimelineDescriptionDeDe._(_root);
	@override late final _TranslationsMisskeyServerRulesDeDe serverRules_ = _TranslationsMisskeyServerRulesDeDe._(_root);
	@override late final _TranslationsMisskeyServerSettingsDeDe serverSettings_ = _TranslationsMisskeyServerSettingsDeDe._(_root);
	@override late final _TranslationsMisskeyAccountMigrationDeDe accountMigration_ = _TranslationsMisskeyAccountMigrationDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsDeDe achievements_ = _TranslationsMisskeyAchievementsDeDe._(_root);
	@override late final _TranslationsMisskeyRoleDeDe role_ = _TranslationsMisskeyRoleDeDe._(_root);
	@override late final _TranslationsMisskeySensitiveMediaDetectionDeDe sensitiveMediaDetection_ = _TranslationsMisskeySensitiveMediaDetectionDeDe._(_root);
	@override late final _TranslationsMisskeyEmailUnavailableDeDe emailUnavailable_ = _TranslationsMisskeyEmailUnavailableDeDe._(_root);
	@override late final _TranslationsMisskeyFfVisibilityDeDe ffVisibility_ = _TranslationsMisskeyFfVisibilityDeDe._(_root);
	@override late final _TranslationsMisskeySignupDeDe signup_ = _TranslationsMisskeySignupDeDe._(_root);
	@override late final _TranslationsMisskeyAccountDeleteDeDe accountDelete_ = _TranslationsMisskeyAccountDeleteDeDe._(_root);
	@override late final _TranslationsMisskeyAdDeDe ad_ = _TranslationsMisskeyAdDeDe._(_root);
	@override late final _TranslationsMisskeyForgotPasswordDeDe forgotPassword_ = _TranslationsMisskeyForgotPasswordDeDe._(_root);
	@override late final _TranslationsMisskeyGalleryDeDe gallery_ = _TranslationsMisskeyGalleryDeDe._(_root);
	@override late final _TranslationsMisskeyEmailDeDe email_ = _TranslationsMisskeyEmailDeDe._(_root);
	@override late final _TranslationsMisskeyPluginDeDe plugin_ = _TranslationsMisskeyPluginDeDe._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupsDeDe preferencesBackups_ = _TranslationsMisskeyPreferencesBackupsDeDe._(_root);
	@override late final _TranslationsMisskeyRegistryDeDe registry_ = _TranslationsMisskeyRegistryDeDe._(_root);
	@override late final _TranslationsMisskeyAboutMisskeyDeDe aboutMisskey_ = _TranslationsMisskeyAboutMisskeyDeDe._(_root);
	@override late final _TranslationsMisskeyDisplayOfSensitiveMediaDeDe displayOfSensitiveMedia_ = _TranslationsMisskeyDisplayOfSensitiveMediaDeDe._(_root);
	@override late final _TranslationsMisskeyInstanceTickerDeDe instanceTicker_ = _TranslationsMisskeyInstanceTickerDeDe._(_root);
	@override late final _TranslationsMisskeyServerDisconnectedBehaviorDeDe serverDisconnectedBehavior_ = _TranslationsMisskeyServerDisconnectedBehaviorDeDe._(_root);
	@override late final _TranslationsMisskeyChannelDeDe channel_ = _TranslationsMisskeyChannelDeDe._(_root);
	@override late final _TranslationsMisskeyMenuDisplayDeDe menuDisplay_ = _TranslationsMisskeyMenuDisplayDeDe._(_root);
	@override late final _TranslationsMisskeyWordMuteDeDe wordMute_ = _TranslationsMisskeyWordMuteDeDe._(_root);
	@override late final _TranslationsMisskeyInstanceMuteDeDe instanceMute_ = _TranslationsMisskeyInstanceMuteDeDe._(_root);
	@override late final _TranslationsMisskeyThemeDeDe theme_ = _TranslationsMisskeyThemeDeDe._(_root);
	@override late final _TranslationsMisskeySfxDeDe sfx_ = _TranslationsMisskeySfxDeDe._(_root);
	@override late final _TranslationsMisskeySoundSettingsDeDe soundSettings_ = _TranslationsMisskeySoundSettingsDeDe._(_root);
	@override late final _TranslationsMisskeyAgoDeDe ago_ = _TranslationsMisskeyAgoDeDe._(_root);
	@override late final _TranslationsMisskeyTimeInDeDe timeIn_ = _TranslationsMisskeyTimeInDeDe._(_root);
	@override late final _TranslationsMisskeyTimeDeDe time_ = _TranslationsMisskeyTimeDeDe._(_root);
	@override late final _TranslationsMisskeyX2faDeDe x2fa_ = _TranslationsMisskeyX2faDeDe._(_root);
	@override late final _TranslationsMisskeyPermissionsDeDe permissions_ = _TranslationsMisskeyPermissionsDeDe._(_root);
	@override late final _TranslationsMisskeyAuthDeDe auth_ = _TranslationsMisskeyAuthDeDe._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesDeDe antennaSources_ = _TranslationsMisskeyAntennaSourcesDeDe._(_root);
	@override late final _TranslationsMisskeyWeekdayDeDe weekday_ = _TranslationsMisskeyWeekdayDeDe._(_root);
	@override late final _TranslationsMisskeyWidgetsDeDe widgets_ = _TranslationsMisskeyWidgetsDeDe._(_root);
	@override late final _TranslationsMisskeyCwDeDe cw_ = _TranslationsMisskeyCwDeDe._(_root);
	@override late final _TranslationsMisskeyPollDeDe poll_ = _TranslationsMisskeyPollDeDe._(_root);
	@override late final _TranslationsMisskeyVisibilityDeDe visibility_ = _TranslationsMisskeyVisibilityDeDe._(_root);
	@override late final _TranslationsMisskeyPostFormDeDe postForm_ = _TranslationsMisskeyPostFormDeDe._(_root);
	@override late final _TranslationsMisskeyProfileDeDe profile_ = _TranslationsMisskeyProfileDeDe._(_root);
	@override late final _TranslationsMisskeyExportOrImportDeDe exportOrImport_ = _TranslationsMisskeyExportOrImportDeDe._(_root);
	@override late final _TranslationsMisskeyChartsDeDe charts_ = _TranslationsMisskeyChartsDeDe._(_root);
	@override late final _TranslationsMisskeyInstanceChartsDeDe instanceCharts_ = _TranslationsMisskeyInstanceChartsDeDe._(_root);
	@override late final _TranslationsMisskeyTimelinesDeDe timelines_ = _TranslationsMisskeyTimelinesDeDe._(_root);
	@override late final _TranslationsMisskeyPlayDeDe play_ = _TranslationsMisskeyPlayDeDe._(_root);
	@override late final _TranslationsMisskeyPagesDeDe pages_ = _TranslationsMisskeyPagesDeDe._(_root);
	@override late final _TranslationsMisskeyRelayStatusDeDe relayStatus_ = _TranslationsMisskeyRelayStatusDeDe._(_root);
	@override late final _TranslationsMisskeyNotificationDeDe notification_ = _TranslationsMisskeyNotificationDeDe._(_root);
	@override late final _TranslationsMisskeyDeckDeDe deck_ = _TranslationsMisskeyDeckDeDe._(_root);
	@override late final _TranslationsMisskeyDialogDeDe dialog_ = _TranslationsMisskeyDialogDeDe._(_root);
	@override late final _TranslationsMisskeyDisabledTimelineDeDe disabledTimeline_ = _TranslationsMisskeyDisabledTimelineDeDe._(_root);
	@override late final _TranslationsMisskeyDrivecleanerDeDe drivecleaner_ = _TranslationsMisskeyDrivecleanerDeDe._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsDeDe webhookSettings_ = _TranslationsMisskeyWebhookSettingsDeDe._(_root);
	@override late final _TranslationsMisskeyAbuseReportDeDe abuseReport_ = _TranslationsMisskeyAbuseReportDeDe._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesDeDe moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesDeDe._(_root);
	@override late final _TranslationsMisskeyFileViewerDeDe fileViewer_ = _TranslationsMisskeyFileViewerDeDe._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerDeDe externalResourceInstaller_ = _TranslationsMisskeyExternalResourceInstallerDeDe._(_root);
	@override late final _TranslationsMisskeyDataSaverDeDe dataSaver_ = _TranslationsMisskeyDataSaverDeDe._(_root);
	@override late final _TranslationsMisskeyHemisphereDeDe hemisphere_ = _TranslationsMisskeyHemisphereDeDe._(_root);
	@override late final _TranslationsMisskeyReversiDeDe reversi_ = _TranslationsMisskeyReversiDeDe._(_root);
	@override late final _TranslationsMisskeyOfflineScreenDeDe offlineScreen_ = _TranslationsMisskeyOfflineScreenDeDe._(_root);
	@override late final _TranslationsMisskeyUrlPreviewSettingDeDe urlPreviewSetting_ = _TranslationsMisskeyUrlPreviewSettingDeDe._(_root);
	@override late final _TranslationsMisskeyMediaControlsDeDe mediaControls_ = _TranslationsMisskeyMediaControlsDeDe._(_root);
	@override late final _TranslationsMisskeyContextMenuDeDe contextMenu_ = _TranslationsMisskeyContextMenuDeDe._(_root);
	@override late final _TranslationsMisskeyGridComponentDeDe gridComponent_ = _TranslationsMisskeyGridComponentDeDe._(_root);
	@override late final _TranslationsMisskeyRoleSelectDialogDeDe roleSelectDialog_ = _TranslationsMisskeyRoleSelectDialogDeDe._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerDeDe customEmojisManager_ = _TranslationsMisskeyCustomEmojisManagerDeDe._(_root);
	@override late final _TranslationsMisskeyEmbedCodeGenDeDe embedCodeGen_ = _TranslationsMisskeyEmbedCodeGenDeDe._(_root);
	@override late final _TranslationsMisskeySelfXssPreventionDeDe selfXssPrevention_ = _TranslationsMisskeySelfXssPreventionDeDe._(_root);
	@override late final _TranslationsMisskeyFollowRequestDeDe followRequest_ = _TranslationsMisskeyFollowRequestDeDe._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsDeDe remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsDeDe._(_root);
	@override late final _TranslationsMisskeyCaptchaDeDe captcha_ = _TranslationsMisskeyCaptchaDeDe._(_root);
	@override late final _TranslationsMisskeyBootErrorsDeDe bootErrors_ = _TranslationsMisskeyBootErrorsDeDe._(_root);
	@override late final _TranslationsMisskeySearchDeDe search_ = _TranslationsMisskeySearchDeDe._(_root);
	@override late final _TranslationsMisskeyServerSetupWizardDeDe serverSetupWizard_ = _TranslationsMisskeyServerSetupWizardDeDe._(_root);
	@override late final _TranslationsMisskeyUploaderDeDe uploader_ = _TranslationsMisskeyUploaderDeDe._(_root);
	@override late final _TranslationsMisskeyClientPerformanceIssueTipDeDe clientPerformanceIssueTip_ = _TranslationsMisskeyClientPerformanceIssueTipDeDe._(_root);
	@override late final _TranslationsMisskeyClipDeDe clip_ = _TranslationsMisskeyClipDeDe._(_root);
	@override late final _TranslationsMisskeyUserListsDeDe userLists_ = _TranslationsMisskeyUserListsDeDe._(_root);
	@override String get watermark => 'Wasserzeichen';
	@override String get defaultPreset => 'Standard-Voreinstellungen';
	@override late final _TranslationsMisskeyWatermarkEditorDeDe watermarkEditor_ = _TranslationsMisskeyWatermarkEditorDeDe._(_root);
	@override late final _TranslationsMisskeyImageEffectorDeDe imageEffector_ = _TranslationsMisskeyImageEffectorDeDe._(_root);
	@override String get drafts => 'Entwurf';
	@override late final _TranslationsMisskeyDraftsDeDe drafts_ = _TranslationsMisskeyDraftsDeDe._(_root);
	@override late final _TranslationsMisskeyQrDeDe qr_ = _TranslationsMisskeyQrDeDe._(_root);
}

// Path: misskey.imageEditing_
class _TranslationsMisskeyImageEditingDeDe extends TranslationsMisskeyImageEditingEnUs {
	_TranslationsMisskeyImageEditingDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyImageEditingVarsDeDe vars_ = _TranslationsMisskeyImageEditingVarsDeDe._(_root);
}

// Path: misskey.imageFrameEditor_
class _TranslationsMisskeyImageFrameEditorDeDe extends TranslationsMisskeyImageFrameEditorEnUs {
	_TranslationsMisskeyImageFrameEditorDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get header => 'Kopfzeile';
	@override String get font => 'Schriftart';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
	@override String get quitWithoutSaveConfirm => 'Nicht gespeicherte Änderungen verwerfen?';
}

// Path: misskey.order_
class _TranslationsMisskeyOrderDeDe extends TranslationsMisskeyOrderEnUs {
	_TranslationsMisskeyOrderDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get newest => 'Neueste zuerst';
	@override String get oldest => 'Älteste zuerst';
}

// Path: misskey.chat_
class _TranslationsMisskeyChatDeDe extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get noMessagesYet => 'Noch keine Nachrichten';
	@override String get newMessage => 'Neue Nachricht';
	@override String get individualChat => 'Privater Chat';
	@override String get individualChat_description => 'Führe einen privaten Chat mit einer anderen Person.';
	@override String get roomChat => 'Chatraum';
	@override String get roomChat_description => 'Ein Chat-Raum, an dem mehrere Personen teilnehmen können.\nDu kannst auch Personen einladen, die keine privaten Chats zulassen, wenn sie die Einladung annehmen.';
	@override String get createRoom => 'Raum erstellen';
	@override String get inviteUserToChat => 'Lade Benutzer ein, um mit dem Chatten zu beginnen';
	@override String get yourRooms => 'Erstellte Räume';
	@override String get joiningRooms => 'Raum beitreten';
	@override String get invitations => 'Einladen';
	@override String get noInvitations => 'Keine Einladungen';
	@override String get history => 'Verlauf';
	@override String get noHistory => 'Kein Verlauf gefunden';
	@override String get noRooms => 'Keine Räume gefunden';
	@override String get inviteUser => 'Benutzer einladen';
	@override String get sentInvitations => 'Verschickte Einladungen';
	@override String get join => 'Beitreten';
	@override String get ignore => 'Ignorieren';
	@override String get leave => 'Raum verlassen';
	@override String get members => 'Mitglieder';
	@override String get searchMessages => 'Nachrichten suchen';
	@override String get home => 'Startseite';
	@override String get send => 'Senden';
	@override String get newline => 'Neue Zeile';
	@override String get muteThisRoom => 'Raum stummschalten';
	@override String get deleteRoom => 'Raum löschen';
	@override String get chatNotAvailableForThisAccountOrServer => 'Der Chat ist auf diesem Server oder für dieses Konto nicht aktiviert.';
	@override String get chatIsReadOnlyForThisAccountOrServer => 'Der Chat ist auf dieser Instanz oder diesem Konto nur zum Lesen freigegeben. Es ist nicht möglich, neue Nachrichten zu schreiben oder Chaträume zu erstellen oder zu betreten.';
	@override String get chatNotAvailableInOtherAccount => 'Die Chatfunktion wurde vom anderen Benutzer deaktiviert.';
	@override String get cannotChatWithTheUser => 'Starten eines Chats mit diesem Benutzer nicht möglich';
	@override String get cannotChatWithTheUser_description => 'Der Chat ist entweder nicht verfügbar oder die andere Seite hat den Chat nicht aktiviert.';
	@override String get youAreNotAMemberOfThisRoomButInvited => 'Du bist kein Teilnehmer in diesem Raum, aber du hast eine Einladung erhalten. Bitte nimm die Einladung an, um beizutreten.';
	@override String get doYouAcceptInvitation => 'Nimmst du die Einladung an?';
	@override String get chatWithThisUser => 'Mit dem Benutzer chatten';
	@override String get thisUserAllowsChatOnlyFromFollowers => 'Dieser Benutzer nimmt nur Chats von Followern an.';
	@override String get thisUserAllowsChatOnlyFromFollowing => 'Dieser Benutzer nimmt nur Chats von Benutzern an, denen er folgt.';
	@override String get thisUserAllowsChatOnlyFromMutualFollowing => 'Dieser Benutzer akzeptiert nur Chats von Benutzern, die sich gegenseitig folgen.';
	@override String get thisUserNotAllowedChatAnyone => 'Dieser Benutzer nimmt keine Chats von anderen Benutzern an.';
	@override String get chatAllowedUsers => 'Wem das Chatten erlaubt werden soll';
	@override String get chatAllowedUsers_note => 'Du kannst unabhängig von dieser Einstellung mit allen Personen chatten, denen du eine Chat-Nachricht gesendet hast.';
	@override late final _TranslationsMisskeyChatChatAllowedUsersDeDe chatAllowedUsers_ = _TranslationsMisskeyChatChatAllowedUsersDeDe._(_root);
}

// Path: misskey.emojiPalette_
class _TranslationsMisskeyEmojiPaletteDeDe extends TranslationsMisskeyEmojiPaletteEnUs {
	_TranslationsMisskeyEmojiPaletteDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get palettes => 'Palette';
	@override String get enableSyncBetweenDevicesForPalettes => 'Synchronisierung der Paletten zwischen Geräten aktivieren';
	@override String get paletteForMain => 'Hauptpalette';
	@override String get paletteForReaction => 'Reaktions-Palette';
}

// Path: misskey.settings_
class _TranslationsMisskeySettingsDeDe extends TranslationsMisskeySettingsEnUs {
	_TranslationsMisskeySettingsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get driveBanner => 'Du kannst den Drive verwalten und konfigurieren, die Auslastung überprüfen und Einstellungen für das Hochladen von Dateien vornehmen.';
	@override String get pluginBanner => 'Du kannst die Funktionen des Clients mit Plugins erweitern. Plugins können installiert, individuell konfiguriert und verwaltet werden.';
	@override String get notificationsBanner => 'Sie können die Arten und den Umfang der Benachrichtigungen vom Server und der Push- Mitteilungen konfigurieren.';
	@override String get api => 'API';
	@override String get webhook => 'Webhook';
	@override String get serviceConnection => 'Integrierte Dienste';
	@override String get serviceConnectionBanner => 'Du kannst Zugriffstoken und Webhooks für die Integration mit externen Anwendungen und Diensten verwalten und konfigurieren.';
	@override String get accountData => 'Kontodaten';
	@override String get accountDataBanner => 'Export/Import und Verwaltung von Kontodatenarchiven.';
	@override String get muteAndBlockBanner => 'Du kannst Einstellungen konfigurieren und verwalten, um Inhalte auszublenden und Aktionen für bestimmte Benutzer zu beschränken.';
	@override String get accessibilityBanner => 'Die Clients können personalisiert und für eine optimale Nutzung im Hinblick auf ihre Darstellung und ihr Verhalten eingerichtet werden.';
	@override String get privacyBanner => 'Du kannst Einstellungen für die Privatsphäre deines Kontos vornehmen, z. B. inwieweit Inhalte veröffentlicht werden, wie leicht sie zu finden sind und ob Follower genehmigt werden müssen.';
	@override String get securityBanner => 'Du kannst Einstellungen für die Kontosicherheit konfigurieren, z. B. Passwörter, Anmeldemethoden, Authentifizierungs-Apps und Passkeys.';
	@override String get preferencesBanner => 'Sie können das Gesamtverhalten des Clients nach Ihren Wünschen konfigurieren.';
	@override String get appearanceBanner => 'Du kannst das Erscheinungsbild und die Anzeigeeinstellungen für den Client nach deinen Wünschen konfigurieren.';
	@override String get soundsBanner => 'Du kannst die Einstellungen für die Wiedergabe von Klängen im Client konfigurieren.';
	@override String get timelineAndNote => 'Chroniken und Notizen';
	@override String get makeEveryTextElementsSelectable => 'Alle Textelemente auswählbar machen';
	@override String get makeEveryTextElementsSelectable_description => 'Die Aktivierung kann in manchen Situationen die Benutzerfreundlichkeit beeinträchtigen.';
	@override String get useStickyIcons => 'Icons beim Scrollen folgen lassen';
	@override String get enableHighQualityImagePlaceholders => 'Zeige Platzhalter für Bilder in hoher Qualität an';
	@override String get uiAnimations => 'Animationen der Benutzeroberfläche';
	@override String get showNavbarSubButtons => 'Unterschaltflächen in der Navigationsleiste anzeigen';
	@override String get ifOn => 'Wenn eingeschaltet';
	@override String get ifOff => 'Wenn ausgeschaltet';
	@override String get enableSyncThemesBetweenDevices => 'Synchronisierung von installierten Themen auf verschiedenen Endgeräten';
	@override String get enablePullToRefresh => 'Ziehen zum Aktualisieren';
	@override String get enablePullToRefresh_description => 'Bei Benutzung einer Maus, mit gedrücktem Mausrad ziehen';
	@override String get realtimeMode_description => 'Stellt eine Verbindung mit dem Server her und aktualisiert die Inhalte in Echtzeit. Kann zu mehr Datenverkehr einem höheren Akkuverbrauch führen.';
	@override String get contentsUpdateFrequency => 'Häufigkeit des Abrufs von Inhalten';
	@override String get contentsUpdateFrequency_description => 'Je höher der Wert, desto häufiger werden die Inhalte aktualisiert, aber die Leistung sinkt und der Datenverkehr und der Akkuverbrauch steigen.';
	@override String get contentsUpdateFrequency_description2 => 'Wenn der Echtzeitmodus aktiviert ist, werden die Inhalte unabhängig von dieser Einstellung in Echtzeit aktualisiert.';
	@override String get showUrlPreview => 'URL-Vorschau anzeigen';
	@override String get showAvailableReactionsFirstInNote => 'Zeige die verfügbaren Reaktionen im oberen Bereich an.';
	@override late final _TranslationsMisskeySettingsChatDeDe chat_ = _TranslationsMisskeySettingsChatDeDe._(_root);
}

// Path: misskey.preferencesProfile_
class _TranslationsMisskeyPreferencesProfileDeDe extends TranslationsMisskeyPreferencesProfileEnUs {
	_TranslationsMisskeyPreferencesProfileDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get profileName => 'Profilname';
	@override String get profileNameDescription => 'Lege einen Namen fest, der dieses Gerät identifiziert.';
	@override String get profileNameDescription2 => 'Beispiel: "Haupt-PC", "Smartphone"';
	@override String get manageProfiles => 'Profile verwalten';
}

// Path: misskey.preferencesBackup_
class _TranslationsMisskeyPreferencesBackupDeDe extends TranslationsMisskeyPreferencesBackupEnUs {
	_TranslationsMisskeyPreferencesBackupDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get autoBackup => 'Automatische Sicherung';
	@override String get restoreFromBackup => 'Wiederherstellen aus der Sicherung';
	@override String get noBackupsFoundTitle => 'Keine Sicherungen gefunden';
	@override String get noBackupsFoundDescription => 'Es wurden keine automatisch erstellten Sicherungen gefunden, aber wenn du eine Sicherungsdatei manuell gespeichert hast, kannst du diese importieren und wiederherstellen.';
	@override String get selectBackupToRestore => 'Wähle die wiederherzustellende Sicherung';
	@override String get youNeedToNameYourProfileToEnableAutoBackup => 'Um die automatische Sicherung zu aktivieren, müssen Profilnamen festgelegt werden.';
	@override String get autoPreferencesBackupIsNotEnabledForThisDevice => 'Die automatische Sicherung der Einstellungen ist auf diesem Gerät nicht aktiviert.';
	@override String get backupFound => 'Konfigurationssicherung gefunden.';
}

// Path: misskey.accountSettings_
class _TranslationsMisskeyAccountSettingsDeDe extends TranslationsMisskeyAccountSettingsEnUs {
	_TranslationsMisskeyAccountSettingsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get requireSigninToViewContents => 'Anmeldung erfordern, um Inhalte anzuzeigen';
	@override String get requireSigninToViewContentsDescription1 => 'Erfordere eine Anmeldung, um alle Notizen und andere Inhalte anzuzeigen, die du erstellt hast. Dadurch wird verhindert, dass Crawler deine Informationen sammeln.';
	@override String get requireSigninToViewContentsDescription2 => 'Der Inhalt wird nicht in URL-Vorschauen (OGP), eingebettet in Webseiten oder auf Servern, die keine Zitate unterstützen, angezeigt.';
	@override String get requireSigninToViewContentsDescription3 => 'Diese Einschränkungen gelten möglicherweise nicht für föderierte Inhalte von anderen Servern.';
	@override String get makeNotesFollowersOnlyBefore => 'Macht frühere Notizen nur für Follower sichtbar';
	@override String get makeNotesFollowersOnlyBeforeDescription => 'Solange diese Funktion aktiviert ist, sind Notizen, die nach dem eingestellten Datum und der eingestellten Zeit liegen oder die eingestellte Zeit abgelaufen ist, nur für Follower sichtbar. Bei Deaktivierung wird auch der öffentliche Status der Notiz wiederhergestellt.';
	@override String get makeNotesHiddenBefore => 'Frühere Notizen privat machen';
	@override String get makeNotesHiddenBeforeDescription => '';
	@override String get mayNotEffectForFederatedNotes => 'Dies hat möglicherweise keine Auswirkungen auf Notizen, die an andere Server föderiert werden.';
	@override String get mayNotEffectSomeSituations => 'Diese Einschränkungen sind vereinfacht. Sie gelten möglicherweise nicht in allen Situationen, z. B. bei der Anzeige auf einem fremden Server oder während der Moderation.';
	@override String get notesHavePassedSpecifiedPeriod => 'Notizen die nach der folgenden Zeit veröffentlicht worden';
	@override String get notesOlderThanSpecifiedDateAndTime => 'Notizen vor einem bestimmtem Datum und Uhrzeit';
}

// Path: misskey.abuseUserReport_
class _TranslationsMisskeyAbuseUserReportDeDe extends TranslationsMisskeyAbuseUserReportEnUs {
	_TranslationsMisskeyAbuseUserReportDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get forward => 'Weiterleiten';
	@override String get forwardDescription => 'Leite die Meldung an einen entfernten Server als anonymes Systemkonto weiter.';
	@override String get resolve => 'lösen';
	@override String get accept => 'Akzeptieren';
	@override String get reject => 'Ablehnen';
	@override String get resolveTutorial => 'Wenn der Inhalt der Meldung rechtmäßig ist, wähle „Akzeptieren“, um sie als gelöst zu markieren.\nWenn der Inhalt der Meldung unzulässig ist, wähle „Ablehnen“, um sie zu ignorieren.';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryDeDe extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get status => 'Auslieferungsstatus';
	@override String get stop => 'Gesperrt';
	@override String get resume => 'Zustellung wieder fortsetzen';
	@override late final _TranslationsMisskeyDeliveryTypeDeDe type_ = _TranslationsMisskeyDeliveryTypeDeDe._(_root);
}

// Path: misskey.bubbleGame_
class _TranslationsMisskeyBubbleGameDeDe extends TranslationsMisskeyBubbleGameEnUs {
	_TranslationsMisskeyBubbleGameDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => 'Wie man spielt';
	@override String get hold => 'Halten';
	@override late final _TranslationsMisskeyBubbleGameScoreDeDe score_ = _TranslationsMisskeyBubbleGameScoreDeDe._(_root);
	@override late final _TranslationsMisskeyBubbleGameHowToPlayDeDe howToPlay_ = _TranslationsMisskeyBubbleGameHowToPlayDeDe._(_root);
}

// Path: misskey.announcement_
class _TranslationsMisskeyAnnouncementDeDe extends TranslationsMisskeyAnnouncementEnUs {
	_TranslationsMisskeyAnnouncementDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => 'Nur für existierende Nutzer';
	@override String get forExistingUsersDescription => 'Ist diese Option aktiviert, wird diese Ankündigung nur Nutzern angezeigt, die zum Zeitpunkt der Ankündigung bereits registriert sind. Ist sie deaktiviert, wird sie auch Nutzern, die sich nach dessen Veröffentlichung registrieren, angezeigt.';
	@override String get needConfirmationToRead => 'Separate Lesebestätigung erfordern';
	@override String get needConfirmationToReadDescription => 'Ist dies aktiviert, so wird beim Markieren dieser Ankündigung als gelesen ein separates Bestätigungsfenster angezeigt. Auch wird sie von der "Alle als gelesen markieren"-Funktion ausgenommen.';
	@override String get end => 'Ankündigung archivieren';
	@override String get tooManyActiveAnnouncementDescription => 'Zu viele aktive Ankündigungen können die Benutzerfreundlichkeit verschlechtern. Es wird empfohlen, veraltete Ankündigungen zu archivieren.';
	@override String get readConfirmTitle => 'Als gelesen markieren?';
	@override String readConfirmText({required Object title}) => 'Dies markiert den Inhalt von "${title}" als gelesen.';
	@override String get shouldNotBeUsedToPresentPermanentInfo => 'Es wird empfohlen, Ankündigungen für aktuelle und zeitlich begrenzte Neuigkeiten zu nutzen, statt für Informationen, die langfristig relevant sind.';
	@override String get dialogAnnouncementUxWarn => 'Bei der Verwendung von mehr als zwei Meldungen im Dialog-Format wird um Vorsicht geboten, da dies negative Auswirkungen auf die UX haben kann.';
	@override String get silence => 'Keine Benachrichtigung';
	@override String get silenceDescription => 'Wenn aktiviert, gibt diese Meldung keine Nachricht aus und muss nicht als "gelesen" markiert werden.';
}

// Path: misskey.initialAccountSetting_
class _TranslationsMisskeyInitialAccountSettingDeDe extends TranslationsMisskeyInitialAccountSettingEnUs {
	_TranslationsMisskeyInitialAccountSettingDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => 'Dein Konto wurde erfolgreich erstellt!';
	@override String get letsStartAccountSetup => 'Lass uns nun dein Konto einrichten.';
	@override String get letsFillYourProfile => 'Lass uns zuerst dein Profil einrichten.';
	@override String get profileSetting => 'Profileinstellungen';
	@override String get privacySetting => 'Privatsphäreneinstellungen';
	@override String get theseSettingsCanEditLater => 'Diese Einstellungen kannst du jederzeit ändern.';
	@override String get youCanEditMoreSettingsInSettingsPageLater => 'In den Einstellungen findest du noch viele weitere Optionen. Schau dort später mal vorbei.';
	@override String get followUsers => 'Folge zuerst ein paar Nutzern, um deine Chronik zu füllen.';
	@override String pushNotificationDescription({required Object name}) => 'Durch die Aktivierung von Push-Benachrichtigungen kannst du von ${name} Benachrichtigungen direkt auf dein Gerät erhalten.';
	@override String get initialAccountSettingCompleted => 'Kontoeinrichtung abgeschlossen!';
	@override String haveFun({required Object name}) => 'Viel Spaß mit ${name}!';
	@override String youCanContinueTutorial({required Object name}) => 'Du kannst mit dem Tutorial von ${name}(Misskey) fortfahren, oder auch abbrechen und gleich anfangen Misskey zu benutzen.';
	@override String get startTutorial => 'Fange mit dem Tutorial an';
	@override String get skipAreYouSure => 'Die Kontoeinrichtung wirklich überspringen?';
	@override String get laterAreYouSure => 'Die Kontoeinrichtung wirklich später erledigen?';
}

// Path: misskey.initialTutorial_
class _TranslationsMisskeyInitialTutorialDeDe extends TranslationsMisskeyInitialTutorialEnUs {
	_TranslationsMisskeyInitialTutorialDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'Tutorial ansehen';
	@override String get title => 'Tutorial';
	@override String get wellDone => 'Gut gemacht!';
	@override String get skipAreYouSure => 'Möchtest du das Tutorial verlassen?';
	@override late final _TranslationsMisskeyInitialTutorialLandingDeDe landing_ = _TranslationsMisskeyInitialTutorialLandingDeDe._(_root);
	@override late final _TranslationsMisskeyInitialTutorialNoteDeDe note_ = _TranslationsMisskeyInitialTutorialNoteDeDe._(_root);
	@override late final _TranslationsMisskeyInitialTutorialReactionDeDe reaction_ = _TranslationsMisskeyInitialTutorialReactionDeDe._(_root);
	@override late final _TranslationsMisskeyInitialTutorialTimelineDeDe timeline_ = _TranslationsMisskeyInitialTutorialTimelineDeDe._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteDeDe postNote_ = _TranslationsMisskeyInitialTutorialPostNoteDeDe._(_root);
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveDeDe howToMakeAttachmentsSensitive_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveDeDe._(_root);
	@override late final _TranslationsMisskeyInitialTutorialDoneDeDe done_ = _TranslationsMisskeyInitialTutorialDoneDeDe._(_root);
}

// Path: misskey.timelineDescription_
class _TranslationsMisskeyTimelineDescriptionDeDe extends TranslationsMisskeyTimelineDescriptionEnUs {
	_TranslationsMisskeyTimelineDescriptionDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get home => 'In der Startseiten-Chronik kannst du Notizen von Konten sehen, denen du folgst.';
	@override String get local => 'In der lokalen Chronik siehst du Notizen von allen Benutzern auf diesem Server.';
	@override String get social => 'Die soziale Chronik zeigt Notizen von der Startseite und der lokalen Chronik.';
	@override String get global => 'In der globalen Chronik siehst du Notizen von allen föderierten Servern.';
}

// Path: misskey.serverRules_
class _TranslationsMisskeyServerRulesDeDe extends TranslationsMisskeyServerRulesEnUs {
	_TranslationsMisskeyServerRulesDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Eine Reihe von Regeln, die vor der Registrierung angezeigt werden. Eine Zusammenfassung der Nutzungsbedingungen anzuzeigen ist empfohlen.';
}

// Path: misskey.serverSettings_
class _TranslationsMisskeyServerSettingsDeDe extends TranslationsMisskeyServerSettingsEnUs {
	_TranslationsMisskeyServerSettingsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get iconUrl => 'Icon-URL';
	@override String appIconDescription({required Object host}) => 'Gibt das zu verwendende Icon bei der Anzeige von ${host} als App an.';
	@override String get appIconUsageExample => 'Beispielsweise als PWA, oder bei Lesezeichen auf dem Startbildschirm von Smartphones';
	@override String get appIconStyleRecommendation => 'Da das Icon zu einem Kreis oder Quadrat zugeschnitten wird, wird ein Icon mit gefülltem Margin um den Inhalt herum empfohlen.';
	@override String appIconResolutionMustBe({required Object resolution}) => 'Die Mindestauflösung ist ${resolution}.';
	@override String get manifestJsonOverride => 'Überschreiben von manifest.json';
	@override String get shortName => 'Abkürzung';
	@override String get shortNameDescription => 'Ein Kürzel für den Namen der Instanz, der angezeigt werden kann, falls der volle Instanzname lang ist.';
	@override String get fanoutTimelineDescription => 'Ist diese Option aktiviert, kann eine erhebliche Verbesserung im Abrufen von Chroniken und eine Reduzierung der Datenbankbelastung erzielt werden, im Gegenzug zu einer Steigerung in der Speichernutzung von Redis. Bei geringem Serverspeicher oder Serverinstabilität kann diese Option deaktiviert werden.';
	@override String get fanoutTimelineDbFallback => 'Auf die Datenbank zurückfallen';
	@override String get fanoutTimelineDbFallbackDescription => 'Ist diese Option aktiviert, wird die Chronik auf zusätzliche Abfragen in der Datenbank zurückgreifen, wenn sich die Chronik nicht im Cache befindet. Eine Deaktivierung führt zu geringerer Serverlast, aber schränkt den Zeitraum der abrufbaren Chronik ein. ';
	@override String get reactionsBufferingDescription => 'Wenn diese Option aktiviert ist, kann sie die Leistung beim Erstellen von Reaktionen erheblich verbessern und die Belastung der Datenbank verringern. Allerdings steigt die Speichernutzung von Redis.';
	@override String get inquiryUrl => 'Kontakt-URL';
	@override String get inquiryUrlDescription => 'Gib eine URL für das Kontaktformular der Serverbetreiber oder eine Webseite an, die Kontaktinformationen enthält.';
	@override String get openRegistration => 'Registrierung von Konten aktivieren';
	@override String get openRegistrationWarning => 'Das Aktivieren von Registrierungen ist riskant. Es wird empfohlen, sie nur dann zu aktivieren, wenn der Server ständig überwacht wird und im Falle eines Problems sofort reagiert werden kann.';
	@override String get thisSettingWillAutomaticallyOffWhenModeratorsInactive => 'Wenn über einen bestimmten Zeitraum keine Moderatorenaktivität festgestellt wird, wird diese Einstellung automatisch deaktiviert, um Spam zu verhindern.';
	@override String get deliverSuspendedSoftware => 'Software, die nicht mehr beliefert wird';
	@override String get deliverSuspendedSoftwareDescription => 'Sie können eine Auswahl von Namen und Versionen verschiedener Serversoftware angeben, um die Zustellung zu stoppen, z. B. aufgrund von Sicherheitslücken. Diese Versionsinformationen werden vom Server bereitgestellt und ihre Zuverlässigkeit ist nicht garantiert. Es wird jedoch empfohlen, eine Vorabversion anzugeben, wie z. B. >= 2024.3.1-0, da die Angabe >= 2024.3.1 keine benutzerdefinierten Versionen wie 2024.3.1-custom.0 einschließt.';
	@override String get singleUserMode => 'Einzelbenutzermodus';
	@override String get singleUserMode_description => 'Wenn du der einzige Benutzer dieses Servers bist, optimiert die Aktivierung dieses Modus die Leistung des Servers.';
	@override String get signToActivityPubGet => 'ActivityPub-GET-Anfragen signieren';
	@override String get signToActivityPubGet_description => 'Normalerweise sollte diese Option aktiviert sein. Die Deaktivierung kann Probleme im Zusammenhang mit der Föderation beheben, aber andererseits könnte sie die Föderation mit einigen anderen Servern deaktivieren.';
	@override String get proxyRemoteFiles => 'Proxy für Dateien fremder Instanzen';
	@override String get proxyRemoteFiles_description => 'Wenn diese Einstellung aktiviert ist, werden fremde Dateien über einen Proxyserver übertragen und bereitgestellt. Dies hilft bei der Erstellung von Vorschaubildern und schützt die Privatsphäre der Benutzer.';
	@override String get allowExternalApRedirect => 'Weiterleitungen für Anfragen über ActivityPub zulassen';
	@override String get allowExternalApRedirect_description => 'Wenn diese Option aktiviert ist, können andere Server Inhalte von Drittanbietern über diesen Server abfragen, was jedoch zu Content-Spoofing führen kann.';
	@override String get userGeneratedContentsVisibilityForVisitor => 'Sichtbarkeit von nutzergenerierten Inhalten für Gäste';
	@override String get userGeneratedContentsVisibilityForVisitor_description => 'Dies ist nützlich, um zu verhindern, dass unangemessene Inhalte, die nicht gut moderiert sind, ungewollt über deinen eigenen Server im Internet veröffentlicht werden.';
	@override String get userGeneratedContentsVisibilityForVisitor_description2 => 'Die uneingeschränkte Veröffentlichung aller Inhalte des Servers im Internet, einschließlich der vom Server empfangenen Fremdinhalte, birgt Risiken. Dies ist besonders wichtig für Betrachter, die sich des dezentralen Charakters der Inhalte nicht bewusst sind, da sie selbst fremde Inhalte fälschlicherweise als auf dem Server erstellte Inhalte wahrnehmen könnten.';
	@override late final _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorDeDe userGeneratedContentsVisibilityForVisitor_ = _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorDeDe._(_root);
}

// Path: misskey.accountMigration_
class _TranslationsMisskeyAccountMigrationDeDe extends TranslationsMisskeyAccountMigrationEnUs {
	_TranslationsMisskeyAccountMigrationDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => 'Von einem anderen Konto zu diesem migrieren';
	@override String get moveFromSub => 'Alias für ein anderes Konto erstellen';
	@override String moveFromLabel({required Object n}) => 'Migrationsursprung #${n}';
	@override String get moveFromDescription => 'Um von einem anderen Konto zu diesem zu migrieren, muss zuvor hier ein Alias eingerichtet werden.\nGib das Konto, von dem migriert werden soll, in folgendem Format ein: @username@server.example.com\n\nZum Löschen des Alias kann das Feld leergelassen werden (nicht empfohlen).';
	@override String get moveTo => 'Dieses Konto zu einem neuen migrieren';
	@override String get moveToLabel => 'Umzugsziel:';
	@override String get moveCannotBeUndone => 'Die Migration eines Benutzerkontos ist unwiderruflich.';
	@override String get moveAccountDescription => 'Hierdurch wird dein Konto zu einem anderen migriert.\n　・Follower von diesem Konto werden automatisch auf das neue Konto migriert\n　・Dieses Konto wird allen Nutzern, denen es derzeit folgt, nicht mehr folgen\n　・Mit diesem Konto können keine neuen Notizen usw. erstellt werden\n\nWährend die Migration der Follower automatisch erfolgt, muss die Migration der Konten, denen du folgst, manuell vorbereitet werden. Exportiere hierzu die Liste der gefolgten Nutzer über das Einstellungsmenu, und importiere diese Liste im neuen Konto. Das gleiche Verfahren gilt für erstellte Listen und stummgeschaltete oder blockierte Nutzer.\n\n(Diese Erklärung gilt für Misskey v13.12.0 oder später. Die Funktionsweise andere ActivityPub-Software, beispielsweise Mastodon,  kann hiervon abweichen.)';
	@override String get moveAccountHowTo => 'Um ein Konto zu migrieren, erstelle zuerst auf dem Umzugsziel einen Alias für dieses Konto.\nGib dann das Umzugsziel in folgendem Format ein: @username@server.example.com';
	@override String get startMigration => 'Migrieren';
	@override String migrationConfirm({required Object account}) => 'Dieses Konto wirklich zu ${account} umziehen? Sobald der Umzug beginnt, kann er nicht rückgängig gemacht werden, und dieses Konto nicht wieder im ursprünglichen Zustand verwendet werden.';
	@override String get movedAndCannotBeUndone => '\nDieses Konto wurde migriert.\nDiese Aktion ist unwiderruflich.';
	@override String get postMigrationNote => 'Dieses Konto wird 24 Stunden nach Abschluss der Migration allen Konten, denen es derzeit folgt, nicht mehr folgen.\n\nSowohl die Anzahl der Follower als auch die der Konten, denen dieses Konto folgt, wird dann auf Null gesetzt. Um zu vermeiden, dass Follower dieses Kontos dessen Beiträge, welche nur für Follower bestimmt sind, nicht mehr sehen können, werden sie diesem Konto jedoch weiterhin folgen.';
	@override String get movedTo => 'Neues Konto:';
}

// Path: misskey.achievements_
class _TranslationsMisskeyAchievementsDeDe extends TranslationsMisskeyAchievementsEnUs {
	_TranslationsMisskeyAchievementsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Freigeschaltet am';
	@override late final _TranslationsMisskeyAchievementsTypesDeDe types_ = _TranslationsMisskeyAchievementsTypesDeDe._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRoleDeDe extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRoleDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Rolle erstellen';
	@override String get edit => 'Rolle bearbeiten';
	@override String get name => 'Rollenname';
	@override String get description => 'Rollenbeschreibung';
	@override String get permission => 'Rollenberechtigungen';
	@override String get descriptionOfPermission => '<b>Moderatoren</b> können grundlegende Verwaltungsaufgaben erledigen.\n<b>Administratoren</b> können alle Einstellungen der Instanz verwalten.';
	@override String get assignTarget => 'Zuweisungsart';
	@override String get descriptionOfAssignTarget => '<b>Manuell</b> bedeutet, dass die Liste der Benutzer einer Rolle manuell verwaltet wird.\n<b>Konditional</b> bedeutet, dass die Liste der Benutzer einer Rolle durch eine Bedingung automatisch verwaltet wird.';
	@override String get manual => 'Manuell';
	@override String get manualRoles => 'Manuelle Rollen';
	@override String get conditional => 'Konditional';
	@override String get conditionalRoles => 'Bedingte Rolle';
	@override String get condition => 'Bedingung';
	@override String get isConditionalRole => 'Dies ist eine konditionale Rolle.';
	@override String get isPublic => 'Öffentliche Rolle';
	@override String get descriptionOfIsPublic => 'Diese Rolle wird im Profil zugewiesener Benutzer angezeigt.';
	@override String get options => 'Optionen';
	@override String get policies => 'Richtlinien';
	@override String get baseRole => 'Rollenvorlage';
	@override String get useBaseValue => 'Wert der Rollenvorlage verwenden';
	@override String get chooseRoleToAssign => 'Zuzuweisende Rolle auswählen';
	@override String get iconUrl => 'Icon-URL';
	@override String get asBadge => 'Als Abzeichen anzeigen';
	@override String get descriptionOfAsBadge => 'Ist dies aktiviert, so wird das Icon dieser Rolle an der Seite der Namen von Benutzern mit dieser Rolle angezeigt.';
	@override String get isExplorable => 'Benutzerliste veröffentlichen';
	@override String get descriptionOfIsExplorable => 'Ist dies aktiviert, so ist die Chronik dieser Rolle, sowie eine Liste der Benutzer mit dieser Rolle, frei zugänglich.';
	@override String get displayOrder => 'Position';
	@override String get descriptionOfDisplayOrder => 'Je höher die Nummer, desto höher die UI-Position.';
	@override String get preserveAssignmentOnMoveAccount => 'Rolle übertragbar machen';
	@override String get preserveAssignmentOnMoveAccount_description => 'Wenn diese Option aktiviert ist, wird diese Rolle bei der Migration mit übertragen.';
	@override String get canEditMembersByModerator => 'Moderatoren können Benutzern diese Rolle zuweisen';
	@override String get descriptionOfCanEditMembersByModerator => 'Wenn aktiviert, so können Moderatoren und Adminstratoren anderen Benutzern diese Rolle zuweisen bzw. diese Zuweisung aufheben. Wenn deaktiviert, so ist es nur Administratoren möglich, Zuweisungen dieser Rolle zu verwalten.';
	@override String get priority => 'Priorität';
	@override late final _TranslationsMisskeyRolePriorityDeDe priority_ = _TranslationsMisskeyRolePriorityDeDe._(_root);
	@override late final _TranslationsMisskeyRoleOptionsDeDe options_ = _TranslationsMisskeyRoleOptionsDeDe._(_root);
	@override late final _TranslationsMisskeyRoleConditionDeDe condition_ = _TranslationsMisskeyRoleConditionDeDe._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _TranslationsMisskeySensitiveMediaDetectionDeDe extends TranslationsMisskeySensitiveMediaDetectionEnUs {
	_TranslationsMisskeySensitiveMediaDetectionDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Ermöglicht eine Erleichterung der Servermoderation durch die automatische Erkennungen von sensiblen Medien unter Verwendung von Machine Learning. Hierdurch wird die Serverlast etwas erhöht.';
	@override String get sensitivity => 'Erkennungssensitivität';
	@override String get sensitivityDescription => 'Durch das Senken der Sensitivität kann die Anzahl an Fehlerkennungen (sog. false positives) reduziert werden. Durch ein Erhöhen dieser kann die Anzahl an verpassten Erkennungen (sog. false negatives) reduziert werden.';
	@override String get setSensitiveFlagAutomatically => 'Als sensibel markieren';
	@override String get setSensitiveFlagAutomaticallyDescription => 'Die Resultate der internen Erkennung werden beibehalten, auch wenn diese Option deaktiviert ist.';
	@override String get analyzeVideos => 'Videoanalyse aktivieren';
	@override String get analyzeVideosDescription => 'Analysiert zusätzlich zu Bildern auch Videos. Die Last des Servers wird hierdurch etwas erhöht.';
}

// Path: misskey.emailUnavailable_
class _TranslationsMisskeyEmailUnavailableDeDe extends TranslationsMisskeyEmailUnavailableEnUs {
	_TranslationsMisskeyEmailUnavailableDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get used => 'Diese Email-Adresse wird bereits verwendet';
	@override String get format => 'Das Format dieser Email-Adresse ist ungültig';
	@override String get disposable => 'Wegwerf-Email-Adressen können nicht verwendet werden';
	@override String get mx => 'Dieser Email-Server ist ungültig';
	@override String get smtp => 'Dieser Email-Server antwortet nicht';
	@override String get banned => 'Du kannst dich mit dieser E-Mail-Adresse nicht registrieren';
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilityDeDe extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilityDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get public => 'Öffentlich';
	@override String get followers => 'Nur für Follower sichtbar';
	@override String get private => 'Privat';
}

// Path: misskey.signup_
class _TranslationsMisskeySignupDeDe extends TranslationsMisskeySignupEnUs {
	_TranslationsMisskeySignupDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Fast geschafft';
	@override String get emailAddressInfo => 'Bitte gib deine Email-Adresse ein. Sie wird nicht öffentlich einsehbar sein.';
	@override String emailSent({required Object email}) => 'An deine Email-Adresse (${email}) wurde soeben eine Bestätigungsmail geschickt. Bitte klicke auf den enthaltenen Link, um die Erstellung deines Benutzerkontos abzuschließen.';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeleteDeDe extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeleteDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Benutzerkonto löschen';
	@override String get mayTakeTime => 'Da die Löschung eines Benutzerkontos ein aufwendiger Prozess ist, kann dessen Dauer davon abhängen, wie viel Inhalt von diesem erstellt wurde oder wie viele Dateien von diesem hochgeladen wurden.';
	@override String get sendEmail => 'Sobald die Löschung abgeschlossen ist, wird an die mit ihm verknüpfte Email-Adresse eine Benachrichtigung versendet.';
	@override String get requestAccountDelete => 'Löschung deines Benutzerkontos anfordern';
	@override String get started => 'Die Löschung wurde eingeleitet.';
	@override String get inProgress => 'Löschung in Bearbeitung';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdDeDe extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get back => 'Zurück';
	@override String get reduceFrequencyOfThisAd => 'Diese Werbung weniger anzeigen';
	@override String get hide => 'Ausblenden';
	@override String get timezoneinfo => 'Der Wochentag wird durch die Serverzeitzone bestimmt.';
	@override String get adsSettings => 'Werbeeinstellungen';
	@override String get notesPerOneAd => 'Werbeintervall während Echtzeitaktualisierung (Notizen pro Werbung)';
	@override String get setZeroToDisable => 'Setze dies auf 0, um Werbung während Echtzeitaktualisierung zu deaktivieren';
	@override String get adsTooClose => 'Durch den momentan sehr niedrigen Werbeintervall kann es zu einer starken Verschlechterung der Benutzererfahrung kommen.';
}

// Path: misskey.forgotPassword_
class _TranslationsMisskeyForgotPasswordDeDe extends TranslationsMisskeyForgotPasswordEnUs {
	_TranslationsMisskeyForgotPasswordDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Gib die Email-Adresse ein, mit der du dich registriert hast. An diese wird ein Link gesendet, mit dem du dein Passwort zurücksetzen kannst.';
	@override String get ifNoEmail => 'Solltest du bei der Registrierung keine Email-Adresse angegeben haben, wende dich bitte an den Administrator.';
	@override String get contactAdmin => 'Diese Instanz unterstützt die Verwendung von Email-Adressen nicht. Wende dich an den Administrator, um dein Passwort zurückzusetzen.';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryDeDe extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get my => 'Meine Galerie';
	@override String get liked => 'Mit "Gefällt mir" markierte Beiträge';
	@override String get like => 'Gefällt mir';
	@override String get unlike => '"Gefällt mir" entfernen';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailDeDe extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowDeDe follow_ = _TranslationsMisskeyEmailFollowDeDe._(_root);
	@override late final _TranslationsMisskeyEmailReceiveFollowRequestDeDe receiveFollowRequest_ = _TranslationsMisskeyEmailReceiveFollowRequestDeDe._(_root);
}

// Path: misskey.plugin_
class _TranslationsMisskeyPluginDeDe extends TranslationsMisskeyPluginEnUs {
	_TranslationsMisskeyPluginDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get install => 'Plugins installieren';
	@override String get installWarn => 'Installiere bitte nur vertrauenswürdige Plugins.';
	@override String get manage => 'Plugins verwalten';
	@override String get viewSource => 'Quelltext anzeigen';
	@override String get viewLog => 'Protokoll anzeigen';
}

// Path: misskey.preferencesBackups_
class _TranslationsMisskeyPreferencesBackupsDeDe extends TranslationsMisskeyPreferencesBackupsEnUs {
	_TranslationsMisskeyPreferencesBackupsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get list => 'Erstellte Backups';
	@override String get saveNew => 'Neu erstellen';
	@override String get loadFile => 'Von Datei laden';
	@override String get apply => 'Auf dieses Gerät anwenden';
	@override String get save => 'Speichern';
	@override String get inputName => 'Gib einen Namen für dieses Backup ein';
	@override String get cannotSave => 'Speichern fehlgeschlagen';
	@override String nameAlreadyExists({required Object name}) => 'Es existiert bereits ein Backup unter dem Namen "${name}". Bitte gib einen anderen Namen ein.';
	@override String applyConfirm({required Object name}) => 'Wirklich das Backup "${name}" auf dieses Gerät anwenden? Bestehende Einstellungen darauf werden überschrieben.';
	@override String saveConfirm({required Object name}) => 'Als ${name} speichern?';
	@override String deleteConfirm({required Object name}) => 'Das Backup ${name} löschen?';
	@override String renameConfirm({required Object old, required Object new_}) => 'Soll dieses Backup von "${old}" zu "${new_}" umbenannt werden?';
	@override String get noBackups => 'Keine Backups existieren. Backups können über "Neu erstellen" erstelllt werden.';
	@override String createdAt({required Object date, required Object time}) => 'Erstellt am: ${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => 'Aktualisiert am: ${date} ${time}';
	@override String get cannotLoad => 'Laden fehlgeschlagen';
	@override String get invalidFile => 'Ungültiges Dateiformat.';
}

// Path: misskey.registry_
class _TranslationsMisskeyRegistryDeDe extends TranslationsMisskeyRegistryEnUs {
	_TranslationsMisskeyRegistryDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Scope';
	@override String get key => 'Schlüssel';
	@override String get keys => 'Schlüssel';
	@override String get domain => 'Domain';
	@override String get createKey => 'Schlüssel erstellen';
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeyDeDe extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeyDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey ist Open-Source-Software, welche von syuilo seit 2014 entwickelt wird.';
	@override String get contributors => 'Hauptmitwirkende';
	@override String get allContributors => 'Alle Mitwirkenden';
	@override String get source => 'Quellcode';
	@override String get original => 'Original';
	@override String thisIsModifiedVersion({required Object name}) => '${name} verwendet eine modifizierte Version des ursprünglichen Misskey.';
	@override String get translation => 'Misskey übersetzen';
	@override String get donate => 'An Misskey spenden';
	@override String get morePatrons => 'Wir schätzen ebenso die Unterstützung vieler anderer hier nicht gelisteter Personen sehr. Danke! 🥰';
	@override String get patrons => 'UnterstützerInnen';
	@override String get projectMembers => 'Projektmitglieder';
}

// Path: misskey.displayOfSensitiveMedia_
class _TranslationsMisskeyDisplayOfSensitiveMediaDeDe extends TranslationsMisskeyDisplayOfSensitiveMediaEnUs {
	_TranslationsMisskeyDisplayOfSensitiveMediaDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get respect => 'Sensible Medien verbergen';
	@override String get ignore => 'Sensible Medien anzeigen';
	@override String get force => 'Alle Medien verbergen';
}

// Path: misskey.instanceTicker_
class _TranslationsMisskeyInstanceTickerDeDe extends TranslationsMisskeyInstanceTickerEnUs {
	_TranslationsMisskeyInstanceTickerDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get none => 'Nie anzeigen';
	@override String get remote => 'Für Benutzer fremder Instanzen anzeigen';
	@override String get always => 'Immer anzeigen';
}

// Path: misskey.serverDisconnectedBehavior_
class _TranslationsMisskeyServerDisconnectedBehaviorDeDe extends TranslationsMisskeyServerDisconnectedBehaviorEnUs {
	_TranslationsMisskeyServerDisconnectedBehaviorDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Automatisch aktualisieren';
	@override String get dialog => 'Warnungsfenster zeigen';
	@override String get quiet => 'Unaufdringlich warnen';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelDeDe extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get create => 'Kanal erstellen';
	@override String get edit => 'Kanal bearbeiten';
	@override String get setBanner => 'Kanalbanner festlegen';
	@override String get removeBanner => 'Kanalbanner entfernen';
	@override String get featured => 'Trends';
	@override String get owned => 'In Besitz';
	@override String get following => 'Gefolgt';
	@override String usersCount({required Object n}) => '${n} Teilnehmer';
	@override String notesCount({required Object n}) => '${n} Notizen';
	@override String get nameAndDescription => 'Name und Beschreibung';
	@override String get nameOnly => 'Nur Name';
	@override String get allowRenoteToExternal => 'Renotes und Zitierungen außerhalb des Kanals erlauben';
}

// Path: misskey.menuDisplay_
class _TranslationsMisskeyMenuDisplayDeDe extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplayDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Seitlich';
	@override String get sideIcon => 'Seitlich (Icons)';
	@override String get top => 'Oben';
	@override String get hide => 'Ausblenden';
}

// Path: misskey.wordMute_
class _TranslationsMisskeyWordMuteDeDe extends TranslationsMisskeyWordMuteEnUs {
	_TranslationsMisskeyWordMuteDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Stummgeschaltete Wörter';
	@override String get muteWordsDescription => 'Zum Nutzen einer "UND"-Verknüpfung Einträge mit Leerzeichen trennen, zum Nutzen einer "ODER"-Verknüpfung Einträge mit einem Zeilenumbruch trennen.';
	@override String get muteWordsDescription2 => 'Umgib Schlüsselworter mit Schrägstrichen, um Reguläre Ausdrücke zu verwenden.';
}

// Path: misskey.instanceMute_
class _TranslationsMisskeyInstanceMuteDeDe extends TranslationsMisskeyInstanceMuteEnUs {
	_TranslationsMisskeyInstanceMuteDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Schaltet alle Notizen/Renotes stumm, die von den gelisteten Instanzen stammen, inklusive Antworten von Benutzern an einen Benutzer einer stummgeschalteten Instanz.';
	@override String get instanceMuteDescription2 => 'Instanzen getrennt durch Zeilenumbrüchen angeben';
	@override String get title => 'Blendet Notizen von stummgeschalteten Instanzen aus.';
	@override String get heading => 'Stummzuschaltende Instanzen';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeDeDe extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get explore => 'Farbschemata erforschen';
	@override String get install => 'Farbschemata installieren';
	@override String get manage => 'Farbschemaverwaltung';
	@override String get code => 'Farbschemencode';
	@override String get copyThemeCode => 'Farbschemencode kopieren';
	@override String get description => 'Beschreibung';
	@override String installed({required Object name}) => '${name} wurde installiert';
	@override String get installedThemes => 'Installierte Farbschemata';
	@override String get builtinThemes => 'Eingebaute Farbschemata';
	@override String get instanceTheme => 'Server-Thema';
	@override String get alreadyInstalled => 'Dieses Farbschema ist bereits installiert';
	@override String get invalid => 'Der Code dieses Farbschemas ist ungültig';
	@override String get make => 'Farbschema erstellen';
	@override String get base => 'Vorlage';
	@override String get addConstant => 'Konstante hinzufügen';
	@override String get constant => 'Konstante';
	@override String get defaultValue => 'Standardwert';
	@override String get color => 'Farbe';
	@override String get refProp => 'Eigenschaft referenzieren';
	@override String get refConst => 'Konstante referenzieren';
	@override String get key => 'Schlüssel';
	@override String get func => 'Funktionen';
	@override String get funcKind => 'Funktionsart';
	@override String get argument => 'Parameter';
	@override String get basedProp => 'Referenzierte Eigenschaft';
	@override String get alpha => 'Transparenz';
	@override String get darken => 'Verdunkeln';
	@override String get lighten => 'Erhellen';
	@override String get inputConstantName => 'Name der Konstanten eingeben';
	@override String get importInfo => 'Hier kannst du Farbschemencode einfügen, um ihn in den Editor zu importieren';
	@override String deleteConstantConfirm({required Object const_}) => 'Die Konstante ${const_} wirklich löschen?';
	@override late final _TranslationsMisskeyThemeKeysDeDe keys = _TranslationsMisskeyThemeKeysDeDe._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxDeDe extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get note => 'Notizen';
	@override String get noteMy => 'Meine Notizen';
	@override String get notification => 'Benachrichtigungen';
	@override String get reaction => 'Auswählen einer Reaktion';
	@override String get chatMessage => 'Chat-Nachrichten';
}

// Path: misskey.soundSettings_
class _TranslationsMisskeySoundSettingsDeDe extends TranslationsMisskeySoundSettingsEnUs {
	_TranslationsMisskeySoundSettingsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get driveFile => 'Audiodatei aus dem Drive verwenden';
	@override String get driveFileWarn => 'Wähle eine Audiodatei aus dem Drive';
	@override String get driveFileTypeWarn => 'Diese Datei wird nicht unterstützt';
	@override String get driveFileTypeWarnDescription => 'Bitte wähle eine Audiodatei';
	@override String get driveFileDurationWarn => 'Audio zu lang.';
	@override String get driveFileDurationWarnDescription => 'Lange Töne kann die Verwendung von Misskey stören. Trotzdem fortfahren?';
	@override String get driveFileError => 'Audio konnte nicht geladen werden. Bitte ändere die Einstellung.';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoDeDe extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get future => 'Zukunft';
	@override String get justNow => 'Gerade eben';
	@override String secondsAgo({required Object n}) => 'vor ${n} Sekunde(n)';
	@override String minutesAgo({required Object n}) => 'vor ${n} Minute(n)';
	@override String hoursAgo({required Object n}) => 'vor ${n} Stunde(n)';
	@override String daysAgo({required Object n}) => 'vor ${n} Tag(en)';
	@override String weeksAgo({required Object n}) => 'vor ${n} Woche(n)';
	@override String monthsAgo({required Object n}) => 'vor ${n} Monat(en)';
	@override String yearsAgo({required Object n}) => 'vor ${n} Jahr(en)';
	@override String get invalid => 'Ungültig';
}

// Path: misskey.timeIn_
class _TranslationsMisskeyTimeInDeDe extends TranslationsMisskeyTimeInEnUs {
	_TranslationsMisskeyTimeInDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String seconds({required Object n}) => 'In ${n}s';
	@override String minutes({required Object n}) => 'In ${n} Min.';
	@override String hours({required Object n}) => 'In ${n} Std.';
	@override String days({required Object n}) => 'In ${n} Tagen';
	@override String weeks({required Object n}) => 'In ${n} Wochen';
	@override String months({required Object n}) => 'In ${n} Monaten';
	@override String years({required Object n}) => 'In ${n} Jahren';
}

// Path: misskey.time_
class _TranslationsMisskeyTimeDeDe extends TranslationsMisskeyTimeEnUs {
	_TranslationsMisskeyTimeDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get second => 'Sekunde(n)';
	@override String get minute => 'Minute(n)';
	@override String get hour => 'Stunde(n)';
	@override String get day => 'Tag(en)';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faDeDe extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'Du hast bereits ein Gerät für Zwei-Faktor-Authentifizierung registriert.';
	@override String get registerTOTP => 'Authentifizierungs-App registrieren';
	@override String step1({required Object a, required Object b}) => 'Installiere zuerst eine Authentifizierungsapp (z.B. ${a} oder ${b}) auf deinem Gerät.';
	@override String get step2 => 'Dann, scanne den angezeigten QR-Code mit deinem Gerät.';
	@override String get step2Uri => 'Nutzt du ein Desktopprogramm, gib folgende URI eingeben';
	@override String get step3Title => 'Authentifizierungsscode eingeben';
	@override String get step3 => 'Gib zum Abschluss den Code (Token) ein, der von deiner App angezeigt wird.';
	@override String get setupCompleted => 'Einrichtung abgeschlossen';
	@override String get step4 => 'Alle folgenden Anmeldeversuche werden ab sofort die Eingabe eines solchen Tokens benötigen.';
	@override String get securityKeyNotSupported => 'Dein Browser unterstützt keine Hardware-Sicherheitsschlüssel.';
	@override String get registerTOTPBeforeKey => 'Um einen Security-Token oder einen Passkey zu registrieren, musst du zuerst eine Authentifizierungs-App registrieren.';
	@override String get securityKeyInfo => 'Du kannst neben Fingerabdruck- oder PIN-Authentifizierung auf deinem Gerät auch Anmeldung mit Hilfe eines FIDO2-kompatiblen Hardware-Sicherheitsschlüssels einrichten.';
	@override String get registerSecurityKey => 'Hardware-Sicherheitsschlüssel oder Passkey registrieren';
	@override String get securityKeyName => 'Schlüsselname eingeben';
	@override String get tapSecurityKey => 'Bitten folge den Anweisungen deines Browsers zur Registrierung';
	@override String get removeKey => 'Sicherheitsschlüssel entfernen';
	@override String removeKeyConfirm({required Object name}) => 'Den Schlüssel ${name} wirklich löschen?';
	@override String get whyTOTPOnlyRenew => 'Solange ein Sicherheitsschlüssel registriert ist, kann die Authentifizierungs-App nicht entfernt werden.';
	@override String get renewTOTP => 'Authentifizierungs-App neu einrichten';
	@override String get renewTOTPConfirm => 'Codes der bisherigen App werden hierdurch nutzlos';
	@override String get renewTOTPOk => 'Neu einrichten';
	@override String get renewTOTPCancel => 'Abbrechen';
	@override String get checkBackupCodesBeforeCloseThisWizard => 'Notiere bitte deine Backup-Codes, bevor du dieses Fenster schließt.';
	@override String get backupCodes => 'Backup-Codes';
	@override String get backupCodesDescription => 'Verwende diese Codes, falls du nicht mehr auf deine App zur Zweifaktorauthentifizierung zugreifen kannst. Jeder Code kann nur einmal verwendet werden. Bewahre sie an einem sicheren Ort auf.';
	@override String get backupCodeUsedWarning => 'Ein Backup-Code wurde verwendet. Falls du den Zugriff zu deiner Zweifaktorauthentifizierungsapp verloren hast, konfiguriere diese bitte möglichst bald erneut.';
	@override String get backupCodesExhaustedWarning => 'Alle Backup-Codes wurden verwendet. Falls du den Zugang zu deiner Zweifaktorauthentifizierungsapp verlierst, wirst du dich nicht mehr in dieses Konto einloggen können. Bitte konfiguriere diese App erneut.';
	@override String get moreDetailedGuideHere => 'Hier ist eine ausführliche Anleitung';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsDeDe extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'Deine Benutzerkontoinformationen lesen';
	@override String get writeAccount => 'Deine Benutzerkontoinformationen bearbeiten';
	@override String get readBlocks => 'Die Liste deiner blockierten Benutzer lesen';
	@override String get writeBlocks => 'Die Liste deiner blockierten Benutzer bearbeiten';
	@override String get readDrive => 'Deine Drive-Dateien und Ordner lesen';
	@override String get writeDrive => 'Deine Drive-Dateien und Ordner bearbeiten oder löschen';
	@override String get readFavorites => 'Deine Favoriten-Liste lesen';
	@override String get writeFavorites => 'Deine Favoriten-Liste bearbeiten';
	@override String get readFollowing => 'Die Liste der Benutzer, denen du folgst, lesen';
	@override String get writeFollowing => 'Anderen Benutzern folgen oder entfolgen';
	@override String get readMessaging => 'Chats lesen';
	@override String get writeMessaging => 'Chats bedienen';
	@override String get readMutes => 'Stummschaltungen lesen';
	@override String get writeMutes => 'Stummschaltungen bearbeiten';
	@override String get writeNotes => 'Notizen schreiben oder löschen';
	@override String get readNotifications => 'Benachrichtigungen lesen';
	@override String get writeNotifications => 'Benachrichtigungen bedienen';
	@override String get readReactions => 'Reaktionen lesen';
	@override String get writeReactions => 'Reaktionen bedienen';
	@override String get writeVotes => 'Umfragen bedienen';
	@override String get readPages => 'Deine Seiten lesen';
	@override String get writePages => 'Deine Seiten bearbeiten oder löschen';
	@override String get readPageLikes => 'Liste der Seiten, die mir gefallen, lesen';
	@override String get writePageLikes => 'Liste der Seiten, die mir gefallen, bearbeiten';
	@override String get readUserGroups => 'Benutzergruppen lesen';
	@override String get writeUserGroups => 'Benutzergruppen bearbeiten oder löschen';
	@override String get readChannels => 'Kanäle lesen';
	@override String get writeChannels => 'Kanäle bedienen';
	@override String get readGallery => 'Beiträge deiner Galerie lesen';
	@override String get writeGallery => 'Deine Galerie bearbeiten';
	@override String get readGalleryLikes => 'Liste deiner mit "Gefällt mir" markierten Galerie-Beiträge lesen';
	@override String get writeGalleryLikes => 'Liste deiner mit "Gefällt mir" markierten Galerie-Beiträge bearbeiten';
	@override String get readFlash => 'Deine Plays lesen';
	@override String get writeFlash => 'Deine Plays bearbeiten oder löschen';
	@override String get readFlashLikes => 'Liste der Plays, die mir gefallen, lesen';
	@override String get writeFlashLikes => 'Liste der Plays, die mir gefallen, bearbeiten';
	@override String get readAdminAbuseUserReports => 'Meldungen von Benutzern ansehen';
	@override String get writeAdminDeleteAccount => 'Benutzerkonto löschen';
	@override String get writeAdminDeleteAllFilesOfAUser => 'Alle Dateien eines Benutzers löschen';
	@override String get readAdminIndexStats => 'Statistiken zu Datenbankindizes einsehen';
	@override String get readAdminTableStats => 'Statistiken zu Datenbanktabellen einsehen';
	@override String get readAdminUserIps => 'IP-Adressen von Benutzern anzeigen';
	@override String get readAdminMeta => 'Metadaten der Instanz einsehen';
	@override String get writeAdminResetPassword => 'Benutzerpasswort zurücksetzen';
	@override String get writeAdminResolveAbuseUserReport => 'Meldungen von Benutzern lösen';
	@override String get writeAdminSendEmail => 'E-Mail versenden';
	@override String get readAdminServerInfo => 'Serverinformationen anzeigen';
	@override String get readAdminShowModerationLog => 'Moderationsprotokoll einsehen';
	@override String get readAdminShowUser => 'Private Benutzerinformationen einsehen';
	@override String get writeAdminSuspendUser => 'Benutzer sperren';
	@override String get writeAdminUnsetUserAvatar => 'Benutzer-Profilbild entfernen';
	@override String get writeAdminUnsetUserBanner => 'Benutzer-Banner entfernen';
	@override String get writeAdminUnsuspendUser => 'Benutzer entsperren';
	@override String get writeAdminMeta => 'Metadaten der Instanz verwalten';
	@override String get writeAdminUserNote => 'Moderationsvermerke verwalten';
	@override String get writeAdminRoles => 'Rollen verwalten';
	@override String get readAdminRoles => 'Rollen anzeigen';
	@override String get writeAdminRelays => 'Relays verwalten';
	@override String get readAdminRelays => 'Relays anzeigen';
	@override String get writeAdminInviteCodes => 'Einladungscodes verwalten';
	@override String get readAdminInviteCodes => 'Einladungscodes anzeigen';
	@override String get writeAdminAnnouncements => 'Ankündigungen verwalten';
	@override String get readAdminAnnouncements => 'Ankündigungen einsehen';
	@override String get writeAdminAvatarDecorations => 'Kann Avatar-Dekorationen verwalten';
	@override String get readAdminAvatarDecorations => 'Avatar-Dekorationen ansehen';
	@override String get writeAdminFederation => 'Informationen über Föderationen bearbeiten oder löschen';
	@override String get writeAdminAccount => 'Benutzerkonten verwalten';
	@override String get readAdminAccount => 'Benutzerkonten anzeigen';
	@override String get writeAdminEmoji => 'Emojis verwalten';
	@override String get readAdminEmoji => 'Emojis anzeigen';
	@override String get writeAdminQueue => 'Job-Warteschlange verwalten';
	@override String get readAdminQueue => 'Job-Warteschlange anzeigen';
	@override String get writeAdminPromo => 'Moderationsnotiz hinzufügen';
	@override String get writeAdminDrive => 'Benutzer-Drive verwalten';
	@override String get readAdminDrive => 'Benutzer-Drive ansehen';
	@override String get readAdminStream => 'Verwendung der Websocket-API für Administratoren';
	@override String get writeAdminAd => 'Werbung verwalten';
	@override String get readAdminAd => 'Werbung ansehen';
	@override String get writeInviteCodes => 'Einladungscodes erstellen';
	@override String get readInviteCodes => 'Einladungscodes anzeigen';
	@override String get writeClipFavorite => 'Clip-Likes bearbeiten oder löschen';
	@override String get readClipFavorite => 'Clip-Likes ansehen';
	@override String get readFederation => 'Informationen zur Föderation einsehen';
	@override String get writeReportAbuse => 'Verstöße melden';
	@override String get writeChat => 'Chats bedienen';
	@override String get readChat => 'Chats durchsuchen';
}

// Path: misskey.auth_
class _TranslationsMisskeyAuthDeDe extends TranslationsMisskeyAuthEnUs {
	_TranslationsMisskeyAuthDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'Verteilung von App-Berechtigungen';
	@override String shareAccess({required Object name}) => 'Möchtest du „${name}“ authorisieren, auf dieses Benutzerkonto zugreifen zu können?';
	@override String get shareAccessAsk => 'Bist du dir sicher, dass du diese Anwendung authorisieren möchtest, auf dein Benutzerkonto zugreifen zu können?';
	@override String permission({required Object name}) => '${name} fordert folgende Berechtigungen';
	@override String get permissionAsk => 'Diese Anwendung fordert folgende Berechtigungen';
	@override String get pleaseGoBack => 'Bitte kehre zur Anwendung zurück';
	@override String get callback => 'Es wird zur Anwendung zurückgekehrt';
	@override String get accepted => 'Zugriff gewährt';
	@override String get denied => 'Zugriff verweigert';
	@override String get scopeUser => 'Als folgender Benutzer agieren';
	@override String get pleaseLogin => 'Bitte logge dich ein, um Apps zu authorisieren.';
	@override String get byClickingYouWillBeRedirectedToThisUrl => 'Wenn der Zugang gewährt wird, wirst du automatisch zu folgender URL weitergeleitet';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesDeDe extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get all => 'Alle Notizen';
	@override String get homeTimeline => 'Notizen von Benutzern, denen gefolgt wird';
	@override String get users => 'Notizen von einem oder mehreren angegebenen Benutzern';
	@override String get userList => 'Notizen von allen Benutzern einer Liste';
	@override String get userBlacklist => 'Alle Notizen abgesehen derer angegebener Benutzer';
}

// Path: misskey.weekday_
class _TranslationsMisskeyWeekdayDeDe extends TranslationsMisskeyWeekdayEnUs {
	_TranslationsMisskeyWeekdayDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get sunday => 'Sonntag';
	@override String get monday => 'Montag';
	@override String get tuesday => 'Dienstag';
	@override String get wednesday => 'Mittwoch';
	@override String get thursday => 'Donnerstag';
	@override String get friday => 'Freitag';
	@override String get saturday => 'Samstag';
}

// Path: misskey.widgets_
class _TranslationsMisskeyWidgetsDeDe extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Profil';
	@override String get instanceInfo => 'Instanzinformationen';
	@override String get memo => 'Merkzettel';
	@override String get notifications => 'Benachrichtigungen';
	@override String get timeline => 'Chronik';
	@override String get calendar => 'Kalender';
	@override String get trends => 'Trends';
	@override String get clock => 'Uhr';
	@override String get rss => 'RSS-Reader';
	@override String get rssTicker => 'RSS-Ticker';
	@override String get activity => 'Aktivität';
	@override String get photos => 'Fotos';
	@override String get digitalClock => 'Digitaluhr';
	@override String get unixClock => 'UNIX-Uhr';
	@override String get federation => 'Föderation';
	@override String get instanceCloud => 'Instanzwolke';
	@override String get postForm => 'Notizfenster';
	@override String get slideshow => 'Diashow';
	@override String get button => 'Knopf';
	@override String get onlineUsers => 'Benutzer Online';
	@override String get jobQueue => 'Job-Warteschlange';
	@override String get serverMetric => 'Servermetriken';
	@override String get aiscript => 'AiScript-Konsole';
	@override String get aiscriptApp => 'AiScript-Anwendung';
	@override String get aichan => 'Ai';
	@override String get userList => 'Benutzerliste';
	@override late final _TranslationsMisskeyWidgetsUserListDeDe userList_ = _TranslationsMisskeyWidgetsUserListDeDe._(_root);
	@override String get clicker => 'Klickzähler';
	@override String get birthdayFollowings => 'Nutzer, die heute Geburtstag haben';
	@override String get chat => 'Mit dem Benutzer chatten';
}

// Path: misskey.cw_
class _TranslationsMisskeyCwDeDe extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Inhalt verbergen';
	@override String get show => 'Inhalt anzeigen';
	@override String chars({required Object count}) => '${count} Zeichen';
	@override String files({required Object count}) => '${count} Datei(en)';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollDeDe extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'Es müssen mindestens zwei Antwortmöglichkeiten vorhanden sein';
	@override String choiceN({required Object n}) => 'Auswahl ${n}';
	@override String get noMore => 'Du kannst keine weiteren Auswahlmöglichkeiten hinzufügen';
	@override String get canMultipleVote => 'Auswahl mehrerer Antworten erlauben';
	@override String get expiration => 'Abstimmung beenden';
	@override String get infinite => 'Nie';
	@override String get at => 'Beenden am …';
	@override String get after => 'Beenden nach …';
	@override String get deadlineDate => 'Enddatum';
	@override String get deadlineTime => 'Zeit';
	@override String get duration => 'Dauer';
	@override String votesCount({required Object n}) => '${n} Stimmen';
	@override String totalVotes({required Object n}) => 'Insgesamt ${n} Stimmen';
	@override String get vote => 'Abstimmen';
	@override String get showResult => 'Ergebnis anzeigen';
	@override String get voted => 'Abgestimmt';
	@override String get closed => 'Beendet';
	@override String remainingDays({required Object d, required Object h}) => '${d} Tag(e) ${h} Stunde(n) verbleibend';
	@override String remainingHours({required Object h, required Object m}) => '${h} Stunde(n) ${m} Minute(n) verbleibend';
	@override String remainingMinutes({required Object m, required Object s}) => '${m} Minute(n) ${s} Sekunde(n) verbleibend';
	@override String remainingSeconds({required Object s}) => '${s} Sekunde(n) verbleibend';
}

// Path: misskey.visibility_
class _TranslationsMisskeyVisibilityDeDe extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get public => 'Öffentlich';
	@override String get publicDescription => 'Deine Notiz wird global für alle Benutzer sichtbar sein';
	@override String get home => 'Startseite';
	@override String get homeDescription => 'Notiz nur in die Startseiten-Chronik schicken';
	@override String get followers => 'Follower';
	@override String get followersDescription => 'Nur für Follower sichtbar';
	@override String get specified => 'Direkt';
	@override String get specifiedDescription => 'Nur für bestimmte Benutzer sichtbar';
	@override String get disableFederation => 'Deföderieren';
	@override String get disableFederationDescription => 'Nicht an andere Instanzen übertragen';
}

// Path: misskey.postForm_
class _TranslationsMisskeyPostFormDeDe extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get quitInspiteOfThereAreUnuploadedFilesConfirm => 'Es gibt Dateien, die nicht hochgeladen wurden. Möchtest du diese verwerfen und das Formular schließen?';
	@override String get uploaderTip => 'Die Datei wurde noch nicht hochgeladen. Über das Dateimenü kannst du sie umbenennen, das Bild zuschneiden, ein Wasserzeichen hinzufügen, komprimieren usw. Die Datei wird automatisch hochgeladen, wenn du eine Notiz veröffentlichst.';
	@override String get replyPlaceholder => 'Dieser Notiz antworten …';
	@override String get quotePlaceholder => 'Diese Notiz zitieren …';
	@override String get channelPlaceholder => 'In einen Kanal senden';
	@override late final _TranslationsMisskeyPostFormHowToUseDeDe howToUse_ = _TranslationsMisskeyPostFormHowToUseDeDe._(_root);
	@override late final _TranslationsMisskeyPostFormPlaceholdersDeDe placeholders_ = _TranslationsMisskeyPostFormPlaceholdersDeDe._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileDeDe extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Name';
	@override String get username => 'Benutzername';
	@override String get description => 'Profilbeschreibung';
	@override String get youCanIncludeHashtags => 'Du kannst auch Hashtags in deiner Profilbeschreibung verwenden.';
	@override String get metadata => 'Zusätzliche Informationen';
	@override String get metadataEdit => 'Zusätzliche Informationen bearbeiten';
	@override String get metadataDescription => 'Hierdurch kannst du auf deinem Profil zusätzliche Informationsblöcke anzeigen lassen.';
	@override String get metadataLabel => 'Beschriftung';
	@override String get metadataContent => 'Inhalt';
	@override String get changeAvatar => 'Profilbild ändern';
	@override String get changeBanner => 'Banner ändern';
	@override String get verifiedLinkDescription => 'Gibst du hier eine URL ein, die einen Link zu deinem Profile enthält, wird neben diesem Feld ein Icon zur Besitzbestätigung angezeigt.';
	@override String avatarDecorationMax({required Object max}) => 'Du kannst bis zu ${max} Dekorationen hinzufügen.';
	@override String get followedMessage => 'Nachricht, wenn dir jemand folgt';
	@override String get followedMessageDescription => 'Du kannst eine kurze Nachricht festlegen, die dem Empfänger angezeigt wird, wenn er dir folgt.';
	@override String get followedMessageDescriptionForLockedAccount => 'Wenn Folgeanfragen deine Genehmigung brauchen, wird dies beim Genehmigen einer Anfrage angezeigt.';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportDeDe extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Alle Notizen';
	@override String get favoritedNotes => 'Als Favorit markierte Notizen';
	@override String get clips => 'Clip erstellen';
	@override String get followingList => 'Gefolgte Benutzer';
	@override String get muteList => 'Stummschaltungen';
	@override String get blockingList => 'Blockierungen';
	@override String get userLists => 'Listen';
	@override String get excludeMutingUsers => 'Stummgeschaltete Benutzer aussortieren';
	@override String get excludeInactiveUsers => 'Inaktive Benutzer aussortieren';
	@override String get withReplies => 'Antworten von importierten Benutzern in der Chronik beinhalten';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsDeDe extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Föderation';
	@override String get apRequest => 'Anfragen';
	@override String get usersIncDec => 'Unterschied in der Anzahl von Benutzern';
	@override String get usersTotal => 'Anzahl aller Benutzer';
	@override String get activeUsers => 'Aktive Benutzer';
	@override String get notesIncDec => 'Unterschied in der Anzahl an Notizen';
	@override String get localNotesIncDec => 'Unterschied in der Anzahl an lokalen Notizen';
	@override String get remoteNotesIncDec => 'Unterschied in der Anzahl an Notizen von fremden Instanzen';
	@override String get notesTotal => 'Anzahl aller Notizen';
	@override String get filesIncDec => 'Unterschied in der Anzahl an Dateien';
	@override String get filesTotal => 'Anzahl aller Dateien';
	@override String get storageUsageIncDec => 'Unterschied in der Höhe der Speichernutzung';
	@override String get storageUsageTotal => 'Gesamte Speichernutzung';
}

// Path: misskey.instanceCharts_
class _TranslationsMisskeyInstanceChartsDeDe extends TranslationsMisskeyInstanceChartsEnUs {
	_TranslationsMisskeyInstanceChartsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get requests => 'Anfragen';
	@override String get users => 'Unterschied in der Anzahl an Benutzern';
	@override String get usersTotal => 'Gesamtanzahl an Benutzern';
	@override String get notes => 'Unterschied in der Anzahl an Notizen';
	@override String get notesTotal => 'Gesamtanzahl an Notizen';
	@override String get ff => 'Unterschied in der Anzahl an gefolgten Benutzern und Followern';
	@override String get ffTotal => 'Gesamtanzahl an gefolgten Benutzern und Followern';
	@override String get cacheSize => 'Unterschied in der Größe des Caches';
	@override String get cacheSizeTotal => 'Gesamtgröße des Caches';
	@override String get files => 'Unterschied in der Anzahl an Dateien';
	@override String get filesTotal => 'Gesamtanzahl an Dateien';
}

// Path: misskey.timelines_
class _TranslationsMisskeyTimelinesDeDe extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get home => 'Startseite';
	@override String get local => 'Lokal';
	@override String get social => 'Sozial';
	@override String get global => 'Global';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayDeDe extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Play erstellen';
	@override String get edit => 'Play bearbeiten';
	@override String get created => 'Play erfolgreich erstellt';
	@override String get updated => 'Play erfolgreich aktualisiert';
	@override String get deleted => 'Play erfolgreich gelöscht';
	@override String get pageSetting => 'Play-Einstellungen';
	@override String get editThisPage => 'Dieses Play bearbeiten';
	@override String get viewSource => 'Quelltext anzeigen';
	@override String get my => 'Meine Plays';
	@override String get liked => 'Mit "Gefällt mir" markierte Plays';
	@override String get featured => 'Beliebt';
	@override String get title => 'Titel';
	@override String get script => 'Skript';
	@override String get summary => 'Beschreibung';
	@override String get visibilityDescription => 'Wenn du die Sichtbarkeit auf Privat stellst, wird der Play nicht auf deinem Profil sichtbar sein, aber jeder, der die URL hat, kann ihn trotzdem aufrufen.';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesDeDe extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'Seite erstellen';
	@override String get editPage => 'Seite bearbeiten';
	@override String get readPage => 'Quelltextansicht';
	@override String get pageSetting => 'Seiteneinstellungen';
	@override String get nameAlreadyExists => 'Die angegebene Seiten-URL existiert bereits';
	@override String get invalidNameTitle => 'Die angegebene Seiten-URL ist ungültig';
	@override String get invalidNameText => 'Überprüfe, ob der Seitentitel nicht leer ist';
	@override String get editThisPage => 'Diese Seite bearbeiten';
	@override String get viewSource => 'Quelltext anzeigen';
	@override String get viewPage => 'Seite anschauen';
	@override String get like => 'Gefällt mir';
	@override String get unlike => '"Gefällt mir" entfernen';
	@override String get my => 'Meine Seiten';
	@override String get liked => 'Seiten, die mir gefallen';
	@override String get featured => 'Beliebt';
	@override String get inspector => 'Inspektor';
	@override String get contents => 'Inhalte';
	@override String get content => 'Seitenblock';
	@override String get variables => 'Variablen';
	@override String get title => 'Titel';
	@override String get url => 'Seiten-URL';
	@override String get summary => 'Zusammenfassung';
	@override String get alignCenter => 'Zentrieren';
	@override String get hideTitleWhenPinned => 'Seitentitel wenn angeheftet ausblenden';
	@override String get font => 'Schriftart';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
	@override String get eyeCatchingImageSet => 'Vorschaubild festlegen';
	@override String get eyeCatchingImageRemove => 'Vorschaubild entfernen';
	@override String get chooseBlock => 'Block hinzufügen';
	@override String get enterSectionTitle => 'Titel des Abschnitts eingeben';
	@override String get selectType => 'Typ auswählen';
	@override String get contentBlocks => 'Inhalt';
	@override String get inputBlocks => 'Eingabe';
	@override String get specialBlocks => 'Spezial';
	@override late final _TranslationsMisskeyPagesBlocksDeDe blocks = _TranslationsMisskeyPagesBlocksDeDe._(_root);
}

// Path: misskey.relayStatus_
class _TranslationsMisskeyRelayStatusDeDe extends TranslationsMisskeyRelayStatusEnUs {
	_TranslationsMisskeyRelayStatusDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'Ausstehend';
	@override String get accepted => 'Akzeptiert';
	@override String get rejected => 'Abgelehnt';
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationDeDe extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'Datei erfolgreich hochgeladen';
	@override String youGotMention({required Object name}) => '${name} hat dich erwähnt';
	@override String youGotReply({required Object name}) => '${name} hat dir geantwortet';
	@override String youGotQuote({required Object name}) => '${name} hat dich zitiert';
	@override String youRenoted({required Object name}) => 'Renote deiner Notiz von ${name}';
	@override String get youWereFollowed => 'ist dir gefolgt';
	@override String get youReceivedFollowRequest => 'Du hast eine Follow-Anfrage erhalten';
	@override String get yourFollowRequestAccepted => 'Deine Follow-Anfrage wurde akzeptiert';
	@override String get pollEnded => 'Umfrageergebnisse sind verfügbar';
	@override String get newNote => 'Neue Notiz';
	@override String unreadAntennaNote({required Object name}) => 'Antenne ${name}';
	@override String get roleAssigned => 'Rolle zugewiesen';
	@override String get chatRoomInvitationReceived => 'Du wurdest in einen Chatraum eingeladen';
	@override String get emptyPushNotificationMessage => 'Push-Benachrichtigungen wurden aktualisiert';
	@override String get achievementEarned => 'Errungenschaft freigeschaltet';
	@override String get testNotification => 'Testbenachrichtigung';
	@override String get checkNotificationBehavior => 'Aussehen von Benachrichtigungen überprüfen';
	@override String get sendTestNotification => 'Testbenachrichtigung senden';
	@override String get notificationWillBeDisplayedLikeThis => 'Benachrichtigungen sehen so aus';
	@override String reactedBySomeUsers({required Object n}) => '${n} Benutzer haben eine Reaktion geschickt';
	@override String likedBySomeUsers({required Object n}) => '${n} Benutzer mochten deine Notiz';
	@override String renotedBySomeUsers({required Object n}) => 'Renote von ${n} Benutzern';
	@override String followedBySomeUsers({required Object n}) => 'Von ${n} Benutzern gefolgt';
	@override String get flushNotification => 'Benachrichtigungen löschen';
	@override String exportOfXCompleted({required Object x}) => 'Der Export von ${x} ist abgeschlossen';
	@override String get login => 'Neue Anmeldung erfolgt';
	@override String get createToken => 'Ein Zugangstoken wurde erstellt';
	@override String createTokenDescription({required Object text}) => 'Wenn Sie keine Ahnung haben, löschen Sie das Zugriffstoken über "${text}"';
	@override late final _TranslationsMisskeyNotificationTypesDeDe types_ = _TranslationsMisskeyNotificationTypesDeDe._(_root);
	@override late final _TranslationsMisskeyNotificationActionsDeDe actions_ = _TranslationsMisskeyNotificationActionsDeDe._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckDeDe extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Hauptspalte immer zeigen';
	@override String get columnAlign => 'Spaltenausrichtung';
	@override String get columnGap => 'Spaltenabstand';
	@override String get deckMenuPosition => 'Position des Deck-Menüs';
	@override String get navbarPosition => 'Position der Navigationsleiste';
	@override String get addColumn => 'Spalte hinzufügen';
	@override String get newNoteNotificationSettings => 'Benachrichtigungseinstellungen für neue Notizen';
	@override String get configureColumn => 'Spalteneinstellungen';
	@override String get swapLeft => 'Mit linker Spalte tauschen';
	@override String get swapRight => 'Mit rechter Spalte tauschen';
	@override String get swapUp => 'Mit oberer Spalte tauschen';
	@override String get swapDown => 'Mit unterer Spalte tauschen';
	@override String get stackLeft => 'Auf linke Spalte stapeln';
	@override String get popRight => 'Nach rechts vom Stapel nehmen';
	@override String get profile => 'Profil';
	@override String get newProfile => 'Neues Profil';
	@override String get deleteProfile => 'Profil löschen';
	@override String get introduction => 'Erstelle eine auf dich zugeschneiderte Benutzeroberfläche durch das Aneinanderreihen von Spalten!';
	@override String get introduction2 => 'Klicke auf das + rechts um wann immer du möchtest neue Spalten hinzuzufügen.';
	@override String get widgetsIntroduction => 'Drücke bitte "Widgets bearbeiten" im Spaltenmenü und füge ein Widget hinzu.';
	@override String get useSimpleUiForNonRootPages => 'Simple Benutzeroberfläche für navigierte Seiten verwenden';
	@override String get usedAsMinWidthWhenFlexible => 'Ist "Automatische Breitenanpassung" aktiviert, wird hierfür die minimale Breite verwendet';
	@override String get flexible => 'Automatische Breitenanpassung';
	@override String get enableSyncBetweenDevicesForProfiles => 'Aktivieren der Synchronisierung von Profilinformationen zwischen Geräten';
	@override late final _TranslationsMisskeyDeckColumnsDeDe columns_ = _TranslationsMisskeyDeckColumnsDeDe._(_root);
}

// Path: misskey.dialog_
class _TranslationsMisskeyDialogDeDe extends TranslationsMisskeyDialogEnUs {
	_TranslationsMisskeyDialogDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => 'Maximallänge überschritten! Momentan ${current} von ${max}';
	@override String charactersBelow({required Object current, required Object min}) => 'Minimallänge unterschritten! Momentan ${current} von ${min}';
}

// Path: misskey.disabledTimeline_
class _TranslationsMisskeyDisabledTimelineDeDe extends TranslationsMisskeyDisabledTimelineEnUs {
	_TranslationsMisskeyDisabledTimelineDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chronik deaktiviert';
	@override String get description => 'Mit deinen jetzigen Rollen ist diese Chronik nicht verfügbar.';
}

// Path: misskey.drivecleaner_
class _TranslationsMisskeyDrivecleanerDeDe extends TranslationsMisskeyDrivecleanerEnUs {
	_TranslationsMisskeyDrivecleanerDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'Absteigende Dateigrößen';
	@override String get orderByCreatedAtAsc => 'Aufsteigendes Erstelldatum';
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsDeDe extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Webhook erstellen';
	@override String get modifyWebhook => 'Webhook bearbeiten';
	@override String get name => 'Name';
	@override String get secret => 'Secret';
	@override String get trigger => 'Auslöser';
	@override String get active => 'Aktiviert';
	@override late final _TranslationsMisskeyWebhookSettingsEventsDeDe events_ = _TranslationsMisskeyWebhookSettingsEventsDeDe._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsSystemEventsDeDe systemEvents_ = _TranslationsMisskeyWebhookSettingsSystemEventsDeDe._(_root);
	@override String get deleteConfirm => 'Bist du sicher, dass du den Webhook löschen willst?';
	@override String get testRemarks => 'Klicke auf die Schaltfläche rechts neben dem Schalter, um einen Test-Webhook mit Dummy-Daten zu senden.';
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportDeDe extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientDeDe notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientDeDe._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesDeDe extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get createRole => 'Rolle erstellt';
	@override String get deleteRole => 'Rolle gelöscht';
	@override String get updateRole => 'Rolle aktualisiert';
	@override String get assignRole => 'Zu Rolle zugewiesen';
	@override String get unassignRole => 'Aus Rolle entfernt';
	@override String get suspend => 'Gesperrt';
	@override String get unsuspend => 'Entsperrt';
	@override String get addCustomEmoji => 'Benutzerdefiniertes Emoji hinzugefügt';
	@override String get updateCustomEmoji => 'Benutzerdefiniertes Emoji aktualisiert';
	@override String get deleteCustomEmoji => 'Benutzerdefiniertes Emoji gelöscht';
	@override String get updateServerSettings => 'Servereinstellungen aktualisiert';
	@override String get updateUserNote => 'Moderationsnotiz aktualisiert';
	@override String get deleteDriveFile => 'Datei gelöscht';
	@override String get deleteNote => 'Notiz gelöscht';
	@override String get createGlobalAnnouncement => 'Globale Ankündigung erstellt';
	@override String get createUserAnnouncement => 'Benutzerspezifische Ankündigung erstellt';
	@override String get updateGlobalAnnouncement => 'Globale Ankündigung aktualisiert';
	@override String get updateUserAnnouncement => 'Benutzerspezifische Ankündigung aktualisiert';
	@override String get deleteGlobalAnnouncement => 'Globale Ankündigung gelöscht';
	@override String get deleteUserAnnouncement => 'Benutzerspezifische Ankündigung gelöscht';
	@override String get resetPassword => 'Passwort zurückgesetzt';
	@override String get suspendRemoteInstance => 'Fremde Instanz gesperrt';
	@override String get unsuspendRemoteInstance => 'Fremde Instanz entsperrt';
	@override String get updateRemoteInstanceNote => 'Aktualisierung der Moderationshinweise für fremde Server.';
	@override String get markSensitiveDriveFile => 'Datei als sensitiv markiert';
	@override String get unmarkSensitiveDriveFile => 'Datei als nicht sensitiv markiert';
	@override String get resolveAbuseReport => 'Meldung bearbeitet';
	@override String get forwardAbuseReport => 'Meldung weitergeleitet';
	@override String get updateAbuseReportNote => 'Moderationsnotiz einer Meldung aktualisiert';
	@override String get createInvitation => 'Einladung erstellt';
	@override String get createAd => 'Werbung erstellt';
	@override String get deleteAd => 'Werbung gelöscht';
	@override String get updateAd => 'Werbung aktualisiert';
	@override String get createAvatarDecoration => 'Profilbilddekoration erstellt';
	@override String get updateAvatarDecoration => 'Profilbilddekoration aktualisiert';
	@override String get deleteAvatarDecoration => 'Profilbilddekoration gelöscht';
	@override String get unsetUserAvatar => 'Profilbild zurückgesetzt';
	@override String get unsetUserBanner => 'Profilbanner zurückgesetzt';
	@override String get createSystemWebhook => 'System-Webhook erstellt';
	@override String get updateSystemWebhook => 'System-Webhook aktualisiert';
	@override String get deleteSystemWebhook => 'System-Webhook gelöscht';
	@override String get createAbuseReportNotificationRecipient => 'Empfänger für Meldungen erstellt';
	@override String get updateAbuseReportNotificationRecipient => 'Empfänger für Meldungen aktualisiert';
	@override String get deleteAbuseReportNotificationRecipient => 'Empfänger für Meldungen entfernt';
	@override String get deleteAccount => 'Benutzerkonto gelöscht';
	@override String get deletePage => 'Seite gelöscht';
	@override String get deleteFlash => 'Play gelöscht';
	@override String get deleteGalleryPost => 'Galeriebeitrag gelöscht';
	@override String get deleteChatRoom => 'Chatraum gelöscht';
	@override String get updateProxyAccountDescription => 'Beschreibung des Proxy-Benutzerkontos aktualisiert';
}

// Path: misskey.fileViewer_
class _TranslationsMisskeyFileViewerDeDe extends TranslationsMisskeyFileViewerEnUs {
	_TranslationsMisskeyFileViewerDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dateiinformationen';
	@override String get type => 'Dateityp';
	@override String get size => 'Dateigröße';
	@override String get url => 'URL';
	@override String get uploadedAt => 'Hochgeladen am';
	@override String get attachedNotes => 'Zugehörige Notizen';
	@override String get thisPageCanBeSeenFromTheAuthor => 'Nur der Benutzer, der diese Datei hochgeladen hat, kann diese Seite sehen.';
}

// Path: misskey.externalResourceInstaller_
class _TranslationsMisskeyExternalResourceInstallerDeDe extends TranslationsMisskeyExternalResourceInstallerEnUs {
	_TranslationsMisskeyExternalResourceInstallerDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Von externer Seite installieren';
	@override String get checkVendorBeforeInstall => 'Überprüfe vor Installation die Vertrauenswürdigkeit des Vertreibers.';
	@override late final _TranslationsMisskeyExternalResourceInstallerPluginDeDe plugin_ = _TranslationsMisskeyExternalResourceInstallerPluginDeDe._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerThemeDeDe theme_ = _TranslationsMisskeyExternalResourceInstallerThemeDeDe._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerMetaDeDe meta_ = _TranslationsMisskeyExternalResourceInstallerMetaDeDe._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerVendorInfoDeDe vendorInfo_ = _TranslationsMisskeyExternalResourceInstallerVendorInfoDeDe._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsDeDe errors_ = _TranslationsMisskeyExternalResourceInstallerErrorsDeDe._(_root);
}

// Path: misskey.dataSaver_
class _TranslationsMisskeyDataSaverDeDe extends TranslationsMisskeyDataSaverEnUs {
	_TranslationsMisskeyDataSaverDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyDataSaverMediaDeDe media_ = _TranslationsMisskeyDataSaverMediaDeDe._(_root);
	@override late final _TranslationsMisskeyDataSaverAvatarDeDe avatar_ = _TranslationsMisskeyDataSaverAvatarDeDe._(_root);
	@override late final _TranslationsMisskeyDataSaverUrlPreviewThumbnailDeDe urlPreviewThumbnail_ = _TranslationsMisskeyDataSaverUrlPreviewThumbnailDeDe._(_root);
	@override late final _TranslationsMisskeyDataSaverDisableUrlPreviewDeDe disableUrlPreview_ = _TranslationsMisskeyDataSaverDisableUrlPreviewDeDe._(_root);
	@override late final _TranslationsMisskeyDataSaverCodeDeDe code_ = _TranslationsMisskeyDataSaverCodeDeDe._(_root);
}

// Path: misskey.hemisphere_
class _TranslationsMisskeyHemisphereDeDe extends TranslationsMisskeyHemisphereEnUs {
	_TranslationsMisskeyHemisphereDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get N => 'Nördliche Erdhalbkugel';
	@override String get S => 'Südliche Erdhalbkugel';
	@override String get caption => 'Wird in einigen Client-Einstellungen zur Bestimmung der Jahreszeit verwendet.';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiDeDe extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get reversi => 'Reversi';
	@override String get gameSettings => 'Spieleinstellungen';
	@override String get chooseBoard => 'Spielbrett auswählen';
	@override String get blackOrWhite => 'Schwarz/Weiß';
	@override String blackIs({required Object name}) => '${name} spielt Schwarz';
	@override String get rules => 'Regeln';
	@override String get thisGameIsStartedSoon => 'Das Spiel wird in Kürze beginnen';
	@override String get waitingForOther => 'Warte auf den Zug des Gegenspielers';
	@override String get waitingForMe => 'Warte auf deinen Zug';
	@override String get waitingBoth => 'Mach dich bereit';
	@override String get ready => 'Bereit';
	@override String get cancelReady => 'Nicht bereit';
	@override String get opponentTurn => 'Dein Gegner ist an der Reihe';
	@override String get myTurn => 'Du bist am Zug';
	@override String turnOf({required Object name}) => '${name} ist am Zug';
	@override String pastTurnOf({required Object name}) => 'Zug von ${name}';
	@override String get surrender => 'Aufgeben';
	@override String get surrendered => 'Aufgegeben';
	@override String get timeout => 'Zeit abgelaufen';
	@override String get drawn => 'Unentschieden';
	@override String won({required Object name}) => '${name} hat gewonnen';
	@override String get black => 'Schwarz';
	@override String get white => 'Weiß';
	@override String get total => 'Gesamt';
	@override String turnCount({required Object count}) => ' Zug ${count}';
	@override String get myGames => 'Meine Runden';
	@override String get allGames => 'Alle Runden';
	@override String get ended => 'Beendet';
	@override String get playing => 'Partie läuft';
	@override String get isLlotheo => 'Der mit weniger Steinen gewinnt (Llotheo)';
	@override String get loopedMap => 'Wiederholendes Spielbrett';
	@override String get canPutEverywhere => 'Steine können überall platziert werden';
	@override String get timeLimitForEachTurn => 'Zeitlimit eines Zugs';
	@override String get freeMatch => 'Freies Spiel';
	@override String get lookingForPlayer => 'Gegner werden gesucht...';
	@override String get gameCanceled => 'Das Spiel wurde abgesagt.';
	@override String get shareToTlTheGameWhenStart => 'Spiel in der Chronik teilen, wenn es gestartet wurde';
	@override String get iStartedAGame => 'Das Spiel hat begonnen! #MisskeyReversi';
	@override String get opponentHasSettingsChanged => 'Der Gegner hat seine Einstellungen geändert.';
	@override String get allowIrregularRules => 'Irreguläre Regeln (völlig frei)';
	@override String get disallowIrregularRules => 'Keine irregulären Regeln';
	@override String get showBoardLabels => 'Anzeige der Zeilen- und Spaltennummern am Spielbrett';
	@override String get useAvatarAsStone => 'Steine in Benutzeravatare umwandeln';
}

// Path: misskey.offlineScreen_
class _TranslationsMisskeyOfflineScreenDeDe extends TranslationsMisskeyOfflineScreenEnUs {
	_TranslationsMisskeyOfflineScreenDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Offline - keine Verbindung zum Server möglich';
	@override String get header => 'Verbindung zum Server nicht möglich';
}

// Path: misskey.urlPreviewSetting_
class _TranslationsMisskeyUrlPreviewSettingDeDe extends TranslationsMisskeyUrlPreviewSettingEnUs {
	_TranslationsMisskeyUrlPreviewSettingDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Einstellungen der URL-Vorschau';
	@override String get enable => 'URL-Vorschau aktivieren';
	@override String get allowRedirect => 'Umleitung von URL-Vorschauen erlauben';
	@override String get allowRedirectDescription => 'Wenn für eine URL eine Umleitung festgelegt ist, kann diese Funktion aktiviert werden, um der Umleitung zu folgen und eine Vorschau des umgeleiteten Inhalts anzuzeigen. Die Deaktivierung spart Serverressourcen, aber der Inhalt des Weiterleitungsziels wird nicht angezeigt.';
	@override String get timeout => 'Zeitüberschreitung beim Abrufen der Vorschau (ms)';
	@override String get timeoutDescription => 'Übersteigt die für die Vorschau benötigte Zeit diesen Wert, wird keine Vorschau generiert.';
	@override String get maximumContentLength => 'Maximale Content-Length (Bytes)';
	@override String get maximumContentLengthDescription => 'Wenn die Content-Length diesen Wert überschreitet, wird keine Vorschau erzeugt.';
	@override String get requireContentLength => 'Vorschau nur generieren, wenn Content-Length verfügbar ist';
	@override String get requireContentLengthDescription => 'Wenn der Server keine Content-Length zurückgibt, wird keine Vorschau erzeugt.';
	@override String get userAgent => 'User-Agent';
	@override String get userAgentDescription => 'Legt den User-Agent fest, der beim Abrufen der Vorschau verwendet werden soll. Bleibt er leer, wird der Standard-User-Agent verwendet.';
	@override String get summaryProxy => 'Proxy-Endpunkte, die Vorschaubilder erzeugen';
	@override String get summaryProxyDescription => 'Generierung von Vorschaubildern mit Summaly Proxy anstelle von Misskey selbst.';
	@override String get summaryProxyDescription2 => 'Die folgenden Parameter werden als Abfrage-Strings mit dem Proxy verknüpft. Wenn der Proxy sie nicht unterstützt, werden die Werte ignoriert.';
}

// Path: misskey.mediaControls_
class _TranslationsMisskeyMediaControlsDeDe extends TranslationsMisskeyMediaControlsEnUs {
	_TranslationsMisskeyMediaControlsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get pip => 'Bild-in-Bild';
	@override String get playbackRate => 'Wiedergabegeschwindigkeit';
	@override String get loop => 'Endloswiedergabe';
}

// Path: misskey.contextMenu_
class _TranslationsMisskeyContextMenuDeDe extends TranslationsMisskeyContextMenuEnUs {
	_TranslationsMisskeyContextMenuDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kontextmenü';
	@override String get app => 'Anwendung';
	@override String get appWithShift => 'Anwendung per Umschalttaste';
	@override String get native => 'Natives Browsermenü';
}

// Path: misskey.gridComponent_
class _TranslationsMisskeyGridComponentDeDe extends TranslationsMisskeyGridComponentEnUs {
	_TranslationsMisskeyGridComponentDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyGridComponentErrorDeDe error_ = _TranslationsMisskeyGridComponentErrorDeDe._(_root);
}

// Path: misskey.roleSelectDialog_
class _TranslationsMisskeyRoleSelectDialogDeDe extends TranslationsMisskeyRoleSelectDialogEnUs {
	_TranslationsMisskeyRoleSelectDialogDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get notSelected => 'Nicht ausgewählt';
}

// Path: misskey.customEmojisManager_
class _TranslationsMisskeyCustomEmojisManagerDeDe extends TranslationsMisskeyCustomEmojisManagerEnUs {
	_TranslationsMisskeyCustomEmojisManagerDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCustomEmojisManagerGridCommonDeDe gridCommon_ = _TranslationsMisskeyCustomEmojisManagerGridCommonDeDe._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLogsDeDe logs_ = _TranslationsMisskeyCustomEmojisManagerLogsDeDe._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerRemoteDeDe remote_ = _TranslationsMisskeyCustomEmojisManagerRemoteDeDe._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalDeDe local_ = _TranslationsMisskeyCustomEmojisManagerLocalDeDe._(_root);
}

// Path: misskey.embedCodeGen_
class _TranslationsMisskeyEmbedCodeGenDeDe extends TranslationsMisskeyEmbedCodeGenEnUs {
	_TranslationsMisskeyEmbedCodeGenDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Einbettungscode anpassen';
	@override String get header => 'Kopfzeile anzeigen';
	@override String get autoload => 'Automatisch mehr laden (veraltet)';
	@override String get maxHeight => 'Maximale Höhe';
	@override String get maxHeightDescription => 'Der Wert 0 deaktiviert die Einstellung der maximalen Höhe. Gib einen Wert an, um zu verhindern, dass das Widget weiterhin vertikal vergrößert wird.';
	@override String get maxHeightWarn => 'Die Begrenzung der maximalen Höhe ist deaktiviert (0). Wenn dies nicht beabsichtigt war, setze die maximale Höhe auf einen Wert fest.';
	@override String get previewIsNotActual => 'Die Anzeige weicht von der tatsächlichen Einbettung ab, da sie den auf dem Vorschaufenster angezeigten Bereich überschreitet.';
	@override String get rounded => 'Ecken abrunden';
	@override String get border => 'Dem äußeren Rand einen Rahmen hinzufügen';
	@override String get applyToPreview => 'Auf die Vorschau anwenden';
	@override String get generateCode => 'Einbettungscode generieren';
	@override String get codeGenerated => 'Der Code wurde generiert';
	@override String get codeGeneratedDescription => 'Füge den generierten Code in deine Website ein, um den Inhalt einzubetten.';
}

// Path: misskey.selfXssPrevention_
class _TranslationsMisskeySelfXssPreventionDeDe extends TranslationsMisskeySelfXssPreventionEnUs {
	_TranslationsMisskeySelfXssPreventionDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get warning => 'WARNUNG';
	@override String get title => '„Füge in diesen Bereich etwas ein“ ist eine Betrugsmasche.';
	@override String get description1 => 'Wenn du hier etwas einfügst, könnte ein böswilliger Benutzer dein Konto übernehmen oder deine persönlichen Daten stehlen.';
	@override String get description2 => 'Wenn du das nicht genau verstehst, was du einfügst, %csolltest du die Eingabe abbrechen und das Fenster schließen.';
	@override String description3({required Object link}) => 'Weitere Informationen findest du hier. ${link}';
}

// Path: misskey.followRequest_
class _TranslationsMisskeyFollowRequestDeDe extends TranslationsMisskeyFollowRequestEnUs {
	_TranslationsMisskeyFollowRequestDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get recieved => 'Anfrage erhalten';
	@override String get sent => 'Anfrage gesendet';
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsDeDe extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedDeDe federationNotAllowed_ = _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedDeDe._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsUriInvalidDeDe uriInvalid_ = _TranslationsMisskeyRemoteLookupErrorsUriInvalidDeDe._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsRequestFailedDeDe requestFailed_ = _TranslationsMisskeyRemoteLookupErrorsRequestFailedDeDe._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsResponseInvalidDeDe responseInvalid_ = _TranslationsMisskeyRemoteLookupErrorsResponseInvalidDeDe._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectDeDe noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectDeDe._(_root);
}

// Path: misskey.captcha_
class _TranslationsMisskeyCaptchaDeDe extends TranslationsMisskeyCaptchaEnUs {
	_TranslationsMisskeyCaptchaDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get verify => 'Bitte beantworte das CAPTCHA';
	@override String get testSiteKeyMessage => 'Du kannst die Vorschau prüfen, indem du die Testwerte für den Site- und Secret-Key eingibst. Weitere Informationen findest du auf der folgenden Seite.';
	@override late final _TranslationsMisskeyCaptchaErrorDeDe error_ = _TranslationsMisskeyCaptchaErrorDeDe._(_root);
}

// Path: misskey.bootErrors_
class _TranslationsMisskeyBootErrorsDeDe extends TranslationsMisskeyBootErrorsEnUs {
	_TranslationsMisskeyBootErrorsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Laden fehlgeschlagen';
	@override String get serverError => 'Wenn das Problem nach kurzem Warten und erneutem Laden immer noch nicht behoben ist, wende dich bitte an den Serveradministrator und gib die folgende Fehler-ID an.';
	@override String get solution => 'Folgendes könnte das Problem lösen.';
	@override String get solution1 => 'Aktualisiere deinen Browser und dein Betriebssystem auf die neueste Version';
	@override String get solution2 => 'Deaktiviere den Werbeblocker';
	@override String get solution3 => 'Leere den Browser-Cache';
	@override String get solution4 => '(Tor Browser) Setze dom.webaudio.enabled auf true';
	@override String get otherOption => 'Weitere Optionen';
	@override String get otherOption1 => 'Client-Einstellungen und Cache löschen';
	@override String get otherOption2 => 'Einfachen Client starten';
	@override String get otherOption3 => 'Starte das Reparaturwerkzeug';
}

// Path: misskey.search_
class _TranslationsMisskeySearchDeDe extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Alle';
	@override String get searchScopeLocal => 'Lokal';
	@override String get searchScopeServer => 'Bestimmter Server';
	@override String get searchScopeUser => 'Spezifischer Benutzer';
	@override String get pleaseEnterServerHost => 'Gib den Server-Host ein';
	@override String get pleaseSelectUser => 'Benutzer auswählen';
	@override String get serverHostPlaceholder => 'Beispiel: misskey.example.com';
}

// Path: misskey.serverSetupWizard_
class _TranslationsMisskeyServerSetupWizardDeDe extends TranslationsMisskeyServerSetupWizardEnUs {
	_TranslationsMisskeyServerSetupWizardDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get installCompleted => 'Die Installation von Misskey ist abgeschlossen!';
	@override String get firstCreateAccount => 'Erstelle zunächst ein Administratorkonto.';
	@override String get accountCreated => 'Ein Administratorkonto wurde angelegt!';
	@override String get serverSetting => 'Servereinstellungen';
	@override String get youCanEasilyConfigureOptimalServerSettingsWithThisWizard => 'Mit diesem Assistenten lässt sich die optimale Serverkonfiguration leicht einrichten.';
	@override String get settingsYouMakeHereCanBeChangedLater => 'Die Einstellungen hier können später geändert werden.';
	@override String get howWillYouUseMisskey => 'Wie wirst du Misskey verwenden?';
	@override late final _TranslationsMisskeyServerSetupWizardUseDeDe use_ = _TranslationsMisskeyServerSetupWizardUseDeDe._(_root);
	@override String get openServerAdvice => 'Die Aufnahme einer unbestimmten Anzahl von Nutzern birgt Risiken. Es wird empfohlen, mit einem zuverlässigen Moderationssystem zu arbeiten, um eventuell auftretende Probleme behandeln zu können.';
	@override String get openServerAntiSpamAdvice => 'Große Sorgfalt muss auch auf die Sicherheit gelegt werden, z. B. durch die Aktivierung von Anti-Bot-Funktionen wie reCAPTCHA, um sicherzustellen, dass der Server nicht zum Verbreiten von Spam genutzt wird.';
	@override String get howManyUsersDoYouExpect => 'Mit wie vielen Benutzern rechnest du?';
	@override late final _TranslationsMisskeyServerSetupWizardScaleDeDe scale_ = _TranslationsMisskeyServerSetupWizardScaleDeDe._(_root);
	@override String get largeScaleServerAdvice => 'Für große Server sind unter Umständen fortgeschrittene Kenntnisse erforderlich, z. B. Lastverteilung und Datenbankreplikation.';
	@override String get doYouConnectToFediverse => 'Mit dem Fediverse verbinden?';
	@override String get doYouConnectToFediverse_description1 => 'Bei Anschluss an ein Netz von verteilten Servern (Fediverse) können Inhalte mit anderen Servern ausgetauscht werden.';
	@override String get doYouConnectToFediverse_description2 => 'Die Verbindung mit dem Fediverse wird auch als „Föderation“ bezeichnet.';
	@override String get youCanConfigureMoreFederationSettingsLater => 'Erweiterte Einstellungen, wie z. B. die Angabe von föderierbaren Servern, können später vorgenommen werden.';
	@override String get adminInfo => 'Administrator-Informationen';
	@override String get adminInfo_description => 'Legt die Administrator-Informationen fest, die für den Empfang von Anfragen verwendet werden.';
	@override String get adminInfo_mustBeFilled => 'Dies ist auf einem offenen Server oder bei aktivierter Föderation erforderlich.';
	@override String get followingSettingsAreRecommended => 'Die folgenden Einstellungen werden empfohlen';
	@override String get applyTheseSettings => 'Diese Einstellungen anwenden';
	@override String get skipSettings => 'Konfiguration überspringen';
	@override String get settingsCompleted => 'Einrichtung abgeschlossen!';
	@override String get settingsCompleted_description => 'Vielen Dank für deine Zeit. Jetzt, wo alles fertig ist, kannst du den Server sofort benutzen.';
	@override String get settingsCompleted_description2 => 'Detaillierte Servereinstellungen können über die „Systemsteuerung“ vorgenommen werden.';
	@override String get donationRequest => 'Spendenaufruf';
	@override late final _TranslationsMisskeyServerSetupWizardDonationRequestDeDe donationRequest_ = _TranslationsMisskeyServerSetupWizardDonationRequestDeDe._(_root);
}

// Path: misskey.uploader_
class _TranslationsMisskeyUploaderDeDe extends TranslationsMisskeyUploaderEnUs {
	_TranslationsMisskeyUploaderDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get editImage => 'Bild bearbeiten';
	@override String compressedToX({required Object x}) => 'Komprimiert zu ${x}';
	@override String savedXPercent({required Object x}) => '${x}% gespart';
	@override String get abortConfirm => 'Einige Dateien wurden nicht hochgeladen. Möchtest du den Vorgang abbrechen?';
	@override String get doneConfirm => 'Einige Dateien wurden nicht hochgeladen. Möchtest du den Vorgang fortsetzen?';
	@override String maxFileSizeIsX({required Object x}) => 'Die maximale Dateigröße, die hochgeladen werden kann, beträgt ${x}.';
	@override String get allowedTypes => 'Hochladbare Dateitypen';
	@override String get tip => 'Die Datei ist noch nicht hochgeladen worden. In diesem Dialog kannst du die Datei vor dem Hochladen anzeigen, umbenennen, komprimieren und zuschneiden. Wenn du fertig bist, klicke auf „Hochladen“, um den Upload zu starten.';
}

// Path: misskey.clientPerformanceIssueTip_
class _TranslationsMisskeyClientPerformanceIssueTipDeDe extends TranslationsMisskeyClientPerformanceIssueTipEnUs {
	_TranslationsMisskeyClientPerformanceIssueTipDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get makeSureDisabledAdBlocker => 'Deaktiviere deinen Adblocker';
	@override String get makeSureDisabledAdBlocker_description => 'Adblocker können die Leistung beeinträchtigen; vergewissere dich, ob in deinem Betriebssystem, Browser oder deinen Add-ons Adblocker aktiviert sind.';
	@override String get makeSureDisabledCustomCss => 'Benutzerdefiniertes CSS deaktivieren';
	@override String get makeSureDisabledCustomCss_description => 'Das Überschreiben von Stilen kann die Leistung beeinträchtigen. Stelle daher sicher, dass du kein benutzerdefiniertes CSS oder Erweiterungen aktiviert hast, die Stile überschreiben.';
	@override String get makeSureDisabledAddons => 'Erweiterungen deaktivieren';
	@override String get makeSureDisabledAddons_description => 'Einige Erweiterungen können das Verhalten des Clients stören und die Leistung beeinträchtigen. Deaktiviere die Browser-Erweiterungen und prüfe, ob sich die Situation dadurch verbessert.';
}

// Path: misskey.clip_
class _TranslationsMisskeyClipDeDe extends TranslationsMisskeyClipEnUs {
	_TranslationsMisskeyClipDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Clips sind eine Funktion, mit der du Notizen gruppieren kannst.';
}

// Path: misskey.userLists_
class _TranslationsMisskeyUserListsDeDe extends TranslationsMisskeyUserListsEnUs {
	_TranslationsMisskeyUserListsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Es können Listen mit beliebigen Benutzern erstellt werden. Die erstellte Liste kann als eigene Chronik angezeigt werden.';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorDeDe extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Dem Bild kann ein Wasserzeichen, z. B. eine Quellenangabe, hinzugefügt werden.';
	@override String get quitWithoutSaveConfirm => 'Nicht gespeicherte Änderungen verwerfen?';
	@override String get driveFileTypeWarn => 'Diese Datei wird nicht unterstützt';
	@override String get driveFileTypeWarnDescription => 'Bilddatei auswählen';
	@override String get title => 'Wasserzeichen bearbeiten';
	@override String get cover => 'Alles bedecken';
	@override String get opacity => 'Transparenz';
	@override String get scale => 'Größe';
	@override String get text => 'Text';
	@override String get position => 'Position';
	@override String get type => 'Art';
	@override String get image => 'Bilder';
	@override String get advanced => 'Fortgeschritten';
	@override String get angle => 'Winkel';
	@override String get stripe => 'Streifen';
	@override String get stripeWidth => 'Linienbreite';
	@override String get stripeFrequency => 'Linienanzahl';
	@override String get polkadot => 'Punktmuster';
	@override String get polkadotMainDotOpacity => 'Deckkraft des Hauptpunktes';
	@override String get polkadotMainDotRadius => 'Größe des Hauptpunktes';
	@override String get polkadotSubDotOpacity => 'Deckkraft des Unterpunktes';
	@override String get polkadotSubDotRadius => 'Größe des Unterpunktes';
	@override String get polkadotSubDotDivisions => 'Anzahl der Unterpunkte';
}

// Path: misskey.imageEffector_
class _TranslationsMisskeyImageEffectorDeDe extends TranslationsMisskeyImageEffectorEnUs {
	_TranslationsMisskeyImageEffectorDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Effekte';
	@override String get addEffect => 'Effekte hinzufügen';
	@override String get discardChangesConfirm => 'Änderungen verwerfen und beenden?';
	@override late final _TranslationsMisskeyImageEffectorFxsDeDe fxs_ = _TranslationsMisskeyImageEffectorFxsDeDe._(_root);
	@override late final _TranslationsMisskeyImageEffectorFxPropsDeDe fxProps_ = _TranslationsMisskeyImageEffectorFxPropsDeDe._(_root);
}

// Path: misskey.drafts_
class _TranslationsMisskeyDraftsDeDe extends TranslationsMisskeyDraftsEnUs {
	_TranslationsMisskeyDraftsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get select => 'Entwurf auswählen';
	@override String get cannotCreateDraftAnymore => 'Die Anzahl der Entwürfe, die erstellt werden können, wurde überschritten.';
	@override String get cannotCreateDraft => 'Mit diesem Inhalt kann kein Entwurf erstellt werden.';
	@override String get delete => 'Entwurf löschen';
	@override String get deleteAreYouSure => 'Entwurf löschen?';
	@override String get noDrafts => 'Keine Entwürfe';
	@override String replyTo({required Object user}) => 'Antwort an ${user}';
	@override String quoteOf({required Object user}) => 'Zitat von ${user}s Notiz';
	@override String get saveToDraft => 'Als Entwurf speichern';
	@override String get restoreFromDraft => 'Aus Entwurf wiederherstellen';
	@override String get restore => 'Wiederherstellen';
	@override String get listDrafts => 'Liste der Entwürfe';
}

// Path: misskey.qr_
class _TranslationsMisskeyQrDeDe extends TranslationsMisskeyQrEnUs {
	_TranslationsMisskeyQrDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get showTabTitle => 'Anzeigeart';
	@override String get raw => 'Text';
}

// Path: misskey.imageEditing_.vars_
class _TranslationsMisskeyImageEditingVarsDeDe extends TranslationsMisskeyImageEditingVarsEnUs {
	_TranslationsMisskeyImageEditingVarsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get filename => 'Dateiname';
}

// Path: misskey.chat_.chatAllowedUsers_
class _TranslationsMisskeyChatChatAllowedUsersDeDe extends TranslationsMisskeyChatChatAllowedUsersEnUs {
	_TranslationsMisskeyChatChatAllowedUsersDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get everyone => 'Jeder';
	@override String get followers => 'Nur deine Follower';
	@override String get following => 'Nur Benutzer, denen du folgst';
	@override String get mutual => 'Nur Benutzer, die sich gegenseitig folgen';
	@override String get none => 'Niemand';
}

// Path: misskey.settings_.chat_
class _TranslationsMisskeySettingsChatDeDe extends TranslationsMisskeySettingsChatEnUs {
	_TranslationsMisskeySettingsChatDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get showSenderName => 'Name des Absenders anzeigen';
	@override String get sendOnEnter => 'Eingabetaste sendet Nachricht';
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypeDeDe extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypeDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get none => 'Wird veröffentlicht';
	@override String get manuallySuspended => 'Manuell gesperrt';
	@override String get goneSuspended => 'Gesperrt wegen Löschung des Servers';
	@override String get autoSuspendedForNotResponding => 'Gesperrt, weil der Server nicht antwortet';
	@override String get softwareSuspended => 'Ausgesetzt, weil die Software nicht mehr beliefert wird';
}

// Path: misskey.bubbleGame_.score_
class _TranslationsMisskeyBubbleGameScoreDeDe extends TranslationsMisskeyBubbleGameScoreEnUs {
	_TranslationsMisskeyBubbleGameScoreDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get score => 'Spielstand';
	@override String get scoreYen => 'Verdienter Geldbetrag';
	@override String get highScore => 'Höchstpunktzahl';
	@override String get maxChain => 'Maximale Anzahl an Verkettungen';
	@override String yen({required Object yen}) => '${yen} Yen';
	@override String estimatedQty({required Object qty}) => '${qty} Stück';
	@override String scoreSweets({required Object onigiriQtyWithUnit}) => '${onigiriQtyWithUnit} Onigiri';
}

// Path: misskey.bubbleGame_.howToPlay_
class _TranslationsMisskeyBubbleGameHowToPlayDeDe extends TranslationsMisskeyBubbleGameHowToPlayEnUs {
	_TranslationsMisskeyBubbleGameHowToPlayDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get section1 => 'Passe die Position an und lasse das Objekt in das Spielfeld fallen.';
	@override String get section2 => 'Wenn sich zwei Objekte der gleichen Art berühren, verwandeln sie sich in ein anderes Objekt und du bekommst Punkte.';
	@override String get section3 => 'Das Spiel ist vorbei, wenn die Objekte aus dem Spielfeld herausragen. Versuche eine hohe Punktzahl zu erreichen, indem du die Objekte miteinander verschmelzt, ohne dass das Spielfeld überläuft!';
}

// Path: misskey.initialTutorial_.landing_
class _TranslationsMisskeyInitialTutorialLandingDeDe extends TranslationsMisskeyInitialTutorialLandingEnUs {
	_TranslationsMisskeyInitialTutorialLandingDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Willkommen zum Tutorial';
	@override String get description => 'Hier kannst du sehen, wie Misskey funktioniert';
}

// Path: misskey.initialTutorial_.note_
class _TranslationsMisskeyInitialTutorialNoteDeDe extends TranslationsMisskeyInitialTutorialNoteEnUs {
	_TranslationsMisskeyInitialTutorialNoteDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Was sind Notizen?';
	@override String get description => 'Beiträge auf Misskey heißen "Notizen". Notizen werden chronologisch in der Chronik angeordnet und in Echtzeit aktualisiert.';
	@override String get reply => 'Klicke auf diesen Button, um auf eine Nachricht zu antworten. Es ist auch möglich, auf Antworten zu antworten und die Unterhaltung wie einen Thread fortzusetzen.';
	@override String get renote => 'Du kannst diese Notiz in deiner eigenen Chronik teilen. Du kannst sie auch mit deinen Kommentaren zitieren.';
	@override String get reaction => 'Du kannst der Notiz Reaktionen hinzufügen. Weitere Einzelheiten werden auf der nächsten Seite erläutert.';
	@override String get menu => 'Du kannst Details zu Notizen anzeigen, Links kopieren und verschiedene andere Aktionen durchführen.';
}

// Path: misskey.initialTutorial_.reaction_
class _TranslationsMisskeyInitialTutorialReactionDeDe extends TranslationsMisskeyInitialTutorialReactionEnUs {
	_TranslationsMisskeyInitialTutorialReactionDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Was sind Reaktionen?';
	@override String get description => 'Auf Notizen kann mit verschiedenen Emojis reagiert werden. Reaktionen ermöglichen es dir, Nuancen auszudrücken, die mit einem einfachen „Gefällt mir“ vielleicht nicht ausgedrückt werden können.';
	@override String get letsTryReacting => 'Reaktionen können durch Klicken auf die Schaltfläche „+“ in der Notiz hinzugefügt werden. Versuche, auf diese Beispielnotiz zu reagieren!';
	@override String get reactToContinue => 'Füge eine Reaktion hinzu, um fortzufahren.';
	@override String get reactNotification => 'Du erhältst Echtzeit-Benachrichtigungen, wenn jemand auf deine Notiz reagiert.';
	@override String get reactDone => 'Du kannst eine Reaktion zurücknehmen, indem du auf den \'-\' Button drückst.';
}

// Path: misskey.initialTutorial_.timeline_
class _TranslationsMisskeyInitialTutorialTimelineDeDe extends TranslationsMisskeyInitialTutorialTimelineEnUs {
	_TranslationsMisskeyInitialTutorialTimelineDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'So funktionieren die Chroniken';
	@override String get description1 => 'Misskey stellt mehrere Chroniken bereit (einige können je nach den Richtlinien des Servers nicht verfügbar sein).';
	@override String get home => 'Du kannst Beiträge von den Konten sehen, denen du folgst.';
	@override String get local => 'Du kannst Beiträge aller Benutzer auf diesem Server sehen.';
	@override String get social => 'Notizen von der Startseite und der lokalen Chronik werden angezeigt.';
	@override String get global => 'Du kannst Notizen von allen föderierten Servern sehen.';
	@override String get description2 => 'Du kannst jederzeit am oberen Rand des Bildschirms zwischen den jeweiligen Chroniken wechseln.';
	@override String description3({required Object link}) => 'Darüber hinaus gibt es Listen-Chroniken und Kanal-Chroniken. Weitere Einzelheiten findest du unter ${link}.';
}

// Path: misskey.initialTutorial_.postNote_
class _TranslationsMisskeyInitialTutorialPostNoteDeDe extends TranslationsMisskeyInitialTutorialPostNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Optionen bei Abschicken einer Notiz';
	@override String get description1 => 'Wenn du eine Notiz auf Misskey veröffentlichst, stehen dir verschiedene Optionen zur Verfügung. Die Oberfläche sieht folgendermaßen aus.';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteVisibilityDeDe visibility_ = _TranslationsMisskeyInitialTutorialPostNoteVisibilityDeDe._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwDeDe cw_ = _TranslationsMisskeyInitialTutorialPostNoteCwDeDe._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveDeDe extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wie markiert man Anhänge als sensibel?';
	@override String get description => 'Markiere Anhänge als sensibel, die aufgrund von den Serverregeln nicht sichtbar sein sollen.';
	@override String get tryThisFile => 'Versuche, das angehängte Bild als sensibel zu markieren!';
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteDeDe exampleNote_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteDeDe._(_root);
	@override String get method => 'Um einen Anhang als sensibel zu kennzeichnen, klicke auf das Vorschaubild der Datei, um das Menü zu öffnen, und klicke auf „Als sensibel markieren“.';
	@override String get sensitiveSucceeded => 'Wenn du Dateien anhängst, stelle bitte die Sensibilität entsprechend der Serverrichtlinien ein.';
	@override String get doItToContinue => 'Markiere die angehängte Datei als sensibel, um fortzufahren.';
}

// Path: misskey.initialTutorial_.done_
class _TranslationsMisskeyInitialTutorialDoneDeDe extends TranslationsMisskeyInitialTutorialDoneEnUs {
	_TranslationsMisskeyInitialTutorialDoneDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du hast das Tutorial abgeschlossen! 🎉';
	@override String description({required Object link}) => 'Die hier beschriebenen Funktionen sind nur ein kleiner Teil dessen, was Misskey zu bieten hat; um mehr darüber zu erfahren, wie du Misskey benutzen kannst, besuche bitte ${link}.';
}

// Path: misskey.serverSettings_.userGeneratedContentsVisibilityForVisitor_
class _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorDeDe extends TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorEnUs {
	_TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get all => 'Alles ist öffentlich';
	@override String get localOnly => 'Nur lokale Inhalte werden veröffentlicht, fremde Inhalte bleiben privat';
	@override String get none => 'Alles ist privat';
}

// Path: misskey.achievements_.types_
class _TranslationsMisskeyAchievementsTypesDeDe extends TranslationsMisskeyAchievementsTypesEnUs {
	_TranslationsMisskeyAchievementsTypesDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesNotes1DeDe notes1_ = _TranslationsMisskeyAchievementsTypesNotes1DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10DeDe notes10_ = _TranslationsMisskeyAchievementsTypesNotes10DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100DeDe notes100_ = _TranslationsMisskeyAchievementsTypesNotes100DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes500DeDe notes500_ = _TranslationsMisskeyAchievementsTypesNotes500DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes1000DeDe notes1000_ = _TranslationsMisskeyAchievementsTypesNotes1000DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes5000DeDe notes5000_ = _TranslationsMisskeyAchievementsTypesNotes5000DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10000DeDe notes10000_ = _TranslationsMisskeyAchievementsTypesNotes10000DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes20000DeDe notes20000_ = _TranslationsMisskeyAchievementsTypesNotes20000DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes30000DeDe notes30000_ = _TranslationsMisskeyAchievementsTypesNotes30000DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes40000DeDe notes40000_ = _TranslationsMisskeyAchievementsTypesNotes40000DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes50000DeDe notes50000_ = _TranslationsMisskeyAchievementsTypesNotes50000DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes60000DeDe notes60000_ = _TranslationsMisskeyAchievementsTypesNotes60000DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes70000DeDe notes70000_ = _TranslationsMisskeyAchievementsTypesNotes70000DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes80000DeDe notes80000_ = _TranslationsMisskeyAchievementsTypesNotes80000DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes90000DeDe notes90000_ = _TranslationsMisskeyAchievementsTypesNotes90000DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100000DeDe notes100000_ = _TranslationsMisskeyAchievementsTypesNotes100000DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin3DeDe login3_ = _TranslationsMisskeyAchievementsTypesLogin3DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin7DeDe login7_ = _TranslationsMisskeyAchievementsTypesLogin7DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin15DeDe login15_ = _TranslationsMisskeyAchievementsTypesLogin15DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin30DeDe login30_ = _TranslationsMisskeyAchievementsTypesLogin30DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin60DeDe login60_ = _TranslationsMisskeyAchievementsTypesLogin60DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin100DeDe login100_ = _TranslationsMisskeyAchievementsTypesLogin100DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin200DeDe login200_ = _TranslationsMisskeyAchievementsTypesLogin200DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin300DeDe login300_ = _TranslationsMisskeyAchievementsTypesLogin300DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin400DeDe login400_ = _TranslationsMisskeyAchievementsTypesLogin400DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin500DeDe login500_ = _TranslationsMisskeyAchievementsTypesLogin500DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin600DeDe login600_ = _TranslationsMisskeyAchievementsTypesLogin600DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin700DeDe login700_ = _TranslationsMisskeyAchievementsTypesLogin700DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin800DeDe login800_ = _TranslationsMisskeyAchievementsTypesLogin800DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin900DeDe login900_ = _TranslationsMisskeyAchievementsTypesLogin900DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin1000DeDe login1000_ = _TranslationsMisskeyAchievementsTypesLogin1000DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteClipped1DeDe noteClipped1_ = _TranslationsMisskeyAchievementsTypesNoteClipped1DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteFavorited1DeDe noteFavorited1_ = _TranslationsMisskeyAchievementsTypesNoteFavorited1DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMyNoteFavorited1DeDe myNoteFavorited1_ = _TranslationsMisskeyAchievementsTypesMyNoteFavorited1DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesProfileFilledDeDe profileFilled_ = _TranslationsMisskeyAchievementsTypesProfileFilledDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMarkedAsCatDeDe markedAsCat_ = _TranslationsMisskeyAchievementsTypesMarkedAsCatDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing1DeDe following1_ = _TranslationsMisskeyAchievementsTypesFollowing1DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing10DeDe following10_ = _TranslationsMisskeyAchievementsTypesFollowing10DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing50DeDe following50_ = _TranslationsMisskeyAchievementsTypesFollowing50DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing100DeDe following100_ = _TranslationsMisskeyAchievementsTypesFollowing100DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing300DeDe following300_ = _TranslationsMisskeyAchievementsTypesFollowing300DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1DeDe followers1_ = _TranslationsMisskeyAchievementsTypesFollowers1DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers10DeDe followers10_ = _TranslationsMisskeyAchievementsTypesFollowers10DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers50DeDe followers50_ = _TranslationsMisskeyAchievementsTypesFollowers50DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers100DeDe followers100_ = _TranslationsMisskeyAchievementsTypesFollowers100DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers300DeDe followers300_ = _TranslationsMisskeyAchievementsTypesFollowers300DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers500DeDe followers500_ = _TranslationsMisskeyAchievementsTypesFollowers500DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1000DeDe followers1000_ = _TranslationsMisskeyAchievementsTypesFollowers1000DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCollectAchievements30DeDe collectAchievements30_ = _TranslationsMisskeyAchievementsTypesCollectAchievements30DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewAchievements3minDeDe viewAchievements3min_ = _TranslationsMisskeyAchievementsTypesViewAchievements3minDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesILoveMisskeyDeDe iLoveMisskey_ = _TranslationsMisskeyAchievementsTypesILoveMisskeyDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFoundTreasureDeDe foundTreasure_ = _TranslationsMisskeyAchievementsTypesFoundTreasureDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient30minDeDe client30min_ = _TranslationsMisskeyAchievementsTypesClient30minDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient60minDeDe client60min_ = _TranslationsMisskeyAchievementsTypesClient60minDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minDeDe noteDeletedWithin1min_ = _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAtLateNightDeDe postedAtLateNight_ = _TranslationsMisskeyAchievementsTypesPostedAtLateNightDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAt0min0secDeDe postedAt0min0sec_ = _TranslationsMisskeyAchievementsTypesPostedAt0min0secDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSelfQuoteDeDe selfQuote_ = _TranslationsMisskeyAchievementsTypesSelfQuoteDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesHtl20npmDeDe htl20npm_ = _TranslationsMisskeyAchievementsTypesHtl20npmDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewInstanceChartDeDe viewInstanceChart_ = _TranslationsMisskeyAchievementsTypesViewInstanceChartDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadDeDe outputHelloWorldOnScratchpad_ = _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOpen3windowsDeDe open3windows_ = _TranslationsMisskeyAchievementsTypesOpen3windowsDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceDeDe driveFolderCircularReference_ = _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesReactWithoutReadDeDe reactWithoutRead_ = _TranslationsMisskeyAchievementsTypesReactWithoutReadDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClickedClickHereDeDe clickedClickHere_ = _TranslationsMisskeyAchievementsTypesClickedClickHereDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesJustPlainLuckyDeDe justPlainLucky_ = _TranslationsMisskeyAchievementsTypesJustPlainLuckyDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSetNameToSyuiloDeDe setNameToSyuilo_ = _TranslationsMisskeyAchievementsTypesSetNameToSyuiloDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1DeDe passedSinceAccountCreated1_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2DeDe passedSinceAccountCreated2_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3DeDe passedSinceAccountCreated3_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3DeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayDeDe loggedInOnBirthday_ = _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayDeDe loggedInOnNewYearsDay_ = _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCookieClickedDeDe cookieClicked_ = _TranslationsMisskeyAchievementsTypesCookieClickedDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBrainDiverDeDe brainDiver_ = _TranslationsMisskeyAchievementsTypesBrainDiverDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonDeDe smashTestNotificationButton_ = _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesTutorialCompletedDeDe tutorialCompleted_ = _TranslationsMisskeyAchievementsTypesTutorialCompletedDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadDeDe bubbleGameExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadDeDe._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadDeDe bubbleGameDoubleExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadDeDe._(_root);
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityDeDe extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get low => 'Niedrig';
	@override String get middle => 'Mittel';
	@override String get high => 'Hoch';
}

// Path: misskey.role_.options_
class _TranslationsMisskeyRoleOptionsDeDe extends TranslationsMisskeyRoleOptionsEnUs {
	_TranslationsMisskeyRoleOptionsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'Kann auf die globale Chronik zugreifen';
	@override String get ltlAvailable => 'Kann auf die lokale Chronik zugreifen';
	@override String get canPublicNote => 'Kann öffentliche Notizen erstellen';
	@override String get mentionMax => 'Maximale Anzahl von Erwähnungen in einer Notiz';
	@override String get canInvite => 'Erstellung von Einladungscodes für diese Instanz';
	@override String get inviteLimit => 'Maximalanzahl an Einladungen';
	@override String get inviteLimitCycle => 'Zyklus des Einladungslimits';
	@override String get inviteExpirationTime => 'Gültigkeitsdauer von Einladungen';
	@override String get canManageCustomEmojis => 'Benutzerdefinierte Emojis verwalten';
	@override String get canManageAvatarDecorations => 'Profilbilddekorationen verwalten';
	@override String get driveCapacity => 'Drive-Kapazität';
	@override String get maxFileSize => 'Maximale Dateigröße, die hochgeladen werden kann';
	@override String get alwaysMarkNsfw => 'Dateien immer als NSFW markieren';
	@override String get canUpdateBioMedia => 'Kann ein Profil- oder ein Bannerbild bearbeiten';
	@override String get pinMax => 'Maximale Anzahl an angehefteten Notizen';
	@override String get antennaMax => 'Maximale Anzahl an Antennen';
	@override String get wordMuteMax => 'Maximale Zeichenlänge für Wortstummschaltungen';
	@override String get webhookMax => 'Maximale Anzahl an Webhooks';
	@override String get clipMax => 'Maximale Anzahl an Clips';
	@override String get noteEachClipsMax => 'Maximale Anzahl an Notizen innerhalb eines Clips';
	@override String get userListMax => 'Maximale Anzahl an Benutzerlisten';
	@override String get userEachUserListsMax => 'Maximale Anzahl an Benutzern in einer Benutzerliste';
	@override String get rateLimitFactor => 'Versuchsanzahl';
	@override String get descriptionOfRateLimitFactor => 'Je niedriger desto weniger restriktiv, je höher destro restriktiver.';
	@override String get canHideAds => 'Kann Werbung ausblenden';
	@override String get canSearchNotes => 'Nutzung der Notizsuchfunktion';
	@override String get canUseTranslator => 'Verwendung des Übersetzers';
	@override String get avatarDecorationLimit => 'Maximale Anzahl an Profilbilddekorationen, die angebracht werden können';
	@override String get canImportAntennas => 'Importieren von Antennen erlauben';
	@override String get canImportBlocking => 'Importieren von Blockierungen zulassen';
	@override String get canImportFollowing => 'Importieren von Gefolgten zulassen';
	@override String get canImportMuting => 'Importieren von Stummgeschalteten zulassen';
	@override String get canImportUserLists => 'Importieren von Listen erlauben';
	@override String get chatAvailability => 'Chatten erlauben';
	@override String get uploadableFileTypes => 'Hochladbare Dateitypen';
	@override String get uploadableFileTypes_caption => 'Gibt die zulässigen MIME-/Dateitypen an. Mehrere MIME-Typen können durch einen Zeilenumbruch getrennt angegeben werden, und Platzhalter können mit einem Sternchen (*) angegeben werden. (z. B. image/*)';
	@override String uploadableFileTypes_caption2({required Object x}) => 'Bei manchen Dateien ist es nicht möglich, den Typ zu bestimmen. Um solche Dateien zuzulassen, füge ${x} der Spezifikation hinzu.';
	@override String get noteDraftLimit => 'Anzahl der möglichen Entwürfe für serverseitige Notizen';
	@override String get watermarkAvailable => 'Kann die Wasserzeichenfunktion verwenden';
}

// Path: misskey.role_.condition_
class _TranslationsMisskeyRoleConditionDeDe extends TranslationsMisskeyRoleConditionEnUs {
	_TranslationsMisskeyRoleConditionDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get roleAssignedTo => 'Manuellen Rollen zugewiesen';
	@override String get isLocal => 'Lokaler Benutzer';
	@override String get isRemote => 'Benutzer fremder Instanz';
	@override String get isCat => 'Katzen-Benutzer';
	@override String get isBot => 'Bot-Benutzer';
	@override String get isSuspended => 'Gesperrter Benutzer';
	@override String get isLocked => 'Private Konten';
	@override String get isExplorable => 'Benutzer, die ihr Konto im "Erkunden"-Bereich sichtbar machen';
	@override String get createdLessThan => 'Kontoerstellung liegt weniger als X zurück';
	@override String get createdMoreThan => 'Kontoerstellung liegt mehr als X zurück';
	@override String get followersLessThanOrEq => 'Hat X oder weniger Follower';
	@override String get followersMoreThanOrEq => 'Hat X oder mehr Follower';
	@override String get followingLessThanOrEq => 'Folgt X oder weniger Benutzern';
	@override String get followingMoreThanOrEq => 'Folgt X oder mehr Benutzern';
	@override String get notesLessThanOrEq => 'Beitragszahl ist kleiner-gleich';
	@override String get notesMoreThanOrEq => 'Beitragszahl ist größer-gleich';
	@override String get and => 'UND-Bedingung';
	@override String get or => 'ODER-Bedingung';
	@override String get not => 'NICHT-Bedingung';
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowDeDe extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du hast einen neuen Follower';
}

// Path: misskey.email_.receiveFollowRequest_
class _TranslationsMisskeyEmailReceiveFollowRequestDeDe extends TranslationsMisskeyEmailReceiveFollowRequestEnUs {
	_TranslationsMisskeyEmailReceiveFollowRequestDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du hast eine Follow-Anfrage erhalten';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysDeDe extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get accent => 'Akzentfarbe';
	@override String get bg => 'Hintergrund';
	@override String get fg => 'Text';
	@override String get focus => 'Fokus';
	@override String get indicator => 'Indikator';
	@override String get panel => 'Panel';
	@override String get shadow => 'Schatten';
	@override String get header => 'Kopfzeile';
	@override String get navBg => 'Hintergrund der Seitenleiste';
	@override String get navFg => 'Text der Seitenleiste';
	@override String get navActive => 'Text der Seitenleiste (Aktiv)';
	@override String get navIndicator => 'Indikator der Seitenleiste';
	@override String get link => 'Link';
	@override String get hashtag => 'Hashtag';
	@override String get mention => 'Erwähnung';
	@override String get mentionMe => 'Erwähnung (Ich)';
	@override String get renote => 'Renote';
	@override String get modalBg => 'Modalhintergrund';
	@override String get divider => 'Trenner';
	@override String get scrollbarHandle => 'Griff des Scrollbalkens';
	@override String get scrollbarHandleHover => 'Griff des Scrollbalkens (Mouseover)';
	@override String get dateLabelFg => 'Text von Datumsbeschriftungen';
	@override String get infoBg => 'Hintergrund von Informationen';
	@override String get infoFg => 'Text von Informationen';
	@override String get infoWarnBg => 'Hintergrund von Warnungen';
	@override String get infoWarnFg => 'Text von Warnungen';
	@override String get toastBg => 'Hintergrund von Benachrichtigungen';
	@override String get toastFg => 'Text von Benachrichtigungen';
	@override String get buttonBg => 'Hintergrund von Schaltflächen';
	@override String get buttonHoverBg => 'Hintergrund von Schaltflächen (Mouseover)';
	@override String get inputBorder => 'Rahmen von Eingabefeldern';
	@override String get badge => 'Wappen';
	@override String get messageBg => 'Hintergrund von Chats';
	@override String get fgHighlighted => 'Hervorgehobener Text';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListDeDe extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Liste auswählen';
}

// Path: misskey.postForm_.howToUse_
class _TranslationsMisskeyPostFormHowToUseDeDe extends TranslationsMisskeyPostFormHowToUseEnUs {
	_TranslationsMisskeyPostFormHowToUseDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get visibility_title => 'Sichtbarkeit';
	@override String get menu_title => 'Menü';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersDeDe extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get a => 'Was machst du momentan?';
	@override String get b => 'Was ist um dich herum los?';
	@override String get c => 'Was geht dir durch den Kopf?';
	@override String get d => 'Was möchtest du sagen?';
	@override String get e => 'Fang an zu schreiben …';
	@override String get f => 'Ich warte darauf, dass du schreibst …';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksDeDe extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Text';
	@override String get textarea => 'Textfeld';
	@override String get section => 'Abschnitt';
	@override String get image => 'Bild';
	@override String get button => 'Knopf';
	@override String get dynamic => 'Dynamische Bausteine';
	@override String dynamicDescription({required Object play}) => 'Dieser Baustein wurde abgeschafft. Bitte verwende von nun an ${play}.';
	@override String get note => 'Eingebettete Notiz';
	@override late final _TranslationsMisskeyPagesBlocksNoteDeDe note_ = _TranslationsMisskeyPagesBlocksNoteDeDe._(_root);
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesDeDe extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get all => 'Alle';
	@override String get note => 'Neue Notizen';
	@override String get follow => 'Neue Follower';
	@override String get mention => 'Erwähnungen';
	@override String get reply => 'Antworten';
	@override String get renote => 'Renotes';
	@override String get quote => 'Zitationen';
	@override String get reaction => 'Reaktionen';
	@override String get pollEnded => 'Ende von Umfragen';
	@override String get receiveFollowRequest => 'Erhaltene Follow-Anfragen';
	@override String get followRequestAccepted => 'Akzeptierte Follow-Anfragen';
	@override String get roleAssigned => 'Rolle zugewiesen';
	@override String get chatRoomInvitationReceived => 'Einladungen zum Chatraum';
	@override String get achievementEarned => 'Errungenschaft freigeschaltet';
	@override String get exportCompleted => 'Der Export ist abgeschlossen';
	@override String get login => 'Anmeldung';
	@override String get createToken => 'Erstellung von Zugriffstokens';
	@override String get test => 'Test-Benachrichtigungen';
	@override String get app => 'Benachrichtigungen von Apps';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsDeDe extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'folgt dir nun auch';
	@override String get reply => 'Antworten';
	@override String get renote => 'Renote';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsDeDe extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get main => 'Hauptspalte';
	@override String get widgets => 'Widgets';
	@override String get notifications => 'Benachrichtigungen';
	@override String get tl => 'Chronik';
	@override String get antenna => 'Antennen';
	@override String get list => 'Listen';
	@override String get channel => 'Kanal';
	@override String get mentions => 'Erwähnungen';
	@override String get direct => 'Direktnachrichten';
	@override String get roleTimeline => 'Rollenchronik';
	@override String get chat => 'Mit dem Benutzer chatten';
}

// Path: misskey.webhookSettings_.events_
class _TranslationsMisskeyWebhookSettingsEventsDeDe extends TranslationsMisskeyWebhookSettingsEventsEnUs {
	_TranslationsMisskeyWebhookSettingsEventsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Wenn du jemandem folgst';
	@override String get followed => 'Wenn dir jemand folgt';
	@override String get note => 'Wenn du eine Notiz schickst';
	@override String get reply => 'Wenn du eine Antwort erhältst';
	@override String get renote => 'Wenn du ein Renote erhältst';
	@override String get reaction => 'Wenn du eine Reaktion erhältst';
	@override String get mention => 'Wenn du erwähnt wirst';
}

// Path: misskey.webhookSettings_.systemEvents_
class _TranslationsMisskeyWebhookSettingsSystemEventsDeDe extends TranslationsMisskeyWebhookSettingsSystemEventsEnUs {
	_TranslationsMisskeyWebhookSettingsSystemEventsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get abuseReport => 'Wenn eine neue Meldung eingeht';
	@override String get abuseReportResolved => 'Wenn eine Meldung gelöst wird';
	@override String get userCreated => 'Beim Anlegen eines Benutzers';
	@override String get inactiveModeratorsWarning => 'Wenn Moderatoren für eine gewisse Zeit inaktiv sind';
	@override String get inactiveModeratorsInvitationOnlyChanged => 'Wenn ein Moderator über einen gewissen Zeitraum inaktiv war und der Server auf Einladungsbasis umgestellt wird';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientDeDe extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get createRecipient => 'Meldungsempfänger hinzufügen';
	@override String get modifyRecipient => 'Bearbeite einen Empfänger für Meldungen';
	@override String get recipientType => 'Art der Benachrichtigung';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeDeDe recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeDeDe._(_root);
	@override String get keywords => 'Schlüsselwort';
	@override String get notifiedUser => 'Zu benachrichtigender Benutzer';
	@override String get notifiedWebhook => 'Zu verwendender Webhook';
	@override String get deleteConfirm => 'Bist du sicher, dass du den Empfänger der Benachrichtigung entfernen möchtest?';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _TranslationsMisskeyExternalResourceInstallerPluginDeDe extends TranslationsMisskeyExternalResourceInstallerPluginEnUs {
	_TranslationsMisskeyExternalResourceInstallerPluginDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Möchtest du dieses Plugin installieren?';
}

// Path: misskey.externalResourceInstaller_.theme_
class _TranslationsMisskeyExternalResourceInstallerThemeDeDe extends TranslationsMisskeyExternalResourceInstallerThemeEnUs {
	_TranslationsMisskeyExternalResourceInstallerThemeDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Möchten du dieses Farbschema installieren?';
}

// Path: misskey.externalResourceInstaller_.meta_
class _TranslationsMisskeyExternalResourceInstallerMetaDeDe extends TranslationsMisskeyExternalResourceInstallerMetaEnUs {
	_TranslationsMisskeyExternalResourceInstallerMetaDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get base => 'Farbschemavorlage';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _TranslationsMisskeyExternalResourceInstallerVendorInfoDeDe extends TranslationsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_TranslationsMisskeyExternalResourceInstallerVendorInfoDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vertreiber';
	@override String get endpoint => 'Referenzierter Endpunkt';
	@override String get hashVerify => 'Hash-Verifikation';
}

// Path: misskey.externalResourceInstaller_.errors_
class _TranslationsMisskeyExternalResourceInstallerErrorsDeDe extends TranslationsMisskeyExternalResourceInstallerErrorsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsDeDe invalidParams_ = _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsDeDe._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedDeDe resourceTypeNotSupported_ = _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedDeDe._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchDeDe failedToFetch_ = _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchDeDe._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedDeDe hashUnmatched_ = _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedDeDe._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedDeDe pluginParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedDeDe._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedDeDe pluginInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedDeDe._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedDeDe themeParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedDeDe._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedDeDe themeInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedDeDe._(_root);
}

// Path: misskey.dataSaver_.media_
class _TranslationsMisskeyDataSaverMediaDeDe extends TranslationsMisskeyDataSaverMediaEnUs {
	_TranslationsMisskeyDataSaverMediaDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Laden von Medien verhindern';
	@override String get description => 'Verhindert, dass Bilder/Videos automatisch geladen werden. Ausgeblendete Bilder/Videos werden geladen, wenn du auf sie tippst.';
}

// Path: misskey.dataSaver_.avatar_
class _TranslationsMisskeyDataSaverAvatarDeDe extends TranslationsMisskeyDataSaverAvatarEnUs {
	_TranslationsMisskeyDataSaverAvatarDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Animierte Profilbilder deaktivieren';
	@override String get description => 'Die Animation von Profilbildern wird angehalten. Da animierte Bilder eine größere Dateigröße haben können als normale Bilder, kann dies den Datenverkehr weiter reduzieren.';
}

// Path: misskey.dataSaver_.urlPreviewThumbnail_
class _TranslationsMisskeyDataSaverUrlPreviewThumbnailDeDe extends TranslationsMisskeyDataSaverUrlPreviewThumbnailEnUs {
	_TranslationsMisskeyDataSaverUrlPreviewThumbnailDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL-Vorschaubilder ausblenden';
	@override String get description => 'URL-Vorschaubilder werden nicht mehr geladen.';
}

// Path: misskey.dataSaver_.disableUrlPreview_
class _TranslationsMisskeyDataSaverDisableUrlPreviewDeDe extends TranslationsMisskeyDataSaverDisableUrlPreviewEnUs {
	_TranslationsMisskeyDataSaverDisableUrlPreviewDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL-Vorschau deaktivieren';
	@override String get description => 'Deaktiviert die URL-Vorschaufunktion. Anders als bei reinen Vorschaubildern wird dadurch das Laden der verlinkten Informationen selbst reduziert.';
}

// Path: misskey.dataSaver_.code_
class _TranslationsMisskeyDataSaverCodeDeDe extends TranslationsMisskeyDataSaverCodeEnUs {
	_TranslationsMisskeyDataSaverCodeDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Code-Hervorhebungen ausblenden';
	@override String get description => 'Wenn Code-Hervorhebungen in MFM usw. verwendet werden, werden sie erst geladen, wenn sie angetippt werden. Die Syntaxhervorhebung erfordert das Herunterladen der Definitionsdateien für jede Programmiersprache. Es ist daher zu erwarten, dass die Deaktivierung des automatischen Ladens dieser Dateien die Menge des Datenverkehrs reduziert.';
}

// Path: misskey.gridComponent_.error_
class _TranslationsMisskeyGridComponentErrorDeDe extends TranslationsMisskeyGridComponentErrorEnUs {
	_TranslationsMisskeyGridComponentErrorDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get requiredValue => 'Dieser Wert ist ein Pflichtfeld';
	@override String get columnTypeNotSupport => 'Die Validierung regulärer Ausdrücke wird nur für Spalten vom Typ "Text" unterstützt.';
	@override String patternNotMatch({required Object pattern}) => 'Dieser Wert stimmt nicht mit dem Schema in ${pattern} überein';
	@override String get notUnique => 'Dieser Wert muss eindeutig sein';
}

// Path: misskey.customEmojisManager_.gridCommon_
class _TranslationsMisskeyCustomEmojisManagerGridCommonDeDe extends TranslationsMisskeyCustomEmojisManagerGridCommonEnUs {
	_TranslationsMisskeyCustomEmojisManagerGridCommonDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get copySelectionRows => 'Ausgewählte Zeilen kopieren';
	@override String get copySelectionRanges => 'Auswahl kopieren';
	@override String get deleteSelectionRows => 'Ausgewählte Zeilen löschen';
	@override String get deleteSelectionRanges => 'Zeilen in der Auswahl löschen';
	@override String get searchSettings => 'Sucheinstellungen';
	@override String get searchSettingCaption => 'Detaillierte Suchkriterien festlegen.';
	@override String get searchLimit => 'Anzahl der Ergebnisse';
	@override String get sortOrder => 'Sortierung';
	@override String get registrationLogs => 'Registrierungsprotokoll';
	@override String get registrationLogsCaption => 'Protokolle werden beim Aktualisieren oder Löschen von Emojis angezeigt. Sie verschwinden nach dem Aktualisieren oder Löschen, dem Wechsel zu einer neuen Seite oder dem Neuladen.';
	@override String get alertEmojisRegisterFailedDescription => 'Emoji konnte nicht aktualisiert oder gelöscht werden. Bitte prüfe das Registrierungsprotokoll für Details.';
}

// Path: misskey.customEmojisManager_.logs_
class _TranslationsMisskeyCustomEmojisManagerLogsDeDe extends TranslationsMisskeyCustomEmojisManagerLogsEnUs {
	_TranslationsMisskeyCustomEmojisManagerLogsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get showSuccessLogSwitch => 'Erfolgsprotokoll zeigen';
	@override String get failureLogNothing => 'Es gibt kein Fehlerprotokoll.';
	@override String get logNothing => 'Keine Protokoll-Einträge.';
}

// Path: misskey.customEmojisManager_.remote_
class _TranslationsMisskeyCustomEmojisManagerRemoteDeDe extends TranslationsMisskeyCustomEmojisManagerRemoteEnUs {
	_TranslationsMisskeyCustomEmojisManagerRemoteDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get selectionRowDetail => 'Details der ausgewählten Zeile';
	@override String get importSelectionRows => 'Ausgewählte Zeilen importieren';
	@override String get importSelectionRangesRows => 'Zeilen in der Auswahl importieren';
	@override String get importEmojisButton => 'Ausgewählte Emojis importieren';
	@override String get confirmImportEmojisTitle => 'Emojis importieren';
	@override String confirmImportEmojisDescription({required Object count}) => 'Importiere ${count} Emoji(s), die von entfernten Server empfangen wurden. Bitte achte genau auf die Lizenz der Emojis. Bist du sicher, dass du fortfahren möchtest?';
}

// Path: misskey.customEmojisManager_.local_
class _TranslationsMisskeyCustomEmojisManagerLocalDeDe extends TranslationsMisskeyCustomEmojisManagerLocalEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get tabTitleList => 'Hinzugefügte Emojis';
	@override String get tabTitleRegister => 'Emojis hinzufügen';
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalListDeDe list_ = _TranslationsMisskeyCustomEmojisManagerLocalListDeDe._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalRegisterDeDe register_ = _TranslationsMisskeyCustomEmojisManagerLocalRegisterDeDe._(_root);
}

// Path: misskey.remoteLookupErrors_.federationNotAllowed_
class _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedDeDe extends TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kommunikation mit diesem Server nicht möglich';
	@override String get description => 'Möglicherweise wurde die Kommunikation mit diesem Server deaktiviert oder dieser Server ist blockiert.\nWende dich bitte an den Serveradministrator.';
}

// Path: misskey.remoteLookupErrors_.uriInvalid_
class _TranslationsMisskeyRemoteLookupErrorsUriInvalidDeDe extends TranslationsMisskeyRemoteLookupErrorsUriInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsUriInvalidDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'URI ist fehlerhaft';
	@override String get description => 'Es gibt ein Problem mit der von dir eingegebenen URI. Bitte prüfe, ob du Zeichen eingegeben hast, die in der URI nicht verwendet werden können.';
}

// Path: misskey.remoteLookupErrors_.requestFailed_
class _TranslationsMisskeyRemoteLookupErrorsRequestFailedDeDe extends TranslationsMisskeyRemoteLookupErrorsRequestFailedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsRequestFailedDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anfrage fehlgeschlagen';
	@override String get description => 'Die Kommunikation mit diesem Server ist fehlgeschlagen. Der Server ist möglicherweise nicht erreichbar. Bitte vergewissere dich auch, dass du keine ungültige oder nicht existierende URI eingegeben hast.';
}

// Path: misskey.remoteLookupErrors_.responseInvalid_
class _TranslationsMisskeyRemoteLookupErrorsResponseInvalidDeDe extends TranslationsMisskeyRemoteLookupErrorsResponseInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsResponseInvalidDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Die Antwort ist ungültig';
	@override String get description => 'Die Kommunikation mit dem Server war erfolgreich, aber die erhaltenen Daten waren nicht korrekt. Wenn du Remote-Inhalte über einen Server eines Dritten abfragst, verwende bitte erneut eine URI, die vom Ursprungsserver abgerufen werden kann.';
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectDeDe extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nicht gefunden';
	@override String get description => 'Die angeforderte Ressource konnte nicht gefunden werden, bitte überprüfe die URI erneut.';
}

// Path: misskey.captcha_.error_
class _TranslationsMisskeyCaptchaErrorDeDe extends TranslationsMisskeyCaptchaErrorEnUs {
	_TranslationsMisskeyCaptchaErrorDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCaptchaErrorRequestFailedDeDe requestFailed_ = _TranslationsMisskeyCaptchaErrorRequestFailedDeDe._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorVerificationFailedDeDe verificationFailed_ = _TranslationsMisskeyCaptchaErrorVerificationFailedDeDe._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorUnknownDeDe unknown_ = _TranslationsMisskeyCaptchaErrorUnknownDeDe._(_root);
}

// Path: misskey.serverSetupWizard_.use_
class _TranslationsMisskeyServerSetupWizardUseDeDe extends TranslationsMisskeyServerSetupWizardUseEnUs {
	_TranslationsMisskeyServerSetupWizardUseDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get single => 'Ein-Personen-Server';
	@override String get single_description => 'Verwende den Server alleine als deinen eigenen.';
	@override String get single_youCanCreateMultipleAccounts => 'Bei Bedarf können mehrere Konten eingerichtet werden, auch wenn es sich um einen Ein-Personen-Server handelt.';
	@override String get group => 'Gruppenserver';
	@override String get group_description => 'Lade andere vertrauenswürdige Benutzer ein und verwende es mit mehreren Personen.';
	@override String get open => 'Offener Server';
	@override String get open_description => 'Registrierung für alle öffnen.';
}

// Path: misskey.serverSetupWizard_.scale_
class _TranslationsMisskeyServerSetupWizardScaleDeDe extends TranslationsMisskeyServerSetupWizardScaleEnUs {
	_TranslationsMisskeyServerSetupWizardScaleDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get small => 'Weniger als 100 (kleiner Maßstab)';
	@override String get medium => 'Mehr als 100 und weniger als 1000 Benutzer (mittelgroß)';
	@override String get large => 'Mehr als 1000 (großer Maßstab)';
}

// Path: misskey.serverSetupWizard_.donationRequest_
class _TranslationsMisskeyServerSetupWizardDonationRequestDeDe extends TranslationsMisskeyServerSetupWizardDonationRequestEnUs {
	_TranslationsMisskeyServerSetupWizardDonationRequestDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Misskey ist eine freie Software, die von Freiwilligen entwickelt wird.';
	@override String get text2 => 'Wir würden uns über deine Unterstützung freuen, damit wir dieses Projekt auch in Zukunft weiterentwickeln können.';
	@override String get text3 => 'Für Unterstützer gibt es auch besondere Vorteile!';
}

// Path: misskey.imageEffector_.fxs_
class _TranslationsMisskeyImageEffectorFxsDeDe extends TranslationsMisskeyImageEffectorFxsEnUs {
	_TranslationsMisskeyImageEffectorFxsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get chromaticAberration => 'Chromatische Abweichung';
	@override String get glitch => 'Glitch';
	@override String get mirror => 'Spiegeln';
	@override String get invert => 'Farben umkehren';
	@override String get grayscale => 'Schwarzweiß';
	@override String get colorAdjust => 'Farbkorrektur';
	@override String get colorClamp => 'Farbkomprimierung';
	@override String get colorClampAdvanced => 'Farbkomprimierung (erweitert)';
	@override String get distort => 'Verzerrung';
	@override String get stripe => 'Streifen';
	@override String get polkadot => 'Punktmuster';
}

// Path: misskey.imageEffector_.fxProps_
class _TranslationsMisskeyImageEffectorFxPropsDeDe extends TranslationsMisskeyImageEffectorFxPropsEnUs {
	_TranslationsMisskeyImageEffectorFxPropsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get angle => 'Winkel';
	@override String get scale => 'Größe';
	@override String get size => 'Größe';
	@override String get offset => 'Position';
	@override String get color => 'Farbe';
	@override String get opacity => 'Transparenz';
	@override String get lightness => 'Erhellen';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _TranslationsMisskeyInitialTutorialPostNoteVisibilityDeDe extends TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteVisibilityDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Du kannst einschränken, wer deine Notiz sehen kann.';
	@override String get public => 'Deine Notiz wird für alle Nutzer sichtbar sein.';
	@override String get home => 'Nur auf der Startseite sichtbar. Kann von Followern, Profilbesuchern und durch Renotes gesehen werden.';
	@override String get followers => 'Nur für Follower sichtbar. Nur Follower können es sehen und niemand sonst, und es kann nicht von anderen gerenoted werden.';
	@override String get direct => 'Die Notiz wird nur für den angegebenen Benutzer veröffentlicht und der Empfänger wird benachrichtigt. Kann anstelle von Direktnachrichten verwendet werden.';
	@override String get doNotSendConfidencialOnDirect1 => 'Sei vorsichtig, wenn du sensible Informationen verschickst!';
	@override String get doNotSendConfidencialOnDirect2 => 'Die Administratoren des Servers können den Inhalt der Notiz sehen. Sei vorsichtig mit sensiblen Informationen, wenn du Direktnachrichten an Benutzer auf nicht vertrauenswürdigen Servern sendest.';
	@override String get localOnly => 'Wenn du eine Notiz mit dieser Einstellung veröffentlichst, wird sie nicht an andere Server weitergeleitet. Benutzer auf anderen Servern können diese Notizen nicht direkt sehen, unabhängig von den obigen Anzeigeeinstellungen.';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _TranslationsMisskeyInitialTutorialPostNoteCwDeDe extends TranslationsMisskeyInitialTutorialPostNoteCwEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inhaltswarnung';
	@override String get description => 'Anstelle des Textes wird das angezeigt, was du im Abschnitt „Anmerkungen“ angibst. Drücke auf „Inhalt anzeigen“, um den vollständigen Text zu sehen.';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteDeDe exampleNote_ = _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteDeDe._(_root);
	@override String get useCases => 'Dient zur Kennzeichnung von Notizen, wie sie in den Serverrichtlinien vorgeschrieben sind, oder zur eigenen Festlegung von Spoiler-Beiträgen oder sensiblem Text.';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteDeDe extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get note => 'Ups, ich habe es vergeigt, den Natto-Deckel zu öffnen...';
}

// Path: misskey.achievements_.types_.notes1_
class _TranslationsMisskeyAchievementsTypesNotes1DeDe extends TranslationsMisskeyAchievementsTypesNotes1EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hallo Misskey!';
	@override String get description => 'Sende deine erste Notiz';
	@override String get flavor => 'Hab eine schöne Zeit mit Misskey!';
}

// Path: misskey.achievements_.types_.notes10_
class _TranslationsMisskeyAchievementsTypesNotes10DeDe extends TranslationsMisskeyAchievementsTypesNotes10EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ein paar Notizen';
	@override String get description => '10 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes100_
class _TranslationsMisskeyAchievementsTypesNotes100DeDe extends TranslationsMisskeyAchievementsTypesNotes100EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Viele Notizen';
	@override String get description => '100 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes500_
class _TranslationsMisskeyAchievementsTypesNotes500DeDe extends TranslationsMisskeyAchievementsTypesNotes500EnUs {
	_TranslationsMisskeyAchievementsTypesNotes500DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Überschüttet mit Notizen';
	@override String get description => '500 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes1000_
class _TranslationsMisskeyAchievementsTypesNotes1000DeDe extends TranslationsMisskeyAchievementsTypesNotes1000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1000DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Berg an Notizen';
	@override String get description => '1.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes5000_
class _TranslationsMisskeyAchievementsTypesNotes5000DeDe extends TranslationsMisskeyAchievementsTypesNotes5000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes5000DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Überquellende Notizen';
	@override String get description => '5.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes10000_
class _TranslationsMisskeyAchievementsTypesNotes10000DeDe extends TranslationsMisskeyAchievementsTypesNotes10000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10000DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supernotiz';
	@override String get description => '10.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes20000_
class _TranslationsMisskeyAchievementsTypesNotes20000DeDe extends TranslationsMisskeyAchievementsTypesNotes20000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes20000DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brauche... mehr... Notizen...';
	@override String get description => '20.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes30000_
class _TranslationsMisskeyAchievementsTypesNotes30000DeDe extends TranslationsMisskeyAchievementsTypesNotes30000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes30000DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notizen, Notizen, Notizen';
	@override String get description => '30.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes40000_
class _TranslationsMisskeyAchievementsTypesNotes40000DeDe extends TranslationsMisskeyAchievementsTypesNotes40000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes40000DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notizfabrik';
	@override String get description => '40.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes50000_
class _TranslationsMisskeyAchievementsTypesNotes50000DeDe extends TranslationsMisskeyAchievementsTypesNotes50000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes50000DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Planet der Notizen';
	@override String get description => '50.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes60000_
class _TranslationsMisskeyAchievementsTypesNotes60000DeDe extends TranslationsMisskeyAchievementsTypesNotes60000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes60000DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notizquasar';
	@override String get description => '60.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes70000_
class _TranslationsMisskeyAchievementsTypesNotes70000DeDe extends TranslationsMisskeyAchievementsTypesNotes70000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes70000DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Schwarzes Notizloch';
	@override String get description => '70.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes80000_
class _TranslationsMisskeyAchievementsTypesNotes80000DeDe extends TranslationsMisskeyAchievementsTypesNotes80000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes80000DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notizgalaxie';
	@override String get description => '80.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes90000_
class _TranslationsMisskeyAchievementsTypesNotes90000DeDe extends TranslationsMisskeyAchievementsTypesNotes90000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes90000DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notizversum';
	@override String get description => '90.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes100000_
class _TranslationsMisskeyAchievementsTypesNotes100000DeDe extends TranslationsMisskeyAchievementsTypesNotes100000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100000DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => '100.000 Notizen gesendet';
	@override String get flavor => 'Du hast wirklich viel zu sagen.';
}

// Path: misskey.achievements_.types_.login3_
class _TranslationsMisskeyAchievementsTypesLogin3DeDe extends TranslationsMisskeyAchievementsTypesLogin3EnUs {
	_TranslationsMisskeyAchievementsTypesLogin3DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anfänger Ⅰ';
	@override String get description => 'An 3 Tagen eingeloggt';
	@override String get flavor => 'Nenn\' mich ab heute Misskist';
}

// Path: misskey.achievements_.types_.login7_
class _TranslationsMisskeyAchievementsTypesLogin7DeDe extends TranslationsMisskeyAchievementsTypesLogin7EnUs {
	_TranslationsMisskeyAchievementsTypesLogin7DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anfänger Ⅱ';
	@override String get description => 'An 7 Tagen eingeloggt';
	@override String get flavor => 'Na, eingewöht?';
}

// Path: misskey.achievements_.types_.login15_
class _TranslationsMisskeyAchievementsTypesLogin15DeDe extends TranslationsMisskeyAchievementsTypesLogin15EnUs {
	_TranslationsMisskeyAchievementsTypesLogin15DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anfänger Ⅲ';
	@override String get description => 'An 15 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login30_
class _TranslationsMisskeyAchievementsTypesLogin30DeDe extends TranslationsMisskeyAchievementsTypesLogin30EnUs {
	_TranslationsMisskeyAchievementsTypesLogin30DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist Ⅰ';
	@override String get description => 'An 30 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login60_
class _TranslationsMisskeyAchievementsTypesLogin60DeDe extends TranslationsMisskeyAchievementsTypesLogin60EnUs {
	_TranslationsMisskeyAchievementsTypesLogin60DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist Ⅱ';
	@override String get description => 'An 60 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login100_
class _TranslationsMisskeyAchievementsTypesLogin100DeDe extends TranslationsMisskeyAchievementsTypesLogin100EnUs {
	_TranslationsMisskeyAchievementsTypesLogin100DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist Ⅲ';
	@override String get description => 'An 100 Tagen eingeloggt';
	@override String get flavor => 'Violent Misskist';
}

// Path: misskey.achievements_.types_.login200_
class _TranslationsMisskeyAchievementsTypesLogin200DeDe extends TranslationsMisskeyAchievementsTypesLogin200EnUs {
	_TranslationsMisskeyAchievementsTypesLogin200DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stammbesucher Ⅰ';
	@override String get description => 'An 200 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login300_
class _TranslationsMisskeyAchievementsTypesLogin300DeDe extends TranslationsMisskeyAchievementsTypesLogin300EnUs {
	_TranslationsMisskeyAchievementsTypesLogin300DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stammbesucher Ⅱ';
	@override String get description => 'An 300 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login400_
class _TranslationsMisskeyAchievementsTypesLogin400DeDe extends TranslationsMisskeyAchievementsTypesLogin400EnUs {
	_TranslationsMisskeyAchievementsTypesLogin400DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stammbesucher Ⅲ';
	@override String get description => 'An 400 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login500_
class _TranslationsMisskeyAchievementsTypesLogin500DeDe extends TranslationsMisskeyAchievementsTypesLogin500EnUs {
	_TranslationsMisskeyAchievementsTypesLogin500DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veteran Ⅰ';
	@override String get description => 'An 500 Tagen eingeloggt';
	@override String get flavor => 'Meine Kameraden, ich liebe sie, die Notizen.';
}

// Path: misskey.achievements_.types_.login600_
class _TranslationsMisskeyAchievementsTypesLogin600DeDe extends TranslationsMisskeyAchievementsTypesLogin600EnUs {
	_TranslationsMisskeyAchievementsTypesLogin600DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veteran Ⅱ';
	@override String get description => 'An 600 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login700_
class _TranslationsMisskeyAchievementsTypesLogin700DeDe extends TranslationsMisskeyAchievementsTypesLogin700EnUs {
	_TranslationsMisskeyAchievementsTypesLogin700DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veteran Ⅲ';
	@override String get description => 'An 700 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login800_
class _TranslationsMisskeyAchievementsTypesLogin800DeDe extends TranslationsMisskeyAchievementsTypesLogin800EnUs {
	_TranslationsMisskeyAchievementsTypesLogin800DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Meister der Notizen Ⅰ';
	@override String get description => 'An 800 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login900_
class _TranslationsMisskeyAchievementsTypesLogin900DeDe extends TranslationsMisskeyAchievementsTypesLogin900EnUs {
	_TranslationsMisskeyAchievementsTypesLogin900DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Meister der Notizen Ⅱ';
	@override String get description => 'An 900 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login1000_
class _TranslationsMisskeyAchievementsTypesLogin1000DeDe extends TranslationsMisskeyAchievementsTypesLogin1000EnUs {
	_TranslationsMisskeyAchievementsTypesLogin1000DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Meister der Notizen Ⅲ';
	@override String get description => 'An 1000 Tagen eingeloggt';
	@override String get flavor => 'Danke, dass du Misskey nutzt!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _TranslationsMisskeyAchievementsTypesNoteClipped1DeDe extends TranslationsMisskeyAchievementsTypesNoteClipped1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteClipped1DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Muss... clippen...';
	@override String get description => 'Die erste Notiz geclippt';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _TranslationsMisskeyAchievementsTypesNoteFavorited1DeDe extends TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteFavorited1DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sternengucker';
	@override String get description => 'Eine Notiz als Favorit markiert';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _TranslationsMisskeyAchievementsTypesMyNoteFavorited1DeDe extends TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesMyNoteFavorited1DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sternensucher';
	@override String get description => 'Ein anderer Benutzer hat eine deiner Notizen als Favoriten markiert';
}

// Path: misskey.achievements_.types_.profileFilled_
class _TranslationsMisskeyAchievementsTypesProfileFilledDeDe extends TranslationsMisskeyAchievementsTypesProfileFilledEnUs {
	_TranslationsMisskeyAchievementsTypesProfileFilledDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perfekte Vorbereitung';
	@override String get description => 'Fülle dein Profil aus';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _TranslationsMisskeyAchievementsTypesMarkedAsCatDeDe extends TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_TranslationsMisskeyAchievementsTypesMarkedAsCatDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ich der Kater';
	@override String get description => 'Markiere dein Konto als Katze';
	@override String get flavor => 'Einen Namen bekommst du später. ';
}

// Path: misskey.achievements_.types_.following1_
class _TranslationsMisskeyAchievementsTypesFollowing1DeDe extends TranslationsMisskeyAchievementsTypesFollowing1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing1DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Das Folgen beginnt';
	@override String get description => 'Du folgst deiner ersten Person';
}

// Path: misskey.achievements_.types_.following10_
class _TranslationsMisskeyAchievementsTypesFollowing10DeDe extends TranslationsMisskeyAchievementsTypesFollowing10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing10DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Folge ihnen... folge ihnen...';
	@override String get description => 'Du folgst über 10 Leuten';
}

// Path: misskey.achievements_.types_.following50_
class _TranslationsMisskeyAchievementsTypesFollowing50DeDe extends TranslationsMisskeyAchievementsTypesFollowing50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing50DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Viele Freunde';
	@override String get description => 'Du folgst über 50 Leuten';
}

// Path: misskey.achievements_.types_.following100_
class _TranslationsMisskeyAchievementsTypesFollowing100DeDe extends TranslationsMisskeyAchievementsTypesFollowing100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing100DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => '100 Freunde';
	@override String get description => 'Du folgst über 100 Leuten';
}

// Path: misskey.achievements_.types_.following300_
class _TranslationsMisskeyAchievementsTypesFollowing300DeDe extends TranslationsMisskeyAchievementsTypesFollowing300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing300DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Freundeüberschuss';
	@override String get description => 'Du folgst über 300 Leuten';
}

// Path: misskey.achievements_.types_.followers1_
class _TranslationsMisskeyAchievementsTypesFollowers1DeDe extends TranslationsMisskeyAchievementsTypesFollowers1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Der erste Follower';
	@override String get description => 'Du hast deinen ersten Follower erhalten';
}

// Path: misskey.achievements_.types_.followers10_
class _TranslationsMisskeyAchievementsTypesFollowers10DeDe extends TranslationsMisskeyAchievementsTypesFollowers10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers10DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mir nach!';
	@override String get description => 'Die Anzahl deiner Follower hat 10 überschritten';
}

// Path: misskey.achievements_.types_.followers50_
class _TranslationsMisskeyAchievementsTypesFollowers50DeDe extends TranslationsMisskeyAchievementsTypesFollowers50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers50DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wirrwarr';
	@override String get description => 'Die Anzahl deiner Follower hat 50 überschritten';
}

// Path: misskey.achievements_.types_.followers100_
class _TranslationsMisskeyAchievementsTypesFollowers100DeDe extends TranslationsMisskeyAchievementsTypesFollowers100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers100DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beliebt';
	@override String get description => 'Die Anzahl deiner Follower hat 100 überschritten';
}

// Path: misskey.achievements_.types_.followers300_
class _TranslationsMisskeyAchievementsTypesFollowers300DeDe extends TranslationsMisskeyAchievementsTypesFollowers300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers300DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eine geordnete Reihe, bitte!';
	@override String get description => 'Die Anzahl deiner Follower hat 300 überschritten';
}

// Path: misskey.achievements_.types_.followers500_
class _TranslationsMisskeyAchievementsTypesFollowers500DeDe extends TranslationsMisskeyAchievementsTypesFollowers500EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers500DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Funkmast';
	@override String get description => 'Die Anzahl deiner Follower hat 500 überschritten';
}

// Path: misskey.achievements_.types_.followers1000_
class _TranslationsMisskeyAchievementsTypesFollowers1000DeDe extends TranslationsMisskeyAchievementsTypesFollowers1000EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1000DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Influencer';
	@override String get description => 'Die Anzahl deiner Follower hat 1000 überschritten';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _TranslationsMisskeyAchievementsTypesCollectAchievements30DeDe extends TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_TranslationsMisskeyAchievementsTypesCollectAchievements30DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sammler der Errungenschaften';
	@override String get description => 'Schalte 30 Errungenschaften frei';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _TranslationsMisskeyAchievementsTypesViewAchievements3minDeDe extends TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_TranslationsMisskeyAchievementsTypesViewAchievements3minDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fan von Errungenschaften';
	@override String get description => 'Schau dir die Liste deiner Errungenschaften für mindestens 3 Minuten an';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _TranslationsMisskeyAchievementsTypesILoveMisskeyDeDe extends TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_TranslationsMisskeyAchievementsTypesILoveMisskeyDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'I Love Misskey';
	@override String get description => 'Sende "I ❤ #Misskey"';
	@override String get flavor => 'Danke, dass du Misskey verwendest! - vom Entwicklerteam';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _TranslationsMisskeyAchievementsTypesFoundTreasureDeDe extends TranslationsMisskeyAchievementsTypesFoundTreasureEnUs {
	_TranslationsMisskeyAchievementsTypesFoundTreasureDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Schatzsuche';
	@override String get description => 'Du hast einen verborgenen Schatz gefunden';
}

// Path: misskey.achievements_.types_.client30min_
class _TranslationsMisskeyAchievementsTypesClient30minDeDe extends TranslationsMisskeyAchievementsTypesClient30minEnUs {
	_TranslationsMisskeyAchievementsTypesClient30minDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kurze Pause';
	@override String get description => 'Habe Misskey für mindestens 30 Minuten geöffnet';
}

// Path: misskey.achievements_.types_.client60min_
class _TranslationsMisskeyAchievementsTypesClient60minDeDe extends TranslationsMisskeyAchievementsTypesClient60minEnUs {
	_TranslationsMisskeyAchievementsTypesClient60minDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Munter mit Misskey';
	@override String get description => 'Habe Misskey für mindestens 60 Minuten geöffnet';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minDeDe extends TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ups';
	@override String get description => 'Lösche eine Notiz innerhalb von 1 Minute nachdem sie gesendet wurde';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _TranslationsMisskeyAchievementsTypesPostedAtLateNightDeDe extends TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAtLateNightDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nachtaktiv';
	@override String get description => 'Sende mitten in der Nacht eine Notiz';
	@override String get flavor => 'Geh bald schlafen.';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _TranslationsMisskeyAchievementsTypesPostedAt0min0secDeDe extends TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAt0min0secDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zeitansage';
	@override String get description => 'Sende um 00:00 eine Notiz';
	@override String get flavor => 'Klick Klick Klick Dooong';
}

// Path: misskey.achievements_.types_.selfQuote_
class _TranslationsMisskeyAchievementsTypesSelfQuoteDeDe extends TranslationsMisskeyAchievementsTypesSelfQuoteEnUs {
	_TranslationsMisskeyAchievementsTypesSelfQuoteDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Selbstzitat';
	@override String get description => 'Zitiere eine eigene Notiz';
}

// Path: misskey.achievements_.types_.htl20npm_
class _TranslationsMisskeyAchievementsTypesHtl20npmDeDe extends TranslationsMisskeyAchievementsTypesHtl20npmEnUs {
	_TranslationsMisskeyAchievementsTypesHtl20npmDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fließende Chronik';
	@override String get description => 'Deine Startseitenchronik erreicht eine Geschwindigkeit von 20 npm (Notizen pro Minute)';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _TranslationsMisskeyAchievementsTypesViewInstanceChartDeDe extends TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_TranslationsMisskeyAchievementsTypesViewInstanceChartDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyst';
	@override String get description => 'Schau dir die Messwerte der Instanz an';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadDeDe extends TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hallo Welt!';
	@override String get description => 'Gib "hello world" in der Testumgebung aus';
}

// Path: misskey.achievements_.types_.open3windows_
class _TranslationsMisskeyAchievementsTypesOpen3windowsDeDe extends TranslationsMisskeyAchievementsTypesOpen3windowsEnUs {
	_TranslationsMisskeyAchievementsTypesOpen3windowsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Splitscreen';
	@override String get description => 'Habe zur gleichen Zeit mindestens 3 Fenster offen';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceDeDe extends TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zyklischer Verweis';
	@override String get description => 'Versuche, in Drive einen Zirkelbezug von Ordnern herzustellen';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _TranslationsMisskeyAchievementsTypesReactWithoutReadDeDe extends TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_TranslationsMisskeyAchievementsTypesReactWithoutReadDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hast du das wirklich gelesen?';
	@override String get description => 'Reagiere auf eine Notiz mit mindestens 100 Zeichen innerhalb von 3 Sekunden der Erstellung der Notiz';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _TranslationsMisskeyAchievementsTypesClickedClickHereDeDe extends TranslationsMisskeyAchievementsTypesClickedClickHereEnUs {
	_TranslationsMisskeyAchievementsTypesClickedClickHereDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Klicke hier';
	@override String get description => 'Du hast hier geklickt';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _TranslationsMisskeyAchievementsTypesJustPlainLuckyDeDe extends TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_TranslationsMisskeyAchievementsTypesJustPlainLuckyDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pures Glück';
	@override String get description => 'Kann alle 10 Sekunden mit einer Warscheinlichkeit von 0.005% erhalten werden';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _TranslationsMisskeyAchievementsTypesSetNameToSyuiloDeDe extends TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_TranslationsMisskeyAchievementsTypesSetNameToSyuiloDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gottkomplex';
	@override String get description => 'Setze deinen Namen auf "syuilo"';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1DeDe extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Einjahresjubiläum';
	@override String get description => 'Seit der Erstellung deines Kontos ist 1 Jahr vergangen';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2DeDe extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zweijahresjubiläum';
	@override String get description => 'Seit der Erstellung deines Kontos sind 2 Jahre vergangen';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3DeDe extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3DeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dreijahresjubiläum';
	@override String get description => 'Seit der Erstellung deines Kontos sind 3 Jahre vergangen';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayDeDe extends TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Alles Gute Zum Geburtstag';
	@override String get description => 'Logge dich an deinem Geburtstag ein';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayDeDe extends TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Frohes Neujahr';
	@override String get description => 'Logge dich am Neujahrstag ein';
	@override String get flavor => 'Auf ein weiteres tolles Jahr in dieser Instanz';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _TranslationsMisskeyAchievementsTypesCookieClickedDeDe extends TranslationsMisskeyAchievementsTypesCookieClickedEnUs {
	_TranslationsMisskeyAchievementsTypesCookieClickedDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ein Spiel, in dem du auf einen Keks klickst';
	@override String get description => 'Den Keks geklickt';
	@override String get flavor => 'Bist du hier richtig?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _TranslationsMisskeyAchievementsTypesBrainDiverDeDe extends TranslationsMisskeyAchievementsTypesBrainDiverEnUs {
	_TranslationsMisskeyAchievementsTypesBrainDiverDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Sende den Link zu Brain Diver';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonDeDe extends TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testüberfluss';
	@override String get description => 'Betätige den Benachrichtigungstest mehrfach innerhalb einer extrem kurzen Zeitspanne';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _TranslationsMisskeyAchievementsTypesTutorialCompletedDeDe extends TranslationsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_TranslationsMisskeyAchievementsTypesTutorialCompletedDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskey Grundkurs-Diplom';
	@override String get description => 'Tutorial abgeschlossen';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadDeDe extends TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => 'Das größte Objekt im Bubble Game';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadDeDe extends TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Doppel🤯';
	@override String get description => 'Zwei der größten Objekte im Bubble Game zur gleichen Zeit';
	@override String get flavor => 'Eine Lunchbox kann man auch mit etwas mehr 🤯 🤯 füllen';
}

// Path: misskey.pages_.blocks.note_
class _TranslationsMisskeyPagesBlocksNoteDeDe extends TranslationsMisskeyPagesBlocksNoteEnUs {
	_TranslationsMisskeyPagesBlocksNoteDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get id => 'Notiz-ID';
	@override String get idDescription => 'Du kannst alternativ auch die Notiz-URL angeben.';
	@override String get detailed => 'Detailierte Ansicht';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeDeDe extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Email';
	@override String get webhook => 'Webhook';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsDeDe captions_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsDeDe._(_root);
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsDeDe extends TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ungültige Parameter';
	@override String get description => 'Es fehlen Informationen zum Laden der externen Ressource. Überprüfe die übergebene URL.';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedDeDe extends TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Diese Ressource wird nicht unterstützt';
	@override String get description => 'Dieser Ressourcentyp wird nicht unterstützt. Bitte kontaktiere den Seitenbesitzer.';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchDeDe extends TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fehler beim Abrufen der Daten';
	@override String get fetchErrorDescription => 'Während der Kommunikation mit der externen Seite ist ein Fehler aufgetreten. Kontaktiere den Seitenbesitzer, falls ein erneutes Probieren dieses Problem nicht löst.';
	@override String get parseErrorDescription => 'Während dem Auslesen der externen Daten ist ein Fehler aufgetreten. Kontaktiere den Seitenbesitzer.';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedDeDe extends TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Datenverifizierung fehlgeschlagen';
	@override String get description => 'Die Integritätsprüfung der geladenen Daten ist fehlgeschlagen. Aus Sicherheitsgründen kann die Installation nicht fortgesetzt werden. Kontaktiere den Seitenbesitzer.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedDeDe extends TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'AiScript-Fehler';
	@override String get description => 'Die angeforderten Daten wurden erfolgreich abgerufen, jedoch trat während des AiScript-Parsings ein Fehler auf. Kontaktiere den Autor des Plugins. Detaillierte Fehlerinformationen können über die Javascript-Konsole abgerufen werden.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedDeDe extends TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Das Plugin konnte nicht installiert werden';
	@override String get description => 'Während der Installation des Plugin ist ein Problem aufgetreten. Bitte versuche es erneut. Detaillierte Fehlerinformationen können über die Javascript-Konsole abgerufen werden.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedDeDe extends TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Parsing des Farbschemas fehlgeschlagen';
	@override String get description => 'Die angeforderten Daten wurden erfolgreich abgerufen, jedoch trat während des Farbschema-Parsings ein Fehler auf. Kontaktiere den Autor des Farbschemas. Detaillierte Fehlerinformationen können über die Javascript-Konsole abgerufen werden.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedDeDe extends TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Das Farbschema konnte nicht installiert werden';
	@override String get description => 'Während der Installation des Farbschemas ist ein Problem aufgetreten. Bitte versuche es erneut. Detaillierte Fehlerinformationen können über die Javascript-Konsole abgerufen werden.';
}

// Path: misskey.customEmojisManager_.local_.list_
class _TranslationsMisskeyCustomEmojisManagerLocalListDeDe extends TranslationsMisskeyCustomEmojisManagerLocalListEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalListDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get emojisNothing => 'Es wurden keine Emojis hinzugefügt.';
	@override String get markAsDeleteTargetRows => 'Ausgewählte Zeilen als zu löschendes Element markieren';
	@override String get markAsDeleteTargetRanges => 'Zeilen in der Auswahl als zu löschendes Element markieren';
	@override String get alertUpdateEmojisNothingDescription => 'Es wurden keine Emojis geändert.';
	@override String get alertDeleteEmojisNothingDescription => 'Es gibt keine zu löschenden Emojis.';
	@override String get confirmMovePage => 'Möchten Sie die Seiten verschieben?';
	@override String get confirmChangeView => 'Möchten Sie die Darstellung wechseln?';
	@override String confirmUpdateEmojisDescription({required Object count}) => 'Aktualisiere ${count} Emoji(s). Willst du fortfahren?';
	@override String confirmDeleteEmojisDescription({required Object count}) => 'Lösche ${count} ausgewählte Emoji(s). Willst du fortfahren?';
	@override String get confirmResetDescription => 'Alle bisher vorgenommenen Änderungen werden zurückgesetzt.';
	@override String get confirmMovePageDesciption => 'An den Emojis auf dieser Seite wurden Änderungen vorgenommen.\nWenn du die Seite verlässt, ohne zu speichern, werden alle auf dieser Seite vorgenommenen Änderungen verworfen.';
	@override String get dialogSelectRoleTitle => 'Suche nach dem Rollensatz in Emojis';
}

// Path: misskey.customEmojisManager_.local_.register_
class _TranslationsMisskeyCustomEmojisManagerLocalRegisterDeDe extends TranslationsMisskeyCustomEmojisManagerLocalRegisterEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalRegisterDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get uploadSettingTitle => 'Upload-Einstellungen';
	@override String get uploadSettingDescription => 'Hier kannst du das Verhalten beim Hochladen von Emojis konfigurieren.';
	@override String get directoryToCategoryLabel => 'Gib den Namen des Verzeichnisses in das Feld „Kategorie“ ein';
	@override String get directoryToCategoryCaption => 'Wenn du ein Verzeichnis ziehst und ablegst, gib den Verzeichnisnamen in das Feld „Kategorie“ ein.';
	@override String confirmRegisterEmojisDescription({required Object count}) => 'Füge die in der Liste aufgeführten Emojis als neue benutzerdefinierte Emojis hinzu. Bist du sicher? (Um eine Überlastung zu vermeiden, können nur ${count} Emoji(s) in einem Vorgang hinzugefügt werden)';
	@override String get confirmClearEmojisDescription => 'Verwerfe die Bearbeitungen und lösche die Emojis aus der Liste. Bist du sicher, dass du fortfahren möchtest?';
	@override String confirmUploadEmojisDescription({required Object count}) => 'Lade die ${count} abgelegte(n) Datei(en) in das Drive hoch. Bist du sicher, dass du fortfahren möchtest?';
}

// Path: misskey.captcha_.error_.requestFailed_
class _TranslationsMisskeyCaptchaErrorRequestFailedDeDe extends TranslationsMisskeyCaptchaErrorRequestFailedEnUs {
	_TranslationsMisskeyCaptchaErrorRequestFailedDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'CAPTCHA-Anfrage fehlgeschlagen.';
	@override String get text => 'Bitte probiere es später noch einmal oder überprüfe die Einstellungen erneut.';
}

// Path: misskey.captcha_.error_.verificationFailed_
class _TranslationsMisskeyCaptchaErrorVerificationFailedDeDe extends TranslationsMisskeyCaptchaErrorVerificationFailedEnUs {
	_TranslationsMisskeyCaptchaErrorVerificationFailedDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'CAPTCHA-Prüfung fehlgeschlagen';
	@override String get text => 'Bitte überprüfe nochmals, ob die Einstellungen korrekt sind.';
}

// Path: misskey.captcha_.error_.unknown_
class _TranslationsMisskeyCaptchaErrorUnknownDeDe extends TranslationsMisskeyCaptchaErrorUnknownEnUs {
	_TranslationsMisskeyCaptchaErrorUnknownDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'CAPTCHA-Fehler';
	@override String get text => 'Es ist ein unerwarteter Fehler aufgetreten.';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteDeDe extends TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get cw => 'Das wird dich bestimmt hungrig machen!';
	@override String get note => 'Ich hatte gerade einen Donut mit Schokoladenüberzug 🍩😋';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_.captions_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsDeDe extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsDeDe._(TranslationsDeDe root) : this._root = root, super.internal(root);

	final TranslationsDeDe _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Die Benachrichtigung wird bei Eingang einer Meldung an die E-Mail-Adressen der Moderatoren gesendet';
	@override String get webhook => 'Sendet eine Benachrichtigung an den System Webhook, wenn eine Meldung eingegangen ist oder gelöst wurde';
}
