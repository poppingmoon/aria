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
class TranslationsCaEs extends Translations with BaseTranslations<AppLocale, Translations> {
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
	@override late final _Translations$aria$ca_ES aria = _Translations$aria$ca_ES._(_root);
	@override late final _Translations$misskey$ca_ES misskey = _Translations$misskey$ca_ES._(_root);
}

// Path: aria
class _Translations$aria$ca_ES extends Translations$aria$en_US {
	_Translations$aria$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$ca_ES extends Translations$misskey$en_US {
	_Translations$misskey$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
	@override String cancelFollowRequestConfirm({required Object name}) => 'Vols cancel·lar la teva sol·licitud de seguiment a ${name}?';
	@override String rejectFollowRequestConfirm({required Object name}) => 'Vols rebutjar la sol·licitud de seguiment de ${name}?';
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
	@override String get preprocessing => 'Preparant';
	@override String get preview => 'Vista prèvia';
	@override String get default_ => 'Per defecte';
	@override String defaultValueIs({required Object value}) => 'Per defecte: ${value}';
	@override String get noCustomEmojis => 'No hi ha emojis personalitzats';
	@override String get noJobs => 'No hi ha feines';
	@override String get federating => 'Federant';
	@override String get blocked => 'Bloquejat';
	@override String get suspended => 'Anul·lar subscripció ';
	@override String get all => 'Tot';
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
	@override String get readAllChatMessages => 'Marcar tots els missatges com a llegits';
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
	@override String get unselectFolder => 'Deixa de seleccionar la carpeta';
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
	@override String get dropHereToUpload => 'Arrossega els arxius fins aquí per pujar-los al servidor';
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
	@override String get showMediaListByGridInWideArea => 'Mostra la llista de medis en vista quadrícula quan l\'amplada de la pantalla ho permeti';
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
	@override String get describeFile => 'Afegir text alternatiu';
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
	@override String get removeFromAntenna => 'Elimina d\'aquesta Antena';
	@override String removeNoteFromAntennaConfirm({required Object name}) => 'Vols eliminar aquesta nota de \'${name}\'?';
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
	@override String get disableShowingAnimatedImages_caption => 'Si les imatges animades no es reprodueixen, independentment d\'aquesta configuració, és possible que la configuració d\'accessibilitat del navegador i el sistema operatiu, els modes d\'estalvi d\'energia i similars estiguin interferint.';
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
	@override String get pleaseAllowPushNotification => 'Si us plau, permet les notificacions del navegador';
	@override String get browserPushNotificationDisabled => 'No s\'ha pogut obtenir permisos per les notificacions';
	@override String browserPushNotificationDisabledDescription({required Object serverName}) => 'No tens permisos per enviar notificacions des de ${serverName}. Activa les notificacions a la configuració del teu navegador i tornar-ho a intentar.';
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
	@override String get custom => 'Personalitzat';
	@override String get achievements => 'Assoliments';
	@override String get gotInvalidResponseError => 'Resposta del servidor invàlida ';
	@override String get gotInvalidResponseErrorDescription => 'No es pot contactar amb el servidor o potser es troba fora de línia per manteniment. Provar-ho de nou més tard.';
	@override String get thisPostMayBeAnnoying => 'Aquesta nota pot ser molesta per algú.';
	@override String get thisPostMayBeAnnoyingHome => 'Publicar a la línia de temps d\'Inici';
	@override String get thisPostMayBeAnnoyingCancel => 'Cancel·lar ';
	@override String get thisPostMayBeAnnoyingIgnore => 'Publicar de totes maneres';
	@override String get collapseRenotes => 'Col·lapsar els impulsos que ja has vist';
	@override String get collapseRenotesDescription => 'Col·lapse les notes a les quals ja has reaccionat o que ja has impulsat.';
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
	@override String get usersSearchNotAvailable => 'La cerca d\'usuaris no està disponible.';
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
	@override String get showRoleBadgesOfRemoteUsers => 'Mostrar insígnies de rols d\'instàncies remotes ';
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
	@override String get notifyUsers => 'Usuaris que han activat les notificacions de publicacions';
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
	@override String get emailVerificationFailedError => 'Hem tingut un problema en verificar la teva adreça de correu electrònic. És probable que l\'enllaç estigui caducat.';
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
	@override String get draftsAndScheduledNotes => 'Esborranys i publicacions programades';
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
	@override String get directMessage => 'Xateja amb aquest usuari';
	@override String get directMessage_short => 'Missatge';
	@override String get compress => 'Comprimir ';
	@override String get right => 'Dreta';
	@override String get bottom => 'A baix ';
	@override String get top => 'A dalt ';
	@override String get embed => 'Incrustar';
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
	@override String get defaultCompressionLevel => 'Nivell de compressió predeterminat';
	@override String get defaultCompressionLevel_description => 'Si el redueixes augmentaràs la qualitat de la imatge, però la mida de l\'arxiu serà més gran. <br>Si augmentes l\'opció redueixes la mida de l\'arxiu i la qualitat de la imatge és pitjor.';
	@override String get inMinutes => 'Minut(s)';
	@override String get inDays => 'Di(a)(es)';
	@override String get safeModeEnabled => 'Mode segur activat';
	@override String get pluginsAreDisabledBecauseSafeMode => 'Les extensions no estan activades perquè el mode segur està activat.';
	@override String get customCssIsDisabledBecauseSafeMode => 'El CSS personalitzat no s\'aplica perquè el mode segur es troba activat.';
	@override String get themeIsDefaultBecauseSafeMode => 'El tema predeterminat es farà servir mentre el mode segur estigui activat. Una vegada es desactivi el mode segur es restablirà el tema escollit.';
	@override String get thankYouForTestingBeta => 'Gràcies per ajudar-nos a provar la versió beta!';
	@override String get createUserSpecifiedNote => 'Crear notes especificades per l\'usuari ';
	@override String get schedulePost => 'Programar una nota';
	@override String scheduleToPostOnX({required Object x}) => 'Programar una nota per ${x}';
	@override String scheduledToPostOnX({required Object x}) => 'S\'ha programat la nota per ${x}';
	@override String get schedule => 'Programa';
	@override String get scheduled => 'Programat';
	@override String get widgets => 'Ginys';
	@override String get deviceInfo => 'Informació del dispositiu';
	@override String get deviceInfoDescription => 'En fer consultes tècniques influir la següent informació pot ajudar a resoldre\'l més ràpidament.';
	@override String get youAreAdmin => 'Ets l\'administrador ';
	@override String get frame => 'Marc';
	@override String get presets => 'Predefinit';
	@override String get zeroPadding => 'Sense omplir';
	@override String get nothingToConfigure => 'No hi ha res a configurar';
	@override String get viewRenotedChannel => 'Mirar el canal d\'impulsos ';
	@override String get previewingTheme => 'Previsualització del tema';
	@override String get previewingThemeRestore => 'Restaurar';
	@override String get accessToken => 'Token d\'accés';
	@override String get chooseEmojiPalette => 'Selecciona el calaix d\'emojis';
	@override String get addToEmojiPalette => 'Afegeix al calaix d\'emojis';
	@override String get emojiPaletteAlreadyAddedConfirm => 'Aquest emoji ja està inclòs en aquest calaix d\'emojis. Vols afegir-lo de nou?';
	@override String get append => 'Afegeix al final';
	@override String get prepend => 'Afegeix al principi';
	@override late final _Translations$misskey$imageEditing_$ca_ES imageEditing_ = _Translations$misskey$imageEditing_$ca_ES._(_root);
	@override late final _Translations$misskey$imageFrameEditor_$ca_ES imageFrameEditor_ = _Translations$misskey$imageFrameEditor_$ca_ES._(_root);
	@override late final _Translations$misskey$compression_$ca_ES compression_ = _Translations$misskey$compression_$ca_ES._(_root);
	@override late final _Translations$misskey$order_$ca_ES order_ = _Translations$misskey$order_$ca_ES._(_root);
	@override late final _Translations$misskey$chat_$ca_ES chat_ = _Translations$misskey$chat_$ca_ES._(_root);
	@override late final _Translations$misskey$emojiPalette_$ca_ES emojiPalette_ = _Translations$misskey$emojiPalette_$ca_ES._(_root);
	@override late final _Translations$misskey$settings_$ca_ES settings_ = _Translations$misskey$settings_$ca_ES._(_root);
	@override late final _Translations$misskey$preferencesProfile_$ca_ES preferencesProfile_ = _Translations$misskey$preferencesProfile_$ca_ES._(_root);
	@override late final _Translations$misskey$preferencesBackup_$ca_ES preferencesBackup_ = _Translations$misskey$preferencesBackup_$ca_ES._(_root);
	@override late final _Translations$misskey$accountSettings_$ca_ES accountSettings_ = _Translations$misskey$accountSettings_$ca_ES._(_root);
	@override late final _Translations$misskey$abuseUserReport_$ca_ES abuseUserReport_ = _Translations$misskey$abuseUserReport_$ca_ES._(_root);
	@override late final _Translations$misskey$delivery_$ca_ES delivery_ = _Translations$misskey$delivery_$ca_ES._(_root);
	@override late final _Translations$misskey$bubbleGame_$ca_ES bubbleGame_ = _Translations$misskey$bubbleGame_$ca_ES._(_root);
	@override late final _Translations$misskey$announcement_$ca_ES announcement_ = _Translations$misskey$announcement_$ca_ES._(_root);
	@override late final _Translations$misskey$initialAccountSetting_$ca_ES initialAccountSetting_ = _Translations$misskey$initialAccountSetting_$ca_ES._(_root);
	@override late final _Translations$misskey$initialTutorial_$ca_ES initialTutorial_ = _Translations$misskey$initialTutorial_$ca_ES._(_root);
	@override late final _Translations$misskey$timelineDescription_$ca_ES timelineDescription_ = _Translations$misskey$timelineDescription_$ca_ES._(_root);
	@override late final _Translations$misskey$serverRules_$ca_ES serverRules_ = _Translations$misskey$serverRules_$ca_ES._(_root);
	@override late final _Translations$misskey$serverSettings_$ca_ES serverSettings_ = _Translations$misskey$serverSettings_$ca_ES._(_root);
	@override late final _Translations$misskey$accountMigration_$ca_ES accountMigration_ = _Translations$misskey$accountMigration_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$ca_ES achievements_ = _Translations$misskey$achievements_$ca_ES._(_root);
	@override late final _Translations$misskey$role_$ca_ES role_ = _Translations$misskey$role_$ca_ES._(_root);
	@override late final _Translations$misskey$sensitiveMediaDetection_$ca_ES sensitiveMediaDetection_ = _Translations$misskey$sensitiveMediaDetection_$ca_ES._(_root);
	@override late final _Translations$misskey$emailUnavailable_$ca_ES emailUnavailable_ = _Translations$misskey$emailUnavailable_$ca_ES._(_root);
	@override late final _Translations$misskey$ffVisibility_$ca_ES ffVisibility_ = _Translations$misskey$ffVisibility_$ca_ES._(_root);
	@override late final _Translations$misskey$signup_$ca_ES signup_ = _Translations$misskey$signup_$ca_ES._(_root);
	@override late final _Translations$misskey$accountDelete_$ca_ES accountDelete_ = _Translations$misskey$accountDelete_$ca_ES._(_root);
	@override late final _Translations$misskey$ad_$ca_ES ad_ = _Translations$misskey$ad_$ca_ES._(_root);
	@override late final _Translations$misskey$forgotPassword_$ca_ES forgotPassword_ = _Translations$misskey$forgotPassword_$ca_ES._(_root);
	@override late final _Translations$misskey$gallery_$ca_ES gallery_ = _Translations$misskey$gallery_$ca_ES._(_root);
	@override late final _Translations$misskey$email_$ca_ES email_ = _Translations$misskey$email_$ca_ES._(_root);
	@override late final _Translations$misskey$plugin_$ca_ES plugin_ = _Translations$misskey$plugin_$ca_ES._(_root);
	@override late final _Translations$misskey$preferencesBackups_$ca_ES preferencesBackups_ = _Translations$misskey$preferencesBackups_$ca_ES._(_root);
	@override late final _Translations$misskey$registry_$ca_ES registry_ = _Translations$misskey$registry_$ca_ES._(_root);
	@override late final _Translations$misskey$aboutMisskey_$ca_ES aboutMisskey_ = _Translations$misskey$aboutMisskey_$ca_ES._(_root);
	@override late final _Translations$misskey$displayOfSensitiveMedia_$ca_ES displayOfSensitiveMedia_ = _Translations$misskey$displayOfSensitiveMedia_$ca_ES._(_root);
	@override late final _Translations$misskey$instanceTicker_$ca_ES instanceTicker_ = _Translations$misskey$instanceTicker_$ca_ES._(_root);
	@override late final _Translations$misskey$serverDisconnectedBehavior_$ca_ES serverDisconnectedBehavior_ = _Translations$misskey$serverDisconnectedBehavior_$ca_ES._(_root);
	@override late final _Translations$misskey$channel_$ca_ES channel_ = _Translations$misskey$channel_$ca_ES._(_root);
	@override late final _Translations$misskey$menuDisplay_$ca_ES menuDisplay_ = _Translations$misskey$menuDisplay_$ca_ES._(_root);
	@override late final _Translations$misskey$wordMute_$ca_ES wordMute_ = _Translations$misskey$wordMute_$ca_ES._(_root);
	@override late final _Translations$misskey$instanceMute_$ca_ES instanceMute_ = _Translations$misskey$instanceMute_$ca_ES._(_root);
	@override late final _Translations$misskey$theme_$ca_ES theme_ = _Translations$misskey$theme_$ca_ES._(_root);
	@override late final _Translations$misskey$sfx_$ca_ES sfx_ = _Translations$misskey$sfx_$ca_ES._(_root);
	@override late final _Translations$misskey$soundSettings_$ca_ES soundSettings_ = _Translations$misskey$soundSettings_$ca_ES._(_root);
	@override late final _Translations$misskey$ago_$ca_ES ago_ = _Translations$misskey$ago_$ca_ES._(_root);
	@override late final _Translations$misskey$timeIn_$ca_ES timeIn_ = _Translations$misskey$timeIn_$ca_ES._(_root);
	@override late final _Translations$misskey$time_$ca_ES time_ = _Translations$misskey$time_$ca_ES._(_root);
	@override late final _Translations$misskey$x2fa_$ca_ES x2fa_ = _Translations$misskey$x2fa_$ca_ES._(_root);
	@override late final _Translations$misskey$permissions_$ca_ES permissions_ = _Translations$misskey$permissions_$ca_ES._(_root);
	@override late final _Translations$misskey$auth_$ca_ES auth_ = _Translations$misskey$auth_$ca_ES._(_root);
	@override late final _Translations$misskey$antennaSources_$ca_ES antennaSources_ = _Translations$misskey$antennaSources_$ca_ES._(_root);
	@override late final _Translations$misskey$weekday_$ca_ES weekday_ = _Translations$misskey$weekday_$ca_ES._(_root);
	@override late final _Translations$misskey$widgets_$ca_ES widgets_ = _Translations$misskey$widgets_$ca_ES._(_root);
	@override late final _Translations$misskey$widgetOptions_$ca_ES widgetOptions_ = _Translations$misskey$widgetOptions_$ca_ES._(_root);
	@override late final _Translations$misskey$cw_$ca_ES cw_ = _Translations$misskey$cw_$ca_ES._(_root);
	@override late final _Translations$misskey$poll_$ca_ES poll_ = _Translations$misskey$poll_$ca_ES._(_root);
	@override late final _Translations$misskey$visibility_$ca_ES visibility_ = _Translations$misskey$visibility_$ca_ES._(_root);
	@override late final _Translations$misskey$postForm_$ca_ES postForm_ = _Translations$misskey$postForm_$ca_ES._(_root);
	@override late final _Translations$misskey$profile_$ca_ES profile_ = _Translations$misskey$profile_$ca_ES._(_root);
	@override late final _Translations$misskey$exportOrImport_$ca_ES exportOrImport_ = _Translations$misskey$exportOrImport_$ca_ES._(_root);
	@override late final _Translations$misskey$charts_$ca_ES charts_ = _Translations$misskey$charts_$ca_ES._(_root);
	@override late final _Translations$misskey$instanceCharts_$ca_ES instanceCharts_ = _Translations$misskey$instanceCharts_$ca_ES._(_root);
	@override late final _Translations$misskey$timelines_$ca_ES timelines_ = _Translations$misskey$timelines_$ca_ES._(_root);
	@override late final _Translations$misskey$play_$ca_ES play_ = _Translations$misskey$play_$ca_ES._(_root);
	@override late final _Translations$misskey$pages_$ca_ES pages_ = _Translations$misskey$pages_$ca_ES._(_root);
	@override late final _Translations$misskey$relayStatus_$ca_ES relayStatus_ = _Translations$misskey$relayStatus_$ca_ES._(_root);
	@override late final _Translations$misskey$notification_$ca_ES notification_ = _Translations$misskey$notification_$ca_ES._(_root);
	@override late final _Translations$misskey$deck_$ca_ES deck_ = _Translations$misskey$deck_$ca_ES._(_root);
	@override late final _Translations$misskey$dialog_$ca_ES dialog_ = _Translations$misskey$dialog_$ca_ES._(_root);
	@override late final _Translations$misskey$disabledTimeline_$ca_ES disabledTimeline_ = _Translations$misskey$disabledTimeline_$ca_ES._(_root);
	@override late final _Translations$misskey$drivecleaner_$ca_ES drivecleaner_ = _Translations$misskey$drivecleaner_$ca_ES._(_root);
	@override late final _Translations$misskey$webhookSettings_$ca_ES webhookSettings_ = _Translations$misskey$webhookSettings_$ca_ES._(_root);
	@override late final _Translations$misskey$abuseReport_$ca_ES abuseReport_ = _Translations$misskey$abuseReport_$ca_ES._(_root);
	@override late final _Translations$misskey$moderationLogTypes_$ca_ES moderationLogTypes_ = _Translations$misskey$moderationLogTypes_$ca_ES._(_root);
	@override late final _Translations$misskey$fileViewer_$ca_ES fileViewer_ = _Translations$misskey$fileViewer_$ca_ES._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$ca_ES externalResourceInstaller_ = _Translations$misskey$externalResourceInstaller_$ca_ES._(_root);
	@override late final _Translations$misskey$dataSaver_$ca_ES dataSaver_ = _Translations$misskey$dataSaver_$ca_ES._(_root);
	@override late final _Translations$misskey$hemisphere_$ca_ES hemisphere_ = _Translations$misskey$hemisphere_$ca_ES._(_root);
	@override late final _Translations$misskey$reversi_$ca_ES reversi_ = _Translations$misskey$reversi_$ca_ES._(_root);
	@override late final _Translations$misskey$offlineScreen_$ca_ES offlineScreen_ = _Translations$misskey$offlineScreen_$ca_ES._(_root);
	@override late final _Translations$misskey$urlPreviewSetting_$ca_ES urlPreviewSetting_ = _Translations$misskey$urlPreviewSetting_$ca_ES._(_root);
	@override late final _Translations$misskey$mediaControls_$ca_ES mediaControls_ = _Translations$misskey$mediaControls_$ca_ES._(_root);
	@override late final _Translations$misskey$contextMenu_$ca_ES contextMenu_ = _Translations$misskey$contextMenu_$ca_ES._(_root);
	@override late final _Translations$misskey$gridComponent_$ca_ES gridComponent_ = _Translations$misskey$gridComponent_$ca_ES._(_root);
	@override late final _Translations$misskey$roleSelectDialog_$ca_ES roleSelectDialog_ = _Translations$misskey$roleSelectDialog_$ca_ES._(_root);
	@override late final _Translations$misskey$customEmojisManager_$ca_ES customEmojisManager_ = _Translations$misskey$customEmojisManager_$ca_ES._(_root);
	@override late final _Translations$misskey$embedCodeGen_$ca_ES embedCodeGen_ = _Translations$misskey$embedCodeGen_$ca_ES._(_root);
	@override late final _Translations$misskey$selfXssPrevention_$ca_ES selfXssPrevention_ = _Translations$misskey$selfXssPrevention_$ca_ES._(_root);
	@override late final _Translations$misskey$followRequest_$ca_ES followRequest_ = _Translations$misskey$followRequest_$ca_ES._(_root);
	@override late final _Translations$misskey$remoteLookupErrors_$ca_ES remoteLookupErrors_ = _Translations$misskey$remoteLookupErrors_$ca_ES._(_root);
	@override late final _Translations$misskey$captcha_$ca_ES captcha_ = _Translations$misskey$captcha_$ca_ES._(_root);
	@override late final _Translations$misskey$bootErrors_$ca_ES bootErrors_ = _Translations$misskey$bootErrors_$ca_ES._(_root);
	@override late final _Translations$misskey$search_$ca_ES search_ = _Translations$misskey$search_$ca_ES._(_root);
	@override late final _Translations$misskey$serverSetupWizard_$ca_ES serverSetupWizard_ = _Translations$misskey$serverSetupWizard_$ca_ES._(_root);
	@override late final _Translations$misskey$uploader_$ca_ES uploader_ = _Translations$misskey$uploader_$ca_ES._(_root);
	@override late final _Translations$misskey$clientPerformanceIssueTip_$ca_ES clientPerformanceIssueTip_ = _Translations$misskey$clientPerformanceIssueTip_$ca_ES._(_root);
	@override late final _Translations$misskey$clip_$ca_ES clip_ = _Translations$misskey$clip_$ca_ES._(_root);
	@override late final _Translations$misskey$userLists_$ca_ES userLists_ = _Translations$misskey$userLists_$ca_ES._(_root);
	@override String get watermark => 'Marca d\'aigua ';
	@override String get defaultPreset => 'Per defecte';
	@override late final _Translations$misskey$watermarkEditor_$ca_ES watermarkEditor_ = _Translations$misskey$watermarkEditor_$ca_ES._(_root);
	@override late final _Translations$misskey$imageEffector_$ca_ES imageEffector_ = _Translations$misskey$imageEffector_$ca_ES._(_root);
	@override String get drafts => 'Esborrany ';
	@override late final _Translations$misskey$drafts_$ca_ES drafts_ = _Translations$misskey$drafts_$ca_ES._(_root);
	@override String get qr => 'Codi QR';
	@override late final _Translations$misskey$qr_$ca_ES qr_ = _Translations$misskey$qr_$ca_ES._(_root);
}

// Path: misskey.imageEditing_
class _Translations$misskey$imageEditing_$ca_ES extends Translations$misskey$imageEditing_$en_US {
	_Translations$misskey$imageEditing_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$imageEditing_$vars_$ca_ES vars_ = _Translations$misskey$imageEditing_$vars_$ca_ES._(_root);
}

// Path: misskey.imageFrameEditor_
class _Translations$misskey$imageFrameEditor_$ca_ES extends Translations$misskey$imageFrameEditor_$en_US {
	_Translations$misskey$imageFrameEditor_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edició de fotogrames ';
	@override String get tip => 'Pots decorar les imatges afegint etiquetes que continguin marcs i metadades.';
	@override String get header => 'Capçalera';
	@override String get footer => 'Peu de pàgina ';
	@override String get borderThickness => 'Amplada de la vora';
	@override String get labelThickness => 'Amplada de l\'etiqueta ';
	@override String get labelScale => 'Mida de l\'etiqueta ';
	@override String get centered => 'Alinea al centre';
	@override String get captionMain => 'Peu de foto (gran)';
	@override String get captionSub => 'Peu de foto (petit)';
	@override String get availableVariables => 'Variables disponibles';
	@override String get withQrCode => 'Codi QR';
	@override String get backgroundColor => 'Color del fons';
	@override String get textColor => 'Color del text';
	@override String get font => 'Lletra tipogràfica';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
	@override String get quitWithoutSaveConfirm => 'Sortir sense desar?';
	@override String get failedToLoadImage => 'Error en carregar la imatge';
}

// Path: misskey.compression_
class _Translations$misskey$compression_$ca_ES extends Translations$misskey$compression_$en_US {
	_Translations$misskey$compression_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$compression_$quality_$ca_ES quality_ = _Translations$misskey$compression_$quality_$ca_ES._(_root);
	@override late final _Translations$misskey$compression_$size_$ca_ES size_ = _Translations$misskey$compression_$size_$ca_ES._(_root);
}

// Path: misskey.order_
class _Translations$misskey$order_$ca_ES extends Translations$misskey$order_$en_US {
	_Translations$misskey$order_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get newest => 'Més recent';
	@override String get oldest => 'Antigues primer';
}

// Path: misskey.chat_
class _Translations$misskey$chat_$ca_ES extends Translations$misskey$chat_$en_US {
	_Translations$misskey$chat_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get messages => 'Missatge';
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
	@override late final _Translations$misskey$chat_$chatAllowedUsers_$ca_ES chatAllowedUsers_ = _Translations$misskey$chat_$chatAllowedUsers_$ca_ES._(_root);
}

// Path: misskey.emojiPalette_
class _Translations$misskey$emojiPalette_$ca_ES extends Translations$misskey$emojiPalette_$en_US {
	_Translations$misskey$emojiPalette_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get palettes => 'Calaixos d\'emojis';
	@override String get enableSyncBetweenDevicesForPalettes => 'Activa la sincronització dels calaixos d\'emojis entre dispositius';
	@override String get paletteForMain => 'Calaix d\'emojis principal';
	@override String get paletteForReaction => 'Calaix d\'emojis per reaccions';
}

// Path: misskey.settings_
class _Translations$misskey$settings_$ca_ES extends Translations$misskey$settings_$en_US {
	_Translations$misskey$settings_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
	@override String get showPageTabBarBottom => 'Mostrar les pestanyes de les línies de temps a la part inferior';
	@override String get emojiPaletteBanner => 'Pots registrar ajustos preestablerts com paletes perquè es mostrin permanentment al selector d\'emojis, o personalitzar la configuració de visió del selector.';
	@override String get enableAnimatedImages => 'Activar imatges animades';
	@override String get settingsPersistence_title => 'Persistència de la configuració ';
	@override String get settingsPersistence_description1 => 'Habilitar la persistència de la configuració permet que no es perdi la informació de la configuració ';
	@override String get settingsPersistence_description2 => 'Depenent de l\'entorn pot ser que no puguis habilitar aquesta opció.';
	@override late final _Translations$misskey$settings_$chat_$ca_ES chat_ = _Translations$misskey$settings_$chat_$ca_ES._(_root);
}

// Path: misskey.preferencesProfile_
class _Translations$misskey$preferencesProfile_$ca_ES extends Translations$misskey$preferencesProfile_$en_US {
	_Translations$misskey$preferencesProfile_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get profileName => 'Nom del perfil';
	@override String get profileNameDescription => 'Estableix un nom que identifiqui aquest dispositiu.';
	@override String get profileNameDescription2 => 'Per exemple: "PC Principal", "Smartphone", etc';
	@override String get manageProfiles => 'Gestionar perfils';
	@override String get shareSameProfileBetweenDevicesIsNotRecommended => 'No recomanem compartir el mateix perfil en diferents dispositius.';
	@override String get useSyncBetweenDevicesOptionIfYouWantToSyncSetting => 'Si hi ha ajustos que vols sincronitzar entre diferents dispositius activa l\'opció "Sincronitza entre diferents dispositius" individualment per cada una de les diferents opcions.';
}

// Path: misskey.preferencesBackup_
class _Translations$misskey$preferencesBackup_$ca_ES extends Translations$misskey$preferencesBackup_$en_US {
	_Translations$misskey$preferencesBackup_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
	@override String get forceBackup => 'Còpia de seguretat forçada de la configuració ';
}

// Path: misskey.accountSettings_
class _Translations$misskey$accountSettings_$ca_ES extends Translations$misskey$accountSettings_$en_US {
	_Translations$misskey$accountSettings_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$abuseUserReport_$ca_ES extends Translations$misskey$abuseUserReport_$en_US {
	_Translations$misskey$abuseUserReport_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$delivery_$ca_ES extends Translations$misskey$delivery_$en_US {
	_Translations$misskey$delivery_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get status => 'Estat d\'entrega ';
	@override String get stop => 'Anul·lar subscripció ';
	@override String get resume => 'Torna a enviar';
	@override late final _Translations$misskey$delivery_$type_$ca_ES type_ = _Translations$misskey$delivery_$type_$ca_ES._(_root);
}

// Path: misskey.bubbleGame_
class _Translations$misskey$bubbleGame_$ca_ES extends Translations$misskey$bubbleGame_$en_US {
	_Translations$misskey$bubbleGame_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => 'Com es juga';
	@override String get hold => 'Mantenir';
	@override late final _Translations$misskey$bubbleGame_$score_$ca_ES score_ = _Translations$misskey$bubbleGame_$score_$ca_ES._(_root);
	@override late final _Translations$misskey$bubbleGame_$howToPlay_$ca_ES howToPlay_ = _Translations$misskey$bubbleGame_$howToPlay_$ca_ES._(_root);
}

// Path: misskey.announcement_
class _Translations$misskey$announcement_$ca_ES extends Translations$misskey$announcement_$en_US {
	_Translations$misskey$announcement_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => 'Anunci per usuaris registrats';
	@override String get forExistingUsersDescription => 'Aquest avís només es mostrarà als usuaris existents fins al moment de la publicació. Si no també es mostrarà als usuaris que es registrin després de la publicació.';
	@override String get needConfirmationToRead => 'Es necessita confirmació de lectura de la notificació ';
	@override String get needConfirmationToReadDescription => 'Si s\'activa es mostrarà un diàleg per confirmar la lectura d\'aquesta notificació. A més aquesta notificació serà exclosa de qualsevol funcionalitat com "Marcar tot com a llegit".';
	@override String get end => 'Final de la notificació ';
	@override String get tooManyActiveAnnouncementDescription => 'Tenir masses notificacions actives pot empitjorar l\'experiència de l\'usuari. Considera finalitzar els avisos que siguin antics.';
	@override String get readConfirmTitle => 'Marcar com llegida?';
	@override String readConfirmText({required Object title}) => 'Això marcarà el contingut de "${title}" com llegit.';
	@override String get shouldNotBeUsedToPresentPermanentInfo => 'Ja que l\'ús de notificacions pot impactar l\'experiència dels nous usuaris, és recomanable fer servir les notificacions amb el flux d\'informació en comptes de fer-les servir en un únic bloc.';
	@override String get dialogAnnouncementUxWarn => 'Tenir dues o més notificacions amb l\'estil de finestres pot impactar l\'experiència de l\'usuari, és per això que és recomana fer-lo servir amb cura.';
	@override String get silence => 'Sense notificacions';
	@override String get silenceDescription => 'Activant aquesta opció la notificació no es mostrarà ni l\'usuari l\'haurà de llegir.';
}

// Path: misskey.initialAccountSetting_
class _Translations$misskey$initialAccountSetting_$ca_ES extends Translations$misskey$initialAccountSetting_$en_US {
	_Translations$misskey$initialAccountSetting_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$initialTutorial_$ca_ES extends Translations$misskey$initialTutorial_$en_US {
	_Translations$misskey$initialTutorial_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'Començar tutorial';
	@override String get title => 'Tutorial';
	@override String get wellDone => 'Ben fet!';
	@override String get skipAreYouSure => 'Sortir del tutorial?';
	@override late final _Translations$misskey$initialTutorial_$landing_$ca_ES landing_ = _Translations$misskey$initialTutorial_$landing_$ca_ES._(_root);
	@override late final _Translations$misskey$initialTutorial_$note_$ca_ES note_ = _Translations$misskey$initialTutorial_$note_$ca_ES._(_root);
	@override late final _Translations$misskey$initialTutorial_$reaction_$ca_ES reaction_ = _Translations$misskey$initialTutorial_$reaction_$ca_ES._(_root);
	@override late final _Translations$misskey$initialTutorial_$timeline_$ca_ES timeline_ = _Translations$misskey$initialTutorial_$timeline_$ca_ES._(_root);
	@override late final _Translations$misskey$initialTutorial_$postNote_$ca_ES postNote_ = _Translations$misskey$initialTutorial_$postNote_$ca_ES._(_root);
	@override late final _Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$ca_ES howToMakeAttachmentsSensitive_ = _Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$ca_ES._(_root);
	@override late final _Translations$misskey$initialTutorial_$done_$ca_ES done_ = _Translations$misskey$initialTutorial_$done_$ca_ES._(_root);
}

// Path: misskey.timelineDescription_
class _Translations$misskey$timelineDescription_$ca_ES extends Translations$misskey$timelineDescription_$en_US {
	_Translations$misskey$timelineDescription_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get home => 'A la línia de temps d\'Inici pots veure les notes dels usuaris que segueixes.';
	@override String get local => 'A la línia de temps Local pots veure les notes de tots els usuaris d\'aquest servidor.';
	@override String get social => 'La línia de temps Social mostren les notes de les línies de temps d\'Inici i Local.';
	@override String get global => 'A la línia de temps Global pots veure les notes de tots els servidors connectats.';
}

// Path: misskey.serverRules_
class _Translations$misskey$serverRules_$ca_ES extends Translations$misskey$serverRules_$en_US {
	_Translations$misskey$serverRules_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get description => 'Un conjunt de regles que seran mostrades abans de registrar-se. Es recomanable configurar un resum dels termes d\'ús.';
}

// Path: misskey.serverSettings_
class _Translations$misskey$serverSettings_$ca_ES extends Translations$misskey$serverSettings_$en_US {
	_Translations$misskey$serverSettings_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
	@override String get remoteNotesCleaningMaxProcessingDuration => 'Duració màxima del temps de funcionament del procés de neteja';
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
	@override String get entrancePageStyle => 'Estil de la pàgina d\'inici';
	@override String get showTimelineForVisitor => 'Mostrar la línia de temps';
	@override String get showActivitiesForVisitor => 'Mostrar activitat';
	@override late final _Translations$misskey$serverSettings_$userGeneratedContentsVisibilityForVisitor_$ca_ES userGeneratedContentsVisibilityForVisitor_ = _Translations$misskey$serverSettings_$userGeneratedContentsVisibilityForVisitor_$ca_ES._(_root);
}

// Path: misskey.accountMigration_
class _Translations$misskey$accountMigration_$ca_ES extends Translations$misskey$accountMigration_$en_US {
	_Translations$misskey$accountMigration_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$achievements_$ca_ES extends Translations$misskey$achievements_$en_US {
	_Translations$misskey$achievements_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Desbloquejat el';
	@override late final _Translations$misskey$achievements_$types_$ca_ES types_ = _Translations$misskey$achievements_$types_$ca_ES._(_root);
}

// Path: misskey.role_
class _Translations$misskey$role_$ca_ES extends Translations$misskey$role_$en_US {
	_Translations$misskey$role_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
	@override late final _Translations$misskey$role_$priority_$ca_ES priority_ = _Translations$misskey$role_$priority_$ca_ES._(_root);
	@override late final _Translations$misskey$role_$options_$ca_ES options_ = _Translations$misskey$role_$options_$ca_ES._(_root);
	@override late final _Translations$misskey$role_$condition_$ca_ES condition_ = _Translations$misskey$role_$condition_$ca_ES._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _Translations$misskey$sensitiveMediaDetection_$ca_ES extends Translations$misskey$sensitiveMediaDetection_$en_US {
	_Translations$misskey$sensitiveMediaDetection_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$emailUnavailable_$ca_ES extends Translations$misskey$emailUnavailable_$en_US {
	_Translations$misskey$emailUnavailable_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$ffVisibility_$ca_ES extends Translations$misskey$ffVisibility_$en_US {
	_Translations$misskey$ffVisibility_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get public => 'Públic ';
	@override String get followers => 'Visible només per a seguidors ';
	@override String get private => 'Privat';
}

// Path: misskey.signup_
class _Translations$misskey$signup_$ca_ES extends Translations$misskey$signup_$en_US {
	_Translations$misskey$signup_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Ja quasi estem';
	@override String get emailAddressInfo => 'Si us plau, escriu la teva adreça de correu electrònic. No es farà pública.';
	@override String emailSent({required Object email}) => 'S\'ha enviat un correu de confirmació a (${email}). Si us plau, fes clic a l\'enllaç per completar el registre.';
}

// Path: misskey.accountDelete_
class _Translations$misskey$accountDelete_$ca_ES extends Translations$misskey$accountDelete_$en_US {
	_Translations$misskey$accountDelete_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$ad_$ca_ES extends Translations$misskey$ad_$en_US {
	_Translations$misskey$ad_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get back => 'Tornar';
	@override String get reduceFrequencyOfThisAd => 'Mostrar menys aquest anunci';
	@override String get hide => 'No mostrar mai';
	@override String get timezoneinfo => 'El dia de la setmana ve determinat del fus horari del servidor.';
	@override String get adsSettings => 'Configurar la publicitat';
	@override String get notesPerOneAd => 'Interval d\'emplaçament publicitari en temps real (Notes per anuncis)';
	@override String get setZeroToDisable => 'Ajusta aquest valor a 0 per deshabilitar l\'actualització de publicitat en temps real';
	@override String get adsTooClose => 'L\'interval actual pot fer que l\'experiència de l\'usuari sigui dolenta perquè l\'interval és molt baix.';
}

// Path: misskey.forgotPassword_
class _Translations$misskey$forgotPassword_$ca_ES extends Translations$misskey$forgotPassword_$en_US {
	_Translations$misskey$forgotPassword_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Escriu l\'adreça de correu electrònic amb la que et vas registrar. S\'enviarà un correu electrònic amb un enllaç perquè puguis canviar-la.';
	@override String get ifNoEmail => 'Si no vas fer servir una adreça de correu electrònic per registrar-te, si us plau posa\'t en contacte amb l\'administrador.';
	@override String get contactAdmin => 'Aquesta instància no suporta registrar-se amb correu electrònic. Si us plau, contacta amb l\'administrador del servidor.';
}

// Path: misskey.gallery_
class _Translations$misskey$gallery_$ca_ES extends Translations$misskey$gallery_$en_US {
	_Translations$misskey$gallery_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get my => 'La meva Galeria ';
	@override String get liked => 'Publicacions que t\'han agradat';
	@override String get like => 'M\'agrada ';
	@override String get unlike => 'Ja no m\'agrada';
}

// Path: misskey.email_
class _Translations$misskey$email_$ca_ES extends Translations$misskey$email_$en_US {
	_Translations$misskey$email_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$email_$follow_$ca_ES follow_ = _Translations$misskey$email_$follow_$ca_ES._(_root);
	@override late final _Translations$misskey$email_$receiveFollowRequest_$ca_ES receiveFollowRequest_ = _Translations$misskey$email_$receiveFollowRequest_$ca_ES._(_root);
}

// Path: misskey.plugin_
class _Translations$misskey$plugin_$ca_ES extends Translations$misskey$plugin_$en_US {
	_Translations$misskey$plugin_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get install => 'Instal·lar un afegit ';
	@override String get installWarn => 'Si us plau, no instal·lis extensions que no siguin de confiança.';
	@override String get manage => 'Gestiona les extensions';
	@override String get viewSource => 'Veure l\'origen ';
	@override String get viewLog => 'Mostra el registre';
}

// Path: misskey.preferencesBackups_
class _Translations$misskey$preferencesBackups_$ca_ES extends Translations$misskey$preferencesBackups_$en_US {
	_Translations$misskey$preferencesBackups_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$registry_$ca_ES extends Translations$misskey$registry_$en_US {
	_Translations$misskey$registry_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Àmbit ';
	@override String get key => 'Clau';
	@override String get keys => 'Claus';
	@override String get domain => 'Domini';
	@override String get createKey => 'Crear una clau';
}

// Path: misskey.aboutMisskey_
class _Translations$misskey$aboutMisskey_$ca_ES extends Translations$misskey$aboutMisskey_$en_US {
	_Translations$misskey$aboutMisskey_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$displayOfSensitiveMedia_$ca_ES extends Translations$misskey$displayOfSensitiveMedia_$en_US {
	_Translations$misskey$displayOfSensitiveMedia_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get respect => 'Ocultar imatges o vídeos marcats com a sensibles';
	@override String get ignore => 'Mostrar imatges o vídeos marcats com a sensibles';
	@override String get force => 'Ocultar totes les imatges o vídeos ';
}

// Path: misskey.instanceTicker_
class _Translations$misskey$instanceTicker_$ca_ES extends Translations$misskey$instanceTicker_$en_US {
	_Translations$misskey$instanceTicker_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get none => 'No mostrar mai';
	@override String get remote => 'Mostrar per usuaris remots';
	@override String get always => 'Mostrar sempre';
}

// Path: misskey.serverDisconnectedBehavior_
class _Translations$misskey$serverDisconnectedBehavior_$ca_ES extends Translations$misskey$serverDisconnectedBehavior_$en_US {
	_Translations$misskey$serverDisconnectedBehavior_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Recarregar automàticament ';
	@override String get dialog => 'Mostrar finestres de confirmació ';
	@override String get quiet => 'Mostrar un avís que no molesti';
}

// Path: misskey.channel_
class _Translations$misskey$channel_$ca_ES extends Translations$misskey$channel_$en_US {
	_Translations$misskey$channel_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$menuDisplay_$ca_ES extends Translations$misskey$menuDisplay_$en_US {
	_Translations$misskey$menuDisplay_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Horitzontal ';
	@override String get sideIcon => 'Horitzontal (icones)';
	@override String get top => 'A dalt';
	@override String get hide => 'Amagar';
}

// Path: misskey.wordMute_
class _Translations$misskey$wordMute_$ca_ES extends Translations$misskey$wordMute_$en_US {
	_Translations$misskey$wordMute_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Paraules silenciades';
	@override String get muteWordsDescription => 'Separar amb espais per la condició AND o amb salts de línia per la condició OR.';
	@override String get muteWordsDescription2 => 'Envolta les paraules amb barres per fer servir expressions regulars.';
}

// Path: misskey.instanceMute_
class _Translations$misskey$instanceMute_$ca_ES extends Translations$misskey$instanceMute_$en_US {
	_Translations$misskey$instanceMute_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Silencia tots els impulsos dels servidors seleccionats, també els usuaris que responen a altres d\'un servidor silenciat.';
	@override String get instanceMuteDescription2 => 'Separar amb salts de línia';
	@override String get title => 'Ocultar notes de les instàncies en la llista.';
	@override String get heading => 'Llista d\'instàncies a silenciar';
}

// Path: misskey.theme_
class _Translations$misskey$theme_$ca_ES extends Translations$misskey$theme_$en_US {
	_Translations$misskey$theme_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
	@override late final _Translations$misskey$theme_$keys$ca_ES keys = _Translations$misskey$theme_$keys$ca_ES._(_root);
}

// Path: misskey.sfx_
class _Translations$misskey$sfx_$ca_ES extends Translations$misskey$sfx_$en_US {
	_Translations$misskey$sfx_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get note => 'Notes';
	@override String get noteMy => 'Nota (per mi)';
	@override String get notification => 'Notificacions';
	@override String get reaction => 'Quan se selecciona una reacció ';
	@override String get chatMessage => 'Missatges del xat';
}

// Path: misskey.soundSettings_
class _Translations$misskey$soundSettings_$ca_ES extends Translations$misskey$soundSettings_$en_US {
	_Translations$misskey$soundSettings_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$ago_$ca_ES extends Translations$misskey$ago_$en_US {
	_Translations$misskey$ago_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$timeIn_$ca_ES extends Translations$misskey$timeIn_$en_US {
	_Translations$misskey$timeIn_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$time_$ca_ES extends Translations$misskey$time_$en_US {
	_Translations$misskey$time_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get second => 'Segon(s)';
	@override String get minute => 'Minut(s)';
	@override String get hour => 'Hor(a)(es)';
	@override String get day => 'Di(a)(es)';
	@override String get month => 'Mes(os)';
}

// Path: misskey.x2fa_
class _Translations$misskey$x2fa_$ca_ES extends Translations$misskey$x2fa_$en_US {
	_Translations$misskey$x2fa_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$permissions_$ca_ES extends Translations$misskey$permissions_$en_US {
	_Translations$misskey$permissions_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$auth_$ca_ES extends Translations$misskey$auth_$en_US {
	_Translations$misskey$auth_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
	@override String get alreadyAuthorized => 'Aquesta aplicació ja té accés.';
}

// Path: misskey.antennaSources_
class _Translations$misskey$antennaSources_$ca_ES extends Translations$misskey$antennaSources_$en_US {
	_Translations$misskey$antennaSources_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get all => 'Totes les publicacions';
	@override String get homeTimeline => 'Publicacions dels usuaris seguits';
	@override String get users => 'Publicacions d\'usuaris específics';
	@override String get userList => 'Publicacions d\'una llista d\'usuaris';
	@override String get userBlacklist => 'Totes les notes excepte les d\'un o alguns usuaris especificats';
}

// Path: misskey.weekday_
class _Translations$misskey$weekday_$ca_ES extends Translations$misskey$weekday_$en_US {
	_Translations$misskey$weekday_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$widgets_$ca_ES extends Translations$misskey$widgets_$en_US {
	_Translations$misskey$widgets_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
	@override late final _Translations$misskey$widgets_$userList_$ca_ES userList_ = _Translations$misskey$widgets_$userList_$ca_ES._(_root);
	@override String get clicker => 'Clicker';
	@override String get birthdayFollowings => 'Usuaris que fan l\'aniversari avui';
	@override String get chat => 'Xateja amb aquest usuari';
}

// Path: misskey.widgetOptions_
class _Translations$misskey$widgetOptions_$ca_ES extends Translations$misskey$widgetOptions_$en_US {
	_Translations$misskey$widgetOptions_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get showHeader => 'Mostrar la capçalera';
	@override String get transparent => 'Fons transparent';
	@override String get height => 'Alçada ';
	@override late final _Translations$misskey$widgetOptions_$button_$ca_ES button_ = _Translations$misskey$widgetOptions_$button_$ca_ES._(_root);
	@override late final _Translations$misskey$widgetOptions_$clock_$ca_ES clock_ = _Translations$misskey$widgetOptions_$clock_$ca_ES._(_root);
	@override late final _Translations$misskey$widgetOptions_$jobQueue_$ca_ES jobQueue_ = _Translations$misskey$widgetOptions_$jobQueue_$ca_ES._(_root);
	@override late final _Translations$misskey$widgetOptions_$rss_$ca_ES rss_ = _Translations$misskey$widgetOptions_$rss_$ca_ES._(_root);
	@override late final _Translations$misskey$widgetOptions_$rssTicker_$ca_ES rssTicker_ = _Translations$misskey$widgetOptions_$rssTicker_$ca_ES._(_root);
	@override late final _Translations$misskey$widgetOptions_$birthdayFollowings_$ca_ES birthdayFollowings_ = _Translations$misskey$widgetOptions_$birthdayFollowings_$ca_ES._(_root);
}

// Path: misskey.cw_
class _Translations$misskey$cw_$ca_ES extends Translations$misskey$cw_$en_US {
	_Translations$misskey$cw_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Amagar';
	@override String get show => 'Carregar més';
	@override String chars({required Object count}) => '${count} caràcters ';
	@override String files({required Object count}) => '${count} fitxer(s)';
}

// Path: misskey.poll_
class _Translations$misskey$poll_$ca_ES extends Translations$misskey$poll_$en_US {
	_Translations$misskey$poll_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$visibility_$ca_ES extends Translations$misskey$visibility_$en_US {
	_Translations$misskey$visibility_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$postForm_$ca_ES extends Translations$misskey$postForm_$en_US {
	_Translations$misskey$postForm_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get quitInspiteOfThereAreUnuploadedFilesConfirm => 'Hi ha arxius que no s\'han carregat, vols descartar-los i tancar el formulari?';
	@override String get uploaderTip => 'L\'arxiu encara no s\'ha carregat. Des del menú arxiu pots canviar el nom, retallar imatges, posar marques d\'aigua i comprimir o no l\'arxiu. Els arxius es carreguen automàticament quan públiques una nota.';
	@override String get replyPlaceholder => 'Contestar...';
	@override String get quotePlaceholder => 'Citar...';
	@override String get channelPlaceholder => 'Publicar a un canal...';
	@override String get showHowToUse => 'Mostrar les instruccions';
	@override late final _Translations$misskey$postForm_$howToUse_$ca_ES howToUse_ = _Translations$misskey$postForm_$howToUse_$ca_ES._(_root);
	@override late final _Translations$misskey$postForm_$placeholders_$ca_ES placeholders_ = _Translations$misskey$postForm_$placeholders_$ca_ES._(_root);
}

// Path: misskey.profile_
class _Translations$misskey$profile_$ca_ES extends Translations$misskey$profile_$en_US {
	_Translations$misskey$profile_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$exportOrImport_$ca_ES extends Translations$misskey$exportOrImport_$en_US {
	_Translations$misskey$exportOrImport_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$charts_$ca_ES extends Translations$misskey$charts_$en_US {
	_Translations$misskey$charts_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$instanceCharts_$ca_ES extends Translations$misskey$instanceCharts_$en_US {
	_Translations$misskey$instanceCharts_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$timelines_$ca_ES extends Translations$misskey$timelines_$en_US {
	_Translations$misskey$timelines_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get home => 'Inici';
	@override String get local => 'Local';
	@override String get social => 'Social';
	@override String get global => 'Global';
}

// Path: misskey.play_
class _Translations$misskey$play_$ca_ES extends Translations$misskey$play_$en_US {
	_Translations$misskey$play_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$pages_$ca_ES extends Translations$misskey$pages_$en_US {
	_Translations$misskey$pages_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
	@override late final _Translations$misskey$pages_$blocks$ca_ES blocks = _Translations$misskey$pages_$blocks$ca_ES._(_root);
}

// Path: misskey.relayStatus_
class _Translations$misskey$relayStatus_$ca_ES extends Translations$misskey$relayStatus_$en_US {
	_Translations$misskey$relayStatus_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'Pendent';
	@override String get accepted => 'Acceptat';
	@override String get rejected => 'Rebutjat';
}

// Path: misskey.notification_
class _Translations$misskey$notification_$ca_ES extends Translations$misskey$notification_$en_US {
	_Translations$misskey$notification_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
	@override String get scheduledNotePosted => 'Una nota programada ha sigut publicada';
	@override String get scheduledNotePostFailed => 'Ha fallat la publicació d\'una nota programada';
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
	@override late final _Translations$misskey$notification_$types_$ca_ES types_ = _Translations$misskey$notification_$types_$ca_ES._(_root);
	@override late final _Translations$misskey$notification_$actions_$ca_ES actions_ = _Translations$misskey$notification_$actions_$ca_ES._(_root);
}

// Path: misskey.deck_
class _Translations$misskey$deck_$ca_ES extends Translations$misskey$deck_$en_US {
	_Translations$misskey$deck_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
	@override String get showHowToUse => 'Veure la descripció de la interfície d\'usuari ';
	@override late final _Translations$misskey$deck_$howToUse_$ca_ES howToUse_ = _Translations$misskey$deck_$howToUse_$ca_ES._(_root);
	@override late final _Translations$misskey$deck_$columns_$ca_ES columns_ = _Translations$misskey$deck_$columns_$ca_ES._(_root);
}

// Path: misskey.dialog_
class _Translations$misskey$dialog_$ca_ES extends Translations$misskey$dialog_$en_US {
	_Translations$misskey$dialog_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => 'Has arribat al màxim de caràcters! Actualment és ${current} de ${max}';
	@override String charactersBelow({required Object current, required Object min}) => 'Ets per sota del mínim de caràcters! Actualment és ${current} de ${min}';
}

// Path: misskey.disabledTimeline_
class _Translations$misskey$disabledTimeline_$ca_ES extends Translations$misskey$disabledTimeline_$en_US {
	_Translations$misskey$disabledTimeline_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Línia de tems desactivada';
	@override String get description => 'No pots fer servir aquesta línia de temps amb els teus rols actuals.';
}

// Path: misskey.drivecleaner_
class _Translations$misskey$drivecleaner_$ca_ES extends Translations$misskey$drivecleaner_$en_US {
	_Translations$misskey$drivecleaner_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'Mida del fitxer descendent';
	@override String get orderByCreatedAtAsc => 'Data ascendent';
}

// Path: misskey.webhookSettings_
class _Translations$misskey$webhookSettings_$ca_ES extends Translations$misskey$webhookSettings_$en_US {
	_Translations$misskey$webhookSettings_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Crear un Webhook';
	@override String get modifyWebhook => 'Modificar un Webhook';
	@override String get name => 'Nom';
	@override String get secret => 'Secret';
	@override String get trigger => 'Activador';
	@override String get active => 'Activat';
	@override late final _Translations$misskey$webhookSettings_$events_$ca_ES events_ = _Translations$misskey$webhookSettings_$events_$ca_ES._(_root);
	@override late final _Translations$misskey$webhookSettings_$systemEvents_$ca_ES systemEvents_ = _Translations$misskey$webhookSettings_$systemEvents_$ca_ES._(_root);
	@override String get deleteConfirm => 'Segur que vols esborrar el webhook?';
	@override String get testRemarks => 'Si feu clic al botó a la dreta de l\'interruptor, podeu enviar un webhook de prova amb dades dummy.';
}

// Path: misskey.abuseReport_
class _Translations$misskey$abuseReport_$ca_ES extends Translations$misskey$abuseReport_$en_US {
	_Translations$misskey$abuseReport_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$abuseReport_$notificationRecipient_$ca_ES notificationRecipient_ = _Translations$misskey$abuseReport_$notificationRecipient_$ca_ES._(_root);
}

// Path: misskey.moderationLogTypes_
class _Translations$misskey$moderationLogTypes_$ca_ES extends Translations$misskey$moderationLogTypes_$en_US {
	_Translations$misskey$moderationLogTypes_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get clearQueue => 'Esborra la cua de feina';
	@override String get promoteQueue => 'Tornar a intentar la feina de la cua';
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
class _Translations$misskey$fileViewer_$ca_ES extends Translations$misskey$fileViewer_$en_US {
	_Translations$misskey$fileViewer_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$externalResourceInstaller_$ca_ES extends Translations$misskey$externalResourceInstaller_$en_US {
	_Translations$misskey$externalResourceInstaller_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Instal·lar des d\'un lloc extern';
	@override String get checkVendorBeforeInstall => 'Assegura\'t que qui distribueix aquest recurs és fiable abans d\'instal·lar-ho.';
	@override late final _Translations$misskey$externalResourceInstaller_$plugin_$ca_ES plugin_ = _Translations$misskey$externalResourceInstaller_$plugin_$ca_ES._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$theme_$ca_ES theme_ = _Translations$misskey$externalResourceInstaller_$theme_$ca_ES._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$meta_$ca_ES meta_ = _Translations$misskey$externalResourceInstaller_$meta_$ca_ES._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$vendorInfo_$ca_ES vendorInfo_ = _Translations$misskey$externalResourceInstaller_$vendorInfo_$ca_ES._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$errors_$ca_ES errors_ = _Translations$misskey$externalResourceInstaller_$errors_$ca_ES._(_root);
}

// Path: misskey.dataSaver_
class _Translations$misskey$dataSaver_$ca_ES extends Translations$misskey$dataSaver_$en_US {
	_Translations$misskey$dataSaver_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$dataSaver_$media_$ca_ES media_ = _Translations$misskey$dataSaver_$media_$ca_ES._(_root);
	@override late final _Translations$misskey$dataSaver_$avatar_$ca_ES avatar_ = _Translations$misskey$dataSaver_$avatar_$ca_ES._(_root);
	@override late final _Translations$misskey$dataSaver_$urlPreviewThumbnail_$ca_ES urlPreviewThumbnail_ = _Translations$misskey$dataSaver_$urlPreviewThumbnail_$ca_ES._(_root);
	@override late final _Translations$misskey$dataSaver_$disableUrlPreview_$ca_ES disableUrlPreview_ = _Translations$misskey$dataSaver_$disableUrlPreview_$ca_ES._(_root);
	@override late final _Translations$misskey$dataSaver_$code_$ca_ES code_ = _Translations$misskey$dataSaver_$code_$ca_ES._(_root);
}

// Path: misskey.hemisphere_
class _Translations$misskey$hemisphere_$ca_ES extends Translations$misskey$hemisphere_$en_US {
	_Translations$misskey$hemisphere_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get N => 'Hemisferi Nord ';
	@override String get S => 'Hemisferi Sud';
	@override String get caption => 'El fan servir alguns clients per determinar l\'estació de l\'any.';
}

// Path: misskey.reversi_
class _Translations$misskey$reversi_$ca_ES extends Translations$misskey$reversi_$en_US {
	_Translations$misskey$reversi_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$offlineScreen_$ca_ES extends Translations$misskey$offlineScreen_$en_US {
	_Translations$misskey$offlineScreen_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fora de línia - No es pot connectar amb el servidor';
	@override String get header => 'Impossible connectar amb el servidor';
}

// Path: misskey.urlPreviewSetting_
class _Translations$misskey$urlPreviewSetting_$ca_ES extends Translations$misskey$urlPreviewSetting_$en_US {
	_Translations$misskey$urlPreviewSetting_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$mediaControls_$ca_ES extends Translations$misskey$mediaControls_$en_US {
	_Translations$misskey$mediaControls_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get pip => 'Imatge sobre impressionada ';
	@override String get playbackRate => 'Velocitat de reproducció ';
	@override String get loop => 'Reproducció en bucle';
}

// Path: misskey.contextMenu_
class _Translations$misskey$contextMenu_$ca_ES extends Translations$misskey$contextMenu_$en_US {
	_Translations$misskey$contextMenu_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Menú contextual';
	@override String get app => 'Aplicació ';
	@override String get appWithShift => 'Aplicació amb la tecla shift';
	@override String get native => 'Interfície del navegador';
}

// Path: misskey.gridComponent_
class _Translations$misskey$gridComponent_$ca_ES extends Translations$misskey$gridComponent_$en_US {
	_Translations$misskey$gridComponent_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$gridComponent_$error_$ca_ES error_ = _Translations$misskey$gridComponent_$error_$ca_ES._(_root);
}

// Path: misskey.roleSelectDialog_
class _Translations$misskey$roleSelectDialog_$ca_ES extends Translations$misskey$roleSelectDialog_$en_US {
	_Translations$misskey$roleSelectDialog_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get notSelected => 'No seleccionat';
}

// Path: misskey.customEmojisManager_
class _Translations$misskey$customEmojisManager_$ca_ES extends Translations$misskey$customEmojisManager_$en_US {
	_Translations$misskey$customEmojisManager_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$customEmojisManager_$gridCommon_$ca_ES gridCommon_ = _Translations$misskey$customEmojisManager_$gridCommon_$ca_ES._(_root);
	@override late final _Translations$misskey$customEmojisManager_$logs_$ca_ES logs_ = _Translations$misskey$customEmojisManager_$logs_$ca_ES._(_root);
	@override late final _Translations$misskey$customEmojisManager_$remote_$ca_ES remote_ = _Translations$misskey$customEmojisManager_$remote_$ca_ES._(_root);
	@override late final _Translations$misskey$customEmojisManager_$local_$ca_ES local_ = _Translations$misskey$customEmojisManager_$local_$ca_ES._(_root);
}

// Path: misskey.embedCodeGen_
class _Translations$misskey$embedCodeGen_$ca_ES extends Translations$misskey$embedCodeGen_$en_US {
	_Translations$misskey$embedCodeGen_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$selfXssPrevention_$ca_ES extends Translations$misskey$selfXssPrevention_$en_US {
	_Translations$misskey$selfXssPrevention_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get warning => 'Advertència ';
	@override String get title => '"Enganxa qualsevol cosa en aquesta finestra"  És tot un engany.';
	@override String get description1 => 'Si posa alguna cosa al seu compte, un usuari malintencionat podria segrestar-la o robar-li les dades.';
	@override String get description2 => 'Si no entens que estàs fent %cpara ara mateix i tanca la finestra.';
	@override String description3({required Object link}) => 'Per obtenir més informació. ${link}';
}

// Path: misskey.followRequest_
class _Translations$misskey$followRequest_$ca_ES extends Translations$misskey$followRequest_$en_US {
	_Translations$misskey$followRequest_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get recieved => 'Sol·licituds rebudes';
	@override String get sent => 'Sol·licituds enviades';
}

// Path: misskey.remoteLookupErrors_
class _Translations$misskey$remoteLookupErrors_$ca_ES extends Translations$misskey$remoteLookupErrors_$en_US {
	_Translations$misskey$remoteLookupErrors_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$remoteLookupErrors_$federationNotAllowed_$ca_ES federationNotAllowed_ = _Translations$misskey$remoteLookupErrors_$federationNotAllowed_$ca_ES._(_root);
	@override late final _Translations$misskey$remoteLookupErrors_$uriInvalid_$ca_ES uriInvalid_ = _Translations$misskey$remoteLookupErrors_$uriInvalid_$ca_ES._(_root);
	@override late final _Translations$misskey$remoteLookupErrors_$requestFailed_$ca_ES requestFailed_ = _Translations$misskey$remoteLookupErrors_$requestFailed_$ca_ES._(_root);
	@override late final _Translations$misskey$remoteLookupErrors_$responseInvalid_$ca_ES responseInvalid_ = _Translations$misskey$remoteLookupErrors_$responseInvalid_$ca_ES._(_root);
	@override late final _Translations$misskey$remoteLookupErrors_$noSuchObject_$ca_ES noSuchObject_ = _Translations$misskey$remoteLookupErrors_$noSuchObject_$ca_ES._(_root);
}

// Path: misskey.captcha_
class _Translations$misskey$captcha_$ca_ES extends Translations$misskey$captcha_$en_US {
	_Translations$misskey$captcha_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get verify => 'Passar pel CAPTCHA';
	@override String get testSiteKeyMessage => 'Pots comprovar una vista prèvia introduïnt valors de prova per la clau del lloc i la clau secreta. Si vols més informació consulteu la següent pàgina.';
	@override late final _Translations$misskey$captcha_$error_$ca_ES error_ = _Translations$misskey$captcha_$error_$ca_ES._(_root);
}

// Path: misskey.bootErrors_
class _Translations$misskey$bootErrors_$ca_ES extends Translations$misskey$bootErrors_$en_US {
	_Translations$misskey$bootErrors_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$search_$ca_ES extends Translations$misskey$search_$en_US {
	_Translations$misskey$search_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Tot';
	@override String get searchScopeLocal => 'Local';
	@override String get searchScopeServer => 'Instància ';
	@override String get searchScopeUser => 'Especificar usuari';
	@override String get pleaseEnterServerHost => 'Introdueix l\'adreça de la instància ';
	@override String get pleaseSelectUser => 'Selecciona un usuari';
	@override String get serverHostPlaceholder => 'Ex: misskey.example.com';
	@override String get postFrom => 'Publicat el';
	@override String get postTo => 'Publicat el';
}

// Path: misskey.serverSetupWizard_
class _Translations$misskey$serverSetupWizard_$ca_ES extends Translations$misskey$serverSetupWizard_$en_US {
	_Translations$misskey$serverSetupWizard_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get installCompleted => 'La instal·lació de Misskey ha finalitzat!';
	@override String get firstCreateAccount => 'Primer crea un compte d\'administrador.';
	@override String get accountCreated => 'Compte d\'administrador creat.';
	@override String get serverSetting => 'Configuració del servidor';
	@override String get youCanEasilyConfigureOptimalServerSettingsWithThisWizard => 'Aquest assistent t\'ajuda a fer una configuració òptima del servidor.';
	@override String get settingsYouMakeHereCanBeChangedLater => 'Els canvis que facis ara poden modificar-se més tard.';
	@override String get howWillYouUseMisskey => 'Com es fa servir Misskey?';
	@override late final _Translations$misskey$serverSetupWizard_$use_$ca_ES use_ = _Translations$misskey$serverSetupWizard_$use_$ca_ES._(_root);
	@override String get openServerAdvice => 'Acceptar un nombre no determinat d\'usuaris comporta alguns riscos. Es recomana operar amb un sistema de moderació fiable per fer front als problemes.';
	@override String get openServerAntiSpamAdvice => 'També s\'ha de tenir molta cura amb la seguretat, per exemple habilitant funcions anti-bot com reCAPTCHA, per assegurar-te que el teu servidor no es converteix en un trampolí per contingut brossa.';
	@override String get howManyUsersDoYouExpect => 'Quantes persones preveus?';
	@override late final _Translations$misskey$serverSetupWizard_$scale_$ca_ES scale_ = _Translations$misskey$serverSetupWizard_$scale_$ca_ES._(_root);
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
	@override late final _Translations$misskey$serverSetupWizard_$donationRequest_$ca_ES donationRequest_ = _Translations$misskey$serverSetupWizard_$donationRequest_$ca_ES._(_root);
}

// Path: misskey.uploader_
class _Translations$misskey$uploader_$ca_ES extends Translations$misskey$uploader_$en_US {
	_Translations$misskey$uploader_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$clientPerformanceIssueTip_$ca_ES extends Translations$misskey$clientPerformanceIssueTip_$en_US {
	_Translations$misskey$clientPerformanceIssueTip_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$clip_$ca_ES extends Translations$misskey$clip_$en_US {
	_Translations$misskey$clip_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Clip és una funció que permet organitzar les teves notes.';
}

// Path: misskey.userLists_
class _Translations$misskey$userLists_$ca_ES extends Translations$misskey$userLists_$en_US {
	_Translations$misskey$userLists_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Es poden crear llistes amb qualsevol usuari. La llista creada es pot mostrar com una línia de temps.';
}

// Path: misskey.watermarkEditor_
class _Translations$misskey$watermarkEditor_$ca_ES extends Translations$misskey$watermarkEditor_$en_US {
	_Translations$misskey$watermarkEditor_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get tip => 'A la imatge es pot afegir una marca d\'aigua com informació sobre drets.';
	@override String get quitWithoutSaveConfirm => 'Sortir sense desar?';
	@override String get driveFileTypeWarn => 'Aquest arxiu no és compatible';
	@override String get driveFileTypeWarnDescription => 'Selecciona un arxiu d\'imatge ';
	@override String get title => 'Editar la marca d\'aigua ';
	@override String get cover => 'Cobrir-ho tot';
	@override String get repeat => 'Repetir';
	@override String get preserveBoundingRect => 'Ajusta\'l per evitar que sobresortir en fer la rotació ';
	@override String get opacity => 'Opacitat';
	@override String get scale => 'Mida';
	@override String get text => 'Text';
	@override String get qr => 'Codi QR';
	@override String get position => 'Posició ';
	@override String get margin => 'Marge';
	@override String get type => 'Tipus';
	@override String get image => 'Imatges';
	@override String get advanced => 'Avançat';
	@override String get angle => 'Angle';
	@override String get stripe => 'Bandes';
	@override String get stripeWidth => 'Amplada de la banda';
	@override String get stripeFrequency => 'Freqüència de la banda';
	@override String get polkadot => 'Lunars';
	@override String get checker => 'Escacs';
	@override String get polkadotMainDotOpacity => 'Opacitat del lunar principal';
	@override String get polkadotMainDotRadius => 'Mida del lunar principal';
	@override String get polkadotSubDotOpacity => 'Opacitat del lunar secundari';
	@override String get polkadotSubDotRadius => 'Mida del lunar secundari';
	@override String get polkadotSubDotDivisions => 'Nombre de punts secundaris';
	@override String get leaveBlankToAccountUrl => 'Si deixes aquest camp buit, es farà servir l\'URL del teu compte';
	@override String get failedToLoadImage => 'Error en carregar la imatge';
}

// Path: misskey.imageEffector_
class _Translations$misskey$imageEffector_$ca_ES extends Translations$misskey$imageEffector_$en_US {
	_Translations$misskey$imageEffector_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Efecte';
	@override String get addEffect => 'Afegeix un efecte';
	@override String get discardChangesConfirm => 'Vols descartar els canvis i sortir?';
	@override String get failedToLoadImage => 'Error en carregar la imatge';
	@override late final _Translations$misskey$imageEffector_$fxs_$ca_ES fxs_ = _Translations$misskey$imageEffector_$fxs_$ca_ES._(_root);
	@override late final _Translations$misskey$imageEffector_$fxProps_$ca_ES fxProps_ = _Translations$misskey$imageEffector_$fxProps_$ca_ES._(_root);
}

// Path: misskey.drafts_
class _Translations$misskey$drafts_$ca_ES extends Translations$misskey$drafts_$en_US {
	_Translations$misskey$drafts_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
	@override String get schedule => 'Programació esborranys';
	@override String get listScheduledNotes => 'Llista de notes programades';
	@override String get cancelSchedule => 'Cancel·lar la programació';
}

// Path: misskey.qr_
class _Translations$misskey$qr_$ca_ES extends Translations$misskey$qr_$en_US {
	_Translations$misskey$qr_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get showTabTitle => 'Veure';
	@override String get readTabTitle => 'Escanejar ';
	@override String shareTitle({required Object name, required Object acct}) => '${name} ${acct}';
	@override String get shareText => 'Segueix-me al Fediverse';
	@override String get chooseCamera => 'Seleccionar càmera ';
	@override String get cannotToggleFlash => 'No es pot activar el flaix';
	@override String get turnOnFlash => 'Activar el flaix';
	@override String get turnOffFlash => 'Apagar el flaix';
	@override String get startQr => 'Reiniciar el lector de codis QR';
	@override String get stopQr => 'Parar el lector de codis QR';
	@override String get noQrCodeFound => 'No s\'ha trobat cap codi QR';
	@override String get scanFile => 'Escanejar la imatge des del dispositiu';
	@override String get raw => 'Text';
	@override String get mfm => 'MFM';
}

// Path: misskey.imageEditing_.vars_
class _Translations$misskey$imageEditing_$vars_$ca_ES extends Translations$misskey$imageEditing_$vars_$en_US {
	_Translations$misskey$imageEditing_$vars_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get caption => 'Títol de l\'arxiu';
	@override String get filename => 'Nom del Fitxer';
	@override String get filename_without_ext => 'Nom de l\'arxiu sense extensió ';
	@override String get year => 'Any';
	@override String get month => 'Mes';
	@override String get day => 'Dia';
	@override String get hour => 'Hora';
	@override String get minute => 'Minut';
	@override String get second => 'Segon';
	@override String get camera_model => 'Nom de la càmera ';
	@override String get camera_lens_model => 'Nom de la lent';
	@override String get camera_mm => 'Distància focal';
	@override String get camera_mm_35 => 'Distància focal (equivalent a 35 mm)';
	@override String get camera_f => 'Obertura';
	@override String get camera_s => 'Velocitat d\'obturació';
	@override String get camera_iso => 'Sensibilitat ISO';
	@override String get gps_lat => 'Latitud ';
	@override String get gps_long => 'Longitud ';
}

// Path: misskey.compression_.quality_
class _Translations$misskey$compression_$quality_$ca_ES extends Translations$misskey$compression_$quality_$en_US {
	_Translations$misskey$compression_$quality_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get high => 'Qualitat alta';
	@override String get medium => 'Qualitat mitjana';
	@override String get low => 'Qualitat baixa';
}

// Path: misskey.compression_.size_
class _Translations$misskey$compression_$size_$ca_ES extends Translations$misskey$compression_$size_$en_US {
	_Translations$misskey$compression_$size_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get large => 'Mida gran';
	@override String get medium => 'Mida mitjana';
	@override String get small => 'Mida petita';
}

// Path: misskey.chat_.chatAllowedUsers_
class _Translations$misskey$chat_$chatAllowedUsers_$ca_ES extends Translations$misskey$chat_$chatAllowedUsers_$en_US {
	_Translations$misskey$chat_$chatAllowedUsers_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get everyone => 'Tothom';
	@override String get followers => 'Només els teus seguidors';
	@override String get following => 'Només usuaris als que segueixes';
	@override String get mutual => 'Només seguidors mutus';
	@override String get none => 'Ningú ';
}

// Path: misskey.settings_.chat_
class _Translations$misskey$settings_$chat_$ca_ES extends Translations$misskey$settings_$chat_$en_US {
	_Translations$misskey$settings_$chat_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get showSenderName => 'Mostrar el nom del remitent';
	@override String get sendOnEnter => 'Introdueix per enviar';
}

// Path: misskey.delivery_.type_
class _Translations$misskey$delivery_$type_$ca_ES extends Translations$misskey$delivery_$type_$en_US {
	_Translations$misskey$delivery_$type_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get none => 'S\'està publicant';
	@override String get manuallySuspended => 'Suspendre manualment';
	@override String get goneSuspended => 'Servidor suspès perquè el servidor s\'ha esborrat';
	@override String get autoSuspendedForNotResponding => 'Servidor suspès perquè el servidor no respon';
	@override String get softwareSuspended => 'Suspès perquè el programari ha deixat de desenvolupar-se ';
}

// Path: misskey.bubbleGame_.score_
class _Translations$misskey$bubbleGame_$score_$ca_ES extends Translations$misskey$bubbleGame_$score_$en_US {
	_Translations$misskey$bubbleGame_$score_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get score => 'Puntuació ';
	@override String get scoreYen => 'Diners guanyats';
	@override String get highScore => 'Millor puntuació ';
	@override String get maxChain => 'Nombre màxim de combos';
	@override String yen({required Object yen}) => '${yen}Ien';
	@override String estimatedQty({required Object qty}) => '${qty} Peces';
	@override String scoreSweets({required Object onigiriQtyWithUnit}) => '${onigiriQtyWithUnit} Boles d\'arròs ';
}

// Path: misskey.bubbleGame_.howToPlay_
class _Translations$misskey$bubbleGame_$howToPlay_$ca_ES extends Translations$misskey$bubbleGame_$howToPlay_$en_US {
	_Translations$misskey$bubbleGame_$howToPlay_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get section1 => 'Ajusta la posició i deixa caure l\'objecte dintre la caixa.';
	@override String get section2 => 'Quan dos objectes del mateix tipus es toquen, canviaran en un objecte diferent i guanyares punts.';
	@override String get section3 => 'El joc s\'acabarà quan els objectes sobresurtin de la caixa. Intenta aconseguir la puntuació més gran possible fusionant objectes mentre impedeixes que sobresurtin de la caixa!';
}

// Path: misskey.initialTutorial_.landing_
class _Translations$misskey$initialTutorial_$landing_$ca_ES extends Translations$misskey$initialTutorial_$landing_$en_US {
	_Translations$misskey$initialTutorial_$landing_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Benvingut al tutorial';
	@override String get description => 'Aquí aprendràs el bàsic per poder fer servir Misskey i les seves característiques.';
}

// Path: misskey.initialTutorial_.note_
class _Translations$misskey$initialTutorial_$note_$ca_ES extends Translations$misskey$initialTutorial_$note_$en_US {
	_Translations$misskey$initialTutorial_$note_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$initialTutorial_$reaction_$ca_ES extends Translations$misskey$initialTutorial_$reaction_$en_US {
	_Translations$misskey$initialTutorial_$reaction_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$initialTutorial_$timeline_$ca_ES extends Translations$misskey$initialTutorial_$timeline_$en_US {
	_Translations$misskey$initialTutorial_$timeline_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$initialTutorial_$postNote_$ca_ES extends Translations$misskey$initialTutorial_$postNote_$en_US {
	_Translations$misskey$initialTutorial_$postNote_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Configuració de la publicació de les notes';
	@override String get description1 => 'Quan públiques una nota a Misskey hi ha diferents opcions disponibles. El formulari de publicació es veu així';
	@override late final _Translations$misskey$initialTutorial_$postNote_$visibility_$ca_ES visibility_ = _Translations$misskey$initialTutorial_$postNote_$visibility_$ca_ES._(_root);
	@override late final _Translations$misskey$initialTutorial_$postNote_$cw_$ca_ES cw_ = _Translations$misskey$initialTutorial_$postNote_$cw_$ca_ES._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$ca_ES extends Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$en_US {
	_Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Com marcar adjunts com a contingut sensible?';
	@override String get description => 'Per adjunts que sigui requerit per les normes del servidor o que puguin contenir material sensible, s\'ha d\'afegir l\'opció \'sensible\'.';
	@override String get tryThisFile => 'Prova de marcar la imatge adjunta en aquest formulari com a sensible!';
	@override late final _Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$exampleNote_$ca_ES exampleNote_ = _Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$exampleNote_$ca_ES._(_root);
	@override String get method => 'Per marcar un adjunt com a sensible, fes clic a la miniatura de l\'adjunt, obre el menú i fes clic a \'Marcar com a sensible\'.';
	@override String get sensitiveSucceeded => 'Quan adjuntis fitxers si us plau marca la sensibilitat seguint les normes del servidor.';
	@override String get doItToContinue => 'Marca el fitxer adjunt com a sensible per poder continuar.';
}

// Path: misskey.initialTutorial_.done_
class _Translations$misskey$initialTutorial_$done_$ca_ES extends Translations$misskey$initialTutorial_$done_$en_US {
	_Translations$misskey$initialTutorial_$done_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Has completat el tutorial 🎉';
	@override String description({required Object link}) => 'Les funcions explicades aquí és una petita mostra. Per una explicació més detallada de com fer servir MissKey consulta ${link}.';
}

// Path: misskey.serverSettings_.userGeneratedContentsVisibilityForVisitor_
class _Translations$misskey$serverSettings_$userGeneratedContentsVisibilityForVisitor_$ca_ES extends Translations$misskey$serverSettings_$userGeneratedContentsVisibilityForVisitor_$en_US {
	_Translations$misskey$serverSettings_$userGeneratedContentsVisibilityForVisitor_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get all => 'Tot obert al públic ';
	@override String get localOnly => 'Només es publiquen els continguts locals, el contingut remot es manté privat';
	@override String get none => 'Tot privat';
}

// Path: misskey.achievements_.types_
class _Translations$misskey$achievements_$types_$ca_ES extends Translations$misskey$achievements_$types_$en_US {
	_Translations$misskey$achievements_$types_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$achievements_$types_$notes1_$ca_ES notes1_ = _Translations$misskey$achievements_$types_$notes1_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes10_$ca_ES notes10_ = _Translations$misskey$achievements_$types_$notes10_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes100_$ca_ES notes100_ = _Translations$misskey$achievements_$types_$notes100_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes500_$ca_ES notes500_ = _Translations$misskey$achievements_$types_$notes500_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes1000_$ca_ES notes1000_ = _Translations$misskey$achievements_$types_$notes1000_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes5000_$ca_ES notes5000_ = _Translations$misskey$achievements_$types_$notes5000_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes10000_$ca_ES notes10000_ = _Translations$misskey$achievements_$types_$notes10000_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes20000_$ca_ES notes20000_ = _Translations$misskey$achievements_$types_$notes20000_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes30000_$ca_ES notes30000_ = _Translations$misskey$achievements_$types_$notes30000_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes40000_$ca_ES notes40000_ = _Translations$misskey$achievements_$types_$notes40000_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes50000_$ca_ES notes50000_ = _Translations$misskey$achievements_$types_$notes50000_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes60000_$ca_ES notes60000_ = _Translations$misskey$achievements_$types_$notes60000_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes70000_$ca_ES notes70000_ = _Translations$misskey$achievements_$types_$notes70000_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes80000_$ca_ES notes80000_ = _Translations$misskey$achievements_$types_$notes80000_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes90000_$ca_ES notes90000_ = _Translations$misskey$achievements_$types_$notes90000_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes100000_$ca_ES notes100000_ = _Translations$misskey$achievements_$types_$notes100000_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$login3_$ca_ES login3_ = _Translations$misskey$achievements_$types_$login3_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$login7_$ca_ES login7_ = _Translations$misskey$achievements_$types_$login7_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$login15_$ca_ES login15_ = _Translations$misskey$achievements_$types_$login15_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$login30_$ca_ES login30_ = _Translations$misskey$achievements_$types_$login30_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$login60_$ca_ES login60_ = _Translations$misskey$achievements_$types_$login60_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$login100_$ca_ES login100_ = _Translations$misskey$achievements_$types_$login100_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$login200_$ca_ES login200_ = _Translations$misskey$achievements_$types_$login200_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$login300_$ca_ES login300_ = _Translations$misskey$achievements_$types_$login300_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$login400_$ca_ES login400_ = _Translations$misskey$achievements_$types_$login400_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$login500_$ca_ES login500_ = _Translations$misskey$achievements_$types_$login500_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$login600_$ca_ES login600_ = _Translations$misskey$achievements_$types_$login600_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$login700_$ca_ES login700_ = _Translations$misskey$achievements_$types_$login700_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$login800_$ca_ES login800_ = _Translations$misskey$achievements_$types_$login800_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$login900_$ca_ES login900_ = _Translations$misskey$achievements_$types_$login900_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$login1000_$ca_ES login1000_ = _Translations$misskey$achievements_$types_$login1000_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$noteClipped1_$ca_ES noteClipped1_ = _Translations$misskey$achievements_$types_$noteClipped1_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$noteFavorited1_$ca_ES noteFavorited1_ = _Translations$misskey$achievements_$types_$noteFavorited1_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$myNoteFavorited1_$ca_ES myNoteFavorited1_ = _Translations$misskey$achievements_$types_$myNoteFavorited1_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$profileFilled_$ca_ES profileFilled_ = _Translations$misskey$achievements_$types_$profileFilled_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$markedAsCat_$ca_ES markedAsCat_ = _Translations$misskey$achievements_$types_$markedAsCat_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$following1_$ca_ES following1_ = _Translations$misskey$achievements_$types_$following1_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$following10_$ca_ES following10_ = _Translations$misskey$achievements_$types_$following10_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$following50_$ca_ES following50_ = _Translations$misskey$achievements_$types_$following50_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$following100_$ca_ES following100_ = _Translations$misskey$achievements_$types_$following100_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$following300_$ca_ES following300_ = _Translations$misskey$achievements_$types_$following300_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers1_$ca_ES followers1_ = _Translations$misskey$achievements_$types_$followers1_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers10_$ca_ES followers10_ = _Translations$misskey$achievements_$types_$followers10_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers50_$ca_ES followers50_ = _Translations$misskey$achievements_$types_$followers50_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers100_$ca_ES followers100_ = _Translations$misskey$achievements_$types_$followers100_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers300_$ca_ES followers300_ = _Translations$misskey$achievements_$types_$followers300_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers500_$ca_ES followers500_ = _Translations$misskey$achievements_$types_$followers500_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers1000_$ca_ES followers1000_ = _Translations$misskey$achievements_$types_$followers1000_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$collectAchievements30_$ca_ES collectAchievements30_ = _Translations$misskey$achievements_$types_$collectAchievements30_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$viewAchievements3min_$ca_ES viewAchievements3min_ = _Translations$misskey$achievements_$types_$viewAchievements3min_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$iLoveMisskey_$ca_ES iLoveMisskey_ = _Translations$misskey$achievements_$types_$iLoveMisskey_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$foundTreasure_$ca_ES foundTreasure_ = _Translations$misskey$achievements_$types_$foundTreasure_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$client30min_$ca_ES client30min_ = _Translations$misskey$achievements_$types_$client30min_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$client60min_$ca_ES client60min_ = _Translations$misskey$achievements_$types_$client60min_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$noteDeletedWithin1min_$ca_ES noteDeletedWithin1min_ = _Translations$misskey$achievements_$types_$noteDeletedWithin1min_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$postedAtLateNight_$ca_ES postedAtLateNight_ = _Translations$misskey$achievements_$types_$postedAtLateNight_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$postedAt0min0sec_$ca_ES postedAt0min0sec_ = _Translations$misskey$achievements_$types_$postedAt0min0sec_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$selfQuote_$ca_ES selfQuote_ = _Translations$misskey$achievements_$types_$selfQuote_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$htl20npm_$ca_ES htl20npm_ = _Translations$misskey$achievements_$types_$htl20npm_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$viewInstanceChart_$ca_ES viewInstanceChart_ = _Translations$misskey$achievements_$types_$viewInstanceChart_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$outputHelloWorldOnScratchpad_$ca_ES outputHelloWorldOnScratchpad_ = _Translations$misskey$achievements_$types_$outputHelloWorldOnScratchpad_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$open3windows_$ca_ES open3windows_ = _Translations$misskey$achievements_$types_$open3windows_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$driveFolderCircularReference_$ca_ES driveFolderCircularReference_ = _Translations$misskey$achievements_$types_$driveFolderCircularReference_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$reactWithoutRead_$ca_ES reactWithoutRead_ = _Translations$misskey$achievements_$types_$reactWithoutRead_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$clickedClickHere_$ca_ES clickedClickHere_ = _Translations$misskey$achievements_$types_$clickedClickHere_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$justPlainLucky_$ca_ES justPlainLucky_ = _Translations$misskey$achievements_$types_$justPlainLucky_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$setNameToSyuilo_$ca_ES setNameToSyuilo_ = _Translations$misskey$achievements_$types_$setNameToSyuilo_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$ca_ES passedSinceAccountCreated1_ = _Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$ca_ES passedSinceAccountCreated2_ = _Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$ca_ES passedSinceAccountCreated3_ = _Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$loggedInOnBirthday_$ca_ES loggedInOnBirthday_ = _Translations$misskey$achievements_$types_$loggedInOnBirthday_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$ca_ES loggedInOnNewYearsDay_ = _Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$cookieClicked_$ca_ES cookieClicked_ = _Translations$misskey$achievements_$types_$cookieClicked_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$brainDiver_$ca_ES brainDiver_ = _Translations$misskey$achievements_$types_$brainDiver_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$smashTestNotificationButton_$ca_ES smashTestNotificationButton_ = _Translations$misskey$achievements_$types_$smashTestNotificationButton_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$tutorialCompleted_$ca_ES tutorialCompleted_ = _Translations$misskey$achievements_$types_$tutorialCompleted_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$bubbleGameExplodingHead_$ca_ES bubbleGameExplodingHead_ = _Translations$misskey$achievements_$types_$bubbleGameExplodingHead_$ca_ES._(_root);
	@override late final _Translations$misskey$achievements_$types_$bubbleGameDoubleExplodingHead_$ca_ES bubbleGameDoubleExplodingHead_ = _Translations$misskey$achievements_$types_$bubbleGameDoubleExplodingHead_$ca_ES._(_root);
}

// Path: misskey.role_.priority_
class _Translations$misskey$role_$priority_$ca_ES extends Translations$misskey$role_$priority_$en_US {
	_Translations$misskey$role_$priority_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get low => 'Baixa';
	@override String get middle => 'Mitjà';
	@override String get high => 'Alta';
}

// Path: misskey.role_.options_
class _Translations$misskey$role_$options_$ca_ES extends Translations$misskey$role_$options_$en_US {
	_Translations$misskey$role_$options_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
	@override String get maxFileSize_caption => 'Pot haver-hi la possibilitat que existeixin altres opcions de configuració de l\'etapa anterior, com podria ser el proxy invers i la CDN.';
	@override String maxFileSize_caption2({required Object max}) => 'La configuració de la mida màxima de fitxer per a tot el servidor és ${max}. Per permetre la pujada de fitxers més grans, si us plau, canvieu aquesta opció al fitxer de configuració de Misskey.';
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
	@override String get canSearchUsers => 'Pot cercar usuaris';
	@override String get canUseTranslator => 'Pot fer servir el traductor';
	@override String get canCreateChannel => 'Previsualitzant el tema';
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
	@override String get scheduledNoteLimit => 'Màxim nombre de notes programades que es poden crear simultàniament';
	@override String get watermarkAvailable => 'Pots fer servir la marca d\'aigua';
}

// Path: misskey.role_.condition_
class _Translations$misskey$role_$condition_$ca_ES extends Translations$misskey$role_$condition_$en_US {
	_Translations$misskey$role_$condition_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$email_$follow_$ca_ES extends Translations$misskey$email_$follow_$en_US {
	_Translations$misskey$email_$follow_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tens un nou seguidor';
}

// Path: misskey.email_.receiveFollowRequest_
class _Translations$misskey$email_$receiveFollowRequest_$ca_ES extends Translations$misskey$email_$receiveFollowRequest_$en_US {
	_Translations$misskey$email_$receiveFollowRequest_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Has rebut una sol·licitud  de seguiment';
}

// Path: misskey.theme_.keys
class _Translations$misskey$theme_$keys$ca_ES extends Translations$misskey$theme_$keys$en_US {
	_Translations$misskey$theme_$keys$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$widgets_$userList_$ca_ES extends Translations$misskey$widgets_$userList_$en_US {
	_Translations$misskey$widgets_$userList_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Tria una llista';
}

// Path: misskey.widgetOptions_.button_
class _Translations$misskey$widgetOptions_$button_$ca_ES extends Translations$misskey$widgetOptions_$button_$en_US {
	_Translations$misskey$widgetOptions_$button_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get colored => 'Colorit';
}

// Path: misskey.widgetOptions_.clock_
class _Translations$misskey$widgetOptions_$clock_$ca_ES extends Translations$misskey$widgetOptions_$clock_$en_US {
	_Translations$misskey$widgetOptions_$clock_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get size => 'Mida';
	@override String get thickness => 'Amplada de l\'agulla ';
	@override String get thicknessThin => 'Esvelt ';
	@override String get thicknessMedium => 'Normal';
	@override String get thicknessThick => 'Gruixut ';
	@override String get graduations => 'Marques de l\'esfera ';
	@override String get graduationDots => 'Punt';
	@override String get graduationArabic => 'Nombres àrabs ';
	@override String get fadeGraduations => 'Efecte gradient ';
	@override String get sAnimation => 'Animació de la maneta dels segons';
	@override String get sAnimationElastic => 'Real';
	@override String get sAnimationEaseOut => 'Suau';
	@override String get twentyFour => 'Format 24 hores';
	@override String get labelTime => 'Temps';
	@override String get labelTz => 'Fus horari';
	@override String get labelTimeAndTz => 'Hora i fus horari';
	@override String get timezone => 'Fus horari';
	@override String get showMs => 'Mostrar mil·lisegons';
	@override String get showLabel => 'Mostrar etiqueta';
}

// Path: misskey.widgetOptions_.jobQueue_
class _Translations$misskey$widgetOptions_$jobQueue_$ca_ES extends Translations$misskey$widgetOptions_$jobQueue_$en_US {
	_Translations$misskey$widgetOptions_$jobQueue_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get sound => 'Reprodueix so';
}

// Path: misskey.widgetOptions_.rss_
class _Translations$misskey$widgetOptions_$rss_$ca_ES extends Translations$misskey$widgetOptions_$rss_$en_US {
	_Translations$misskey$widgetOptions_$rss_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get url => 'URL del canal RSS';
	@override String get refreshIntervalSec => 'Interval d\'actualitzacions (segons)';
	@override String get maxEntries => 'Nombre màxim d\'entrades a mostrar';
}

// Path: misskey.widgetOptions_.rssTicker_
class _Translations$misskey$widgetOptions_$rssTicker_$ca_ES extends Translations$misskey$widgetOptions_$rssTicker_$en_US {
	_Translations$misskey$widgetOptions_$rssTicker_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get shuffle => 'Visualització aleatòria ';
	@override String get duration => 'Velocitat desplaçament bàner informatiu ';
	@override String get reverse => 'Desplaçament contrari';
}

// Path: misskey.widgetOptions_.birthdayFollowings_
class _Translations$misskey$widgetOptions_$birthdayFollowings_$ca_ES extends Translations$misskey$widgetOptions_$birthdayFollowings_$en_US {
	_Translations$misskey$widgetOptions_$birthdayFollowings_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get period => 'Període';
}

// Path: misskey.postForm_.howToUse_
class _Translations$misskey$postForm_$howToUse_$ca_ES extends Translations$misskey$postForm_$howToUse_$en_US {
	_Translations$misskey$postForm_$howToUse_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get content_title => 'Cos principal';
	@override String get content_description => 'Introdueix el contingut que vols publicar.';
	@override String get toolbar_title => 'Barra d\'eines ';
	@override String get toolbar_description => 'Pots adjuntar arxius o enquestes, afegir anotacions o etiquetes i inserir emojis o mencions.';
	@override String get account_title => 'Menú del compte';
	@override String get account_description => 'Pots anar canviant de comptes per publicar o veure una llista d\'esborranys i les publicacions programades del teu compte.';
	@override String get visibility_title => 'Visibilitat';
	@override String get visibility_description => 'Pots configurar la visibilitat de les teves notes.';
	@override String get menu_title => 'Menú';
	@override String get menu_description => 'Pots fer altres accions com desar esborranys, programar publicacions i configurar reaccions.';
	@override String get submit_title => 'Botó per publicar';
	@override String get submit_description => 'Publica les teves notes. També pots fer servir Ctrl + Enter / Cmd + Enter';
}

// Path: misskey.postForm_.placeholders_
class _Translations$misskey$postForm_$placeholders_$ca_ES extends Translations$misskey$postForm_$placeholders_$en_US {
	_Translations$misskey$postForm_$placeholders_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$pages_$blocks$ca_ES extends Translations$misskey$pages_$blocks$en_US {
	_Translations$misskey$pages_$blocks$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
	@override late final _Translations$misskey$pages_$blocks$note_$ca_ES note_ = _Translations$misskey$pages_$blocks$note_$ca_ES._(_root);
}

// Path: misskey.notification_.types_
class _Translations$misskey$notification_$types_$ca_ES extends Translations$misskey$notification_$types_$en_US {
	_Translations$misskey$notification_$types_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
	@override String get scheduledNotePosted => 'Nota programada amb èxit ';
	@override String get scheduledNotePostFailed => 'Ha fallat la programació de la nota';
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
class _Translations$misskey$notification_$actions_$ca_ES extends Translations$misskey$notification_$actions_$en_US {
	_Translations$misskey$notification_$actions_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'També et segueix';
	@override String get reply => 'Respondre';
	@override String get renote => 'Impulsar';
}

// Path: misskey.deck_.howToUse_
class _Translations$misskey$deck_$howToUse_$ca_ES extends Translations$misskey$deck_$howToUse_$en_US {
	_Translations$misskey$deck_$howToUse_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get addColumn_title => 'Afegir columna';
	@override String get addColumn_description => 'Pots seleccionar i afegir tipus de columnes.';
	@override String get settings_title => 'Configuració de la interfície d\'usuari ';
	@override String get settings_description => 'Pots configurar la interfície d\'usuari amb detall.';
	@override String get switchProfile_title => 'Canviar perfil';
	@override String get switchProfile_description => 'Pots desar el disseny de la interfície d\'usuari com un perfil i anar canviant entre ells quan vulguis.';
}

// Path: misskey.deck_.columns_
class _Translations$misskey$deck_$columns_$ca_ES extends Translations$misskey$deck_$columns_$en_US {
	_Translations$misskey$deck_$columns_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
	@override String get chat => 'Xateja amb aquest usuari';
}

// Path: misskey.webhookSettings_.events_
class _Translations$misskey$webhookSettings_$events_$ca_ES extends Translations$misskey$webhookSettings_$events_$en_US {
	_Translations$misskey$webhookSettings_$events_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$webhookSettings_$systemEvents_$ca_ES extends Translations$misskey$webhookSettings_$systemEvents_$en_US {
	_Translations$misskey$webhookSettings_$systemEvents_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get abuseReport => 'Quan reps un nou informe de moderació ';
	@override String get abuseReportResolved => 'Quan resols un informe de moderació ';
	@override String get userCreated => 'Quan es crea un usuari';
	@override String get inactiveModeratorsWarning => 'Quan el compte d\'un moderador no té activitat durant un temps';
	@override String get inactiveModeratorsInvitationOnlyChanged => 'Quan el compte d\'un moderador no té activitat durant un temps, i el servidor es canvia a registre per invitacions';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _Translations$misskey$abuseReport_$notificationRecipient_$ca_ES extends Translations$misskey$abuseReport_$notificationRecipient_$en_US {
	_Translations$misskey$abuseReport_$notificationRecipient_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get createRecipient => 'Afegeix un destinatari a l\'informe de moderació ';
	@override String get modifyRecipient => 'Editar un destinatari en l\'informe de moderació ';
	@override String get recipientType => 'Tipus de notificació ';
	@override late final _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$ca_ES recipientType_ = _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$ca_ES._(_root);
	@override String get keywords => 'Paraules clau';
	@override String get notifiedUser => 'Usuaris que s\'han de notificar ';
	@override String get notifiedWebhook => 'Webhook que s\'ha de fer servir';
	@override String get deleteConfirm => 'Segur que vols esborrar el destinatari de l\'informe de moderació?';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _Translations$misskey$externalResourceInstaller_$plugin_$ca_ES extends Translations$misskey$externalResourceInstaller_$plugin_$en_US {
	_Translations$misskey$externalResourceInstaller_$plugin_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vols instal·lar aquest afegit?';
}

// Path: misskey.externalResourceInstaller_.theme_
class _Translations$misskey$externalResourceInstaller_$theme_$ca_ES extends Translations$misskey$externalResourceInstaller_$theme_$en_US {
	_Translations$misskey$externalResourceInstaller_$theme_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vols instal·lar aquest tema?';
}

// Path: misskey.externalResourceInstaller_.meta_
class _Translations$misskey$externalResourceInstaller_$meta_$ca_ES extends Translations$misskey$externalResourceInstaller_$meta_$en_US {
	_Translations$misskey$externalResourceInstaller_$meta_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get base => 'Paleta de colors base';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _Translations$misskey$externalResourceInstaller_$vendorInfo_$ca_ES extends Translations$misskey$externalResourceInstaller_$vendorInfo_$en_US {
	_Translations$misskey$externalResourceInstaller_$vendorInfo_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informació del distribuïdor ';
	@override String get endpoint => 'Punt final referenciat';
	@override String get hashVerify => 'Verificació d\'integritat ';
}

// Path: misskey.externalResourceInstaller_.errors_
class _Translations$misskey$externalResourceInstaller_$errors_$ca_ES extends Translations$misskey$externalResourceInstaller_$errors_$en_US {
	_Translations$misskey$externalResourceInstaller_$errors_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$externalResourceInstaller_$errors_$invalidParams_$ca_ES invalidParams_ = _Translations$misskey$externalResourceInstaller_$errors_$invalidParams_$ca_ES._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$errors_$resourceTypeNotSupported_$ca_ES resourceTypeNotSupported_ = _Translations$misskey$externalResourceInstaller_$errors_$resourceTypeNotSupported_$ca_ES._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$errors_$failedToFetch_$ca_ES failedToFetch_ = _Translations$misskey$externalResourceInstaller_$errors_$failedToFetch_$ca_ES._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$errors_$hashUnmatched_$ca_ES hashUnmatched_ = _Translations$misskey$externalResourceInstaller_$errors_$hashUnmatched_$ca_ES._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$errors_$pluginParseFailed_$ca_ES pluginParseFailed_ = _Translations$misskey$externalResourceInstaller_$errors_$pluginParseFailed_$ca_ES._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$errors_$pluginInstallFailed_$ca_ES pluginInstallFailed_ = _Translations$misskey$externalResourceInstaller_$errors_$pluginInstallFailed_$ca_ES._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$errors_$themeParseFailed_$ca_ES themeParseFailed_ = _Translations$misskey$externalResourceInstaller_$errors_$themeParseFailed_$ca_ES._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$errors_$themeInstallFailed_$ca_ES themeInstallFailed_ = _Translations$misskey$externalResourceInstaller_$errors_$themeInstallFailed_$ca_ES._(_root);
}

// Path: misskey.dataSaver_.media_
class _Translations$misskey$dataSaver_$media_$ca_ES extends Translations$misskey$dataSaver_$media_$en_US {
	_Translations$misskey$dataSaver_$media_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Carregant multimèdia ';
	@override String get description => 'Desactiva la càrrega automàtica d\'imatges i vídeos. Les imatges i els vídeos amagats es carregaran quan es faci clic a sobre.';
}

// Path: misskey.dataSaver_.avatar_
class _Translations$misskey$dataSaver_$avatar_$ca_ES extends Translations$misskey$dataSaver_$avatar_$en_US {
	_Translations$misskey$dataSaver_$avatar_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Avatars animats';
	@override String get description => 'Detenir l\'animació dels avatars animats. Les imatges animades solen tenir un pes més gran que les imatges normals, reduint el tràfic disponible.';
}

// Path: misskey.dataSaver_.urlPreviewThumbnail_
class _Translations$misskey$dataSaver_$urlPreviewThumbnail_$ca_ES extends Translations$misskey$dataSaver_$urlPreviewThumbnail_$en_US {
	_Translations$misskey$dataSaver_$urlPreviewThumbnail_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Amagar les miniatures de la vista prèvia d\'URL';
	@override String get description => 'Les imatges en miniatura de la vista prèvia d\'URL ja no es carreguen';
}

// Path: misskey.dataSaver_.disableUrlPreview_
class _Translations$misskey$dataSaver_$disableUrlPreview_$ca_ES extends Translations$misskey$dataSaver_$disableUrlPreview_$en_US {
	_Translations$misskey$dataSaver_$disableUrlPreview_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desactivar la vista prèvia d\'URL';
	@override String get description => 'Desactiva la funció de previsualització d\'URL. A diferència de les imatges en miniatura soles, això redueix la càrrega de la mateixa informació vinculada.';
}

// Path: misskey.dataSaver_.code_
class _Translations$misskey$dataSaver_$code_$ca_ES extends Translations$misskey$dataSaver_$code_$en_US {
	_Translations$misskey$dataSaver_$code_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ressaltat del codi ';
	@override String get description => 'Quan s\'utilitza codi MFM, no es llegeix fins que es copiï. En els punts destacats del codi s\'han de llegir els fitxers definits per a cada llengua que resulti alt, però no es poden llegir automàticament, per la qual cosa es poden reduir les quantitats de comunicació.';
}

// Path: misskey.gridComponent_.error_
class _Translations$misskey$gridComponent_$error_$ca_ES extends Translations$misskey$gridComponent_$error_$en_US {
	_Translations$misskey$gridComponent_$error_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get requiredValue => 'Aquest camp és obligatori';
	@override String get columnTypeNotSupport => 'La validació d\'expressions regulars només s\'admet per columnes de tipus text.';
	@override String patternNotMatch({required Object pattern}) => 'Aquest valor no coincideix amb ${pattern}';
	@override String get notUnique => 'Aquest valor ha de ser únic ';
}

// Path: misskey.customEmojisManager_.gridCommon_
class _Translations$misskey$customEmojisManager_$gridCommon_$ca_ES extends Translations$misskey$customEmojisManager_$gridCommon_$en_US {
	_Translations$misskey$customEmojisManager_$gridCommon_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$customEmojisManager_$logs_$ca_ES extends Translations$misskey$customEmojisManager_$logs_$en_US {
	_Translations$misskey$customEmojisManager_$logs_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get showSuccessLogSwitch => 'Mostrar el registre d\'èxit ';
	@override String get failureLogNothing => 'No hi ha registres de fallades.';
	@override String get logNothing => 'No hi ha registres.';
}

// Path: misskey.customEmojisManager_.remote_
class _Translations$misskey$customEmojisManager_$remote_$ca_ES extends Translations$misskey$customEmojisManager_$remote_$en_US {
	_Translations$misskey$customEmojisManager_$remote_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$customEmojisManager_$local_$ca_ES extends Translations$misskey$customEmojisManager_$local_$en_US {
	_Translations$misskey$customEmojisManager_$local_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get tabTitleList => 'Llistar els Emojis registrats';
	@override String get tabTitleRegister => 'Registre d\'Emojis';
	@override late final _Translations$misskey$customEmojisManager_$local_$list_$ca_ES list_ = _Translations$misskey$customEmojisManager_$local_$list_$ca_ES._(_root);
	@override late final _Translations$misskey$customEmojisManager_$local_$register_$ca_ES register_ = _Translations$misskey$customEmojisManager_$local_$register_$ca_ES._(_root);
}

// Path: misskey.remoteLookupErrors_.federationNotAllowed_
class _Translations$misskey$remoteLookupErrors_$federationNotAllowed_$ca_ES extends Translations$misskey$remoteLookupErrors_$federationNotAllowed_$en_US {
	_Translations$misskey$remoteLookupErrors_$federationNotAllowed_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No es pot establir connexió amb aquest servidor';
	@override String get description => 'És possible que s\'hagi desactivat la comunicació amb aquest servidor o que hagi estat bloquejat.\nPosa\'t en contacte amb l\'administrador del servidor.';
}

// Path: misskey.remoteLookupErrors_.uriInvalid_
class _Translations$misskey$remoteLookupErrors_$uriInvalid_$ca_ES extends Translations$misskey$remoteLookupErrors_$uriInvalid_$en_US {
	_Translations$misskey$remoteLookupErrors_$uriInvalid_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'L\'adreça és incorrecte';
	@override String get description => 'Hi ha un problema amb l\'adreça introduïda; comprova que no hagis escrit caràcters que no es puguin fer servir.';
}

// Path: misskey.remoteLookupErrors_.requestFailed_
class _Translations$misskey$remoteLookupErrors_$requestFailed_$ca_ES extends Translations$misskey$remoteLookupErrors_$requestFailed_$en_US {
	_Translations$misskey$remoteLookupErrors_$requestFailed_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'La sol·licitud a fallat';
	@override String get description => 'La comunicació amb aquest servidor a fallat. És possible que l\'altre servidor no funcioni. Comprova també que no has posat una adreça no vàlida o inexistent.';
}

// Path: misskey.remoteLookupErrors_.responseInvalid_
class _Translations$misskey$remoteLookupErrors_$responseInvalid_$ca_ES extends Translations$misskey$remoteLookupErrors_$responseInvalid_$en_US {
	_Translations$misskey$remoteLookupErrors_$responseInvalid_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'La resposta no és correcta ';
	@override String get description => 'Hem pogut comunicar-nos amb aquest servidor, però les dades rebudes no són correctes.';
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _Translations$misskey$remoteLookupErrors_$noSuchObject_$ca_ES extends Translations$misskey$remoteLookupErrors_$noSuchObject_$en_US {
	_Translations$misskey$remoteLookupErrors_$noSuchObject_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No s\'ha trobat';
	@override String get description => 'No es pot trobar el recurs sol·licitat, si us plau comprova l\'adreça una altra vegada.';
}

// Path: misskey.captcha_.error_
class _Translations$misskey$captcha_$error_$ca_ES extends Translations$misskey$captcha_$error_$en_US {
	_Translations$misskey$captcha_$error_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$captcha_$error_$requestFailed_$ca_ES requestFailed_ = _Translations$misskey$captcha_$error_$requestFailed_$ca_ES._(_root);
	@override late final _Translations$misskey$captcha_$error_$verificationFailed_$ca_ES verificationFailed_ = _Translations$misskey$captcha_$error_$verificationFailed_$ca_ES._(_root);
	@override late final _Translations$misskey$captcha_$error_$unknown_$ca_ES unknown_ = _Translations$misskey$captcha_$error_$unknown_$ca_ES._(_root);
}

// Path: misskey.serverSetupWizard_.use_
class _Translations$misskey$serverSetupWizard_$use_$ca_ES extends Translations$misskey$serverSetupWizard_$use_$en_US {
	_Translations$misskey$serverSetupWizard_$use_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$serverSetupWizard_$scale_$ca_ES extends Translations$misskey$serverSetupWizard_$scale_$en_US {
	_Translations$misskey$serverSetupWizard_$scale_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get small => 'Menys de 100 (petita escala)';
	@override String get medium => 'Més de 100 i menys de 1000 (mida mitjana)';
	@override String get large => 'Més de 1000 persones (gran escala)';
}

// Path: misskey.serverSetupWizard_.donationRequest_
class _Translations$misskey$serverSetupWizard_$donationRequest_$ca_ES extends Translations$misskey$serverSetupWizard_$donationRequest_$en_US {
	_Translations$misskey$serverSetupWizard_$donationRequest_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Misskey és un programari gratuït fet per voluntaris.';
	@override String get text2 => 'Si ho desitges, agrairíem molt la teva donació per poder seguir desenvolupant el projecte.';
	@override String get text3 => 'També hi ha privilegis especials per als donants!';
}

// Path: misskey.imageEffector_.fxs_
class _Translations$misskey$imageEffector_$fxs_$ca_ES extends Translations$misskey$imageEffector_$fxs_$en_US {
	_Translations$misskey$imageEffector_$fxs_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get chromaticAberration => 'Aberració cromàtica';
	@override String get glitch => 'Glitch';
	@override String get mirror => 'Mirall';
	@override String get invert => 'Inversió cromàtica ';
	@override String get grayscale => 'Monocrom ';
	@override String get blur => 'Desenfocament';
	@override String get pixelate => 'Mosaic';
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
	@override String get fill => 'Omplir';
}

// Path: misskey.imageEffector_.fxProps_
class _Translations$misskey$imageEffector_$fxProps_$ca_ES extends Translations$misskey$imageEffector_$fxProps_$en_US {
	_Translations$misskey$imageEffector_$fxProps_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get angle => 'Angle';
	@override String get scale => 'Mida';
	@override String get size => 'Mida';
	@override String get radius => 'Radi';
	@override String get samples => 'Mida de la mostra';
	@override String get offset => 'Posició ';
	@override String get color => 'Color';
	@override String get opacity => 'Opacitat';
	@override String get normalize => 'Normalitzar';
	@override String get amount => 'Quantitat';
	@override String get lightness => 'Brillantor';
	@override String get contrast => 'Contrast';
	@override String get hue => 'Tonalitat';
	@override String get brightness => 'Brillantor';
	@override String get saturation => 'Saturació';
	@override String get max => 'Màxim';
	@override String get min => 'Mínim';
	@override String get direction => 'Direcció ';
	@override String get phase => 'Fase';
	@override String get frequency => 'Freqüència ';
	@override String get strength => 'Intensitat';
	@override String get glitchChannelShift => 'Canvi de canal ';
	@override String get seed => 'Llavors';
	@override String get redComponent => 'Component vermell';
	@override String get greenComponent => 'Component verd';
	@override String get blueComponent => 'Component blau';
	@override String get threshold => 'Llindar';
	@override String get centerX => 'Centre de X';
	@override String get centerY => 'Centre de Y';
	@override String get density => 'Densitat';
	@override String get zoomLinesOutlineThickness => 'Amplada de les vores exteriors';
	@override String get zoomLinesMaskSize => 'Diàmetre del centre';
	@override String get circle => 'Cercle';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _Translations$misskey$initialTutorial_$postNote_$visibility_$ca_ES extends Translations$misskey$initialTutorial_$postNote_$visibility_$en_US {
	_Translations$misskey$initialTutorial_$postNote_$visibility_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get description => 'Pots limitar qui pot veure les teves notes.';
	@override String get public => 'La teva nota serà visible per a tots els usuaris.';
	@override String get home => 'Publicar només a línia de temps d\'Inici. La gent que visiti el teu perfil o mitjançant les remotes també la podran veure.';
	@override String get followers => 'Només visible per a seguidors. Només els teus seguidors la podran veure i ningú més. Ningú més podrà fer impulsos.';
	@override String get direct => 'Només visible per a alguns seguidors, el destinatari rebre una notificació. Es pot fer servir com una alternativa als missatges directes.';
	@override String get doNotSendConfidencialOnDirect1 => 'Tingues cura quan enviïs informació sensible.';
	@override String get doNotSendConfidencialOnDirect2 => 'Els administradors del servidor poden veure tot el que escrius. Ves compte quan enviïs informació sensible en enviar notes directes a altres usuaris en servidors de poca confiança.';
	@override String get localOnly => 'Publicar amb aquesta opció activada farà que la nota no federi amb altres servidors. Els usuaris d\'altres servidors no podran veure la nota directament, sense importar les opcions de visualització.';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _Translations$misskey$initialTutorial_$postNote_$cw_$ca_ES extends Translations$misskey$initialTutorial_$postNote_$cw_$en_US {
	_Translations$misskey$initialTutorial_$postNote_$cw_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Avís de Contingut (CW)';
	@override String get description => 'En comptes del cos de la nota es mostrarà el que s\'escrigui al camp de \'comentaris\'. Fent clic a \'Llegir més\' es mostrarà el cos.';
	@override late final _Translations$misskey$initialTutorial_$postNote_$cw_$exampleNote_$ca_ES exampleNote_ = _Translations$misskey$initialTutorial_$postNote_$cw_$exampleNote_$ca_ES._(_root);
	@override String get useCases => 'Això es fa servir per seguir normes del servidor sobre certes notes o per ocultar contingut sensible O revelador.';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$exampleNote_$ca_ES extends Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$exampleNote_$en_US {
	_Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$exampleNote_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get note => 'Oops! L\'he fet bona en obrir la tapa de Nocilla...';
}

// Path: misskey.achievements_.types_.notes1_
class _Translations$misskey$achievements_$types_$notes1_$ca_ES extends Translations$misskey$achievements_$types_$notes1_$en_US {
	_Translations$misskey$achievements_$types_$notes1_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aquí, configurant el meu msky';
	@override String get description => 'Publica la teva primera Nota';
	@override String get flavor => 'Passa-t\'ho bé fent servir Miskey!';
}

// Path: misskey.achievements_.types_.notes10_
class _Translations$misskey$achievements_$types_$notes10_$ca_ES extends Translations$misskey$achievements_$types_$notes10_$en_US {
	_Translations$misskey$achievements_$types_$notes10_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Algunes notes';
	@override String get description => 'Publica 10 notes';
}

// Path: misskey.achievements_.types_.notes100_
class _Translations$misskey$achievements_$types_$notes100_$ca_ES extends Translations$misskey$achievements_$types_$notes100_$en_US {
	_Translations$misskey$achievements_$types_$notes100_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un piló de notes';
	@override String get description => 'Publica 100 notes';
}

// Path: misskey.achievements_.types_.notes500_
class _Translations$misskey$achievements_$types_$notes500_$ca_ES extends Translations$misskey$achievements_$types_$notes500_$en_US {
	_Translations$misskey$achievements_$types_$notes500_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cobert de notes';
	@override String get description => 'Publica 500 notes';
}

// Path: misskey.achievements_.types_.notes1000_
class _Translations$misskey$achievements_$types_$notes1000_$ca_ES extends Translations$misskey$achievements_$types_$notes1000_$en_US {
	_Translations$misskey$achievements_$types_$notes1000_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un piló de notes';
	@override String get description => '1 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes5000_
class _Translations$misskey$achievements_$types_$notes5000_$ca_ES extends Translations$misskey$achievements_$types_$notes5000_$en_US {
	_Translations$misskey$achievements_$types_$notes5000_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desbordament de notes';
	@override String get description => '5 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes10000_
class _Translations$misskey$achievements_$types_$notes10000_$ca_ES extends Translations$misskey$achievements_$types_$notes10000_$en_US {
	_Translations$misskey$achievements_$types_$notes10000_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supernota';
	@override String get description => '10 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes20000_
class _Translations$misskey$achievements_$types_$notes20000_$ca_ES extends Translations$misskey$achievements_$types_$notes20000_$en_US {
	_Translations$misskey$achievements_$types_$notes20000_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Necessito... Més... Notes!';
	@override String get description => '20 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes30000_
class _Translations$misskey$achievements_$types_$notes30000_$ca_ES extends Translations$misskey$achievements_$types_$notes30000_$en_US {
	_Translations$misskey$achievements_$types_$notes30000_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notes notes notes!';
	@override String get description => '30 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes40000_
class _Translations$misskey$achievements_$types_$notes40000_$ca_ES extends Translations$misskey$achievements_$types_$notes40000_$en_US {
	_Translations$misskey$achievements_$types_$notes40000_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fàbrica de notes';
	@override String get description => '40 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes50000_
class _Translations$misskey$achievements_$types_$notes50000_$ca_ES extends Translations$misskey$achievements_$types_$notes50000_$en_US {
	_Translations$misskey$achievements_$types_$notes50000_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Planeta de notes';
	@override String get description => '50 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes60000_
class _Translations$misskey$achievements_$types_$notes60000_$ca_ES extends Translations$misskey$achievements_$types_$notes60000_$en_US {
	_Translations$misskey$achievements_$types_$notes60000_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quàsar de notes';
	@override String get description => '60 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes70000_
class _Translations$misskey$achievements_$types_$notes70000_$ca_ES extends Translations$misskey$achievements_$types_$notes70000_$en_US {
	_Translations$misskey$achievements_$types_$notes70000_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Forat negre de notes';
	@override String get description => '70 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes80000_
class _Translations$misskey$achievements_$types_$notes80000_$ca_ES extends Translations$misskey$achievements_$types_$notes80000_$en_US {
	_Translations$misskey$achievements_$types_$notes80000_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Galàxia de notes';
	@override String get description => '80 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes90000_
class _Translations$misskey$achievements_$types_$notes90000_$ca_ES extends Translations$misskey$achievements_$types_$notes90000_$en_US {
	_Translations$misskey$achievements_$types_$notes90000_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Univers de notes';
	@override String get description => '90 000 notes publicades';
}

// Path: misskey.achievements_.types_.notes100000_
class _Translations$misskey$achievements_$types_$notes100000_$ca_ES extends Translations$misskey$achievements_$types_$notes100000_$en_US {
	_Translations$misskey$achievements_$types_$notes100000_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => '100 000 notes publicades';
	@override String get flavor => 'Segur que tens moltes coses a dir?';
}

// Path: misskey.achievements_.types_.login3_
class _Translations$misskey$achievements_$types_$login3_$ca_ES extends Translations$misskey$achievements_$types_$login3_$en_US {
	_Translations$misskey$achievements_$types_$login3_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiant I';
	@override String get description => 'Vas iniciar sessió fa tres dies';
	@override String get flavor => 'Des d\'avui diguem Misskist';
}

// Path: misskey.achievements_.types_.login7_
class _Translations$misskey$achievements_$types_$login7_$ca_ES extends Translations$misskey$achievements_$types_$login7_$en_US {
	_Translations$misskey$achievements_$types_$login7_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiant II';
	@override String get description => 'Vas iniciar sessió fa set dies';
	@override String get flavor => 'Ja saps com va funcionant tot?';
}

// Path: misskey.achievements_.types_.login15_
class _Translations$misskey$achievements_$types_$login15_$ca_ES extends Translations$misskey$achievements_$types_$login15_$en_US {
	_Translations$misskey$achievements_$types_$login15_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiant III';
	@override String get description => 'Vas iniciar sessió fa quinze dies';
}

// Path: misskey.achievements_.types_.login30_
class _Translations$misskey$achievements_$types_$login30_$ca_ES extends Translations$misskey$achievements_$types_$login30_$en_US {
	_Translations$misskey$achievements_$types_$login30_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist I';
	@override String get description => 'Vas iniciar sessió fa trenta dies';
}

// Path: misskey.achievements_.types_.login60_
class _Translations$misskey$achievements_$types_$login60_$ca_ES extends Translations$misskey$achievements_$types_$login60_$en_US {
	_Translations$misskey$achievements_$types_$login60_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist II';
	@override String get description => 'Vas iniciar sessió fa seixanta dies';
}

// Path: misskey.achievements_.types_.login100_
class _Translations$misskey$achievements_$types_$login100_$ca_ES extends Translations$misskey$achievements_$types_$login100_$en_US {
	_Translations$misskey$achievements_$types_$login100_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist III';
	@override String get description => 'Vas iniciar sessió fa cent dies';
	@override String get flavor => 'Misskist violent';
}

// Path: misskey.achievements_.types_.login200_
class _Translations$misskey$achievements_$types_$login200_$ca_ES extends Translations$misskey$achievements_$types_$login200_$en_US {
	_Translations$misskey$achievements_$types_$login200_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regular I';
	@override String get description => 'Vas iniciar sessió fa dos-cents dies';
}

// Path: misskey.achievements_.types_.login300_
class _Translations$misskey$achievements_$types_$login300_$ca_ES extends Translations$misskey$achievements_$types_$login300_$en_US {
	_Translations$misskey$achievements_$types_$login300_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regular II';
	@override String get description => 'Vas iniciar sessió fa tres-cents dies';
}

// Path: misskey.achievements_.types_.login400_
class _Translations$misskey$achievements_$types_$login400_$ca_ES extends Translations$misskey$achievements_$types_$login400_$en_US {
	_Translations$misskey$achievements_$types_$login400_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regular III';
	@override String get description => 'Vas iniciar sessió fa quatre-cents dies';
}

// Path: misskey.achievements_.types_.login500_
class _Translations$misskey$achievements_$types_$login500_$ca_ES extends Translations$misskey$achievements_$types_$login500_$en_US {
	_Translations$misskey$achievements_$types_$login500_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Expert I';
	@override String get description => 'Vas iniciar sessió fa cinc-cents dies';
	@override String get flavor => 'Amics, he dit massa vegades que soc un amant de les notes';
}

// Path: misskey.achievements_.types_.login600_
class _Translations$misskey$achievements_$types_$login600_$ca_ES extends Translations$misskey$achievements_$types_$login600_$en_US {
	_Translations$misskey$achievements_$types_$login600_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Expert II';
	@override String get description => 'Vas iniciar sessió fa sis-cents dies';
}

// Path: misskey.achievements_.types_.login700_
class _Translations$misskey$achievements_$types_$login700_$ca_ES extends Translations$misskey$achievements_$types_$login700_$en_US {
	_Translations$misskey$achievements_$types_$login700_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Expert III';
	@override String get description => 'Vas iniciar sessió fa set-cents dies';
}

// Path: misskey.achievements_.types_.login800_
class _Translations$misskey$achievements_$types_$login800_$ca_ES extends Translations$misskey$achievements_$types_$login800_$en_US {
	_Translations$misskey$achievements_$types_$login800_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mestre de les Notes I';
	@override String get description => 'Vas iniciar sessió fa vuit-cents dies ';
}

// Path: misskey.achievements_.types_.login900_
class _Translations$misskey$achievements_$types_$login900_$ca_ES extends Translations$misskey$achievements_$types_$login900_$en_US {
	_Translations$misskey$achievements_$types_$login900_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mestre de les Notes II';
	@override String get description => 'Vas iniciar sessió fa nou-cents dies';
}

// Path: misskey.achievements_.types_.login1000_
class _Translations$misskey$achievements_$types_$login1000_$ca_ES extends Translations$misskey$achievements_$types_$login1000_$en_US {
	_Translations$misskey$achievements_$types_$login1000_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mestre de les Notes III';
	@override String get description => 'Vas iniciar sessió fa mil dies';
	@override String get flavor => 'Gràcies per fer servir MissKey!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _Translations$misskey$achievements_$types_$noteClipped1_$ca_ES extends Translations$misskey$achievements_$types_$noteClipped1_$en_US {
	_Translations$misskey$achievements_$types_$noteClipped1_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'He de retallar-te!';
	@override String get description => 'Retalla la teva primera nota';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _Translations$misskey$achievements_$types_$noteFavorited1_$ca_ES extends Translations$misskey$achievements_$types_$noteFavorited1_$en_US {
	_Translations$misskey$achievements_$types_$noteFavorited1_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quan miro les estrelles';
	@override String get description => 'La primera vegada que vaig registrar el meu favorit';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _Translations$misskey$achievements_$types_$myNoteFavorited1_$ca_ES extends Translations$misskey$achievements_$types_$myNoteFavorited1_$en_US {
	_Translations$misskey$achievements_$types_$myNoteFavorited1_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vull una estrella';
	@override String get description => 'La meva nota va ser registrada com favorita per una de les altres persones';
}

// Path: misskey.achievements_.types_.profileFilled_
class _Translations$misskey$achievements_$types_$profileFilled_$ca_ES extends Translations$misskey$achievements_$types_$profileFilled_$en_US {
	_Translations$misskey$achievements_$types_$profileFilled_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estic a punt';
	@override String get description => 'Vaig fer la configuració de perfil';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _Translations$misskey$achievements_$types_$markedAsCat_$ca_ES extends Translations$misskey$achievements_$types_$markedAsCat_$en_US {
	_Translations$misskey$achievements_$types_$markedAsCat_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Soc un gat';
	@override String get description => 'He establert el meu compte com si fos un Gat';
	@override String get flavor => 'Encara no tinc nom';
}

// Path: misskey.achievements_.types_.following1_
class _Translations$misskey$achievements_$types_$following1_$ca_ES extends Translations$misskey$achievements_$types_$following1_$en_US {
	_Translations$misskey$achievements_$types_$following1_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'És el meu primer seguiment';
	@override String get description => 'És la primera vegada que et segueixo';
}

// Path: misskey.achievements_.types_.following10_
class _Translations$misskey$achievements_$types_$following10_$ca_ES extends Translations$misskey$achievements_$types_$following10_$en_US {
	_Translations$misskey$achievements_$types_$following10_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Segueix-me... Segueix-me...';
	@override String get description => 'Seguir 10 usuaris';
}

// Path: misskey.achievements_.types_.following50_
class _Translations$misskey$achievements_$types_$following50_$ca_ES extends Translations$misskey$achievements_$types_$following50_$en_US {
	_Translations$misskey$achievements_$types_$following50_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Molts amics';
	@override String get description => 'Seguir 50 comptes';
}

// Path: misskey.achievements_.types_.following100_
class _Translations$misskey$achievements_$types_$following100_$ca_ES extends Translations$misskey$achievements_$types_$following100_$en_US {
	_Translations$misskey$achievements_$types_$following100_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => '100 amics';
	@override String get description => 'Segueixes 100 comptes';
}

// Path: misskey.achievements_.types_.following300_
class _Translations$misskey$achievements_$types_$following300_$ca_ES extends Translations$misskey$achievements_$types_$following300_$en_US {
	_Translations$misskey$achievements_$types_$following300_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobrecàrrega d\'amics';
	@override String get description => 'Segueixes 300 comptes';
}

// Path: misskey.achievements_.types_.followers1_
class _Translations$misskey$achievements_$types_$followers1_$ca_ES extends Translations$misskey$achievements_$types_$followers1_$en_US {
	_Translations$misskey$achievements_$types_$followers1_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Primer seguidor';
	@override String get description => '1 seguidor guanyat';
}

// Path: misskey.achievements_.types_.followers10_
class _Translations$misskey$achievements_$types_$followers10_$ca_ES extends Translations$misskey$achievements_$types_$followers10_$en_US {
	_Translations$misskey$achievements_$types_$followers10_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Segueix-me!';
	@override String get description => '10 seguidors guanyats';
}

// Path: misskey.achievements_.types_.followers50_
class _Translations$misskey$achievements_$types_$followers50_$ca_ES extends Translations$misskey$achievements_$types_$followers50_$en_US {
	_Translations$misskey$achievements_$types_$followers50_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Venen en manada';
	@override String get description => '50 seguidors guanyats';
}

// Path: misskey.achievements_.types_.followers100_
class _Translations$misskey$achievements_$types_$followers100_$ca_ES extends Translations$misskey$achievements_$types_$followers100_$en_US {
	_Translations$misskey$achievements_$types_$followers100_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Popular';
	@override String get description => '100 seguidors guanyats';
}

// Path: misskey.achievements_.types_.followers300_
class _Translations$misskey$achievements_$types_$followers300_$ca_ES extends Translations$misskey$achievements_$types_$followers300_$en_US {
	_Translations$misskey$achievements_$types_$followers300_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Si us plau, d\'un en un!';
	@override String get description => '300 seguidors guanyats';
}

// Path: misskey.achievements_.types_.followers500_
class _Translations$misskey$achievements_$types_$followers500_$ca_ES extends Translations$misskey$achievements_$types_$followers500_$en_US {
	_Translations$misskey$achievements_$types_$followers500_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Torre de ràdio';
	@override String get description => '500 seguidors guanyats';
}

// Path: misskey.achievements_.types_.followers1000_
class _Translations$misskey$achievements_$types_$followers1000_$ca_ES extends Translations$misskey$achievements_$types_$followers1000_$en_US {
	_Translations$misskey$achievements_$types_$followers1000_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Influenciador';
	@override String get description => '1 000 seguidors guanyats';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _Translations$misskey$achievements_$types_$collectAchievements30_$ca_ES extends Translations$misskey$achievements_$types_$collectAchievements30_$en_US {
	_Translations$misskey$achievements_$types_$collectAchievements30_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Col·leccionista d\'èxits ';
	@override String get description => 'Desbloqueja 30 assoliments';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _Translations$misskey$achievements_$types_$viewAchievements3min_$ca_ES extends Translations$misskey$achievements_$types_$viewAchievements3min_$en_US {
	_Translations$misskey$achievements_$types_$viewAchievements3min_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'M\'agraden els èxits ';
	@override String get description => 'Mira la teva llista d\'assoliments durant més de 3 minuts';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _Translations$misskey$achievements_$types_$iLoveMisskey_$ca_ES extends Translations$misskey$achievements_$types_$iLoveMisskey_$en_US {
	_Translations$misskey$achievements_$types_$iLoveMisskey_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimo Misskey';
	@override String get description => 'Publica "I ❤ #Misskey"';
	@override String get flavor => 'L\'equip de desenvolupament de Misskey agraeix el vostre suport!';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _Translations$misskey$achievements_$types_$foundTreasure_$ca_ES extends Translations$misskey$achievements_$types_$foundTreasure_$en_US {
	_Translations$misskey$achievements_$types_$foundTreasure_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'A la Recerca del Tresor';
	@override String get description => 'Has trobat el tresor amagat';
}

// Path: misskey.achievements_.types_.client30min_
class _Translations$misskey$achievements_$types_$client30min_$ca_ES extends Translations$misskey$achievements_$types_$client30min_$en_US {
	_Translations$misskey$achievements_$types_$client30min_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Parem una estona';
	@override String get description => 'Mantingues obert Misskey per 30 minuts';
}

// Path: misskey.achievements_.types_.client60min_
class _Translations$misskey$achievements_$types_$client60min_$ca_ES extends Translations$misskey$achievements_$types_$client60min_$en_US {
	_Translations$misskey$achievements_$types_$client60min_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'A totes amb Misskey';
	@override String get description => 'Mantingues Misskey obert per 60 minuts';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _Translations$misskey$achievements_$types_$noteDeletedWithin1min_$ca_ES extends Translations$misskey$achievements_$types_$noteDeletedWithin1min_$en_US {
	_Translations$misskey$achievements_$types_$noteDeletedWithin1min_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No et preocupis';
	@override String get description => 'Esborra una nota al minut de publicar-la';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _Translations$misskey$achievements_$types_$postedAtLateNight_$ca_ES extends Translations$misskey$achievements_$types_$postedAtLateNight_$en_US {
	_Translations$misskey$achievements_$types_$postedAtLateNight_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nocturn';
	@override String get description => 'Publica una nota a altes hores de la nit ';
	@override String get flavor => 'És hora d\'anar a dormir.';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _Translations$misskey$achievements_$types_$postedAt0min0sec_$ca_ES extends Translations$misskey$achievements_$types_$postedAt0min0sec_$en_US {
	_Translations$misskey$achievements_$types_$postedAt0min0sec_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rellotge xerraire';
	@override String get description => 'Publica una nota a les 0:00';
	@override String get flavor => 'Tic tac, tic tac, tic tac, DING!';
}

// Path: misskey.achievements_.types_.selfQuote_
class _Translations$misskey$achievements_$types_$selfQuote_$ca_ES extends Translations$misskey$achievements_$types_$selfQuote_$en_US {
	_Translations$misskey$achievements_$types_$selfQuote_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Autoreferència ';
	@override String get description => 'Cita una nota teva';
}

// Path: misskey.achievements_.types_.htl20npm_
class _Translations$misskey$achievements_$types_$htl20npm_$ca_ES extends Translations$misskey$achievements_$types_$htl20npm_$en_US {
	_Translations$misskey$achievements_$types_$htl20npm_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Línia de temps fluida';
	@override String get description => 'La teva línia de temps va a més de 20npm (notes per minut)';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _Translations$misskey$achievements_$types_$viewInstanceChart_$ca_ES extends Translations$misskey$achievements_$types_$viewInstanceChart_$en_US {
	_Translations$misskey$achievements_$types_$viewInstanceChart_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analista ';
	@override String get description => 'Mira els gràfics de la teva instància ';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _Translations$misskey$achievements_$types_$outputHelloWorldOnScratchpad_$ca_ES extends Translations$misskey$achievements_$types_$outputHelloWorldOnScratchpad_$en_US {
	_Translations$misskey$achievements_$types_$outputHelloWorldOnScratchpad_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hola, món!';
	@override String get description => 'Escriu "hola, món" al bloc de notes';
}

// Path: misskey.achievements_.types_.open3windows_
class _Translations$misskey$achievements_$types_$open3windows_$ca_ES extends Translations$misskey$achievements_$types_$open3windows_$en_US {
	_Translations$misskey$achievements_$types_$open3windows_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Multi finestres';
	@override String get description => 'I va obrir més de tres finestres';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _Translations$misskey$achievements_$types_$driveFolderCircularReference_$ca_ES extends Translations$misskey$achievements_$types_$driveFolderCircularReference_$en_US {
	_Translations$misskey$achievements_$types_$driveFolderCircularReference_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Consulteu la secció de bucle';
	@override String get description => 'Intenta crear carpetes recursives al Disc';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _Translations$misskey$achievements_$types_$reactWithoutRead_$ca_ES extends Translations$misskey$achievements_$types_$reactWithoutRead_$en_US {
	_Translations$misskey$achievements_$types_$reactWithoutRead_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'De veritat has llegit això?';
	@override String get description => 'Reaccions a una nota de més de 100 caràcters publicada fa menys de 3 segons ';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _Translations$misskey$achievements_$types_$clickedClickHere_$ca_ES extends Translations$misskey$achievements_$types_$clickedClickHere_$en_US {
	_Translations$misskey$achievements_$types_$clickedClickHere_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fer clic';
	@override String get description => 'Has fet clic aquí ';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _Translations$misskey$achievements_$types_$justPlainLucky_$ca_ES extends Translations$misskey$achievements_$types_$justPlainLucky_$en_US {
	_Translations$misskey$achievements_$types_$justPlainLucky_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ha sigut sort';
	@override String get description => 'Oportunitat de guanyar-lo amb una probabilitat d\'un 0.005% cada 10 segons';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _Translations$misskey$achievements_$types_$setNameToSyuilo_$ca_ES extends Translations$misskey$achievements_$types_$setNameToSyuilo_$en_US {
	_Translations$misskey$achievements_$types_$setNameToSyuilo_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'soc millor';
	@override String get description => 'Posat "siuylo" com a nom';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$ca_ES extends Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$en_US {
	_Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Primer aniversari';
	@override String get description => 'Ja ha passat un any d\'ençà que vas crear el teu compte';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$ca_ES extends Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$en_US {
	_Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Segon aniversari';
	@override String get description => 'Ja han passat dos anys d\'ençà que vas crear el teu compte';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$ca_ES extends Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$en_US {
	_Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tres anys';
	@override String get description => 'Ja han passat tres anys d\'ençà que vas crear el teu compte';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _Translations$misskey$achievements_$types_$loggedInOnBirthday_$ca_ES extends Translations$misskey$achievements_$types_$loggedInOnBirthday_$en_US {
	_Translations$misskey$achievements_$types_$loggedInOnBirthday_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Felicitats!';
	@override String get description => 'T\'has identificat el dia del teu aniversari';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$ca_ES extends Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$en_US {
	_Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bon any nou!';
	@override String get description => 'T\'has identificat el primer dia de l\'any ';
	@override String get flavor => 'A per un altre any memorable a la teva instància   ';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _Translations$misskey$achievements_$types_$cookieClicked_$ca_ES extends Translations$misskey$achievements_$types_$cookieClicked_$en_US {
	_Translations$misskey$achievements_$types_$cookieClicked_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un joc en què fas clic a les galetes';
	@override String get description => 'Pica galetes';
	@override String get flavor => 'Espera, ets al lloc web correcte?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _Translations$misskey$achievements_$types_$brainDiver_$ca_ES extends Translations$misskey$achievements_$types_$brainDiver_$en_US {
	_Translations$misskey$achievements_$types_$brainDiver_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Busseja Ments';
	@override String get description => 'Publica un enllaç al Busseja Ments';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _Translations$misskey$achievements_$types_$smashTestNotificationButton_$ca_ES extends Translations$misskey$achievements_$types_$smashTestNotificationButton_$en_US {
	_Translations$misskey$achievements_$types_$smashTestNotificationButton_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobrecàrrega de proves';
	@override String get description => 'Envia moltes notificacions de prova en un període de temps molt curt';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _Translations$misskey$achievements_$types_$tutorialCompleted_$ca_ES extends Translations$misskey$achievements_$types_$tutorialCompleted_$en_US {
	_Translations$misskey$achievements_$types_$tutorialCompleted_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Diploma del Curs Elemental de Misskey';
	@override String get description => 'Has completat el tutorial';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _Translations$misskey$achievements_$types_$bubbleGameExplodingHead_$ca_ES extends Translations$misskey$achievements_$types_$bubbleGameExplodingHead_$en_US {
	_Translations$misskey$achievements_$types_$bubbleGameExplodingHead_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => 'L\'objecte més gran del joc de la bombolla ';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _Translations$misskey$achievements_$types_$bubbleGameDoubleExplodingHead_$ca_ES extends Translations$misskey$achievements_$types_$bubbleGameDoubleExplodingHead_$en_US {
	_Translations$misskey$achievements_$types_$bubbleGameDoubleExplodingHead_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Doble 🤯';
	@override String get description => 'Dos dels objectes més grans del joc de la bombolla al mateix temps';
	@override String get flavor => 'Pots emplenar una carmanyola com aquesta 🤯🤯 una mica';
}

// Path: misskey.pages_.blocks.note_
class _Translations$misskey$pages_$blocks$note_$ca_ES extends Translations$misskey$pages_$blocks$note_$en_US {
	_Translations$misskey$pages_$blocks$note_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get id => 'ID de la publicació';
	@override String get idDescription => 'Alternativament pots enganxar l\'adreça URL de la nota aquí.';
	@override String get detailed => 'Mostra els detalls';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$ca_ES extends Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$en_US {
	_Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Correu electrònic';
	@override String get webhook => 'Webhook';
	@override late final _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$captions_$ca_ES captions_ = _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$captions_$ca_ES._(_root);
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _Translations$misskey$externalResourceInstaller_$errors_$invalidParams_$ca_ES extends Translations$misskey$externalResourceInstaller_$errors_$invalidParams_$en_US {
	_Translations$misskey$externalResourceInstaller_$errors_$invalidParams_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paràmetres no vàlids ';
	@override String get description => 'No hi ha suficient informació per carregar les dades del lloc extern. Confirma l\'URL que hi ha escrita.';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _Translations$misskey$externalResourceInstaller_$errors_$resourceTypeNotSupported_$ca_ES extends Translations$misskey$externalResourceInstaller_$errors_$resourceTypeNotSupported_$en_US {
	_Translations$misskey$externalResourceInstaller_$errors_$resourceTypeNotSupported_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'El recurs extern no està suportat.';
	@override String get description => 'Aquesta mena de recurs no està suportat. Contacta amb l\'administrador.';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _Translations$misskey$externalResourceInstaller_$errors_$failedToFetch_$ca_ES extends Translations$misskey$externalResourceInstaller_$errors_$failedToFetch_$en_US {
	_Translations$misskey$externalResourceInstaller_$errors_$failedToFetch_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ha fallat l\'obtenció de dades';
	@override String get fetchErrorDescription => 'Ha aparegut un error comunicant-se amb el lloc extern. Si després d\'intentar-ho un altre cop no es resol, contacta amb l\'administrador.';
	@override String get parseErrorDescription => 'Ha aparegut un error processant les dades carregades del lloc extern. Contacta amb l\'administrador.';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _Translations$misskey$externalResourceInstaller_$errors_$hashUnmatched_$ca_ES extends Translations$misskey$externalResourceInstaller_$errors_$hashUnmatched_$en_US {
	_Translations$misskey$externalResourceInstaller_$errors_$hashUnmatched_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ha fallat la verificació de les dades';
	@override String get description => 'Ha aparegut un error verificant les dades obtingudes. Com a mesura de seguretat la instal·lació no pot continuar. Contacta amb l\'administrador.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _Translations$misskey$externalResourceInstaller_$errors_$pluginParseFailed_$ca_ES extends Translations$misskey$externalResourceInstaller_$errors_$pluginParseFailed_$en_US {
	_Translations$misskey$externalResourceInstaller_$errors_$pluginParseFailed_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Error d\'AiScript';
	@override String get description => 'Les dades sol·licitades s\'han obtingut correctament, però hem trobat un error durant el processament d\'AiScript. Contacta amb l\'autor de l\'afegit. Detalls de l\'error es pot veure a la consola JavaScript.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _Translations$misskey$externalResourceInstaller_$errors_$pluginInstallFailed_$ca_ES extends Translations$misskey$externalResourceInstaller_$errors_$pluginInstallFailed_$en_US {
	_Translations$misskey$externalResourceInstaller_$errors_$pluginInstallFailed_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'La instal·lació de l\'afegit a fallat';
	@override String get description => 'Ha aparegut un error durant la instal·lació de l\'afegit. Intenta-ho una altra vegada. El detall de l\'error es pot veure a la consola JavaScript.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _Translations$misskey$externalResourceInstaller_$errors_$themeParseFailed_$ca_ES extends Translations$misskey$externalResourceInstaller_$errors_$themeParseFailed_$en_US {
	_Translations$misskey$externalResourceInstaller_$errors_$themeParseFailed_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ha fallat el processament del tema';
	@override String get description => 'Les dades sol·licitades s\'han obtingut correctament, però hem trobat un error durant el processament del tema. Contacta amb l\'autor de l\'afegit. Detalls de l\'error es pot veure a la consola JavaScript.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _Translations$misskey$externalResourceInstaller_$errors_$themeInstallFailed_$ca_ES extends Translations$misskey$externalResourceInstaller_$errors_$themeInstallFailed_$en_US {
	_Translations$misskey$externalResourceInstaller_$errors_$themeInstallFailed_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'La instal·lació del tema a fallat';
	@override String get description => 'Ha aparegut un error durant la instal·lació del tema. Intenta-ho una altra vegada. El detall de l\'error es pot veure a la consola JavaScript.';
}

// Path: misskey.customEmojisManager_.local_.list_
class _Translations$misskey$customEmojisManager_$local_$list_$ca_ES extends Translations$misskey$customEmojisManager_$local_$list_$en_US {
	_Translations$misskey$customEmojisManager_$local_$list_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$customEmojisManager_$local_$register_$ca_ES extends Translations$misskey$customEmojisManager_$local_$register_$en_US {
	_Translations$misskey$customEmojisManager_$local_$register_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

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
class _Translations$misskey$captcha_$error_$requestFailed_$ca_ES extends Translations$misskey$captcha_$error_$requestFailed_$en_US {
	_Translations$misskey$captcha_$error_$requestFailed_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ha fallat la sol·licitud del CAPTCHA';
	@override String get text => 'Si us plau, torna a intentar-ho d\'aquí una estona o comprova els ajustos de nou.';
}

// Path: misskey.captcha_.error_.verificationFailed_
class _Translations$misskey$captcha_$error_$verificationFailed_$ca_ES extends Translations$misskey$captcha_$error_$verificationFailed_$en_US {
	_Translations$misskey$captcha_$error_$verificationFailed_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ha fallat la validació CAPTCHA';
	@override String get text => 'Comprova que els ajustos són els correctes.';
}

// Path: misskey.captcha_.error_.unknown_
class _Translations$misskey$captcha_$error_$unknown_$ca_ES extends Translations$misskey$captcha_$error_$unknown_$en_US {
	_Translations$misskey$captcha_$error_$unknown_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Error CAPTCHA';
	@override String get text => 'S\'ha produït un error inesperat.';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _Translations$misskey$initialTutorial_$postNote_$cw_$exampleNote_$ca_ES extends Translations$misskey$initialTutorial_$postNote_$cw_$exampleNote_$en_US {
	_Translations$misskey$initialTutorial_$postNote_$cw_$exampleNote_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get cw => 'Això et farà venir gana!';
	@override String get note => 'Acabo de menjar-me un donut de xocolata 🍩😋';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_.captions_
class _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$captions_$ca_ES extends Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$captions_$en_US {
	_Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$captions_$ca_ES._(TranslationsCaEs root) : this._root = root, super.internal(root);

	final TranslationsCaEs _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Enviar un correu electrònic a tots els moderadors quan es rep un informe de moderació ';
	@override String get webhook => 'Enviar una notificació al SystemWebhook quan es rebi o es resolgui un informe de moderació ';
}
