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
class TranslationsCaEs extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsCaEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.caEs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <ca-ES>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsCaEs _root = this; // ignore: unused_field

	@override 
	TranslationsCaEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsCaEs(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAriaCaEs aria = _TranslationsAriaCaEs._(_root);
	@override late final _TranslationsMisskeyCaEs misskey = _TranslationsMisskeyCaEs._(_root);
}

// Path: aria
class _TranslationsAriaCaEs extends TranslationsAriaEnUs {
	_TranslationsAriaCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Segur que vols seguir a '),
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
		const TextSpan(text: 'Segur que vols deixar de seguir a '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' n\'ha dit alguna cosa'),
	]);
	@override TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'La publicació de '),
		name,
		const TextSpan(text: ' conte material sensible'),
	]);
}

// Path: misskey
class _TranslationsMisskeyCaEs extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Català';
	@override String get headlineMisskey => 'Una xarxa connectada per notes';
	@override String get introMisskey => 'Benvingut! Misskey és un servei de microblogging descentralitzat de codi obert.\nCrea "notes" per compartir els teus pensaments amb tots els que t\'envolten. 📡\nAmb "reaccions", també pots expressar ràpidament els teus sentiments sobre les notes de tothom. 👍\nExplorem un món nou! 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} És un dels serveis (anomenats instàncies de Misskey) que utilitzen la plataforma de codi obert <b>Misskey</b>.';
	@override String monthAndDay({required Object day, required Object month}) => '${day}/${month}';
	@override String get search => 'Cercar';
	@override String get reset => 'Reiniciar';
	@override String get notifications => 'Notificacions';
	@override String get username => 'Nom d\'usuari';
	@override String get password => 'Contrasenya';
	@override String get initialPasswordForSetup => 'Contrasenya inicial per fer la primera configuració ';
	@override String get initialPasswordIsIncorrect => 'La contrasenya no és correcta.';
	@override String get initialPasswordForSetupDescription => 'Fes servir la contrasenya que has fet servir al fitxer de configuració, si tu mateix has instal·lat Misskey.\nSi fas servir una empresa d\'allotjament de Misskey, fes servir la contrasenya que t\'han donat.\nSi no has posat cap contrasenya deixar l\'espai en blanc.';
	@override String get forgotPassword => 'Restableix la contrasenya ';
	@override String get fetchingAsApObject => 'Cercant al Fediverse...';
	@override String get ok => 'OK';
	@override String get gotIt => 'D\'acord ';
	@override String get cancel => 'Cancel·lar';
	@override String get noThankYou => 'No, gràcies';
	@override String get enterUsername => 'Introdueix el teu nom d\'usuari';
	@override String renotedBy({required Object user}) => 'Impulsat per ${user}';
	@override String get noNotes => 'Cap nota';
	@override String get noNotifications => 'Cap notificació';
	@override String get instance => 'Instància ';
	@override String get settings => 'Preferències';
	@override String get notificationSettings => 'Configurar les notificacions';
	@override String get basicSettings => 'Configuració bàsica';
	@override String get otherSettings => 'Altres configuracions';
	@override String get openInWindow => 'Obrir en una finestra nova';
	@override String get profile => 'Perfil';
	@override String get timeline => 'Línia de temps';
	@override String get noAccountDescription => 'Aquest usuari encara no ha escrit la seva biografia.';
	@override String get login => 'Iniciar sessió';
	@override String get loggingIn => 'Iniciar la sessió ';
	@override String get logout => 'Tancar la sessió';
	@override String get signup => 'Registrar-se';
	@override String get uploading => 'Pujant...';
	@override String get save => 'Desa';
	@override String get users => 'Usuaris';
	@override String get addUser => 'Afegir un usuari';
	@override String get favorite => 'Afegeix als preferits';
	@override String get favorites => 'Favorits';
	@override String get unfavorite => 'Eliminar dels preferits';
	@override String get favorited => 'Afegit als preferits.';
	@override String get alreadyFavorited => 'Ja s\'ha afegit als preferits.';
	@override String get cantFavorite => 'No es pot afegir als preferits.';
	@override String get pin => 'Fixa al perfil';
	@override String get unpin => 'Para de fixar del perfil';
	@override String get copyContent => 'Copia el contingut';
	@override String get copyLink => 'Copia l\'enllaç';
	@override String get copyRemoteLink => 'Copiar l\'enllaç remot';
	@override String get copyLinkRenote => 'Copiar l\'enllaç de la renota';
	@override String get delete => 'Elimina';
	@override String get deleteAndEdit => 'Eliminar i editar';
	@override String get deleteAndEditConfirm => 'Segur que vols eliminar aquesta publicació i editar-la? Perdràs totes les reaccions, impulsos i respostes.';
	@override String get addToList => 'Afegir a una llista';
	@override String get addToAntenna => 'Afegir a una antena';
	@override String get sendMessage => 'Enviar un missatge';
	@override String get copyRSS => 'Copiar RSS';
	@override String get copyUsername => 'Copiar nom d\'usuari';
	@override String get copyUserId => 'Copiar ID d\'usuari';
	@override String get copyNoteId => 'Copiar ID de la nota';
	@override String get copyFileId => 'Copiar ID de l\'arxiu';
	@override String get copyFolderId => 'Copiar ID de la carpeta';
	@override String get copyProfileUrl => 'Copiar adreça URL del perfil';
	@override String get searchUser => 'Cercar un usuari';
	@override String get searchThisUsersNotes => 'Cercar les publicacions de l\'usuari';
	@override String get reply => 'Respostes';
	@override String get loadMore => 'Carregar més';
	@override String get showMore => 'Veure més';
	@override String get showLess => 'Mostrar menys';
	@override String get youGotNewFollower => 't\'ha seguit';
	@override String get receiveFollowRequest => 'Has rebut una sol·licitud de seguiment';
	@override String get followRequestAccepted => 'Sol·licitud de seguiment acceptada';
	@override String get mention => 'Menció';
	@override String get mentions => 'Mencions';
	@override String get directNotes => 'Notes directes';
	@override String get importAndExport => 'Importar / Exportar';
	@override String get import => 'Importar';
	@override String get export => 'Exporta';
	@override String get files => 'Fitxers';
	@override String get download => 'Descarregar';
	@override String driveFileDeleteConfirm({required Object name}) => 'Estàs segur que vols suprimir el fitxer "${name}"? Les notes associades a aquest fitxer també seran esborrades.';
	@override String unfollowConfirm({required Object name}) => 'Segur que vols deixar de seguir a ${name}?';
	@override String get exportRequested => 'Has sol·licitat una exportació de dades. Això pot trigar una estona. S\'afegirà a la teva unitat de disc un cop estigui completada.';
	@override String get importRequested => 'Has sol·licitat una importació de dades. Això pot trigar una estona.';
	@override String get lists => 'Llistes';
	@override String get noLists => 'No tens cap llista';
	@override String get note => 'Nota';
	@override String get notes => 'Notes';
	@override String get following => 'Segueixes ';
	@override String get followers => 'Seguidors';
	@override String get followsYou => 'Et segueix';
	@override String get createList => 'Crear llista';
	@override String get manageLists => 'Gestionar les llistes';
	@override String get error => 'Error';
	@override String get somethingHappened => 'S\'ha produït un error';
	@override String get retry => 'Torna-ho a provar';
	@override String get pageLoadError => 'S\'ha produït un error en carregar la pàgina';
	@override String get pageLoadErrorDescription => 'Això normalment és a causa d\'errors a la xarxa o a la memòria cau del navegador. Prova d\'esborrar la memòria cau i torna-ho a provar després d\'esperar un temps.';
	@override String get serverIsDead => 'Aquest servidor no respon. Espera una estona i torna-ho a provar.';
	@override String get youShouldUpgradeClient => 'Per veure aquesta pàgina, actualitzeu-la per actualitzar el vostre client.';
	@override String get enterListName => 'Introdueix un nom per a la llista';
	@override String get privacy => 'Privadesa';
	@override String get makeFollowManuallyApprove => 'Les sol·licituds de seguiment requereixen aprovació';
	@override String get defaultNoteVisibility => 'Visibilitat per defecte';
	@override String get follow => 'Segueix';
	@override String get followRequest => 'Enviar sol·licitud de seguiment';
	@override String get followRequests => 'Peticions de seguiment';
	@override String get unfollow => 'Deixar de seguir';
	@override String get followRequestPending => 'Sol·licituds de seguiment pendents';
	@override String get enterEmoji => 'Introduir un emoji';
	@override String get renote => 'Impulsar';
	@override String get unrenote => 'Anul·la l\'impuls';
	@override String get renoted => 'S\'ha impulsat';
	@override String renotedToX({required Object name}) => 'Impulsat per ${name}.';
	@override String get cantRenote => 'No es pot impulsar aquesta publicació';
	@override String get cantReRenote => 'No es pot impulsar un impuls.';
	@override String get quote => 'Cita';
	@override String get inChannelRenote => 'Impulsar només a un canal';
	@override String get inChannelQuote => 'Citar només a un canal';
	@override String get renoteToChannel => 'Impulsar a un canal';
	@override String get renoteToOtherChannel => 'Impulsar a un altre canal';
	@override String get pinnedNote => 'Nota fixada';
	@override String get pinned => 'Fixar al perfil';
	@override String get you => 'Tu';
	@override String get clickToShow => 'Fes clic per mostrar';
	@override String get sensitive => 'Sensible';
	@override String get add => 'Afegir';
	@override String get reaction => 'Reacció ';
	@override String get reactions => 'Reaccions';
	@override String get emojiPicker => 'Selector d\'emojis';
	@override String get pinnedEmojisForReactionSettingDescription => 'Selecciona l\'emoji amb qui vols reaccionar';
	@override String get pinnedEmojisSettingDescription => 'Selecciona quins emojis vols deixar fixats i es mostrin en obrir el selector d\'emojis';
	@override String get emojiPickerDisplay => 'Mostrar el selector d\'emojis';
	@override String get overwriteFromPinnedEmojisForReaction => 'Reemplaça els emojis de la reacció';
	@override String get overwriteFromPinnedEmojis => 'Sobreescriu els emojis fixats al panel de reaccions';
	@override String get reactionSettingDescription2 => 'Arrossega per reordenar, fes clic per suprimir, prem "+" per afegir.';
	@override String get rememberNoteVisibility => 'Recorda la configuració de visibilitat de les notes';
	@override String get attachCancel => 'Eliminar el fitxer adjunt';
	@override String get deleteFile => 'Esborrar l\'arxiu ';
	@override String get markAsSensitive => 'Marcar com a sensible';
	@override String get unmarkAsSensitive => 'Deixar de marcar com a sensible';
	@override String get enterFileName => 'Defineix nom del fitxer';
	@override String get mute => 'Silencia';
	@override String get unmute => 'Deixa de silenciar';
	@override String get renoteMute => 'Silenciar impulsos';
	@override String get renoteUnmute => 'Treure el silenci dels impulsos';
	@override String get block => 'Bloqueja';
	@override String get unblock => 'Desbloqueja';
	@override String get suspend => 'Suspèn';
	@override String get unsuspend => 'Deixa de suspendre';
	@override String get blockConfirm => 'Vols bloquejar-lo?';
	@override String get unblockConfirm => 'Vols desbloquejar-lo?';
	@override String get suspendConfirm => 'Estàs segur que vols suspendre aquest compte?';
	@override String get unsuspendConfirm => 'Estàs segur que vols treure la suspensió d\'aquest compte?';
	@override String get selectList => 'Tria una llista';
	@override String get editList => 'Editar llista';
	@override String get selectChannel => 'Selecciona un canal';
	@override String get selectAntenna => 'Tria una antena';
	@override String get editAntenna => 'Modificar antena';
	@override String get createAntenna => 'Crea una antena';
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
	@override String get flagAsBotDescription => 'Activa aquesta opció si el compte el controla un programa. Si s\'activa, actuarà com un senyal per altres desenvolupadors per prevenir cadenes d\'interacció sense fi i ajustar els paràmetres interns de Misskey pe tractar el compte com un bot.';
	@override String get flagAsCat => 'Marca aquest compte com a gat';
	@override String get flagAsCatDescription => 'Activeu aquesta opció per marcar aquest compte com a gat.';
	@override String get flagShowTimelineReplies => 'Mostra les respostes a la línia de temps';
	@override String get flagShowTimelineRepliesDescription => 'Mostra les respostes dels usuaris a les notes d\'altres usuaris a la línia de temps.';
	@override String get autoAcceptFollowed => 'Aprova automàticament les sol·licituds de seguiment dels usuaris que segueixes';
	@override String get addAccount => 'Afegeix un compte';
	@override String get reloadAccountsList => 'Recarregar la llista de contactes';
	@override String get loginFailed => 'S\'ha produït un error al accedir.';
	@override String get showOnRemote => 'Navega més en el perfil original';
	@override String get continueOnRemote => 'Veure perfil original';
	@override String get chooseServerOnMisskeyHub => 'Escull un servidor des del Hub de Misskey';
	@override String get specifyServerHost => 'Especifica un servidor directament';
	@override String get inputHostName => 'Introdueix el domini';
	@override String get general => 'General';
	@override String get wallpaper => 'Fons de Pantalla';
	@override String get setWallpaper => 'Defineix el fons de pantalla';
	@override String get removeWallpaper => 'Elimina el fons de pantalla';
	@override String searchWith({required Object q}) => 'Cerca: ${q}';
	@override String get youHaveNoLists => 'No tens cap llista';
	@override String followConfirm({required Object name}) => 'Segur que vols seguir a ${name}?';
	@override String get proxyAccount => 'Compte de proxy';
	@override String get proxyAccountDescription => 'Un compte proxy és un compte que actua com a seguidor remot per als usuaris en determinades condicions. Per exemple, quan un usuari afegeix un usuari remot a la llista, l\'activitat de l\'usuari remot no es lliurarà al servidor si cap usuari local segueix aquest usuari, de manera que el compte proxy el seguirà.';
	@override String get host => 'Amfitrió';
	@override String get selectSelf => 'Escollir manualment';
	@override String get selectUser => 'Selecciona usuari/a';
	@override String get recipient => 'Destinatari';
	@override String get annotation => 'Comentaris';
	@override String get federation => 'Federació';
	@override String get instances => 'Instàncies ';
	@override String get registeredAt => 'Registrat a';
	@override String get latestRequestReceivedAt => 'Última petició rebuda';
	@override String get latestStatus => 'Últim estat';
	@override String get storageUsage => 'Emmagatzematge utilitzat';
	@override String get charts => 'Gràfics';
	@override String get perHour => 'Per hora';
	@override String get perDay => 'Per dia';
	@override String get stopActivityDelivery => 'Deixa d\'enviar activitats';
	@override String get blockThisInstance => 'Bloca aquesta instància ';
	@override String get silenceThisInstance => 'Silencia aquesta instància ';
	@override String get mediaSilenceThisInstance => 'Silenciar els arxius d\'aquesta instància ';
	@override String get operations => 'Accions';
	@override String get software => 'Programari';
	@override String get softwareName => 'Nom del programari';
	@override String get version => 'Versió';
	@override String get metadata => 'Metadades';
	@override String withNFiles({required Object n}) => '${n} fitxer(s)';
	@override String get monitor => 'Monitor';
	@override String get jobQueue => 'Cua de feines';
	@override String get cpuAndMemory => 'CPU i memòria';
	@override String get network => 'Xarxa';
	@override String get disk => 'Disc';
	@override String get instanceInfo => 'Informació del fitxer d\'instal·lació';
	@override String get statistics => 'Estadístiques';
	@override String get clearQueue => 'Esborra la cua de feina';
	@override String get clearQueueConfirmTitle => 'Esteu segur que voleu esborrar la cua?';
	@override String get clearQueueConfirmText => 'Les notes no lliurades que quedin a la cua no es federaran. Normalment aquesta operació no és necessària.';
	@override String get clearCachedFiles => 'Esborra la memòria cau';
	@override String get clearCachedFilesConfirm => 'Segur que voleu eliminar tots els fitxers de la memòria cau?';
	@override String get blockedInstances => 'Instàncies bloquejades';
	@override String get blockedInstancesDescription => 'Llista els enllaços d\'amfitrió de les instàncies que vols bloquejar separades per un salt de pàgina. Les instàncies llistades no podran comunicar-se amb aquesta instància.';
	@override String get silencedInstances => 'Instàncies silenciades';
	@override String get silencedInstancesDescription => 'Llista els enllaços d\'amfitrió de les instàncies que vols silenciar. Tots els comptes de les instàncies llistades s\'establiran com silenciades i només podran fer sol·licitacions de seguiment, i no podran mencionar als comptes locals si no els segueixen. Això no afectarà les instàncies bloquejades.';
	@override String get mediaSilencedInstances => 'Instàncies amb els arxius silenciats';
	@override String get mediaSilencedInstancesDescription => 'Llista els noms dels servidors que vulguis silenciar els arxius, un servidor per línia. Tots els comptes que pertanyin als servidors llistats seran tractats com sensibles i no podran fer servir emojis personalitzats. Això no tindrà efecte sobre els servidors blocats.';
	@override String get federationAllowedHosts => 'Llista de servidors federats';
	@override String get federationAllowedHostsDescription => 'Llista dels servidors amb els quals es federa.';
	@override String get muteAndBlock => 'Silencia i bloca';
	@override String get mutedUsers => 'Usuaris silenciats';
	@override String get blockedUsers => 'Usuaris bloquejats';
	@override String get noUsers => 'No hi ha usuaris';
	@override String get editProfile => 'Edita el perfil';
	@override String get noteDeleteConfirm => 'Segur que voleu eliminar aquesta publicació?';
	@override String get pinLimitExceeded => 'No podeu fixar més publicacions';
	@override String get done => 'Fet';
	@override String get processing => 'S\'està processant...';
	@override String get preview => 'Vista prèvia';
	@override String get default_ => 'Per defecte';
	@override String defaultValueIs({required Object value}) => 'Per defecte: ${value}';
	@override String get noCustomEmojis => 'No hi ha emojis personalitzats';
	@override String get noJobs => 'No hi ha feines';
	@override String get federating => 'Federant';
	@override String get blocked => 'Bloquejat';
	@override String get suspended => 'Anul·lar subscripció ';
	@override String get all => 'tot';
	@override String get subscribing => 'Subscrit a';
	@override String get publishing => 'S\'està publicant';
	@override String get notResponding => 'Sense resposta';
	@override String get instanceFollowing => 'Seguits del servidor';
	@override String get instanceFollowers => 'Seguidors del servidor';
	@override String get instanceUsers => 'Usuaris del servidor';
	@override String get changePassword => 'Canvia la contrasenya';
	@override String get security => 'Seguretat';
	@override String get retypedNotMatch => 'Les entrades no coincideix';
	@override String get currentPassword => 'Contrasenya actual';
	@override String get newPassword => 'Contrasenya nova';
	@override String get newPasswordRetype => 'Contrasenya nova (repeteix-la)';
	@override String get attachFile => 'Afegeix un arxiu';
	@override String get more => 'Més';
	@override String get featured => 'Destacat';
	@override String get usernameOrUserId => 'Nom o ID d\'usuari';
	@override String get noSuchUser => 'No s\'ha trobat l\'usuari';
	@override String get lookup => 'Cerca';
	@override String get announcements => 'Avisos';
	@override String get imageUrl => 'URL de la imatge';
	@override String get remove => 'Eliminar';
	@override String get removed => 'Eliminat';
	@override String removeAreYouSure({required Object x}) => 'Segur que vols esborrar «${x}»?';
	@override String deleteAreYouSure({required Object x}) => 'Segur que vols esborrar «${x}»?';
	@override String get resetAreYouSure => 'Segur que vols restablir-ho?';
	@override String get areYouSure => 'Estàs segur?';
	@override String get saved => 'S\'ha desat';
	@override String get upload => 'Puja';
	@override String get keepOriginalUploading => 'Guarda la imatge original';
	@override String get keepOriginalUploadingDescription => 'Guarda la imatge pujada sense modificar. Si està desactivat, es generarà una versió per visualitzar a la web en pujar la imatge.';
	@override String get fromDrive => 'Des del Disc';
	@override String get fromUrl => 'Des d\'un enllaç';
	@override String get uploadFromUrl => 'Carrega des d\'un enllaç';
	@override String get uploadFromUrlDescription => 'Enllaç del fitxer que vols carregar';
	@override String get uploadFromUrlRequested => 'Càrrega sol·licitada';
	@override String get uploadFromUrlMayTakeTime => 'La càrrega des de l\'enllaç pot trigar un temps';
	@override String uploadNFiles({required Object n}) => 'Pujar ${n} arxius';
	@override String get explore => 'Explora';
	@override String get messageRead => 'Vist';
	@override String get noMoreHistory => 'No hi ha res més per veure';
	@override String get startChat => 'Comença a xatejar ';
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
	@override String get image => 'Imatge';
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
	@override String switchDarkModeManuallyWhenSyncEnabledConfirm({required Object x}) => '"${x}" es troba activat. Vols desactivar la sincronització i canviar de mode manualment?';
	@override String get drive => 'Disc';
	@override String get fileName => 'Nom del Fitxer';
	@override String get selectFile => 'Selecciona un fitxer';
	@override String get selectFiles => 'Selecciona fitxers';
	@override String get selectFolder => 'Selecció de carpeta';
	@override String get selectFolders => 'Selecció de carpetes';
	@override String get fileNotSelected => 'Cap fitxer seleccionat';
	@override String get renameFile => 'Canvia el nom del fitxer';
	@override String get folderName => 'Nom de la carpeta';
	@override String get createFolder => 'Crea una carpeta';
	@override String get renameFolder => 'Canvia el nom de la carpeta';
	@override String get deleteFolder => 'Elimina la carpeta';
	@override String get folder => 'Carpeta ';
	@override String get addFile => 'Afegeix un fitxer';
	@override String get showFile => 'Mostrar fitxer';
	@override String get emptyDrive => 'El teu Disc és buit';
	@override String get emptyFolder => 'La carpeta està buida';
	@override String get unableToDelete => 'No es pot eliminar';
	@override String get inputNewFileName => 'Introduïu el nom de fitxer nou';
	@override String get inputNewDescription => 'Escriu el peu de foto.';
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
	@override String get reload => 'Actualitzar';
	@override String get doNothing => 'Ignora';
	@override String get reloadConfirm => 'Vols recarregar?';
	@override String get watch => 'Veure';
	@override String get unwatch => 'Deixa de veure';
	@override String get accept => 'Acceptar';
	@override String get reject => 'Denega';
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
	@override String get pinnedPagesDescription => 'Escriu les adreces de les pàgines que vols fixar a la pàgina d\'inici d\'aquesta instància. Separades per salts de línia.';
	@override String get pinnedClipId => 'ID del retall fixat';
	@override String get pinnedNotes => 'Nota fixada';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'Activa hCaptcha';
	@override String get hcaptchaSiteKey => 'Clau del lloc';
	@override String get hcaptchaSecretKey => 'Clau secreta';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => 'Activa mCaptcha';
	@override String get mcaptchaSiteKey => 'Clau del lloc';
	@override String get mcaptchaSecretKey => 'Clau secreta';
	@override String get mcaptchaInstanceUrl => 'Adreça URL del servidor mCaptcha';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'Activa reCAPTCHA';
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
	@override String get antennaExcludeBots => 'Exclou els bots';
	@override String get antennaKeywordsDescription => 'Separar amb espais per la condició AND o amb salts de línia per la condició OR.';
	@override String get notifyAntenna => 'Notifica\'m les publicacions noves';
	@override String get withFileAntenna => 'Només les publicacions amb fitxers';
	@override String get excludeNotesInSensitiveChannel => 'Excloure notes a canals sensibles';
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
	@override String get setupOf2fa => 'Configura l\'autenticació de doble factor';
	@override String get totp => 'Aplicació d\'autenticació';
	@override String get totpDescription => 'Escriu una contrasenya d\'un sol us fent servir l\'aplicació d\'autenticació';
	@override String get moderator => 'Moderador/a';
	@override String get moderation => 'Moderació';
	@override String get moderationNote => 'Nota de moderació ';
	@override String get moderationNoteDescription => 'Pots escriure notes que es compartiran entre els moderadors.';
	@override String get addModerationNote => 'Afegeix una nota de moderació ';
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
	@override String get uploadFolder => 'Carpeta per defecte on desar els arxius pujats';
	@override String get markAsReadAllNotifications => 'Marca totes les notificacions com a llegides';
	@override String get markAsReadAllUnreadNotes => 'Marca-ho tot com a llegit';
	@override String get markAsReadAllTalkMessages => 'Marcar tots els missatges com llegits';
	@override String get help => 'Ajuda';
	@override String get inputMessageHere => 'Escriu aquí el teu missatge ';
	@override String get close => 'Tanca';
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
	@override String get attachAsFileQuestion => 'El text copiat és massa llarg. Vols adjuntar-lo com un fitxer de text?';
	@override String get onlyOneFileCanBeAttached => 'Només pots adjuntar un fitxer a un missatge';
	@override String get signinRequired => 'Si us plau, Registra\'t o inicia la sessió abans de continuar';
	@override String get signinOrContinueOnRemote => 'Per continuar necessites moure el teu servidor o registrar-te / iniciar sessió en aquest servidor.';
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
	@override String signinWith({required Object x}) => 'Inicia sessió amb ${x}';
	@override String get signinFailed => 'Autenticació sense èxit. Intenta-ho un altre cop utilitzant la contrasenya i el nom correctes.';
	@override String get or => 'O';
	@override String get language => 'Idioma';
	@override String get uiLanguage => 'Idioma de l\'interfície';
	@override String aboutX({required Object x}) => 'Respecte a ${x}';
	@override String get emojiStyle => 'Estil d\'emoji';
	@override String get native => 'Nadiu';
	@override String get menuStyle => 'Estil de menú';
	@override String get style => 'Estil';
	@override String get drawer => 'Calaix';
	@override String get popup => 'Emergent';
	@override String get showNoteActionsOnlyHover => 'Només mostra accions de la nota en passar amb el cursor';
	@override String get showReactionsCount => 'Mostra el nombre de reaccions a les publicacions';
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
	@override String get dashboard => 'Tauler de control';
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
	@override String get s3ForcePathStyleDesc => 'Si s3ForcePathStyle es troba activat el nom del cubell s\'haurà d\'especificar com a part de l\'adreça URL en comptes del nom del servidor. Podria ser que necessitis activar aquesta opció quan facis servir serveis com ara l\'allotjament a un servidor propi.';
	@override String get serverLogs => 'Registres del servidor';
	@override String get deleteAll => 'Elimina-ho tot';
	@override String get showFixedPostForm => 'Mostrar el formulari per escriure a l\'inici de la línia de temps';
	@override String get showFixedPostFormInChannel => 'Mostrar el formulari d\'escriptura al principi de la línia de temps (Canals)';
	@override String get withRepliesByDefaultForNewlyFollowed => 'Inclou les respostes d\'usuaris nous que segueixes a la línia de temps per defecte.';
	@override String get newNoteRecived => 'Hi ha publicacions noves';
	@override String get newNote => 'Notes noves';
	@override String get sounds => 'Sons';
	@override String get sound => 'So';
	@override String get notificationSoundSettings => 'Configuració del so de notificació';
	@override String get listen => 'Escoltar';
	@override String get none => 'Res';
	@override String get showInPage => 'Mostrar a la pàgina ';
	@override String get popout => 'Finestra emergent';
	@override String get volume => 'Volum';
	@override String get masterVolume => 'Volum principal';
	@override String get notUseSound => 'Sense so';
	@override String get useSoundOnlyWhenActive => 'Reproduir sons només quan Misskey estigui actiu';
	@override String get details => 'Detalls';
	@override String get renoteDetails => 'Més informació sobre l\'impuls ';
	@override String get chooseEmoji => 'Tria un emoji';
	@override String get unableToProcess => 'L\'operació no pot ser completada ';
	@override String get recentUsed => 'Utilitzat recentment';
	@override String get install => 'Instal·lació ';
	@override String get uninstall => 'Desinstal·la';
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
	@override String get uiInspector => 'Inspector de la interfície';
	@override String get uiInspectorDescription => 'Podeu visualitzar una llista d\'elements UI presents en la memòria. Els components de la interfície d\'usuari són generats per les funcions Ui:C:.';
	@override String get output => 'Sortida';
	@override String get script => 'Script';
	@override String get disablePagesScript => 'Desactivar AiScript a les pàgines ';
	@override String get updateRemoteUser => 'Actualitzar la informació de l\'usuari remot';
	@override String get unsetUserAvatar => 'Desactiva l\'avatar ';
	@override String get unsetUserAvatarConfirm => 'Segur que vols desactivar l\'avatar?';
	@override String get unsetUserBanner => 'Desactiva el bàner ';
	@override String get unsetUserBannerConfirm => 'Segur que vols desactivar el bàner?';
	@override String get deleteAllFiles => 'Esborra tots els arxius';
	@override String get deleteAllFilesConfirm => 'Segur que vols esborrar tots els arxius?';
	@override String get removeAllFollowing => 'Deixa de seguir tots els usuaris que segueixes';
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
	@override String get describeFile => 'Afegeix una descripció ';
	@override String get enterFileDescription => 'Escriu un peu de foto';
	@override String get author => 'Autor';
	@override String get leaveConfirm => 'Hi ha canvis sense guardar. Els vols descartar?';
	@override String get manage => 'Administració';
	@override String get plugins => 'Extensions';
	@override String get preferencesBackups => 'Configuracions de les Còpies de seguretat';
	@override String get deck => 'Escriptori';
	@override String get undeck => 'Tanca el tauler';
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
	@override String get wordMuteDescription => 'Minimitza les notes que contenen la paraula o frase especificada. Les notes minimitzades poden visualitzar-se fent clic sobre elles.';
	@override String get hardWordMute => 'Silenciar paraules fortes';
	@override String get showMutedWord => 'Mostrar paraules silenciades';
	@override String get hardWordMuteDescription => 'Oculta les notes que contenen la paraula o frase especificada. A diferència de Silenciar paraula, la nota quedarà completament oculta a la vista.';
	@override String get regexpError => 'Error de l\'expressió regular ';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'S\'ha produït un error a l\'expressió regular a la línia ${line} de les paraules silenciades ${tab}:';
	@override String get instanceMute => 'Silenciar servidor';
	@override String userSaysSomething({required Object name}) => '${name} n\'ha dit alguna cosa';
	@override String userSaysSomethingAbout({required Object name, required Object word}) => '${name} està parlant sobre "${word}"';
	@override String get makeActive => 'Activar';
	@override String get display => 'Veure';
	@override String get copy => 'Copiar';
	@override String get copiedToClipboard => 'Copiat al porta papers';
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
	@override String get other => 'Altres';
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
	@override String get send => 'Envia';
	@override String get openInNewTab => 'Obre a una pestanya nova';
	@override String get openInSideView => 'Obre a una vista lateral';
	@override String get defaultNavigationBehaviour => 'Navegació per defecte';
	@override String get editTheseSettingsMayBreakAccount => 'Editar aquestes opcions pot deixar inoperatiu el teu compte';
	@override String get instanceTicker => 'Informació de notes de la instància ';
	@override String waitingFor({required Object x}) => 'Esperant ${x}';
	@override String get random => 'Aleatori ';
	@override String get system => 'Sistema';
	@override String get switchUi => 'Canviar la interfície';
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
	@override String get followingCount => 'Nombre de comptes que segueixes';
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
	@override String get duplicate => 'Duplicat';
	@override String get left => 'Esquerra';
	@override String get center => 'Centre';
	@override String get wide => 'Gran';
	@override String get narrow => 'Estret';
	@override String get reloadToApplySetting => 'Aquest ajust només s\'aplicarà després de recarregar la pàgina. Vols fer-ho ara?';
	@override String get needReloadToApply => 'Es requereix recarregar per reflectir aquesta opció ';
	@override String get needToRestartServerToApply => 'És necessari reiniciar el servidor perquè tinguin efecte els canvis.';
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
	@override String get noInquiryUrlWarning => 'No s\'ha desat l\'URL de consulta.';
	@override String get noBotProtectionWarning => 'La protecció contra bots no s\'ha configurat.';
	@override String get configure => 'Configurar';
	@override String get postToGallery => 'Crear una nova publicació a la galeria';
	@override String get postToHashtag => 'Pública a aquesta etiqueta';
	@override String get gallery => 'Galeria';
	@override String get recentPosts => 'Articles recents';
	@override String get popularPosts => 'Articles populars';
	@override String get shareWithNote => 'Comparteix amb una nota';
	@override String get ads => 'Publicitat ';
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
	@override String get sent => 'Envia';
	@override String get received => 'Rebut';
	@override String get searchResult => 'Resultats de la cerca';
	@override String get hashtags => 'Etiquetes';
	@override String get troubleshooting => 'Solucionar problemes';
	@override String get useBlurEffect => 'Fes servir efectes de desenfocament a la interfície';
	@override String get learnMore => 'Saber-ne més ';
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
	@override String get controlPanel => 'Tauler de control';
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
	@override String get incorrectTotp => 'La contrasenya no és correcta, o ha caducat.';
	@override String voteConfirm({required Object choice}) => 'Confirma el teu vot "${choice}"';
	@override String get hide => 'Amagar';
	@override String get useDrawerReactionPickerForMobile => 'Mostrar el selector de reaccions com un calaix al mòbil ';
	@override String welcomeBackWithName({required Object name}) => 'Benvingut de nou, ${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => 'Si us plau, fes clic a [${ok}] per completar la verificació per correu electrònic ';
	@override String get overridedDeviceKind => 'Tipus de dispositiu';
	@override String get smartphone => 'Mòbil ';
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
	@override String get threeMonths => '3 mesos';
	@override String get oneYear => '1 any';
	@override String get threeDays => '3 dies';
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
	@override String get logoutWillClearClientData => 'En tancar la sessió, la informació del client al navegador s\'esborrarà. Per garantir que la informació de configuració es pugui restaurar en tornar a iniciar sessió activa la còpia de seguretat automàtica de la configuració.';
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
	@override String get cannotUploadBecauseUnallowedFileType => 'Impossible pujar l\'arxiu no és un tipus de fitxer autoritzat.';
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
	@override String get caption => 'Peu de foto';
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
	@override String correspondingSourceIsAvailable({required Object anchor}) => 'El codi font corresponent està disponible a ${anchor}.';
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
	@override String get collapseRenotesDescription => 'Col·lapse les notes a les quals ja has reaccionat o que ja has renotat';
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
	@override String get enableStatsForFederatedInstances => 'Activa les estadístiques de les instàncies remotes federades';
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
	@override String get forceShowAds => 'Mostrar publicitat sempre ';
	@override String get addMemo => 'Afegir recordatori';
	@override String get editMemo => 'Editar recordatori';
	@override String get reactionsList => 'Reaccions';
	@override String get renotesList => 'Llistat d\'impulsos ';
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
	@override String get createNoteFromTheFile => 'Escriu una nota incloent aquest fitxer';
	@override String get archive => 'Arxiu';
	@override String get archived => 'Arxivat';
	@override String get unarchive => 'Desarxivar';
	@override String channelArchiveConfirmTitle({required Object name}) => 'Vols arxivar ${name}?';
	@override String get channelArchiveConfirmDescription => 'Un Canal arxivat no apareixerà a la llista de canals o als resultats de cerca. Tampoc es poden afegir noves entrades.';
	@override String get thisChannelArchived => 'Aquest Canal ha sigut arxivat.';
	@override String get displayOfNote => 'Mostrar notes';
	@override String get initialAccountSetting => 'Configuració del perfil';
	@override String get youFollowing => 'Segueixes ';
	@override String get preventAiLearning => 'Descartar l\'ús d\'aprenentatge automàtic (IA Generativa)';
	@override String get preventAiLearningDescription => 'Demanar els indexadors no fer servir els texts, imatges, etc. en cap conjunt de dades per alimentar l\'aprenentatge automàtic (IA Predictiva/ Generativa). Això s\'aconsegueix afegint la etiqueta "noai" com a resposta HTML al contingut corresponent. Prevenir aquest ús totalment pot ser que no sigui aconseguit, ja que molts indexadors poden obviar aquesta etiqueta.';
	@override String get options => 'Opcions';
	@override String get specifyUser => 'Especificar usuari';
	@override String get lookupConfirm => 'Vols fer una cerca?';
	@override String get openTagPageConfirm => 'Vols obrir una pàgina d\'etiquetes?';
	@override String get specifyHost => 'Especifica un servidor';
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
	@override String get currentAnnouncements => 'Avisos actuals';
	@override String get pastAnnouncements => 'Avisos passats';
	@override String get youHaveUnreadAnnouncements => 'Tens informes per llegir.';
	@override String get useSecurityKey => 'Segueix les instruccions del teu navegador O dispositiu per fer servir el teu passkey.';
	@override String get replies => 'Respostes';
	@override String get renotes => 'Impulsos';
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
	@override String get followingOrFollower => 'Seguint o seguidor';
	@override String get fileAttachedOnly => 'Només notes amb adjunts';
	@override String get showRepliesToOthersInTimeline => 'Mostrar les respostes a altres a la línia de temps';
	@override String get hideRepliesToOthersInTimeline => 'Amagar les respostes a altres a la línia de temps';
	@override String get showRepliesToOthersInTimelineAll => 'Mostrar les respostes a altres a usuaris que segueixes a la línia de temps';
	@override String get hideRepliesToOthersInTimelineAll => 'Ocultar les teves respostes a tots els usuaris que segueixes a la línia de temps';
	@override String get confirmShowRepliesAll => 'Aquesta opció no té marxa enrere. Vols mostrar les teves respostes a tots els que segueixes a la teva línia de temps?';
	@override String get confirmHideRepliesAll => 'Aquesta opció no té marxa enrere. Vols ocultar les teves respostes a tots els usuaris que segueixes a la línia de temps?';
	@override String get externalServices => 'Serveis externs';
	@override String get sourceCode => 'Codi font';
	@override String get sourceCodeIsNotYetProvided => 'El codi font encara no es troba disponible. Contacta amb l\'administrador per solucionar aquest problema.';
	@override String get repositoryUrl => 'URL del repositori';
	@override String get repositoryUrlDescription => 'Si estàs fent servir Misskey tal com és (sense cap canvi al codi font), introdueix https://github.com/misskey-dev/misskey';
	@override String get repositoryUrlOrTarballRequired => 'Si no ofereixes cap repositori, publica un fitxer tarball. Dona una ullada a .config/example.yml per a més informació.';
	@override String get feedback => 'Opinió';
	@override String get feedbackUrl => 'URL per a opinar';
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
	@override String get endReplay => 'Tanca la redifusió';
	@override String get copyReplayData => 'Copia les dades de la resposta';
	@override String get ranking => 'Classificació';
	@override String lastNDays({required Object n}) => 'Últims ${n} dies';
	@override String get backToTitle => 'Torna al títol';
	@override String get hemisphere => 'Geolocalització';
	@override String get withSensitive => 'Incloure notes amb fitxers sensibles';
	@override String userSaysSomethingSensitive({required Object name}) => 'La publicació de ${name} conte material sensible';
	@override String get enableHorizontalSwipe => 'Lliscar per canviar de pestanya';
	@override String get loading => 'S’està carregant';
	@override String get surrender => 'Cancel·lar ';
	@override String get gameRetry => 'Torna a provar';
	@override String get notUsePleaseLeaveBlank => 'Si no voleu usar-ho, deixeu-ho en blanc';
	@override String get useTotp => 'Usa una contrasenya d\'un sol ús';
	@override String get useBackupCode => 'Usa un codi de recuperació';
	@override String get launchApp => 'Inicia l\'aplicació ';
	@override String get useNativeUIForVideoAudioPlayer => 'Fes servir la UI del navegador quan reprodueixis vídeo i àudio ';
	@override String get keepOriginalFilename => 'Desa el nom del fitxer original';
	@override String get keepOriginalFilenameDescription => 'Si desactives aquesta opció els noms dels fitxers se substituiran per una cadena aleatòria quan carreguis nous fitxers de forma automàtica.';
	@override String get noDescription => 'No hi ha una descripció ';
	@override String get alwaysConfirmFollow => 'Confirma sempre els seguiments';
	@override String get inquiry => 'Contacte';
	@override String get tryAgain => 'Intenta-ho més tard.';
	@override String get confirmWhenRevealingSensitiveMedia => 'Confirmació quan revelis contingut sensible ';
	@override String get sensitiveMediaRevealConfirm => 'Aquest contingut potser sensible. Segur que ho vols revelar?';
	@override String get createdLists => 'Llistes creades ';
	@override String get createdAntennas => 'Antenes creades';
	@override String fromX({required Object x}) => 'De ${x}';
	@override String get genEmbedCode => 'Obtenir el codi per incrustar';
	@override String get noteOfThisUser => 'Notes d\'aquest usuari';
	@override String get clipNoteLimitExceeded => 'No es poden afegir més notes a aquest clip.';
	@override String get performance => 'Rendiment';
	@override String get modified => 'Modificat';
	@override String get discard => 'Descarta';
	@override String thereAreNChanges({required Object n}) => 'Hi ha(n) ${n} canvi(s)';
	@override String get signinWithPasskey => 'Inicia sessió amb Passkey';
	@override String get unknownWebAuthnKey => 'Passkey desconeguda';
	@override String get passkeyVerificationFailed => 'La verificació a fallat';
	@override String get passkeyVerificationSucceededButPasswordlessLoginDisabled => 'La verificació de la passkey a estat correcta, però s\'ha deshabilitat l\'inici de sessió sense contrasenya.';
	@override String get messageToFollower => 'Missatge als meus seguidors';
	@override String get target => 'Assumpte ';
	@override String get testCaptchaWarning => 'És una característica dissenyada per a la prova de CAPTCHA. <strong>No l\'utilitzes en l\'entorn real.</strong>';
	@override String get prohibitedWordsForNameOfUser => 'Noms prohibits per escollir noms d\'usuari ';
	@override String get prohibitedWordsForNameOfUserDescription => 'Si qualsevol d\'aquestes paraules es troben a un nom d\'usuari la creació de l\'usuari no es durà a terme. Als moderadors no els afecta aquesta restricció.';
	@override String get yourNameContainsProhibitedWords => 'El nom conté paraules prohibides ';
	@override String get yourNameContainsProhibitedWordsDescription => 'Si de veritat vols fer servir aquest nom posat en contacte amb l\'administrador.';
	@override String get thisContentsAreMarkedAsSigninRequiredByAuthor => 'L\'autor requereix l\'inici de sessió per poder veure';
	@override String get lockdown => 'Bloquejat';
	@override String get pleaseSelectAccount => 'Seleccionar un compte';
	@override String get availableRoles => 'Roles disponibles ';
	@override String get acknowledgeNotesAndEnable => 'Activa\'l després de comprendre els possibles perills.';
	@override String get federationSpecified => 'Aquest servidor treballa amb una federació de llistes blanques. No pot interactuar amb altres servidors que no siguin els especificats per l\'administrador.';
	@override String get federationDisabled => 'La unió es troba deshabilitada en aquest servidor. No es pot interactuar amb usuaris d\'altres servidors.';
	@override String get draft => 'Esborrany ';
	@override String get confirmOnReact => 'Confirmar en reaccionar';
	@override String reactAreYouSure({required Object emoji}) => 'Vols reaccionar amb "${emoji}"?';
	@override String get markAsSensitiveConfirm => 'Vols marcar aquest contingut com a sensible?';
	@override String get unmarkAsSensitiveConfirm => 'Vols deixar de marcar com a sensible aquest contingut?';
	@override String get preferences => 'Preferències ';
	@override String get accessibility => 'Accessibilitat ';
	@override String get preferencesProfile => 'Perfil de configuració ';
	@override String get copyPreferenceId => 'Copiar l\'ID de la configuració ';
	@override String get resetToDefaultValue => 'Restaura al valor per defecte ';
	@override String get overrideByAccount => 'Anul·lar per compte';
	@override String get untitled => 'Sense títol ';
	@override String get noName => 'No hi ha un nom disponible ';
	@override String get skip => 'Ometre ';
	@override String get restore => 'Restaurar ';
	@override String get syncBetweenDevices => 'Sincronització entre dispositius';
	@override String get preferenceSyncConflictTitle => 'Els valors de la configuració ja existeixen al dispositiu';
	@override String get preferenceSyncConflictText => 'Un element de la configuració amb sincronització activada desa els seus valors al servidor, però s\'ha trobat un valor a la configuració desat al servidor per aquest element de la configuració. Quin valor us sobreescriure?';
	@override String get preferenceSyncConflictChoiceMerge => 'Integració ';
	@override String get preferenceSyncConflictChoiceServer => 'Valors de configuració del servidor';
	@override String get preferenceSyncConflictChoiceDevice => 'Punts d\'ajustos del dispositiu ';
	@override String get preferenceSyncConflictChoiceCancel => 'Cancel·lar l\'activació de la sincronització ';
	@override String get paste => 'Pegar';
	@override String get emojiPalette => 'Calaix d\'emojis';
	@override String get postForm => 'Formulari de publicació';
	@override String get textCount => 'Nombre de caràcters ';
	@override String get information => 'Informació';
	@override String get chat => 'Xat';
	@override String get migrateOldSettings => 'Migrar la configuració anterior';
	@override String get migrateOldSettings_description => 'Normalment això es fa automàticament, però si la transició no es fa, el procés es pot iniciar manualment. S\'esborrarà la configuració actual.';
	@override String get compress => 'Comprimir ';
	@override String get right => 'Dreta';
	@override String get bottom => 'A baix ';
	@override String get top => 'A dalt ';
	@override String get embed => 'Incrustar';
	@override String get settingsMigrating => 'Estem migrant la teva configuració. Si us plau espera un moment... (També pots fer la migració més tard, manualment, anant a Preferències → Altres → Migrar configuració antiga)';
	@override String get readonly => 'Només lectura';
	@override String get goToDeck => 'Tornar al tauler';
	@override String get federationJobs => 'Treballs de federació';
	@override String get driveAboutTip => 'Al Disc veure\'s una llista de tots els arxius que has anat pujant.<br>\nPots tornar-los a fer servir adjuntant-los a notes noves o pots adelantar-te i pujar arxius per publicar-los més tard!<br>\n<b>Tingués en compte que si esborres un arxiu també desapareixerà de tots els llocs on l\'has fet servir (notes, pàgines, avatars, imatges de capçalera, etc.)</b><br>\nTambé pots crear carpetes per organitzar les.';
	@override String get scrollToClose => 'Desplaçar per tancar';
	@override String get advice => 'Consell';
	@override String get realtimeMode => 'Mode en temps real';
	@override String get turnItOn => 'Activar';
	@override String get turnItOff => 'Desactivar';
	@override String get emojiMute => 'Silenciar emojis';
	@override String get emojiUnmute => 'Deixar de silenciar emojis';
	@override String muteX({required Object x}) => 'Silenciar ${x}';
	@override String unmuteX({required Object x}) => 'Deixar de silenciar ${x}';
	@override String get abort => 'Cancel·lar';
	@override String get tip => 'Trucs i consells';
	@override String get redisplayAllTips => 'Torna ha mostrat tots els trucs i consells';
	@override String get hideAllTips => 'Amagar tots els trucs i consells';
	@override String get defaultImageCompressionLevel => 'Nivell de comprensió de la imatge per defecte';
	@override String get defaultImageCompressionLevel_description => 'Baixa, conserva la qualitat de la imatge però la mida de l\'arxiu és més gran. <br>Alta, redueix la mida de l\'arxiu però també la qualitat de la imatge.';
	@override String get inMinutes => 'Minut(s)';
	@override String get inDays => 'Di(a)(es)';
	@override String get safeModeEnabled => 'Mode segur activat';
	@override String get pluginsAreDisabledBecauseSafeMode => 'Els afegits no estan activats perquè el mode segur està activat.';
	@override String get customCssIsDisabledBecauseSafeMode => 'El CSS personalitzat no s\'aplica perquè el mode segur es troba activat.';
	@override String get themeIsDefaultBecauseSafeMode => 'El tema predeterminat es farà servir mentre el mode segur estigui activat. Una vegada es desactivi el mode segur es restablirà el tema escollit.';
	@override late final _TranslationsMisskeyOrderCaEs order_ = _TranslationsMisskeyOrderCaEs._(_root);
	@override late final _TranslationsMisskeyChatCaEs chat_ = _TranslationsMisskeyChatCaEs._(_root);
	@override late final _TranslationsMisskeyEmojiPaletteCaEs emojiPalette_ = _TranslationsMisskeyEmojiPaletteCaEs._(_root);
	@override late final _TranslationsMisskeySettingsCaEs settings_ = _TranslationsMisskeySettingsCaEs._(_root);
	@override late final _TranslationsMisskeyPreferencesProfileCaEs preferencesProfile_ = _TranslationsMisskeyPreferencesProfileCaEs._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupCaEs preferencesBackup_ = _TranslationsMisskeyPreferencesBackupCaEs._(_root);
	@override late final _TranslationsMisskeyAccountSettingsCaEs accountSettings_ = _TranslationsMisskeyAccountSettingsCaEs._(_root);
	@override late final _TranslationsMisskeyAbuseUserReportCaEs abuseUserReport_ = _TranslationsMisskeyAbuseUserReportCaEs._(_root);
	@override late final _TranslationsMisskeyDeliveryCaEs delivery_ = _TranslationsMisskeyDeliveryCaEs._(_root);
	@override late final _TranslationsMisskeyBubbleGameCaEs bubbleGame_ = _TranslationsMisskeyBubbleGameCaEs._(_root);
	@override late final _TranslationsMisskeyAnnouncementCaEs announcement_ = _TranslationsMisskeyAnnouncementCaEs._(_root);
	@override late final _TranslationsMisskeyInitialAccountSettingCaEs initialAccountSetting_ = _TranslationsMisskeyInitialAccountSettingCaEs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialCaEs initialTutorial_ = _TranslationsMisskeyInitialTutorialCaEs._(_root);
	@override late final _TranslationsMisskeyTimelineDescriptionCaEs timelineDescription_ = _TranslationsMisskeyTimelineDescriptionCaEs._(_root);
	@override late final _TranslationsMisskeyServerRulesCaEs serverRules_ = _TranslationsMisskeyServerRulesCaEs._(_root);
	@override late final _TranslationsMisskeyServerSettingsCaEs serverSettings_ = _TranslationsMisskeyServerSettingsCaEs._(_root);
	@override late final _TranslationsMisskeyAccountMigrationCaEs accountMigration_ = _TranslationsMisskeyAccountMigrationCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsCaEs achievements_ = _TranslationsMisskeyAchievementsCaEs._(_root);
	@override late final _TranslationsMisskeyRoleCaEs role_ = _TranslationsMisskeyRoleCaEs._(_root);
	@override late final _TranslationsMisskeySensitiveMediaDetectionCaEs sensitiveMediaDetection_ = _TranslationsMisskeySensitiveMediaDetectionCaEs._(_root);
	@override late final _TranslationsMisskeyEmailUnavailableCaEs emailUnavailable_ = _TranslationsMisskeyEmailUnavailableCaEs._(_root);
	@override late final _TranslationsMisskeyFfVisibilityCaEs ffVisibility_ = _TranslationsMisskeyFfVisibilityCaEs._(_root);
	@override late final _TranslationsMisskeySignupCaEs signup_ = _TranslationsMisskeySignupCaEs._(_root);
	@override late final _TranslationsMisskeyAccountDeleteCaEs accountDelete_ = _TranslationsMisskeyAccountDeleteCaEs._(_root);
	@override late final _TranslationsMisskeyAdCaEs ad_ = _TranslationsMisskeyAdCaEs._(_root);
	@override late final _TranslationsMisskeyForgotPasswordCaEs forgotPassword_ = _TranslationsMisskeyForgotPasswordCaEs._(_root);
	@override late final _TranslationsMisskeyGalleryCaEs gallery_ = _TranslationsMisskeyGalleryCaEs._(_root);
	@override late final _TranslationsMisskeyEmailCaEs email_ = _TranslationsMisskeyEmailCaEs._(_root);
	@override late final _TranslationsMisskeyPluginCaEs plugin_ = _TranslationsMisskeyPluginCaEs._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupsCaEs preferencesBackups_ = _TranslationsMisskeyPreferencesBackupsCaEs._(_root);
	@override late final _TranslationsMisskeyRegistryCaEs registry_ = _TranslationsMisskeyRegistryCaEs._(_root);
	@override late final _TranslationsMisskeyAboutMisskeyCaEs aboutMisskey_ = _TranslationsMisskeyAboutMisskeyCaEs._(_root);
	@override late final _TranslationsMisskeyDisplayOfSensitiveMediaCaEs displayOfSensitiveMedia_ = _TranslationsMisskeyDisplayOfSensitiveMediaCaEs._(_root);
	@override late final _TranslationsMisskeyInstanceTickerCaEs instanceTicker_ = _TranslationsMisskeyInstanceTickerCaEs._(_root);
	@override late final _TranslationsMisskeyServerDisconnectedBehaviorCaEs serverDisconnectedBehavior_ = _TranslationsMisskeyServerDisconnectedBehaviorCaEs._(_root);
	@override late final _TranslationsMisskeyChannelCaEs channel_ = _TranslationsMisskeyChannelCaEs._(_root);
	@override late final _TranslationsMisskeyMenuDisplayCaEs menuDisplay_ = _TranslationsMisskeyMenuDisplayCaEs._(_root);
	@override late final _TranslationsMisskeyWordMuteCaEs wordMute_ = _TranslationsMisskeyWordMuteCaEs._(_root);
	@override late final _TranslationsMisskeyInstanceMuteCaEs instanceMute_ = _TranslationsMisskeyInstanceMuteCaEs._(_root);
	@override late final _TranslationsMisskeyThemeCaEs theme_ = _TranslationsMisskeyThemeCaEs._(_root);
	@override late final _TranslationsMisskeySfxCaEs sfx_ = _TranslationsMisskeySfxCaEs._(_root);
	@override late final _TranslationsMisskeySoundSettingsCaEs soundSettings_ = _TranslationsMisskeySoundSettingsCaEs._(_root);
	@override late final _TranslationsMisskeyAgoCaEs ago_ = _TranslationsMisskeyAgoCaEs._(_root);
	@override late final _TranslationsMisskeyTimeInCaEs timeIn_ = _TranslationsMisskeyTimeInCaEs._(_root);
	@override late final _TranslationsMisskeyTimeCaEs time_ = _TranslationsMisskeyTimeCaEs._(_root);
	@override late final _TranslationsMisskeyX2faCaEs x2fa_ = _TranslationsMisskeyX2faCaEs._(_root);
	@override late final _TranslationsMisskeyPermissionsCaEs permissions_ = _TranslationsMisskeyPermissionsCaEs._(_root);
	@override late final _TranslationsMisskeyAuthCaEs auth_ = _TranslationsMisskeyAuthCaEs._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesCaEs antennaSources_ = _TranslationsMisskeyAntennaSourcesCaEs._(_root);
	@override late final _TranslationsMisskeyWeekdayCaEs weekday_ = _TranslationsMisskeyWeekdayCaEs._(_root);
	@override late final _TranslationsMisskeyWidgetsCaEs widgets_ = _TranslationsMisskeyWidgetsCaEs._(_root);
	@override late final _TranslationsMisskeyCwCaEs cw_ = _TranslationsMisskeyCwCaEs._(_root);
	@override late final _TranslationsMisskeyPollCaEs poll_ = _TranslationsMisskeyPollCaEs._(_root);
	@override late final _TranslationsMisskeyVisibilityCaEs visibility_ = _TranslationsMisskeyVisibilityCaEs._(_root);
	@override late final _TranslationsMisskeyPostFormCaEs postForm_ = _TranslationsMisskeyPostFormCaEs._(_root);
	@override late final _TranslationsMisskeyProfileCaEs profile_ = _TranslationsMisskeyProfileCaEs._(_root);
	@override late final _TranslationsMisskeyExportOrImportCaEs exportOrImport_ = _TranslationsMisskeyExportOrImportCaEs._(_root);
	@override late final _TranslationsMisskeyChartsCaEs charts_ = _TranslationsMisskeyChartsCaEs._(_root);
	@override late final _TranslationsMisskeyInstanceChartsCaEs instanceCharts_ = _TranslationsMisskeyInstanceChartsCaEs._(_root);
	@override late final _TranslationsMisskeyTimelinesCaEs timelines_ = _TranslationsMisskeyTimelinesCaEs._(_root);
	@override late final _TranslationsMisskeyPlayCaEs play_ = _TranslationsMisskeyPlayCaEs._(_root);
	@override late final _TranslationsMisskeyPagesCaEs pages_ = _TranslationsMisskeyPagesCaEs._(_root);
	@override late final _TranslationsMisskeyRelayStatusCaEs relayStatus_ = _TranslationsMisskeyRelayStatusCaEs._(_root);
	@override late final _TranslationsMisskeyNotificationCaEs notification_ = _TranslationsMisskeyNotificationCaEs._(_root);
	@override late final _TranslationsMisskeyDeckCaEs deck_ = _TranslationsMisskeyDeckCaEs._(_root);
	@override late final _TranslationsMisskeyDialogCaEs dialog_ = _TranslationsMisskeyDialogCaEs._(_root);
	@override late final _TranslationsMisskeyDisabledTimelineCaEs disabledTimeline_ = _TranslationsMisskeyDisabledTimelineCaEs._(_root);
	@override late final _TranslationsMisskeyDrivecleanerCaEs drivecleaner_ = _TranslationsMisskeyDrivecleanerCaEs._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsCaEs webhookSettings_ = _TranslationsMisskeyWebhookSettingsCaEs._(_root);
	@override late final _TranslationsMisskeyAbuseReportCaEs abuseReport_ = _TranslationsMisskeyAbuseReportCaEs._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesCaEs moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesCaEs._(_root);
	@override late final _TranslationsMisskeyFileViewerCaEs fileViewer_ = _TranslationsMisskeyFileViewerCaEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerCaEs externalResourceInstaller_ = _TranslationsMisskeyExternalResourceInstallerCaEs._(_root);
	@override late final _TranslationsMisskeyDataSaverCaEs dataSaver_ = _TranslationsMisskeyDataSaverCaEs._(_root);
	@override late final _TranslationsMisskeyHemisphereCaEs hemisphere_ = _TranslationsMisskeyHemisphereCaEs._(_root);
	@override late final _TranslationsMisskeyReversiCaEs reversi_ = _TranslationsMisskeyReversiCaEs._(_root);
	@override late final _TranslationsMisskeyOfflineScreenCaEs offlineScreen_ = _TranslationsMisskeyOfflineScreenCaEs._(_root);
	@override late final _TranslationsMisskeyUrlPreviewSettingCaEs urlPreviewSetting_ = _TranslationsMisskeyUrlPreviewSettingCaEs._(_root);
	@override late final _TranslationsMisskeyMediaControlsCaEs mediaControls_ = _TranslationsMisskeyMediaControlsCaEs._(_root);
	@override late final _TranslationsMisskeyContextMenuCaEs contextMenu_ = _TranslationsMisskeyContextMenuCaEs._(_root);
	@override late final _TranslationsMisskeyGridComponentCaEs gridComponent_ = _TranslationsMisskeyGridComponentCaEs._(_root);
	@override late final _TranslationsMisskeyRoleSelectDialogCaEs roleSelectDialog_ = _TranslationsMisskeyRoleSelectDialogCaEs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerCaEs customEmojisManager_ = _TranslationsMisskeyCustomEmojisManagerCaEs._(_root);
	@override late final _TranslationsMisskeyEmbedCodeGenCaEs embedCodeGen_ = _TranslationsMisskeyEmbedCodeGenCaEs._(_root);
	@override late final _TranslationsMisskeySelfXssPreventionCaEs selfXssPrevention_ = _TranslationsMisskeySelfXssPreventionCaEs._(_root);
	@override late final _TranslationsMisskeyFollowRequestCaEs followRequest_ = _TranslationsMisskeyFollowRequestCaEs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsCaEs remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsCaEs._(_root);
	@override late final _TranslationsMisskeyCaptchaCaEs captcha_ = _TranslationsMisskeyCaptchaCaEs._(_root);
	@override late final _TranslationsMisskeyBootErrorsCaEs bootErrors_ = _TranslationsMisskeyBootErrorsCaEs._(_root);
	@override late final _TranslationsMisskeySearchCaEs search_ = _TranslationsMisskeySearchCaEs._(_root);
	@override late final _TranslationsMisskeyServerSetupWizardCaEs serverSetupWizard_ = _TranslationsMisskeyServerSetupWizardCaEs._(_root);
	@override late final _TranslationsMisskeyUploaderCaEs uploader_ = _TranslationsMisskeyUploaderCaEs._(_root);
	@override late final _TranslationsMisskeyClientPerformanceIssueTipCaEs clientPerformanceIssueTip_ = _TranslationsMisskeyClientPerformanceIssueTipCaEs._(_root);
	@override late final _TranslationsMisskeyClipCaEs clip_ = _TranslationsMisskeyClipCaEs._(_root);
	@override late final _TranslationsMisskeyUserListsCaEs userLists_ = _TranslationsMisskeyUserListsCaEs._(_root);
	@override String get watermark => 'Marca d\'aigua ';
	@override String get defaultPreset => 'Per defecte';
	@override late final _TranslationsMisskeyWatermarkEditorCaEs watermarkEditor_ = _TranslationsMisskeyWatermarkEditorCaEs._(_root);
	@override late final _TranslationsMisskeyImageEffectorCaEs imageEffector_ = _TranslationsMisskeyImageEffectorCaEs._(_root);
	@override String get drafts => 'Esborrany ';
	@override late final _TranslationsMisskeyDraftsCaEs drafts_ = _TranslationsMisskeyDraftsCaEs._(_root);
}

// Path: misskey.order_
class _TranslationsMisskeyOrderCaEs extends TranslationsMisskeyOrderEnUs {
	_TranslationsMisskeyOrderCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get newest => 'Més recent';
	@override String get oldest => 'Antigues primer';
}

// Path: misskey.chat_
class _TranslationsMisskeyChatCaEs extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get noMessagesYet => 'Encara no tens missatges ';
	@override String get newMessage => 'Missatge nou';
	@override String get individualChat => 'Xat individual ';
	@override String get individualChat_description => 'Pots mantenir converses individuals amb usuaris concrets.';
	@override String get roomChat => 'Sala de xat';
	@override String get roomChat_description => 'Pots xatejar amb diverses persones.\nTambé pots xatejar amb usuaris que no poden fer xats privats, si ells accepten.';
	@override String get createRoom => 'Crear una sala';
	@override String get inviteUserToChat => 'Invita usuaris per començar a xatejar';
	@override String get yourRooms => 'Sales creades';
	@override String get joiningRooms => 'Sales a les quals participes';
	@override String get invitations => 'Convida';
	@override String get noInvitations => 'No tens cap invitació ';
	@override String get history => 'Historial de converses ';
	@override String get noHistory => 'No hi ha un registre previ';
	@override String get noRooms => 'No hi ha cap sala';
	@override String get inviteUser => 'Invitar usuaris';
	@override String get sentInvitations => 'Enviar invitacions';
	@override String get join => 'Afegir-se ';
	@override String get ignore => 'Ignorar ';
	@override String get leave => 'Marxar';
	@override String get members => 'Membres';
	@override String get searchMessages => 'Buscar missatges ';
	@override String get home => 'Inici';
	@override String get send => 'Envia';
	@override String get newline => 'Línia nova ';
	@override String get muteThisRoom => 'Silenciar aquesta sala';
	@override String get deleteRoom => 'Esborrar la sala';
	@override String get chatNotAvailableForThisAccountOrServer => 'El xat no està disponible per aquest servidor o aquest compte.';
	@override String get chatIsReadOnlyForThisAccountOrServer => 'El xat és només de lectura en aquest servidor o compte. No es poden escriure nous missatges ni crear o unir-se a sales de xat.';
	@override String get chatNotAvailableInOtherAccount => 'La funció de xat es troba desactivada al compte de l\'altre usuari.';
	@override String get cannotChatWithTheUser => 'No pots xatejar amb aquest usuari';
	@override String get cannotChatWithTheUser_description => 'El xat està desactivat o l\'altra part encara no l\'ha obert.';
	@override String get youAreNotAMemberOfThisRoomButInvited => 'No participes en aquesta sala, però has rebut una invitació. Per participar accepta la invitació.';
	@override String get doYouAcceptInvitation => 'Acceptes la invitació?';
	@override String get chatWithThisUser => 'Xateja amb aquest usuari';
	@override String get thisUserAllowsChatOnlyFromFollowers => 'Aquest usuari només accepta xats d\'usuaris que el segueixen.';
	@override String get thisUserAllowsChatOnlyFromFollowing => 'Aquest usuari només accepta xats d\'usuaris que segueix.';
	@override String get thisUserAllowsChatOnlyFromMutualFollowing => 'Aquest usuari només accepta xats d\'usuaris que segueixes i et segueixen.';
	@override String get thisUserNotAllowedChatAnyone => 'Aquest usuari no accepta xats de ningú.';
	@override String get chatAllowedUsers => 'Usuaris que poden xatejar';
	@override String get chatAllowedUsers_note => 'Pots xatejar amb qualsevol usuari a qui hagis enviat un missatge de xat, independentment d\'aquesta configuració.';
	@override late final _TranslationsMisskeyChatChatAllowedUsersCaEs chatAllowedUsers_ = _TranslationsMisskeyChatChatAllowedUsersCaEs._(_root);
}

// Path: misskey.emojiPalette_
class _TranslationsMisskeyEmojiPaletteCaEs extends TranslationsMisskeyEmojiPaletteEnUs {
	_TranslationsMisskeyEmojiPaletteCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get palettes => 'Calaixos d\'emojis';
	@override String get enableSyncBetweenDevicesForPalettes => 'Activa la sincronització dels calaixos d\'emojis entre dispositius';
	@override String get paletteForMain => 'Calaix d\'emojis principal';
	@override String get paletteForReaction => 'Calaix d\'emojis per reaccions';
}

// Path: misskey.settings_
class _TranslationsMisskeySettingsCaEs extends TranslationsMisskeySettingsEnUs {
	_TranslationsMisskeySettingsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get driveBanner => 'Pots gestionar i configurar el Disc, comprovar el seu ús i establir una configuració per a la càrrega d\'arxius.';
	@override String get pluginBanner => 'Els complements poden fer-se servir per ampliar les funcionalitats del client. Els complements poden instal·lar-se, configurar-se individualment i gestionar-se.';
	@override String get notificationsBanner => 'Pots configurar el tipus i l\'abast de les notificacions que es rebran del servidor, també les notificacions emergents.';
	@override String get api => 'API';
	@override String get webhook => 'Webhook';
	@override String get serviceConnection => 'Relació entre serveis';
	@override String get serviceConnectionBanner => 'Pots configurar i gestionar tokens d\'accés i webhooks per integrar serveis i aplicacions externes.';
	@override String get accountData => 'Dades del compte';
	@override String get accountDataBanner => 'Exportació/Importació i gestió d\'arxius amb dades del compte.';
	@override String get muteAndBlockBanner => 'Pots configurar i gestionar els continguts que desitges amagar i restringir les accions de determinats usuaris.';
	@override String get accessibilityBanner => 'Els clients poden personalitzar-se i configurar-se per un ús òptim en funció de la seva visió i comportament.';
	@override String get privacyBanner => 'Pots establir la configuració de privacitat del compte, com el grau de visibilitat del teu contingut, la facilitat per trobar-ho i si es pot aprovar els seguidors.';
	@override String get securityBanner => 'Configura les opcions relacionades amb la seguretat del teu compte com ara contrasenyes, mètodes per iniciar sessió, aplicacions d\'autentificació i claus d\'accés.';
	@override String get preferencesBanner => 'Pots configurar el comportament general del client segons les teves preferències.';
	@override String get appearanceBanner => 'Pots configurar les preferències relacionades amb la visualització i l\'aspecte del client segons el teu parer.';
	@override String get soundsBanner => 'Configuració dels sons que reproduirà el client.';
	@override String get timelineAndNote => 'Línia de temps i nota';
	@override String get makeEveryTextElementsSelectable => 'Fes que tots els elements del text siguin seleccionables';
	@override String get makeEveryTextElementsSelectable_description => 'L\'activació pot reduir la usabilitat en determinades ocasions.';
	@override String get useStickyIcons => 'Utilitza icones fixes';
	@override String get enableHighQualityImagePlaceholders => 'Mostrar marcadors de posició per imatges d\'alta qualitat';
	@override String get uiAnimations => 'Animacions de la interfície';
	@override String get showNavbarSubButtons => 'Mostrar sub botons a la barra de navegació ';
	@override String get ifOn => 'Quan s\'activa';
	@override String get ifOff => 'Quan es desactiva';
	@override String get enableSyncThemesBetweenDevices => 'Sincronitzar els temes instal·lats entre dispositius';
	@override String get enablePullToRefresh => 'Lliscar i actualitzar ';
	@override String get enablePullToRefresh_description => 'Amb el ratolí, llisca mentre prems la roda.';
	@override String get realtimeMode_description => 'Estableix una connexió amb el servidor i actualitza el contingut en temps real. Pot consumir més dades i bateria.';
	@override String get contentsUpdateFrequency => 'Freqüència d\'adquisició del contingut';
	@override String get contentsUpdateFrequency_description => 'Com més alt sigui l\'adquisició de contingut en temps real, més baixa el rendiment i més consum de dades i bateria.';
	@override String get contentsUpdateFrequency_description2 => 'Quan s\'activa el mode en temps real, el contingut s\'actualitza en temps real, independentment d\'aquesta configuració.';
	@override String get showUrlPreview => 'Mostrar vista prèvia d\'URL';
	@override String get showAvailableReactionsFirstInNote => 'Mostra les reacciones que pots fer servir al damunt';
	@override late final _TranslationsMisskeySettingsChatCaEs chat_ = _TranslationsMisskeySettingsChatCaEs._(_root);
}

// Path: misskey.preferencesProfile_
class _TranslationsMisskeyPreferencesProfileCaEs extends TranslationsMisskeyPreferencesProfileEnUs {
	_TranslationsMisskeyPreferencesProfileCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get profileName => 'Nom del perfil';
	@override String get profileNameDescription => 'Estableix un nom que identifiqui aquest dispositiu.';
	@override String get profileNameDescription2 => 'Per exemple: "PC Principal", "Smartphone", etc';
	@override String get manageProfiles => 'Gestionar perfils';
}

// Path: misskey.preferencesBackup_
class _TranslationsMisskeyPreferencesBackupCaEs extends TranslationsMisskeyPreferencesBackupEnUs {
	_TranslationsMisskeyPreferencesBackupCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get autoBackup => 'Còpia de seguretat automàtica ';
	@override String get restoreFromBackup => 'Restaurar des d\'una còpia de seguretat';
	@override String get noBackupsFoundTitle => 'No s\'ha trobat cap còpia de seguretat';
	@override String get noBackupsFoundDescription => 'No s\'han trobat còpies de seguretat creades automàticament, però si has desat, manualment, un arxiu de còpia de seguretat, pots importar-lo i carregar-lo.';
	@override String get selectBackupToRestore => 'Seleccionar la còpia de seguretat que vols restaurar';
	@override String get youNeedToNameYourProfileToEnableAutoBackup => 'Has de posar-li un nom al teu perfil per poder activar les còpies de seguretat automàtiques.';
	@override String get autoPreferencesBackupIsNotEnabledForThisDevice => 'La còpia de seguretat automàtica no es troba activada en aquest dispositiu.';
	@override String get backupFound => 'Còpia de seguretat de la configuració trobada';
}

// Path: misskey.accountSettings_
class _TranslationsMisskeyAccountSettingsCaEs extends TranslationsMisskeyAccountSettingsEnUs {
	_TranslationsMisskeyAccountSettingsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get requireSigninToViewContents => 'És obligatori l\'inici de sessió per poder veure el contingut';
	@override String get requireSigninToViewContentsDescription1 => 'Es requereix l\'inici de sessió per poder veure totes les notes i el contingut que has creat. Amb això esperem evitar que els rastrejadors recopilin informació.';
	@override String get requireSigninToViewContentsDescription2 => 'També es desactivaran les vistes prèvies d\'URLS (OGP), la incrustació a pàgines web i la visualització des de servidors que no admetin la citació de notes.';
	@override String get requireSigninToViewContentsDescription3 => 'Aquestes restriccions pot ser que no s\'apliquin als continguts federats en servidors remots.';
	@override String get makeNotesFollowersOnlyBefore => 'Permetre que les notes antigues només es mostrin als seguidors.';
	@override String get makeNotesFollowersOnlyBeforeDescription => 'Mentre aquesta funció estigui activada, les notes que hagin passat la data i hora fixada o hagi passat els temps establert seran visibles només per als teus seguidors. Quan es desactivi, també es restableix l\'estat públic de la nota.';
	@override String get makeNotesHiddenBefore => 'Fes que les notes antigues siguin privades';
	@override String get makeNotesHiddenBeforeDescription => 'Mentres aquesta funció estigui activada les notes que hagin superat una data i hora fixada o hagi passat el temps establert només seran visibles per a tu. Si la desactives es restablirà també l\'estat públic de les notes.';
	@override String get mayNotEffectForFederatedNotes => 'Això pot ser que no afecti les notes federades.';
	@override String get mayNotEffectSomeSituations => 'Aquestes restriccions són simplificades. Pot ser que no s\'apliquin en determinades situacions, com quan es modera o visualitza un servidor remot.';
	@override String get notesHavePassedSpecifiedPeriod => 'Notes publicades durant un període de temps especificat.';
	@override String get notesOlderThanSpecifiedDateAndTime => 'Notes més antigues de la data i temps especificat ';
}

// Path: misskey.abuseUserReport_
class _TranslationsMisskeyAbuseUserReportCaEs extends TranslationsMisskeyAbuseUserReportEnUs {
	_TranslationsMisskeyAbuseUserReportCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get forward => 'Reenviar ';
	@override String get forwardDescription => 'Reenvia l\'informe a una altra instància com un compte del sistema anònima.';
	@override String get resolve => 'Solució ';
	@override String get accept => 'Acceptar ';
	@override String get reject => 'Rebutjar';
	@override String get resolveTutorial => 'Si l\'informe és legítim selecciona "Acceptar" per resoldre\'l positivament. Però si l\'informe no és legítim selecciona "Rebutjar" per resoldre\'l negativament.';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryCaEs extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get status => 'Estat d\'entrega ';
	@override String get stop => 'Anul·lar subscripció ';
	@override String get resume => 'Torna a enviar';
	@override late final _TranslationsMisskeyDeliveryTypeCaEs type_ = _TranslationsMisskeyDeliveryTypeCaEs._(_root);
}

// Path: misskey.bubbleGame_
class _TranslationsMisskeyBubbleGameCaEs extends TranslationsMisskeyBubbleGameEnUs {
	_TranslationsMisskeyBubbleGameCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => 'Com es juga';
	@override String get hold => 'Mantenir';
	@override late final _TranslationsMisskeyBubbleGameScoreCaEs score_ = _TranslationsMisskeyBubbleGameScoreCaEs._(_root);
	@override late final _TranslationsMisskeyBubbleGameHowToPlayCaEs howToPlay_ = _TranslationsMisskeyBubbleGameHowToPlayCaEs._(_root);
}

// Path: misskey.announcement_
class _TranslationsMisskeyAnnouncementCaEs extends TranslationsMisskeyAnnouncementEnUs {
	_TranslationsMisskeyAnnouncementCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => 'Anunci per usuaris registrats';
	@override String get forExistingUsersDescription => 'Aquest avís només es mostrarà als usuaris existents fins al moment de la publicació. Si no també es mostrarà als usuaris que es registrin després de la publicació.';
	@override String get needConfirmationToRead => 'Es necessita confirmació de lectura de la notificació ';
	@override String get needConfirmationToReadDescription => 'Si s\'activa es mostrarà un diàleg per confirmar la lectura d\'aquesta notificació. A més aquesta notificació serà exclosa de qualsevol funcionalitat com "Marcar tot com a llegit".';
	@override String get end => 'Final de la notificació ';
	@override String get tooManyActiveAnnouncementDescription => 'Tenir massa notificacions actives pot empitjorar l\'experiència de l\'usuari. Considera finalitzar els avisos que siguin antics.';
	@override String get readConfirmTitle => 'Marcar com llegida?';
	@override String readConfirmText({required Object title}) => 'Això marcarà el contingut de "${title}" com llegit.';
	@override String get shouldNotBeUsedToPresentPermanentInfo => 'Ja que l\'ús de notificacions pot impactar l\'experiència dels nous usuaris, és recomanable fer servir les notificacions amb el flux d\'informació en comptes de fer-les servir en un únic bloc.';
	@override String get dialogAnnouncementUxWarn => 'Tenir dues o més notificacions amb l\'estil de finestres pot impactar l\'experiència de l\'usuari, és per això que és recomana fer-lo servir amb cura.';
	@override String get silence => 'Sense notificacions';
	@override String get silenceDescription => 'Activant aquesta opció la notificació no es mostrarà ni l\'usuari l\'haurà de llegir.';
}

// Path: misskey.initialAccountSetting_
class _TranslationsMisskeyInitialAccountSettingCaEs extends TranslationsMisskeyInitialAccountSettingEnUs {
	_TranslationsMisskeyInitialAccountSettingCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

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
class _TranslationsMisskeyInitialTutorialCaEs extends TranslationsMisskeyInitialTutorialEnUs {
	_TranslationsMisskeyInitialTutorialCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'Començar tutorial';
	@override String get title => 'Tutorial';
	@override String get wellDone => 'Ben fet!';
	@override String get skipAreYouSure => 'Sortir del tutorial?';
	@override late final _TranslationsMisskeyInitialTutorialLandingCaEs landing_ = _TranslationsMisskeyInitialTutorialLandingCaEs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialNoteCaEs note_ = _TranslationsMisskeyInitialTutorialNoteCaEs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialReactionCaEs reaction_ = _TranslationsMisskeyInitialTutorialReactionCaEs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialTimelineCaEs timeline_ = _TranslationsMisskeyInitialTutorialTimelineCaEs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCaEs postNote_ = _TranslationsMisskeyInitialTutorialPostNoteCaEs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveCaEs howToMakeAttachmentsSensitive_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveCaEs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialDoneCaEs done_ = _TranslationsMisskeyInitialTutorialDoneCaEs._(_root);
}

// Path: misskey.timelineDescription_
class _TranslationsMisskeyTimelineDescriptionCaEs extends TranslationsMisskeyTimelineDescriptionEnUs {
	_TranslationsMisskeyTimelineDescriptionCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get home => 'A la línia de temps d\'Inici pots veure les notes dels usuaris que segueixes.';
	@override String get local => 'A la línia de temps Local pots veure les notes de tots els usuaris d\'aquest servidor.';
	@override String get social => 'La línia de temps Social mostren les notes de les línies de temps d\'Inici i Local.';
	@override String get global => 'A la línia de temps Global pots veure les notes de tots els servidors connectats.';
}

// Path: misskey.serverRules_
class _TranslationsMisskeyServerRulesCaEs extends TranslationsMisskeyServerRulesEnUs {
	_TranslationsMisskeyServerRulesCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get description => 'Un conjunt de regles que seran mostrades abans de registrar-se. Es recomanable configurar un resum dels termes d\'ús.';
}

// Path: misskey.serverSettings_
class _TranslationsMisskeyServerSettingsCaEs extends TranslationsMisskeyServerSettingsEnUs {
	_TranslationsMisskeyServerSettingsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

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
	@override String get reactionsBufferingDescription => 'Quan s\'activa aquesta opció millora bastant el rendiment en recuperar les línies de temps reduint la càrrega de la base. Com a contrapunt, augmentarà  l\'ús de memòria de Redís. Desactiva aquesta opció en cas de tenir un servidor amb poca memòria o si tens problemes d\'inestabilitat.';
	@override String get remoteNotesCleaning => 'Neteja automàtica de notes remotes';
	@override String get remoteNotesCleaning_description => 'Quan activis aquesta opció, periòdicament es netejaran les notes remotes que no es consultin, això evitarà que la base de dades se';
	@override String get remoteNotesCleaningMaxProcessingDuration => 'D\'oració màxima del temps de funcionament del procés de neteja';
	@override String get remoteNotesCleaningExpiryDaysForEachNotes => 'Duració mínima de conservació de les notes';
	@override String get inquiryUrl => 'URL de consulta ';
	@override String get inquiryUrlDescription => 'Escriu adreça URL per al formulari de consulta per al mantenidor del servidor o una pàgina web amb el contacte d\'informació.';
	@override String get openRegistration => 'Registres oberts';
	@override String get openRegistrationWarning => 'Obrir els registres és arriscat. Es recomana obrir-los només si el servidor és monitorat constantment i per respondre immediatament davant qualsevol problema.';
	@override String get thisSettingWillAutomaticallyOffWhenModeratorsInactive => 'Si no es detecta activitat per part del moderador durant un període de temps, aquesta opció es desactiva automàticament per evitar el correu brossa.';
	@override String get deliverSuspendedSoftware => 'Programari que ja no es distribueix';
	@override String get deliverSuspendedSoftwareDescription => 'Pots especificar un rang de noms i versions del programari del servidor per detenir l\'entrega, per exemple, degut a vulnerabilitats. Aquesta informació la proporciona el servidor i la seva fiabilitat no es garantitzada. Es pot fer servir una especificació de rang sencer per especificar una versió, però es recomana especificar una versió anterior, com >= 2024.3.1-0, perquè especificar  >= 2024.3.1 no incloure versions personalitzades com 2024.3.1-custom.0.';
	@override String get singleUserMode => 'Mode un usuari';
	@override String get singleUserMode_description => 'Si ets l\'únic usuari d\'aquesta instància, activant aquest mode optimitzaràs el funcionament.';
	@override String get signToActivityPubGet => 'Formar sol·licituds GET';
	@override String get signToActivityPubGet_description => ' Això normalment hauria d\'estar activat. Desactivar aquesta opció pot millorar els problemes de comunicació amb algunes de les instàncies federades, però també pot fer impossibles les comunicacions amb altres servidors.';
	@override String get proxyRemoteFiles => 'Proxy d\'arxius remots';
	@override String get proxyRemoteFiles_description => 'Quan està habilitat, fa de proxy i serveix arxius remots. Això ajuda a generar les miniatures de les imatges i a protegir la privacitat dels usuaris.';
	@override String get allowExternalApRedirect => 'Permetre el reencaminament per consultes fent servir ActivityPub.';
	@override String get allowExternalApRedirect_description => 'Si aquesta opció s\'activa, altres servidors poden consultar continguts de tercers mitjançant aquest servidor, però això pot donar peu a la suplantació de continguts.';
	@override String get userGeneratedContentsVisibilityForVisitor => 'L\'abast de la publicació del contingut generat per l\'usuari';
	@override String get userGeneratedContentsVisibilityForVisitor_description => 'Això ajuda a evitar problemes com que continguts remots inadequats que no hagin estat moderats correctament es publiquin a internet mitjançant el teu servidor.';
	@override String get userGeneratedContentsVisibilityForVisitor_description2 => 'La publicació incondicional de tots els continguts del servidor a internet, incloent-hi els continguts remots rebuts pel servidor, comporta riscos. Això és extremadament important per els espectadors que desconeixen el caràcter descentralitzat dels continguts, ja que poden percebre erroneament els continguts remots com contingut generat per el propi servidor.';
	@override String get restartServerSetupWizardConfirm_title => 'Vols tornar a executar l\'assistent de configuració inicial del servidor?';
	@override String get restartServerSetupWizardConfirm_text => 'Algunes configuracions actuals seran restablertes.';
	@override late final _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorCaEs userGeneratedContentsVisibilityForVisitor_ = _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorCaEs._(_root);
}

// Path: misskey.accountMigration_
class _TranslationsMisskeyAccountMigrationCaEs extends TranslationsMisskeyAccountMigrationEnUs {
	_TranslationsMisskeyAccountMigrationCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => 'Migrar un altre compte a aquest';
	@override String get moveFromSub => 'Crear un àlies per un altre compte';
	@override String moveFromLabel({required Object n}) => 'Compte original #${n}';
	@override String get moveFromDescription => 'Has de crear un àlies del compte que vols migrar en aquest compte.\nFes servir aquest format per posar el compte que vols migrar: @nomusuari@servidor.exemple.com\nPer esborrar l\'àlies deixa el camp en blanc (no és recomanable de fer)';
	@override String get moveTo => 'Migrar aquest compte a un altre';
	@override String get moveToLabel => 'Compte al qual es vol migrar:';
	@override String get moveCannotBeUndone => 'Les migracions dels comptes no es poden desfer.';
	@override String get moveAccountDescription => 'Això migrarà el teu compte a un altre diferent.\n　・Els seguidors d\'aquest compte és passaran al compte nou de forma automàtica\n　・Es deixaran de seguir a tots els usuaris que es segueixen actualment en aquest compte\n　・No es poden crear notes noves, etc. en aquest compte\n\nSi bé la migració de seguidors es automàtica, has de preparar alguns pasos manualment per migrar la llista d\'usuaris que segueixes. Per fer això has d\'exportar els seguidors que després importaraes al compte nou mitjançant el menú de configuració. El mateix procediment s\'ha de seguir per less teves llistes i els teus usuaris silenciats i bloquejats.\n\n(Aquesta explicació s\'aplica a Misskey v13.12.0 i posteriors. Altres aplicacions, com Mastodon, poden funcionar diferent.)';
	@override String get moveAccountHowTo => 'Per fer la migració, primer has de crear un àlies per aquest compte al compte al qual vols migrar.\nDesprés de crear l\'àlies, introdueix el compte al qual vols migrar amb el format següent: @nomusuari@servidor.exemple.com';
	@override String get startMigration => 'Migrar';
	@override String migrationConfirm({required Object account}) => 'Vols migrar aquest compte a ${account}? Una vegada comenci la migració no es podrà parar O fer marxa enrere i no podràs tornar a fer servir aquest compte mai més.';
	@override String get movedAndCannotBeUndone => 'Aquest compte ha migrat.\nLes migracions no es poden desfer.';
	@override String get postMigrationNote => 'Aquest compte deixarà de seguir tots els comptes que segueix 24 hores després de terminar la migració.\nEl nombre de seguidors i seguits passarà a ser de zero. Per evitar que els teus seguidors no puguin veure les publicacions marcades com a només seguidors continuaren seguint aquest compte.';
	@override String get movedTo => 'Nou compte:';
}

// Path: misskey.achievements_
class _TranslationsMisskeyAchievementsCaEs extends TranslationsMisskeyAchievementsEnUs {
	_TranslationsMisskeyAchievementsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Desbloquejat el';
	@override late final _TranslationsMisskeyAchievementsTypesCaEs types_ = _TranslationsMisskeyAchievementsTypesCaEs._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRoleCaEs extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRoleCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

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
	@override String get preserveAssignmentOnMoveAccount => 'L\'estat de l\'assignació també es trasllada amb el compte migrat';
	@override String get preserveAssignmentOnMoveAccount_description => 'Si s\'activa quan es migra un compte amb aquest rol, el compte migrat també heretarà aquest rol.';
	@override String get canEditMembersByModerator => 'Permetre que els moderadors editin la llista d\'usuaris en aquest rol';
	@override String get descriptionOfCanEditMembersByModerator => 'Quan s\'activa, els moderadors, així com els administradors, podran afegir i treure usuaris d\'aquest rol. Si es troba desactivat, només els administradors poden assignar usuaris.';
	@override String get priority => 'Prioritat';
	@override late final _TranslationsMisskeyRolePriorityCaEs priority_ = _TranslationsMisskeyRolePriorityCaEs._(_root);
	@override late final _TranslationsMisskeyRoleOptionsCaEs options_ = _TranslationsMisskeyRoleOptionsCaEs._(_root);
	@override late final _TranslationsMisskeyRoleConditionCaEs condition_ = _TranslationsMisskeyRoleConditionCaEs._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _TranslationsMisskeySensitiveMediaDetectionCaEs extends TranslationsMisskeySensitiveMediaDetectionEnUs {
	_TranslationsMisskeySensitiveMediaDetectionCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

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
class _TranslationsMisskeyEmailUnavailableCaEs extends TranslationsMisskeyEmailUnavailableEnUs {
	_TranslationsMisskeyEmailUnavailableCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get used => 'Aquest correu electrònic ja s\'està fent servir';
	@override String get format => 'El format del correu electrònic és invàlid ';
	@override String get disposable => 'No es poden fer servir adreces de correu electrònic d\'un sol ús ';
	@override String get mx => 'Aquest servidor de correu electrònic no és vàlid ';
	@override String get smtp => 'Aquest servidor de correu electrònic no respon';
	@override String get banned => 'No pots registrar-te amb aquesta adreça de correu electrònic ';
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilityCaEs extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilityCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get public => 'Públic ';
	@override String get followers => 'Visible només per a seguidors ';
	@override String get private => 'Privat';
}

// Path: misskey.signup_
class _TranslationsMisskeySignupCaEs extends TranslationsMisskeySignupEnUs {
	_TranslationsMisskeySignupCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Ja quasi estem';
	@override String get emailAddressInfo => 'Si us plau, escriu la teva adreça de correu electrònic. No es farà pública.';
	@override String emailSent({required Object email}) => 'S\'ha enviat un correu de confirmació a (${email}). Si us plau, fes clic a l\'enllaç per completar el registre.';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeleteCaEs extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeleteCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Eliminar el compte';
	@override String get mayTakeTime => 'Com l\'eliminació d\'un compte consumeix bastants recursos, pot trigar un temps perquè es completi l\'esborrat, depenent si tens molt contingut i la quantitat de fitxer que hagis pujat.';
	@override String get sendEmail => 'Una vegada hagi finalitzat l\'esborrat del compte rebràs un correu electrònic a l\'adreça que tinguis registrada en aquest compte.';
	@override String get requestAccountDelete => 'Demanar l\'eliminació del compte';
	@override String get started => 'Ha començat l\'esborrat del compte.';
	@override String get inProgress => 'L\'esborrat es troba en procés ';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdCaEs extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get back => 'Tornar';
	@override String get reduceFrequencyOfThisAd => 'Mostrar menys aquest anunci';
	@override String get hide => 'No mostrar mai';
	@override String get timezoneinfo => 'El dia de la setmana ve determinat del fus horari del servidor.';
	@override String get adsSettings => 'Configurar la publicitat';
	@override String get notesPerOneAd => 'Interval d\'emplaçament publicitari en temps real (Notes per anuncis)';
	@override String get setZeroToDisable => 'Ajusta aquest valor a 0 per deshabilitar l\'actualització d\'anuncis en temps real';
	@override String get adsTooClose => 'L\'interval actual pot fer que l\'experiència de l\'usuari sigui dolenta perquè l\'interval és molt baix.';
}

// Path: misskey.forgotPassword_
class _TranslationsMisskeyForgotPasswordCaEs extends TranslationsMisskeyForgotPasswordEnUs {
	_TranslationsMisskeyForgotPasswordCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Escriu l\'adreça de correu electrònic amb la que et vas registrar. S\'enviarà un correu electrònic amb un enllaç perquè puguis canviar-la.';
	@override String get ifNoEmail => 'Si no vas fer servir una adreça de correu electrònic per registrar-te, si us plau posa\'t en contacte amb l\'administrador.';
	@override String get contactAdmin => 'Aquesta instància no suporta registrar-se amb correu electrònic. Si us plau, contacta amb l\'administrador del servidor.';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryCaEs extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get my => 'La meva Galeria ';
	@override String get liked => 'Publicacions que t\'han agradat';
	@override String get like => 'M\'agrada ';
	@override String get unlike => 'Ja no m\'agrada';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailCaEs extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowCaEs follow_ = _TranslationsMisskeyEmailFollowCaEs._(_root);
	@override late final _TranslationsMisskeyEmailReceiveFollowRequestCaEs receiveFollowRequest_ = _TranslationsMisskeyEmailReceiveFollowRequestCaEs._(_root);
}

// Path: misskey.plugin_
class _TranslationsMisskeyPluginCaEs extends TranslationsMisskeyPluginEnUs {
	_TranslationsMisskeyPluginCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get install => 'Instal·lar un afegit ';
	@override String get installWarn => 'Si us plau, no instal·lis afegits que no siguin de confiança.';
	@override String get manage => 'Gestionar els afegits';
	@override String get viewSource => 'Veure l\'origen ';
	@override String get viewLog => 'Mostra el registre';
}

// Path: misskey.preferencesBackups_
class _TranslationsMisskeyPreferencesBackupsCaEs extends TranslationsMisskeyPreferencesBackupsEnUs {
	_TranslationsMisskeyPreferencesBackupsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

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
class _TranslationsMisskeyRegistryCaEs extends TranslationsMisskeyRegistryEnUs {
	_TranslationsMisskeyRegistryCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Àmbit ';
	@override String get key => 'Clau';
	@override String get keys => 'Claus';
	@override String get domain => 'Domini';
	@override String get createKey => 'Crear una clau';
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeyCaEs extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeyCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey és un programa de codi obert desenvolupat des del 2014 per syuilo';
	@override String get contributors => 'Col·laboradors principals';
	@override String get allContributors => 'Tots els col·laboradors ';
	@override String get source => 'Codi font';
	@override String get original => 'Original';
	@override String thisIsModifiedVersion({required Object name}) => 'En ${name} fa servir una versió modificada de Misskey.';
	@override String get translation => 'Tradueix Misskey';
	@override String get donate => 'Fes un donatiu a Misskey';
	@override String get morePatrons => 'També agraïm el suport d\'altres col·laboradors que no surten en aquesta llista. Gràcies! 🥰';
	@override String get patrons => 'Patrocinadors';
	@override String get projectMembers => 'Membres del projecte';
}

// Path: misskey.displayOfSensitiveMedia_
class _TranslationsMisskeyDisplayOfSensitiveMediaCaEs extends TranslationsMisskeyDisplayOfSensitiveMediaEnUs {
	_TranslationsMisskeyDisplayOfSensitiveMediaCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get respect => 'Ocultar imatges o vídeos marcats com a sensibles';
	@override String get ignore => 'Mostrar imatges o vídeos marcats com a sensibles';
	@override String get force => 'Ocultar totes les imatges o vídeos ';
}

// Path: misskey.instanceTicker_
class _TranslationsMisskeyInstanceTickerCaEs extends TranslationsMisskeyInstanceTickerEnUs {
	_TranslationsMisskeyInstanceTickerCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get none => 'No mostrar mai';
	@override String get remote => 'Mostrar per usuaris remots';
	@override String get always => 'Mostrar sempre';
}

// Path: misskey.serverDisconnectedBehavior_
class _TranslationsMisskeyServerDisconnectedBehaviorCaEs extends TranslationsMisskeyServerDisconnectedBehaviorEnUs {
	_TranslationsMisskeyServerDisconnectedBehaviorCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Recarregar automàticament ';
	@override String get dialog => 'Mostrar finestres de confirmació ';
	@override String get quiet => 'Mostrar un avís que no molesti';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelCaEs extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

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
class _TranslationsMisskeyMenuDisplayCaEs extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplayCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Horitzontal ';
	@override String get sideIcon => 'Horitzontal (icones)';
	@override String get top => 'A dalt';
	@override String get hide => 'Amagar';
}

// Path: misskey.wordMute_
class _TranslationsMisskeyWordMuteCaEs extends TranslationsMisskeyWordMuteEnUs {
	_TranslationsMisskeyWordMuteCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Paraules silenciades';
	@override String get muteWordsDescription => 'Separar amb espais per la condició AND o amb salts de línia per la condició OR.';
	@override String get muteWordsDescription2 => 'Envolta les paraules amb barres per fer servir expressions regulars.';
}

// Path: misskey.instanceMute_
class _TranslationsMisskeyInstanceMuteCaEs extends TranslationsMisskeyInstanceMuteEnUs {
	_TranslationsMisskeyInstanceMuteCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Silencia tots els impulsos dels servidors seleccionats, també els usuaris que responen a altres d\'un servidor silenciat.';
	@override String get instanceMuteDescription2 => 'Separar amb salts de línia';
	@override String get title => 'Ocultar notes de les instàncies en la llista.';
	@override String get heading => 'Llista d\'instàncies a silenciar';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeCaEs extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get explore => 'Explorar els temes ';
	@override String get install => 'Instal·lar un tema';
	@override String get manage => 'Gestionar els temes ';
	@override String get code => 'Codi del tema';
	@override String get copyThemeCode => 'Copiar el codi del tema';
	@override String get description => 'Descripció';
	@override String installed({required Object name}) => '${name} Instal·lat ';
	@override String get installedThemes => 'Temes instal·lats ';
	@override String get builtinThemes => 'Temes integrats';
	@override String get instanceTheme => 'Tema de la instància ';
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
	@override late final _TranslationsMisskeyThemeKeysCaEs keys = _TranslationsMisskeyThemeKeysCaEs._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxCaEs extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get note => 'Notes';
	@override String get noteMy => 'Nota (per mi)';
	@override String get notification => 'Notificacions';
	@override String get reaction => 'Quan se selecciona una reacció ';
	@override String get chatMessage => 'Missatges del xat';
}

// Path: misskey.soundSettings_
class _TranslationsMisskeySoundSettingsCaEs extends TranslationsMisskeySoundSettingsEnUs {
	_TranslationsMisskeySoundSettingsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get driveFile => 'Fer servir un fitxer d\'àudio del disc';
	@override String get driveFileWarn => 'Seleccionar un fitxer d\'àudio del disc';
	@override String get driveFileTypeWarn => 'Fitxer no suportat ';
	@override String get driveFileTypeWarnDescription => 'Seleccionar un fitxer d\'àudio ';
	@override String get driveFileDurationWarn => 'L\'àudio és massa llarg';
	@override String get driveFileDurationWarnDescription => 'Els àudios molt llargs pot interrompre l\'ús de Misskey. Vols continuar?';
	@override String get driveFileError => 'El so no es pot carregar. Canvia la configuració';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoCaEs extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

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
class _TranslationsMisskeyTimeInCaEs extends TranslationsMisskeyTimeInEnUs {
	_TranslationsMisskeyTimeInCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

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
class _TranslationsMisskeyTimeCaEs extends TranslationsMisskeyTimeEnUs {
	_TranslationsMisskeyTimeCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get second => 'Segon(s)';
	@override String get minute => 'Minut(s)';
	@override String get hour => 'Hor(a)(es)';
	@override String get day => 'Di(a)(es)';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faCaEs extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'J has registrat un dispositiu d\'autenticació de doble factor.';
	@override String get registerTOTP => 'Registrar una aplicació autenticadora';
	@override String step1({required Object a, required Object b}) => 'Primer instal·la una aplicació autenticadora (com ${a} o ${b}) al teu dispositiu.';
	@override String get step2 => 'Després escaneja el codi QR que es mostra en aquesta pantalla.';
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
	@override String get moreDetailedGuideHere => 'Aquí tens una guia al detall';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsCaEs extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

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
	@override String get writeAdminPromo => 'Gestiona les notes promocionals';
	@override String get writeAdminDrive => 'Gestiona el disc de l\'usuari';
	@override String get readAdminDrive => 'Veure la informació del disc de l\'usuari';
	@override String get readAdminStream => 'Fes servir l\'API sobre Websocket per l\'administració';
	@override String get writeAdminAd => 'Gestiona la publicitat';
	@override String get readAdminAd => 'Veure anuncis';
	@override String get writeInviteCodes => 'Crear codis d\'invitació';
	@override String get readInviteCodes => 'Obtenir codis d\'invitació';
	@override String get writeClipFavorite => 'Gestionar els clips favorits';
	@override String get readClipFavorite => 'Veure clips favorits';
	@override String get readFederation => 'Veure dades de federació';
	@override String get writeReportAbuse => 'Informar d\'un abús';
	@override String get writeChat => 'Crear o esborrar missatges de xat';
	@override String get readChat => 'Explorar xats';
}

// Path: misskey.auth_
class _TranslationsMisskeyAuthCaEs extends TranslationsMisskeyAuthEnUs {
	_TranslationsMisskeyAuthCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'Concedeix permisos a l\'aplicació';
	@override String shareAccess({required Object name}) => 'Vols que ${name} pugui accedir al vostre compte?';
	@override String get shareAccessAsk => 'Segur que vols que aquesta aplicació pugui accedir al vostre compte?';
	@override String permission({required Object name}) => '${name} demana els següents permisos';
	@override String get permissionAsk => 'Aquesta aplicació demana els següents permisos';
	@override String get pleaseGoBack => 'Si us plau, torna a l\'aplicació';
	@override String get callback => 'Tornant a l\'aplicació';
	@override String get accepted => 'Accés garantit';
	@override String get denied => 'Accés denegat';
	@override String get scopeUser => 'Opera com si fossis aquest usuari';
	@override String get pleaseLogin => 'Si us plau, identificat per autoritzar l\'aplicació.';
	@override String get byClickingYouWillBeRedirectedToThisUrl => 'Si es garanteix l\'accés, seràs redirigit automàticament a la següent adreça URL';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesCaEs extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get all => 'Totes les publicacions';
	@override String get homeTimeline => 'Publicacions dels usuaris seguits';
	@override String get users => 'Publicacions d\'usuaris específics';
	@override String get userList => 'Publicacions d\'una llista d\'usuaris';
	@override String get userBlacklist => 'Totes les notes excepte les d\'un o alguns usuaris especificats';
}

// Path: misskey.weekday_
class _TranslationsMisskeyWeekdayCaEs extends TranslationsMisskeyWeekdayEnUs {
	_TranslationsMisskeyWeekdayCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get sunday => 'Diumenge';
	@override String get monday => 'Dilluns';
	@override String get tuesday => 'Dimarts';
	@override String get wednesday => 'Dimecres';
	@override String get thursday => 'Dijous';
	@override String get friday => 'Divendres';
	@override String get saturday => 'Dissabte';
}

// Path: misskey.widgets_
class _TranslationsMisskeyWidgetsCaEs extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Perfil';
	@override String get instanceInfo => 'Informació del fitxer d\'instal·lació';
	@override String get memo => 'Notes adhesives';
	@override String get notifications => 'Notificacions';
	@override String get timeline => 'Línia de temps';
	@override String get calendar => 'Calendari';
	@override String get trends => 'Tendència';
	@override String get clock => 'Rellotge';
	@override String get rss => 'Lector RSS';
	@override String get rssTicker => 'RSS ticker';
	@override String get activity => 'Activitat';
	@override String get photos => 'Fotografies';
	@override String get digitalClock => 'Rellotge digital';
	@override String get unixClock => 'Rellotge UNIX';
	@override String get federation => 'Federació';
	@override String get instanceCloud => 'Núvol d\'instàncies';
	@override String get postForm => 'Formulari de publicació';
	@override String get slideshow => 'Presentació';
	@override String get button => 'Botó ';
	@override String get onlineUsers => 'Usuaris actius';
	@override String get jobQueue => 'Cua de feines';
	@override String get serverMetric => 'Mètriques del servidor';
	@override String get aiscript => 'Consola AiScript';
	@override String get aiscriptApp => 'Aplicació AiScript';
	@override String get aichan => 'Ai';
	@override String get userList => 'Llistat d\'usuaris';
	@override late final _TranslationsMisskeyWidgetsUserListCaEs userList_ = _TranslationsMisskeyWidgetsUserListCaEs._(_root);
	@override String get clicker => 'Clicker';
	@override String get birthdayFollowings => 'Usuaris que fan l\'aniversari avui';
	@override String get chat => 'Xat';
}

// Path: misskey.cw_
class _TranslationsMisskeyCwCaEs extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Amagar';
	@override String get show => 'Carregar més';
	@override String chars({required Object count}) => '${count} caràcters ';
	@override String files({required Object count}) => '${count} fitxer(s)';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollCaEs extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

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
class _TranslationsMisskeyVisibilityCaEs extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

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
class _TranslationsMisskeyPostFormCaEs extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get quitInspiteOfThereAreUnuploadedFilesConfirm => 'Hi ha arxius que no s\'han carregat, vols descartar-los i tancar el formulari?';
	@override String get uploaderTip => 'L\'arxiu encara no s\'ha carregat. Des del menú arxiu pots canviar el nom, retallar imatges, posar marques d\'aigua i comprimir o no l\'arxiu. Els arxius es carreguen automàticament quan públiques una nota.';
	@override String get replyPlaceholder => 'Contestar...';
	@override String get quotePlaceholder => 'Citar...';
	@override String get channelPlaceholder => 'Publicar a un canal...';
	@override late final _TranslationsMisskeyPostFormPlaceholdersCaEs placeholders_ = _TranslationsMisskeyPostFormPlaceholdersCaEs._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileCaEs extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

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
	@override String get followedMessage => 'Missatge als nous seguidors';
	@override String get followedMessageDescription => 'Es pot configurar un missatge curt que es mostra a l\'altra persona quan comença a seguir-te.';
	@override String get followedMessageDescriptionForLockedAccount => 'Si comencen a seguir-te es mostra un missatge de quan es permet aquesta sol·licitud. ';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportCaEs extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Totes les publicacions';
	@override String get favoritedNotes => 'Notes preferides';
	@override String get clips => 'Retalls';
	@override String get followingList => 'Seguint ';
	@override String get muteList => 'Silencia';
	@override String get blockingList => 'Bloqueja';
	@override String get userLists => 'Llistes';
	@override String get excludeMutingUsers => 'Exclou usuaris silenciats';
	@override String get excludeInactiveUsers => 'Exclou usuaris inactius';
	@override String get withReplies => 'Inclou a la línia de temps les respostes d\'usuaris importats';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsCaEs extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Federació';
	@override String get apRequest => 'Peticions';
	@override String get usersIncDec => 'Diferència entre el nombre d\'usuaris';
	@override String get usersTotal => 'Nombre total d\'usuaris';
	@override String get activeUsers => 'Usuaris actius';
	@override String get notesIncDec => 'Diferència entre el nombre de notes';
	@override String get localNotesIncDec => 'Diferencia en el nombre de notes locals';
	@override String get remoteNotesIncDec => 'Diferencia en el nombre de notes remotes';
	@override String get notesTotal => 'Nombre total de notes';
	@override String get filesIncDec => 'Diferencia en el nombre de fitxers';
	@override String get filesTotal => 'Nombre total de fitxers';
	@override String get storageUsageIncDec => 'Diferencia en l\'emmagatzematge usat';
	@override String get storageUsageTotal => 'Emmagatzematge usat';
}

// Path: misskey.instanceCharts_
class _TranslationsMisskeyInstanceChartsCaEs extends TranslationsMisskeyInstanceChartsEnUs {
	_TranslationsMisskeyInstanceChartsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get requests => 'Peticions';
	@override String get users => 'Diferència entre el nombre d\'usuaris';
	@override String get usersTotal => 'Usuaris totals acumulats';
	@override String get notes => 'Diferència entre el nombre de notes';
	@override String get notesTotal => 'Notes totals acumulades';
	@override String get ff => 'Diferència en nombre d\'usuaris seguits / seguidors';
	@override String get ffTotal => 'Nombre total acumulat d\'usuaris seguits / seguidors';
	@override String get cacheSize => 'Diferència a la mida de la memòria cau';
	@override String get cacheSizeTotal => 'Total acumulat de la mida de la memòria cau';
	@override String get files => 'Diferència al nombre d\'arxius';
	@override String get filesTotal => 'Nombre acumulatiu de fitxers';
}

// Path: misskey.timelines_
class _TranslationsMisskeyTimelinesCaEs extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get home => 'Inici';
	@override String get local => 'Local';
	@override String get social => 'Social';
	@override String get global => 'Global';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayCaEs extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Crear un guió';
	@override String get edit => 'Editar guió';
	@override String get created => 'Guió creat';
	@override String get updated => 'Guió editat';
	@override String get deleted => 'Guió esborrat';
	@override String get pageSetting => 'Configuració del guió';
	@override String get editThisPage => 'Edita aquest guió';
	@override String get viewSource => 'Veure l\'origen ';
	@override String get my => 'Els meus guions';
	@override String get liked => 'Guions que m\'han agradat';
	@override String get featured => 'Popular';
	@override String get title => 'Títol ';
	@override String get script => 'Script';
	@override String get summary => 'Descripció';
	@override String get visibilityDescription => '';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesCaEs extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'pa';
	@override String get editPage => 'Editar la pàgina';
	@override String get readPage => 'Veure el codi font d\'aquesta pàgina';
	@override String get pageSetting => 'Configuració de la pàgina';
	@override String get nameAlreadyExists => 'L\'adreça URL de la pàgina ja existeix';
	@override String get invalidNameTitle => 'L\'adreça URL de la pàgina no és vàlida';
	@override String get invalidNameText => 'Assegurat que el títol de la pàgina no és buit';
	@override String get editThisPage => 'Editar la pàgina';
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
	@override String get enterSectionTitle => 'Escriu el títol de la secció';
	@override String get selectType => 'Seleccionar tipus';
	@override String get contentBlocks => 'Contingut';
	@override String get inputBlocks => 'Entrada ';
	@override String get specialBlocks => 'Especial';
	@override late final _TranslationsMisskeyPagesBlocksCaEs blocks = _TranslationsMisskeyPagesBlocksCaEs._(_root);
}

// Path: misskey.relayStatus_
class _TranslationsMisskeyRelayStatusCaEs extends TranslationsMisskeyRelayStatusEnUs {
	_TranslationsMisskeyRelayStatusCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'Pendent';
	@override String get accepted => 'Acceptat';
	@override String get rejected => 'Rebutjat';
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationCaEs extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

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
	@override String get chatRoomInvitationReceived => 'T\'han invitat a una sala de xat';
	@override String get emptyPushNotificationMessage => 'Les notificacions han sigut actualitzades';
	@override String get achievementEarned => 'Aconseguiment desblocat';
	@override String get testNotification => 'Notificació de prova';
	@override String get checkNotificationBehavior => 'Comprova el comportament de la notificació ';
	@override String get sendTestNotification => 'Enviar notificació de prova';
	@override String get notificationWillBeDisplayedLikeThis => 'Les notificacions és veure\'n així ';
	@override String reactedBySomeUsers({required Object n}) => 'Han reaccionat ${n} usuaris';
	@override String likedBySomeUsers({required Object n}) => 'A ${n} usuaris els hi agrada la teva nota';
	@override String renotedBySomeUsers({required Object n}) => 'L\'han impulsat ${n} usuaris';
	@override String followedBySomeUsers({required Object n}) => 'Et segueixen ${n} usuaris';
	@override String get flushNotification => 'Netejar notificacions';
	@override String exportOfXCompleted({required Object x}) => 'Completada l\'exportació de ${x}';
	@override String get login => 'Algú ha iniciat sessió ';
	@override String get createToken => 'Token d\'accés generat';
	@override String createTokenDescription({required Object text}) => 'Si no saps què és, esborra el token des de ${text}.';
	@override late final _TranslationsMisskeyNotificationTypesCaEs types_ = _TranslationsMisskeyNotificationTypesCaEs._(_root);
	@override late final _TranslationsMisskeyNotificationActionsCaEs actions_ = _TranslationsMisskeyNotificationActionsCaEs._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckCaEs extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Mostrar sempre la columna principal';
	@override String get columnAlign => 'Alinea les columnes';
	@override String get columnGap => 'Espai entre columnes';
	@override String get deckMenuPosition => 'Posició del menú del tauler';
	@override String get navbarPosition => 'Posició de la barra de navegació ';
	@override String get addColumn => 'Afegeix una columna';
	@override String get newNoteNotificationSettings => 'Configuració de notificacions per a notes noves';
	@override String get configureColumn => 'Configuració de columnes';
	@override String get swapLeft => 'Mou a l’esquerra';
	@override String get swapRight => 'Mou a la dreta';
	@override String get swapUp => 'Mou cap amunt';
	@override String get swapDown => 'Mou cap avall';
	@override String get stackLeft => 'Pila a la columna esquerra';
	@override String get popRight => 'Col·loca a la dreta';
	@override String get profile => 'Perfil';
	@override String get newProfile => 'Perfil nou';
	@override String get deleteProfile => 'Elimina el perfil';
	@override String get introduction => 'Crea la interfície perfecta posant les columnes allà on vulguis!';
	@override String get introduction2 => 'Fes clic al botó + de la dreta per afegir noves columnes sempre que vulguis.';
	@override String get widgetsIntroduction => 'Selecciona "Editar ginys" a la columna del menú i afegeix un.';
	@override String get useSimpleUiForNonRootPages => 'Usa una interfície senzilla per a les pàgines navegades';
	@override String get usedAsMinWidthWhenFlexible => 'L\'amplada mínima es farà servir quan "Ajust automàtic de l\'amplada" estigui activat';
	@override String get flexible => 'Ajust automàtic de l\'amplada';
	@override String get enableSyncBetweenDevicesForProfiles => 'Activar la sincronització de la informació de perfils de dispositiu a dispositiu';
	@override late final _TranslationsMisskeyDeckColumnsCaEs columns_ = _TranslationsMisskeyDeckColumnsCaEs._(_root);
}

// Path: misskey.dialog_
class _TranslationsMisskeyDialogCaEs extends TranslationsMisskeyDialogEnUs {
	_TranslationsMisskeyDialogCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => 'Has arribat al màxim de caràcters! Actualment és ${current} de ${max}';
	@override String charactersBelow({required Object current, required Object min}) => 'Ets per sota del mínim de caràcters! Actualment és ${current} de ${min}';
}

// Path: misskey.disabledTimeline_
class _TranslationsMisskeyDisabledTimelineCaEs extends TranslationsMisskeyDisabledTimelineEnUs {
	_TranslationsMisskeyDisabledTimelineCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Línia de tems desactivada';
	@override String get description => 'No pots fer servir aquesta línia de temps amb els teus rols actuals.';
}

// Path: misskey.drivecleaner_
class _TranslationsMisskeyDrivecleanerCaEs extends TranslationsMisskeyDrivecleanerEnUs {
	_TranslationsMisskeyDrivecleanerCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'Mida del fitxer descendent';
	@override String get orderByCreatedAtAsc => 'Data ascendent';
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsCaEs extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Crear un Webhook';
	@override String get modifyWebhook => 'Modificar un Webhook';
	@override String get name => 'Nom';
	@override String get secret => 'Secret';
	@override String get trigger => 'Activador';
	@override String get active => 'Activat';
	@override late final _TranslationsMisskeyWebhookSettingsEventsCaEs events_ = _TranslationsMisskeyWebhookSettingsEventsCaEs._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsSystemEventsCaEs systemEvents_ = _TranslationsMisskeyWebhookSettingsSystemEventsCaEs._(_root);
	@override String get deleteConfirm => 'Segur que vols esborrar el webhook?';
	@override String get testRemarks => 'Si feu clic al botó a la dreta de l\'interruptor, podeu enviar un webhook de prova amb dades dummy.';
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportCaEs extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientCaEs notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientCaEs._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesCaEs extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get createRole => 'Rol creat';
	@override String get deleteRole => 'Rol esborrat';
	@override String get updateRole => 'Rol actualitzat';
	@override String get assignRole => 'Assignat al rol';
	@override String get unassignRole => 'Esborrat del rol';
	@override String get suspend => 'Suspèn';
	@override String get unsuspend => 'Suspensió treta';
	@override String get addCustomEmoji => 'Afegit emoji personalitzat';
	@override String get updateCustomEmoji => 'Actualitzat emoji personalitzat';
	@override String get deleteCustomEmoji => 'Esborrat emoji personalitzat';
	@override String get updateServerSettings => 'Configuració del servidor actualitzada';
	@override String get updateUserNote => 'Nota de moderació actualitzada';
	@override String get deleteDriveFile => 'Fitxer esborrat';
	@override String get deleteNote => 'Nota esborrada';
	@override String get createGlobalAnnouncement => 'Anunci global creat';
	@override String get createUserAnnouncement => 'Anunci individual creat';
	@override String get updateGlobalAnnouncement => 'Anunci global actualitzat';
	@override String get updateUserAnnouncement => 'Anunci individual actualitzat ';
	@override String get deleteGlobalAnnouncement => 'Anunci global esborrat';
	@override String get deleteUserAnnouncement => 'Anunci individual esborrat ';
	@override String get resetPassword => 'Restableix la contrasenya';
	@override String get suspendRemoteInstance => 'Servidor remot suspès ';
	@override String get unsuspendRemoteInstance => 'S\'ha tret la suspensió del servidor remot';
	@override String get updateRemoteInstanceNote => 'Nota de moderació de la instància remota actualitzada';
	@override String get markSensitiveDriveFile => 'Fitxer marcat com a sensible';
	@override String get unmarkSensitiveDriveFile => 'S\'ha tret la marca de sensible del fitxer';
	@override String get resolveAbuseReport => 'Informe resolt';
	@override String get forwardAbuseReport => 'Informe reenviat';
	@override String get updateAbuseReportNote => 'Nota de moderació d\'un informe actualitzat';
	@override String get createInvitation => 'Crear codi d\'invitació ';
	@override String get createAd => 'Anunci creat';
	@override String get deleteAd => 'Anunci esborrat';
	@override String get updateAd => 'Anunci actualitzat';
	@override String get createAvatarDecoration => 'Decoració de l\'avatar creada';
	@override String get updateAvatarDecoration => 'S\'ha actualitzat la decoració de l\'avatar ';
	@override String get deleteAvatarDecoration => 'S\'ha esborrat la decoració de l\'avatar ';
	@override String get unsetUserAvatar => 'Esborrar l\'avatar d\'aquest usuari';
	@override String get unsetUserBanner => 'Esborrar el bàner d\'aquest usuari';
	@override String get createSystemWebhook => 'Crear un SystemWebhook';
	@override String get updateSystemWebhook => 'Actualitzar SystemWebhook';
	@override String get deleteSystemWebhook => 'Esborrar SystemWebhook';
	@override String get createAbuseReportNotificationRecipient => 'Crear un destinatari per l\'informe de moderació ';
	@override String get updateAbuseReportNotificationRecipient => 'Actualitzar destinatari per l\'informe de moderació ';
	@override String get deleteAbuseReportNotificationRecipient => 'Esborrar destinatari de l\'informe de moderació ';
	@override String get deleteAccount => 'Esborrar el compte ';
	@override String get deletePage => 'Esborrar la pàgina';
	@override String get deleteFlash => 'Esborrar el guió';
	@override String get deleteGalleryPost => 'Esborrar la publicació de la galeria';
	@override String get deleteChatRoom => 'Esborra la sala de xat';
	@override String get updateProxyAccountDescription => 'Actualitzar descripció del compte proxy';
}

// Path: misskey.fileViewer_
class _TranslationsMisskeyFileViewerCaEs extends TranslationsMisskeyFileViewerEnUs {
	_TranslationsMisskeyFileViewerCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Detall del fitxer';
	@override String get type => 'Tipus de fitxer';
	@override String get size => 'Mida';
	@override String get url => 'URL';
	@override String get uploadedAt => 'Pujat el';
	@override String get attachedNotes => 'Notes amb aquest fitxer';
	@override String get usage => 'Ús ';
	@override String get thisPageCanBeSeenFromTheAuthor => 'Aquesta pàgina només la pot veure l\'usuari que ha pujat aquest fitxer.';
}

// Path: misskey.externalResourceInstaller_
class _TranslationsMisskeyExternalResourceInstallerCaEs extends TranslationsMisskeyExternalResourceInstallerEnUs {
	_TranslationsMisskeyExternalResourceInstallerCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Instal·lar des d\'un lloc extern';
	@override String get checkVendorBeforeInstall => 'Assegura\'t que qui distribueix aquest recurs és fiable abans d\'instal·lar-ho.';
	@override late final _TranslationsMisskeyExternalResourceInstallerPluginCaEs plugin_ = _TranslationsMisskeyExternalResourceInstallerPluginCaEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerThemeCaEs theme_ = _TranslationsMisskeyExternalResourceInstallerThemeCaEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerMetaCaEs meta_ = _TranslationsMisskeyExternalResourceInstallerMetaCaEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerVendorInfoCaEs vendorInfo_ = _TranslationsMisskeyExternalResourceInstallerVendorInfoCaEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsCaEs errors_ = _TranslationsMisskeyExternalResourceInstallerErrorsCaEs._(_root);
}

// Path: misskey.dataSaver_
class _TranslationsMisskeyDataSaverCaEs extends TranslationsMisskeyDataSaverEnUs {
	_TranslationsMisskeyDataSaverCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyDataSaverMediaCaEs media_ = _TranslationsMisskeyDataSaverMediaCaEs._(_root);
	@override late final _TranslationsMisskeyDataSaverAvatarCaEs avatar_ = _TranslationsMisskeyDataSaverAvatarCaEs._(_root);
	@override late final _TranslationsMisskeyDataSaverUrlPreviewThumbnailCaEs urlPreviewThumbnail_ = _TranslationsMisskeyDataSaverUrlPreviewThumbnailCaEs._(_root);
	@override late final _TranslationsMisskeyDataSaverDisableUrlPreviewCaEs disableUrlPreview_ = _TranslationsMisskeyDataSaverDisableUrlPreviewCaEs._(_root);
	@override late final _TranslationsMisskeyDataSaverCodeCaEs code_ = _TranslationsMisskeyDataSaverCodeCaEs._(_root);
}

// Path: misskey.hemisphere_
class _TranslationsMisskeyHemisphereCaEs extends TranslationsMisskeyHemisphereEnUs {
	_TranslationsMisskeyHemisphereCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get N => 'Hemisferi Nord ';
	@override String get S => 'Hemisferi Sud';
	@override String get caption => 'El fan servir alguns clients per determinar l\'estació de l\'any.';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiCaEs extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get reversi => 'Reversi';
	@override String get gameSettings => 'Opcions del joc';
	@override String get chooseBoard => 'Escull un tauler';
	@override String get blackOrWhite => 'Negres/Blanques';
	@override String blackIs({required Object name}) => '${name} juga amb negres ';
	@override String get rules => 'Regles';
	@override String get thisGameIsStartedSoon => 'El joc començarà en breu';
	@override String get waitingForOther => 'Esperant la tirada de l\'oponent ';
	@override String get waitingForMe => 'Esperant el teu torn';
	@override String get waitingBoth => 'Prepara\'t ';
	@override String get ready => 'Preparat ';
	@override String get cancelReady => ' No preparat ';
	@override String get opponentTurn => 'Torn de l\'oponent ';
	@override String get myTurn => 'El teu torn';
	@override String turnOf({required Object name}) => 'Li toca a ${name}';
	@override String pastTurnOf({required Object name}) => 'Torn de ${name}';
	@override String get surrender => 'Rendeix-te';
	@override String get surrendered => 'T\'has rendit';
	@override String get timeout => 'Temps esgotat';
	@override String get drawn => 'Empat';
	@override String won({required Object name}) => '${name} ha guanyat';
	@override String get black => 'Negres';
	@override String get white => 'Blanques';
	@override String get total => 'Total';
	@override String turnCount({required Object count}) => 'Torn ${count}';
	@override String get myGames => 'Jugades';
	@override String get allGames => 'Totes les jugades';
	@override String get ended => 'Acabat';
	@override String get playing => 'Jugant';
	@override String get isLlotheo => 'Qui tingui menys pedres guanya (Llotheo)';
	@override String get loopedMap => 'Mapa de recursiu';
	@override String get canPutEverywhere => 'Les fitxes es poden posar a qualsevol lloc';
	@override String get timeLimitForEachTurn => 'Temps límit per jugada';
	@override String get freeMatch => 'Partida lliure';
	@override String get lookingForPlayer => 'Buscant contrincant...';
	@override String get gameCanceled => 'La partida s\'ha cancel·lat ';
	@override String get shareToTlTheGameWhenStart => 'Compartir la partida a la línia de temps quan comenci';
	@override String get iStartedAGame => 'La partida ha començat! #MisskeyReversi';
	@override String get opponentHasSettingsChanged => 'L\'oponent h canviat la seva configuració ';
	@override String get allowIrregularRules => 'Regles irregulars (totalment lliure)';
	@override String get disallowIrregularRules => 'Sense regles irregulars';
	@override String get showBoardLabels => 'Mostrar el número de línia i columna al tauler de joc';
	@override String get useAvatarAsStone => 'Fer servir els avatars dels usuaris com a fitxes';
}

// Path: misskey.offlineScreen_
class _TranslationsMisskeyOfflineScreenCaEs extends TranslationsMisskeyOfflineScreenEnUs {
	_TranslationsMisskeyOfflineScreenCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fora de línia - No es pot connectar amb el servidor';
	@override String get header => 'Impossible connectar amb el servidor';
}

// Path: misskey.urlPreviewSetting_
class _TranslationsMisskeyUrlPreviewSettingCaEs extends TranslationsMisskeyUrlPreviewSettingEnUs {
	_TranslationsMisskeyUrlPreviewSettingCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Configuració per a la previsualització de l\'URL';
	@override String get enable => 'Activa la previsualització de l\'URL';
	@override String get allowRedirect => 'Permet la redirecció de la visualització prèvia ';
	@override String get allowRedirectDescription => 'Estableix si es mostra o no la redirecció a la vista prèvia quan l\'adreça URL introduïda té una redirecció. Si es desactiva s\'estalvien recursos del servidor, però no es mostrarà el contingut de la redirecció.';
	@override String get timeout => 'Temps màxim per carregar la previsualització de l\'URL (ms)';
	@override String get timeoutDescription => 'Si l\'obtenció de la previsualització triga més que el temps establert, no es generarà la vista prèvia.';
	@override String get maximumContentLength => 'Longitud màxima del contingut (bytes)';
	@override String get maximumContentLengthDescription => 'Si la màxima longitud és més gran que aquest valor, la previsualització no es generarà.';
	@override String get requireContentLength => 'Generar la previsualització només si es pot obtenir la longitud màxima ';
	@override String get requireContentLengthDescription => 'Si l\'altre servidor no proporciona la longitud màxima, la previsualització no es generarà.';
	@override String get userAgent => 'User-Agent';
	@override String get userAgentDescription => 'Estableix l\'User-Agent que és farà servir per a la recuperació de la vista prèvia. Si és deixa en blanc es farà servir l\'User-Agent per defecte.';
	@override String get summaryProxy => 'Proxy endpoints per generar vistes prèvies';
	@override String get summaryProxyDescription => 'La vista prèvia es genera fent servir Summaly proxy, no la genera el mateix Misskey.';
	@override String get summaryProxyDescription2 => 'Els següents paràmetres són passats al proxy com cadenes de consulta. Si el proxy no els admet, s\'ignoren els valors configurats.';
}

// Path: misskey.mediaControls_
class _TranslationsMisskeyMediaControlsCaEs extends TranslationsMisskeyMediaControlsEnUs {
	_TranslationsMisskeyMediaControlsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get pip => 'Imatge sobre impressionada ';
	@override String get playbackRate => 'Velocitat de reproducció ';
	@override String get loop => 'Reproducció en bucle';
}

// Path: misskey.contextMenu_
class _TranslationsMisskeyContextMenuCaEs extends TranslationsMisskeyContextMenuEnUs {
	_TranslationsMisskeyContextMenuCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Menú contextual';
	@override String get app => 'Aplicació ';
	@override String get appWithShift => 'Aplicació amb la tecla shift';
	@override String get native => 'Interfície del navegador';
}

// Path: misskey.gridComponent_
class _TranslationsMisskeyGridComponentCaEs extends TranslationsMisskeyGridComponentEnUs {
	_TranslationsMisskeyGridComponentCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyGridComponentErrorCaEs error_ = _TranslationsMisskeyGridComponentErrorCaEs._(_root);
}

// Path: misskey.roleSelectDialog_
class _TranslationsMisskeyRoleSelectDialogCaEs extends TranslationsMisskeyRoleSelectDialogEnUs {
	_TranslationsMisskeyRoleSelectDialogCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get notSelected => 'No seleccionat';
}

// Path: misskey.customEmojisManager_
class _TranslationsMisskeyCustomEmojisManagerCaEs extends TranslationsMisskeyCustomEmojisManagerEnUs {
	_TranslationsMisskeyCustomEmojisManagerCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCustomEmojisManagerGridCommonCaEs gridCommon_ = _TranslationsMisskeyCustomEmojisManagerGridCommonCaEs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLogsCaEs logs_ = _TranslationsMisskeyCustomEmojisManagerLogsCaEs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerRemoteCaEs remote_ = _TranslationsMisskeyCustomEmojisManagerRemoteCaEs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalCaEs local_ = _TranslationsMisskeyCustomEmojisManagerLocalCaEs._(_root);
}

// Path: misskey.embedCodeGen_
class _TranslationsMisskeyEmbedCodeGenCaEs extends TranslationsMisskeyEmbedCodeGenEnUs {
	_TranslationsMisskeyEmbedCodeGenCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Personalitza el codi per incrustar';
	@override String get header => 'Mostrar la capçalera';
	@override String get autoload => 'Carregar automàticament (no recomanat)';
	@override String get maxHeight => 'Alçada màxima';
	@override String get maxHeightDescription => '0 anul·la la configuració màxima. Per evitar que continuï creixent verticalment, especifiqui qualsevol valor.';
	@override String get maxHeightWarn => 'El límit màxim d\'alçada és nul (0). Si això no és un canvi previst, estableix el màxim d\'alçada a un cert valor.';
	@override String get previewIsNotActual => 'La visualització és diferent de la que es mostra quan s\'implanta.';
	@override String get rounded => 'Angle recte';
	@override String get border => 'Afegeix un marc al contenidor';
	@override String get applyToPreview => 'Aplica a la vista prèvia';
	@override String get generateCode => 'Crea el codi per incrustar';
	@override String get codeGenerated => 'Codi generat';
	@override String get codeGeneratedDescription => 'Si us plau, enganxeu el codi generat al lloc web.';
}

// Path: misskey.selfXssPrevention_
class _TranslationsMisskeySelfXssPreventionCaEs extends TranslationsMisskeySelfXssPreventionEnUs {
	_TranslationsMisskeySelfXssPreventionCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get warning => 'Advertència ';
	@override String get title => '"Enganxa qualsevol cosa en aquesta finestra"  És tot un engany.';
	@override String get description1 => 'Si posa alguna cosa al seu compte, un usuari malintencionat podria segrestar-la o robar-li les dades.';
	@override String get description2 => 'Si no entens que estàs fent %cpara ara mateix i tanca la finestra.';
	@override String description3({required Object link}) => 'Per obtenir més informació. ${link}';
}

// Path: misskey.followRequest_
class _TranslationsMisskeyFollowRequestCaEs extends TranslationsMisskeyFollowRequestEnUs {
	_TranslationsMisskeyFollowRequestCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get recieved => 'Sol·licituds rebudes';
	@override String get sent => 'Sol·licituds enviades';
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsCaEs extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedCaEs federationNotAllowed_ = _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedCaEs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsUriInvalidCaEs uriInvalid_ = _TranslationsMisskeyRemoteLookupErrorsUriInvalidCaEs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsRequestFailedCaEs requestFailed_ = _TranslationsMisskeyRemoteLookupErrorsRequestFailedCaEs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsResponseInvalidCaEs responseInvalid_ = _TranslationsMisskeyRemoteLookupErrorsResponseInvalidCaEs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectCaEs noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectCaEs._(_root);
}

// Path: misskey.captcha_
class _TranslationsMisskeyCaptchaCaEs extends TranslationsMisskeyCaptchaEnUs {
	_TranslationsMisskeyCaptchaCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get verify => 'Passar pel CAPTCHA';
	@override String get testSiteKeyMessage => 'Pots comprovar una vista prèvia introduïnt valors de prova per la clau del lloc i la clau secreta. Si vols més informació consulteu la següent pàgina.';
	@override late final _TranslationsMisskeyCaptchaErrorCaEs error_ = _TranslationsMisskeyCaptchaErrorCaEs._(_root);
}

// Path: misskey.bootErrors_
class _TranslationsMisskeyBootErrorsCaEs extends TranslationsMisskeyBootErrorsEnUs {
	_TranslationsMisskeyBootErrorsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hi ha hagut en error en carregar';
	@override String get serverError => 'Si el problema persisteix després d\'esperar una mica i recarregar, posa\'t en contacte amb l\'administrador del servidor amb el següent codi d\'error.';
	@override String get solution => 'Per intentar resoldre el problema pots fer el següent.';
	@override String get solution1 => 'Actualitza el navegador i el sistema operatiu a l\'última versió ';
	@override String get solution2 => 'Desactiva els adblockers';
	@override String get solution3 => 'Esborra la memòria cau del navegador';
	@override String get solution4 => '(Navegador Tor) configura dom.webaudio.enabled a true';
	@override String get otherOption => 'Altres opcions';
	@override String get otherOption1 => 'Esborrar la configuració i la memòria cau del client';
	@override String get otherOption2 => 'Iniciar client senzill';
	@override String get otherOption3 => 'Iniciar l\'eina de reparació ';
	@override String get otherOption4 => 'Iniciar Misskey en mode segur';
}

// Path: misskey.search_
class _TranslationsMisskeySearchCaEs extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Tot';
	@override String get searchScopeLocal => 'Local';
	@override String get searchScopeServer => 'Instància ';
	@override String get searchScopeUser => 'Especificar usuari';
	@override String get pleaseEnterServerHost => 'Introdueix l\'adreça de la instància ';
	@override String get pleaseSelectUser => 'Selecciona un usuari';
	@override String get serverHostPlaceholder => 'Ex: misskey.example.com';
}

// Path: misskey.serverSetupWizard_
class _TranslationsMisskeyServerSetupWizardCaEs extends TranslationsMisskeyServerSetupWizardEnUs {
	_TranslationsMisskeyServerSetupWizardCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get installCompleted => 'La instal·lació de Misskey ha finalitzat!';
	@override String get firstCreateAccount => 'Primer crea un compte d\'administrador.';
	@override String get accountCreated => 'Compte d\'administrador creat.';
	@override String get serverSetting => 'Configuració del servidor';
	@override String get youCanEasilyConfigureOptimalServerSettingsWithThisWizard => 'Aquest assistent t\'ajuda a fer una configuració òptima del servidor.';
	@override String get settingsYouMakeHereCanBeChangedLater => 'Els canvis que facis ara poden modificar-se més tard.';
	@override String get howWillYouUseMisskey => 'Com es fa servir Misskey?';
	@override late final _TranslationsMisskeyServerSetupWizardUseCaEs use_ = _TranslationsMisskeyServerSetupWizardUseCaEs._(_root);
	@override String get openServerAdvice => 'Acceptar un nombre no determinat d\'usuaris comporta alguns riscos. Es recomana operar amb un sistema de moderació fiable per fer front als problemes.';
	@override String get openServerAntiSpamAdvice => 'També s\'ha de tenir molta cura amb la seguretat, per exemple habilitant funcions anti-bot com reCAPTCHA, per assegurar-te que el teu servidor no es converteix en un trampolí per contingut brossa.';
	@override String get howManyUsersDoYouExpect => 'Quantes persones preveus?';
	@override late final _TranslationsMisskeyServerSetupWizardScaleCaEs scale_ = _TranslationsMisskeyServerSetupWizardScaleCaEs._(_root);
	@override String get largeScaleServerAdvice => 'Els grans servidors poden requerir coneixements avançats d\'infraestructures, com balanceig de càrregues i replicació de base de dades.';
	@override String get doYouConnectToFediverse => 'Desitges connectar-te amb el Fedivers?';
	@override String get doYouConnectToFediverse_description1 => 'Quan es connecta amb una xarxa de servidors distribuïts (Fedivers), els continguts poden intercanviar-se amb altres servidors i entre ells.';
	@override String get doYouConnectToFediverse_description2 => 'La connexió amb el Fedivers també es coneix com a "federació".';
	@override String get youCanConfigureMoreFederationSettingsLater => 'Les configuracions avançades, com especificar els servidors amb els quals es pot federar, es poden fer més tard.';
	@override String get remoteContentsCleaning => 'Neteja automàtica del contingut rebut';
	@override String get remoteContentsCleaning_description => 'Quan es comença a federar es rep un munt de contingut, quan s\'activa la neteja automàtica el contingut antic que no es consulta serà eliminat del servidor, el que permet estalviar espai d\'emmagatzematge.';
	@override String get adminInfo => 'Informació de l\'administrador ';
	@override String get adminInfo_description => 'Estableix la informació de l\'administrador que es farà servir per rebre consultes.';
	@override String get adminInfo_mustBeFilled => 'Aquesta informació ha de ser omplerta si el servidor té els registres oberts o la federació es troba activada.';
	@override String get followingSettingsAreRecommended => 'Es recomana la següent configuració ';
	@override String get applyTheseSettings => 'Aplicar aquesta configuració ';
	@override String get skipSettings => 'Saltar la configuració ';
	@override String get settingsCompleted => 'Configuració finalitzada ';
	@override String get settingsCompleted_description => 'Gràcies per la teva ajuda. Ara que ja està tot llest, pots començar a fer servir el servidor immediatament.';
	@override String get settingsCompleted_description2 => 'La configuració avançada del servidor també poden fer-se des del "Tauler de control".';
	@override String get donationRequest => 'Una donació, si us plau';
	@override late final _TranslationsMisskeyServerSetupWizardDonationRequestCaEs donationRequest_ = _TranslationsMisskeyServerSetupWizardDonationRequestCaEs._(_root);
}

// Path: misskey.uploader_
class _TranslationsMisskeyUploaderCaEs extends TranslationsMisskeyUploaderEnUs {
	_TranslationsMisskeyUploaderCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get editImage => 'Edició d\'imatges';
	@override String compressedToX({required Object x}) => 'Comprimit a ${x}';
	@override String savedXPercent({required Object x}) => '${x}% d\'estalvi ';
	@override String get abortConfirm => 'Hi ha un arxiu que no s\'ha pujat, vols cancel·lar?';
	@override String get doneConfirm => 'Hi han fitxers no pujats, vols completar-los?';
	@override String maxFileSizeIsX({required Object x}) => 'La mida màxima d\'arxiu que es pot pujar és ${x}.';
	@override String get allowedTypes => 'Tipus de fitxers que en podeu pujar';
	@override String get tip => 'L\'arxiu encara no s\'ha carregat. En aquest quadre de diàleg, pots comprovar, canviar el nom, comprimir i retallar l\'arxiu abans de pujar-lo. Quan estigui llest pots iniciar la càrrega polsant el boto "Pujar"';
}

// Path: misskey.clientPerformanceIssueTip_
class _TranslationsMisskeyClientPerformanceIssueTipCaEs extends TranslationsMisskeyClientPerformanceIssueTipEnUs {
	_TranslationsMisskeyClientPerformanceIssueTipCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Si creus que el consum de bateria és molt alt';
	@override String get makeSureDisabledAdBlocker => 'Desactiva els bloquejadors de publicitat';
	@override String get makeSureDisabledAdBlocker_description => 'Els bloquejadors d\'anuncis pot afectar el rendiment, comprova que no estiguin activats per característiques del sistema operatiu o del navegador.';
	@override String get makeSureDisabledCustomCss => 'Desactiva CSS personalitzat';
	@override String get makeSureDisabledCustomCss_description => 'L\'anul·lació dels estils pot afectar el rendiment. Comprova que el CSS personalitzat o les extensions que reescriuen estils no estiguin activats.';
	@override String get makeSureDisabledAddons => 'Desactiva extensions';
	@override String get makeSureDisabledAddons_description => 'Algunes extensions poden interferir en el comportament del client i afectar el rendiment. Desactiva les extensions del navegador i comprovar-ho.';
}

// Path: misskey.clip_
class _TranslationsMisskeyClipCaEs extends TranslationsMisskeyClipEnUs {
	_TranslationsMisskeyClipCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Clip és una funció que permet organitzar les teves notes.';
}

// Path: misskey.userLists_
class _TranslationsMisskeyUserListsCaEs extends TranslationsMisskeyUserListsEnUs {
	_TranslationsMisskeyUserListsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Es poden crear llistes amb qualsevol usuari. La llista creada es pot mostrar com una línia de temps.';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorCaEs extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get tip => 'A la imatge es pot afegir una marca d\'aigua com informació sobre drets.';
	@override String get quitWithoutSaveConfirm => 'Sortir sense desar?';
	@override String get driveFileTypeWarn => 'Aquest arxiu no és compatible';
	@override String get driveFileTypeWarnDescription => 'Selecciona un arxiu d\'imatge ';
	@override String get title => 'Editar la marca d\'aigua ';
	@override String get cover => 'Cobrir-ho tot';
	@override String get repeat => 'Repetir';
	@override String get opacity => 'Opacitat';
	@override String get scale => 'Mida';
	@override String get text => 'Text';
	@override String get position => 'Posició ';
	@override String get type => 'Tipus';
	@override String get image => 'Imatges';
	@override String get advanced => 'Avançat';
	@override String get stripe => 'Bandes';
	@override String get stripeWidth => 'Amplada de la banda';
	@override String get stripeFrequency => 'Freqüència de la banda';
	@override String get angle => 'Angle';
	@override String get polkadot => 'Lunars';
	@override String get checker => 'Escacs';
	@override String get polkadotMainDotOpacity => 'Opacitat del lunar principal';
	@override String get polkadotMainDotRadius => 'Mida del lunar principal';
	@override String get polkadotSubDotOpacity => 'Opacitat del lunar secundari';
	@override String get polkadotSubDotRadius => 'Mida del lunar secundari';
	@override String get polkadotSubDotDivisions => 'Nombre de punts secundaris';
}

// Path: misskey.imageEffector_
class _TranslationsMisskeyImageEffectorCaEs extends TranslationsMisskeyImageEffectorEnUs {
	_TranslationsMisskeyImageEffectorCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Efecte';
	@override String get addEffect => 'Afegeix un efecte';
	@override String get discardChangesConfirm => 'Vols descartar els canvis i sortir?';
	@override late final _TranslationsMisskeyImageEffectorFxsCaEs fxs_ = _TranslationsMisskeyImageEffectorFxsCaEs._(_root);
}

// Path: misskey.drafts_
class _TranslationsMisskeyDraftsCaEs extends TranslationsMisskeyDraftsEnUs {
	_TranslationsMisskeyDraftsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get select => 'Seleccionar esborrany';
	@override String get cannotCreateDraftAnymore => 'S\'ha sobrepassat el nombre màxim d\'esborranys que es poden crear.';
	@override String get cannotCreateDraft => 'Amb aquest contingut no es poden crear esborranys.';
	@override String get delete => 'Esborrar esborranys';
	@override String get deleteAreYouSure => 'Vols esborrar els esborranys?';
	@override String get noDrafts => 'No hi ha esborranys';
	@override String replyTo({required Object user}) => 'Respondre a ${user}';
	@override String quoteOf({required Object user}) => 'Citar les notes de ${user}';
	@override String postTo({required Object channel}) => 'Destinat a ${channel}';
	@override String get saveToDraft => 'Desar com a esborrany';
	@override String get restoreFromDraft => 'Restaurar des dels esborranys';
	@override String get restore => 'Restaurar esborrany';
	@override String get listDrafts => 'Llistat d\'esborranys';
}

// Path: misskey.chat_.chatAllowedUsers_
class _TranslationsMisskeyChatChatAllowedUsersCaEs extends TranslationsMisskeyChatChatAllowedUsersEnUs {
	_TranslationsMisskeyChatChatAllowedUsersCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get everyone => 'Tothom';
	@override String get followers => 'Només els teus seguidors';
	@override String get following => 'Només usuaris als que segueixes';
	@override String get mutual => 'Només seguidors mutus';
	@override String get none => 'Ningú ';
}

// Path: misskey.settings_.chat_
class _TranslationsMisskeySettingsChatCaEs extends TranslationsMisskeySettingsChatEnUs {
	_TranslationsMisskeySettingsChatCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get showSenderName => 'Mostrar el nom del remitent';
	@override String get sendOnEnter => 'Introdueix per enviar';
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypeCaEs extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypeCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get none => 'S\'està publicant';
	@override String get manuallySuspended => 'Suspendre manualment';
	@override String get goneSuspended => 'Servidor suspès perquè el servidor s\'ha esborrat';
	@override String get autoSuspendedForNotResponding => 'Servidor suspès perquè el servidor no respon';
	@override String get softwareSuspended => 'Suspès perquè el programari ha deixat de desenvolupar-se ';
}

// Path: misskey.bubbleGame_.score_
class _TranslationsMisskeyBubbleGameScoreCaEs extends TranslationsMisskeyBubbleGameScoreEnUs {
	_TranslationsMisskeyBubbleGameScoreCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get score => 'Puntuació ';
	@override String get scoreYen => 'Diners guanyats';
	@override String get highScore => 'Millor puntuació ';
	@override String get maxChain => 'Nombre màxim de combos';
	@override String yen({required Object yen}) => '${yen}Ien';
	@override String estimatedQty({required Object qty}) => '${qty}peces';
	@override String scoreSweets({required Object onigiriQtyWithUnit}) => '${onigiriQtyWithUnit}ongiris';
}

// Path: misskey.bubbleGame_.howToPlay_
class _TranslationsMisskeyBubbleGameHowToPlayCaEs extends TranslationsMisskeyBubbleGameHowToPlayEnUs {
	_TranslationsMisskeyBubbleGameHowToPlayCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get section1 => 'Ajusta la posició i deixa caure l\'objecte dintre la caixa.';
	@override String get section2 => 'Quan dos objectes del mateix tipus es toquen, canviaran en un objecte diferent i guanyares punts.';
	@override String get section3 => 'El joc s\'acabarà quan els objectes sobresurtin de la caixa. Intenta aconseguir la puntuació més gran possible fusionant objectes mentre impedeixes que sobresurtin de la caixa!';
}

// Path: misskey.initialTutorial_.landing_
class _TranslationsMisskeyInitialTutorialLandingCaEs extends TranslationsMisskeyInitialTutorialLandingEnUs {
	_TranslationsMisskeyInitialTutorialLandingCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Benvingut al tutorial';
	@override String get description => 'Aquí aprendràs el bàsic per poder fer servir Misskey i les seves característiques.';
}

// Path: misskey.initialTutorial_.note_
class _TranslationsMisskeyInitialTutorialNoteCaEs extends TranslationsMisskeyInitialTutorialNoteEnUs {
	_TranslationsMisskeyInitialTutorialNoteCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Què és una Nota?';
	@override String get description => 'Les publicacions a Misskey es diuen \'Notes\'. Les Notes s\'ordenen cronològicament a la línia de temps i s\'actualitzen de forma automàtica.';
	@override String get reply => 'Fes clic en aquest botó per contestar a un missatge. També és possible contestar a una contestació, continuant la conversació en forma de fil.';
	@override String get renote => 'Pots compartir una Nota a la teva pròpia línia de temps. Inclús pots citar-les amb els teus comentaris.';
	@override String get reaction => 'Pots afegir reaccions a les Notes. Entrarem més en detall a la pròxima pàgina.';
	@override String get menu => 'Pots veure els detalls de les Notes, copiar enllaços i fer diferents accions.';
}

// Path: misskey.initialTutorial_.reaction_
class _TranslationsMisskeyInitialTutorialReactionCaEs extends TranslationsMisskeyInitialTutorialReactionEnUs {
	_TranslationsMisskeyInitialTutorialReactionCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Què són les Reaccions?';
	@override String get description => 'Es poden reaccionar a les Notes amb diferents emoticones. Les reaccions et permeten expressar matisos que hi són més enllà d\'un simple m\'agrada.';
	@override String get letsTryReacting => 'Es poden afegir reaccions fent clic al botó \'+\'. Prova reaccionant a aquesta nota!';
	@override String get reactToContinue => 'Afegeix una reacció per continuar.';
	@override String get reactNotification => 'Rebràs notificacions en temps real quan un usuari reaccioni a les teves notes.';
	@override String get reactDone => 'Pots desfer una reacció fent clic al botó \'-\'.';
}

// Path: misskey.initialTutorial_.timeline_
class _TranslationsMisskeyInitialTutorialTimelineCaEs extends TranslationsMisskeyInitialTutorialTimelineEnUs {
	_TranslationsMisskeyInitialTutorialTimelineCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

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
class _TranslationsMisskeyInitialTutorialPostNoteCaEs extends TranslationsMisskeyInitialTutorialPostNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Configuració de la publicació de les notes';
	@override String get description1 => 'Quan públiques una nota a Misskey hi ha diferents opcions disponibles. El formulari de publicació es veu així';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteVisibilityCaEs visibility_ = _TranslationsMisskeyInitialTutorialPostNoteVisibilityCaEs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwCaEs cw_ = _TranslationsMisskeyInitialTutorialPostNoteCwCaEs._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveCaEs extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Com marcar adjunts com a contingut sensible?';
	@override String get description => 'Per adjunts que sigui requerit per les normes del servidor o que puguin contenir material sensible, s\'ha d\'afegir l\'opció \'sensible\'.';
	@override String get tryThisFile => 'Prova de marcar la imatge adjunta en aquest formulari com a sensible!';
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteCaEs exampleNote_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteCaEs._(_root);
	@override String get method => 'Per marcar un adjunt com a sensible, fes clic a la miniatura de l\'adjunt, obre el menú i fes clic a \'Marcar com a sensible\'.';
	@override String get sensitiveSucceeded => 'Quan adjuntis fitxers si us plau marca la sensibilitat seguint les normes del servidor.';
	@override String get doItToContinue => 'Marca el fitxer adjunt com a sensible per poder continuar.';
}

// Path: misskey.initialTutorial_.done_
class _TranslationsMisskeyInitialTutorialDoneCaEs extends TranslationsMisskeyInitialTutorialDoneEnUs {
	_TranslationsMisskeyInitialTutorialDoneCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Has completat el tutorial 🎉';
	@override String description({required Object link}) => 'Les funcions explicades aquí és una petita mostra. Per una explicació més detallada de com fer servir MissKey consulta ${link}.';
}

// Path: misskey.serverSettings_.userGeneratedContentsVisibilityForVisitor_
class _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorCaEs extends TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorEnUs {
	_TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get all => 'Tot obert al públic ';
	@override String get localOnly => 'Només es publiquen els continguts locals, el contingut remot es manté privat';
	@override String get none => 'Tot privat';
}

// Path: misskey.achievements_.types_
class _TranslationsMisskeyAchievementsTypesCaEs extends TranslationsMisskeyAchievementsTypesEnUs {
	_TranslationsMisskeyAchievementsTypesCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesNotes1CaEs notes1_ = _TranslationsMisskeyAchievementsTypesNotes1CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10CaEs notes10_ = _TranslationsMisskeyAchievementsTypesNotes10CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100CaEs notes100_ = _TranslationsMisskeyAchievementsTypesNotes100CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes500CaEs notes500_ = _TranslationsMisskeyAchievementsTypesNotes500CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes1000CaEs notes1000_ = _TranslationsMisskeyAchievementsTypesNotes1000CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes5000CaEs notes5000_ = _TranslationsMisskeyAchievementsTypesNotes5000CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10000CaEs notes10000_ = _TranslationsMisskeyAchievementsTypesNotes10000CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes20000CaEs notes20000_ = _TranslationsMisskeyAchievementsTypesNotes20000CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes30000CaEs notes30000_ = _TranslationsMisskeyAchievementsTypesNotes30000CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes40000CaEs notes40000_ = _TranslationsMisskeyAchievementsTypesNotes40000CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes50000CaEs notes50000_ = _TranslationsMisskeyAchievementsTypesNotes50000CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes60000CaEs notes60000_ = _TranslationsMisskeyAchievementsTypesNotes60000CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes70000CaEs notes70000_ = _TranslationsMisskeyAchievementsTypesNotes70000CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes80000CaEs notes80000_ = _TranslationsMisskeyAchievementsTypesNotes80000CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes90000CaEs notes90000_ = _TranslationsMisskeyAchievementsTypesNotes90000CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100000CaEs notes100000_ = _TranslationsMisskeyAchievementsTypesNotes100000CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin3CaEs login3_ = _TranslationsMisskeyAchievementsTypesLogin3CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin7CaEs login7_ = _TranslationsMisskeyAchievementsTypesLogin7CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin15CaEs login15_ = _TranslationsMisskeyAchievementsTypesLogin15CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin30CaEs login30_ = _TranslationsMisskeyAchievementsTypesLogin30CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin60CaEs login60_ = _TranslationsMisskeyAchievementsTypesLogin60CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin100CaEs login100_ = _TranslationsMisskeyAchievementsTypesLogin100CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin200CaEs login200_ = _TranslationsMisskeyAchievementsTypesLogin200CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin300CaEs login300_ = _TranslationsMisskeyAchievementsTypesLogin300CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin400CaEs login400_ = _TranslationsMisskeyAchievementsTypesLogin400CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin500CaEs login500_ = _TranslationsMisskeyAchievementsTypesLogin500CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin600CaEs login600_ = _TranslationsMisskeyAchievementsTypesLogin600CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin700CaEs login700_ = _TranslationsMisskeyAchievementsTypesLogin700CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin800CaEs login800_ = _TranslationsMisskeyAchievementsTypesLogin800CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin900CaEs login900_ = _TranslationsMisskeyAchievementsTypesLogin900CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin1000CaEs login1000_ = _TranslationsMisskeyAchievementsTypesLogin1000CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteClipped1CaEs noteClipped1_ = _TranslationsMisskeyAchievementsTypesNoteClipped1CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteFavorited1CaEs noteFavorited1_ = _TranslationsMisskeyAchievementsTypesNoteFavorited1CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMyNoteFavorited1CaEs myNoteFavorited1_ = _TranslationsMisskeyAchievementsTypesMyNoteFavorited1CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesProfileFilledCaEs profileFilled_ = _TranslationsMisskeyAchievementsTypesProfileFilledCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMarkedAsCatCaEs markedAsCat_ = _TranslationsMisskeyAchievementsTypesMarkedAsCatCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing1CaEs following1_ = _TranslationsMisskeyAchievementsTypesFollowing1CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing10CaEs following10_ = _TranslationsMisskeyAchievementsTypesFollowing10CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing50CaEs following50_ = _TranslationsMisskeyAchievementsTypesFollowing50CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing100CaEs following100_ = _TranslationsMisskeyAchievementsTypesFollowing100CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing300CaEs following300_ = _TranslationsMisskeyAchievementsTypesFollowing300CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1CaEs followers1_ = _TranslationsMisskeyAchievementsTypesFollowers1CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers10CaEs followers10_ = _TranslationsMisskeyAchievementsTypesFollowers10CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers50CaEs followers50_ = _TranslationsMisskeyAchievementsTypesFollowers50CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers100CaEs followers100_ = _TranslationsMisskeyAchievementsTypesFollowers100CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers300CaEs followers300_ = _TranslationsMisskeyAchievementsTypesFollowers300CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers500CaEs followers500_ = _TranslationsMisskeyAchievementsTypesFollowers500CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1000CaEs followers1000_ = _TranslationsMisskeyAchievementsTypesFollowers1000CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCollectAchievements30CaEs collectAchievements30_ = _TranslationsMisskeyAchievementsTypesCollectAchievements30CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewAchievements3minCaEs viewAchievements3min_ = _TranslationsMisskeyAchievementsTypesViewAchievements3minCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesILoveMisskeyCaEs iLoveMisskey_ = _TranslationsMisskeyAchievementsTypesILoveMisskeyCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFoundTreasureCaEs foundTreasure_ = _TranslationsMisskeyAchievementsTypesFoundTreasureCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient30minCaEs client30min_ = _TranslationsMisskeyAchievementsTypesClient30minCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient60minCaEs client60min_ = _TranslationsMisskeyAchievementsTypesClient60minCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minCaEs noteDeletedWithin1min_ = _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAtLateNightCaEs postedAtLateNight_ = _TranslationsMisskeyAchievementsTypesPostedAtLateNightCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAt0min0secCaEs postedAt0min0sec_ = _TranslationsMisskeyAchievementsTypesPostedAt0min0secCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSelfQuoteCaEs selfQuote_ = _TranslationsMisskeyAchievementsTypesSelfQuoteCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesHtl20npmCaEs htl20npm_ = _TranslationsMisskeyAchievementsTypesHtl20npmCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewInstanceChartCaEs viewInstanceChart_ = _TranslationsMisskeyAchievementsTypesViewInstanceChartCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadCaEs outputHelloWorldOnScratchpad_ = _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOpen3windowsCaEs open3windows_ = _TranslationsMisskeyAchievementsTypesOpen3windowsCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceCaEs driveFolderCircularReference_ = _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesReactWithoutReadCaEs reactWithoutRead_ = _TranslationsMisskeyAchievementsTypesReactWithoutReadCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClickedClickHereCaEs clickedClickHere_ = _TranslationsMisskeyAchievementsTypesClickedClickHereCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesJustPlainLuckyCaEs justPlainLucky_ = _TranslationsMisskeyAchievementsTypesJustPlainLuckyCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSetNameToSyuiloCaEs setNameToSyuilo_ = _TranslationsMisskeyAchievementsTypesSetNameToSyuiloCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1CaEs passedSinceAccountCreated1_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2CaEs passedSinceAccountCreated2_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3CaEs passedSinceAccountCreated3_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3CaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayCaEs loggedInOnBirthday_ = _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayCaEs loggedInOnNewYearsDay_ = _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCookieClickedCaEs cookieClicked_ = _TranslationsMisskeyAchievementsTypesCookieClickedCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBrainDiverCaEs brainDiver_ = _TranslationsMisskeyAchievementsTypesBrainDiverCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonCaEs smashTestNotificationButton_ = _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesTutorialCompletedCaEs tutorialCompleted_ = _TranslationsMisskeyAchievementsTypesTutorialCompletedCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadCaEs bubbleGameExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadCaEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadCaEs bubbleGameDoubleExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadCaEs._(_root);
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityCaEs extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get low => 'Baixa';
	@override String get middle => 'Mitjà';
	@override String get high => 'Alta';
}

// Path: misskey.role_.options_
class _TranslationsMisskeyRoleOptionsCaEs extends TranslationsMisskeyRoleOptionsEnUs {
	_TranslationsMisskeyRoleOptionsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'Pot veure la línia de temps global';
	@override String get ltlAvailable => 'Pot veure la línia de temps local';
	@override String get canPublicNote => 'Pot enviar notes públiques';
	@override String get mentionMax => 'Nombre màxim de mencions a una nota';
	@override String get canInvite => 'Pot crear invitacions a la instància ';
	@override String get inviteLimit => 'Límit d\'invitacions ';
	@override String get inviteLimitCycle => 'Temps de refresc de les invitacions';
	@override String get inviteExpirationTime => 'Interval de caducitat de les invitacions';
	@override String get canManageCustomEmojis => 'Gestiona els emojis personalitzats';
	@override String get canManageAvatarDecorations => 'Gestiona les decoracions dels avatars ';
	@override String get driveCapacity => 'Capacitat del disc';
	@override String get maxFileSize => 'Mida màxima de l\'arxiu que es pot carregar';
	@override String get alwaysMarkNsfw => 'Marca sempre els fitxers com a sensibles';
	@override String get canUpdateBioMedia => 'Permet l\'edició d\'una icona o un bàner';
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
	@override String get canHideAds => 'Pot amagar la publicitat';
	@override String get canSearchNotes => 'Pot cercar notes';
	@override String get canUseTranslator => 'Pot fer servir el traductor';
	@override String get avatarDecorationLimit => 'Nombre màxim de decoracions que es poden aplicar els avatars';
	@override String get canImportAntennas => 'Autoritza la importació d\'antenes ';
	@override String get canImportBlocking => 'Autoritza la importació de bloquejats';
	@override String get canImportFollowing => 'Autoritza la importació de seguidors';
	@override String get canImportMuting => 'Autoritza la importació de silenciats';
	@override String get canImportUserLists => 'Autoritza la importació de llistes d\'usuaris ';
	@override String get chatAvailability => 'Es permet xatejar';
	@override String get uploadableFileTypes => 'Tipus de fitxers que en podeu pujar';
	@override String get uploadableFileTypes_caption => 'Especifica el tipus MIME. Es poden especificar diferents tipus MIME separats amb una nova línia, i es poden especificar comodins amb asteriscs (*). (Per exemple: image/*)';
	@override String uploadableFileTypes_caption2({required Object x}) => 'Pot que no sigui possible determinar el tipus MIME d\'alguns arxius. Per permetre aquests tipus d\'arxius afegeix ${x} a les especificacions.';
	@override String get noteDraftLimit => 'Nombre possible d\'esborranys de notes al servidor';
	@override String get watermarkAvailable => 'Pots fer servir la marca d\'aigua';
}

// Path: misskey.role_.condition_
class _TranslationsMisskeyRoleConditionCaEs extends TranslationsMisskeyRoleConditionEnUs {
	_TranslationsMisskeyRoleConditionCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get roleAssignedTo => 'Assignat a rols manuals';
	@override String get isLocal => 'Usuari local';
	@override String get isRemote => 'Usuari remot';
	@override String get isCat => 'Usuaris gats';
	@override String get isBot => 'Usuaris bots';
	@override String get isSuspended => 'Usuari suspès';
	@override String get isLocked => 'Comptes privats';
	@override String get isExplorable => 'Fes que el compte aparegui a les cerques';
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
class _TranslationsMisskeyEmailFollowCaEs extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tens un nou seguidor';
}

// Path: misskey.email_.receiveFollowRequest_
class _TranslationsMisskeyEmailReceiveFollowRequestCaEs extends TranslationsMisskeyEmailReceiveFollowRequestEnUs {
	_TranslationsMisskeyEmailReceiveFollowRequestCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Has rebut una sol·licitud  de seguiment';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysCaEs extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get accent => 'Accent';
	@override String get bg => 'Fons';
	@override String get fg => 'Text';
	@override String get focus => 'Enfocament';
	@override String get indicator => 'Indicador';
	@override String get panel => 'Tauler';
	@override String get shadow => 'Ombra';
	@override String get header => 'Capçalera';
	@override String get navBg => 'Fons de la barra lateral';
	@override String get navFg => 'Text de la barra lateral';
	@override String get navActive => 'Text barra lateral (actiu)';
	@override String get navIndicator => 'Indicador barra lateral';
	@override String get link => 'Enllaç';
	@override String get hashtag => 'Etiqueta';
	@override String get mention => 'Menció';
	@override String get mentionMe => 'Mencions (jo)';
	@override String get renote => 'Impulsar';
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
	@override String get badge => 'Insígnia ';
	@override String get messageBg => 'Fons del xat';
	@override String get fgHighlighted => 'Text ressaltat';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListCaEs extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Tria una llista';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersCaEs extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get a => 'Que vols dir?...';
	@override String get b => 'Alguna cosa interessant al teu voltant?...';
	@override String get c => 'Què et passa pel cap?...';
	@override String get d => 'Què vols dir?...';
	@override String get e => 'Escriu alguna cosa...';
	@override String get f => 'Esperant que escriguis qualsevol cosa...';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksCaEs extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get text => 'Text';
	@override String get textarea => 'Àrea de text';
	@override String get section => 'Secció ';
	@override String get image => 'Imatges';
	@override String get button => 'Botó ';
	@override String get dynamic => 'Blocs dinàmics';
	@override String dynamicDescription({required Object play}) => 'Aquest bloc és antic. Ara en endavant fes servir ${play}';
	@override String get note => 'Incorporar una Nota';
	@override late final _TranslationsMisskeyPagesBlocksNoteCaEs note_ = _TranslationsMisskeyPagesBlocksNoteCaEs._(_root);
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesCaEs extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get all => 'Tots';
	@override String get note => 'Notes noves';
	@override String get follow => 'Segueix-me';
	@override String get mention => 'Menció';
	@override String get reply => 'Respostes';
	@override String get renote => 'Impulsos';
	@override String get quote => 'Citar';
	@override String get reaction => 'Reaccions';
	@override String get pollEnded => 'Enquesta terminada';
	@override String get receiveFollowRequest => 'Rebuda una petició de seguiment';
	@override String get followRequestAccepted => 'Petició de seguiment acceptada';
	@override String get roleAssigned => 'Rol donat';
	@override String get chatRoomInvitationReceived => 'Invitat a la sala de xat';
	@override String get achievementEarned => 'Assoliment desbloquejat';
	@override String get exportCompleted => 'Exportació completada';
	@override String get login => 'Iniciar sessió';
	@override String get createToken => 'Creació de tokens d\'accés ';
	@override String get test => 'Prova la notificació';
	@override String get app => 'Notificacions d\'aplicacions';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsCaEs extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'També et segueix';
	@override String get reply => 'Respondre';
	@override String get renote => 'Impulsar';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsCaEs extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

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
	@override String get roleTimeline => 'Línia de temps dels rols';
	@override String get chat => 'Xat';
}

// Path: misskey.webhookSettings_.events_
class _TranslationsMisskeyWebhookSettingsEventsCaEs extends TranslationsMisskeyWebhookSettingsEventsEnUs {
	_TranslationsMisskeyWebhookSettingsEventsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Quan se segueix a un usuari';
	@override String get followed => 'Quan et segueixen';
	@override String get note => 'Quan es publica una nota';
	@override String get reply => 'Quan es rep una resposta';
	@override String get renote => 'Quan es renoti';
	@override String get reaction => 'Quan es rep una reacció ';
	@override String get mention => 'Quan et mencionen';
}

// Path: misskey.webhookSettings_.systemEvents_
class _TranslationsMisskeyWebhookSettingsSystemEventsCaEs extends TranslationsMisskeyWebhookSettingsSystemEventsEnUs {
	_TranslationsMisskeyWebhookSettingsSystemEventsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get abuseReport => 'Quan reps un nou informe de moderació ';
	@override String get abuseReportResolved => 'Quan resols un informe de moderació ';
	@override String get userCreated => 'Quan es crea un usuari';
	@override String get inactiveModeratorsWarning => 'Quan el compte d\'un moderador no té activitat durant un temps';
	@override String get inactiveModeratorsInvitationOnlyChanged => 'Quan el compte d\'un moderador no té activitat durant un temps, i el servidor es canvia a registre per invitacions';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientCaEs extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get createRecipient => 'Afegeix un destinatari a l\'informe de moderació ';
	@override String get modifyRecipient => 'Editar un destinatari en l\'informe de moderació ';
	@override String get recipientType => 'Tipus de notificació ';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaEs recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaEs._(_root);
	@override String get keywords => 'Paraules clau';
	@override String get notifiedUser => 'Usuaris que s\'han de notificar ';
	@override String get notifiedWebhook => 'Webhook que s\'ha de fer servir';
	@override String get deleteConfirm => 'Segur que vols esborrar el destinatari de l\'informe de moderació?';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _TranslationsMisskeyExternalResourceInstallerPluginCaEs extends TranslationsMisskeyExternalResourceInstallerPluginEnUs {
	_TranslationsMisskeyExternalResourceInstallerPluginCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vols instal·lar aquest afegit?';
}

// Path: misskey.externalResourceInstaller_.theme_
class _TranslationsMisskeyExternalResourceInstallerThemeCaEs extends TranslationsMisskeyExternalResourceInstallerThemeEnUs {
	_TranslationsMisskeyExternalResourceInstallerThemeCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vols instal·lar aquest tema?';
}

// Path: misskey.externalResourceInstaller_.meta_
class _TranslationsMisskeyExternalResourceInstallerMetaCaEs extends TranslationsMisskeyExternalResourceInstallerMetaEnUs {
	_TranslationsMisskeyExternalResourceInstallerMetaCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get base => 'Paleta de colors base';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _TranslationsMisskeyExternalResourceInstallerVendorInfoCaEs extends TranslationsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_TranslationsMisskeyExternalResourceInstallerVendorInfoCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informació del distribuïdor ';
	@override String get endpoint => 'Punt final referenciat';
	@override String get hashVerify => 'Verificació d\'integritat ';
}

// Path: misskey.externalResourceInstaller_.errors_
class _TranslationsMisskeyExternalResourceInstallerErrorsCaEs extends TranslationsMisskeyExternalResourceInstallerErrorsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsCaEs invalidParams_ = _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsCaEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedCaEs resourceTypeNotSupported_ = _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedCaEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchCaEs failedToFetch_ = _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchCaEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedCaEs hashUnmatched_ = _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedCaEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedCaEs pluginParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedCaEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedCaEs pluginInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedCaEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedCaEs themeParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedCaEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedCaEs themeInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedCaEs._(_root);
}

// Path: misskey.dataSaver_.media_
class _TranslationsMisskeyDataSaverMediaCaEs extends TranslationsMisskeyDataSaverMediaEnUs {
	_TranslationsMisskeyDataSaverMediaCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Carregant multimèdia ';
	@override String get description => 'Desactiva la càrrega automàtica d\'imatges i vídeos. Les imatges i els vídeos amagats es carregaran quan es faci clic a sobre.';
}

// Path: misskey.dataSaver_.avatar_
class _TranslationsMisskeyDataSaverAvatarCaEs extends TranslationsMisskeyDataSaverAvatarEnUs {
	_TranslationsMisskeyDataSaverAvatarCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Avatars animats';
	@override String get description => 'Detenir l\'animació dels avatars animats. Les imatges animades solen tenir un pes més gran que les imatges normals, reduint el tràfic disponible.';
}

// Path: misskey.dataSaver_.urlPreviewThumbnail_
class _TranslationsMisskeyDataSaverUrlPreviewThumbnailCaEs extends TranslationsMisskeyDataSaverUrlPreviewThumbnailEnUs {
	_TranslationsMisskeyDataSaverUrlPreviewThumbnailCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Amagar les miniatures de la vista prèvia d\'URL';
	@override String get description => 'Les imatges en miniatura de la vista prèvia d\'URL ja no es carreguen';
}

// Path: misskey.dataSaver_.disableUrlPreview_
class _TranslationsMisskeyDataSaverDisableUrlPreviewCaEs extends TranslationsMisskeyDataSaverDisableUrlPreviewEnUs {
	_TranslationsMisskeyDataSaverDisableUrlPreviewCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desactivar la vista prèvia d\'URL';
	@override String get description => 'Desactiva la funció de previsualització d\'URL. A diferència de les imatges en miniatura soles, això redueix la càrrega de la mateixa informació vinculada.';
}

// Path: misskey.dataSaver_.code_
class _TranslationsMisskeyDataSaverCodeCaEs extends TranslationsMisskeyDataSaverCodeEnUs {
	_TranslationsMisskeyDataSaverCodeCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ressaltat del codi ';
	@override String get description => 'Quan s\'utilitza codi MFM, no es llegeix fins que es copiï. En els punts destacats del codi s\'han de llegir els fitxers definits per a cada llengua que resulti alt, però no es poden llegir automàticament, per la qual cosa es poden reduir les quantitats de comunicació.';
}

// Path: misskey.gridComponent_.error_
class _TranslationsMisskeyGridComponentErrorCaEs extends TranslationsMisskeyGridComponentErrorEnUs {
	_TranslationsMisskeyGridComponentErrorCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get requiredValue => 'Aquest camp és obligatori';
	@override String get columnTypeNotSupport => 'La validació d\'expressions regulars només s\'admet per columnes de tipus text.';
	@override String patternNotMatch({required Object pattern}) => 'Aquest valor no coincideix amb ${pattern}';
	@override String get notUnique => 'Aquest valor ha de ser únic ';
}

// Path: misskey.customEmojisManager_.gridCommon_
class _TranslationsMisskeyCustomEmojisManagerGridCommonCaEs extends TranslationsMisskeyCustomEmojisManagerGridCommonEnUs {
	_TranslationsMisskeyCustomEmojisManagerGridCommonCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get copySelectionRows => 'Copiar línies seleccionades ';
	@override String get copySelectionRanges => 'Copiar selecció ';
	@override String get deleteSelectionRows => 'Esborrar línies seleccionades';
	@override String get deleteSelectionRanges => 'Esborrar files de la selecció ';
	@override String get searchSettings => 'Configuració del cercador';
	@override String get searchSettingCaption => 'Defineix criteris de cerca detallats.';
	@override String get searchLimit => 'Nombre de pantalles';
	@override String get sortOrder => 'Ordenar';
	@override String get registrationLogs => 'Registres d\'inscripcions ';
	@override String get registrationLogsCaption => 'Quan s\'actualitzin o s\'esborrin emojis es mostrarà un registre. Desapareixeran quan s\'actualitzin, s\'esborrin, visitis una nova pàgina o la recarreguis.';
	@override String get alertEmojisRegisterFailedDescription => 'No s\'ha pogut actualitzar o esborrar l\'emoji. Si us plau, dona una ullada al registre per més detalls.';
}

// Path: misskey.customEmojisManager_.logs_
class _TranslationsMisskeyCustomEmojisManagerLogsCaEs extends TranslationsMisskeyCustomEmojisManagerLogsEnUs {
	_TranslationsMisskeyCustomEmojisManagerLogsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get showSuccessLogSwitch => 'Mostrar el registre d\'èxit ';
	@override String get failureLogNothing => 'No hi ha registres de fallades.';
	@override String get logNothing => 'No hi ha registres.';
}

// Path: misskey.customEmojisManager_.remote_
class _TranslationsMisskeyCustomEmojisManagerRemoteCaEs extends TranslationsMisskeyCustomEmojisManagerRemoteEnUs {
	_TranslationsMisskeyCustomEmojisManagerRemoteCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get selectionRowDetail => 'Detall de la línia seleccionada';
	@override String get importSelectionRows => 'Importar les files seleccionades';
	@override String get importSelectionRangesRows => 'Importar les files de la selecció ';
	@override String get importEmojisButton => 'Importar els Emojis marcats';
	@override String get confirmImportEmojisTitle => 'Importar Emojis';
	@override String confirmImportEmojisDescription({required Object count}) => 'Importar ${count} Emojis d\'una adreça remota. Tingues cura de les llicències dels Emojis. Vols importar-los?';
}

// Path: misskey.customEmojisManager_.local_
class _TranslationsMisskeyCustomEmojisManagerLocalCaEs extends TranslationsMisskeyCustomEmojisManagerLocalEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get tabTitleList => 'Llistar els Emojis registrats';
	@override String get tabTitleRegister => 'Registre d\'Emojis';
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalListCaEs list_ = _TranslationsMisskeyCustomEmojisManagerLocalListCaEs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalRegisterCaEs register_ = _TranslationsMisskeyCustomEmojisManagerLocalRegisterCaEs._(_root);
}

// Path: misskey.remoteLookupErrors_.federationNotAllowed_
class _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedCaEs extends TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No es pot establir connexió amb aquest servidor';
	@override String get description => 'És possible que s\'hagi desactivat la comunicació amb aquest servidor o que hagi estat bloquejat.\nPosa\'t en contacte amb l\'administrador del servidor.';
}

// Path: misskey.remoteLookupErrors_.uriInvalid_
class _TranslationsMisskeyRemoteLookupErrorsUriInvalidCaEs extends TranslationsMisskeyRemoteLookupErrorsUriInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsUriInvalidCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'L\'adreça és incorrecte';
	@override String get description => 'Hi ha un problema amb l\'adreça introduïda; comprova que no hagis escrit caràcters que no es puguin fer servir.';
}

// Path: misskey.remoteLookupErrors_.requestFailed_
class _TranslationsMisskeyRemoteLookupErrorsRequestFailedCaEs extends TranslationsMisskeyRemoteLookupErrorsRequestFailedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsRequestFailedCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'La sol·licitud a fallat';
	@override String get description => 'La comunicació amb aquest servidor a fallat. És possible que l\'altre servidor no funcioni. Comprova també que no has posat una adreça no vàlida o inexistent.';
}

// Path: misskey.remoteLookupErrors_.responseInvalid_
class _TranslationsMisskeyRemoteLookupErrorsResponseInvalidCaEs extends TranslationsMisskeyRemoteLookupErrorsResponseInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsResponseInvalidCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'La resposta no és correcta ';
	@override String get description => 'Hem pogut comunicar-nos amb aquest servidor, però les dades rebudes no són correctes.';
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectCaEs extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No s\'ha trobat';
	@override String get description => 'No es pot trobar el recurs sol·licitat, si us plau comprova l\'adreça una altra vegada.';
}

// Path: misskey.captcha_.error_
class _TranslationsMisskeyCaptchaErrorCaEs extends TranslationsMisskeyCaptchaErrorEnUs {
	_TranslationsMisskeyCaptchaErrorCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCaptchaErrorRequestFailedCaEs requestFailed_ = _TranslationsMisskeyCaptchaErrorRequestFailedCaEs._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorVerificationFailedCaEs verificationFailed_ = _TranslationsMisskeyCaptchaErrorVerificationFailedCaEs._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorUnknownCaEs unknown_ = _TranslationsMisskeyCaptchaErrorUnknownCaEs._(_root);
}

// Path: misskey.serverSetupWizard_.use_
class _TranslationsMisskeyServerSetupWizardUseCaEs extends TranslationsMisskeyServerSetupWizardUseEnUs {
	_TranslationsMisskeyServerSetupWizardUseCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get single => 'Servidor per una sola persona';
	@override String get single_description => 'Fes-ho servir com el teu propi servidor dedicat';
	@override String get single_youCanCreateMultipleAccounts => 'Es poden crear diferents comptes segons siguin les teves necessitats, inclús quan es fa servir com a servidor unipersonal.';
	@override String get group => 'Servidor per a grups';
	@override String get group_description => 'Invita altres usuaris de la teva confiança i fes-ho servir amb més d\'una persona.';
	@override String get open => 'Servidor obert';
	@override String get open_description => 'Operar per donar cabuda a un nombre no determinat d\'usuaris.';
}

// Path: misskey.serverSetupWizard_.scale_
class _TranslationsMisskeyServerSetupWizardScaleCaEs extends TranslationsMisskeyServerSetupWizardScaleEnUs {
	_TranslationsMisskeyServerSetupWizardScaleCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get small => 'Menys de 100 (petita escala)';
	@override String get medium => 'Més de 100 i menys de 1000 (mida mitjana)';
	@override String get large => 'Més de 1000 persones (gran escala)';
}

// Path: misskey.serverSetupWizard_.donationRequest_
class _TranslationsMisskeyServerSetupWizardDonationRequestCaEs extends TranslationsMisskeyServerSetupWizardDonationRequestEnUs {
	_TranslationsMisskeyServerSetupWizardDonationRequestCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Misskey és un programari gratuït fet per voluntaris.';
	@override String get text2 => 'Si ho desitges, agrairíem molt la teva donació per poder seguir desenvolupant el projecte.';
	@override String get text3 => 'També hi ha privilegis especials per als donants!';
}

// Path: misskey.imageEffector_.fxs_
class _TranslationsMisskeyImageEffectorFxsCaEs extends TranslationsMisskeyImageEffectorFxsEnUs {
	_TranslationsMisskeyImageEffectorFxsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get chromaticAberration => 'Aberració cromàtica';
	@override String get glitch => 'Glitch';
	@override String get mirror => 'Mirall';
	@override String get invert => 'Inversió cromàtica ';
	@override String get grayscale => 'Monocrom ';
	@override String get colorAdjust => 'Correcció de color';
	@override String get colorClamp => 'Compressió cromàtica ';
	@override String get colorClampAdvanced => 'Compressió de cromàtica avançada ';
	@override String get distort => 'Distorsió ';
	@override String get threshold => 'Binarització';
	@override String get zoomLines => 'Saturació de línies ';
	@override String get stripe => 'Bandes';
	@override String get polkadot => 'Lunars';
	@override String get checker => 'Escacs';
	@override String get blockNoise => 'Bloqueig de soroll';
	@override String get tearing => 'Trencament d\'imatge ';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _TranslationsMisskeyInitialTutorialPostNoteVisibilityCaEs extends TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteVisibilityCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

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
class _TranslationsMisskeyInitialTutorialPostNoteCwCaEs extends TranslationsMisskeyInitialTutorialPostNoteCwEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Avís de Contingut (CW)';
	@override String get description => 'En comptes del cos de la nota es mostrarà el que s\'escrigui al camp de \'comentaris\'. Fent clic a \'Llegir més\' es mostrarà el cos.';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteCaEs exampleNote_ = _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteCaEs._(_root);
	@override String get useCases => 'Això es fa servir per seguir normes del servidor sobre certes notes o per ocultar contingut sensible O revelador.';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteCaEs extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get note => 'Oops! L\'he fet bona en obrir la tapa de Nocilla...';
}

// Path: misskey.achievements_.types_.notes1_
class _TranslationsMisskeyAchievementsTypesNotes1CaEs extends TranslationsMisskeyAchievementsTypesNotes1EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aquí, configurant el meu msky';
	@override String get description => 'Publica la teva primera Nota';
	@override String get flavor => 'Passa-t\'ho bé fent servir Miskey!';
}

// Path: misskey.achievements_.types_.notes10_
class _TranslationsMisskeyAchievementsTypesNotes10CaEs extends TranslationsMisskeyAchievementsTypesNotes10EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Algunes notes';
	@override String get description => 'Publica 10 notes';
}

// Path: misskey.achievements_.types_.notes100_
class _TranslationsMisskeyAchievementsTypesNotes100CaEs extends TranslationsMisskeyAchievementsTypesNotes100EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un piló de notes';
	@override String get description => 'Publica 100 notes';
}

// Path: misskey.achievements_.types_.notes500_
class _TranslationsMisskeyAchievementsTypesNotes500CaEs extends TranslationsMisskeyAchievementsTypesNotes500EnUs {
	_TranslationsMisskeyAchievementsTypesNotes500CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cobert de notes';
	@override String get description => 'Publica 500 notes';
}

// Path: misskey.achievements_.types_.notes1000_
class _TranslationsMisskeyAchievementsTypesNotes1000CaEs extends TranslationsMisskeyAchievementsTypesNotes1000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1000CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un piló de notes';
	@override String get description => '1 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes5000_
class _TranslationsMisskeyAchievementsTypesNotes5000CaEs extends TranslationsMisskeyAchievementsTypesNotes5000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes5000CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desbordament de notes';
	@override String get description => '5 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes10000_
class _TranslationsMisskeyAchievementsTypesNotes10000CaEs extends TranslationsMisskeyAchievementsTypesNotes10000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10000CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supernota';
	@override String get description => '10 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes20000_
class _TranslationsMisskeyAchievementsTypesNotes20000CaEs extends TranslationsMisskeyAchievementsTypesNotes20000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes20000CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Necessito... Més... Notes!';
	@override String get description => '20 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes30000_
class _TranslationsMisskeyAchievementsTypesNotes30000CaEs extends TranslationsMisskeyAchievementsTypesNotes30000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes30000CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notes notes notes!';
	@override String get description => '30 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes40000_
class _TranslationsMisskeyAchievementsTypesNotes40000CaEs extends TranslationsMisskeyAchievementsTypesNotes40000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes40000CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fàbrica de notes';
	@override String get description => '40 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes50000_
class _TranslationsMisskeyAchievementsTypesNotes50000CaEs extends TranslationsMisskeyAchievementsTypesNotes50000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes50000CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Planeta de notes';
	@override String get description => '50 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes60000_
class _TranslationsMisskeyAchievementsTypesNotes60000CaEs extends TranslationsMisskeyAchievementsTypesNotes60000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes60000CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quàsar de notes';
	@override String get description => '60 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes70000_
class _TranslationsMisskeyAchievementsTypesNotes70000CaEs extends TranslationsMisskeyAchievementsTypesNotes70000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes70000CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Forat negre de notes';
	@override String get description => '70 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes80000_
class _TranslationsMisskeyAchievementsTypesNotes80000CaEs extends TranslationsMisskeyAchievementsTypesNotes80000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes80000CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Galàxia de notes';
	@override String get description => '80 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes90000_
class _TranslationsMisskeyAchievementsTypesNotes90000CaEs extends TranslationsMisskeyAchievementsTypesNotes90000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes90000CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Univers de notes';
	@override String get description => '90 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes100000_
class _TranslationsMisskeyAchievementsTypesNotes100000CaEs extends TranslationsMisskeyAchievementsTypesNotes100000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100000CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => '100 000 notes publicades';
	@override String get flavor => 'Segur que tens moltes coses a dir?';
}

// Path: misskey.achievements_.types_.login3_
class _TranslationsMisskeyAchievementsTypesLogin3CaEs extends TranslationsMisskeyAchievementsTypesLogin3EnUs {
	_TranslationsMisskeyAchievementsTypesLogin3CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiant I';
	@override String get description => 'Vas iniciar sessió fa tres dies';
	@override String get flavor => 'Des d\'avui diguem Misskist';
}

// Path: misskey.achievements_.types_.login7_
class _TranslationsMisskeyAchievementsTypesLogin7CaEs extends TranslationsMisskeyAchievementsTypesLogin7EnUs {
	_TranslationsMisskeyAchievementsTypesLogin7CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiant II';
	@override String get description => 'Vas iniciar sessió fa set dies';
	@override String get flavor => 'Ja saps com va funcionant tot?';
}

// Path: misskey.achievements_.types_.login15_
class _TranslationsMisskeyAchievementsTypesLogin15CaEs extends TranslationsMisskeyAchievementsTypesLogin15EnUs {
	_TranslationsMisskeyAchievementsTypesLogin15CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiant III';
	@override String get description => 'Vas iniciar sessió fa quinze dies';
}

// Path: misskey.achievements_.types_.login30_
class _TranslationsMisskeyAchievementsTypesLogin30CaEs extends TranslationsMisskeyAchievementsTypesLogin30EnUs {
	_TranslationsMisskeyAchievementsTypesLogin30CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist I';
	@override String get description => 'Vas iniciar sessió fa trenta dies';
}

// Path: misskey.achievements_.types_.login60_
class _TranslationsMisskeyAchievementsTypesLogin60CaEs extends TranslationsMisskeyAchievementsTypesLogin60EnUs {
	_TranslationsMisskeyAchievementsTypesLogin60CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist II';
	@override String get description => 'Vas iniciar sessió fa seixanta dies';
}

// Path: misskey.achievements_.types_.login100_
class _TranslationsMisskeyAchievementsTypesLogin100CaEs extends TranslationsMisskeyAchievementsTypesLogin100EnUs {
	_TranslationsMisskeyAchievementsTypesLogin100CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist III';
	@override String get description => 'Vas iniciar sessió fa cent dies';
	@override String get flavor => 'Misskist violent';
}

// Path: misskey.achievements_.types_.login200_
class _TranslationsMisskeyAchievementsTypesLogin200CaEs extends TranslationsMisskeyAchievementsTypesLogin200EnUs {
	_TranslationsMisskeyAchievementsTypesLogin200CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regular I';
	@override String get description => 'Vas iniciar sessió fa dos-cents dies';
}

// Path: misskey.achievements_.types_.login300_
class _TranslationsMisskeyAchievementsTypesLogin300CaEs extends TranslationsMisskeyAchievementsTypesLogin300EnUs {
	_TranslationsMisskeyAchievementsTypesLogin300CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regular II';
	@override String get description => 'Vas iniciar sessió fa tres-cents dies';
}

// Path: misskey.achievements_.types_.login400_
class _TranslationsMisskeyAchievementsTypesLogin400CaEs extends TranslationsMisskeyAchievementsTypesLogin400EnUs {
	_TranslationsMisskeyAchievementsTypesLogin400CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regular III';
	@override String get description => 'Vas iniciar sessió fa quatre-cents dies';
}

// Path: misskey.achievements_.types_.login500_
class _TranslationsMisskeyAchievementsTypesLogin500CaEs extends TranslationsMisskeyAchievementsTypesLogin500EnUs {
	_TranslationsMisskeyAchievementsTypesLogin500CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Expert I';
	@override String get description => 'Vas iniciar sessió fa cinc-cents dies';
	@override String get flavor => 'Amics, he dit massa vegades que soc un amant de les notes';
}

// Path: misskey.achievements_.types_.login600_
class _TranslationsMisskeyAchievementsTypesLogin600CaEs extends TranslationsMisskeyAchievementsTypesLogin600EnUs {
	_TranslationsMisskeyAchievementsTypesLogin600CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Expert II';
	@override String get description => 'Vas iniciar sessió fa sis-cents dies';
}

// Path: misskey.achievements_.types_.login700_
class _TranslationsMisskeyAchievementsTypesLogin700CaEs extends TranslationsMisskeyAchievementsTypesLogin700EnUs {
	_TranslationsMisskeyAchievementsTypesLogin700CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Expert III';
	@override String get description => 'Vas iniciar sessió fa set-cents dies';
}

// Path: misskey.achievements_.types_.login800_
class _TranslationsMisskeyAchievementsTypesLogin800CaEs extends TranslationsMisskeyAchievementsTypesLogin800EnUs {
	_TranslationsMisskeyAchievementsTypesLogin800CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mestre de les Notes I';
	@override String get description => 'Vas iniciar sessió fa vuit-cents dies ';
}

// Path: misskey.achievements_.types_.login900_
class _TranslationsMisskeyAchievementsTypesLogin900CaEs extends TranslationsMisskeyAchievementsTypesLogin900EnUs {
	_TranslationsMisskeyAchievementsTypesLogin900CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mestre de les Notes II';
	@override String get description => 'Vas iniciar sessió fa nou-cents dies';
}

// Path: misskey.achievements_.types_.login1000_
class _TranslationsMisskeyAchievementsTypesLogin1000CaEs extends TranslationsMisskeyAchievementsTypesLogin1000EnUs {
	_TranslationsMisskeyAchievementsTypesLogin1000CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mestre de les Notes III';
	@override String get description => 'Vas iniciar sessió fa mil dies';
	@override String get flavor => 'Gràcies per fer servir MissKey!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _TranslationsMisskeyAchievementsTypesNoteClipped1CaEs extends TranslationsMisskeyAchievementsTypesNoteClipped1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteClipped1CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'He de retallar-te!';
	@override String get description => 'Retalla la teva primera nota';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _TranslationsMisskeyAchievementsTypesNoteFavorited1CaEs extends TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteFavorited1CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quan miro les estrelles';
	@override String get description => 'La primera vegada que vaig registrar el meu favorit';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _TranslationsMisskeyAchievementsTypesMyNoteFavorited1CaEs extends TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesMyNoteFavorited1CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vull una estrella';
	@override String get description => 'La meva nota va ser registrada com favorita per una de les altres persones';
}

// Path: misskey.achievements_.types_.profileFilled_
class _TranslationsMisskeyAchievementsTypesProfileFilledCaEs extends TranslationsMisskeyAchievementsTypesProfileFilledEnUs {
	_TranslationsMisskeyAchievementsTypesProfileFilledCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estic a punt';
	@override String get description => 'Vaig fer la configuració de perfil';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _TranslationsMisskeyAchievementsTypesMarkedAsCatCaEs extends TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_TranslationsMisskeyAchievementsTypesMarkedAsCatCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Soc un gat';
	@override String get description => 'He establert el meu compte com si fos un Gat';
	@override String get flavor => 'Encara no tinc nom';
}

// Path: misskey.achievements_.types_.following1_
class _TranslationsMisskeyAchievementsTypesFollowing1CaEs extends TranslationsMisskeyAchievementsTypesFollowing1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing1CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'És el meu primer seguiment';
	@override String get description => 'És la primera vegada que et segueixo';
}

// Path: misskey.achievements_.types_.following10_
class _TranslationsMisskeyAchievementsTypesFollowing10CaEs extends TranslationsMisskeyAchievementsTypesFollowing10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing10CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Segueix-me... Segueix-me...';
	@override String get description => 'Seguir 10 usuaris';
}

// Path: misskey.achievements_.types_.following50_
class _TranslationsMisskeyAchievementsTypesFollowing50CaEs extends TranslationsMisskeyAchievementsTypesFollowing50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing50CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Molts amics';
	@override String get description => 'Seguir 50 comptes';
}

// Path: misskey.achievements_.types_.following100_
class _TranslationsMisskeyAchievementsTypesFollowing100CaEs extends TranslationsMisskeyAchievementsTypesFollowing100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing100CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => '100 amics';
	@override String get description => 'Segueixes 100 comptes';
}

// Path: misskey.achievements_.types_.following300_
class _TranslationsMisskeyAchievementsTypesFollowing300CaEs extends TranslationsMisskeyAchievementsTypesFollowing300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing300CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobrecàrrega d\'amics';
	@override String get description => 'Segueixes 300 comptes';
}

// Path: misskey.achievements_.types_.followers1_
class _TranslationsMisskeyAchievementsTypesFollowers1CaEs extends TranslationsMisskeyAchievementsTypesFollowers1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Primer seguidor';
	@override String get description => '1 seguidor guanyat';
}

// Path: misskey.achievements_.types_.followers10_
class _TranslationsMisskeyAchievementsTypesFollowers10CaEs extends TranslationsMisskeyAchievementsTypesFollowers10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers10CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Segueix-me!';
	@override String get description => '10 seguidors guanyats';
}

// Path: misskey.achievements_.types_.followers50_
class _TranslationsMisskeyAchievementsTypesFollowers50CaEs extends TranslationsMisskeyAchievementsTypesFollowers50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers50CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Venen en manada';
	@override String get description => '50 seguidors guanyats';
}

// Path: misskey.achievements_.types_.followers100_
class _TranslationsMisskeyAchievementsTypesFollowers100CaEs extends TranslationsMisskeyAchievementsTypesFollowers100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers100CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Popular';
	@override String get description => '100 seguidors guanyats';
}

// Path: misskey.achievements_.types_.followers300_
class _TranslationsMisskeyAchievementsTypesFollowers300CaEs extends TranslationsMisskeyAchievementsTypesFollowers300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers300CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Si us plau, d\'un en un!';
	@override String get description => '300 seguidors guanyats';
}

// Path: misskey.achievements_.types_.followers500_
class _TranslationsMisskeyAchievementsTypesFollowers500CaEs extends TranslationsMisskeyAchievementsTypesFollowers500EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers500CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Torre de ràdio';
	@override String get description => '500 seguidors guanyats';
}

// Path: misskey.achievements_.types_.followers1000_
class _TranslationsMisskeyAchievementsTypesFollowers1000CaEs extends TranslationsMisskeyAchievementsTypesFollowers1000EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1000CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Influenciador';
	@override String get description => '1 000 seguidors guanyats';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _TranslationsMisskeyAchievementsTypesCollectAchievements30CaEs extends TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_TranslationsMisskeyAchievementsTypesCollectAchievements30CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Col·leccionista d\'èxits ';
	@override String get description => 'Desbloqueja 30 assoliments';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _TranslationsMisskeyAchievementsTypesViewAchievements3minCaEs extends TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_TranslationsMisskeyAchievementsTypesViewAchievements3minCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'M\'agraden els èxits ';
	@override String get description => 'Mira la teva llista d\'assoliments durant més de 3 minuts';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _TranslationsMisskeyAchievementsTypesILoveMisskeyCaEs extends TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_TranslationsMisskeyAchievementsTypesILoveMisskeyCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimo Misskey';
	@override String get description => 'Publica "I ❤ #Misskey"';
	@override String get flavor => 'L\'equip de desenvolupament de Misskey agraeix el vostre suport!';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _TranslationsMisskeyAchievementsTypesFoundTreasureCaEs extends TranslationsMisskeyAchievementsTypesFoundTreasureEnUs {
	_TranslationsMisskeyAchievementsTypesFoundTreasureCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'A la Recerca del Tresor';
	@override String get description => 'Has trobat el tresor amagat';
}

// Path: misskey.achievements_.types_.client30min_
class _TranslationsMisskeyAchievementsTypesClient30minCaEs extends TranslationsMisskeyAchievementsTypesClient30minEnUs {
	_TranslationsMisskeyAchievementsTypesClient30minCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Parem una estona';
	@override String get description => 'Mantingues obert Misskey per 30 minuts';
}

// Path: misskey.achievements_.types_.client60min_
class _TranslationsMisskeyAchievementsTypesClient60minCaEs extends TranslationsMisskeyAchievementsTypesClient60minEnUs {
	_TranslationsMisskeyAchievementsTypesClient60minCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'A totes amb Misskey';
	@override String get description => 'Mantingues Misskey obert per 60 minuts';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minCaEs extends TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No et preocupis';
	@override String get description => 'Esborra una nota al minut de publicar-la';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _TranslationsMisskeyAchievementsTypesPostedAtLateNightCaEs extends TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAtLateNightCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nocturn';
	@override String get description => 'Publica una nota a altes hores de la nit ';
	@override String get flavor => 'És hora d\'anar a dormir.';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _TranslationsMisskeyAchievementsTypesPostedAt0min0secCaEs extends TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAt0min0secCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rellotge xerraire';
	@override String get description => 'Publica una nota a les 0:00';
	@override String get flavor => 'Tic tac, tic tac, tic tac, DING!';
}

// Path: misskey.achievements_.types_.selfQuote_
class _TranslationsMisskeyAchievementsTypesSelfQuoteCaEs extends TranslationsMisskeyAchievementsTypesSelfQuoteEnUs {
	_TranslationsMisskeyAchievementsTypesSelfQuoteCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Autoreferència ';
	@override String get description => 'Cita una nota teva';
}

// Path: misskey.achievements_.types_.htl20npm_
class _TranslationsMisskeyAchievementsTypesHtl20npmCaEs extends TranslationsMisskeyAchievementsTypesHtl20npmEnUs {
	_TranslationsMisskeyAchievementsTypesHtl20npmCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Línia de temps fluida';
	@override String get description => 'La teva línia de temps va a més de 20npm (notes per minut)';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _TranslationsMisskeyAchievementsTypesViewInstanceChartCaEs extends TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_TranslationsMisskeyAchievementsTypesViewInstanceChartCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analista ';
	@override String get description => 'Mira els gràfics de la teva instància ';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadCaEs extends TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hola, món!';
	@override String get description => 'Escriu "hola, món" al bloc de notes';
}

// Path: misskey.achievements_.types_.open3windows_
class _TranslationsMisskeyAchievementsTypesOpen3windowsCaEs extends TranslationsMisskeyAchievementsTypesOpen3windowsEnUs {
	_TranslationsMisskeyAchievementsTypesOpen3windowsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Multi finestres';
	@override String get description => 'I va obrir més de tres finestres';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceCaEs extends TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Consulteu la secció de bucle';
	@override String get description => 'Intenta crear carpetes recursives al Disc';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _TranslationsMisskeyAchievementsTypesReactWithoutReadCaEs extends TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_TranslationsMisskeyAchievementsTypesReactWithoutReadCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'De veritat has llegit això?';
	@override String get description => 'Reaccions a una nota de més de 100 caràcters publicada fa menys de 3 segons ';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _TranslationsMisskeyAchievementsTypesClickedClickHereCaEs extends TranslationsMisskeyAchievementsTypesClickedClickHereEnUs {
	_TranslationsMisskeyAchievementsTypesClickedClickHereCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fer clic';
	@override String get description => 'Has fet clic aquí ';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _TranslationsMisskeyAchievementsTypesJustPlainLuckyCaEs extends TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_TranslationsMisskeyAchievementsTypesJustPlainLuckyCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ha sigut sort';
	@override String get description => 'Oportunitat de guanyar-lo amb una probabilitat d\'un 0.005% cada 10 segons';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _TranslationsMisskeyAchievementsTypesSetNameToSyuiloCaEs extends TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_TranslationsMisskeyAchievementsTypesSetNameToSyuiloCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'soc millor';
	@override String get description => 'Posat "siuylo" com a nom';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1CaEs extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Primer aniversari';
	@override String get description => 'Ja ha passat un any d\'ençà que vas crear el teu compte';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2CaEs extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Segon aniversari';
	@override String get description => 'Ja han passat dos anys d\'ençà que vas crear el teu compte';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3CaEs extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3CaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tres anys';
	@override String get description => 'Ja han passat tres anys d\'ençà que vas crear el teu compte';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayCaEs extends TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Felicitats!';
	@override String get description => 'T\'has identificat el dia del teu aniversari';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayCaEs extends TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bon any nou!';
	@override String get description => 'T\'has identificat el primer dia de l\'any ';
	@override String get flavor => 'A per un altre any memorable a la teva instància   ';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _TranslationsMisskeyAchievementsTypesCookieClickedCaEs extends TranslationsMisskeyAchievementsTypesCookieClickedEnUs {
	_TranslationsMisskeyAchievementsTypesCookieClickedCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un joc en què fas clic a les galetes';
	@override String get description => 'Pica galetes';
	@override String get flavor => 'Espera, ets al lloc web correcte?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _TranslationsMisskeyAchievementsTypesBrainDiverCaEs extends TranslationsMisskeyAchievementsTypesBrainDiverEnUs {
	_TranslationsMisskeyAchievementsTypesBrainDiverCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Busseja Ments';
	@override String get description => 'Publica un enllaç al Busseja Ments';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonCaEs extends TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobrecàrrega de proves';
	@override String get description => 'Envia moltes notificacions de prova en un període de temps molt curt';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _TranslationsMisskeyAchievementsTypesTutorialCompletedCaEs extends TranslationsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_TranslationsMisskeyAchievementsTypesTutorialCompletedCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Diploma del Curs Elemental de Misskey';
	@override String get description => 'Has completat el tutorial';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadCaEs extends TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => 'L\'objecte més gran del joc de la bombolla ';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadCaEs extends TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Doble 🤯';
	@override String get description => 'Dos dels objectes més grans del joc de la bombolla al mateix temps';
	@override String get flavor => 'Pots emplenar una carmanyola com aquesta 🤯🤯 una mica';
}

// Path: misskey.pages_.blocks.note_
class _TranslationsMisskeyPagesBlocksNoteCaEs extends TranslationsMisskeyPagesBlocksNoteEnUs {
	_TranslationsMisskeyPagesBlocksNoteCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get id => 'ID de la publicació';
	@override String get idDescription => 'Alternativament pots enganxar l\'adreça URL de la nota aquí.';
	@override String get detailed => 'Mostra els detalls';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaEs extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Correu electrònic';
	@override String get webhook => 'Webhook';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsCaEs captions_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsCaEs._(_root);
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsCaEs extends TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paràmetres no vàlids ';
	@override String get description => 'No hi ha suficient informació per carregar les dades del lloc extern. Confirma l\'URL que hi ha escrita.';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedCaEs extends TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'El recurs extern no està suportat.';
	@override String get description => 'Aquesta mena de recurs no està suportat. Contacta amb l\'administrador.';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchCaEs extends TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ha fallat l\'obtenció de dades';
	@override String get fetchErrorDescription => 'Ha aparegut un error comunicant-se amb el lloc extern. Si després d\'intentar-ho un altre cop no es resol, contacta amb l\'administrador.';
	@override String get parseErrorDescription => 'Ha aparegut un error processant les dades carregades del lloc extern. Contacta amb l\'administrador.';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedCaEs extends TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ha fallat la verificació de les dades';
	@override String get description => 'Ha aparegut un error verificant les dades obtingudes. Com a mesura de seguretat la instal·lació no pot continuar. Contacta amb l\'administrador.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedCaEs extends TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Error d\'AiScript';
	@override String get description => 'Les dades sol·licitades s\'han obtingut correctament, però hem trobat un error durant el processament d\'AiScript. Contacta amb l\'autor de l\'afegit. Detalls de l\'error es pot veure a la consola JavaScript.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedCaEs extends TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'La instal·lació de l\'afegit a fallat';
	@override String get description => 'Ha aparegut un error durant la instal·lació de l\'afegit. Intenta-ho una altra vegada. El detall de l\'error es pot veure a la consola JavaScript.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedCaEs extends TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ha fallat el processament del tema';
	@override String get description => 'Les dades sol·licitades s\'han obtingut correctament, però hem trobat un error durant el processament del tema. Contacta amb l\'autor de l\'afegit. Detalls de l\'error es pot veure a la consola JavaScript.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedCaEs extends TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'La instal·lació del tema a fallat';
	@override String get description => 'Ha aparegut un error durant la instal·lació del tema. Intenta-ho una altra vegada. El detall de l\'error es pot veure a la consola JavaScript.';
}

// Path: misskey.customEmojisManager_.local_.list_
class _TranslationsMisskeyCustomEmojisManagerLocalListCaEs extends TranslationsMisskeyCustomEmojisManagerLocalListEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalListCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get emojisNothing => 'No hi ha Emojis registrats';
	@override String get markAsDeleteTargetRows => 'Files seleccionades que s\'han d\'esborrar ';
	@override String get markAsDeleteTargetRanges => 'Selecció de files per la seva eliminació ';
	@override String get alertUpdateEmojisNothingDescription => 'No hi ha Emojis actualitzats.';
	@override String get alertDeleteEmojisNothingDescription => 'No hi ha Emoji per esborrar.';
	@override String get confirmMovePage => 'Vols canviar de pàgina?';
	@override String get confirmChangeView => 'Vols canviar la pantalla?';
	@override String confirmUpdateEmojisDescription({required Object count}) => 'Actualitzar ${count} Emojis. Vols executar-ho?';
	@override String confirmDeleteEmojisDescription({required Object count}) => 'Esborrar ${count} Emojis marcats. Vols continuar?';
	@override String get confirmResetDescription => 'Es restabliran tots els canvis fets fins ara.';
	@override String get confirmMovePageDesciption => 'S\'han fet canvis als Emojis d\'aquesta pàgina. Si continues navegant sense guardar els canvis, es perdran tots els canvis fets en aquesta pàgina.';
	@override String get dialogSelectRoleTitle => 'Buscar Emojis per rol';
}

// Path: misskey.customEmojisManager_.local_.register_
class _TranslationsMisskeyCustomEmojisManagerLocalRegisterCaEs extends TranslationsMisskeyCustomEmojisManagerLocalRegisterEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalRegisterCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get uploadSettingTitle => 'Actualitza la configuració ';
	@override String get uploadSettingDescription => 'En aquesta pantalla pots configurar el que s\'ha de fer quan es puja un Emoji.';
	@override String get directoryToCategoryLabel => 'Escriu el nom del directori al camp de "categoria"';
	@override String get directoryToCategoryCaption => 'Quan arrossegues un directori, escriu el nom del directori al camp categoria.';
	@override String confirmRegisterEmojisDescription({required Object count}) => 'Registrar els Emojis de la llista com a nous Emojis personalitzats. Vols continuar? (Per evitar una sobrecàrrega només ${count} Emojis es poden registrar d\'una sola vegada)';
	@override String get confirmClearEmojisDescription => 'Descartar els canvis i esborrar els Emojis de la llista. Vols continuar?';
	@override String confirmUploadEmojisDescription({required Object count}) => 'Pujar els ${count} fitxers que has arrossegat al disc. Vols continuar?';
}

// Path: misskey.captcha_.error_.requestFailed_
class _TranslationsMisskeyCaptchaErrorRequestFailedCaEs extends TranslationsMisskeyCaptchaErrorRequestFailedEnUs {
	_TranslationsMisskeyCaptchaErrorRequestFailedCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ha fallat la sol·licitud del CAPTCHA';
	@override String get text => 'Si us plau, torna a intentar-ho d\'aquí una estona o comprova els ajustos de nou.';
}

// Path: misskey.captcha_.error_.verificationFailed_
class _TranslationsMisskeyCaptchaErrorVerificationFailedCaEs extends TranslationsMisskeyCaptchaErrorVerificationFailedEnUs {
	_TranslationsMisskeyCaptchaErrorVerificationFailedCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ha fallat la validació CAPTCHA';
	@override String get text => 'Comprova que els ajustos són els correctes.';
}

// Path: misskey.captcha_.error_.unknown_
class _TranslationsMisskeyCaptchaErrorUnknownCaEs extends TranslationsMisskeyCaptchaErrorUnknownEnUs {
	_TranslationsMisskeyCaptchaErrorUnknownCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Error CAPTCHA';
	@override String get text => 'S\'ha produït un error inesperat.';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteCaEs extends TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get cw => 'Això et farà venir gana!';
	@override String get note => 'Acabo de menjar-me un donut de xocolata 🍩😋';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_.captions_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsCaEs extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsCaEs._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Enviar un correu electrònic a tots els moderadors quan es rep un informe de moderació ';
	@override String get webhook => 'Enviar una notificació al SystemWebhook quan es rebi o es resolgui un informe de moderació ';
}
