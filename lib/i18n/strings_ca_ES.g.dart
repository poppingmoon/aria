///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint

part of 'strings.g.dart';

// Path: <root>
class _StringsCaEs extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsCaEs.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.caEs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <ca-ES>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	@override late final _StringsCaEs _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAriaCaEs aria = _StringsAriaCaEs._(_root);
	@override late final _StringsMisskeyCaEs misskey = _StringsMisskeyCaEs._(_root);
}

// Path: aria
class _StringsAriaCaEs extends _StringsAriaEnUs {
	_StringsAriaCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Estàs segur que vols deixar de seguir '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria està sent traduït a diferents idiomes per voluntaris. Pots ajudar aquí '),
		link,
		const TextSpan(text: '.'),
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' Usuaris es troben en línia '),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Impulsat per '),
		user,
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Estàs segur que vols deixar de seguir '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'La publicació de '),
		name,
		const TextSpan(text: ' conte material sensible'),
	]);
	@override TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'La publicació de '),
		name,
		const TextSpan(text: ' conte material sensible'),
	]);
}

// Path: misskey
class _StringsMisskeyCaEs extends _StringsMisskeyEnUs {
	_StringsMisskeyCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Català';
	@override String get headlineMisskey => 'Una xarxa connectada per notes';
	@override String get introMisskey => 'Benvingut! Misskey és un servei de microblogging descentralitzat de codi obert.\nCrea "notes" per compartir els teus pensaments amb tots els que t\'envolten. 📡\nAmb "reaccions", també pots expressar ràpidament els teus sentiments sobre les notes de tothom. 👍\nExplorem un món nou! 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} És un del serveis (anomenats instàncies de Misskey) que utilitzen la plataforma de codi obert <b>Misskey</b>.';
	@override String monthAndDay({required Object day, required Object month}) => '${day}/${month}';
	@override String get search => 'Cercar';
	@override String get notifications => 'Notificacions';
	@override String get username => 'Nom d\'usuari';
	@override String get password => 'Contrasenya';
	@override String get forgotPassword => 'Contrasenya oblidada';
	@override String get fetchingAsApObject => 'Cercant en el Fediverse...';
	@override String get ok => 'OK';
	@override String get gotIt => 'Ho he entès!';
	@override String get cancel => 'Cancel·lar';
	@override String get noThankYou => 'No, gràcies';
	@override String get enterUsername => 'Introdueix el teu nom d\'usuari';
	@override String renotedBy({required Object user}) => 'Impulsat per ${user}';
	@override String get noNotes => 'Cap nota';
	@override String get noNotifications => 'Cap notificació';
	@override String get instance => 'Servidor';
	@override String get settings => 'Preferències';
	@override String get notificationSettings => 'Paràmetres de notificacions';
	@override String get basicSettings => 'Configuració bàsica';
	@override String get otherSettings => 'Configuració avançada';
	@override String get openInWindow => 'Obrir en una nova finestra';
	@override String get profile => 'Perfil';
	@override String get timeline => 'Línia de temps';
	@override String get noAccountDescription => 'Aquest usuari encara no ha escrit la seva biografia.';
	@override String get login => 'Iniciar sessió';
	@override String get loggingIn => 'Identificant-se';
	@override String get logout => 'Tancar la sessió';
	@override String get signup => 'Registrar-se';
	@override String get uploading => 'Pujant...';
	@override String get save => 'Desa';
	@override String get users => 'Usuaris';
	@override String get addUser => 'Afegir un usuari';
	@override String get favorite => 'Afegir a preferits';
	@override String get favorites => 'Favorits';
	@override String get unfavorite => 'Eliminar dels preferits';
	@override String get favorited => 'Afegit als preferits.';
	@override String get alreadyFavorited => 'Ja s\'ha afegit als preferits.';
	@override String get cantFavorite => 'No s\'ha pogut afegir als preferits.';
	@override String get pin => 'Fixar al perfil';
	@override String get unpin => 'Para de fixar del perfil';
	@override String get copyContent => 'Copiar el contingut';
	@override String get copyLink => 'Copiar l\'enllaç';
	@override String get copyLinkRenote => 'Copiar l\'enllaç de la renota';
	@override String get delete => 'Elimina';
	@override String get deleteAndEdit => 'Elimina i edita';
	@override String get deleteAndEditConfirm => 'Segur que vols eliminar aquesta publicació i editar-la? Perdràs totes les reaccions, impulsos i respostes.';
	@override String get addToList => 'Afegir a una llista';
	@override String get addToAntenna => 'Afegir a l\'antena';
	@override String get sendMessage => 'Enviar un missatge';
	@override String get copyRSS => 'Copiar RSS';
	@override String get copyUsername => 'Copiar nom d\'usuari';
	@override String get copyUserId => 'Copiar ID d\'usuari';
	@override String get copyNoteId => 'Copiar ID de nota';
	@override String get copyFileId => 'Copiar ID d\'arxiu';
	@override String get copyFolderId => 'Copiar ID de carpeta';
	@override String get copyProfileUrl => 'Copiar URL del perfil';
	@override String get searchUser => 'Cercar un usuari';
	@override String get reply => 'Respondre';
	@override String get loadMore => 'Carregar més';
	@override String get showMore => 'Veure més';
	@override String get showLess => 'Mostra menys';
	@override String get youGotNewFollower => 't\'ha seguit';
	@override String get receiveFollowRequest => 'Sol·licitud de seguiment rebuda';
	@override String get followRequestAccepted => 'Sol·licitud de seguiment acceptada';
	@override String get mention => 'Menció';
	@override String get mentions => 'Mencions';
	@override String get directNotes => 'Notes directes';
	@override String get importAndExport => 'Importar / Exportar';
	@override String get import => 'Importar';
	@override String get export => 'Exporta';
	@override String get files => 'Fitxers';
	@override String get download => 'Baixar';
	@override String driveFileDeleteConfirm({required Object name}) => 'Estàs segur que vols suprimir el fitxer "${name}"? Les notes associades a aquest fitxer adjunt també se suprimiran.';
	@override String unfollowConfirm({required Object name}) => 'Estàs segur que vols deixar de seguir ${name}?';
	@override String get exportRequested => 'Has sol·licitat una exportació. Això pot trigar una estona. S\'afegirà a la teva unitat un cop completat.';
	@override String get importRequested => 'Has sol·licitat una importació. Això pot trigar una estona.';
	@override String get lists => 'Llistes';
	@override String get noLists => 'No tens cap llista';
	@override String get note => 'Nota';
	@override String get notes => 'Notes';
	@override String get following => 'Seguint';
	@override String get followers => 'Seguidors';
	@override String get followsYou => 'Et segueix';
	@override String get createList => 'Crear llista';
	@override String get manageLists => 'Gestionar les llistes';
	@override String get error => 'Error';
	@override String get somethingHappened => 'S\'ha produït un error';
	@override String get retry => 'Torna-ho a intentar';
	@override String get pageLoadError => 'S\'ha produït un error en carregar la pàgina';
	@override String get pageLoadErrorDescription => 'Això normalment es deu a errors de xarxa o a la memòria cau del navegador. Prova d\'esborrar la memòria cau i torna-ho a provar després d\'esperar una estona.';
	@override String get serverIsDead => 'Aquest servidor no respon. Espera una estona i torna-ho a provar.';
	@override String get youShouldUpgradeClient => 'Per veure aquesta pàgina, actualitzeu-la per actualitzar el vostre client.';
	@override String get enterListName => 'Introdueix un nom per a la llista';
	@override String get privacy => 'Privadesa';
	@override String get makeFollowManuallyApprove => 'Les sol·licituds de seguiment requereixen aprovació';
	@override String get defaultNoteVisibility => 'Visibilitat per defecte';
	@override String get follow => 'Seguint';
	@override String get followRequest => 'Enviar la sol·licitud de seguiment';
	@override String get followRequests => 'Sol·licituds de seguiment';
	@override String get unfollow => 'Deixar de seguir';
	@override String get followRequestPending => 'Sol·licituds de seguiment pendents';
	@override String get enterEmoji => 'Introduir un emoji';
	@override String get renote => 'Impulsa';
	@override String get unrenote => 'Anul·la l\'impuls';
	@override String get renoted => 'S\'ha impulsat';
	@override String get cantRenote => 'No es pot impulsar aquesta publicació';
	@override String get cantReRenote => 'No es pot impulsar l\'impuls.';
	@override String get quote => 'Cita';
	@override String get inChannelRenote => 'Renotar només al Canal';
	@override String get inChannelQuote => 'Citar només al Canal';
	@override String get pinnedNote => 'Nota fixada';
	@override String get pinned => 'Fixar al perfil';
	@override String get you => 'Tu';
	@override String get clickToShow => 'Fes clic per mostrar';
	@override String get sensitive => 'NSFW';
	@override String get add => 'Afegir';
	@override String get reaction => 'Reaccions';
	@override String get reactions => 'Reaccions';
	@override String get emojiPicker => 'Selecció d\'emojis';
	@override String get pinnedEmojisForReactionSettingDescription => 'Selecciona l\'emoji amb el qual reaccionar';
	@override String get pinnedEmojisSettingDescription => 'Selecciona l\'emoji amb el qual reaccionar';
	@override String get emojiPickerDisplay => 'Visualitza el selector d\'emojis';
	@override String get overwriteFromPinnedEmojisForReaction => 'Reemplaça els emojis de la reacció';
	@override String get overwriteFromPinnedEmojis => 'Sobreescriu des dels emojis fixats';
	@override String get reactionSettingDescription2 => 'Arrossega per reordenar, fes clic per suprimir, prem "+" per afegir.';
	@override String get rememberNoteVisibility => 'Recorda la configuració de visibilitat de les notes';
	@override String get attachCancel => 'Eliminar el fitxer adjunt';
	@override String get deleteFile => 'Esborrar l\'arxiu ';
	@override String get markAsSensitive => 'Marcar com a NSFW';
	@override String get unmarkAsSensitive => 'Deixar de marcar com a sensible';
	@override String get enterFileName => 'Defineix nom del fitxer';
	@override String get mute => 'Silencia';
	@override String get unmute => 'Deixa de silenciar';
	@override String get renoteMute => 'Silenciar Renotes';
	@override String get renoteUnmute => 'Treure el silenci de les renotes';
	@override String get block => 'Bloqueja';
	@override String get unblock => 'Desbloqueja';
	@override String get suspend => 'Suspèn';
	@override String get unsuspend => 'Deixa de suspendre';
	@override String get blockConfirm => 'Vols bloquejar?';
	@override String get unblockConfirm => 'Vols desbloquejar-lo?';
	@override String get suspendConfirm => 'Estàs segur que vols suspendre aquest compte?';
	@override String get unsuspendConfirm => 'Estàs segur que vols treure la suspensió d\'aquest compte?';
	@override String get selectList => 'Tria una llista';
	@override String get editList => 'Editar llista';
	@override String get selectChannel => 'Selecciona un canal';
	@override String get selectAntenna => 'Tria una antena';
	@override String get editAntenna => 'Modificar antena';
	@override String get selectWidget => 'Triar un giny';
	@override String get editWidgets => 'Editar ginys';
	@override String get editWidgetsExit => 'Fet';
	@override String get customEmojis => 'Emojis personalitzats';
	@override String get emoji => 'Emoji';
	@override String get emojis => 'Emoji';
	@override String get emojiName => 'Nom del emoji';
	@override String get emojiUrl => 'URL del emoji';
	@override String get addEmoji => 'Afegeix un emoji';
	@override String get settingGuide => 'Configuració recomanada';
	@override String get cacheRemoteFiles => 'Emmagatzemar fitxers remots';
	@override String get cacheRemoteFilesDescription => 'Quan aquesta opció està desactivada, els fitxers remots es carreguen directament des del servidor remot. Si desactiveu això, es reduirà l\'ús d\'emmagatzematge, però augmentarà el trànsit, ja que no es generaran miniatures.';
	@override String get youCanCleanRemoteFilesCache => 'Pots netejar la memòria cau fent clic al botó de la paperera🗑️ a l\'administrador d\'arxius.';
	@override String get cacheRemoteSensitiveFiles => 'Posar a la memòria cau arxius remots sensibles';
	@override String get cacheRemoteSensitiveFilesDescription => 'Quan aquesta opció és desactiva, els arxius remots sensibles es carregant directament del servidor d\'origen sense que es guardin a la memòria cau.';
	@override String get flagAsBot => 'Marca aquest compte com a bot';
	@override String get flagAsBotDescription => 'Marca aquest compte com a bot';
	@override String get flagAsCat => 'Marca aquest compte com a gat';
	@override String get flagAsCatDescription => 'Activeu aquesta opció per marcar aquest compte com a gat.';
	@override String get flagShowTimelineReplies => 'Mostra les respostes a la línia de temps';
	@override String get flagShowTimelineRepliesDescription => 'Mostra les respostes a la línia de temps';
	@override String get autoAcceptFollowed => 'Aprova automàticament les sol·licituds de seguiment dels usuaris que segueixes';
	@override String get addAccount => 'Afegeix un compte';
	@override String get reloadAccountsList => 'Recarregar la llista de contactes';
	@override String get loginFailed => 'S\'ha produït un error al accedir.';
	@override String get showOnRemote => 'Navega més en el perfil original';
	@override String get general => 'General';
	@override String get wallpaper => 'Fons de Pantalla';
	@override String get setWallpaper => 'Defineix el fons de pantalla';
	@override String get removeWallpaper => 'Elimina el fons de pantalla';
	@override String searchWith({required Object q}) => 'Cerca: ${q}';
	@override String get youHaveNoLists => 'No tens cap llista';
	@override String followConfirm({required Object name}) => 'Estàs segur que vols deixar de seguir ${name}?';
	@override String get proxyAccount => 'Compte de proxy';
	@override String get proxyAccountDescription => 'Un compte proxy és un compte que actua com a seguidor remot per als usuaris en determinades condicions. Per exemple, quan un usuari afegeix un usuari remot a la llista, l\'activitat de l\'usuari remot no es lliurarà al servidor si cap usuari local segueix aquest usuari, de manera que el compte proxy el seguirà.';
	@override String get host => 'Amfitrió';
	@override String get selectUser => 'Selecciona usuari/a';
	@override String get recipient => 'Destinatari';
	@override String get annotation => 'Comentaris';
	@override String get federation => 'Federació';
	@override String get instances => 'Servidors';
	@override String get registeredAt => 'Registrat a';
	@override String get latestRequestReceivedAt => 'Última petició rebuda';
	@override String get latestStatus => 'Últim estat';
	@override String get storageUsage => 'Emmagatzematge utilitzat';
	@override String get charts => 'Gràfics';
	@override String get perHour => 'Per hora';
	@override String get perDay => 'Per dia';
	@override String get stopActivityDelivery => 'Deixa d\'enviar activitats';
	@override String get blockThisInstance => 'Deixa d\'enviar activitats';
	@override String get silenceThisInstance => 'Silencia aquesta instància ';
	@override String get operations => 'Accions';
	@override String get software => 'Programari';
	@override String get version => 'Versió';
	@override String get metadata => 'Metadades';
	@override String withNFiles({required Object n}) => '${n} fitxer(s)';
	@override String get monitor => 'Monitor';
	@override String get jobQueue => 'Cua de tasques';
	@override String get cpuAndMemory => 'CPU i memòria';
	@override String get network => 'Xarxa';
	@override String get disk => 'Disc';
	@override String get instanceInfo => 'Informació del fitxer d\'instal·lació';
	@override String get statistics => 'Estadístiques';
	@override String get clearQueue => 'Esborrar la cua';
	@override String get clearQueueConfirmTitle => 'Esteu segur que voleu esborrar la cua?';
	@override String get clearQueueConfirmText => 'Les notes no lliurades que quedin a la cua no es federaran. Normalment aquesta operació no és necessària.';
	@override String get clearCachedFiles => 'Esborra la memòria cau';
	@override String get clearCachedFilesConfirm => 'Segur que voleu eliminar tots els fitxers de la memòria cau?';
	@override String get blockedInstances => 'Instàncies bloquejades';
	@override String get blockedInstancesDescription => 'Llista els enllaços d\'amfitrió de les instàncies que vols bloquejar separades per un salt de pàgina. Les instàncies llistades no podran comunicar-se amb aquesta instància.';
	@override String get silencedInstances => 'Instàncies silenciades';
	@override String get silencedInstancesDescription => 'Llista els enllaços d\'amfitrió de les instàncies que vols silenciar. Tots els comptes de les instàncies llistades s\'establiran com silenciades i només podran fer sol·licitacions de seguiment, i no podran mencionar als comptes locals si no els segueixen. Això no afectarà les instàncies bloquejades.';
	@override String get muteAndBlock => 'Silencia i bloca';
	@override String get mutedUsers => 'Usuaris silenciats';
	@override String get blockedUsers => 'Usuaris bloquejats';
	@override String get noUsers => 'No hi ha usuaris';
	@override String get editProfile => 'Edita el perfil';
	@override String get noteDeleteConfirm => 'Segur que voleu eliminar aquesta publicació?';
	@override String get pinLimitExceeded => 'No podeu fixar més publicacions';
	@override String get intro => 'La instal·lació de Misskey ha acabat! Crea un usuari d\'administrador.';
	@override String get done => 'Fet';
	@override String get processing => 'S\'està processant...';
	@override String get preview => 'Vista prèvia';
	@override String get default_ => 'Per defecte';
	@override String defaultValueIs({required Object value}) => 'Per defecte: ${value}';
	@override String get noCustomEmojis => 'Cap emoji personalitzat';
	@override String get noJobs => 'No hi ha feines';
	@override String get federating => 'Federant';
	@override String get blocked => 'Bloquejat';
	@override String get suspended => 'Suspés';
	@override String get all => 'tot';
	@override String get subscribing => 'Subscrit a';
	@override String get publishing => 'S\'està publicant';
	@override String get notResponding => 'Sense resposta';
	@override String get instanceFollowing => 'Seguits del servidor';
	@override String get instanceFollowers => 'Seguidors del servidor';
	@override String get instanceUsers => 'Usuaris del servidor';
	@override String get changePassword => 'Canvia la contrasenya';
	@override String get security => 'Seguretat';
	@override String get retypedNotMatch => 'L\'entrada no coincideix';
	@override String get currentPassword => 'Contrasenya actual';
	@override String get newPassword => 'Contrasenya nova';
	@override String get newPasswordRetype => 'Contrasenya nou (repeteix-la)';
	@override String get attachFile => 'Adjunta fitxers';
	@override String get more => 'Més';
	@override String get featured => 'Destacat';
	@override String get usernameOrUserId => 'Nom o ID d\'usuari';
	@override String get noSuchUser => 'No s\'ha trobat l\'usuari';
	@override String get lookup => 'Cerca';
	@override String get announcements => 'Anuncis';
	@override String get imageUrl => 'URL de la imatge';
	@override String get remove => 'Eliminar';
	@override String get removed => 'Eliminat';
	@override String removeAreYouSure({required Object x}) => 'Segur que voleu retirar «${x}»?';
	@override String deleteAreYouSure({required Object x}) => 'Segur que voleu retirar «${x}»?';
	@override String get resetAreYouSure => 'Segur que voleu restablir-ho?';
	@override String get areYouSure => 'Està segur?';
	@override String get saved => 'S\'ha desat';
	@override String get messaging => 'Xat';
	@override String get upload => 'Puja';
	@override String get keepOriginalUploading => 'Guarda la imatge original';
	@override String get keepOriginalUploadingDescription => 'Guarda la imatge pujada com hi és. Si està apagat, una versió per a la visualització a la xarxa serà generada quan sigui pujada.';
	@override String get fromDrive => 'Des de la unitat';
	@override String get fromUrl => 'Des d\'un enllaç';
	@override String get uploadFromUrl => 'Carrega des d\'un enllaç';
	@override String get uploadFromUrlDescription => 'Enllaç del fitxer que vols carregar';
	@override String get uploadFromUrlRequested => 'Càrrega sol·licitada';
	@override String get uploadFromUrlMayTakeTime => 'La càrrega des de l\'enllaç pot prendre un temps';
	@override String get explore => 'Explora';
	@override String get messageRead => 'Vist';
	@override String get noMoreHistory => 'No hi resta més per veure';
	@override String get startMessaging => 'Començar a xatejar';
	@override String nUsersRead({required Object n}) => 'Vist per ${n}';
	@override String agreeTo({required Object x0}) => 'Accepto que ${x0}';
	@override String get agree => 'Hi estic d\'acord';
	@override String get agreeBelow => 'Hi estic d\'acord amb el següent';
	@override String get basicNotesBeforeCreateAccount => 'Notes importants';
	@override String get termsOfService => 'Condicions d\'ús';
	@override String get start => 'Comença';
	@override String get home => 'Inici';
	@override String get remoteUserCaution => 'Ja que aquest usuari resideix a una instància remota, la informació mostrada es podria trobar incompleta.';
	@override String get activity => 'Activitat';
	@override String get images => 'Imatges';
	@override String get image => 'Imatges';
	@override String get birthday => 'Aniversari';
	@override String yearsOld({required Object age}) => '${age} anys';
	@override String get registeredDate => 'Data de registre';
	@override String get location => 'Ubicació';
	@override String get theme => 'Tema';
	@override String get themeForLightMode => 'Tema del mode clar';
	@override String get themeForDarkMode => 'Tema del mode fosc';
	@override String get light => 'Clar';
	@override String get dark => 'Fosc';
	@override String get lightThemes => 'Temes clars';
	@override String get darkThemes => 'Temes foscos';
	@override String get syncDeviceDarkMode => 'Sincronitza el mode fosc amb la configuració del dispositiu';
	@override String get drive => 'Unitat';
	@override String get fileName => 'Nom del Fitxer';
	@override String get selectFile => 'Selecciona fitxers';
	@override String get selectFiles => 'Selecciona fitxers';
	@override String get selectFolder => 'Selecció de carpeta';
	@override String get selectFolders => 'Selecció de carpeta';
	@override String get renameFile => 'Canvia el nom del fitxer';
	@override String get folderName => 'Nom de la carpeta';
	@override String get createFolder => 'Crea una carpeta';
	@override String get renameFolder => 'Canvia el nom de la carpeta';
	@override String get deleteFolder => 'Elimina la carpeta';
	@override String get folder => 'Carpeta ';
	@override String get addFile => 'Afegeix un fitxer';
	@override String get emptyDrive => 'La teva unitat és buida';
	@override String get emptyFolder => 'La carpeta està buida';
	@override String get unableToDelete => 'No es pot eliminar';
	@override String get inputNewFileName => 'Introduïu el nom de fitxer nou';
	@override String get inputNewDescription => 'Inserta una nova llegenda';
	@override String get inputNewFolderName => 'Introduïu el nom de la carpeta nova';
	@override String get circularReferenceFolder => 'La carpeta destinatària és una subcarpeta de la carpeta a la qual la desitges moure';
	@override String get hasChildFilesOrFolders => 'No és possible esborrar aquesta carpeta ja que no és buida';
	@override String get copyUrl => 'Copia l\'URL';
	@override String get rename => 'Canvia el nom';
	@override String get avatar => 'Icona';
	@override String get banner => 'Bàner';
	@override String get displayOfSensitiveMedia => 'Visualització de contingut sensible';
	@override String get whenServerDisconnected => 'Quan es perdi la connexió al servidor';
	@override String get disconnectedFromServer => 'Desconnectat pel servidor';
	@override String get reload => 'Actualitza';
	@override String get doNothing => 'Ignora';
	@override String get reloadConfirm => 'Vols recarregar?';
	@override String get watch => 'Veure';
	@override String get unwatch => 'Deixar de veure';
	@override String get accept => 'Acceptar';
	@override String get reject => 'Denegar';
	@override String get normal => 'Normal';
	@override String get instanceName => 'Nom del servidor';
	@override String get instanceDescription => 'Descripció del servidor';
	@override String get maintainerName => 'Nom de l\'administrador';
	@override String get maintainerEmail => 'Correu electrònic de l\'administrador';
	@override String get tosUrl => 'URL de les Condicions d\'ús';
	@override String get thisYear => 'Enguany';
	@override String get thisMonth => 'Aquest mes';
	@override String get today => 'Avui';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => '${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'Pàgines';
	@override String get integration => 'Integració';
	@override String get connectService => 'Connecta';
	@override String get disconnectService => 'Desconnecta';
	@override String get enableLocalTimeline => 'Activa la línia de temps local';
	@override String get enableGlobalTimeline => 'Activa la línia de temps global';
	@override String get disablingTimelinesInfo => 'Fins i tot si aquestes línies de temps són desactivades, els administradors i els moderadors poden continuar visualitzant per conveniència.';
	@override String get registration => 'Registre';
	@override String get enableRegistration => 'Permet els registres d\'usuaris';
	@override String get invite => 'Convida';
	@override String get driveCapacityPerLocalAccount => 'Capacitat del disc per usuaris locals';
	@override String get driveCapacityPerRemoteAccount => 'Capacitat del disc per usuaris remots';
	@override String get inMb => 'En megabytes';
	@override String get bannerUrl => 'Adreça URL del bàner';
	@override String get backgroundImageUrl => 'Adreça URL de la imatge de fons';
	@override String get basicInfo => 'Informació bàsica';
	@override String get pinnedUsers => 'Usuaris fixats';
	@override String get pinnedUsersDescription => 'Llista d\'usuaris, separats per salts de línia, que seran fixats a la pestanya "Explorar".';
	@override String get pinnedPages => 'Pàgines fixades';
	@override String get pinnedPagesDescription => 'Escriu els camins de les pàgines que vols fixar a la pàgina d\'inici d\'aquesta instància. Separades per salts de línia.';
	@override String get pinnedClipId => 'ID del retall fixat';
	@override String get pinnedNotes => 'Nota fixada';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'Activar hCaptcha';
	@override String get hcaptchaSiteKey => 'Clau del lloc';
	@override String get hcaptchaSecretKey => 'Clau secreta';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => 'Activar mCaptcha';
	@override String get mcaptchaSiteKey => 'Clau del lloc';
	@override String get mcaptchaSecretKey => 'Clau secreta';
	@override String get mcaptchaInstanceUrl => 'Adreça URL del servidor mCaptcha';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'Activar reCAPTCHA';
	@override String get recaptchaSiteKey => 'Clau del lloc';
	@override String get recaptchaSecretKey => 'Clau secreta';
	@override String get turnstile => 'Turnstile';
	@override String get enableTurnstile => 'Activar Turnstile';
	@override String get turnstileSiteKey => 'Clau del lloc';
	@override String get turnstileSecretKey => 'Clau secreta';
	@override String get avoidMultiCaptchaConfirm => 'Fer servir diferents sistemes de Captcha a la vegada pot causar problemes entre ells. Vols desactivar els altres sistemes de Captcha activats? Si els vols mantenir actius fes clic a cancel·lar.';
	@override String get antennas => 'Antena';
	@override String get manageAntennas => 'Gestiona les antenes';
	@override String get name => 'Nom';
	@override String get antennaSource => 'Font de l\'antena';
	@override String get antennaKeywords => 'Paraules clau a seguir';
	@override String get antennaExcludeKeywords => 'Paraules clau a excloure';
	@override String get antennaKeywordsDescription => 'Separar amb espais per la condició AND o amb salts de línia per la condició OR.';
	@override String get notifyAntenna => 'Notifica\'m les publicacions noves';
	@override String get withFileAntenna => 'Només les publicacions amb fitxers';
	@override String get enableServiceworker => 'Activar les notificacions al navegador';
	@override String get antennaUsersDescription => 'Llistar un nom d\'usuari per línia';
	@override String get caseSensitive => 'Sensible a majúscules i minúscules ';
	@override String get withReplies => 'Inclou respostes';
	@override String get connectedTo => 'Aquests comptes hi són connectats';
	@override String get notesAndReplies => 'Amb respostes';
	@override String get withFiles => 'Incloure arxius';
	@override String get silence => 'Silencia';
	@override String get silenceConfirm => 'Segur que vols silenciar aquest usuari?';
	@override String get unsilence => 'Deixa de silenciar';
	@override String get unsilenceConfirm => 'Segur que vols deixar de silenciar aquest usuari?';
	@override String get popularUsers => 'Usuaris populars';
	@override String get recentlyUpdatedUsers => 'Usuaris actius fa poc';
	@override String get recentlyRegisteredUsers => 'Usuaris nous';
	@override String get recentlyDiscoveredUsers => 'Usuaris descoberts fa poc';
	@override String exploreUsersCount({required Object count}) => 'Hi ha ${count} usuaris';
	@override String get exploreFediverse => 'Explora el fedivers';
	@override String get popularTags => 'Etiquetes populars';
	@override String get userList => 'Llistes';
	@override String get about => 'Informació';
	@override String get aboutMisskey => 'Quant a Misskey';
	@override String get administrator => 'Administrador/a';
	@override String get token => 'Codi de verificació';
	@override String get x2fa => 'Autenticació de doble factor';
	@override String get setupOf2fa => 'Configurar l\'autenticació de doble factor';
	@override String get totp => 'Aplicació d\'autenticació';
	@override String get totpDescription => 'Escriu una contrasenya d\'un sol us fent servir l\'aplicació d\'autenticació';
	@override String get moderator => 'Moderador/a';
	@override String get moderation => 'Moderació';
	@override String get moderationNote => 'Nota de moderació ';
	@override String get addModerationNote => 'Afegir una nota de moderació ';
	@override String get moderationLogs => 'Registre de moderació ';
	@override String nUsersMentioned({required Object n}) => '${n} usuaris mencionats';
	@override String get securityKeyAndPasskey => 'Clau de seguretat / Clau de pas';
	@override String get securityKey => 'Clau de seguretat';
	@override String get lastUsed => 'Fet servir per última vegada';
	@override String lastUsedAt({required Object t}) => 'Fet servir per última vegada: ${t}';
	@override String get unregister => 'Cancel·la el registre';
	@override String get passwordLessLogin => 'Inici de sessió sense contrasenya';
	@override String get passwordLessLoginDescription => 'Permet l\'inici de sessió sense contrasenya fent servir només una Clau de seguretat/Clau de pas';
	@override String get resetPassword => 'Restableix la contrasenya';
	@override String newPasswordIs({required Object password}) => 'La contrasenya nova és «${password}»';
	@override String get reduceUiAnimation => 'Redueix les animacions de la interfície';
	@override String get share => 'Comparteix';
	@override String get notFound => 'No s\'ha trobat';
	@override String get notFoundDescription => 'No es troba cap pàgina que correspongui a aquesta adreça';
	@override String get uploadFolder => 'Carpeta per defecte per pujades';
	@override String get markAsReadAllNotifications => 'Marca totes les notificacions com a llegides';
	@override String get markAsReadAllUnreadNotes => 'Marca-ho tot com a llegit';
	@override String get markAsReadAllTalkMessages => 'Marcar tots els missatges com llegits';
	@override String get help => 'Ajuda';
	@override String get inputMessageHere => 'Escriu aquí el teu missatge ';
	@override String get close => 'Tancar';
	@override String get invites => 'Convida';
	@override String get members => 'Membres';
	@override String get transfer => 'Transferir';
	@override String get title => 'Títol';
	@override String get text => 'Text';
	@override String get enable => 'Habilita';
	@override String get next => 'Següent';
	@override String get retype => 'Torneu a introduir-la';
	@override String noteOf({required Object user}) => 'Publicació de: ${user}';
	@override String get quoteAttached => 'Frase adjunta';
	@override String get quoteQuestion => 'Vols annexar-la com a cita?';
	@override String get noMessagesYet => 'Encara no hi ha missatges';
	@override String get newMessageExists => 'Has rebut un nou missatge';
	@override String get onlyOneFileCanBeAttached => 'Només pots adjuntar un fitxer a un missatge';
	@override String get signinRequired => 'Si us plau, Registra\'t o inicia la sessió abans de continuar';
	@override String get invitations => 'Convida';
	@override String get invitationCode => 'Codi d\'invitació';
	@override String get checking => 'Comprovació en curs...';
	@override String get available => 'Disponible';
	@override String get unavailable => 'No és disponible';
	@override String get usernameInvalidFormat => 'Pots fer servir lletres (majúscules i minúscules), números i barres baixes ("_")';
	@override String get tooShort => 'Massa curt';
	@override String get tooLong => 'Massa llarg';
	@override String get weakPassword => 'Contrasenya insegura';
	@override String get normalPassword => 'Bona contrasenya';
	@override String get strongPassword => 'Contrasenya segura';
	@override String get passwordMatched => 'Correcte!';
	@override String get passwordNotMatched => 'No coincideix';
	@override String signinWith({required Object x}) => 'Inicia sessió amb amb ${x}';
	@override String get signinFailed => 'Autenticació sense èxit. Intenta-ho un altre cop utilitzant la contrasenya i el nom correctes.';
	@override String get or => 'O';
	@override String get language => 'Idioma';
	@override String get uiLanguage => 'Idioma de l\'interfície';
	@override String aboutX({required Object x}) => 'Respecte a ${x}';
	@override String get emojiStyle => 'Estil d\'emoji';
	@override String get native => 'Nadiu';
	@override String get disableDrawer => 'No mostrar els menús en calaixos';
	@override String get showNoteActionsOnlyHover => 'Només mostra accions de la nota en passar amb el cursor';
	@override String get noHistory => 'No hi ha un registre previ';
	@override String get signinHistory => 'Historial d\'autenticacions';
	@override String get enableAdvancedMfm => 'Habilitar l\'MFM avançat';
	@override String get enableAnimatedMfm => 'Habilitar l\'MFM amb moviment';
	@override String get doing => 'Processant...';
	@override String get category => 'Categoria';
	@override String get tags => 'Etiquetes';
	@override String get docSource => 'Font del document';
	@override String get createAccount => 'Crea un compte';
	@override String get existingAccount => 'Compte existent';
	@override String get regenerate => 'Regenera';
	@override String get fontSize => 'Mida del text';
	@override String get mediaListWithOneImageAppearance => 'Altura de la llista de fitxers amb una única imatge';
	@override String limitTo({required Object x}) => 'Limita a ${x}';
	@override String get noFollowRequests => 'No tens sol·licituds de seguiment';
	@override String get openImageInNewTab => 'Obre imatges a una nova pestanya';
	@override String get dashboard => 'Panell de control';
	@override String get local => 'Local';
	@override String get remote => 'Remot';
	@override String get total => 'Total';
	@override String get weekOverWeekChanges => 'Canvis l\'última setmana';
	@override String get dayOverDayChanges => 'Canvis ahir';
	@override String get appearance => 'Aparença';
	@override String get clientSettings => 'Configuració del client';
	@override String get accountSettings => 'Configuració del compte';
	@override String get promotion => 'Promocionat';
	@override String get promote => 'Promoure';
	@override String get numberOfDays => 'Nombre de dies';
	@override String get hideThisNote => 'Amaga la publicació';
	@override String get showFeaturedNotesInTimeline => 'Mostra publicacions destacades en la línia de temps';
	@override String get objectStorage => 'Emmagatzematge d\'objectes\n';
	@override String get useObjectStorage => 'Utilitzar l\'emmagatzematge d\'objectes';
	@override String get objectStorageBaseUrl => 'Base d\'enllaç';
	@override String get objectStorageBaseUrlDesc => 'Prefix d\'enllaç utilitzat per a fer referencia als fitxers. Especifica l\'enllaç del teu CDN o Proxy si n\'estàs utilitzant qualsevol, en cas contrari, especifica l\'enllaç al que es pot accedir públicament segons la guia de servei que vosté utilitza.\nPer l\'ús d\'S3 utilitza \'https://<bucket>.s3.amazonaws.com\' I per a GCS o serveis equivalents utilitza \'https://storage.googleapis.com/<bucket>\'.';
	@override String get objectStorageBucket => 'Dipòsit ';
	@override String get objectStorageBucketDesc => 'Escriu el nom del dipòsit que fas servir al teu proveïdor d\'emmagatzematge ';
	@override String get objectStoragePrefix => 'Prefix';
	@override String get objectStoragePrefixDesc => 'Els fitxers es deixaren a directoris amb aquest prefix';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageEndpointDesc => 'Deixa\'l buit si fas servir AWS S3, si no és així específica un punt d\'entrada com \'<host>\' o \'<host>:<port>\', depenent del servei que facis servir.';
	@override String get objectStorageRegion => 'Regió ';
	@override String get objectStorageRegionDesc => 'Especifica una regió com \'xx-east-1\'. Si el teu servei no diferència regions has de posar \'us-east-1\'. Deixa\'l buit si fas servir variables d\'entorn o un arxiu de configuració d\'AWS.';
	@override String get objectStorageUseSSL => 'Fes servir SSL';
	@override String get objectStorageUseSSLDesc => 'Desactiva\'l si no tens pensat fer servir HTTPS per les connexions de l\'API';
	@override String get objectStorageUseProxy => 'Connectar-se  mitjançant un Proxy';
	@override String get objectStorageUseProxyDesc => 'Desactiva\'l si no faràs servir un Proxy per les connexions de l\'API';
	@override String get objectStorageSetPublicRead => 'Configurar les pujades com públiques ';
	@override String get s3ForcePathStyleDesc => 'Si s3ForcePathStyle es troba activat el nom del dipòsit s\'ha d\'incloure a l\'adreça URL en comtes del nom del host. Potser que necessitis activar-ho quan facis servir, per exemple, Minio a un servidor propi.';
	@override String get serverLogs => 'Registres del servidor';
	@override String get deleteAll => 'Esborrar tot';
	@override String get showFixedPostForm => 'Mostrar el formulari per escriure a l\'inici de la línia de temps';
	@override String get showFixedPostFormInChannel => 'Mostrar el formulari d\'escriptura al principi de la línia de temps (Canals)';
	@override String get withRepliesByDefaultForNewlyFollowed => 'Inclou les respostes d\'usuaris nous seguits a la línia de temps per defecte.';
	@override String get newNoteRecived => 'Hi ha publicacions noves';
	@override String get sounds => 'Sons';
	@override String get sound => 'So';
	@override String get listen => 'Escoltar';
	@override String get none => 'Res';
	@override String get showInPage => 'Mostrar a la pàgina ';
	@override String get popout => 'Finestra emergent';
	@override String get volume => 'Volum';
	@override String get masterVolume => 'Volum principal';
	@override String get notUseSound => 'Sense so';
	@override String get useSoundOnlyWhenActive => 'Reproduir sons només quan Misskey estigui actiu';
	@override String get details => 'Detalls';
	@override String get chooseEmoji => 'Tria un emoji';
	@override String get unableToProcess => 'L\'operació no pot ser completada ';
	@override String get recentUsed => 'Utilitzat recentment';
	@override String get install => 'Instal·lació ';
	@override String get uninstall => 'Desinstal·lar ';
	@override String get installedApps => 'Aplicacions autoritzades ';
	@override String get nothing => 'No hi ha res per veure aquí ';
	@override String get installedDate => 'Data d\'instal·lació';
	@override String get lastUsedDate => 'Utilitzat per última vegada';
	@override String get state => 'Estat';
	@override String get sort => 'Ordena';
	@override String get ascendingOrder => 'Ascendent';
	@override String get descendingOrder => 'Descendent';
	@override String get scratchpad => 'Bloc de proves';
	@override String get scratchpadDescription => 'El bloc de proves proporciona un entorn experimental per AiScript. Pot escriure i verificar els resultats que interactuen amb Misskey.';
	@override String get output => 'Sortida';
	@override String get script => 'Script';
	@override String get disablePagesScript => 'Desactivar AiScript a les pàgines ';
	@override String get updateRemoteUser => 'Actualitzar la informació de l\'usuari remot';
	@override String get unsetUserAvatar => 'Desactivar l\'avatar ';
	@override String get unsetUserAvatarConfirm => 'Segur que vols desactivar l\'avatar?';
	@override String get unsetUserBanner => 'Desactivar el bàner ';
	@override String get unsetUserBannerConfirm => 'Segur que vols desactivar el bàner?';
	@override String get deleteAllFiles => 'Esborrar tots els arxius';
	@override String get deleteAllFilesConfirm => 'Segur que vols esborrar tots els arxius?';
	@override String get removeAllFollowing => 'Deixar de seguir tots els usuaris seguits';
	@override String removeAllFollowingDescription({required Object host}) => 'El fet d\'executar això, et farà deixar de seguir a tots els usuaris de ${host}. Si us plau, executa això si l\'amfitrió, per exemple, ja no existeix.';
	@override String get userSuspended => 'Aquest usuari ha sigut suspès';
	@override String get userSilenced => 'Aquest usuari està sent silenciat';
	@override String get yourAccountSuspendedTitle => 'Aquest compte és suspès';
	@override String get yourAccountSuspendedDescription => 'Aquest compte ha sigut suspès a causa de la violació de les condicions d\'ús o similars. Contacta l\'administrador si en vol saber més. Si us plau, no en faci un altre compte.';
	@override String get tokenRevoked => 'Codi de seguretat no vàlid';
	@override String get tokenRevokedDescription => 'La petició més recent ha estat denegada perquè contenia un codi de seguretat no vàlid. Actualitza la pàgina i torna-ho a provar.';
	@override String get accountDeleted => 'Compte eliminat amb èxit';
	@override String get accountDeletedDescription => 'Aquest compte ha sigut eliminat';
	@override String get menu => 'Menú';
	@override String get divider => 'Divisor';
	@override String get addItem => 'Afegir element';
	@override String get rearrange => 'Torna a ordenar';
	@override String get relays => 'Relés';
	@override String get addRelay => 'Afegeix relés';
	@override String get inboxUrl => 'Enllaç de la safata d\'entrada';
	@override String get addedRelays => 'Relés afegits';
	@override String get serviceworkerInfo => 'És obligatòria l\'activació per a obtenir notificacions push';
	@override String get deletedNote => 'Publicacions eliminades';
	@override String get invisibleNote => 'Publicacions amagades';
	@override String get enableInfiniteScroll => 'Carrega més automàticament\n';
	@override String get visibility => 'Visibilitat';
	@override String get poll => 'Enquesta';
	@override String get useCw => 'Amaga el contingut';
	@override String get enablePlayer => 'Obre el reproductor de vídeo';
	@override String get disablePlayer => 'Tanca el reproductor de vídeo';
	@override String get expandTweet => 'Expandir post';
	@override String get themeEditor => 'Editor de temes';
	@override String get description => 'Descripció';
	@override String get describeFile => 'Afegir subtitulació';
	@override String get enterFileDescription => 'Afegeix un títol';
	@override String get author => 'Autor';
	@override String get leaveConfirm => 'Hi ha canvis sense guardar. Els vols descartar?';
	@override String get manage => 'Administració';
	@override String get plugins => 'Extensions';
	@override String get preferencesBackups => 'Configuracions de les Còpies de seguretat';
	@override String get deck => 'Escriptori';
	@override String get undeck => 'Tanca l\'escriptori';
	@override String get useBlurEffectForModal => 'Utilitzar l\'efecte de difuminació a modals';
	@override String get useFullReactionPicker => 'Utilitza el cercador de reaccions d\'escala sencera';
	@override String get width => 'Amplada';
	@override String get height => 'Alçària';
	@override String get large => 'Gran';
	@override String get medium => 'Mitjà';
	@override String get small => 'Petit';
	@override String get generateAccessToken => 'Genera codi d\'accés';
	@override String get permission => 'Permisos';
	@override String get adminPermission => 'Permisos d\'administrador ';
	@override String get enableAll => 'Habilita tot';
	@override String get disableAll => 'Deshabilita tot';
	@override String get tokenRequested => 'Donar accés al compte';
	@override String get pluginTokenRequestedDescription => 'Aquest connector podrà fer servir tots els permisos configurats aquí.';
	@override String get notificationType => 'Tipus de notificació ';
	@override String get edit => 'Editar';
	@override String get emailServer => 'Servidor de correu electrònic ';
	@override String get enableEmail => 'Activar l\'enviament de correus electrònics ';
	@override String get emailConfigInfo => 'Es fa servir per confirmar el teu correu quan et registres o oblides la contrasenya ';
	@override String get email => 'Correu electrònic';
	@override String get emailAddress => 'Adreça de correu electrònic';
	@override String get smtpConfig => 'Configuració del servidor SMTP';
	@override String get smtpHost => 'Amfitrió';
	@override String get smtpPort => 'Port';
	@override String get smtpUser => 'Nom d\'usuari';
	@override String get smtpPass => 'Contrasenya';
	@override String get emptyToDisableSmtpAuth => 'No omplis el nom d\'usuari i la contrasenya si vols deshabilitar l\'autenticació SMTP';
	@override String get smtpSecure => 'Fes servir SSL/TLS per connexions SMTP';
	@override String get smtpSecureInfo => 'Desactiva això quan facis servir connexions STARTTLS';
	@override String get testEmail => 'Prova l\'enviament de correu ';
	@override String get wordMute => 'Silenciar paraules ';
	@override String get hardWordMute => 'Silenciar paraules fortes';
	@override String get regexpError => 'Error de l\'expressió regular ';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'S\'ha produït un error a l\'expressió regular a la línia ${line} de les paraules silenciades ${tab}:';
	@override String get instanceMute => 'Silenciar servidor';
	@override String userSaysSomething({required Object name}) => '${name} n\'ha dit alguna cosa';
	@override String get makeActive => 'Activar';
	@override String get display => 'Veure';
	@override String get copy => 'Copiar';
	@override String get metrics => 'Mètriques';
	@override String get overview => 'Visió General';
	@override String get logs => 'Registres';
	@override String get delayed => 'Endarrerits ';
	@override String get database => 'Bases de dades';
	@override String get channel => 'Canals';
	@override String get create => 'Crear';
	@override String get notificationSetting => 'Paràmetres de notificacions';
	@override String get notificationSettingDesc => 'Selecciona els tipus de notificacions que es mostraran';
	@override String get useGlobalSetting => 'Fer servir la configuració global';
	@override String get useGlobalSettingDesc => 'Si s\'activa, es farà servir la configuració de notificacions del teu comte. Si no s\'activa es poden fer configuracions individuals.';
	@override String get other => 'Altre';
	@override String get regenerateLoginToken => 'Regenerar clau de seguretat d\'inici de sessió';
	@override String get regenerateLoginTokenDescription => 'Regenera la clau de seguretat que es fa servir internament durant l\'inici de sessió. Normalment aquesta acció no és necessària. Si es regenera es tancarà la sessió a tots els dispositius amb una sessió activa.';
	@override String get theKeywordWhenSearchingForCustomEmoji => 'Cercar un emoji personalitzat ';
	@override String get setMultipleBySeparatingWithSpace => 'Separa múltiples entrades amb un espai';
	@override String get fileIdOrUrl => 'ID de l\'arxiu o URL';
	@override String get behavior => 'Comportament';
	@override String get sample => 'Mostrar';
	@override String get abuseReports => 'Denúncies ';
	@override String get reportAbuse => 'Denuncia un abús ';
	@override String get reportAbuseRenote => 'Denuncia una renota';
	@override String reportAbuseOf({required Object name}) => 'Denuncia a ${name}';
	@override String get fillAbuseReportDescription => 'Omple els detalls sobre aquesta denúncia. Si la denúncia és sobre una nota en concret inclou l\'adreça URL.';
	@override String get abuseReported => 'La teva denúncia s\'ha enviat. Moltes gràcies.';
	@override String get reporter => 'Denunciant ';
	@override String get reporteeOrigin => 'Origen de la denúncia ';
	@override String get reporterOrigin => 'Origen del denunciant';
	@override String get forwardReport => 'Transferir la denúncia a una instància remota';
	@override String get forwardReportIsAnonymous => 'En comptes del teu compte, es farà servir un compte anònim com a denunciat a la instància remota.';
	@override String get send => 'Enviar';
	@override String get abuseMarkAsResolved => 'Marcar la denúncia com a resolta';
	@override String get openInNewTab => 'Obre a una pestanya nova';
	@override String get openInSideView => 'Obre a una vista lateral';
	@override String get defaultNavigationBehaviour => 'Navegació per defecte';
	@override String get editTheseSettingsMayBreakAccount => 'Editar aquestes opcions pot deixar inoperatiu el teu compte';
	@override String get instanceTicker => 'Informació de notes de la instància ';
	@override String waitingFor({required Object x}) => 'Esperant ${x}';
	@override String get random => 'Aleatori ';
	@override String get system => 'Sistema';
	@override String get switchUi => 'Canviar interfície d\'usuari ';
	@override String get desktop => 'Escriptori';
	@override String get clip => 'Retalls';
	@override String get createNew => 'Crear';
	@override String get optional => 'Opcional';
	@override String get createNewClip => 'Crear un nou Retall';
	@override String get unclip => 'Treure Retall';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'Aquesta nota ja és inclosa al Retall "${name}". Vols treure-la d\'aquest retall?';
	@override String get public => 'Públic ';
	@override String get private => 'Privat';
	@override String i18nInfo({required Object link}) => 'Misskey està sent traduït a diferents idiomes per voluntaris. Pots ajudar aquí ${link}.';
	@override String get manageAccessTokens => 'Administrar claus de seguretat d\'accés ';
	@override String get accountInfo => 'Informació del compte';
	@override String get notesCount => 'Comptador de notes';
	@override String get repliesCount => 'Nombre de respostes';
	@override String get renotesCount => 'Impulsos fets';
	@override String get repliedCount => 'Nombre de respostes rebudes';
	@override String get renotedCount => 'Impulsos rebuts';
	@override String get followingCount => 'Nombre de comptes seguits';
	@override String get followersCount => 'Nombre de seguidors';
	@override String get sentReactionsCount => 'Nombre de reaccions enviades';
	@override String get receivedReactionsCount => 'Nombre de reaccions rebudes';
	@override String get pollVotesCount => 'Nombre de vots enviats a enquestes';
	@override String get pollVotedCount => 'Nombre de vots rebuts a les enquestes';
	@override String get yes => 'Sí ';
	@override String get no => 'No';
	@override String get driveFilesCount => 'Nombre de fitxers al Disc';
	@override String get driveUsage => 'Utilització de l\'espai del Disc';
	@override String get noCrawle => 'Rebutjar la indexació dels buscadors';
	@override String get noCrawleDescription => 'No permetis que els buscadors indexin el teu perfil, notes, pàgines, etc.';
	@override String get lockedAccountInfo => 'Tret que establiu la visibilitat de la nota a "Només seguidors", les vostres notes seran visibles per qualsevol persona, fins i tot si heu d\'aprovar els seguidors manualment';
	@override String get alwaysMarkSensitive => 'Marcar com a sensible per defecte';
	@override String get loadRawImages => 'Carregar les imatges originals en comptes de miniatures ';
	@override String get disableShowingAnimatedImages => 'No reproduir imatges animades';
	@override String get highlightSensitiveMedia => 'Ressalta els medis marcats com a sensibles';
	@override String get verificationEmailSent => 'S\'ha enviat un correu electrònic de verificació. Fes clic a l\'enllaç per completar la verificació.';
	@override String get notSet => 'Sense definir';
	@override String get emailVerified => 'El correu electrònic s\'ha verificat';
	@override String get noteFavoritesCount => 'Nombre de notes favorites ';
	@override String get pageLikesCount => 'Nombre de Pàgines que t\'agraden ';
	@override String get pageLikedCount => 'Nombre d\'agraïments rebuts a les Pàgines ';
	@override String get contact => 'Contacte';
	@override String get useSystemFont => 'Fes servir la font per defecte del sistema';
	@override String get clips => 'Retalls';
	@override String get experimentalFeatures => 'Característiques experimentals';
	@override String get experimental => 'Experimental';
	@override String get thisIsExperimentalFeature => 'Aquesta és una característica experimental. La seva funcionalitat pot canviar, i pot ser que no funcioni degudament.';
	@override String get developer => 'Programador';
	@override String get makeExplorable => 'Fes que el compte sigui visible a la secció "Explorar"';
	@override String get makeExplorableDescription => 'Si desactives aquesta opció, el teu compte no sortirà a la secció "Explorar"';
	@override String get showGapBetweenNotesInTimeline => 'Mostra una separació entre els articles a la línia de temps';
	@override String get duplicate => 'Duplicat';
	@override String get left => 'Esquerra';
	@override String get center => 'Centre';
	@override String get wide => 'Gran';
	@override String get narrow => 'Estret';
	@override String get reloadToApplySetting => 'Aquest ajust només s\'aplicarà després de recarregar la pàgina. Vols fer-ho ara?';
	@override String get needReloadToApply => 'Es requereix recarregar per reflectir aquesta opció ';
	@override String get showTitlebar => 'Mostra la barra del títol ';
	@override String get clearCache => 'Esborra la memòria cau';
	@override String onlineUsersCount({required Object n}) => '${n} Usuaris es troben en línia ';
	@override String nUsers({required Object n}) => '${n} Usuaris';
	@override String nNotes({required Object n}) => '${n} Notes';
	@override String get sendErrorReports => 'Enviar informes d\'error ';
	@override String get sendErrorReportsDescription => 'Quan s\'activa, es compartirà amb Misskey informació detallada de l\'error quan es trobi un problema això farà pujar la qualitat de Misskey.\nAixò inclourà informació com la versió del SO que fas servir, el navegador web que fas servir, la teva activitat a Misskey, etc.';
	@override String get myTheme => 'El meu tema';
	@override String get backgroundColor => 'Color de fons';
	@override String get accentColor => 'Color principal';
	@override String get textColor => 'Color del text';
	@override String get saveAs => 'Desar com...';
	@override String get advanced => 'Avançat';
	@override String get advancedSettings => 'Configuració avançada';
	@override String get value => 'Valor';
	@override String get createdAt => 'Creat el';
	@override String get updatedAt => 'Actualitzat el';
	@override String get saveConfirm => 'Desar canvis?';
	@override String get deleteConfirm => 'Segur que vols esborrar?';
	@override String get invalidValue => 'Valor invàlid.';
	@override String get registry => 'Registre ';
	@override String get closeAccount => 'Tancar el compte';
	@override String get currentVersion => 'Versió actual';
	@override String get latestVersion => 'Versió nova';
	@override String get youAreRunningUpToDateClient => 'Ja estàs fent servir la versió més recent del client.';
	@override String get newVersionOfClientAvailable => 'Tens disponible una versió del client més recent.';
	@override String get usageAmount => 'Ús ';
	@override String get capacity => 'Capacitat';
	@override String get inUse => 'Fet servir';
	@override String get editCode => 'Editar el codi';
	@override String get apply => 'Aplicar';
	@override String get receiveAnnouncementFromInstance => 'Rep notificacions d\'aquesta instància ';
	@override String get emailNotification => 'Notificacions per correu electrònic ';
	@override String get publish => 'Publicar';
	@override String get inChannelSearch => 'Cerca al canal';
	@override String get useReactionPickerForContextMenu => 'Fes clic al botó dret del ratolí per obrir el menú de reaccions';
	@override String typingUsers({required Object users}) => '${users} està/estàn Escrivint ';
	@override String get jumpToSpecifiedDate => 'Ves a una data concreta';
	@override String get showingPastTimeline => 'Estàs veient una línia de temps antiga';
	@override String get clear => 'Tornar';
	@override String get markAllAsRead => 'Marcar tot com llegit';
	@override String get goBack => 'Tornar';
	@override String get unlikeConfirm => 'Vols esborrar el teu m\'agrada?';
	@override String get fullView => 'Vista completa.';
	@override String get quitFullView => 'Sortir de la vista completa';
	@override String get addDescription => 'Afegeix una descripció ';
	@override String get userPagePinTip => 'Podeu seleccionar "Fixar al perfil" del menú de notes individuals per mostrar les notes aquí.';
	@override String get notSpecifiedMentionWarning => 'Aquesta nota esmenta usuaris que no es troben com a destinataris';
	@override String get info => 'Informació';
	@override String get userInfo => 'Informació de l\'usuari';
	@override String get unknown => 'Desconegut';
	@override String get onlineStatus => 'Connectat';
	@override String get hideOnlineStatus => 'Ocultar l\'estat de connexió';
	@override String get hideOnlineStatusDescription => 'Ocultant el teu estat de connexió redueix les funcionalitats d\'algunes funcions com la cerca.';
	@override String get online => 'Connectat';
	@override String get active => 'Actiu';
	@override String get offline => 'Desconnectat';
	@override String get notRecommended => 'No recomanat';
	@override String get botProtection => 'Protecció contra bots';
	@override String get instanceBlocking => 'Instàncies blocades/silenciades';
	@override String get selectAccount => 'Seleccionar un compte';
	@override String get switchAccount => 'Canviar de compte';
	@override String get enabled => 'Activat';
	@override String get disabled => 'Desactivat';
	@override String get quickAction => 'Accions ràpides';
	@override String get user => 'Usuaris';
	@override String get administration => 'Administració';
	@override String get accounts => 'Comptes';
	@override String get switch_ => 'Canvia';
	@override String get noMaintainerInformationWarning => 'La informació de l\'administrador no s\'ha configurat';
	@override String get noBotProtectionWarning => 'La protecció contra bots no s\'ha configurat.';
	@override String get configure => 'Configurar';
	@override String get postToGallery => 'Crear una nova publicació a la galeria';
	@override String get postToHashtag => 'Pública a aquesta etiqueta';
	@override String get gallery => 'Galeria';
	@override String get recentPosts => 'Articles recents';
	@override String get popularPosts => 'Articles populars';
	@override String get shareWithNote => 'Comparteix amb una nota';
	@override String get ads => 'Anuncis';
	@override String get expiration => '';
	@override String get startingperiod => 'Inici';
	@override String get memo => 'Recordatori';
	@override String get priority => 'Prioritat';
	@override String get high => 'Alta';
	@override String get middle => 'Mitjà';
	@override String get low => 'Baixa';
	@override String get emailNotConfiguredWarning => 'Adreça de correu electrònic';
	@override String get ratio => 'Proporció';
	@override String get previewNoteText => 'Mostrar vista prèvia';
	@override String get customCss => 'CSS personalitzat';
	@override String get customCssWarn => 'Aquesta configuració només hauries de configurar-la si saps que fas. Si poses valors inadequats pots fer que el client deixi de funcionar correctament.';
	@override String get global => 'Global';
	@override String get squareAvatars => 'Mostrar avatars quadrats';
	@override String get sent => 'Enviar';
	@override String get received => 'Rebut';
	@override String get searchResult => 'Resultats de la cerca';
	@override String get hashtags => 'Etiquetes';
	@override String get troubleshooting => 'Solucionar problemes';
	@override String get useBlurEffect => 'Fes servir efectes de desenfocament a la interfície';
	@override String get learnMore => 'Saber més ';
	@override String get misskeyUpdated => 'Misskey s\'ha actualitzat ';
	@override String get whatIsNew => 'Mostra canvis';
	@override String get translate => 'Traduir ';
	@override String translatedFrom({required Object x}) => 'Traduït del ${x}';
	@override String get accountDeletionInProgress => 'S\'està produint l\'eliminació del compte';
	@override String get usernameInfo => 'Un nom que identifiqui el teu compte d\'altres en aquest servidor. Pots fer servir lletres (a~z, A~Z), números (0~9) i guions baixos (_). Els noms d\'usuari no es poden canviar després.';
	@override String get aiChanMode => 'Mode IA';
	@override String get devMode => 'Mode desenvolupador';
	@override String get keepCw => 'Mantenir els avisos de contingut';
	@override String get pubSub => 'Comptes Pub/Sub';
	@override String get lastCommunication => 'Última comunicació ';
	@override String get resolved => 'Resolt';
	@override String get unresolved => 'Sense resoldre';
	@override String get breakFollow => 'Deixar de seguir';
	@override String get breakFollowConfirm => 'Vols deixar de seguir?';
	@override String get itsOn => 'Activat';
	@override String get itsOff => 'Desactivat';
	@override String get on => 'Activar';
	@override String get off => 'Desactivar';
	@override String get emailRequiredForSignup => 'Demanar correu electrònic per registrar-se ';
	@override String get unread => 'Sense llegir';
	@override String get filter => 'Filtrar';
	@override String get controlPanel => 'Panel de control';
	@override String get manageAccounts => 'Gestionar comptes';
	@override String get makeReactionsPublic => 'Reaccions públiques ';
	@override String get makeReactionsPublicDescription => 'Això fa que totes les teves reaccions siguin visibles públicament ';
	@override String get classic => 'Clàssic ';
	@override String get muteThread => 'Silenciar el fil';
	@override String get unmuteThread => 'Deixar de silenciar el fil';
	@override String get followingVisibility => 'Visibilitat dels seguiments';
	@override String get followersVisibility => 'Visibilitat dels seguidors';
	@override String get continueThread => 'Veure la continuació del fil';
	@override String get deleteAccountConfirm => 'Això eliminarà el teu compte irreversiblement. Procedir?';
	@override String get incorrectPassword => 'Contrasenya incorrecta.';
	@override String voteConfirm({required Object choice}) => 'Confirma el teu vot "${choice}"';
	@override String get hide => 'Amagar';
	@override String get useDrawerReactionPickerForMobile => 'Mostrar el selector de reaccions com un calaix al mòbil ';
	@override String welcomeBackWithName({required Object name}) => 'Benvingut de nou, ${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => 'Si us plau, fes clic a [${ok}] per completar la verificació per correu electrònic ';
	@override String get overridedDeviceKind => 'Tipus de dispositiu';
	@override String get smartphone => 'Telèfon intel·ligent';
	@override String get tablet => 'Tauleta';
	@override String get auto => 'Automàtic ';
	@override String get themeColor => 'Color del tema';
	@override String get size => 'Mida';
	@override String get numberOfColumn => 'Nombre de columnes';
	@override String get searchByGoogle => 'Cercar';
	@override String get instanceDefaultLightTheme => 'Tema clar per defecte de tota la instància ';
	@override String get instanceDefaultDarkTheme => 'Tema fosc per defecte de tota la instància ';
	@override String get instanceDefaultThemeDescription => 'Introdueix el codi del tema en format d\'objecte';
	@override String get mutePeriod => 'Duració del silenci';
	@override String get period => 'Límit de temps';
	@override String get indefinitely => 'Permanent';
	@override String get tenMinutes => '10 minuts';
	@override String get oneHour => '1 hora';
	@override String get oneDay => 'Un dia';
	@override String get oneWeek => 'Una setmana';
	@override String get oneMonth => 'Un mes';
	@override String get reflectMayTakeTime => 'Això pot trigar una estona a tenir efecte';
	@override String get failedToFetchAccountInformation => 'No es pot obtenir la informació del compte';
	@override String get rateLimitExceeded => 'S\'ha arribat al màxim de peticions';
	@override String get cropImage => 'Retalla la imatge';
	@override String get cropImageAsk => 'Vols retallar la imatge?';
	@override String get cropYes => 'Retallar';
	@override String get cropNo => 'Fer servir tal qual';
	@override String get file => 'Fitxers';
	@override String recentNHours({required Object n}) => 'Últimes ${n} hores';
	@override String recentNDays({required Object n}) => 'Últims ${n} dies';
	@override String get noEmailServerWarning => 'Correu electrònic del servidor sense configurar';
	@override String get thereIsUnresolvedAbuseReportWarning => 'Hi ha informes sense solucionar.';
	@override String get recommended => 'Recomanat';
	@override String get check => 'Verificar';
	@override String get driveCapOverrideLabel => 'Canvia la capacitat del Disc per aquest usuari';
	@override String get driveCapOverrideCaption => 'Restableix la mida original posant un valor de 0 o menys.';
	@override String get requireAdminForView => 'Has de ser administrador per poder veure això.';
	@override String get isSystemAccount => 'Un compte creat i operat automàticament pel sistema.';
	@override String typeToConfirm({required Object x}) => 'Si us plau, escriu ${x} per confirmar';
	@override String get deleteAccount => 'Esborrar el compte';
	@override String get document => 'Documentació';
	@override String get numberOfPageCache => 'Nombre de pàgines a la memòria cau';
	@override String get numberOfPageCacheDescription => 'Incrementant aquest nombre farà que millori l\'experiència de l\'usuari, però es farà servir més memòria al dispositiu de l\'usuari.';
	@override String get logoutConfirm => 'Vols sortir?';
	@override String get lastActiveDate => 'Fet servir per última vegada';
	@override String get statusbar => 'Barra d\'estat';
	@override String get pleaseSelect => 'Selecciona una opció';
	@override String get reverse => 'Invertir';
	@override String get colored => 'Colorit';
	@override String get refreshInterval => 'Interval d\'actualització ';
	@override String get label => 'Etiqueta';
	@override String get type => 'Tipus';
	@override String get speed => 'Velocitat';
	@override String get slow => 'Lent';
	@override String get fast => 'Ràpid ';
	@override String get sensitiveMediaDetection => 'Detecció de contingut sensible';
	@override String get localOnly => 'Només local';
	@override String get remoteOnly => 'Només remot';
	@override String get failedToUpload => 'Ha fallat la pujada';
	@override String get cannotUploadBecauseInappropriate => 'Aquest fitxer no es pot pujar perquè s\'ha trobat que algunes parts són inapropiades.';
	@override String get cannotUploadBecauseNoFreeSpace => 'Ha fallat la pujada del fitxer perquè no hi ha capacitat al Disc.';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'Aquest fitxer no es pot pujar perquè supera la mida permesa.';
	@override String get beta => 'Proves';
	@override String get enableAutoSensitive => 'Marcar com a sensible automàticament ';
	@override String get enableAutoSensitiveDescription => 'Permet la detecció i el marcat automàtic dels mitjans sensibles fent servir aprenentatge automàtic quan sigui possible. Si aquesta opció es troba desactivada potser que estigui activada per a tota la instància. ';
	@override String get activeEmailValidationDescription => 'Activa la validació estricta de comptes de correu electrònic, inclou la validació d\'adreces d\'un sol ús i si es possible comunicar-se amb aquestes. Quan es troba desactivada només es vàlida el format del correu electrònic.';
	@override String get navbar => 'Barra de navegació ';
	@override String get shuffle => 'Aleatori';
	@override String get account => 'Compte';
	@override String get move => 'Mou';
	@override String get pushNotification => 'Enviament de notificacions';
	@override String get subscribePushNotification => 'Activar l\'enviament de notificacions';
	@override String get unsubscribePushNotification => 'Desactivar l\'enviament de notificacions';
	@override String get pushNotificationAlreadySubscribed => 'L\'enviament de notificacions ja és activat';
	@override String get pushNotificationNotSupported => 'El teu navegador o la teva instància no suporta l\'enviament de notificacions ';
	@override String get sendPushNotificationReadMessage => 'Esborrar les notificacions enviades quan s\'hagin llegit';
	@override String get sendPushNotificationReadMessageCaption => 'Això pot fer que el teu dispositiu consumeixi més bateria';
	@override String get windowMaximize => 'Maximitzar ';
	@override String get windowMinimize => 'Minimitzar';
	@override String get windowRestore => 'Restaurar';
	@override String get caption => 'Llegenda';
	@override String get loggedInAsBot => 'Identificat com a bot';
	@override String get tools => 'Eines';
	@override String get cannotLoad => 'No es pot carregar';
	@override String get numberOfProfileView => 'Visualitzacions del perfil';
	@override String get like => 'M\'agrada ';
	@override String get unlike => 'Treure m\'agrada ';
	@override String get numberOfLikes => 'M\'agraden ';
	@override String get show => 'Veure';
	@override String get neverShow => 'No mostrar més ';
	@override String get remindMeLater => 'Recorda-m\'ho més tard';
	@override String get didYouLikeMisskey => 'T\'està agradant Misskey?';
	@override String pleaseDonate({required Object host}) => 'A ${host} fem servir el software lliure Misskey. Considera fer un donatiu a Misskey perquè pugui continuar el seu desenvolupament!';
	@override String get roles => 'Rols';
	@override String get role => 'Rols';
	@override String get noRole => 'No s\'han trobat rols';
	@override String get normalUser => 'Usuari normal';
	@override String get undefined => 'Sense definir';
	@override String get assign => 'Assignar ';
	@override String get unassign => 'Treure';
	@override String get color => 'Color';
	@override String get manageCustomEmojis => 'Gestiona els emojis personalitzats';
	@override String get manageAvatarDecorations => 'Gestiona les decoracions dels avatars ';
	@override String get youCannotCreateAnymore => 'Has arribat al màxim de creacions';
	@override String get cannotPerformTemporary => 'Temporalment no disponible';
	@override String get cannotPerformTemporaryDescription => 'Aquesta acció no es pot dur a terme temporalment per arribar al seu límit d\'execució. Pots esperar una mica i tornar-ho a intentar.';
	@override String get invalidParamError => 'Paràmetres incorrectes ';
	@override String get invalidParamErrorDescription => 'Els paràmetres demanats no són correctes. Normalment això es deu a un error, però també pot ser a alguna entrada excedint els límits o similar.';
	@override String get permissionDeniedError => 'Operació no permesa ';
	@override String get permissionDeniedErrorDescription => 'Aquest compte no té suficients permisos per dur a terme aquesta acció ';
	@override String get preset => 'Predefinit';
	@override String get selectFromPresets => 'Escull des dels predefinits';
	@override String get achievements => 'Assoliments';
	@override String get gotInvalidResponseError => 'Resposta del servidor invàlida ';
	@override String get gotInvalidResponseErrorDescription => 'No es pot contactar amb el servidor o potser es troba fora de línia per manteniment. Provar-ho de nou més tard.';
	@override String get thisPostMayBeAnnoying => 'Aquesta nota pot ser molesta per algú.';
	@override String get thisPostMayBeAnnoyingHome => 'Publicar a la línia de temps d\'Inici';
	@override String get thisPostMayBeAnnoyingCancel => 'Cancel·lar ';
	@override String get thisPostMayBeAnnoyingIgnore => 'Publicar de totes maneres';
	@override String get collapseRenotes => 'Col·lapsar les renotes que ja has vist';
	@override String get internalServerError => 'Error intern del servidor';
	@override String get internalServerErrorDescription => 'El servidor ha fallat de manera inexplicable.';
	@override String get copyErrorInfo => 'Copiar la informació de l\'error ';
	@override String get joinThisServer => 'Registra\'t en aquesta instància ';
	@override String get exploreOtherServers => 'Cerca una altra instància ';
	@override String get letsLookAtTimeline => 'Dona una ullada a la línia de temps';
	@override String get disableFederationConfirm => 'Vols treure la federació?';
	@override String get disableFederationConfirmWarn => 'Fins i tot traient la federació, les publicacions continuaren sent públiques, a no ser que es digui el contrari. Normalment no has de tocar això.';
	@override String get disableFederationOk => 'Desactivar';
	@override String get invitationRequiredToRegister => 'Aquesta instància només permet el registre per invitació. Per registrar-te has d\'introduir el codi d\'invitació.';
	@override String get emailNotSupported => 'Aquesta instància no suporta l\'enviament de correus electrònics ';
	@override String get postToTheChannel => 'Publicar a un Canal';
	@override String get cannotBeChangedLater => 'Això ja no es podrà canviar.';
	@override String get reactionAcceptance => 'Acceptació de reaccions ';
	@override String get likeOnly => 'Només m\'agraden ';
	@override String get likeOnlyForRemote => 'Tot (només m\'agraden d\'instàncies remotes)';
	@override String get nonSensitiveOnly => 'Només sense contingut sensible';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'Només contingut no sensible (Només m\'agraden d\'instàncies remotes)';
	@override String get rolesAssignedToMe => 'Rols assignats ';
	@override String get resetPasswordConfirm => 'Vols canviar la teva contrasenya?';
	@override String get sensitiveWords => 'Paraules sensibles';
	@override String get sensitiveWordsDescription => 'La visibilitat de totes les notes que continguin qualsevol de les paraules configurades seran, automàticament, afegides a "Inici". Pots llistar diferents paraules separant les per línies noves.';
	@override String get sensitiveWordsDescription2 => 'Fent servir espais crearà expressions AND si l\'expressió s\'envolta amb barres inclinades es converteix en una expressió regular.';
	@override String get prohibitedWords => 'Paraules prohibides';
	@override String get prohibitedWordsDescription => 'Quan intenteu publicar una Nota que conté una paraula prohibida, feu que es converteixi en un error. Es poden dividir i establir múltiples línies.';
	@override String get prohibitedWordsDescription2 => 'Fent servir espais crearà expressions AND si l\'expressió s\'envolta amb barres inclinades es converteix en una expressió regular.';
	@override String get hiddenTags => 'Etiquetes ocultes';
	@override String get hiddenTagsDescription => 'La visibilitat de totes les notes que continguin qualsevol de les paraules configurades seran, automàticament, afegides a "Inici". Pots llistar diferents paraules separant les per línies noves.';
	@override String get notesSearchNotAvailable => 'La cerca de notes no es troba disponible.';
	@override String get license => 'Llicència';
	@override String get unfavoriteConfirm => 'Esborrar dels favorits?';
	@override String get myClips => 'Els meus retalls';
	@override String get drivecleaner => 'Netejador de Disc';
	@override String get retryAllQueuesNow => 'Prova de nou d\'executar totes les cues';
	@override String get retryAllQueuesConfirmTitle => 'Tornar a intentar-ho tot?';
	@override String get retryAllQueuesConfirmText => 'Això farà que la càrrega del servidor augmenti temporalment.';
	@override String get enableChartsForRemoteUser => 'Generar gràfiques d\'usuaris remots';
	@override String get enableChartsForFederatedInstances => 'Generar gràfiques d\'instàncies remotes';
	@override String get showClipButtonInNoteFooter => 'Afegir "Retall" al menú d\'acció de la nota';
	@override String get reactionsDisplaySize => 'Mida de les reaccions';
	@override String get limitWidthOfReaction => 'Limitar l\'amplada màxima de la reacció i mostrar-les en una mida reduïda ';
	@override String get noteIdOrUrl => 'ID o URL de la nota';
	@override String get video => 'Vídeo';
	@override String get videos => 'Vídeos ';
	@override String get audio => 'So';
	@override String get audioFiles => 'So';
	@override String get dataSaver => 'Economitzador de dades';
	@override String get accountMigration => 'Migració del compte';
	@override String get accountMoved => 'Aquest usuari té un compte nou:';
	@override String get accountMovedShort => 'Aquest compte ha sigut migrat';
	@override String get operationForbidden => 'Operació no permesa ';
	@override String get forceShowAds => 'Mostra els anuncis sempre ';
	@override String get addMemo => 'Afegir recordatori';
	@override String get editMemo => 'Editar recordatori';
	@override String get reactionsList => 'Reaccions';
	@override String get renotesList => 'Impulsos';
	@override String get notificationDisplay => 'Notificacions';
	@override String get leftTop => 'Dalt a l\'esquerra ';
	@override String get rightTop => 'Dalt a la dreta ';
	@override String get leftBottom => 'A baix a l\'esquerra';
	@override String get rightBottom => 'A baix a la dreta';
	@override String get stackAxis => 'Apilar en direcció ';
	@override String get vertical => 'Vertical';
	@override String get horizontal => 'Horitzontal ';
	@override String get position => 'Posició ';
	@override String get serverRules => 'Regles del servidor';
	@override String get pleaseConfirmBelowBeforeSignup => 'Per obrir un compte en aquest servidor, has de llegir i acceptar el següent.';
	@override String get pleaseAgreeAllToContinue => 'Has d\'acceptar tots els camps de dalt per poder continuar.';
	@override String get continue_ => 'Continuar';
	@override String get preservedUsernames => 'Noms d\'usuaris reservats';
	@override String get preservedUsernamesDescription => 'Llistat de noms d\'usuaris que no es poden fer servir separats per salts de linia. Aquests noms d\'usuaris no estaran disponibles quan es creï un compte d\'usuari normal, però els administradors els poden fer servir per crear comptes manualment. Per altre banda els comptes ja creats amb aquests noms d\'usuari no es veure\'n afectats.';
	@override String get createNoteFromTheFile => 'Compon una nota des d\'aquest fitxer';
	@override String get archive => 'Arxiu';
	@override String channelArchiveConfirmTitle({required Object name}) => 'Vols arxivar ${name}?';
	@override String get channelArchiveConfirmDescription => 'Un Canal arxivat no apareixerà a la llista de canals o als resultats de cerca. Tampoc es poden afegir noves entrades.';
	@override String get thisChannelArchived => 'Aquest Canal ha sigut arxivat.';
	@override String get displayOfNote => 'Mostrar notes';
	@override String get initialAccountSetting => 'Configuració del perfil';
	@override String get youFollowing => 'Seguit';
	@override String get preventAiLearning => 'Descartar l\'ús d\'aprenentatge automàtic (IA Generativa)';
	@override String get preventAiLearningDescription => 'Demanar els indexadors no fer servir els texts, imatges, etc. en cap conjunt de dades per alimentar l\'aprenentatge automàtic (IA Predictiva/ Generativa). Això s\'aconsegueix afegint la etiqueta "noai" com a resposta HTML al contingut corresponent. Prevenir aquest ús totalment pot ser que no sigui aconseguit, ja que molts indexadors poden obviar aquesta etiqueta.';
	@override String get options => 'Opcions';
	@override String get specifyUser => 'Especificar usuari';
	@override String get failedToPreviewUrl => 'Vista prèvia no disponible';
	@override String get update => 'Actualitzar';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'Rols que poden fer servir aquest emoji com a reacció ';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'Si cap rol es especificat tothom ho pot fer servir';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'Aquests rols han de ser públics ';
	@override String get cancelReactionConfirm => 'Vols esborrar la teva reacció?';
	@override String get changeReactionConfirm => 'Vols canviar la teva reacció?';
	@override String get later => 'Més tard';
	@override String get goToMisskey => 'Ves a Misskey';
	@override String get additionalEmojiDictionary => 'Diccionari d\'emojis adicionals';
	@override String get installed => 'Instal·lats ';
	@override String get branding => 'Marca';
	@override String get enableServerMachineStats => 'Publicar estadístiques del maquinari del servidor';
	@override String get enableIdenticonGeneration => 'Activar la generació d\'icones d\'identificació ';
	@override String get turnOffToImprovePerformance => 'Desactivant aquesta opció es pot millorar el rendiment.';
	@override String get createInviteCode => 'Crear codi d\'invitació ';
	@override String get createWithOptions => 'Crear invitació amb opcions';
	@override String get createCount => 'Comptador d\'invitacions ';
	@override String get inviteCodeCreated => 'Invitació creada';
	@override String get inviteLimitExceeded => 'Has sobrepassat el límit d\'invitacions que pots crear.';
	@override String createLimitRemaining({required Object limit}) => 'Et queden ${limit} invitacions restants';
	@override String inviteLimitResetCycle({required Object time, required Object limit}) => 'Cada ${time} ${limit} invitacions.';
	@override String get expirationDate => 'Data de venciment';
	@override String get noExpirationDate => 'Sense data de venciment';
	@override String get inviteCodeUsedAt => 'Codi d\'invitació fet servir el';
	@override String get registeredUserUsingInviteCode => 'Codi d\'invitació fet servir per l\'usuari ';
	@override String get waitingForMailAuth => 'Esperant la verificació per correu electrònic ';
	@override String get inviteCodeCreator => 'Invitació creada per';
	@override String get usedAt => 'Utilitzada el';
	@override String get unused => 'Sense utilitzar';
	@override String get used => 'Utilitzada';
	@override String get expired => 'Caducat';
	@override String get doYouAgree => 'Estàs d\'acord?';
	@override String get beSureToReadThisAsItIsImportant => 'Llegeix això perquè és molt important.';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => 'He llegit ${x} i estic d\'acord.';
	@override String get dialog => 'Diàleg ';
	@override String get icon => 'Icona';
	@override String get forYou => 'Per a tu';
	@override String get currentAnnouncements => 'Informes actuals';
	@override String get pastAnnouncements => 'Informes passats';
	@override String get youHaveUnreadAnnouncements => 'Tens informes per llegir.';
	@override String get useSecurityKey => 'Segueix les instruccions del teu navegador O dispositiu per fer servir el teu passkey.';
	@override String get replies => 'Respondre';
	@override String get renotes => 'Impulsa';
	@override String get loadReplies => 'Mostrar les respostes';
	@override String get loadConversation => 'Mostrar la conversació ';
	@override String get pinnedList => 'Llista fixada';
	@override String get keepScreenOn => 'Mantenir la pantalla encesa';
	@override String get verifiedLink => 'La propietat de l\'enllaç ha sigut verificada';
	@override String get notifyNotes => 'Notificar quan hi hagi notes noves';
	@override String get unnotifyNotes => 'Deixar de notificar quan hi hagi notes noves';
	@override String get authentication => 'Autenticació ';
	@override String get authenticationRequiredToContinue => 'Si us plau autentificat per continuar';
	@override String get dateAndTime => 'Data i hora';
	@override String get showRenotes => 'Mostrar impulsos';
	@override String get edited => 'Editat';
	@override String get notificationRecieveConfig => 'Paràmetres de notificacions';
	@override String get mutualFollow => 'Seguidor mutu';
	@override String get fileAttachedOnly => 'Només notes amb adjunts';
	@override String get showRepliesToOthersInTimeline => 'Mostrar les respostes a altres a la línia de temps';
	@override String get hideRepliesToOthersInTimeline => 'Amagar les respostes a altres a la línia de temps';
	@override String get showRepliesToOthersInTimelineAll => 'Mostrar les respostes a altres a usuaris que segueixes a la línia de temps';
	@override String get hideRepliesToOthersInTimelineAll => 'Ocultar les teves respostes a tots els usuaris que segueixes a la línia de temps';
	@override String get confirmShowRepliesAll => 'Aquesta opció no té marxa enrere. Vols mostrar les teves respostes a tots els que segueixes a la teva línia de temps?';
	@override String get confirmHideRepliesAll => 'Aquesta opció no té marxa enrere. Vols ocultar les teves respostes a tots els usuaris que segueixes a la línia de temps?';
	@override String get externalServices => 'Serveis externs';
	@override String get sourceCode => 'Codi font';
	@override String get impressum => 'Impressum';
	@override String get impressumUrl => 'Adreça URL impressum';
	@override String get impressumDescription => 'A països, com Alemanya, la inclusió de la informació de contacte de l\'operador (un Impressum) és requereix de manera legal per llocs comercials.';
	@override String get privacyPolicy => 'Política de privacitat';
	@override String get privacyPolicyUrl => 'Adreça URL de la política de privacitat';
	@override String get tosAndPrivacyPolicy => 'Termes d\'ús i política de privacitat';
	@override String get avatarDecorations => 'Decoracions dels avatars';
	@override String get attach => 'Adjuntar';
	@override String get detach => 'Eliminar';
	@override String get detachAll => 'Treure tot';
	@override String get angle => 'Angle';
	@override String get flip => 'Girar';
	@override String get showAvatarDecorations => 'Mostrar les decoracions dels avatars';
	@override String get releaseToRefresh => 'Deixar anar per actualitzar';
	@override String get refreshing => 'Recarregant...';
	@override String get pullDownToRefresh => 'Llisca cap a baix per recarregar';
	@override String get disableStreamingTimeline => 'Desactivar l\'actualització en temps real de les línies de temps';
	@override String get useGroupedNotifications => 'Mostrar les notificacions agrupades ';
	@override String get signupPendingError => 'Hi ha hagut un problema verificant l\'adreça de correu electrònic. L\'enllaç pot haver caducat.';
	@override String get cwNotationRequired => 'Si està activat "Amagar contingut" s\'ha d\'escriure una descripció ';
	@override String get doReaction => 'Afegeix una reacció ';
	@override String get code => 'Codi';
	@override String get reloadRequiredToApplySettings => 'És necessari recarregar la pàgina per aplicar els canvis.';
	@override String remainingN({required Object n}) => 'Queden: ${n}';
	@override String get overwriteContentConfirm => 'Vols substituir el contingut actual?';
	@override String get seasonalScreenEffect => 'Efectes de pantalla segons les estacions';
	@override String get decorate => 'Decorar';
	@override String get addMfmFunction => 'Afegeix funcions MFM';
	@override String get enableQuickAddMfmFunction => 'Activar accés ràpid per afegir funcions MFM';
	@override String get bubbleGame => 'Bubble Game';
	@override String get sfx => 'Efectes de so';
	@override String get soundWillBePlayed => 'Es reproduiran efectes de so';
	@override String get showReplay => 'Veure reproducció';
	@override String get replay => 'Reproduir';
	@override String get replaying => 'Reproduint';
	@override String get ranking => 'Classificació';
	@override String lastNDays({required Object n}) => 'Últims ${n} dies';
	@override String get backToTitle => 'Torna al títol';
	@override String get hemisphere => 'Geolocalització';
	@override String get withSensitive => 'Incloure notes amb fitxers sensibles';
	@override String userSaysSomethingSensitive({required Object name}) => 'La publicació de ${name} conte material sensible';
	@override String get enableHorizontalSwipe => 'Lliscar per canviar de pestanya';
	@override String get surrender => 'Cancel·lar ';
	@override late final _StringsMisskeyBubbleGameCaEs bubbleGame_ = _StringsMisskeyBubbleGameCaEs._(_root);
	@override late final _StringsMisskeyAnnouncementCaEs announcement_ = _StringsMisskeyAnnouncementCaEs._(_root);
	@override late final _StringsMisskeyInitialAccountSettingCaEs initialAccountSetting_ = _StringsMisskeyInitialAccountSettingCaEs._(_root);
	@override late final _StringsMisskeyInitialTutorialCaEs initialTutorial_ = _StringsMisskeyInitialTutorialCaEs._(_root);
	@override late final _StringsMisskeyTimelineDescriptionCaEs timelineDescription_ = _StringsMisskeyTimelineDescriptionCaEs._(_root);
	@override late final _StringsMisskeyServerRulesCaEs serverRules_ = _StringsMisskeyServerRulesCaEs._(_root);
	@override late final _StringsMisskeyServerSettingsCaEs serverSettings_ = _StringsMisskeyServerSettingsCaEs._(_root);
	@override late final _StringsMisskeyAccountMigrationCaEs accountMigration_ = _StringsMisskeyAccountMigrationCaEs._(_root);
	@override late final _StringsMisskeyAchievementsCaEs achievements_ = _StringsMisskeyAchievementsCaEs._(_root);
	@override late final _StringsMisskeyRoleCaEs role_ = _StringsMisskeyRoleCaEs._(_root);
	@override late final _StringsMisskeySensitiveMediaDetectionCaEs sensitiveMediaDetection_ = _StringsMisskeySensitiveMediaDetectionCaEs._(_root);
	@override late final _StringsMisskeyEmailUnavailableCaEs emailUnavailable_ = _StringsMisskeyEmailUnavailableCaEs._(_root);
	@override late final _StringsMisskeyFfVisibilityCaEs ffVisibility_ = _StringsMisskeyFfVisibilityCaEs._(_root);
	@override late final _StringsMisskeySignupCaEs signup_ = _StringsMisskeySignupCaEs._(_root);
	@override late final _StringsMisskeyAccountDeleteCaEs accountDelete_ = _StringsMisskeyAccountDeleteCaEs._(_root);
	@override late final _StringsMisskeyAdCaEs ad_ = _StringsMisskeyAdCaEs._(_root);
	@override late final _StringsMisskeyForgotPasswordCaEs forgotPassword_ = _StringsMisskeyForgotPasswordCaEs._(_root);
	@override late final _StringsMisskeyGalleryCaEs gallery_ = _StringsMisskeyGalleryCaEs._(_root);
	@override late final _StringsMisskeyEmailCaEs email_ = _StringsMisskeyEmailCaEs._(_root);
	@override late final _StringsMisskeyPluginCaEs plugin_ = _StringsMisskeyPluginCaEs._(_root);
	@override late final _StringsMisskeyPreferencesBackupsCaEs preferencesBackups_ = _StringsMisskeyPreferencesBackupsCaEs._(_root);
	@override late final _StringsMisskeyRegistryCaEs registry_ = _StringsMisskeyRegistryCaEs._(_root);
	@override late final _StringsMisskeyAboutMisskeyCaEs aboutMisskey_ = _StringsMisskeyAboutMisskeyCaEs._(_root);
	@override late final _StringsMisskeyDisplayOfSensitiveMediaCaEs displayOfSensitiveMedia_ = _StringsMisskeyDisplayOfSensitiveMediaCaEs._(_root);
	@override late final _StringsMisskeyInstanceTickerCaEs instanceTicker_ = _StringsMisskeyInstanceTickerCaEs._(_root);
	@override late final _StringsMisskeyServerDisconnectedBehaviorCaEs serverDisconnectedBehavior_ = _StringsMisskeyServerDisconnectedBehaviorCaEs._(_root);
	@override late final _StringsMisskeyChannelCaEs channel_ = _StringsMisskeyChannelCaEs._(_root);
	@override late final _StringsMisskeyMenuDisplayCaEs menuDisplay_ = _StringsMisskeyMenuDisplayCaEs._(_root);
	@override late final _StringsMisskeyWordMuteCaEs wordMute_ = _StringsMisskeyWordMuteCaEs._(_root);
	@override late final _StringsMisskeyInstanceMuteCaEs instanceMute_ = _StringsMisskeyInstanceMuteCaEs._(_root);
	@override late final _StringsMisskeyThemeCaEs theme_ = _StringsMisskeyThemeCaEs._(_root);
	@override late final _StringsMisskeySfxCaEs sfx_ = _StringsMisskeySfxCaEs._(_root);
	@override late final _StringsMisskeySoundSettingsCaEs soundSettings_ = _StringsMisskeySoundSettingsCaEs._(_root);
	@override late final _StringsMisskeyAgoCaEs ago_ = _StringsMisskeyAgoCaEs._(_root);
	@override late final _StringsMisskeyTimeInCaEs timeIn_ = _StringsMisskeyTimeInCaEs._(_root);
	@override late final _StringsMisskeyTimeCaEs time_ = _StringsMisskeyTimeCaEs._(_root);
	@override late final _StringsMisskeyX2faCaEs x2fa_ = _StringsMisskeyX2faCaEs._(_root);
	@override late final _StringsMisskeyPermissionsCaEs permissions_ = _StringsMisskeyPermissionsCaEs._(_root);
	@override late final _StringsMisskeyAntennaSourcesCaEs antennaSources_ = _StringsMisskeyAntennaSourcesCaEs._(_root);
	@override late final _StringsMisskeyWidgetsCaEs widgets_ = _StringsMisskeyWidgetsCaEs._(_root);
	@override late final _StringsMisskeyCwCaEs cw_ = _StringsMisskeyCwCaEs._(_root);
	@override late final _StringsMisskeyPollCaEs poll_ = _StringsMisskeyPollCaEs._(_root);
	@override late final _StringsMisskeyVisibilityCaEs visibility_ = _StringsMisskeyVisibilityCaEs._(_root);
	@override late final _StringsMisskeyPostFormCaEs postForm_ = _StringsMisskeyPostFormCaEs._(_root);
	@override late final _StringsMisskeyProfileCaEs profile_ = _StringsMisskeyProfileCaEs._(_root);
	@override late final _StringsMisskeyExportOrImportCaEs exportOrImport_ = _StringsMisskeyExportOrImportCaEs._(_root);
	@override late final _StringsMisskeyChartsCaEs charts_ = _StringsMisskeyChartsCaEs._(_root);
	@override late final _StringsMisskeyTimelinesCaEs timelines_ = _StringsMisskeyTimelinesCaEs._(_root);
	@override late final _StringsMisskeyPlayCaEs play_ = _StringsMisskeyPlayCaEs._(_root);
	@override late final _StringsMisskeyPagesCaEs pages_ = _StringsMisskeyPagesCaEs._(_root);
	@override late final _StringsMisskeyRelayStatusCaEs relayStatus_ = _StringsMisskeyRelayStatusCaEs._(_root);
	@override late final _StringsMisskeyNotificationCaEs notification_ = _StringsMisskeyNotificationCaEs._(_root);
	@override late final _StringsMisskeyDeckCaEs deck_ = _StringsMisskeyDeckCaEs._(_root);
	@override late final _StringsMisskeyWebhookSettingsCaEs webhookSettings_ = _StringsMisskeyWebhookSettingsCaEs._(_root);
	@override late final _StringsMisskeyModerationLogTypesCaEs moderationLogTypes_ = _StringsMisskeyModerationLogTypesCaEs._(_root);
	@override late final _StringsMisskeyFileViewerCaEs fileViewer_ = _StringsMisskeyFileViewerCaEs._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerCaEs externalResourceInstaller_ = _StringsMisskeyExternalResourceInstallerCaEs._(_root);
	@override late final _StringsMisskeyReversiCaEs reversi_ = _StringsMisskeyReversiCaEs._(_root);
}

// Path: misskey.bubbleGame_
class _StringsMisskeyBubbleGameCaEs extends _StringsMisskeyBubbleGameEnUs {
	_StringsMisskeyBubbleGameCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => 'Com es juga';
	@override late final _StringsMisskeyBubbleGameHowToPlayCaEs howToPlay_ = _StringsMisskeyBubbleGameHowToPlayCaEs._(_root);
}

// Path: misskey.announcement_
class _StringsMisskeyAnnouncementCaEs extends _StringsMisskeyAnnouncementEnUs {
	_StringsMisskeyAnnouncementCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => 'Anunci per usuaris registrats';
	@override String get forExistingUsersDescription => 'Aquest avís només es mostrarà als usuaris existents fins al moment de la publicació. Si no també es mostrarà als usuaris que es registrin després de la publicació.';
	@override String get needConfirmationToRead => 'Es necessita confirmació de lectura de la notificació ';
	@override String get needConfirmationToReadDescription => 'Si s\'activa es mostrarà un diàleg per confirmar la lectura d\'aquesta notificació. A més aquesta notificació serà exclosa de qualsevol funcionalitat com "Marcar tot com a llegit".';
	@override String get end => 'Final de la notificació ';
	@override String get tooManyActiveAnnouncementDescription => 'Tenir massa notificacions actives pot empitjorar l\'experiència de l\'usuari. Considera finalitzar els anuncis que siguin antics.';
	@override String get readConfirmTitle => 'Marcar com llegida?';
	@override String readConfirmText({required Object title}) => 'Això marcarà el contingut de "${title}" com llegit.';
	@override String get shouldNotBeUsedToPresentPermanentInfo => 'Ja que l\'ús de notificacions pot impactar l\'experiència dels nous usuaris, és recomanable fer servir les notificacions amb el flux d\'informació en comptes de fer-les servir en un únic bloc.';
	@override String get dialogAnnouncementUxWarn => 'Tenir dues o més notificacions amb l\'estil de finestres pot impactar l\'experiència de l\'usuari, és per això que és recomana fer-lo servir amb cura.';
	@override String get silence => 'Sense notificacions';
	@override String get silenceDescription => 'Activant aquesta opció la notificació no es mostrarà ni l\'usuari l\'haurà de llegir.';
}

// Path: misskey.initialAccountSetting_
class _StringsMisskeyInitialAccountSettingCaEs extends _StringsMisskeyInitialAccountSettingEnUs {
	_StringsMisskeyInitialAccountSettingCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => 'S\'ha completat la creació del compte!';
	@override String get letsStartAccountSetup => 'Posem ràpidament la configuració inicial del compte.';
	@override String get letsFillYourProfile => 'Comencem establint el teu perfil.';
	@override String get profileSetting => 'Configuració del perfil';
	@override String get privacySetting => 'Configuració de seguretat';
	@override String get theseSettingsCanEditLater => 'Aquests ajustos es poden canviar més tard.';
	@override String get youCanEditMoreSettingsInSettingsPageLater => 'A més d\'això, es poden fer diferents configuracions a través de la pàgina de configuració. Assegureu-vos de comprovar-ho més tard.';
	@override String get followUsers => 'Prova de seguir usuaris que t\'interessin per construir la teva línia de temps.';
	@override String pushNotificationDescription({required Object name}) => 'Activant les notificacions emergents et permetrà rebre notificacions de ${name} directament al teu dispositiu.';
	@override String get initialAccountSettingCompleted => 'Configuració del perfil completada!';
	@override String haveFun({required Object name}) => 'Disfruta ${name}!';
	@override String youCanContinueTutorial({required Object name}) => 'Pots continuar amb un tutorial per aprendre a Fer servir ${name} (MissKey) o tu pots estalviar i començar a fer-lo servir ja.';
	@override String get startTutorial => 'Començar el tutorial';
	@override String get skipAreYouSure => 'Et vols saltar la configuració del perfil?';
	@override String get laterAreYouSure => 'Vols continuar la configuració del perfil més tard?';
}

// Path: misskey.initialTutorial_
class _StringsMisskeyInitialTutorialCaEs extends _StringsMisskeyInitialTutorialEnUs {
	_StringsMisskeyInitialTutorialCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'Començar tutorial';
	@override String get title => 'Tutorial';
	@override String get wellDone => 'Ben fet!';
	@override String get skipAreYouSure => 'Sortir del tutorial?';
	@override late final _StringsMisskeyInitialTutorialLandingCaEs landing_ = _StringsMisskeyInitialTutorialLandingCaEs._(_root);
	@override late final _StringsMisskeyInitialTutorialNoteCaEs note_ = _StringsMisskeyInitialTutorialNoteCaEs._(_root);
	@override late final _StringsMisskeyInitialTutorialReactionCaEs reaction_ = _StringsMisskeyInitialTutorialReactionCaEs._(_root);
	@override late final _StringsMisskeyInitialTutorialTimelineCaEs timeline_ = _StringsMisskeyInitialTutorialTimelineCaEs._(_root);
	@override late final _StringsMisskeyInitialTutorialPostNoteCaEs postNote_ = _StringsMisskeyInitialTutorialPostNoteCaEs._(_root);
	@override late final _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveCaEs howToMakeAttachmentsSensitive_ = _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveCaEs._(_root);
	@override late final _StringsMisskeyInitialTutorialDoneCaEs done_ = _StringsMisskeyInitialTutorialDoneCaEs._(_root);
}

// Path: misskey.timelineDescription_
class _StringsMisskeyTimelineDescriptionCaEs extends _StringsMisskeyTimelineDescriptionEnUs {
	_StringsMisskeyTimelineDescriptionCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get home => 'A la línia de temps d\'Inici pots veure les notes dels usuaris que segueixes.';
	@override String get local => 'A la línia de temps Local pots veure les notes de tots els usuaris d\'aquest servidor.';
	@override String get social => 'La línia de temps Social mostren les notes de les línies de temps d\'Inici i Local.';
	@override String get global => 'A la línia de temps Global pots veure les notes de tots els servidors connectats.';
}

// Path: misskey.serverRules_
class _StringsMisskeyServerRulesCaEs extends _StringsMisskeyServerRulesEnUs {
	_StringsMisskeyServerRulesCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get description => 'Un conjunt de regles que seran mostrades abans de registrar-se. Es recomanable configurar un resum dels termes d\'ús.';
}

// Path: misskey.serverSettings_
class _StringsMisskeyServerSettingsCaEs extends _StringsMisskeyServerSettingsEnUs {
	_StringsMisskeyServerSettingsCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get iconUrl => 'URL de la icona';
	@override String appIconDescription({required Object host}) => 'Especifica la icona que es mostrarà quan el ${host} es mostri en una aplicació.';
	@override String get appIconUsageExample => 'Per exemple com a PWA, o quan es mostri com un favorit a la pàgina d\'inici del telèfon mòbil';
	@override String get appIconStyleRecommendation => 'Com la icona pot ser retallada com un cercle o un quadrat, es recomana fer servir una icona amb un marge acolorit que l\'envolti.';
	@override String appIconResolutionMustBe({required Object resolution}) => 'La resolució mínima és ${resolution}.';
	@override String get manifestJsonOverride => 'Sobreescriure manifest.json';
	@override String get shortName => 'Nom curt';
	@override String get shortNameDescription => 'Una abreviatura del nom de la instància que es poguí mostrar en cas que el nom oficial sigui massa llarg';
	@override String get fanoutTimelineDescription => 'Quan es troba activat millora bastant el rendiment quan es recuperen les línies de temps i redueix la carrega de la base de dades. Com a contrapunt, l\'ús de memòria de Redis es veurà incrementada. Considera d\'estabilitat aquesta opció en cas de tenir un servidor amb poca memòria o si tens problemes de inestabilitat.';
	@override String get fanoutTimelineDbFallback => 'Carregar de la base de dades';
	@override String get fanoutTimelineDbFallbackDescription => 'Quan s\'activa, la línia de temps fa servir la base de dades per consultes adicionals si la línia de temps no es troba a la memòria cau. Si és desactiva la càrrega del servidor és veure reduïda, però també és reduirà el nombre de línies de temps que és poden obtenir.';
}

// Path: misskey.accountMigration_
class _StringsMisskeyAccountMigrationCaEs extends _StringsMisskeyAccountMigrationEnUs {
	_StringsMisskeyAccountMigrationCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => 'Migrar un altre compte a aquest';
	@override String get moveFromSub => 'Crear un àlies per un altre compte';
	@override String moveFromLabel({required Object n}) => 'Compte original #${n}';
	@override String get moveFromDescription => 'Has de crear un àlies del compte que vols migrar en aquest compte.\nFes servir aquest format per posar el compte que vols migrar: @nomusuari@servidor.exemple.com\nPer esborrar l\'àlies deixa el camp en blanc (no és recomanable de fer)';
	@override String get moveTo => 'Migrar aquest compte a un altre';
	@override String get moveToLabel => 'Compte al qual es vol migrar:';
	@override String get moveCannotBeUndone => 'Les migracions dels comptes no es poden desfer.';
	@override String get moveAccountDescription => 'Això migrarà la teva compte a un altre diferent.\n　・Els seguidors d\'aquest compte és passaran al compte nou de forma automàtica\n　・Es deixaran de seguir a tots els usuaris que es segueixen actualment en aquest compte\n　・No es poden crear notes noves, etc. en aquest compte\n\nSi bé la migració de seguidors es automàtica, has de preparar alguns pasos manualment per migrar la llista d\'usuaris que segueixes. Per fer això has d\'exportar els seguidors que després importaraes al compte nou mitjançant el menú de configuració. El mateix procediment s\'ha de seguir per less teves llistes i els teus usuaris silenciats i bloquejats.\n\n(Aquesta explicació s\'aplica a Misskey v13.12.0 i posteriors. Altres aplicacions, com Mastodon, poden funcionar diferent.)';
	@override String get moveAccountHowTo => 'Per fer la migració, primer has de crear un àlies per aquest compte al compte al qual vols migrar.\nDesprés de crear l\'àlies, introdueix el compte al qual vols migrar amb el format següent: @nomusuari@servidor.exemple.com';
	@override String get startMigration => 'Migrar';
	@override String migrationConfirm({required Object account}) => 'Vols migrar aquest compte a ${account}? Una vegada comenci la migració no es podrà parar O fer marxa enrere i no podràs tornar a fer servir aquest compte mai més.';
	@override String get movedAndCannotBeUndone => 'Aquest compte ha migrat.\nLes migracions no es poden desfer.';
	@override String get postMigrationNote => 'Aquest compte deixarà de seguir tots els comptes que segueix 24 hores després de germinar la migració.\nEl nombre de seguidors i seguits passarà a ser de zero. Per evitar que els teus seguidors no puguin veure les publicacions marcades com a només seguidors continuaren seguint aquest compte.';
	@override String get movedTo => 'Nou compte:';
}

// Path: misskey.achievements_
class _StringsMisskeyAchievementsCaEs extends _StringsMisskeyAchievementsEnUs {
	_StringsMisskeyAchievementsCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Desbloquejat el';
	@override late final _StringsMisskeyAchievementsTypesCaEs types_ = _StringsMisskeyAchievementsTypesCaEs._(_root);
}

// Path: misskey.role_
class _StringsMisskeyRoleCaEs extends _StringsMisskeyRoleEnUs {
	_StringsMisskeyRoleCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Nou rol';
	@override String get edit => 'Editar el rol';
	@override String get name => 'Nom del rol';
	@override String get description => 'Descripció del rol';
	@override String get permission => 'Permisos de rol';
	@override String get descriptionOfPermission => 'Els <b>Moderadors</b> poden fer operacions bàsiques de moderació.\nEls <b>Administradors</b> poden canviar tots els ajustos del servidor.';
	@override String get assignTarget => 'Assignar ';
	@override String get descriptionOfAssignTarget => '<b>Manual</b> per canviar manualment qui és part d\'aquest rol i qui no.\n<b>Condicional</b> per afegir o eliminar de manera automàtica els usuaris d\'aquest rol basat en una determinada condició.';
	@override String get manual => 'Manual';
	@override String get manualRoles => 'Rols manuals';
	@override String get conditional => 'Condicional';
	@override String get conditionalRoles => 'Rols condicionals';
	@override String get condition => 'Condició';
	@override String get isConditionalRole => 'Aquest és un rol condicional';
	@override String get isPublic => 'Rol públic';
	@override String get descriptionOfIsPublic => 'Aquest rol es mostrarà al perfil dels usuaris al que se\'ls assigni.';
	@override String get options => 'Opcions';
	@override String get policies => 'Polítiques';
	@override String get baseRole => 'Plantilla de rols';
	@override String get useBaseValue => 'Fer servir els valors de la plantilla de rols';
	@override String get chooseRoleToAssign => 'Selecciona els rols a assignar';
	@override String get iconUrl => 'URL de la icona ';
	@override String get asBadge => 'Mostrar com a insígnia ';
	@override String get descriptionOfAsBadge => 'La icona d\'aquest rol es mostrarà al costat dels noms d\'usuaris que tinguin assignats aquest rol.';
	@override String get isExplorable => 'Fer el rol explorable';
	@override String get descriptionOfIsExplorable => 'La línia de temps d\'aquest rol i la llista d\'usuaris seran públics si s\'activa.';
	@override String get displayOrder => 'Posició ';
	@override String get descriptionOfDisplayOrder => 'Com més gran és el número, més dalt la seva posició a la interfície.';
	@override String get canEditMembersByModerator => 'Permetre que els moderadors editin la llista d\'usuaris en aquest rol';
	@override String get descriptionOfCanEditMembersByModerator => 'Quan s\'activa, els moderadors, així com els administradors, podran afegir i treure usuaris d\'aquest rol. Si es troba desactivat, només els administradors poden assignar usuaris.';
	@override String get priority => 'Prioritat';
	@override late final _StringsMisskeyRolePriorityCaEs priority_ = _StringsMisskeyRolePriorityCaEs._(_root);
	@override late final _StringsMisskeyRoleOptionsCaEs options_ = _StringsMisskeyRoleOptionsCaEs._(_root);
	@override late final _StringsMisskeyRoleConditionCaEs condition_ = _StringsMisskeyRoleConditionCaEs._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _StringsMisskeySensitiveMediaDetectionCaEs extends _StringsMisskeySensitiveMediaDetectionEnUs {
	_StringsMisskeySensitiveMediaDetectionCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get description => 'Redueix els esforços de moderació gràcies al reconeixement automàtic dels fitxers amb contingut sensible mitjançant Machine Learing. Això augmentarà la càrrega del servidor.';
	@override String get sensitivity => 'Sensibilitat de la detecció ';
	@override String get sensitivityDescription => 'Reduint la sensibilitat provocarà menys falsos positius. D\'altra banda incrementant-ho generarà més falsos negatius.';
	@override String get setSensitiveFlagAutomatically => 'Marcar com a sensible';
	@override String get setSensitiveFlagAutomaticallyDescription => 'Els resultats de la detecció interna seran desats, inclòs si aquesta opció es troba desactivada.';
	@override String get analyzeVideos => 'Activar anàlisis de vídeos ';
	@override String get analyzeVideosDescription => 'Analitzar els vídeos a més de les imatges. Això incrementarà lleugerament la càrrega del servidor.';
}

// Path: misskey.emailUnavailable_
class _StringsMisskeyEmailUnavailableCaEs extends _StringsMisskeyEmailUnavailableEnUs {
	_StringsMisskeyEmailUnavailableCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get used => 'Aquest correu electrònic ja s\'està fent servir';
	@override String get format => 'El format del correu electrònic és invàlid ';
	@override String get disposable => 'No es poden fer servir adreces de correu electrònic d\'un sol ús ';
	@override String get mx => 'Aquest servidor de correu electrònic no és vàlid ';
	@override String get smtp => 'Aquest servidor de correu electrònic no respon';
	@override String get banned => 'No pots registrar-te amb aquesta adreça de correu electrònic ';
}

// Path: misskey.ffVisibility_
class _StringsMisskeyFfVisibilityCaEs extends _StringsMisskeyFfVisibilityEnUs {
	_StringsMisskeyFfVisibilityCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get public => 'Publicar';
	@override String get followers => 'Visible només per a seguidors ';
	@override String get private => 'Privat';
}

// Path: misskey.signup_
class _StringsMisskeySignupCaEs extends _StringsMisskeySignupEnUs {
	_StringsMisskeySignupCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Ja quasi estem';
	@override String get emailAddressInfo => 'Si us plau, escriu la teva adreça de correu electrònic. No es farà pública.';
	@override String emailSent({required Object email}) => 'S\'ha enviat un correu de confirmació a (${email}). Si us plau, fes clic a l\'enllaç per completar el registre.';
}

// Path: misskey.accountDelete_
class _StringsMisskeyAccountDeleteCaEs extends _StringsMisskeyAccountDeleteEnUs {
	_StringsMisskeyAccountDeleteCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Eliminar el compte';
	@override String get mayTakeTime => 'Com l\'eliminació d\'un compte consumeix bastants recursos, pot trigar un temps perquè es completi l\'esborrat, depenent si tens molt contingut i la quantitat de fitxer que hagis pujat.';
	@override String get sendEmail => 'Una vegada hagi finalitzat l\'esborrat del compte rebràs un correu electrònic a l\'adreça que tinguis registrada en aquest compte.';
	@override String get requestAccountDelete => 'Demanar l\'eliminació del compte';
	@override String get started => 'Ha començat l\'esborrat del compte.';
	@override String get inProgress => 'L\'esborrat es troba en procés ';
}

// Path: misskey.ad_
class _StringsMisskeyAdCaEs extends _StringsMisskeyAdEnUs {
	_StringsMisskeyAdCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get back => 'Tornar';
	@override String get reduceFrequencyOfThisAd => 'Mostrar menys aquest anunci';
	@override String get hide => 'No mostrar mai';
	@override String get timezoneinfo => 'El dia de la setmana ve determinat del fus horari del servidor.';
	@override String get adsSettings => 'Configuració d\'anuncis ';
	@override String get notesPerOneAd => 'Interval d\'emplaçament d\'anuncis en temps real (Notes per anuncis)';
	@override String get setZeroToDisable => 'Ajusta aquest valor a 0 per deshabilitar l\'actualització d\'anuncis en temps real';
	@override String get adsTooClose => 'L\'interval actual pot fer que l\'experiència de l\'usuari sigui dolenta perquè l\'interval és molt baix.';
}

// Path: misskey.forgotPassword_
class _StringsMisskeyForgotPasswordCaEs extends _StringsMisskeyForgotPasswordEnUs {
	_StringsMisskeyForgotPasswordCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Escriu l\'adreça de correu electrònic amb la que et vas registrar. S\'enviarà un correu electrònic amb un enllaç perquè puguis canviar-la.';
	@override String get ifNoEmail => 'Si no vas fer servir una adreça de correu electrònic per registrar-te, si us plau posa\'t en contacte amb l\'administrador.';
	@override String get contactAdmin => 'Aquesta instància no suporta registrar-se amb correu electrònic. Si us plau, contacta amb l\'administrador del servidor.';
}

// Path: misskey.gallery_
class _StringsMisskeyGalleryCaEs extends _StringsMisskeyGalleryEnUs {
	_StringsMisskeyGalleryCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get my => 'La meva Galeria ';
	@override String get liked => 'Publicacions que t\'han agradat';
	@override String get like => 'M\'agrada ';
	@override String get unlike => 'Ja no m\'agrada';
}

// Path: misskey.email_
class _StringsMisskeyEmailCaEs extends _StringsMisskeyEmailEnUs {
	_StringsMisskeyEmailCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyEmailFollowCaEs follow_ = _StringsMisskeyEmailFollowCaEs._(_root);
	@override late final _StringsMisskeyEmailReceiveFollowRequestCaEs receiveFollowRequest_ = _StringsMisskeyEmailReceiveFollowRequestCaEs._(_root);
}

// Path: misskey.plugin_
class _StringsMisskeyPluginCaEs extends _StringsMisskeyPluginEnUs {
	_StringsMisskeyPluginCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get install => 'Instal·lar un afegit ';
	@override String get installWarn => 'Si us plau, no instal·lis afegits que no siguin de confiança.';
	@override String get manage => 'Gestionar els afegits';
	@override String get viewSource => 'Veure l\'origen ';
}

// Path: misskey.preferencesBackups_
class _StringsMisskeyPreferencesBackupsCaEs extends _StringsMisskeyPreferencesBackupsEnUs {
	_StringsMisskeyPreferencesBackupsCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get list => 'Llista de còpies de seguretat';
	@override String get saveNew => 'Fer una còpia de seguretat nova';
	@override String get loadFile => 'Carregar des d\'un fitxer';
	@override String get apply => 'Aplicar en aquest dispositiu';
	@override String get save => 'Desar els canvis';
	@override String get inputName => 'Escriu un nom per aquesta còpia de seguretat';
	@override String get cannotSave => 'No s\'ha pogut desar';
	@override String nameAlreadyExists({required Object name}) => 'Ja existeix una còpia de seguretat anomenada "${name}". Escriu un nom diferent.';
	@override String applyConfirm({required Object name}) => 'Vols aplicar la còpia de seguretat "${name}" a aquest dispositiu? La configuració actual del dispositiu serà esborrada.';
	@override String saveConfirm({required Object name}) => 'Desar còpia de seguretat com ${name}?';
	@override String deleteConfirm({required Object name}) => 'Esborrar la còpia de seguretat ${name}?';
	@override String renameConfirm({required Object old, required Object new_}) => 'Vols canvia el nom de la còpia de seguretat de "${old}" a "${new_}"?';
	@override String get noBackups => 'No hi ha còpies de seguretat. Pots fer una còpia de seguretat de la configuració d\'aquest dispositiu al servidor fent servir "Crear nova còpia de seguretat"';
	@override String createdAt({required Object date, required Object time}) => 'Creat el: ${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => 'Actualitzat el: ${date} ${time}';
	@override String get cannotLoad => 'Hi ha hagut un error al carregar';
	@override String get invalidFile => 'Format del fitxer no vàlid ';
}

// Path: misskey.registry_
class _StringsMisskeyRegistryCaEs extends _StringsMisskeyRegistryEnUs {
	_StringsMisskeyRegistryCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Àmbit ';
	@override String get key => 'Clau';
	@override String get keys => 'Claus';
	@override String get domain => 'Domini';
	@override String get createKey => 'Crear una clau';
}

// Path: misskey.aboutMisskey_
class _StringsMisskeyAboutMisskeyCaEs extends _StringsMisskeyAboutMisskeyEnUs {
	_StringsMisskeyAboutMisskeyCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey és un programa de codi obert desenvolupar per syuilo des de 2014';
	@override String get contributors => 'Col·laboradors principals';
	@override String get allContributors => 'Tots els col·laboradors ';
	@override String get source => 'Codi font';
	@override String get translation => 'Tradueix Misskey';
	@override String get donate => 'Fes un donatiu a Misskey';
	@override String get morePatrons => 'També agraïm el suport d\'altres col·laboradors que no surten en aquesta llista. Gràcies! 🥰';
	@override String get patrons => 'Patrocinadors';
	@override String get projectMembers => 'Membres del projecte';
}

// Path: misskey.displayOfSensitiveMedia_
class _StringsMisskeyDisplayOfSensitiveMediaCaEs extends _StringsMisskeyDisplayOfSensitiveMediaEnUs {
	_StringsMisskeyDisplayOfSensitiveMediaCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get respect => 'Ocultar imatges o vídeos marcats com a sensibles';
	@override String get ignore => 'Mostrar imatges o vídeos marcats com a sensibles';
	@override String get force => 'Ocultar totes les imatges o vídeos ';
}

// Path: misskey.instanceTicker_
class _StringsMisskeyInstanceTickerCaEs extends _StringsMisskeyInstanceTickerEnUs {
	_StringsMisskeyInstanceTickerCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get none => 'No mostrar mai';
	@override String get remote => 'Mostrar per usuaris remots';
	@override String get always => 'Mostrar sempre';
}

// Path: misskey.serverDisconnectedBehavior_
class _StringsMisskeyServerDisconnectedBehaviorCaEs extends _StringsMisskeyServerDisconnectedBehaviorEnUs {
	_StringsMisskeyServerDisconnectedBehaviorCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Recarregar automàticament ';
	@override String get dialog => 'Mostrar finestres de confirmació ';
	@override String get quiet => 'Mostrar un avís que no molesti';
}

// Path: misskey.channel_
class _StringsMisskeyChannelCaEs extends _StringsMisskeyChannelEnUs {
	_StringsMisskeyChannelCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get create => 'Crear un canal';
	@override String get edit => 'Editar canal';
	@override String get setBanner => 'Estableix el bàner ';
	@override String get removeBanner => 'Eliminar el.bàner';
	@override String get featured => 'Popular';
	@override String get owned => 'Propietat';
	@override String get following => 'Seguin';
	@override String usersCount({required Object n}) => '${n} Participants';
	@override String notesCount({required Object n}) => '${n} Notes';
	@override String get nameAndDescription => 'Nom i descripció ';
	@override String get nameOnly => 'Nom només ';
	@override String get allowRenoteToExternal => 'Permet la citació i l\'impuls fora del canal';
}

// Path: misskey.menuDisplay_
class _StringsMisskeyMenuDisplayCaEs extends _StringsMisskeyMenuDisplayEnUs {
	_StringsMisskeyMenuDisplayCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Horitzontal ';
	@override String get sideIcon => 'Horitzontal (icones)';
	@override String get top => 'A dalt';
	@override String get hide => 'Amagar';
}

// Path: misskey.wordMute_
class _StringsMisskeyWordMuteCaEs extends _StringsMisskeyWordMuteEnUs {
	_StringsMisskeyWordMuteCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Paraules silenciades';
	@override String get muteWordsDescription => 'Separar amb espais per la condició AND o amb salts de línia per la condició OR.';
	@override String get muteWordsDescription2 => 'Envolta les paraules amb barres per fer servir expressions regulars.';
}

// Path: misskey.instanceMute_
class _StringsMisskeyInstanceMuteCaEs extends _StringsMisskeyInstanceMuteEnUs {
	_StringsMisskeyInstanceMuteCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Silencia tots els impulsos dels servidors seleccionats, també els usuaris que responen a altres d\'un servidor silenciat.';
	@override String get instanceMuteDescription2 => 'Separar amb salts de línia';
	@override String get title => 'Ocultar notes de les instàncies en la llista.';
	@override String get heading => 'Llista d\'instàncies a silenciar';
}

// Path: misskey.theme_
class _StringsMisskeyThemeCaEs extends _StringsMisskeyThemeEnUs {
	_StringsMisskeyThemeCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get explore => 'Explorar els temes ';
	@override String get install => 'Instal·lar un tema';
	@override String get manage => 'Gestionar els temes ';
	@override String get code => 'Codi del tema';
	@override String get description => 'Descripció';
	@override String installed({required Object name}) => '${name} Instal·lat ';
	@override String get installedThemes => 'Temes instal·lats ';
	@override String get builtinThemes => 'Temes integrats';
	@override String get alreadyInstalled => 'Aquest tema ja es troba instal·lat ';
	@override String get invalid => 'El format d\'aquest tema no és correcte';
	@override String get make => 'Crear un tema';
	@override String get base => 'Base';
	@override String get addConstant => 'Afegir constant ';
	@override String get constant => 'Constant';
	@override String get defaultValue => 'Valor per defecte';
	@override String get color => 'Color';
	@override String get refProp => 'Referència a una propietat';
	@override String get refConst => 'Referència a una constant ';
	@override String get key => 'Clau';
	@override String get func => 'Funcions';
	@override String get funcKind => 'Tipus de funció ';
	@override String get argument => 'Argument';
	@override String get basedProp => 'Propietat referenciada';
	@override String get alpha => 'Opacitat';
	@override String get darken => 'Enfosquir ';
	@override String get lighten => 'Brillantor';
	@override String get inputConstantName => 'Escriu un nom per aquesta constant';
	@override String get importInfo => 'Si escrius el codi del tema aquí, el podràs importar a l\'editor del tema';
	@override String deleteConstantConfirm({required Object const_}) => 'Vols esborrar la constant ${const_}?';
	@override late final _StringsMisskeyThemeKeysCaEs keys = _StringsMisskeyThemeKeysCaEs._(_root);
}

// Path: misskey.sfx_
class _StringsMisskeySfxCaEs extends _StringsMisskeySfxEnUs {
	_StringsMisskeySfxCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get note => 'Notes';
	@override String get noteMy => 'Nota (per mi)';
	@override String get notification => 'Notificacions';
	@override String get antenna => 'Antenes';
	@override String get channel => 'Notificacions dels canals';
	@override String get reaction => 'Quan se selecciona una reacció ';
}

// Path: misskey.soundSettings_
class _StringsMisskeySoundSettingsCaEs extends _StringsMisskeySoundSettingsEnUs {
	_StringsMisskeySoundSettingsCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get driveFile => 'Fer servir un fitxer d\'àudio del disc';
	@override String get driveFileWarn => 'Seleccionar un fitxer d\'àudio del disc';
	@override String get driveFileTypeWarn => 'Fitxer no suportat ';
	@override String get driveFileTypeWarnDescription => 'Seleccionar un fitxer d\'àudio ';
	@override String get driveFileDurationWarn => 'L\'àudio és massa llarg';
	@override String get driveFileDurationWarnDescription => 'Els àudios molt llargs pot interrompre l\'ús de Misskey. Vols continuar?';
}

// Path: misskey.ago_
class _StringsMisskeyAgoCaEs extends _StringsMisskeyAgoEnUs {
	_StringsMisskeyAgoCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get future => 'Futur ';
	@override String get justNow => 'Ara mateix';
	@override String secondsAgo({required Object n}) => 'Fa ${n} segons';
	@override String minutesAgo({required Object n}) => 'Fa ${n} minuts';
	@override String hoursAgo({required Object n}) => 'Fa ${n} hores';
	@override String daysAgo({required Object n}) => 'Fa ${n} dies';
	@override String weeksAgo({required Object n}) => 'Fa ${n} setmanes';
	@override String monthsAgo({required Object n}) => 'Fa ${n} mesos';
	@override String yearsAgo({required Object n}) => 'Fa ${n} anys';
	@override String get invalid => 'Res';
}

// Path: misskey.timeIn_
class _StringsMisskeyTimeInCaEs extends _StringsMisskeyTimeInEnUs {
	_StringsMisskeyTimeInCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String seconds({required Object n}) => 'En ${n} segons';
	@override String minutes({required Object n}) => 'En ${n} minuts';
	@override String hours({required Object n}) => 'En ${n} hores';
	@override String days({required Object n}) => 'En ${n} dies';
	@override String weeks({required Object n}) => 'En ${n} setmanes';
	@override String months({required Object n}) => 'En ${n} mesos';
	@override String years({required Object n}) => 'En ${n} anys';
}

// Path: misskey.time_
class _StringsMisskeyTimeCaEs extends _StringsMisskeyTimeEnUs {
	_StringsMisskeyTimeCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get second => 'Segon(s)';
	@override String get minute => 'Minut(s)';
	@override String get hour => 'Hor(a)(es)';
	@override String get day => 'Di(a)(es)';
}

// Path: misskey.x2fa_
class _StringsMisskeyX2faCaEs extends _StringsMisskeyX2faEnUs {
	_StringsMisskeyX2faCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'J has registrat un dispositiu d\'autenticació de doble factor.';
	@override String get registerTOTP => 'Registrar una aplicació autenticadora';
	@override String step1({required Object a, required Object b}) => 'Primer instal·la una aplicació autenticadora (com ${a} o ${b}) al teu dispositiu.';
	@override String get step2 => 'Després escaneja el codi QR que es mostra en aquesta pantalla.';
	@override String get step2Click => 'Fent clic en aquest codi QR et permetrà registrar l\'autenticació de doble factor a la teva clau de seguretat o en l\'aplicació d\'autenticació del teu dispositiu.';
	@override String get step2Uri => 'Escriu la següent URI si estàs fent servir una aplicació d\'escriptori ';
	@override String get step3Title => 'Escriu un codi d\'autenticació';
	@override String get step3 => 'Escriu el codi d\'autenticació (token) que es mostra a la teva aplicació per finalitzar la configuració.';
	@override String get setupCompleted => 'Configuració terminada';
	@override String get step4 => 'D\'ara endavant quan accedeixis se\'t demanarà el token que has introduït.';
	@override String get securityKeyNotSupported => 'El teu navegador no suporta claus de seguretat';
	@override String get registerTOTPBeforeKey => 'Configura una aplicació d\'autenticació per registrar una clau de seguretat o una clau de pas.';
	@override String get securityKeyInfo => 'A més de l\'empremta digital o PIN per autenticar-te, pots configurar autenticació mitjançant maquinari que suporti claus de seguretat FIDO2, per protegir encara més el teu compte.';
	@override String get registerSecurityKey => 'Registrar una clau de seguretat o clau de pas';
	@override String get securityKeyName => 'Escriu un nom per la clau';
	@override String get tapSecurityKey => 'Seguiu les instruccions del navegador i registrar les claus de seguretat o la clau de pas';
	@override String get removeKey => 'Esborrar la clau de seguretat';
	@override String removeKeyConfirm({required Object name}) => 'Esborrar la còpia de seguretat ${name}?';
	@override String get whyTOTPOnlyRenew => 'L\'aplicació d\'autenticació no es pot eliminar mentre hi hagi una clau de seguretat registrada.';
	@override String get renewTOTP => 'Reconfigurar l\'aplicació d\'autenticació ';
	@override String get renewTOTPConfirm => 'Això farà que els codis de validació de l\'antiga aplicació deixin de funcionar';
	@override String get renewTOTPOk => 'Reconfigurar';
	@override String get renewTOTPCancel => 'No, gràcies';
	@override String get checkBackupCodesBeforeCloseThisWizard => 'Abans de tancar aquesta finestra, comprova el següent codi de seguretat.';
	@override String get backupCodes => 'Codi de seguretat.';
	@override String get backupCodesDescription => 'Si l\'aplicació d\'autenticació no es pot utilitzar, es pot accedir al compte utilitzant els següents codis de còpia de seguretat. Assegura\'t de mantenir aquests codis en un lloc segur. Cada codi es pot utilitzar només una vegada.';
	@override String get backupCodeUsedWarning => 'Es va utilitzar un codi de còpia de seguretat. Si l\'aplicació de certificació està disponible, reconfigura l\'aplicació d\'autenticació tan aviat com sigui possible.';
	@override String get backupCodesExhaustedWarning => 'Es van utilitzar tots els codis de còpia de seguretat. Si no es pot utilitzar l\'aplicació d\'autenticació, ja no es pot accedir al compte. Torna a registrar l\'aplicació d\'autenticació.';
}

// Path: misskey.permissions_
class _StringsMisskeyPermissionsCaEs extends _StringsMisskeyPermissionsEnUs {
	_StringsMisskeyPermissionsCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'Veure la informació del compte.';
	@override String get writeAccount => 'Editar la informació del compte.';
	@override String get readBlocks => 'Veure la llista d\'usuaris bloquejats';
	@override String get writeBlocks => 'Editar la llista d\'usuaris blocats';
	@override String get readDrive => 'Accedeix als teus fitxers i carpetes del Disc';
	@override String get writeDrive => 'Editar o eliminar els teus fitxers i carpetes al Disc';
	@override String get readFavorites => 'Veure la teva llista de favorits';
	@override String get writeFavorites => 'Editar la teva llista de favorits';
	@override String get readFollowing => 'Veure informació de qui segueixes';
	@override String get writeFollowing => 'Segueix o deixa de seguir altres comptes';
	@override String get readMessaging => 'Veure els teus xats';
	@override String get writeMessaging => 'Crear o esborrar missatges de xat';
	@override String get readMutes => 'Veure la teva llista d\'usuaris silenciats';
	@override String get writeMutes => 'Editar la teva llista d\'usuaris silenciats';
	@override String get writeNotes => 'Crear o esborrar notes';
	@override String get readNotifications => 'Veure les teves notificacions';
	@override String get writeNotifications => 'Gestionar les teves notificacions';
	@override String get readReactions => 'Veure les teves reaccions';
	@override String get writeReactions => 'Editar les teves reaccions';
	@override String get writeVotes => 'Votar en una enquesta';
	@override String get readPages => 'Veure les teves pàgines ';
	@override String get writePages => 'Editar o esborrar les teves pàgines ';
	@override String get readPageLikes => 'Veure la llista de les pàgines que t\'han agradat';
	@override String get writePageLikes => 'Editar la llista de les pàgines que t\'han agradat';
	@override String get readUserGroups => 'Veure els teus grups d\'usuaris ';
	@override String get writeUserGroups => 'Editar o esborrar els teus grups d\'usuaris ';
	@override String get readChannels => 'Veure els teus canals';
	@override String get writeChannels => 'Editar els teus canals';
	@override String get readGallery => 'Veure la teva galeria ';
	@override String get writeGallery => 'Editar la teva galeria';
	@override String get readGalleryLikes => 'Veure la llista de publicacions de galeries que t\'han agradat';
	@override String get writeGalleryLikes => 'Editar la llista de publicacions de galeries que t\'han agradat';
	@override String get readFlash => 'Veure reproduccions';
	@override String get writeFlash => 'Editar reproduccions';
	@override String get readFlashLikes => 'Veure la llista de reproduccions que t\'han agradat';
	@override String get writeFlashLikes => 'Editar la llista de reproduccions que t\'han agradat';
	@override String get readAdminAbuseUserReports => 'Veure informes d\'usuaris ';
	@override String get writeAdminDeleteAccount => 'Esborrar compte d\'usuari ';
	@override String get writeAdminDeleteAllFilesOfAUser => 'Esborrar tots els fitxers d\'un usuari';
	@override String get readAdminIndexStats => 'Veure l\'índex de la base de dades';
	@override String get readAdminTableStats => 'Veure la informació de les taules a la base de dades';
	@override String get readAdminUserIps => 'Veure adreça IP de l\'usuari ';
	@override String get readAdminMeta => 'Veure meta-informació del servidor';
	@override String get writeAdminResetPassword => 'Reiniciar contrasenya d\'usuari ';
	@override String get writeAdminResolveAbuseUserReport => 'Resoldre informes d\'usuaris ';
	@override String get writeAdminSendEmail => 'Enviar correu electrònic ';
	@override String get readAdminServerInfo => 'Veure informació del servidor';
	@override String get readAdminShowModerationLog => 'Veure registre de moderació ';
	@override String get readAdminShowUser => 'Veure informació privada de l\'usuari ';
	@override String get readAdminShowUsers => 'Veure informació privada de l\'usuari ';
	@override String get writeAdminSuspendUser => 'Suspendre usuari';
	@override String get writeAdminUnsetUserAvatar => 'Esborrar avatar d\'usuari ';
	@override String get writeAdminUnsetUserBanner => 'Esborrar bàner de l\'usuari ';
	@override String get writeAdminUnsuspendUser => 'Treure la suspensió d\'un usuari';
	@override String get writeAdminMeta => 'Gestionar les metadades de la instància';
	@override String get writeAdminUserNote => 'Gestionar les notes de moderació ';
	@override String get writeAdminRoles => 'Gestionar rols';
	@override String get readAdminRoles => 'Veure rols';
	@override String get writeAdminRelays => 'Gestionar relé';
	@override String get readAdminRelays => 'Veure relés';
	@override String get writeAdminInviteCodes => 'Gestionar codis d\'invitació ';
	@override String get readAdminInviteCodes => 'Veure codis d\'invitació ';
	@override String get writeAdminAnnouncements => 'Gestionar anuncis';
	@override String get readAdminAnnouncements => 'Veure anuncis';
	@override String get writeAdminAvatarDecorations => 'Gestionar la decoració dels avatars';
	@override String get readAdminAvatarDecorations => 'Veure les decoracions dels avatars';
	@override String get writeAdminFederation => 'Gestionar la federació d\'instàncies ';
	@override String get writeAdminAccount => 'Gestionar els comptes d\'usuaris ';
	@override String get readAdminAccount => 'Veure els comptes d\'usuaris ';
	@override String get writeAdminEmoji => 'Edició d\'emojis';
	@override String get readAdminEmoji => 'Veure emojis';
	@override String get writeAdminQueue => 'Gestionar la cua de feines';
	@override String get readAdminQueue => 'Veure la cua de feines';
}

// Path: misskey.antennaSources_
class _StringsMisskeyAntennaSourcesCaEs extends _StringsMisskeyAntennaSourcesEnUs {
	_StringsMisskeyAntennaSourcesCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get all => 'Totes les publicacions';
	@override String get homeTimeline => 'Publicacions dels usuaris seguits';
	@override String get users => 'Publicacions d\'usuaris específics';
	@override String get userList => 'Publicacions d\'una llista d\'usuaris';
}

// Path: misskey.widgets_
class _StringsMisskeyWidgetsCaEs extends _StringsMisskeyWidgetsEnUs {
	_StringsMisskeyWidgetsCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Perfil';
	@override String get instanceInfo => 'Informació del fitxer d\'instal·lació';
	@override String get notifications => 'Notificacions';
	@override String get timeline => 'Línia de temps';
	@override String get activity => 'Activitat';
	@override String get federation => 'Federació';
	@override String get button => 'Botó ';
	@override String get jobQueue => 'Cua de tasques';
	@override late final _StringsMisskeyWidgetsUserListCaEs userList_ = _StringsMisskeyWidgetsUserListCaEs._(_root);
}

// Path: misskey.cw_
class _StringsMisskeyCwCaEs extends _StringsMisskeyCwEnUs {
	_StringsMisskeyCwCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Amagar';
	@override String get show => 'Carregar més';
	@override String chars({required Object count}) => '${count} caràcters ';
	@override String files({required Object count}) => '${count} fitxer(s)';
}

// Path: misskey.poll_
class _StringsMisskeyPollCaEs extends _StringsMisskeyPollEnUs {
	_StringsMisskeyPollCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'Es necessita escollir dues opcions com a mínim ';
	@override String choiceN({required Object n}) => 'Opció ${n}';
	@override String get noMore => 'No pots afegir més opcions';
	@override String get canMultipleVote => 'Permetre escollir diferents opcions';
	@override String get expiration => 'Finalitza el';
	@override String get infinite => 'Mai';
	@override String get at => 'Finalitza en...';
	@override String get after => 'Finalitza després...';
	@override String get deadlineDate => 'Data de finalització ';
	@override String get deadlineTime => 'Hor(a)(es)';
	@override String get duration => 'Duració ';
	@override String votesCount({required Object n}) => '${n} vots';
	@override String totalVotes({required Object n}) => '${n} vots en total';
	@override String get vote => 'Votar en una enquesta';
	@override String get showResult => 'Veure resultats';
	@override String get voted => 'Has votat';
	@override String get closed => 'Finalitzada';
	@override String remainingDays({required Object d, required Object h}) => 'Queden ${d} dies i ${h} hores per finalitzar';
	@override String remainingHours({required Object h, required Object m}) => 'Queden ${h} hores i ${m} minuts';
	@override String remainingMinutes({required Object m, required Object s}) => 'Queden ${m} minuts i ${s} segons';
	@override String remainingSeconds({required Object s}) => 'Queden ${s} segons';
}

// Path: misskey.visibility_
class _StringsMisskeyVisibilityCaEs extends _StringsMisskeyVisibilityEnUs {
	_StringsMisskeyVisibilityCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get public => 'Públic ';
	@override String get publicDescription => 'La teva nota la podrà veure tothom ';
	@override String get home => 'Inici';
	@override String get homeDescription => 'Publicar només a la línia de temps d\'Inici ';
	@override String get followers => 'Seguidors';
	@override String get followersDescription => 'Fes només visible per als teus seguidors';
	@override String get specified => 'Directe';
	@override String get specifiedDescription => 'Fer visible només per alguns usuaris';
	@override String get disableFederation => 'Sense federar';
	@override String get disableFederationDescription => 'No enviar a altres servidors';
}

// Path: misskey.postForm_
class _StringsMisskeyPostFormCaEs extends _StringsMisskeyPostFormEnUs {
	_StringsMisskeyPostFormCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'Contestar...';
	@override String get quotePlaceholder => 'Citar...';
	@override String get channelPlaceholder => 'Publicar a un canal...';
	@override late final _StringsMisskeyPostFormPlaceholdersCaEs placeholders_ = _StringsMisskeyPostFormPlaceholdersCaEs._(_root);
}

// Path: misskey.profile_
class _StringsMisskeyProfileCaEs extends _StringsMisskeyProfileEnUs {
	_StringsMisskeyProfileCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nom';
	@override String get username => 'Nom d\'usuari';
	@override String get description => 'Biografia ';
	@override String get youCanIncludeHashtags => 'Pots posar etiquetes a la teva biografia ';
	@override String get metadata => 'Informació adicional ';
	@override String get metadataEdit => 'Editar la informació adicional ';
	@override String get metadataDescription => 'Amb això podràs mostrar camps d\'informació adicional al teu perfil.';
	@override String get metadataLabel => 'Etiqueta ';
	@override String get metadataContent => 'Contingut';
	@override String get changeAvatar => 'Canviar l\'avatar ';
	@override String get changeBanner => 'Canviar el bàner ';
	@override String get verifiedLinkDescription => 'Escrivint una adreça URL que enllaci a aquest perfil, una icona de propietat verificada es mostrarà al costat del camp.';
	@override String avatarDecorationMax({required Object max}) => 'Pot afegir un màxim de ${max} decoracions.';
}

// Path: misskey.exportOrImport_
class _StringsMisskeyExportOrImportCaEs extends _StringsMisskeyExportOrImportEnUs {
	_StringsMisskeyExportOrImportCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Totes les publicacions';
	@override String get clips => 'Retalls';
	@override String get followingList => 'Seguint';
	@override String get muteList => 'Silencia';
	@override String get blockingList => 'Bloqueja';
	@override String get userLists => 'Llistes';
}

// Path: misskey.charts_
class _StringsMisskeyChartsCaEs extends _StringsMisskeyChartsEnUs {
	_StringsMisskeyChartsCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Federació';
}

// Path: misskey.timelines_
class _StringsMisskeyTimelinesCaEs extends _StringsMisskeyTimelinesEnUs {
	_StringsMisskeyTimelinesCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get home => 'Inici';
	@override String get local => 'Local';
	@override String get social => 'Social';
	@override String get global => 'Global';
}

// Path: misskey.play_
class _StringsMisskeyPlayCaEs extends _StringsMisskeyPlayEnUs {
	_StringsMisskeyPlayCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get viewSource => 'Veure l\'origen ';
	@override String get featured => 'Popular';
	@override String get title => 'Títol ';
	@override String get script => 'Script';
	@override String get summary => 'Descripció';
}

// Path: misskey.pages_
class _StringsMisskeyPagesCaEs extends _StringsMisskeyPagesEnUs {
	_StringsMisskeyPagesCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get viewSource => 'Veure l\'origen ';
	@override String get viewPage => 'Veure les teves pàgines ';
	@override String get like => 'M\'agrada ';
	@override String get unlike => 'Treure m\'agrada ';
	@override String get my => 'Les meves pàgines ';
	@override String get liked => 'Pàgines que m\'agraden ';
	@override String get featured => 'Popular';
	@override String get inspector => 'Inspeccionar';
	@override String get contents => 'Contingut';
	@override String get content => 'Bloquejar la pàgina ';
	@override String get variables => 'Variables';
	@override String get title => 'Títol ';
	@override String get url => 'URL de la pàgina ';
	@override String get summary => 'Resum de la pàgina ';
	@override String get alignCenter => 'Centrar elements';
	@override String get hideTitleWhenPinned => 'Amagar el títol de la pàgina quan estigui fixada al perfil';
	@override String get font => 'Lletra tipogràfica';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
	@override String get eyeCatchingImageSet => 'Escull una miniatura';
	@override String get eyeCatchingImageRemove => 'Esborrar la miniatura';
	@override String get chooseBlock => 'Afegeix un bloc';
	@override String get selectType => 'Seleccionar tipus';
	@override String get contentBlocks => 'Contingut';
	@override String get inputBlocks => 'Entrada ';
	@override String get specialBlocks => 'Especial';
	@override late final _StringsMisskeyPagesBlocksCaEs blocks = _StringsMisskeyPagesBlocksCaEs._(_root);
}

// Path: misskey.relayStatus_
class _StringsMisskeyRelayStatusCaEs extends _StringsMisskeyRelayStatusEnUs {
	_StringsMisskeyRelayStatusCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'Pendent';
	@override String get accepted => 'Acceptat';
	@override String get rejected => 'Rebutjat';
}

// Path: misskey.notification_
class _StringsMisskeyNotificationCaEs extends _StringsMisskeyNotificationEnUs {
	_StringsMisskeyNotificationCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'Fitxer pujat sense cap problema';
	@override String youGotMention({required Object name}) => '${name} t\'ha mencionat';
	@override String youGotReply({required Object name}) => '${name} t\'ha contestat';
	@override String youGotQuote({required Object name}) => '${name} t\'ha citat';
	@override String youRenoted({required Object name}) => 'Impulsat per ${name}';
	@override String get youWereFollowed => 't\'ha seguit';
	@override String get youReceivedFollowRequest => 'Has rebut una petició de seguiment';
	@override String get yourFollowRequestAccepted => 'La teva petició de seguiment ha sigut acceptada';
	@override String get pollEnded => 'Ja pots veure els resultats de l\'enquesta ';
	@override String get newNote => 'Nota nova';
	@override String unreadAntennaNote({required Object name}) => 'Antena ${name}';
	@override String get roleAssigned => 'Rol assignat ';
	@override String get emptyPushNotificationMessage => 'Les notificacions han sigut actualitzades';
	@override String get achievementEarned => 'Aconseguiment desblocat';
	@override String get testNotification => 'Notificació de prova';
	@override String get checkNotificationBehavior => 'Comprova el comportament de la notificació ';
	@override String get sendTestNotification => 'Enviar notificació de prova';
	@override String get notificationWillBeDisplayedLikeThis => 'Les notificacions és veure\'n així ';
	@override String reactedBySomeUsers({required Object n}) => 'Han reaccionat ${n} usuaris';
	@override String renotedBySomeUsers({required Object n}) => 'L\'han impulsat ${n} usuaris';
	@override late final _StringsMisskeyNotificationTypesCaEs types_ = _StringsMisskeyNotificationTypesCaEs._(_root);
	@override late final _StringsMisskeyNotificationActionsCaEs actions_ = _StringsMisskeyNotificationActionsCaEs._(_root);
}

// Path: misskey.deck_
class _StringsMisskeyDeckCaEs extends _StringsMisskeyDeckEnUs {
	_StringsMisskeyDeckCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get columnAlign => 'Alinea les columnes';
	@override String get addColumn => 'Afig una columna';
	@override String get swapLeft => 'Mou a l’esquerra';
	@override String get swapRight => 'Mou a la dreta';
	@override String get swapUp => 'Mou cap amunt';
	@override String get swapDown => 'Mou cap avall';
	@override String get popRight => 'Col·loca a la dreta';
	@override String get profile => 'Perfil';
	@override String get newProfile => 'Perfil nou';
	@override String get deleteProfile => 'Elimina el perfil';
	@override late final _StringsMisskeyDeckColumnsCaEs columns_ = _StringsMisskeyDeckColumnsCaEs._(_root);
}

// Path: misskey.webhookSettings_
class _StringsMisskeyWebhookSettingsCaEs extends _StringsMisskeyWebhookSettingsEnUs {
	_StringsMisskeyWebhookSettingsCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nom';
	@override String get active => 'Activat';
}

// Path: misskey.moderationLogTypes_
class _StringsMisskeyModerationLogTypesCaEs extends _StringsMisskeyModerationLogTypesEnUs {
	_StringsMisskeyModerationLogTypesCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'Suspèn';
	@override String get resetPassword => 'Restableix la contrasenya';
	@override String get suspendRemoteInstance => 'Servidor remot suspès ';
	@override String get unsuspendRemoteInstance => 'S\'ha tret la suspensió del servidor remot';
	@override String get markSensitiveDriveFile => 'Fitxer marcat com a sensible';
	@override String get unmarkSensitiveDriveFile => 'S\'ha tret la marca de sensible del fitxer';
	@override String get resolveAbuseReport => 'Informe resolt';
	@override String get createInvitation => 'Crear codi d\'invitació ';
	@override String get createAd => 'Anunci creat';
	@override String get deleteAd => 'Anunci esborrat';
	@override String get updateAd => 'Anunci actualitzat';
	@override String get createAvatarDecoration => 'Decoració de l\'avatar creada';
	@override String get updateAvatarDecoration => 'S\'ha actualitzat la decoració de l\'avatar ';
	@override String get deleteAvatarDecoration => 'S\'ha esborrat la decoració de l\'avatar ';
	@override String get unsetUserAvatar => 'Esborrar l\'avatar d\'aquest usuari';
	@override String get unsetUserBanner => 'Esborrar el bàner d\'aquest usuari';
}

// Path: misskey.fileViewer_
class _StringsMisskeyFileViewerCaEs extends _StringsMisskeyFileViewerEnUs {
	_StringsMisskeyFileViewerCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Detall del fitxer';
	@override String get type => 'Tipus de fitxer';
	@override String get size => 'Mida';
	@override String get url => 'URL';
	@override String get uploadedAt => 'Pujat el';
	@override String get attachedNotes => 'Notes amb aquest fitxer';
	@override String get thisPageCanBeSeenFromTheAuthor => 'Aquesta pàgina només la pot veure l\'usuari que ha pujat aquest fitxer.';
}

// Path: misskey.externalResourceInstaller_
class _StringsMisskeyExternalResourceInstallerCaEs extends _StringsMisskeyExternalResourceInstallerEnUs {
	_StringsMisskeyExternalResourceInstallerCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Instal·lar des d\'un lloc extern';
	@override String get checkVendorBeforeInstall => 'Assegura\'t que qui distribueix aquest recurs és fiable abans d\'instal·lar-ho.';
	@override late final _StringsMisskeyExternalResourceInstallerPluginCaEs plugin_ = _StringsMisskeyExternalResourceInstallerPluginCaEs._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerThemeCaEs theme_ = _StringsMisskeyExternalResourceInstallerThemeCaEs._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerMetaCaEs meta_ = _StringsMisskeyExternalResourceInstallerMetaCaEs._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerVendorInfoCaEs vendorInfo_ = _StringsMisskeyExternalResourceInstallerVendorInfoCaEs._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsCaEs errors_ = _StringsMisskeyExternalResourceInstallerErrorsCaEs._(_root);
}

// Path: misskey.reversi_
class _StringsMisskeyReversiCaEs extends _StringsMisskeyReversiEnUs {
	_StringsMisskeyReversiCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get total => 'Total';
}

// Path: misskey.bubbleGame_.howToPlay_
class _StringsMisskeyBubbleGameHowToPlayCaEs extends _StringsMisskeyBubbleGameHowToPlayEnUs {
	_StringsMisskeyBubbleGameHowToPlayCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get section1 => 'Ajusta la posició i deixa caure l\'objecte dintre la caixa.';
	@override String get section2 => 'Quan dos objectes del mateix tipus es toquen, canviaran en un objecte diferent i guanyares punts.';
	@override String get section3 => 'El joc s\'acabarà quan els objectes sobresurtin de la caixa. Intenta aconseguir la puntuació més gran possible fusionant objectes mentre impedeixes que sobresurtin de la caixa!';
}

// Path: misskey.initialTutorial_.landing_
class _StringsMisskeyInitialTutorialLandingCaEs extends _StringsMisskeyInitialTutorialLandingEnUs {
	_StringsMisskeyInitialTutorialLandingCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Benvingut al tutorial';
	@override String get description => 'Aquí aprendràs el bàsic per poder fer servir Misskey i les seves característiques.';
}

// Path: misskey.initialTutorial_.note_
class _StringsMisskeyInitialTutorialNoteCaEs extends _StringsMisskeyInitialTutorialNoteEnUs {
	_StringsMisskeyInitialTutorialNoteCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Què és una Nota?';
	@override String get description => 'Les publicacions a Misskey es diuen \'Notes\'. Les Notes s\'ordenen cronològicament a la línia de temps i s\'actualitzen de forma automàtica.';
	@override String get reply => 'Fes clic en aquest botó per contestar a un missatge. També és possible contestar a una contestació, continuant la conversació en forma de fil.';
	@override String get renote => 'Pots compartir una Nota a la teva pròpia línia de temps. Inclús pots citar-les amb els teus comentaris.';
	@override String get reaction => 'Pots afegir reaccions a les Notes. Entrarem més en detall a la pròxima pàgina.';
	@override String get menu => 'Pots veure els detalls de les Notes, copiar enllaços i fer diferents accions.';
}

// Path: misskey.initialTutorial_.reaction_
class _StringsMisskeyInitialTutorialReactionCaEs extends _StringsMisskeyInitialTutorialReactionEnUs {
	_StringsMisskeyInitialTutorialReactionCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Què són les Reaccions?';
	@override String get description => 'Es poden reaccionar a les Notes amb diferents emoticones. Les reaccions et permeten expressar matisos que hi són més enllà d\'un simple m\'agrada.';
	@override String get letsTryReacting => 'Es poden afegir reaccions fent clic al botó \'+\'. Prova reaccionant a aquesta nota!';
	@override String get reactToContinue => 'Afegeix una reacció per continuar.';
	@override String get reactNotification => 'Rebràs notificacions en temps real quan un usuari reaccioni a les teves notes.';
	@override String get reactDone => 'Pots desfer una reacció fent clic al botó \'-\'.';
}

// Path: misskey.initialTutorial_.timeline_
class _StringsMisskeyInitialTutorialTimelineCaEs extends _StringsMisskeyInitialTutorialTimelineEnUs {
	_StringsMisskeyInitialTutorialTimelineCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'El concepte de les línies de temps';
	@override String get description1 => 'Misskey mostra diferents línies de temps basades en l\'ús (algunes poden no estar disponibles depenent de la política del servidor)';
	@override String get home => 'Pots veure notes dels comptes que segueixes';
	@override String get local => 'Pots veure les notes dels usuaris del servidor.';
	@override String get social => 'Es mostren les notes de les línies de temps d\'Inici i Local.';
	@override String get global => 'Pots veure les notes de tots els servidors connectats.';
	@override String get description2 => 'Pots canviar la línia de temps en qualsevol moment fent servir la barra de la pantalla superior.';
	@override String description3({required Object link}) => 'A més hi ha línies de temps per llistes i per canals. Si vols saber més ${link}.';
}

// Path: misskey.initialTutorial_.postNote_
class _StringsMisskeyInitialTutorialPostNoteCaEs extends _StringsMisskeyInitialTutorialPostNoteEnUs {
	_StringsMisskeyInitialTutorialPostNoteCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Configuració de la publicació de les notes';
	@override String get description1 => 'Quan públiques una nota a Misskey hi ha diferents opcions disponibles. El formulari de publicació es veu així';
	@override late final _StringsMisskeyInitialTutorialPostNoteVisibilityCaEs visibility_ = _StringsMisskeyInitialTutorialPostNoteVisibilityCaEs._(_root);
	@override late final _StringsMisskeyInitialTutorialPostNoteCwCaEs cw_ = _StringsMisskeyInitialTutorialPostNoteCwCaEs._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveCaEs extends _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Com marcar adjunts com a contingut sensible?';
	@override String get description => 'Per adjunts que sigui requerit per les normes del servidor o que puguin contenir material sensible, s\'ha d\'afegir l\'opció \'sensible\'.';
	@override String get tryThisFile => 'Prova de marcar la imatge adjunta en aquest formulari com a sensible!';
	@override late final _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteCaEs exampleNote_ = _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteCaEs._(_root);
	@override String get method => 'Per marcar un adjunt com a sensible, fes clic a la miniatura de l\'adjunt, obre el menú i fes clic a \'Marcar com a sensible\'.';
	@override String get sensitiveSucceeded => 'Quan adjuntis fitxers si us plau marca la sensibilitat seguint les normes del servidor.';
	@override String get doItToContinue => 'Marca el fitxer adjunt com a sensible per poder continuar.';
}

// Path: misskey.initialTutorial_.done_
class _StringsMisskeyInitialTutorialDoneCaEs extends _StringsMisskeyInitialTutorialDoneEnUs {
	_StringsMisskeyInitialTutorialDoneCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Has completat el tutorial 🎉';
	@override String description({required Object link}) => 'Les funcions explicades aquí és una petita mostra. Per una explicació més detallada de com fer servir MissKey consulta ${link}.';
}

// Path: misskey.achievements_.types_
class _StringsMisskeyAchievementsTypesCaEs extends _StringsMisskeyAchievementsTypesEnUs {
	_StringsMisskeyAchievementsTypesCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAchievementsTypesNotes1CaEs notes1_ = _StringsMisskeyAchievementsTypesNotes1CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10CaEs notes10_ = _StringsMisskeyAchievementsTypesNotes10CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100CaEs notes100_ = _StringsMisskeyAchievementsTypesNotes100CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes500CaEs notes500_ = _StringsMisskeyAchievementsTypesNotes500CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes1000CaEs notes1000_ = _StringsMisskeyAchievementsTypesNotes1000CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes5000CaEs notes5000_ = _StringsMisskeyAchievementsTypesNotes5000CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10000CaEs notes10000_ = _StringsMisskeyAchievementsTypesNotes10000CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes20000CaEs notes20000_ = _StringsMisskeyAchievementsTypesNotes20000CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes30000CaEs notes30000_ = _StringsMisskeyAchievementsTypesNotes30000CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes40000CaEs notes40000_ = _StringsMisskeyAchievementsTypesNotes40000CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes50000CaEs notes50000_ = _StringsMisskeyAchievementsTypesNotes50000CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes60000CaEs notes60000_ = _StringsMisskeyAchievementsTypesNotes60000CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes70000CaEs notes70000_ = _StringsMisskeyAchievementsTypesNotes70000CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes80000CaEs notes80000_ = _StringsMisskeyAchievementsTypesNotes80000CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes90000CaEs notes90000_ = _StringsMisskeyAchievementsTypesNotes90000CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100000CaEs notes100000_ = _StringsMisskeyAchievementsTypesNotes100000CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin3CaEs login3_ = _StringsMisskeyAchievementsTypesLogin3CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin7CaEs login7_ = _StringsMisskeyAchievementsTypesLogin7CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin15CaEs login15_ = _StringsMisskeyAchievementsTypesLogin15CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin30CaEs login30_ = _StringsMisskeyAchievementsTypesLogin30CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin60CaEs login60_ = _StringsMisskeyAchievementsTypesLogin60CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin100CaEs login100_ = _StringsMisskeyAchievementsTypesLogin100CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin200CaEs login200_ = _StringsMisskeyAchievementsTypesLogin200CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin300CaEs login300_ = _StringsMisskeyAchievementsTypesLogin300CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin400CaEs login400_ = _StringsMisskeyAchievementsTypesLogin400CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin500CaEs login500_ = _StringsMisskeyAchievementsTypesLogin500CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin600CaEs login600_ = _StringsMisskeyAchievementsTypesLogin600CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin700CaEs login700_ = _StringsMisskeyAchievementsTypesLogin700CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin800CaEs login800_ = _StringsMisskeyAchievementsTypesLogin800CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin900CaEs login900_ = _StringsMisskeyAchievementsTypesLogin900CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin1000CaEs login1000_ = _StringsMisskeyAchievementsTypesLogin1000CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteClipped1CaEs noteClipped1_ = _StringsMisskeyAchievementsTypesNoteClipped1CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteFavorited1CaEs noteFavorited1_ = _StringsMisskeyAchievementsTypesNoteFavorited1CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesMyNoteFavorited1CaEs myNoteFavorited1_ = _StringsMisskeyAchievementsTypesMyNoteFavorited1CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesProfileFilledCaEs profileFilled_ = _StringsMisskeyAchievementsTypesProfileFilledCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesMarkedAsCatCaEs markedAsCat_ = _StringsMisskeyAchievementsTypesMarkedAsCatCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing1CaEs following1_ = _StringsMisskeyAchievementsTypesFollowing1CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing10CaEs following10_ = _StringsMisskeyAchievementsTypesFollowing10CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing50CaEs following50_ = _StringsMisskeyAchievementsTypesFollowing50CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing100CaEs following100_ = _StringsMisskeyAchievementsTypesFollowing100CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing300CaEs following300_ = _StringsMisskeyAchievementsTypesFollowing300CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers1CaEs followers1_ = _StringsMisskeyAchievementsTypesFollowers1CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers10CaEs followers10_ = _StringsMisskeyAchievementsTypesFollowers10CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers50CaEs followers50_ = _StringsMisskeyAchievementsTypesFollowers50CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers100CaEs followers100_ = _StringsMisskeyAchievementsTypesFollowers100CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers300CaEs followers300_ = _StringsMisskeyAchievementsTypesFollowers300CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers500CaEs followers500_ = _StringsMisskeyAchievementsTypesFollowers500CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers1000CaEs followers1000_ = _StringsMisskeyAchievementsTypesFollowers1000CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesCollectAchievements30CaEs collectAchievements30_ = _StringsMisskeyAchievementsTypesCollectAchievements30CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesViewAchievements3minCaEs viewAchievements3min_ = _StringsMisskeyAchievementsTypesViewAchievements3minCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesILoveMisskeyCaEs iLoveMisskey_ = _StringsMisskeyAchievementsTypesILoveMisskeyCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFoundTreasureCaEs foundTreasure_ = _StringsMisskeyAchievementsTypesFoundTreasureCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesClient30minCaEs client30min_ = _StringsMisskeyAchievementsTypesClient30minCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesClient60minCaEs client60min_ = _StringsMisskeyAchievementsTypesClient60minCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteDeletedWithin1minCaEs noteDeletedWithin1min_ = _StringsMisskeyAchievementsTypesNoteDeletedWithin1minCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesPostedAtLateNightCaEs postedAtLateNight_ = _StringsMisskeyAchievementsTypesPostedAtLateNightCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesPostedAt0min0secCaEs postedAt0min0sec_ = _StringsMisskeyAchievementsTypesPostedAt0min0secCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesSelfQuoteCaEs selfQuote_ = _StringsMisskeyAchievementsTypesSelfQuoteCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesHtl20npmCaEs htl20npm_ = _StringsMisskeyAchievementsTypesHtl20npmCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesViewInstanceChartCaEs viewInstanceChart_ = _StringsMisskeyAchievementsTypesViewInstanceChartCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadCaEs outputHelloWorldOnScratchpad_ = _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesOpen3windowsCaEs open3windows_ = _StringsMisskeyAchievementsTypesOpen3windowsCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceCaEs driveFolderCircularReference_ = _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesReactWithoutReadCaEs reactWithoutRead_ = _StringsMisskeyAchievementsTypesReactWithoutReadCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesClickedClickHereCaEs clickedClickHere_ = _StringsMisskeyAchievementsTypesClickedClickHereCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesJustPlainLuckyCaEs justPlainLucky_ = _StringsMisskeyAchievementsTypesJustPlainLuckyCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesSetNameToSyuiloCaEs setNameToSyuilo_ = _StringsMisskeyAchievementsTypesSetNameToSyuiloCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1CaEs passedSinceAccountCreated1_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2CaEs passedSinceAccountCreated2_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3CaEs passedSinceAccountCreated3_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3CaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLoggedInOnBirthdayCaEs loggedInOnBirthday_ = _StringsMisskeyAchievementsTypesLoggedInOnBirthdayCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayCaEs loggedInOnNewYearsDay_ = _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesCookieClickedCaEs cookieClicked_ = _StringsMisskeyAchievementsTypesCookieClickedCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesBrainDiverCaEs brainDiver_ = _StringsMisskeyAchievementsTypesBrainDiverCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesSmashTestNotificationButtonCaEs smashTestNotificationButton_ = _StringsMisskeyAchievementsTypesSmashTestNotificationButtonCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesTutorialCompletedCaEs tutorialCompleted_ = _StringsMisskeyAchievementsTypesTutorialCompletedCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadCaEs bubbleGameExplodingHead_ = _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadCaEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadCaEs bubbleGameDoubleExplodingHead_ = _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadCaEs._(_root);
}

// Path: misskey.role_.priority_
class _StringsMisskeyRolePriorityCaEs extends _StringsMisskeyRolePriorityEnUs {
	_StringsMisskeyRolePriorityCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get low => 'Baixa';
	@override String get middle => 'Mitjà';
	@override String get high => 'Alta';
}

// Path: misskey.role_.options_
class _StringsMisskeyRoleOptionsCaEs extends _StringsMisskeyRoleOptionsEnUs {
	_StringsMisskeyRoleOptionsCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'Pot veure la línia de temps global';
	@override String get ltlAvailable => 'Pot veure la línia de temps local';
	@override String get canPublicNote => 'Pot enviar notes públiques';
	@override String get canInvite => 'Pot crear invitacions a la instància ';
	@override String get inviteLimit => 'Límit d\'invitacions ';
	@override String get inviteLimitCycle => 'Temps de refresc de les invitacions';
	@override String get inviteExpirationTime => 'Interval de caducitat de les invitacions';
	@override String get canManageCustomEmojis => 'Gestiona els emojis personalitzats';
	@override String get canManageAvatarDecorations => 'Gestiona les decoracions dels avatars ';
	@override String get driveCapacity => 'Capacitat del disc';
	@override String get alwaysMarkNsfw => 'Marca sempre els fitxers com a sensibles';
	@override String get pinMax => 'Nombre màxim de notes fixades';
	@override String get antennaMax => 'Nombre màxim d\'antenes';
	@override String get wordMuteMax => 'Nombre màxim de caràcters permesos a les paraules silenciades';
	@override String get webhookMax => 'Nombre màxim de Webhooks';
	@override String get clipMax => 'Nombre màxim de clips';
	@override String get noteEachClipsMax => 'Nombre màxim de notes dintre d\'un clip';
	@override String get userListMax => 'Nombre màxim de llistes d\'usuaris ';
	@override String get userEachUserListsMax => 'Nombre màxim d\'usuaris dintre d\'una llista d\'usuaris ';
	@override String get rateLimitFactor => 'Limitador';
	@override String get descriptionOfRateLimitFactor => 'Límits baixos són menys restrictius, límits alts són més restrictius.';
	@override String get canHideAds => 'Pot amagar els anuncis';
	@override String get canSearchNotes => 'Pot cercar notes';
	@override String get canUseTranslator => 'Pot fer servir el traductor';
	@override String get avatarDecorationLimit => 'Nombre màxim de decoracions que es poden aplicar els avatars';
}

// Path: misskey.role_.condition_
class _StringsMisskeyRoleConditionCaEs extends _StringsMisskeyRoleConditionEnUs {
	_StringsMisskeyRoleConditionCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get isLocal => 'Usuari local';
	@override String get isRemote => 'Usuari remot';
	@override String get createdLessThan => 'Han passat menys de X a passat des de la creació del compte';
	@override String get createdMoreThan => 'Han passat més de X des de la creació del compte';
	@override String get followersLessThanOrEq => 'Té menys de X seguidors';
	@override String get followersMoreThanOrEq => 'Té X o més seguidors';
	@override String get followingLessThanOrEq => 'Segueix X o menys comptes';
	@override String get followingMoreThanOrEq => 'Segueix a X o més comptes';
	@override String get notesLessThanOrEq => 'Les publicacions són menys o igual a ';
	@override String get notesMoreThanOrEq => 'Les publicacions són més o igual a ';
	@override String get and => 'AND condicional ';
	@override String get or => 'OR condicional';
	@override String get not => 'NOT condicional';
}

// Path: misskey.email_.follow_
class _StringsMisskeyEmailFollowCaEs extends _StringsMisskeyEmailFollowEnUs {
	_StringsMisskeyEmailFollowCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 't\'ha seguit';
}

// Path: misskey.email_.receiveFollowRequest_
class _StringsMisskeyEmailReceiveFollowRequestCaEs extends _StringsMisskeyEmailReceiveFollowRequestEnUs {
	_StringsMisskeyEmailReceiveFollowRequestCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Has rebut una sol·licitud  de seguiment';
}

// Path: misskey.theme_.keys
class _StringsMisskeyThemeKeysCaEs extends _StringsMisskeyThemeKeysEnUs {
	_StringsMisskeyThemeKeysCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get accent => 'Accent';
	@override String get bg => 'Fons';
	@override String get fg => 'Text';
	@override String get focus => 'Enfocament';
	@override String get indicator => 'Indicador';
	@override String get panel => 'Taulell ';
	@override String get shadow => 'Ombra';
	@override String get header => 'Capçalera';
	@override String get navBg => 'Fons de la barra lateral';
	@override String get navFg => 'Text de la barra lateral';
	@override String get navHoverFg => 'Text barra lateral (en passar per sobre)';
	@override String get navActive => 'Text barra lateral (actiu)';
	@override String get navIndicator => 'Indicador barra lateral';
	@override String get link => 'Enllaç';
	@override String get hashtag => 'Etiqueta';
	@override String get mention => 'Menció';
	@override String get mentionMe => 'Mencions (jo)';
	@override String get renote => 'Renotar';
	@override String get modalBg => 'Fons del modal';
	@override String get divider => 'Divisor';
	@override String get scrollbarHandle => 'Maneta de la barra de desplaçament';
	@override String get scrollbarHandleHover => 'Maneta de la barra de desplaçament (en passar-hi per sobre)';
	@override String get dateLabelFg => 'Text de l\'etiqueta de la data';
	@override String get infoBg => 'Fons d\'informació ';
	@override String get infoFg => 'Text d\'informació ';
	@override String get infoWarnBg => 'Fons avís ';
	@override String get infoWarnFg => 'Text avís ';
	@override String get toastBg => 'Fons notificació ';
	@override String get toastFg => 'Text notificació ';
	@override String get buttonBg => 'Fons botó ';
	@override String get buttonHoverBg => 'Fons botó (en passar-hi per sobre)';
	@override String get inputBorder => 'Contorn del cap d\'introducció ';
	@override String get listItemHoverBg => 'Fons dels elements d\'una llista';
	@override String get driveFolderBg => 'Fons de la carpeta Disc';
	@override String get wallpaperOverlay => 'Superposició del fons de pantalla ';
	@override String get badge => 'Insígnia ';
	@override String get messageBg => 'Fons del xat';
	@override String get accentDarken => 'Accent (fosc)';
	@override String get accentLighten => 'Accent (clar)';
	@override String get fgHighlighted => 'Text ressaltat';
}

// Path: misskey.widgets_.userList_
class _StringsMisskeyWidgetsUserListCaEs extends _StringsMisskeyWidgetsUserListEnUs {
	_StringsMisskeyWidgetsUserListCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Tria una llista';
}

// Path: misskey.postForm_.placeholders_
class _StringsMisskeyPostFormPlaceholdersCaEs extends _StringsMisskeyPostFormPlaceholdersEnUs {
	_StringsMisskeyPostFormPlaceholdersCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get a => 'Que vols dir?...';
	@override String get b => 'Alguna cosa interessant al teu voltant?...';
	@override String get c => 'Què et passa pel cap?...';
	@override String get d => 'Què vols dir?...';
	@override String get e => 'Escriu alguna cosa...';
	@override String get f => 'Esperant que escriguis qualsevol cosa...';
}

// Path: misskey.pages_.blocks
class _StringsMisskeyPagesBlocksCaEs extends _StringsMisskeyPagesBlocksEnUs {
	_StringsMisskeyPagesBlocksCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get text => 'Text';
	@override String get textarea => 'Àrea de text';
	@override String get section => 'Secció ';
	@override String get image => 'Imatges';
	@override String get button => 'Botó ';
	@override String get note => 'Incorporar una Nota';
	@override late final _StringsMisskeyPagesBlocksNoteCaEs note_ = _StringsMisskeyPagesBlocksNoteCaEs._(_root);
}

// Path: misskey.notification_.types_
class _StringsMisskeyNotificationTypesCaEs extends _StringsMisskeyNotificationTypesEnUs {
	_StringsMisskeyNotificationTypesCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get all => 'Tots';
	@override String get follow => 'Seguint';
	@override String get mention => 'Menció';
	@override String get renote => 'Renotar';
	@override String get quote => 'Citar';
	@override String get reaction => 'Reaccions';
}

// Path: misskey.notification_.actions_
class _StringsMisskeyNotificationActionsCaEs extends _StringsMisskeyNotificationActionsEnUs {
	_StringsMisskeyNotificationActionsCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get followBack => 't\'ha seguit també';
	@override String get reply => 'Respondre';
	@override String get renote => 'Renotar';
}

// Path: misskey.deck_.columns_
class _StringsMisskeyDeckColumnsCaEs extends _StringsMisskeyDeckColumnsEnUs {
	_StringsMisskeyDeckColumnsCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get main => 'Principal';
	@override String get widgets => 'Ginys';
	@override String get notifications => 'Notificacions';
	@override String get tl => 'Línia de temps';
	@override String get antenna => 'Antena';
	@override String get list => 'Llistes';
	@override String get channel => 'Canals';
	@override String get mentions => 'Mencions';
	@override String get direct => 'Publicacions directes';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _StringsMisskeyExternalResourceInstallerPluginCaEs extends _StringsMisskeyExternalResourceInstallerPluginEnUs {
	_StringsMisskeyExternalResourceInstallerPluginCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vols instal·lar aquest afegit?';
	@override String get metaTitle => 'Informació de l\'afegit ';
}

// Path: misskey.externalResourceInstaller_.theme_
class _StringsMisskeyExternalResourceInstallerThemeCaEs extends _StringsMisskeyExternalResourceInstallerThemeEnUs {
	_StringsMisskeyExternalResourceInstallerThemeCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vols instal·lar aquest tema?';
	@override String get metaTitle => 'Informació del tema';
}

// Path: misskey.externalResourceInstaller_.meta_
class _StringsMisskeyExternalResourceInstallerMetaCaEs extends _StringsMisskeyExternalResourceInstallerMetaEnUs {
	_StringsMisskeyExternalResourceInstallerMetaCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get base => 'Paleta de colors base';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _StringsMisskeyExternalResourceInstallerVendorInfoCaEs extends _StringsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_StringsMisskeyExternalResourceInstallerVendorInfoCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informació del distribuïdor ';
	@override String get endpoint => 'Punt final referenciat';
	@override String get hashVerify => 'Verificació d\'integritat ';
}

// Path: misskey.externalResourceInstaller_.errors_
class _StringsMisskeyExternalResourceInstallerErrorsCaEs extends _StringsMisskeyExternalResourceInstallerErrorsEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsCaEs invalidParams_ = _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsCaEs._(_root);
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _StringsMisskeyInitialTutorialPostNoteVisibilityCaEs extends _StringsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_StringsMisskeyInitialTutorialPostNoteVisibilityCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get description => 'Pots limitar qui pot veure les teves notes.';
	@override String get public => 'La teva nota serà visible per a tots els usuaris.';
	@override String get home => 'Publicar només a línia de temps d\'Inici. La gent que visiti el teu perfil o mitjançant les remotes també la podran veure.';
	@override String get followers => 'Només visible per a seguidors. Només els teus seguidors la podran veure i ningú més. Ningú més podrà fer renotes.';
	@override String get direct => 'Només visible per a alguns seguidors, el destinatari rebre una notificació. Es pot fer servir com una alternativa als missatges directes.';
	@override String get doNotSendConfidencialOnDirect1 => 'Tingues cura quan enviïs informació sensible.';
	@override String get doNotSendConfidencialOnDirect2 => 'Els administradors del servidor poden veure tot el que escrius. Ves compte quan enviïs informació sensible en enviar notes directes a altres usuaris en servidors de poca confiança.';
	@override String get localOnly => 'Publicar amb aquesta opció activada farà que la nota no federi amb altres servidors. Els usuaris d\'altres servidors no podran veure la nota directament, sense importar les opcions de visualització.';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _StringsMisskeyInitialTutorialPostNoteCwCaEs extends _StringsMisskeyInitialTutorialPostNoteCwEnUs {
	_StringsMisskeyInitialTutorialPostNoteCwCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Avís de Contingut (CW)';
	@override String get description => 'En comptes del cos de la nota es mostrarà el que s\'escrigui al camp de \'comentaris\'. Fent clic a \'Llegir més\' es mostrarà el cos.';
	@override late final _StringsMisskeyInitialTutorialPostNoteCwExampleNoteCaEs exampleNote_ = _StringsMisskeyInitialTutorialPostNoteCwExampleNoteCaEs._(_root);
	@override String get useCases => 'Això es fa servir per seguir normes del servidor sobre certes notes o per ocultar contingut sensible O revelador.';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteCaEs extends _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get note => 'Oops! L\'he fet bona en obrir la tapa de Nocilla...';
}

// Path: misskey.achievements_.types_.notes1_
class _StringsMisskeyAchievementsTypesNotes1CaEs extends _StringsMisskeyAchievementsTypesNotes1EnUs {
	_StringsMisskeyAchievementsTypesNotes1CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aquí, configurant el meu msky';
	@override String get description => 'Publica la teva primera Nota';
	@override String get flavor => 'Passa-t\'ho bé fent servir Miskey!';
}

// Path: misskey.achievements_.types_.notes10_
class _StringsMisskeyAchievementsTypesNotes10CaEs extends _StringsMisskeyAchievementsTypesNotes10EnUs {
	_StringsMisskeyAchievementsTypesNotes10CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Algunes notes';
	@override String get description => 'Publica 10 notes';
}

// Path: misskey.achievements_.types_.notes100_
class _StringsMisskeyAchievementsTypesNotes100CaEs extends _StringsMisskeyAchievementsTypesNotes100EnUs {
	_StringsMisskeyAchievementsTypesNotes100CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un piló de notes';
	@override String get description => 'Publica 100 notes';
}

// Path: misskey.achievements_.types_.notes500_
class _StringsMisskeyAchievementsTypesNotes500CaEs extends _StringsMisskeyAchievementsTypesNotes500EnUs {
	_StringsMisskeyAchievementsTypesNotes500CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cobert de notes';
	@override String get description => 'Publica 500 notes';
}

// Path: misskey.achievements_.types_.notes1000_
class _StringsMisskeyAchievementsTypesNotes1000CaEs extends _StringsMisskeyAchievementsTypesNotes1000EnUs {
	_StringsMisskeyAchievementsTypesNotes1000CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un piló de notes';
	@override String get description => '1 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes5000_
class _StringsMisskeyAchievementsTypesNotes5000CaEs extends _StringsMisskeyAchievementsTypesNotes5000EnUs {
	_StringsMisskeyAchievementsTypesNotes5000CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desbordament de notes';
	@override String get description => '5 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes10000_
class _StringsMisskeyAchievementsTypesNotes10000CaEs extends _StringsMisskeyAchievementsTypesNotes10000EnUs {
	_StringsMisskeyAchievementsTypesNotes10000CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supernota';
	@override String get description => '10 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes20000_
class _StringsMisskeyAchievementsTypesNotes20000CaEs extends _StringsMisskeyAchievementsTypesNotes20000EnUs {
	_StringsMisskeyAchievementsTypesNotes20000CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Necessito... Més... Notes!';
	@override String get description => '20 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes30000_
class _StringsMisskeyAchievementsTypesNotes30000CaEs extends _StringsMisskeyAchievementsTypesNotes30000EnUs {
	_StringsMisskeyAchievementsTypesNotes30000CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notes notes notes!';
	@override String get description => '30 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes40000_
class _StringsMisskeyAchievementsTypesNotes40000CaEs extends _StringsMisskeyAchievementsTypesNotes40000EnUs {
	_StringsMisskeyAchievementsTypesNotes40000CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fàbrica de notes';
	@override String get description => '40 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes50000_
class _StringsMisskeyAchievementsTypesNotes50000CaEs extends _StringsMisskeyAchievementsTypesNotes50000EnUs {
	_StringsMisskeyAchievementsTypesNotes50000CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Planeta de notes';
	@override String get description => '50 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes60000_
class _StringsMisskeyAchievementsTypesNotes60000CaEs extends _StringsMisskeyAchievementsTypesNotes60000EnUs {
	_StringsMisskeyAchievementsTypesNotes60000CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quàsar de notes';
	@override String get description => '60 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes70000_
class _StringsMisskeyAchievementsTypesNotes70000CaEs extends _StringsMisskeyAchievementsTypesNotes70000EnUs {
	_StringsMisskeyAchievementsTypesNotes70000CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Forat negre de notes';
	@override String get description => '70 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes80000_
class _StringsMisskeyAchievementsTypesNotes80000CaEs extends _StringsMisskeyAchievementsTypesNotes80000EnUs {
	_StringsMisskeyAchievementsTypesNotes80000CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Galàxia de notes';
	@override String get description => '80 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes90000_
class _StringsMisskeyAchievementsTypesNotes90000CaEs extends _StringsMisskeyAchievementsTypesNotes90000EnUs {
	_StringsMisskeyAchievementsTypesNotes90000CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Univers de notes';
	@override String get description => '90 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes100000_
class _StringsMisskeyAchievementsTypesNotes100000CaEs extends _StringsMisskeyAchievementsTypesNotes100000EnUs {
	_StringsMisskeyAchievementsTypesNotes100000CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => '100 000 notes publicades';
	@override String get flavor => 'Segur que tens moltes coses a dir?';
}

// Path: misskey.achievements_.types_.login3_
class _StringsMisskeyAchievementsTypesLogin3CaEs extends _StringsMisskeyAchievementsTypesLogin3EnUs {
	_StringsMisskeyAchievementsTypesLogin3CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiant I';
	@override String get description => 'Vas iniciar sessió fa tres dies';
	@override String get flavor => 'Des d\'avui diguem Misskist';
}

// Path: misskey.achievements_.types_.login7_
class _StringsMisskeyAchievementsTypesLogin7CaEs extends _StringsMisskeyAchievementsTypesLogin7EnUs {
	_StringsMisskeyAchievementsTypesLogin7CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiant II';
	@override String get description => 'Vas iniciar sessió fa set dies';
	@override String get flavor => 'Ja saps com va funcionant tot?';
}

// Path: misskey.achievements_.types_.login15_
class _StringsMisskeyAchievementsTypesLogin15CaEs extends _StringsMisskeyAchievementsTypesLogin15EnUs {
	_StringsMisskeyAchievementsTypesLogin15CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiant III';
	@override String get description => 'Vas iniciar sessió fa quinze dies';
}

// Path: misskey.achievements_.types_.login30_
class _StringsMisskeyAchievementsTypesLogin30CaEs extends _StringsMisskeyAchievementsTypesLogin30EnUs {
	_StringsMisskeyAchievementsTypesLogin30CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist I';
	@override String get description => 'Vas iniciar sessió fa trenta dies';
}

// Path: misskey.achievements_.types_.login60_
class _StringsMisskeyAchievementsTypesLogin60CaEs extends _StringsMisskeyAchievementsTypesLogin60EnUs {
	_StringsMisskeyAchievementsTypesLogin60CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist II';
	@override String get description => 'Vas iniciar sessió fa seixanta dies';
}

// Path: misskey.achievements_.types_.login100_
class _StringsMisskeyAchievementsTypesLogin100CaEs extends _StringsMisskeyAchievementsTypesLogin100EnUs {
	_StringsMisskeyAchievementsTypesLogin100CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist III';
	@override String get description => 'Vas iniciar sessió fa cent dies';
	@override String get flavor => 'Misskist violent';
}

// Path: misskey.achievements_.types_.login200_
class _StringsMisskeyAchievementsTypesLogin200CaEs extends _StringsMisskeyAchievementsTypesLogin200EnUs {
	_StringsMisskeyAchievementsTypesLogin200CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regular I';
	@override String get description => 'Vas iniciar sessió fa dos-cents dies';
}

// Path: misskey.achievements_.types_.login300_
class _StringsMisskeyAchievementsTypesLogin300CaEs extends _StringsMisskeyAchievementsTypesLogin300EnUs {
	_StringsMisskeyAchievementsTypesLogin300CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regular II';
	@override String get description => 'Vas iniciar sessió fa tres-cents dies';
}

// Path: misskey.achievements_.types_.login400_
class _StringsMisskeyAchievementsTypesLogin400CaEs extends _StringsMisskeyAchievementsTypesLogin400EnUs {
	_StringsMisskeyAchievementsTypesLogin400CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regular III';
	@override String get description => 'Vas iniciar sessió fa quatre-cents dies';
}

// Path: misskey.achievements_.types_.login500_
class _StringsMisskeyAchievementsTypesLogin500CaEs extends _StringsMisskeyAchievementsTypesLogin500EnUs {
	_StringsMisskeyAchievementsTypesLogin500CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Expert I';
	@override String get description => 'Vas iniciar sessió fa cinc-cents dies';
	@override String get flavor => 'Amics, he dit massa vegades que soc un amant de les notes';
}

// Path: misskey.achievements_.types_.login600_
class _StringsMisskeyAchievementsTypesLogin600CaEs extends _StringsMisskeyAchievementsTypesLogin600EnUs {
	_StringsMisskeyAchievementsTypesLogin600CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Expert II';
	@override String get description => 'Vas iniciar sessió fa sis-cents dies';
}

// Path: misskey.achievements_.types_.login700_
class _StringsMisskeyAchievementsTypesLogin700CaEs extends _StringsMisskeyAchievementsTypesLogin700EnUs {
	_StringsMisskeyAchievementsTypesLogin700CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Expert III';
	@override String get description => 'Vas iniciar sessió fa set-cents dies';
}

// Path: misskey.achievements_.types_.login800_
class _StringsMisskeyAchievementsTypesLogin800CaEs extends _StringsMisskeyAchievementsTypesLogin800EnUs {
	_StringsMisskeyAchievementsTypesLogin800CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mestre de les Notes I';
	@override String get description => 'Vas iniciar sessió fa vuit-cents dies ';
}

// Path: misskey.achievements_.types_.login900_
class _StringsMisskeyAchievementsTypesLogin900CaEs extends _StringsMisskeyAchievementsTypesLogin900EnUs {
	_StringsMisskeyAchievementsTypesLogin900CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mestre de les Notes II';
	@override String get description => 'Vas iniciar sessió fa nou-cents dies';
}

// Path: misskey.achievements_.types_.login1000_
class _StringsMisskeyAchievementsTypesLogin1000CaEs extends _StringsMisskeyAchievementsTypesLogin1000EnUs {
	_StringsMisskeyAchievementsTypesLogin1000CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mestre de les Notes III';
	@override String get description => 'Vas iniciar sessió fa mil dies';
	@override String get flavor => 'Gràcies per fer servir MissKey!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _StringsMisskeyAchievementsTypesNoteClipped1CaEs extends _StringsMisskeyAchievementsTypesNoteClipped1EnUs {
	_StringsMisskeyAchievementsTypesNoteClipped1CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'He de retallar-te!';
	@override String get description => 'Retalla la teva primera nota';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _StringsMisskeyAchievementsTypesNoteFavorited1CaEs extends _StringsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesNoteFavorited1CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quan miro les estrelles';
	@override String get description => 'La primera vegada que vaig registrar el meu favorit';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _StringsMisskeyAchievementsTypesMyNoteFavorited1CaEs extends _StringsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesMyNoteFavorited1CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vull una estrella';
	@override String get description => 'La meva nota va ser registrada com favorita per una de les altres persones';
}

// Path: misskey.achievements_.types_.profileFilled_
class _StringsMisskeyAchievementsTypesProfileFilledCaEs extends _StringsMisskeyAchievementsTypesProfileFilledEnUs {
	_StringsMisskeyAchievementsTypesProfileFilledCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estic a punt';
	@override String get description => 'Vaig fer la configuració de perfil';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _StringsMisskeyAchievementsTypesMarkedAsCatCaEs extends _StringsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_StringsMisskeyAchievementsTypesMarkedAsCatCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Soc un gat';
	@override String get description => 'He establert el meu compte com si fos un Gat';
	@override String get flavor => 'Encara no tinc nom';
}

// Path: misskey.achievements_.types_.following1_
class _StringsMisskeyAchievementsTypesFollowing1CaEs extends _StringsMisskeyAchievementsTypesFollowing1EnUs {
	_StringsMisskeyAchievementsTypesFollowing1CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'És el meu primer seguiment';
	@override String get description => 'És la primera vegada que et segueixo';
}

// Path: misskey.achievements_.types_.following10_
class _StringsMisskeyAchievementsTypesFollowing10CaEs extends _StringsMisskeyAchievementsTypesFollowing10EnUs {
	_StringsMisskeyAchievementsTypesFollowing10CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Segueix-me... Segueix-me...';
	@override String get description => 'Seguir 10 usuaris';
}

// Path: misskey.achievements_.types_.following50_
class _StringsMisskeyAchievementsTypesFollowing50CaEs extends _StringsMisskeyAchievementsTypesFollowing50EnUs {
	_StringsMisskeyAchievementsTypesFollowing50CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Molts amics';
	@override String get description => 'Seguir 50 comptes';
}

// Path: misskey.achievements_.types_.following100_
class _StringsMisskeyAchievementsTypesFollowing100CaEs extends _StringsMisskeyAchievementsTypesFollowing100EnUs {
	_StringsMisskeyAchievementsTypesFollowing100CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => '100 amics';
	@override String get description => 'Segueixes 100 comptes';
}

// Path: misskey.achievements_.types_.following300_
class _StringsMisskeyAchievementsTypesFollowing300CaEs extends _StringsMisskeyAchievementsTypesFollowing300EnUs {
	_StringsMisskeyAchievementsTypesFollowing300CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobrecàrrega d\'amics';
	@override String get description => 'Segueixes 300 comptes';
}

// Path: misskey.achievements_.types_.followers1_
class _StringsMisskeyAchievementsTypesFollowers1CaEs extends _StringsMisskeyAchievementsTypesFollowers1EnUs {
	_StringsMisskeyAchievementsTypesFollowers1CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Primer seguidor';
	@override String get description => '1 seguidor guanyat';
}

// Path: misskey.achievements_.types_.followers10_
class _StringsMisskeyAchievementsTypesFollowers10CaEs extends _StringsMisskeyAchievementsTypesFollowers10EnUs {
	_StringsMisskeyAchievementsTypesFollowers10CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Segueix-me!';
	@override String get description => '10 seguidors guanyats';
}

// Path: misskey.achievements_.types_.followers50_
class _StringsMisskeyAchievementsTypesFollowers50CaEs extends _StringsMisskeyAchievementsTypesFollowers50EnUs {
	_StringsMisskeyAchievementsTypesFollowers50CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Venen en manada';
	@override String get description => '50 seguidors guanyats';
}

// Path: misskey.achievements_.types_.followers100_
class _StringsMisskeyAchievementsTypesFollowers100CaEs extends _StringsMisskeyAchievementsTypesFollowers100EnUs {
	_StringsMisskeyAchievementsTypesFollowers100CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Popular';
	@override String get description => '100 seguidors guanyats';
}

// Path: misskey.achievements_.types_.followers300_
class _StringsMisskeyAchievementsTypesFollowers300CaEs extends _StringsMisskeyAchievementsTypesFollowers300EnUs {
	_StringsMisskeyAchievementsTypesFollowers300CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Si us plau, d\'un en un!';
	@override String get description => '300 seguidors guanyats';
}

// Path: misskey.achievements_.types_.followers500_
class _StringsMisskeyAchievementsTypesFollowers500CaEs extends _StringsMisskeyAchievementsTypesFollowers500EnUs {
	_StringsMisskeyAchievementsTypesFollowers500CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Torre de ràdio';
	@override String get description => '500 seguidors guanyats';
}

// Path: misskey.achievements_.types_.followers1000_
class _StringsMisskeyAchievementsTypesFollowers1000CaEs extends _StringsMisskeyAchievementsTypesFollowers1000EnUs {
	_StringsMisskeyAchievementsTypesFollowers1000CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Influenciador';
	@override String get description => '1 000 seguidors guanyats';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _StringsMisskeyAchievementsTypesCollectAchievements30CaEs extends _StringsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_StringsMisskeyAchievementsTypesCollectAchievements30CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Col·leccionista d\'èxits ';
	@override String get description => 'Desbloqueja 30 assoliments';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _StringsMisskeyAchievementsTypesViewAchievements3minCaEs extends _StringsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_StringsMisskeyAchievementsTypesViewAchievements3minCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'M\'agraden els èxits ';
	@override String get description => 'Mira la teva llista d\'assoliments durant més de 3 minuts';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _StringsMisskeyAchievementsTypesILoveMisskeyCaEs extends _StringsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_StringsMisskeyAchievementsTypesILoveMisskeyCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimo Misskey';
	@override String get description => 'Publica "I ❤ #Misskey"';
	@override String get flavor => 'L\'equip de desenvolupament de Misskey agraeix el vostre suport!';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _StringsMisskeyAchievementsTypesFoundTreasureCaEs extends _StringsMisskeyAchievementsTypesFoundTreasureEnUs {
	_StringsMisskeyAchievementsTypesFoundTreasureCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'A la Recerca del Tresor';
	@override String get description => 'Has trobat el tresor amagat';
}

// Path: misskey.achievements_.types_.client30min_
class _StringsMisskeyAchievementsTypesClient30minCaEs extends _StringsMisskeyAchievementsTypesClient30minEnUs {
	_StringsMisskeyAchievementsTypesClient30minCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Parem una estona';
	@override String get description => 'Mantingues obert Misskey per 30 minuts';
}

// Path: misskey.achievements_.types_.client60min_
class _StringsMisskeyAchievementsTypesClient60minCaEs extends _StringsMisskeyAchievementsTypesClient60minEnUs {
	_StringsMisskeyAchievementsTypesClient60minCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'A totes amb Misskey';
	@override String get description => 'Mantingues Misskey obert per 60 minuts';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _StringsMisskeyAchievementsTypesNoteDeletedWithin1minCaEs extends _StringsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_StringsMisskeyAchievementsTypesNoteDeletedWithin1minCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No et preocupis';
	@override String get description => 'Esborra una nota al minut de publicar-la';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _StringsMisskeyAchievementsTypesPostedAtLateNightCaEs extends _StringsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_StringsMisskeyAchievementsTypesPostedAtLateNightCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nocturn';
	@override String get description => 'Publica una nota a altes hores de la nit ';
	@override String get flavor => 'És hora d\'anar a dormir.';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _StringsMisskeyAchievementsTypesPostedAt0min0secCaEs extends _StringsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_StringsMisskeyAchievementsTypesPostedAt0min0secCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rellotge xerraire';
	@override String get description => 'Publica una nota a les 0:00';
	@override String get flavor => 'Tic tac, tic tac, tic tac, DING!';
}

// Path: misskey.achievements_.types_.selfQuote_
class _StringsMisskeyAchievementsTypesSelfQuoteCaEs extends _StringsMisskeyAchievementsTypesSelfQuoteEnUs {
	_StringsMisskeyAchievementsTypesSelfQuoteCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Autoreferència ';
	@override String get description => 'Cita una nota teva';
}

// Path: misskey.achievements_.types_.htl20npm_
class _StringsMisskeyAchievementsTypesHtl20npmCaEs extends _StringsMisskeyAchievementsTypesHtl20npmEnUs {
	_StringsMisskeyAchievementsTypesHtl20npmCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Línia de temps fluida';
	@override String get description => 'La teva línia de temps va a més de 20npm (notes per minut)';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _StringsMisskeyAchievementsTypesViewInstanceChartCaEs extends _StringsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_StringsMisskeyAchievementsTypesViewInstanceChartCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analista ';
	@override String get description => 'Mira els gràfics de la teva instància ';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadCaEs extends _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hola, món!';
	@override String get description => 'Escriu "hola, món" al bloc de notes';
}

// Path: misskey.achievements_.types_.open3windows_
class _StringsMisskeyAchievementsTypesOpen3windowsCaEs extends _StringsMisskeyAchievementsTypesOpen3windowsEnUs {
	_StringsMisskeyAchievementsTypesOpen3windowsCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Multi finestres';
	@override String get description => 'I va obrir més de tres finestres';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceCaEs extends _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_StringsMisskeyAchievementsTypesDriveFolderCircularReferenceCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Consulteu la secció de bucle';
	@override String get description => 'Intenta crear carpetes recursives al Disc';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _StringsMisskeyAchievementsTypesReactWithoutReadCaEs extends _StringsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_StringsMisskeyAchievementsTypesReactWithoutReadCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'De veritat has llegit això?';
	@override String get description => 'Reaccions a una nota de més de 100 caràcters publicada fa menys de 3 segons ';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _StringsMisskeyAchievementsTypesClickedClickHereCaEs extends _StringsMisskeyAchievementsTypesClickedClickHereEnUs {
	_StringsMisskeyAchievementsTypesClickedClickHereCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fer clic';
	@override String get description => 'Has fet clic aquí ';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _StringsMisskeyAchievementsTypesJustPlainLuckyCaEs extends _StringsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_StringsMisskeyAchievementsTypesJustPlainLuckyCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ha sigut sort';
	@override String get description => 'Oportunitat de guanyar-lo amb una probabilitat d\'un 0.005% cada 10 segons';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _StringsMisskeyAchievementsTypesSetNameToSyuiloCaEs extends _StringsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_StringsMisskeyAchievementsTypesSetNameToSyuiloCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'soc millor';
	@override String get description => 'Posat "siuylo" com a nom';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1CaEs extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated1CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Primer aniversari';
	@override String get description => 'Ja ha passat un any d\'ençà que vas crear el teu compte';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2CaEs extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated2CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Segon aniversari';
	@override String get description => 'Ja han passat dos anys d\'ençà que vas crear el teu compte';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3CaEs extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated3CaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tres anys';
	@override String get description => 'Ja han passat tres anys d\'ençà que vas crear el teu compte';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _StringsMisskeyAchievementsTypesLoggedInOnBirthdayCaEs extends _StringsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnBirthdayCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Felicitats!';
	@override String get description => 'T\'has identificat el dia del teu aniversari';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayCaEs extends _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bon any nou!';
	@override String get description => 'T\'has identificat el primer dia de l\'any ';
	@override String get flavor => 'A per un altre any memorable a la teva instància   ';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _StringsMisskeyAchievementsTypesCookieClickedCaEs extends _StringsMisskeyAchievementsTypesCookieClickedEnUs {
	_StringsMisskeyAchievementsTypesCookieClickedCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un joc en què fas clic a les galetes';
	@override String get description => 'Pica galetes';
	@override String get flavor => 'Espera, ets al lloc web correcte?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _StringsMisskeyAchievementsTypesBrainDiverCaEs extends _StringsMisskeyAchievementsTypesBrainDiverEnUs {
	_StringsMisskeyAchievementsTypesBrainDiverCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Busseja Ments';
	@override String get description => 'Publica un enllaç al Busseja Ments';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _StringsMisskeyAchievementsTypesSmashTestNotificationButtonCaEs extends _StringsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_StringsMisskeyAchievementsTypesSmashTestNotificationButtonCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobrecàrrega de proves';
	@override String get description => 'Envia moltes notificacions de prova en un període de temps molt curt';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _StringsMisskeyAchievementsTypesTutorialCompletedCaEs extends _StringsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_StringsMisskeyAchievementsTypesTutorialCompletedCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Diploma del Curs Elemental de Misskey';
	@override String get description => 'Has completat el tutorial';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadCaEs extends _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_StringsMisskeyAchievementsTypesBubbleGameExplodingHeadCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => 'L\'objecte més gran del joc de la bombolla ';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadCaEs extends _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Doble 🤯';
	@override String get description => 'Dos dels objectes més grans del joc de la bombolla al mateix temps';
	@override String get flavor => 'Pots emplenar una carmanyola com aquesta 🤯🤯 una mica';
}

// Path: misskey.pages_.blocks.note_
class _StringsMisskeyPagesBlocksNoteCaEs extends _StringsMisskeyPagesBlocksNoteEnUs {
	_StringsMisskeyPagesBlocksNoteCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get id => 'ID de la publicació';
	@override String get idDescription => 'Alternativament pots enganxar l\'adreça URL de la nota aquí.';
	@override String get detailed => 'Mostra els detalls';
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsCaEs extends _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsInvalidParamsCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paràmetres no vàlids ';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _StringsMisskeyInitialTutorialPostNoteCwExampleNoteCaEs extends _StringsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_StringsMisskeyInitialTutorialPostNoteCwExampleNoteCaEs._(_StringsCaEs root) : this._root = root, super._(root);

	@override final _StringsCaEs _root; // ignore: unused_field

	// Translations
	@override String get cw => 'Això et farà venir gana!';
	@override String get note => 'Acabo de menjar-me un donut de xocolata 🍩😋';
}
