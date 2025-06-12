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
class TranslationsItIt extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsItIt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.itIt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <it-IT>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsItIt _root = this; // ignore: unused_field

	@override 
	TranslationsItIt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsItIt(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAriaItIt aria = _TranslationsAriaItIt._(_root);
	@override late final _TranslationsMisskeyItIt misskey = _TranslationsMisskeyItIt._(_root);
}

// Path: aria
class _TranslationsAriaItIt extends TranslationsAriaEnUs {
	_TranslationsAriaItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get aboutAria => 'Informazioni Su Aria';
	@override String get accessToken => 'Token di accesso';
	@override String get accountAdded => 'Account aggiunto con successo';
	@override TextSpan acknowledgements({required InlineSpan miria, required InlineSpan misskey}) => TextSpan(children: [
		const TextSpan(text: 'Aria è un fork di '),
		miria,
		const TextSpan(text: '.\nLa localizzazione di Aria si basa su file di localizzazione di '),
		misskey,
		const TextSpan(text: '.\nVorremmo mostrare il nostro apprezzamento a tutti i collaboratori di questi progetti.'),
	]);
	@override String get addTab => 'Aggiungi scheda';
	@override String get alwaysExpandCw => 'Espandi sempre avvisi contenuti';
	@override String get alwaysExpandLongNote => 'Espandi sempre una nota lunga';
	@override String get alwaysExpandMediaInSubNote => 'Espandi sempre i media nella sotto-nota';
	@override String get alwaysShowAllReactions => 'Mostra sempre tutte le reazioni';
	@override String get alwaysShowTabHeader => 'Mostra sempre le informazioni sulla scheda';
	@override String get authenticate => 'Autenticati';
	@override String get avatarSize => 'Dimensione avatar';
	@override String get background => 'Sfondo';
	@override String get buttonTypes => 'Tipi di pulsanti';
	@override String get calculating => 'Calcolando...';
	@override String get confirmBeforeFollow => 'Conferma prima di seguire';
	@override String get confirmBeforePost => 'Conferma prima di seguire';
	@override String get confirmBeforeReact => 'Conferma prima di reagire';
	@override String get confirmBeforeRenote => 'Conferma prima di rinotare';
	@override String get copied => 'Copiato negli appunti';
	@override String get copyName => 'Copia Nome';
	@override String get crop => 'Ritaglia';
	@override String get custom => 'Personalizza';
	@override String get defaultReaction => 'Reazioni predefinite';
	@override String deleteAccountTabsConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: 'Vuoi eliminare la scheda ${n} relativa a questo account?',
		other: 'Vuoi eliminare le schede ${n} relative a questo account?',
	);
	@override String deleteFilesConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: 'Sei sicuro di voler eliminare il file?',
		other: 'Sei sicuro di voler eliminare il file?',
	);
	@override String get deleteTabConfirm => 'Sei sicuro di voler eliminare questa scheda?';
	@override String get disableDataSaverWhenOnWifi => 'Disabilita il risparmio dati su Wi-Fi';
	@override String get disableStreamingTimeline => 'Disabilita gli aggiornamenti della timeline in tempo reale';
	@override String get disableSubscribingNotes => 'Disabilita gli aggiornamenti delle reazioni in tempo reale';
	@override String get discardChangesConfirm => 'Sei sicuro di voler scartare le modifiche e tornare indietro?';
	@override String get displayOfThumbnail => 'Mostra miniatura';
	@override String get doubleTapToShow => 'Doppio tap per mostrare';
	@override String get downloaded => 'Scaricato';
	@override String get draw => 'Disegna';
	@override String get editImage => 'Modifica immagine';
	@override String get emojiPickerAutofocus => 'Espandi tastiera all\'apertura del selettore emoji';
	@override String get emojiPickerScale => 'Scala selettore emoji';
	@override String get emojiPickerUseDialog => 'Mostra selettore emoji come finestra';
	@override String get enableEmojiFadeIn => 'Abilita le animazioni di fade-in per le emoji personalizzate';
	@override String get enableFederation => 'Abilita federazione';
	@override String get enableSpellCheck => 'Abilita controllo ortografico';
	@override String get endpoint => 'Endpoint';
	@override String get exitPlayConfirm => 'Sei sicuro di voler uscire dal gioco?';
	@override String get expandNote => 'Espandi nota';
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Confermi il Following a '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria è tradotto in diverse lingue da volontari. Anche tu puoi contribuire su '),
		link,
		const TextSpan(text: '.'),
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' persone attive adesso'),
	]);
	@override String get owner => 'Proprietario';
	@override String get parameters => 'Parametri';
	@override String get paste => 'Incolla';
	@override String get pasteResponseBelow => 'Incolla la risposta qui sotto.';
	@override String get permissionDeniedErrorDescription => 'Il token di accesso non ha il permesso di eseguire questa azione. Effettua nuovamente il login.';
	@override String get playAudio => 'Riproduci audio';
	@override String get playVideo => 'Riproduci video';
	@override String get pleaseCopyResponse => 'Copia questa risposta';
	@override String pleaseLoginAs({required Object user}) => 'Accedi come ${user}';
	@override String get postConfirm => 'Sei sicuro di voler pubblicare questa nota?';
	@override String get reactionConfirm => 'Sei sicuro di voler aggiungere una reazione?';
	@override String get recentlyUsedEmojis => 'Emoji usate di recente';
	@override String get renoteConfirm => 'Sei sicuro di voler rinotare questa nota?';
	@override String get renoteToChannel => 'Rinota in un canale';
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Rinotata da '),
		user,
	]);
	@override String get rotate => 'Ruota';
	@override String get scale => 'Ridimensiona';
	@override String get schedule => 'Pianifica';
	@override String get scheduledNoteError => 'La pubblicazione pianificata delle note non è riuscita';
	@override String get scheduledNotePosted => 'La nota pianificata è stata pubblicata';
	@override String get scheduledNotes => 'Note programmate';
	@override String get selectIcon => 'Seleziona un\'icona';
	@override TextSpan selfRenotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Rinotata da '),
		user,
	]);
	@override String get sendMessageConfirm => 'Sei sicuro di voler rinotare questa nota?';
	@override String get serverUrl => 'Server Url';
	@override String get settingsFileForAria => 'File impostazioni per Aria';
	@override TextSpan settingsForUser({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Impostazioni di '),
		user,
	]);
	@override String get showAvatarsInNote => 'Mostra gli avatar nelle note';
	@override String get showAvatarsInSubNote => 'Mostra gli avatar nelle sotto-note';
	@override String get showEntireImage => 'Mostra l\'intera immagine';
	@override String get showExpandedImage => 'Mostra immagine espansa';
	@override String get showGapBetweenNotesInTimeline => 'Mostra uno spazio tra i post sulla timeline';
	@override String get showImage => 'Mostra immagine';
	@override String get showLikeButtonInNoteFooter => 'Aggiungi "Mi piace" al menu di azione note';
	@override String get showMenuButtonInTabBar => 'Mostra il pulsante menu nella barra delle schede';
	@override String get showNote => 'Mostra nota';
	@override String get showNoteCreatedAt => 'Mostra la data di creazione delle note';
	@override String get showNoteFooter => 'Mostra i pulsanti azione nelle note';
	@override String get showNoteReactionsViewer => 'Mostra i visualizzatori delle reazioni nelle note';
	@override String get showOnlineStatus => 'Mostra stato online';
	@override String get showPopupOnNewNote => 'Mostra popup sulla nuova nota';
	@override String get showQuoteButtonInNoteFooter => 'Aggiungi "Citazione" al menu azione nota';
	@override String get showReactionsCountForEachTypes => 'Vedere il numero di reazioni per ciascun tipo di reazione';
	@override String get showRenotesCount => 'Vedere il numero di renote nelle note';
	@override String get showRepliesCount => 'Vedi il numero di risposte nelle note';
	@override String get showSmallButtons => 'Mostra pulsanti piccoli';
	@override String get showSquaredButtons => 'Mostra pulsanti squadrati';
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Vuoi davvero togliere il Following a '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' ha detto qualcosa'),
	]);
	@override TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Note da '),
		name,
		const TextSpan(text: ' con allegati espliciti'),
	]);
}

// Path: misskey
class _TranslationsMisskeyItIt extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Italiano';
	@override String get headlineMisskey => 'Rete collegata tramite Note';
	@override String get introMisskey => 'Eccoci! Misskey è un servizio di microblogging decentralizzato, libero e aperto. \n\n📡 Puoi pubblicare «Note» per condividere ciò che sta succedendo o per dire a tutti qualcosa su di te. \n\n👍 Puoi reagire inviando emoji rapidi alle «Note» provenienti da altri profili nel Fediverso.\n\n🚀 Esplora un nuovo mondo insieme a noi!';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} è uno dei servizi (chiamati istanze) che utilizzano la piattaforma open source <b>Misskey</b>.';
	@override String monthAndDay({required Object day, required Object month}) => '${day}/${month}';
	@override String get search => 'Cerca';
	@override String get reset => 'Ripristinare';
	@override String get notifications => 'Notifiche';
	@override String get username => 'Nome utente';
	@override String get password => 'Password';
	@override String get initialPasswordForSetup => 'Password iniziale, per avviare le impostazioni';
	@override String get initialPasswordIsIncorrect => 'Password iniziale, sbagliata.';
	@override String get initialPasswordForSetupDescription => 'Se hai installato Misskey di persona, usa la password che hai indicato nel file di configurazione.\nSe stai utilizzando un servizio di hosting Misskey, usa la password fornita dal gestore.\nSe non hai una password preimpostata, lascia il campo vuoto e continua.';
	@override String get forgotPassword => 'Hai dimenticato la password?';
	@override String get fetchingAsApObject => 'Recuperando dal Fediverso...';
	@override String get ok => 'OK';
	@override String get gotIt => 'ok!';
	@override String get cancel => 'Annulla';
	@override String get noThankYou => 'No grazie';
	@override String get enterUsername => 'Inserisci un nome utente';
	@override String renotedBy({required Object user}) => 'Rinotata da ${user}';
	@override String get noNotes => 'Nessuna nota!';
	@override String get noNotifications => 'Nessuna notifica';
	@override String get instance => 'Istanza';
	@override String get settings => 'Impostazioni';
	@override String get notificationSettings => 'Preferenze di notifica';
	@override String get basicSettings => 'Impostazioni base';
	@override String get otherSettings => 'Altre impostazioni';
	@override String get openInWindow => 'Apri in una finestra';
	@override String get profile => 'Profilo';
	@override String get timeline => 'Timeline';
	@override String get noAccountDescription => 'La persona non ha ancora scritto alcuna autobiografia.';
	@override String get login => 'Accedi';
	@override String get loggingIn => 'Accesso in corso...';
	@override String get logout => 'Uscita';
	@override String get signup => 'Iscriviti';
	@override String get uploading => 'Caricamento...';
	@override String get save => 'Salva';
	@override String get users => 'Profili';
	@override String get addUser => 'Aggiungi profilo';
	@override String get favorite => 'Preferiti';
	@override String get favorites => 'Preferiti';
	@override String get unfavorite => 'Rimuovi nota dai preferiti';
	@override String get favorited => 'Aggiunta ai tuoi preferiti.';
	@override String get alreadyFavorited => 'Già tra i tuoi preferiti.';
	@override String get cantFavorite => 'Impossibile aggiungere la nota ai preferiti.';
	@override String get pin => 'Fissa sul profilo';
	@override String get unpin => 'Non fissare sul profilo';
	@override String get copyContent => 'Copia il contenuto';
	@override String get copyLink => 'Copia il link';
	@override String get copyRemoteLink => 'Copia link remoto';
	@override String get copyLinkRenote => 'Copia collegamento alla Rinota';
	@override String get delete => 'Elimina';
	@override String get deleteAndEdit => 'Elimina e modifica';
	@override String get deleteAndEditConfirm => 'Vuoi davvero cancellare questa nota e scriverla di nuovo? Verranno eliminate anche tutte le reazioni, rinote e risposte collegate.';
	@override String get addToList => 'Aggiungi alla lista';
	@override String get addToAntenna => 'Aggiungi all\'antenna';
	@override String get sendMessage => 'Invia messaggio';
	@override String get copyRSS => 'Copia RSS';
	@override String get copyUsername => 'Copia indirizzo del profilo';
	@override String get copyUserId => 'Copia ID del profilo';
	@override String get copyNoteId => 'Copia ID della Nota';
	@override String get copyFileId => 'Copia ID del file';
	@override String get copyFolderId => 'Copia ID della cartella';
	@override String get copyProfileUrl => 'Copia URL del profilo';
	@override String get searchUser => 'Cerca profilo';
	@override String get searchThisUsersNotes => 'Cerca le sue Note';
	@override String get reply => 'Rispondi';
	@override String get loadMore => 'Mostra di più';
	@override String get showMore => 'Espandi';
	@override String get showLess => 'Comprimi';
	@override String get youGotNewFollower => 'Hai un nuovo Follower';
	@override String get receiveFollowRequest => 'Hai ricevuto una richiesta di follow';
	@override String get followRequestAccepted => 'Ha accettato la tua richiesta di follow';
	@override String get mention => 'Menzioni';
	@override String get mentions => 'Menzioni';
	@override String get directNotes => 'Note dirette';
	@override String get importAndExport => 'Importa ed esporta';
	@override String get import => 'Importa';
	@override String get export => 'Esporta';
	@override String get files => 'Allegati';
	@override String get download => 'Scarica';
	@override String driveFileDeleteConfirm({required Object name}) => 'Vuoi davvero eliminare il file "${name}", e le Note a cui è stato allegato?';
	@override String unfollowConfirm({required Object name}) => 'Vuoi davvero togliere il Following a ${name}?';
	@override String get exportRequested => 'Hai richiesto un\'esportazione, e potrebbe volerci tempo. Quando sarà compiuta, il file verrà aggiunto direttamente al Drive.';
	@override String get importRequested => 'Hai richiesto un\'importazione. Potrebbe richiedere un po\' di tempo.';
	@override String get lists => 'Liste';
	@override String get noLists => 'Nessuna lista';
	@override String get note => 'Nota';
	@override String get notes => 'Note';
	@override String get following => 'Following';
	@override String get followers => 'Follower';
	@override String get followsYou => 'Follower';
	@override String get createList => 'Aggiungi una nuova lista';
	@override String get manageLists => 'Gestisci liste';
	@override String get error => 'Errore';
	@override String get somethingHappened => 'Si è verificato un problema';
	@override String get retry => 'Riprova';
	@override String get pageLoadError => 'Caricamento pagina non riuscito. ';
	@override String get pageLoadErrorDescription => 'Questo problema viene normalmente causato da errori di rete o dalla cache del browser. Si prega di pulire la cache, o di attendere e riprovare più tardi.';
	@override String get serverIsDead => 'Il server non risponde. Si prega di attendere e riprovare più tardi.';
	@override String get youShouldUpgradeClient => 'Per visualizzare la pagina è necessario aggiornare il client alla nuova versione e ricaricare.';
	@override String get enterListName => 'Nome della lista';
	@override String get privacy => 'Privacy';
	@override String get makeFollowManuallyApprove => 'Approva i follower manualmente';
	@override String get defaultNoteVisibility => 'Privacy predefinita delle note';
	@override String get follow => 'Segui';
	@override String get followRequest => 'Richiesta di follow';
	@override String get followRequests => 'Relazioni';
	@override String get unfollow => 'Togli Following';
	@override String get followRequestPending => 'Richiesta in approvazione';
	@override String get enterEmoji => 'Inserisci emoji';
	@override String get renote => 'Rinota';
	@override String get unrenote => 'Elimina la Rinota';
	@override String get renoted => 'Rinotata!';
	@override String renotedToX({required Object name}) => 'Rinota da ${name}.';
	@override String get cantRenote => 'È impossibile rinotare questa nota.';
	@override String get cantReRenote => 'È impossibile rinotare una Rinota.';
	@override String get quote => 'Citazione';
	@override String get inChannelRenote => 'Rinota nel canale';
	@override String get inChannelQuote => 'Cita nel canale';
	@override String get renoteToChannel => 'Rinota al canale';
	@override String get renoteToOtherChannel => 'Rinota a un altro canale';
	@override String get pinnedNote => 'Nota in primo piano';
	@override String get pinned => 'Fissa sul profilo';
	@override String get you => 'Tu';
	@override String get clickToShow => 'Contenuto occultato, cliccare solo se si intende vedere';
	@override String get sensitive => 'Esplicito';
	@override String get add => 'Aggiungi';
	@override String get reaction => 'Reazioni';
	@override String get reactions => 'Reazioni';
	@override String get emojiPicker => 'Selettore emoji';
	@override String get pinnedEmojisForReactionSettingDescription => 'Scegli quale sia l\'emoji in cima, quando reagisci';
	@override String get pinnedEmojisSettingDescription => 'Scegli quale sia l\'emoji in cima, quando reagisci';
	@override String get emojiPickerDisplay => 'Visualizza selettore';
	@override String get overwriteFromPinnedEmojisForReaction => 'Sovrascrivi con le impostazioni reazioni';
	@override String get overwriteFromPinnedEmojis => 'Sovrascrivi con le impostazioni globali';
	@override String get reactionSettingDescription2 => 'Trascina per riorganizzare, clicca per cancellare, usa il pulsante "+" per aggiungere.';
	@override String get rememberNoteVisibility => 'Ricordare le impostazioni di visibilità delle note';
	@override String get attachCancel => 'Rimuovi allegato';
	@override String get deleteFile => 'File da Drive eliminato';
	@override String get markAsSensitive => 'Segna come esplicito';
	@override String get unmarkAsSensitive => 'Non segnare come esplicito ';
	@override String get enterFileName => 'Nome del file';
	@override String get mute => 'Silenziare';
	@override String get unmute => 'Riattiva l\'audio';
	@override String get renoteMute => 'Silenziare le Rinota';
	@override String get renoteUnmute => 'Non silenziare le Rinota';
	@override String get block => 'Bloccare';
	@override String get unblock => 'Sbloccare';
	@override String get suspend => 'Sospensione';
	@override String get unsuspend => 'Revoca la sospensione';
	@override String get blockConfirm => 'Vuoi davvero bloccare il profilo?';
	@override String get unblockConfirm => 'Vuoi davvero sbloccare il profilo?';
	@override String get suspendConfirm => 'Vuoi davvero sospendere questo profilo?';
	@override String get unsuspendConfirm => 'Vuoi revocare la sospensione si questo profilo?';
	@override String get selectList => 'Seleziona una lista';
	@override String get editList => 'Modifica Lista';
	@override String get selectChannel => 'Seleziona canale';
	@override String get selectAntenna => 'Scegli un\'antenna';
	@override String get editAntenna => 'Modifica Antenna';
	@override String get createAntenna => 'Crea Antenna';
	@override String get selectWidget => 'Seleziona il riquadro';
	@override String get editWidgets => 'Modifica i riquadri';
	@override String get editWidgetsExit => 'Conferma le modifiche';
	@override String get customEmojis => 'Emoji personalizzate';
	@override String get emoji => 'Emoji';
	@override String get emojis => 'Emoji';
	@override String get emojiName => 'Nome dell\'emoji';
	@override String get emojiUrl => 'URL dell\'emoji';
	@override String get addEmoji => 'Aggiungi un emoji';
	@override String get settingGuide => 'Configurazione suggerita';
	@override String get cacheRemoteFiles => 'Memorizza i file remoti nella cache';
	@override String get cacheRemoteFilesDescription => 'Disabilitando questa opzione, i file remoti verranno linkati direttamente senza essere memorizzati nella cache. Sarà possibile risparmiare spazio di archiviazione sul server, ma il traffico aumenterà in quanto non verranno generate anteprime.';
	@override String get youCanCleanRemoteFilesCache => 'Puoi svuotare tutta la cache cliccando il bottone 🗑️ nella gestione file';
	@override String get cacheRemoteSensitiveFiles => 'Copia nella cache locale i file espliciti remoti';
	@override String get cacheRemoteSensitiveFilesDescription => 'Disattivando questa opzione, i file espliciti verranno richiesti direttamente all\'istanza remota senza essere salvati nel server locale.';
	@override String get flagAsBot => 'Io sono un robot';
	@override String get flagAsBotDescription => 'Attiva questo campo se il profilo esegue principalmente operazioni automatiche. L\'attivazione segnala agli altri sviluppatori come comportarsi per evitare catene d’interazione infinite con altri bot. I sistemi interni di Misskey si adegueranno al fine di trattare questo profilo come bot.';
	@override String get flagAsCat => 'MIIaaaoo!!! (Io sono un gatto è un romanzo del 1905, il primo dello scrittore giapponese Natsume Sōseki)';
	@override String get flagAsCatDescription => 'Miaoo mia miao mi miao?';
	@override String get flagShowTimelineReplies => 'Mostra le risposte alle note sulla timeline.';
	@override String get flagShowTimelineRepliesDescription => 'Attivando, la timeline mostra le Note del profilo ed anche le risposte ad altre Note';
	@override String get autoAcceptFollowed => 'Accetta automaticamente le richieste di follow da profili che già segui';
	@override String get addAccount => 'Aggiungi profilo';
	@override String get reloadAccountsList => 'Ricarica l\'elenco dei profili';
	@override String get loginFailed => 'Accesso non riuscito';
	@override String get showOnRemote => 'Leggi sull\'istanza remota';
	@override String get continueOnRemote => 'Continua da remoto';
	@override String get chooseServerOnMisskeyHub => 'Scegli l\'istanza sul sito Misskey Hub';
	@override String get specifyServerHost => 'Indica l\'indirizzo dell\'istanza';
	@override String get inputHostName => 'Digita il nome del dominio ';
	@override String get general => 'Generali';
	@override String get wallpaper => 'Sfondo';
	@override String get setWallpaper => 'Imposta sfondo';
	@override String get removeWallpaper => 'Elimina lo sfondo';
	@override String searchWith({required Object q}) => 'Cerca: ${q}';
	@override String get youHaveNoLists => 'Non hai ancora creato nessuna lista';
	@override String followConfirm({required Object name}) => 'Confermi il Following a ${name}?';
	@override String get proxyAccount => 'Profilo proxy';
	@override String get proxyAccountDescription => 'Un profilo proxy funziona come follower per i profili remoti, sotto certe condizioni. Ad esempio, quando un profilo locale ne inserisce uno remoto in una lista (senza seguirlo), se nessun altro segue quel profilo remoto, le attività non possono essere distribuite. Dunque, il profilo proxy le seguirà per tutti.';
	@override String get host => 'Host';
	@override String get selectSelf => 'Segli me';
	@override String get selectUser => 'Seleziona profilo';
	@override String get recipient => 'Destinatario';
	@override String get annotation => 'Annotazione preventiva';
	@override String get federation => 'Federazione';
	@override String get instances => 'Istanza';
	@override String get registeredAt => 'Prima federazione';
	@override String get latestRequestReceivedAt => 'Ultima richiesta ricevuta';
	@override String get latestStatus => 'Ultimo stato';
	@override String get storageUsage => 'Capienza dei dischi';
	@override String get charts => 'Grafici';
	@override String get perHour => 'orario';
	@override String get perDay => 'giornaliero';
	@override String get stopActivityDelivery => 'Interrompi la distribuzione di attività';
	@override String get blockThisInstance => 'Bloccare l\'istanza';
	@override String get silenceThisInstance => 'Silenziare l\'istanza';
	@override String get mediaSilenceThisInstance => 'Silenzia i media dell\'istanza';
	@override String get operations => 'Operazioni';
	@override String get software => 'Software';
	@override String get softwareName => 'Nome del software';
	@override String get version => 'Versione';
	@override String get metadata => 'Metadato';
	@override String withNFiles({required Object n}) => '${n} file in allegato';
	@override String get monitor => 'Monitorare';
	@override String get jobQueue => 'Coda di lavoro';
	@override String get cpuAndMemory => 'CPU e Memoria';
	@override String get network => 'Rete';
	@override String get disk => 'Disco';
	@override String get instanceInfo => 'Informazioni sul server';
	@override String get statistics => 'Statistiche';
	@override String get clearQueue => 'Svuota coda';
	@override String get clearQueueConfirmTitle => 'Vuoi davvero svuotare la coda?';
	@override String get clearQueueConfirmText => 'Le note ancora non distribuite non verranno rilasciate. Solitamente, non è necessario eseguire questa operazione.';
	@override String get clearCachedFiles => 'Svuota cache';
	@override String get clearCachedFilesConfirm => 'Vuoi davvero svuotare la cache da tutti i file remoti?';
	@override String get blockedInstances => 'Istanze bloccate';
	@override String get blockedInstancesDescription => 'Elenca le istanze che vuoi bloccare, una per riga. Esse non potranno più interagire con la tua istanza.';
	@override String get silencedInstances => 'Istanze silenziate';
	@override String get silencedInstancesDescription => 'Elenca i nomi host delle istanze che vuoi silenziare. Tutti i profili nelle istanze silenziate vengono trattati come tali. Possono solo inviare richieste di follow e menzionare soltanto i profili locali che seguono. Le istanze bloccate non sono interessate.';
	@override String get mediaSilencedInstances => 'Istanze coi media silenziati';
	@override String get mediaSilencedInstancesDescription => 'Elenca i nomi host delle istanze di cui vuoi silenziare i media, uno per riga. Tutti gli allegati dei profili nelle istanze silenziate per via degli allegati espliciti, verranno impostati come tali, le emoji personalizzate non saranno disponibili. Le istanze bloccate sono escluse.';
	@override String get federationAllowedHosts => 'Server a cui consentire la federazione';
	@override String get federationAllowedHostsDescription => 'Indica gli host dei server a cui è consentita la federazione, uno per ogni linea.';
	@override String get muteAndBlock => 'Silenziare e bloccare';
	@override String get mutedUsers => 'Profili silenziati';
	@override String get blockedUsers => 'Profili bloccati';
	@override String get noUsers => 'Non ci sono profili';
	@override String get editProfile => 'Modifica profilo';
	@override String get noteDeleteConfirm => 'Vuoi davvero eliminare questa Nota?';
	@override String get pinLimitExceeded => 'Non puoi fissare altre note ';
	@override String get done => 'Fine';
	@override String get processing => 'In elaborazione';
	@override String get preview => 'Anteprima';
	@override String get default_ => 'Predefinito';
	@override String defaultValueIs({required Object value}) => 'Predefinito: ${value}';
	@override String get noCustomEmojis => 'Nessun emoji';
	@override String get noJobs => 'Nessun lavoro';
	@override String get federating => 'Federazione';
	@override String get blocked => 'Bloccato';
	@override String get suspended => 'Sospensione';
	@override String get all => 'Tutte';
	@override String get subscribing => 'Iscrizione';
	@override String get publishing => 'Pubblicazione';
	@override String get notResponding => 'Nessuna risposta';
	@override String get instanceFollowing => 'Istanza Following';
	@override String get instanceFollowers => 'Follower dell\'istanza';
	@override String get instanceUsers => 'Profili nell\'istanza';
	@override String get changePassword => 'Aggiorna Password';
	@override String get security => 'Sicurezza';
	@override String get retypedNotMatch => 'Le password non corrispondono.';
	@override String get currentPassword => 'Password attuale';
	@override String get newPassword => 'Nuova Password';
	@override String get newPasswordRetype => 'Conferma password';
	@override String get attachFile => 'Allega file';
	@override String get more => 'Di più!';
	@override String get featured => 'In evidenza';
	@override String get usernameOrUserId => 'Nome utente o ID';
	@override String get noSuchUser => 'Profilo non trovato';
	@override String get lookup => 'Ricerca remota';
	@override String get announcements => 'Annunci';
	@override String get imageUrl => 'URL dell\'immagine';
	@override String get remove => 'Elimina';
	@override String get removed => 'Eliminato con successo';
	@override String removeAreYouSure({required Object x}) => 'Vuoi davvero eliminare "${x}"?';
	@override String deleteAreYouSure({required Object x}) => 'Vuoi davvero eliminare "${x}"?';
	@override String get resetAreYouSure => 'Ripristinare?';
	@override String get areYouSure => 'Confermi?';
	@override String get saved => 'Salvato';
	@override String get upload => 'Carica';
	@override String get keepOriginalUploading => 'Conservare l\'immagine originale.';
	@override String get keepOriginalUploadingDescription => 'Conserva la versione originale quando si caricano le immagini. Se è disattivato, il browser genera l\'immagine per la pubblicazione sul Web durante il caricamento.';
	@override String get fromDrive => 'Dal Drive';
	@override String get fromUrl => 'Dall\'URL';
	@override String get uploadFromUrl => 'Incolla URL immagine';
	@override String get uploadFromUrlDescription => 'URL del file che vuoi caricare';
	@override String get uploadFromUrlRequested => 'Caricamento richiesto';
	@override String get uploadFromUrlMayTakeTime => 'Il caricamento del file può richiedere tempo.';
	@override String uploadNFiles({required Object n}) => 'Caricare ${n} file singolarmente';
	@override String get explore => 'Esplora';
	@override String get messageRead => 'Visualizzato';
	@override String get noMoreHistory => 'Non c\'è più cronologia da visualizzare';
	@override String get startChat => 'Inizia a chattare';
	@override String nUsersRead({required Object n}) => 'Letto da ${n} persone';
	@override String agreeTo({required Object x0}) => 'Sono d\'accordo con ${x0}';
	@override String get agree => 'Accetto';
	@override String get agreeBelow => 'Accetto quanto riportato sotto';
	@override String get basicNotesBeforeCreateAccount => 'Note importanti';
	@override String get termsOfService => 'Condizioni d\'uso del servizio';
	@override String get start => 'Inizia!';
	@override String get home => 'Home';
	@override String get remoteUserCaution => 'Le informazioni potrebbero essere incomplete poiché questo profilo remoto potrebbe non essere completamente federato.';
	@override String get activity => 'Attività';
	@override String get images => 'Immagini';
	@override String get image => 'Immagini';
	@override String get birthday => 'Compleanno';
	@override String yearsOld({required Object age}) => '${age} anni';
	@override String get registeredDate => 'Data iscrizione';
	@override String get location => 'Posizione';
	@override String get theme => 'Tema';
	@override String get themeForLightMode => 'Tema da utilizzare per il modo chiaro';
	@override String get themeForDarkMode => 'Tema da utilizzare per il modo scuro';
	@override String get light => 'Chiaro';
	@override String get dark => 'Scuro';
	@override String get lightThemes => 'Tema Chiaro';
	@override String get darkThemes => 'Tema Scuro';
	@override String get syncDeviceDarkMode => 'Sincronizza il tema scuro con le impostazioni del dispositivo';
	@override String switchDarkModeManuallyWhenSyncEnabledConfirm({required Object x}) => '(${x}) è attiva. Vuoi disattivare la sincronizzazione e passare alla modalità manuale?';
	@override String get drive => 'Drive';
	@override String get fileName => 'Nome dell\'allegato';
	@override String get selectFile => 'Scelta allegato';
	@override String get selectFiles => 'Scelta allegato';
	@override String get selectFolder => 'Seleziona cartella';
	@override String get selectFolders => 'Seleziona cartella';
	@override String get fileNotSelected => 'Nessun file selezionato';
	@override String get renameFile => 'Rinomina file';
	@override String get folderName => 'Nome della cartella';
	@override String get createFolder => 'Nuova cartella';
	@override String get renameFolder => 'Rinomina cartella';
	@override String get deleteFolder => 'Elimina cartella';
	@override String get folder => 'Cartella';
	@override String get addFile => 'Allega';
	@override String get showFile => 'Visualizza file';
	@override String get emptyDrive => 'Il Drive è vuoto';
	@override String get emptyFolder => 'La cartella è vuota';
	@override String get unableToDelete => 'Eliminazione impossibile';
	@override String get inputNewFileName => 'Inserisci nome del nuovo file';
	@override String get inputNewDescription => 'Inserisci una nuova descrizione';
	@override String get inputNewFolderName => 'Inserisci nome della nuova cartella';
	@override String get circularReferenceFolder => 'La cartella di destinazione è una sottocartella della cartella che vuoi spostare.';
	@override String get hasChildFilesOrFolders => 'Impossibile eliminare la cartella perché non è vuota';
	@override String get copyUrl => 'Copia URL';
	@override String get rename => 'Modifica nome';
	@override String get avatar => 'Foto del profilo';
	@override String get banner => 'Intestazione';
	@override String get displayOfSensitiveMedia => 'Visibilità dei media espliciti';
	@override String get whenServerDisconnected => 'Quando la connessione col server è persa';
	@override String get disconnectedFromServer => 'Connessione persa';
	@override String get reload => 'Ricarica';
	@override String get doNothing => 'Ignora';
	@override String get reloadConfirm => 'Vuoi ricaricare?';
	@override String get watch => 'Osserva';
	@override String get unwatch => 'Smetti di Osserva';
	@override String get accept => 'Accetta';
	@override String get reject => 'Rifiuta';
	@override String get normal => 'Normale';
	@override String get instanceName => 'Nome dell\'istanza';
	@override String get instanceDescription => 'Descrizione dell\'istanza';
	@override String get maintainerName => 'Nome dell\'amministratore';
	@override String get maintainerEmail => 'Indirizzo e-mail dell\'amministratore';
	@override String get tosUrl => 'URL delle condizioni d\'uso';
	@override String get thisYear => 'Anno';
	@override String get thisMonth => 'Mese';
	@override String get today => 'Oggi';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => '${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'Pagine';
	@override String get integration => 'App collegate';
	@override String get connectService => 'Connetti';
	@override String get disconnectService => 'Disconnetti';
	@override String get enableLocalTimeline => 'Abilita la timeline locale';
	@override String get enableGlobalTimeline => 'Abilita la timeline federata';
	@override String get disablingTimelinesInfo => 'Anche disabilitandole, gli Amministratori e i Moderatori potranno comunque accedervi.';
	@override String get registration => 'Registrazione';
	@override String get invite => 'Invita';
	@override String get driveCapacityPerLocalAccount => 'Capienza del Drive per profilo locale';
	@override String get driveCapacityPerRemoteAccount => 'Capienza del Drive per profilo remoto';
	@override String get inMb => 'in Megabytes';
	@override String get bannerUrl => 'URL dell\'immagine d\'intestazione';
	@override String get backgroundImageUrl => 'URL dello sfondo';
	@override String get basicInfo => 'Informazioni fondamentali';
	@override String get pinnedUsers => 'Profili in evidenza';
	@override String get pinnedUsersDescription => 'Elenca i profili delle persone che vuoi fissare nella pagina "Esplora".';
	@override String get pinnedPages => 'Pagine in evidenza';
	@override String get pinnedPagesDescription => 'Specifica il percorso delle pagine che vuoi fissare in cima alla pagina dell\'istanza. Una pagina per riga.';
	@override String get pinnedClipId => 'ID della Clip in evidenza';
	@override String get pinnedNotes => 'Note in primo piano';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'Abilita hCaptcha';
	@override String get hcaptchaSiteKey => 'Chiave del sito';
	@override String get hcaptchaSecretKey => 'Chiave segreta';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => 'Abilita hCaptcha';
	@override String get mcaptchaSiteKey => 'Chiave del sito';
	@override String get mcaptchaSecretKey => 'Chiave segreta';
	@override String get mcaptchaInstanceUrl => 'URL della istanza mCaptcha';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'Abilita reCAPTCHA';
	@override String get recaptchaSiteKey => 'Chiave del sito';
	@override String get recaptchaSecretKey => 'Chiave segreta';
	@override String get turnstile => 'Accesso';
	@override String get enableTurnstile => 'Abilita l\'accesso';
	@override String get turnstileSiteKey => 'Chiave del sito';
	@override String get turnstileSecretKey => 'Chiave segreta';
	@override String get avoidMultiCaptchaConfirm => 'Utilizzare diversi Captcha può causare interferenze. Vuoi disattivare l\'altro Captcha? Puoi lasciare diversi Captcha attivi premendo "Cancella".';
	@override String get antennas => 'Antenne';
	@override String get manageAntennas => 'Gestore delle antenne';
	@override String get name => 'Nome';
	@override String get antennaSource => 'Fonte dell\'antenna';
	@override String get antennaKeywords => 'Parole chiavi da ricevere';
	@override String get antennaExcludeKeywords => 'Parole chiavi da escludere';
	@override String get antennaExcludeBots => 'Escludere i Bot';
	@override String get antennaKeywordsDescription => 'Sparando con uno spazio indichi la condizione E (and). Separando con un a capo, indichi la condizione O (or).';
	@override String get notifyAntenna => 'Invia notifiche delle nuove note';
	@override String get withFileAntenna => 'Solo note con file in allegato';
	@override String get excludeNotesInSensitiveChannel => 'Escludere le Note dai canali espliciti';
	@override String get enableServiceworker => 'Abilita ServiceWorker';
	@override String get antennaUsersDescription => 'Elenca un nome utente per riga';
	@override String get caseSensitive => 'Sensibile alla distinzione tra maiuscole e minuscole';
	@override String get withReplies => 'Includere le risposte';
	@override String get connectedTo => 'Connessione ai seguenti profili:';
	@override String get notesAndReplies => 'Note e risposte';
	@override String get withFiles => 'Con allegati';
	@override String get silence => 'Silenziare';
	@override String get silenceConfirm => 'Vuoi davvero silenziare questo profilo?';
	@override String get unsilence => 'Riattiva';
	@override String get unsilenceConfirm => 'Vuoi davvero riattivare questo profilo?';
	@override String get popularUsers => 'Profili popolari';
	@override String get recentlyUpdatedUsers => 'Utenti attivi di recente';
	@override String get recentlyRegisteredUsers => 'Profili iscritti di recente';
	@override String get recentlyDiscoveredUsers => 'Profili scoperti di recente';
	@override String exploreUsersCount({required Object count}) => 'Ci sono ${count} profili';
	@override String get exploreFediverse => 'Esplora il Fediverso';
	@override String get popularTags => 'Hashtag popolari';
	@override String get userList => 'Liste';
	@override String get about => 'Informazioni';
	@override String get aboutMisskey => 'A proposito di Misskey';
	@override String get administrator => 'Amministratore';
	@override String get token => 'Token';
	@override String get x2fa => 'Autenticazione a due fattori';
	@override String get setupOf2fa => 'Impostare l\'autenticazione a due fattori';
	@override String get totp => 'App di autenticazione a due fattori (2FA/MFA)';
	@override String get totpDescription => 'Puoi autenticarti inserendo un codice OTP tramite la tua App di autenticazione a due fattori (2FA/MFA)';
	@override String get moderator => 'Moderatore';
	@override String get moderation => 'moderazione';
	@override String get moderationNote => 'Promemoria di moderazione';
	@override String get moderationNoteDescription => 'Puoi scrivere promemoria condivisi solo tra moderatori.';
	@override String get addModerationNote => 'Aggiungi promemoria di moderazione';
	@override String get moderationLogs => 'Cronologia di moderazione';
	@override String nUsersMentioned({required Object n}) => '${n} profili ne parlano';
	@override String get securityKeyAndPasskey => 'Chiave di sicurezza e accesso';
	@override String get securityKey => 'Chiave di sicurezza';
	@override String get lastUsed => 'Ultima attività';
	@override String lastUsedAt({required Object t}) => 'Uso più recente: ${t}';
	@override String get unregister => 'Rimuovi autenticazione a due fattori (2FA/MFA)';
	@override String get passwordLessLogin => 'Accedi senza password';
	@override String get passwordLessLoginDescription => 'Accedi senza password, usando la chiave di sicurezza';
	@override String get resetPassword => 'Ripristina la password';
	@override String newPasswordIs({required Object password}) => 'La tua nuova password è「${password}」';
	@override String get reduceUiAnimation => 'Ridurre le animazioni dell\'interfaccia';
	@override String get share => 'Condividi';
	@override String get notFound => 'Non trovato';
	@override String get notFoundDescription => 'Nessuna pagina corrisponde all\'URL indicata.';
	@override String get uploadFolder => 'Destinazione caricamento predefinita';
	@override String get markAsReadAllNotifications => 'Segnare tutte le notifiche come lette';
	@override String get markAsReadAllUnreadNotes => 'Segna tutte le note come lette';
	@override String get markAsReadAllTalkMessages => 'Segna tutte le chat come lette';
	@override String get help => 'Guida';
	@override String get inputMessageHere => 'Scrivi messaggio qui';
	@override String get close => 'Chiudi';
	@override String get invites => 'Inviti';
	@override String get members => 'Membri';
	@override String get transfer => 'Trasferisci';
	@override String get title => 'Titolo';
	@override String get text => 'Testo';
	@override String get enable => 'Abilita';
	@override String get next => 'Avanti';
	@override String get retype => 'Conferma';
	@override String noteOf({required Object user}) => 'Note di ${user}';
	@override String get quoteAttached => 'Citazione allegata';
	@override String get quoteQuestion => 'Vuoi aggiungere una citazione?';
	@override String get attachAsFileQuestion => 'Il testo copiato eccede le dimensioni, vuoi allegarlo?';
	@override String get onlyOneFileCanBeAttached => 'È possibile allegare al messaggio soltanto uno file';
	@override String get signinRequired => 'Occorre avere un profilo registrato su questa istanza';
	@override String get signinOrContinueOnRemote => 'Per continuare, devi accedere alla tua istanza o registrarti su questa e poi accedere';
	@override String get invitations => 'Invita';
	@override String get invitationCode => 'Codice di invito';
	@override String get checking => 'Confermando';
	@override String get available => 'Disponibile';
	@override String get unavailable => 'Non puoi usarlo';
	@override String get usernameInvalidFormat => 'Il nome utente deve avere solo caratteri alfanumerici e trattino basso \'_\'';
	@override String get tooShort => 'Troppo breve';
	@override String get tooLong => 'Troppo lungo';
	@override String get weakPassword => 'Password debole';
	@override String get normalPassword => 'Password buona';
	@override String get strongPassword => 'Password forte';
	@override String get passwordMatched => 'Corretta';
	@override String get passwordNotMatched => 'Le password non corrispondono.';
	@override String signinWith({required Object x}) => 'Accedi con ${x}';
	@override String get signinFailed => 'Autenticazione non riuscita. Controlla la tua password e nome utente.';
	@override String get or => 'oppure';
	@override String get language => 'Lingua';
	@override String get uiLanguage => 'Lingua di visualizzazione dell\'interfaccia';
	@override String aboutX({required Object x}) => 'Informazioni su ${x}';
	@override String get emojiStyle => 'Stile emoji';
	@override String get native => 'Nativo';
	@override String get menuStyle => 'Stile menu';
	@override String get style => 'Stile';
	@override String get drawer => 'Drawer';
	@override String get popup => 'Popup';
	@override String get showNoteActionsOnlyHover => 'Mostra le azioni delle Note solo al passaggio del mouse';
	@override String get showReactionsCount => 'Visualizza il numero di reazioni su una nota';
	@override String get noHistory => 'Nessuna cronologia';
	@override String get signinHistory => 'Storico degli accessi al profilo';
	@override String get enableAdvancedMfm => 'Attivare i Misskey Flavoured Markdown (MFM) avanzati';
	@override String get enableAnimatedMfm => 'Attiva MFM animati';
	@override String get doing => 'In corso...';
	@override String get category => 'Categoria';
	@override String get tags => 'Tag';
	@override String get docSource => 'Sorgente della scheda';
	@override String get createAccount => 'Crea il tuo profilo';
	@override String get existingAccount => 'Profilo esistente';
	@override String get regenerate => 'Generare di nuovo';
	@override String get fontSize => 'Dimensione carattere';
	@override String get mediaListWithOneImageAppearance => 'Altezza dell\'elenco media con una sola immagine ';
	@override String limitTo({required Object x}) => 'Limita a ${x}';
	@override String get noFollowRequests => 'Non ci sono richieste di relazione';
	@override String get openImageInNewTab => 'Apri le immagini in un nuovo tab';
	@override String get dashboard => 'Pannello di controllo';
	@override String get local => 'Locale';
	@override String get remote => 'Remota';
	@override String get total => 'Totale';
	@override String get weekOverWeekChanges => 'Settimanale';
	@override String get dayOverDayChanges => 'Giornaliero';
	@override String get appearance => 'Aspetto';
	@override String get clientSettings => 'Impostazioni client';
	@override String get accountSettings => 'Impostazioni profilo';
	@override String get promotion => 'Promossa';
	@override String get promote => 'Pubblicizza';
	@override String get numberOfDays => 'Numero di giorni';
	@override String get hideThisNote => 'Nasconda la nota';
	@override String get showFeaturedNotesInTimeline => 'Mostrare le note di tendenza nella tua timeline';
	@override String get objectStorage => 'Storage S3';
	@override String get useObjectStorage => 'Utilizza lo storage S3 in cloud';
	@override String get objectStorageBaseUrl => 'Base URL';
	@override String get objectStorageBaseUrlDesc => 'URL di riferimento. In caso di utilizzo di proxy o CDN l\'URL è \'https://<bucket>.s3.amazonaws.com\' per S3, \'https://storage.googleapis.com/<bucket>\' per GCS eccetera. ';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => 'Specificare il nome del bucket utilizzato dal provider.';
	@override String get objectStoragePrefix => 'Prefix';
	@override String get objectStoragePrefixDesc => 'I file saranno conservati sotto la directory di questo prefisso.';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageEndpointDesc => 'Lasciare vuoto se si sta utilizzando S3. In caso contrario si prega di specificare l\'endpoint come \'<host>\' oppure \'<host>:<port>\' a seconda del servizio utilizzato.';
	@override String get objectStorageRegion => 'Region';
	@override String get objectStorageRegionDesc => 'Specificate una regione, quale \'xx-east-1\'. Se il servizio in utilizzo non distingue tra regioni, lasciate vuoto o inserite \'us-east-1\'.';
	@override String get objectStorageUseSSL => 'Usare SSL';
	@override String get objectStorageUseSSLDesc => 'Disabilita quest\'opzione se non utilizzi HTTPS per le connessioni API.';
	@override String get objectStorageUseProxy => 'Usa proxy';
	@override String get objectStorageUseProxyDesc => 'Disabilita quest\'opzione se non usi proxy per la connessione API.';
	@override String get objectStorageSetPublicRead => 'Imposta "visibilità pubblica" al momento di caricare';
	@override String get s3ForcePathStyleDesc => 'L\'attivazione di s3ForcePathStyle impone di specificare il nome del bucket come parte del percorso nell\'URL anziché del nome host. Potrebbe tornare utile quando si utilizzano applicazioni come Minio.';
	@override String get serverLogs => 'Log del server';
	@override String get deleteAll => 'Cancella cronologia';
	@override String get showFixedPostForm => 'Visualizzare la finestra di pubblicazione in cima alla timeline';
	@override String get showFixedPostFormInChannel => 'Per i canali, mostra il modulo di pubblicazione in cima alla timeline';
	@override String get withRepliesByDefaultForNewlyFollowed => 'Quando segui nuovi profili, includi le risposte in TL come impostazione predefinita';
	@override String get newNoteRecived => 'Nuove Note da leggere';
	@override String get newNote => 'Nuova Nota';
	@override String get sounds => 'Impostazioni suoni';
	@override String get sound => 'Suono';
	@override String get notificationSoundSettings => 'Preferenze di notifica';
	@override String get listen => 'Ascolta';
	@override String get none => 'Nessuna';
	@override String get showInPage => 'Visualizza in pagina';
	@override String get popout => 'Finestra pop-out';
	@override String get volume => 'Volume';
	@override String get masterVolume => 'Volume principale';
	@override String get notUseSound => 'Non emettere suoni';
	@override String get useSoundOnlyWhenActive => 'Emetti suoni solo quando Misskey è in attività';
	@override String get details => 'Dettagli';
	@override String get renoteDetails => 'Dettagli della Rinota';
	@override String get chooseEmoji => 'Scegli emoji';
	@override String get unableToProcess => 'Impossibile compiere l\'operazione';
	@override String get recentUsed => 'Usato di recente';
	@override String get install => 'Installa';
	@override String get uninstall => 'Disinstalla';
	@override String get installedApps => 'Applicazioni installate';
	@override String get nothing => 'Niente da visualizzare';
	@override String get installedDate => 'Data installazione';
	@override String get lastUsedDate => 'Data di ultimo uso';
	@override String get state => 'Stato';
	@override String get sort => 'Ordina per';
	@override String get ascendingOrder => 'Aumenta';
	@override String get descendingOrder => 'Diminuisce';
	@override String get scratchpad => 'ScratchPad';
	@override String get scratchpadDescription => 'Lo Scratchpad offre un ambiente per esperimenti di AiScript. È possibile scrivere, eseguire e confermare i risultati dell\'interazione del codice con Misskey.';
	@override String get uiInspector => 'UI Inspector';
	@override String get uiInspectorDescription => 'Puoi visualizzare un elenco di elementi UI presenti in memoria. I componenti dell\'interfaccia utente vengono generati dalle funzioni Ui:C:.';
	@override String get output => 'Output';
	@override String get script => 'Script';
	@override String get disablePagesScript => 'Disabilitare AiScript nelle pagine';
	@override String get updateRemoteUser => 'Aggiorna dati dal profilo remoto';
	@override String get unsetUserAvatar => 'Rimozione foto profilo';
	@override String get unsetUserAvatarConfirm => 'Vuoi davvero rimuovere la foto profilo?';
	@override String get unsetUserBanner => 'Rimuovi intestazione profilo';
	@override String get unsetUserBannerConfirm => 'Vuoi davvero rimuovere l\'intestazione dal profilo?';
	@override String get deleteAllFiles => 'Elimina tutti i file';
	@override String get deleteAllFilesConfirm => 'Vuoi davvero eliminare tutti i file?';
	@override String get removeAllFollowing => 'Annulla tutti i follow';
	@override String removeAllFollowingDescription({required Object host}) => 'Togli il Following a tutti i profili su ${host}. Utile, ad esempio, quando l\'istanza non esiste più.';
	@override String get userSuspended => 'L\'utente è in sospensione';
	@override String get userSilenced => 'Profilo silenziato';
	@override String get yourAccountSuspendedTitle => 'Questo profilo è sospeso';
	@override String get yourAccountSuspendedDescription => 'Questo profilo è stato sospeso a causa di una violazione del regolamento. Per informazioni, contattare l\'amministrazione. Si prega di non creare un nuovo account.';
	@override String get tokenRevoked => 'Il token non è valido';
	@override String get tokenRevokedDescription => 'Il token di accesso è scaduto. Per favore, accedi nuovamente.';
	@override String get accountDeleted => 'Profilo eliminato';
	@override String get accountDeletedDescription => 'Questo profilo è stato eliminato.';
	@override String get menu => 'Menù';
	@override String get divider => 'Linea di separazione';
	@override String get addItem => 'Aggiungi elemento';
	@override String get rearrange => 'Riordina';
	@override String get relays => 'Ripetitori';
	@override String get addRelay => 'Aggiungi ripetitore';
	@override String get inboxUrl => 'Inbox URL';
	@override String get addedRelays => 'Ripetitori configurati';
	@override String get serviceworkerInfo => 'Deve essere abilitato per le notifiche push. ';
	@override String get deletedNote => 'Nota eliminata';
	@override String get invisibleNote => 'Nota invisibile';
	@override String get enableInfiniteScroll => 'Abilita scorrimento infinito';
	@override String get visibility => 'Visibilità';
	@override String get poll => 'Sondaggio';
	@override String get useCw => 'Contenuto esplicito';
	@override String get enablePlayer => 'Visualizza';
	@override String get disablePlayer => 'Chiudi';
	@override String get expandTweet => 'Espandi tweet';
	@override String get themeEditor => 'Editor di temi';
	@override String get description => 'Descrizione';
	@override String get describeFile => 'Aggiungi una descrizione d\'immagine';
	@override String get enterFileDescription => 'Inserisci descrizione';
	@override String get author => 'Autore';
	@override String get leaveConfirm => 'Ci sono delle modifiche ancora non salvate. Vuoi cancellarle?';
	@override String get manage => 'Gestione';
	@override String get plugins => 'Estensioni';
	@override String get preferencesBackups => 'Backup delle impostazioni';
	@override String get deck => 'Deck';
	@override String get undeck => 'Esci dal deck';
	@override String get useBlurEffectForModal => 'Utilizza effetto sfocatura per le finestre modali';
	@override String get useFullReactionPicker => 'Usa la totalità del pannello di reazioni';
	@override String get width => 'Larghezza';
	@override String get height => 'Altezza';
	@override String get large => 'Grande';
	@override String get medium => 'Medio';
	@override String get small => 'Piccolo';
	@override String get generateAccessToken => 'Genera token di accesso';
	@override String get permission => 'Autorizzazioni ';
	@override String get adminPermission => 'Privilegi amministrativi';
	@override String get enableAll => 'Abilita tutto';
	@override String get disableAll => 'Disabilitare tutto';
	@override String get tokenRequested => 'Autorizza accesso al profilo';
	@override String get pluginTokenRequestedDescription => 'Il plugin potrà utilizzare le autorizzazioni impostate qui.';
	@override String get notificationType => 'Tipo di notifiche';
	@override String get edit => 'Modifica';
	@override String get emailServer => 'Server email';
	@override String get enableEmail => 'Abilita consegna email';
	@override String get emailConfigInfo => 'Utilizzato per verificare il tuo indirizzo di posta elettronica e per ripristinare la password';
	@override String get email => 'Email';
	@override String get emailAddress => 'Indirizzo di posta elettronica';
	@override String get smtpConfig => 'Impostazioni del server SMTP';
	@override String get smtpHost => 'Host SMTP';
	@override String get smtpPort => 'Porta';
	@override String get smtpUser => 'Nome utente';
	@override String get smtpPass => 'Password';
	@override String get emptyToDisableSmtpAuth => 'Lasciare i campi vuoti se non c\'è autenticazione SMTP';
	@override String get smtpSecure => 'Usare SSL/TLS implicito per le connessioni SMTP';
	@override String get smtpSecureInfo => 'Disabilitare quando è attivo STARTTLS.';
	@override String get testEmail => 'Verifica il funzionamento';
	@override String get wordMute => 'Filtri parole';
	@override String get wordMuteDescription => 'Contrae le Note con la parola o la frase specificata. Permette di espandere le Note, cliccandole.';
	@override String get hardWordMute => 'Filtro parole forte';
	@override String get showMutedWord => 'Elenca le parole silenziate';
	@override String get hardWordMuteDescription => 'Nasconde le Note con la parola o la frase specificata. A differenza delle parole silenziate, la Nota non verrà federata.';
	@override String get regexpError => 'errore regex';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'Si è verificato un errore nell\'espressione regolare alla riga ${line} della parola muta ${tab}:';
	@override String get instanceMute => 'Silenziare l\'istanza';
	@override String userSaysSomething({required Object name}) => '${name} ha detto qualcosa';
	@override String userSaysSomethingAbout({required Object name, required Object word}) => '${name} ha Notato a riguardo di "${word}"';
	@override String get makeActive => 'Attiva';
	@override String get display => 'Visualizza';
	@override String get copy => 'Copia';
	@override String get copiedToClipboard => 'Copiato negli appunti';
	@override String get metrics => 'Statistiche';
	@override String get overview => 'Anteprima';
	@override String get logs => 'Log';
	@override String get delayed => 'Ritardo';
	@override String get database => 'Base dati';
	@override String get channel => 'Canale';
	@override String get create => 'Crea';
	@override String get notificationSetting => 'Impostazioni notifiche';
	@override String get notificationSettingDesc => 'Scegli quali notifiche mostrare.';
	@override String get useGlobalSetting => 'Usa impostazioni generali';
	@override String get useGlobalSettingDesc => 'Quando attiva, verranno utilizzate le impostazioni notifiche del profilo. Altrimenti si possono segliere impostazioni personalizzate.';
	@override String get other => 'Eccetera';
	@override String get regenerateLoginToken => 'Genera di nuovo un token di connessione';
	@override String get regenerateLoginTokenDescription => 'Genera un nuovo token di autenticazione. Solitamente questa operazione non è necessaria: quando si genera un nuovo token, tutti i dispositivi vanno disconnessi.';
	@override String get theKeywordWhenSearchingForCustomEmoji => 'Questa sarà la parola chiave durante la ricerca di emoji personalizzate';
	@override String get setMultipleBySeparatingWithSpace => 'È possibile creare multiple voci separate da spazi.';
	@override String get fileIdOrUrl => 'ID o URL del file';
	@override String get behavior => 'Comportamento';
	@override String get sample => 'Esempio';
	@override String get abuseReports => 'Segnalazioni';
	@override String get reportAbuse => 'Segnalare';
	@override String get reportAbuseRenote => 'Segnalare la Rinota';
	@override String reportAbuseOf({required Object name}) => 'Segnalare ${name}';
	@override String get fillAbuseReportDescription => 'Per favore, spiegaci il motivo della segnalazione. Se riguarda una Nota precisa, indica anche l\'indirizzo URL.';
	@override String get abuseReported => 'La segnalazione è stata inviata. Grazie.';
	@override String get reporter => 'il corrispondente';
	@override String get reporteeOrigin => 'Segnalazione a';
	@override String get reporterOrigin => 'Segnalazione da';
	@override String get send => 'Inviare';
	@override String get openInNewTab => 'Apri in una nuova scheda';
	@override String get openInSideView => 'Apri in vista laterale';
	@override String get defaultNavigationBehaviour => 'Tipo di navigazione predefinita';
	@override String get editTheseSettingsMayBreakAccount => 'Modificare queste impostazioni può danneggiare il profilo';
	@override String get instanceTicker => 'Informazioni sull\'istanza da cui vengono le note';
	@override String waitingFor({required Object x}) => 'Aspettando ${x}';
	@override String get random => 'Casuale';
	@override String get system => 'Sistema';
	@override String get switchUi => 'Cambia interfaccia grafica';
	@override String get desktop => 'Desktop';
	@override String get clip => 'Clip';
	@override String get createNew => 'Crea';
	@override String get optional => 'facoltativo';
	@override String get createNewClip => 'Crea una Clip';
	@override String get unclip => 'Togli Nota dalla Clip';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'Questa nota è già inclusa in "${name}". Si desidera escludere la nota?';
	@override String get public => 'Pubblica';
	@override String get private => 'Privato';
	@override String i18nInfo({required Object link}) => 'Misskey è tradotto in diverse lingue da volontari. Anche tu puoi contribuire su ${link}.';
	@override String get manageAccessTokens => 'Gestisci token di accesso';
	@override String get accountInfo => 'Informazioni profilo';
	@override String get notesCount => 'Conteggio note';
	@override String get repliesCount => 'Numero di risposte inviate';
	@override String get renotesCount => 'Numero di note che hai ricondiviso';
	@override String get repliedCount => 'Numero di risposte ricevute';
	@override String get renotedCount => 'Numero delle tue note ricondivise';
	@override String get followingCount => 'Numero di Following';
	@override String get followersCount => 'Numero di profili che ti seguono';
	@override String get sentReactionsCount => 'Numero di reazioni inviate';
	@override String get receivedReactionsCount => 'Numero di reazioni ricevute';
	@override String get pollVotesCount => 'Numero di voti inviati';
	@override String get pollVotedCount => 'Numero di voti ricevuti';
	@override String get yes => 'Sì';
	@override String get no => 'No';
	@override String get driveFilesCount => 'Numero di file nel Drive';
	@override String get driveUsage => 'Utilizzazione del Drive';
	@override String get noCrawle => 'Rifiuta l\'indicizzazione dai robot.';
	@override String get noCrawleDescription => 'Richiedi che i motori di ricerca non indicizzino la tua pagina di profilo, le tue note, pagine, ecc.';
	@override String get lockedAccountInfo => 'A meno che non imposti la visibilità delle tue note su "Solo ai follower", le tue note sono visibili da tutti, anche se hai configurato l\'account per confermare manualmente le richieste di follow.';
	@override String get alwaysMarkSensitive => 'Segnare automaticamente come espliciti gli allegati';
	@override String get loadRawImages => 'Visualizza le intere immagini allegate invece delle miniature.';
	@override String get disableShowingAnimatedImages => 'Disabilitare le immagini animate';
	@override String get highlightSensitiveMedia => 'Evidenzia i media espliciti';
	@override String get verificationEmailSent => 'Una mail di verifica è stata inviata. Si prega di accedere al collegamento per compiere la verifica.';
	@override String get notSet => 'Non impostato';
	@override String get emailVerified => 'Il tuo indirizzo email è stato verificato';
	@override String get noteFavoritesCount => 'Conteggio note tra i preferiti';
	@override String get pageLikesCount => 'Numero di pagine che ti piacciono';
	@override String get pageLikedCount => 'Numero delle tue pagine che hanno ricevuto "Mi piace"';
	@override String get contact => 'Contatti';
	@override String get useSystemFont => 'Usa il carattere predefinito del sistema';
	@override String get clips => 'Clip';
	@override String get experimentalFeatures => 'Funzioni sperimentali';
	@override String get experimental => 'Sperimentale';
	@override String get thisIsExperimentalFeature => 'Questa è una funzionalità sperimentale. Potrebbe essere malfunzionante o cambiare in futuro.';
	@override String get developer => 'Sviluppatore';
	@override String get makeExplorable => 'Profilo visibile pubblicamente nella pagina "Esplora"';
	@override String get makeExplorableDescription => 'Disabilitando questa opzione, il tuo profilo non verrà elencato nella pagina "Esplora".';
	@override String get duplicate => 'Duplica';
	@override String get left => 'Sinistra';
	@override String get center => 'Centro';
	@override String get wide => 'Largo';
	@override String get narrow => 'Stretto';
	@override String get reloadToApplySetting => 'Le tue preferenze verranno impostate dopo il ricaricamento della pagina. Vuoi ricaricare adesso?';
	@override String get needReloadToApply => 'È necessario riavviare per rendere effettive le modifiche.';
	@override String get needToRestartServerToApply => 'Per attivare le modifiche, occorre riavviare il server.';
	@override String get showTitlebar => 'Visualizza la barra del titolo';
	@override String get clearCache => 'Svuota la cache';
	@override String onlineUsersCount({required Object n}) => '${n} persone attive adesso';
	@override String nUsers({required Object n}) => '${n} profili';
	@override String nNotes({required Object n}) => '${n}Note';
	@override String get sendErrorReports => 'Invia segnalazioni di errori';
	@override String get sendErrorReportsDescription => 'Quando abilitato, se si verifica un problema, informazioni dettagliate sugli errori verranno condivise con Misskey in modo da aiutare a migliorare la qualità del software.\nCiò include informazioni come la versione del sistema operativo, il tipo di navigatore web che usi, la cronologia delle attività, ecc.';
	@override String get myTheme => 'I miei temi';
	@override String get backgroundColor => 'Sfondo';
	@override String get accentColor => 'Colore principale';
	@override String get textColor => 'Testo';
	@override String get saveAs => 'Salva con nome';
	@override String get advanced => 'Avanzato';
	@override String get advancedSettings => 'Impostazioni avanzate';
	@override String get value => 'Valore';
	@override String get createdAt => 'Data di creazione';
	@override String get updatedAt => 'Aggiornato il';
	@override String get saveConfirm => 'Vuoi salvare le modifiche?';
	@override String get deleteConfirm => 'Rimuovere?';
	@override String get invalidValue => 'Questo non è un valore valido.';
	@override String get registry => 'Registro';
	@override String get closeAccount => 'Eliminazione del profilo';
	@override String get currentVersion => 'Versione attuale';
	@override String get latestVersion => 'Ultima versione';
	@override String get youAreRunningUpToDateClient => 'Stai usando la versione più recente del client.';
	@override String get newVersionOfClientAvailable => 'Una nuova versione del tuo client è disponibile.';
	@override String get usageAmount => 'In uso';
	@override String get capacity => 'Capacità';
	@override String get inUse => 'In uso';
	@override String get editCode => 'Modifica codice';
	@override String get apply => 'Applica';
	@override String get receiveAnnouncementFromInstance => 'Ricevi i messaggi informativi dall\'istanza';
	@override String get emailNotification => 'Eventi per notifiche via mail';
	@override String get publish => 'Pubblicare';
	@override String get inChannelSearch => 'Cerca in canale';
	@override String get useReactionPickerForContextMenu => 'Cliccare sul tasto destro per aprire il pannello di reazioni';
	@override String typingUsers({required Object users}) => '${users} sta(nno) scrivendo';
	@override String get jumpToSpecifiedDate => 'Vai alla data ';
	@override String get showingPastTimeline => 'Stai visualizzando una vecchia timeline';
	@override String get clear => 'Cancella';
	@override String get markAllAsRead => 'Segna tutti come già letti';
	@override String get goBack => 'Indietro';
	@override String get unlikeConfirm => 'Non ti piace più?';
	@override String get fullView => 'Schermo intero';
	@override String get quitFullView => 'Esci dalla modalità a schermo intero';
	@override String get addDescription => 'Aggiungi descrizione';
	@override String get userPagePinTip => 'Qui puoi appuntare note, premendo "Fissa sul profilo" nel menù delle singole note.';
	@override String get notSpecifiedMentionWarning => 'Sono stati menzionati profili non inclusi fra i destinatari';
	@override String get info => 'Informazioni';
	@override String get userInfo => 'Informazioni sul profilo';
	@override String get unknown => 'Sconosciuto';
	@override String get onlineStatus => 'Stato di connessione';
	@override String get hideOnlineStatus => 'Modalità invisibile';
	@override String get hideOnlineStatusDescription => 'Attivando questa opzione potresti ridurre l\'usabilità di alcune funzioni, come la ricerca.';
	@override String get online => 'Online';
	@override String get active => 'Attivo';
	@override String get offline => 'Offline';
	@override String get notRecommended => 'Sconsigliato';
	@override String get botProtection => 'Protezione contro i bot';
	@override String get instanceBlocking => 'Istanze bloccate';
	@override String get selectAccount => 'Scegli profilo';
	@override String get switchAccount => 'Cambia profilo';
	@override String get enabled => 'Attivo';
	@override String get disabled => 'Inattivo';
	@override String get quickAction => 'Azioni rapide';
	@override String get user => 'Profilo';
	@override String get administration => 'Gestione';
	@override String get accounts => 'Profilo';
	@override String get switch_ => 'Cambia';
	@override String get noMaintainerInformationWarning => 'Mancano le informazioni sull\'amministratore.';
	@override String get noInquiryUrlWarning => 'Non è stata impostata la URL di contatto';
	@override String get noBotProtectionWarning => 'Non è stata impostata alcuna protezione dai Bot';
	@override String get configure => 'Imposta';
	@override String get postToGallery => 'Pubblicare nella galleria';
	@override String get postToHashtag => 'Pubblica a questo hashtag';
	@override String get gallery => 'Gallerie';
	@override String get recentPosts => 'Pubblicazioni recenti';
	@override String get popularPosts => 'Le più visualizzate';
	@override String get shareWithNote => 'Condividere in nota';
	@override String get ads => 'Banner';
	@override String get expiration => 'Scadenza';
	@override String get startingperiod => 'Periodo di inizio';
	@override String get memo => 'Promemoria';
	@override String get priority => 'Priorità';
	@override String get high => 'Alta';
	@override String get middle => 'Media';
	@override String get low => 'Bassa';
	@override String get emailNotConfiguredWarning => 'Non hai impostato nessun indirizzo e-mail.';
	@override String get ratio => 'Rapporto';
	@override String get previewNoteText => 'Anteprima del testo';
	@override String get customCss => 'CSS personalizzato';
	@override String get customCssWarn => 'Questa impostazione deve essere eseguita da una persona esperta. Una configurazione errata può impedire al client di utilizzare correttamente il sistema.';
	@override String get global => 'Federata';
	@override String get squareAvatars => 'Foto profilo squadrate';
	@override String get sent => 'Inviato';
	@override String get received => 'Ricevuto';
	@override String get searchResult => 'Risultati della Ricerca';
	@override String get hashtags => 'Hashtag';
	@override String get troubleshooting => 'Risoluzione problemi';
	@override String get useBlurEffect => 'Utilizza effetto sfocatura';
	@override String get learnMore => 'Per saperne di più';
	@override String get misskeyUpdated => 'Misskey è stato aggiornato!';
	@override String get whatIsNew => 'Informazioni sull\'aggiornamento';
	@override String get translate => 'Traduci';
	@override String translatedFrom({required Object x}) => 'Traduzione da ${x}';
	@override String get accountDeletionInProgress => 'È in corso l\'eliminazione del profilo';
	@override String get usernameInfo => 'Un nome per identificare univocamente il tuo profilo sull\'istanza. Puoi utilizzare caratteri alfanumerici maiuscoli, minuscoli e il trattino basso (_). Non potrai cambiare nome utente in seguito.';
	@override String get aiChanMode => 'Modalità Ai';
	@override String get devMode => 'Modalità sviluppo';
	@override String get keepCw => 'Mostra i contenuti espliciti';
	@override String get pubSub => 'Publish/Subscribe del profilo';
	@override String get lastCommunication => 'La comunicazione più recente';
	@override String get resolved => 'Risolto';
	@override String get unresolved => 'Non risolto';
	@override String get breakFollow => 'Rimuovi Follower';
	@override String get breakFollowConfirm => 'Vuoi davvero togliere questo Follower?';
	@override String get itsOn => 'Abilitato';
	@override String get itsOff => 'Disabilitato';
	@override String get on => 'Acceso';
	@override String get off => 'Spento';
	@override String get emailRequiredForSignup => 'L\'indirizzo e-mail è obbligatorio per registrarsi';
	@override String get unread => 'Non lette';
	@override String get filter => 'Filtri';
	@override String get controlPanel => 'Pannello di controllo';
	@override String get manageAccounts => 'Gestisci i profili';
	@override String get makeReactionsPublic => 'Pubblicare la lista delle reazioni.';
	@override String get makeReactionsPublicDescription => 'La lista delle reazioni che avete fatto è a disposizione di tutti.';
	@override String get classic => 'Classico';
	@override String get muteThread => 'Silenziare conversazione';
	@override String get unmuteThread => 'Riattiva la conversazione';
	@override String get followingVisibility => 'Visibilità dei Following';
	@override String get followersVisibility => 'Visibilità dei profili che ti seguono';
	@override String get continueThread => 'Altre conversazioni';
	@override String get deleteAccountConfirm => 'Così verrà eliminato il profilo. Vuoi procedere?';
	@override String get incorrectPassword => 'La password è errata.';
	@override String get incorrectTotp => 'Il codice OTP è sbagliato, oppure scaduto.';
	@override String voteConfirm({required Object choice}) => 'Votare per「${choice}」?';
	@override String get hide => 'Nascondere';
	@override String get useDrawerReactionPickerForMobile => 'Mostra sul drawer da dispositivo mobile';
	@override String welcomeBackWithName({required Object name}) => 'Ciao, ${name}! Eccoti di nuovo!';
	@override String clickToFinishEmailVerification({required Object ok}) => 'Premi il bottone "${ok}" per completare la verifica dell\'indirizzo email.';
	@override String get overridedDeviceKind => 'Tipo di dispositivo';
	@override String get smartphone => 'Smartphone';
	@override String get tablet => 'Tablet';
	@override String get auto => 'Automatico';
	@override String get themeColor => 'Colore del tema';
	@override String get size => 'Dimensioni';
	@override String get numberOfColumn => 'Numero di colonne';
	@override String get searchByGoogle => 'Cerca';
	@override String get instanceDefaultLightTheme => 'Istanza, tema luminoso predefinito.';
	@override String get instanceDefaultDarkTheme => 'Istanza, tema scuro predefinito.';
	@override String get instanceDefaultThemeDescription => 'Compilare il codice del tema nel modulo dell\'oggetto.';
	@override String get mutePeriod => 'Durata del mute';
	@override String get period => 'Scadenza';
	@override String get indefinitely => 'Non scade';
	@override String get tenMinutes => '10 minuti';
	@override String get oneHour => '1 ora';
	@override String get oneDay => '1 giorno';
	@override String get oneWeek => '1 settimana';
	@override String get oneMonth => 'Un mese';
	@override String get threeMonths => '3 mesi';
	@override String get oneYear => '1 anno';
	@override String get threeDays => '3 giorni';
	@override String get reflectMayTakeTime => 'Potrebbe essere necessario un po\' di tempo perché ciò abbia effetto.';
	@override String get failedToFetchAccountInformation => 'Impossibile recuperare le informazioni sul profilo';
	@override String get rateLimitExceeded => 'Superato il limite di richieste.';
	@override String get cropImage => 'Ritaglia l\'immagine';
	@override String get cropImageAsk => 'Vuoi ritagliare l\'immagine?';
	@override String get cropYes => 'Ritaglia';
	@override String get cropNo => 'Non ritagliare';
	@override String get file => 'Allegati';
	@override String recentNHours({required Object n}) => 'Ultime ${n} ore';
	@override String recentNDays({required Object n}) => 'Ultimi ${n} giorni';
	@override String get noEmailServerWarning => 'Il server di posta non è configurato.';
	@override String get thereIsUnresolvedAbuseReportWarning => 'Ci sono report non evasi.';
	@override String get recommended => 'Consigliato';
	@override String get check => 'Verifica';
	@override String get driveCapOverrideLabel => 'Modificare la capienza del Drive per questo profilo';
	@override String get driveCapOverrideCaption => 'Se viene specificato meno di 0, viene annullato.';
	@override String get requireAdminForView => 'Per visualizzarli, è necessario aver effettuato l\'accesso con un profilo amministratore.';
	@override String get isSystemAccount => 'Si tratta di un profilo creato e gestito automaticamente dal sistema.';
	@override String typeToConfirm({required Object x}) => 'Digita ${x} per continuare';
	@override String get deleteAccount => 'Eliminazione profilo';
	@override String get document => 'Documentazione';
	@override String get numberOfPageCache => 'Numero di pagine cache';
	@override String get numberOfPageCacheDescription => 'Aumenta l\'usabilità, ma aumenta anche il carico e l\'utilizzo della memoria.';
	@override String get logoutConfirm => 'Vuoi davvero uscire da Misskey? ';
	@override String get logoutWillClearClientData => 'All\'uscita, la configurazione del client viene rimossa dal browser. Per ripristinarla quando si effettua nuovamente l\'accesso, abilitare il backup automatico.';
	@override String get lastActiveDate => 'Data dell\'ultimo utilizzo';
	@override String get statusbar => 'Barra di stato';
	@override String get pleaseSelect => 'Scegli un\'opzione';
	@override String get reverse => 'Inverti';
	@override String get colored => 'Colorato';
	@override String get refreshInterval => 'intervallo di aggiornamento';
	@override String get label => 'Etichetta';
	@override String get type => 'Tipo';
	@override String get speed => 'Velocità';
	@override String get slow => 'Lento';
	@override String get fast => 'Veloce';
	@override String get sensitiveMediaDetection => 'Rilevamento dei contenuti espliciti';
	@override String get localOnly => 'Soltanto locale';
	@override String get remoteOnly => 'Solo remoto';
	@override String get failedToUpload => 'errore di caricamento';
	@override String get cannotUploadBecauseInappropriate => 'Non è possibile caricarlo perché è stato stabilito che potrebbe contenere contenuti inappropriati.';
	@override String get cannotUploadBecauseNoFreeSpace => 'Impossibile caricare a causa della mancanza di spazio libero sul drive.';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'Il file non può essere caricato perché eccede le dimensioni consentite.';
	@override String get cannotUploadBecauseUnallowedFileType => 'Impossibile caricare a causa di un tipo file non autorizzato.';
	@override String get beta => 'Versione beta';
	@override String get enableAutoSensitive => 'Determinazione automatica del NSFW';
	@override String get enableAutoSensitiveDescription => 'Se disponibile, il flag NSFW viene impostato automaticamente sui media utilizzando l\'apprendimento automatico. Anche se questa funzione è disattivata, in alcuni casi può essere impostata automaticamente.';
	@override String get activeEmailValidationDescription => 'Convalida l\'indirizzo e-mail di un utente in modo più aggressivo, determinando se si tratta di un indirizzo e-mail scartato e se è possibile comunicare con esso. Se non è selezionata, l\'indirizzo e-mail viene controllato per verificarne la correttezza solo come stringa.';
	@override String get navbar => 'Barra di navigazione';
	@override String get shuffle => 'Casuale';
	@override String get account => 'Account';
	@override String get move => 'Sposta';
	@override String get pushNotification => 'Notifiche Push';
	@override String get subscribePushNotification => 'Attivare le notifiche push';
	@override String get unsubscribePushNotification => 'Disattivare le notifiche push';
	@override String get pushNotificationAlreadySubscribed => 'Le notifiche push sono già attivate';
	@override String get pushNotificationNotSupported => 'Il client o il server non supporta le notifiche push';
	@override String get sendPushNotificationReadMessage => 'Eliminare le notifiche push dopo la relativa lettura';
	@override String get sendPushNotificationReadMessageCaption => 'Se possibile, verrà mostrata brevemente una notifica con il testo "". Potrebbe influire negativamente sulla durata della batteria.';
	@override String get windowMaximize => 'Ingrandisci';
	@override String get windowMinimize => 'Contrai finestra';
	@override String get windowRestore => 'Ripristina';
	@override String get caption => 'Didascalia';
	@override String get loggedInAsBot => 'Connessione come Bot';
	@override String get tools => 'Strumenti';
	@override String get cannotLoad => 'Caricamento impossibile';
	@override String get numberOfProfileView => 'Visualizzazioni profilo';
	@override String get like => 'Mi piace!';
	@override String get unlike => 'Non mi piace';
	@override String get numberOfLikes => 'Numero di Like';
	@override String get show => 'Visualizza';
	@override String get neverShow => 'Non mostrare più';
	@override String get remindMeLater => 'Rimanda';
	@override String get didYouLikeMisskey => 'Ti piace Misskey?';
	@override String pleaseDonate({required Object host}) => 'Misskey è il software libero utilizzato su ${host}. Offrendo una donazione è più facile continuare a svilupparlo!';
	@override String correspondingSourceIsAvailable({required Object anchor}) => 'Il codice sorgente corrispondente è disponibile su ${anchor}.';
	@override String get roles => 'Ruoli';
	@override String get role => 'Ruolo';
	@override String get noRole => 'Ruolo non trovato';
	@override String get normalUser => 'Profilo standard';
	@override String get undefined => 'Indefinito';
	@override String get assign => 'Assegna';
	@override String get unassign => 'Disassegna';
	@override String get color => 'Colore';
	@override String get manageCustomEmojis => 'Gestisci le emoji personalizzate';
	@override String get manageAvatarDecorations => 'Gestire le decorazioni di foto del profilo';
	@override String get youCannotCreateAnymore => 'Non puoi creare, hai raggiunto il limite.';
	@override String get cannotPerformTemporary => 'Indisponibilità temporanea';
	@override String get cannotPerformTemporaryDescription => 'L\'attività non può essere svolta, poiché si è raggiunto il limite di esecuzioni possibili. Per favore, riprova più tardi.';
	@override String get invalidParamError => 'Errore, parametro non valido';
	@override String get invalidParamErrorDescription => 'Riscontrato un errore nei parametri della richiesta. Solitamente potrebbe essere un malfunzionamento, ma a volte potrebbe essere causato dalla quantità eccessiva di caratteri nel parametro.';
	@override String get permissionDeniedError => 'Errore, attività non autorizzata';
	@override String get permissionDeniedErrorDescription => 'Non si dispone dell\'autorizzazione per eseguire questa operazione.';
	@override String get preset => 'Preimpostato';
	@override String get selectFromPresets => 'Seleziona preimpostato';
	@override String get achievements => 'Conquiste';
	@override String get gotInvalidResponseError => 'Risposta del server non valida';
	@override String get gotInvalidResponseErrorDescription => 'Il server potrebbe essere irraggiungibile o in manutenzione. Riprova più tardi.';
	@override String get thisPostMayBeAnnoying => 'Questa nota potrebbe essere offensiva';
	@override String get thisPostMayBeAnnoyingHome => 'Pubblica sulla timeline principale';
	@override String get thisPostMayBeAnnoyingCancel => 'Annulla';
	@override String get thisPostMayBeAnnoyingIgnore => 'Pubblica lo stesso';
	@override String get collapseRenotes => 'Comprimi le Rinota già viste';
	@override String get collapseRenotesDescription => 'Comprimi le Note con cui hai già interagito.';
	@override String get internalServerError => 'Errore interno del server';
	@override String get internalServerErrorDescription => 'Si è verificato un errore imprevisto all\'interno del server';
	@override String get copyErrorInfo => 'Copia le informazioni sull\'errore';
	@override String get joinThisServer => 'Registrati su questa istanza';
	@override String get exploreOtherServers => 'Trova altre istanze';
	@override String get letsLookAtTimeline => 'Sbircia la timeline';
	@override String get disableFederationConfirm => 'Vuoi davvero disattivare la federazione?';
	@override String get disableFederationConfirmWarn => 'Anche se defederate, le Note continueranno ad essere pubbliche, se non diversamente specificato. Di solito, non è necessario far questo.';
	@override String get disableFederationOk => 'Disabilita federazione';
	@override String get invitationRequiredToRegister => 'L\'accesso a questa istanza è solo ad invito. Può registrarsi solo chi ha un codice fornito dall\'amministrazione.';
	@override String get emailNotSupported => 'L\'istanza non supporta l\'invio di email';
	@override String get postToTheChannel => 'Pubblica nel canale';
	@override String get cannotBeChangedLater => 'Non sarà più modificabile';
	@override String get reactionAcceptance => 'Reazioni consentite';
	@override String get likeOnly => 'Solo i Like';
	@override String get likeOnlyForRemote => 'Solo Like remoti';
	@override String get nonSensitiveOnly => 'Soltanto non espliciti';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'Soltanto non espliciti (reazioni remote)';
	@override String get rolesAssignedToMe => 'I miei ruoli';
	@override String get resetPasswordConfirm => 'Vuoi davvero ripristinare la password?';
	@override String get sensitiveWords => 'Parole esplicite';
	@override String get sensitiveWordsDescription => 'Imposta automaticamente "Home" alla visibilità delle Note che contengono una qualsiasi parola tra queste configurate. Puoi separarle per riga.';
	@override String get sensitiveWordsDescription2 => 'Gli spazi creano la relazione "E" tra parole (questo E quello). Racchiudere una parola nelle slash "/" la trasforma in Espressione Regolare.';
	@override String get prohibitedWords => 'Parole proibite';
	@override String get prohibitedWordsDescription => 'Verrà impedito di pubblicare Note che abbiano le parole indicate. Puoi impostare più parole, separatamente, su ogni riga.';
	@override String get prohibitedWordsDescription2 => 'Gli spazi creano la relazione "E" tra parole (questo E quello). Racchiudere una parola nelle slash "/" la trasforma in Espressione Regolare.';
	@override String get hiddenTags => 'Hashtag nascosti';
	@override String get hiddenTagsDescription => 'Impedire la visualizzazione del tag impostato nei trend. Puoi impostare più valori, uno per riga.';
	@override String get notesSearchNotAvailable => 'Non è possibile cercare tra le Note.';
	@override String get license => 'Licenza';
	@override String get unfavoriteConfirm => 'Vuoi davvero rimuovere la preferenza?';
	@override String get myClips => 'Le mie Clip';
	@override String get drivecleaner => 'Pulizia del Drive';
	@override String get retryAllQueuesNow => 'Ritenta di consumare tutte le code';
	@override String get retryAllQueuesConfirmTitle => 'Vuoi ritentare adesso?';
	@override String get retryAllQueuesConfirmText => 'Potrebbe sovraccaricare il server temporaneamente.';
	@override String get enableChartsForRemoteUser => 'Abilita i grafici per i profili remoti';
	@override String get enableChartsForFederatedInstances => 'Abilita i grafici per le istanze federate';
	@override String get enableStatsForFederatedInstances => 'Informazioni statistiche sui server federati';
	@override String get showClipButtonInNoteFooter => 'Aggiungi il bottone Clip tra le azioni delle Note';
	@override String get reactionsDisplaySize => 'Grandezza delle reazioni';
	@override String get limitWidthOfReaction => 'Limita la larghezza delle reazioni e ridimensionale';
	@override String get noteIdOrUrl => 'ID della Nota o URL';
	@override String get video => 'Video';
	@override String get videos => 'Video';
	@override String get audio => 'Audio';
	@override String get audioFiles => 'Audio';
	@override String get dataSaver => 'Risparmia dati';
	@override String get accountMigration => 'Migrazione del profilo';
	@override String get accountMoved => 'Questo profilo ha migrato altrove:';
	@override String get accountMovedShort => 'Questo profilo è stato migrato';
	@override String get operationForbidden => 'Operazione non consentita';
	@override String get forceShowAds => 'Mostra sempre i banner';
	@override String get addMemo => 'Aggiungi Memo';
	@override String get editMemo => 'Modifica il promemoria';
	@override String get reactionsList => 'Chi ha reagito?';
	@override String get renotesList => 'Chi ha Rinotato?';
	@override String get notificationDisplay => 'Stile delle notifiche';
	@override String get leftTop => 'In alto a sinistra';
	@override String get rightTop => 'In alto a destra';
	@override String get leftBottom => 'In basso a sinistra';
	@override String get rightBottom => 'In basso a destra';
	@override String get stackAxis => 'Allineamento';
	@override String get vertical => 'Verticale';
	@override String get horizontal => 'Laterale';
	@override String get position => 'Posizione';
	@override String get serverRules => 'Regolamento';
	@override String get pleaseConfirmBelowBeforeSignup => 'Per iscriversi, occorre essere d\'accordo con le seguenti condizioni.';
	@override String get pleaseAgreeAllToContinue => 'Occorre accettare tutte le condizioni prima di continuare.';
	@override String get continue_ => 'Continua';
	@override String get preservedUsernames => 'Nomi utente riservati';
	@override String get preservedUsernamesDescription => 'Elenca, uno per linea, i nomi utente che non possono essere registrati durante la creazione del profilo. La restrizione non si applica agli amministratori. Inoltre, i profili già registrati sono esenti.';
	@override String get createNoteFromTheFile => 'Crea Nota da questo file';
	@override String get archive => 'Archivio';
	@override String get archived => 'Archiviato';
	@override String get unarchive => 'Annulla archiviazione';
	@override String channelArchiveConfirmTitle({required Object name}) => 'Vuoi davvero archiviare ${name}?';
	@override String get channelArchiveConfirmDescription => 'Un canale archiviato non compare nell\'elenco canali, nemmeno nei risultati di ricerca. Non può ricevere nemmeno nuove Note.';
	@override String get thisChannelArchived => 'Questo canale è stato archiviato.';
	@override String get displayOfNote => 'Visualizzazione delle Note';
	@override String get initialAccountSetting => 'Impostazioni iniziali del profilo';
	@override String get youFollowing => 'Following';
	@override String get preventAiLearning => 'Impedisci l\'apprendimento della IA';
	@override String get preventAiLearningDescription => 'Aggiungendo il campo "noai" alla risposta HTML, si indica ai Robot esterni di non usare testi e allegati per addestrare sistemi di Machine Learning (IA predittiva/generativa). Anche se è impossibile sapere se la richiesta venga onorata o semplicemente ignorata.';
	@override String get options => 'Opzioni del ruolo';
	@override String get specifyUser => 'Profilo specifico';
	@override String get lookupConfirm => 'Vuoi davvero richiedere informazioni?';
	@override String get openTagPageConfirm => 'Vuoi davvero aprire la pagina dell\'hashtag?';
	@override String get specifyHost => 'Host specifici';
	@override String get failedToPreviewUrl => 'Anteprima non disponibile';
	@override String get update => 'Aggiorna';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'Ruoli che possono usare questa emoji come reazione';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'Se non viene specificato alcun ruolo, chiunque può reagire con questa emoji.';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'Questi ruoli devono essere pubblici';
	@override String get cancelReactionConfirm => 'Vuoi annullare la tua reazione?';
	@override String get changeReactionConfirm => 'Vuoi cambiare la tua reazione?';
	@override String get later => 'Non ora';
	@override String get goToMisskey => 'Vai a Misskey';
	@override String get additionalEmojiDictionary => 'Dizionario aggiuntivo emoji';
	@override String get installed => 'Installazione avvenuta';
	@override String get branding => 'Branding';
	@override String get enableServerMachineStats => 'Pubblicare le informazioni sul server';
	@override String get enableIdenticonGeneration => 'Generazione automatica delle Identicon';
	@override String get turnOffToImprovePerformance => 'Disattiva, per migliorare le prestazioni';
	@override String get createInviteCode => 'Genera codice di invito';
	@override String get createWithOptions => 'Genera con opzioni';
	@override String get createCount => 'Conteggio inviti';
	@override String get inviteCodeCreated => 'Inviti generati';
	@override String get inviteLimitExceeded => 'Hai raggiunto il numero massimo di codici invito generabili.';
	@override String createLimitRemaining({required Object limit}) => 'Inviti generabili: ${limit} rimanenti';
	@override String inviteLimitResetCycle({required Object time, required Object limit}) => 'Alle ${time}, il limite verrà ripristinato a ${limit}';
	@override String get expirationDate => 'Scadenza';
	@override String get noExpirationDate => 'Senza scadenza';
	@override String get inviteCodeUsedAt => 'Codice di invito usato alle';
	@override String get registeredUserUsingInviteCode => 'Codice di invito usato da';
	@override String get waitingForMailAuth => 'In attesa della verifica email';
	@override String get inviteCodeCreator => 'Codice di invito creato da';
	@override String get usedAt => 'Usato alle';
	@override String get unused => 'Inutilizzato';
	@override String get used => 'Utilizzato';
	@override String get expired => 'Scaduto';
	@override String get doYouAgree => 'Accetti le condizioni?';
	@override String get beSureToReadThisAsItIsImportant => 'Si prega di leggere attentamente perché è importante.';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => 'Dichiaro di aver letto attentamente "${x}" e accettarne le condizioni.';
	@override String get dialog => 'Dialogo';
	@override String get icon => 'Ritratto';
	@override String get forYou => 'Per te';
	@override String get currentAnnouncements => 'Annunci attuali';
	@override String get pastAnnouncements => 'Annunci precedenti';
	@override String get youHaveUnreadAnnouncements => 'Ci sono Annunci non letti';
	@override String get useSecurityKey => 'Per utilizzare la chiave di sicurezza o la passkey, segui le indicazioni del dispositivo';
	@override String get replies => 'Risposte';
	@override String get renotes => 'Rinota';
	@override String get loadReplies => 'Leggi le risposte';
	@override String get loadConversation => 'Leggi la conversazione';
	@override String get pinnedList => 'Elenco in primo piano';
	@override String get keepScreenOn => 'Mantenere lo schermo acceso';
	@override String get verifiedLink => 'Abbiamo confermato la validità di questo collegamento';
	@override String get notifyNotes => 'Notifica nuove Note';
	@override String get unnotifyNotes => 'Interrompi le notifiche di nuove Note';
	@override String get authentication => 'Autenticazione';
	@override String get authenticationRequiredToContinue => 'Per procedere, è richiesta l\'autenticazione';
	@override String get dateAndTime => 'Data e Ora';
	@override String get showRenotes => 'Includi le Rinota';
	@override String get edited => 'Modificato';
	@override String get notificationRecieveConfig => 'Preferenze di notifica';
	@override String get mutualFollow => 'Follow reciproco';
	@override String get followingOrFollower => 'Following o Follower';
	@override String get fileAttachedOnly => 'Solo con allegati';
	@override String get showRepliesToOthersInTimeline => 'Risposte altrui nella TL';
	@override String get hideRepliesToOthersInTimeline => 'Nascondi Riposte altrui nella TL';
	@override String get showRepliesToOthersInTimelineAll => 'Mostra le risposte dei tuoi follow nella TL';
	@override String get hideRepliesToOthersInTimelineAll => 'Nascondi le risposte dei tuoi follow nella TL';
	@override String get confirmShowRepliesAll => 'Questa è una attività irreversibile. Vuoi davvero includere tutte le risposte dei following in TL?';
	@override String get confirmHideRepliesAll => 'Questa è una attività irreversibile. Vuoi davvero escludere tutte le risposte dei following in TL?';
	@override String get externalServices => 'Servizi esterni';
	@override String get sourceCode => 'Codice sorgente';
	@override String get sourceCodeIsNotYetProvided => '';
	@override String get repositoryUrl => 'URL della repository';
	@override String get repositoryUrlDescription => 'Se esiste un repository il cui il codice sorgente è disponibile pubblicamente, inserisci il suo URL. Se stai utilizzando Misskey così com\'è (senza alcuna modifica al codice sorgente), inserisci https://github.com/misskey-dev/misskey.';
	@override String get repositoryUrlOrTarballRequired => 'Se non disponi di un repository pubblico, dovrai fornire un file tarball (tar). Vedere .config/example.yml per i dettagli.';
	@override String get feedback => 'Feedback';
	@override String get feedbackUrl => 'URL di feedback';
	@override String get impressum => 'Dichiarazione di proprietà';
	@override String get impressumUrl => 'URL della dichiarazione di proprietà';
	@override String get impressumDescription => 'La dichiarazione di proprietà, è obbligatoria in alcuni paesi come la Germania (Impressum).';
	@override String get privacyPolicy => 'Informativa ai sensi del Reg. UE 2016/679 (GDPR)';
	@override String get privacyPolicyUrl => 'URL della informativa privacy';
	@override String get tosAndPrivacyPolicy => 'Condizioni d\'uso e informativa privacy';
	@override String get avatarDecorations => 'Decorazioni foto profilo';
	@override String get attach => 'Applica';
	@override String get detach => 'Rimuovi';
	@override String get detachAll => 'Togli tutto';
	@override String get angle => 'Angolo';
	@override String get flip => 'Inverti';
	@override String get showAvatarDecorations => 'Mostra decorazione della foto profilo';
	@override String get releaseToRefresh => 'Rilascia per aggiornare';
	@override String get refreshing => 'Aggiornamento...';
	@override String get pullDownToRefresh => 'Trascinare per aggiornare';
	@override String get useGroupedNotifications => 'Mostra le notifiche raggruppate';
	@override String get signupPendingError => 'Si è verificato un problema durante la verifica del tuo indirizzo email. Potrebbe essere scaduto il collegamento temporaneo.';
	@override String get cwNotationRequired => 'Devi indicare perché il contenuto è indicato come esplicito.';
	@override String get doReaction => 'Reagisci';
	@override String get code => 'Codice';
	@override String get reloadRequiredToApplySettings => 'Per applicare le impostazioni, occorre ricaricare.';
	@override String remainingN({required Object n}) => 'Rimangono: ${n}';
	@override String get overwriteContentConfirm => 'Vuoi davvero sostituire l\'attuale contenuto?';
	@override String get seasonalScreenEffect => 'Abilita gli effetti speciali stagionali';
	@override String get decorate => 'Decora';
	@override String get addMfmFunction => 'Aggiungi decorazioni';
	@override String get enableQuickAddMfmFunction => 'Attiva il selettore di funzioni MFM';
	@override String get bubbleGame => 'Bubble Game';
	@override String get sfx => 'Effetti sonori';
	@override String get soundWillBePlayed => 'Con musica ed effetti sonori';
	@override String get showReplay => 'Vedi i replay';
	@override String get replay => 'Replay';
	@override String get replaying => 'Replay in corso';
	@override String get endReplay => 'Termina replay';
	@override String get copyReplayData => 'Copia replay';
	@override String get ranking => 'Classifica';
	@override String lastNDays({required Object n}) => 'Ultimi ${n} giorni';
	@override String get backToTitle => 'Torna al titolo';
	@override String get hemisphere => 'Geolocalizzazione';
	@override String get withSensitive => 'Mostra le Note con allegati espliciti';
	@override String userSaysSomethingSensitive({required Object name}) => 'Note da ${name} con allegati espliciti';
	@override String get enableHorizontalSwipe => 'Trascinare per invertire le colonne';
	@override String get loading => 'Caricamento';
	@override String get surrender => 'Annulla';
	@override String get gameRetry => 'Riprova';
	@override String get notUsePleaseLeaveBlank => 'Lasciare vuoto, se non in uso';
	@override String get useTotp => 'Usare il codice OTP';
	@override String get useBackupCode => 'Usare il codice usa-e-getta';
	@override String get launchApp => 'Esegui l\'App';
	@override String get useNativeUIForVideoAudioPlayer => 'Riprodurre audio/video usando le funzionalità del browser';
	@override String get keepOriginalFilename => 'Mantieni il nome file originale';
	@override String get keepOriginalFilenameDescription => 'Disattivandola, i file verranno caricati usando nomi casuali.';
	@override String get noDescription => 'Manca la descrizione';
	@override String get alwaysConfirmFollow => 'Richiedi conferma per i Follow';
	@override String get inquiry => 'Contattaci';
	@override String get tryAgain => 'Per favore riprova';
	@override String get confirmWhenRevealingSensitiveMedia => 'Richiedi conferma prima di mostrare gli allegati espliciti';
	@override String get sensitiveMediaRevealConfirm => 'Questo allegato è esplicito, vuoi vederlo?';
	@override String get createdLists => 'Liste create';
	@override String get createdAntennas => 'Antenne create';
	@override String fromX({required Object x}) => 'Da ${x}';
	@override String get genEmbedCode => 'Ottieni il codice di incorporamento';
	@override String get noteOfThisUser => 'Elenco di Note di questo profilo';
	@override String get clipNoteLimitExceeded => 'Non è possibile aggiungere ulteriori Note a questa Clip.';
	@override String get performance => 'Prestazioni';
	@override String get modified => 'Modificato';
	@override String get discard => 'Scarta';
	@override String thereAreNChanges({required Object n}) => 'Ci sono ${n} cambiamenti';
	@override String get signinWithPasskey => 'Accedi con passkey';
	@override String get unknownWebAuthnKey => 'Questa è una passkey sconosciuta.';
	@override String get passkeyVerificationFailed => 'La verifica della passkey non è riuscita.';
	@override String get passkeyVerificationSucceededButPasswordlessLoginDisabled => 'La verifica della passkey è riuscita, ma l\'accesso senza password è disabilitato.';
	@override String get messageToFollower => 'Messaggio ai follower';
	@override String get target => 'Riferimento';
	@override String get testCaptchaWarning => 'Questa funzione è destinata al test CAPTCHA. <strong>Da non utilizzare in ambiente di produzione.</strong>';
	@override String get prohibitedWordsForNameOfUser => 'Parole proibite (nome utente)';
	@override String get prohibitedWordsForNameOfUserDescription => 'Il sistema rifiuta di rinominare un utente, se il nome contiene qualsiasi parola nell\'elenco. Sono esenti i profili con privilegi di moderazione.';
	@override String get yourNameContainsProhibitedWords => 'Il nome che hai scelto contiene una o più parole vietate';
	@override String get yourNameContainsProhibitedWordsDescription => 'Se desideri comunque utilizzare questo nome, contatta l\'\'amministrazione.';
	@override String get thisContentsAreMarkedAsSigninRequiredByAuthor => 'L\'autore richiede di iscriversi per vedere il contenuto';
	@override String get lockdown => 'Isolamento';
	@override String get pleaseSelectAccount => 'Per favore, seleziona un profilo';
	@override String get availableRoles => 'Ruoli disponibili';
	@override String get acknowledgeNotesAndEnable => 'Attivare dopo averne compreso il comportamento.';
	@override String get federationSpecified => 'Questo server è federato solo con istanze specifiche del Fediverso. Puoi interagire solo con quelle scelte dall\'amministrazione.';
	@override String get federationDisabled => 'Questo server ha la federazione disabilitata. Non puoi interagire con profili provenienti da altri server.';
	@override String get confirmOnReact => 'Confermare le reazioni';
	@override String reactAreYouSure({required Object emoji}) => 'Vuoi davvero reagire con ${emoji} ?';
	@override String get markAsSensitiveConfirm => 'Vuoi davvero indicare questo contenuto multimediale come esplicito?';
	@override String get unmarkAsSensitiveConfirm => 'Vuoi davvero indicare come non esplicito il contenuto multimediale?';
	@override String get preferences => 'Preferenze';
	@override String get accessibility => 'Accessibilità';
	@override String get preferencesProfile => 'Profilo preferenze';
	@override String get copyPreferenceId => 'Copia ID preferenze';
	@override String get resetToDefaultValue => 'Ripristina a predefinito';
	@override String get overrideByAccount => 'Sovrascrivere col profilo';
	@override String get untitled => 'Senza titolo';
	@override String get noName => 'Senza nome';
	@override String get skip => 'Salta';
	@override String get restore => 'Ripristina';
	@override String get syncBetweenDevices => 'Sincronizzazione tra i dispositivi';
	@override String get preferenceSyncConflictTitle => 'Sul server esiste già il valore impostato';
	@override String get preferenceSyncConflictText => 'Le impostazione sincronizzata salverà il valore sul server. Però, bada che esiste già un valore sul server. Quale vorresti sovrascrivere?';
	@override String get preferenceSyncConflictChoiceMerge => 'Integra';
	@override String get preferenceSyncConflictChoiceServer => 'Valore del server';
	@override String get preferenceSyncConflictChoiceDevice => 'Valore del dispositivo';
	@override String get preferenceSyncConflictChoiceCancel => 'Annulla la sincronizzazione';
	@override String get paste => 'Incolla';
	@override String get emojiPalette => 'Tavolozza emoji';
	@override String get postForm => 'Finestra di pubblicazione';
	@override String get textCount => 'Il numero di caratteri';
	@override String get information => 'Informazioni';
	@override String get chat => 'Chat';
	@override String get migrateOldSettings => 'Migrare le vecchie impostazioni';
	@override String get migrateOldSettings_description => 'Di solito, viene fatto automaticamente. Se per qualche motivo non fossero migrate con successo, è possibile avviare il processo di migrazione manualmente, sovrascrivendo le configurazioni attuali.';
	@override String get compress => 'Compressione';
	@override String get right => 'Destra';
	@override String get bottom => 'Sotto';
	@override String get top => 'Sopra';
	@override String get embed => 'Incorporare';
	@override String get settingsMigrating => 'Migrazione delle impostazioni. Attendere prego ... (Puoi anche migrare manualmente in un secondo momento, nel menu: Impostazioni → Altro → Migrazione delle impostazioni)';
	@override String get readonly => 'Sola lettura';
	@override String get goToDeck => 'Torna al Deck';
	@override String get federationJobs => 'Coda di federazione';
	@override String get driveAboutTip => 'Il Drive mostra l\'elenco di file caricati in passato. Puoi organizzarli in cartelle, riusarli allegandoli ad altre note, o caricarli in anticipo e poi pubblicarli in un secondo momento. Tieni presente che se elimini un file, non sarà più visibile in nessuno degli oggetti a cui è allegato (Note, pagine, avatar, banner, ecc.)';
	@override String get scrollToClose => 'Scorri per chiudere';
	@override String get advice => 'Consiglio';
	@override String get realtimeMode => 'Modalità in tempo reale';
	@override String get turnItOn => 'Attivare';
	@override String get turnItOff => 'Disattivare';
	@override String get emojiMute => 'Silenzia emoji';
	@override String get emojiUnmute => 'De silenzia emoji';
	@override String muteX({required Object x}) => 'Silenzia ${x}';
	@override String unmuteX({required Object x}) => 'De silenzia ${x}';
	@override String get abort => 'Annulla';
	@override String get tip => 'Suggerimento';
	@override String get redisplayAllTips => 'Mostra tutti i suggerimenti';
	@override String get hideAllTips => 'Nascondi tutti i suggerimenti';
	@override String get defaultImageCompressionLevel => 'Livello predefinito di compressione immagini';
	@override String get defaultImageCompressionLevel_description => 'La compressione diminuisce la qualità dell\'immagine, poca compressione mantiene alta qualità delle immagini. Aumentandola, si riducono le dimensioni del file, a discapito della qualità dell\'immagine.';
	@override late final _TranslationsMisskeyChatItIt chat_ = _TranslationsMisskeyChatItIt._(_root);
	@override late final _TranslationsMisskeyEmojiPaletteItIt emojiPalette_ = _TranslationsMisskeyEmojiPaletteItIt._(_root);
	@override late final _TranslationsMisskeySettingsItIt settings_ = _TranslationsMisskeySettingsItIt._(_root);
	@override late final _TranslationsMisskeyPreferencesProfileItIt preferencesProfile_ = _TranslationsMisskeyPreferencesProfileItIt._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupItIt preferencesBackup_ = _TranslationsMisskeyPreferencesBackupItIt._(_root);
	@override late final _TranslationsMisskeyAccountSettingsItIt accountSettings_ = _TranslationsMisskeyAccountSettingsItIt._(_root);
	@override late final _TranslationsMisskeyAbuseUserReportItIt abuseUserReport_ = _TranslationsMisskeyAbuseUserReportItIt._(_root);
	@override late final _TranslationsMisskeyDeliveryItIt delivery_ = _TranslationsMisskeyDeliveryItIt._(_root);
	@override late final _TranslationsMisskeyBubbleGameItIt bubbleGame_ = _TranslationsMisskeyBubbleGameItIt._(_root);
	@override late final _TranslationsMisskeyAnnouncementItIt announcement_ = _TranslationsMisskeyAnnouncementItIt._(_root);
	@override late final _TranslationsMisskeyInitialAccountSettingItIt initialAccountSetting_ = _TranslationsMisskeyInitialAccountSettingItIt._(_root);
	@override late final _TranslationsMisskeyInitialTutorialItIt initialTutorial_ = _TranslationsMisskeyInitialTutorialItIt._(_root);
	@override late final _TranslationsMisskeyTimelineDescriptionItIt timelineDescription_ = _TranslationsMisskeyTimelineDescriptionItIt._(_root);
	@override late final _TranslationsMisskeyServerRulesItIt serverRules_ = _TranslationsMisskeyServerRulesItIt._(_root);
	@override late final _TranslationsMisskeyServerSettingsItIt serverSettings_ = _TranslationsMisskeyServerSettingsItIt._(_root);
	@override late final _TranslationsMisskeyAccountMigrationItIt accountMigration_ = _TranslationsMisskeyAccountMigrationItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsItIt achievements_ = _TranslationsMisskeyAchievementsItIt._(_root);
	@override late final _TranslationsMisskeyRoleItIt role_ = _TranslationsMisskeyRoleItIt._(_root);
	@override late final _TranslationsMisskeySensitiveMediaDetectionItIt sensitiveMediaDetection_ = _TranslationsMisskeySensitiveMediaDetectionItIt._(_root);
	@override late final _TranslationsMisskeyEmailUnavailableItIt emailUnavailable_ = _TranslationsMisskeyEmailUnavailableItIt._(_root);
	@override late final _TranslationsMisskeyFfVisibilityItIt ffVisibility_ = _TranslationsMisskeyFfVisibilityItIt._(_root);
	@override late final _TranslationsMisskeySignupItIt signup_ = _TranslationsMisskeySignupItIt._(_root);
	@override late final _TranslationsMisskeyAccountDeleteItIt accountDelete_ = _TranslationsMisskeyAccountDeleteItIt._(_root);
	@override late final _TranslationsMisskeyAdItIt ad_ = _TranslationsMisskeyAdItIt._(_root);
	@override late final _TranslationsMisskeyForgotPasswordItIt forgotPassword_ = _TranslationsMisskeyForgotPasswordItIt._(_root);
	@override late final _TranslationsMisskeyGalleryItIt gallery_ = _TranslationsMisskeyGalleryItIt._(_root);
	@override late final _TranslationsMisskeyEmailItIt email_ = _TranslationsMisskeyEmailItIt._(_root);
	@override late final _TranslationsMisskeyPluginItIt plugin_ = _TranslationsMisskeyPluginItIt._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupsItIt preferencesBackups_ = _TranslationsMisskeyPreferencesBackupsItIt._(_root);
	@override late final _TranslationsMisskeyRegistryItIt registry_ = _TranslationsMisskeyRegistryItIt._(_root);
	@override late final _TranslationsMisskeyAboutMisskeyItIt aboutMisskey_ = _TranslationsMisskeyAboutMisskeyItIt._(_root);
	@override late final _TranslationsMisskeyDisplayOfSensitiveMediaItIt displayOfSensitiveMedia_ = _TranslationsMisskeyDisplayOfSensitiveMediaItIt._(_root);
	@override late final _TranslationsMisskeyInstanceTickerItIt instanceTicker_ = _TranslationsMisskeyInstanceTickerItIt._(_root);
	@override late final _TranslationsMisskeyServerDisconnectedBehaviorItIt serverDisconnectedBehavior_ = _TranslationsMisskeyServerDisconnectedBehaviorItIt._(_root);
	@override late final _TranslationsMisskeyChannelItIt channel_ = _TranslationsMisskeyChannelItIt._(_root);
	@override late final _TranslationsMisskeyMenuDisplayItIt menuDisplay_ = _TranslationsMisskeyMenuDisplayItIt._(_root);
	@override late final _TranslationsMisskeyWordMuteItIt wordMute_ = _TranslationsMisskeyWordMuteItIt._(_root);
	@override late final _TranslationsMisskeyInstanceMuteItIt instanceMute_ = _TranslationsMisskeyInstanceMuteItIt._(_root);
	@override late final _TranslationsMisskeyThemeItIt theme_ = _TranslationsMisskeyThemeItIt._(_root);
	@override late final _TranslationsMisskeySfxItIt sfx_ = _TranslationsMisskeySfxItIt._(_root);
	@override late final _TranslationsMisskeySoundSettingsItIt soundSettings_ = _TranslationsMisskeySoundSettingsItIt._(_root);
	@override late final _TranslationsMisskeyAgoItIt ago_ = _TranslationsMisskeyAgoItIt._(_root);
	@override late final _TranslationsMisskeyTimeInItIt timeIn_ = _TranslationsMisskeyTimeInItIt._(_root);
	@override late final _TranslationsMisskeyTimeItIt time_ = _TranslationsMisskeyTimeItIt._(_root);
	@override late final _TranslationsMisskeyX2faItIt x2fa_ = _TranslationsMisskeyX2faItIt._(_root);
	@override late final _TranslationsMisskeyPermissionsItIt permissions_ = _TranslationsMisskeyPermissionsItIt._(_root);
	@override late final _TranslationsMisskeyAuthItIt auth_ = _TranslationsMisskeyAuthItIt._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesItIt antennaSources_ = _TranslationsMisskeyAntennaSourcesItIt._(_root);
	@override late final _TranslationsMisskeyWeekdayItIt weekday_ = _TranslationsMisskeyWeekdayItIt._(_root);
	@override late final _TranslationsMisskeyWidgetsItIt widgets_ = _TranslationsMisskeyWidgetsItIt._(_root);
	@override late final _TranslationsMisskeyCwItIt cw_ = _TranslationsMisskeyCwItIt._(_root);
	@override late final _TranslationsMisskeyPollItIt poll_ = _TranslationsMisskeyPollItIt._(_root);
	@override late final _TranslationsMisskeyVisibilityItIt visibility_ = _TranslationsMisskeyVisibilityItIt._(_root);
	@override late final _TranslationsMisskeyPostFormItIt postForm_ = _TranslationsMisskeyPostFormItIt._(_root);
	@override late final _TranslationsMisskeyProfileItIt profile_ = _TranslationsMisskeyProfileItIt._(_root);
	@override late final _TranslationsMisskeyExportOrImportItIt exportOrImport_ = _TranslationsMisskeyExportOrImportItIt._(_root);
	@override late final _TranslationsMisskeyChartsItIt charts_ = _TranslationsMisskeyChartsItIt._(_root);
	@override late final _TranslationsMisskeyInstanceChartsItIt instanceCharts_ = _TranslationsMisskeyInstanceChartsItIt._(_root);
	@override late final _TranslationsMisskeyTimelinesItIt timelines_ = _TranslationsMisskeyTimelinesItIt._(_root);
	@override late final _TranslationsMisskeyPlayItIt play_ = _TranslationsMisskeyPlayItIt._(_root);
	@override late final _TranslationsMisskeyPagesItIt pages_ = _TranslationsMisskeyPagesItIt._(_root);
	@override late final _TranslationsMisskeyRelayStatusItIt relayStatus_ = _TranslationsMisskeyRelayStatusItIt._(_root);
	@override late final _TranslationsMisskeyNotificationItIt notification_ = _TranslationsMisskeyNotificationItIt._(_root);
	@override late final _TranslationsMisskeyDeckItIt deck_ = _TranslationsMisskeyDeckItIt._(_root);
	@override late final _TranslationsMisskeyDialogItIt dialog_ = _TranslationsMisskeyDialogItIt._(_root);
	@override late final _TranslationsMisskeyDisabledTimelineItIt disabledTimeline_ = _TranslationsMisskeyDisabledTimelineItIt._(_root);
	@override late final _TranslationsMisskeyDrivecleanerItIt drivecleaner_ = _TranslationsMisskeyDrivecleanerItIt._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsItIt webhookSettings_ = _TranslationsMisskeyWebhookSettingsItIt._(_root);
	@override late final _TranslationsMisskeyAbuseReportItIt abuseReport_ = _TranslationsMisskeyAbuseReportItIt._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesItIt moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesItIt._(_root);
	@override late final _TranslationsMisskeyFileViewerItIt fileViewer_ = _TranslationsMisskeyFileViewerItIt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerItIt externalResourceInstaller_ = _TranslationsMisskeyExternalResourceInstallerItIt._(_root);
	@override late final _TranslationsMisskeyDataSaverItIt dataSaver_ = _TranslationsMisskeyDataSaverItIt._(_root);
	@override late final _TranslationsMisskeyHemisphereItIt hemisphere_ = _TranslationsMisskeyHemisphereItIt._(_root);
	@override late final _TranslationsMisskeyReversiItIt reversi_ = _TranslationsMisskeyReversiItIt._(_root);
	@override late final _TranslationsMisskeyOfflineScreenItIt offlineScreen_ = _TranslationsMisskeyOfflineScreenItIt._(_root);
	@override late final _TranslationsMisskeyUrlPreviewSettingItIt urlPreviewSetting_ = _TranslationsMisskeyUrlPreviewSettingItIt._(_root);
	@override late final _TranslationsMisskeyMediaControlsItIt mediaControls_ = _TranslationsMisskeyMediaControlsItIt._(_root);
	@override late final _TranslationsMisskeyContextMenuItIt contextMenu_ = _TranslationsMisskeyContextMenuItIt._(_root);
	@override late final _TranslationsMisskeyGridComponentItIt gridComponent_ = _TranslationsMisskeyGridComponentItIt._(_root);
	@override late final _TranslationsMisskeyRoleSelectDialogItIt roleSelectDialog_ = _TranslationsMisskeyRoleSelectDialogItIt._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerItIt customEmojisManager_ = _TranslationsMisskeyCustomEmojisManagerItIt._(_root);
	@override late final _TranslationsMisskeyEmbedCodeGenItIt embedCodeGen_ = _TranslationsMisskeyEmbedCodeGenItIt._(_root);
	@override late final _TranslationsMisskeySelfXssPreventionItIt selfXssPrevention_ = _TranslationsMisskeySelfXssPreventionItIt._(_root);
	@override late final _TranslationsMisskeyFollowRequestItIt followRequest_ = _TranslationsMisskeyFollowRequestItIt._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsItIt remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsItIt._(_root);
	@override late final _TranslationsMisskeyCaptchaItIt captcha_ = _TranslationsMisskeyCaptchaItIt._(_root);
	@override late final _TranslationsMisskeyBootErrorsItIt bootErrors_ = _TranslationsMisskeyBootErrorsItIt._(_root);
	@override late final _TranslationsMisskeySearchItIt search_ = _TranslationsMisskeySearchItIt._(_root);
	@override late final _TranslationsMisskeyServerSetupWizardItIt serverSetupWizard_ = _TranslationsMisskeyServerSetupWizardItIt._(_root);
	@override late final _TranslationsMisskeyUploaderItIt uploader_ = _TranslationsMisskeyUploaderItIt._(_root);
	@override late final _TranslationsMisskeyClientPerformanceIssueTipItIt clientPerformanceIssueTip_ = _TranslationsMisskeyClientPerformanceIssueTipItIt._(_root);
	@override late final _TranslationsMisskeyClipItIt clip_ = _TranslationsMisskeyClipItIt._(_root);
	@override late final _TranslationsMisskeyUserListsItIt userLists_ = _TranslationsMisskeyUserListsItIt._(_root);
	@override String get watermark => 'Filigrana';
	@override String get defaultPreset => 'Impostazioni predefinite';
	@override late final _TranslationsMisskeyWatermarkEditorItIt watermarkEditor_ = _TranslationsMisskeyWatermarkEditorItIt._(_root);
	@override late final _TranslationsMisskeyImageEffectorItIt imageEffector_ = _TranslationsMisskeyImageEffectorItIt._(_root);
}

// Path: misskey.chat_
class _TranslationsMisskeyChatItIt extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get noMessagesYet => 'Ancora nessun messaggio';
	@override String get newMessage => 'Nuovo messaggio';
	@override String get individualChat => 'Chat individuale';
	@override String get individualChat_description => 'Puoi chattare con una persona specifica.';
	@override String get roomChat => 'Stanza di chat';
	@override String get roomChat_description => 'Puoi chattare con più persone.\nInoltre, anche le persone che non consentono chat personalizzate possono chattare se gli altri accettano.';
	@override String get createRoom => 'Crea stanza';
	@override String get inviteUserToChat => 'Invita a chattare altre persone';
	@override String get yourRooms => 'Le tue stanze';
	@override String get joiningRooms => 'Stanze a cui partecipi';
	@override String get invitations => 'Invita';
	@override String get noInvitations => 'Nessun invito';
	@override String get history => 'Cronologia';
	@override String get noHistory => 'Nessuna cronologia';
	@override String get noRooms => 'Nessuna stanza';
	@override String get inviteUser => 'Invita';
	@override String get sentInvitations => 'Inviti spediti';
	@override String get join => 'Entra';
	@override String get ignore => 'Ignora';
	@override String get leave => 'Esci';
	@override String get members => 'Membri';
	@override String get searchMessages => 'Cerca messaggi';
	@override String get home => 'Home';
	@override String get send => 'Inviare';
	@override String get newline => 'Nuova riga';
	@override String get muteThisRoom => 'Silenzia stanza';
	@override String get deleteRoom => 'Elimina stanza';
	@override String get chatNotAvailableForThisAccountOrServer => 'Questo server, o questo profilo ha disabilitato la chat.';
	@override String get chatIsReadOnlyForThisAccountOrServer => 'Le chat, su questo server o su questo profilo, sono di sola lettura. Impossibile scrivere in chat o creare e partecipare a stanze.';
	@override String get chatNotAvailableInOtherAccount => 'La chat non è disponibile nel profilo dell\'altra persona.';
	@override String get cannotChatWithTheUser => 'Impossibile chattare con questa persona';
	@override String get cannotChatWithTheUser_description => 'La chat potrebbe non essere disponibile, oppure l\'altra persona potrebbe non esserlo.';
	@override String get youAreNotAMemberOfThisRoomButInvited => 'Non partecipi a questa stanza di chat, ma hai ricevuto un invito. Per partecipare, accetta l\'invito.';
	@override String get doYouAcceptInvitation => 'Intendi accettare l\'invito?';
	@override String get chatWithThisUser => 'Chatta con questa persona';
	@override String get thisUserAllowsChatOnlyFromFollowers => 'Questa persona permette di chattare soltanto i propri Follower.';
	@override String get thisUserAllowsChatOnlyFromFollowing => 'Questa persona permette di chattare soltanto ai suoi Follow.';
	@override String get thisUserAllowsChatOnlyFromMutualFollowing => 'Questa persona permette di chattare solo a relazioni reciproche.';
	@override String get thisUserNotAllowedChatAnyone => 'Questa persona non permette di chattare a nessuno.';
	@override String get chatAllowedUsers => 'Persone ammesse alla chat';
	@override String get chatAllowedUsers_note => 'Puoi chattare con le persone a cui hai già inviato un messaggio, indipendentemente da questa impostazione.';
	@override late final _TranslationsMisskeyChatChatAllowedUsersItIt chatAllowedUsers_ = _TranslationsMisskeyChatChatAllowedUsersItIt._(_root);
}

// Path: misskey.emojiPalette_
class _TranslationsMisskeyEmojiPaletteItIt extends TranslationsMisskeyEmojiPaletteEnUs {
	_TranslationsMisskeyEmojiPaletteItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get palettes => 'Tavolozza';
	@override String get enableSyncBetweenDevicesForPalettes => 'Attiva la sincronizzazione tra dispositivi';
	@override String get paletteForMain => 'Tavolozza principale';
	@override String get paletteForReaction => 'Tavolozza per reazioni';
}

// Path: misskey.settings_
class _TranslationsMisskeySettingsItIt extends TranslationsMisskeySettingsEnUs {
	_TranslationsMisskeySettingsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get driveBanner => 'Permette di gestire e configurare il Drive, controllare il consumo di spazio e configurare il caricamento dei file.';
	@override String get pluginBanner => 'Consentono di migliorare le funzionalità. Le estensioni si possono configurare e gestire singolarmente.';
	@override String get notificationsBanner => 'Puoi impostare il tipo di notifiche da ricevere dal server e anche le notifiche push.';
	@override String get api => 'API';
	@override String get webhook => 'Webhook';
	@override String get serviceConnection => 'Integrazione servizi';
	@override String get serviceConnectionBanner => 'Puoi gestire i codici di accesso e i Webhook per collegare App o servizi esterni.';
	@override String get accountData => 'Dati del profilo';
	@override String get accountDataBanner => 'Puoi gestire i dati del tuo profilo, esportando e importando.';
	@override String get muteAndBlockBanner => 'Puoi configurare la visibiltà dei contenuti e limitare le attività provenienti da profili specifici.';
	@override String get accessibilityBanner => 'Puoi personalizzare e migliorare la lettura sul tuo dispositivo in modo che sia più chiaro e reattivo.';
	@override String get privacyBanner => 'Puoi configurare la privacy del tuo profilo, come la visibilità delle Note, la visibilità del profilo nelle ricerche e l\'approvazione delle relazioni tra profili.';
	@override String get securityBanner => 'Puoi gestire la sicurezza del tuo account, la password, i modi di accesso, la generazione di codici OTP per accesso multi fattore (MFA/2FA) e la passkey.';
	@override String get preferencesBanner => 'Puoi personalizzare il comportamento del tuo dispositivo.';
	@override String get appearanceBanner => 'Puoi personalizzare l\'aspetto nel dispositivo, in base alle tue preferenze.';
	@override String get soundsBanner => 'Puoi personalizzare i suoni emessi dagli eventi sul tuo dispositivo.';
	@override String get timelineAndNote => 'Note e Timeline';
	@override String get makeEveryTextElementsSelectable => 'Imposta ogni elemento come selezionabile';
	@override String get makeEveryTextElementsSelectable_description => 'Potrebbe ridurre l\'usabilità in alcune situazioni.';
	@override String get useStickyIcons => 'Fissa le icone durante lo scorrimento';
	@override String get enableHighQualityImagePlaceholders => 'Mostra un segnaposto per immagini in alta qualità';
	@override String get uiAnimations => 'Animazione dell\'interfaccia';
	@override String get showNavbarSubButtons => 'Mostra i pulsanti secondari nella barra di navigazione';
	@override String get ifOn => 'Quando attivato';
	@override String get ifOff => 'Quando disattivato';
	@override String get enableSyncThemesBetweenDevices => 'Sincronizzare il tema tra i dispositivi';
	@override String get enablePullToRefresh => 'Scorri e aggiorna';
	@override String get enablePullToRefresh_description => 'Clicca col mouse e gira la rotella.';
	@override String get realtimeMode_description => 'Connette al server e aggiorna il contenuto in tempo reale. Potrebbe aumentare l\'uso dei dati e il consumo della batteria.';
	@override String get contentsUpdateFrequency => 'Frequenza di ricezione contenuti';
	@override String get contentsUpdateFrequency_description => 'Se l\'impostazione è alta, verranno aggiornati più frequentemente, consumando più dati e più batteria.';
	@override String get contentsUpdateFrequency_description2 => 'Quando la modalità è in tempo reale, arriveranno a prescindere.';
	@override String get showUrlPreview => 'Mostra anteprima dell\'URL';
	@override String get showAvailableReactionsFirstInNote => 'Mostra le reazioni disponibili in alto';
	@override late final _TranslationsMisskeySettingsChatItIt chat_ = _TranslationsMisskeySettingsChatItIt._(_root);
}

// Path: misskey.preferencesProfile_
class _TranslationsMisskeyPreferencesProfileItIt extends TranslationsMisskeyPreferencesProfileEnUs {
	_TranslationsMisskeyPreferencesProfileItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get profileName => 'Nome del profilo';
	@override String get profileNameDescription => 'Impostare il nome che indentifica questo dispositivo.';
	@override String get profileNameDescription2 => 'Es: "PC principale" o "Cellulare"';
	@override String get manageProfiles => 'Gestione profili';
}

// Path: misskey.preferencesBackup_
class _TranslationsMisskeyPreferencesBackupItIt extends TranslationsMisskeyPreferencesBackupEnUs {
	_TranslationsMisskeyPreferencesBackupItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get autoBackup => 'Backup automatico';
	@override String get restoreFromBackup => 'Ripristinare da backup';
	@override String get noBackupsFoundTitle => 'Nessun backup trovato';
	@override String get noBackupsFoundDescription => 'Impossibile trovare un backup creato automaticamente. Se se hai salvato il file di backup manualmente, puoi importarlo e ripristinarlo.';
	@override String get selectBackupToRestore => 'Seleziona un backup da ripristinare';
	@override String get youNeedToNameYourProfileToEnableAutoBackup => 'Per abilitare i backup automatici, è necessario indicare il nome del profilo.';
	@override String get autoPreferencesBackupIsNotEnabledForThisDevice => 'Su questo dispositivo non è stato attivato il backup automatico delle preferenze.';
	@override String get backupFound => 'Esiste il Backup delle preferenze';
}

// Path: misskey.accountSettings_
class _TranslationsMisskeyAccountSettingsItIt extends TranslationsMisskeyAccountSettingsEnUs {
	_TranslationsMisskeyAccountSettingsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get requireSigninToViewContents => 'Per vedere il contenuto, è necessaria l\'iscrizione';
	@override String get requireSigninToViewContentsDescription1 => 'Richiedere l\'iscrizione per visualizzare tutte le Note e gli altri contenuti che hai creato. Probabilmente l\'effetto è impedire la raccolta di informazioni da parte dei bot crawler.';
	@override String get requireSigninToViewContentsDescription2 => 'La visualizzazione verrà disabilitata a server che non supportano l\'anteprima URL (OGP), all\'incorporamento nelle pagine Web e alla citazione delle Note.';
	@override String get requireSigninToViewContentsDescription3 => 'Queste restrizioni potrebbero non applicarsi al contenuto federato su server remoti.';
	@override String get makeNotesFollowersOnlyBefore => 'Rendi visibili solo ai Follower le Note pubblicate in precedenza';
	@override String get makeNotesFollowersOnlyBeforeDescription => 'Mentre questa funzione è abilitata, le Note antecedenti al momento impostato, saranno visibili solo ai profili Follower. Disabilitandola nuovamente, verrà ripristinata anche la visibilità pubblica della Nota.';
	@override String get makeNotesHiddenBefore => 'Nascondi le Note pubblicate in precedenza';
	@override String get makeNotesHiddenBeforeDescription => 'Mentre questa funzione è abilitata, le Note antecedenti al momento impostato, saranno visibili soltanto a te (private). Disabilitandola nuovamente, verrà ripristinata anche la visibilità pubblica della Nota.';
	@override String get mayNotEffectForFederatedNotes => 'Le Note già federate su server remoti potrebbero non essere modificate.';
	@override String get mayNotEffectSomeSituations => 'Queste restrizioni sono semplificate. In alcuni casi, potrebbero anche non avvenire. Ad esempio visionando un server remoto o durante la moderazione.';
	@override String get notesHavePassedSpecifiedPeriod => 'Note antecedenti al periodo specificato';
	@override String get notesOlderThanSpecifiedDateAndTime => 'Note antecedenti al momento specificato';
}

// Path: misskey.abuseUserReport_
class _TranslationsMisskeyAbuseUserReportItIt extends TranslationsMisskeyAbuseUserReportEnUs {
	_TranslationsMisskeyAbuseUserReportItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get forward => 'Inoltra';
	@override String get forwardDescription => 'Inoltra il report al server remoto, per mezzo di account di sistema, anonimo.';
	@override String get resolve => 'Risolvi';
	@override String get accept => 'Approva';
	@override String get reject => 'Rifiuta';
	@override String get resolveTutorial => 'Se moderi una segnalazione legittima, scegli "Approva" per risolvere positivamente.\nSe la segnalazione non è legittima, seleziona "Rifiuta" per risolvere negativamente.';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryItIt extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get status => 'Stato della consegna';
	@override String get stop => 'Sospensione';
	@override String get resume => 'Riprendi la consegna';
	@override late final _TranslationsMisskeyDeliveryTypeItIt type_ = _TranslationsMisskeyDeliveryTypeItIt._(_root);
}

// Path: misskey.bubbleGame_
class _TranslationsMisskeyBubbleGameItIt extends TranslationsMisskeyBubbleGameEnUs {
	_TranslationsMisskeyBubbleGameItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => 'Come giocare';
	@override String get hold => 'Tieni';
	@override late final _TranslationsMisskeyBubbleGameScoreItIt score_ = _TranslationsMisskeyBubbleGameScoreItIt._(_root);
	@override late final _TranslationsMisskeyBubbleGameHowToPlayItIt howToPlay_ = _TranslationsMisskeyBubbleGameHowToPlayItIt._(_root);
}

// Path: misskey.announcement_
class _TranslationsMisskeyAnnouncementItIt extends TranslationsMisskeyAnnouncementEnUs {
	_TranslationsMisskeyAnnouncementItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => 'Solo ai profili attuali';
	@override String get forExistingUsersDescription => 'L\'annuncio sarà visibile solo ai profili esistenti in questo momento. Se disabilitato, sarà visibile anche ai profili che verranno creati dopo la pubblicazione di questo annuncio.';
	@override String get needConfirmationToRead => 'Conferma di lettura obbligatoria';
	@override String get needConfirmationToReadDescription => 'I profili riceveranno una finestra di dialogo che richiede di accettare obbligatoriamente per procedere. Tale richiesta è esente da  "conferma tutte".';
	@override String get end => 'Archivia l\'annuncio';
	@override String get tooManyActiveAnnouncementDescription => 'L\'esperienza delle persone può peggiorare se ci sono troppi annunci attivi. Considera anche l\'archiviazione degli annunci conclusi.';
	@override String get readConfirmTitle => 'Segnare come già letto?';
	@override String readConfirmText({required Object title}) => 'Hai già letto "${title}˝?';
	@override String get shouldNotBeUsedToPresentPermanentInfo => 'Ti consigliamo di utilizzare gli annunci per pubblicare informazioni tempestive e limitate nel tempo, anziché informazioni importanti a lungo andare nel tempo, poiché potrebbero risultare difficili da ritrovare e peggiorare la fruibilità del servizio, specialmente alle nuove persone iscritte.';
	@override String get dialogAnnouncementUxWarn => 'Ti consigliamo di usarli con cautela, poiché è molto probabile che avere più di un annuncio in stile "finestra di dialogo" peggiori sensibilmente la fruibilità del servizio, specialmente alle nuove persone iscritte.';
	@override String get silence => 'Annuncio silenzioso';
	@override String get silenceDescription => 'Attivando questa opzione, non invierai la notifica, evitando che debba essere contrassegnata come già letta.';
}

// Path: misskey.initialAccountSetting_
class _TranslationsMisskeyInitialAccountSettingItIt extends TranslationsMisskeyInitialAccountSettingEnUs {
	_TranslationsMisskeyInitialAccountSettingItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => 'Il tuo profilo è stato creato!';
	@override String get letsStartAccountSetup => 'Per iniziare, impostiamo il tuo profilo.';
	@override String get letsFillYourProfile => 'Innanzitutto, compila il tuo profilo.';
	@override String get profileSetting => 'Impostazioni del profilo';
	@override String get privacySetting => 'Impostazioni sulla privacy';
	@override String get theseSettingsCanEditLater => 'In seguito, potrai cambiare la tua scelta.';
	@override String get youCanEditMoreSettingsInSettingsPageLater => 'Nella pagina "Impostazioni", è possibile personalizzare di più il tuo profilo. Dacci un\'occhiata dopo!';
	@override String get followUsers => 'Per comporre la tua Timeline Home (personale) segui i profili delle persone che ti interessano.';
	@override String pushNotificationDescription({required Object name}) => 'Attivare le notifiche push ti permettera di ricevere informazioni sulla attività di ${name} direttamente sul tuo dispositivo.';
	@override String get initialAccountSettingCompleted => 'Hai completato la configurazione iniziale!';
	@override String haveFun({required Object name}) => 'Divertiti con ${name}!';
	@override String youCanContinueTutorial({required Object name}) => 'Puoi continuare con l\'esercitazione su come usare ${name} (Misskey), oppure interrompere, iniziando subito a usarlo.';
	@override String get startTutorial => 'Avvia l\'esercitazione';
	@override String get skipAreYouSure => 'Vuoi davvero saltare la configurazione iniziale?';
	@override String get laterAreYouSure => 'Vuoi davvero rimandare la configurazione iniziale?';
}

// Path: misskey.initialTutorial_
class _TranslationsMisskeyInitialTutorialItIt extends TranslationsMisskeyInitialTutorialEnUs {
	_TranslationsMisskeyInitialTutorialItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'Inizia il tutorial';
	@override String get title => 'Tutorial';
	@override String get wellDone => 'Ottimo lavoro!';
	@override String get skipAreYouSure => 'Vuoi davvero interrompere il tutorial?';
	@override late final _TranslationsMisskeyInitialTutorialLandingItIt landing_ = _TranslationsMisskeyInitialTutorialLandingItIt._(_root);
	@override late final _TranslationsMisskeyInitialTutorialNoteItIt note_ = _TranslationsMisskeyInitialTutorialNoteItIt._(_root);
	@override late final _TranslationsMisskeyInitialTutorialReactionItIt reaction_ = _TranslationsMisskeyInitialTutorialReactionItIt._(_root);
	@override late final _TranslationsMisskeyInitialTutorialTimelineItIt timeline_ = _TranslationsMisskeyInitialTutorialTimelineItIt._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteItIt postNote_ = _TranslationsMisskeyInitialTutorialPostNoteItIt._(_root);
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveItIt howToMakeAttachmentsSensitive_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveItIt._(_root);
	@override late final _TranslationsMisskeyInitialTutorialDoneItIt done_ = _TranslationsMisskeyInitialTutorialDoneItIt._(_root);
}

// Path: misskey.timelineDescription_
class _TranslationsMisskeyTimelineDescriptionItIt extends TranslationsMisskeyTimelineDescriptionEnUs {
	_TranslationsMisskeyTimelineDescriptionItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get home => 'Nella Timeline Home, la tua cronologia principale, puoi vedere le Note provenienti dai profili che segui (Following).';
	@override String get local => 'La Timeline Locale è un flusso di Note pubblicate dai profili iscritti a questo server.';
	@override String get social => 'La Timeline Sociale elenca, in ordine cronologico, il flusso di Note nella Timeline Home e Locale.';
	@override String get global => 'Nella Timeline Federata trovi il flusso di Note provenienti da profili iscritti ad altri server, federati a questo.';
}

// Path: misskey.serverRules_
class _TranslationsMisskeyServerRulesItIt extends TranslationsMisskeyServerRulesEnUs {
	_TranslationsMisskeyServerRulesItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get description => 'In Europa è necessario mostrare l\'informativa sul trattamento dei dati personali, prima della registrazione al servizio.';
}

// Path: misskey.serverSettings_
class _TranslationsMisskeyServerSettingsItIt extends TranslationsMisskeyServerSettingsEnUs {
	_TranslationsMisskeyServerSettingsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get iconUrl => 'URL dell\'icona';
	@override String appIconDescription({required Object host}) => 'Indicare l\'icona da usare quando ${host} viene salvata come App.';
	@override String get appIconUsageExample => 'Ad esempio quando si aggiunge il segnalibro alla PWA (Progressive Web App), oppure alla schermata iniziale del dispositivo mobile ';
	@override String get appIconStyleRecommendation => 'Poiché l\'icona potrebbe essere ritagliata in un quadrato o in un cerchio, si raccomanda che abbia un margine colorato.';
	@override String appIconResolutionMustBe({required Object resolution}) => 'La risoluzione minima è ${resolution}';
	@override String get manifestJsonOverride => 'Sostituire il file manifest.json';
	@override String get shortName => 'Abbreviazione';
	@override String get shortNameDescription => 'Un\'abbreviazione o un nome comune che può essere visualizzato al posto del nome ufficiale lungo del server.';
	@override String get fanoutTimelineDescription => 'Attivando questa funzionalità migliori notevolmente la capacità delle Timeline di collezionare Note, riducendo il carico sul database. Tuttavia, aumenterà l\'impiego di memoria RAM per Redis. Disattiva se il tuo server ha poca RAM o la funzionalità è irregolare.';
	@override String get fanoutTimelineDbFallback => 'Elaborazione dati alternativa';
	@override String get fanoutTimelineDbFallbackDescription => 'Attivando l\'elaborazione alternativa, verrà interrogato ulteriormente il database se la timeline non è nella cache. \nDisattivando, si può ridurre ulteriormente il carico del server, evitando l\'elaborazione alternativa, ma limitando l\'intervallo recuperabile delle timeline.';
	@override String get reactionsBufferingDescription => 'Attivando questa opzione, puoi migliorare significativamente le prestazioni durante la creazione delle reazioni e ridurre il carico sul database. Tuttavia, aumenterà l\'impiego di memoria Redis.';
	@override String get inquiryUrl => 'URL di contatto';
	@override String get inquiryUrlDescription => 'Specificare l\'URL al modulo di contatto, oppure le informazioni con i dati di contatto dell\'amministrazione.';
	@override String get openRegistration => 'Registrazioni aperte';
	@override String get openRegistrationWarning => 'L’apertura della registrazione comporta dei rischi. Ti consigliamo di attivarla solo se hai predisposto il monitoraggio continuo del tuo server e puoi rispondere immediatamente se si verifica un problema.';
	@override String get thisSettingWillAutomaticallyOffWhenModeratorsInactive => 'Per prevenire SPAM, questa impostazione verrà disattivata automaticamente, se non si rileva alcuna attività di moderazione durante un certo periodo di tempo.';
	@override String get deliverSuspendedSoftware => 'Software fuori produzione';
	@override String get deliverSuspendedSoftwareDescription => 'A causa di vulnerabilità o altri motivi, puoi interrompere la distribuzione di un software da un server specificandone il nome e la versione. Le informazioni sono fornite dall\'altro server e l\'autenticità non è garantita. Puoi indicare un intervallo di versione semantica, ma specificando >= 2024.3.1 non verranno incluse le versioni personalizzate come ad esempio 2024.3.1-custom.0, pertanto ti consigliamo di specificare una versione come >= 2024.3.1-0.';
	@override String get singleUserMode => 'Modalità utente singolo';
	@override String get singleUserMode_description => 'Se sei l\'unica persona a utilizzare questo server, l\'abilitazione di questa modalità ottimizzerà le prestazioni.';
	@override String get signToActivityPubGet => 'Firma delle richieste GET';
	@override String get signToActivityPubGet_description => 'Normalmente questa opzione dovrebbe essere abilitata. Se si verificano problemi con la comunicazione federata, disabilitarla potrebbe migliorare la situazione, ma d\'altro canto potrebbe rendere impossibile la comunicazione, a seconda del server.';
	@override String get proxyRemoteFiles => 'Proxy di file remoti';
	@override String get proxyRemoteFiles_description => 'Se abilitato, i file remoti verranno serviti tramite proxy. Utile per generare miniature delle immagini e proteggere la privacy degli utenti.';
	@override String get allowExternalApRedirect => 'Consenti reindirizzamenti per le query tramite ActivityPub';
	@override String get allowExternalApRedirect_description => 'Se abilitata, consente ad altri server di interrogare contenuti di terze parti tramite il tuo server, con conseguente potenziale falsificazione dei contenuti.';
	@override String get userGeneratedContentsVisibilityForVisitor => 'Visibilità dei contenuti generati dagli utenti ai non utenti';
	@override String get userGeneratedContentsVisibilityForVisitor_description => 'Questa funzionalità è utile per impedire che contenuti remoti inappropriati e difficili da moderare vengano inavvertitamente resi pubblici su Internet tramite il proprio server.';
	@override String get userGeneratedContentsVisibilityForVisitor_description2 => 'Esistono dei rischi nell\'esporre incondizionatamente su internet tutto il contenuto del tuo server, incluso il contenuto remoto ricevuto da altri server. In particolare, occorre prestare attenzione, perché le persone non consapevoli della federazione potrebbero erroneamente credere che il contenuto remoto sia stato invece creato all\'interno del proprio server.';
	@override late final _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorItIt userGeneratedContentsVisibilityForVisitor_ = _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorItIt._(_root);
}

// Path: misskey.accountMigration_
class _TranslationsMisskeyAccountMigrationItIt extends TranslationsMisskeyAccountMigrationEnUs {
	_TranslationsMisskeyAccountMigrationItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => 'Migra un altro profilo dentro a questo';
	@override String get moveFromSub => 'Crea un alias verso un altro profilo remoto';
	@override String moveFromLabel({required Object n}) => 'Profilo da cui migrare n. ${n}';
	@override String get moveFromDescription => 'Se desideri spostare i Follower da un altro profilo a questo, devi prima creare un alias qui. Assicurati averlo creato PRIMA di eseguire l\'attività! Inserisci l\'indirizzo del profilo mittente in questo modo: @persona@vecchia.istanza.it';
	@override String get moveTo => 'Migrare questo profilo verso un un altro';
	@override String get moveToLabel => 'Profilo verso cui migrare';
	@override String get moveCannotBeUndone => 'La migrazione è irreversibile, non può essere interrotta o annullata.';
	@override String get moveAccountDescription => 'Questa attività è irreversibile! Innanzitutto, assicurati di aver creato, nella istanza di destinazione, un alias con l\'indirizzo di questo profilo. Successivamente, indica qui il profilo di destinazione in questo modo: @persona@istanza.it';
	@override String get moveAccountHowTo => 'Per migrare su un profilo remoto, crea prima un alias di questo profilo, sulla istanza di destinazione.\nDopo aver creato l\'alias, inserisci l\'indirizzo di destinazione, indicando ad esempio: @profilo@altra.istanza';
	@override String get startMigration => 'Avvia la migrazione';
	@override String migrationConfirm({required Object account}) => 'Vuoi davvero migrare questo profilo su ${account}? L\'azione è irreversibile e non potrai più utilizzare questo profilo nel suo stato originale.\nInoltre, assicurati di aver già creato un alias sull\'account a cui ti stai trasferendo.';
	@override String get movedAndCannotBeUndone => 'Il tuo profilo è stato migrato.\nLa migrazione non può essere annullata.';
	@override String get postMigrationNote => 'Questo profilo smetterà di seguire gli altri profili remoti a 24 ore dal termine della migrazione.\nSia i Following che i Follower scenderanno a zero. I tuoi Follower saranno comunque in grado di vedere le Note per soli Follower, poiché non smetteranno di seguirti.';
	@override String get movedTo => 'Profilo verso cui migrare';
}

// Path: misskey.achievements_
class _TranslationsMisskeyAchievementsItIt extends TranslationsMisskeyAchievementsEnUs {
	_TranslationsMisskeyAchievementsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Data di conseguimento';
	@override late final _TranslationsMisskeyAchievementsTypesItIt types_ = _TranslationsMisskeyAchievementsTypesItIt._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRoleItIt extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRoleItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Nuovo ruolo';
	@override String get edit => 'Modifica ruolo';
	@override String get name => 'Nome del ruolo';
	@override String get description => 'Descrizione del ruolo';
	@override String get permission => 'Permessi globali del ruolo';
	@override String get descriptionOfPermission => '<b>Moderatori</b> possono svolgere le attività di moderazione basilari.\n<b>Amministratori</b> possono modificare la configurazione dell\'istanza.';
	@override String get assignTarget => 'Modalità di assegnazione del ruolo';
	@override String get descriptionOfAssignTarget => '<b>Manuale</b>: per assegnare manualmente questo ruolo ai profili.\n<b>Condizionale</b>: per assegnare o rimuovere automaticamente questo ruolo ai profili, a precise condizioni.';
	@override String get manual => 'Manuale';
	@override String get manualRoles => 'Ruoli assegnati manualmente';
	@override String get conditional => 'Condizionale';
	@override String get conditionalRoles => 'Ruoli condizionati';
	@override String get condition => 'Condizioni';
	@override String get isConditionalRole => 'Questo è un ruolo condizionato';
	@override String get isPublic => 'Ruolo pubblico';
	@override String get descriptionOfIsPublic => 'La lista di profili assegnati a questo ruolo è visibile a chiunque. Inoltre, il nome del ruolo verrà mostrato pubblicamente nei relativi profili.';
	@override String get options => 'Opzioni del ruolo';
	@override String get policies => 'Policy';
	@override String get baseRole => 'Ruolo di base';
	@override String get useBaseValue => 'Eredita dal ruolo base';
	@override String get chooseRoleToAssign => 'Seleziona il ruolo da assegnare';
	@override String get iconUrl => 'URL dell\'icona';
	@override String get asBadge => 'Mostra come badge';
	@override String get descriptionOfAsBadge => 'Se indicato, accanto al nome utente viene visualizzata l\'icona del ruolo.';
	@override String get isExplorable => 'La timeline del ruolo è pubblica';
	@override String get descriptionOfIsExplorable => 'Selezionandolo, la timeline del ruolo diventerà accessibile pubblicamente. Tranne se il ruolo non è pubblico.';
	@override String get displayOrder => 'Ordine di visualizzazione';
	@override String get descriptionOfDisplayOrder => 'I valori più alti vengono visualizzati per primi';
	@override String get preserveAssignmentOnMoveAccount => 'Mantenere l\'assegnazione alla migrazione del profilo';
	@override String get preserveAssignmentOnMoveAccount_description => 'Attivando, il ruolo verrà portato sul profilo destinatario, durante la migrazione.';
	@override String get canEditMembersByModerator => 'Anche i Moderatori assegnano profili a questo ruolo';
	@override String get descriptionOfCanEditMembersByModerator => 'Se disattivo, potranno farlo solamente gli Amministratori.';
	@override String get priority => 'Priorità';
	@override late final _TranslationsMisskeyRolePriorityItIt priority_ = _TranslationsMisskeyRolePriorityItIt._(_root);
	@override late final _TranslationsMisskeyRoleOptionsItIt options_ = _TranslationsMisskeyRoleOptionsItIt._(_root);
	@override late final _TranslationsMisskeyRoleConditionItIt condition_ = _TranslationsMisskeyRoleConditionItIt._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _TranslationsMisskeySensitiveMediaDetectionItIt extends TranslationsMisskeySensitiveMediaDetectionEnUs {
	_TranslationsMisskeySensitiveMediaDetectionItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get description => 'Utilizzare l\'apprendimento automatico (machine learning) per riconoscere media espliciti e sottoporli alla moderazione. Aumenterà lievemente il carico del server.';
	@override String get sensitivity => 'Sensibilità del rilevamento';
	@override String get sensitivityDescription => 'Abbassando la sensibilità si riducono i falsi positivi (rilevazioni errate). Aumentando la sensibilità si riduce il numero di rilevazioni mancate. (rilevazioni ignorate).';
	@override String get setSensitiveFlagAutomatically => 'Impostare il flag NSFW.';
	@override String get setSensitiveFlagAutomaticallyDescription => 'Anche se questa impostazione è disattivata, il risultato della decisione viene conservato internamente.';
	@override String get analyzeVideos => 'Abilitazione dell\'analisi video.';
	@override String get analyzeVideosDescription => 'Assicuratevi che vengano analizzati anche i video oltre alle immagini fisse. Il carico del server aumenterà leggermente.';
}

// Path: misskey.emailUnavailable_
class _TranslationsMisskeyEmailUnavailableItIt extends TranslationsMisskeyEmailUnavailableEnUs {
	_TranslationsMisskeyEmailUnavailableItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get used => 'Email già in uso';
	@override String get format => 'Formato email non valido';
	@override String get disposable => 'Indirizzo email non utilizzabile';
	@override String get mx => 'Server email non corretto';
	@override String get smtp => 'Il server email non risponde';
	@override String get banned => 'Non puoi registrarti con questo indirizzo email';
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilityItIt extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilityItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get public => 'Pubblica';
	@override String get followers => 'Mostra solo ai follower';
	@override String get private => 'Invisibile';
}

// Path: misskey.signup_
class _TranslationsMisskeySignupItIt extends TranslationsMisskeySignupEnUs {
	_TranslationsMisskeySignupItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Quasi completo';
	@override String get emailAddressInfo => 'Inserisci il tuo indirizzo email. Non verrà reso pubblico.';
	@override String emailSent({required Object email}) => 'Abbiamo spedito una e-mail di conferma all\'indirizzo indicato (${email}). Per completare la registrazione del profilo, accedere al link contenuto nell\'e-mail appena spedita.';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeleteItIt extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeleteItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Eliminazione del profilo';
	@override String get mayTakeTime => 'L\'eliminazione di un profilo è un processo impegnativo, può richiedere del tempo se il numero di contenuti e di file è elevato.';
	@override String get sendEmail => 'Quando il profilo sarà completamente eliminato, verrà spedita una e-mail all\'indirizzo a cui era registrato.';
	@override String get requestAccountDelete => 'Richiesta di eliminazione del profilo';
	@override String get started => 'Inizio della procedura di eliminazione';
	@override String get inProgress => 'Eliminazione del profilo in corso';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdItIt extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get back => 'Indietro';
	@override String get reduceFrequencyOfThisAd => 'Visualizza questa pubblicità meno spesso';
	@override String get hide => 'Nascondi';
	@override String get timezoneinfo => 'Il giorno della settimana è determinato in base al fuso orario del server.';
	@override String get adsSettings => 'Impostazioni banner';
	@override String get notesPerOneAd => 'Quantità di Note tra i banner';
	@override String get setZeroToDisable => 'Imposta 0 (zero) per disattivare la distribuzione dei banner durante gli aggiornamenti in tempo reale';
	@override String get adsTooClose => 'Attenzione, l\'intervallo di pubblicazione dei banner è molto breve, potrebbe infastidire significativamente la fruizione';
}

// Path: misskey.forgotPassword_
class _TranslationsMisskeyForgotPasswordItIt extends TranslationsMisskeyForgotPasswordEnUs {
	_TranslationsMisskeyForgotPasswordItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Inserisci l\'indirizzo di posta elettronica che hai registrato nel tuo profilo. Il collegamento necessario per ripristinare la password verrà inviato a questo indirizzo.';
	@override String get ifNoEmail => 'Se il tuo indirizzo email non risulta registrato, contatta l\'amministrazione dell\'istanza.';
	@override String get contactAdmin => 'Poiché questa istanza non permette di impostare l\'indirizzo mail, contatta l\'amministrazione per  ripristinare la password.\n';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryItIt extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get my => 'Le mie pubblicazioni';
	@override String get liked => 'Pubblicazioni che mi piacciono';
	@override String get like => 'Mi piace!';
	@override String get unlike => 'Non mi piace più';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailItIt extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowItIt follow_ = _TranslationsMisskeyEmailFollowItIt._(_root);
	@override late final _TranslationsMisskeyEmailReceiveFollowRequestItIt receiveFollowRequest_ = _TranslationsMisskeyEmailReceiveFollowRequestItIt._(_root);
}

// Path: misskey.plugin_
class _TranslationsMisskeyPluginItIt extends TranslationsMisskeyPluginEnUs {
	_TranslationsMisskeyPluginItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get install => 'Installa estensioni';
	@override String get installWarn => 'Si prega di installare soltanto estensioni che provengono da fonti affidabili.';
	@override String get manage => 'Gestisci estensioni';
	@override String get viewSource => 'Visualizza sorgente';
	@override String get viewLog => 'Mostra log';
}

// Path: misskey.preferencesBackups_
class _TranslationsMisskeyPreferencesBackupsItIt extends TranslationsMisskeyPreferencesBackupsEnUs {
	_TranslationsMisskeyPreferencesBackupsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get list => 'Elenco di impostazioni salvate in precedenza';
	@override String get saveNew => 'Nuovo salvataggio';
	@override String get loadFile => 'Carica da file';
	@override String get apply => 'Applica a questo dispositivo';
	@override String get save => 'Sovrascrivi il backup';
	@override String get inputName => 'Inserire il nome del backup.';
	@override String get cannotSave => 'Impossibile salvare.';
	@override String nameAlreadyExists({required Object name}) => 'Il nome del backup "${name}" esiste già. Si prega di specificare un nome diverso.';
	@override String applyConfirm({required Object name}) => 'Si desidera applicare il backup \'${name}\' al dispositivo corrente? La configurazione attuale del dispositivo viene persa.';
	@override String saveConfirm({required Object name}) => 'Si vuole sovrascrivere ${name}?';
	@override String deleteConfirm({required Object name}) => 'Vuoi davvero eliminare "${name}"?';
	@override String renameConfirm({required Object old, required Object new_}) => 'Volete cambiare "${old}" con "${new_}"?';
	@override String get noBackups => 'Non è disponibile alcun backup. Salva nuovo" consente di salvare la configurazione corrente del client sul server.';
	@override String createdAt({required Object date, required Object time}) => 'Data di creazione: ${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => 'Data di aggiornamento: ${date} ${time}';
	@override String get cannotLoad => 'Impossibile da caricare.';
	@override String get invalidFile => 'Diversi formati di file.';
}

// Path: misskey.registry_
class _TranslationsMisskeyRegistryItIt extends TranslationsMisskeyRegistryEnUs {
	_TranslationsMisskeyRegistryItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Ambito di applicazione.';
	@override String get key => 'Dati';
	@override String get keys => 'Dati';
	@override String get domain => 'Dominio';
	@override String get createKey => 'Crea chiave';
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeyItIt extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeyItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey è software libero, open source, sviluppato da Syuilo fin dal lontano 2014.';
	@override String get contributors => 'Principali sostenitori';
	@override String get allContributors => 'Tutti i sostenitori';
	@override String get source => 'Codice sorgente';
	@override String get original => 'Originale';
	@override String thisIsModifiedVersion({required Object name}) => '${name} sta usando una versione modificata diversa da Misskey originale.';
	@override String get translation => 'Tradurre Misskey';
	@override String get donate => 'Sostieni Misskey';
	@override String get morePatrons => 'Apprezziamo sinceramente il supporto di tante altre persone. Grazie mille! 🥰';
	@override String get patrons => 'Sostenitori';
	@override String get projectMembers => 'Partecipanti al progetto';
}

// Path: misskey.displayOfSensitiveMedia_
class _TranslationsMisskeyDisplayOfSensitiveMediaItIt extends TranslationsMisskeyDisplayOfSensitiveMediaEnUs {
	_TranslationsMisskeyDisplayOfSensitiveMediaItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get respect => 'Nascondere i media espliciti';
	@override String get ignore => 'Non nascondere i media espliciti';
	@override String get force => 'Nascondi tutti i media';
}

// Path: misskey.instanceTicker_
class _TranslationsMisskeyInstanceTickerItIt extends TranslationsMisskeyInstanceTickerEnUs {
	_TranslationsMisskeyInstanceTickerItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get none => 'Nascondi';
	@override String get remote => 'Mostra solo per i profili remoti';
	@override String get always => 'Mostra sempre';
}

// Path: misskey.serverDisconnectedBehavior_
class _TranslationsMisskeyServerDisconnectedBehaviorItIt extends TranslationsMisskeyServerDisconnectedBehaviorEnUs {
	_TranslationsMisskeyServerDisconnectedBehaviorItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Ricarica automaticamente';
	@override String get dialog => 'Apri avviso in finestra';
	@override String get quiet => 'Visualizza avviso in modo discreto';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelItIt extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get create => 'Nuovo canale';
	@override String get edit => 'Modifica il canale';
	@override String get setBanner => 'Scegli intestazione';
	@override String get removeBanner => 'Rimuovi intestazione';
	@override String get featured => 'Popolari nel canale';
	@override String get owned => 'I miei canali';
	@override String get following => 'Following';
	@override String usersCount({required Object n}) => '${n} partecipanti';
	@override String notesCount({required Object n}) => '${n} note';
	@override String get nameAndDescription => 'Nome e descrizione';
	@override String get nameOnly => 'Solo il nome';
	@override String get allowRenoteToExternal => 'Consenti i Rinota e le citazioni all\'esterno del canale';
}

// Path: misskey.menuDisplay_
class _TranslationsMisskeyMenuDisplayItIt extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplayItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Laterale';
	@override String get sideIcon => 'Laterale (solo icone)';
	@override String get top => 'In alto';
	@override String get hide => 'Nascondere';
}

// Path: misskey.wordMute_
class _TranslationsMisskeyWordMuteItIt extends TranslationsMisskeyWordMuteEnUs {
	_TranslationsMisskeyWordMuteItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Parole da filtrare';
	@override String get muteWordsDescription => 'Sparando con uno spazio indichi la condizione E (and). Separando con un a capo, indichi la condizione O (or).';
	@override String get muteWordsDescription2 => 'Se vuoi indicare delle Espressioni Regolari (regexp), metti la condizione all\'interno di due slash (/)';
}

// Path: misskey.instanceMute_
class _TranslationsMisskeyInstanceMuteItIt extends TranslationsMisskeyInstanceMuteEnUs {
	_TranslationsMisskeyInstanceMuteItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Disattiva tutte le note, le note di rinvio (condivisione) dell\'istanza configurata, comprese le risposte agli utenti dell\'istanza.';
	@override String get instanceMuteDescription2 => 'Impostazione separata da una nuova riga';
	@override String get title => 'Nasconde le note dell\'istanza configurata.';
	@override String get heading => 'Istanze da silenziare';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeItIt extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get explore => 'Esplora temi';
	@override String get install => 'Installa un tema';
	@override String get manage => 'Gestione dei temi';
	@override String get code => 'Codice tema';
	@override String get description => 'Descrizione';
	@override String installed({required Object name}) => '${name} è installato';
	@override String get installedThemes => 'Temi installati';
	@override String get builtinThemes => 'Temi integrati';
	@override String get instanceTheme => 'Tema dell\'istanza';
	@override String get alreadyInstalled => 'Questo tema è già installato';
	@override String get invalid => 'Il formato tema non è valido';
	@override String get make => 'Crea un tema';
	@override String get base => 'Base';
	@override String get addConstant => 'Aggiungi costante';
	@override String get constant => 'Costante';
	@override String get defaultValue => 'Valore predefinito';
	@override String get color => 'Colore';
	@override String get refProp => 'Vedi proprietà';
	@override String get refConst => 'Chiama costante';
	@override String get key => 'Chiave';
	@override String get func => 'Funzione';
	@override String get funcKind => 'Tipo di funzione';
	@override String get argument => 'Argomento';
	@override String get basedProp => 'Nome della proprietà da cui si origina';
	@override String get alpha => 'Opacità';
	@override String get darken => 'Scuro';
	@override String get lighten => 'Chiaro';
	@override String get inputConstantName => 'Inserisci un nome per la costante';
	@override String get importInfo => 'È possibile incollare il codice del tema qui e importarlo nel proprio editor';
	@override String deleteConstantConfirm({required Object const_}) => 'Vuoi davvero eliminare la costante ${const_}?';
	@override late final _TranslationsMisskeyThemeKeysItIt keys = _TranslationsMisskeyThemeKeysItIt._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxItIt extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get note => 'Nota';
	@override String get noteMy => 'Mia nota';
	@override String get notification => 'Notifiche';
	@override String get reaction => 'Quando seleziono una reazione';
	@override String get chatMessage => 'Messaggio di chat';
}

// Path: misskey.soundSettings_
class _TranslationsMisskeySoundSettingsItIt extends TranslationsMisskeySoundSettingsEnUs {
	_TranslationsMisskeySoundSettingsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get driveFile => 'Suoni del Drive';
	@override String get driveFileWarn => 'Seleziona file dal dispositivo';
	@override String get driveFileTypeWarn => 'Formato file non supportato';
	@override String get driveFileTypeWarnDescription => 'Per favore, scegli un file di tipo audio';
	@override String get driveFileDurationWarn => 'La durata dell\'audio è troppo lunga';
	@override String get driveFileDurationWarnDescription => 'Scegliere un audio lungo potrebbe interferire con l\'uso di Misskey. Vuoi continuare lo stesso?';
	@override String get driveFileError => 'Impossibile caricare l\'audio. Si prega di modificare le impostazioni';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoItIt extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get future => 'Futuro';
	@override String get justNow => 'Adesso';
	@override String secondsAgo({required Object n}) => '${n} sec fa';
	@override String minutesAgo({required Object n}) => '${n} min fa';
	@override String hoursAgo({required Object n}) => '${n} ore fa';
	@override String daysAgo({required Object n}) => '${n} gg fa';
	@override String weeksAgo({required Object n}) => '${n} sett. fa';
	@override String monthsAgo({required Object n}) => '${n} mesi fa';
	@override String yearsAgo({required Object n}) => '${n} anni fa';
	@override String get invalid => 'Niente da visualizzare';
}

// Path: misskey.timeIn_
class _TranslationsMisskeyTimeInItIt extends TranslationsMisskeyTimeInEnUs {
	_TranslationsMisskeyTimeInItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String seconds({required Object n}) => 'Dopo ${n} secondi';
	@override String minutes({required Object n}) => 'Dopo ${n} minuti';
	@override String hours({required Object n}) => 'Dopo ${n} ore';
	@override String days({required Object n}) => 'Dopo ${n} giorni';
	@override String weeks({required Object n}) => 'Dopo ${n} settimane';
	@override String months({required Object n}) => 'Dopo ${n} mesi';
	@override String years({required Object n}) => 'Dopo ${n} anni';
}

// Path: misskey.time_
class _TranslationsMisskeyTimeItIt extends TranslationsMisskeyTimeEnUs {
	_TranslationsMisskeyTimeItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get second => 's';
	@override String get minute => 'min';
	@override String get hour => 'ore';
	@override String get day => 'giorni';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faItIt extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'La configurazione è stata già completata.';
	@override String get registerTOTP => 'Registra una App di autenticazione a due fattori (2FA/MFA)';
	@override String step1({required Object a, required Object b}) => 'Innanzitutto, installa sul dispositivo un\'App di autenticazione come ${a} o ${b}.';
	@override String get step2 => 'Quindi, tramite la App installata, scansiona questo codice QR.';
	@override String get step2Uri => 'Inserisci il seguente URL se desideri utilizzare una App per PC';
	@override String get step3Title => 'Inserisci il codice di verifica';
	@override String get step3 => 'Inserite il token visualizzato nell\'app e il gioco è fatto.';
	@override String get setupCompleted => 'Impostazione completata! 🎉';
	@override String get step4 => 'D\'ora in poi, quando si accede, si inserisce il token nello stesso modo.';
	@override String get securityKeyNotSupported => 'Il tuo browser non supporta le chiavi di sicurezza.';
	@override String get registerTOTPBeforeKey => 'Ti occorre un\'app di autenticazione con OTP, prima di registrare la chiave di sicurezza.';
	@override String get securityKeyInfo => 'È possibile impostare il dispositivo per accedere utilizzando una chiave di sicurezza hardware che supporta FIDO2 o un\'impronta digitale o un PIN sul dispositivo.';
	@override String get registerSecurityKey => 'Registra la chiave di sicurezza';
	@override String get securityKeyName => 'Inserisci il nome della chiave';
	@override String get tapSecurityKey => 'Segui le istruzioni del browser e registra la chiave di sicurezza.';
	@override String get removeKey => 'Elimina la chiave di sicurezza';
	@override String removeKeyConfirm({required Object name}) => 'Vuoi davvero eliminare "${name}"?';
	@override String get whyTOTPOnlyRenew => 'Se c\'è una chiave di sicurezza attiva, non è possibile rimuovere l\'app di autenticazione.';
	@override String get renewTOTP => 'Riconfigura l\'app di autenticazione';
	@override String get renewTOTPConfirm => 'I codici di verifica nelle app di autenticazione esistenti smetteranno di funzionare';
	@override String get renewTOTPOk => 'Ripristina';
	@override String get renewTOTPCancel => 'No grazie';
	@override String get checkBackupCodesBeforeCloseThisWizard => 'Prima di chiudere questa procedura guidata, salva i tuoi codici usa-e-getta in un posto sicuro.';
	@override String get backupCodes => 'Codici usa-e-getta';
	@override String get backupCodesDescription => 'Puoi usare questi codici usa-e-getta per ottenere l\'accesso al tuo profilo in caso sia impossibile usare l\'App col codice OTP. Salvali in un posto sicuro.';
	@override String get backupCodeUsedWarning => 'È stato usato un codice usa-e-getta. Per favore, riconfigura l\'autenticazione a due fattori il prima possibile, nel caso la configurazione precedente abbia smesso di funzionare.';
	@override String get backupCodesExhaustedWarning => 'Hai esaurito i codici usa-e-getta. Se l\'App che genera il codice OTP non è più disponibile, non potrai più accedere al tuo profilo. Ripeti la configurazione per l\'autenticazione a due fattori.';
	@override String get moreDetailedGuideHere => 'Informazioni dettagliate sull\'autenticazione multi fattore (2FA/MFA)';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsItIt extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'Visualizza le informazioni sul profilo';
	@override String get writeAccount => 'Modifica le informazioni sul profilo';
	@override String get readBlocks => 'Visualizza i profili bloccati';
	@override String get writeBlocks => 'Gestisci i profili bloccati';
	@override String get readDrive => 'Apri il Drive';
	@override String get writeDrive => 'Gestisci il Drive';
	@override String get readFavorites => 'Visualizza i tuoi preferiti';
	@override String get writeFavorites => 'Gestisci i tuoi preferiti';
	@override String get readFollowing => 'Vedi le informazioni di follow';
	@override String get writeFollowing => 'Aggiungere e togliere Following';
	@override String get readMessaging => 'Visualizzare la chat';
	@override String get writeMessaging => 'Gestire la chat';
	@override String get readMutes => 'Vedi i profili silenziati';
	@override String get writeMutes => 'Gestione dei profili silenziati';
	@override String get writeNotes => 'Creare / Eliminare note';
	@override String get readNotifications => 'Visualizzare notifiche';
	@override String get writeNotifications => 'Gestione delle notifiche';
	@override String get readReactions => 'Vedi reazioni';
	@override String get writeReactions => 'Gestione delle reazioni';
	@override String get writeVotes => 'Votare';
	@override String get readPages => 'Visualizzare pagine';
	@override String get writePages => 'Gestire pagine';
	@override String get readPageLikes => 'Visualizzare i "Mi piace" di pagine';
	@override String get writePageLikes => 'Gestire i "Mi piace" di pagine';
	@override String get readUserGroups => 'Vedere i gruppi di utenti';
	@override String get writeUserGroups => 'Gestire i gruppi di utenti';
	@override String get readChannels => 'Visualizza canali';
	@override String get writeChannels => 'Gestione dei canali';
	@override String get readGallery => 'Visualizza la galleria.';
	@override String get writeGallery => 'Gestione della galleria';
	@override String get readGalleryLikes => 'Visualizza i contenuti della galleria.';
	@override String get writeGalleryLikes => 'Manipolazione dei "Mi piace" della galleria.';
	@override String get readFlash => 'Visualizza Play';
	@override String get writeFlash => 'Modifica Play';
	@override String get readFlashLikes => 'Visualizza lista di Play piaciuti';
	@override String get writeFlashLikes => 'Modifica lista di Play piaciuti';
	@override String get readAdminAbuseUserReports => 'Mostra i report dai profili utente';
	@override String get writeAdminDeleteAccount => 'Elimina l\'account utente';
	@override String get writeAdminDeleteAllFilesOfAUser => 'Elimina i file dell\'account utente';
	@override String get readAdminIndexStats => 'Visualizza informazioni sugli indici del database';
	@override String get readAdminTableStats => 'Visualizza informazioni sulle tabelle del database';
	@override String get readAdminUserIps => 'Visualizza indirizzi IP degli account';
	@override String get readAdminMeta => 'Visualizza i metadati dell\'istanza';
	@override String get writeAdminResetPassword => 'Ripristina la password dell\'account utente';
	@override String get writeAdminResolveAbuseUserReport => 'Risolvere le segnalazioni dagli account utente';
	@override String get writeAdminSendEmail => 'Spedire email';
	@override String get readAdminServerInfo => 'Vedere le informazioni sul server';
	@override String get readAdminShowModerationLog => 'Vedere lo storico di moderazione';
	@override String get readAdminShowUser => 'Vedere le informazioni private degli account utente';
	@override String get writeAdminSuspendUser => 'Sospendere i profili';
	@override String get writeAdminUnsetUserAvatar => 'Rimuovere la foto profilo dai profili';
	@override String get writeAdminUnsetUserBanner => 'Rimuovere l\'immagine testata dai profili';
	@override String get writeAdminUnsuspendUser => 'Togliere la sospensione ai profili';
	@override String get writeAdminMeta => 'Modificare i metadati dell\'istanza';
	@override String get writeAdminUserNote => 'Scrivere annotazioni di moderazione';
	@override String get writeAdminRoles => 'Gestire i ruoli';
	@override String get readAdminRoles => 'Vedere i ruoli';
	@override String get writeAdminRelays => 'Gestire i Relay';
	@override String get readAdminRelays => 'Vedere i Relay';
	@override String get writeAdminInviteCodes => 'Gestire codici di invito';
	@override String get readAdminInviteCodes => 'Vedere codici di invito';
	@override String get writeAdminAnnouncements => 'Gestire gli annunci';
	@override String get readAdminAnnouncements => 'Leggere gli annunci';
	@override String get writeAdminAvatarDecorations => 'Gestire le decorazioni';
	@override String get readAdminAvatarDecorations => 'Vedere le decorazioni';
	@override String get writeAdminFederation => 'Gestire la federazione';
	@override String get writeAdminAccount => 'Vedere la federazione';
	@override String get readAdminAccount => 'Vedere le utenze';
	@override String get writeAdminEmoji => 'Gestire le emoji personalizzate';
	@override String get readAdminEmoji => 'Vedere le emoji personalizzate';
	@override String get writeAdminQueue => 'Gestire la coda di attività';
	@override String get readAdminQueue => 'Vedere la coda di attività';
	@override String get writeAdminPromo => 'Gestire le promozioni';
	@override String get writeAdminDrive => 'Gestire il Drive degli account';
	@override String get readAdminDrive => 'Vedere il Drive degli account';
	@override String get readAdminStream => 'Usare le API Websocket';
	@override String get writeAdminAd => 'Gestire i banner pubblicitari';
	@override String get readAdminAd => 'Vedere i banner pubblicitari';
	@override String get writeInviteCodes => 'Creare codici di invito';
	@override String get readInviteCodes => 'Vedere i codici di invito';
	@override String get writeClipFavorite => 'Impostare Clip preferite';
	@override String get readClipFavorite => 'Vedere Clip preferite';
	@override String get readFederation => 'Vedere la federazione';
	@override String get writeReportAbuse => 'Inviare segnalazioni';
	@override String get writeChat => 'Gestire la chat';
	@override String get readChat => 'Visualizzare le chat';
}

// Path: misskey.auth_
class _TranslationsMisskeyAuthItIt extends TranslationsMisskeyAuthEnUs {
	_TranslationsMisskeyAuthItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'Permessi dell\'applicazione';
	@override String shareAccess({required Object name}) => 'Vuoi autorizzare ${name} ad accedere al tuo profilo?';
	@override String get shareAccessAsk => 'Vuoi autorizzare questa App ad accedere al tuo profilo?';
	@override String permission({required Object name}) => '${name} richiede i permessi seguenti';
	@override String get permissionAsk => 'Questa app richiede le seguenti autorizzazioni:';
	@override String get pleaseGoBack => 'Si prega di ritornare sulla app';
	@override String get callback => 'Ritornando sulla app';
	@override String get accepted => 'Accesso concesso';
	@override String get denied => 'Accesso negato';
	@override String get scopeUser => 'Sto funzionando per il seguente profilo';
	@override String get pleaseLogin => 'Per favore accedi al tuo account per cambiare i permessi dell\'applicazione';
	@override String get byClickingYouWillBeRedirectedToThisUrl => 'Consentendo l\'accesso, si verrà reindirizzati presso questo indirizzo URL';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesItIt extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get all => 'Tutte le note';
	@override String get homeTimeline => 'Note dai tuoi Following';
	@override String get users => 'Note dagli utenti selezionati';
	@override String get userList => 'Note dagli utenti della lista selezionata';
	@override String get userBlacklist => 'Tutte le Note tranne quelle di uno o più profili specificati';
}

// Path: misskey.weekday_
class _TranslationsMisskeyWeekdayItIt extends TranslationsMisskeyWeekdayEnUs {
	_TranslationsMisskeyWeekdayItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get sunday => 'Domenica';
	@override String get monday => 'Lunedì';
	@override String get tuesday => 'Martedì';
	@override String get wednesday => 'Mercoledì';
	@override String get thursday => 'Giovedì';
	@override String get friday => 'Venerdì';
	@override String get saturday => 'Sabato';
}

// Path: misskey.widgets_
class _TranslationsMisskeyWidgetsItIt extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Profilo';
	@override String get instanceInfo => 'Informazioni sull\'istanza';
	@override String get memo => 'Promemoria';
	@override String get notifications => 'Notifiche';
	@override String get timeline => 'Timeline';
	@override String get calendar => 'Calendario';
	@override String get trends => 'Hashtag popolari';
	@override String get clock => 'Orologio';
	@override String get rss => 'Lettura RSS';
	@override String get rssTicker => 'Nastro RSS';
	@override String get activity => 'Attività';
	@override String get photos => 'Foto';
	@override String get digitalClock => 'Orologio digitale';
	@override String get unixClock => 'Orologio UNIX';
	@override String get federation => 'Federazione';
	@override String get instanceCloud => 'Nuvola di federazione';
	@override String get postForm => 'Finestra di pubblicazione';
	@override String get slideshow => 'Diapositive';
	@override String get button => 'Pulsante';
	@override String get onlineUsers => 'Persone attive adesso';
	@override String get jobQueue => 'Coda di lavoro';
	@override String get serverMetric => 'Statistiche server';
	@override String get aiscript => 'Console AiScript';
	@override String get aiscriptApp => 'App AiScript';
	@override String get aichan => 'Mascotte Ai';
	@override String get userList => 'Elenco utenti';
	@override late final _TranslationsMisskeyWidgetsUserListItIt userList_ = _TranslationsMisskeyWidgetsUserListItIt._(_root);
	@override String get clicker => 'Cliccheria';
	@override String get birthdayFollowings => 'Compleanni del giorno';
	@override String get chat => 'Chat';
}

// Path: misskey.cw_
class _TranslationsMisskeyCwItIt extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Nascondere';
	@override String get show => 'Continua la lettura...';
	@override String chars({required Object count}) => '${count} caratteri';
	@override String files({required Object count}) => '${count} file';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollItIt extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'Sono necessarie almeno 2 risposte';
	@override String choiceN({required Object n}) => 'Opzione ${n}';
	@override String get noMore => 'Hai raggiunto il limite di opzioni.';
	@override String get canMultipleVote => 'Possibilità di risposte multiple';
	@override String get expiration => 'Scadenza';
	@override String get infinite => 'Non scade';
	@override String get at => 'Seleziona data';
	@override String get after => 'Seleziona durata';
	@override String get deadlineDate => 'Data di scadenza';
	@override String get deadlineTime => 'Ora di scadenza';
	@override String get duration => 'Durata';
	@override String votesCount({required Object n}) => '${n} voti';
	@override String totalVotes({required Object n}) => 'Totale di ${n} voti';
	@override String get vote => 'Vota';
	@override String get showResult => 'Visualizza risultati';
	@override String get voted => 'Hai votato';
	@override String get closed => 'Terminato';
	@override String remainingDays({required Object d, required Object h}) => 'Mancano ${d} giorni e ${h} ore';
	@override String remainingHours({required Object h, required Object m}) => 'Mancano ${h} ore e ${m} minuti';
	@override String remainingMinutes({required Object m, required Object s}) => 'Rimangono ${m} minuti e ${s} secondi';
	@override String remainingSeconds({required Object s}) => 'Rimangono ${s} secondi';
}

// Path: misskey.visibility_
class _TranslationsMisskeyVisibilityItIt extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get public => 'Pubblica';
	@override String get publicDescription => 'Visibilità pubblica';
	@override String get home => 'Home';
	@override String get homeDescription => 'Visibile solo nella Home';
	@override String get followers => 'Follower';
	@override String get followersDescription => 'Visibile solo ai tuoi follower';
	@override String get specified => 'Nota diretta';
	@override String get specifiedDescription => 'Visibile solo ai profili menzionati';
	@override String get disableFederation => 'Senza federazione';
	@override String get disableFederationDescription => 'Non spedire attività alle altre istanze remote';
}

// Path: misskey.postForm_
class _TranslationsMisskeyPostFormItIt extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'Rispondi a questa nota...';
	@override String get quotePlaceholder => 'Cita questa nota...';
	@override String get channelPlaceholder => 'Pubblica sul canale...';
	@override late final _TranslationsMisskeyPostFormPlaceholdersItIt placeholders_ = _TranslationsMisskeyPostFormPlaceholdersItIt._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileItIt extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nome';
	@override String get username => 'Nome utente';
	@override String get description => 'Biografia';
	@override String get youCanIncludeHashtags => 'Puoi anche includere hashtag.';
	@override String get metadata => 'Informazioni aggiuntive';
	@override String get metadataEdit => 'Modifica informazioni aggiuntive';
	@override String get metadataDescription => 'Puoi pubblicare fino a quattro informazioni aggiuntive sul profilo.';
	@override String get metadataLabel => 'Etichetta';
	@override String get metadataContent => 'Contenuto';
	@override String get changeAvatar => 'Modifica immagine profilo';
	@override String get changeBanner => 'Cambia intestazione';
	@override String get verifiedLinkDescription => 'Puoi verificare il tuo profilo mostrando una icona. Devi inserire la URL alla pagina che contiene un link al tuo profilo.\nPer verificare il profilo tramite la spunta di conferma, devi inserire la url alla pagina che contiene un link al tuo profilo Misskey. Deve avere attributo rel=\'me\'.';
	@override String avatarDecorationMax({required Object max}) => 'Puoi aggiungere fino a ${max} decorazioni.';
	@override String get followedMessage => 'Messaggio, quando qualcuno ti segue';
	@override String get followedMessageDescription => 'Puoi impostare un breve messaggio da mostrare agli altri profili quando ti seguono.';
	@override String get followedMessageDescriptionForLockedAccount => 'Quando approvi una richiesta di follow, verrà visualizzato questo testo.';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportItIt extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Tutte le note';
	@override String get favoritedNotes => 'Note preferite';
	@override String get clips => 'Clip';
	@override String get followingList => 'Following';
	@override String get muteList => 'Elenco profili silenziati';
	@override String get blockingList => 'Elenco profili bloccati';
	@override String get userLists => 'Liste';
	@override String get excludeMutingUsers => 'Escludere gli utenti silenziati';
	@override String get excludeInactiveUsers => 'Escludere i profili inutilizzati';
	@override String get withReplies => 'Includere le risposte da profili importati nella Timeline';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsItIt extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Federazione';
	@override String get apRequest => 'Richieste';
	@override String get usersIncDec => 'Variazione del numero di utenti';
	@override String get usersTotal => 'Numero totale di utenti';
	@override String get activeUsers => 'Numero di utenti attivi';
	@override String get notesIncDec => 'Variazione del numero di note';
	@override String get localNotesIncDec => 'Variazione del numero di note locali';
	@override String get remoteNotesIncDec => 'Variazione del numero di note distanti';
	@override String get notesTotal => 'Numero di note in totale';
	@override String get filesIncDec => 'Variazione del numero dei file';
	@override String get filesTotal => 'Numero di file in totale';
	@override String get storageUsageIncDec => 'Variazione dell\'utilizzo dell\'immagazzinamento';
	@override String get storageUsageTotal => 'Utilizzo totale dell\'immagazzinamento';
}

// Path: misskey.instanceCharts_
class _TranslationsMisskeyInstanceChartsItIt extends TranslationsMisskeyInstanceChartsEnUs {
	_TranslationsMisskeyInstanceChartsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get requests => 'Richieste';
	@override String get users => 'Variazione del numero di profili';
	@override String get usersTotal => 'Totale cumulativo di utenti';
	@override String get notes => 'Variazione del numero di note';
	@override String get notesTotal => 'Totale cumulato di note';
	@override String get ff => 'Variazione dei follow/ follower';
	@override String get ffTotal => 'Totale cumulato dei follow/ follower';
	@override String get cacheSize => 'Variazione dello spazio occupato dalla cache';
	@override String get cacheSizeTotal => 'Totale cumulato dello spazio occupato dalla cache';
	@override String get files => 'Variazione del numero di file';
	@override String get filesTotal => 'Totale cumulato del numero di file';
}

// Path: misskey.timelines_
class _TranslationsMisskeyTimelinesItIt extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get home => 'Home';
	@override String get local => 'Locale';
	@override String get social => 'Sociale';
	@override String get global => 'Federata';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayItIt extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Crea un Play';
	@override String get edit => 'Modifica i Play';
	@override String get created => 'Il Play è stato creato';
	@override String get updated => 'Il Play è stato aggiornato';
	@override String get deleted => 'Il Play è stato eliminato';
	@override String get pageSetting => 'Impostazioni di Play';
	@override String get editThisPage => 'Modifica il Play';
	@override String get viewSource => 'Visualizza sorgente';
	@override String get my => 'I miei Play';
	@override String get liked => 'Play piaciuti';
	@override String get featured => 'Popolari';
	@override String get title => 'Titolo';
	@override String get script => 'Script';
	@override String get summary => 'Descrizione';
	@override String get visibilityDescription => 'Impostarlo su privato significa che non verrà visualizzato sul tuo profilo, ma chiunque ha l\'URL potrà comunque accedervi.';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesItIt extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'Crea pagina';
	@override String get editPage => 'Modifica pagina';
	@override String get readPage => 'Visualizzando fonte ';
	@override String get pageSetting => 'Impostazioni pagina';
	@override String get nameAlreadyExists => 'Esiste già una pagina con lo stesso URL.';
	@override String get invalidNameTitle => 'L\'URL di pagina definito non è valido';
	@override String get invalidNameText => 'Verifica che il campo non è vuoto';
	@override String get editThisPage => 'Modifica questa pagina';
	@override String get viewSource => 'Visualizza sorgente';
	@override String get viewPage => 'Visualizza pagina';
	@override String get like => 'Mi piace';
	@override String get unlike => 'Togli Mi piace';
	@override String get my => 'Le mie pagine';
	@override String get liked => 'Pagine che mi piacciono';
	@override String get featured => 'Popolari';
	@override String get inspector => 'Analisi pagina';
	@override String get contents => 'Contenuto';
	@override String get content => 'Blocco di pagina';
	@override String get variables => 'Variabili';
	@override String get title => 'Titolo';
	@override String get url => 'URL della pagina';
	@override String get summary => 'Riassunto di pagina';
	@override String get alignCenter => 'centrato';
	@override String get hideTitleWhenPinned => 'Nascondere il titolo pagina quando è fissata in cima al profilo.';
	@override String get font => 'Tipo di carattere';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans serif';
	@override String get eyeCatchingImageSet => 'Imposta un\'immagine attraente';
	@override String get eyeCatchingImageRemove => 'Elimina immagine attraente';
	@override String get chooseBlock => 'Aggiungi blocco';
	@override String get enterSectionTitle => 'Inserisci il titolo della sezione';
	@override String get selectType => 'Seleziona tipo';
	@override String get contentBlocks => 'Contenuto';
	@override String get inputBlocks => 'Blocchi di input';
	@override String get specialBlocks => 'Speciale';
	@override late final _TranslationsMisskeyPagesBlocksItIt blocks = _TranslationsMisskeyPagesBlocksItIt._(_root);
}

// Path: misskey.relayStatus_
class _TranslationsMisskeyRelayStatusItIt extends TranslationsMisskeyRelayStatusEnUs {
	_TranslationsMisskeyRelayStatusItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'In attesa di approvazione';
	@override String get accepted => 'Approvato';
	@override String get rejected => 'Respinto';
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationItIt extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'File caricato correttamente';
	@override String youGotMention({required Object name}) => '${name} ti ha menzionato';
	@override String youGotReply({required Object name}) => '${name} ti ha risposto';
	@override String youGotQuote({required Object name}) => '${name} ha citato la tua Nota e ha detto';
	@override String youRenoted({required Object name}) => '${name} ha rinotato';
	@override String get youWereFollowed => 'Follower aggiuntivo';
	@override String get youReceivedFollowRequest => 'Hai ricevuto una richiesta di follow';
	@override String get yourFollowRequestAccepted => 'La tua richiesta di follow è stata accettata';
	@override String get pollEnded => 'Risultati del sondaggio.';
	@override String get newNote => 'Nuove Note';
	@override String unreadAntennaNote({required Object name}) => 'Antenna ${name}';
	@override String get roleAssigned => 'Ruolo assegnato';
	@override String get chatRoomInvitationReceived => 'Invito in una stanza di chat';
	@override String get emptyPushNotificationMessage => 'Le notifiche push sono state aggiornate.';
	@override String get achievementEarned => 'Obiettivo raggiunto';
	@override String get testNotification => 'Provare la notifica';
	@override String get checkNotificationBehavior => 'Provare il comportamento della notifica';
	@override String get sendTestNotification => 'Spedisci una notifica di prova';
	@override String get notificationWillBeDisplayedLikeThis => 'La notifica apparirà così';
	@override String reactedBySomeUsers({required Object n}) => '${n} reazioni';
	@override String likedBySomeUsers({required Object n}) => '${n} apprezzamenti';
	@override String renotedBySomeUsers({required Object n}) => '${n} Rinota';
	@override String followedBySomeUsers({required Object n}) => '${n} follower';
	@override String get flushNotification => 'Azzera le notifiche';
	@override String exportOfXCompleted({required Object x}) => 'Abbiamo completato l\'esportazione di ${x}';
	@override String get login => 'Autenticazione avvenuta';
	@override String get createToken => 'È stato creato un token di accesso';
	@override String createTokenDescription({required Object text}) => 'In caso contrario, eliminare il token di accesso tramite (${text}).';
	@override late final _TranslationsMisskeyNotificationTypesItIt types_ = _TranslationsMisskeyNotificationTypesItIt._(_root);
	@override late final _TranslationsMisskeyNotificationActionsItIt actions_ = _TranslationsMisskeyNotificationActionsItIt._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckItIt extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Mostra sempre la colonna principale';
	@override String get columnAlign => 'Allineamento delle colonne';
	@override String get columnGap => 'Spessore del margine tra colonne';
	@override String get deckMenuPosition => 'Posizione del menu Deck';
	@override String get navbarPosition => 'Posizione barra di navigazione';
	@override String get addColumn => 'Aggiungi colonna';
	@override String get newNoteNotificationSettings => 'Preferenze per le notifiche di nuove Note';
	@override String get configureColumn => 'Impostazioni colonna';
	@override String get swapLeft => 'Sposta a sinistra';
	@override String get swapRight => 'Sposta a destra';
	@override String get swapUp => 'Sposta in alto';
	@override String get swapDown => 'Sposta in basso';
	@override String get stackLeft => 'Impila a sinistra';
	@override String get popRight => 'Estrai a destra';
	@override String get profile => 'Profilo';
	@override String get newProfile => 'Nuovo profilo';
	@override String get deleteProfile => 'Cancellare il profilo.';
	@override String get introduction => 'Combinate le colonne per creare la vostra interfaccia!';
	@override String get introduction2 => 'È possibile aggiungere colonne in qualsiasi momento premendo + sulla destra dello schermo.';
	@override String get widgetsIntroduction => 'Dal menu della colonna, selezionare "Modifica i riquadri" per aggiungere un un riquadro con funzionalità';
	@override String get useSimpleUiForNonRootPages => 'Visualizza sotto pagine con interfaccia web semplice';
	@override String get usedAsMinWidthWhenFlexible => 'Se "larghezza flessibile" è abilitato, questa diventa la larghezza minima';
	@override String get flexible => 'Larghezza flessibile';
	@override String get enableSyncBetweenDevicesForProfiles => 'Abilita la sincronizzazione delle informazioni profilo tra dispositivi';
	@override late final _TranslationsMisskeyDeckColumnsItIt columns_ = _TranslationsMisskeyDeckColumnsItIt._(_root);
}

// Path: misskey.dialog_
class _TranslationsMisskeyDialogItIt extends TranslationsMisskeyDialogEnUs {
	_TranslationsMisskeyDialogItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object max, required Object current}) => 'Hai superato il limite di ${max} caratteri! (${current})';
	@override String charactersBelow({required Object min, required Object current}) => 'Sei al di sotto del minimo di ${min} caratteri!  (${current})';
}

// Path: misskey.disabledTimeline_
class _TranslationsMisskeyDisabledTimelineItIt extends TranslationsMisskeyDisabledTimelineEnUs {
	_TranslationsMisskeyDisabledTimelineItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Timeline disabilitata';
	@override String get description => 'Il ruolo in cui sei non ti permette di leggere questa timeline';
}

// Path: misskey.drivecleaner_
class _TranslationsMisskeyDrivecleanerItIt extends TranslationsMisskeyDrivecleanerEnUs {
	_TranslationsMisskeyDrivecleanerItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'Dal file più grosso al più piccolo';
	@override String get orderByCreatedAtAsc => 'Dal file più vecchio al più recente';
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsItIt extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Creazione Webhook';
	@override String get modifyWebhook => 'Modifica Webhook';
	@override String get name => 'Nome';
	@override String get secret => 'Segreto';
	@override String get trigger => 'Trigger';
	@override String get active => 'Attivo';
	@override late final _TranslationsMisskeyWebhookSettingsEventsItIt events_ = _TranslationsMisskeyWebhookSettingsEventsItIt._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsSystemEventsItIt systemEvents_ = _TranslationsMisskeyWebhookSettingsSystemEventsItIt._(_root);
	@override String get deleteConfirm => 'Vuoi davvero eliminare il Webhook?';
	@override String get testRemarks => 'Clicca il bottone a destra dell\'interruttore, per provare l\'invio di un webhook con dati fittizi.';
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportItIt extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientItIt notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientItIt._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesItIt extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get createRole => 'Ruolo creato';
	@override String get deleteRole => 'Ruolo eliminato';
	@override String get updateRole => 'Ruolo aggiornato';
	@override String get assignRole => 'Ruolo assegnato';
	@override String get unassignRole => 'Ruolo disassegnato';
	@override String get suspend => 'Sospensione';
	@override String get unsuspend => 'Sospensione rimossa';
	@override String get addCustomEmoji => 'Emoji personalizzata aggiunta';
	@override String get updateCustomEmoji => 'Emoji personalizzata aggiornata';
	@override String get deleteCustomEmoji => 'Emoji personalizzata eliminata';
	@override String get updateServerSettings => 'Impostazioni del server aggiornate';
	@override String get updateUserNote => 'Promemoria di moderazione aggiornato';
	@override String get deleteDriveFile => 'File da Drive eliminato';
	@override String get deleteNote => 'Nota eliminata';
	@override String get createGlobalAnnouncement => 'Annuncio globale creato';
	@override String get createUserAnnouncement => 'Annuncio ai profili iscritti creato';
	@override String get updateGlobalAnnouncement => 'Annuncio globale aggiornato';
	@override String get updateUserAnnouncement => 'Annuncio ai profili iscritti aggiornato';
	@override String get deleteGlobalAnnouncement => 'Annuncio globale eliminato';
	@override String get deleteUserAnnouncement => 'Annuncio ai profili iscritti eliminato';
	@override String get resetPassword => 'Password azzerata';
	@override String get suspendRemoteInstance => 'Istanza remota sospesa';
	@override String get unsuspendRemoteInstance => 'Istanza remota riattivata';
	@override String get updateRemoteInstanceNote => 'Aggiornamento del promemoria di moderazione per il server remoto';
	@override String get markSensitiveDriveFile => 'File nel Drive segnato come esplicito';
	@override String get unmarkSensitiveDriveFile => 'File nel Drive segnato come non esplicito';
	@override String get resolveAbuseReport => 'Segnalazione risolta';
	@override String get forwardAbuseReport => 'Segnalazione inoltrata';
	@override String get updateAbuseReportNote => 'Ha aggiornato la segnalazione';
	@override String get createInvitation => 'Genera codice di invito';
	@override String get createAd => 'Banner creato';
	@override String get deleteAd => 'Banner eliminato';
	@override String get updateAd => 'Banner aggiornato';
	@override String get createAvatarDecoration => 'Creazione decorazione della foto profilo';
	@override String get updateAvatarDecoration => 'Aggiornamento decorazione foto profilo';
	@override String get deleteAvatarDecoration => 'Eliminazione decorazione della foto profilo';
	@override String get unsetUserAvatar => 'Rimossa foto profilo';
	@override String get unsetUserBanner => 'Rimossa intestazione profilo';
	@override String get createSystemWebhook => 'Crea un SystemWebhook';
	@override String get updateSystemWebhook => 'Modifica SystemWebhook';
	@override String get deleteSystemWebhook => 'Elimina SystemWebhook';
	@override String get createAbuseReportNotificationRecipient => 'Crea destinatario per le notifiche di segnalazioni';
	@override String get updateAbuseReportNotificationRecipient => 'Aggiorna destinatario notifiche di segnalazioni';
	@override String get deleteAbuseReportNotificationRecipient => 'Elimina destinatario notifiche di segnalazioni';
	@override String get deleteAccount => 'Quando viene eliminato un profilo';
	@override String get deletePage => 'Pagina eliminata';
	@override String get deleteFlash => 'Play eliminato';
	@override String get deleteGalleryPost => 'Eliminazione pubblicazione nella Galleria';
	@override String get deleteChatRoom => 'Elimina chat';
	@override String get updateProxyAccountDescription => 'Aggiornata la descrizione del profilo proxy';
}

// Path: misskey.fileViewer_
class _TranslationsMisskeyFileViewerItIt extends TranslationsMisskeyFileViewerEnUs {
	_TranslationsMisskeyFileViewerItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dettagli del file';
	@override String get type => 'Tipo di file';
	@override String get size => 'Dimensioni file';
	@override String get url => 'URL';
	@override String get uploadedAt => 'Caricato il';
	@override String get attachedNotes => 'Note a cui è allegato';
	@override String get thisPageCanBeSeenFromTheAuthor => 'Questa pagina può essere vista solo da chi ha caricato il file.';
}

// Path: misskey.externalResourceInstaller_
class _TranslationsMisskeyExternalResourceInstallerItIt extends TranslationsMisskeyExternalResourceInstallerEnUs {
	_TranslationsMisskeyExternalResourceInstallerItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Installa da sito esterno';
	@override String get checkVendorBeforeInstall => 'Prima di installare, assicurati che la fonte sia affidabile.';
	@override late final _TranslationsMisskeyExternalResourceInstallerPluginItIt plugin_ = _TranslationsMisskeyExternalResourceInstallerPluginItIt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerThemeItIt theme_ = _TranslationsMisskeyExternalResourceInstallerThemeItIt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerMetaItIt meta_ = _TranslationsMisskeyExternalResourceInstallerMetaItIt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerVendorInfoItIt vendorInfo_ = _TranslationsMisskeyExternalResourceInstallerVendorInfoItIt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsItIt errors_ = _TranslationsMisskeyExternalResourceInstallerErrorsItIt._(_root);
}

// Path: misskey.dataSaver_
class _TranslationsMisskeyDataSaverItIt extends TranslationsMisskeyDataSaverEnUs {
	_TranslationsMisskeyDataSaverItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyDataSaverMediaItIt media_ = _TranslationsMisskeyDataSaverMediaItIt._(_root);
	@override late final _TranslationsMisskeyDataSaverAvatarItIt avatar_ = _TranslationsMisskeyDataSaverAvatarItIt._(_root);
	@override late final _TranslationsMisskeyDataSaverUrlPreviewThumbnailItIt urlPreviewThumbnail_ = _TranslationsMisskeyDataSaverUrlPreviewThumbnailItIt._(_root);
	@override late final _TranslationsMisskeyDataSaverDisableUrlPreviewItIt disableUrlPreview_ = _TranslationsMisskeyDataSaverDisableUrlPreviewItIt._(_root);
	@override late final _TranslationsMisskeyDataSaverCodeItIt code_ = _TranslationsMisskeyDataSaverCodeItIt._(_root);
}

// Path: misskey.hemisphere_
class _TranslationsMisskeyHemisphereItIt extends TranslationsMisskeyHemisphereEnUs {
	_TranslationsMisskeyHemisphereItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get N => 'Emisfero boreale';
	@override String get S => 'Emisfero australe';
	@override String get caption => 'Utile per alcune impostazioni del client, per determinare la stagione.';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiItIt extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get reversi => 'Reversi';
	@override String get gameSettings => 'Impostazioni di gioco';
	@override String get chooseBoard => 'Segli la tavola';
	@override String get blackOrWhite => 'Neri / Bianchi';
	@override String blackIs({required Object name}) => '${name} muove i Neri';
	@override String get rules => 'Regole del gioco';
	@override String get thisGameIsStartedSoon => 'Il gioco sta per iniziare';
	@override String get waitingForOther => 'Attendere l\'avversario';
	@override String get waitingForMe => 'Ti stanno aspettando';
	@override String get waitingBoth => 'Preparatevi';
	@override String get ready => 'Pronti';
	@override String get cancelReady => 'Riprendere la preparazione';
	@override String get opponentTurn => 'Turno avversario';
	@override String get myTurn => 'Tocca a te';
	@override String turnOf({required Object name}) => 'Tocca a ${name}';
	@override String pastTurnOf({required Object name}) => 'Turno di ${name}';
	@override String get surrender => 'Mi arrendo';
	@override String get surrendered => 'Ha ceduto';
	@override String get timeout => 'Tempo scaduto';
	@override String get drawn => 'Pareggio';
	@override String won({required Object name}) => 'Ha vinto ${name}';
	@override String get black => 'Neri';
	@override String get white => 'Bianchi';
	@override String get total => 'Totale';
	@override String turnCount({required Object count}) => 'Turno N. ${count}';
	@override String get myGames => 'Le mie sfide';
	@override String get allGames => 'Tutte le sfide';
	@override String get ended => 'Conclusione';
	@override String get playing => 'In gioco';
	@override String get isLlotheo => 'Vince chi ha meno pietre (Roseo)';
	@override String get loopedMap => 'Mappa ricorsiva';
	@override String get canPutEverywhere => 'Modalità che può essere posizionata ovunque';
	@override String get timeLimitForEachTurn => 'Tempo limite per turno';
	@override String get freeMatch => 'Sfida libera';
	@override String get lookingForPlayer => 'Alla ricerca di un avversario';
	@override String get gameCanceled => 'Sfida cancellata';
	@override String get shareToTlTheGameWhenStart => 'Pubblica l\'inizio della partita sulla tua Timeline';
	@override String get iStartedAGame => 'Inizia la sfida! #MisskeyReversi';
	@override String get opponentHasSettingsChanged => 'L\'avversario ha cambiato configurazione';
	@override String get allowIrregularRules => 'Regole inconsuete (completamente libere)';
	@override String get disallowIrregularRules => 'Impedire le regole inconsuete';
	@override String get showBoardLabels => 'Mostra le coordinate del gioco';
	@override String get useAvatarAsStone => 'Immagini profilo come pedine';
}

// Path: misskey.offlineScreen_
class _TranslationsMisskeyOfflineScreenItIt extends TranslationsMisskeyOfflineScreenEnUs {
	_TranslationsMisskeyOfflineScreenItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scollegato. Impossibile connettersi al server';
	@override String get header => 'Impossibile connettersi al server';
}

// Path: misskey.urlPreviewSetting_
class _TranslationsMisskeyUrlPreviewSettingItIt extends TranslationsMisskeyUrlPreviewSettingEnUs {
	_TranslationsMisskeyUrlPreviewSettingItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Impostazioni per l\'anteprima delle URL';
	@override String get enable => 'Attiva l\'anteprima delle URL';
	@override String get allowRedirect => 'Segui i reindirizzamenti per visualizzare le anteprime';
	@override String get allowRedirectDescription => 'Se la URL inserita contiene un reindirizzamento, decidi di seguire il reindirizzamento fino alla destinazione, visualizzandone l\'anteprima. Disabilitando questa opzione si risparmiano risorse del server, ma il contenuto effettivo dal reindirizzamento, non verrà visualizzato.';
	@override String get timeout => 'Timeout dell\'anteprima in millisecondi';
	@override String get timeoutDescription => 'Impegna al massimo il tempo indicato, altrimenti ignora l\'anteprima';
	@override String get maximumContentLength => 'Grandezza del contenuto (Content-Length in byte)';
	@override String get maximumContentLengthDescription => 'Se la grandezza supera il valore, l\'anteprima verrà ignorata.';
	@override String get requireContentLength => 'Genenerare l\'anteprima solo quando è definito Content-Length';
	@override String get requireContentLengthDescription => 'In assenza di questo parametro dal server remoto, l\'anteprima verrà ignorata.';
	@override String get userAgent => 'User-Agent';
	@override String get userAgentDescription => 'Definire con quale User-Agent si intende identificarsi durante l\'acquisizione di un\'anteprima. Se è vuoto, useremo il valore predefinito.';
	@override String get summaryProxy => 'Endpoint proxy che genera l\'anteprima';
	@override String get summaryProxyDescription => 'Genera anteprime utilizzando un proxy Summaly anziché Misskey.';
	@override String get summaryProxyDescription2 => 'I parametri sono collegano al proxy come stringa query. Se il proxy non li supporta, verranno ignorati.';
}

// Path: misskey.mediaControls_
class _TranslationsMisskeyMediaControlsItIt extends TranslationsMisskeyMediaControlsEnUs {
	_TranslationsMisskeyMediaControlsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get pip => 'Sovraimpressione';
	@override String get playbackRate => 'Velocità di riproduzione';
	@override String get loop => 'Ripetizione infinita';
}

// Path: misskey.contextMenu_
class _TranslationsMisskeyContextMenuItIt extends TranslationsMisskeyContextMenuEnUs {
	_TranslationsMisskeyContextMenuItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Menu contestuale';
	@override String get app => 'Applicazione';
	@override String get appWithShift => 'Applicazione Shift+Tasto';
	@override String get native => 'Interfaccia utente del browser';
}

// Path: misskey.gridComponent_
class _TranslationsMisskeyGridComponentItIt extends TranslationsMisskeyGridComponentEnUs {
	_TranslationsMisskeyGridComponentItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyGridComponentErrorItIt error_ = _TranslationsMisskeyGridComponentErrorItIt._(_root);
}

// Path: misskey.roleSelectDialog_
class _TranslationsMisskeyRoleSelectDialogItIt extends TranslationsMisskeyRoleSelectDialogEnUs {
	_TranslationsMisskeyRoleSelectDialogItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get notSelected => 'Niente selezioato';
}

// Path: misskey.customEmojisManager_
class _TranslationsMisskeyCustomEmojisManagerItIt extends TranslationsMisskeyCustomEmojisManagerEnUs {
	_TranslationsMisskeyCustomEmojisManagerItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCustomEmojisManagerGridCommonItIt gridCommon_ = _TranslationsMisskeyCustomEmojisManagerGridCommonItIt._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLogsItIt logs_ = _TranslationsMisskeyCustomEmojisManagerLogsItIt._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerRemoteItIt remote_ = _TranslationsMisskeyCustomEmojisManagerRemoteItIt._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalItIt local_ = _TranslationsMisskeyCustomEmojisManagerLocalItIt._(_root);
}

// Path: misskey.embedCodeGen_
class _TranslationsMisskeyEmbedCodeGenItIt extends TranslationsMisskeyEmbedCodeGenEnUs {
	_TranslationsMisskeyEmbedCodeGenItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Personalizza il codice di incorporamento';
	@override String get header => 'Mostra la testata';
	@override String get autoload => 'Carica automaticamente di più (sconsigliato)';
	@override String get maxHeight => 'Altezza massima';
	@override String get maxHeightDescription => 'Specifica un valore per evitare che continui a crescere verticalmente. Il valore 0 disabilita il limite d\'altezza.';
	@override String get maxHeightWarn => 'L\'altezza massima è disabilitata (0). Se l\'effetto è indesiderato, prova a impostare l\'altezza massima a un valore specifico.';
	@override String get previewIsNotActual => 'Poiché supera l\'intervallo che può essere visualizzato in anteprima, la visualizzazione vera e propria sarà diversa quando effettivamente incorporata.';
	@override String get rounded => 'Bordo arrotondato';
	@override String get border => 'Aggiungi un bordo al contenitore';
	@override String get applyToPreview => 'Applica all\'anteprima';
	@override String get generateCode => 'Crea il codice di incorporamento';
	@override String get codeGenerated => 'Codice generato';
	@override String get codeGeneratedDescription => 'Incolla il codice appena generato sul tuo sito web.';
}

// Path: misskey.selfXssPrevention_
class _TranslationsMisskeySelfXssPreventionItIt extends TranslationsMisskeySelfXssPreventionEnUs {
	_TranslationsMisskeySelfXssPreventionItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get warning => 'Avviso';
	@override String get title => '"Incolla qualcosa su questa schermata" è tutta una truffa.';
	@override String get description1 => 'Incollando qualcosa qui, malintenzionati potrebbero prendere il controllo del tuo profilo o rubare i tuoi dati personali.';
	@override String get description2 => 'Se non sai esattamente cosa stai facendo, %c smetti subito e chiudi questa finestra.';
	@override String description3({required Object link}) => 'Per favore, controlla questo collegamento per avere maggiori dettagli. ${link}';
}

// Path: misskey.followRequest_
class _TranslationsMisskeyFollowRequestItIt extends TranslationsMisskeyFollowRequestEnUs {
	_TranslationsMisskeyFollowRequestItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get recieved => 'Richieste in ingresso';
	@override String get sent => 'Richieste in uscita';
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsItIt extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedItIt federationNotAllowed_ = _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedItIt._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsUriInvalidItIt uriInvalid_ = _TranslationsMisskeyRemoteLookupErrorsUriInvalidItIt._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsRequestFailedItIt requestFailed_ = _TranslationsMisskeyRemoteLookupErrorsRequestFailedItIt._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsResponseInvalidItIt responseInvalid_ = _TranslationsMisskeyRemoteLookupErrorsResponseInvalidItIt._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectItIt noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectItIt._(_root);
}

// Path: misskey.captcha_
class _TranslationsMisskeyCaptchaItIt extends TranslationsMisskeyCaptchaEnUs {
	_TranslationsMisskeyCaptchaItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get verify => 'Per favore, controlla la verifica CAPTCHA';
	@override String get testSiteKeyMessage => 'Puoi provare l\'anteprima inserendo valori di test, sia per la chiave del sito che per la chiave segreta.\nSi prega di controllare la pagina qui sotto per i dettagli.';
	@override late final _TranslationsMisskeyCaptchaErrorItIt error_ = _TranslationsMisskeyCaptchaErrorItIt._(_root);
}

// Path: misskey.bootErrors_
class _TranslationsMisskeyBootErrorsItIt extends TranslationsMisskeyBootErrorsEnUs {
	_TranslationsMisskeyBootErrorsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Caricamento non riuscito';
	@override String get serverError => 'Dopo una breve attesa, e dopo aver ricaricato la pagina, se il problema persiste, contatta l\'amministrazione comunicando il seguente ID di errore.';
	@override String get solution => 'Di seguito, alcune probabili soluzioni al problema.';
	@override String get solution1 => 'Aggiornare browser e il sistema operativo all\'ultima versione';
	@override String get solution2 => 'Disattivare gli adblocker';
	@override String get solution3 => 'Cancellare la cache del browser';
	@override String get solution4 => '(Per chi utilizza il Browser Tor) Impostare dom.webaudio.enabled = vero';
	@override String get otherOption => 'Altre opzioni';
	@override String get otherOption1 => 'Nelle impostazioni, cancellare le impostazioni del client e svuotare la cache';
	@override String get otherOption2 => 'Avviare il client predefinito';
	@override String get otherOption3 => 'Avviare lo strumento di riparazione';
}

// Path: misskey.search_
class _TranslationsMisskeySearchItIt extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Tutte';
	@override String get searchScopeLocal => 'Locale';
	@override String get searchScopeServer => 'Specifiche del server';
	@override String get searchScopeUser => 'Profilo specifico';
	@override String get pleaseEnterServerHost => 'Inserire il nome host';
	@override String get pleaseSelectUser => 'Per favore, seleziona un profilo';
	@override String get serverHostPlaceholder => 'Es: misskey.example.com';
}

// Path: misskey.serverSetupWizard_
class _TranslationsMisskeyServerSetupWizardItIt extends TranslationsMisskeyServerSetupWizardEnUs {
	_TranslationsMisskeyServerSetupWizardItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get installCompleted => 'L\'installazione di Misskey è completata!';
	@override String get firstCreateAccount => 'Per prima cosa, crea un account amministratore.';
	@override String get accountCreated => 'Il tuo account amministratore è stato creato!';
	@override String get serverSetting => 'Configurazione del server';
	@override String get youCanEasilyConfigureOptimalServerSettingsWithThisWizard => 'Questa procedura guidata ti aiuterà a configurare facilmente il tuo server in modo ottimale.';
	@override String get settingsYouMakeHereCanBeChangedLater => 'Potrai anche modificare le impostazioni in seguito.';
	@override String get howWillYouUseMisskey => 'Come si usa Misskey?';
	@override late final _TranslationsMisskeyServerSetupWizardUseItIt use_ = _TranslationsMisskeyServerSetupWizardUseItIt._(_root);
	@override String get openServerAdvice => 'Ospitare un numero imprecisato di persone comporta dei rischi. Ti consigliamo di adottare un solido sistema di moderazione, in modo da poter gestire eventuali problemi che potrebbero presentarsi pubblicando contenuti proposti da altre persone, che potrebbero essere sconosciute.';
	@override String get openServerAntiSpamAdvice => 'Presta molta attenzione alla sicurezza, ad esempio attivando funzionalità anti-bot (iscrizioni automatiche) come reCAPTCHA. Questo può evitare che il tuo server diventi un trampolino di lancio per lo spam di altri.';
	@override String get howManyUsersDoYouExpect => 'Quante persone pensi che parteciperanno?';
	@override late final _TranslationsMisskeyServerSetupWizardScaleItIt scale_ = _TranslationsMisskeyServerSetupWizardScaleItIt._(_root);
	@override String get largeScaleServerAdvice => 'Configurare grandi server potrebbe richiedere conoscenze infrastrutturali avanzate, ad esempio, il bilanciamento del carico e la replicazione del database.';
	@override String get doYouConnectToFediverse => 'Vuoi connetterti al Fediverso?';
	@override String get doYouConnectToFediverse_description1 => 'Collegandosi a una rete di server distribuiti, denominata Fediverso, potrai scambiare contenuti con altri server, tramite il protocollo di comunicazione ActivityPub.';
	@override String get doYouConnectToFediverse_description2 => 'Connettersi al Fediverso è anche detto "federazione".';
	@override String get youCanConfigureMoreFederationSettingsLater => 'Puoi svolgere la configurazione avanzata anche dopo. Ad esempio specificando quali server possono federarsi.';
	@override String get adminInfo => 'Informazioni sull\'amministratore';
	@override String get adminInfo_description => 'Imposta le informazioni dell\'amministratore utilizzate per accettare le richieste.';
	@override String get adminInfo_mustBeFilled => 'Questa operazione è necessaria su un server aperto o se è attiva la federazione.';
	@override String get followingSettingsAreRecommended => 'Si consigliano le seguenti impostazioni:';
	@override String get applyTheseSettings => 'Applica questa impostazione';
	@override String get skipSettings => 'Salta l\'installazione';
	@override String get settingsCompleted => 'Installazione completata!';
	@override String get settingsCompleted_description => 'Grazie per il tuo impegno. Adesso che hai completato la configurazione, puoi iniziare a utilizzare il tuo server.';
	@override String get settingsCompleted_description2 => 'Le impostazioni dettagliate del server possono essere effettuate tramite il Pannello di controllo.';
	@override String get donationRequest => 'Per favore Fai una donazione';
	@override late final _TranslationsMisskeyServerSetupWizardDonationRequestItIt donationRequest_ = _TranslationsMisskeyServerSetupWizardDonationRequestItIt._(_root);
}

// Path: misskey.uploader_
class _TranslationsMisskeyUploaderItIt extends TranslationsMisskeyUploaderEnUs {
	_TranslationsMisskeyUploaderItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String compressedToX({required Object x}) => 'Compresso in ${x}';
	@override String savedXPercent({required Object x}) => '${x}% risparmiati';
	@override String get abortConfirm => 'Alcuni file non sono stati caricati. Vuoi annullare l\'operazione?';
	@override String get doneConfirm => 'Alcuni file non sono stati caricati. Vuoi completarli?';
	@override String maxFileSizeIsX({required Object x}) => 'La dimensione massima del file che puoi caricare è ${x}.';
	@override String get allowedTypes => 'Tipi di file caricabili';
	@override String get tip => 'Il file non è ancora stato caricato. Puoi controllare, rinominare, comprimere, ritagliare, prima del caricamento. Quando hai finito, premi il bottone "Carica" ​​per completare.';
}

// Path: misskey.clientPerformanceIssueTip_
class _TranslationsMisskeyClientPerformanceIssueTipItIt extends TranslationsMisskeyClientPerformanceIssueTipEnUs {
	_TranslationsMisskeyClientPerformanceIssueTipItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Se ritieni che la batteria si stia scaricando troppo';
	@override String get makeSureDisabledAdBlocker => 'Disattiva il tuo AdBlocker';
	@override String get makeSureDisabledAdBlocker_description => 'Gli AdBlocker possono influire sulle prestazioni. Controlla se nel tuo sistema operativo, nel browser o nei componenti aggiuntivi è abilitato un AdBlocker.';
	@override String get makeSureDisabledCustomCss => 'Disabilita CSS personalizzato';
	@override String get makeSureDisabledCustomCss_description => 'La riscrittura degli stili CSS può influire sulle prestazioni. Assicurati di non avere CSS personalizzati o estensioni abilitate che sovrascrivano i tuoi stili.';
	@override String get makeSureDisabledAddons => 'Disabilitare le estensioni';
	@override String get makeSureDisabledAddons_description => 'Alcune estensioni potrebbero interferire con il funzionamento del client e comprometterne le prestazioni. Prova a disattivare le estensioni del browser e vedi se il problema persiste.';
}

// Path: misskey.clip_
class _TranslationsMisskeyClipItIt extends TranslationsMisskeyClipEnUs {
	_TranslationsMisskeyClipItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Le clip sono una funzionalità che consente di raggruppare le Note.';
}

// Path: misskey.userLists_
class _TranslationsMisskeyUserListsItIt extends TranslationsMisskeyUserListsEnUs {
	_TranslationsMisskeyUserListsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Puoi creare un elenco di Note create da qualsiasi profilo. L\'elenco è visualizzato come una sequenza temporale.';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorItIt extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Puoi aggiungere una filigrana, ad esempio con i crediti alle tue immagini.';
	@override String get quitWithoutSaveConfirm => 'Uscire senza salvare?';
	@override String get driveFileTypeWarn => 'Formato file non supportato';
	@override String get driveFileTypeWarnDescription => 'Per favore seleziona un file immagine';
	@override String get title => 'Modifica la filigrana';
	@override String get cover => 'Coprire tutto';
	@override String get repeat => 'Disposizione';
	@override String get opacity => 'Opacità';
	@override String get scale => 'Dimensioni';
	@override String get text => 'Testo';
	@override String get position => 'Posizione';
	@override String get type => 'Tipo';
	@override String get image => 'Immagini';
	@override String get advanced => 'Avanzato';
	@override String get stripe => 'Strisce';
	@override String get stripeWidth => 'Larghezza della linea';
	@override String get stripeFrequency => 'Il numero di linee';
	@override String get angle => 'Angolo';
	@override String get polkadot => 'A pallini';
	@override String get checker => 'revisore';
	@override String get polkadotMainDotOpacity => 'Opacità del punto principale';
	@override String get polkadotMainDotRadius => 'Dimensione del punto principale';
	@override String get polkadotSubDotOpacity => 'Opacità del punto secondario';
	@override String get polkadotSubDotRadius => 'Dimensione del punto secondario';
	@override String get polkadotSubDotDivisions => 'Quantità di punti secondari';
}

// Path: misskey.imageEffector_
class _TranslationsMisskeyImageEffectorItIt extends TranslationsMisskeyImageEffectorEnUs {
	_TranslationsMisskeyImageEffectorItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Effetto';
	@override String get addEffect => 'Aggiungi effetto';
	@override String get discardChangesConfirm => 'Scarta le modifiche ed esci?';
	@override late final _TranslationsMisskeyImageEffectorFxsItIt fxs_ = _TranslationsMisskeyImageEffectorFxsItIt._(_root);
}

// Path: misskey.chat_.chatAllowedUsers_
class _TranslationsMisskeyChatChatAllowedUsersItIt extends TranslationsMisskeyChatChatAllowedUsersEnUs {
	_TranslationsMisskeyChatChatAllowedUsersItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get everyone => 'Chiunque';
	@override String get followers => 'Solo i tuoi Follower';
	@override String get following => 'Solo i tuoi Follow';
	@override String get mutual => 'Solo relazioni reciproche';
	@override String get none => 'Nessuno';
}

// Path: misskey.settings_.chat_
class _TranslationsMisskeySettingsChatItIt extends TranslationsMisskeySettingsChatEnUs {
	_TranslationsMisskeySettingsChatItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get showSenderName => 'Mostra il nome del mittente';
	@override String get sendOnEnter => 'Invio spedisce';
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypeItIt extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypeItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get none => 'Pubblicazione';
	@override String get manuallySuspended => 'Sospesa manualmente';
	@override String get goneSuspended => 'Sospensione server a causa dell\'eliminazione';
	@override String get autoSuspendedForNotResponding => 'Sospensione del server a causa di mancata risposta';
	@override String get softwareSuspended => 'Attualmente non disponibile perché il software non è più distribuito';
}

// Path: misskey.bubbleGame_.score_
class _TranslationsMisskeyBubbleGameScoreItIt extends TranslationsMisskeyBubbleGameScoreEnUs {
	_TranslationsMisskeyBubbleGameScoreItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get score => 'Punteggio';
	@override String get scoreYen => 'Capitale';
	@override String get highScore => 'Punteggio migliore';
	@override String get maxChain => 'Miglior combo';
	@override String yen({required Object yen}) => '${yen}￥';
	@override String estimatedQty({required Object qty}) => '${qty} punti';
	@override String scoreSweets({required Object onigiriQtyWithUnit}) => 'Onigiri ${onigiriQtyWithUnit}';
}

// Path: misskey.bubbleGame_.howToPlay_
class _TranslationsMisskeyBubbleGameHowToPlayItIt extends TranslationsMisskeyBubbleGameHowToPlayEnUs {
	_TranslationsMisskeyBubbleGameHowToPlayItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get section1 => 'Scegli la posizione e rilascia l\'oggetto nel contenitore.';
	@override String get section2 => 'Se due oggetti dello stesso tipo si toccano, si trasformano in un oggetto diverso, aumentando il punteggio.';
	@override String get section3 => 'Se gli oggetti escono dal limite superiore del contenitore, il gioco finisce. Cerca di ottenere un punteggio elevato fondendo gli oggetti, evitando che escano dal contenitore!';
}

// Path: misskey.initialTutorial_.landing_
class _TranslationsMisskeyInitialTutorialLandingItIt extends TranslationsMisskeyInitialTutorialLandingEnUs {
	_TranslationsMisskeyInitialTutorialLandingItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eccoci nel tutorial';
	@override String get description => 'Qui puoi verificare l\'uso delle funzionalità base di Misskey.';
}

// Path: misskey.initialTutorial_.note_
class _TranslationsMisskeyInitialTutorialNoteItIt extends TranslationsMisskeyInitialTutorialNoteEnUs {
	_TranslationsMisskeyInitialTutorialNoteItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cosa sono le Note?';
	@override String get description => 'Gli status su Misskey sono chiamati "Note". Le Note sono elencate in ordine cronologico nelle timeline e vengono aggiornate in tempo reale.';
	@override String get reply => 'Puoi rispondere alle Note, alle altre risposte e dialogare in conversazioni.';
	@override String get renote => 'Puoi ri-condividere le Note, ritorneranno sulla Timeline. Aggiungendo del testo, scriverai una Citazione.';
	@override String get reaction => 'Puoi aggiungere una reazione. Nella pagina successiva ti spiego come.';
	@override String get menu => 'Per altre attività, ad esempio, vedere i dettagli delle Note o copiare i collegamenti.';
}

// Path: misskey.initialTutorial_.reaction_
class _TranslationsMisskeyInitialTutorialReactionItIt extends TranslationsMisskeyInitialTutorialReactionEnUs {
	_TranslationsMisskeyInitialTutorialReactionItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cosa sono le Reazioni?';
	@override String get description => 'Reazioni alle Note. Le sensazioni che non si possono descrivere con "Mi piace" si esprimono facilmente con le reazioni.';
	@override String get letsTryReacting => 'Puoi aggiungere una Reazione cliccando il bottone "+" (più) della relativa Nota. Prova ad aggiungerne una a questa Nota di esempio!';
	@override String get reactToContinue => 'Aggiungere la Reazione ti consentirà di procedere col tutorial.';
	@override String get reactNotification => 'Quando qualcuno reagisce alle tue Note, ricevi una notifica in tempo reale.';
	@override String get reactDone => 'Annulla la tua Reazione premendo il bottone "ー" (meno)';
}

// Path: misskey.initialTutorial_.timeline_
class _TranslationsMisskeyInitialTutorialTimelineItIt extends TranslationsMisskeyInitialTutorialTimelineEnUs {
	_TranslationsMisskeyInitialTutorialTimelineItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Come funziona la Timeline';
	@override String get description1 => 'Misskey fornisce alcune Timeline (sequenze cronologiche di Note). Una di queste potrebbe essere stata disattivata dagli amministratori.';
	@override String get home => 'le Note provenienti dai profili che segui (Following).';
	@override String get local => 'tutte le Note pubblicate dai profili di questa istanza.';
	@override String get social => 'sia le Note della Timeline Home che quelle della Timeline Locale, insieme!';
	@override String get global => 'le Note da pubblicate da tutte le altre istanze federate con la nostra.';
	@override String get description2 => 'Nella parte superiore dello schermo, puoi scegliere una Timeline o l\'altra in qualsiasi momento.';
	@override String description3({required Object link}) => 'Ci sono anche sequenze temporali di elenchi, sequenze temporali di canali, ecc. Per ulteriori dettagli, consultare la ${link}.\nPuoi vedere anche Timeline delle liste di profili (se ne hai create), canali, ecc... Per i dettagli, c\'è la ${link}.';
}

// Path: misskey.initialTutorial_.postNote_
class _TranslationsMisskeyInitialTutorialPostNoteItIt extends TranslationsMisskeyInitialTutorialPostNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'La Nota e le sue impostazioni';
	@override String get description1 => 'Quando scrivi una Nota su Misskey, hai a disposizione varie opzioni. Il modulo di invio è simile a questo.';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteVisibilityItIt visibility_ = _TranslationsMisskeyInitialTutorialPostNoteVisibilityItIt._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwItIt cw_ = _TranslationsMisskeyInitialTutorialPostNoteCwItIt._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveItIt extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Come indicare che gli allegati sono espliciti?';
	@override String get description => 'Si fa quando è richiesto dal regolamento del server o quando non devono essere visibili immediatamente.';
	@override String get tryThisFile => 'Prova a rendere esplicite le immagini allegate a questo modulo!';
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteItIt exampleNote_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteItIt._(_root);
	@override String get method => 'Tocca il file, si aprirà il menu, scegli la voce "Segna come esplicito"';
	@override String get sensitiveSucceeded => 'Quando alleghi file, assicurati di indicare se è materiale esplicito in modo appropriato, decidi in base al regolamento dell\'istanza.';
	@override String get doItToContinue => 'Imposta l\'immagine come esplicita per procedere col tutorial.';
}

// Path: misskey.initialTutorial_.done_
class _TranslationsMisskeyInitialTutorialDoneItIt extends TranslationsMisskeyInitialTutorialDoneEnUs {
	_TranslationsMisskeyInitialTutorialDoneItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Il tutorial è finito! 🎉';
	@override String description({required Object link}) => 'Queste sono solamente alcune delle funzionalità principali di Misskey. Per ulteriori informazioni, ${link}.';
}

// Path: misskey.serverSettings_.userGeneratedContentsVisibilityForVisitor_
class _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorItIt extends TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorEnUs {
	_TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get all => 'Tutto pubblico';
	@override String get localOnly => 'Pubblica solo contenuti locali, mantieni privati ​​i contenuti remoti';
	@override String get none => 'Tutto privato';
}

// Path: misskey.achievements_.types_
class _TranslationsMisskeyAchievementsTypesItIt extends TranslationsMisskeyAchievementsTypesEnUs {
	_TranslationsMisskeyAchievementsTypesItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesNotes1ItIt notes1_ = _TranslationsMisskeyAchievementsTypesNotes1ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10ItIt notes10_ = _TranslationsMisskeyAchievementsTypesNotes10ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100ItIt notes100_ = _TranslationsMisskeyAchievementsTypesNotes100ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes500ItIt notes500_ = _TranslationsMisskeyAchievementsTypesNotes500ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes1000ItIt notes1000_ = _TranslationsMisskeyAchievementsTypesNotes1000ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes5000ItIt notes5000_ = _TranslationsMisskeyAchievementsTypesNotes5000ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10000ItIt notes10000_ = _TranslationsMisskeyAchievementsTypesNotes10000ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes20000ItIt notes20000_ = _TranslationsMisskeyAchievementsTypesNotes20000ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes30000ItIt notes30000_ = _TranslationsMisskeyAchievementsTypesNotes30000ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes40000ItIt notes40000_ = _TranslationsMisskeyAchievementsTypesNotes40000ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes50000ItIt notes50000_ = _TranslationsMisskeyAchievementsTypesNotes50000ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes60000ItIt notes60000_ = _TranslationsMisskeyAchievementsTypesNotes60000ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes70000ItIt notes70000_ = _TranslationsMisskeyAchievementsTypesNotes70000ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes80000ItIt notes80000_ = _TranslationsMisskeyAchievementsTypesNotes80000ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes90000ItIt notes90000_ = _TranslationsMisskeyAchievementsTypesNotes90000ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100000ItIt notes100000_ = _TranslationsMisskeyAchievementsTypesNotes100000ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin3ItIt login3_ = _TranslationsMisskeyAchievementsTypesLogin3ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin7ItIt login7_ = _TranslationsMisskeyAchievementsTypesLogin7ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin15ItIt login15_ = _TranslationsMisskeyAchievementsTypesLogin15ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin30ItIt login30_ = _TranslationsMisskeyAchievementsTypesLogin30ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin60ItIt login60_ = _TranslationsMisskeyAchievementsTypesLogin60ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin100ItIt login100_ = _TranslationsMisskeyAchievementsTypesLogin100ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin200ItIt login200_ = _TranslationsMisskeyAchievementsTypesLogin200ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin300ItIt login300_ = _TranslationsMisskeyAchievementsTypesLogin300ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin400ItIt login400_ = _TranslationsMisskeyAchievementsTypesLogin400ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin500ItIt login500_ = _TranslationsMisskeyAchievementsTypesLogin500ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin600ItIt login600_ = _TranslationsMisskeyAchievementsTypesLogin600ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin700ItIt login700_ = _TranslationsMisskeyAchievementsTypesLogin700ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin800ItIt login800_ = _TranslationsMisskeyAchievementsTypesLogin800ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin900ItIt login900_ = _TranslationsMisskeyAchievementsTypesLogin900ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin1000ItIt login1000_ = _TranslationsMisskeyAchievementsTypesLogin1000ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteClipped1ItIt noteClipped1_ = _TranslationsMisskeyAchievementsTypesNoteClipped1ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteFavorited1ItIt noteFavorited1_ = _TranslationsMisskeyAchievementsTypesNoteFavorited1ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMyNoteFavorited1ItIt myNoteFavorited1_ = _TranslationsMisskeyAchievementsTypesMyNoteFavorited1ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesProfileFilledItIt profileFilled_ = _TranslationsMisskeyAchievementsTypesProfileFilledItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMarkedAsCatItIt markedAsCat_ = _TranslationsMisskeyAchievementsTypesMarkedAsCatItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing1ItIt following1_ = _TranslationsMisskeyAchievementsTypesFollowing1ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing10ItIt following10_ = _TranslationsMisskeyAchievementsTypesFollowing10ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing50ItIt following50_ = _TranslationsMisskeyAchievementsTypesFollowing50ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing100ItIt following100_ = _TranslationsMisskeyAchievementsTypesFollowing100ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing300ItIt following300_ = _TranslationsMisskeyAchievementsTypesFollowing300ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1ItIt followers1_ = _TranslationsMisskeyAchievementsTypesFollowers1ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers10ItIt followers10_ = _TranslationsMisskeyAchievementsTypesFollowers10ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers50ItIt followers50_ = _TranslationsMisskeyAchievementsTypesFollowers50ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers100ItIt followers100_ = _TranslationsMisskeyAchievementsTypesFollowers100ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers300ItIt followers300_ = _TranslationsMisskeyAchievementsTypesFollowers300ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers500ItIt followers500_ = _TranslationsMisskeyAchievementsTypesFollowers500ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1000ItIt followers1000_ = _TranslationsMisskeyAchievementsTypesFollowers1000ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCollectAchievements30ItIt collectAchievements30_ = _TranslationsMisskeyAchievementsTypesCollectAchievements30ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewAchievements3minItIt viewAchievements3min_ = _TranslationsMisskeyAchievementsTypesViewAchievements3minItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesILoveMisskeyItIt iLoveMisskey_ = _TranslationsMisskeyAchievementsTypesILoveMisskeyItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFoundTreasureItIt foundTreasure_ = _TranslationsMisskeyAchievementsTypesFoundTreasureItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient30minItIt client30min_ = _TranslationsMisskeyAchievementsTypesClient30minItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient60minItIt client60min_ = _TranslationsMisskeyAchievementsTypesClient60minItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minItIt noteDeletedWithin1min_ = _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAtLateNightItIt postedAtLateNight_ = _TranslationsMisskeyAchievementsTypesPostedAtLateNightItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAt0min0secItIt postedAt0min0sec_ = _TranslationsMisskeyAchievementsTypesPostedAt0min0secItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSelfQuoteItIt selfQuote_ = _TranslationsMisskeyAchievementsTypesSelfQuoteItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesHtl20npmItIt htl20npm_ = _TranslationsMisskeyAchievementsTypesHtl20npmItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewInstanceChartItIt viewInstanceChart_ = _TranslationsMisskeyAchievementsTypesViewInstanceChartItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadItIt outputHelloWorldOnScratchpad_ = _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOpen3windowsItIt open3windows_ = _TranslationsMisskeyAchievementsTypesOpen3windowsItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceItIt driveFolderCircularReference_ = _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesReactWithoutReadItIt reactWithoutRead_ = _TranslationsMisskeyAchievementsTypesReactWithoutReadItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClickedClickHereItIt clickedClickHere_ = _TranslationsMisskeyAchievementsTypesClickedClickHereItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesJustPlainLuckyItIt justPlainLucky_ = _TranslationsMisskeyAchievementsTypesJustPlainLuckyItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSetNameToSyuiloItIt setNameToSyuilo_ = _TranslationsMisskeyAchievementsTypesSetNameToSyuiloItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1ItIt passedSinceAccountCreated1_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2ItIt passedSinceAccountCreated2_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3ItIt passedSinceAccountCreated3_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3ItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayItIt loggedInOnBirthday_ = _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayItIt loggedInOnNewYearsDay_ = _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCookieClickedItIt cookieClicked_ = _TranslationsMisskeyAchievementsTypesCookieClickedItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBrainDiverItIt brainDiver_ = _TranslationsMisskeyAchievementsTypesBrainDiverItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonItIt smashTestNotificationButton_ = _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesTutorialCompletedItIt tutorialCompleted_ = _TranslationsMisskeyAchievementsTypesTutorialCompletedItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadItIt bubbleGameExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadItIt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadItIt bubbleGameDoubleExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadItIt._(_root);
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityItIt extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get low => 'Bassa';
	@override String get middle => 'Medio';
	@override String get high => 'Alta';
}

// Path: misskey.role_.options_
class _TranslationsMisskeyRoleOptionsItIt extends TranslationsMisskeyRoleOptionsEnUs {
	_TranslationsMisskeyRoleOptionsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'Disponibilità della Timeline Federata';
	@override String get ltlAvailable => 'Disponibilità della Timeline Locale';
	@override String get canPublicNote => 'Scrivere Note con Visibilità Pubblica';
	@override String get mentionMax => 'Numero massimo di menzioni in una nota';
	@override String get canInvite => 'Generare codici di invito all\'istanza';
	@override String get inviteLimit => 'Limite di codici invito';
	@override String get inviteLimitCycle => 'Intervallo di emissione del codice di invito';
	@override String get inviteExpirationTime => 'Scadenza del codice di invito';
	@override String get canManageCustomEmojis => 'Gestire le emoji personalizzate';
	@override String get canManageAvatarDecorations => 'Gestisce le decorazioni di immagini del profilo';
	@override String get driveCapacity => 'Capienza del Drive';
	@override String get maxFileSize => 'Dimensione massima del file caricabile';
	@override String get alwaysMarkNsfw => 'Impostare sempre come esplicito (NSFW)';
	@override String get canUpdateBioMedia => 'Può aggiornare foto profilo e di testata';
	@override String get pinMax => 'Quantità massima di Note in primo piano';
	@override String get antennaMax => 'Quantità massima di Antenne';
	@override String get wordMuteMax => 'Lunghezza massima del filtro parole';
	@override String get webhookMax => 'Quantità massima di Webhook';
	@override String get clipMax => 'Quantità massima di Clip';
	@override String get noteEachClipsMax => 'Quantità massima di Note nella Clip';
	@override String get userListMax => 'Quantità massima di liste';
	@override String get userEachUserListsMax => 'Quantità massima di profili per lista';
	@override String get rateLimitFactor => 'Limite del rapporto';
	@override String get descriptionOfRateLimitFactor => 'I rapporti più bassi sono meno restrittivi, quelli più alti lo sono di più.';
	@override String get canHideAds => 'Nascondere i banner';
	@override String get canSearchNotes => 'Ricercare nelle Note';
	@override String get canUseTranslator => 'Tradurre le Note';
	@override String get avatarDecorationLimit => 'Numero massimo di decorazioni foto profilo installabili';
	@override String get canImportAntennas => 'Può importare Antenne';
	@override String get canImportBlocking => 'Può importare Blocchi';
	@override String get canImportFollowing => 'Può importare Following';
	@override String get canImportMuting => 'Può importare Silenziati';
	@override String get canImportUserLists => 'Può importare liste di Profili';
	@override String get chatAvailability => 'Chat consentita';
	@override String get uploadableFileTypes => 'Tipi di file caricabili';
	@override String get uploadableFileTypes_caption => 'Specifica il tipo MIME. Puoi specificare più valori separandoli andando a capo, oppure indicare caratteri jolly con un asterisco (*). Ad esempio: image/*';
	@override String uploadableFileTypes_caption2({required Object x}) => 'A seconda del file, il tipo potrebbe non essere determinato. Se si desidera consentire tali file, aggiungere ${x} alla specifica.';
}

// Path: misskey.role_.condition_
class _TranslationsMisskeyRoleConditionItIt extends TranslationsMisskeyRoleConditionEnUs {
	_TranslationsMisskeyRoleConditionItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get roleAssignedTo => 'Assegnato a ruoli manualmente';
	@override String get isLocal => 'Profilo locale';
	@override String get isRemote => 'Profilo remoto';
	@override String get isCat => 'È un gattino';
	@override String get isBot => 'È un bot';
	@override String get isSuspended => 'È sospeso';
	@override String get isLocked => 'È in stato privato';
	@override String get isExplorable => 'Autorizza la pubblicazione nei cataloghi';
	@override String get createdLessThan => 'Profilo creato da meno di N';
	@override String get createdMoreThan => 'Profilo creato da più di N';
	@override String get followersLessThanOrEq => 'Profilo con N follower o meno';
	@override String get followersMoreThanOrEq => 'Profilo con N follower o più';
	@override String get followingLessThanOrEq => 'Segue N profili o meno';
	@override String get followingMoreThanOrEq => 'Segue N profili o più';
	@override String get notesLessThanOrEq => 'Conteggio Note inferiore o uguale a';
	@override String get notesMoreThanOrEq => 'Conteggio Note maggiore o uguale a';
	@override String get and => 'E';
	@override String get or => 'O';
	@override String get not => 'NON';
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowItIt extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Follower aggiuntivo';
}

// Path: misskey.email_.receiveFollowRequest_
class _TranslationsMisskeyEmailReceiveFollowRequestItIt extends TranslationsMisskeyEmailReceiveFollowRequestEnUs {
	_TranslationsMisskeyEmailReceiveFollowRequestItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hai ricevuto una richiesta di follow';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysItIt extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get accent => 'accento';
	@override String get bg => 'Sfondo';
	@override String get fg => 'Testo';
	@override String get focus => 'Focalizzazione';
	@override String get indicator => 'Indicatore';
	@override String get panel => 'Pannello';
	@override String get shadow => 'Ombra';
	@override String get header => 'Intestazione';
	@override String get navBg => 'Sfondo della barra laterale';
	@override String get navFg => 'Testo della barra laterale';
	@override String get navActive => 'Testo della barra laterale (attivo)';
	@override String get navIndicator => 'Indicatore di barra laterale';
	@override String get link => 'Link';
	@override String get hashtag => 'Hashtag';
	@override String get mention => 'Menzioni';
	@override String get mentionMe => 'Menzioni (di me)';
	@override String get renote => 'Renota';
	@override String get modalBg => 'Sfondo modale.';
	@override String get divider => 'Interruzione di linea';
	@override String get scrollbarHandle => 'Maniglie della barra di scorrimento';
	@override String get scrollbarHandleHover => 'Maniglia della barra di scorrimento (hover)';
	@override String get dateLabelFg => 'Testo dell\'etichetta della data';
	@override String get infoBg => 'Sfondo informazioni';
	@override String get infoFg => 'Testo di informazioni';
	@override String get infoWarnBg => 'Sfondo degli avvisi';
	@override String get infoWarnFg => 'Testo di avviso';
	@override String get toastBg => 'Sfondo di notifica a comparsa';
	@override String get toastFg => 'Testo di notifica a comparsa';
	@override String get buttonBg => 'Sfondo del pulsante';
	@override String get buttonHoverBg => 'Sfondo del pulsante (sorvolato)';
	@override String get inputBorder => 'Inquadra casella di testo';
	@override String get badge => 'Distintivo';
	@override String get messageBg => 'Sfondo della chat';
	@override String get fgHighlighted => 'Testo in evidenza.';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListItIt extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Seleziona una lista';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersItIt extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get a => 'Come va?';
	@override String get b => 'Hai qualcosa da raccontare? Inizia pure...';
	@override String get c => 'Stai pensando a qualcosa?';
	@override String get d => 'Vuoi dire qualcosa?';
	@override String get e => 'Puoi scrivere qui...';
	@override String get f => 'Inizia pure a scrivere...';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksItIt extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get text => 'Testo';
	@override String get textarea => 'Area di testo';
	@override String get section => 'Sezione';
	@override String get image => 'Immagini';
	@override String get button => 'Pulsante';
	@override String get dynamic => 'Riquadri dinamici';
	@override String dynamicDescription({required Object play}) => 'Questo riquadro è obsoleto. Utilizza ${play} da ora in poi.';
	@override String get note => 'Nota integrata';
	@override late final _TranslationsMisskeyPagesBlocksNoteItIt note_ = _TranslationsMisskeyPagesBlocksNoteItIt._(_root);
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesItIt extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get all => 'Tutto';
	@override String get note => 'Nuove Note';
	@override String get follow => 'Follower';
	@override String get mention => 'Menzioni';
	@override String get reply => 'Risposte';
	@override String get renote => 'Rinota';
	@override String get quote => 'Cita';
	@override String get reaction => 'Reazioni';
	@override String get pollEnded => 'Sondaggio chiuso.';
	@override String get receiveFollowRequest => 'Richieste di follow in arrivo';
	@override String get followRequestAccepted => 'Richieste di follow accettate';
	@override String get roleAssigned => 'Ruolo concesso';
	@override String get chatRoomInvitationReceived => 'Invito in una stanza di chat';
	@override String get achievementEarned => 'Risultato raggiunto';
	@override String get exportCompleted => 'Esportazione completata';
	@override String get login => 'Accessi';
	@override String get createToken => 'Creare un token di accesso';
	@override String get test => 'Notifiche di test';
	@override String get app => 'Notifiche da applicazioni';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsItIt extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'Following ricambiato';
	@override String get reply => 'Rispondi';
	@override String get renote => 'Rinota';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsItIt extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get main => 'Principale';
	@override String get widgets => 'Riquadri';
	@override String get notifications => 'Notifiche';
	@override String get tl => 'Timeline';
	@override String get antenna => 'Antenne';
	@override String get list => 'Liste';
	@override String get channel => 'Canali';
	@override String get mentions => 'Menzioni';
	@override String get direct => 'Note Dirette';
	@override String get roleTimeline => 'Timeline Ruolo';
	@override String get chat => 'Chat';
}

// Path: misskey.webhookSettings_.events_
class _TranslationsMisskeyWebhookSettingsEventsItIt extends TranslationsMisskeyWebhookSettingsEventsEnUs {
	_TranslationsMisskeyWebhookSettingsEventsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Quando aggiungi Following';
	@override String get followed => 'Quando ti segue un profilo';
	@override String get note => 'Quando pubblichi una Nota';
	@override String get reply => 'Quando rispondono ad una Nota';
	@override String get renote => 'Quando la Nota è Rinotata';
	@override String get reaction => 'Quando ricevo una reazione';
	@override String get mention => 'Quando mi menzionano';
}

// Path: misskey.webhookSettings_.systemEvents_
class _TranslationsMisskeyWebhookSettingsSystemEventsItIt extends TranslationsMisskeyWebhookSettingsSystemEventsEnUs {
	_TranslationsMisskeyWebhookSettingsSystemEventsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get abuseReport => 'Quando arriva una segnalazione';
	@override String get abuseReportResolved => 'Quando una segnalazione è risolta';
	@override String get userCreated => 'Quando viene creato un profilo';
	@override String get inactiveModeratorsWarning => 'Quando un profilo moderatore rimane inattivo per un determinato periodo';
	@override String get inactiveModeratorsInvitationOnlyChanged => 'Quando la moderazione è rimasta inattiva per un determinato periodo e il sistema è cambiato in modalità "solo inviti"';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientItIt extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get createRecipient => 'Aggiungi destinatario della segnalazione';
	@override String get modifyRecipient => 'Modifica destinatario della segnalazione';
	@override String get recipientType => 'Tipo di notifica';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeItIt recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeItIt._(_root);
	@override String get keywords => 'Parole chiave';
	@override String get notifiedUser => 'Profili da notificare';
	@override String get notifiedWebhook => 'Webhook da usare';
	@override String get deleteConfirm => 'Vuoi davvero rimuovere il destinatario della notifica?';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _TranslationsMisskeyExternalResourceInstallerPluginItIt extends TranslationsMisskeyExternalResourceInstallerPluginEnUs {
	_TranslationsMisskeyExternalResourceInstallerPluginItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vuoi davvero installare questo componente aggiuntivo?';
}

// Path: misskey.externalResourceInstaller_.theme_
class _TranslationsMisskeyExternalResourceInstallerThemeItIt extends TranslationsMisskeyExternalResourceInstallerThemeEnUs {
	_TranslationsMisskeyExternalResourceInstallerThemeItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vuoi davvero installare questa variazione grafica?';
}

// Path: misskey.externalResourceInstaller_.meta_
class _TranslationsMisskeyExternalResourceInstallerMetaItIt extends TranslationsMisskeyExternalResourceInstallerMetaEnUs {
	_TranslationsMisskeyExternalResourceInstallerMetaItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get base => 'Combinazione base di colori';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _TranslationsMisskeyExternalResourceInstallerVendorInfoItIt extends TranslationsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_TranslationsMisskeyExternalResourceInstallerVendorInfoItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informazioni sulla fonte';
	@override String get endpoint => 'Punto di riferimento della fonte';
	@override String get hashVerify => 'Codice di verifica della fonte';
}

// Path: misskey.externalResourceInstaller_.errors_
class _TranslationsMisskeyExternalResourceInstallerErrorsItIt extends TranslationsMisskeyExternalResourceInstallerErrorsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsItIt invalidParams_ = _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsItIt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedItIt resourceTypeNotSupported_ = _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedItIt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchItIt failedToFetch_ = _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchItIt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedItIt hashUnmatched_ = _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedItIt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedItIt pluginParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedItIt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedItIt pluginInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedItIt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedItIt themeParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedItIt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedItIt themeInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedItIt._(_root);
}

// Path: misskey.dataSaver_.media_
class _TranslationsMisskeyDataSaverMediaItIt extends TranslationsMisskeyDataSaverMediaEnUs {
	_TranslationsMisskeyDataSaverMediaItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Caricamento dei media';
	@override String get description => 'Impedire il caricamento automatico di immagini e video. Devi toccare le immagini o i video nascosti per caricarli.';
}

// Path: misskey.dataSaver_.avatar_
class _TranslationsMisskeyDataSaverAvatarItIt extends TranslationsMisskeyDataSaverAvatarEnUs {
	_TranslationsMisskeyDataSaverAvatarItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Immagine del profilo';
	@override String get description => 'Impedire l\'animazione per l\'immagine del profilo. Le immagini animate possono avere dimensioni file maggiori rispetto a quelle normali, puoi ridurre ulteriormente l\'utilizzo dei dati.';
}

// Path: misskey.dataSaver_.urlPreviewThumbnail_
class _TranslationsMisskeyDataSaverUrlPreviewThumbnailItIt extends TranslationsMisskeyDataSaverUrlPreviewThumbnailEnUs {
	_TranslationsMisskeyDataSaverUrlPreviewThumbnailItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nascondi le miniature nell\'anteprima URL';
	@override String get description => 'Le immagini in miniatura nell\'anteprima URL non verranno più caricate.';
}

// Path: misskey.dataSaver_.disableUrlPreview_
class _TranslationsMisskeyDataSaverDisableUrlPreviewItIt extends TranslationsMisskeyDataSaverDisableUrlPreviewEnUs {
	_TranslationsMisskeyDataSaverDisableUrlPreviewItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Disabilita l\'anteprima URL';
	@override String get description => 'Disabilita la funzione di anteprima URL. A differenza di una semplice immagine in miniatura, questo riduce il tempo necessario per caricare le informazioni collegate.';
}

// Path: misskey.dataSaver_.code_
class _TranslationsMisskeyDataSaverCodeItIt extends TranslationsMisskeyDataSaverCodeEnUs {
	_TranslationsMisskeyDataSaverCodeItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Codice evidenziato';
	@override String get description => 'Impedire che il codice sorgente sia automaticamente evidenziato. Evidenziare il codice richiede il caricamento di un file per ogni linguaggio. Puoi evidenziare soltanto il codice che intendi leggere e ridurre il traffico inutilizzato.';
}

// Path: misskey.gridComponent_.error_
class _TranslationsMisskeyGridComponentErrorItIt extends TranslationsMisskeyGridComponentErrorEnUs {
	_TranslationsMisskeyGridComponentErrorItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get requiredValue => 'Campo obbligatorio';
	@override String get columnTypeNotSupport => 'Solo le colonne type:text permettono la convalida delle Espresioni Regolari';
	@override String patternNotMatch({required Object pattern}) => 'Il valore non coincide con ${pattern}';
	@override String get notUnique => 'Il valore deve essere univoco';
}

// Path: misskey.customEmojisManager_.gridCommon_
class _TranslationsMisskeyCustomEmojisManagerGridCommonItIt extends TranslationsMisskeyCustomEmojisManagerGridCommonEnUs {
	_TranslationsMisskeyCustomEmojisManagerGridCommonItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get copySelectionRows => 'Copia le righe selezionate';
	@override String get copySelectionRanges => 'Copia l\'intervallo selezionato';
	@override String get deleteSelectionRows => 'Elimina le righe selezionate';
	@override String get deleteSelectionRanges => 'Elimina le righe nell\'intervallo selezionato';
	@override String get searchSettings => 'Impostazioni di ricerca';
	@override String get searchSettingCaption => 'Imposta condizioni di ricerca dettagliate.';
	@override String get searchLimit => 'Risultati visualizzati';
	@override String get sortOrder => 'Ordine';
	@override String get registrationLogs => 'Storico della registrazione';
	@override String get registrationLogsCaption => 'Lo storico verrà visualizzato in base alla attività sulle emoji. Scompare quando si esegue un\'operazione di aggiornamento/eliminazione o si modifica/ricarica la pagina.';
	@override String get alertEmojisRegisterFailedDescription => 'Attenzione, è impossibile modificare la emoji. Si prega di controllare lo storico per ulteriori dettagli.';
}

// Path: misskey.customEmojisManager_.logs_
class _TranslationsMisskeyCustomEmojisManagerLogsItIt extends TranslationsMisskeyCustomEmojisManagerLogsEnUs {
	_TranslationsMisskeyCustomEmojisManagerLogsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get showSuccessLogSwitch => 'Mostra le azioni a buon fine';
	@override String get failureLogNothing => 'Non ci sono errori nello storico delle emoji';
	@override String get logNothing => 'Lo storico è vuoto.';
}

// Path: misskey.customEmojisManager_.remote_
class _TranslationsMisskeyCustomEmojisManagerRemoteItIt extends TranslationsMisskeyCustomEmojisManagerRemoteEnUs {
	_TranslationsMisskeyCustomEmojisManagerRemoteItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get selectionRowDetail => 'Dettagli della riga selezionata';
	@override String get importSelectionRows => 'Importa le righe selezionate';
	@override String get importSelectionRangesRows => 'Importa le righe nell\'intervallo selezionato';
	@override String get importEmojisButton => 'Importa le emoji selezionate';
	@override String get confirmImportEmojisTitle => 'Importazione emoji';
	@override String confirmImportEmojisDescription({required Object count}) => 'Importazione di ${count} emoji ricevute da remoto. Si prega di prestare molta attenzione al tipo di licenza delle emoji. Vuoi confermare?';
}

// Path: misskey.customEmojisManager_.local_
class _TranslationsMisskeyCustomEmojisManagerLocalItIt extends TranslationsMisskeyCustomEmojisManagerLocalEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get tabTitleList => 'Elenco delle emoji registrate';
	@override String get tabTitleRegister => 'Registrazione emoji';
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalListItIt list_ = _TranslationsMisskeyCustomEmojisManagerLocalListItIt._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalRegisterItIt register_ = _TranslationsMisskeyCustomEmojisManagerLocalRegisterItIt._(_root);
}

// Path: misskey.remoteLookupErrors_.federationNotAllowed_
class _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedItIt extends TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Server irraggiungibile';
	@override String get description => 'La comunicazione con questo server potrebbe essere disattivata. Hai bloccato il server? Oppure potrebbero averlo bloccato gli amministratori. Contattali per ulteriori informazioni.';
}

// Path: misskey.remoteLookupErrors_.uriInvalid_
class _TranslationsMisskeyRemoteLookupErrorsUriInvalidItIt extends TranslationsMisskeyRemoteLookupErrorsUriInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsUriInvalidItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL non valido';
	@override String get description => 'Controlla che l\'indirizzo sia valido e sia privo di caratteri non validi.';
}

// Path: misskey.remoteLookupErrors_.requestFailed_
class _TranslationsMisskeyRemoteLookupErrorsRequestFailedItIt extends TranslationsMisskeyRemoteLookupErrorsRequestFailedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsRequestFailedItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Richiesta fallita';
	@override String get description => 'La comunicazione col server non è riuscita. Potrebbe essere inattivo. Assicurati anche che la URL sia valida.';
}

// Path: misskey.remoteLookupErrors_.responseInvalid_
class _TranslationsMisskeyRemoteLookupErrorsResponseInvalidItIt extends TranslationsMisskeyRemoteLookupErrorsResponseInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsResponseInvalidItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Risposta non valida';
	@override String get description => 'La comunicazione col server è andata a buon fine, ma abbiamo ricevuto dati non validi.';
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectItIt extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Non trovato';
	@override String get description => 'La risorsa richiesta non è stata trovata. Verificare nuovamente la URL.';
}

// Path: misskey.captcha_.error_
class _TranslationsMisskeyCaptchaErrorItIt extends TranslationsMisskeyCaptchaErrorEnUs {
	_TranslationsMisskeyCaptchaErrorItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCaptchaErrorRequestFailedItIt requestFailed_ = _TranslationsMisskeyCaptchaErrorRequestFailedItIt._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorVerificationFailedItIt verificationFailed_ = _TranslationsMisskeyCaptchaErrorVerificationFailedItIt._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorUnknownItIt unknown_ = _TranslationsMisskeyCaptchaErrorUnknownItIt._(_root);
}

// Path: misskey.serverSetupWizard_.use_
class _TranslationsMisskeyServerSetupWizardUseItIt extends TranslationsMisskeyServerSetupWizardUseEnUs {
	_TranslationsMisskeyServerSetupWizardUseItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get single => 'Modalità utenza singola';
	@override String get single_description => 'Se intendi usarlo come tuo server personale';
	@override String get single_youCanCreateMultipleAccounts => 'Anche se lo utilizzi come server per una sola persona, puoi creare più account in base alle tue esigenze.';
	@override String get group => 'Modalità multi utentza';
	@override String get group_description => 'Invita altre persone fidate ad usare il server insieme a te';
	@override String get open => 'Server aperto';
	@override String get open_description => 'Per ospitare un numero imprecisato di persone';
}

// Path: misskey.serverSetupWizard_.scale_
class _TranslationsMisskeyServerSetupWizardScaleItIt extends TranslationsMisskeyServerSetupWizardScaleEnUs {
	_TranslationsMisskeyServerSetupWizardScaleItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get small => '100 persone o meno (piccolo)';
	@override String get medium => 'Da 100 a 1000 persone (medio)';
	@override String get large => 'Oltre 1000 persone (grande)';
}

// Path: misskey.serverSetupWizard_.donationRequest_
class _TranslationsMisskeyServerSetupWizardDonationRequestItIt extends TranslationsMisskeyServerSetupWizardDonationRequestEnUs {
	_TranslationsMisskeyServerSetupWizardDonationRequestItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Misskey è un software libero sviluppato da volontari.';
	@override String get text2 => 'Se puoi, ti preghiamo di prendere in considerazione l\'idea di fare una donazione, così potremo continuare a sviluppare.';
	@override String get text3 => 'Sono previsti anche dei vantaggi speciali per i sostenitori!';
}

// Path: misskey.imageEffector_.fxs_
class _TranslationsMisskeyImageEffectorFxsItIt extends TranslationsMisskeyImageEffectorFxsEnUs {
	_TranslationsMisskeyImageEffectorFxsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get chromaticAberration => 'Aberrazione cromatica';
	@override String get glitch => 'Glitch';
	@override String get mirror => 'Specchio';
	@override String get invert => 'Inversione colore';
	@override String get grayscale => 'Bianco e nero';
	@override String get colorAdjust => 'Correzione Colore';
	@override String get colorClamp => 'Compressione del colore';
	@override String get colorClampAdvanced => 'Compressione del colore (avanzata)';
	@override String get distort => 'Distorsione';
	@override String get threshold => 'Soglia';
	@override String get zoomLines => 'Linea di saturazione';
	@override String get stripe => 'Strisce';
	@override String get polkadot => 'A pallini';
	@override String get checker => 'revisore';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _TranslationsMisskeyInitialTutorialPostNoteVisibilityItIt extends TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteVisibilityItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get description => 'Puoi limitare chi può vedere la tua Nota.';
	@override String get public => 'Visibile a tutti.';
	@override String get home => 'Pubblicato solo sulla Timeline Home (personale). Visibile anche da profili remoti follower, visitatori del tuo profilo e tramite i Rinota dei follower.';
	@override String get followers => 'Visibile solo ai profili tuoi follower (locali o remoti). Nessun altro oltre a te può "Rinotare".';
	@override String get direct => 'Visibile solo ai profili specificati, i quali riceveranno una notifica. Puoi usarlo come se fossero messaggi diretti.';
	@override String get doNotSendConfidencialOnDirect1 => 'Attenzione, quando si inviano informazioni confidenziali.';
	@override String get doNotSendConfidencialOnDirect2 => 'Poiché le Note non sono crittografate, l\'amministratore del server di destinazione potrebbe leggere cosa è stato scritto, quindi se spedisci una Nota diretta a un profilo che risiede su un server non attendibile, evita di scrivere informazioni riservate.';
	@override String get localOnly => 'Indipendentemente dalla visualizzazione sopra indicata, i profili su altri server non saranno in grado di visualizzare la Nota, se questa impostazione è attivata. Non non verrà comunicata ad altri server.';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _TranslationsMisskeyInitialTutorialPostNoteCwItIt extends TranslationsMisskeyInitialTutorialPostNoteCwEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nascondere il contenuto esplicito';
	@override String get description => 'Verrà visualizzato il testo scritto nel campo "Annotazione preventiva" al posto del testo principale della Nota. Premere il bottone "Continua la lettura" se si intende davvero leggere il testo.';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteItIt exampleNote_ = _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteItIt._(_root);
	@override String get useCases => 'Utilizzalo per chiarire il contenuto della Nota, prima che sia letta. Come richiesto dal regolamento del server o per autoregolamentare spoiler e testi troppo espliciti.';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteItIt extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get note => 'AAA! Ho rotto il coperchio del natto... (fagioli di soia fermentati)';
}

// Path: misskey.achievements_.types_.notes1_
class _TranslationsMisskeyAchievementsTypesNotes1ItIt extends TranslationsMisskeyAchievementsTypesNotes1EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hai iniziato a usare Misskey';
	@override String get description => 'Hai pubblicato la prima Nota';
	@override String get flavor => 'Goditi la vita su Misskey!';
}

// Path: misskey.achievements_.types_.notes10_
class _TranslationsMisskeyAchievementsTypesNotes10ItIt extends TranslationsMisskeyAchievementsTypesNotes10EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Alcune Note';
	@override String get description => 'Hai inserito 10 Note';
}

// Path: misskey.achievements_.types_.notes100_
class _TranslationsMisskeyAchievementsTypesNotes100ItIt extends TranslationsMisskeyAchievementsTypesNotes100EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un po\' di Note';
	@override String get description => 'Hai inserito 100 Note';
}

// Path: misskey.achievements_.types_.notes500_
class _TranslationsMisskeyAchievementsTypesNotes500ItIt extends TranslationsMisskeyAchievementsTypesNotes500EnUs {
	_TranslationsMisskeyAchievementsTypesNotes500ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un bel po\' di Note';
	@override String get description => 'Hai inserito 500 Note';
}

// Path: misskey.achievements_.types_.notes1000_
class _TranslationsMisskeyAchievementsTypesNotes1000ItIt extends TranslationsMisskeyAchievementsTypesNotes1000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1000ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Una montagna di Note';
	@override String get description => 'Hai inserito 1.000 Note';
}

// Path: misskey.achievements_.types_.notes5000_
class _TranslationsMisskeyAchievementsTypesNotes5000ItIt extends TranslationsMisskeyAchievementsTypesNotes5000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes5000ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un sovraccarico di Note!';
	@override String get description => 'Hai inserito 5.000 Note';
}

// Path: misskey.achievements_.types_.notes10000_
class _TranslationsMisskeyAchievementsTypesNotes10000ItIt extends TranslationsMisskeyAchievementsTypesNotes10000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10000ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'SuperNote!';
	@override String get description => 'Hai inserito 10.000 Note';
}

// Path: misskey.achievements_.types_.notes20000_
class _TranslationsMisskeyAchievementsTypesNotes20000ItIt extends TranslationsMisskeyAchievementsTypesNotes20000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes20000ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Voglio più... Note!';
	@override String get description => 'Hai inserito 20.000 Note';
}

// Path: misskey.achievements_.types_.notes30000_
class _TranslationsMisskeyAchievementsTypesNotes30000ItIt extends TranslationsMisskeyAchievementsTypesNotes30000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes30000ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Note, Note, Note!';
	@override String get description => 'Hai inserito 30.000 Note';
}

// Path: misskey.achievements_.types_.notes40000_
class _TranslationsMisskeyAchievementsTypesNotes40000ItIt extends TranslationsMisskeyAchievementsTypesNotes40000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes40000ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Una fabbrica di Note';
	@override String get description => 'Hai inserito 40.000 Note';
}

// Path: misskey.achievements_.types_.notes50000_
class _TranslationsMisskeyAchievementsTypesNotes50000ItIt extends TranslationsMisskeyAchievementsTypesNotes50000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes50000ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un pianeta di Note';
	@override String get description => 'Hai inserito 50.000 Note';
}

// Path: misskey.achievements_.types_.notes60000_
class _TranslationsMisskeyAchievementsTypesNotes60000ItIt extends TranslationsMisskeyAchievementsTypesNotes60000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes60000ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un quasar di Note';
	@override String get description => 'Hai inserito 60.000 Note';
}

// Path: misskey.achievements_.types_.notes70000_
class _TranslationsMisskeyAchievementsTypesNotes70000ItIt extends TranslationsMisskeyAchievementsTypesNotes70000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes70000ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un buco nero supermassiccio di Note';
	@override String get description => 'Hai inserito 70.000 Note';
}

// Path: misskey.achievements_.types_.notes80000_
class _TranslationsMisskeyAchievementsTypesNotes80000ItIt extends TranslationsMisskeyAchievementsTypesNotes80000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes80000ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Una galassia di Note';
	@override String get description => 'Hai inserito 80.000 Note';
}

// Path: misskey.achievements_.types_.notes90000_
class _TranslationsMisskeyAchievementsTypesNotes90000ItIt extends TranslationsMisskeyAchievementsTypesNotes90000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes90000ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un universo di Note!';
	@override String get description => 'Hai inserito 90.000 Note';
}

// Path: misskey.achievements_.types_.notes100000_
class _TranslationsMisskeyAchievementsTypesNotes100000ItIt extends TranslationsMisskeyAchievementsTypesNotes100000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100000ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => 'Hai inserito 100.000 Note';
	@override String get flavor => 'Hai molto da scrivere?';
}

// Path: misskey.achievements_.types_.login3_
class _TranslationsMisskeyAchievementsTypesLogin3ItIt extends TranslationsMisskeyAchievementsTypesLogin3EnUs {
	_TranslationsMisskeyAchievementsTypesLogin3ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiante I';
	@override String get description => 'Hai totalizzato 3 accessi!';
	@override String get flavor => 'Da oggi, chiamatemi Misskist';
}

// Path: misskey.achievements_.types_.login7_
class _TranslationsMisskeyAchievementsTypesLogin7ItIt extends TranslationsMisskeyAchievementsTypesLogin7EnUs {
	_TranslationsMisskeyAchievementsTypesLogin7ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiante II';
	@override String get description => 'Hai totalizzato 7 accessi!';
	@override String get flavor => 'Ti sembra di avere la situazione sotto controllo?';
}

// Path: misskey.achievements_.types_.login15_
class _TranslationsMisskeyAchievementsTypesLogin15ItIt extends TranslationsMisskeyAchievementsTypesLogin15EnUs {
	_TranslationsMisskeyAchievementsTypesLogin15ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiante III';
	@override String get description => 'Hai totalizzato 15 accessi!';
}

// Path: misskey.achievements_.types_.login30_
class _TranslationsMisskeyAchievementsTypesLogin30ItIt extends TranslationsMisskeyAchievementsTypesLogin30EnUs {
	_TranslationsMisskeyAchievementsTypesLogin30ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Missalcolista I';
	@override String get description => 'Hai totalizzato 30 accessi!';
}

// Path: misskey.achievements_.types_.login60_
class _TranslationsMisskeyAchievementsTypesLogin60ItIt extends TranslationsMisskeyAchievementsTypesLogin60EnUs {
	_TranslationsMisskeyAchievementsTypesLogin60ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Missalcolista II';
	@override String get description => 'Hai totalizzato 60 accessi!';
}

// Path: misskey.achievements_.types_.login100_
class _TranslationsMisskeyAchievementsTypesLogin100ItIt extends TranslationsMisskeyAchievementsTypesLogin100EnUs {
	_TranslationsMisskeyAchievementsTypesLogin100ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Missalcolista III';
	@override String get description => 'Hai totalizzato 100 accessi!';
	@override String get flavor => 'Violent Misskeist';
}

// Path: misskey.achievements_.types_.login200_
class _TranslationsMisskeyAchievementsTypesLogin200ItIt extends TranslationsMisskeyAchievementsTypesLogin200EnUs {
	_TranslationsMisskeyAchievementsTypesLogin200ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regolare I livello';
	@override String get description => 'Hai totalizzato 200 accessi!';
}

// Path: misskey.achievements_.types_.login300_
class _TranslationsMisskeyAchievementsTypesLogin300ItIt extends TranslationsMisskeyAchievementsTypesLogin300EnUs {
	_TranslationsMisskeyAchievementsTypesLogin300ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regolare II livello';
	@override String get description => 'Hai totalizzato 300 accessi!';
}

// Path: misskey.achievements_.types_.login400_
class _TranslationsMisskeyAchievementsTypesLogin400ItIt extends TranslationsMisskeyAchievementsTypesLogin400EnUs {
	_TranslationsMisskeyAchievementsTypesLogin400ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regolare III livello';
	@override String get description => 'Hai totalizzato 400 accessi!';
}

// Path: misskey.achievements_.types_.login500_
class _TranslationsMisskeyAchievementsTypesLogin500ItIt extends TranslationsMisskeyAchievementsTypesLogin500EnUs {
	_TranslationsMisskeyAchievementsTypesLogin500ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionista I livello';
	@override String get description => 'Hai totalizzato 500 accessi!';
	@override String get flavor => 'Amici cari, mi piacciono le Note';
}

// Path: misskey.achievements_.types_.login600_
class _TranslationsMisskeyAchievementsTypesLogin600ItIt extends TranslationsMisskeyAchievementsTypesLogin600EnUs {
	_TranslationsMisskeyAchievementsTypesLogin600ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionista II livello';
	@override String get description => 'Hai totalizzato 600 accessi!';
}

// Path: misskey.achievements_.types_.login700_
class _TranslationsMisskeyAchievementsTypesLogin700ItIt extends TranslationsMisskeyAchievementsTypesLogin700EnUs {
	_TranslationsMisskeyAchievementsTypesLogin700ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionista III livello';
	@override String get description => 'Hai totalizzato 700 accessi!';
}

// Path: misskey.achievements_.types_.login800_
class _TranslationsMisskeyAchievementsTypesLogin800ItIt extends TranslationsMisskeyAchievementsTypesLogin800EnUs {
	_TranslationsMisskeyAchievementsTypesLogin800ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maestro di Note I livello';
	@override String get description => 'Hai totalizzato 800 accessi!';
}

// Path: misskey.achievements_.types_.login900_
class _TranslationsMisskeyAchievementsTypesLogin900ItIt extends TranslationsMisskeyAchievementsTypesLogin900EnUs {
	_TranslationsMisskeyAchievementsTypesLogin900ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maestro di Note II livello';
	@override String get description => 'Hai totalizzato 900 accessi!';
}

// Path: misskey.achievements_.types_.login1000_
class _TranslationsMisskeyAchievementsTypesLogin1000ItIt extends TranslationsMisskeyAchievementsTypesLogin1000EnUs {
	_TranslationsMisskeyAchievementsTypesLogin1000ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maestro di Note III livello';
	@override String get description => 'Hai totalizzato 1000 accessi!';
	@override String get flavor => 'Grazie per aver usato Misskey!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _TranslationsMisskeyAchievementsTypesNoteClipped1ItIt extends TranslationsMisskeyAchievementsTypesNoteClipped1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteClipped1ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Devo clippare!';
	@override String get description => 'Hai raccolto la tua prima Nota in una Clip';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _TranslationsMisskeyAchievementsTypesNoteFavorited1ItIt extends TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteFavorited1ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Guarda le stelle';
	@override String get description => 'Aggiungi una Nota ai preferiti per la prima volta';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _TranslationsMisskeyAchievementsTypesMyNoteFavorited1ItIt extends TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesMyNoteFavorited1ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fornitura stelline';
	@override String get description => 'Qualcuno ha preferito una delle tue Note';
}

// Path: misskey.achievements_.types_.profileFilled_
class _TranslationsMisskeyAchievementsTypesProfileFilledItIt extends TranslationsMisskeyAchievementsTypesProfileFilledEnUs {
	_TranslationsMisskeyAchievementsTypesProfileFilledItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preparazione perfetta!';
	@override String get description => 'Imposta il tuo profilo';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _TranslationsMisskeyAchievementsTypesMarkedAsCatItIt extends TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_TranslationsMisskeyAchievementsTypesMarkedAsCatItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Io sono un gatto';
	@override String get description => 'Aggiungi le orecchie da gatto al tuo profilo';
	@override String get flavor => 'Ti chiamerò...';
}

// Path: misskey.achievements_.types_.following1_
class _TranslationsMisskeyAchievementsTypesFollowing1ItIt extends TranslationsMisskeyAchievementsTypesFollowing1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing1ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Il mio primo Follow';
	@override String get description => 'Hai seguito il tuo primo profilo';
}

// Path: misskey.achievements_.types_.following10_
class _TranslationsMisskeyAchievementsTypesFollowing10ItIt extends TranslationsMisskeyAchievementsTypesFollowing10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing10ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Segui, segui!';
	@override String get description => 'Hai seguito 10 profili';
}

// Path: misskey.achievements_.types_.following50_
class _TranslationsMisskeyAchievementsTypesFollowing50ItIt extends TranslationsMisskeyAchievementsTypesFollowing50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing50ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tanti amici';
	@override String get description => 'Hai seguito 50 profili';
}

// Path: misskey.achievements_.types_.following100_
class _TranslationsMisskeyAchievementsTypesFollowing100ItIt extends TranslationsMisskeyAchievementsTypesFollowing100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing100ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cento amici';
	@override String get description => 'Hai seguito 100 profili';
}

// Path: misskey.achievements_.types_.following300_
class _TranslationsMisskeyAchievementsTypesFollowing300ItIt extends TranslationsMisskeyAchievementsTypesFollowing300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing300ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sovraccarico di amici';
	@override String get description => 'Hai seguito 300 profili';
}

// Path: misskey.achievements_.types_.followers1_
class _TranslationsMisskeyAchievementsTypesFollowers1ItIt extends TranslationsMisskeyAchievementsTypesFollowers1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Il primo profilo tuo Follower';
	@override String get description => 'Hai ottenuto il tuo primo profilo Follower';
}

// Path: misskey.achievements_.types_.followers10_
class _TranslationsMisskeyAchievementsTypesFollowers10ItIt extends TranslationsMisskeyAchievementsTypesFollowers10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers10ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Follow me!';
	@override String get description => 'Hai ottenuto 10 profili Follower';
}

// Path: misskey.achievements_.types_.followers50_
class _TranslationsMisskeyAchievementsTypesFollowers50ItIt extends TranslationsMisskeyAchievementsTypesFollowers50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers50ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un gregge di Follower';
	@override String get description => 'Hai ottenuto 50 Follower';
}

// Path: misskey.achievements_.types_.followers100_
class _TranslationsMisskeyAchievementsTypesFollowers100ItIt extends TranslationsMisskeyAchievementsTypesFollowers100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers100ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Popolare';
	@override String get description => 'Hai ottenuto 100 profili Follower';
}

// Path: misskey.achievements_.types_.followers300_
class _TranslationsMisskeyAchievementsTypesFollowers300ItIt extends TranslationsMisskeyAchievementsTypesFollowers300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers300ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mettetevi in fila';
	@override String get description => 'Hai ottenuto 300 Follower';
}

// Path: misskey.achievements_.types_.followers500_
class _TranslationsMisskeyAchievementsTypesFollowers500ItIt extends TranslationsMisskeyAchievementsTypesFollowers500EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers500ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trasmettitore';
	@override String get description => 'Hai ottenuto 500 Follower';
}

// Path: misskey.achievements_.types_.followers1000_
class _TranslationsMisskeyAchievementsTypesFollowers1000ItIt extends TranslationsMisskeyAchievementsTypesFollowers1000EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1000ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Influenzer';
	@override String get description => 'Hai superato i 1.000 profili Follower';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _TranslationsMisskeyAchievementsTypesCollectAchievements30ItIt extends TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_TranslationsMisskeyAchievementsTypesCollectAchievements30ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Collezionista di successi';
	@override String get description => 'Hai raggiunto 30 conquiste';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _TranslationsMisskeyAchievementsTypesViewAchievements3minItIt extends TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_TranslationsMisskeyAchievementsTypesViewAchievements3minItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mi piacciono i risultati';
	@override String get description => 'Ammira la tua collezione di conquiste per almeno 3 minuti';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _TranslationsMisskeyAchievementsTypesILoveMisskeyItIt extends TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_TranslationsMisskeyAchievementsTypesILoveMisskeyItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'I LOVE Misskey';
	@override String get description => 'Pubblica «I ♥ #Misskey»';
	@override String get flavor => 'Grazie per aver utilizzato Misskey! Dal team di sviluppo';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _TranslationsMisskeyAchievementsTypesFoundTreasureItIt extends TranslationsMisskeyAchievementsTypesFoundTreasureEnUs {
	_TranslationsMisskeyAchievementsTypesFoundTreasureItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Caccia al tesoro';
	@override String get description => 'Hai trovato un tesoro nascosto';
}

// Path: misskey.achievements_.types_.client30min_
class _TranslationsMisskeyAchievementsTypesClient30minItIt extends TranslationsMisskeyAchievementsTypesClient30minEnUs {
	_TranslationsMisskeyAchievementsTypesClient30minItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Piccola grande pausa';
	@override String get description => 'Hai passato più di 30 minuti su Misskey';
}

// Path: misskey.achievements_.types_.client60min_
class _TranslationsMisskeyAchievementsTypesClient60minItIt extends TranslationsMisskeyAchievementsTypesClient60minEnUs {
	_TranslationsMisskeyAchievementsTypesClient60minItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskey negli occhi';
	@override String get description => 'Hai letto Misskey almeno per un\'ora';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minItIt extends TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ooops!';
	@override String get description => 'Hai eliminato una nota entro un minuto dalla sua pubblicazione';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _TranslationsMisskeyAchievementsTypesPostedAtLateNightItIt extends TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAtLateNightItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biassanot!';
	@override String get description => 'Hai pubblicato una nota in tarda notte';
	@override String get flavor => 'Andiamo a dormire presto';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _TranslationsMisskeyAchievementsTypesPostedAt0min0secItIt extends TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAt0min0secItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mezzanotte';
	@override String get description => 'Hai pubblicato una Nota a mezzanotte in punto';
	@override String get flavor => 'tic, tac, tic, tac! Gong!';
}

// Path: misskey.achievements_.types_.selfQuote_
class _TranslationsMisskeyAchievementsTypesSelfQuoteItIt extends TranslationsMisskeyAchievementsTypesSelfQuoteEnUs {
	_TranslationsMisskeyAchievementsTypesSelfQuoteItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Autoreferenziale';
	@override String get description => 'Hai citato una delle tue Note';
}

// Path: misskey.achievements_.types_.htl20npm_
class _TranslationsMisskeyAchievementsTypesHtl20npmItIt extends TranslationsMisskeyAchievementsTypesHtl20npmEnUs {
	_TranslationsMisskeyAchievementsTypesHtl20npmItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Timeline scorrevole';
	@override String get description => 'La tua Timeline personale ha superato la velocità di 20 Note orarie (Note al minuto)';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _TranslationsMisskeyAchievementsTypesViewInstanceChartItIt extends TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_TranslationsMisskeyAchievementsTypesViewInstanceChartItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analista';
	@override String get description => 'Visualizza i grafici dell\'istanza';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadItIt extends TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hello, world!';
	@override String get description => 'Hai scritto «Hello world» nel blocco appunti';
}

// Path: misskey.achievements_.types_.open3windows_
class _TranslationsMisskeyAchievementsTypesOpen3windowsItIt extends TranslationsMisskeyAchievementsTypesOpen3windowsEnUs {
	_TranslationsMisskeyAchievementsTypesOpen3windowsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apri le finestre!';
	@override String get description => 'Hai aperto almeno 3 finestre contemporaneamente';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceItIt extends TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Riferimento circolare';
	@override String get description => 'Hai provato a nidificare in modo ricorsivo le cartelle del Drive';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _TranslationsMisskeyAchievementsTypesReactWithoutReadItIt extends TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_TranslationsMisskeyAchievementsTypesReactWithoutReadItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hai letto bene?';
	@override String get description => 'Hai reagito ad una Nota più lunga di 100 caratteri entro 3 secondi dalla sua pubblicazione';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _TranslationsMisskeyAchievementsTypesClickedClickHereItIt extends TranslationsMisskeyAchievementsTypesClickedClickHereEnUs {
	_TranslationsMisskeyAchievementsTypesClickedClickHereItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Clicca qui';
	@override String get description => 'Hai cliccato qui';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _TranslationsMisskeyAchievementsTypesJustPlainLuckyItIt extends TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_TranslationsMisskeyAchievementsTypesJustPlainLuckyItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Proprio fortunato';
	@override String get description => 'Ottenuto con una probabilità dello 0,01% ogni 10 secondi';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _TranslationsMisskeyAchievementsTypesSetNameToSyuiloItIt extends TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_TranslationsMisskeyAchievementsTypesSetNameToSyuiloItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Complesso divino';
	@override String get description => 'Hai impostati il tuo nome in «syuilo»';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1ItIt extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Primo Anniversario';
	@override String get description => 'È passato un anno da quando hai creato il profilo';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2ItIt extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Secondo Anniversario';
	@override String get description => 'Sono passati due anni da quando hai creato il profilo';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3ItIt extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3ItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Terzo Anniversario';
	@override String get description => 'Sono passati tre anni da quando hai creato il profilo';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayItIt extends TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Buon compleanno!';
	@override String get description => 'Hai effettuato l\'accesso il giorno del tuo compleanno';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayItIt extends TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Buon anno nuovo!';
	@override String get description => 'Hai usato effettuato l\'accesso il giorno di capodanno';
	@override String get flavor => 'Anche quest\'anno, grazie per il tuo continuo supporto a questa istanza';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _TranslationsMisskeyAchievementsTypesCookieClickedItIt extends TranslationsMisskeyAchievementsTypesCookieClickedEnUs {
	_TranslationsMisskeyAchievementsTypesCookieClickedItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Clicca il biscotto';
	@override String get description => 'Hai giocato a cliccare il cookie';
	@override String get flavor => 'È il sito giusto?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _TranslationsMisskeyAchievementsTypesBrainDiverItIt extends TranslationsMisskeyAchievementsTypesBrainDiverEnUs {
	_TranslationsMisskeyAchievementsTypesBrainDiverItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Pubblica un link a Brain Diver';
	@override String get flavor => 'Sulle note di Brain Diver';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonItIt extends TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Prove eccessive';
	@override String get description => 'Hai provato le notifiche consecutivamente in un periodo di tempo molto breve';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _TranslationsMisskeyAchievementsTypesTutorialCompletedItIt extends TranslationsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_TranslationsMisskeyAchievementsTypesTutorialCompletedItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Attestato di partecipazione al corso per principianti di Misskey';
	@override String get description => 'Ha completato il tutorial';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadItIt extends TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => 'Estrai l\'oggetto più grande dal Bubble Game';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadItIt extends TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Doppio 🤯';
	@override String get description => 'Due oggetti più grossi contemporaneamente nel Bubble Game';
	@override String get flavor => 'Ha le dimensioni di una bento-box 🤯 🤯';
}

// Path: misskey.pages_.blocks.note_
class _TranslationsMisskeyPagesBlocksNoteItIt extends TranslationsMisskeyPagesBlocksNoteEnUs {
	_TranslationsMisskeyPagesBlocksNoteItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get id => 'ID nota';
	@override String get idDescription => 'Qui puoi anche incollare l\'URL della nota che vuoi impostare.';
	@override String get detailed => 'Visualizzazione dettagliata';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeItIt extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Email';
	@override String get webhook => 'Webhook';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsItIt captions_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsItIt._(_root);
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsItIt extends TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Parametri non validi';
	@override String get description => 'Mancano alcuni parametri per il caricamento, per favore, verifica la URL.';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedItIt extends TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Questa risorsa esterna non è supportata';
	@override String get description => 'Il tipo di risorsa ottenuta da questo sito esterno non è supportato. Si prega di contattare la fonte di distribuizone.';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchItIt extends TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Impossibile ottenere i dati';
	@override String get fetchErrorDescription => 'Si è verificato un errore di comunicazione con la fonte. Se riprovare di nuovo non aiuta, contattare la fonte di distribuzione.';
	@override String get parseErrorDescription => 'Si è verificato un errore elaborando i dati ottenuti dalla fonte. Per favore contattare il distributore.';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedItIt extends TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dati non verificabili, diversi da quelli della fonte';
	@override String get description => 'Si è verificato un errore durante la verifica di integrità dei dati ottenuti. Per sicurezza, l\'installazione è stata interrotta. Contattare la fonte di distribuzione.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedItIt extends TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Errore AiScript';
	@override String get description => 'Sebbene i dati ottenuti siano validi, non è stato possibile interpretarli, perché si è verificato un errore durante l\'analisi di AiScript. Si prega di contattare gli autori del componente aggiuntivo. Potresti controllare la console di Javascript per ottenere dettagli aggiuntivi.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedItIt extends TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Impossibile installare il componente aggiuntivo';
	@override String get description => 'Si è verificato un impedimento durante l\'installazione del componente aggiuntivo. Per favore riprova e consulta la console di Javascript per ottenere dettagli aggiuntivi.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedItIt extends TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Impossibile interpretare la variazione grafica';
	@override String get description => 'Sebbene i dati siano stati ottenuti, non è stato possibile interpretarli, si è verificato un errore durante l\'analisi della variazione grafica. Si prega di contattare gli autori. Potresti anche controllare la console di Javascript per ottenere dettagli aggiuntivi.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedItIt extends TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Impossibile installare la variazione grafica';
	@override String get description => 'Si è verificato un impedimento durante l\'installazione della variazione grafica. Per favore riprova e consulta la console di Javascript per ottenere dettagli aggiuntivi.';
}

// Path: misskey.customEmojisManager_.local_.list_
class _TranslationsMisskeyCustomEmojisManagerLocalListItIt extends TranslationsMisskeyCustomEmojisManagerLocalListEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalListItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get emojisNothing => 'Non ci sono emoji registrate.';
	@override String get markAsDeleteTargetRows => 'Selezionare le righe come eliminabili';
	@override String get markAsDeleteTargetRanges => 'Selezionare le righe nell\'intervallo come eliminabili';
	@override String get alertUpdateEmojisNothingDescription => 'Non ci sono emoji aggiornate.';
	@override String get alertDeleteEmojisNothingDescription => 'Non ci sono emoji da eliminare.';
	@override String get confirmMovePage => 'Vuoi davvero spostare la pagina?';
	@override String get confirmChangeView => 'Vuoi davvero cambiare la vista?';
	@override String confirmUpdateEmojisDescription({required Object count}) => 'Aggiornamento di ${count} emoji. Vuoi davvero continuare?';
	@override String confirmDeleteEmojisDescription({required Object count}) => 'Eliminazione delle ${count} emoji selezionate. Vuoi davvero continuare?';
	@override String get confirmResetDescription => 'Verranno ripristinate tutte le modifiche apportate finora.';
	@override String get confirmMovePageDesciption => 'Sono state modificate le emoji in questa pagina.\nUscendo senza salvare, tutte le modifiche verranno ignorate.';
	@override String get dialogSelectRoleTitle => 'Cerca emoji per ruolo';
}

// Path: misskey.customEmojisManager_.local_.register_
class _TranslationsMisskeyCustomEmojisManagerLocalRegisterItIt extends TranslationsMisskeyCustomEmojisManagerLocalRegisterEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalRegisterItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get uploadSettingTitle => 'Caricamento impostazioni';
	@override String get uploadSettingDescription => 'Questa schermata ti permette di scegliere il comportamento durante il caricamento delle emoji.';
	@override String get directoryToCategoryLabel => 'Inseriscile in una cartella omonima alla categoria';
	@override String get directoryToCategoryCaption => 'Crea il campo categoria in base alla cartella.';
	@override String confirmRegisterEmojisDescription({required Object count}) => 'Registrazione delle emoji elencate come nuove emoji personalizzate. Vuoi davvero procedere? (Per evitare sovraccarichi, puoi registrare al massimo ${count} emoji per volta)';
	@override String get confirmClearEmojisDescription => 'Annullare le modifiche e cancella le emoji nell\'elenco. Confermi?';
	@override String confirmUploadEmojisDescription({required Object count}) => 'Caricamento sul Drive di ${count} file locali. Vuoi davvero procedere?';
}

// Path: misskey.captcha_.error_.requestFailed_
class _TranslationsMisskeyCaptchaErrorRequestFailedItIt extends TranslationsMisskeyCaptchaErrorRequestFailedEnUs {
	_TranslationsMisskeyCaptchaErrorRequestFailedItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Errore durante la richiesta del CAPTCHA';
	@override String get text => 'Riprova più tardi o controlla nuovamente le impostazioni.';
}

// Path: misskey.captcha_.error_.verificationFailed_
class _TranslationsMisskeyCaptchaErrorVerificationFailedItIt extends TranslationsMisskeyCaptchaErrorVerificationFailedEnUs {
	_TranslationsMisskeyCaptchaErrorVerificationFailedItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Convalida CAPTCHA non riuscita';
	@override String get text => 'Si prega di verificare nuovamente se le impostazioni sono corrette.';
}

// Path: misskey.captcha_.error_.unknown_
class _TranslationsMisskeyCaptchaErrorUnknownItIt extends TranslationsMisskeyCaptchaErrorUnknownEnUs {
	_TranslationsMisskeyCaptchaErrorUnknownItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Errore CAPTCHA';
	@override String get text => 'Si è verificato un errore imprevisto.';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteItIt extends TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get cw => 'Attenzione: contiene zuccheri';
	@override String get note => 'Ho appena mangiato una ciambella ricoperta di cioccolato 🍩😋';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_.captions_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsItIt extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsItIt._(TranslationsItIt root) : this._root = root, super.internal(root);

	final TranslationsItIt _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Quando ricevi un abuso, notifica l\'amministrazione via email';
	@override String get webhook => 'Spedire una notifica al SystemWebhook specificato (sia quando si riceve una segnalazione, che quando viene risolta)';
}
