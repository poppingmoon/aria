///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint

part of 'strings.g.dart';

// Path: <root>
class _StringsDeDe extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsDeDe.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.deDe,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <de-DE>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	@override late final _StringsDeDe _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAriaDeDe aria = _StringsAriaDeDe._(_root);
	@override late final _StringsMisskeyDeDe misskey = _StringsMisskeyDeDe._(_root);
}

// Path: aria
class _StringsAriaDeDe extends _StringsAriaEnUs {
	_StringsAriaDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Möchtest du '),
		name,
		const TextSpan(text: ' wirklich folgen?'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria wird durch freiwillige Helfer in viele verschiedene Sprachen übersetzt. Auf '),
		link,
		const TextSpan(text: ' kannst du mithelfen.'),
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' Benutzer sind online'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Renote von '),
		user,
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Möchtest du '),
		name,
		const TextSpan(text: ' wirklich nicht mehr folgen?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' hat etwas gesagt'),
	]);
}

// Path: misskey
class _StringsMisskeyDeDe extends _StringsMisskeyEnUs {
	_StringsMisskeyDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Deutsch';
	@override String get headlineMisskey => 'Ein durch Notizen verbundenes Netzwerk';
	@override String get introMisskey => 'Willkommen! Misskey ist eine dezentralisierte Open-Source Microblogging-Platform.\nVerfasse „Notizen“ um mitzuteilen, was gerade passiert oder um Ereignisse mit anderen zu teilen. 📡\nMit „Reaktionen“ kannst du außerdem schnell deine Gefühle über Notizen anderer Benutzer zum Ausdruck bringen. 👍\nEine neue Welt wartet auf dich! 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} ist einer der durch die Open-Source-Plattform <b>Misskey</b> betriebenen Dienste.';
	@override String monthAndDay({required Object day, required Object month}) => '${day}.${month}.';
	@override String get search => 'Suchen';
	@override String get notifications => 'Benachrichtigungen';
	@override String get username => 'Benutzername';
	@override String get password => 'Passwort';
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
	@override String get cantRenote => 'Renote dieses Beitrags nicht möglich.';
	@override String get cantReRenote => 'Renote einer Renote nicht möglich.';
	@override String get quote => 'Zitieren';
	@override String get inChannelRenote => 'Kanal-interner Renote';
	@override String get inChannelQuote => 'Kanal-internes Zitat';
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
	@override String get overwriteFromPinnedEmojisForReaction => 'Überschreiben mit den Reaktions-Einstellungen';
	@override String get overwriteFromPinnedEmojis => 'Überschreiben mit den allgemeinen Einstellungen';
	@override String get reactionSettingDescription2 => 'Ziehe um Anzuordnen, klicke um zu löschen, drücke „+“ um hinzuzufügen';
	@override String get rememberNoteVisibility => 'Notizsichtbarkeit merken';
	@override String get attachCancel => 'Anhang entfernen';
	@override String get deleteFile => 'Datei gelöscht';
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
	@override String get operations => 'Aktionen';
	@override String get software => 'Software';
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
	@override String get muteAndBlock => 'Stummschaltungen und Blockierungen';
	@override String get mutedUsers => 'Stummgeschaltete Benutzer';
	@override String get blockedUsers => 'Blockierte Benutzer';
	@override String get noUsers => 'Keine Benutzer gefunden';
	@override String get editProfile => 'Profil bearbeiten';
	@override String get noteDeleteConfirm => 'Möchtest du diese Notiz wirklich löschen?';
	@override String get pinLimitExceeded => 'Du kannst nicht noch mehr Notizen anheften.';
	@override String get intro => 'Misskey ist installiert! Lass uns nun ein Administratorkonto einrichten.';
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
	@override String get messaging => 'Chat';
	@override String get upload => 'Hochladen';
	@override String get keepOriginalUploading => 'Originalbild speichern';
	@override String get keepOriginalUploadingDescription => 'Speichert das Originalbild so, wie es ist. Ist dies deaktiviert, wird eine Version zum Anzeigen im Internet generiert.';
	@override String get fromDrive => 'Aus Drive';
	@override String get fromUrl => 'Von einer URL';
	@override String get uploadFromUrl => 'Von einer URL hochladen';
	@override String get uploadFromUrlDescription => 'URL der hochzuladenden Datei';
	@override String get uploadFromUrlRequested => 'Upload angefordert';
	@override String get uploadFromUrlMayTakeTime => 'Es kann eine Weile dauern, bis das Hochladen abgeschlossen ist.';
	@override String get explore => 'Erkunden';
	@override String get messageRead => 'Gelesen';
	@override String get noMoreHistory => 'Kein weiterer Verlauf vorhanden';
	@override String get startMessaging => 'Neuen Chat erstellen';
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
	@override String get drive => 'Drive';
	@override String get fileName => 'Dateiname';
	@override String get selectFile => 'Datei auswählen';
	@override String get selectFiles => 'Dateien auswählen';
	@override String get selectFolder => 'Ordner auswählen';
	@override String get selectFolders => 'Ordner auswählen';
	@override String get renameFile => 'Datei umbenennen';
	@override String get folderName => 'Ordnername';
	@override String get createFolder => 'Ordner erstellen';
	@override String get renameFolder => 'Ordner umbenennen';
	@override String get deleteFolder => 'Ordner löschen';
	@override String get folder => 'Ordner';
	@override String get addFile => 'Datei hinzufügen';
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
	@override String get enableRegistration => 'Registrierung neuer Benutzer erlauben';
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
	@override String get antennaKeywordsDescription => 'Zum Nutzen einer "UND"-Verknüpfung Einträge mit Leerzeichen trennen, zum Nutzen einer "ODER"-Verknüpfung Einträge mit einem Zeilenumbruch trennen';
	@override String get notifyAntenna => 'Über neue Notizen benachrichtigen';
	@override String get withFileAntenna => 'Nur Notizen mit Dateien';
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
	@override String get noMessagesYet => 'Noch keine Nachrichten vorhanden';
	@override String get newMessageExists => 'Du hast eine neue Nachricht';
	@override String get onlyOneFileCanBeAttached => 'Es kann pro Nachricht nur eine Datei angehängt werden';
	@override String get signinRequired => 'Bitte registriere oder melde dich an, um fortzufahren';
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
	@override String get disableDrawer => 'Keine ausfahrbaren Menüs verwenden';
	@override String get showNoteActionsOnlyHover => 'Notizmenü nur bei Mouseover anzeigen';
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
	@override String get sounds => 'Töne';
	@override String get sound => 'Töne';
	@override String get listen => 'Anhören';
	@override String get none => 'Nichts';
	@override String get showInPage => 'In einer Seite anzeigen';
	@override String get popout => 'Pop-Up';
	@override String get volume => 'Lautstärke';
	@override String get masterVolume => 'Gesamtlautstärke';
	@override String get notUseSound => 'Gebe kein Ton aus';
	@override String get useSoundOnlyWhenActive => 'Gebe nur Ton aus, wenn Misskey aktiv ist';
	@override String get details => 'Details';
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
	@override String get regexpError => 'Fehler in einem regulären Ausdruck';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'Im regulären Ausdruck deiner in Zeile ${line} von ${tab}en Wortstummschaltungen ist ein Fehler aufgetreten:';
	@override String get instanceMute => 'Instanzstummschaltungen';
	@override String userSaysSomething({required Object name}) => '${name} hat etwas gesagt';
	@override String get makeActive => 'Aktivieren';
	@override String get display => 'Anzeigeart';
	@override String get copy => 'Kopieren';
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
	@override String get forwardReport => 'Meldung an fremde Instanz weiterleiten';
	@override String get forwardReportIsAnonymous => 'Anstatt deines Benutzerkontos wird bei der fremden Instanz ein anonymes Systemkonto als Melder angezeigt.';
	@override String get send => 'Senden';
	@override String get abuseMarkAsResolved => 'Meldung als gelöst markieren';
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
	@override String get showGapBetweenNotesInTimeline => 'Abstände zwischen Notizen auf der Chronik anzeigen';
	@override String get duplicate => 'Duplizieren';
	@override String get left => 'Links';
	@override String get center => 'Mittig';
	@override String get wide => 'Breit';
	@override String get narrow => 'Schmal';
	@override String get reloadToApplySetting => 'Diese Einstellung tritt nach einer Aktualisierung der Seite in Kraft. Jetzt aktualisieren?';
	@override String get needReloadToApply => 'Diese Einstellung tritt nach einer Aktualisierung der Seite in Kraft.';
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
	@override String get continueThread => 'Weiteren Threadverlauf anzeigen';
	@override String get deleteAccountConfirm => 'Dein Benutzerkonto wird unwiderruflich gelöscht. Trotzdem fortfahren?';
	@override String get incorrectPassword => 'Falsches Passwort.';
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
	@override String get reflectMayTakeTime => 'Es kann etwas dauern, bis sich dies widerspiegelt.';
	@override String get failedToFetchAccountInformation => 'Benutzerkontoinformationen konnten nicht abgefragt werden';
	@override String get rateLimitExceeded => 'Versuchsanzahl überschritten';
	@override String get cropImage => 'Bild zuschneiden';
	@override String get cropImageAsk => 'Möchtest du das Bild zuschneiden?';
	@override String get cropYes => 'Zuschneiden';
	@override String get cropNo => 'Unbearbeitet verwenden';
	@override String get file => 'Datei';
	@override String recentNHours({required Object n}) => 'Letzten ${n} Stunden';
	@override String recentNDays({required Object n}) => 'Letzten ${n} Tage';
	@override String get noEmailServerWarning => 'Es ist kein Email-Server konfiguriert.';
	@override String get thereIsUnresolvedAbuseReportWarning => 'Es liegen ungelöste Meldungen vor.';
	@override String get recommended => 'Empfehlung';
	@override String get check => 'Check';
	@override String get driveCapOverrideLabel => 'Die Drive-Kapazität dieses Nutzers verändern';
	@override String get driveCapOverrideCaption => 'Gib einen Wert von 0 oder weniger ein, um die Kapazität auf den Standard zurückzusetzen.';
	@override String get requireAdminForView => 'Melde dich mit einem Administratorkonto an, um dies einzusehen.';
	@override String get isSystemAccount => 'Ein Benutzerkonto, dass durch das System erstellt und automatisch kontrolliert wird.';
	@override String typeToConfirm({required Object x}) => 'Bitte gib zur Bestätigung ${x} ein';
	@override String get deleteAccount => 'Benutzerkonto löschen';
	@override String get document => 'Dokumentation';
	@override String get numberOfPageCache => 'Seitencachegröße';
	@override String get numberOfPageCacheDescription => 'Das Erhöhen dieses Caches führt zu einer angenehmerern Benutzererfahrung, aber erhöht Last und Arbeitsspeicherauslastung auf dem Nutzergerät.';
	@override String get logoutConfirm => 'Wirklich abmelden?';
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
	@override String get achievements => 'Errungenschaften';
	@override String get gotInvalidResponseError => 'Ungültige Antwort des Servers';
	@override String get gotInvalidResponseErrorDescription => 'Eventuell ist der Server momentan nicht erreichbar oder untergeht Wartungsarbeiten. Bitte versuche es später noch einmal.';
	@override String get thisPostMayBeAnnoying => 'Dieser Beitrag stört eventuell andere Benutzer.';
	@override String get thisPostMayBeAnnoyingHome => 'Zur Startseite schicken';
	@override String get thisPostMayBeAnnoyingCancel => 'Abbrechen';
	@override String get thisPostMayBeAnnoyingIgnore => 'Trotzdem schicken';
	@override String get collapseRenotes => 'Bereits gesehene Renotes verkürzt anzeigen';
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
	@override String get showClipButtonInNoteFooter => '"Clip" zum Notizmenu hinzufügen';
	@override String get reactionsDisplaySize => 'Reaktionsanzeigegröße';
	@override String get limitWidthOfReaction => 'Begrenze die Breite der Reaktion und zeige sie verkleinert an';
	@override String get noteIdOrUrl => 'Notiz-ID oder URL';
	@override String get video => 'Video';
	@override String get videos => 'Videos';
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
	@override String get fileAttachedOnly => 'Nur Notizen mit Dateien';
	@override String get showRepliesToOthersInTimeline => 'Antworten in Chronik anzeigen';
	@override String get hideRepliesToOthersInTimeline => 'Antworten nicht in Chronik anzeigen';
	@override String get showRepliesToOthersInTimelineAll => 'Antworten von allen momentan gefolgten Benutzern in Chronik anzeigen';
	@override String get hideRepliesToOthersInTimelineAll => 'Antworten von allen momentan gefolgten Benutzern nicht in Chronik anzeigen';
	@override String get confirmShowRepliesAll => 'Dies ist eine unwiderrufliche Aktion. Wirklich Antworten von allen momentan gefolgten Benutzern in der Chronik anzeigen?';
	@override String get confirmHideRepliesAll => 'Dies ist eine unwiderrufliche Aktion. Wirklich Antworten von allen momentan gefolgten Benutzern nicht in der Chronik anzeigen?';
	@override String get externalServices => 'Externe Dienste';
	@override String get sourceCode => 'Quellcode';
	@override String get impressum => 'Impressum';
	@override String get impressumUrl => 'Impressums-URL';
	@override String get impressumDescription => 'In manchen Ländern, wie Deutschland und dessen Umgebung, ist die Angabe von Betreiberinformationen (ein Impressum) bei kommerziellem Betrieb zwingend.';
	@override String get privacyPolicy => 'Datenschutzerklärung';
	@override String get privacyPolicyUrl => 'Datenschutzerklärungs-URL';
	@override String get tosAndPrivacyPolicy => 'Nutzungsbedingungen und Datenschutzerklärung';
	@override String get avatarDecorations => 'Profilbilddekoration';
	@override String get attach => 'Anbringen';
	@override String get detach => 'Entfernen';
	@override String get angle => 'Winkel';
	@override String get flip => 'Umdrehen';
	@override String get showAvatarDecorations => 'Profilbilddekoration anzeigen';
	@override String get releaseToRefresh => 'Zum Aktualisieren loslassen';
	@override String get refreshing => 'Wird aktualisiert...';
	@override String get pullDownToRefresh => 'Zum Aktualisieren ziehen';
	@override String get disableStreamingTimeline => 'Echtzeitaktualisierung der Chronik deaktivieren';
	@override String get useGroupedNotifications => 'Benachrichtigungen gruppieren';
	@override String get signupPendingError => 'Beim Überprüfen der Mailadresse ist etwas schiefgelaufen. Der Link könnte abgelaufen sein.';
	@override String get cwNotationRequired => 'Ist "Inhaltswarnung verwenden" aktiviert, muss eine Beschreibung gegeben werden.';
	@override String get doReaction => 'Reagieren';
	@override String get code => 'Code';
	@override String get decorate => 'Dekorieren';
	@override String get addMfmFunction => 'MFM hinzufügen';
	@override String get sfx => 'Soundeffekte';
	@override String lastNDays({required Object n}) => 'Letzten ${n} Tage';
	@override String get surrender => 'Abbrechen';
	@override late final _StringsMisskeyDeliveryDeDe delivery_ = _StringsMisskeyDeliveryDeDe._(_root);
	@override late final _StringsMisskeyAnnouncementDeDe announcement_ = _StringsMisskeyAnnouncementDeDe._(_root);
	@override late final _StringsMisskeyInitialAccountSettingDeDe initialAccountSetting_ = _StringsMisskeyInitialAccountSettingDeDe._(_root);
	@override late final _StringsMisskeyInitialTutorialDeDe initialTutorial_ = _StringsMisskeyInitialTutorialDeDe._(_root);
	@override late final _StringsMisskeyTimelineDescriptionDeDe timelineDescription_ = _StringsMisskeyTimelineDescriptionDeDe._(_root);
	@override late final _StringsMisskeyServerRulesDeDe serverRules_ = _StringsMisskeyServerRulesDeDe._(_root);
	@override late final _StringsMisskeyServerSettingsDeDe serverSettings_ = _StringsMisskeyServerSettingsDeDe._(_root);
	@override late final _StringsMisskeyAccountMigrationDeDe accountMigration_ = _StringsMisskeyAccountMigrationDeDe._(_root);
	@override late final _StringsMisskeyAchievementsDeDe achievements_ = _StringsMisskeyAchievementsDeDe._(_root);
	@override late final _StringsMisskeyRoleDeDe role_ = _StringsMisskeyRoleDeDe._(_root);
	@override late final _StringsMisskeySensitiveMediaDetectionDeDe sensitiveMediaDetection_ = _StringsMisskeySensitiveMediaDetectionDeDe._(_root);
	@override late final _StringsMisskeyEmailUnavailableDeDe emailUnavailable_ = _StringsMisskeyEmailUnavailableDeDe._(_root);
	@override late final _StringsMisskeyFfVisibilityDeDe ffVisibility_ = _StringsMisskeyFfVisibilityDeDe._(_root);
	@override late final _StringsMisskeySignupDeDe signup_ = _StringsMisskeySignupDeDe._(_root);
	@override late final _StringsMisskeyAccountDeleteDeDe accountDelete_ = _StringsMisskeyAccountDeleteDeDe._(_root);
	@override late final _StringsMisskeyAdDeDe ad_ = _StringsMisskeyAdDeDe._(_root);
	@override late final _StringsMisskeyForgotPasswordDeDe forgotPassword_ = _StringsMisskeyForgotPasswordDeDe._(_root);
	@override late final _StringsMisskeyGalleryDeDe gallery_ = _StringsMisskeyGalleryDeDe._(_root);
	@override late final _StringsMisskeyEmailDeDe email_ = _StringsMisskeyEmailDeDe._(_root);
	@override late final _StringsMisskeyPluginDeDe plugin_ = _StringsMisskeyPluginDeDe._(_root);
	@override late final _StringsMisskeyPreferencesBackupsDeDe preferencesBackups_ = _StringsMisskeyPreferencesBackupsDeDe._(_root);
	@override late final _StringsMisskeyRegistryDeDe registry_ = _StringsMisskeyRegistryDeDe._(_root);
	@override late final _StringsMisskeyAboutMisskeyDeDe aboutMisskey_ = _StringsMisskeyAboutMisskeyDeDe._(_root);
	@override late final _StringsMisskeyDisplayOfSensitiveMediaDeDe displayOfSensitiveMedia_ = _StringsMisskeyDisplayOfSensitiveMediaDeDe._(_root);
	@override late final _StringsMisskeyInstanceTickerDeDe instanceTicker_ = _StringsMisskeyInstanceTickerDeDe._(_root);
	@override late final _StringsMisskeyServerDisconnectedBehaviorDeDe serverDisconnectedBehavior_ = _StringsMisskeyServerDisconnectedBehaviorDeDe._(_root);
	@override late final _StringsMisskeyChannelDeDe channel_ = _StringsMisskeyChannelDeDe._(_root);
	@override late final _StringsMisskeyMenuDisplayDeDe menuDisplay_ = _StringsMisskeyMenuDisplayDeDe._(_root);
	@override late final _StringsMisskeyWordMuteDeDe wordMute_ = _StringsMisskeyWordMuteDeDe._(_root);
	@override late final _StringsMisskeyInstanceMuteDeDe instanceMute_ = _StringsMisskeyInstanceMuteDeDe._(_root);
	@override late final _StringsMisskeyThemeDeDe theme_ = _StringsMisskeyThemeDeDe._(_root);
	@override late final _StringsMisskeySfxDeDe sfx_ = _StringsMisskeySfxDeDe._(_root);
	@override late final _StringsMisskeyAgoDeDe ago_ = _StringsMisskeyAgoDeDe._(_root);
	@override late final _StringsMisskeyTimeDeDe time_ = _StringsMisskeyTimeDeDe._(_root);
	@override late final _StringsMisskeyX2faDeDe x2fa_ = _StringsMisskeyX2faDeDe._(_root);
	@override late final _StringsMisskeyPermissionsDeDe permissions_ = _StringsMisskeyPermissionsDeDe._(_root);
	@override late final _StringsMisskeyAuthDeDe auth_ = _StringsMisskeyAuthDeDe._(_root);
	@override late final _StringsMisskeyAntennaSourcesDeDe antennaSources_ = _StringsMisskeyAntennaSourcesDeDe._(_root);
	@override late final _StringsMisskeyWeekdayDeDe weekday_ = _StringsMisskeyWeekdayDeDe._(_root);
	@override late final _StringsMisskeyWidgetsDeDe widgets_ = _StringsMisskeyWidgetsDeDe._(_root);
	@override late final _StringsMisskeyCwDeDe cw_ = _StringsMisskeyCwDeDe._(_root);
	@override late final _StringsMisskeyPollDeDe poll_ = _StringsMisskeyPollDeDe._(_root);
	@override late final _StringsMisskeyVisibilityDeDe visibility_ = _StringsMisskeyVisibilityDeDe._(_root);
	@override late final _StringsMisskeyPostFormDeDe postForm_ = _StringsMisskeyPostFormDeDe._(_root);
	@override late final _StringsMisskeyProfileDeDe profile_ = _StringsMisskeyProfileDeDe._(_root);
	@override late final _StringsMisskeyExportOrImportDeDe exportOrImport_ = _StringsMisskeyExportOrImportDeDe._(_root);
	@override late final _StringsMisskeyChartsDeDe charts_ = _StringsMisskeyChartsDeDe._(_root);
	@override late final _StringsMisskeyInstanceChartsDeDe instanceCharts_ = _StringsMisskeyInstanceChartsDeDe._(_root);
	@override late final _StringsMisskeyTimelinesDeDe timelines_ = _StringsMisskeyTimelinesDeDe._(_root);
	@override late final _StringsMisskeyPlayDeDe play_ = _StringsMisskeyPlayDeDe._(_root);
	@override late final _StringsMisskeyPagesDeDe pages_ = _StringsMisskeyPagesDeDe._(_root);
	@override late final _StringsMisskeyRelayStatusDeDe relayStatus_ = _StringsMisskeyRelayStatusDeDe._(_root);
	@override late final _StringsMisskeyNotificationDeDe notification_ = _StringsMisskeyNotificationDeDe._(_root);
	@override late final _StringsMisskeyDeckDeDe deck_ = _StringsMisskeyDeckDeDe._(_root);
	@override late final _StringsMisskeyDialogDeDe dialog_ = _StringsMisskeyDialogDeDe._(_root);
	@override late final _StringsMisskeyDisabledTimelineDeDe disabledTimeline_ = _StringsMisskeyDisabledTimelineDeDe._(_root);
	@override late final _StringsMisskeyDrivecleanerDeDe drivecleaner_ = _StringsMisskeyDrivecleanerDeDe._(_root);
	@override late final _StringsMisskeyWebhookSettingsDeDe webhookSettings_ = _StringsMisskeyWebhookSettingsDeDe._(_root);
	@override late final _StringsMisskeyAbuseReportDeDe abuseReport_ = _StringsMisskeyAbuseReportDeDe._(_root);
	@override late final _StringsMisskeyModerationLogTypesDeDe moderationLogTypes_ = _StringsMisskeyModerationLogTypesDeDe._(_root);
	@override late final _StringsMisskeyFileViewerDeDe fileViewer_ = _StringsMisskeyFileViewerDeDe._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerDeDe externalResourceInstaller_ = _StringsMisskeyExternalResourceInstallerDeDe._(_root);
	@override late final _StringsMisskeyReversiDeDe reversi_ = _StringsMisskeyReversiDeDe._(_root);
}

// Path: misskey.delivery_
class _StringsMisskeyDeliveryDeDe extends _StringsMisskeyDeliveryEnUs {
	_StringsMisskeyDeliveryDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get stop => 'Gesperrt';
	@override late final _StringsMisskeyDeliveryTypeDeDe type_ = _StringsMisskeyDeliveryTypeDeDe._(_root);
}

// Path: misskey.announcement_
class _StringsMisskeyAnnouncementDeDe extends _StringsMisskeyAnnouncementEnUs {
	_StringsMisskeyAnnouncementDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
class _StringsMisskeyInitialAccountSettingDeDe extends _StringsMisskeyInitialAccountSettingEnUs {
	_StringsMisskeyInitialAccountSettingDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
class _StringsMisskeyInitialTutorialDeDe extends _StringsMisskeyInitialTutorialEnUs {
	_StringsMisskeyInitialTutorialDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'Tutorial ansehen';
	@override String get title => 'Tutorial';
	@override String get wellDone => 'Gut gemacht!';
	@override String get skipAreYouSure => 'Möchtest du das Tutorial verlassen?';
	@override late final _StringsMisskeyInitialTutorialLandingDeDe landing_ = _StringsMisskeyInitialTutorialLandingDeDe._(_root);
	@override late final _StringsMisskeyInitialTutorialNoteDeDe note_ = _StringsMisskeyInitialTutorialNoteDeDe._(_root);
	@override late final _StringsMisskeyInitialTutorialReactionDeDe reaction_ = _StringsMisskeyInitialTutorialReactionDeDe._(_root);
	@override late final _StringsMisskeyInitialTutorialPostNoteDeDe postNote_ = _StringsMisskeyInitialTutorialPostNoteDeDe._(_root);
	@override late final _StringsMisskeyInitialTutorialDoneDeDe done_ = _StringsMisskeyInitialTutorialDoneDeDe._(_root);
}

// Path: misskey.timelineDescription_
class _StringsMisskeyTimelineDescriptionDeDe extends _StringsMisskeyTimelineDescriptionEnUs {
	_StringsMisskeyTimelineDescriptionDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get local => 'In der lokalen Chronik siehst du Notizen von allen Benutzern auf diesem Server.';
	@override String get global => 'In der globalen Chronik siehst du Notizen von allen föderierten Servern.';
}

// Path: misskey.serverRules_
class _StringsMisskeyServerRulesDeDe extends _StringsMisskeyServerRulesEnUs {
	_StringsMisskeyServerRulesDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Eine Reihe von Regeln, die vor der Registrierung angezeigt werden. Eine Zusammenfassung der Nutzungsbedingungen anzuzeigen ist empfohlen.';
}

// Path: misskey.serverSettings_
class _StringsMisskeyServerSettingsDeDe extends _StringsMisskeyServerSettingsEnUs {
	_StringsMisskeyServerSettingsDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
}

// Path: misskey.accountMigration_
class _StringsMisskeyAccountMigrationDeDe extends _StringsMisskeyAccountMigrationEnUs {
	_StringsMisskeyAccountMigrationDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
class _StringsMisskeyAchievementsDeDe extends _StringsMisskeyAchievementsEnUs {
	_StringsMisskeyAchievementsDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Freigeschaltet am';
	@override late final _StringsMisskeyAchievementsTypesDeDe types_ = _StringsMisskeyAchievementsTypesDeDe._(_root);
}

// Path: misskey.role_
class _StringsMisskeyRoleDeDe extends _StringsMisskeyRoleEnUs {
	_StringsMisskeyRoleDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
	@override String get canEditMembersByModerator => 'Moderatoren können Benutzern diese Rolle zuweisen';
	@override String get descriptionOfCanEditMembersByModerator => 'Wenn aktiviert, so können Moderatoren und Adminstratoren anderen Benutzern diese Rolle zuweisen bzw. diese Zuweisung aufheben. Wenn deaktiviert, so ist es nur Administratoren möglich, Zuweisungen dieser Rolle zu verwalten.';
	@override String get priority => 'Priorität';
	@override late final _StringsMisskeyRolePriorityDeDe priority_ = _StringsMisskeyRolePriorityDeDe._(_root);
	@override late final _StringsMisskeyRoleOptionsDeDe options_ = _StringsMisskeyRoleOptionsDeDe._(_root);
	@override late final _StringsMisskeyRoleConditionDeDe condition_ = _StringsMisskeyRoleConditionDeDe._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _StringsMisskeySensitiveMediaDetectionDeDe extends _StringsMisskeySensitiveMediaDetectionEnUs {
	_StringsMisskeySensitiveMediaDetectionDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
class _StringsMisskeyEmailUnavailableDeDe extends _StringsMisskeyEmailUnavailableEnUs {
	_StringsMisskeyEmailUnavailableDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get used => 'Diese Email-Adresse wird bereits verwendet';
	@override String get format => 'Das Format dieser Email-Adresse ist ungültig';
	@override String get disposable => 'Wegwerf-Email-Adressen können nicht verwendet werden';
	@override String get mx => 'Dieser Email-Server ist ungültig';
	@override String get smtp => 'Dieser Email-Server antwortet nicht';
	@override String get banned => 'Du kannst dich mit dieser E-Mail-Adresse nicht registrieren';
}

// Path: misskey.ffVisibility_
class _StringsMisskeyFfVisibilityDeDe extends _StringsMisskeyFfVisibilityEnUs {
	_StringsMisskeyFfVisibilityDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get public => 'Öffentlich';
	@override String get followers => 'Nur für Follower sichtbar';
	@override String get private => 'Privat';
}

// Path: misskey.signup_
class _StringsMisskeySignupDeDe extends _StringsMisskeySignupEnUs {
	_StringsMisskeySignupDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Fast geschafft';
	@override String get emailAddressInfo => 'Bitte gib deine Email-Adresse ein. Sie wird nicht öffentlich einsehbar sein.';
	@override String emailSent({required Object email}) => 'An deine Email-Adresse (${email}) wurde soeben eine Bestätigungsmail geschickt. Bitte klicke auf den enthaltenen Link, um die Erstellung deines Benutzerkontos abzuschließen.';
}

// Path: misskey.accountDelete_
class _StringsMisskeyAccountDeleteDeDe extends _StringsMisskeyAccountDeleteEnUs {
	_StringsMisskeyAccountDeleteDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Benutzerkonto löschen';
	@override String get mayTakeTime => 'Da die Löschung eines Benutzerkontos ein aufwendiger Prozess ist, kann dessen Dauer davon abhängen, wie viel Inhalt von diesem erstellt wurde oder wie viele Dateien von diesem hochgeladen wurden.';
	@override String get sendEmail => 'Sobald die Löschung abgeschlossen ist, wird an die mit ihm verknüpfte Email-Adresse eine Benachrichtigung versendet.';
	@override String get requestAccountDelete => 'Löschung deines Benutzerkontos anfordern';
	@override String get started => 'Die Löschung wurde eingeleitet.';
	@override String get inProgress => 'Löschung in Bearbeitung';
}

// Path: misskey.ad_
class _StringsMisskeyAdDeDe extends _StringsMisskeyAdEnUs {
	_StringsMisskeyAdDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
class _StringsMisskeyForgotPasswordDeDe extends _StringsMisskeyForgotPasswordEnUs {
	_StringsMisskeyForgotPasswordDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Gib die Email-Adresse ein, mit der du dich registriert hast. An diese wird ein Link gesendet, mit dem du dein Passwort zurücksetzen kannst.';
	@override String get ifNoEmail => 'Solltest du bei der Registrierung keine Email-Adresse angegeben haben, wende dich bitte an den Administrator.';
	@override String get contactAdmin => 'Diese Instanz unterstützt die Verwendung von Email-Adressen nicht. Wende dich an den Administrator, um dein Passwort zurückzusetzen.';
}

// Path: misskey.gallery_
class _StringsMisskeyGalleryDeDe extends _StringsMisskeyGalleryEnUs {
	_StringsMisskeyGalleryDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get my => 'Meine Galerie';
	@override String get liked => 'Mit "Gefällt mir" markierte Beiträge';
	@override String get like => 'Gefällt mir';
	@override String get unlike => '"Gefällt mir" entfernen';
}

// Path: misskey.email_
class _StringsMisskeyEmailDeDe extends _StringsMisskeyEmailEnUs {
	_StringsMisskeyEmailDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyEmailFollowDeDe follow_ = _StringsMisskeyEmailFollowDeDe._(_root);
	@override late final _StringsMisskeyEmailReceiveFollowRequestDeDe receiveFollowRequest_ = _StringsMisskeyEmailReceiveFollowRequestDeDe._(_root);
}

// Path: misskey.plugin_
class _StringsMisskeyPluginDeDe extends _StringsMisskeyPluginEnUs {
	_StringsMisskeyPluginDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get install => 'Plugins installieren';
	@override String get installWarn => 'Installiere bitte nur vertrauenswürdige Plugins.';
	@override String get manage => 'Plugins verwalten';
	@override String get viewSource => 'Quelltext anzeigen';
}

// Path: misskey.preferencesBackups_
class _StringsMisskeyPreferencesBackupsDeDe extends _StringsMisskeyPreferencesBackupsEnUs {
	_StringsMisskeyPreferencesBackupsDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
class _StringsMisskeyRegistryDeDe extends _StringsMisskeyRegistryEnUs {
	_StringsMisskeyRegistryDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Scope';
	@override String get key => 'Schlüssel';
	@override String get keys => 'Schlüssel';
	@override String get domain => 'Domain';
	@override String get createKey => 'Schlüssel erstellen';
}

// Path: misskey.aboutMisskey_
class _StringsMisskeyAboutMisskeyDeDe extends _StringsMisskeyAboutMisskeyEnUs {
	_StringsMisskeyAboutMisskeyDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey ist Open-Source-Software, welche von syuilo seit 2014 entwickelt wird.';
	@override String get contributors => 'Hauptmitwirkende';
	@override String get allContributors => 'Alle Mitwirkenden';
	@override String get source => 'Quellcode';
	@override String get translation => 'Misskey übersetzen';
	@override String get donate => 'An Misskey spenden';
	@override String get morePatrons => 'Wir schätzen ebenso die Unterstützung vieler anderer hier nicht gelisteter Personen sehr. Danke! 🥰';
	@override String get patrons => 'UnterstützerInnen';
	@override String get projectMembers => 'Projektmitglieder';
}

// Path: misskey.displayOfSensitiveMedia_
class _StringsMisskeyDisplayOfSensitiveMediaDeDe extends _StringsMisskeyDisplayOfSensitiveMediaEnUs {
	_StringsMisskeyDisplayOfSensitiveMediaDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get respect => 'Sensible Medien verbergen';
	@override String get ignore => 'Sensible Medien anzeigen';
	@override String get force => 'Alle Medien verbergen';
}

// Path: misskey.instanceTicker_
class _StringsMisskeyInstanceTickerDeDe extends _StringsMisskeyInstanceTickerEnUs {
	_StringsMisskeyInstanceTickerDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get none => 'Nie anzeigen';
	@override String get remote => 'Für Benutzer fremder Instanzen anzeigen';
	@override String get always => 'Immer anzeigen';
}

// Path: misskey.serverDisconnectedBehavior_
class _StringsMisskeyServerDisconnectedBehaviorDeDe extends _StringsMisskeyServerDisconnectedBehaviorEnUs {
	_StringsMisskeyServerDisconnectedBehaviorDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Automatisch aktualisieren';
	@override String get dialog => 'Warnungsfenster zeigen';
	@override String get quiet => 'Unaufdringlich warnen';
}

// Path: misskey.channel_
class _StringsMisskeyChannelDeDe extends _StringsMisskeyChannelEnUs {
	_StringsMisskeyChannelDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
}

// Path: misskey.menuDisplay_
class _StringsMisskeyMenuDisplayDeDe extends _StringsMisskeyMenuDisplayEnUs {
	_StringsMisskeyMenuDisplayDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Seitlich';
	@override String get sideIcon => 'Seitlich (Icons)';
	@override String get top => 'Oben';
	@override String get hide => 'Ausblenden';
}

// Path: misskey.wordMute_
class _StringsMisskeyWordMuteDeDe extends _StringsMisskeyWordMuteEnUs {
	_StringsMisskeyWordMuteDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Stummgeschaltete Wörter';
	@override String get muteWordsDescription => 'Zum Nutzen einer "UND"-Verknüpfung Einträge mit Leerzeichen trennen, zum Nutzen einer "ODER"-Verknüpfung Einträge mit einem Zeilenumbruch trennen.';
	@override String get muteWordsDescription2 => 'Umgib Schlüsselworter mit Schrägstrichen, um Reguläre Ausdrücke zu verwenden.';
}

// Path: misskey.instanceMute_
class _StringsMisskeyInstanceMuteDeDe extends _StringsMisskeyInstanceMuteEnUs {
	_StringsMisskeyInstanceMuteDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Schaltet alle Notizen/Renotes stumm, die von den gelisteten Instanzen stammen, inklusive Antworten von Benutzern an einen Benutzer einer stummgeschalteten Instanz.';
	@override String get instanceMuteDescription2 => 'Instanzen getrennt durch Zeilenumbrüchen angeben';
	@override String get title => 'Blendet Notizen von stummgeschalteten Instanzen aus.';
	@override String get heading => 'Stummzuschaltende Instanzen';
}

// Path: misskey.theme_
class _StringsMisskeyThemeDeDe extends _StringsMisskeyThemeEnUs {
	_StringsMisskeyThemeDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get explore => 'Farbschemata erforschen';
	@override String get install => 'Farbschemata installieren';
	@override String get manage => 'Farbschemaverwaltung';
	@override String get code => 'Farbschemencode';
	@override String get description => 'Beschreibung';
	@override String installed({required Object name}) => '${name} wurde installiert';
	@override String get installedThemes => 'Installierte Farbschemata';
	@override String get builtinThemes => 'Eingebaute Farbschemata';
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
	@override late final _StringsMisskeyThemeKeysDeDe keys = _StringsMisskeyThemeKeysDeDe._(_root);
}

// Path: misskey.sfx_
class _StringsMisskeySfxDeDe extends _StringsMisskeySfxEnUs {
	_StringsMisskeySfxDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get note => 'Notizen';
	@override String get noteMy => 'Meine Notizen';
	@override String get notification => 'Benachrichtigungen';
}

// Path: misskey.ago_
class _StringsMisskeyAgoDeDe extends _StringsMisskeyAgoEnUs {
	_StringsMisskeyAgoDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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

// Path: misskey.time_
class _StringsMisskeyTimeDeDe extends _StringsMisskeyTimeEnUs {
	_StringsMisskeyTimeDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get second => 'Sekunde(n)';
	@override String get minute => 'Minute(n)';
	@override String get hour => 'Stunde(n)';
	@override String get day => 'Tag(en)';
}

// Path: misskey.x2fa_
class _StringsMisskeyX2faDeDe extends _StringsMisskeyX2faEnUs {
	_StringsMisskeyX2faDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
}

// Path: misskey.permissions_
class _StringsMisskeyPermissionsDeDe extends _StringsMisskeyPermissionsEnUs {
	_StringsMisskeyPermissionsDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
}

// Path: misskey.auth_
class _StringsMisskeyAuthDeDe extends _StringsMisskeyAuthEnUs {
	_StringsMisskeyAuthDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'Verteilung von App-Berechtigungen';
	@override String shareAccess({required Object name}) => 'Möchtest du „${name}“ authorisieren, auf dieses Benutzerkonto zugreifen zu können?';
	@override String get shareAccessAsk => 'Bist du dir sicher, dass du diese Anwendung authorisieren möchtest, auf dein Benutzerkonto zugreifen zu können?';
	@override String permission({required Object name}) => '${name} fordert folgende Berechtigungen';
	@override String get permissionAsk => 'Diese Anwendung fordert folgende Berechtigungen';
	@override String get pleaseGoBack => 'Bitte kehre zur Anwendung zurück';
	@override String get callback => 'Es wird zur Anwendung zurückgekehrt';
	@override String get denied => 'Zugriff verweigert';
	@override String get pleaseLogin => 'Bitte logge dich ein, um Apps zu authorisieren.';
}

// Path: misskey.antennaSources_
class _StringsMisskeyAntennaSourcesDeDe extends _StringsMisskeyAntennaSourcesEnUs {
	_StringsMisskeyAntennaSourcesDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get all => 'Alle Notizen';
	@override String get homeTimeline => 'Notizen von Benutzern, denen gefolgt wird';
	@override String get users => 'Notizen von einem oder mehreren angegebenen Benutzern';
	@override String get userList => 'Notizen von allen Benutzern einer Liste';
	@override String get userBlacklist => 'Alle Notizen abgesehen derer angegebener Benutzer';
}

// Path: misskey.weekday_
class _StringsMisskeyWeekdayDeDe extends _StringsMisskeyWeekdayEnUs {
	_StringsMisskeyWeekdayDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
class _StringsMisskeyWidgetsDeDe extends _StringsMisskeyWidgetsEnUs {
	_StringsMisskeyWidgetsDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
	@override late final _StringsMisskeyWidgetsUserListDeDe userList_ = _StringsMisskeyWidgetsUserListDeDe._(_root);
	@override String get clicker => 'Klickzähler';
	@override String get birthdayFollowings => 'Nutzer, die heute Geburtstag haben';
}

// Path: misskey.cw_
class _StringsMisskeyCwDeDe extends _StringsMisskeyCwEnUs {
	_StringsMisskeyCwDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Inhalt verbergen';
	@override String get show => 'Inhalt anzeigen';
	@override String chars({required Object count}) => '${count} Zeichen';
	@override String files({required Object count}) => '${count} Datei(en)';
}

// Path: misskey.poll_
class _StringsMisskeyPollDeDe extends _StringsMisskeyPollEnUs {
	_StringsMisskeyPollDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
class _StringsMisskeyVisibilityDeDe extends _StringsMisskeyVisibilityEnUs {
	_StringsMisskeyVisibilityDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
class _StringsMisskeyPostFormDeDe extends _StringsMisskeyPostFormEnUs {
	_StringsMisskeyPostFormDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'Dieser Notiz antworten …';
	@override String get quotePlaceholder => 'Diese Notiz zitieren …';
	@override String get channelPlaceholder => 'In einen Kanal senden';
	@override late final _StringsMisskeyPostFormPlaceholdersDeDe placeholders_ = _StringsMisskeyPostFormPlaceholdersDeDe._(_root);
}

// Path: misskey.profile_
class _StringsMisskeyProfileDeDe extends _StringsMisskeyProfileEnUs {
	_StringsMisskeyProfileDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
}

// Path: misskey.exportOrImport_
class _StringsMisskeyExportOrImportDeDe extends _StringsMisskeyExportOrImportEnUs {
	_StringsMisskeyExportOrImportDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
class _StringsMisskeyChartsDeDe extends _StringsMisskeyChartsEnUs {
	_StringsMisskeyChartsDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
class _StringsMisskeyInstanceChartsDeDe extends _StringsMisskeyInstanceChartsEnUs {
	_StringsMisskeyInstanceChartsDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
class _StringsMisskeyTimelinesDeDe extends _StringsMisskeyTimelinesEnUs {
	_StringsMisskeyTimelinesDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get home => 'Startseite';
	@override String get local => 'Lokal';
	@override String get social => 'Sozial';
	@override String get global => 'Global';
}

// Path: misskey.play_
class _StringsMisskeyPlayDeDe extends _StringsMisskeyPlayEnUs {
	_StringsMisskeyPlayDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
}

// Path: misskey.pages_
class _StringsMisskeyPagesDeDe extends _StringsMisskeyPagesEnUs {
	_StringsMisskeyPagesDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'Seite erstellen';
	@override String get editPage => 'Seite bearbeiten';
	@override String get readPage => 'Quelltextansicht';
	@override String get created => 'Seite erfolgreich erstellt';
	@override String get updated => 'Seite erfolgreich aktualisiert';
	@override String get deleted => 'Seite erfolgreich gelöscht';
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
	@override String get selectType => 'Typ auswählen';
	@override String get contentBlocks => 'Inhalt';
	@override String get inputBlocks => 'Eingabe';
	@override String get specialBlocks => 'Spezial';
	@override late final _StringsMisskeyPagesBlocksDeDe blocks = _StringsMisskeyPagesBlocksDeDe._(_root);
}

// Path: misskey.relayStatus_
class _StringsMisskeyRelayStatusDeDe extends _StringsMisskeyRelayStatusEnUs {
	_StringsMisskeyRelayStatusDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'Ausstehend';
	@override String get accepted => 'Akzeptiert';
	@override String get rejected => 'Abgelehnt';
}

// Path: misskey.notification_
class _StringsMisskeyNotificationDeDe extends _StringsMisskeyNotificationEnUs {
	_StringsMisskeyNotificationDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
	@override String get emptyPushNotificationMessage => 'Push-Benachrichtigungen wurden aktualisiert';
	@override String get achievementEarned => 'Errungenschaft freigeschaltet';
	@override String get testNotification => 'Testbenachrichtigung';
	@override String get checkNotificationBehavior => 'Aussehen von Benachrichtigungen überprüfen';
	@override String get sendTestNotification => 'Testbenachrichtigung senden';
	@override String get notificationWillBeDisplayedLikeThis => 'Benachrichtigungen sehen so aus';
	@override String reactedBySomeUsers({required Object n}) => '${n} Benutzer haben eine Reaktion geschickt';
	@override String renotedBySomeUsers({required Object n}) => 'Renote von ${n} Benutzern';
	@override String followedBySomeUsers({required Object n}) => 'Von ${n} Benutzern gefolgt';
	@override late final _StringsMisskeyNotificationTypesDeDe types_ = _StringsMisskeyNotificationTypesDeDe._(_root);
	@override late final _StringsMisskeyNotificationActionsDeDe actions_ = _StringsMisskeyNotificationActionsDeDe._(_root);
}

// Path: misskey.deck_
class _StringsMisskeyDeckDeDe extends _StringsMisskeyDeckEnUs {
	_StringsMisskeyDeckDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Hauptspalte immer zeigen';
	@override String get columnAlign => 'Spaltenausrichtung';
	@override String get addColumn => 'Spalte hinzufügen';
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
	@override late final _StringsMisskeyDeckColumnsDeDe columns_ = _StringsMisskeyDeckColumnsDeDe._(_root);
}

// Path: misskey.dialog_
class _StringsMisskeyDialogDeDe extends _StringsMisskeyDialogEnUs {
	_StringsMisskeyDialogDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => 'Maximallänge überschritten! Momentan ${current} von ${max}';
	@override String charactersBelow({required Object current, required Object min}) => 'Minimallänge unterschritten! Momentan ${current} von ${min}';
}

// Path: misskey.disabledTimeline_
class _StringsMisskeyDisabledTimelineDeDe extends _StringsMisskeyDisabledTimelineEnUs {
	_StringsMisskeyDisabledTimelineDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chronik deaktiviert';
	@override String get description => 'Mit deinen jetzigen Rollen ist diese Chronik nicht verfügbar.';
}

// Path: misskey.drivecleaner_
class _StringsMisskeyDrivecleanerDeDe extends _StringsMisskeyDrivecleanerEnUs {
	_StringsMisskeyDrivecleanerDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'Absteigende Dateigrößen';
	@override String get orderByCreatedAtAsc => 'Aufsteigendes Erstelldatum';
}

// Path: misskey.webhookSettings_
class _StringsMisskeyWebhookSettingsDeDe extends _StringsMisskeyWebhookSettingsEnUs {
	_StringsMisskeyWebhookSettingsDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Webhook erstellen';
	@override String get name => 'Name';
	@override String get secret => 'Secret';
	@override String get active => 'Aktiviert';
	@override late final _StringsMisskeyWebhookSettingsEventsDeDe events_ = _StringsMisskeyWebhookSettingsEventsDeDe._(_root);
}

// Path: misskey.abuseReport_
class _StringsMisskeyAbuseReportDeDe extends _StringsMisskeyAbuseReportEnUs {
	_StringsMisskeyAbuseReportDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAbuseReportNotificationRecipientDeDe notificationRecipient_ = _StringsMisskeyAbuseReportNotificationRecipientDeDe._(_root);
}

// Path: misskey.moderationLogTypes_
class _StringsMisskeyModerationLogTypesDeDe extends _StringsMisskeyModerationLogTypesEnUs {
	_StringsMisskeyModerationLogTypesDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
	@override String get markSensitiveDriveFile => 'Datei als sensitiv markiert';
	@override String get unmarkSensitiveDriveFile => 'Datei als nicht sensitiv markiert';
	@override String get resolveAbuseReport => 'Meldung bearbeitet';
	@override String get createInvitation => 'Einladung erstellt';
	@override String get createAd => 'Werbung erstellt';
	@override String get deleteAd => 'Werbung gelöscht';
	@override String get updateAd => 'Werbung aktualisiert';
	@override String get createAvatarDecoration => 'Profilbilddekoration erstellt';
	@override String get updateAvatarDecoration => 'Profilbilddekoration aktualisiert';
	@override String get deleteAvatarDecoration => 'Profilbilddekoration gelöscht';
}

// Path: misskey.fileViewer_
class _StringsMisskeyFileViewerDeDe extends _StringsMisskeyFileViewerEnUs {
	_StringsMisskeyFileViewerDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
class _StringsMisskeyExternalResourceInstallerDeDe extends _StringsMisskeyExternalResourceInstallerEnUs {
	_StringsMisskeyExternalResourceInstallerDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Von externer Seite installieren';
	@override String get checkVendorBeforeInstall => 'Überprüfe vor Installation die Vertrauenswürdigkeit des Vertreibers.';
	@override late final _StringsMisskeyExternalResourceInstallerPluginDeDe plugin_ = _StringsMisskeyExternalResourceInstallerPluginDeDe._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerThemeDeDe theme_ = _StringsMisskeyExternalResourceInstallerThemeDeDe._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerMetaDeDe meta_ = _StringsMisskeyExternalResourceInstallerMetaDeDe._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerVendorInfoDeDe vendorInfo_ = _StringsMisskeyExternalResourceInstallerVendorInfoDeDe._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsDeDe errors_ = _StringsMisskeyExternalResourceInstallerErrorsDeDe._(_root);
}

// Path: misskey.reversi_
class _StringsMisskeyReversiDeDe extends _StringsMisskeyReversiEnUs {
	_StringsMisskeyReversiDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get blackOrWhite => 'Schwarz/Weiß';
	@override String get rules => 'Regeln';
	@override String get black => 'Schwarz';
	@override String get white => 'Weiß';
	@override String get total => 'Gesamt';
}

// Path: misskey.delivery_.type_
class _StringsMisskeyDeliveryTypeDeDe extends _StringsMisskeyDeliveryTypeEnUs {
	_StringsMisskeyDeliveryTypeDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get none => 'Wird veröffentlicht';
}

// Path: misskey.initialTutorial_.landing_
class _StringsMisskeyInitialTutorialLandingDeDe extends _StringsMisskeyInitialTutorialLandingEnUs {
	_StringsMisskeyInitialTutorialLandingDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Willkommen zum Tutorial';
	@override String get description => 'Hier kannst du sehen, wie Misskey funktioniert';
}

// Path: misskey.initialTutorial_.note_
class _StringsMisskeyInitialTutorialNoteDeDe extends _StringsMisskeyInitialTutorialNoteEnUs {
	_StringsMisskeyInitialTutorialNoteDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Was sind Notizen?';
	@override String get description => 'Beiträge auf Misskey heißen "Notizen". Notizen werden chronologisch in der Chronik angeordnet und in Echtzeit aktualisiert.';
	@override String get reply => 'Klicke auf diesen Button, um auf eine Nachricht zu antworten. Es ist auch möglich, auf Antworten zu antworten und die Unterhaltung wie einen Thread fortzusetzen.';
}

// Path: misskey.initialTutorial_.reaction_
class _StringsMisskeyInitialTutorialReactionDeDe extends _StringsMisskeyInitialTutorialReactionEnUs {
	_StringsMisskeyInitialTutorialReactionDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Was sind Reaktionen?';
	@override String get reactToContinue => 'Füge eine Reaktion hinzu, um fortzufahren.';
	@override String get reactNotification => 'Du erhältst Echtzeit-Benachrichtigungen, wenn jemand auf deine Notiz reagiert.';
}

// Path: misskey.initialTutorial_.postNote_
class _StringsMisskeyInitialTutorialPostNoteDeDe extends _StringsMisskeyInitialTutorialPostNoteEnUs {
	_StringsMisskeyInitialTutorialPostNoteDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyInitialTutorialPostNoteVisibilityDeDe visibility_ = _StringsMisskeyInitialTutorialPostNoteVisibilityDeDe._(_root);
	@override late final _StringsMisskeyInitialTutorialPostNoteCwDeDe cw_ = _StringsMisskeyInitialTutorialPostNoteCwDeDe._(_root);
}

// Path: misskey.initialTutorial_.done_
class _StringsMisskeyInitialTutorialDoneDeDe extends _StringsMisskeyInitialTutorialDoneEnUs {
	_StringsMisskeyInitialTutorialDoneDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du hast das Tutorial abgeschlossen! 🎉';
}

// Path: misskey.achievements_.types_
class _StringsMisskeyAchievementsTypesDeDe extends _StringsMisskeyAchievementsTypesEnUs {
	_StringsMisskeyAchievementsTypesDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAchievementsTypesNotes1DeDe notes1_ = _StringsMisskeyAchievementsTypesNotes1DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10DeDe notes10_ = _StringsMisskeyAchievementsTypesNotes10DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100DeDe notes100_ = _StringsMisskeyAchievementsTypesNotes100DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes500DeDe notes500_ = _StringsMisskeyAchievementsTypesNotes500DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes1000DeDe notes1000_ = _StringsMisskeyAchievementsTypesNotes1000DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes5000DeDe notes5000_ = _StringsMisskeyAchievementsTypesNotes5000DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10000DeDe notes10000_ = _StringsMisskeyAchievementsTypesNotes10000DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes20000DeDe notes20000_ = _StringsMisskeyAchievementsTypesNotes20000DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes30000DeDe notes30000_ = _StringsMisskeyAchievementsTypesNotes30000DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes40000DeDe notes40000_ = _StringsMisskeyAchievementsTypesNotes40000DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes50000DeDe notes50000_ = _StringsMisskeyAchievementsTypesNotes50000DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes60000DeDe notes60000_ = _StringsMisskeyAchievementsTypesNotes60000DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes70000DeDe notes70000_ = _StringsMisskeyAchievementsTypesNotes70000DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes80000DeDe notes80000_ = _StringsMisskeyAchievementsTypesNotes80000DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes90000DeDe notes90000_ = _StringsMisskeyAchievementsTypesNotes90000DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100000DeDe notes100000_ = _StringsMisskeyAchievementsTypesNotes100000DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin3DeDe login3_ = _StringsMisskeyAchievementsTypesLogin3DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin7DeDe login7_ = _StringsMisskeyAchievementsTypesLogin7DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin15DeDe login15_ = _StringsMisskeyAchievementsTypesLogin15DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin30DeDe login30_ = _StringsMisskeyAchievementsTypesLogin30DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin60DeDe login60_ = _StringsMisskeyAchievementsTypesLogin60DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin100DeDe login100_ = _StringsMisskeyAchievementsTypesLogin100DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin200DeDe login200_ = _StringsMisskeyAchievementsTypesLogin200DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin300DeDe login300_ = _StringsMisskeyAchievementsTypesLogin300DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin400DeDe login400_ = _StringsMisskeyAchievementsTypesLogin400DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin500DeDe login500_ = _StringsMisskeyAchievementsTypesLogin500DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin600DeDe login600_ = _StringsMisskeyAchievementsTypesLogin600DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin700DeDe login700_ = _StringsMisskeyAchievementsTypesLogin700DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin800DeDe login800_ = _StringsMisskeyAchievementsTypesLogin800DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin900DeDe login900_ = _StringsMisskeyAchievementsTypesLogin900DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin1000DeDe login1000_ = _StringsMisskeyAchievementsTypesLogin1000DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteClipped1DeDe noteClipped1_ = _StringsMisskeyAchievementsTypesNoteClipped1DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteFavorited1DeDe noteFavorited1_ = _StringsMisskeyAchievementsTypesNoteFavorited1DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesMyNoteFavorited1DeDe myNoteFavorited1_ = _StringsMisskeyAchievementsTypesMyNoteFavorited1DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesProfileFilledDeDe profileFilled_ = _StringsMisskeyAchievementsTypesProfileFilledDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesMarkedAsCatDeDe markedAsCat_ = _StringsMisskeyAchievementsTypesMarkedAsCatDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing1DeDe following1_ = _StringsMisskeyAchievementsTypesFollowing1DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing10DeDe following10_ = _StringsMisskeyAchievementsTypesFollowing10DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing50DeDe following50_ = _StringsMisskeyAchievementsTypesFollowing50DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing100DeDe following100_ = _StringsMisskeyAchievementsTypesFollowing100DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing300DeDe following300_ = _StringsMisskeyAchievementsTypesFollowing300DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers1DeDe followers1_ = _StringsMisskeyAchievementsTypesFollowers1DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers10DeDe followers10_ = _StringsMisskeyAchievementsTypesFollowers10DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers50DeDe followers50_ = _StringsMisskeyAchievementsTypesFollowers50DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers100DeDe followers100_ = _StringsMisskeyAchievementsTypesFollowers100DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers300DeDe followers300_ = _StringsMisskeyAchievementsTypesFollowers300DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers500DeDe followers500_ = _StringsMisskeyAchievementsTypesFollowers500DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers1000DeDe followers1000_ = _StringsMisskeyAchievementsTypesFollowers1000DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesCollectAchievements30DeDe collectAchievements30_ = _StringsMisskeyAchievementsTypesCollectAchievements30DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesViewAchievements3minDeDe viewAchievements3min_ = _StringsMisskeyAchievementsTypesViewAchievements3minDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesILoveMisskeyDeDe iLoveMisskey_ = _StringsMisskeyAchievementsTypesILoveMisskeyDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesFoundTreasureDeDe foundTreasure_ = _StringsMisskeyAchievementsTypesFoundTreasureDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesClient30minDeDe client30min_ = _StringsMisskeyAchievementsTypesClient30minDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesClient60minDeDe client60min_ = _StringsMisskeyAchievementsTypesClient60minDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteDeletedWithin1minDeDe noteDeletedWithin1min_ = _StringsMisskeyAchievementsTypesNoteDeletedWithin1minDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesPostedAtLateNightDeDe postedAtLateNight_ = _StringsMisskeyAchievementsTypesPostedAtLateNightDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesPostedAt0min0secDeDe postedAt0min0sec_ = _StringsMisskeyAchievementsTypesPostedAt0min0secDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesSelfQuoteDeDe selfQuote_ = _StringsMisskeyAchievementsTypesSelfQuoteDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesHtl20npmDeDe htl20npm_ = _StringsMisskeyAchievementsTypesHtl20npmDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesViewInstanceChartDeDe viewInstanceChart_ = _StringsMisskeyAchievementsTypesViewInstanceChartDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadDeDe outputHelloWorldOnScratchpad_ = _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesOpen3windowsDeDe open3windows_ = _StringsMisskeyAchievementsTypesOpen3windowsDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceDeDe driveFolderCircularReference_ = _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesReactWithoutReadDeDe reactWithoutRead_ = _StringsMisskeyAchievementsTypesReactWithoutReadDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesClickedClickHereDeDe clickedClickHere_ = _StringsMisskeyAchievementsTypesClickedClickHereDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesJustPlainLuckyDeDe justPlainLucky_ = _StringsMisskeyAchievementsTypesJustPlainLuckyDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesSetNameToSyuiloDeDe setNameToSyuilo_ = _StringsMisskeyAchievementsTypesSetNameToSyuiloDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1DeDe passedSinceAccountCreated1_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2DeDe passedSinceAccountCreated2_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3DeDe passedSinceAccountCreated3_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3DeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesLoggedInOnBirthdayDeDe loggedInOnBirthday_ = _StringsMisskeyAchievementsTypesLoggedInOnBirthdayDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayDeDe loggedInOnNewYearsDay_ = _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesCookieClickedDeDe cookieClicked_ = _StringsMisskeyAchievementsTypesCookieClickedDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesBrainDiverDeDe brainDiver_ = _StringsMisskeyAchievementsTypesBrainDiverDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesSmashTestNotificationButtonDeDe smashTestNotificationButton_ = _StringsMisskeyAchievementsTypesSmashTestNotificationButtonDeDe._(_root);
	@override late final _StringsMisskeyAchievementsTypesTutorialCompletedDeDe tutorialCompleted_ = _StringsMisskeyAchievementsTypesTutorialCompletedDeDe._(_root);
}

// Path: misskey.role_.priority_
class _StringsMisskeyRolePriorityDeDe extends _StringsMisskeyRolePriorityEnUs {
	_StringsMisskeyRolePriorityDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get low => 'Niedrig';
	@override String get middle => 'Mittel';
	@override String get high => 'Hoch';
}

// Path: misskey.role_.options_
class _StringsMisskeyRoleOptionsDeDe extends _StringsMisskeyRoleOptionsEnUs {
	_StringsMisskeyRoleOptionsDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'Kann auf die globale Chronik zugreifen';
	@override String get ltlAvailable => 'Kann auf die lokale Chronik zugreifen';
	@override String get canPublicNote => 'Kann öffentliche Notizen erstellen';
	@override String get canInvite => 'Erstellung von Einladungscodes für diese Instanz';
	@override String get inviteLimit => 'Maximalanzahl an Einladungen';
	@override String get inviteLimitCycle => 'Zyklus des Einladungslimits';
	@override String get inviteExpirationTime => 'Gültigkeitsdauer von Einladungen';
	@override String get canManageCustomEmojis => 'Benutzerdefinierte Emojis verwalten';
	@override String get canManageAvatarDecorations => 'Profilbilddekorationen verwalten';
	@override String get driveCapacity => 'Drive-Kapazität';
	@override String get alwaysMarkNsfw => 'Dateien immer als NSFW markieren';
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
}

// Path: misskey.role_.condition_
class _StringsMisskeyRoleConditionDeDe extends _StringsMisskeyRoleConditionEnUs {
	_StringsMisskeyRoleConditionDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get isLocal => 'Lokaler Benutzer';
	@override String get isRemote => 'Benutzer fremder Instanz';
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
class _StringsMisskeyEmailFollowDeDe extends _StringsMisskeyEmailFollowEnUs {
	_StringsMisskeyEmailFollowDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du hast einen neuen Follower';
}

// Path: misskey.email_.receiveFollowRequest_
class _StringsMisskeyEmailReceiveFollowRequestDeDe extends _StringsMisskeyEmailReceiveFollowRequestEnUs {
	_StringsMisskeyEmailReceiveFollowRequestDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du hast eine Follow-Anfrage erhalten';
}

// Path: misskey.theme_.keys
class _StringsMisskeyThemeKeysDeDe extends _StringsMisskeyThemeKeysEnUs {
	_StringsMisskeyThemeKeysDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
	@override String get navHoverFg => 'Text der Seitenleiste (Mouseover)';
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
	@override String get listItemHoverBg => 'Hintergrund von Listeneinträgen (Mouseover)';
	@override String get driveFolderBg => 'Hintergrund von Drive-Ordnern';
	@override String get wallpaperOverlay => 'Hintergrundbild-Overlay';
	@override String get badge => 'Wappen';
	@override String get messageBg => 'Hintergrund von Chats';
	@override String get accentDarken => 'Akzent (Verdunkelt)';
	@override String get accentLighten => 'Akzent (Erhellt)';
	@override String get fgHighlighted => 'Hervorgehobener Text';
}

// Path: misskey.widgets_.userList_
class _StringsMisskeyWidgetsUserListDeDe extends _StringsMisskeyWidgetsUserListEnUs {
	_StringsMisskeyWidgetsUserListDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Liste auswählen';
}

// Path: misskey.postForm_.placeholders_
class _StringsMisskeyPostFormPlaceholdersDeDe extends _StringsMisskeyPostFormPlaceholdersEnUs {
	_StringsMisskeyPostFormPlaceholdersDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get a => 'Was machst du momentan?';
	@override String get b => 'Was ist um dich herum los?';
	@override String get c => 'Was geht dir durch den Kopf?';
	@override String get d => 'Was möchtest du sagen?';
	@override String get e => 'Fang an zu schreiben …';
	@override String get f => 'Ich warte darauf, dass du schreibst …';
}

// Path: misskey.pages_.blocks
class _StringsMisskeyPagesBlocksDeDe extends _StringsMisskeyPagesBlocksEnUs {
	_StringsMisskeyPagesBlocksDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Text';
	@override String get textarea => 'Textfeld';
	@override String get section => 'Abschnitt';
	@override String get image => 'Bild';
	@override String get button => 'Knopf';
	@override String get note => 'Eingebettete Notiz';
	@override late final _StringsMisskeyPagesBlocksNoteDeDe note_ = _StringsMisskeyPagesBlocksNoteDeDe._(_root);
}

// Path: misskey.notification_.types_
class _StringsMisskeyNotificationTypesDeDe extends _StringsMisskeyNotificationTypesEnUs {
	_StringsMisskeyNotificationTypesDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
	@override String get achievementEarned => 'Errungenschaft freigeschaltet';
	@override String get app => 'Benachrichtigungen von Apps';
}

// Path: misskey.notification_.actions_
class _StringsMisskeyNotificationActionsDeDe extends _StringsMisskeyNotificationActionsEnUs {
	_StringsMisskeyNotificationActionsDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'folgt dir nun auch';
	@override String get reply => 'Antworten';
	@override String get renote => 'Renote';
}

// Path: misskey.deck_.columns_
class _StringsMisskeyDeckColumnsDeDe extends _StringsMisskeyDeckColumnsEnUs {
	_StringsMisskeyDeckColumnsDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

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
}

// Path: misskey.webhookSettings_.events_
class _StringsMisskeyWebhookSettingsEventsDeDe extends _StringsMisskeyWebhookSettingsEventsEnUs {
	_StringsMisskeyWebhookSettingsEventsDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Wenn du jemandem folgst';
	@override String get followed => 'Wenn dir jemand folgt';
	@override String get note => 'Wenn du eine Notiz schickst';
	@override String get reply => 'Wenn du eine Antwort erhältst';
	@override String get renote => 'Wenn du ein Renote erhältst';
	@override String get reaction => 'Wenn du eine Reaktion erhältst';
	@override String get mention => 'Wenn du erwähnt wirst';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _StringsMisskeyAbuseReportNotificationRecipientDeDe extends _StringsMisskeyAbuseReportNotificationRecipientEnUs {
	_StringsMisskeyAbuseReportNotificationRecipientDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeDeDe recipientType_ = _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeDeDe._(_root);
}

// Path: misskey.externalResourceInstaller_.plugin_
class _StringsMisskeyExternalResourceInstallerPluginDeDe extends _StringsMisskeyExternalResourceInstallerPluginEnUs {
	_StringsMisskeyExternalResourceInstallerPluginDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Möchtest du dieses Plugin installieren?';
	@override String get metaTitle => 'Plugininformation';
}

// Path: misskey.externalResourceInstaller_.theme_
class _StringsMisskeyExternalResourceInstallerThemeDeDe extends _StringsMisskeyExternalResourceInstallerThemeEnUs {
	_StringsMisskeyExternalResourceInstallerThemeDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Möchten du dieses Farbschema installieren?';
	@override String get metaTitle => 'Farbschemainfo';
}

// Path: misskey.externalResourceInstaller_.meta_
class _StringsMisskeyExternalResourceInstallerMetaDeDe extends _StringsMisskeyExternalResourceInstallerMetaEnUs {
	_StringsMisskeyExternalResourceInstallerMetaDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get base => 'Farbschemavorlage';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _StringsMisskeyExternalResourceInstallerVendorInfoDeDe extends _StringsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_StringsMisskeyExternalResourceInstallerVendorInfoDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vertreiber';
	@override String get endpoint => 'Referenzierter Endpunkt';
	@override String get hashVerify => 'Hash-Verifikation';
}

// Path: misskey.externalResourceInstaller_.errors_
class _StringsMisskeyExternalResourceInstallerErrorsDeDe extends _StringsMisskeyExternalResourceInstallerErrorsEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsDeDe invalidParams_ = _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsDeDe._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedDeDe resourceTypeNotSupported_ = _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedDeDe._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchDeDe failedToFetch_ = _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchDeDe._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedDeDe hashUnmatched_ = _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedDeDe._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedDeDe pluginParseFailed_ = _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedDeDe._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedDeDe pluginInstallFailed_ = _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedDeDe._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedDeDe themeParseFailed_ = _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedDeDe._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedDeDe themeInstallFailed_ = _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedDeDe._(_root);
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _StringsMisskeyInitialTutorialPostNoteVisibilityDeDe extends _StringsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_StringsMisskeyInitialTutorialPostNoteVisibilityDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Du kannst einschränken, wer deine Notiz sehen kann.';
	@override String get public => 'Deine Notiz wird für alle Nutzer sichtbar sein.';
	@override String get doNotSendConfidencialOnDirect1 => 'Sei vorsichtig, wenn du sensible Informationen verschickst!';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _StringsMisskeyInitialTutorialPostNoteCwDeDe extends _StringsMisskeyInitialTutorialPostNoteCwEnUs {
	_StringsMisskeyInitialTutorialPostNoteCwDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inhaltswarnung';
}

// Path: misskey.achievements_.types_.notes1_
class _StringsMisskeyAchievementsTypesNotes1DeDe extends _StringsMisskeyAchievementsTypesNotes1EnUs {
	_StringsMisskeyAchievementsTypesNotes1DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hallo Misskey!';
	@override String get description => 'Sende deine erste Notiz';
	@override String get flavor => 'Hab eine schöne Zeit mit Misskey!';
}

// Path: misskey.achievements_.types_.notes10_
class _StringsMisskeyAchievementsTypesNotes10DeDe extends _StringsMisskeyAchievementsTypesNotes10EnUs {
	_StringsMisskeyAchievementsTypesNotes10DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ein paar Notizen';
	@override String get description => '10 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes100_
class _StringsMisskeyAchievementsTypesNotes100DeDe extends _StringsMisskeyAchievementsTypesNotes100EnUs {
	_StringsMisskeyAchievementsTypesNotes100DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Viele Notizen';
	@override String get description => '100 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes500_
class _StringsMisskeyAchievementsTypesNotes500DeDe extends _StringsMisskeyAchievementsTypesNotes500EnUs {
	_StringsMisskeyAchievementsTypesNotes500DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Überschüttet mit Notizen';
	@override String get description => '500 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes1000_
class _StringsMisskeyAchievementsTypesNotes1000DeDe extends _StringsMisskeyAchievementsTypesNotes1000EnUs {
	_StringsMisskeyAchievementsTypesNotes1000DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Berg an Notizen';
	@override String get description => '1.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes5000_
class _StringsMisskeyAchievementsTypesNotes5000DeDe extends _StringsMisskeyAchievementsTypesNotes5000EnUs {
	_StringsMisskeyAchievementsTypesNotes5000DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Überquellende Notizen';
	@override String get description => '5.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes10000_
class _StringsMisskeyAchievementsTypesNotes10000DeDe extends _StringsMisskeyAchievementsTypesNotes10000EnUs {
	_StringsMisskeyAchievementsTypesNotes10000DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supernotiz';
	@override String get description => '10.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes20000_
class _StringsMisskeyAchievementsTypesNotes20000DeDe extends _StringsMisskeyAchievementsTypesNotes20000EnUs {
	_StringsMisskeyAchievementsTypesNotes20000DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brauche... mehr... Notizen...';
	@override String get description => '20.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes30000_
class _StringsMisskeyAchievementsTypesNotes30000DeDe extends _StringsMisskeyAchievementsTypesNotes30000EnUs {
	_StringsMisskeyAchievementsTypesNotes30000DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notizen, Notizen, Notizen';
	@override String get description => '30.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes40000_
class _StringsMisskeyAchievementsTypesNotes40000DeDe extends _StringsMisskeyAchievementsTypesNotes40000EnUs {
	_StringsMisskeyAchievementsTypesNotes40000DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notizfabrik';
	@override String get description => '40.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes50000_
class _StringsMisskeyAchievementsTypesNotes50000DeDe extends _StringsMisskeyAchievementsTypesNotes50000EnUs {
	_StringsMisskeyAchievementsTypesNotes50000DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Planet der Notizen';
	@override String get description => '50.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes60000_
class _StringsMisskeyAchievementsTypesNotes60000DeDe extends _StringsMisskeyAchievementsTypesNotes60000EnUs {
	_StringsMisskeyAchievementsTypesNotes60000DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notizquasar';
	@override String get description => '60.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes70000_
class _StringsMisskeyAchievementsTypesNotes70000DeDe extends _StringsMisskeyAchievementsTypesNotes70000EnUs {
	_StringsMisskeyAchievementsTypesNotes70000DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Schwarzes Notizloch';
	@override String get description => '70.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes80000_
class _StringsMisskeyAchievementsTypesNotes80000DeDe extends _StringsMisskeyAchievementsTypesNotes80000EnUs {
	_StringsMisskeyAchievementsTypesNotes80000DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notizgalaxie';
	@override String get description => '80.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes90000_
class _StringsMisskeyAchievementsTypesNotes90000DeDe extends _StringsMisskeyAchievementsTypesNotes90000EnUs {
	_StringsMisskeyAchievementsTypesNotes90000DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notizversum';
	@override String get description => '90.000 Notizen gesendet';
}

// Path: misskey.achievements_.types_.notes100000_
class _StringsMisskeyAchievementsTypesNotes100000DeDe extends _StringsMisskeyAchievementsTypesNotes100000EnUs {
	_StringsMisskeyAchievementsTypesNotes100000DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => '100.000 Notizen gesendet';
	@override String get flavor => 'Du hast wirklich viel zu sagen.';
}

// Path: misskey.achievements_.types_.login3_
class _StringsMisskeyAchievementsTypesLogin3DeDe extends _StringsMisskeyAchievementsTypesLogin3EnUs {
	_StringsMisskeyAchievementsTypesLogin3DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anfänger Ⅰ';
	@override String get description => 'An 3 Tagen eingeloggt';
	@override String get flavor => 'Nenn\' mich ab heute Misskist';
}

// Path: misskey.achievements_.types_.login7_
class _StringsMisskeyAchievementsTypesLogin7DeDe extends _StringsMisskeyAchievementsTypesLogin7EnUs {
	_StringsMisskeyAchievementsTypesLogin7DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anfänger Ⅱ';
	@override String get description => 'An 7 Tagen eingeloggt';
	@override String get flavor => 'Na, eingewöht?';
}

// Path: misskey.achievements_.types_.login15_
class _StringsMisskeyAchievementsTypesLogin15DeDe extends _StringsMisskeyAchievementsTypesLogin15EnUs {
	_StringsMisskeyAchievementsTypesLogin15DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anfänger Ⅲ';
	@override String get description => 'An 15 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login30_
class _StringsMisskeyAchievementsTypesLogin30DeDe extends _StringsMisskeyAchievementsTypesLogin30EnUs {
	_StringsMisskeyAchievementsTypesLogin30DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist Ⅰ';
	@override String get description => 'An 30 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login60_
class _StringsMisskeyAchievementsTypesLogin60DeDe extends _StringsMisskeyAchievementsTypesLogin60EnUs {
	_StringsMisskeyAchievementsTypesLogin60DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist Ⅱ';
	@override String get description => 'An 60 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login100_
class _StringsMisskeyAchievementsTypesLogin100DeDe extends _StringsMisskeyAchievementsTypesLogin100EnUs {
	_StringsMisskeyAchievementsTypesLogin100DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist Ⅲ';
	@override String get description => 'An 100 Tagen eingeloggt';
	@override String get flavor => 'Violent Misskist';
}

// Path: misskey.achievements_.types_.login200_
class _StringsMisskeyAchievementsTypesLogin200DeDe extends _StringsMisskeyAchievementsTypesLogin200EnUs {
	_StringsMisskeyAchievementsTypesLogin200DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stammbesucher Ⅰ';
	@override String get description => 'An 200 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login300_
class _StringsMisskeyAchievementsTypesLogin300DeDe extends _StringsMisskeyAchievementsTypesLogin300EnUs {
	_StringsMisskeyAchievementsTypesLogin300DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stammbesucher Ⅱ';
	@override String get description => 'An 300 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login400_
class _StringsMisskeyAchievementsTypesLogin400DeDe extends _StringsMisskeyAchievementsTypesLogin400EnUs {
	_StringsMisskeyAchievementsTypesLogin400DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stammbesucher Ⅲ';
	@override String get description => 'An 400 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login500_
class _StringsMisskeyAchievementsTypesLogin500DeDe extends _StringsMisskeyAchievementsTypesLogin500EnUs {
	_StringsMisskeyAchievementsTypesLogin500DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veteran Ⅰ';
	@override String get description => 'An 500 Tagen eingeloggt';
	@override String get flavor => 'Meine Kameraden, ich liebe sie, die Notizen.';
}

// Path: misskey.achievements_.types_.login600_
class _StringsMisskeyAchievementsTypesLogin600DeDe extends _StringsMisskeyAchievementsTypesLogin600EnUs {
	_StringsMisskeyAchievementsTypesLogin600DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veteran Ⅱ';
	@override String get description => 'An 600 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login700_
class _StringsMisskeyAchievementsTypesLogin700DeDe extends _StringsMisskeyAchievementsTypesLogin700EnUs {
	_StringsMisskeyAchievementsTypesLogin700DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veteran Ⅲ';
	@override String get description => 'An 700 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login800_
class _StringsMisskeyAchievementsTypesLogin800DeDe extends _StringsMisskeyAchievementsTypesLogin800EnUs {
	_StringsMisskeyAchievementsTypesLogin800DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Meister der Notizen Ⅰ';
	@override String get description => 'An 800 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login900_
class _StringsMisskeyAchievementsTypesLogin900DeDe extends _StringsMisskeyAchievementsTypesLogin900EnUs {
	_StringsMisskeyAchievementsTypesLogin900DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Meister der Notizen Ⅱ';
	@override String get description => 'An 900 Tagen eingeloggt';
}

// Path: misskey.achievements_.types_.login1000_
class _StringsMisskeyAchievementsTypesLogin1000DeDe extends _StringsMisskeyAchievementsTypesLogin1000EnUs {
	_StringsMisskeyAchievementsTypesLogin1000DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Meister der Notizen Ⅲ';
	@override String get description => 'An 1000 Tagen eingeloggt';
	@override String get flavor => 'Danke, dass du Misskey nutzt!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _StringsMisskeyAchievementsTypesNoteClipped1DeDe extends _StringsMisskeyAchievementsTypesNoteClipped1EnUs {
	_StringsMisskeyAchievementsTypesNoteClipped1DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Muss... clippen...';
	@override String get description => 'Die erste Notiz geclippt';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _StringsMisskeyAchievementsTypesNoteFavorited1DeDe extends _StringsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesNoteFavorited1DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sternengucker';
	@override String get description => 'Eine Notiz als Favorit markiert';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _StringsMisskeyAchievementsTypesMyNoteFavorited1DeDe extends _StringsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesMyNoteFavorited1DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sternensucher';
	@override String get description => 'Ein anderer Benutzer hat eine deiner Notizen als Favoriten markiert';
}

// Path: misskey.achievements_.types_.profileFilled_
class _StringsMisskeyAchievementsTypesProfileFilledDeDe extends _StringsMisskeyAchievementsTypesProfileFilledEnUs {
	_StringsMisskeyAchievementsTypesProfileFilledDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perfekte Vorbereitung';
	@override String get description => 'Fülle dein Profil aus';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _StringsMisskeyAchievementsTypesMarkedAsCatDeDe extends _StringsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_StringsMisskeyAchievementsTypesMarkedAsCatDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ich der Kater';
	@override String get description => 'Markiere dein Konto als Katze';
	@override String get flavor => 'Einen Namen bekommst du später. ';
}

// Path: misskey.achievements_.types_.following1_
class _StringsMisskeyAchievementsTypesFollowing1DeDe extends _StringsMisskeyAchievementsTypesFollowing1EnUs {
	_StringsMisskeyAchievementsTypesFollowing1DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Das Folgen beginnt';
	@override String get description => 'Du folgst deiner ersten Person';
}

// Path: misskey.achievements_.types_.following10_
class _StringsMisskeyAchievementsTypesFollowing10DeDe extends _StringsMisskeyAchievementsTypesFollowing10EnUs {
	_StringsMisskeyAchievementsTypesFollowing10DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Folge ihnen... folge ihnen...';
	@override String get description => 'Du folgst über 10 Leuten';
}

// Path: misskey.achievements_.types_.following50_
class _StringsMisskeyAchievementsTypesFollowing50DeDe extends _StringsMisskeyAchievementsTypesFollowing50EnUs {
	_StringsMisskeyAchievementsTypesFollowing50DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Viele Freunde';
	@override String get description => 'Du folgst über 50 Leuten';
}

// Path: misskey.achievements_.types_.following100_
class _StringsMisskeyAchievementsTypesFollowing100DeDe extends _StringsMisskeyAchievementsTypesFollowing100EnUs {
	_StringsMisskeyAchievementsTypesFollowing100DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => '100 Freunde';
	@override String get description => 'Du folgst über 100 Leuten';
}

// Path: misskey.achievements_.types_.following300_
class _StringsMisskeyAchievementsTypesFollowing300DeDe extends _StringsMisskeyAchievementsTypesFollowing300EnUs {
	_StringsMisskeyAchievementsTypesFollowing300DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Freundeüberschuss';
	@override String get description => 'Du folgst über 300 Leuten';
}

// Path: misskey.achievements_.types_.followers1_
class _StringsMisskeyAchievementsTypesFollowers1DeDe extends _StringsMisskeyAchievementsTypesFollowers1EnUs {
	_StringsMisskeyAchievementsTypesFollowers1DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Der erste Follower';
	@override String get description => 'Du hast deinen ersten Follower erhalten';
}

// Path: misskey.achievements_.types_.followers10_
class _StringsMisskeyAchievementsTypesFollowers10DeDe extends _StringsMisskeyAchievementsTypesFollowers10EnUs {
	_StringsMisskeyAchievementsTypesFollowers10DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mir nach!';
	@override String get description => 'Die Anzahl deiner Follower hat 10 überschritten';
}

// Path: misskey.achievements_.types_.followers50_
class _StringsMisskeyAchievementsTypesFollowers50DeDe extends _StringsMisskeyAchievementsTypesFollowers50EnUs {
	_StringsMisskeyAchievementsTypesFollowers50DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wirrwarr';
	@override String get description => 'Die Anzahl deiner Follower hat 50 überschritten';
}

// Path: misskey.achievements_.types_.followers100_
class _StringsMisskeyAchievementsTypesFollowers100DeDe extends _StringsMisskeyAchievementsTypesFollowers100EnUs {
	_StringsMisskeyAchievementsTypesFollowers100DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beliebt';
	@override String get description => 'Die Anzahl deiner Follower hat 100 überschritten';
}

// Path: misskey.achievements_.types_.followers300_
class _StringsMisskeyAchievementsTypesFollowers300DeDe extends _StringsMisskeyAchievementsTypesFollowers300EnUs {
	_StringsMisskeyAchievementsTypesFollowers300DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eine geordnete Reihe, bitte!';
	@override String get description => 'Die Anzahl deiner Follower hat 300 überschritten';
}

// Path: misskey.achievements_.types_.followers500_
class _StringsMisskeyAchievementsTypesFollowers500DeDe extends _StringsMisskeyAchievementsTypesFollowers500EnUs {
	_StringsMisskeyAchievementsTypesFollowers500DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Funkmast';
	@override String get description => 'Die Anzahl deiner Follower hat 500 überschritten';
}

// Path: misskey.achievements_.types_.followers1000_
class _StringsMisskeyAchievementsTypesFollowers1000DeDe extends _StringsMisskeyAchievementsTypesFollowers1000EnUs {
	_StringsMisskeyAchievementsTypesFollowers1000DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Influencer';
	@override String get description => 'Die Anzahl deiner Follower hat 1000 überschritten';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _StringsMisskeyAchievementsTypesCollectAchievements30DeDe extends _StringsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_StringsMisskeyAchievementsTypesCollectAchievements30DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sammler der Errungenschaften';
	@override String get description => 'Schalte 30 Errungenschaften frei';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _StringsMisskeyAchievementsTypesViewAchievements3minDeDe extends _StringsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_StringsMisskeyAchievementsTypesViewAchievements3minDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fan von Errungenschaften';
	@override String get description => 'Schau dir die Liste deiner Errungenschaften für mindestens 3 Minuten an';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _StringsMisskeyAchievementsTypesILoveMisskeyDeDe extends _StringsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_StringsMisskeyAchievementsTypesILoveMisskeyDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'I Love Misskey';
	@override String get description => 'Sende "I ❤ #Misskey"';
	@override String get flavor => 'Danke, dass du Misskey verwendest! - vom Entwicklerteam';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _StringsMisskeyAchievementsTypesFoundTreasureDeDe extends _StringsMisskeyAchievementsTypesFoundTreasureEnUs {
	_StringsMisskeyAchievementsTypesFoundTreasureDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Schatzsuche';
	@override String get description => 'Du hast einen verborgenen Schatz gefunden';
}

// Path: misskey.achievements_.types_.client30min_
class _StringsMisskeyAchievementsTypesClient30minDeDe extends _StringsMisskeyAchievementsTypesClient30minEnUs {
	_StringsMisskeyAchievementsTypesClient30minDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kurze Pause';
	@override String get description => 'Habe Misskey für mindestens 30 Minuten geöffnet';
}

// Path: misskey.achievements_.types_.client60min_
class _StringsMisskeyAchievementsTypesClient60minDeDe extends _StringsMisskeyAchievementsTypesClient60minEnUs {
	_StringsMisskeyAchievementsTypesClient60minDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Munter mit Misskey';
	@override String get description => 'Habe Misskey für mindestens 60 Minuten geöffnet';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _StringsMisskeyAchievementsTypesNoteDeletedWithin1minDeDe extends _StringsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_StringsMisskeyAchievementsTypesNoteDeletedWithin1minDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ups';
	@override String get description => 'Lösche eine Notiz innerhalb von 1 Minute nachdem sie gesendet wurde';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _StringsMisskeyAchievementsTypesPostedAtLateNightDeDe extends _StringsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_StringsMisskeyAchievementsTypesPostedAtLateNightDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nachtaktiv';
	@override String get description => 'Sende mitten in der Nacht eine Notiz';
	@override String get flavor => 'Geh bald schlafen.';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _StringsMisskeyAchievementsTypesPostedAt0min0secDeDe extends _StringsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_StringsMisskeyAchievementsTypesPostedAt0min0secDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zeitansage';
	@override String get description => 'Sende um 00:00 eine Notiz';
	@override String get flavor => 'Klick Klick Klick Dooong';
}

// Path: misskey.achievements_.types_.selfQuote_
class _StringsMisskeyAchievementsTypesSelfQuoteDeDe extends _StringsMisskeyAchievementsTypesSelfQuoteEnUs {
	_StringsMisskeyAchievementsTypesSelfQuoteDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Selbstzitat';
	@override String get description => 'Zitiere eine eigene Notiz';
}

// Path: misskey.achievements_.types_.htl20npm_
class _StringsMisskeyAchievementsTypesHtl20npmDeDe extends _StringsMisskeyAchievementsTypesHtl20npmEnUs {
	_StringsMisskeyAchievementsTypesHtl20npmDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fließende Chronik';
	@override String get description => 'Deine Startseitenchronik erreicht eine Geschwindigkeit von 20 npm (Notizen pro Minute)';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _StringsMisskeyAchievementsTypesViewInstanceChartDeDe extends _StringsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_StringsMisskeyAchievementsTypesViewInstanceChartDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyst';
	@override String get description => 'Schau dir die Messwerte der Instanz an';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadDeDe extends _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hallo Welt!';
	@override String get description => 'Gib "hello world" in der Testumgebung aus';
}

// Path: misskey.achievements_.types_.open3windows_
class _StringsMisskeyAchievementsTypesOpen3windowsDeDe extends _StringsMisskeyAchievementsTypesOpen3windowsEnUs {
	_StringsMisskeyAchievementsTypesOpen3windowsDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Splitscreen';
	@override String get description => 'Habe zur gleichen Zeit mindestens 3 Fenster offen';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceDeDe extends _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_StringsMisskeyAchievementsTypesDriveFolderCircularReferenceDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zyklischer Verweis';
	@override String get description => 'Versuche, in Drive einen Zirkelbezug von Ordnern herzustellen';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _StringsMisskeyAchievementsTypesReactWithoutReadDeDe extends _StringsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_StringsMisskeyAchievementsTypesReactWithoutReadDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hast du das wirklich gelesen?';
	@override String get description => 'Reagiere auf eine Notiz mit mindestens 100 Zeichen innerhalb von 3 Sekunden der Erstellung der Notiz';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _StringsMisskeyAchievementsTypesClickedClickHereDeDe extends _StringsMisskeyAchievementsTypesClickedClickHereEnUs {
	_StringsMisskeyAchievementsTypesClickedClickHereDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Klicke hier';
	@override String get description => 'Du hast hier geklickt';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _StringsMisskeyAchievementsTypesJustPlainLuckyDeDe extends _StringsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_StringsMisskeyAchievementsTypesJustPlainLuckyDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pures Glück';
	@override String get description => 'Kann alle 10 Sekunden mit einer Warscheinlichkeit von 0.005% erhalten werden';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _StringsMisskeyAchievementsTypesSetNameToSyuiloDeDe extends _StringsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_StringsMisskeyAchievementsTypesSetNameToSyuiloDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gottkomplex';
	@override String get description => 'Setze deinen Namen auf "syuilo"';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1DeDe extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated1DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Einjahresjubiläum';
	@override String get description => 'Seit der Erstellung deines Kontos ist 1 Jahr vergangen';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2DeDe extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated2DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zweijahresjubiläum';
	@override String get description => 'Seit der Erstellung deines Kontos sind 2 Jahre vergangen';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3DeDe extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated3DeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dreijahresjubiläum';
	@override String get description => 'Seit der Erstellung deines Kontos sind 3 Jahre vergangen';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _StringsMisskeyAchievementsTypesLoggedInOnBirthdayDeDe extends _StringsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnBirthdayDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Alles Gute Zum Geburtstag';
	@override String get description => 'Logge dich an deinem Geburtstag ein';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayDeDe extends _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Frohes Neujahr';
	@override String get description => 'Logge dich am Neujahrstag ein';
	@override String get flavor => 'Auf ein weiteres tolles Jahr in dieser Instanz';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _StringsMisskeyAchievementsTypesCookieClickedDeDe extends _StringsMisskeyAchievementsTypesCookieClickedEnUs {
	_StringsMisskeyAchievementsTypesCookieClickedDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ein Spiel, in dem du auf einen Keks klickst';
	@override String get description => 'Den Keks geklickt';
	@override String get flavor => 'Bist du hier richtig?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _StringsMisskeyAchievementsTypesBrainDiverDeDe extends _StringsMisskeyAchievementsTypesBrainDiverEnUs {
	_StringsMisskeyAchievementsTypesBrainDiverDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Sende den Link zu Brain Diver';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _StringsMisskeyAchievementsTypesSmashTestNotificationButtonDeDe extends _StringsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_StringsMisskeyAchievementsTypesSmashTestNotificationButtonDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testüberfluss';
	@override String get description => 'Betätige den Benachrichtigungstest mehrfach innerhalb einer extrem kurzen Zeitspanne';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _StringsMisskeyAchievementsTypesTutorialCompletedDeDe extends _StringsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_StringsMisskeyAchievementsTypesTutorialCompletedDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Tutorial abgeschlossen';
}

// Path: misskey.pages_.blocks.note_
class _StringsMisskeyPagesBlocksNoteDeDe extends _StringsMisskeyPagesBlocksNoteEnUs {
	_StringsMisskeyPagesBlocksNoteDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get id => 'Notiz-ID';
	@override String get idDescription => 'Du kannst alternativ auch die Notiz-URL angeben.';
	@override String get detailed => 'Detailierte Ansicht';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeDeDe extends _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_StringsMisskeyAbuseReportNotificationRecipientRecipientTypeDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Email';
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsDeDe extends _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsInvalidParamsDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ungültige Parameter';
	@override String get description => 'Es fehlen Informationen zum Laden der externen Ressource. Überprüfe die übergebene URL.';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedDeDe extends _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Diese Ressource wird nicht unterstützt';
	@override String get description => 'Dieser Ressourcentyp wird nicht unterstützt. Bitte kontaktiere den Seitenbesitzer.';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchDeDe extends _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsFailedToFetchDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fehler beim Abrufen der Daten';
	@override String get fetchErrorDescription => 'Während der Kommunikation mit der externen Seite ist ein Fehler aufgetreten. Kontaktiere den Seitenbesitzer, falls ein erneutes Probieren dieses Problem nicht löst.';
	@override String get parseErrorDescription => 'Während dem Auslesen der externen Daten ist ein Fehler aufgetreten. Kontaktiere den Seitenbesitzer.';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedDeDe extends _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Datenverifizierung fehlgeschlagen';
	@override String get description => 'Die Integritätsprüfung der geladenen Daten ist fehlgeschlagen. Aus Sicherheitsgründen kann die Installation nicht fortgesetzt werden. Kontaktiere den Seitenbesitzer.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedDeDe extends _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'AiScript-Fehler';
	@override String get description => 'Die angeforderten Daten wurden erfolgreich abgerufen, jedoch trat während des AiScript-Parsings ein Fehler auf. Kontaktiere den Autor des Plugins. Detaillierte Fehlerinformationen können über die Javascript-Konsole abgerufen werden.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedDeDe extends _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Das Plugin konnte nicht installiert werden';
	@override String get description => 'Während der Installation des Plugin ist ein Problem aufgetreten. Bitte versuche es erneut. Detaillierte Fehlerinformationen können über die Javascript-Konsole abgerufen werden.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedDeDe extends _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Parsing des Farbschemas fehlgeschlagen';
	@override String get description => 'Die angeforderten Daten wurden erfolgreich abgerufen, jedoch trat während des Farbschema-Parsings ein Fehler auf. Kontaktiere den Autor des Farbschemas. Detaillierte Fehlerinformationen können über die Javascript-Konsole abgerufen werden.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedDeDe extends _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedDeDe._(_StringsDeDe root) : this._root = root, super._(root);

	@override final _StringsDeDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Das Farbschema konnte nicht installiert werden';
	@override String get description => 'Während der Installation des Farbschemas ist ein Problem aufgetreten. Bitte versuche es erneut. Detaillierte Fehlerinformationen können über die Javascript-Konsole abgerufen werden.';
}
