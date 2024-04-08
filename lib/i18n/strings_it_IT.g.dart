///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint

part of 'strings.g.dart';

// Path: <root>
class _StringsItIt extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsItIt.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.itIt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <it-IT>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	@override late final _StringsItIt _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAriaItIt aria = _StringsAriaItIt._(_root);
	@override late final _StringsMisskeyItIt misskey = _StringsMisskeyItIt._(_root);
}

// Path: aria
class _StringsAriaItIt extends _StringsAriaEnUs {
	_StringsAriaItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Vuoi seguire '),
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
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Rinotata da '),
		user,
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Vuoi davvero smettere di seguire '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Note da '),
		name,
		const TextSpan(text: ' con allegati espliciti'),
	]);
	@override TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Note da '),
		name,
		const TextSpan(text: ' con allegati espliciti'),
	]);
}

// Path: misskey
class _StringsMisskeyItIt extends _StringsMisskeyEnUs {
	_StringsMisskeyItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Italiano';
	@override String get headlineMisskey => 'Rete collegata tramite note';
	@override String get introMisskey => 'Eccoci! Misskey è un servizio di microblogging decentralizzato, libero e aperto. \n\n📡 Puoi pubblicare «Note» per condividere ciò che sta succedendo o per dire a tutti qualcosa su di te. \n\n👍 Puoi reagire inviando emoji rapidi alle «Note» provenienti da altri profili nel Fediverso.\n\n🚀 Esplora un nuovo mondo insieme a noi!';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} è uno dei servizi (chiamati istanze) che utilizzano la piattaforma open source <b>Misskey</b>.';
	@override String monthAndDay({required Object day, required Object month}) => '${day}/${month}';
	@override String get search => 'Cerca';
	@override String get notifications => 'Notifiche';
	@override String get username => 'Nome utente';
	@override String get password => 'Password';
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
	@override String get copyLinkRenote => 'Copia collegamento alla Rinota';
	@override String get delete => 'Elimina';
	@override String get deleteAndEdit => 'Elimina e modifica';
	@override String get deleteAndEditConfirm => 'Vuoi davvero cancellare questa nota e scriverla di nuovo? Verranno eliminate anche tutte le reazioni, rinote e risposte collegate.';
	@override String get addToList => 'Aggiungi alla lista';
	@override String get addToAntenna => 'Aggiungi all\'antenna';
	@override String get sendMessage => 'Invia messaggio';
	@override String get copyRSS => 'Copia RSS';
	@override String get copyUsername => 'Copia nome utente';
	@override String get copyUserId => 'Copia ID del profilo';
	@override String get copyNoteId => 'Copia ID della Nota';
	@override String get copyFileId => 'Copia ID del file';
	@override String get copyFolderId => 'Copia ID della cartella';
	@override String get copyProfileUrl => 'Copia URL del profilo';
	@override String get searchUser => 'Cerca profilo';
	@override String get reply => 'Rispondi';
	@override String get loadMore => 'Mostra di più';
	@override String get showMore => 'Espandi';
	@override String get showLess => 'Comprimi';
	@override String get youGotNewFollower => 'Adesso ti segue';
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
	@override String unfollowConfirm({required Object name}) => 'Vuoi davvero smettere di seguire ${name}?';
	@override String get exportRequested => 'Hai richiesto un\'esportazione, e potrebbe volerci tempo. Quando sarà compiuta, il file verrà aggiunto direttamente al Drive.';
	@override String get importRequested => 'Hai richiesto un\'importazione. Potrebbe richiedere un po\' di tempo.';
	@override String get lists => 'Liste';
	@override String get noLists => 'Nessuna lista';
	@override String get note => 'Nota';
	@override String get notes => 'Note';
	@override String get following => 'Follow';
	@override String get followers => 'Follower';
	@override String get followsYou => 'Segue';
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
	@override String get followRequests => 'Richieste di follow';
	@override String get unfollow => 'Smetti di seguire';
	@override String get followRequestPending => 'Richiesta in approvazione';
	@override String get enterEmoji => 'Inserisci emoji';
	@override String get renote => 'Rinota';
	@override String get unrenote => 'Elimina la Rinota';
	@override String get renoted => 'Rinotata!';
	@override String get cantRenote => 'È impossibile rinotare questa nota.';
	@override String get cantReRenote => 'È impossibile rinotare una Rinota.';
	@override String get quote => 'Citazione';
	@override String get inChannelRenote => 'Rinota nel canale';
	@override String get inChannelQuote => 'Cita nel canale';
	@override String get pinnedNote => 'Nota in primo piano';
	@override String get pinned => 'Fissa sul profilo';
	@override String get you => 'Tu';
	@override String get clickToShow => 'Contenuto occultato, cliccare solo se si intende vedere';
	@override String get sensitive => 'Allegato esplicito';
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
	@override String get mute => 'Silenzia';
	@override String get unmute => 'Riattiva l\'audio';
	@override String get renoteMute => 'Silenzia le Rinota';
	@override String get renoteUnmute => 'Non silenziare le Rinota';
	@override String get block => 'Blocca';
	@override String get unblock => 'Sblocca';
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
	@override String get general => 'Generali';
	@override String get wallpaper => 'Sfondo';
	@override String get setWallpaper => 'Imposta sfondo';
	@override String get removeWallpaper => 'Elimina lo sfondo';
	@override String searchWith({required Object q}) => 'Cerca: ${q}';
	@override String get youHaveNoLists => 'Non hai ancora creato nessuna lista';
	@override String followConfirm({required Object name}) => 'Vuoi seguire ${name}?';
	@override String get proxyAccount => 'Profilo proxy';
	@override String get proxyAccountDescription => 'Un profilo proxy funziona come follower per i profili remoti, sotto certe condizioni. Ad esempio, quando un profilo locale ne inserisce uno remoto in una lista (senza seguirlo), se nessun altro segue quel profilo remoto, le attività non possono essere distribuite. Dunque, il profilo proxy le seguirà per tutti.';
	@override String get host => 'Host';
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
	@override String get blockThisInstance => 'Blocca questa istanza';
	@override String get silenceThisInstance => 'Silenzia l\'istanza';
	@override String get operations => 'Operazioni';
	@override String get software => 'Software';
	@override String get version => 'Versione';
	@override String get metadata => 'Metadato';
	@override String withNFiles({required Object n}) => '${n} file in allegato';
	@override String get monitor => 'Monitorare';
	@override String get jobQueue => 'Coda di lavoro';
	@override String get cpuAndMemory => 'CPU e Memoria';
	@override String get network => 'Rete';
	@override String get disk => 'Disco';
	@override String get instanceInfo => 'Informazioni sull\'istanza';
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
	@override String get muteAndBlock => 'Silenziati / Bloccati';
	@override String get mutedUsers => 'Profili silenziati';
	@override String get blockedUsers => 'Profili bloccati';
	@override String get noUsers => 'Non ci sono profili';
	@override String get editProfile => 'Modifica profilo';
	@override String get noteDeleteConfirm => 'Vuoi davvero eliminare questa Nota?';
	@override String get pinLimitExceeded => 'Non puoi fissare altre note ';
	@override String get intro => 'L\'installazione di Misskey è terminata! Si prega di creare il profilo amministratore.';
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
	@override String get instanceFollowing => 'Seguiti dall\'istanza';
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
	@override String get messaging => 'Messaggi';
	@override String get upload => 'Carica';
	@override String get keepOriginalUploading => 'Conservare l\'immagine originale.';
	@override String get keepOriginalUploadingDescription => 'Conserva la versione originale quando si caricano le immagini. Se è disattivato, il browser genera l\'immagine per la pubblicazione sul Web durante il caricamento.';
	@override String get fromDrive => 'Dal Drive';
	@override String get fromUrl => 'Dall\'URL';
	@override String get uploadFromUrl => 'Incolla URL immagine';
	@override String get uploadFromUrlDescription => 'URL del file che vuoi caricare';
	@override String get uploadFromUrlRequested => 'Caricamento richiesto';
	@override String get uploadFromUrlMayTakeTime => 'Il caricamento del file può richiedere tempo.';
	@override String get explore => 'Esplora';
	@override String get messageRead => 'Visualizzato';
	@override String get noMoreHistory => 'Non c\'è più cronologia da visualizzare';
	@override String get startMessaging => 'Nuovo messaggio';
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
	@override String get drive => 'Drive';
	@override String get fileName => 'Nome dell\'allegato';
	@override String get selectFile => 'Scelta allegato';
	@override String get selectFiles => 'Scelta allegato';
	@override String get selectFolder => 'Seleziona cartella';
	@override String get selectFolders => 'Seleziona cartella';
	@override String get renameFile => 'Rinomina file';
	@override String get folderName => 'Nome della cartella';
	@override String get createFolder => 'Nuova cartella';
	@override String get renameFolder => 'Rinomina cartella';
	@override String get deleteFolder => 'Elimina cartella';
	@override String get folder => 'Cartella';
	@override String get addFile => 'Allega';
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
	@override String get registration => 'Iscriviti';
	@override String get enableRegistration => 'Consenti a chiunque di registrarsi';
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
	@override String get antennaKeywordsDescription => 'Sparando con uno spazio indichi la condizione E (and). Separando con un a capo, indichi la condizione O (or).';
	@override String get notifyAntenna => 'Invia notifiche delle nuove note';
	@override String get withFileAntenna => 'Solo note con file in allegato';
	@override String get enableServiceworker => 'Abilita ServiceWorker';
	@override String get antennaUsersDescription => 'Elenca un nome utente per riga';
	@override String get caseSensitive => 'Sensibile alla distinzione tra maiuscole e minuscole';
	@override String get withReplies => 'Includere le risposte';
	@override String get connectedTo => 'Connessione ai seguenti profili:';
	@override String get notesAndReplies => 'Note e risposte';
	@override String get withFiles => 'Con allegati';
	@override String get silence => 'Silenzia';
	@override String get silenceConfirm => 'Vuoi davvero silenziare questo profilo?';
	@override String get unsilence => 'Riattiva';
	@override String get unsilenceConfirm => 'Vuoi davvero riattivare questo profilo?';
	@override String get popularUsers => 'Profili popolari';
	@override String get recentlyUpdatedUsers => 'Utenti attivi di recente';
	@override String get recentlyRegisteredUsers => 'Profili iscritti di recente';
	@override String get recentlyDiscoveredUsers => 'Profili scoperti di recente';
	@override String exploreUsersCount({required Object count}) => 'Ci sono ${count} profili';
	@override String get exploreFediverse => 'Esplora il Fediverso';
	@override String get popularTags => 'Tag di tendenza';
	@override String get userList => 'Liste';
	@override String get about => 'Informazioni';
	@override String get aboutMisskey => 'Informazioni di Misskey';
	@override String get administrator => 'Amministratore';
	@override String get token => 'Token';
	@override String get x2fa => 'Autenticazione a due fattori';
	@override String get setupOf2fa => 'Impostare l\'autenticazione a due fattori';
	@override String get totp => 'App di autenticazione a due fattori (2FA/MFA)';
	@override String get totpDescription => 'Puoi autenticarti inserendo un codice OTP tramite la tua App di autenticazione a due fattori (2FA/MFA)';
	@override String get moderator => 'Moderatore';
	@override String get moderation => 'moderazione';
	@override String get moderationNote => 'Promemoria di moderazione';
	@override String get addModerationNote => 'Aggiungi promemoria di moderazione';
	@override String get moderationLogs => 'Cronologia di moderazione';
	@override String nUsersMentioned({required Object n}) => '${n} profili ne parlano';
	@override String get securityKeyAndPasskey => 'Chiave di sicurezza e accesso';
	@override String get securityKey => 'Chiave di sicurezza';
	@override String get lastUsed => 'Ultima attività';
	@override String lastUsedAt({required Object t}) => 'Uso più recente: ${t}';
	@override String get unregister => 'Annulla l\'iscrizione';
	@override String get passwordLessLogin => 'Accedi senza password';
	@override String get passwordLessLoginDescription => 'Accedi senza password, usando la chiave di sicurezza';
	@override String get resetPassword => 'Ripristina la password';
	@override String newPasswordIs({required Object password}) => 'La tua nuova password è「${password}」';
	@override String get reduceUiAnimation => 'Ridurre le animazioni dell\'interfaccia';
	@override String get share => 'Condividi';
	@override String get notFound => 'Non trovato';
	@override String get notFoundDescription => 'Nessuna pagina corrisponde all\'URL indicata.';
	@override String get uploadFolder => 'Destinazione caricamento predefinita';
	@override String get markAsReadAllNotifications => 'Segna tutte le notifiche come lette';
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
	@override String get noMessagesYet => 'Ancora nessuna chat';
	@override String get newMessageExists => 'Hai ricevuto un nuovo messaggio';
	@override String get onlyOneFileCanBeAttached => 'È possibile allegare al messaggio soltanto uno file';
	@override String get signinRequired => 'Occorre avere un profilo registrato su questa istanza';
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
	@override String get disableDrawer => 'Non mostrare il menù sul drawer';
	@override String get showNoteActionsOnlyHover => 'Mostra le azioni delle Note solo al passaggio del mouse';
	@override String get noHistory => 'Nessuna cronologia';
	@override String get signinHistory => 'Storico degli accessi al profilo';
	@override String get enableAdvancedMfm => 'Attiva MFM avanzati';
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
	@override String get noFollowRequests => 'Non hai alcuna richiesta di follow';
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
	@override String get objectStorage => 'Stoccaggio oggetti';
	@override String get useObjectStorage => 'Utilizza stoccaggio oggetti';
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
	@override String get newNoteRecived => 'Nuove note da leggere';
	@override String get sounds => 'Impostazioni suoni';
	@override String get sound => 'Suono';
	@override String get listen => 'Ascolta';
	@override String get none => 'Nessuno';
	@override String get showInPage => 'Visualizza in pagina';
	@override String get popout => 'Finestra pop-out';
	@override String get volume => 'Volume';
	@override String get masterVolume => 'Volume principale';
	@override String get notUseSound => 'Non emettere suoni';
	@override String get useSoundOnlyWhenActive => 'Emetti suoni solo quando Misskey è in attività';
	@override String get details => 'Dettagli';
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
	@override String get output => 'Uscita';
	@override String get script => 'Script';
	@override String get disablePagesScript => 'Disabilita AiScript nelle pagine';
	@override String get updateRemoteUser => 'Aggiorna le informazioni dal profilo remoto';
	@override String get unsetUserAvatar => 'Rimozione foto profilo';
	@override String get unsetUserAvatarConfirm => 'Vuoi davvero rimuovere la foto profilo?';
	@override String get unsetUserBanner => 'Rimuovi intestazione profilo';
	@override String get unsetUserBannerConfirm => 'Vuoi davvero rimuovere l\'intestazione dal profilo?';
	@override String get deleteAllFiles => 'Elimina tutti i file';
	@override String get deleteAllFilesConfirm => 'Vuoi davvero eliminare tutti i file?';
	@override String get removeAllFollowing => 'Annulla tutti i follow';
	@override String removeAllFollowingDescription({required Object host}) => 'Cancella tutti i follows del server ${host}. Per favore, esegui se, ad esempio, l\'istanza non esiste più.';
	@override String get userSuspended => 'L\'utente è in sospensione';
	@override String get userSilenced => 'Profilo silente.';
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
	@override String get disableAll => 'Disabilita tutto';
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
	@override String get hardWordMute => 'Filtro parole forte';
	@override String get regexpError => 'errore regex';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'Si è verificato un errore nell\'espressione regolare alla riga ${line} della parola muta ${tab}:';
	@override String get instanceMute => 'Silenzia l\'istanza';
	@override String userSaysSomething({required Object name}) => '${name} ha parlato';
	@override String get makeActive => 'Attiva';
	@override String get display => 'Visualizza';
	@override String get copy => 'Copia';
	@override String get metrics => 'Statistiche';
	@override String get overview => 'Anteprima';
	@override String get logs => 'Log';
	@override String get delayed => 'Ritardo';
	@override String get database => 'Base dati';
	@override String get channel => 'Canale';
	@override String get create => 'Crea';
	@override String get notificationSetting => 'Impostazioni notifiche';
	@override String get notificationSettingDesc => 'Seleziona il tipo di notifiche da visualizzare.';
	@override String get useGlobalSetting => 'Usa impostazioni generali';
	@override String get useGlobalSettingDesc => 'Quando attiva, verranno utilizzate le impostazioni notifiche del profilo. Altrimenti si possono segliere impostazioni personalizzate.';
	@override String get other => 'Ulteriori';
	@override String get regenerateLoginToken => 'Genera di nuovo un token di connessione';
	@override String get regenerateLoginTokenDescription => 'Genera un nuovo token di autenticazione. Solitamente questa operazione non è necessaria: quando si genera un nuovo token, tutti i dispositivi vanno disconnessi.';
	@override String get theKeywordWhenSearchingForCustomEmoji => 'Questa sarà la parola chiave durante la ricerca di emoji personalizzate';
	@override String get setMultipleBySeparatingWithSpace => 'È possibile creare multiple voci separate da spazi.';
	@override String get fileIdOrUrl => 'ID o URL del file';
	@override String get behavior => 'Comportamento';
	@override String get sample => 'Esempio';
	@override String get abuseReports => 'Segnalazioni';
	@override String get reportAbuse => 'Segnala';
	@override String get reportAbuseRenote => 'Segnala la Rinota';
	@override String reportAbuseOf({required Object name}) => 'Segnala ${name}';
	@override String get fillAbuseReportDescription => 'Per favore, spiegaci il motivo della segnalazione. Se riguarda una Nota precisa, indica anche l\'indirizzo URL.';
	@override String get abuseReported => 'La segnalazione è stata inviata. Grazie.';
	@override String get reporter => 'il corrispondente';
	@override String get reporteeOrigin => 'Origine del segnalato';
	@override String get reporterOrigin => 'Origine del segnalatore';
	@override String get forwardReport => 'Inoltro di un report a un\'istanza remota.';
	@override String get forwardReportIsAnonymous => 'L\'istanza remota non vedrà le tue informazioni, apparirai come profilo di sistema, anonimo.';
	@override String get send => 'Inviare';
	@override String get abuseMarkAsResolved => 'Contrassegna la segnalazione come risolta';
	@override String get openInNewTab => 'Apri in una nuova scheda';
	@override String get openInSideView => 'Apri in vista laterale';
	@override String get defaultNavigationBehaviour => 'Navigazione preimpostata';
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
	@override String get followingCount => 'Numero di profili seguiti';
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
	@override String get alwaysMarkSensitive => 'Segnare gli allegati come espliciti come opzione predefinita';
	@override String get loadRawImages => 'Visualizza le intere immagini allegate invece delle miniature.';
	@override String get disableShowingAnimatedImages => 'Disabilita le immagini animate';
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
	@override String get showGapBetweenNotesInTimeline => 'Mostrare un intervallo tra le note sulla timeline';
	@override String get duplicate => 'Duplica';
	@override String get left => 'Sinistra';
	@override String get center => 'Centro';
	@override String get wide => 'Largo';
	@override String get narrow => 'Stretto';
	@override String get reloadToApplySetting => 'Le tue preferenze verranno impostate dopo il ricaricamento della pagina. Vuoi ricaricare adesso?';
	@override String get needReloadToApply => 'È necessario riavviare per rendere effettive le modifiche.';
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
	@override String get active => 'Attività';
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
	@override String get noBotProtectionWarning => 'Non è stata impostata alcuna protezione dai Bot';
	@override String get configure => 'Imposta';
	@override String get postToGallery => 'Pubblicare nella galleria';
	@override String get postToHashtag => 'Pubblica a questo hashtag';
	@override String get gallery => 'Galleria';
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
	@override String get learnMore => 'Più dettagli';
	@override String get misskeyUpdated => 'Misskey è stato aggiornato!';
	@override String get whatIsNew => 'Visualizza le informazioni sull\'aggiornamento';
	@override String get translate => 'Traduci';
	@override String translatedFrom({required Object x}) => 'Traduzione da ${x}';
	@override String get accountDeletionInProgress => 'È in corso l\'eliminazione del profilo';
	@override String get usernameInfo => 'Un nome per identificare univocamente il tuo profilo sull\'istanza. Puoi utilizzare caratteri alfanumerici maiuscoli, minuscoli e il trattino basso (_). Non potrai cambiare nome utente in seguito.';
	@override String get aiChanMode => 'Modalità Ai';
	@override String get devMode => 'Modalità sviluppatori';
	@override String get keepCw => 'Mostra i contenuti espliciti';
	@override String get pubSub => 'Publish/Subscribe del profilo';
	@override String get lastCommunication => 'La comunicazione più recente';
	@override String get resolved => 'Risolto';
	@override String get unresolved => 'Non risolto';
	@override String get breakFollow => 'Impedire di seguirmi';
	@override String get breakFollowConfirm => 'Vuoi davvero che questo profilo smetta di seguirti?';
	@override String get itsOn => 'Abilitato';
	@override String get itsOff => 'Disabilitato';
	@override String get on => 'Acceso';
	@override String get off => 'Spento';
	@override String get emailRequiredForSignup => 'L\'ndirizzo e-mail è obbligatorio per registrarsi';
	@override String get unread => 'Non lette';
	@override String get filter => 'Filtri';
	@override String get controlPanel => 'Pannello di controllo';
	@override String get manageAccounts => 'Gestisci i profili';
	@override String get makeReactionsPublic => 'Pubblicare la lista delle reazioni.';
	@override String get makeReactionsPublicDescription => 'La lista delle reazioni che avete fatto è a disposizione di tutti.';
	@override String get classic => 'Classico';
	@override String get muteThread => 'Silenzia conversazione';
	@override String get unmuteThread => 'Riattiva la conversazione';
	@override String get followingVisibility => 'Visibilità dei profili seguiti';
	@override String get followersVisibility => 'Visibilità dei profili che ti seguono';
	@override String get continueThread => 'Altre conversazioni';
	@override String get deleteAccountConfirm => 'Così verrà eliminato il profilo. Vuoi procedere?';
	@override String get incorrectPassword => 'La password è errata.';
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
	@override String get isSystemAccount => 'Questi profili vengono creati e gestiti automaticamente dal sistema';
	@override String typeToConfirm({required Object x}) => 'Per eseguire questa operazione, digitare ${x}';
	@override String get deleteAccount => 'Eliminazione profilo';
	@override String get document => 'Documento';
	@override String get numberOfPageCache => 'Numero di pagine cache';
	@override String get numberOfPageCacheDescription => 'Aumenta l\'usabilità, ma aumenta anche il carico e l\'utilizzo della memoria.';
	@override String get logoutConfirm => 'Vuoi davvero uscire da Misskey? ';
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
	@override String get beta => 'Versione beta';
	@override String get enableAutoSensitive => 'Determinazione automatica del NSFW';
	@override String get enableAutoSensitiveDescription => 'Se disponibile, il flag NSFW viene impostato automaticamente sui media utilizzando l\'apprendimento automatico. Anche se questa funzione è disattivata, in alcuni casi può essere impostata automaticamente.';
	@override String get activeEmailValidationDescription => 'Convalida l\'indirizzo e-mail di un utente in modo più aggressivo, determinando se si tratta di un indirizzo e-mail scartato e se è possibile comunicare con esso. Se non è selezionata, l\'indirizzo e-mail viene controllato per verificarne la correttezza solo come stringa.';
	@override String get navbar => 'Barra di navigazione';
	@override String get shuffle => 'Casuale';
	@override String get account => 'Account';
	@override String get move => 'Sposta';
	@override String get pushNotification => 'Notifiche Push';
	@override String get subscribePushNotification => 'Attiva le notifiche push';
	@override String get unsubscribePushNotification => 'Disattiva le notifiche push';
	@override String get pushNotificationAlreadySubscribed => 'Le notifiche push sono già attivate';
	@override String get pushNotificationNotSupported => 'Il client o il server non supporta le notifiche push';
	@override String get sendPushNotificationReadMessage => 'Elimina le notifiche push dopo la relativa lettura';
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
	@override String correspondingSourceIsAvailable({required Object anchor}) => ' ${anchor}';
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
	@override String get achievements => 'Obiettivi raggiunti';
	@override String get gotInvalidResponseError => 'Risposta del server non valida';
	@override String get gotInvalidResponseErrorDescription => 'Il server potrebbe essere irraggiungibile o in manutenzione. Riprova più tardi.';
	@override String get thisPostMayBeAnnoying => 'Questa nota potrebbe essere offensiva';
	@override String get thisPostMayBeAnnoyingHome => 'Pubblica sulla timeline principale';
	@override String get thisPostMayBeAnnoyingCancel => 'Annulla';
	@override String get thisPostMayBeAnnoyingIgnore => 'Pubblica lo stesso';
	@override String get collapseRenotes => 'Comprimi le Rinota già viste';
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
	@override String get drivecleaner => 'Drive cleaner';
	@override String get retryAllQueuesNow => 'Ritenta di consumare tutte le code';
	@override String get retryAllQueuesConfirmTitle => 'Vuoi ritentare adesso?';
	@override String get retryAllQueuesConfirmText => 'Potrebbe sovraccaricare il server temporaneamente.';
	@override String get enableChartsForRemoteUser => 'Abilita i grafici per i profili remoti';
	@override String get enableChartsForFederatedInstances => 'Abilita i grafici per le istanze federate';
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
	@override String get editMemo => 'Modifica Memo';
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
	@override String channelArchiveConfirmTitle({required Object name}) => 'Vuoi davvero archiviare ${name}?';
	@override String get channelArchiveConfirmDescription => 'Un canale archiviato non compare nell\'elenco canali, nemmeno nei risultati di ricerca. Non può ricevere nemmeno nuove Note.';
	@override String get thisChannelArchived => 'Questo canale è stato archiviato.';
	@override String get displayOfNote => 'Visualizzazione delle Note';
	@override String get initialAccountSetting => 'Impostazioni iniziali del profilo';
	@override String get youFollowing => 'Seguiti';
	@override String get preventAiLearning => 'Impedisci l\'apprendimento della IA';
	@override String get preventAiLearningDescription => 'Aggiungendo il campo "noai" alla risposta HTML, si indica ai Robot esterni di non usare testi e allegati per addestrare sistemi di Machine Learning (IA predittiva/generativa). Anche se è impossibile sapere se la richiesta venga onorata o semplicemente ignorata.';
	@override String get options => 'Opzioni del ruolo';
	@override String get specifyUser => 'Profilo specifico';
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
	@override String get keepScreenOn => 'Mantieni lo schermo acceso';
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
	@override String get pullDownToRefresh => 'Trascina per aggiornare';
	@override String get disableStreamingTimeline => 'Disabilitare gli aggiornamenti della TL in tempo reale';
	@override String get useGroupedNotifications => 'Mostra le notifiche raggruppate';
	@override String get signupPendingError => 'Si è verificato un problema durante la verifica del tuo indirizzo email. Potrebbe essere scaduto il collegamento temporaneo.';
	@override String get cwNotationRequired => 'Devi indicare perché il contenuto è indicato come esplicito.';
	@override String get doReaction => 'Reagisci';
	@override String get code => 'Codice';
	@override String get reloadRequiredToApplySettings => 'Per applicare le impostazioni, occorre ricaricare.';
	@override String remainingN({required Object n}) => 'Rimangono: ${n}';
	@override String get overwriteContentConfirm => 'Vuoi davvero sostituire l\'attuale contenuto?';
	@override String get seasonalScreenEffect => 'Schermate in base alla stagione';
	@override String get decorate => 'Decora';
	@override String get addMfmFunction => 'Aggiungi decorazioni';
	@override String get enableQuickAddMfmFunction => 'Attiva il selettore di funzioni MFM';
	@override String get bubbleGame => 'Bubble Game';
	@override String get sfx => 'Effetti sonori';
	@override String get soundWillBePlayed => 'Con musica ed effetti sonori';
	@override String get showReplay => 'Vedi i replay';
	@override String get replay => 'Replay';
	@override String get replaying => 'Replay in corso';
	@override String get ranking => 'Classifica';
	@override String lastNDays({required Object n}) => 'Ultimi ${n} giorni';
	@override String get backToTitle => 'Torna al titolo';
	@override String get hemisphere => 'Geolocalizzazione';
	@override String get withSensitive => 'Mostra le Note con allegati espliciti';
	@override String userSaysSomethingSensitive({required Object name}) => 'Note da ${name} con allegati espliciti';
	@override String get enableHorizontalSwipe => 'Trascina per invertire i tab';
	@override String get surrender => 'Annulla';
	@override late final _StringsMisskeyBubbleGameItIt bubbleGame_ = _StringsMisskeyBubbleGameItIt._(_root);
	@override late final _StringsMisskeyAnnouncementItIt announcement_ = _StringsMisskeyAnnouncementItIt._(_root);
	@override late final _StringsMisskeyInitialAccountSettingItIt initialAccountSetting_ = _StringsMisskeyInitialAccountSettingItIt._(_root);
	@override late final _StringsMisskeyInitialTutorialItIt initialTutorial_ = _StringsMisskeyInitialTutorialItIt._(_root);
	@override late final _StringsMisskeyTimelineDescriptionItIt timelineDescription_ = _StringsMisskeyTimelineDescriptionItIt._(_root);
	@override late final _StringsMisskeyServerRulesItIt serverRules_ = _StringsMisskeyServerRulesItIt._(_root);
	@override late final _StringsMisskeyServerSettingsItIt serverSettings_ = _StringsMisskeyServerSettingsItIt._(_root);
	@override late final _StringsMisskeyAccountMigrationItIt accountMigration_ = _StringsMisskeyAccountMigrationItIt._(_root);
	@override late final _StringsMisskeyAchievementsItIt achievements_ = _StringsMisskeyAchievementsItIt._(_root);
	@override late final _StringsMisskeyRoleItIt role_ = _StringsMisskeyRoleItIt._(_root);
	@override late final _StringsMisskeySensitiveMediaDetectionItIt sensitiveMediaDetection_ = _StringsMisskeySensitiveMediaDetectionItIt._(_root);
	@override late final _StringsMisskeyEmailUnavailableItIt emailUnavailable_ = _StringsMisskeyEmailUnavailableItIt._(_root);
	@override late final _StringsMisskeyFfVisibilityItIt ffVisibility_ = _StringsMisskeyFfVisibilityItIt._(_root);
	@override late final _StringsMisskeySignupItIt signup_ = _StringsMisskeySignupItIt._(_root);
	@override late final _StringsMisskeyAccountDeleteItIt accountDelete_ = _StringsMisskeyAccountDeleteItIt._(_root);
	@override late final _StringsMisskeyAdItIt ad_ = _StringsMisskeyAdItIt._(_root);
	@override late final _StringsMisskeyForgotPasswordItIt forgotPassword_ = _StringsMisskeyForgotPasswordItIt._(_root);
	@override late final _StringsMisskeyGalleryItIt gallery_ = _StringsMisskeyGalleryItIt._(_root);
	@override late final _StringsMisskeyEmailItIt email_ = _StringsMisskeyEmailItIt._(_root);
	@override late final _StringsMisskeyPluginItIt plugin_ = _StringsMisskeyPluginItIt._(_root);
	@override late final _StringsMisskeyPreferencesBackupsItIt preferencesBackups_ = _StringsMisskeyPreferencesBackupsItIt._(_root);
	@override late final _StringsMisskeyRegistryItIt registry_ = _StringsMisskeyRegistryItIt._(_root);
	@override late final _StringsMisskeyAboutMisskeyItIt aboutMisskey_ = _StringsMisskeyAboutMisskeyItIt._(_root);
	@override late final _StringsMisskeyDisplayOfSensitiveMediaItIt displayOfSensitiveMedia_ = _StringsMisskeyDisplayOfSensitiveMediaItIt._(_root);
	@override late final _StringsMisskeyInstanceTickerItIt instanceTicker_ = _StringsMisskeyInstanceTickerItIt._(_root);
	@override late final _StringsMisskeyServerDisconnectedBehaviorItIt serverDisconnectedBehavior_ = _StringsMisskeyServerDisconnectedBehaviorItIt._(_root);
	@override late final _StringsMisskeyChannelItIt channel_ = _StringsMisskeyChannelItIt._(_root);
	@override late final _StringsMisskeyMenuDisplayItIt menuDisplay_ = _StringsMisskeyMenuDisplayItIt._(_root);
	@override late final _StringsMisskeyWordMuteItIt wordMute_ = _StringsMisskeyWordMuteItIt._(_root);
	@override late final _StringsMisskeyInstanceMuteItIt instanceMute_ = _StringsMisskeyInstanceMuteItIt._(_root);
	@override late final _StringsMisskeyThemeItIt theme_ = _StringsMisskeyThemeItIt._(_root);
	@override late final _StringsMisskeySfxItIt sfx_ = _StringsMisskeySfxItIt._(_root);
	@override late final _StringsMisskeySoundSettingsItIt soundSettings_ = _StringsMisskeySoundSettingsItIt._(_root);
	@override late final _StringsMisskeyAgoItIt ago_ = _StringsMisskeyAgoItIt._(_root);
	@override late final _StringsMisskeyTimeInItIt timeIn_ = _StringsMisskeyTimeInItIt._(_root);
	@override late final _StringsMisskeyTimeItIt time_ = _StringsMisskeyTimeItIt._(_root);
	@override late final _StringsMisskeyX2faItIt x2fa_ = _StringsMisskeyX2faItIt._(_root);
	@override late final _StringsMisskeyPermissionsItIt permissions_ = _StringsMisskeyPermissionsItIt._(_root);
	@override late final _StringsMisskeyAuthItIt auth_ = _StringsMisskeyAuthItIt._(_root);
	@override late final _StringsMisskeyAntennaSourcesItIt antennaSources_ = _StringsMisskeyAntennaSourcesItIt._(_root);
	@override late final _StringsMisskeyWeekdayItIt weekday_ = _StringsMisskeyWeekdayItIt._(_root);
	@override late final _StringsMisskeyWidgetsItIt widgets_ = _StringsMisskeyWidgetsItIt._(_root);
	@override late final _StringsMisskeyCwItIt cw_ = _StringsMisskeyCwItIt._(_root);
	@override late final _StringsMisskeyPollItIt poll_ = _StringsMisskeyPollItIt._(_root);
	@override late final _StringsMisskeyVisibilityItIt visibility_ = _StringsMisskeyVisibilityItIt._(_root);
	@override late final _StringsMisskeyPostFormItIt postForm_ = _StringsMisskeyPostFormItIt._(_root);
	@override late final _StringsMisskeyProfileItIt profile_ = _StringsMisskeyProfileItIt._(_root);
	@override late final _StringsMisskeyExportOrImportItIt exportOrImport_ = _StringsMisskeyExportOrImportItIt._(_root);
	@override late final _StringsMisskeyChartsItIt charts_ = _StringsMisskeyChartsItIt._(_root);
	@override late final _StringsMisskeyInstanceChartsItIt instanceCharts_ = _StringsMisskeyInstanceChartsItIt._(_root);
	@override late final _StringsMisskeyTimelinesItIt timelines_ = _StringsMisskeyTimelinesItIt._(_root);
	@override late final _StringsMisskeyPlayItIt play_ = _StringsMisskeyPlayItIt._(_root);
	@override late final _StringsMisskeyPagesItIt pages_ = _StringsMisskeyPagesItIt._(_root);
	@override late final _StringsMisskeyRelayStatusItIt relayStatus_ = _StringsMisskeyRelayStatusItIt._(_root);
	@override late final _StringsMisskeyNotificationItIt notification_ = _StringsMisskeyNotificationItIt._(_root);
	@override late final _StringsMisskeyDeckItIt deck_ = _StringsMisskeyDeckItIt._(_root);
	@override late final _StringsMisskeyDialogItIt dialog_ = _StringsMisskeyDialogItIt._(_root);
	@override late final _StringsMisskeyDisabledTimelineItIt disabledTimeline_ = _StringsMisskeyDisabledTimelineItIt._(_root);
	@override late final _StringsMisskeyDrivecleanerItIt drivecleaner_ = _StringsMisskeyDrivecleanerItIt._(_root);
	@override late final _StringsMisskeyWebhookSettingsItIt webhookSettings_ = _StringsMisskeyWebhookSettingsItIt._(_root);
	@override late final _StringsMisskeyModerationLogTypesItIt moderationLogTypes_ = _StringsMisskeyModerationLogTypesItIt._(_root);
	@override late final _StringsMisskeyFileViewerItIt fileViewer_ = _StringsMisskeyFileViewerItIt._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerItIt externalResourceInstaller_ = _StringsMisskeyExternalResourceInstallerItIt._(_root);
	@override late final _StringsMisskeyDataSaverItIt dataSaver_ = _StringsMisskeyDataSaverItIt._(_root);
	@override late final _StringsMisskeyHemisphereItIt hemisphere_ = _StringsMisskeyHemisphereItIt._(_root);
	@override late final _StringsMisskeyReversiItIt reversi_ = _StringsMisskeyReversiItIt._(_root);
	@override late final _StringsMisskeyOfflineScreenItIt offlineScreen_ = _StringsMisskeyOfflineScreenItIt._(_root);
}

// Path: misskey.bubbleGame_
class _StringsMisskeyBubbleGameItIt extends _StringsMisskeyBubbleGameEnUs {
	_StringsMisskeyBubbleGameItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => 'Come giocare';
	@override late final _StringsMisskeyBubbleGameHowToPlayItIt howToPlay_ = _StringsMisskeyBubbleGameHowToPlayItIt._(_root);
}

// Path: misskey.announcement_
class _StringsMisskeyAnnouncementItIt extends _StringsMisskeyAnnouncementEnUs {
	_StringsMisskeyAnnouncementItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => 'Solo ai profili attuali';
	@override String get forExistingUsersDescription => 'L\'annuncio sarà visibile solo ai profili esistenti in questo momento. Se disabilitato, sarà visibile anche ai profili che verranno creati dopo la pubblicazione di questo annuncio.';
	@override String get needConfirmationToRead => 'Richiede la conferma di lettura';
	@override String get needConfirmationToReadDescription => 'Sarà visualizzata una finestra di dialogo che richiede la conferma di lettura. Inoltre, non è soggetto a conferme di lettura massicce.';
	@override String get end => 'Archivia l\'annuncio';
	@override String get tooManyActiveAnnouncementDescription => 'L\'esperienza delle persone può peggiorare se ci sono troppi annunci attivi. Considera anche l\'archiviazione degli annunci conclusi.';
	@override String get readConfirmTitle => 'Segnare come già letto?';
	@override String readConfirmText({required Object title}) => 'Hai già letto "${title}˝?';
	@override String get shouldNotBeUsedToPresentPermanentInfo => 'Ti consigliamo di utilizzare gli annunci per pubblicare informazioni tempestive e limitate nel tempo, anziché informazioni importanti a lungo andare nel tempo, poiché potrebbero risultare difficili da ritrovare e peggiorare la fruibilità del servizio, specialmente alle nuove persone iscritte.';
	@override String get dialogAnnouncementUxWarn => 'Ti consigliamo di usarli con cautela, poiché è molto probabile che avere più di un annuncio in stile "finestra di dialogo" peggiori sensibilmente la fruibilità del servizio, specialmente alle nuove persone iscritte.';
	@override String get silence => 'Silenzia gli annunci';
	@override String get silenceDescription => 'Se attivi questa opzione, non riceverai notifiche sugli annunci, evitando di contrassegnarle come già lette.';
}

// Path: misskey.initialAccountSetting_
class _StringsMisskeyInitialAccountSettingItIt extends _StringsMisskeyInitialAccountSettingEnUs {
	_StringsMisskeyInitialAccountSettingItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
class _StringsMisskeyInitialTutorialItIt extends _StringsMisskeyInitialTutorialEnUs {
	_StringsMisskeyInitialTutorialItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'Guarda il tutorial';
	@override String get title => 'Tutorial';
	@override String get wellDone => 'Ottimo lavoro!';
	@override String get skipAreYouSure => 'Vuoi davvero interrompere il tutorial?';
	@override late final _StringsMisskeyInitialTutorialLandingItIt landing_ = _StringsMisskeyInitialTutorialLandingItIt._(_root);
	@override late final _StringsMisskeyInitialTutorialNoteItIt note_ = _StringsMisskeyInitialTutorialNoteItIt._(_root);
	@override late final _StringsMisskeyInitialTutorialReactionItIt reaction_ = _StringsMisskeyInitialTutorialReactionItIt._(_root);
	@override late final _StringsMisskeyInitialTutorialTimelineItIt timeline_ = _StringsMisskeyInitialTutorialTimelineItIt._(_root);
	@override late final _StringsMisskeyInitialTutorialPostNoteItIt postNote_ = _StringsMisskeyInitialTutorialPostNoteItIt._(_root);
	@override late final _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveItIt howToMakeAttachmentsSensitive_ = _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveItIt._(_root);
	@override late final _StringsMisskeyInitialTutorialDoneItIt done_ = _StringsMisskeyInitialTutorialDoneItIt._(_root);
}

// Path: misskey.timelineDescription_
class _StringsMisskeyTimelineDescriptionItIt extends _StringsMisskeyTimelineDescriptionEnUs {
	_StringsMisskeyTimelineDescriptionItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get home => 'Nella Timeline Home, la tua cronologia principale, puoi vedere le Note provenienti dai profili che segui (follow).';
	@override String get local => 'La Timeline Locale, è una cronologia di Note pubblicate da tutti i profili iscritti su questo server.';
	@override String get social => 'La Timeline Sociale, unisce in ordine cronologico l\'elenco di Note presenti nella Timeline Home e quella Locale.';
	@override String get global => 'La Timeline Federata ti consente di vedere le Note pubblicate dai profili di tutti gli altri server federati a questo.';
}

// Path: misskey.serverRules_
class _StringsMisskeyServerRulesItIt extends _StringsMisskeyServerRulesEnUs {
	_StringsMisskeyServerRulesItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get description => 'In Europa è necessario mostrare l\'informativa sul trattamento dei dati personali, prima della registrazione al servizio.';
}

// Path: misskey.serverSettings_
class _StringsMisskeyServerSettingsItIt extends _StringsMisskeyServerSettingsEnUs {
	_StringsMisskeyServerSettingsItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
}

// Path: misskey.accountMigration_
class _StringsMisskeyAccountMigrationItIt extends _StringsMisskeyAccountMigrationEnUs {
	_StringsMisskeyAccountMigrationItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => 'Migra un altro profilo dentro a questo';
	@override String get moveFromSub => 'Crea un alias verso un altro profilo remoto';
	@override String moveFromLabel({required Object n}) => 'Profilo da cui migrare: ${n}';
	@override String get moveFromDescription => 'Se desideri spostare i profili follower da un altro profilo a questo, devi prima creare un alias qui. Assicurati averlo creato PRIMA di eseguire l\'attività! Inserisci l\'indirizzo del profilo mittente in questo modo: @persona@istanza.it';
	@override String get moveTo => 'Migrare questo profilo verso un un altro';
	@override String get moveToLabel => 'Profilo verso cui migrare';
	@override String get moveCannotBeUndone => 'La migrazione è irreversibile, non può essere interrotta o annullata.';
	@override String get moveAccountDescription => 'Questa attività è irreversibile! Innanzitutto, assicurati di aver creato, nella istanza di destinazione, un alias con l\'indirizzo di questo profilo. Successivamente, indica qui il profilo di destinazione in questo modo: @persona@istanza.it';
	@override String get moveAccountHowTo => 'Per migrare su un profilo remoto, crea prima un alias di questo profilo, sulla istanza di destinazione.\nDopo aver creato l\'alias, inserisci l\'indirizzo di destinazione, indicando ad esempio: @profilo@altra.istanza';
	@override String get startMigration => 'Avvia la migrazione';
	@override String migrationConfirm({required Object account}) => 'Vuoi davvero migrare questo profilo su ${account}? L\'azione è irreversibile e non potrai più utilizzare questo profilo nel suo stato originale.\nInoltre, assicurati di aver già creato un alias sull\'account a cui ti stai trasferendo.';
	@override String get movedAndCannotBeUndone => 'Il tuo profilo è stato migrato.\nLa migrazione non può essere annullata.';
	@override String get postMigrationNote => 'Questo profilo smetterà di seguire gli altri profili remoti a 24 ore dal termine della migrazione.\nSia i Follow che i Follower scenderanno a zero. I tuoi follower saranno comunque in grado di vedere le Note per soli follower, poiché non smetteranno di seguirti.';
	@override String get movedTo => 'Profilo verso cui migrare';
}

// Path: misskey.achievements_
class _StringsMisskeyAchievementsItIt extends _StringsMisskeyAchievementsEnUs {
	_StringsMisskeyAchievementsItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Data di conseguimento';
	@override late final _StringsMisskeyAchievementsTypesItIt types_ = _StringsMisskeyAchievementsTypesItIt._(_root);
}

// Path: misskey.role_
class _StringsMisskeyRoleItIt extends _StringsMisskeyRoleEnUs {
	_StringsMisskeyRoleItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
	@override String get canEditMembersByModerator => 'Anche i Moderatori assegnano profili a questo ruolo';
	@override String get descriptionOfCanEditMembersByModerator => 'Se disattivo, potranno farlo solamente gli Amministratori.';
	@override String get priority => 'Priorità';
	@override late final _StringsMisskeyRolePriorityItIt priority_ = _StringsMisskeyRolePriorityItIt._(_root);
	@override late final _StringsMisskeyRoleOptionsItIt options_ = _StringsMisskeyRoleOptionsItIt._(_root);
	@override late final _StringsMisskeyRoleConditionItIt condition_ = _StringsMisskeyRoleConditionItIt._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _StringsMisskeySensitiveMediaDetectionItIt extends _StringsMisskeySensitiveMediaDetectionEnUs {
	_StringsMisskeySensitiveMediaDetectionItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
class _StringsMisskeyEmailUnavailableItIt extends _StringsMisskeyEmailUnavailableEnUs {
	_StringsMisskeyEmailUnavailableItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get used => 'Email già in uso';
	@override String get format => 'Formato email non valido';
	@override String get disposable => 'Indirizzo email non utilizzabile';
	@override String get mx => 'Server email non corretto';
	@override String get smtp => 'Il server email non risponde';
	@override String get banned => 'Non puoi registrarti con questo indirizzo email';
}

// Path: misskey.ffVisibility_
class _StringsMisskeyFfVisibilityItIt extends _StringsMisskeyFfVisibilityEnUs {
	_StringsMisskeyFfVisibilityItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get public => 'Pubblica';
	@override String get followers => 'Mostra solo ai follower';
	@override String get private => 'Invisibile';
}

// Path: misskey.signup_
class _StringsMisskeySignupItIt extends _StringsMisskeySignupEnUs {
	_StringsMisskeySignupItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Quasi completo';
	@override String get emailAddressInfo => 'Inserisci il tuo indirizzo email. Non verrà reso pubblico.';
	@override String emailSent({required Object email}) => 'Abbiamo spedito una e-mail di conferma all\'indirizzo indicato (${email}). Per completare la registrazione del profilo, accedere al link contenuto nell\'e-mail appena spedita.';
}

// Path: misskey.accountDelete_
class _StringsMisskeyAccountDeleteItIt extends _StringsMisskeyAccountDeleteEnUs {
	_StringsMisskeyAccountDeleteItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Eliminazione del profilo';
	@override String get mayTakeTime => 'L\'eliminazione di un profilo è un processo impegnativo, può richiedere del tempo se il numero di contenuti e di file è elevato.';
	@override String get sendEmail => 'Quando il profilo sarà completamente eliminato, verrà spedita una e-mail all\'indirizzo a cui era registrato.';
	@override String get requestAccountDelete => 'Richiesta di eliminazione del profilo';
	@override String get started => 'Inizio della procedura di eliminazione';
	@override String get inProgress => 'Eliminazione del profilo in corso';
}

// Path: misskey.ad_
class _StringsMisskeyAdItIt extends _StringsMisskeyAdEnUs {
	_StringsMisskeyAdItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
class _StringsMisskeyForgotPasswordItIt extends _StringsMisskeyForgotPasswordEnUs {
	_StringsMisskeyForgotPasswordItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Inserisci l\'indirizzo di posta elettronica che hai registrato nel tuo profilo. Il collegamento necessario per ripristinare la password verrà inviato a questo indirizzo.';
	@override String get ifNoEmail => 'Se il tuo indirizzo email non risulta registrato, contatta l\'amministrazione dell\'istanza.';
	@override String get contactAdmin => 'Poiché questa istanza non permette di impostare l\'indirizzo mail, contatta l\'amministrazione per  ripristinare la password.\n';
}

// Path: misskey.gallery_
class _StringsMisskeyGalleryItIt extends _StringsMisskeyGalleryEnUs {
	_StringsMisskeyGalleryItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get my => 'Le mie pubblicazioni';
	@override String get liked => 'Pubblicazioni che mi piacciono';
	@override String get like => 'Mi piace!';
	@override String get unlike => 'Non mi piace più';
}

// Path: misskey.email_
class _StringsMisskeyEmailItIt extends _StringsMisskeyEmailEnUs {
	_StringsMisskeyEmailItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyEmailFollowItIt follow_ = _StringsMisskeyEmailFollowItIt._(_root);
	@override late final _StringsMisskeyEmailReceiveFollowRequestItIt receiveFollowRequest_ = _StringsMisskeyEmailReceiveFollowRequestItIt._(_root);
}

// Path: misskey.plugin_
class _StringsMisskeyPluginItIt extends _StringsMisskeyPluginEnUs {
	_StringsMisskeyPluginItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get install => 'Installa estensioni';
	@override String get installWarn => 'Si prega di installare soltanto estensioni che provengono da fonti affidabili.';
	@override String get manage => 'Gestisci estensioni';
	@override String get viewSource => 'Visualizza sorgente';
}

// Path: misskey.preferencesBackups_
class _StringsMisskeyPreferencesBackupsItIt extends _StringsMisskeyPreferencesBackupsEnUs {
	_StringsMisskeyPreferencesBackupsItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
class _StringsMisskeyRegistryItIt extends _StringsMisskeyRegistryEnUs {
	_StringsMisskeyRegistryItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Ambito di applicazione.';
	@override String get key => 'Dati';
	@override String get keys => 'Dati';
	@override String get domain => 'Dominio';
	@override String get createKey => 'Crea chiave';
}

// Path: misskey.aboutMisskey_
class _StringsMisskeyAboutMisskeyItIt extends _StringsMisskeyAboutMisskeyEnUs {
	_StringsMisskeyAboutMisskeyItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey è un software libero e open source, sviluppato da syuilo dal 2014.';
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
class _StringsMisskeyDisplayOfSensitiveMediaItIt extends _StringsMisskeyDisplayOfSensitiveMediaEnUs {
	_StringsMisskeyDisplayOfSensitiveMediaItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get respect => 'Nascondere i media espliciti';
	@override String get ignore => 'Non nascondere i media espliciti';
	@override String get force => 'Nascondi tutti i media';
}

// Path: misskey.instanceTicker_
class _StringsMisskeyInstanceTickerItIt extends _StringsMisskeyInstanceTickerEnUs {
	_StringsMisskeyInstanceTickerItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get none => 'Nascondi';
	@override String get remote => 'Mostra solo per i profili remoti';
	@override String get always => 'Mostra sempre';
}

// Path: misskey.serverDisconnectedBehavior_
class _StringsMisskeyServerDisconnectedBehaviorItIt extends _StringsMisskeyServerDisconnectedBehaviorEnUs {
	_StringsMisskeyServerDisconnectedBehaviorItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Ricarica automaticamente';
	@override String get dialog => 'Apri avviso in finestra';
	@override String get quiet => 'Visualizza avviso in modo discreto';
}

// Path: misskey.channel_
class _StringsMisskeyChannelItIt extends _StringsMisskeyChannelEnUs {
	_StringsMisskeyChannelItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get create => 'Nuovo canale';
	@override String get edit => 'Gerisci canale';
	@override String get setBanner => 'Scegli intestazione';
	@override String get removeBanner => 'Rimuovi intestazione';
	@override String get featured => 'Di tendenza';
	@override String get owned => 'I miei canali';
	@override String get following => 'Seguiti';
	@override String usersCount({required Object n}) => '${n} partecipanti';
	@override String notesCount({required Object n}) => '${n} note';
	@override String get nameAndDescription => 'Nome e descrizione';
	@override String get nameOnly => 'Solo il nome';
	@override String get allowRenoteToExternal => 'Consenti i Rinota e le citazioni all\'esterno del canale';
}

// Path: misskey.menuDisplay_
class _StringsMisskeyMenuDisplayItIt extends _StringsMisskeyMenuDisplayEnUs {
	_StringsMisskeyMenuDisplayItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Laterale';
	@override String get sideIcon => 'Laterale (solo icone)';
	@override String get top => 'In alto';
	@override String get hide => 'Nascondere';
}

// Path: misskey.wordMute_
class _StringsMisskeyWordMuteItIt extends _StringsMisskeyWordMuteEnUs {
	_StringsMisskeyWordMuteItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Parole da filtrare';
	@override String get muteWordsDescription => 'Sparando con uno spazio indichi la condizione E (and). Separando con un a capo, indichi la condizione O (or).';
	@override String get muteWordsDescription2 => 'Se vuoi indicare delle Espressioni Regolari (regexp), metti la condizione all\'interno di due slash (/)';
}

// Path: misskey.instanceMute_
class _StringsMisskeyInstanceMuteItIt extends _StringsMisskeyInstanceMuteEnUs {
	_StringsMisskeyInstanceMuteItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Disattiva tutte le note, le note di rinvio (condivisione) dell\'istanza configurata, comprese le risposte agli utenti dell\'istanza.';
	@override String get instanceMuteDescription2 => 'Impostazione separata da una nuova riga';
	@override String get title => 'Nasconde le note dell\'istanza configurata.';
	@override String get heading => 'Istanze da silenziare.';
}

// Path: misskey.theme_
class _StringsMisskeyThemeItIt extends _StringsMisskeyThemeEnUs {
	_StringsMisskeyThemeItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get explore => 'Esplora temi';
	@override String get install => 'Installa un tema';
	@override String get manage => 'Gestione temi';
	@override String get code => 'Codice tema';
	@override String get description => 'Descrizione';
	@override String installed({required Object name}) => '${name} è installato';
	@override String get installedThemes => 'Temi installati';
	@override String get builtinThemes => 'Temi integrati';
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
	@override late final _StringsMisskeyThemeKeysItIt keys = _StringsMisskeyThemeKeysItIt._(_root);
}

// Path: misskey.sfx_
class _StringsMisskeySfxItIt extends _StringsMisskeySfxEnUs {
	_StringsMisskeySfxItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get note => 'Nota';
	@override String get noteMy => 'Mia nota';
	@override String get notification => 'Notifiche';
	@override String get antenna => 'Ricezione dell\'antenna';
	@override String get channel => 'Notifiche di canale';
	@override String get reaction => 'Quando seleziono una reazione';
}

// Path: misskey.soundSettings_
class _StringsMisskeySoundSettingsItIt extends _StringsMisskeySoundSettingsEnUs {
	_StringsMisskeySoundSettingsItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get driveFile => 'Suoni del Drive';
	@override String get driveFileWarn => 'Seleziona file dal dispositivo';
	@override String get driveFileTypeWarn => 'Formato file non supportato';
	@override String get driveFileTypeWarnDescription => 'Per favore, scegli un file di tipo audio';
	@override String get driveFileDurationWarn => 'La durata dell\'audio è troppo lunga';
	@override String get driveFileDurationWarnDescription => 'Scegliere un audio lungo potrebbe interferire con l\'uso di Misskey. Vuoi continuare lo stesso?';
}

// Path: misskey.ago_
class _StringsMisskeyAgoItIt extends _StringsMisskeyAgoEnUs {
	_StringsMisskeyAgoItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
class _StringsMisskeyTimeInItIt extends _StringsMisskeyTimeInEnUs {
	_StringsMisskeyTimeInItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
class _StringsMisskeyTimeItIt extends _StringsMisskeyTimeEnUs {
	_StringsMisskeyTimeItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get second => 's';
	@override String get minute => 'min';
	@override String get hour => 'ore';
	@override String get day => 'giorni';
}

// Path: misskey.x2fa_
class _StringsMisskeyX2faItIt extends _StringsMisskeyX2faEnUs {
	_StringsMisskeyX2faItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'La configurazione è stata già completata.';
	@override String get registerTOTP => 'Registra una App di autenticazione a due fattori (2FA/MFA)';
	@override String step1({required Object a, required Object b}) => 'Innanzitutto, installa sul dispositivo un\'App di autenticazione come ${a} o ${b}.';
	@override String get step2 => 'Quindi, tramite la App installata, scansiona questo codice QR.';
	@override String get step2Click => 'Cliccando sul codice QR, puoi registrarlo con l\'app di autenticazione o il portachiavi installato sul tuo dispositivo.';
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
}

// Path: misskey.permissions_
class _StringsMisskeyPermissionsItIt extends _StringsMisskeyPermissionsEnUs {
	_StringsMisskeyPermissionsItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
	@override String get writeFollowing => 'Following di altri profili';
	@override String get readMessaging => 'Visualizzare la chat';
	@override String get writeMessaging => 'Gestire la chat';
	@override String get readMutes => 'Vedi i profili silenziati';
	@override String get writeMutes => 'Gestisci i profili silenziati';
	@override String get writeNotes => 'Creare / Eliminare note';
	@override String get readNotifications => 'Visualizza notifiche';
	@override String get writeNotifications => 'Gerisci notifiche';
	@override String get readReactions => 'Vedi reazioni';
	@override String get writeReactions => 'Gerisci reazioni';
	@override String get writeVotes => 'Votare';
	@override String get readPages => 'Visualizzare pagine';
	@override String get writePages => 'Gestire pagine';
	@override String get readPageLikes => 'Visualizzare i "Mi piace" di pagine';
	@override String get writePageLikes => 'Gestire i "Mi piace" di pagine';
	@override String get readUserGroups => 'Vedere i gruppi di utenti';
	@override String get writeUserGroups => 'Gestire i gruppi di utenti';
	@override String get readChannels => 'Visualizza canali';
	@override String get writeChannels => 'Gerisci canali';
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
	@override String get readAdminShowUsers => 'Vedere le informazioni private degli account utente';
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
}

// Path: misskey.auth_
class _StringsMisskeyAuthItIt extends _StringsMisskeyAuthEnUs {
	_StringsMisskeyAuthItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'Permessi dell\'applicazione';
	@override String shareAccess({required Object name}) => 'Vuoi autorizzare ${name} ad accedere al tuo profilo?';
	@override String get shareAccessAsk => 'Vuoi autorizzare questa App ad accedere al tuo profilo?';
	@override String permission({required Object name}) => '${name} richiede i permessi seguenti';
	@override String get permissionAsk => 'Questa app richiede le seguenti autorizzazioni:';
	@override String get pleaseGoBack => 'Si prega di ritornare sulla app';
	@override String get callback => 'Ritornando sulla app';
	@override String get denied => 'Accesso negato';
	@override String get pleaseLogin => 'Per favore accedi al tuo account per cambiare i permessi dell\'applicazione';
}

// Path: misskey.antennaSources_
class _StringsMisskeyAntennaSourcesItIt extends _StringsMisskeyAntennaSourcesEnUs {
	_StringsMisskeyAntennaSourcesItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get all => 'Tutte le note';
	@override String get homeTimeline => 'Note dagli utenti che segui';
	@override String get users => 'Note dagli utenti selezionati';
	@override String get userList => 'Note dagli utenti della lista selezionata';
	@override String get userBlacklist => 'Tutte le Note tranne quelle di uno o più profili specificati';
}

// Path: misskey.weekday_
class _StringsMisskeyWeekdayItIt extends _StringsMisskeyWeekdayEnUs {
	_StringsMisskeyWeekdayItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
class _StringsMisskeyWidgetsItIt extends _StringsMisskeyWidgetsEnUs {
	_StringsMisskeyWidgetsItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Profilo';
	@override String get instanceInfo => 'Informazioni sull\'istanza';
	@override String get memo => 'Promemoria';
	@override String get notifications => 'Notifiche';
	@override String get timeline => 'Timeline';
	@override String get calendar => 'Calendario';
	@override String get trends => 'Di tendenza';
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
	@override late final _StringsMisskeyWidgetsUserListItIt userList_ = _StringsMisskeyWidgetsUserListItIt._(_root);
	@override String get clicker => 'Cliccaggio';
	@override String get birthdayFollowings => 'Chi nacque oggi';
}

// Path: misskey.cw_
class _StringsMisskeyCwItIt extends _StringsMisskeyCwEnUs {
	_StringsMisskeyCwItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Nascondere';
	@override String get show => 'Continua la lettura...';
	@override String chars({required Object count}) => '${count} caratteri';
	@override String files({required Object count}) => '${count} file';
}

// Path: misskey.poll_
class _StringsMisskeyPollItIt extends _StringsMisskeyPollEnUs {
	_StringsMisskeyPollItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
class _StringsMisskeyVisibilityItIt extends _StringsMisskeyVisibilityEnUs {
	_StringsMisskeyVisibilityItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
class _StringsMisskeyPostFormItIt extends _StringsMisskeyPostFormEnUs {
	_StringsMisskeyPostFormItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'Rispondi a questa nota...';
	@override String get quotePlaceholder => 'Cita questa nota...';
	@override String get channelPlaceholder => 'Pubblica sul canale...';
	@override late final _StringsMisskeyPostFormPlaceholdersItIt placeholders_ = _StringsMisskeyPostFormPlaceholdersItIt._(_root);
}

// Path: misskey.profile_
class _StringsMisskeyProfileItIt extends _StringsMisskeyProfileEnUs {
	_StringsMisskeyProfileItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
	@override String get verifiedLinkDescription => 'Puoi verificare il tuo profilo mostrando una icona. Devi inserire la URL alla pagina che contiene un link al tuo profilo.';
	@override String avatarDecorationMax({required Object max}) => 'Puoi aggiungere fino a ${max} decorazioni.';
}

// Path: misskey.exportOrImport_
class _StringsMisskeyExportOrImportItIt extends _StringsMisskeyExportOrImportEnUs {
	_StringsMisskeyExportOrImportItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Tutte le note';
	@override String get favoritedNotes => 'Note preferite';
	@override String get clips => 'Clip';
	@override String get followingList => 'Follow';
	@override String get muteList => 'Elenco profili silenziati';
	@override String get blockingList => 'Elenco profili bloccati';
	@override String get userLists => 'Liste';
	@override String get excludeMutingUsers => 'Escludere gli utenti silenziati';
	@override String get excludeInactiveUsers => 'Escludere i profili inutilizzati';
	@override String get withReplies => 'Includere le risposte da profili importati nella Timeline';
}

// Path: misskey.charts_
class _StringsMisskeyChartsItIt extends _StringsMisskeyChartsEnUs {
	_StringsMisskeyChartsItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
class _StringsMisskeyInstanceChartsItIt extends _StringsMisskeyInstanceChartsEnUs {
	_StringsMisskeyInstanceChartsItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
class _StringsMisskeyTimelinesItIt extends _StringsMisskeyTimelinesEnUs {
	_StringsMisskeyTimelinesItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get home => 'Home';
	@override String get local => 'Locale';
	@override String get social => 'Sociale';
	@override String get global => 'Federata';
}

// Path: misskey.play_
class _StringsMisskeyPlayItIt extends _StringsMisskeyPlayEnUs {
	_StringsMisskeyPlayItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
}

// Path: misskey.pages_
class _StringsMisskeyPagesItIt extends _StringsMisskeyPagesEnUs {
	_StringsMisskeyPagesItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'Crea pagina';
	@override String get editPage => 'Modifica pagina';
	@override String get readPage => 'Visualizzando fonte ';
	@override String get created => 'Pagina creata!';
	@override String get updated => 'Pagina aggiornata con successo!';
	@override String get deleted => 'Pagina eliminata';
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
	@override String get selectType => 'Seleziona tipo';
	@override String get contentBlocks => 'Contenuto';
	@override String get inputBlocks => 'Blocchi di input';
	@override String get specialBlocks => 'Speciale';
	@override late final _StringsMisskeyPagesBlocksItIt blocks = _StringsMisskeyPagesBlocksItIt._(_root);
}

// Path: misskey.relayStatus_
class _StringsMisskeyRelayStatusItIt extends _StringsMisskeyRelayStatusEnUs {
	_StringsMisskeyRelayStatusItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'In attesa di approvazione';
	@override String get accepted => 'Approvato';
	@override String get rejected => 'Respinto';
}

// Path: misskey.notification_
class _StringsMisskeyNotificationItIt extends _StringsMisskeyNotificationEnUs {
	_StringsMisskeyNotificationItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'File caricato correttamente';
	@override String youGotMention({required Object name}) => '${name} ti ha menzionato';
	@override String youGotReply({required Object name}) => '${name} ti ha risposto';
	@override String youGotQuote({required Object name}) => '${name} ha citato la tua Nota e ha detto';
	@override String youRenoted({required Object name}) => '${name} ha rinotato';
	@override String get youWereFollowed => 'Adesso ti segue';
	@override String get youReceivedFollowRequest => 'Hai ricevuto una richiesta di follow';
	@override String get yourFollowRequestAccepted => 'La tua richiesta di follow è stata accettata';
	@override String get pollEnded => 'Risultati del sondaggio.';
	@override String get newNote => 'Nuove Note';
	@override String unreadAntennaNote({required Object name}) => 'Antenna ${name}';
	@override String get roleAssigned => 'Ruolo assegnato';
	@override String get emptyPushNotificationMessage => 'Le notifiche push sono state aggiornate.';
	@override String get achievementEarned => 'Obiettivo raggiunto';
	@override String get testNotification => 'Prova la notifica';
	@override String get checkNotificationBehavior => 'Prova il comportamento della notifica';
	@override String get sendTestNotification => 'Spedisci una notifica di prova';
	@override String get notificationWillBeDisplayedLikeThis => 'La notifica apparirà così';
	@override String reactedBySomeUsers({required Object n}) => '${n} reazioni';
	@override String renotedBySomeUsers({required Object n}) => '${n} Rinota';
	@override String followedBySomeUsers({required Object n}) => '${n} nuovi follower';
	@override late final _StringsMisskeyNotificationTypesItIt types_ = _StringsMisskeyNotificationTypesItIt._(_root);
	@override late final _StringsMisskeyNotificationActionsItIt actions_ = _StringsMisskeyNotificationActionsItIt._(_root);
}

// Path: misskey.deck_
class _StringsMisskeyDeckItIt extends _StringsMisskeyDeckEnUs {
	_StringsMisskeyDeckItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Mostra sempre la colonna principale';
	@override String get columnAlign => 'Allineare colonne';
	@override String get addColumn => 'Aggiungi colonna';
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
	@override late final _StringsMisskeyDeckColumnsItIt columns_ = _StringsMisskeyDeckColumnsItIt._(_root);
}

// Path: misskey.dialog_
class _StringsMisskeyDialogItIt extends _StringsMisskeyDialogEnUs {
	_StringsMisskeyDialogItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object max, required Object current}) => 'Hai superato il limite di ${max} caratteri! (${current})';
	@override String charactersBelow({required Object min, required Object current}) => 'Sei al di sotto del minimo di ${min} caratteri!  (${current})';
}

// Path: misskey.disabledTimeline_
class _StringsMisskeyDisabledTimelineItIt extends _StringsMisskeyDisabledTimelineEnUs {
	_StringsMisskeyDisabledTimelineItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Timeline disabilitata';
	@override String get description => 'Il ruolo in cui sei non ti permette di leggere questa timeline';
}

// Path: misskey.drivecleaner_
class _StringsMisskeyDrivecleanerItIt extends _StringsMisskeyDrivecleanerEnUs {
	_StringsMisskeyDrivecleanerItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'Dal più grande al più piccolo';
	@override String get orderByCreatedAtAsc => 'Dal più vecchio al più recente';
}

// Path: misskey.webhookSettings_
class _StringsMisskeyWebhookSettingsItIt extends _StringsMisskeyWebhookSettingsEnUs {
	_StringsMisskeyWebhookSettingsItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Creazione Webhook';
	@override String get name => 'Nome';
	@override String get secret => 'Segreto';
	@override String get events => 'Quando eseguire il Webhook';
	@override String get active => 'Attivo';
	@override late final _StringsMisskeyWebhookSettingsEventsItIt events_ = _StringsMisskeyWebhookSettingsEventsItIt._(_root);
}

// Path: misskey.moderationLogTypes_
class _StringsMisskeyModerationLogTypesItIt extends _StringsMisskeyModerationLogTypesEnUs {
	_StringsMisskeyModerationLogTypesItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
	@override String get markSensitiveDriveFile => 'File nel Drive segnato come esplicito';
	@override String get unmarkSensitiveDriveFile => 'File nel Drive segnato come non esplicito';
	@override String get resolveAbuseReport => 'Segnalazione risolta';
	@override String get createInvitation => 'Genera codice di invito';
	@override String get createAd => 'Banner creato';
	@override String get deleteAd => 'Banner eliminato';
	@override String get updateAd => 'Banner aggiornato';
	@override String get createAvatarDecoration => 'Creazione decorazione della foto profilo';
	@override String get updateAvatarDecoration => 'Aggiornamento decorazione foto profilo';
	@override String get deleteAvatarDecoration => 'Eliminazione decorazione della foto profilo';
	@override String get unsetUserAvatar => 'Rimossa foto profilo';
	@override String get unsetUserBanner => 'Rimossa intestazione profilo';
}

// Path: misskey.fileViewer_
class _StringsMisskeyFileViewerItIt extends _StringsMisskeyFileViewerEnUs {
	_StringsMisskeyFileViewerItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
class _StringsMisskeyExternalResourceInstallerItIt extends _StringsMisskeyExternalResourceInstallerEnUs {
	_StringsMisskeyExternalResourceInstallerItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Installa da sito esterno';
	@override String get checkVendorBeforeInstall => 'Prima di installare, assicurati che la fonte sia affidabile.';
	@override late final _StringsMisskeyExternalResourceInstallerPluginItIt plugin_ = _StringsMisskeyExternalResourceInstallerPluginItIt._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerThemeItIt theme_ = _StringsMisskeyExternalResourceInstallerThemeItIt._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerMetaItIt meta_ = _StringsMisskeyExternalResourceInstallerMetaItIt._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerVendorInfoItIt vendorInfo_ = _StringsMisskeyExternalResourceInstallerVendorInfoItIt._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsItIt errors_ = _StringsMisskeyExternalResourceInstallerErrorsItIt._(_root);
}

// Path: misskey.dataSaver_
class _StringsMisskeyDataSaverItIt extends _StringsMisskeyDataSaverEnUs {
	_StringsMisskeyDataSaverItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyDataSaverMediaItIt media_ = _StringsMisskeyDataSaverMediaItIt._(_root);
	@override late final _StringsMisskeyDataSaverAvatarItIt avatar_ = _StringsMisskeyDataSaverAvatarItIt._(_root);
	@override late final _StringsMisskeyDataSaverUrlPreviewItIt urlPreview_ = _StringsMisskeyDataSaverUrlPreviewItIt._(_root);
	@override late final _StringsMisskeyDataSaverCodeItIt code_ = _StringsMisskeyDataSaverCodeItIt._(_root);
}

// Path: misskey.hemisphere_
class _StringsMisskeyHemisphereItIt extends _StringsMisskeyHemisphereEnUs {
	_StringsMisskeyHemisphereItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get N => 'Emisfero boreale';
	@override String get S => 'Emisfero australe';
	@override String get caption => 'Utile per alcune impostazioni del client, per determinare la stagione.';
}

// Path: misskey.reversi_
class _StringsMisskeyReversiItIt extends _StringsMisskeyReversiEnUs {
	_StringsMisskeyReversiItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
}

// Path: misskey.offlineScreen_
class _StringsMisskeyOfflineScreenItIt extends _StringsMisskeyOfflineScreenEnUs {
	_StringsMisskeyOfflineScreenItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scollegato. Impossibile connettersi al server';
	@override String get header => 'Impossibile connettersi al server';
}

// Path: misskey.bubbleGame_.howToPlay_
class _StringsMisskeyBubbleGameHowToPlayItIt extends _StringsMisskeyBubbleGameHowToPlayEnUs {
	_StringsMisskeyBubbleGameHowToPlayItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get section1 => 'Scegli la posizione e rilascia l\'oggetto nel contenitore.';
	@override String get section2 => 'Se due oggetti dello stesso tipo si toccano, si trasformano in un oggetto diverso, aumentando il punteggio.';
	@override String get section3 => 'Se gli oggetti escono dal limite superiore del contenitore, il gioco finisce. Cerca di ottenere un punteggio elevato fondendo gli oggetti, evitando che escano dal contenitore!';
}

// Path: misskey.initialTutorial_.landing_
class _StringsMisskeyInitialTutorialLandingItIt extends _StringsMisskeyInitialTutorialLandingEnUs {
	_StringsMisskeyInitialTutorialLandingItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eccoci nel tutorial';
	@override String get description => 'Qui puoi verificare l\'uso delle funzionalità base di Misskey.';
}

// Path: misskey.initialTutorial_.note_
class _StringsMisskeyInitialTutorialNoteItIt extends _StringsMisskeyInitialTutorialNoteEnUs {
	_StringsMisskeyInitialTutorialNoteItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cosa sono le Note?';
	@override String get description => 'Gli status su Misskey sono chiamati "Note". Le Note sono elencate in ordine cronologico nelle timeline e vengono aggiornate in tempo reale.';
	@override String get reply => 'Puoi rispondere alle Note. Puoi anche rispondere alle risposte e continuare i dialoghi come un conversazioni.';
	@override String get renote => 'Puoi ri-condividere le Note, facendole rifluire sulla Timeline. Puoi anche aggiungere testo e citare altri profili.';
	@override String get reaction => 'Puoi aggiungere una reazione. Nella pagina successiva spiegheremo i dettagli.';
	@override String get menu => 'Puoi svolgere varie attività, come visualizzare i dettagli delle Note o copiare i collegamenti.';
}

// Path: misskey.initialTutorial_.reaction_
class _StringsMisskeyInitialTutorialReactionItIt extends _StringsMisskeyInitialTutorialReactionEnUs {
	_StringsMisskeyInitialTutorialReactionItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cosa sono le Reazioni?';
	@override String get description => 'Puoi reagire alle Note. Le sensazioni che non si riescono a trasmettere con i "Mi piace" si possono esprimere facilmente inviando una reazione.';
	@override String get letsTryReacting => 'Puoi aggiungere una Reazione cliccando il bottone "+" (più) della relativa Nota. Prova ad aggiungerne una a questa Nota di esempio!';
	@override String get reactToContinue => 'Aggiungere la Reazione ti consentirà di procedere col tutorial.';
	@override String get reactNotification => 'Quando qualcuno reagisce alle tue Note, ricevi una notifica in tempo reale.';
	@override String get reactDone => 'Puoi annullare la tua Reazione premendo il bottone "ー" (meno)';
}

// Path: misskey.initialTutorial_.timeline_
class _StringsMisskeyInitialTutorialTimelineItIt extends _StringsMisskeyInitialTutorialTimelineEnUs {
	_StringsMisskeyInitialTutorialTimelineItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Come funziona la Timeline';
	@override String get description1 => 'Misskey fornisce alcune Timeline (sequenze cronologiche di Note). Una di queste potrebbe essere stata disattivata dagli amministratori.';
	@override String get home => 'Puoi vedere le Note provenienti dai profili che segui (follow).';
	@override String get local => 'Puoi vedere tutte le Note pubblicate dai profili di questa istanza.';
	@override String get social => 'Puoi vedere sia le Note della Timeline Home che quelle della Timeline Locale, insieme!';
	@override String get global => 'Puoi vedere le Note da pubblicate da tutte le altre istanze federate con la nostra.';
	@override String get description2 => 'Nella parte superiore dello schermo, puoi scegliere una Timeline o l\'altra in qualsiasi momento.';
	@override String description3({required Object link}) => 'Ci sono anche sequenze temporali di elenchi, sequenze temporali di canali, ecc. Per ulteriori dettagli, consultare il ${link}.\nPuoi vedere anche Timeline delle liste di profili (se ne hai create), canali, ecc... Per i dettagli, visita ${link}.';
}

// Path: misskey.initialTutorial_.postNote_
class _StringsMisskeyInitialTutorialPostNoteItIt extends _StringsMisskeyInitialTutorialPostNoteEnUs {
	_StringsMisskeyInitialTutorialPostNoteItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'La Nota e le sue impostazioni';
	@override String get description1 => 'Quando scrivi una Nota su Misskey, hai a disposizione varie opzioni. Il modulo di invio è simile a questo.';
	@override late final _StringsMisskeyInitialTutorialPostNoteVisibilityItIt visibility_ = _StringsMisskeyInitialTutorialPostNoteVisibilityItIt._(_root);
	@override late final _StringsMisskeyInitialTutorialPostNoteCwItIt cw_ = _StringsMisskeyInitialTutorialPostNoteCwItIt._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveItIt extends _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Come indicare che gli allegati sono espliciti?';
	@override String get description => 'Contrassegnare gli allegati come espliciti, va fatto quando è richiesto dal regolamento del server o quando gli allegati non devono essere immediatamente visibili.';
	@override String get tryThisFile => 'Prova a rendere esplicite le immagini allegate a questo modulo!';
	@override late final _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteItIt exampleNote_ = _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteItIt._(_root);
	@override String get method => 'Per indicare che un allegato è esplicito, tocca il file per aprirne il menu e scegliere la voce "Segna come esplicito".';
	@override String get sensitiveSucceeded => 'Quando alleghi file, assicurati di indicare se è materiale esplicito, in modo appropriato, in base al regolamento del tuo server.';
	@override String get doItToContinue => 'Impostando l\'immagine come esplicita, potrai procedere col tutorial.';
}

// Path: misskey.initialTutorial_.done_
class _StringsMisskeyInitialTutorialDoneItIt extends _StringsMisskeyInitialTutorialDoneEnUs {
	_StringsMisskeyInitialTutorialDoneItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Il tutorial è finito! 🎉';
	@override String description({required Object link}) => 'Queste sono solamente alcune delle funzionalità principali di Misskey. Per ulteriori informazioni, ${link}.';
}

// Path: misskey.achievements_.types_
class _StringsMisskeyAchievementsTypesItIt extends _StringsMisskeyAchievementsTypesEnUs {
	_StringsMisskeyAchievementsTypesItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAchievementsTypesNotes1ItIt notes1_ = _StringsMisskeyAchievementsTypesNotes1ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10ItIt notes10_ = _StringsMisskeyAchievementsTypesNotes10ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100ItIt notes100_ = _StringsMisskeyAchievementsTypesNotes100ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes500ItIt notes500_ = _StringsMisskeyAchievementsTypesNotes500ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes1000ItIt notes1000_ = _StringsMisskeyAchievementsTypesNotes1000ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes5000ItIt notes5000_ = _StringsMisskeyAchievementsTypesNotes5000ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10000ItIt notes10000_ = _StringsMisskeyAchievementsTypesNotes10000ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes20000ItIt notes20000_ = _StringsMisskeyAchievementsTypesNotes20000ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes30000ItIt notes30000_ = _StringsMisskeyAchievementsTypesNotes30000ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes40000ItIt notes40000_ = _StringsMisskeyAchievementsTypesNotes40000ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes50000ItIt notes50000_ = _StringsMisskeyAchievementsTypesNotes50000ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes60000ItIt notes60000_ = _StringsMisskeyAchievementsTypesNotes60000ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes70000ItIt notes70000_ = _StringsMisskeyAchievementsTypesNotes70000ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes80000ItIt notes80000_ = _StringsMisskeyAchievementsTypesNotes80000ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes90000ItIt notes90000_ = _StringsMisskeyAchievementsTypesNotes90000ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100000ItIt notes100000_ = _StringsMisskeyAchievementsTypesNotes100000ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin3ItIt login3_ = _StringsMisskeyAchievementsTypesLogin3ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin7ItIt login7_ = _StringsMisskeyAchievementsTypesLogin7ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin15ItIt login15_ = _StringsMisskeyAchievementsTypesLogin15ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin30ItIt login30_ = _StringsMisskeyAchievementsTypesLogin30ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin60ItIt login60_ = _StringsMisskeyAchievementsTypesLogin60ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin100ItIt login100_ = _StringsMisskeyAchievementsTypesLogin100ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin200ItIt login200_ = _StringsMisskeyAchievementsTypesLogin200ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin300ItIt login300_ = _StringsMisskeyAchievementsTypesLogin300ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin400ItIt login400_ = _StringsMisskeyAchievementsTypesLogin400ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin500ItIt login500_ = _StringsMisskeyAchievementsTypesLogin500ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin600ItIt login600_ = _StringsMisskeyAchievementsTypesLogin600ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin700ItIt login700_ = _StringsMisskeyAchievementsTypesLogin700ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin800ItIt login800_ = _StringsMisskeyAchievementsTypesLogin800ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin900ItIt login900_ = _StringsMisskeyAchievementsTypesLogin900ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin1000ItIt login1000_ = _StringsMisskeyAchievementsTypesLogin1000ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteClipped1ItIt noteClipped1_ = _StringsMisskeyAchievementsTypesNoteClipped1ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteFavorited1ItIt noteFavorited1_ = _StringsMisskeyAchievementsTypesNoteFavorited1ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesMyNoteFavorited1ItIt myNoteFavorited1_ = _StringsMisskeyAchievementsTypesMyNoteFavorited1ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesProfileFilledItIt profileFilled_ = _StringsMisskeyAchievementsTypesProfileFilledItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesMarkedAsCatItIt markedAsCat_ = _StringsMisskeyAchievementsTypesMarkedAsCatItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing1ItIt following1_ = _StringsMisskeyAchievementsTypesFollowing1ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing10ItIt following10_ = _StringsMisskeyAchievementsTypesFollowing10ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing50ItIt following50_ = _StringsMisskeyAchievementsTypesFollowing50ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing100ItIt following100_ = _StringsMisskeyAchievementsTypesFollowing100ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing300ItIt following300_ = _StringsMisskeyAchievementsTypesFollowing300ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers1ItIt followers1_ = _StringsMisskeyAchievementsTypesFollowers1ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers10ItIt followers10_ = _StringsMisskeyAchievementsTypesFollowers10ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers50ItIt followers50_ = _StringsMisskeyAchievementsTypesFollowers50ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers100ItIt followers100_ = _StringsMisskeyAchievementsTypesFollowers100ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers300ItIt followers300_ = _StringsMisskeyAchievementsTypesFollowers300ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers500ItIt followers500_ = _StringsMisskeyAchievementsTypesFollowers500ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers1000ItIt followers1000_ = _StringsMisskeyAchievementsTypesFollowers1000ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesCollectAchievements30ItIt collectAchievements30_ = _StringsMisskeyAchievementsTypesCollectAchievements30ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesViewAchievements3minItIt viewAchievements3min_ = _StringsMisskeyAchievementsTypesViewAchievements3minItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesILoveMisskeyItIt iLoveMisskey_ = _StringsMisskeyAchievementsTypesILoveMisskeyItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFoundTreasureItIt foundTreasure_ = _StringsMisskeyAchievementsTypesFoundTreasureItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesClient30minItIt client30min_ = _StringsMisskeyAchievementsTypesClient30minItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesClient60minItIt client60min_ = _StringsMisskeyAchievementsTypesClient60minItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteDeletedWithin1minItIt noteDeletedWithin1min_ = _StringsMisskeyAchievementsTypesNoteDeletedWithin1minItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesPostedAtLateNightItIt postedAtLateNight_ = _StringsMisskeyAchievementsTypesPostedAtLateNightItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesPostedAt0min0secItIt postedAt0min0sec_ = _StringsMisskeyAchievementsTypesPostedAt0min0secItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesSelfQuoteItIt selfQuote_ = _StringsMisskeyAchievementsTypesSelfQuoteItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesHtl20npmItIt htl20npm_ = _StringsMisskeyAchievementsTypesHtl20npmItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesViewInstanceChartItIt viewInstanceChart_ = _StringsMisskeyAchievementsTypesViewInstanceChartItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadItIt outputHelloWorldOnScratchpad_ = _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesOpen3windowsItIt open3windows_ = _StringsMisskeyAchievementsTypesOpen3windowsItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceItIt driveFolderCircularReference_ = _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesReactWithoutReadItIt reactWithoutRead_ = _StringsMisskeyAchievementsTypesReactWithoutReadItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesClickedClickHereItIt clickedClickHere_ = _StringsMisskeyAchievementsTypesClickedClickHereItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesJustPlainLuckyItIt justPlainLucky_ = _StringsMisskeyAchievementsTypesJustPlainLuckyItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesSetNameToSyuiloItIt setNameToSyuilo_ = _StringsMisskeyAchievementsTypesSetNameToSyuiloItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1ItIt passedSinceAccountCreated1_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2ItIt passedSinceAccountCreated2_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3ItIt passedSinceAccountCreated3_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3ItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLoggedInOnBirthdayItIt loggedInOnBirthday_ = _StringsMisskeyAchievementsTypesLoggedInOnBirthdayItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayItIt loggedInOnNewYearsDay_ = _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesCookieClickedItIt cookieClicked_ = _StringsMisskeyAchievementsTypesCookieClickedItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesBrainDiverItIt brainDiver_ = _StringsMisskeyAchievementsTypesBrainDiverItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesSmashTestNotificationButtonItIt smashTestNotificationButton_ = _StringsMisskeyAchievementsTypesSmashTestNotificationButtonItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesTutorialCompletedItIt tutorialCompleted_ = _StringsMisskeyAchievementsTypesTutorialCompletedItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadItIt bubbleGameExplodingHead_ = _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadItIt._(_root);
	@override late final _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadItIt bubbleGameDoubleExplodingHead_ = _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadItIt._(_root);
}

// Path: misskey.role_.priority_
class _StringsMisskeyRolePriorityItIt extends _StringsMisskeyRolePriorityEnUs {
	_StringsMisskeyRolePriorityItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get low => 'Bassa';
	@override String get middle => 'Medio';
	@override String get high => 'Alta';
}

// Path: misskey.role_.options_
class _StringsMisskeyRoleOptionsItIt extends _StringsMisskeyRoleOptionsEnUs {
	_StringsMisskeyRoleOptionsItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'Disponibilità della Timeline Federata';
	@override String get ltlAvailable => 'Disponibilità della Timeline Locale';
	@override String get canPublicNote => 'Scrivere Note con Visibilità Pubblica';
	@override String get canInvite => 'Generare codici di invito all\'istanza';
	@override String get inviteLimit => 'Limite di codici invito';
	@override String get inviteLimitCycle => 'Intervallo di emissione del codice di invito';
	@override String get inviteExpirationTime => 'Scadenza del codice di invito';
	@override String get canManageCustomEmojis => 'Gestire le emoji personalizzate';
	@override String get canManageAvatarDecorations => 'Gestisce le decorazioni di immagini del profilo';
	@override String get driveCapacity => 'Capienza del Drive';
	@override String get alwaysMarkNsfw => 'Impostare sempre come esplicito (NSFW)';
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
}

// Path: misskey.role_.condition_
class _StringsMisskeyRoleConditionItIt extends _StringsMisskeyRoleConditionEnUs {
	_StringsMisskeyRoleConditionItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get isLocal => 'Profilo locale';
	@override String get isRemote => 'Profilo remoto';
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
class _StringsMisskeyEmailFollowItIt extends _StringsMisskeyEmailFollowEnUs {
	_StringsMisskeyEmailFollowItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Adesso ti segue';
}

// Path: misskey.email_.receiveFollowRequest_
class _StringsMisskeyEmailReceiveFollowRequestItIt extends _StringsMisskeyEmailReceiveFollowRequestEnUs {
	_StringsMisskeyEmailReceiveFollowRequestItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hai ricevuto una richiesta di follow';
}

// Path: misskey.theme_.keys
class _StringsMisskeyThemeKeysItIt extends _StringsMisskeyThemeKeysEnUs {
	_StringsMisskeyThemeKeysItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
	@override String get navHoverFg => 'Testo della barra laterale (al passaggio del mouse)';
	@override String get navActive => 'Testo della barra laterale (attivo)';
	@override String get navIndicator => 'Indicatore di barra laterale';
	@override String get link => 'Link';
	@override String get hashtag => 'Hashtag';
	@override String get mention => 'Menzioni';
	@override String get mentionMe => 'Menzioni (di me)';
	@override String get renote => 'Rinota';
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
	@override String get listItemHoverBg => 'Sfondo della voce di elenco (sorvolato)';
	@override String get driveFolderBg => 'Sfondo della cartella di disco';
	@override String get wallpaperOverlay => 'Sovrapposizione dello sfondo';
	@override String get badge => 'Distintivo';
	@override String get messageBg => 'Sfondo della chat';
	@override String get accentDarken => 'Temi (scuri)';
	@override String get accentLighten => 'Temi (luminosi)';
	@override String get fgHighlighted => 'Testo in evidenza.';
}

// Path: misskey.widgets_.userList_
class _StringsMisskeyWidgetsUserListItIt extends _StringsMisskeyWidgetsUserListEnUs {
	_StringsMisskeyWidgetsUserListItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Seleziona una lista';
}

// Path: misskey.postForm_.placeholders_
class _StringsMisskeyPostFormPlaceholdersItIt extends _StringsMisskeyPostFormPlaceholdersEnUs {
	_StringsMisskeyPostFormPlaceholdersItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get a => 'Come va?';
	@override String get b => 'Hai qualcosa da raccontare? Inizia pure...';
	@override String get c => 'Stai pensando a qualcosa?';
	@override String get d => 'Vuoi dire qualcosa?';
	@override String get e => 'Puoi scrivere qui...';
	@override String get f => 'Inizia pure a scrivere...';
}

// Path: misskey.pages_.blocks
class _StringsMisskeyPagesBlocksItIt extends _StringsMisskeyPagesBlocksEnUs {
	_StringsMisskeyPagesBlocksItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get text => 'Testo';
	@override String get textarea => 'Area di testo';
	@override String get section => 'Sezione';
	@override String get image => 'Immagini';
	@override String get button => 'Pulsante';
	@override String get note => 'Nota integrata';
	@override late final _StringsMisskeyPagesBlocksNoteItIt note_ = _StringsMisskeyPagesBlocksNoteItIt._(_root);
}

// Path: misskey.notification_.types_
class _StringsMisskeyNotificationTypesItIt extends _StringsMisskeyNotificationTypesEnUs {
	_StringsMisskeyNotificationTypesItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get all => 'Tutto';
	@override String get note => 'Nuove Note';
	@override String get follow => 'Nuovi profili follower';
	@override String get mention => 'Menzioni';
	@override String get reply => 'Risposte';
	@override String get renote => 'Rinota';
	@override String get quote => 'Cita';
	@override String get reaction => 'Reazioni';
	@override String get pollEnded => 'Sondaggio chiuso.';
	@override String get receiveFollowRequest => 'Richiesta di follow ricevuta';
	@override String get followRequestAccepted => 'Richiesta di follow accettata';
	@override String get roleAssigned => 'Ruolo concesso';
	@override String get achievementEarned => 'Risultato raggiunto';
	@override String get app => 'Notifiche da applicazioni';
}

// Path: misskey.notification_.actions_
class _StringsMisskeyNotificationActionsItIt extends _StringsMisskeyNotificationActionsEnUs {
	_StringsMisskeyNotificationActionsItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'Segui';
	@override String get reply => 'Rispondi';
	@override String get renote => 'Rinota';
}

// Path: misskey.deck_.columns_
class _StringsMisskeyDeckColumnsItIt extends _StringsMisskeyDeckColumnsEnUs {
	_StringsMisskeyDeckColumnsItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get main => 'Principale';
	@override String get widgets => 'Riquadri';
	@override String get notifications => 'Notifiche';
	@override String get tl => 'Timeline';
	@override String get antenna => 'Antenne';
	@override String get list => 'Liste';
	@override String get channel => 'Canale';
	@override String get mentions => 'Menzioni';
	@override String get direct => 'Note Dirette';
	@override String get roleTimeline => 'Timeline Ruolo';
}

// Path: misskey.webhookSettings_.events_
class _StringsMisskeyWebhookSettingsEventsItIt extends _StringsMisskeyWebhookSettingsEventsEnUs {
	_StringsMisskeyWebhookSettingsEventsItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Quando segui un profilo';
	@override String get followed => 'Quando ti segue un profilo';
	@override String get note => 'Quando pubblichi una Nota';
	@override String get reply => 'Quando rispondono ad una Nota';
	@override String get renote => 'Quando la Nota è Rinotata';
	@override String get reaction => 'Quando ricevo una reazione';
	@override String get mention => 'Quando mi menzionano';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _StringsMisskeyExternalResourceInstallerPluginItIt extends _StringsMisskeyExternalResourceInstallerPluginEnUs {
	_StringsMisskeyExternalResourceInstallerPluginItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vuoi davvero installare questo componente aggiuntivo?';
	@override String get metaTitle => 'Informazioni sul componente aggiuntivo';
}

// Path: misskey.externalResourceInstaller_.theme_
class _StringsMisskeyExternalResourceInstallerThemeItIt extends _StringsMisskeyExternalResourceInstallerThemeEnUs {
	_StringsMisskeyExternalResourceInstallerThemeItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vuoi davvero installare questa variazione grafica?';
	@override String get metaTitle => 'Informazioni sulla variazione grafica';
}

// Path: misskey.externalResourceInstaller_.meta_
class _StringsMisskeyExternalResourceInstallerMetaItIt extends _StringsMisskeyExternalResourceInstallerMetaEnUs {
	_StringsMisskeyExternalResourceInstallerMetaItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get base => 'Combinazione base di colori';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _StringsMisskeyExternalResourceInstallerVendorInfoItIt extends _StringsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_StringsMisskeyExternalResourceInstallerVendorInfoItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informazioni sulla fonte';
	@override String get endpoint => 'Punto di riferimento della fonte';
	@override String get hashVerify => 'Codice di verifica della fonte';
}

// Path: misskey.externalResourceInstaller_.errors_
class _StringsMisskeyExternalResourceInstallerErrorsItIt extends _StringsMisskeyExternalResourceInstallerErrorsEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsItIt invalidParams_ = _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsItIt._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedItIt resourceTypeNotSupported_ = _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedItIt._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchItIt failedToFetch_ = _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchItIt._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedItIt hashUnmatched_ = _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedItIt._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedItIt pluginParseFailed_ = _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedItIt._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedItIt pluginInstallFailed_ = _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedItIt._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedItIt themeParseFailed_ = _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedItIt._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedItIt themeInstallFailed_ = _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedItIt._(_root);
}

// Path: misskey.dataSaver_.media_
class _StringsMisskeyDataSaverMediaItIt extends _StringsMisskeyDataSaverMediaEnUs {
	_StringsMisskeyDataSaverMediaItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Caricamento dei media';
	@override String get description => 'Impedire il caricamento automatico di immagini e video. Devi toccare le immagini o i video nascosti per caricarli.';
}

// Path: misskey.dataSaver_.avatar_
class _StringsMisskeyDataSaverAvatarItIt extends _StringsMisskeyDataSaverAvatarEnUs {
	_StringsMisskeyDataSaverAvatarItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Immagine del profilo';
	@override String get description => 'Impedire l\'animazione per l\'immagine del profilo. Le immagini animate possono avere dimensioni file maggiori rispetto a quelle normali, puoi ridurre ulteriormente l\'utilizzo dei dati.';
}

// Path: misskey.dataSaver_.urlPreview_
class _StringsMisskeyDataSaverUrlPreviewItIt extends _StringsMisskeyDataSaverUrlPreviewEnUs {
	_StringsMisskeyDataSaverUrlPreviewItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anteprime delle URL';
	@override String get description => 'Impedire il caricamento delle anteprime URL.';
}

// Path: misskey.dataSaver_.code_
class _StringsMisskeyDataSaverCodeItIt extends _StringsMisskeyDataSaverCodeEnUs {
	_StringsMisskeyDataSaverCodeItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Codice evidenziato';
	@override String get description => 'Impedire che il codice sorgente sia automaticamente evidenziato. Evidenziare il codice richiede il caricamento di un file per ogni linguaggio. Puoi evidenziare soltanto il codice che intendi leggere e ridurre il traffico inutilizzato.';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _StringsMisskeyInitialTutorialPostNoteVisibilityItIt extends _StringsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_StringsMisskeyInitialTutorialPostNoteVisibilityItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

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
class _StringsMisskeyInitialTutorialPostNoteCwItIt extends _StringsMisskeyInitialTutorialPostNoteCwEnUs {
	_StringsMisskeyInitialTutorialPostNoteCwItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nascondere il contenuto esplicito';
	@override String get description => 'Verrà visualizzato il testo scritto nel campo "Annotazione preventiva" al posto del testo principale della Nota. Premere il bottone "Continua la lettura" se si intende davvero leggere il testo.';
	@override late final _StringsMisskeyInitialTutorialPostNoteCwExampleNoteItIt exampleNote_ = _StringsMisskeyInitialTutorialPostNoteCwExampleNoteItIt._(_root);
	@override String get useCases => 'Utilizzalo per chiarire il contenuto della Nota, prima che sia letta. Come richiesto dal regolamento del server o per autoregolamentare spoiler e testi troppo espliciti.';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteItIt extends _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get note => 'Ho fatto un errore aprendo il coperchio del natto... (fagioli di soia fermentati, particolarmente appiccicosi)';
}

// Path: misskey.achievements_.types_.notes1_
class _StringsMisskeyAchievementsTypesNotes1ItIt extends _StringsMisskeyAchievementsTypesNotes1EnUs {
	_StringsMisskeyAchievementsTypesNotes1ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hai iniziato a usare Misskey';
	@override String get description => 'Hai pubblicato la prima Nota';
	@override String get flavor => 'Goditi la vita su Misskey!';
}

// Path: misskey.achievements_.types_.notes10_
class _StringsMisskeyAchievementsTypesNotes10ItIt extends _StringsMisskeyAchievementsTypesNotes10EnUs {
	_StringsMisskeyAchievementsTypesNotes10ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Alcune Note';
	@override String get description => 'Hai inserito 10 Note';
}

// Path: misskey.achievements_.types_.notes100_
class _StringsMisskeyAchievementsTypesNotes100ItIt extends _StringsMisskeyAchievementsTypesNotes100EnUs {
	_StringsMisskeyAchievementsTypesNotes100ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un po\' di Note';
	@override String get description => 'Hai inserito 100 Note';
}

// Path: misskey.achievements_.types_.notes500_
class _StringsMisskeyAchievementsTypesNotes500ItIt extends _StringsMisskeyAchievementsTypesNotes500EnUs {
	_StringsMisskeyAchievementsTypesNotes500ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un bel po\' di Note';
	@override String get description => 'Hai inserito 500 Note';
}

// Path: misskey.achievements_.types_.notes1000_
class _StringsMisskeyAchievementsTypesNotes1000ItIt extends _StringsMisskeyAchievementsTypesNotes1000EnUs {
	_StringsMisskeyAchievementsTypesNotes1000ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Una montagna di Note';
	@override String get description => 'Hai inserito 1.000 Note';
}

// Path: misskey.achievements_.types_.notes5000_
class _StringsMisskeyAchievementsTypesNotes5000ItIt extends _StringsMisskeyAchievementsTypesNotes5000EnUs {
	_StringsMisskeyAchievementsTypesNotes5000ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un sovraccarico di Note!';
	@override String get description => 'Hai inserito 5.000 Note';
}

// Path: misskey.achievements_.types_.notes10000_
class _StringsMisskeyAchievementsTypesNotes10000ItIt extends _StringsMisskeyAchievementsTypesNotes10000EnUs {
	_StringsMisskeyAchievementsTypesNotes10000ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'SuperNote!';
	@override String get description => 'Hai inserito 10.000 Note';
}

// Path: misskey.achievements_.types_.notes20000_
class _StringsMisskeyAchievementsTypesNotes20000ItIt extends _StringsMisskeyAchievementsTypesNotes20000EnUs {
	_StringsMisskeyAchievementsTypesNotes20000ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Voglio più... Note!';
	@override String get description => 'Hai inserito 20.000 Note';
}

// Path: misskey.achievements_.types_.notes30000_
class _StringsMisskeyAchievementsTypesNotes30000ItIt extends _StringsMisskeyAchievementsTypesNotes30000EnUs {
	_StringsMisskeyAchievementsTypesNotes30000ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Note, Note, Note!';
	@override String get description => 'Hai inserito 30.000 Note';
}

// Path: misskey.achievements_.types_.notes40000_
class _StringsMisskeyAchievementsTypesNotes40000ItIt extends _StringsMisskeyAchievementsTypesNotes40000EnUs {
	_StringsMisskeyAchievementsTypesNotes40000ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Una fabbrica di Note';
	@override String get description => 'Hai inserito 40.000 Note';
}

// Path: misskey.achievements_.types_.notes50000_
class _StringsMisskeyAchievementsTypesNotes50000ItIt extends _StringsMisskeyAchievementsTypesNotes50000EnUs {
	_StringsMisskeyAchievementsTypesNotes50000ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un pianeta di Note';
	@override String get description => 'Hai inserito 50.000 Note';
}

// Path: misskey.achievements_.types_.notes60000_
class _StringsMisskeyAchievementsTypesNotes60000ItIt extends _StringsMisskeyAchievementsTypesNotes60000EnUs {
	_StringsMisskeyAchievementsTypesNotes60000ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un quasar di Note';
	@override String get description => 'Hai inserito 60.000 Note';
}

// Path: misskey.achievements_.types_.notes70000_
class _StringsMisskeyAchievementsTypesNotes70000ItIt extends _StringsMisskeyAchievementsTypesNotes70000EnUs {
	_StringsMisskeyAchievementsTypesNotes70000ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un buco nero supermassiccio di Note';
	@override String get description => 'Hai inserito 70.000 Note';
}

// Path: misskey.achievements_.types_.notes80000_
class _StringsMisskeyAchievementsTypesNotes80000ItIt extends _StringsMisskeyAchievementsTypesNotes80000EnUs {
	_StringsMisskeyAchievementsTypesNotes80000ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Una galassia di Note';
	@override String get description => 'Hai inserito 80.000 Note';
}

// Path: misskey.achievements_.types_.notes90000_
class _StringsMisskeyAchievementsTypesNotes90000ItIt extends _StringsMisskeyAchievementsTypesNotes90000EnUs {
	_StringsMisskeyAchievementsTypesNotes90000ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un universo di Note!';
	@override String get description => 'Hai inserito 90.000 Note';
}

// Path: misskey.achievements_.types_.notes100000_
class _StringsMisskeyAchievementsTypesNotes100000ItIt extends _StringsMisskeyAchievementsTypesNotes100000EnUs {
	_StringsMisskeyAchievementsTypesNotes100000ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => 'Hai inserito 100.000 Note';
	@override String get flavor => 'Hai molto da scrivere?';
}

// Path: misskey.achievements_.types_.login3_
class _StringsMisskeyAchievementsTypesLogin3ItIt extends _StringsMisskeyAchievementsTypesLogin3EnUs {
	_StringsMisskeyAchievementsTypesLogin3ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiante I';
	@override String get description => 'Hai totalizzato 3 accessi!';
	@override String get flavor => 'Da oggi, chiamatemi Misskist';
}

// Path: misskey.achievements_.types_.login7_
class _StringsMisskeyAchievementsTypesLogin7ItIt extends _StringsMisskeyAchievementsTypesLogin7EnUs {
	_StringsMisskeyAchievementsTypesLogin7ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiante II';
	@override String get description => 'Hai totalizzato 7 accessi!';
	@override String get flavor => 'Ti sembra di avere la situazione sotto controllo?';
}

// Path: misskey.achievements_.types_.login15_
class _StringsMisskeyAchievementsTypesLogin15ItIt extends _StringsMisskeyAchievementsTypesLogin15EnUs {
	_StringsMisskeyAchievementsTypesLogin15ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiante III';
	@override String get description => 'Hai totalizzato 15 accessi!';
}

// Path: misskey.achievements_.types_.login30_
class _StringsMisskeyAchievementsTypesLogin30ItIt extends _StringsMisskeyAchievementsTypesLogin30EnUs {
	_StringsMisskeyAchievementsTypesLogin30ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist I';
	@override String get description => 'Hai totalizzato 30 accessi!';
}

// Path: misskey.achievements_.types_.login60_
class _StringsMisskeyAchievementsTypesLogin60ItIt extends _StringsMisskeyAchievementsTypesLogin60EnUs {
	_StringsMisskeyAchievementsTypesLogin60ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskeist II';
	@override String get description => 'Hai totalizzato 60 accessi!';
}

// Path: misskey.achievements_.types_.login100_
class _StringsMisskeyAchievementsTypesLogin100ItIt extends _StringsMisskeyAchievementsTypesLogin100EnUs {
	_StringsMisskeyAchievementsTypesLogin100ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskeist III';
	@override String get description => 'Hai totalizzato 100 accessi!';
	@override String get flavor => 'Violent Misskeist';
}

// Path: misskey.achievements_.types_.login200_
class _StringsMisskeyAchievementsTypesLogin200ItIt extends _StringsMisskeyAchievementsTypesLogin200EnUs {
	_StringsMisskeyAchievementsTypesLogin200ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regolare I livello';
	@override String get description => 'Hai totalizzato 200 accessi!';
}

// Path: misskey.achievements_.types_.login300_
class _StringsMisskeyAchievementsTypesLogin300ItIt extends _StringsMisskeyAchievementsTypesLogin300EnUs {
	_StringsMisskeyAchievementsTypesLogin300ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regolare II livello';
	@override String get description => 'Hai totalizzato 300 accessi!';
}

// Path: misskey.achievements_.types_.login400_
class _StringsMisskeyAchievementsTypesLogin400ItIt extends _StringsMisskeyAchievementsTypesLogin400EnUs {
	_StringsMisskeyAchievementsTypesLogin400ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regolare III livello';
	@override String get description => 'Hai totalizzato 400 accessi!';
}

// Path: misskey.achievements_.types_.login500_
class _StringsMisskeyAchievementsTypesLogin500ItIt extends _StringsMisskeyAchievementsTypesLogin500EnUs {
	_StringsMisskeyAchievementsTypesLogin500ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionista I livello';
	@override String get description => 'Hai totalizzato 500 accessi!';
	@override String get flavor => 'Amici cari, mi piacciono le Note';
}

// Path: misskey.achievements_.types_.login600_
class _StringsMisskeyAchievementsTypesLogin600ItIt extends _StringsMisskeyAchievementsTypesLogin600EnUs {
	_StringsMisskeyAchievementsTypesLogin600ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionista II livello';
	@override String get description => 'Hai totalizzato 600 accessi!';
}

// Path: misskey.achievements_.types_.login700_
class _StringsMisskeyAchievementsTypesLogin700ItIt extends _StringsMisskeyAchievementsTypesLogin700EnUs {
	_StringsMisskeyAchievementsTypesLogin700ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionista III livello';
	@override String get description => 'Hai totalizzato 700 accessi!';
}

// Path: misskey.achievements_.types_.login800_
class _StringsMisskeyAchievementsTypesLogin800ItIt extends _StringsMisskeyAchievementsTypesLogin800EnUs {
	_StringsMisskeyAchievementsTypesLogin800ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maestro di Note I livello';
	@override String get description => 'Hai totalizzato 800 accessi!';
}

// Path: misskey.achievements_.types_.login900_
class _StringsMisskeyAchievementsTypesLogin900ItIt extends _StringsMisskeyAchievementsTypesLogin900EnUs {
	_StringsMisskeyAchievementsTypesLogin900ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maestro di Note II livello';
	@override String get description => 'Hai totalizzato 900 accessi!';
}

// Path: misskey.achievements_.types_.login1000_
class _StringsMisskeyAchievementsTypesLogin1000ItIt extends _StringsMisskeyAchievementsTypesLogin1000EnUs {
	_StringsMisskeyAchievementsTypesLogin1000ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maestro di Note III livello';
	@override String get description => 'Hai totalizzato 1000 accessi!';
	@override String get flavor => 'Grazie per aver usato Misskey!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _StringsMisskeyAchievementsTypesNoteClipped1ItIt extends _StringsMisskeyAchievementsTypesNoteClipped1EnUs {
	_StringsMisskeyAchievementsTypesNoteClipped1ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Devo clippare!';
	@override String get description => 'Hai raccolto la tua prima Nota in una Clip';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _StringsMisskeyAchievementsTypesNoteFavorited1ItIt extends _StringsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesNoteFavorited1ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Guarda le stelle';
	@override String get description => 'Aggiungi una Nota ai preferiti per la prima volta';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _StringsMisskeyAchievementsTypesMyNoteFavorited1ItIt extends _StringsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesMyNoteFavorited1ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fornitura stelline';
	@override String get description => 'Qualcuno ha preferito una delle tue Note';
}

// Path: misskey.achievements_.types_.profileFilled_
class _StringsMisskeyAchievementsTypesProfileFilledItIt extends _StringsMisskeyAchievementsTypesProfileFilledEnUs {
	_StringsMisskeyAchievementsTypesProfileFilledItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preparazione perfetta!';
	@override String get description => 'Imposta il tuo profilo';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _StringsMisskeyAchievementsTypesMarkedAsCatItIt extends _StringsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_StringsMisskeyAchievementsTypesMarkedAsCatItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Io sono un gatto';
	@override String get description => 'Aggiungi le orecchie da gatto al tuo profilo';
	@override String get flavor => 'Ti chiamerò...';
}

// Path: misskey.achievements_.types_.following1_
class _StringsMisskeyAchievementsTypesFollowing1ItIt extends _StringsMisskeyAchievementsTypesFollowing1EnUs {
	_StringsMisskeyAchievementsTypesFollowing1ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Il mio primo Follow';
	@override String get description => 'Hai seguito il tuo primo profilo';
}

// Path: misskey.achievements_.types_.following10_
class _StringsMisskeyAchievementsTypesFollowing10ItIt extends _StringsMisskeyAchievementsTypesFollowing10EnUs {
	_StringsMisskeyAchievementsTypesFollowing10ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Segui, segui!';
	@override String get description => 'Hai seguito 10 profili';
}

// Path: misskey.achievements_.types_.following50_
class _StringsMisskeyAchievementsTypesFollowing50ItIt extends _StringsMisskeyAchievementsTypesFollowing50EnUs {
	_StringsMisskeyAchievementsTypesFollowing50ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tanti amici';
	@override String get description => 'Hai seguito 50 profili';
}

// Path: misskey.achievements_.types_.following100_
class _StringsMisskeyAchievementsTypesFollowing100ItIt extends _StringsMisskeyAchievementsTypesFollowing100EnUs {
	_StringsMisskeyAchievementsTypesFollowing100ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cento amici';
	@override String get description => 'Hai seguito 100 profili';
}

// Path: misskey.achievements_.types_.following300_
class _StringsMisskeyAchievementsTypesFollowing300ItIt extends _StringsMisskeyAchievementsTypesFollowing300EnUs {
	_StringsMisskeyAchievementsTypesFollowing300ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sovraccarico di amici';
	@override String get description => 'Hai seguito 300 profili';
}

// Path: misskey.achievements_.types_.followers1_
class _StringsMisskeyAchievementsTypesFollowers1ItIt extends _StringsMisskeyAchievementsTypesFollowers1EnUs {
	_StringsMisskeyAchievementsTypesFollowers1ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Il primo profilo tuo Follower';
	@override String get description => 'Hai ottenuto il tuo primo profilo Follower';
}

// Path: misskey.achievements_.types_.followers10_
class _StringsMisskeyAchievementsTypesFollowers10ItIt extends _StringsMisskeyAchievementsTypesFollowers10EnUs {
	_StringsMisskeyAchievementsTypesFollowers10ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Follow me!';
	@override String get description => 'Hai ottenuto 10 profili Follower';
}

// Path: misskey.achievements_.types_.followers50_
class _StringsMisskeyAchievementsTypesFollowers50ItIt extends _StringsMisskeyAchievementsTypesFollowers50EnUs {
	_StringsMisskeyAchievementsTypesFollowers50ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un gregge di Follower';
	@override String get description => 'Hai ottenuto 50 Follower';
}

// Path: misskey.achievements_.types_.followers100_
class _StringsMisskeyAchievementsTypesFollowers100ItIt extends _StringsMisskeyAchievementsTypesFollowers100EnUs {
	_StringsMisskeyAchievementsTypesFollowers100ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Popolare';
	@override String get description => 'Hai ottenuto 100 profili Follower';
}

// Path: misskey.achievements_.types_.followers300_
class _StringsMisskeyAchievementsTypesFollowers300ItIt extends _StringsMisskeyAchievementsTypesFollowers300EnUs {
	_StringsMisskeyAchievementsTypesFollowers300ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mettetevi in fila';
	@override String get description => 'Hai ottenuto 300 Follower';
}

// Path: misskey.achievements_.types_.followers500_
class _StringsMisskeyAchievementsTypesFollowers500ItIt extends _StringsMisskeyAchievementsTypesFollowers500EnUs {
	_StringsMisskeyAchievementsTypesFollowers500ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trasmettitore';
	@override String get description => 'Hai ottenuto 500 Follower';
}

// Path: misskey.achievements_.types_.followers1000_
class _StringsMisskeyAchievementsTypesFollowers1000ItIt extends _StringsMisskeyAchievementsTypesFollowers1000EnUs {
	_StringsMisskeyAchievementsTypesFollowers1000ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Influenzer';
	@override String get description => 'Hai superato i 1.000 profili Follower';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _StringsMisskeyAchievementsTypesCollectAchievements30ItIt extends _StringsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_StringsMisskeyAchievementsTypesCollectAchievements30ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Collezionista di successi';
	@override String get description => 'Hai raggiunto 30 obiettivi';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _StringsMisskeyAchievementsTypesViewAchievements3minItIt extends _StringsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_StringsMisskeyAchievementsTypesViewAchievements3minItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mi piacciono i risultati';
	@override String get description => 'Guarda la tua collezione di obiettivi per almeno 3 minuti';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _StringsMisskeyAchievementsTypesILoveMisskeyItIt extends _StringsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_StringsMisskeyAchievementsTypesILoveMisskeyItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'I LOVE Misskey';
	@override String get description => 'Pubblica «I ♥ #Misskey»';
	@override String get flavor => 'Grazie per aver utilizzato Misskey! Dal team di sviluppo';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _StringsMisskeyAchievementsTypesFoundTreasureItIt extends _StringsMisskeyAchievementsTypesFoundTreasureEnUs {
	_StringsMisskeyAchievementsTypesFoundTreasureItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Caccia al tesoro';
	@override String get description => 'Hai trovato un tesoro nascosto';
}

// Path: misskey.achievements_.types_.client30min_
class _StringsMisskeyAchievementsTypesClient30minItIt extends _StringsMisskeyAchievementsTypesClient30minEnUs {
	_StringsMisskeyAchievementsTypesClient30minItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Piccola grande pausa';
	@override String get description => 'Hai passato più di 30 minuti su Misskey';
}

// Path: misskey.achievements_.types_.client60min_
class _StringsMisskeyAchievementsTypesClient60minItIt extends _StringsMisskeyAchievementsTypesClient60minEnUs {
	_StringsMisskeyAchievementsTypesClient60minItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskey negli occhi';
	@override String get description => 'Hai letto Misskey almeno per un\'ora';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _StringsMisskeyAchievementsTypesNoteDeletedWithin1minItIt extends _StringsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_StringsMisskeyAchievementsTypesNoteDeletedWithin1minItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ooops!';
	@override String get description => 'Hai eliminato una nota entro un minuto dalla sua pubblicazione';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _StringsMisskeyAchievementsTypesPostedAtLateNightItIt extends _StringsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_StringsMisskeyAchievementsTypesPostedAtLateNightItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biassanot!';
	@override String get description => 'Hai pubblicato una nota in tarda notte';
	@override String get flavor => 'Andiamo a dormire presto';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _StringsMisskeyAchievementsTypesPostedAt0min0secItIt extends _StringsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_StringsMisskeyAchievementsTypesPostedAt0min0secItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mezzanotte';
	@override String get description => 'Hai pubblicato una Nota a mezzanotte in punto';
	@override String get flavor => 'tic, tac, tic, tac! Gong!';
}

// Path: misskey.achievements_.types_.selfQuote_
class _StringsMisskeyAchievementsTypesSelfQuoteItIt extends _StringsMisskeyAchievementsTypesSelfQuoteEnUs {
	_StringsMisskeyAchievementsTypesSelfQuoteItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Autoreferenziale';
	@override String get description => 'Hai citato una delle tue Note';
}

// Path: misskey.achievements_.types_.htl20npm_
class _StringsMisskeyAchievementsTypesHtl20npmItIt extends _StringsMisskeyAchievementsTypesHtl20npmEnUs {
	_StringsMisskeyAchievementsTypesHtl20npmItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Timeline scorrevole';
	@override String get description => 'La tua Timeline personale ha superato la velocità di 20 Note orarie (Note al minuto)';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _StringsMisskeyAchievementsTypesViewInstanceChartItIt extends _StringsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_StringsMisskeyAchievementsTypesViewInstanceChartItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analista';
	@override String get description => 'Visualizza i grafici dell\'istanza';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadItIt extends _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hello, world!';
	@override String get description => 'Hai scritto «Hello world» nel blocco appunti';
}

// Path: misskey.achievements_.types_.open3windows_
class _StringsMisskeyAchievementsTypesOpen3windowsItIt extends _StringsMisskeyAchievementsTypesOpen3windowsEnUs {
	_StringsMisskeyAchievementsTypesOpen3windowsItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apri le finestre!';
	@override String get description => 'Hai aperto almeno 3 finestre contemporaneamente';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceItIt extends _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_StringsMisskeyAchievementsTypesDriveFolderCircularReferenceItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Riferimento circolare';
	@override String get description => 'Hai provato a nidificare in modo ricorsivo le cartelle del Drive';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _StringsMisskeyAchievementsTypesReactWithoutReadItIt extends _StringsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_StringsMisskeyAchievementsTypesReactWithoutReadItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hai letto bene?';
	@override String get description => 'Hai reagito ad una Nota più lunga di 100 caratteri entro 3 secondi dalla sua pubblicazione';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _StringsMisskeyAchievementsTypesClickedClickHereItIt extends _StringsMisskeyAchievementsTypesClickedClickHereEnUs {
	_StringsMisskeyAchievementsTypesClickedClickHereItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Clicca qui';
	@override String get description => 'Hai cliccato qui';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _StringsMisskeyAchievementsTypesJustPlainLuckyItIt extends _StringsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_StringsMisskeyAchievementsTypesJustPlainLuckyItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Proprio fortunato';
	@override String get description => 'Ottenuto con una probabilità dello 0,01% ogni 10 secondi';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _StringsMisskeyAchievementsTypesSetNameToSyuiloItIt extends _StringsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_StringsMisskeyAchievementsTypesSetNameToSyuiloItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Complesso divino';
	@override String get description => 'Hai impostati il tuo nome in «syuilo»';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1ItIt extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated1ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Primo Anniversario';
	@override String get description => 'È passato un anno da quando hai creato il profilo';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2ItIt extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated2ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Secondo Anniversario';
	@override String get description => 'Sono passati due anni da quando hai creato il profilo';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3ItIt extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated3ItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Terzo Anniversario';
	@override String get description => 'Sono passati tre anni da quando hai creato il profilo';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _StringsMisskeyAchievementsTypesLoggedInOnBirthdayItIt extends _StringsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnBirthdayItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Buon compleanno!';
	@override String get description => 'Hai effettuato l\'accesso il giorno del tuo compleanno';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayItIt extends _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Buon anno nuovo!';
	@override String get description => 'Hai usato effettuato l\'accesso il giorno di capodanno';
	@override String get flavor => 'Anche quest\'anno, grazie per il tuo continuo supporto a questa istanza';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _StringsMisskeyAchievementsTypesCookieClickedItIt extends _StringsMisskeyAchievementsTypesCookieClickedEnUs {
	_StringsMisskeyAchievementsTypesCookieClickedItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Clicca il biscotto';
	@override String get description => 'Hai giocato a cliccare il cookie';
	@override String get flavor => 'È il sito giusto?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _StringsMisskeyAchievementsTypesBrainDiverItIt extends _StringsMisskeyAchievementsTypesBrainDiverEnUs {
	_StringsMisskeyAchievementsTypesBrainDiverItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Pubblica un link a Brain Diver';
	@override String get flavor => 'Sulle note di Brain Diver';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _StringsMisskeyAchievementsTypesSmashTestNotificationButtonItIt extends _StringsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_StringsMisskeyAchievementsTypesSmashTestNotificationButtonItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Prove eccessive';
	@override String get description => 'Hai provato le notifiche consecutivamente in un periodo di tempo molto breve';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _StringsMisskeyAchievementsTypesTutorialCompletedItIt extends _StringsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_StringsMisskeyAchievementsTypesTutorialCompletedItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Attestato di partecipazione al corso per principianti di Misskey';
	@override String get description => 'Ha completato il tutorial';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadItIt extends _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_StringsMisskeyAchievementsTypesBubbleGameExplodingHeadItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => 'Estrai l\'oggetto più grande dal Bubble Game';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadItIt extends _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Doppio 🤯';
	@override String get description => 'Due oggetti più grossi contemporaneamente nel Bubble Game';
	@override String get flavor => 'Ha le dimensioni di una bento-box 🤯 🤯';
}

// Path: misskey.pages_.blocks.note_
class _StringsMisskeyPagesBlocksNoteItIt extends _StringsMisskeyPagesBlocksNoteEnUs {
	_StringsMisskeyPagesBlocksNoteItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get id => 'ID nota';
	@override String get idDescription => 'Qui puoi anche incollare l\'URL della nota che vuoi impostare.';
	@override String get detailed => 'Visualizzazione dettagliata';
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsItIt extends _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsInvalidParamsItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Parametri non validi';
	@override String get description => 'Mancano alcuni parametri per il caricamento, per favore, verifica la URL.';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedItIt extends _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Questa risorsa esterna non è supportata';
	@override String get description => 'Il tipo di risorsa ottenuta da questo sito esterno non è supportato. Si prega di contattare la fonte di distribuizone.';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchItIt extends _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsFailedToFetchItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Impossibile ottenere i dati';
	@override String get fetchErrorDescription => 'Si è verificato un errore di comunicazione con la fonte. Se riprovare di nuovo non aiuta, contattare la fonte di distribuzione.';
	@override String get parseErrorDescription => 'Si è verificato un errore elaborando i dati ottenuti dalla fonte. Per favore contattare il distributore.';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedItIt extends _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dati non verificabili, diversi da quelli della fonte';
	@override String get description => 'Si è verificato un errore durante la verifica di integrità dei dati ottenuti. Per sicurezza, l\'installazione è stata interrotta. Contattare la fonte di distribuzione.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedItIt extends _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Errore AiScript';
	@override String get description => 'Sebbene i dati ottenuti siano validi, non è stato possibile interpretarli, perché si è verificato un errore durante l\'analisi di AiScript. Si prega di contattare gli autori del componente aggiuntivo. Potresti controllare la console di Javascript per ottenere dettagli aggiuntivi.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedItIt extends _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Impossibile installare il componente aggiuntivo';
	@override String get description => 'Si è verificato un impedimento durante l\'installazione del componente aggiuntivo. Per favore riprova e consulta la console di Javascript per ottenere dettagli aggiuntivi.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedItIt extends _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Impossibile interpretare la variazione grafica';
	@override String get description => 'Sebbene i dati siano stati ottenuti, non è stato possibile interpretarli, si è verificato un errore durante l\'analisi della variazione grafica. Si prega di contattare gli autori. Potresti anche controllare la console di Javascript per ottenere dettagli aggiuntivi.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedItIt extends _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Impossibile installare la variazione grafica';
	@override String get description => 'Si è verificato un impedimento durante l\'installazione della variazione grafica. Per favore riprova e consulta la console di Javascript per ottenere dettagli aggiuntivi.';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _StringsMisskeyInitialTutorialPostNoteCwExampleNoteItIt extends _StringsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_StringsMisskeyInitialTutorialPostNoteCwExampleNoteItIt._(_StringsItIt root) : this._root = root, super._(root);

	@override final _StringsItIt _root; // ignore: unused_field

	// Translations
	@override String get cw => 'Attenzione: contiene zuccheri';
	@override String get note => 'Ho appena mangiato una ciambella ricoperta di cioccolato 🍩😋';
}
