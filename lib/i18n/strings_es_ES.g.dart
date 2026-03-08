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
class TranslationsEsEs extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.esEs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <es-ES>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsEsEs _root = this; // ignore: unused_field

	@override 
	TranslationsEsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEsEs(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAriaEsEs aria = _TranslationsAriaEsEs._(_root);
	@override late final _TranslationsMisskeyEsEs misskey = _TranslationsMisskeyEsEs._(_root);
}

// Path: aria
class _TranslationsAriaEsEs extends TranslationsAriaEnUs {
	_TranslationsAriaEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get aboutAria => 'Acerca de Aria';
	@override String get accessToken => 'Token de acceso';
	@override String get accessTokenUpdated => 'Se actualizó correctamente un token de acceso';
	@override String get accountAdded => 'Se añadió una cuenta correctamente';
	@override TextSpan acknowledgements({required InlineSpan miria, required InlineSpan misskey}) => TextSpan(children: [
		const TextSpan(text: 'Aria es una fork de '),
		miria,
		const TextSpan(text: '.\nLas traducciones de Aria se basan en los archivos de localización de '),
		misskey,
		const TextSpan(text: '.\nNos gustaría mostrar nuestro agradecimiento a todos los contribuyentes de estos proyectos.'),
	]);
	@override String get addTab => 'Añadir pestaña';
	@override String get alwaysExpandCw => 'Mostrar la advertencia de contenido';
	@override String get alwaysExpandLongNote => 'Mostrar las notas largas';
	@override String get alwaysExpandMediaInSubNote => 'Mostrar multimedia en subnotas';
	@override String get alwaysShowAllReactions => 'Mostrar todas las reacciones';
	@override String get alwaysShowTabHeader => 'Mostrar información la pestaña';
	@override String get authenticate => 'Autenticar';
	@override String get authenticated => 'Autenticado';
	@override String get avatarSize => 'Tamaño del avatar';
	@override String get background => 'Fondo';
	@override String get buttonTypes => 'Tipos de botón';
	@override String get calculating => 'Calculado...';
	@override String get confirmBeforeFollow => 'Confirmar antes de seguir';
	@override String get confirmBeforePost => 'Confirmar antes de publicar';
	@override String get confirmBeforeReact => 'Confirmar antes de reaccionar';
	@override String get confirmBeforeRenote => 'Confirmar antes de renotar';
	@override String get copied => 'Copiado al portapapeles';
	@override String get copyName => 'Copiar nombre';
	@override String get crop => 'Recortar';
	@override String get custom => 'Personalizado';
	@override String get defaultReaction => 'Reacción predeterminada';
	@override String deleteAccountTabsConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: '¿Quieres eliminar la pestaña ${n} relacionada con esta cuenta?',
		other: '¿Quieres eliminar ${n} pestañas relacionadas con esta cuenta?',
	);
	@override String deleteFilesConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: '¿Estás seguro de que deseas eliminar el archivo ${n}?',
		other: '¿Estás seguro de que deseas eliminar ${n} archivos?',
	);
	@override String get deleteTabConfirm => '¿Estás seguro de eliminar esta pestaña?';
	@override String get disableDataSaverWhenOnWifi => 'Desactivar el ahorro de datos en Wi-Fi';
	@override String get disableStreamingTimeline => 'Deshabilitar las actualizaciones de línea de tiempo en tiempo real.';
	@override String get disableSubscribingNotes => 'Desactivar reacciones en tiempo real';
	@override String get discardChangesConfirm => '¿Está seguro que desea descartar los cambios?';
	@override String get displayOfThumbnail => 'Mostrar miniatura';
	@override String get doubleTapToShow => 'Doble toque para mostrar';
	@override String get draw => 'Dibujar';
	@override String get editImage => 'Editar imagen';
	@override String get emojiPickerAutofocus => 'Mostrar el teclado al abrir el selector de emoji';
	@override String get emojiPickerScale => 'Escala del selector de emojis';
	@override String get emojiPickerUseDialog => 'Mostrar selector de emojis como un diálogo';
	@override String get enableEmojiFadeIn => 'Habilitar animaciones fade-in para emojis personalizados';
	@override String get enableFederation => 'Habilitar federación';
	@override String get enablePredictiveBack => 'Habilitar animaciones de gesto atrás predictivo';
	@override String get enableSpellCheck => 'Activar el corrector ortográfico';
	@override String get endpoint => 'Endpoint';
	@override String get exitPlayConfirm => '¿Estás seguro de salir de Play?';
	@override String get expandNote => 'Mostrar nota';
	@override String get extraMentionsWarning => 'Esta nota incluye menciones que no están incluidas en la nota a responder';
	@override String get fileNotFound => 'Archivo no encontrado';
	@override String get findServer => 'Encuentra un servidor Misskey';
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: '¿Desea seguir a '),
		name,
		const TextSpan(text: '?'),
	]);
	@override String get font => 'Fuente';
	@override String get fromDevice => 'Desde el dispositivo';
	@override String get guest => 'Invitado';
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria está siendo traducido a varios idiomas gracias a voluntarios. Se puede colaborar traduciendo en '),
		link,
	]);
	@override TextSpan iconAttribution({required InlineSpan sevenc_nanashi, required InlineSpan cc_by}) => TextSpan(children: [
		const TextSpan(text: 'El icono de Aria fue creado por '),
		sevenc_nanashi,
		const TextSpan(text: ' y está licenciado bajo '),
		cc_by,
		const TextSpan(text: '.'),
	]);
	@override String get importCompleted => 'Importación completada';
	@override String get importConfirm => '¿Está seguro de que desea importar la configuración? Se sobrescribirá la configuración existente.';
	@override String get invalidListFormat => 'El formato de lista no es válido';
	@override String jumpTo({required Object x}) => 'Ir a ${x}';
	@override String get keepOpen => 'Mantener abierto';
	@override String get keepTimelinePosition => 'Mantener posición de la línea de tiempo';
	@override String get lineHeight => 'Altura de la línea';
	@override String get loginWithAccessToken => 'Iniciar sesión con un token de acceso';
	@override String get margin => 'Margen';
	@override String get media => 'Multimedia';
	@override String get mentionToRemoteWarning => 'Esta nota incluye menciones a usuarios remotos';
	@override String get mergeReactionsByName => 'Combinar reacciones con el mismo nombre';
	@override String get moved => 'Movido';
	@override String get muted => 'Silenciado';
	@override String get mutedEmojis => 'Emojis silenciados';
	@override String nFiles({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: 'Archivo ${n}',
		other: 'Archivos ${n}',
	);
	@override String get newFollowRequestReceived => 'Hay nuevas solicitudes de seguidores';
	@override String get newNotes => 'Nuevas notas';
	@override String get newNotificationReceived => 'Hay nuevas notificaciones';
	@override String get newNotifications => 'Nuevas notificaciones';
	@override String get noAccounts => 'No hay ninguna cuenta';
	@override String get noTabs => 'Sin pestañas';
	@override String get noThemes => 'No hay temas';
	@override String get noteDoubleTapAction => 'Acción de doble toque en notas';
	@override String get noteFooterSize => 'Tamaño del botón de acción en notas';
	@override String get noteLongPressAction => 'Acción de pulsación larga en notas';
	@override String get noteScheduled => 'La nota ha sido programada';
	@override String get noteTapAction => 'Acción de toque de nota';
	@override String get notesAfterRenotes => 'Notas después de renotar';
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' usuarios en línea'),
	]);
	@override String get opacity => 'Opacidad';
	@override String get openAsGuest => 'Abrir como invitado';
	@override String get openInAnotherAccount => 'Abrir en otra cuenta';
	@override String get openInBrowser => 'Abrir en el navegador';
	@override String get openInExternalBrowser => 'Abrir en el navegador externo';
	@override String get openInInternalBrowser => 'Abrir en navegador interno';
	@override String get openMenu => 'Abrir menú';
	@override TextSpan openScratchpadAndRunCode({required InlineSpan scratchpad}) => TextSpan(children: [
		const TextSpan(text: 'Abre '),
		scratchpad,
		const TextSpan(text: ' en tu navegador, luego introduce el siguiente código y ejecútalo'),
	]);
	@override String get openSensitiveMediaOnDoubleTap => 'Abrir multimedia sensible con doble toque';
	@override String get parameters => 'Parámetros';
	@override String get paste => 'Pegar';
	@override String get pasteResponseBelow => 'Pegar la respuesta a continuación.';
	@override String get pinToEmojiPicker => 'Fijar al selector de emojis';
	@override String get playAudio => 'Reproducir audio';
	@override String get playVideo => 'Reproducir vídeo';
	@override String get pleaseCopyResponse => 'Por favor copie esta respuesta';
	@override String pleaseLoginAs({required Object user}) => 'Por favor, inicia sesión como ${user}';
	@override String get postConfirm => '¿Estás seguro de publicar esta nota?';
	@override String get reactionConfirm => '¿Estás seguro de añadir una reacción?';
	@override String get recentlyUsedEmojis => 'Emojis usados recientemente';
	@override String get renoteConfirm => '¿Estás seguro de renotar esta nota?';
	@override String get renoteToChannel => 'Renotar a un canal';
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Renotado por '),
		user,
	]);
	@override String get reset => 'Restablecer';
	@override String get rotate => 'Rotar';
	@override String get selectIcon => 'Seleccione un icono';
	@override TextSpan selfRenotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Auto-renotado por '),
		user,
	]);
	@override String get serverUrl => 'URL del servidor';
	@override String get settingsFileForAria => 'Archivo de configuración para Aria';
	@override TextSpan settingsForUser({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Configuración de '),
		user,
	]);
	@override String get showAvatarsInNote => 'Mostrar avatares en notas';
	@override String get showAvatarsInSubNote => 'Mostrar avatares en subnotas';
	@override String get showEntireImage => 'Mostrar imagen completa';
	@override String get showExpandedImage => 'Mostrar imagen expandida';
	@override String get showImage => 'Mostrar imagen';
	@override String get showLikeButtonInNoteFooter => 'Añadir "Like" al menú de acciones';
	@override String get showMenuButtonInTabBar => 'Mostrar el botón de menú en la barra de pestañas';
	@override String get showNoteCreatedAt => 'Mostrar fecha de creación de notas';
	@override String get showNoteFooter => 'Mostrar botones de acción en notas';
	@override String get showNoteReactionsViewer => 'Mostrar los que reaccionaron en notas';
	@override String get showOnlineStatus => 'Mostrar estado de conexión';
	@override String get showPopupOnNewNote => 'Mostrar ventana emergente en nueva nota';
	@override String get showQuoteButtonInNoteFooter => 'Añadir "Citar" al menú de acciones';
	@override String get showReactionsCountForEachTypes => 'Ver el número de reacciones por cada tipo de reacción';
	@override String get showRenotesCount => 'Ver el número de renotas en notas';
	@override String get showRepliesCount => 'Ver el número de respuestas en notas';
	@override String get showSelfRenotes => 'Mostrar auto-renotes';
	@override String get showSmallButtons => 'Mostrar botones pequeños';
	@override String get showSquaredButtons => 'Mostrar botones cuadrados';
	@override String get showStackTrace => 'Mostrar stack trace';
	@override String get showSubNoteFooter => 'Mostrar botones de acción en subnotas';
	@override String get showSubNoteReactionsViewer => 'Mostrar los que reaccionaron en subnotas';
	@override String get showTabHeaderInOneLine => 'Mostrar información de la pestaña en una línea';
	@override String get showTimelineLastViewedAt => 'Mostrar la última fecha de las líneas de tiempo';
	@override String get showTimelineTabBarAtBottom => 'Mostrar la línea de tiempo en la parte inferior';
	@override String get showTranslateButtonInNoteFooter => 'Añadir "Traducir" al menú de acciones';
	@override String get sinceDate => 'Desde';
	@override String get stackTrace => 'Stack trace';
	@override String get streamingChannel => 'Canal de transmisión';
	@override String get swapCw => 'Intercambiar comentarios con el contenido';
	@override String get tabName => 'Nombre de la pestaña';
	@override String get tabType => 'Tipo de pestaña';
	@override String get tabs => 'Pestañas';
	@override String get tapToShow => 'Tocar para mostrar';
	@override String get timeMachine => 'Máquina del tiempo';
	@override String get timelinesPageButtons => 'Botones de la página de líneas de tiempo';
	@override String get unfavorited => 'Eliminar de Favoritos';
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: '¿Desea dejar de seguir a '),
		name,
		const TextSpan(text: '?'),
	]);
	@override String get untilDate => 'Hasta';
	@override String get uploaded => 'Subido';
	@override String get useThisEmoji => 'Usar este emoji';
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' dijo algo'),
	]);
	@override TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'La publicación de '),
		name,
		const TextSpan(text: ' contiene material sensible'),
	]);
	@override String get vibrateNote => 'Vibrar en una nueva nota';
	@override String get vibrateNotification => 'Vibrar en una nueva notificación';
	@override String get webBrowser => 'Navegador';
}

// Path: misskey
class _TranslationsMisskeyEsEs extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Español';
	@override String get headlineMisskey => 'Red conectada por notas';
	@override String get introMisskey => '¡Bienvenido/a! Misskey es un servicio de microblogging descentralizado de código abierto.\nEscribe "notas" para compartir lo que te ocurre ahora o para contar sobre ti a todos 📡\nCon la función de "reacciones", puedes también añadir una reacción rápida a las notas de todos 👍\n¡Exploremos juntos un nuevo mundo! 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} es uno de los servicios (también llamado instancia) que usa la plataforma de código abierto <b>Misskey</b>';
	@override String monthAndDay({required Object day, required Object month}) => '${day}/${month}';
	@override String get search => 'Buscar';
	@override String get reset => 'Restablecer';
	@override String get notifications => 'Notificaciones';
	@override String get username => 'Nombre de usuario';
	@override String get password => 'Contraseña';
	@override String get initialPasswordForSetup => 'Contraseña de configuración inicial';
	@override String get initialPasswordIsIncorrect => 'La contraseña para iniciar la configuración inicial es incorrecta.';
	@override String get initialPasswordForSetupDescription => 'Si ha instalado Misskey usted mismo, utilice la contraseña introducida en el archivo de configuración.\nSi utiliza un servicio de alojamiento de Misskey o similar, utilice la contraseña proporcionada.\nSi no ha establecido una contraseña, déjela en blanco para continuar.';
	@override String get forgotPassword => 'Olvidé mi contraseña';
	@override String get fetchingAsApObject => 'Buscando en el fediverso';
	@override String get ok => 'OK';
	@override String get gotIt => '¡Lo tengo!';
	@override String get cancel => 'Cancelar';
	@override String get noThankYou => 'No gracias';
	@override String get enterUsername => 'Introduce el nombre de usuario';
	@override String renotedBy({required Object user}) => 'Renotado por ${user}';
	@override String get noNotes => 'No hay notas';
	@override String get noNotifications => 'No hay notificaciones';
	@override String get instance => 'Instancia';
	@override String get settings => 'Configuración';
	@override String get notificationSettings => 'Ajustes de notificaciones';
	@override String get basicSettings => 'Configuración básica';
	@override String get otherSettings => 'Configuración avanzada';
	@override String get openInWindow => 'Abrir en una ventana';
	@override String get profile => 'Perfil';
	@override String get timeline => 'Línea de tiempo';
	@override String get noAccountDescription => 'Este usuario no ha escrito su biografía aún';
	@override String get login => 'Iniciar sesión';
	@override String get loggingIn => 'Iniciando sesión';
	@override String get logout => 'Cerrar sesión';
	@override String get signup => 'Registrarse';
	@override String get uploading => 'Cargando...';
	@override String get save => 'Guardar';
	@override String get users => 'Usuarios';
	@override String get addUser => 'Agregar usuario';
	@override String get favorite => 'Añadir a favoritos';
	@override String get favorites => 'Favoritos';
	@override String get unfavorite => 'Quitar de favoritos';
	@override String get favorited => 'Añadido a favoritos.';
	@override String get alreadyFavorited => 'Ya añadido a favoritos.';
	@override String get cantFavorite => 'No se puede añadir a favoritos.';
	@override String get pin => 'Fijar al perfil';
	@override String get unpin => 'Desfijar';
	@override String get copyContent => 'Copiar contenido';
	@override String get copyLink => 'Copiar enlace';
	@override String get copyRemoteLink => 'Copiar enlace remoto';
	@override String get copyLinkRenote => 'Copiar enlace de renota';
	@override String get delete => 'Borrar';
	@override String get deleteAndEdit => 'Borrar y editar';
	@override String get deleteAndEditConfirm => '¿Estás seguro de que quieres borrar esta nota y editarla? Perderás todas las reacciones, renotas y respuestas.';
	@override String get addToList => 'Agregar a lista';
	@override String get addToAntenna => 'Añadir a la antena';
	@override String get sendMessage => 'Enviar un mensaje';
	@override String get copyRSS => 'Copiar RSS';
	@override String get copyUsername => 'Copiar nombre de usuario';
	@override String get copyUserId => 'Copiar ID del usuario';
	@override String get copyNoteId => 'Copiar ID de la nota';
	@override String get copyFileId => 'Copiar ID de archivo';
	@override String get copyFolderId => 'Copiar ID de carpeta';
	@override String get copyProfileUrl => 'Copiar la URL del perfil';
	@override String get searchUser => 'Buscar un usuario';
	@override String get searchThisUsersNotes => 'Buscar en las notas de este usuario';
	@override String get reply => 'Responder';
	@override String get loadMore => 'Ver más';
	@override String get showMore => 'Ver más';
	@override String get showLess => 'Cerrar';
	@override String get youGotNewFollower => 'ahora te sigue';
	@override String get receiveFollowRequest => 'Recibiste una solicitud de seguimiento';
	@override String get followRequestAccepted => 'La solicitud de seguimiento fue aceptada';
	@override String get mention => 'Menciones';
	@override String get mentions => 'Menciones';
	@override String get directNotes => 'Notas directas';
	@override String get importAndExport => 'Importar y Exportar';
	@override String get import => 'Importar';
	@override String get export => 'Exportar';
	@override String get files => 'Archivos';
	@override String get download => 'Descargar';
	@override String driveFileDeleteConfirm({required Object name}) => '¿Desea borrar el archivo "${name}"? Las notas que tengan este archivo como adjunto serán eliminadas';
	@override String unfollowConfirm({required Object name}) => '¿Desea dejar de seguir a ${name}?';
	@override String cancelFollowRequestConfirm({required Object name}) => '¿Desea cancelar su solicitud de seguimiento a ${name}?';
	@override String rejectFollowRequestConfirm({required Object name}) => '¿Desea rechazar la solicitud de seguimiento de ${name}?';
	@override String get exportRequested => 'Has solicitado la exportación. Puede llevar un tiempo. Cuando termine la exportación, se añadirá al drive';
	@override String get importRequested => 'Has solicitado la importación. Puede llevar un tiempo.';
	@override String get lists => 'Listas';
	@override String get noLists => 'No tienes ninguna lista';
	@override String get note => 'Nota';
	@override String get notes => 'Notas';
	@override String get following => 'Siguiendo';
	@override String get followers => 'Seguidores';
	@override String get followsYou => 'Te sigue';
	@override String get createList => 'Crear lista';
	@override String get manageLists => 'Administrar listas';
	@override String get error => 'Error';
	@override String get somethingHappened => 'Ocurrió un error';
	@override String get retry => 'Reintentar';
	@override String get pageLoadError => 'Error al leer la página';
	@override String get pageLoadErrorDescription => 'Normalmente es debido a la red o al caché del navegador. Por favor limpie el caché o intente más tarde.';
	@override String get serverIsDead => 'No hay respuesta del servidor. Espera un momento y vuelve a intentarlo.';
	@override String get youShouldUpgradeClient => 'Para ver esta página, recarga el navegador para actualizar el cliente.';
	@override String get enterListName => 'Introduce un nombre para la lista';
	@override String get privacy => 'Privacidad';
	@override String get makeFollowManuallyApprove => 'Aprobar manualmente las solicitudes de seguimiento';
	@override String get defaultNoteVisibility => 'Visibilidad por defecto';
	@override String get follow => 'Seguir';
	@override String get followRequest => 'Enviar solicitud de seguimiento';
	@override String get followRequests => 'Solicitudes de seguimiento';
	@override String get unfollow => 'Dejar de seguir';
	@override String get followRequestPending => 'Solicitudes de seguimiento pendiente';
	@override String get enterEmoji => 'Ingresar emojis';
	@override String get renote => 'Renotar';
	@override String get unrenote => 'Quitar renota';
	@override String get renoted => 'Renotado';
	@override String renotedToX({required Object name}) => '${name} usuarios han renotado。';
	@override String get cantRenote => 'No se puede renotar este post';
	@override String get cantReRenote => 'No se puede renotar una renota';
	@override String get quote => 'Citar';
	@override String get inChannelRenote => 'Renota sólo del canal';
	@override String get inChannelQuote => 'Cita sólo del canal';
	@override String get renoteToChannel => 'Renotar a otro canal';
	@override String get renoteToOtherChannel => 'Renotar a otro canal';
	@override String get pinnedNote => 'Nota fijada';
	@override String get pinned => 'Fijar al perfil';
	@override String get you => 'Tú';
	@override String get clickToShow => 'Haz clic para verlo';
	@override String get sensitive => 'Marcado como sensible (NSFW)';
	@override String get add => 'Agregar';
	@override String get reaction => 'Reacción';
	@override String get reactions => 'Reacciones';
	@override String get emojiPicker => 'Selector de emojis';
	@override String get pinnedEmojisForReactionSettingDescription => 'Puedes seleccionar reacciones para fijarlos en el selector';
	@override String get pinnedEmojisSettingDescription => 'Puedes seleccionar emojis para fijarlos en el selector';
	@override String get emojiPickerDisplay => 'Mostrar el selector de emojis';
	@override String get overwriteFromPinnedEmojisForReaction => 'Sobreescribir los ajustes de reacciones';
	@override String get overwriteFromPinnedEmojis => 'Sobreescribir los ajustes generales';
	@override String get reactionSettingDescription2 => 'Arrastra para reordenar, click para borrar, pulsa "+" para añadir.';
	@override String get rememberNoteVisibility => 'Recordar visibilidad';
	@override String get attachCancel => 'Quitar adjunto';
	@override String get deleteFile => 'Eliminar archivo';
	@override String get markAsSensitive => 'Marcar como sensible';
	@override String get unmarkAsSensitive => 'No marcar como sensible';
	@override String get enterFileName => 'Introduce el nombre del archivo';
	@override String get mute => 'Silenciar';
	@override String get unmute => 'Dejar de silenciar';
	@override String get renoteMute => 'Silenciar renota';
	@override String get renoteUnmute => 'Desilenciar renota';
	@override String get block => 'Bloquear';
	@override String get unblock => 'Desbloquear';
	@override String get suspend => 'Suspender';
	@override String get unsuspend => 'Dejar de suspender';
	@override String get blockConfirm => '¿Quieres bloquear esta cuenta?';
	@override String get unblockConfirm => '¿Quieres desbloquear esta cuenta?';
	@override String get suspendConfirm => '¿Quieres suspender esta cuenta?';
	@override String get unsuspendConfirm => '¿Quieres dejar de suspender esta cuenta?';
	@override String get selectList => 'Selecciona una lista';
	@override String get editList => 'Editar lista';
	@override String get selectChannel => 'Seleccionar canal';
	@override String get selectAntenna => 'Seleccionar antena';
	@override String get editAntenna => 'Editar antena';
	@override String get createAntenna => 'Crear una antena';
	@override String get selectWidget => 'Seleccionar widget';
	@override String get editWidgets => 'Editar widgets';
	@override String get editWidgetsExit => 'Hecho';
	@override String get customEmojis => 'Emojis personalizados';
	@override String get emoji => 'Emoji';
	@override String get emojis => 'Emojis';
	@override String get emojiName => 'Nombre del emoji';
	@override String get emojiUrl => 'URL del emoji';
	@override String get addEmoji => 'Añadir emoji';
	@override String get settingGuide => 'Configuración recomendada';
	@override String get cacheRemoteFiles => 'Mantener los archivos remotos en caché';
	@override String get cacheRemoteFilesDescription => 'Si desactivas esta configuración, los archivos remotos se cargarán directamente de los servidores remotos. Desactivar esto reducirá el uso de almacenamiento, pero incrementará el uso de tráfico, ya que no se generarán miniaturas.';
	@override String get youCanCleanRemoteFilesCache => 'Puedes vaciar la caché pulsando en el botón 🗑️ en el administrador de archivos.';
	@override String get cacheRemoteSensitiveFiles => 'Mantener los archivos remotos sensibles en caché';
	@override String get cacheRemoteSensitiveFilesDescription => 'Cuando esta opción está desactivada, los archivos remotos sensibles se cargarán directamente desde los servidores remotos.';
	@override String get flagAsBot => 'Esta cuenta es un bot';
	@override String get flagAsBotDescription => 'Activa esta opción si la cuenta es utilizada por un programa. Si se activa, actuará como una etiqueta para otros desarrolladores para prevenir cadenas eternas de interacción con otros bots, y ajustará los sistemas internos de Misskey para tratar esta cuenta de manera acorde.';
	@override String get flagAsCat => 'Marcar esta cuenta como gato';
	@override String get flagAsCatDescription => 'Activa esta opción para marcar esta cuenta como un gato.';
	@override String get flagShowTimelineReplies => 'Mostrar respuestas en la línea de tiempo';
	@override String get flagShowTimelineRepliesDescription => 'Muestra respuestas de los usuarios a las notas de otros usuarios en la línea de tiempo al activar esta opción.';
	@override String get autoAcceptFollowed => 'Aceptar automáticamente las solicitudes de seguimiento de los usuarios que sigues';
	@override String get addAccount => 'Agregar cuenta';
	@override String get reloadAccountsList => 'Recargar lista de cuentas';
	@override String get loginFailed => 'Error al iniciar sesión.';
	@override String get showOnRemote => 'Ver en instancia remota';
	@override String get continueOnRemote => 'Continuar en una instancia remota';
	@override String get chooseServerOnMisskeyHub => 'Elegir un servidor en Misskey Hub';
	@override String get specifyServerHost => 'Especifica una instancia directamente';
	@override String get inputHostName => 'Introduce el dominio';
	@override String get general => 'General';
	@override String get wallpaper => 'Fondo de pantalla';
	@override String get setWallpaper => 'Establecer fondo de pantalla';
	@override String get removeWallpaper => 'Quitar fondo de pantalla';
	@override String searchWith({required Object q}) => 'Buscar: ${q}';
	@override String get youHaveNoLists => 'No tienes ninguna lista';
	@override String followConfirm({required Object name}) => '¿Quieres seguir a ${name}?';
	@override String get proxyAccount => 'Cuenta proxy';
	@override String get proxyAccountDescription => 'Una cuenta proxy es una cuenta que actúa como un seguidor remoto de un usuario bajo ciertas condiciones. Por ejemplo, cuando un usuario añade un usuario remoto a una lista, si ningún usuario local sigue al usuario agregado a la lista, la instancia no puede obtener su actividad, así que la cuenta proxy sigue al usuario añadido a la lista';
	@override String get host => 'Instancia';
	@override String get selectSelf => 'Elígete a ti mismo';
	@override String get selectUser => 'Elegir usuario';
	@override String get recipient => 'Receptor';
	@override String get annotation => 'Anotación';
	@override String get federation => 'Federación';
	@override String get instances => 'Instancias';
	@override String get registeredAt => 'Registrado en';
	@override String get latestRequestReceivedAt => 'Última petición recibida';
	@override String get latestStatus => 'Último estado';
	@override String get storageUsage => 'Almacenamiento usado';
	@override String get charts => 'Métricas';
	@override String get perHour => 'por hora';
	@override String get perDay => 'por día';
	@override String get stopActivityDelivery => 'Dejar de enviar actividades';
	@override String get blockThisInstance => 'Bloquear instancia';
	@override String get silenceThisInstance => 'Silenciar esta instancia';
	@override String get mediaSilenceThisInstance => 'Silencia la Multimedia(Imágenes,videos...) para este servidor';
	@override String get operations => 'Operaciones';
	@override String get software => 'Software';
	@override String get softwareName => 'Nombre del software';
	@override String get version => 'Versión';
	@override String get metadata => 'Metadatos';
	@override String withNFiles({required Object n}) => '${n} archivos';
	@override String get monitor => 'Monitor';
	@override String get jobQueue => 'Cola de trabajos';
	@override String get cpuAndMemory => 'CPU y memoria';
	@override String get network => 'Red';
	@override String get disk => 'Disco';
	@override String get instanceInfo => 'Información de la instancia';
	@override String get statistics => 'Estadísticas';
	@override String get clearQueue => 'Limpiar cola';
	@override String get clearQueueConfirmTitle => '¿Quieres limpiar la cola?';
	@override String get clearQueueConfirmText => 'Las notas aún no entregadas no se federarán. Normalmente no se necesita ejecutar esta operación';
	@override String get clearCachedFiles => 'Limpiar caché';
	@override String get clearCachedFilesConfirm => '¿Quieres borrar todos los archivos remotos en caché?';
	@override String get blockedInstances => 'Instancias bloqueadas';
	@override String get blockedInstancesDescription => 'La lista de los dominios de las instancias que quieres bloquear, separadas por una linea nueva. Las instancias bloqueadas no podrán comunicarse con esta instancia.';
	@override String get silencedInstances => 'Instancias silenciadas';
	@override String get silencedInstancesDescription => 'La lista de los dominios de las instancias que quieres silenciar. Todas las cuentas de las instancias listadas serán tratadas como silenciadas, solo podrán hacer peticiones de seguimiento, y no podrán mencionar cuentas locales si no las siguen. Esto no afecta a las instancias bloqueadas.';
	@override String get mediaSilencedInstances => 'Servidores con multimedia silenciada';
	@override String get mediaSilencedInstancesDescription => 'La lista de los dominios de las instancias cuya multimedia quieres silenciar. Todas las cuentas que pertenezcan a estas instancias serán marcadas como sensibles, y no podrán usar sus emojis personalizados. Esto no afectará a las instancias bloqueadas';
	@override String get federationAllowedHosts => 'Servidores federados';
	@override String get federationAllowedHostsDescription => 'La lista de los dominios de las instancias cuya federación está permitida, separadas por saltos de línea.';
	@override String get muteAndBlock => 'Silenciar y bloquear';
	@override String get mutedUsers => 'Usuarios silenciados';
	@override String get blockedUsers => 'Usuarios bloqueados';
	@override String get noUsers => 'No hay usuarios';
	@override String get editProfile => 'Editar perfil';
	@override String get noteDeleteConfirm => '¿Quieres borrar esta nota?';
	@override String get pinLimitExceeded => 'Ya no se pueden fijar más notas';
	@override String get done => 'Hecho';
	@override String get processing => 'Procesando...';
	@override String get preprocessing => 'Preparando';
	@override String get preview => 'Vista previa';
	@override String get default_ => 'Predeterminado';
	@override String defaultValueIs({required Object value}) => 'Por defecto: ${value}';
	@override String get noCustomEmojis => 'No hay emojis personalizados';
	@override String get noJobs => 'No hay trabajos';
	@override String get federating => 'Federando';
	@override String get blocked => 'Bloqueado';
	@override String get suspended => 'Suspendido';
	@override String get all => 'Todo';
	@override String get subscribing => 'Suscribiendo';
	@override String get publishing => 'Publicando';
	@override String get notResponding => 'Sin respuestas';
	@override String get instanceFollowing => 'Siguiendo instancias';
	@override String get instanceFollowers => 'Seguidores de la instancia';
	@override String get instanceUsers => 'Usuarios de la instancia';
	@override String get changePassword => 'Cambiar contraseña';
	@override String get security => 'Seguridad';
	@override String get retypedNotMatch => 'La información no coincide.';
	@override String get currentPassword => 'Contraseña actual';
	@override String get newPassword => 'Contraseña nueva';
	@override String get newPasswordRetype => 'Reescribe contraseña nueva';
	@override String get attachFile => 'Añadir archivo';
	@override String get more => '¡Más!';
	@override String get featured => 'Destacados';
	@override String get usernameOrUserId => 'Nombre o ID del usuario';
	@override String get noSuchUser => 'No se encuentra el usuario';
	@override String get lookup => 'Búsqueda';
	@override String get announcements => 'Avisos';
	@override String get imageUrl => 'URL de la imagen.';
	@override String get remove => 'Borrar';
	@override String get removed => 'Borrado';
	@override String removeAreYouSure({required Object x}) => '¿Desea borrar "${x}"?';
	@override String deleteAreYouSure({required Object x}) => '¿Desea borrar "${x}"?';
	@override String get resetAreYouSure => '¿Desea reestablecer?';
	@override String get areYouSure => '¿Estás conforme?';
	@override String get saved => 'Guardado';
	@override String get upload => 'Subir';
	@override String get keepOriginalUploading => 'Mantener la imagen original';
	@override String get keepOriginalUploadingDescription => 'Mantener la versión original al cargar imágenes. Si está desactivado, el navegador generará imágenes para la publicación web en el momento de recargar la página';
	@override String get fromDrive => 'Desde el drive';
	@override String get fromUrl => 'Desde la URL';
	@override String get uploadFromUrl => 'Subir desde una URL';
	@override String get uploadFromUrlDescription => 'URL del fichero que quieres subir';
	@override String get uploadFromUrlRequested => 'Subida solicitada';
	@override String get uploadFromUrlMayTakeTime => 'Subir el fichero puede tardar un tiempo.';
	@override String uploadNFiles({required Object n}) => 'Subir ${n} archivos';
	@override String get explore => 'Explorar';
	@override String get messageRead => 'Ya leído';
	@override String get readAllChatMessages => 'Marcar todos los mensajes como leídos';
	@override String get noMoreHistory => 'El historial se ha acabado';
	@override String get startChat => 'Nuevo Chat';
	@override String nUsersRead({required Object n}) => 'Leído por ${n} personas';
	@override String agreeTo({required Object x0}) => 'De acuerdo con ${x0}';
	@override String get agree => 'De acuerdo.';
	@override String get agreeBelow => 'Estoy de acuerdo con lo siguiente';
	@override String get basicNotesBeforeCreateAccount => 'Notas básicas';
	@override String get termsOfService => 'Términos y condiciones';
	@override String get start => 'Comenzar';
	@override String get home => 'Inicio';
	@override String get remoteUserCaution => 'Para el usuario remoto, la información está incompleta';
	@override String get activity => 'Actividad';
	@override String get images => 'Imágenes';
	@override String get image => 'Imágenes';
	@override String get birthday => 'Cumpleaños';
	@override String yearsOld({required Object age}) => '${age} años';
	@override String get registeredDate => 'Fecha de registro';
	@override String get location => 'Ubicación';
	@override String get theme => 'Tema';
	@override String get themeForLightMode => 'Tema para usar en Modo Linterna';
	@override String get themeForDarkMode => 'Tema para usar en Modo Oscuro';
	@override String get light => 'Claro';
	@override String get dark => 'Oscuro';
	@override String get lightThemes => 'Tema claro';
	@override String get darkThemes => 'Tema oscuro';
	@override String get syncDeviceDarkMode => 'Sincronice el Modo Oscuro con la configuración de su dispositivo';
	@override String switchDarkModeManuallyWhenSyncEnabledConfirm({required Object x}) => '${x} está activado ¿Te gustaría desactivar la sincronización y cambiar al modo manual?';
	@override String get drive => 'Drive';
	@override String get fileName => 'Nombre de archivo';
	@override String get selectFile => 'Elegir archivo';
	@override String get selectFiles => 'Elegir archivos';
	@override String get selectFolder => 'Seleccione una carpeta';
	@override String get unselectFolder => 'Deseleccionar carpeta';
	@override String get selectFolders => 'Seleccione carpetas';
	@override String get fileNotSelected => 'Archivo no seleccionado.';
	@override String get renameFile => 'Renombrar archivo';
	@override String get folderName => 'Nombre de la carpeta';
	@override String get createFolder => 'Crear carpeta';
	@override String get renameFolder => 'Renombrar carpeta';
	@override String get deleteFolder => 'Borrar carpeta';
	@override String get folder => 'Carpeta';
	@override String get addFile => 'Agregar archivo';
	@override String get showFile => 'Examinar archivos';
	@override String get emptyDrive => 'El drive está vacío';
	@override String get emptyFolder => 'La carpeta está vacía';
	@override String get dropHereToUpload => 'Arrastra los archivos aquí para subirlos.';
	@override String get unableToDelete => 'No se puede borrar';
	@override String get inputNewFileName => 'Ingrese un nuevo nombre de archivo';
	@override String get inputNewDescription => 'Introducir un nuevo texto alternativo';
	@override String get inputNewFolderName => 'Ingrese un nuevo nombre de la carpeta';
	@override String get circularReferenceFolder => 'La carpeta de destino es una sub-carpeta de la carpeta que quieres mover.';
	@override String get hasChildFilesOrFolders => 'No se puede borrar esta carpeta. No está vacía.';
	@override String get copyUrl => 'Copiar URL';
	@override String get rename => 'Renombrar';
	@override String get avatar => 'Avatar';
	@override String get banner => 'Banner';
	@override String get displayOfSensitiveMedia => 'Mostrar contenido sensible';
	@override String get whenServerDisconnected => 'Cuando se pierda la conexión con el servidor';
	@override String get disconnectedFromServer => 'Desconectado del servidor';
	@override String get reload => 'Recargar';
	@override String get doNothing => 'No hacer nada';
	@override String get reloadConfirm => '¿Desea recargar?';
	@override String get watch => 'Ver';
	@override String get unwatch => 'Dejar de ver';
	@override String get accept => 'Aceptar';
	@override String get reject => 'Rechazar';
	@override String get normal => 'Normal';
	@override String get instanceName => 'Nombre de la instancia';
	@override String get instanceDescription => 'Descripción de la instancia';
	@override String get maintainerName => 'Nombre del administrador';
	@override String get maintainerEmail => 'Correo del administrador';
	@override String get tosUrl => 'URL de los términos de uso';
	@override String get thisYear => 'Este año';
	@override String get thisMonth => 'Este mes';
	@override String get today => 'Hoy';
	@override String dayX({required Object day}) => 'Día ${day}';
	@override String monthX({required Object month}) => 'Mes ${month}';
	@override String yearX({required Object year}) => 'Año ${year}';
	@override String get pages => 'Páginas';
	@override String get integration => 'Integración';
	@override String get connectService => 'Conectar';
	@override String get disconnectService => 'Desconectar';
	@override String get enableLocalTimeline => 'Habilitar linea de tiempo local';
	@override String get enableGlobalTimeline => 'Habilitar linea de tiempo global';
	@override String get disablingTimelinesInfo => 'Aunque se desactiven estas lineas de tiempo, por conveniencia el administrador y los moderadores pueden seguir usándolos';
	@override String get registration => 'Registro';
	@override String get invite => 'Invitar';
	@override String get driveCapacityPerLocalAccount => 'Capacidad del drive por usuario local';
	@override String get driveCapacityPerRemoteAccount => 'Capacidad del drive por usuario remoto';
	@override String get inMb => 'En megabytes';
	@override String get bannerUrl => 'URL de la imagen del banner';
	@override String get backgroundImageUrl => 'URL de la imagen de fondo';
	@override String get basicInfo => 'Información básica';
	@override String get pinnedUsers => 'Usuarios fijados';
	@override String get pinnedUsersDescription => 'Describir los usuarios que quiere fijar en la página "Descubrir" separados por una linea nueva';
	@override String get pinnedPages => 'Páginas fijadas';
	@override String get pinnedPagesDescription => 'Describa las rutas de las páginas que desea fijar a la página principal de la instancia, separadas por lineas nuevas';
	@override String get pinnedClipId => 'Id del clip fijado';
	@override String get pinnedNotes => 'Nota fijada';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'Habilitar hCaptcha';
	@override String get hcaptchaSiteKey => 'Clave del sitio';
	@override String get hcaptchaSecretKey => 'Clave secreta';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => 'Activar mCaptcha';
	@override String get mcaptchaSiteKey => 'Clave del sitio';
	@override String get mcaptchaSecretKey => 'Clave secreta';
	@override String get mcaptchaInstanceUrl => 'URL del servidor mCaptcha';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'activar reCAPTCHA';
	@override String get recaptchaSiteKey => 'Clave del sitio';
	@override String get recaptchaSecretKey => 'Clave secreta';
	@override String get turnstile => 'Turnstile';
	@override String get enableTurnstile => 'Habilitar Turnstile';
	@override String get turnstileSiteKey => 'Clave del sitio';
	@override String get turnstileSecretKey => 'Clave secreta';
	@override String get avoidMultiCaptchaConfirm => 'El uso de múltiples Captchas puede causar interferencia. ¿Desea desactivar el otro Captcha? Puede dejar múltiples Captchas habilitadas presionando cancelar.';
	@override String get antennas => 'Antenas';
	@override String get manageAntennas => 'Administrar antenas';
	@override String get name => 'Nombre';
	@override String get antennaSource => 'Origen de la antena';
	@override String get antennaKeywords => 'Palabras clave para recibir';
	@override String get antennaExcludeKeywords => 'Palabras clave para excluir';
	@override String get antennaExcludeBots => 'Excluir bots';
	@override String get antennaKeywordsDescription => 'Separar con espacios es una declaración AND, separar con una linea nueva es una declaración OR';
	@override String get notifyAntenna => 'Notificar nueva nota';
	@override String get withFileAntenna => 'Sólo notas con archivos adjuntados';
	@override String get excludeNotesInSensitiveChannel => 'Excluir notas en canales sensibles';
	@override String get enableServiceworker => 'Activar ServiceWorker';
	@override String get antennaUsersDescription => 'Elegir nombres de usuarios separados por una linea nueva';
	@override String get caseSensitive => 'Distinguir mayúsculas de minúsculas';
	@override String get withReplies => 'Incluir respuestas';
	@override String get connectedTo => 'Estas cuentas están conectadas';
	@override String get notesAndReplies => 'Notas y respuestas';
	@override String get withFiles => 'Adjuntos';
	@override String get silence => 'Silenciar';
	@override String get silenceConfirm => '¿Desea silenciar al usuario?';
	@override String get unsilence => 'Dejar de silenciar';
	@override String get unsilenceConfirm => '¿Desea dejar de silenciar al usuario?';
	@override String get popularUsers => 'Usuarios populares';
	@override String get recentlyUpdatedUsers => 'Usuarios activos recientemente';
	@override String get recentlyRegisteredUsers => 'Usuarios registrados recientemente';
	@override String get recentlyDiscoveredUsers => 'Usuarios descubiertos recientemente';
	@override String exploreUsersCount({required Object count}) => 'Hay ${count} usuarios';
	@override String get exploreFediverse => 'Explorar fediverso';
	@override String get popularTags => 'Etiquetas populares';
	@override String get userList => 'Lista';
	@override String get about => 'Información';
	@override String get aboutMisskey => 'Sobre Misskey';
	@override String get administrator => 'Administrador';
	@override String get token => 'Token';
	@override String get x2fa => 'Autenticación de doble factor';
	@override String get setupOf2fa => 'Configurar la autenticación de dos factores';
	@override String get totp => 'Aplicación autentícadora';
	@override String get totpDescription => 'Ingresa una contaseña de un sólo uso usando la aplicación autenticadora';
	@override String get moderator => 'Moderador';
	@override String get moderation => 'Moderación';
	@override String get moderationNote => 'Nota de moderación';
	@override String get moderationNoteDescription => 'Puedes rellenar notas que solo se comparten entre moderadores.';
	@override String get addModerationNote => 'Añadir nota de moderación';
	@override String get moderationLogs => 'Log de moderación';
	@override String nUsersMentioned({required Object n}) => '${n} usuarios mencionados';
	@override String get securityKeyAndPasskey => 'Clave de seguridad / clave de paso';
	@override String get securityKey => 'Clave de seguridad';
	@override String get lastUsed => 'Última vez usado';
	@override String lastUsedAt({required Object t}) => 'Último uso: ${t}';
	@override String get unregister => 'Cancelar registro';
	@override String get passwordLessLogin => 'Iniciar sesión sin contraseña';
	@override String get passwordLessLoginDescription => 'Iniciar sesión con sólo una clave se seguridad / de paso sin usar una contraseña';
	@override String get resetPassword => 'Resetear contraseña';
	@override String newPasswordIs({required Object password}) => 'La nueva contraseña es "${password}"';
	@override String get reduceUiAnimation => 'Reducir la animación de la UI';
	@override String get share => 'Compartir';
	@override String get notFound => 'No se encuentra';
	@override String get notFoundDescription => 'No se encontró la página correspondiente a la URL elegida';
	@override String get uploadFolder => 'Carpeta de subidas por defecto';
	@override String get markAsReadAllNotifications => 'Marcar todas las notificaciones como leídas';
	@override String get markAsReadAllUnreadNotes => 'Marcar todas las notas como leídas';
	@override String get markAsReadAllTalkMessages => 'Marcar todos los chats como leídos';
	@override String get help => 'Ayuda';
	@override String get inputMessageHere => 'Escribe el mensaje aquí';
	@override String get close => 'Cerrar';
	@override String get invites => 'Invitar';
	@override String get members => 'Miembros';
	@override String get transfer => 'Transferir';
	@override String get title => 'Título';
	@override String get text => 'Texto';
	@override String get enable => 'Activar';
	@override String get next => 'Siguiente';
	@override String get retype => 'Ingrese de nuevo';
	@override String noteOf({required Object user}) => 'Notas de ${user}';
	@override String get quoteAttached => 'Cita añadida';
	@override String get quoteQuestion => '¿Quiere añadir una cita?';
	@override String get attachAsFileQuestion => 'El texto del portapapeles es demasiado grande ¿Desea adjuntarlo como archivo de texto?';
	@override String get onlyOneFileCanBeAttached => 'Solo se puede añadir un archivo al mensaje';
	@override String get signinRequired => 'Iniciar sesión';
	@override String get signinOrContinueOnRemote => 'Para continuar, tendrá que ir a su servidor o registrarse e iniciar sesión en este servidor';
	@override String get invitations => 'Invitar';
	@override String get invitationCode => 'Código de invitación';
	@override String get checking => 'Comprobando';
	@override String get available => 'Disponible';
	@override String get unavailable => 'No disponible';
	@override String get usernameInvalidFormat => 'utiliza letras, números y/o -.';
	@override String get tooShort => 'Demasiado corto';
	@override String get tooLong => 'Demasiado largo';
	@override String get weakPassword => 'Contraseña débil';
	@override String get normalPassword => 'Buena contraseña';
	@override String get strongPassword => 'Muy buena contraseña';
	@override String get passwordMatched => 'Correcto';
	@override String get passwordNotMatched => 'Las contraseñas no coinciden';
	@override String signinWith({required Object x}) => 'Inicie sesión con ${x}';
	@override String get signinFailed => 'Autenticación fallida. Asegúrate de haber usado el nombre de usuario y contraseña correctos.';
	@override String get or => 'O';
	@override String get language => 'Idioma';
	@override String get uiLanguage => 'Idioma de visualización de la interfaz';
	@override String aboutX({required Object x}) => 'Acerca de ${x}';
	@override String get emojiStyle => 'Estilo de emoji';
	@override String get native => 'Nativo';
	@override String get menuStyle => 'Diseño del menú';
	@override String get style => 'Diseño';
	@override String get drawer => 'Cajón de Aplicaciones';
	@override String get popup => 'Ventana emergente';
	@override String get showNoteActionsOnlyHover => 'Mostrar acciones de la nota sólo al pasar el cursor';
	@override String get showReactionsCount => 'Mostrar el número de reacciones en las notas';
	@override String get noHistory => 'No hay datos en el historial';
	@override String get signinHistory => 'Historial de ingresos';
	@override String get enableAdvancedMfm => 'Habilitar MFM avanzado';
	@override String get enableAnimatedMfm => 'Habilitar MFM con movimiento';
	@override String get doing => 'Voy en camino';
	@override String get category => 'Categoría';
	@override String get tags => 'Etiqueta';
	@override String get docSource => 'Fuente de este documento';
	@override String get createAccount => 'Crear cuenta';
	@override String get existingAccount => 'Cuenta existente';
	@override String get regenerate => 'Regenerar';
	@override String get fontSize => 'Tamaño de la letra';
	@override String get mediaListWithOneImageAppearance => 'Altura de la lista de medios con una sola imagen.';
	@override String limitTo({required Object x}) => '${x} hasta un máximo de';
	@override String get showMediaListByGridInWideArea => 'Cuando el ancho de la pantalla sea grande, muestra la lista de multimedia uno al lado del otro.';
	@override String get noFollowRequests => 'No hay solicitudes de seguimiento';
	@override String get openImageInNewTab => 'Abrir imagen en nueva pestaña';
	@override String get dashboard => 'Panel de control';
	@override String get local => 'Local';
	@override String get remote => 'Remoto';
	@override String get total => 'Total';
	@override String get weekOverWeekChanges => 'Dif semanal';
	@override String get dayOverDayChanges => 'Dif diaria';
	@override String get appearance => 'Apariencia';
	@override String get clientSettings => 'Configuración del cliente';
	@override String get accountSettings => 'Ajustes de cuenta';
	@override String get promotion => 'Promovido';
	@override String get promote => 'Promover';
	@override String get numberOfDays => 'Cantidad de dias';
	@override String get hideThisNote => 'Ocultar esta nota';
	@override String get showFeaturedNotesInTimeline => 'Mostrar notas destacadas en la línea de tiempo';
	@override String get objectStorage => 'Almacenamiento de objetos';
	@override String get useObjectStorage => 'Usar almacenamiento de objetos';
	@override String get objectStorageBaseUrl => 'Base URL';
	@override String get objectStorageBaseUrlDesc => 'Prefijo de URL utilizado para construir URL para hacer referencia a objetos (medios). Especifique su URL si está utilizando un CDN o Proxy; de lo contrario, especifique la dirección a la que se puede acceder públicamente de acuerdo con la guía de servicio que va a utilizar. i.g \'https://<bucket>.s3.amazonaws.com\' para AWS S3 y \'https://storage.googleapis.com/<bucket>\' para GCS.';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => 'Especifique el nombre del depósito utilizado en el servicio configurado.';
	@override String get objectStoragePrefix => 'Prefix';
	@override String get objectStoragePrefixDesc => 'Los archivos se almacenarán en el directorio de este prefijo.';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageEndpointDesc => 'Deje esto en blanco si está utilizando AWS S3; de lo contrario, especifique el punto final como \'<host>\' o \'<host>: <port>\' de acuerdo con la guía de servicio que va a utilizar.';
	@override String get objectStorageRegion => 'Region';
	@override String get objectStorageRegionDesc => 'Especifique una región como \'xx-east-1\'. Si su servicio no tiene distinción sobre regiones, déjelo en blanco o complete con \'us-east-1\'.';
	@override String get objectStorageUseSSL => 'Usar SSL';
	@override String get objectStorageUseSSLDesc => 'Desactive esto si no va a usar HTTPS para la conexión API';
	@override String get objectStorageUseProxy => 'Conectarse a través de Proxy';
	@override String get objectStorageUseProxyDesc => 'Desactive esto si no va a usar Proxy para la conexión de Almacenamiento de objetos';
	@override String get objectStorageSetPublicRead => 'Seleccionar "public-read" al subir ';
	@override String get s3ForcePathStyleDesc => 'Si s3ForcePathStyle esta habilitado el nombre del bucket debe ser especificado como parte de la URL en lugar del nombre de host en la URL. Puede ser necesario activar esta opción cuando se utilice, por ejemplo, Minio en un servidor propio.';
	@override String get serverLogs => 'Registros del servidor';
	@override String get deleteAll => 'Eliminar todos';
	@override String get showFixedPostForm => 'Visualizar la ventana de publicación en la parte superior de la línea de tiempo.';
	@override String get showFixedPostFormInChannel => 'Mostrar el formulario de publicación por encima de la cronología (Canales)';
	@override String get withRepliesByDefaultForNewlyFollowed => 'Incluir por defecto respuestas de usuarios recién seguidos en la línea de tiempo';
	@override String get newNoteRecived => 'Tienes una nota nueva';
	@override String get newNote => 'Nueva nota';
	@override String get sounds => 'Sonidos';
	@override String get sound => 'Sonidos';
	@override String get notificationSoundSettings => 'Configuración del sonido de las notificaciones';
	@override String get listen => 'Escuchar';
	@override String get none => 'Ninguna';
	@override String get showInPage => 'Mostrar en la página';
	@override String get popout => 'Popout';
	@override String get volume => 'Volumen';
	@override String get masterVolume => 'Volumen principal';
	@override String get notUseSound => 'Sin sonido';
	@override String get useSoundOnlyWhenActive => 'Sonar solo cuando Misskey esté activo';
	@override String get details => 'Detalles';
	@override String get renoteDetails => 'Detalles(Renota)';
	@override String get chooseEmoji => 'Elije un emoji';
	@override String get unableToProcess => 'La operación no se puede llevar a cabo';
	@override String get recentUsed => 'Usado recientemente';
	@override String get install => 'Instalación';
	@override String get uninstall => 'Desinstalar';
	@override String get installedApps => 'Aplicaciones Autorizadas';
	@override String get nothing => 'No hay nada que ver aqui';
	@override String get installedDate => 'Autorizado';
	@override String get lastUsedDate => 'Utilizado el';
	@override String get state => 'Estado';
	@override String get sort => 'Ordenar';
	@override String get ascendingOrder => 'Ascendente';
	@override String get descendingOrder => 'Descendente';
	@override String get scratchpad => 'Scratch pad';
	@override String get scratchpadDescription => 'Scratchpad proporciona un entorno experimental para AiScript. Puede escribir, ejecutar y verificar los resultados que interactúan con Misskey.';
	@override String get uiInspector => 'Inspector de UI';
	@override String get uiInspectorDescription => 'Puedes visualizar una lista de elementos UI presentes en la memoria. Los componentes de la interfaz de usuario son generados por las funciones UI:C:';
	@override String get output => 'Salida';
	@override String get script => 'Script';
	@override String get disablePagesScript => 'Deshabilitar AiScript en Páginas';
	@override String get updateRemoteUser => 'Actualizar información de usuario remoto';
	@override String get unsetUserAvatar => 'Quitar avatar';
	@override String get unsetUserAvatarConfirm => '¿Confirmas que quieres quitar tu avatar?';
	@override String get unsetUserBanner => 'Quitar banner';
	@override String get unsetUserBannerConfirm => '¿Confirmas que quieres quitar tu banner?';
	@override String get deleteAllFiles => 'Borrar todos los archivos';
	@override String get deleteAllFilesConfirm => '¿Desea borrar todos los archivos?';
	@override String get removeAllFollowing => 'Retener todos los siguientes';
	@override String removeAllFollowingDescription({required Object host}) => 'Cancelar todos los siguientes del servidor ${host}. Ejecutar en caso de que esta instancia haya dejado de existir';
	@override String get userSuspended => 'Este usuario ha sido suspendido.';
	@override String get userSilenced => 'Este usuario ha sido silenciado.';
	@override String get yourAccountSuspendedTitle => 'Esta cuenta ha sido suspendida';
	@override String get yourAccountSuspendedDescription => 'Esta cuenta ha sido suspendida debido a violaciones de los términos de servicio del servidor y otras razones. Para más información, póngase en contacto con el administrador. Por favor, no cree una nueva cuenta.';
	@override String get tokenRevoked => 'Token inválido';
	@override String get tokenRevokedDescription => 'Este token expiró, vuelve a iniciar sesión.';
	@override String get accountDeleted => 'Cuenta borrada';
	@override String get accountDeletedDescription => 'Esta cuenta ha sido borrada.';
	@override String get menu => 'Menú';
	@override String get divider => 'Divisor';
	@override String get addItem => 'Agregar elemento';
	@override String get rearrange => 'Ordenar';
	@override String get relays => 'Relés';
	@override String get addRelay => 'Agregar relé';
	@override String get inboxUrl => 'Inbox URL';
	@override String get addedRelays => 'Relés añadidos';
	@override String get serviceworkerInfo => 'Se necesita activar para usar las notificaciones push';
	@override String get deletedNote => 'Nota eliminada';
	@override String get invisibleNote => 'Nota oculta';
	@override String get enableInfiniteScroll => 'Activar scroll infinito';
	@override String get visibility => 'Visibilidad';
	@override String get poll => 'Encuesta';
	@override String get useCw => 'Esconder contenidos';
	@override String get enablePlayer => 'Abrir reproductor';
	@override String get disablePlayer => 'Cerrar reproductor';
	@override String get expandTweet => 'Expandir tweet';
	@override String get themeEditor => 'Editor de temas';
	@override String get description => 'Descripción';
	@override String get describeFile => 'Añadir texto alternativo';
	@override String get enterFileDescription => 'Introducir un título';
	@override String get author => 'Autor';
	@override String get leaveConfirm => 'Hay modificaciones sin guardar. ¿Desea descartarlas?';
	@override String get manage => 'Administrar';
	@override String get plugins => 'Plugins';
	@override String get preferencesBackups => 'Respaldo de preferencias';
	@override String get deck => 'Deck';
	@override String get undeck => 'Quitar deck';
	@override String get useBlurEffectForModal => 'Usar efecto borroso en modales';
	@override String get useFullReactionPicker => 'Reacción';
	@override String get width => 'Ancho';
	@override String get height => 'Altura';
	@override String get large => 'Grande';
	@override String get medium => 'Mediano';
	@override String get small => 'Pequeño';
	@override String get generateAccessToken => 'Generar token de acceso';
	@override String get permission => 'Permisos';
	@override String get adminPermission => 'Permiso de administrador';
	@override String get enableAll => 'Activar todo';
	@override String get disableAll => 'Desactivar todo';
	@override String get tokenRequested => 'Permiso de acceso a la cuenta';
	@override String get pluginTokenRequestedDescription => 'Este plugin podrá usar los permisos descritos aquí';
	@override String get notificationType => 'Tipo de notificación';
	@override String get edit => 'Editar';
	@override String get emailServer => 'Servidor de correo';
	@override String get enableEmail => 'Activar el envío de correos electrónicos';
	@override String get emailConfigInfo => 'Usar en caso de validación de correo electrónico y pedido de contraseña';
	@override String get email => 'Correo';
	@override String get emailAddress => 'Correo electrónico';
	@override String get smtpConfig => 'Configuración del servidor SMTP';
	@override String get smtpHost => 'Host';
	@override String get smtpPort => 'Puerto';
	@override String get smtpUser => 'Nombre de usuario';
	@override String get smtpPass => 'Contraseña';
	@override String get emptyToDisableSmtpAuth => 'Deje el nombre del usuario y la contraseña en blanco para deshabilitar la autenticación SMTP';
	@override String get smtpSecure => 'Usar SSL/TLS implícito en la conexión SMTP';
	@override String get smtpSecureInfo => 'Apagar cuando se use STARTTLS';
	@override String get testEmail => 'Prueba de envío';
	@override String get wordMute => 'Silenciar palabras';
	@override String get wordMuteDescription => 'Minimiza las notas que contienen la palabra o frase especificada. Las notas minimizadas pueden visualizarse haciendo clic sobre ellas.';
	@override String get hardWordMute => 'Filtro de palabra fuerte';
	@override String get showMutedWord => 'Mostrar palabras silenciadas.';
	@override String get hardWordMuteDescription => 'Oculta las notas que contienen la palabra o frase especificada. A diferencia de Silenciar palabra, la nota quedará completamente oculta a la vista.';
	@override String get regexpError => 'Error de la expresión regular';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'Ocurrió un error en la expresión regular en la linea ${line} de las palabras muteadas ${tab}';
	@override String get instanceMute => 'Instancias silenciadas';
	@override String userSaysSomething({required Object name}) => '${name} dijo algo';
	@override String userSaysSomethingAbout({required Object name, required Object word}) => '${name} dijo algo sobre ${word}';
	@override String get makeActive => 'Activar';
	@override String get display => 'Apariencia';
	@override String get copy => 'Copiar';
	@override String get copiedToClipboard => 'Copiado al portapapeles';
	@override String get metrics => 'Métricas';
	@override String get overview => 'Resumen';
	@override String get logs => 'Registros';
	@override String get delayed => 'atrasado';
	@override String get database => 'Base de datos';
	@override String get channel => 'Canal';
	@override String get create => 'Crear';
	@override String get notificationSetting => 'Ajustes de Notificaciones';
	@override String get notificationSettingDesc => 'Por favor elige el tipo de notificación a mostrar';
	@override String get useGlobalSetting => 'Usar ajustes globales';
	@override String get useGlobalSettingDesc => 'Al activarse, se usará la configuración de notificaciones de la cuenta, al desactivarse se pueden hacer configuraciones particulares.';
	@override String get other => 'Otro';
	@override String get regenerateLoginToken => 'Regenerar token de login';
	@override String get regenerateLoginTokenDescription => 'Regenerar el token usado internamente durante el login. No siempre es necesario hacerlo. Al hacerlo de nuevo, se deslogueará en todos los dispositivos.';
	@override String get theKeywordWhenSearchingForCustomEmoji => 'Palabra clave para buscar el emoji personalizado.';
	@override String get setMultipleBySeparatingWithSpace => 'Puedes añadir mas de uno, separado por espacios.';
	@override String get fileIdOrUrl => 'Id del archivo o URL';
	@override String get behavior => 'Comportamiento';
	@override String get sample => 'Muestra';
	@override String get abuseReports => 'Reportes';
	@override String get reportAbuse => 'Reportar';
	@override String get reportAbuseRenote => 'Reportar renota';
	@override String reportAbuseOf({required Object name}) => 'Reportar a ${name}';
	@override String get fillAbuseReportDescription => 'Ingrese los detalles del reporte. Si hay una nota en particular, ingrese la URL de esta.';
	@override String get abuseReported => 'Se ha enviado el reporte. Muchas gracias.';
	@override String get reporter => 'Reportador';
	@override String get reporteeOrigin => 'Reportar a';
	@override String get reporterOrigin => 'Origen del reporte';
	@override String get send => 'Enviar';
	@override String get openInNewTab => 'Abrir en una Nueva Pestaña';
	@override String get openInSideView => 'Abrir en una vista al costado';
	@override String get defaultNavigationBehaviour => 'Navegación por defecto';
	@override String get editTheseSettingsMayBreakAccount => 'Editar estas configuraciones puede dañar su cuenta.';
	@override String get instanceTicker => 'Información de notas de la instancia';
	@override String waitingFor({required Object x}) => 'Esperando a ${x}';
	@override String get random => 'Aleatorio';
	@override String get system => 'Sistema';
	@override String get switchUi => 'Cambiar interfaz de usuario';
	@override String get desktop => 'Escritorio';
	@override String get clip => 'Clip';
	@override String get createNew => 'Crear Nuevo';
	@override String get optional => 'Opcional';
	@override String get createNewClip => 'Crear clip nuevo';
	@override String get unclip => 'Quitar clip';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'Esta nota ya está incluida en el clip "${name}". ¿Quiere quitar la nota del clip?';
	@override String get public => 'Público';
	@override String get private => 'Privado';
	@override String i18nInfo({required Object link}) => 'Misskey está siendo traducido a varios idiomas gracias a voluntarios. Se puede colaborar traduciendo en ${link}';
	@override String get manageAccessTokens => 'Administrar tokens de acceso';
	@override String get accountInfo => 'Información de la Cuenta';
	@override String get notesCount => 'Cantidad de notas';
	@override String get repliesCount => 'Cantidad de respuestas hechas';
	@override String get renotesCount => 'Cantidad de renotas hechas';
	@override String get repliedCount => 'Cantidad de respuestas recibidas';
	@override String get renotedCount => 'Cantidad de renotas recibidas';
	@override String get followingCount => 'Cantidad de seguidos';
	@override String get followersCount => 'Cantidad de seguidores';
	@override String get sentReactionsCount => 'Cantidad de reacciones hechas';
	@override String get receivedReactionsCount => 'Cantidad de reacciones recibidas';
	@override String get pollVotesCount => 'Cantidad de votaciones hechas';
	@override String get pollVotedCount => 'Cantidad de votaciones recibidas';
	@override String get yes => 'Si';
	@override String get no => 'No';
	@override String get driveFilesCount => 'Cantidad de archivos en el drive';
	@override String get driveUsage => 'Uso del drive';
	@override String get noCrawle => 'Rechazar indexación del crawler';
	@override String get noCrawleDescription => 'Pedir a los motores de búsqueda que no indexen tu perfil, notas, páginas, etc.';
	@override String get lockedAccountInfo => 'A menos que configures la visibilidad de tus notas como "Sólo seguidores", tus notas serán visibles para cualquiera, incluso si requieres que los seguidores sean aprobados manualmente.';
	@override String get alwaysMarkSensitive => 'Marcar los medios de comunicación como contenido sensible por defecto';
	@override String get loadRawImages => 'Cargar las imágenes originales en lugar de mostrar las miniaturas';
	@override String get disableShowingAnimatedImages => 'No reproducir imágenes animadas';
	@override String get disableShowingAnimatedImages_caption => 'Si las imágenes animadas no se reproducen independientemente de esta configuración, es posible que la configuración de accesibilidad del navegador o del sistema operativo, los modos de ahorro de energía o funciones similares estén interfiriendo.';
	@override String get highlightSensitiveMedia => 'Resaltar medios marcados como sensibles';
	@override String get verificationEmailSent => 'Se le ha enviado un correo electrónico de confirmación. Por favor, acceda al enlace proporcionado en el correo electrónico para completar la configuración.';
	@override String get notSet => 'Sin especificar';
	@override String get emailVerified => 'Su dirección de correo electrónico ha sido verificada.';
	@override String get noteFavoritesCount => 'Número de notas favoritas';
	@override String get pageLikesCount => 'Número de favoritos en la página';
	@override String get pageLikedCount => 'Número de favoritos de su página';
	@override String get contact => 'Contacto';
	@override String get useSystemFont => 'Utilizar la tipografía por defecto del sistema';
	@override String get clips => 'Clip';
	@override String get experimentalFeatures => 'Características experimentales';
	@override String get experimental => 'Función experimental';
	@override String get thisIsExperimentalFeature => 'Se trata de una función experimental. Las especificaciones pueden cambiar o puede que no funcione correctamente.';
	@override String get developer => 'Desarrolladores';
	@override String get makeExplorable => 'Hacer visible la cuenta en "Explorar"';
	@override String get makeExplorableDescription => 'Si desactiva esta opción, su cuenta no aparecerá en la sección "Explorar".';
	@override String get duplicate => 'Duplicar';
	@override String get left => 'Izquierda';
	@override String get center => 'Centrar';
	@override String get wide => 'Ancho';
	@override String get narrow => 'Estrecho';
	@override String get reloadToApplySetting => 'Esta configuración sólo se aplicará después de recargar la página. ¿Recargar ahora?';
	@override String get needReloadToApply => 'Se requiere un reinicio para la aplicar los cambios';
	@override String get needToRestartServerToApply => 'Se requiere un reinicio para la aplicar los cambios';
	@override String get showTitlebar => 'Mostrar la barra de título';
	@override String get clearCache => 'Limpiar caché';
	@override String onlineUsersCount({required Object n}) => '${n} usuarios en línea';
	@override String nUsers({required Object n}) => '${n} Usuarios';
	@override String nNotes({required Object n}) => '${n} Notas';
	@override String get sendErrorReports => 'Envíar informe de errores';
	@override String get sendErrorReportsDescription => 'Si habilita esta opción, ayudará a mejorar la calidad de Misskey compartiendo información detallada sobre los errores cuando se produzca un problema.\nEsto incluye información como la versión de su sistema operativo, el tipo de navegador que utiliza, su historial de actividad, etc.';
	@override String get myTheme => 'Mi Tema';
	@override String get backgroundColor => 'Fondo';
	@override String get accentColor => 'Acento';
	@override String get textColor => 'Texto';
	@override String get saveAs => 'Guardar como…';
	@override String get advanced => 'Avanzado';
	@override String get advancedSettings => 'Configuración avanzada';
	@override String get value => 'Valores';
	@override String get createdAt => 'Fecha de creación';
	@override String get updatedAt => 'Actualizado';
	@override String get saveConfirm => '¿Guardar cambios?';
	@override String get deleteConfirm => '¿Desea eliminarlo?';
	@override String get invalidValue => 'Este no es un valor válido.';
	@override String get registry => 'Registro';
	@override String get closeAccount => 'Cerrar cuenta';
	@override String get currentVersion => 'Versión actual';
	@override String get latestVersion => 'Última versión';
	@override String get youAreRunningUpToDateClient => 'Está utilizando la versión más reciente de su cliente.';
	@override String get newVersionOfClientAvailable => 'Hay una versión más nueva de su cliente disponible.';
	@override String get usageAmount => 'Uso';
	@override String get capacity => 'Capacidad';
	@override String get inUse => 'Usado';
	@override String get editCode => 'Editar código';
	@override String get apply => 'Aplicar';
	@override String get receiveAnnouncementFromInstance => 'Recibir notificaciones de la instancia';
	@override String get emailNotification => 'Notificaciones por correo electrónico';
	@override String get publish => 'Publicar';
	@override String get inChannelSearch => 'Buscar en el canal';
	@override String get useReactionPickerForContextMenu => 'Haga clic con el botón derecho para abrir el menu de reacciones';
	@override String typingUsers({required Object users}) => '${users} está escribiendo';
	@override String get jumpToSpecifiedDate => 'Saltar a una fecha específica';
	@override String get showingPastTimeline => 'Mostrar líneas de tiempo antiguas';
	@override String get clear => 'Limpiar';
	@override String get markAllAsRead => 'Marcar todo como leído';
	@override String get goBack => 'Anterior';
	@override String get unlikeConfirm => '¿Quitar como favorito?';
	@override String get fullView => 'Vista completa';
	@override String get quitFullView => 'quitar vista completa';
	@override String get addDescription => 'Agregar descripción';
	@override String get userPagePinTip => 'Puede mantener sus notas visibles aquí seleccionando \'Fijar al perfil\' en el menú de notas individuales';
	@override String get notSpecifiedMentionWarning => 'Algunas menciones no están incluidas en el destino';
	@override String get info => 'Información';
	@override String get userInfo => 'Información del usuario';
	@override String get unknown => 'Desconocido';
	@override String get onlineStatus => 'En línea';
	@override String get hideOnlineStatus => 'Mostrarse como desconectado';
	@override String get hideOnlineStatusDescription => 'Ocultar su estado en línea puede reducir la eficacia de algunas funciones, como la búsqueda';
	@override String get online => 'En línea';
	@override String get active => 'Activo';
	@override String get offline => 'Sin conexión';
	@override String get notRecommended => 'obsoleto';
	@override String get botProtection => 'Protección contra bots';
	@override String get instanceBlocking => 'Instancias bloqueadas';
	@override String get selectAccount => 'Elija una cuenta';
	@override String get switchAccount => 'Cambiar de cuenta';
	@override String get enabled => 'Activado';
	@override String get disabled => 'Desactivado';
	@override String get quickAction => 'Acciones rápidas';
	@override String get user => 'Usuarios';
	@override String get administration => 'Administrar';
	@override String get accounts => 'Cuentas';
	@override String get switch_ => 'Cambiar';
	@override String get noMaintainerInformationWarning => 'No se ha establecido la información del administrador';
	@override String get noInquiryUrlWarning => 'No se ha guardado la URL de consulta.';
	@override String get noBotProtectionWarning => 'La protección contra los bots no está configurada';
	@override String get configure => 'Configurar';
	@override String get postToGallery => 'Crear una nueva publicación en la galería';
	@override String get postToHashtag => 'Publicar a este hashtag';
	@override String get gallery => 'Galería';
	@override String get recentPosts => 'Publicaciones recientes';
	@override String get popularPosts => 'Más vistos';
	@override String get shareWithNote => 'Compartir con una nota';
	@override String get ads => 'Anuncios';
	@override String get expiration => 'Termina el';
	@override String get startingperiod => 'Comienzo';
	@override String get memo => 'Notas';
	@override String get priority => 'Prioridad';
	@override String get high => 'Alta';
	@override String get middle => 'Mediano';
	@override String get low => 'Baja';
	@override String get emailNotConfiguredWarning => 'No se ha configurado una dirección de correo electrónico.';
	@override String get ratio => 'Proporción';
	@override String get previewNoteText => 'Mostrar vista preliminar';
	@override String get customCss => 'CSS personalizado';
	@override String get customCssWarn => 'Este ajuste sólo debe utilizarse si se sabe lo que hace. Introducir valores inadecuados puede hacer que el cliente deje de funcionar con normalidad.';
	@override String get global => 'Global';
	@override String get squareAvatars => 'Mostrar iconos cuadrados';
	@override String get sent => 'Enviar';
	@override String get received => 'Recibido';
	@override String get searchResult => 'Resultados de búsqueda';
	@override String get hashtags => 'Hashtag';
	@override String get troubleshooting => 'Solución de problemas';
	@override String get useBlurEffect => 'Utilizar efecto de desenfoque en la interfaz de usuario';
	@override String get learnMore => 'Ver más';
	@override String get misskeyUpdated => '¡Misskey ha sido actualizado!';
	@override String get whatIsNew => 'Mostrar cambios';
	@override String get translate => 'Traducir';
	@override String translatedFrom({required Object x}) => 'Traducido de ${x}';
	@override String get accountDeletionInProgress => 'La eliminación de la cuenta está en curso';
	@override String get usernameInfo => 'Un nombre que identifique su cuenta de otras en este servidor.  Puede utilizar el alfabeto (a~z, A~Z), dígitos (0~9) o guiones bajos (_). Los nombres de usuario no se pueden cambiar posteriormente.';
	@override String get aiChanMode => 'Modo Ai';
	@override String get devMode => 'Modo de desarrollador';
	@override String get keepCw => 'Mantener la advertencia de contenido';
	@override String get pubSub => 'Cuentas Pub/Sub';
	@override String get lastCommunication => 'Última comunicación';
	@override String get resolved => 'Resuelto';
	@override String get unresolved => 'Sin resolver';
	@override String get breakFollow => 'Eliminar seguidor';
	@override String get breakFollowConfirm => '¿De verdad quieres eliminar a este seguidor?';
	@override String get itsOn => '¡Está encendido!';
	@override String get itsOff => '¡Está apagado!';
	@override String get on => 'Activado';
	@override String get off => 'Desactivado';
	@override String get emailRequiredForSignup => 'Se requiere una dirección de correo electrónico para el registro de la cuenta';
	@override String get unread => 'No leído';
	@override String get filter => 'Filtrar';
	@override String get controlPanel => 'Panel de control';
	@override String get manageAccounts => 'Administrar cuenta';
	@override String get makeReactionsPublic => 'Hacer el historial de reacciones público';
	@override String get makeReactionsPublicDescription => 'Todas las reacciones que hayas hecho serán públicamente visibles.';
	@override String get classic => 'Clásico';
	@override String get muteThread => 'Silenciar hilo';
	@override String get unmuteThread => 'Mostrar hilo';
	@override String get followingVisibility => 'Visibilidad de seguidos';
	@override String get followersVisibility => 'Visibilidad de seguidores';
	@override String get continueThread => 'Ver la continuación del hilo';
	@override String get deleteAccountConfirm => 'La cuenta será borrada. ¿Está seguro?';
	@override String get incorrectPassword => 'La contraseña es incorrecta';
	@override String get incorrectTotp => 'La contraseña de un solo uso es incorrecta o ha caducado.';
	@override String voteConfirm({required Object choice}) => '¿Confirma su voto a ${choice}?';
	@override String get hide => 'Ocultar';
	@override String get useDrawerReactionPickerForMobile => 'Mostrar panel de reacciones en móviles';
	@override String welcomeBackWithName({required Object name}) => 'Bienvenido otra vez, ${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => 'Cliquée ${ok} y verifique su correo';
	@override String get overridedDeviceKind => 'Tipo de dispositivo';
	@override String get smartphone => 'Teléfono smartphone';
	@override String get tablet => 'Tablet';
	@override String get auto => 'Automático';
	@override String get themeColor => 'Color del tema';
	@override String get size => 'Tamaño';
	@override String get numberOfColumn => 'Cantidad de columnas';
	@override String get searchByGoogle => 'Buscar';
	@override String get instanceDefaultLightTheme => 'Tema claro por defecto de la instancia';
	@override String get instanceDefaultDarkTheme => 'Tema oscuro por defecto de la instancia';
	@override String get instanceDefaultThemeDescription => 'Ingrese el código del tema en formato objeto';
	@override String get mutePeriod => 'Período de silenciamiento';
	@override String get period => 'Termina el';
	@override String get indefinitely => 'Sin límite de tiempo';
	@override String get tenMinutes => '10 minutos';
	@override String get oneHour => '1 hora';
	@override String get oneDay => '1 día';
	@override String get oneWeek => '1 semana';
	@override String get oneMonth => '1 mes';
	@override String get threeMonths => 'Tres meses';
	@override String get oneYear => 'Un año';
	@override String get threeDays => 'Tres días';
	@override String get reflectMayTakeTime => 'Puede pasar un tiempo hasta que se reflejen los cambios';
	@override String get failedToFetchAccountInformation => 'No se pudo obtener información de la cuenta';
	@override String get rateLimitExceeded => 'Se excedió el límite de peticiones';
	@override String get cropImage => 'Recortar Imagen';
	@override String get cropImageAsk => '¿Desea recortar la imagen?';
	@override String get cropYes => 'Recortar';
	@override String get cropNo => 'Usar como está';
	@override String get file => 'Archivos';
	@override String recentNHours({required Object n}) => 'Últimas ${n} horas';
	@override String recentNDays({required Object n}) => 'Últimos ${n} días';
	@override String get noEmailServerWarning => 'No se ha configurado un servidor de correo electrónico.';
	@override String get thereIsUnresolvedAbuseReportWarning => 'Hay reportes sin resolver';
	@override String get recommended => 'Recomendado';
	@override String get check => 'Verificar';
	@override String get driveCapOverrideLabel => 'Cambiar la capacidad de la unidad para este usuario';
	@override String get driveCapOverrideCaption => 'Restablecer la capacidad a su predeterminado ingresando un valor de 0 o menos';
	@override String get requireAdminForView => 'Necesitas iniciar sesión como administrador para ver esto.';
	@override String get isSystemAccount => 'Cuenta creada y operada automáticamente por el sistema';
	@override String typeToConfirm({required Object x}) => 'Ingrese ${x} para confirmar';
	@override String get deleteAccount => 'Borrar cuenta';
	@override String get document => 'Documento';
	@override String get numberOfPageCache => 'Cantidad de páginas cacheadas';
	@override String get numberOfPageCacheDescription => 'Al aumentar el número mejora la conveniencia pero también puede aumentar la carga y la memoria a usarse';
	@override String get logoutConfirm => '¿Cerrar sesión?';
	@override String get logoutWillClearClientData => 'Al cerrar la sesión, la información de configuración del cliente se borra del navegador. Para garantizar que la información de configuración se pueda restaurar al volver a iniciar sesión, active la copia de seguridad automática de la configuración.';
	@override String get lastActiveDate => 'Utilizado por última vez el';
	@override String get statusbar => 'Barra de estado';
	@override String get pleaseSelect => 'Selecciona una opción';
	@override String get reverse => 'Echar de un capirotazo';
	@override String get colored => 'Color';
	@override String get refreshInterval => 'Intervalo de actualización';
	@override String get label => 'Etiqueta';
	@override String get type => 'Tipo';
	@override String get speed => 'Velocidad';
	@override String get slow => 'Lento';
	@override String get fast => 'Rápido';
	@override String get sensitiveMediaDetection => 'Detección de contenido NSFW';
	@override String get localOnly => 'Solo local';
	@override String get remoteOnly => 'Sólo remoto';
	@override String get failedToUpload => 'La subida falló';
	@override String get cannotUploadBecauseInappropriate => 'Este archivo no se puede subir debido a que algunas partes han sido detectadas comoNSFW.';
	@override String get cannotUploadBecauseNoFreeSpace => 'La subida falló debido a falta de espacio libre en la unidad del usuario.';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'Este archivo supera el peso máximo y no puede ser subido.';
	@override String get cannotUploadBecauseUnallowedFileType => 'Incapaz de subir el archivo debido a que es un tipo de archivo no autorizado.';
	@override String get beta => 'Beta';
	@override String get enableAutoSensitive => 'Marcar automáticamente contenido NSFW';
	@override String get enableAutoSensitiveDescription => 'Permite la detección y marcado automático de contenido NSFW usando \'Machine Learning\' cuando sea posible. Incluso si esta opción está desactivada, puede ser activado para toda la instancia.';
	@override String get activeEmailValidationDescription => 'Habilita la validación estricta de direcciones de correo electrónico, lo cual incluye la revisión de direcciones desechables y si se puede comunicar con éstas. Cuando está deshabilitado, sólo el formato de la dirección es validado.';
	@override String get navbar => 'Barra de navegación';
	@override String get shuffle => 'Aleatorio';
	@override String get account => 'Cuentas';
	@override String get move => 'Mover';
	@override String get pushNotification => 'Alerta emergente';
	@override String get subscribePushNotification => 'Activar las notificaciones emergentes';
	@override String get unsubscribePushNotification => 'Desactivar las notificaciones emergentes';
	@override String get pushNotificationAlreadySubscribed => 'Notificaciones emergentes ya activadas';
	@override String get pushNotificationNotSupported => 'El navegador o la instancia no admiten notificaciones push';
	@override String get sendPushNotificationReadMessage => 'Eliminar las notificaciones push después de leer las notificaciones y los mensajes';
	@override String get sendPushNotificationReadMessageCaption => 'La notificación "" aparecerá momentáneamente. Esto puede aumentar el consumo de batería del dispositivo.';
	@override String get pleaseAllowPushNotification => 'Por favor, permita las notificaciones y la configuración del navegador.';
	@override String get browserPushNotificationDisabled => 'No se ha podido obtener permiso para enviar notificaciones.';
	@override String browserPushNotificationDisabledDescription({required Object serverName}) => 'No tienes permiso para enviar notificaciones desde ${serverName}. Permite las notificaciones en la configuración de tu navegador y vuelve a intentarlo.';
	@override String get windowMaximize => 'Maximizar';
	@override String get windowMinimize => 'Minimizar';
	@override String get windowRestore => 'Regresar';
	@override String get caption => 'Texto alternativo';
	@override String get loggedInAsBot => 'Inicio sesión como cuenta bot.';
	@override String get tools => 'Utilidades';
	@override String get cannotLoad => 'No se puede cargar.';
	@override String get numberOfProfileView => 'Número de vistas de perfil';
	@override String get like => '¡Muy bien!';
	@override String get unlike => 'Quitar \'me gusta\'';
	@override String get numberOfLikes => 'Cantidad de \'Me gusta\'';
	@override String get show => 'Apariencia';
	@override String get neverShow => 'No mostrar de nuevo';
	@override String get remindMeLater => 'Recordar después';
	@override String get didYouLikeMisskey => '¿Te gusta Misskey?';
	@override String pleaseDonate({required Object host}) => '${host} usa el software gratuito Misskey. Por favor ¡Considera donar al proyecto principal para que podamos continuar!';
	@override String correspondingSourceIsAvailable({required Object anchor}) => 'El código fuente correspondiente se encuentra disponible en ${anchor}';
	@override String get roles => 'Roles';
	@override String get role => 'Rol';
	@override String get noRole => 'Rol no encontrado';
	@override String get normalUser => 'Usuario normal';
	@override String get undefined => 'Indefinido';
	@override String get assign => 'Asignar';
	@override String get unassign => 'Quitar';
	@override String get color => 'Color';
	@override String get manageCustomEmojis => 'Administrar emojis personalizados';
	@override String get manageAvatarDecorations => 'Administrar decoraciones de avatar';
	@override String get youCannotCreateAnymore => 'Has llegado al límite de creaciones.';
	@override String get cannotPerformTemporary => 'Temporalmente no disponible';
	@override String get cannotPerformTemporaryDescription => 'Esta acción no se puede realizar porque se excedió el límite de ejecución. Espera un poco y prueba de nuevo.';
	@override String get invalidParamError => 'Parámetros inválidos';
	@override String get invalidParamErrorDescription => 'Los parámetros de la solicitud son inválidos. Normalmente se trata de un error, pero también puede haberse excedido algún límite o similares.';
	@override String get permissionDeniedError => 'Operación denegada';
	@override String get permissionDeniedErrorDescription => 'Esta cuenta no tiene permisos para hacer esa acción.';
	@override String get preset => 'Predefinido';
	@override String get selectFromPresets => 'Escoger desde predefinidos';
	@override String get custom => 'Personalizado';
	@override String get achievements => 'Logros';
	@override String get gotInvalidResponseError => 'Respuesta del servidor inválida';
	@override String get gotInvalidResponseErrorDescription => 'Puede que el servidor esté caído o en mantenimiento. Favor de intentar más tarde';
	@override String get thisPostMayBeAnnoying => 'Ésta publicación puede resultar molesta.';
	@override String get thisPostMayBeAnnoyingHome => 'Publicar en línea de tiempo \'Inicio\'';
	@override String get thisPostMayBeAnnoyingCancel => 'detener';
	@override String get thisPostMayBeAnnoyingIgnore => 'Publicar de todos modos';
	@override String get collapseRenotes => 'Colapsar renotas que ya hayas visto';
	@override String get collapseRenotesDescription => 'Contrae notas a las que  ya has reaccionado o renotado ';
	@override String get internalServerError => 'Error interno del servidor';
	@override String get internalServerErrorDescription => 'El servidor tuvo un error inesperado.';
	@override String get copyErrorInfo => 'Copiar detalles del error';
	@override String get joinThisServer => 'Registrarse en esta instancia';
	@override String get exploreOtherServers => 'Buscar otra instancia';
	@override String get letsLookAtTimeline => 'Mira la línea de tiempo';
	@override String get disableFederationConfirm => '¿Estas seguro que quieres desactivar la federación?';
	@override String get disableFederationConfirmWarn => 'Aunque no exista federación los posts no serán marcados como privados. En la mayoría de los casos, no es necesario hacer los posts no federar.';
	@override String get disableFederationOk => 'Desactivar.';
	@override String get invitationRequiredToRegister => 'Esta instancia está configurada sólo por invitación, tienes que ingresar un código de invitación válido.';
	@override String get emailNotSupported => 'Esta instancia no soporta el envío de correo electrónico';
	@override String get postToTheChannel => 'Publicar en el canal';
	@override String get cannotBeChangedLater => 'Esto no podrá ser cambiado después.';
	@override String get reactionAcceptance => 'Aceptación de reacciones';
	@override String get likeOnly => 'Sólo \'me gusta\'';
	@override String get likeOnlyForRemote => 'Sólo reacciones de instancias remotas';
	@override String get nonSensitiveOnly => 'Solo no sensible';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'Sólo no contenido sensible (sólo me gusta en remoto)';
	@override String get rolesAssignedToMe => 'Roles asignados a mí';
	@override String get resetPasswordConfirm => '¿Realmente quieres cambiar la contraseña?';
	@override String get sensitiveWords => 'Palabras sensibles';
	@override String get sensitiveWordsDescription => 'La visibilidad de todas las notas que contienen cualquiera de las palabras configuradas serán puestas en "Inicio" automáticamente. Puedes enumerás varias separándolas con saltos de línea';
	@override String get sensitiveWordsDescription2 => 'Si se usan espacios se crearán expresiones AND y las palabras subsecuentes con barras inclinadas se convertirán en expresiones regulares.';
	@override String get prohibitedWords => 'Palabras explícitas';
	@override String get prohibitedWordsDescription => 'Activa un error cuando se intenta publicar una nota que contiene una o varias palabras prohibidas. Se pueden establecer varias palabras, una por línea.';
	@override String get prohibitedWordsDescription2 => 'Si se usan espacios se crearán expresiones AND y las palabras subsecuentes con barras inclinadas se convertirán en expresiones regulares.';
	@override String get hiddenTags => 'Hashtags ocultos';
	@override String get hiddenTagsDescription => 'Selecciona las etiquetas que no se mostrarán en tendencias. Una etiqueta por línea.';
	@override String get notesSearchNotAvailable => 'No se puede buscar una nota';
	@override String get usersSearchNotAvailable => 'La búsqueda de usuarios no está disponible.';
	@override String get license => 'Licencia';
	@override String get unfavoriteConfirm => '¿Desea quitar de favoritos?';
	@override String get myClips => 'Mis clips';
	@override String get drivecleaner => 'Limpiador del Drive';
	@override String get retryAllQueuesNow => 'Reintentar inmediatamente todas las colas';
	@override String get retryAllQueuesConfirmTitle => 'Desea ¿reintentar inmediatamente todas las colas?';
	@override String get retryAllQueuesConfirmText => 'La carga del servidor está incrementándose temporalmente ';
	@override String get enableChartsForRemoteUser => 'Generar gráficas de usuarios remotos.';
	@override String get enableChartsForFederatedInstances => 'Generar gráficos de servidores remotos';
	@override String get enableStatsForFederatedInstances => 'Activar las estadísticas de las instancias remotas federadas';
	@override String get showClipButtonInNoteFooter => 'Añadir "Clip" al menú de notas';
	@override String get reactionsDisplaySize => 'Tamaño de las reacciones';
	@override String get limitWidthOfReaction => 'Limitar ancho de las reacciones';
	@override String get noteIdOrUrl => 'ID o URL de la nota';
	@override String get video => 'Video';
	@override String get videos => 'Video';
	@override String get audio => 'Sonido';
	@override String get audioFiles => 'Sonido';
	@override String get dataSaver => 'Ahorro de datos';
	@override String get accountMigration => 'Migración de cuenta';
	@override String get accountMoved => 'Este usuario se movió a una nueva cuenta:';
	@override String get accountMovedShort => 'Esta cuenta ha sido migrada.';
	@override String get operationForbidden => 'Operación prohibida';
	@override String get forceShowAds => 'Siempre mostrar anuncios';
	@override String get addMemo => 'Añadir nota';
	@override String get editMemo => 'Editar nota';
	@override String get reactionsList => 'Lista de reacciones';
	@override String get renotesList => 'Renotas';
	@override String get notificationDisplay => 'Notificaciones';
	@override String get leftTop => 'Arriba a la izquierda';
	@override String get rightTop => 'Arriba a la derecha';
	@override String get leftBottom => 'Abajo a la izquierda';
	@override String get rightBottom => 'Abajo a la derecha';
	@override String get stackAxis => 'Dirección de apilado';
	@override String get vertical => 'Vertical';
	@override String get horizontal => 'Horizontal';
	@override String get position => 'Posición';
	@override String get serverRules => 'Reglas del servidor';
	@override String get pleaseConfirmBelowBeforeSignup => 'Por favor confirma antes de continuar el registro';
	@override String get pleaseAgreeAllToContinue => 'Tienes que estar de acuerdo con los campos anteriores para contnuar.';
	@override String get continue_ => 'Continuar';
	@override String get preservedUsernames => 'Nombre de usuario reservado';
	@override String get preservedUsernamesDescription => 'La lista de nombres de usuario para reservar tienen que separarse con saltos de línea.\nEstos estarán indisponibles durante la creación de cuentas, pero pueden ser usados para que los administradores puedan crear esas cuentas manualmente. Las cuentas existentes con esos nombres de usuario no se verán afectadas.';
	@override String get createNoteFromTheFile => 'Componer una nota desde éste archivo';
	@override String get archive => 'Archivo';
	@override String get archived => 'Archivado';
	@override String get unarchive => 'Desarchivar';
	@override String channelArchiveConfirmTitle({required Object name}) => '¿Seguro de archivar ${name}?';
	@override String get channelArchiveConfirmDescription => 'Un canal archivado no aparecerá en la lista de canales ni en los resultados. Las nuevas publicaciones tampoco serán añadidas.';
	@override String get thisChannelArchived => 'El canal ha sido archivado.';
	@override String get displayOfNote => 'Mostrar notas';
	@override String get initialAccountSetting => 'Configración inicial de su cuenta';
	@override String get youFollowing => 'Siguiendo';
	@override String get preventAiLearning => 'Rechazar el uso en el Aprendizaje de Máquinas. (IA Generativa)';
	@override String get preventAiLearningDescription => 'Pedirle a las arañas (crawlers) no usar los textos publicados o imágenes en el aprendizaje automático (IA Predictiva / Generativa). Ésto se logra añadiendo una marca respuesta HTML con la cadena "noai" al cantenido. Una prevención total no podría lograrse sólo usando ésta marca, ya que puede ser simplemente ignorada.';
	@override String get options => 'Opciones';
	@override String get specifyUser => 'Especificar usuario';
	@override String get lookupConfirm => '¿Quiere informarse?';
	@override String get openTagPageConfirm => '¿Quieres abrir la página de etiquetas?';
	@override String get specifyHost => 'Especificar Host';
	@override String get failedToPreviewUrl => 'No se pudo generar la vista previa';
	@override String get update => 'Actualizar';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'Roles que pueden usar este emoji como reacción';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'Si no se especifican roles, cualquiera podrá usar éste emoji como reacción.';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'Éstos roles deben ser públicos.';
	@override String get cancelReactionConfirm => '¿Realmente quieres eliminar la reacción?';
	@override String get changeReactionConfirm => '¿Realmente quieres cambiar la reacción?';
	@override String get later => 'Ahora no';
	@override String get goToMisskey => 'ir a Misskey';
	@override String get additionalEmojiDictionary => 'Diccionario adicional de Emoji';
	@override String get installed => 'Instalado';
	@override String get branding => 'Marca';
	@override String get enableServerMachineStats => 'Publicar estadísticas de hardware del servidor';
	@override String get enableIdenticonGeneration => 'Activar generación de identicon por usuario';
	@override String get showRoleBadgesOfRemoteUsers => 'Mostrar la insignia de rol asignada a los usuarios remotos.';
	@override String get turnOffToImprovePerformance => 'Desactivar esto puede aumentar el rendimiento.';
	@override String get createInviteCode => 'Generar invitación';
	@override String get createWithOptions => 'Generar con opciones';
	@override String get createCount => 'Conteo de invitaciones';
	@override String get inviteCodeCreated => 'Invitación generada';
	@override String get inviteLimitExceeded => 'Has excedido el límite de invitaciones que puedes generar.';
	@override String createLimitRemaining({required Object limit}) => 'Límite de invitaciones: quedan ${limit}';
	@override String inviteLimitResetCycle({required Object limit, required Object time}) => 'El límite ha sido reiniciado a ${limit} por ${time}.';
	@override String get expirationDate => 'Fecha de caducidad';
	@override String get noExpirationDate => 'Sin caducidad';
	@override String get inviteCodeUsedAt => 'Código de invitación usado el';
	@override String get registeredUserUsingInviteCode => 'Invitación usada por';
	@override String get waitingForMailAuth => 'Verificación de correo pendiente';
	@override String get inviteCodeCreator => 'Invitación creada por';
	@override String get usedAt => 'Usada el';
	@override String get unused => 'Sin usar';
	@override String get used => 'Usada';
	@override String get expired => 'Caducada';
	@override String get doYouAgree => '¿Está de acuerdo?';
	@override String get beSureToReadThisAsItIsImportant => 'Por favor lea esto que es importante';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => 'He leído el texto ${x} y estoy de acuerdo';
	@override String get dialog => 'Diálogo';
	@override String get icon => 'Avatar';
	@override String get forYou => 'Para ti';
	@override String get currentAnnouncements => 'Avisos actuales';
	@override String get pastAnnouncements => 'Avisos anteriores';
	@override String get youHaveUnreadAnnouncements => 'Hay anuncios sin leer';
	@override String get useSecurityKey => 'Por favor, sigue las instrucciones de tu dispositivo o navegador para usar tu clave de seguridad o tu clave de paso.';
	@override String get replies => 'Responder';
	@override String get renotes => 'Renotar';
	@override String get loadReplies => 'Ver respuestas';
	@override String get loadConversation => 'Ver conversación';
	@override String get pinnedList => 'Lista fijada';
	@override String get keepScreenOn => 'Mantener pantalla encendida';
	@override String get verifiedLink => 'Propiedad del enlace verificada';
	@override String get notifyNotes => 'Notificar nuevas notas';
	@override String get unnotifyNotes => 'Dejar de notificar nuevas notas';
	@override String get authentication => 'Autenticación';
	@override String get authenticationRequiredToContinue => 'Por favor, autentifícate para continuar';
	@override String get dateAndTime => 'Fecha y hora';
	@override String get showRenotes => 'Mostrar renotas';
	@override String get edited => 'Editado';
	@override String get notificationRecieveConfig => 'Ajustes de Notificaciones';
	@override String get mutualFollow => 'Os seguís mutuamente';
	@override String get followingOrFollower => 'Siguiendo o seguidor';
	@override String get fileAttachedOnly => 'Solo notas con archivos';
	@override String get showRepliesToOthersInTimeline => 'Mostrar respuestas a otros en la línea de tiempo';
	@override String get hideRepliesToOthersInTimeline => 'Ocultar respuestas a otros en la línea de tiempo';
	@override String get showRepliesToOthersInTimelineAll => 'Muestra tus respuestas a otros usuarios que sigues en la línea de tiempo';
	@override String get hideRepliesToOthersInTimelineAll => 'Ocultar tus respuestas a otros usuarios que sigues en la línea de tiempo';
	@override String get confirmShowRepliesAll => 'Esta operación es irreversible. ¿Confirmas que quieres mostrar tus respuestas a otros usuarios que sigues en tu línea de tiempo?';
	@override String get confirmHideRepliesAll => 'Esta operación es irreversible. ¿Confirmas que quieres ocultar tus respuestas a otros usuarios que sigues en tu línea de tiempo?';
	@override String get externalServices => 'Servicios Externos';
	@override String get sourceCode => 'Código fuente';
	@override String get sourceCodeIsNotYetProvided => 'El código fuente aún no está disponible. Contacta con el administrador para solucionarlo.';
	@override String get repositoryUrl => 'URL del repositorio';
	@override String get repositoryUrlDescription => 'Si estás usando Misskey tal cual (sin cambios en el código fuente), entra en https://github.com/misskey-dev/misskey';
	@override String get repositoryUrlOrTarballRequired => 'Si no has publicado un repositorio aún, deberás publicar un tarball en su lugar. Mira el archivo .config/example.yml para más información.';
	@override String get feedback => 'Comentarios';
	@override String get feedbackUrl => 'URL de comentarios';
	@override String get impressum => 'Impressum';
	@override String get impressumUrl => 'Impressum URL';
	@override String get impressumDescription => 'En algunos países, como Alemania, la inclusión del operador de datos (el Impressum) es requerido legalmente para sitios web comerciales.';
	@override String get privacyPolicy => 'Política de Privacidad';
	@override String get privacyPolicyUrl => 'URL de la Política de Privacidad';
	@override String get tosAndPrivacyPolicy => 'Condiciones de Uso y Política de Privacidad';
	@override String get avatarDecorations => 'Decoraciones de avatar';
	@override String get attach => 'Acoplar';
	@override String get detach => 'Quitar';
	@override String get detachAll => 'Quitar todo';
	@override String get angle => 'Ángulo';
	@override String get flip => 'Echar de un capirotazo';
	@override String get showAvatarDecorations => 'Mostrar decoraciones de avatar';
	@override String get releaseToRefresh => 'Suelta para recargar';
	@override String get refreshing => 'Recargando...';
	@override String get pullDownToRefresh => 'Tira hacia abajo para recargar';
	@override String get useGroupedNotifications => 'Mostrar notificaciones agrupadas';
	@override String get emailVerificationFailedError => 'Se ha producido un error al confirmar tu dirección de correo electrónico. Es posible que el enlace haya caducado.';
	@override String get cwNotationRequired => 'Si se ha activado "ocultar contenido", es necesario proporcionar una descripción.';
	@override String get doReaction => 'Añadir reacción';
	@override String get code => 'Código';
	@override String get reloadRequiredToApplySettings => 'Es necesario recargar para que se aplique la configuración.';
	@override String remainingN({required Object n}) => 'Faltan: ${n}';
	@override String get overwriteContentConfirm => '¿Quieres sustituir todo el contenido actual?';
	@override String get seasonalScreenEffect => 'Efectos de pantalla asociados a estaciones';
	@override String get decorate => 'Decorar';
	@override String get addMfmFunction => 'Añadir función MFM';
	@override String get enableQuickAddMfmFunction => 'Activar acceso rápido para añadir funciones MFM';
	@override String get bubbleGame => 'Bubble Game';
	@override String get sfx => 'Efectos de sonido';
	@override String get soundWillBePlayed => 'Con música y efectos sonoros';
	@override String get showReplay => 'Ver reproducción';
	@override String get replay => 'Reproducir';
	@override String get replaying => 'Reproduciendo';
	@override String get endReplay => 'Terminar reproducción';
	@override String get copyReplayData => 'Copiar datos de reproducción';
	@override String get ranking => 'Clasificación';
	@override String lastNDays({required Object n}) => 'Últimos ${n} días';
	@override String get backToTitle => 'Regresar al inicio';
	@override String get hemisphere => 'Región';
	@override String get withSensitive => 'Mostrar notas que contengan material sensible';
	@override String userSaysSomethingSensitive({required Object name}) => 'La publicación de ${name} contiene material sensible';
	@override String get enableHorizontalSwipe => 'Deslice para cambiar de pestaña';
	@override String get loading => 'Cargando';
	@override String get surrender => 'detener';
	@override String get gameRetry => 'Reintentar';
	@override String get notUsePleaseLeaveBlank => 'Dejar en blanco si no se usa';
	@override String get useTotp => 'Introduce la contraseña de un solo uso';
	@override String get useBackupCode => 'Usar códigos de respaldo';
	@override String get launchApp => 'Ejecutar la app';
	@override String get useNativeUIForVideoAudioPlayer => 'Usar la interfaz del navegador cuando se reproduce audio y vídeo';
	@override String get keepOriginalFilename => 'Mantener el nombre original del archivo';
	@override String get keepOriginalFilenameDescription => 'Si desactivas esta opción, los nombres de los archivos serán remplazados por una cadena de caracteres aleatoria cuando subas los archivos.';
	@override String get noDescription => 'No hay descripción';
	@override String get alwaysConfirmFollow => 'Confirmar siempre cuando se sigue a alguien';
	@override String get inquiry => 'Contacto';
	@override String get tryAgain => 'Por favor , inténtalo de nuevo';
	@override String get confirmWhenRevealingSensitiveMedia => 'Confirmación cuando se revele contenido sensible';
	@override String get sensitiveMediaRevealConfirm => 'Esto puede contener contenido sensible. ¿Estás seguro/a de querer mostrarlo?';
	@override String get createdLists => 'Listas creadas';
	@override String get createdAntennas => 'Antenas creadas';
	@override String fromX({required Object x}) => 'De ${x}';
	@override String get genEmbedCode => 'Obtener el código para incrustar';
	@override String get noteOfThisUser => 'Notas de este usuario';
	@override String get clipNoteLimitExceeded => 'No se pueden añadir más notas a este clip.';
	@override String get performance => 'Rendimiento';
	@override String get modified => 'Modificado';
	@override String get discard => 'Descartar';
	@override String thereAreNChanges({required Object n}) => 'Hay ${n} cambio(s)';
	@override String get signinWithPasskey => 'Iniciar sesión con  clave de acceso';
	@override String get unknownWebAuthnKey => 'Esto no se ha registrado llave maestra.';
	@override String get passkeyVerificationFailed => 'La verificación de la clave de acceso ha fallado.';
	@override String get passkeyVerificationSucceededButPasswordlessLoginDisabled => 'La verificación de la clave de acceso ha sido satisfactoria pero se ha deshabilitado el inicio de sesión sin contraseña.';
	@override String get messageToFollower => 'Mensaje a seguidores';
	@override String get target => 'Para';
	@override String get testCaptchaWarning => 'Esta función está pensada para probar CAPTCHAs.<strong>No utilizar en un entorno de producción.</strong>';
	@override String get prohibitedWordsForNameOfUser => 'Palabras prohibidas para nombres de usuario';
	@override String get prohibitedWordsForNameOfUserDescription => 'Si alguna de las cadenas de esta lista está incluida en el nombre del usuario, el nombre será denegado. Los usuarios con privilegios de moderador no se ven afectados por esta restricción.';
	@override String get yourNameContainsProhibitedWords => 'Tu nombre contiene palabras prohibidas';
	@override String get yourNameContainsProhibitedWordsDescription => 'Si deseas usar este nombre, por favor contacta con tu administrador/a de tu servidor';
	@override String get thisContentsAreMarkedAsSigninRequiredByAuthor => ' Establecido por el autor: requiere iniciar  sesión para ver';
	@override String get lockdown => 'Bloqueo';
	@override String get pleaseSelectAccount => 'Seleccione una cuenta, por favor.';
	@override String get availableRoles => 'Roles disponibles ';
	@override String get acknowledgeNotesAndEnable => 'Activar después de comprender las precauciones';
	@override String get federationSpecified => 'Este servidor opera en una federación de listas blancas. No puede interactuar con otros servidores que no sean los especificados por el administrador.';
	@override String get federationDisabled => 'La federación está desactivada en este servidor. No puede interactuar con usuarios de otros servidores';
	@override String get draft => 'Borrador';
	@override String get draftsAndScheduledNotes => 'Borradores y notas programadas';
	@override String get confirmOnReact => 'Confirmar la reacción';
	@override String reactAreYouSure({required Object emoji}) => '¿Quieres añadir una reacción «${emoji}»?';
	@override String get markAsSensitiveConfirm => '¿Desea establecer este medio multimedia(Imagen,vídeo...) como sensible?';
	@override String get unmarkAsSensitiveConfirm => '¿Desea eliminar la designación de sensible para este adjunto?';
	@override String get preferences => 'Preferencias';
	@override String get accessibility => 'Accesibilidad';
	@override String get preferencesProfile => 'Configuración del perfil';
	@override String get copyPreferenceId => 'Copiar  ID de la configuración';
	@override String get resetToDefaultValue => 'Revertir a valor predeterminado';
	@override String get overrideByAccount => 'Anulado por la cuenta';
	@override String get untitled => 'Sin título';
	@override String get noName => 'No hay nombre.';
	@override String get skip => 'Saltar';
	@override String get restore => 'Restaurar';
	@override String get syncBetweenDevices => 'Sincronizar entre dispositivos';
	@override String get preferenceSyncConflictTitle => 'Los valores configurados existen en el servidor.';
	@override String get preferenceSyncConflictText => 'Los ajustes de sincronización activados guardarán sus valores en el servidor. Sin embargo, hay valores existentes en el servidor. ¿Qué conjunto de valores desea sobrescribir?';
	@override String get preferenceSyncConflictChoiceMerge => 'Fusionar';
	@override String get preferenceSyncConflictChoiceServer => 'Valores de configuración del servidor';
	@override String get preferenceSyncConflictChoiceDevice => 'Valor configurado en el dispositivo';
	@override String get preferenceSyncConflictChoiceCancel => 'Cancelar la activación de la sincronización';
	@override String get paste => 'Pegar';
	@override String get emojiPalette => 'Paleta emoji';
	@override String get postForm => 'Formulario';
	@override String get textCount => 'caracteres';
	@override String get information => 'Información';
	@override String get chat => 'Chat';
	@override String get directMessage => 'Chatear';
	@override String get directMessage_short => 'Mensajes';
	@override String get migrateOldSettings => 'Migrar la configuración anterior';
	@override String get migrateOldSettings_description => 'Esto debería hacerse automáticamente, pero si por alguna razón la migración no ha tenido éxito, puede activar usted mismo el proceso de migración manualmente. Se sobrescribirá la información de configuración actual.';
	@override String get compress => 'Compresión de la imagen';
	@override String get right => 'Derecha';
	@override String get bottom => 'Abajo';
	@override String get top => 'Arriba';
	@override String get embed => 'Insertar';
	@override String get settingsMigrating => 'La configuración está siendo migrada, por favor espera un momento... (También puedes migrar manualmente más tarde yendo a Ajustes  otros migrar configuración antigua';
	@override String get readonly => 'Solo Lectura';
	@override String get goToDeck => 'Volver al Deck';
	@override String get federationJobs => 'Trabajos de Federación';
	@override String get driveAboutTip => 'En Drive, aparecerá una lista de los archivos que has subido en el pasado. <br> \nPuedes reutilizar estos archivos al adjuntarlos a notas, o puedes subir archivos por adelantado para publicarlos más tarde. <br> \n<b>Ten cuidado al eliminar un archivo, ya que no estará disponible en todos los lugares donde se utilizó (como notas, páginas, avatares, banners, etc.).</b> <br> \nTambién puedes crear carpetas para organizar tus archivos.';
	@override String get scrollToClose => 'Desliza para cerrar';
	@override String get advice => 'Consejos';
	@override String get realtimeMode => 'Modo en tiempo real';
	@override String get turnItOn => 'Activar';
	@override String get turnItOff => 'Desactivar';
	@override String get emojiMute => 'Silenciar emoji';
	@override String get emojiUnmute => 'No silenciar emoji';
	@override String muteX({required Object x}) => 'Silenciar ${x}';
	@override String unmuteX({required Object x}) => 'Dejar de silenciar ${x}';
	@override String get abort => 'Abortar';
	@override String get tip => 'Consejos y trucos';
	@override String get redisplayAllTips => 'Volver a mostrar todos "Trucos y consejos"';
	@override String get hideAllTips => 'Ocultar todos los "Trucos y consejos"';
	@override String get defaultImageCompressionLevel => 'Nivel de compresión de la imagen por defecto';
	@override String get defaultImageCompressionLevel_description => 'Baja, conserva la calidad de la imagen pero la medida del archivo es más grande. <br>Alta, reduce la medida del archivo pero también la calidad de la imagen.';
	@override String get defaultCompressionLevel => 'Nivel de compresión predeterminado';
	@override String get defaultCompressionLevel_description => 'Al reducir el ajuste se conserva la calidad, pero aumenta el tamaño del archivo.<br>Al aumentar el ajuste se reduce el tamaño del archivo, pero disminuye la calidad.';
	@override String get inMinutes => 'Minutos';
	@override String get inDays => 'Días';
	@override String get safeModeEnabled => 'El modo seguro está activado';
	@override String get pluginsAreDisabledBecauseSafeMode => 'El modo seguro está activado, por lo que todos los plugins están desactivados.';
	@override String get customCssIsDisabledBecauseSafeMode => 'El modo seguro está activado, por lo que no se aplica el CSS personalizado.';
	@override String get themeIsDefaultBecauseSafeMode => 'Mientras el modo seguro esté activado, se utilizará el tema predeterminado. Cuando se desactive el modo seguro, se volverá al tema original.';
	@override String get thankYouForTestingBeta => '¡Gracias por tu colaboración en la prueba de la versión beta!';
	@override String get createUserSpecifiedNote => 'Mencionar al usuario (Nota Directa)';
	@override String get schedulePost => 'Programar una nota';
	@override String scheduleToPostOnX({required Object x}) => 'Programar una nota para ${x}';
	@override String scheduledToPostOnX({required Object x}) => 'La nota está programada para el ${x}.';
	@override String get schedule => 'Programar';
	@override String get scheduled => 'Programado';
	@override String get widgets => 'Widgets';
	@override String get deviceInfo => 'Información del dispositivo';
	@override String get deviceInfoDescription => 'Al realizar consultas técnicas, incluir la siguiente información puede ayudar a resolver el problema.';
	@override String get youAreAdmin => 'Eres administrador.';
	@override String get frame => 'Marco';
	@override String get presets => 'Predefinido';
	@override String get zeroPadding => 'Relleno cero';
	@override String get nothingToConfigure => 'No hay nada que configurar';
	@override late final _TranslationsMisskeyImageEditingEsEs imageEditing_ = _TranslationsMisskeyImageEditingEsEs._(_root);
	@override late final _TranslationsMisskeyImageFrameEditorEsEs imageFrameEditor_ = _TranslationsMisskeyImageFrameEditorEsEs._(_root);
	@override late final _TranslationsMisskeyCompressionEsEs compression_ = _TranslationsMisskeyCompressionEsEs._(_root);
	@override late final _TranslationsMisskeyOrderEsEs order_ = _TranslationsMisskeyOrderEsEs._(_root);
	@override late final _TranslationsMisskeyChatEsEs chat_ = _TranslationsMisskeyChatEsEs._(_root);
	@override late final _TranslationsMisskeyEmojiPaletteEsEs emojiPalette_ = _TranslationsMisskeyEmojiPaletteEsEs._(_root);
	@override late final _TranslationsMisskeySettingsEsEs settings_ = _TranslationsMisskeySettingsEsEs._(_root);
	@override late final _TranslationsMisskeyPreferencesProfileEsEs preferencesProfile_ = _TranslationsMisskeyPreferencesProfileEsEs._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupEsEs preferencesBackup_ = _TranslationsMisskeyPreferencesBackupEsEs._(_root);
	@override late final _TranslationsMisskeyAccountSettingsEsEs accountSettings_ = _TranslationsMisskeyAccountSettingsEsEs._(_root);
	@override late final _TranslationsMisskeyAbuseUserReportEsEs abuseUserReport_ = _TranslationsMisskeyAbuseUserReportEsEs._(_root);
	@override late final _TranslationsMisskeyDeliveryEsEs delivery_ = _TranslationsMisskeyDeliveryEsEs._(_root);
	@override late final _TranslationsMisskeyBubbleGameEsEs bubbleGame_ = _TranslationsMisskeyBubbleGameEsEs._(_root);
	@override late final _TranslationsMisskeyAnnouncementEsEs announcement_ = _TranslationsMisskeyAnnouncementEsEs._(_root);
	@override late final _TranslationsMisskeyInitialAccountSettingEsEs initialAccountSetting_ = _TranslationsMisskeyInitialAccountSettingEsEs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialEsEs initialTutorial_ = _TranslationsMisskeyInitialTutorialEsEs._(_root);
	@override late final _TranslationsMisskeyTimelineDescriptionEsEs timelineDescription_ = _TranslationsMisskeyTimelineDescriptionEsEs._(_root);
	@override late final _TranslationsMisskeyServerRulesEsEs serverRules_ = _TranslationsMisskeyServerRulesEsEs._(_root);
	@override late final _TranslationsMisskeyServerSettingsEsEs serverSettings_ = _TranslationsMisskeyServerSettingsEsEs._(_root);
	@override late final _TranslationsMisskeyAccountMigrationEsEs accountMigration_ = _TranslationsMisskeyAccountMigrationEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsEsEs achievements_ = _TranslationsMisskeyAchievementsEsEs._(_root);
	@override late final _TranslationsMisskeyRoleEsEs role_ = _TranslationsMisskeyRoleEsEs._(_root);
	@override late final _TranslationsMisskeySensitiveMediaDetectionEsEs sensitiveMediaDetection_ = _TranslationsMisskeySensitiveMediaDetectionEsEs._(_root);
	@override late final _TranslationsMisskeyEmailUnavailableEsEs emailUnavailable_ = _TranslationsMisskeyEmailUnavailableEsEs._(_root);
	@override late final _TranslationsMisskeyFfVisibilityEsEs ffVisibility_ = _TranslationsMisskeyFfVisibilityEsEs._(_root);
	@override late final _TranslationsMisskeySignupEsEs signup_ = _TranslationsMisskeySignupEsEs._(_root);
	@override late final _TranslationsMisskeyAccountDeleteEsEs accountDelete_ = _TranslationsMisskeyAccountDeleteEsEs._(_root);
	@override late final _TranslationsMisskeyAdEsEs ad_ = _TranslationsMisskeyAdEsEs._(_root);
	@override late final _TranslationsMisskeyForgotPasswordEsEs forgotPassword_ = _TranslationsMisskeyForgotPasswordEsEs._(_root);
	@override late final _TranslationsMisskeyGalleryEsEs gallery_ = _TranslationsMisskeyGalleryEsEs._(_root);
	@override late final _TranslationsMisskeyEmailEsEs email_ = _TranslationsMisskeyEmailEsEs._(_root);
	@override late final _TranslationsMisskeyPluginEsEs plugin_ = _TranslationsMisskeyPluginEsEs._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupsEsEs preferencesBackups_ = _TranslationsMisskeyPreferencesBackupsEsEs._(_root);
	@override late final _TranslationsMisskeyRegistryEsEs registry_ = _TranslationsMisskeyRegistryEsEs._(_root);
	@override late final _TranslationsMisskeyAboutMisskeyEsEs aboutMisskey_ = _TranslationsMisskeyAboutMisskeyEsEs._(_root);
	@override late final _TranslationsMisskeyDisplayOfSensitiveMediaEsEs displayOfSensitiveMedia_ = _TranslationsMisskeyDisplayOfSensitiveMediaEsEs._(_root);
	@override late final _TranslationsMisskeyInstanceTickerEsEs instanceTicker_ = _TranslationsMisskeyInstanceTickerEsEs._(_root);
	@override late final _TranslationsMisskeyServerDisconnectedBehaviorEsEs serverDisconnectedBehavior_ = _TranslationsMisskeyServerDisconnectedBehaviorEsEs._(_root);
	@override late final _TranslationsMisskeyChannelEsEs channel_ = _TranslationsMisskeyChannelEsEs._(_root);
	@override late final _TranslationsMisskeyMenuDisplayEsEs menuDisplay_ = _TranslationsMisskeyMenuDisplayEsEs._(_root);
	@override late final _TranslationsMisskeyWordMuteEsEs wordMute_ = _TranslationsMisskeyWordMuteEsEs._(_root);
	@override late final _TranslationsMisskeyInstanceMuteEsEs instanceMute_ = _TranslationsMisskeyInstanceMuteEsEs._(_root);
	@override late final _TranslationsMisskeyThemeEsEs theme_ = _TranslationsMisskeyThemeEsEs._(_root);
	@override late final _TranslationsMisskeySfxEsEs sfx_ = _TranslationsMisskeySfxEsEs._(_root);
	@override late final _TranslationsMisskeySoundSettingsEsEs soundSettings_ = _TranslationsMisskeySoundSettingsEsEs._(_root);
	@override late final _TranslationsMisskeyAgoEsEs ago_ = _TranslationsMisskeyAgoEsEs._(_root);
	@override late final _TranslationsMisskeyTimeInEsEs timeIn_ = _TranslationsMisskeyTimeInEsEs._(_root);
	@override late final _TranslationsMisskeyTimeEsEs time_ = _TranslationsMisskeyTimeEsEs._(_root);
	@override late final _TranslationsMisskeyX2faEsEs x2fa_ = _TranslationsMisskeyX2faEsEs._(_root);
	@override late final _TranslationsMisskeyPermissionsEsEs permissions_ = _TranslationsMisskeyPermissionsEsEs._(_root);
	@override late final _TranslationsMisskeyAuthEsEs auth_ = _TranslationsMisskeyAuthEsEs._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesEsEs antennaSources_ = _TranslationsMisskeyAntennaSourcesEsEs._(_root);
	@override late final _TranslationsMisskeyWeekdayEsEs weekday_ = _TranslationsMisskeyWeekdayEsEs._(_root);
	@override late final _TranslationsMisskeyWidgetsEsEs widgets_ = _TranslationsMisskeyWidgetsEsEs._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsEsEs widgetOptions_ = _TranslationsMisskeyWidgetOptionsEsEs._(_root);
	@override late final _TranslationsMisskeyCwEsEs cw_ = _TranslationsMisskeyCwEsEs._(_root);
	@override late final _TranslationsMisskeyPollEsEs poll_ = _TranslationsMisskeyPollEsEs._(_root);
	@override late final _TranslationsMisskeyVisibilityEsEs visibility_ = _TranslationsMisskeyVisibilityEsEs._(_root);
	@override late final _TranslationsMisskeyPostFormEsEs postForm_ = _TranslationsMisskeyPostFormEsEs._(_root);
	@override late final _TranslationsMisskeyProfileEsEs profile_ = _TranslationsMisskeyProfileEsEs._(_root);
	@override late final _TranslationsMisskeyExportOrImportEsEs exportOrImport_ = _TranslationsMisskeyExportOrImportEsEs._(_root);
	@override late final _TranslationsMisskeyChartsEsEs charts_ = _TranslationsMisskeyChartsEsEs._(_root);
	@override late final _TranslationsMisskeyInstanceChartsEsEs instanceCharts_ = _TranslationsMisskeyInstanceChartsEsEs._(_root);
	@override late final _TranslationsMisskeyTimelinesEsEs timelines_ = _TranslationsMisskeyTimelinesEsEs._(_root);
	@override late final _TranslationsMisskeyPlayEsEs play_ = _TranslationsMisskeyPlayEsEs._(_root);
	@override late final _TranslationsMisskeyPagesEsEs pages_ = _TranslationsMisskeyPagesEsEs._(_root);
	@override late final _TranslationsMisskeyRelayStatusEsEs relayStatus_ = _TranslationsMisskeyRelayStatusEsEs._(_root);
	@override late final _TranslationsMisskeyNotificationEsEs notification_ = _TranslationsMisskeyNotificationEsEs._(_root);
	@override late final _TranslationsMisskeyDeckEsEs deck_ = _TranslationsMisskeyDeckEsEs._(_root);
	@override late final _TranslationsMisskeyDialogEsEs dialog_ = _TranslationsMisskeyDialogEsEs._(_root);
	@override late final _TranslationsMisskeyDisabledTimelineEsEs disabledTimeline_ = _TranslationsMisskeyDisabledTimelineEsEs._(_root);
	@override late final _TranslationsMisskeyDrivecleanerEsEs drivecleaner_ = _TranslationsMisskeyDrivecleanerEsEs._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsEsEs webhookSettings_ = _TranslationsMisskeyWebhookSettingsEsEs._(_root);
	@override late final _TranslationsMisskeyAbuseReportEsEs abuseReport_ = _TranslationsMisskeyAbuseReportEsEs._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesEsEs moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesEsEs._(_root);
	@override late final _TranslationsMisskeyFileViewerEsEs fileViewer_ = _TranslationsMisskeyFileViewerEsEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerEsEs externalResourceInstaller_ = _TranslationsMisskeyExternalResourceInstallerEsEs._(_root);
	@override late final _TranslationsMisskeyDataSaverEsEs dataSaver_ = _TranslationsMisskeyDataSaverEsEs._(_root);
	@override late final _TranslationsMisskeyHemisphereEsEs hemisphere_ = _TranslationsMisskeyHemisphereEsEs._(_root);
	@override late final _TranslationsMisskeyReversiEsEs reversi_ = _TranslationsMisskeyReversiEsEs._(_root);
	@override late final _TranslationsMisskeyOfflineScreenEsEs offlineScreen_ = _TranslationsMisskeyOfflineScreenEsEs._(_root);
	@override late final _TranslationsMisskeyUrlPreviewSettingEsEs urlPreviewSetting_ = _TranslationsMisskeyUrlPreviewSettingEsEs._(_root);
	@override late final _TranslationsMisskeyMediaControlsEsEs mediaControls_ = _TranslationsMisskeyMediaControlsEsEs._(_root);
	@override late final _TranslationsMisskeyContextMenuEsEs contextMenu_ = _TranslationsMisskeyContextMenuEsEs._(_root);
	@override late final _TranslationsMisskeyGridComponentEsEs gridComponent_ = _TranslationsMisskeyGridComponentEsEs._(_root);
	@override late final _TranslationsMisskeyRoleSelectDialogEsEs roleSelectDialog_ = _TranslationsMisskeyRoleSelectDialogEsEs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerEsEs customEmojisManager_ = _TranslationsMisskeyCustomEmojisManagerEsEs._(_root);
	@override late final _TranslationsMisskeyEmbedCodeGenEsEs embedCodeGen_ = _TranslationsMisskeyEmbedCodeGenEsEs._(_root);
	@override late final _TranslationsMisskeySelfXssPreventionEsEs selfXssPrevention_ = _TranslationsMisskeySelfXssPreventionEsEs._(_root);
	@override late final _TranslationsMisskeyFollowRequestEsEs followRequest_ = _TranslationsMisskeyFollowRequestEsEs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsEsEs remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsEsEs._(_root);
	@override late final _TranslationsMisskeyCaptchaEsEs captcha_ = _TranslationsMisskeyCaptchaEsEs._(_root);
	@override late final _TranslationsMisskeyBootErrorsEsEs bootErrors_ = _TranslationsMisskeyBootErrorsEsEs._(_root);
	@override late final _TranslationsMisskeySearchEsEs search_ = _TranslationsMisskeySearchEsEs._(_root);
	@override late final _TranslationsMisskeyServerSetupWizardEsEs serverSetupWizard_ = _TranslationsMisskeyServerSetupWizardEsEs._(_root);
	@override late final _TranslationsMisskeyUploaderEsEs uploader_ = _TranslationsMisskeyUploaderEsEs._(_root);
	@override late final _TranslationsMisskeyClientPerformanceIssueTipEsEs clientPerformanceIssueTip_ = _TranslationsMisskeyClientPerformanceIssueTipEsEs._(_root);
	@override late final _TranslationsMisskeyClipEsEs clip_ = _TranslationsMisskeyClipEsEs._(_root);
	@override late final _TranslationsMisskeyUserListsEsEs userLists_ = _TranslationsMisskeyUserListsEsEs._(_root);
	@override String get watermark => 'Marca de Agua';
	@override String get defaultPreset => 'Por defecto';
	@override late final _TranslationsMisskeyWatermarkEditorEsEs watermarkEditor_ = _TranslationsMisskeyWatermarkEditorEsEs._(_root);
	@override late final _TranslationsMisskeyImageEffectorEsEs imageEffector_ = _TranslationsMisskeyImageEffectorEsEs._(_root);
	@override String get drafts => 'Borrador';
	@override late final _TranslationsMisskeyDraftsEsEs drafts_ = _TranslationsMisskeyDraftsEsEs._(_root);
	@override String get qr => 'Código QR';
	@override late final _TranslationsMisskeyQrEsEs qr_ = _TranslationsMisskeyQrEsEs._(_root);
}

// Path: misskey.imageEditing_
class _TranslationsMisskeyImageEditingEsEs extends TranslationsMisskeyImageEditingEnUs {
	_TranslationsMisskeyImageEditingEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyImageEditingVarsEsEs vars_ = _TranslationsMisskeyImageEditingVarsEsEs._(_root);
}

// Path: misskey.imageFrameEditor_
class _TranslationsMisskeyImageFrameEditorEsEs extends TranslationsMisskeyImageFrameEditorEnUs {
	_TranslationsMisskeyImageFrameEditorEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edición de Fotos';
	@override String get tip => 'Decora tus imágenes con marcos y etiquetas que contengan metadatos.';
	@override String get header => 'Título';
	@override String get footer => 'Pie de página';
	@override String get borderThickness => 'Ancho del borde';
	@override String get labelThickness => 'Ancho de la etiqueta';
	@override String get labelScale => 'Escala de la Etiqueta';
	@override String get centered => 'Alinear al centro';
	@override String get captionMain => 'Pie de foto (Grande)';
	@override String get captionSub => 'Pie de foto (Pequeño)';
	@override String get availableVariables => 'Variables disponibles';
	@override String get withQrCode => 'Código QR';
	@override String get backgroundColor => 'Color de fondo';
	@override String get textColor => 'Color del texto';
	@override String get font => 'Fuente';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
	@override String get quitWithoutSaveConfirm => '¿Descartar cambios no guardados?';
	@override String get failedToLoadImage => 'Error al cargar la imagen';
}

// Path: misskey.compression_
class _TranslationsMisskeyCompressionEsEs extends TranslationsMisskeyCompressionEnUs {
	_TranslationsMisskeyCompressionEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCompressionQualityEsEs quality_ = _TranslationsMisskeyCompressionQualityEsEs._(_root);
	@override late final _TranslationsMisskeyCompressionSizeEsEs size_ = _TranslationsMisskeyCompressionSizeEsEs._(_root);
}

// Path: misskey.order_
class _TranslationsMisskeyOrderEsEs extends TranslationsMisskeyOrderEnUs {
	_TranslationsMisskeyOrderEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get newest => 'Más reciente primero';
	@override String get oldest => 'Más antiguos primero';
}

// Path: misskey.chat_
class _TranslationsMisskeyChatEsEs extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get messages => 'Mensajes';
	@override String get noMessagesYet => 'Aún no hay mensajes';
	@override String get newMessage => 'Mensajes nuevos';
	@override String get individualChat => 'Chat individual';
	@override String get individualChat_description => 'Mantén una conversación privada con otra persona.';
	@override String get roomChat => 'Sala de Chat';
	@override String get roomChat_description => 'Una sala de chat que puede tener varias personas.\nTambién puedes invitar a personas que no permiten chats privados si aceptan la invitación.';
	@override String get createRoom => 'Crear sala';
	@override String get inviteUserToChat => 'Invitar usuarios para empezar a chatear';
	@override String get yourRooms => 'Salas creadas';
	@override String get joiningRooms => 'Salas que te has unido';
	@override String get invitations => 'Invitar';
	@override String get noInvitations => 'No hay invitación.';
	@override String get history => 'Historial';
	@override String get noHistory => 'No hay datos en el historial';
	@override String get noRooms => 'No te has unido a ninguna sala ';
	@override String get inviteUser => 'Invitar  usuarios';
	@override String get sentInvitations => 'Invitaciones enviadas';
	@override String get join => 'Unirse';
	@override String get ignore => 'Ignorar';
	@override String get leave => 'Dejar sala';
	@override String get members => 'Miembros';
	@override String get searchMessages => 'Buscar mensajes';
	@override String get home => 'Inicio';
	@override String get send => 'Enviar';
	@override String get newline => 'Nueva línea';
	@override String get muteThisRoom => 'Silenciar esta sala';
	@override String get deleteRoom => 'Borrar sala';
	@override String get chatNotAvailableForThisAccountOrServer => 'El chat no está habilitado en este servidor ni para esta cuenta.';
	@override String get chatIsReadOnlyForThisAccountOrServer => 'El chat es de sólo lectura en esta instancia o esta cuenta. No puedes escribir nuevos mensajes ni crear/unirte a salas de chat.';
	@override String get chatNotAvailableInOtherAccount => 'La función de chat está desactivada para el otro usuario.';
	@override String get cannotChatWithTheUser => 'No se puede iniciar un chat con este usuario';
	@override String get cannotChatWithTheUser_description => 'El chat no está disponible o la otra parte no ha habilitado el chat.';
	@override String get youAreNotAMemberOfThisRoomButInvited => 'No eres participante en esta sala, pero has recibido una invitación. Por favor, acepta la invitación para unirte.';
	@override String get doYouAcceptInvitation => '¿Aceptas la invitación?';
	@override String get chatWithThisUser => 'Chatear';
	@override String get thisUserAllowsChatOnlyFromFollowers => 'Este usuario sólo acepta chats de seguidores.';
	@override String get thisUserAllowsChatOnlyFromFollowing => 'Este usuario sólo acepta chats de los usuarios a los que sigue.';
	@override String get thisUserAllowsChatOnlyFromMutualFollowing => 'Este usuario sólo acepta chats de usuarios que son seguidores mutuos.';
	@override String get thisUserNotAllowedChatAnyone => 'Este usuario no acepta chats de nadie.';
	@override String get chatAllowedUsers => 'A quién permitir chatear.';
	@override String get chatAllowedUsers_note => 'Puedes chatear con cualquier persona a la que hayas enviado un mensaje de chat, independientemente de esta configuración.';
	@override late final _TranslationsMisskeyChatChatAllowedUsersEsEs chatAllowedUsers_ = _TranslationsMisskeyChatChatAllowedUsersEsEs._(_root);
}

// Path: misskey.emojiPalette_
class _TranslationsMisskeyEmojiPaletteEsEs extends TranslationsMisskeyEmojiPaletteEnUs {
	_TranslationsMisskeyEmojiPaletteEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get palettes => 'Paleta\n';
	@override String get enableSyncBetweenDevicesForPalettes => 'Activar la sincronización de paletas entre dispositivos';
	@override String get paletteForMain => 'Paleta principal';
	@override String get paletteForReaction => 'Paleta utilizada para las reacciones';
}

// Path: misskey.settings_
class _TranslationsMisskeySettingsEsEs extends TranslationsMisskeySettingsEnUs {
	_TranslationsMisskeySettingsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get driveBanner => 'Puedes gestionar y configurar la unidad, comprobar su uso y configurar los ajustes de carga de archivos.';
	@override String get pluginBanner => 'Puedes ampliar las funciones del cliente con plugins. Puedes instalar plugins, configurarlos y gestionarlos individualmente.';
	@override String get notificationsBanner => 'Puede configurar los tipos y el alcance de las notificaciones del servidor y las notificaciones push.';
	@override String get api => 'API';
	@override String get webhook => 'Webhook';
	@override String get serviceConnection => 'Integraciones';
	@override String get serviceConnectionBanner => 'Gestione y configure tokens de acceso y Webhooks para integrarse con aplicaciones o servicios externos.';
	@override String get accountData => 'Datos de la cuenta';
	@override String get accountDataBanner => 'Exportación e importación para gestionar los datos de la cuenta.';
	@override String get muteAndBlockBanner => 'Puedes configurar y gestionar ajustes para ocultar contenidos y restringir acciones a usuarios específicos.';
	@override String get accessibilityBanner => 'Puedes personalizar el aspecto y el comportamiento del cliente y configurar los ajustes para optimizar su uso.';
	@override String get privacyBanner => 'Puedes configurar opciones relacionadas con la privacidad de la cuenta, como la visibilidad del contenido, la posibilidad de descubrir la cuenta y la aprobación de seguimiento.';
	@override String get securityBanner => 'Puedes configurar opciones relacionadas con la seguridad de la cuenta, como la contraseña, los métodos de inicio de sesión, las aplicaciones de autenticación y Passkeys.';
	@override String get preferencesBanner => 'Puedes configurar el comportamiento general del cliente según tus preferencias.';
	@override String get appearanceBanner => 'Puedes configurar el aspecto y la visualización del cliente según tus preferencias.';
	@override String get soundsBanner => 'Puedes configurar los ajustes de sonido para la reproducción en el cliente.';
	@override String get timelineAndNote => 'Líneas del tiempo y notas';
	@override String get makeEveryTextElementsSelectable => 'Hacer que todos los elementos de texto sean seleccionables';
	@override String get makeEveryTextElementsSelectable_description => 'Activar esta opción puede reducir la usabilidad en algunas situaciones.';
	@override String get useStickyIcons => 'Hacer que los iconos te sigan cuando desplaces';
	@override String get enableHighQualityImagePlaceholders => 'Mostrar marcadores de posición para imágenes de alta calidad';
	@override String get uiAnimations => 'Animaciones de la interfaz de usuario';
	@override String get showNavbarSubButtons => 'Mostrar los sub-botones en la barra de navegación.';
	@override String get ifOn => 'Si está activado';
	@override String get ifOff => 'Si está desactivado';
	@override String get enableSyncThemesBetweenDevices => 'Sincronizar los temas instalados entre dispositivos.';
	@override String get enablePullToRefresh => 'Tirar para actualizar';
	@override String get enablePullToRefresh_description => 'Si utilizas un ratón, arrastra mientras pulsas la rueda de desplazamiento.';
	@override String get realtimeMode_description => 'Establece una conexión con el servidor y actualiza el contenido en tiempo real. Esto puede aumentar el tráfico y el consumo de memoria.';
	@override String get contentsUpdateFrequency => 'Frecuencia de adquisición del contenido.';
	@override String get contentsUpdateFrequency_description => 'Cuanto mayor sea el valor, más se actualiza el contenido, pero disminuye el rendimiento y aumenta el tráfico y el consumo de memoria.';
	@override String get contentsUpdateFrequency_description2 => 'Cuando el modo en tiempo real está activado, el contenido se actualiza en tiempo real independientemente de esta configuración.';
	@override String get showUrlPreview => 'Mostrar la vista previa de la URL';
	@override String get showAvailableReactionsFirstInNote => 'Mostrar las reacciones disponibles en la parte superior.';
	@override String get showPageTabBarBottom => 'Mostrar la barra de pestañas de la página en la parte inferior.';
	@override String get emojiPaletteBanner => 'Puedes registrar ajustes preestablecidos como paletas para que se muestren permanentemente en el selector de emojis, o personalizar el método de visualización del selector.';
	@override String get enableAnimatedImages => 'Habilitar imágenes animadas';
	@override String get settingsPersistence_title => 'Persistencia de la configuración';
	@override String get settingsPersistence_description1 => 'Habilitar la persistencia de la configuración evita que se pierda la información de configuración.';
	@override String get settingsPersistence_description2 => 'Es posible que no se pueda habilitar esta función dependiendo del entorno.';
	@override late final _TranslationsMisskeySettingsChatEsEs chat_ = _TranslationsMisskeySettingsChatEsEs._(_root);
}

// Path: misskey.preferencesProfile_
class _TranslationsMisskeyPreferencesProfileEsEs extends TranslationsMisskeyPreferencesProfileEnUs {
	_TranslationsMisskeyPreferencesProfileEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get profileName => 'Nombre de perfil';
	@override String get profileNameDescription => 'Establece un nombre que identifique al dispositivo';
	@override String get profileNameDescription2 => 'Por ejemplo: "PC Principal","Teléfono"';
	@override String get manageProfiles => 'Administrar perfiles';
	@override String get shareSameProfileBetweenDevicesIsNotRecommended => 'No recomendamos compartir el mismo perfil en varios dispositivos.';
	@override String get useSyncBetweenDevicesOptionIfYouWantToSyncSetting => 'Si hay ajustes que deseas sincronizar en varios dispositivos, activa la opción «Sincronizar en varios dispositivos» individualmente para cada uno de ellos.';
}

// Path: misskey.preferencesBackup_
class _TranslationsMisskeyPreferencesBackupEsEs extends TranslationsMisskeyPreferencesBackupEnUs {
	_TranslationsMisskeyPreferencesBackupEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get autoBackup => 'Respaldo automático';
	@override String get restoreFromBackup => 'Restaurar desde copia de seguridad';
	@override String get noBackupsFoundTitle => 'No se encontró una copia de seguridad';
	@override String get noBackupsFoundDescription => 'No se han encontrado copias de seguridad creadas automáticamente, pero si has guardado manualmente un archivo de copia de seguridad, puedes importarlo y restaurarlo.';
	@override String get selectBackupToRestore => 'Selecciona una copia de seguridad para restaurar';
	@override String get youNeedToNameYourProfileToEnableAutoBackup => 'Se debe establecer un nombre de perfil para activar la copia de seguridad automática.';
	@override String get autoPreferencesBackupIsNotEnabledForThisDevice => 'La copia de seguridad automática de los ajustes no está activada en este dispositivo.';
	@override String get backupFound => 'Copia de seguridad de los ajustes encontrada ';
	@override String get forceBackup => 'Forzar una copia de seguridad de la configuración';
}

// Path: misskey.accountSettings_
class _TranslationsMisskeyAccountSettingsEsEs extends TranslationsMisskeyAccountSettingsEnUs {
	_TranslationsMisskeyAccountSettingsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get requireSigninToViewContents => 'Se requiere iniciar sesión para ver el contenido';
	@override String get requireSigninToViewContentsDescription1 => 'Requiere iniciar sesión para ver todas las notas y otros contenidos que hayas creado. Se espera que esto evite que los rastreadores recopilen información.';
	@override String get requireSigninToViewContentsDescription2 => 'El contenido no se mostrará en vistas previas de URL (OGP), incrustado en páginas web o en servidores que no admitan citas de notas.';
	@override String get requireSigninToViewContentsDescription3 => 'Estas restricciones pueden no aplicarse a los contenidos federados de otros servidores remotos.';
	@override String get makeNotesFollowersOnlyBefore => 'Hacer que las notas antiguas sólo se muestren a los seguidores';
	@override String get makeNotesFollowersOnlyBeforeDescription => 'Mientras esta función esté activada, sólo los seguidores podrán ver las notas que hayan superado la fecha y hora establecidas o que hayan estado visibles durante un tiempo determinado. Cuando se desactive, también se restablecerá el estado de publicación de la nota.';
	@override String get makeNotesHiddenBefore => 'Hacer privadas las notas antiguas ';
	@override String get makeNotesHiddenBeforeDescription => 'Mientras esta función esté activada, las notas que hayan pasado la fecha y hora fijadas o hayan transcurrido el tiempo establecido sólo serán visibles para ti (se harán privadas). Si la desactivas, también se restablecerá el estado público de las notas.';
	@override String get mayNotEffectForFederatedNotes => 'Notas federadas por un servidor remoto pueden no verse afectadas.';
	@override String get mayNotEffectSomeSituations => 'Estas restricciones son simplificadas. Pueden no aplicarse en algunas situaciones, como cuando se visualiza en un servidor remoto o durante la moderación.';
	@override String get notesHavePassedSpecifiedPeriod => 'Notas publicadas durante el siguiente tiempo específico';
	@override String get notesOlderThanSpecifiedDateAndTime => 'Notas antes de la fecha y hora especificadas';
}

// Path: misskey.abuseUserReport_
class _TranslationsMisskeyAbuseUserReportEsEs extends TranslationsMisskeyAbuseUserReportEnUs {
	_TranslationsMisskeyAbuseUserReportEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get forward => 'Reenviar';
	@override String get forwardDescription => 'Reenvía el informe a un servidor/instancia remoto como cuenta anónima del sistema.';
	@override String get resolve => 'Resuelto';
	@override String get accept => 'Acepte';
	@override String get reject => 'repudio';
	@override String get resolveTutorial => 'Si el contenido del informe es legítimo, selecciona "Aceptar" para marcarlo como resuelto.\nSi el contenido del informe es ilegítimo, selecciona "Rechazar" para ignorarlo.';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryEsEs extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get status => 'Estado de la entrega';
	@override String get stop => 'Suspendido';
	@override String get resume => 'Resumen de entrega';
	@override late final _TranslationsMisskeyDeliveryTypeEsEs type_ = _TranslationsMisskeyDeliveryTypeEsEs._(_root);
}

// Path: misskey.bubbleGame_
class _TranslationsMisskeyBubbleGameEsEs extends TranslationsMisskeyBubbleGameEnUs {
	_TranslationsMisskeyBubbleGameEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => 'Cómo jugar';
	@override String get hold => 'Mantener';
	@override late final _TranslationsMisskeyBubbleGameScoreEsEs score_ = _TranslationsMisskeyBubbleGameScoreEsEs._(_root);
	@override late final _TranslationsMisskeyBubbleGameHowToPlayEsEs howToPlay_ = _TranslationsMisskeyBubbleGameHowToPlayEsEs._(_root);
}

// Path: misskey.announcement_
class _TranslationsMisskeyAnnouncementEsEs extends TranslationsMisskeyAnnouncementEnUs {
	_TranslationsMisskeyAnnouncementEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => 'Solo para usuarios registrados';
	@override String get forExistingUsersDescription => 'Este anuncio solo se mostrará a aquellos usuarios registrados en el momento de su publicación. Si se deshabilita esta opción, aquellos usuarios que se registren tras su publicación también lo verán.';
	@override String get needConfirmationToRead => 'Requerir confirmación de lectura aparte';
	@override String get needConfirmationToReadDescription => 'Si se habilita esta opción, se pedirá una confirmación de lectura aparte. Además, este anuncio será excluido de cualquier funcionalidad de "Marcar todos como leídos".';
	@override String get end => 'Anuncios archivados';
	@override String get tooManyActiveAnnouncementDescription => 'Tener demasiados anuncios activos empeora la experiencia de usuario. Por favor, considera archivar aquellos anuncios que hayan quedado obsoletos.';
	@override String get readConfirmTitle => '¿Marcar como leído?';
	@override String readConfirmText({required Object title}) => 'Esto marcará el contenido de "${title}" como leído.';
	@override String get shouldNotBeUsedToPresentPermanentInfo => 'Se recomienda utilizar los avisos para publicar información que requiera inmediatez, en lugar de hacerlo constantemente, ya que esto perjudica especialmente la UX de los nuevos usuarios.';
	@override String get dialogAnnouncementUxWarn => 'Mostrar dos o más notificaciones en formato diálogo a la vez puede impactar en la experiencia de usuario de forma significativa, úsalos con cuidado.';
	@override String get silence => 'Silenciar notificaciones';
	@override String get silenceDescription => 'Si lo activas, no enviarás notificación sobre este anuncio y el usuario no tendrá que leerlo.';
}

// Path: misskey.initialAccountSetting_
class _TranslationsMisskeyInitialAccountSettingEsEs extends TranslationsMisskeyInitialAccountSettingEnUs {
	_TranslationsMisskeyInitialAccountSettingEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => '¡La cuenta ha sido creada!';
	@override String get letsStartAccountSetup => 'Para empezar, creemos tu perfil.';
	@override String get letsFillYourProfile => 'Primero, creemos tu perfil.';
	@override String get profileSetting => 'Configuración del perfil';
	@override String get privacySetting => 'Configuración de privacidad';
	@override String get theseSettingsCanEditLater => 'Puedes cambiar estos ajustes más tarde.';
	@override String get youCanEditMoreSettingsInSettingsPageLater => 'Desde la pestaña de "Configuración" puedes modificar más ajustes. Asegúrate de visitarla después.';
	@override String get followUsers => 'Comienza a seguir a usuarios que te interesen para construir tu línea de tiempo.';
	@override String pushNotificationDescription({required Object name}) => 'Habilitar las notificaciones push te permitirá recibir notificaciones de ${name} directamente en tu dispositivo.';
	@override String get initialAccountSettingCompleted => '¡Configuración del perfil completada!';
	@override String haveFun({required Object name}) => '¡Disfruta de ${name}!';
	@override String youCanContinueTutorial({required Object name}) => 'Puedes proceder a un tutorial sobre cómo usar ${name} (Misskey) o puedes terminar la instalación aquí y empezar a usarlo ya mismo.';
	@override String get startTutorial => 'Comenzar tutorial';
	@override String get skipAreYouSure => '¿Realmente quieres saltarte la configuración del perfil?';
	@override String get laterAreYouSure => '¿Realmente quieres configurar tu perfil después?';
}

// Path: misskey.initialTutorial_
class _TranslationsMisskeyInitialTutorialEsEs extends TranslationsMisskeyInitialTutorialEnUs {
	_TranslationsMisskeyInitialTutorialEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'Comenzar tutorial';
	@override String get title => 'Tutorial';
	@override String get wellDone => '¡Bien hecho!';
	@override String get skipAreYouSure => '¿Salir del tutorial?';
	@override late final _TranslationsMisskeyInitialTutorialLandingEsEs landing_ = _TranslationsMisskeyInitialTutorialLandingEsEs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialNoteEsEs note_ = _TranslationsMisskeyInitialTutorialNoteEsEs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialReactionEsEs reaction_ = _TranslationsMisskeyInitialTutorialReactionEsEs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialTimelineEsEs timeline_ = _TranslationsMisskeyInitialTutorialTimelineEsEs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteEsEs postNote_ = _TranslationsMisskeyInitialTutorialPostNoteEsEs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEsEs howToMakeAttachmentsSensitive_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEsEs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialDoneEsEs done_ = _TranslationsMisskeyInitialTutorialDoneEsEs._(_root);
}

// Path: misskey.timelineDescription_
class _TranslationsMisskeyTimelineDescriptionEsEs extends TranslationsMisskeyTimelineDescriptionEnUs {
	_TranslationsMisskeyTimelineDescriptionEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get home => 'En la línea de tiempo de Inicio puedes ver las notas de las cuentas a las que sigues.';
	@override String get local => 'En la línea de tiempo Local puedes ver las notas de todos los usuarios del servidor.';
	@override String get social => 'En la línea de tiempo Social verás las notas de Inicio y Local a la vez.';
	@override String get global => 'En la línea de tiempo Global verás las notas de todos los servidores conectados.';
}

// Path: misskey.serverRules_
class _TranslationsMisskeyServerRulesEsEs extends TranslationsMisskeyServerRulesEnUs {
	_TranslationsMisskeyServerRulesEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get description => 'Un conjunto de reglas que serán mostradas antes del registro. Configurar un sumario de términos de servicio es recomendado.';
}

// Path: misskey.serverSettings_
class _TranslationsMisskeyServerSettingsEsEs extends TranslationsMisskeyServerSettingsEnUs {
	_TranslationsMisskeyServerSettingsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get iconUrl => 'URL del ícono';
	@override String appIconDescription({required Object host}) => 'Indica el icono que se va a usar cuando ${host} se muestre como una app.';
	@override String get appIconUsageExample => 'Por ejemplo, como PWA o cuando se muestre como un marcador en la pantalla inicial del dispositivo';
	@override String get appIconStyleRecommendation => 'Como el icono puede ser recortado como un cuadrado o un círculo, se recomienda un icono con un margen coloreado alrededor del contenido.';
	@override String appIconResolutionMustBe({required Object resolution}) => 'La resolución mínima es ${resolution}.';
	@override String get manifestJsonOverride => 'Sobreescribir manifest.json';
	@override String get shortName => 'Nombre corto';
	@override String get shortNameDescription => 'Forma corta del nombre de la instancia que puede mostrarse si el nombre completo es demasiado largo.';
	@override String get fanoutTimelineDescription => 'Incrementa el rendimiento de forma significativa cuando se obtienen las líneas de tiempo y reduce la carga en la base de datos. A cambio, el uso de la memoria en Redis incrementará. Considera desactivar esta opción en caso de que tu servidor tenga poca memoria o detectes inestabilidad.';
	@override String get fanoutTimelineDbFallback => 'Cargar desde la base de datos';
	@override String get fanoutTimelineDbFallbackDescription => 'Cuando esta opción está habilitada, la carga de peticiones adicionales de la línea de tiempo se hará desde la base de datos cuando éstas no se encuentren en la caché. Al deshabilitar esta opción se reduce la carga del servidor, pero limita el número de líneas de tiempo que pueden obtenerse.';
	@override String get reactionsBufferingDescription => 'Cuando se activa, el rendimiento durante la creación de reacciones mejorará considerablemente, reduciendo la carga de la base de datos. Sin embargo, aumentará el uso de memoria de Redis.';
	@override String get remoteNotesCleaning => 'Limpieza automática de notas (publicaciones) remotas';
	@override String get remoteNotesCleaning_description => 'Al habilitar esta opción, se limpiarán periódicamente las entradas remotas antiguas que no se consultan, lo que evitará que la base de datos se sature.';
	@override String get remoteNotesCleaningMaxProcessingDuration => 'Tiempo máximo de funcionamiento continuo del proceso de limpieza';
	@override String get remoteNotesCleaningExpiryDaysForEachNotes => 'Días mínimos para conservar las notas';
	@override String get inquiryUrl => 'URL de consulta ';
	@override String get inquiryUrlDescription => 'Especifica una URL para el formulario de consulta al responsable del servidor o una página web para la información de contacto.';
	@override String get openRegistration => 'Registros Abiertos';
	@override String get openRegistrationWarning => 'Abrir registros conlleva riesgos. Se recomienda solo habilitarlos si tienes un sistema en el cual puedes monitorear continuamente el servidor y respondes inmediatamente en caso de que haya cualquier problema.';
	@override String get thisSettingWillAutomaticallyOffWhenModeratorsInactive => 'Si no se ha detectado por un tiempo actividad de un moderador, este ajuste será automáticamente desactivado para prevenir el spam. ';
	@override String get deliverSuspendedSoftware => 'Software suspendido.';
	@override String get deliverSuspendedSoftwareDescription => 'Puede especificar un rango de nombres y versiones del software del servidor para detener la entrega, por ejemplo, debido a vulnerabilidades. Esta información sobre la versión la proporciona el servidor y su fiabilidad no está garantizada. Se puede utilizar una especificación de rango  para especificar una versión, pero se recomienda especificar una versión previa, como >= 2024.3.1-0, ya que especificar >= 2024.3.1 no incluirá versiones personalizadas como 2024.3.1-custom.0.';
	@override String get singleUserMode => 'Modo de usuario único';
	@override String get singleUserMode_description => 'Si eres el único usuario de este servidor, activar este modo optimizará su rendimiento.';
	@override String get signToActivityPubGet => 'Firmar  solicitudes  GET de Activitypub.';
	@override String get signToActivityPubGet_description => 'Normalmente, debería estar activada. Deshabilitarlo puede mejorar los problemas relacionados con la federación, pero por otro lado podría deshabilitar la federación hacia otros servidores.';
	@override String get proxyRemoteFiles => 'Proxy de archivos remotos';
	@override String get proxyRemoteFiles_description => 'Cuando se activa, el servidor proxy  sirve archivos remotos. Esto es útil para generar miniaturas de imágenes y proteger la privacidad del usuario.';
	@override String get allowExternalApRedirect => 'Permitir redirecciones para consultas vía ActivityPub';
	@override String get allowExternalApRedirect_description => 'Si se activa, otros servidores pueden consultar contenidos de terceros a través de este servidor, pero esto puede dar lugar a la suplantación de contenidos.';
	@override String get userGeneratedContentsVisibilityForVisitor => 'Visibilidad de contenido generado por un usuario a invitados';
	@override String get userGeneratedContentsVisibilityForVisitor_description => 'Esto es útil para evitar problemas causados por contenidos remotos inapropiados que no estén bien moderados y que se publiquen involuntariamente en Internet a través de su propio servidor.';
	@override String get userGeneratedContentsVisibilityForVisitor_description2 => 'Publicar incondicionalmente todo el contenido del servidor en Internet, incluido el contenido remoto recibido por el servidor, es arriesgado. Esto es especialmente importante para los invitados que desconocen la naturaleza distribuida del contenido, ya que pueden creer erróneamente que incluso el contenido remoto es contenido creado por usuarios en el servidor.';
	@override String get restartServerSetupWizardConfirm_title => '¿Reiniciar el asistente de configuración del servidor?';
	@override String get restartServerSetupWizardConfirm_text => 'Algunas configuraciones actuales se restablecerán';
	@override String get entrancePageStyle => 'Estilo de la página de inicio';
	@override String get showTimelineForVisitor => 'Mostrar la línea de tiempo';
	@override String get showActivitiesForVisitor => 'Mostrar actividades';
	@override late final _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorEsEs userGeneratedContentsVisibilityForVisitor_ = _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorEsEs._(_root);
}

// Path: misskey.accountMigration_
class _TranslationsMisskeyAccountMigrationEsEs extends TranslationsMisskeyAccountMigrationEnUs {
	_TranslationsMisskeyAccountMigrationEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => 'Trasladar de otra cuenta a ésta';
	@override String get moveFromSub => 'Crear un alias para otra cuenta.';
	@override String moveFromLabel({required Object n}) => 'Cuenta desde la que se realiza el traslado #${n}';
	@override String get moveFromDescription => 'Si quieres transferir seguidores de otra cuenta a esta cuenta y trasladarlos, tendrás que crear un alias aquí. Asegúrate de crearlo antes de realizar el traslado. Introduce la cuenta desde la que estás moviendo los seguidores así: @person@instance.com';
	@override String get moveTo => 'Mover esta cuenta a una nueva';
	@override String get moveToLabel => 'Cuenta destino:';
	@override String get moveCannotBeUndone => 'La migración de la cuenta no puede ser revertida.';
	@override String get moveAccountDescription => 'Esta operación no puede deshacerse. En primer lugar, asegúrese de haber creado un alias para esta cuenta en la cuenta a la que se va a trasladar. Después de crear el alias, introduzca la cuenta a la que se está trasladando de la siguiente manera: @person@instance.com';
	@override String get moveAccountHowTo => 'Para migrar, primero crea un alias para ésta cuenta en la cuenta a donde te moverás.\nDespués de crear el alias, ingresa la cuenta a mover de la siguiente forma:\n@usuario@servidor.ejempo.com';
	@override String get startMigration => 'Migrar';
	@override String migrationConfirm({required Object account}) => '¿Estás seguro de que quieres mover esta cuenta a ${account}? Una vez trasladada, no podrás deshacer el traslado y no podrás volver a utilizar la cuenta original.\n\nAdemás, compruebe que ha configurado un alias en el destino del traslado.';
	@override String get movedAndCannotBeUndone => '\nLa migración decuenta ha sido completada.\nNo se puede revertir éste proceso.';
	@override String get postMigrationNote => 'Ésta cuenta dejará de seguir a todas las cuentas en las siguientes 24 horas después de que finalice la migración.\nEl número de seguidos y seguidores serán 0. Para evitar que Para evitar que tus seguidores dejen de ver las publicaciones, todas serán marcadas como "sólo seguidores".';
	@override String get movedTo => 'Cuenta destino:';
}

// Path: misskey.achievements_
class _TranslationsMisskeyAchievementsEsEs extends TranslationsMisskeyAchievementsEnUs {
	_TranslationsMisskeyAchievementsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Desbloqueado el';
	@override late final _TranslationsMisskeyAchievementsTypesEsEs types_ = _TranslationsMisskeyAchievementsTypesEsEs._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRoleEsEs extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRoleEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Crear rol';
	@override String get edit => 'Editar rol';
	@override String get name => 'Nombre del rol';
	@override String get description => 'Descripción del rol';
	@override String get permission => 'Permisos del rol';
	@override String get descriptionOfPermission => '<b>Moderador</b> Te permite ejecutar acciones básicas de moderación.\n<b>Administradores</b> puede cambiar todas las configuraciones de la instancia.';
	@override String get assignTarget => 'Asignar objetivo';
	@override String get descriptionOfAssignTarget => '<b>Manual</b> Para cambiar manualmente lo que se incluye en este rol.\n<b>Condicional</b> configura una condición, y los usuarios que cumplan la condición serán incluídos automáticamente.';
	@override String get manual => 'manual';
	@override String get manualRoles => 'Roles manuales';
	@override String get conditional => 'condicional';
	@override String get conditionalRoles => 'Roles condicionales';
	@override String get condition => 'condición';
	@override String get isConditionalRole => 'Esto es un rol condicional';
	@override String get isPublic => 'Publicar rol';
	@override String get descriptionOfIsPublic => 'Cualquiera puede ver los usuarios asignados a este rol. También, el perfil del usuario mostrará este rol.';
	@override String get options => 'Opciones';
	@override String get policies => 'Política';
	@override String get baseRole => 'Rol base';
	@override String get useBaseValue => 'Usar los valores del rol base';
	@override String get chooseRoleToAssign => 'Selecciona el rol para asignar';
	@override String get iconUrl => 'URL del ícono';
	@override String get asBadge => 'Mostrar como emblema';
	@override String get descriptionOfAsBadge => 'Este ícono de rol se mostrará a lado del nombre de usuario cuando este rol se encuentre activo.';
	@override String get isExplorable => 'Hacer el rol explorable';
	@override String get descriptionOfIsExplorable => 'La línea de tiempo de éste rol y la lista de usuarios serán públicos si se activa..';
	@override String get displayOrder => 'Posición';
	@override String get descriptionOfDisplayOrder => 'Entre más alto el número, mayor es la posición en la interfaz.';
	@override String get preserveAssignmentOnMoveAccount => 'Preservar los roles asignados durante la migración';
	@override String get preserveAssignmentOnMoveAccount_description => 'Si está activada, este rol se transferirá a la cuenta de destino cuando se migre una cuenta con este rol.';
	@override String get canEditMembersByModerator => 'Permitir a los moderadores editar los miembros';
	@override String get descriptionOfCanEditMembersByModerator => 'Si se activa, los moderadores, al igual que los administradores, serán capaces de asignar/quitar usuarios a éste rol. Si se desactiva, sólo los administradores podrán hacerlo.';
	@override String get priority => 'Prioridad';
	@override late final _TranslationsMisskeyRolePriorityEsEs priority_ = _TranslationsMisskeyRolePriorityEsEs._(_root);
	@override late final _TranslationsMisskeyRoleOptionsEsEs options_ = _TranslationsMisskeyRoleOptionsEsEs._(_root);
	@override late final _TranslationsMisskeyRoleConditionEsEs condition_ = _TranslationsMisskeyRoleConditionEsEs._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _TranslationsMisskeySensitiveMediaDetectionEsEs extends TranslationsMisskeySensitiveMediaDetectionEnUs {
	_TranslationsMisskeySensitiveMediaDetectionEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get description => 'Reduce el esfuerzo de la moderación en el servidor a través del reconocimiento automático de contenido NSFW usando \'Machine Learning\'. Esto puede incrementar ligeramente la carga en el servidor.';
	@override String get sensitivity => 'Sensibilidad de la detección';
	@override String get sensitivityDescription => 'Reducir la sensibilidad puede acarrear a varios falsos positivos, mientras que incrementarla puede reducir las detecciones (falsos negativos).';
	@override String get setSensitiveFlagAutomatically => 'Marcar como NSFW';
	@override String get setSensitiveFlagAutomaticallyDescription => 'Los resultados de la detección interna pueden ser retenidos incluso si la opción está desactivada.';
	@override String get analyzeVideos => 'Habilitar el análisis de videos';
	@override String get analyzeVideosDescription => 'Analizar videos en adición a las imágenes. Esto puede incrementar ligeramente la carga del servidor.';
}

// Path: misskey.emailUnavailable_
class _TranslationsMisskeyEmailUnavailableEsEs extends TranslationsMisskeyEmailUnavailableEnUs {
	_TranslationsMisskeyEmailUnavailableEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get used => 'Ya fue usado';
	@override String get format => 'Formato no válido.';
	@override String get disposable => 'No es un correo reutilizable';
	@override String get mx => 'Servidor de correo inválido';
	@override String get smtp => 'Servidor de correo no disponible';
	@override String get banned => 'Email no disponible';
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilityEsEs extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilityEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get public => 'Publicar';
	@override String get followers => 'Visible solo para seguidores';
	@override String get private => 'Privado';
}

// Path: misskey.signup_
class _TranslationsMisskeySignupEsEs extends TranslationsMisskeySignupEnUs {
	_TranslationsMisskeySignupEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Ya falta poco';
	@override String get emailAddressInfo => 'Ingrese el correo electrónico que usa. Este no se hará público.';
	@override String emailSent({required Object email}) => 'Se envió un correo de verificación a la dirección ${email}. Acceda al link enviado en el correo para completar el ingreso.';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeleteEsEs extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeleteEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Eliminar Cuenta';
	@override String get mayTakeTime => 'La eliminación de la cuenta es un proceso que precisa de carga. Puede pasar un tiempo hasta que se complete si es mucho el contenido creado y los archivos subidos.';
	@override String get sendEmail => 'Cuando se termine de borrar la cuenta, se enviará un correo a la dirección usada para el registro.';
	@override String get requestAccountDelete => 'Solicitar la eliminación de la cuenta.';
	@override String get started => 'El proceso de eliminación ha comenzado.';
	@override String get inProgress => 'La eliminación está en proceso.';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdEsEs extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get back => 'Anterior';
	@override String get reduceFrequencyOfThisAd => 'Mostrar menos este anuncio.';
	@override String get hide => 'No mostrar';
	@override String get timezoneinfo => 'El día de la semana está determidado por la zona horaria del servidor.';
	@override String get adsSettings => 'Ajustes de anuncios';
	@override String get notesPerOneAd => 'Intervalo de actualización de anuncios en tiempo real (Notas por cada anuncio)';
	@override String get setZeroToDisable => 'Establece este valor a 0 para deshabilitar la actualización de anuncios en tiempo real';
	@override String get adsTooClose => 'El intervalo de anuncios actual puede empeorar la experiencia del usuario por ser demasiado bajo.';
}

// Path: misskey.forgotPassword_
class _TranslationsMisskeyForgotPasswordEsEs extends TranslationsMisskeyForgotPasswordEnUs {
	_TranslationsMisskeyForgotPasswordEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Ingrese el correo usado para registrar la cuenta. Se enviará un link para resetear la contraseña.';
	@override String get ifNoEmail => 'Si no utilizó un correo para crear la cuenta, contáctese con el administrador.';
	@override String get contactAdmin => 'Esta instancia no admite el uso de direcciones de correo electrónico, póngase en contacto con el administrador de la instancia para restablecer su contraseña';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryEsEs extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get my => 'Mi galería';
	@override String get liked => 'Publicaciones que me gustan';
	@override String get like => '¡Muy bien!';
	@override String get unlike => 'Quitar me gusta';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailEsEs extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowEsEs follow_ = _TranslationsMisskeyEmailFollowEsEs._(_root);
	@override late final _TranslationsMisskeyEmailReceiveFollowRequestEsEs receiveFollowRequest_ = _TranslationsMisskeyEmailReceiveFollowRequestEsEs._(_root);
}

// Path: misskey.plugin_
class _TranslationsMisskeyPluginEsEs extends TranslationsMisskeyPluginEnUs {
	_TranslationsMisskeyPluginEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get install => 'Instalar plugins';
	@override String get installWarn => 'Por favor no instale plugins que no son de confianza';
	@override String get manage => 'Gestionar plugins';
	@override String get viewSource => 'Ver la fuente';
	@override String get viewLog => 'Ver log';
}

// Path: misskey.preferencesBackups_
class _TranslationsMisskeyPreferencesBackupsEsEs extends TranslationsMisskeyPreferencesBackupsEnUs {
	_TranslationsMisskeyPreferencesBackupsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get list => 'Respaldos creados';
	@override String get saveNew => 'Guardar nuevo respaldo';
	@override String get loadFile => 'Cargar desde archivo';
	@override String get apply => 'Aplicar a este dispositivo';
	@override String get save => 'Guardar cambios';
	@override String get inputName => 'Por favor, ingresa un nombre para este respaldo';
	@override String get cannotSave => 'Fallo al guardar';
	@override String nameAlreadyExists({required Object name}) => 'Un respaldo llamado "${name}" ya existe. Por favor ingresa un nombre diferente';
	@override String applyConfirm({required Object name}) => '¿Realmente quieres aplicar los cambios desde el archivo "${name}" a este dispositivo? Las configuraciones existentes serán sobreescritas. ';
	@override String saveConfirm({required Object name}) => '¿Guardar respaldo como "${name}"?';
	@override String deleteConfirm({required Object name}) => '¿Borrar el respaldo "${name}"?';
	@override String renameConfirm({required Object old, required Object new_}) => '¿Renombrar este respaldo de "${old}" a "${new_}"?';
	@override String get noBackups => 'No existen respaldos. Deberás respaldar las configuraciones del cliente en este servidor usando "Crear nuevo respaldo"';
	@override String createdAt({required Object date, required Object time}) => 'Creado: ${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => 'Actualizado: ${date} ${time}';
	@override String get cannotLoad => 'La carga falló';
	@override String get invalidFile => 'Formato de archivo inválido';
}

// Path: misskey.registry_
class _TranslationsMisskeyRegistryEsEs extends TranslationsMisskeyRegistryEnUs {
	_TranslationsMisskeyRegistryEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Alcance';
	@override String get key => 'Clave';
	@override String get keys => 'Clave';
	@override String get domain => 'Dominio';
	@override String get createKey => 'Crear una clave';
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeyEsEs extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeyEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey es un software de código abierto, desarrollado por syuilo desde el 2014';
	@override String get contributors => 'Principales colaboradores';
	@override String get allContributors => 'Todos los colaboradores';
	@override String get source => 'Código fuente';
	@override String get original => 'Original';
	@override String thisIsModifiedVersion({required Object name}) => '${name} usa una versión modificada de Misskey.';
	@override String get translation => 'Traducir Misskey';
	@override String get donate => 'Donar a Misskey';
	@override String get morePatrons => 'Muchas más personas nos apoyan. Muchas gracias🥰';
	@override String get patrons => 'Patrocinadores';
	@override String get projectMembers => 'Miembros del proyecto';
}

// Path: misskey.displayOfSensitiveMedia_
class _TranslationsMisskeyDisplayOfSensitiveMediaEsEs extends TranslationsMisskeyDisplayOfSensitiveMediaEnUs {
	_TranslationsMisskeyDisplayOfSensitiveMediaEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get respect => 'Esconder medios marcados como sensibles';
	@override String get ignore => 'Mostrar medios marcados como sensibles';
	@override String get force => 'Esconder toda la multimedia';
}

// Path: misskey.instanceTicker_
class _TranslationsMisskeyInstanceTickerEsEs extends TranslationsMisskeyInstanceTickerEnUs {
	_TranslationsMisskeyInstanceTickerEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get none => 'No mostrar';
	@override String get remote => 'Mostrar a usuarios remotos';
	@override String get always => 'Mostrar siempre';
}

// Path: misskey.serverDisconnectedBehavior_
class _TranslationsMisskeyServerDisconnectedBehaviorEsEs extends TranslationsMisskeyServerDisconnectedBehaviorEnUs {
	_TranslationsMisskeyServerDisconnectedBehaviorEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Recargar automáticamente';
	@override String get dialog => 'Mostrar diálogo de advertencia';
	@override String get quiet => 'Advertencia discreta';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelEsEs extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get create => 'Crear canal';
	@override String get edit => 'Editar canal';
	@override String get setBanner => 'Elegir banner';
	@override String get removeBanner => 'Borrar banner';
	@override String get featured => 'Tendencias';
	@override String get owned => 'Dueño';
	@override String get following => 'Siguiendo';
	@override String usersCount({required Object n}) => '${n} participantes';
	@override String notesCount({required Object n}) => '${n} notas';
	@override String get nameAndDescription => 'Nombre y descripción';
	@override String get nameOnly => 'Sólo nombre';
	@override String get allowRenoteToExternal => 'Permitir renotas y menciones fuera del canal';
}

// Path: misskey.menuDisplay_
class _TranslationsMisskeyMenuDisplayEsEs extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplayEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Horizontal';
	@override String get sideIcon => 'Horizontal (ícono)';
	@override String get top => 'Arriba';
	@override String get hide => 'Ocultar';
}

// Path: misskey.wordMute_
class _TranslationsMisskeyWordMuteEsEs extends TranslationsMisskeyWordMuteEnUs {
	_TranslationsMisskeyWordMuteEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Palabras que silenciar';
	@override String get muteWordsDescription => 'Separar con espacios indica una declaracion And, separar con lineas nuevas indica una declaracion Or。';
	@override String get muteWordsDescription2 => 'Encerrar las palabras clave entre numerales para usar expresiones regulares';
}

// Path: misskey.instanceMute_
class _TranslationsMisskeyInstanceMuteEsEs extends TranslationsMisskeyInstanceMuteEnUs {
	_TranslationsMisskeyInstanceMuteEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Silencia todas las notas y reposts de la instancias seleccionadas, incluyendo respuestas a los usuarios de las mismas';
	@override String get instanceMuteDescription2 => 'Separar por líneas';
	@override String get title => 'Oculta las notas de las instancias listadas.';
	@override String get heading => 'Instancias a silenciar';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeEsEs extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get explore => 'Explorar temas';
	@override String get install => 'Instalar tema';
	@override String get manage => 'Gestor de temas';
	@override String get code => 'Código del tema';
	@override String get copyThemeCode => 'Copiar el código del tema';
	@override String get description => 'Descripción';
	@override String installed({required Object name}) => '${name} ha sido instalado';
	@override String get installedThemes => 'Temas instalados';
	@override String get builtinThemes => 'Temas integrados';
	@override String get instanceTheme => 'Tema del servidor (o también denominado: tema de la instancia)';
	@override String get alreadyInstalled => 'Este tema ya está instalado';
	@override String get invalid => 'El formato del tema no es válido';
	@override String get make => 'Crear tema';
	@override String get base => 'Base';
	@override String get addConstant => 'Agregar constante';
	@override String get constant => 'Constante';
	@override String get defaultValue => 'Valor predeterminado';
	@override String get color => 'Color';
	@override String get refProp => 'Hacer referencia a propiedad';
	@override String get refConst => 'Hacer referencia a constante';
	@override String get key => 'Clave';
	@override String get func => 'funciones';
	@override String get funcKind => 'Tipo de función';
	@override String get argument => 'Argumento';
	@override String get basedProp => 'Nombre de la propiedad referenciada';
	@override String get alpha => 'Opacidad';
	@override String get darken => 'Oscuridad';
	@override String get lighten => 'Brillo';
	@override String get inputConstantName => 'Por favor ingrese el nombre de la constante';
	@override String get importInfo => 'Pegando el código del tema aquí, puede importarlo al editor';
	@override String deleteConstantConfirm({required Object const_}) => '¿Desea borrar la constante ${const_}?';
	@override late final _TranslationsMisskeyThemeKeysEsEs keys = _TranslationsMisskeyThemeKeysEsEs._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxEsEs extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get note => 'Notas';
	@override String get noteMy => 'Nota (a mí mismo)';
	@override String get notification => 'Notificaciones';
	@override String get reaction => 'Al seleccionar una reacción';
	@override String get chatMessage => 'Mensajes del Chat';
}

// Path: misskey.soundSettings_
class _TranslationsMisskeySoundSettingsEsEs extends TranslationsMisskeySoundSettingsEnUs {
	_TranslationsMisskeySoundSettingsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get driveFile => 'Usar un archivo de audio en Drive';
	@override String get driveFileWarn => 'Selecciona un archivo de audio en Drive.';
	@override String get driveFileTypeWarn => 'Este archivo es incompatible';
	@override String get driveFileTypeWarnDescription => 'Selecciona un archivo de audio';
	@override String get driveFileDurationWarn => 'La duración del audio es demasiado larga.';
	@override String get driveFileDurationWarnDescription => 'Usar un audio de larga duración puede llegar a molestar mientras usas Misskey. ¿Quieres continuar?';
	@override String get driveFileError => 'No puedo cargar el sonido. Por favor cambia la configuración.';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoEsEs extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get future => 'Futuro';
	@override String get justNow => 'Justo ahora';
	@override String secondsAgo({required Object n}) => 'Hace ${n} segundos';
	@override String minutesAgo({required Object n}) => 'Hace ${n} minutos';
	@override String hoursAgo({required Object n}) => 'Hace ${n} horas';
	@override String daysAgo({required Object n}) => 'Hace ${n} días';
	@override String weeksAgo({required Object n}) => 'Hace ${n} semanas';
	@override String monthsAgo({required Object n}) => 'Hace ${n} meses';
	@override String yearsAgo({required Object n}) => 'Hace ${n} años';
	@override String get invalid => 'No hay nada que ver aqui';
}

// Path: misskey.timeIn_
class _TranslationsMisskeyTimeInEsEs extends TranslationsMisskeyTimeInEnUs {
	_TranslationsMisskeyTimeInEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String seconds({required Object n}) => 'En ${n} segundos';
	@override String minutes({required Object n}) => 'En ${n}m';
	@override String hours({required Object n}) => 'En ${n}h';
	@override String days({required Object n}) => 'En ${n}d';
	@override String weeks({required Object n}) => 'En ${n}sem.';
	@override String months({required Object n}) => 'En ${n}M';
	@override String years({required Object n}) => 'En ${n} años';
}

// Path: misskey.time_
class _TranslationsMisskeyTimeEsEs extends TranslationsMisskeyTimeEnUs {
	_TranslationsMisskeyTimeEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get second => 'Segundos';
	@override String get minute => 'Minutos';
	@override String get hour => 'Horas';
	@override String get day => 'Días';
	@override String get month => 'Mes(es)';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faEsEs extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'Ya has completado la configuración.';
	@override String get registerTOTP => 'Registrar aplicación autenticadora';
	@override String step1({required Object a, required Object b}) => 'Primero, instale en su dispositivo la aplicación de autenticación ${a} o ${b} u otra.';
	@override String get step2 => 'Luego, escanee con la aplicación el código QR mostrado en pantalla.';
	@override String get step2Uri => 'Si usas una aplicación de escritorio, introduce en ella la siguiente URL.';
	@override String get step3Title => 'Ingresa un código de autenticación';
	@override String get step3 => 'Para terminar, ingrese el token mostrado en la aplicación.';
	@override String get setupCompleted => 'Configuración completada';
	@override String get step4 => 'Ahora cuando inicie sesión, ingrese el mismo token';
	@override String get securityKeyNotSupported => 'Tu navegador no soporta claves de autenticación.';
	@override String get registerTOTPBeforeKey => 'Por favor. configura una aplicación de autenticación para registrar una llave de seguridad.';
	@override String get securityKeyInfo => 'Se puede configurar el inicio de sesión usando una clave de seguridad de hardware que soporte FIDO2 o con un certificado de huella digital o con un PIN';
	@override String get registerSecurityKey => 'Registrar una llave de seguridad';
	@override String get securityKeyName => 'Ingresa un nombre para la clave';
	@override String get tapSecurityKey => 'Por favor, sigue tu navegador para registrar una llave de seguridad';
	@override String get removeKey => 'Quitar la llave de seguridad';
	@override String removeKeyConfirm({required Object name}) => '¿Borrar el respaldo "${name}"?';
	@override String get whyTOTPOnlyRenew => 'The authenticator app cannot be removed as long as a security key is registered.\nLa aplicación autenticadora no puede ser eliminada mientras la llave de seguridad se encuentre registrada.';
	@override String get renewTOTP => 'Reconfigurar la aplicación autenticadora';
	@override String get renewTOTPConfirm => 'This will cause verification codes from your previous app to stop working\nEsto hará que los códigos de verificación de la aplicación anterior dejen de funcionar';
	@override String get renewTOTPOk => 'Reconfigurar';
	@override String get renewTOTPCancel => 'No gracias';
	@override String get checkBackupCodesBeforeCloseThisWizard => 'Por favor, copia los siguientes códigos de respaldo antes de finalizar el asistente.';
	@override String get backupCodes => 'Códigos de Respaldo';
	@override String get backupCodesDescription => 'En caso de que no puedas usar tu aplicación de autenticación, podrás usar los códigos de respaldo que figuran abajo para acceder a tu cuenta. Asegúrate de guardar en lugar seguro los códigos de respaldo. Cada uno de los códigos de respaldo es de un solo uso.';
	@override String get backupCodeUsedWarning => 'Has usado todos los códigos de respaldo. Si dejas de tener acceso a tu aplicación de autenticación, no podrás volver a iniciar sesión en tu cuenta. Por favor, reconfigura tu aplicación de autenticación lo antes posible.';
	@override String get backupCodesExhaustedWarning => 'Has usado todos los códigos de respaldo. Si dejas de tener acceso a tu aplicación de autenticación, no podrás volver a iniciar sesión en la cuenta que figura arriba. Por favor, reconfigura tu aplicación de autenticación lo antes posible.';
	@override String get moreDetailedGuideHere => 'Guía detallada';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsEsEs extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'Ver información de la cuenta';
	@override String get writeAccount => 'Editar información de la cuenta';
	@override String get readBlocks => 'Ver usuarios bloqueados';
	@override String get writeBlocks => 'Administrar usuarios bloqueados';
	@override String get readDrive => 'Ver el drive';
	@override String get writeDrive => 'Administrar drive';
	@override String get readFavorites => 'Ver favoritos';
	@override String get writeFavorites => 'Addministrar favoritos';
	@override String get readFollowing => 'Ver información de seguidor';
	@override String get writeFollowing => 'Seguir o dejar de seguir';
	@override String get readMessaging => 'Ver chat';
	@override String get writeMessaging => 'Administrar chat';
	@override String get readMutes => 'Ver usuarios silenciados';
	@override String get writeMutes => 'Administrar usuarios silenciados';
	@override String get writeNotes => 'Crear/borrar notas';
	@override String get readNotifications => 'Ver notificaciones';
	@override String get writeNotifications => 'Administrar notificaciones';
	@override String get readReactions => 'Ver reacciones';
	@override String get writeReactions => 'Administrar reacciones';
	@override String get writeVotes => 'Votar';
	@override String get readPages => 'Ver páginas';
	@override String get writePages => 'Administrar páginas';
	@override String get readPageLikes => 'Ver páginas que te gustan';
	@override String get writePageLikes => 'Administrar páginas que te gustan';
	@override String get readUserGroups => 'Ver grupos de usuarios';
	@override String get writeUserGroups => 'Administrar grupos de usuarios';
	@override String get readChannels => 'Ver canal';
	@override String get writeChannels => 'Modificar canal';
	@override String get readGallery => 'Ver galería';
	@override String get writeGallery => 'Editar galería';
	@override String get readGalleryLikes => 'Ver favoritos de la galería';
	@override String get writeGalleryLikes => 'Editar favoritos de la galería';
	@override String get readFlash => 'Ver Play';
	@override String get writeFlash => 'Editar Plays';
	@override String get readFlashLikes => 'Ver los Play que me gustan';
	@override String get writeFlashLikes => 'Editar lista de Play que me gustan';
	@override String get readAdminAbuseUserReports => 'Ver reportes de usuarios';
	@override String get writeAdminDeleteAccount => 'Eliminar cuentas de usuario';
	@override String get writeAdminDeleteAllFilesOfAUser => 'Eliminar todos los archivos de un usuario';
	@override String get readAdminIndexStats => 'Ver datos indexados';
	@override String get readAdminTableStats => 'Ver estadísticas de las tablas de la base de datos';
	@override String get readAdminUserIps => 'Ver dirección IP de usuario';
	@override String get readAdminMeta => 'Ver metadatos de la instancia';
	@override String get writeAdminResetPassword => 'Restablecer contraseñas de usuario';
	@override String get writeAdminResolveAbuseUserReport => 'Resolución de reportes de usuario';
	@override String get writeAdminSendEmail => 'Enviar email';
	@override String get readAdminServerInfo => 'Ver información del servidor';
	@override String get readAdminShowModerationLog => 'Ver log de moderación';
	@override String get readAdminShowUser => 'Ver información privada de usuario';
	@override String get writeAdminSuspendUser => 'Suspender cuentas de usuario';
	@override String get writeAdminUnsetUserAvatar => 'Quitar avatares de usuario';
	@override String get writeAdminUnsetUserBanner => 'Quitar banner de usuarios';
	@override String get writeAdminUnsuspendUser => 'Quitar suspensión de cuentas de usuario';
	@override String get writeAdminMeta => 'Edición de metadatos de la instancia';
	@override String get writeAdminUserNote => 'Moderación de notas';
	@override String get writeAdminRoles => 'Edición de roles de usuario';
	@override String get readAdminRoles => 'Ver roles de usuario';
	@override String get writeAdminRelays => 'Edición de relays';
	@override String get readAdminRelays => 'Ver relays';
	@override String get writeAdminInviteCodes => 'Edición de códigos de invitación';
	@override String get readAdminInviteCodes => 'Ver códigos de invitación';
	@override String get writeAdminAnnouncements => 'Edición de anuncios';
	@override String get readAdminAnnouncements => 'Ver anuncios';
	@override String get writeAdminAvatarDecorations => 'Edición de decoración de avatares';
	@override String get readAdminAvatarDecorations => 'Ver decoraciones de avatar';
	@override String get writeAdminFederation => 'Edición de federación de instancias';
	@override String get writeAdminAccount => 'Edición de cuentas de usuario';
	@override String get readAdminAccount => 'Ver cuentas de usuario';
	@override String get writeAdminEmoji => 'Edición de emojis';
	@override String get readAdminEmoji => 'Ver emojis';
	@override String get writeAdminQueue => 'Edición de cola de tareas';
	@override String get readAdminQueue => 'Ver cola de tareas';
	@override String get writeAdminPromo => 'Edición de promociones';
	@override String get writeAdminDrive => 'Edición de Drive de usuarios';
	@override String get readAdminDrive => 'Ver Drive de usuarios';
	@override String get readAdminStream => 'Usar la API de Websocket para administradores';
	@override String get writeAdminAd => 'Edición de anuncios';
	@override String get readAdminAd => 'Ver anuncios';
	@override String get writeInviteCodes => 'Crear códigos de invitación';
	@override String get readInviteCodes => 'Ver códigos de invitación';
	@override String get writeClipFavorite => 'Marcar me gusta en clips';
	@override String get readClipFavorite => 'Ver los clips que me gustan';
	@override String get readFederation => 'Ver instancias federadas';
	@override String get writeReportAbuse => 'Crear reportes de usuario';
	@override String get writeChat => 'Administrar chat';
	@override String get readChat => 'Explorar Chats';
}

// Path: misskey.auth_
class _TranslationsMisskeyAuthEsEs extends TranslationsMisskeyAuthEnUs {
	_TranslationsMisskeyAuthEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'Permisos de la aplicación';
	@override String shareAccess({required Object name}) => '¿Desea permitir el acceso a la cuenta "${name}"?';
	@override String get shareAccessAsk => '¿Está seguro de que desea autorizar esta aplicación para acceder a su cuenta?';
	@override String permission({required Object name}) => '${name} solicita los siguientes permisos';
	@override String get permissionAsk => 'Esta aplicación requiere los siguientes permisos';
	@override String get pleaseGoBack => 'Por favor, vuelve a la aplicación';
	@override String get callback => 'Volviendo a la aplicación';
	@override String get accepted => 'Acceso concedido.';
	@override String get denied => 'Acceso denegado';
	@override String get scopeUser => 'Operar como el siguiente usuario';
	@override String get pleaseLogin => 'Se requiere un inicio de sesión para darle permisos a la aplicación';
	@override String get byClickingYouWillBeRedirectedToThisUrl => 'Cuando el acceso es concedido, serás automáticamente redireccionado a la siguiente URL';
	@override String get alreadyAuthorized => 'Esta aplicación ya ha obtenido acceso.';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesEsEs extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get all => 'Todas las notas';
	@override String get homeTimeline => 'Notas de los usuarios que sigues';
	@override String get users => 'Notas de un usuario o varios';
	@override String get userList => 'Notas de los usuarios de una lista';
	@override String get userBlacklist => 'Todas las notas excepto aquellas de uno o más usuarios especificados';
}

// Path: misskey.weekday_
class _TranslationsMisskeyWeekdayEsEs extends TranslationsMisskeyWeekdayEnUs {
	_TranslationsMisskeyWeekdayEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get sunday => 'Domingo';
	@override String get monday => 'Lunes';
	@override String get tuesday => 'Martes';
	@override String get wednesday => 'Miércoles';
	@override String get thursday => 'Jueves';
	@override String get friday => 'Viernes';
	@override String get saturday => 'Sábado';
}

// Path: misskey.widgets_
class _TranslationsMisskeyWidgetsEsEs extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Perfil';
	@override String get instanceInfo => 'información de la instancia';
	@override String get memo => 'Nota adhesiva';
	@override String get notifications => 'Notificaciones';
	@override String get timeline => 'Linea de tiempo';
	@override String get calendar => 'Calendario';
	@override String get trends => 'Tendencias';
	@override String get clock => 'Reloj';
	@override String get rss => 'Lector RSS';
	@override String get rssTicker => 'Ticker-RSS';
	@override String get activity => 'Actividad';
	@override String get photos => 'Fotos';
	@override String get digitalClock => 'Reloj digital';
	@override String get unixClock => 'Reloj UNIX';
	@override String get federation => 'Federación';
	@override String get instanceCloud => 'Nube de Instancias Federadas';
	@override String get postForm => 'Formulario';
	@override String get slideshow => 'Diapositivas';
	@override String get button => 'Botón';
	@override String get onlineUsers => 'Usuarios en linea';
	@override String get jobQueue => 'Cola de trabajos';
	@override String get serverMetric => 'Estadísticas del servidor';
	@override String get aiscript => 'Consola de AiScript';
	@override String get aiscriptApp => 'Aplicación AiScript';
	@override String get aichan => 'indigo';
	@override String get userList => 'Lista de usuarios';
	@override late final _TranslationsMisskeyWidgetsUserListEsEs userList_ = _TranslationsMisskeyWidgetsUserListEsEs._(_root);
	@override String get clicker => 'Cliqueador';
	@override String get birthdayFollowings => 'Hoy cumplen años';
	@override String get chat => 'Chatear';
}

// Path: misskey.widgetOptions_
class _TranslationsMisskeyWidgetOptionsEsEs extends TranslationsMisskeyWidgetOptionsEnUs {
	_TranslationsMisskeyWidgetOptionsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get showHeader => 'Mostrar encabezados';
	@override String get transparent => 'Hacer fondo transparente';
	@override String get height => 'Altura';
	@override late final _TranslationsMisskeyWidgetOptionsButtonEsEs button_ = _TranslationsMisskeyWidgetOptionsButtonEsEs._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsClockEsEs clock_ = _TranslationsMisskeyWidgetOptionsClockEsEs._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsJobQueueEsEs jobQueue_ = _TranslationsMisskeyWidgetOptionsJobQueueEsEs._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsRssEsEs rss_ = _TranslationsMisskeyWidgetOptionsRssEsEs._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsRssTickerEsEs rssTicker_ = _TranslationsMisskeyWidgetOptionsRssTickerEsEs._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsBirthdayFollowingsEsEs birthdayFollowings_ = _TranslationsMisskeyWidgetOptionsBirthdayFollowingsEsEs._(_root);
}

// Path: misskey.cw_
class _TranslationsMisskeyCwEsEs extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Ocultar';
	@override String get show => 'Ver más';
	@override String chars({required Object count}) => '${count} caracteres';
	@override String files({required Object count}) => '${count} archivos';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollEsEs extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'Se necesitan al menos 2 opciones';
	@override String choiceN({required Object n}) => 'Opción ${n}';
	@override String get noMore => 'No se pueden agregar más';
	@override String get canMultipleVote => 'Permitir seleccionar varias opciones';
	@override String get expiration => 'Termina el';
	@override String get infinite => 'Sin límite de tiempo';
	@override String get at => 'Elegir fecha y hora';
	@override String get after => 'Elegir lapso de tiempo';
	@override String get deadlineDate => 'Fecha de fin';
	@override String get deadlineTime => 'Horas';
	@override String get duration => 'Duración';
	@override String votesCount({required Object n}) => '${n} votos';
	@override String totalVotes({required Object n}) => 'Total ${n} votos';
	@override String get vote => 'Votar';
	@override String get showResult => 'Ver resultado';
	@override String get voted => 'Votado';
	@override String get closed => 'Cerrada';
	@override String remainingDays({required Object d, required Object h}) => 'Quedan ${d} días y ${h} horas para que finalice';
	@override String remainingHours({required Object h, required Object m}) => 'Quedan ${h} horas y ${m} minutos para que finalice';
	@override String remainingMinutes({required Object m, required Object s}) => 'Quedan ${m} minutos y ${s} segundos para que finalice';
	@override String remainingSeconds({required Object s}) => 'Quedan ${s} segundos para que finalice';
}

// Path: misskey.visibility_
class _TranslationsMisskeyVisibilityEsEs extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get public => 'Público';
	@override String get publicDescription => 'Visible para todos los usuarios';
	@override String get home => 'Inicio';
	@override String get homeDescription => 'Visible sólo en la linea de tiempo de inicio';
	@override String get followers => 'Seguidores';
	@override String get followersDescription => 'Visible sólo para tus seguidores';
	@override String get specified => 'Nota directa';
	@override String get specifiedDescription => 'Visible sólo para los usuarios elegidos';
	@override String get disableFederation => 'No federado';
	@override String get disableFederationDescription => 'No enviar a otras instancias';
}

// Path: misskey.postForm_
class _TranslationsMisskeyPostFormEsEs extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get quitInspiteOfThereAreUnuploadedFilesConfirm => 'Hay archivos que no se han cargado, ¿deseas descartarlos y cerrar el formulario?';
	@override String get uploaderTip => 'El archivo aún no se ha cargado. Desde el menú de archivos, puedes cambiar el nombre, recortar la imagen, añadir una marca de agua y configurar la compresión, entre otras opciones. Los archivos se suben automáticamente al publicar una nota.';
	@override String get replyPlaceholder => 'Responder a esta nota';
	@override String get quotePlaceholder => 'Citar esta nota';
	@override String get channelPlaceholder => 'Publicar en el canal';
	@override String get showHowToUse => 'Mostrar el tutorial  de este formulario';
	@override late final _TranslationsMisskeyPostFormHowToUseEsEs howToUse_ = _TranslationsMisskeyPostFormHowToUseEsEs._(_root);
	@override late final _TranslationsMisskeyPostFormPlaceholdersEsEs placeholders_ = _TranslationsMisskeyPostFormPlaceholdersEsEs._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileEsEs extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nombre';
	@override String get username => 'Nombre de usuario';
	@override String get description => 'Descripción';
	@override String get youCanIncludeHashtags => 'También puedes incluir hashtags en tu biografía';
	@override String get metadata => 'información adicional';
	@override String get metadataEdit => 'Editar información adicional';
	@override String get metadataDescription => 'Usando esto puedes mostrar campos de información adicionales en tu perfil.';
	@override String get metadataLabel => 'Etiqueta';
	@override String get metadataContent => 'Contenido';
	@override String get changeAvatar => 'Cambiar avatar';
	@override String get changeBanner => 'Cambiar banner';
	@override String get verifiedLinkDescription => 'Introduciendo una URL que contiene un enlace a tu perfil, se puede mostrar un icono de verificación de propiedad al lado del campo.';
	@override String avatarDecorationMax({required Object max}) => 'Puedes añadir un máximo de ${max} decoraciones de avatar.';
	@override String get followedMessage => 'Mensaje cuando te han seguido';
	@override String get followedMessageDescription => 'Puedes establecer un mensaje de bienvenida para nuevos seguidores.';
	@override String get followedMessageDescriptionForLockedAccount => 'Si apruebas manualmente seguidores, el mensaje se mostrará al seguidor en el momento de la aprobación.';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportEsEs extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Todas las notas';
	@override String get favoritedNotes => 'Notas favoritas';
	@override String get clips => 'Clip';
	@override String get followingList => 'Siguiendo';
	@override String get muteList => 'Silenciados';
	@override String get blockingList => 'Bloqueados';
	@override String get userLists => 'Listas';
	@override String get excludeMutingUsers => 'Excluir usuarios silenciados';
	@override String get excludeInactiveUsers => 'Excluir usuarios inactivos';
	@override String get withReplies => 'Si el archivo no incluye información sobre si las respuestas deben incluirse en la línea de tiempo, las respuestas realizadas por el importador deben incluirse en la línea de tiempo.';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsEsEs extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Federación';
	@override String get apRequest => 'Pedidos';
	@override String get usersIncDec => 'Variación de usuarios';
	@override String get usersTotal => 'Total de usuarios';
	@override String get activeUsers => 'Cantidad de usuarios activos';
	@override String get notesIncDec => 'Variación de la cantidad de notas';
	@override String get localNotesIncDec => 'Variación de la cantidad de notas locales';
	@override String get remoteNotesIncDec => 'Variación de la cantidad de notas remotas';
	@override String get notesTotal => 'Total de notas';
	@override String get filesIncDec => 'Variación de cantidad de archivos';
	@override String get filesTotal => 'Total de archivos';
	@override String get storageUsageIncDec => 'Variación de uso del almacenamiento';
	@override String get storageUsageTotal => 'Total de uso del almacenamiento';
}

// Path: misskey.instanceCharts_
class _TranslationsMisskeyInstanceChartsEsEs extends TranslationsMisskeyInstanceChartsEnUs {
	_TranslationsMisskeyInstanceChartsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get requests => 'Pedidos';
	@override String get users => 'Variación de usuarios';
	@override String get usersTotal => 'Total acumulado de usuarios';
	@override String get notes => 'Variación de la cantidad de notas';
	@override String get notesTotal => 'Total acumulado de la cantidad de notas';
	@override String get ff => 'Variación de cantidad de seguidos/seguidores';
	@override String get ffTotal => 'Total acumulado de cantidad de seguidos/seguidores';
	@override String get cacheSize => 'Variación del tamaño de la caché';
	@override String get cacheSizeTotal => 'Total acumulado del tamaño de la caché';
	@override String get files => 'Variación de cantidad de archivos';
	@override String get filesTotal => 'Total acumulado de cantidad de archivos';
}

// Path: misskey.timelines_
class _TranslationsMisskeyTimelinesEsEs extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get home => 'Inicio';
	@override String get local => 'Local';
	@override String get social => 'Social';
	@override String get global => 'Global';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayEsEs extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Crear guión';
	@override String get edit => 'Editar guión';
	@override String get created => 'Guión creado';
	@override String get updated => 'Guión editado';
	@override String get deleted => 'Guión eliminado';
	@override String get pageSetting => 'Configuración de guión';
	@override String get editThisPage => 'Editar este guión';
	@override String get viewSource => 'Ver la fuente';
	@override String get my => 'Mis guiones';
	@override String get liked => 'Guiones que te gustaron';
	@override String get featured => 'Popular';
	@override String get title => 'Título';
	@override String get script => 'Script';
	@override String get summary => 'Descripción';
	@override String get visibilityDescription => 'Poniéndola como privada significa que no será visible en tu perfil, pero cualquiera que tenga la URL aún podrá acceder a ella.';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesEsEs extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'Crear página';
	@override String get editPage => 'Editar página';
	@override String get readPage => 'Viendo la fuente';
	@override String get pageSetting => 'Configurar página';
	@override String get nameAlreadyExists => 'La URL de la página especificada ya existe';
	@override String get invalidNameTitle => 'URL inválida';
	@override String get invalidNameText => 'Verifique que no tenga espacios en blanco';
	@override String get editThisPage => 'Editar esta página';
	@override String get viewSource => 'Ver la fuente';
	@override String get viewPage => 'Ver página';
	@override String get like => 'Me gusta';
	@override String get unlike => 'Quitar me gusta';
	@override String get my => 'Mis páginas';
	@override String get liked => 'Páginas que me gustan';
	@override String get featured => 'Popular';
	@override String get inspector => 'Inspector';
	@override String get contents => 'Contenido';
	@override String get content => 'Bloque de página';
	@override String get variables => 'Variables';
	@override String get title => 'Título';
	@override String get url => 'URL de la página';
	@override String get summary => 'Resumen de la página';
	@override String get alignCenter => 'Centrar';
	@override String get hideTitleWhenPinned => 'Ocultar el título de la página al fijarse';
	@override String get font => 'Fuente';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
	@override String get eyeCatchingImageSet => 'Elegir imagen llamativa';
	@override String get eyeCatchingImageRemove => 'Borrar imagen llamativa';
	@override String get chooseBlock => 'Agregar bloque';
	@override String get enterSectionTitle => 'Escribe el título de la sección';
	@override String get selectType => 'Elegir tipo';
	@override String get contentBlocks => 'Contenido';
	@override String get inputBlocks => 'Entrada';
	@override String get specialBlocks => 'Especial';
	@override late final _TranslationsMisskeyPagesBlocksEsEs blocks = _TranslationsMisskeyPagesBlocksEsEs._(_root);
}

// Path: misskey.relayStatus_
class _TranslationsMisskeyRelayStatusEsEs extends TranslationsMisskeyRelayStatusEnUs {
	_TranslationsMisskeyRelayStatusEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'Pendiente';
	@override String get accepted => 'Aceptar';
	@override String get rejected => 'Rechazada';
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationEsEs extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'Archivo subido';
	@override String youGotMention({required Object name}) => 'Mención de ${name}';
	@override String youGotReply({required Object name}) => 'Respuesta de ${name}';
	@override String youGotQuote({required Object name}) => 'Citado por ${name}';
	@override String youRenoted({required Object name}) => 'Renotado por ${name}';
	@override String get youWereFollowed => 'te ha seguido';
	@override String get youReceivedFollowRequest => 'Has mandado una solicitud de seguimiento';
	@override String get yourFollowRequestAccepted => 'Tu solicitud de seguimiento fue aceptada';
	@override String get pollEnded => 'Estan disponibles los resultados de la encuesta';
	@override String get scheduledNotePosted => 'Una nota programada ha sido publicada';
	@override String get scheduledNotePostFailed => 'Ha fallado la publicación de una nota programada';
	@override String get newNote => 'Nueva nota';
	@override String unreadAntennaNote({required Object name}) => 'Antena ${name}';
	@override String get roleAssigned => 'Rol asignado';
	@override String get chatRoomInvitationReceived => 'Invitado a la sala de chat.';
	@override String get emptyPushNotificationMessage => 'Se han actualizado las notificaciones push';
	@override String get achievementEarned => 'Logro desbloqueado';
	@override String get testNotification => 'Notificación de prueba';
	@override String get checkNotificationBehavior => 'Comprobar comportamiento de la notificación';
	@override String get sendTestNotification => 'Enviar notificación de prueba';
	@override String get notificationWillBeDisplayedLikeThis => 'Las notificaciones tendrán este aspecto';
	@override String reactedBySomeUsers({required Object n}) => '${n} usuarios han reaccionado';
	@override String likedBySomeUsers({required Object n}) => '${n} usuarios les gustó tu nota';
	@override String renotedBySomeUsers({required Object n}) => '${n} usuarios han renotado';
	@override String followedBySomeUsers({required Object n}) => 'Seguido por ${n} usuarios';
	@override String get flushNotification => 'Limpiar notificaciones';
	@override String exportOfXCompleted({required Object x}) => 'La exportación de ${x} ha sido completada.';
	@override String get login => 'Alguien ha iniciado sesión';
	@override String get createToken => 'Token de acceso creado';
	@override String createTokenDescription({required Object text}) => 'Si no tienes ni idea, elimina el token de acceso a través de "${text}".';
	@override late final _TranslationsMisskeyNotificationTypesEsEs types_ = _TranslationsMisskeyNotificationTypesEsEs._(_root);
	@override late final _TranslationsMisskeyNotificationActionsEsEs actions_ = _TranslationsMisskeyNotificationActionsEsEs._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckEsEs extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Siempre mostrar la columna principal';
	@override String get columnAlign => 'Alinear columnas';
	@override String get columnGap => 'Margen entre columnas';
	@override String get deckMenuPosition => 'Posición del menú Deck';
	@override String get navbarPosition => 'Posición de la barra de navegación';
	@override String get addColumn => 'Agregar columna';
	@override String get newNoteNotificationSettings => 'Configuración de las notificaciones para notas nuevas';
	@override String get configureColumn => 'Ajustes de columna';
	@override String get swapLeft => 'Mover a la izquierda';
	@override String get swapRight => 'Mover a la derecha';
	@override String get swapUp => 'Mover arriba';
	@override String get swapDown => 'Mover abajo';
	@override String get stackLeft => 'Apilar a la izquierda';
	@override String get popRight => 'Sacar a la derecha';
	@override String get profile => 'Perfil';
	@override String get newProfile => 'Nuevo perfil';
	@override String get deleteProfile => 'Eliminar perfil';
	@override String get introduction => '¡Crea la interfaz perfecta para tí organizando las columnas libremente!';
	@override String get introduction2 => 'Presiona en la  + de la derecha de la pantalla para añadir nuevas columnas donde quieras.';
	@override String get widgetsIntroduction => 'Por favor selecciona "Editar Widgets" en el menú columna y agrega un widget.';
	@override String get useSimpleUiForNonRootPages => 'Mostrar páginas no pertenecientes a la raíz con la interfaz simple';
	@override String get usedAsMinWidthWhenFlexible => 'Se usará el ancho mínimo cuando la opción "Autoajustar ancho" esté habilitada';
	@override String get flexible => 'Autoajustar ancho';
	@override String get enableSyncBetweenDevicesForProfiles => 'Activar la sincronización de la información de perfiles entre dispositivos.';
	@override String get showHowToUse => 'Ver la descripción de la interfaz de usuario';
	@override late final _TranslationsMisskeyDeckHowToUseEsEs howToUse_ = _TranslationsMisskeyDeckHowToUseEsEs._(_root);
	@override late final _TranslationsMisskeyDeckColumnsEsEs columns_ = _TranslationsMisskeyDeckColumnsEsEs._(_root);
}

// Path: misskey.dialog_
class _TranslationsMisskeyDialogEsEs extends TranslationsMisskeyDialogEnUs {
	_TranslationsMisskeyDialogEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => '¡Has excedido el límite de caracteres! Actualmente ${current} de ${max}.';
	@override String charactersBelow({required Object current, required Object min}) => '¡Estás por debajo del límite de caracteres! Actualmente ${current} de ${min}.';
}

// Path: misskey.disabledTimeline_
class _TranslationsMisskeyDisabledTimelineEsEs extends TranslationsMisskeyDisabledTimelineEnUs {
	_TranslationsMisskeyDisabledTimelineEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Línea de tiempo deshabilitada';
	@override String get description => 'No puedes usar esta línea de tiempo con tus roles actuales.';
}

// Path: misskey.drivecleaner_
class _TranslationsMisskeyDrivecleanerEsEs extends TranslationsMisskeyDrivecleanerEnUs {
	_TranslationsMisskeyDrivecleanerEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'Tamaño descendiente';
	@override String get orderByCreatedAtAsc => 'Fecha ascendente';
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsEsEs extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Crear Webhook';
	@override String get modifyWebhook => 'Editar webhook';
	@override String get name => 'Nombre';
	@override String get secret => 'Secreto';
	@override String get trigger => 'Disparador';
	@override String get active => 'Activado';
	@override late final _TranslationsMisskeyWebhookSettingsEventsEsEs events_ = _TranslationsMisskeyWebhookSettingsEventsEsEs._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsSystemEventsEsEs systemEvents_ = _TranslationsMisskeyWebhookSettingsSystemEventsEsEs._(_root);
	@override String get deleteConfirm => '¿Estás seguro de querer eliminar el Webhook?';
	@override String get testRemarks => 'Haz clic en el botón de la derecha del switch para mandar una prueba Webhook con datos ficticios';
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportEsEs extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientEsEs notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientEsEs._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesEsEs extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get clearQueue => 'Borrar la cola de trabajos';
	@override String get promoteQueue => 'Reintentar el trabajo en la cola';
	@override String get createRole => 'Rol creado';
	@override String get deleteRole => 'Rol eliminado';
	@override String get updateRole => 'Rol actualizado';
	@override String get assignRole => 'Rol asignado';
	@override String get unassignRole => 'Rol retirado';
	@override String get suspend => 'Suspender';
	@override String get unsuspend => 'Suspensión retirada';
	@override String get addCustomEmoji => 'Añadido emoji personalizado';
	@override String get updateCustomEmoji => 'Emoji personalizado actualizado';
	@override String get deleteCustomEmoji => 'Emoji personalizado eliminado';
	@override String get updateServerSettings => 'Ajustes de servidor actualizados';
	@override String get updateUserNote => 'Nota de moderación actualizada';
	@override String get deleteDriveFile => 'Archivo eliminado';
	@override String get deleteNote => 'Nota eliminada';
	@override String get createGlobalAnnouncement => 'Anuncio global creado';
	@override String get createUserAnnouncement => 'Anuncio de usuario creado';
	@override String get updateGlobalAnnouncement => 'Anuncio global actualizado';
	@override String get updateUserAnnouncement => 'Anuncio de usuario actualizado';
	@override String get deleteGlobalAnnouncement => 'Anuncio global eliminado';
	@override String get deleteUserAnnouncement => 'Anuncio de usuario eliminado';
	@override String get resetPassword => 'Resetear contraseña';
	@override String get suspendRemoteInstance => 'Instancia remota suspendida';
	@override String get unsuspendRemoteInstance => 'Suspensión de instancia remota retirada';
	@override String get updateRemoteInstanceNote => 'Nota de moderación de una instancia remota actualizada';
	@override String get markSensitiveDriveFile => 'Archivo marcado como sensible';
	@override String get unmarkSensitiveDriveFile => 'Archivo marcado como no sensible';
	@override String get resolveAbuseReport => 'Reporte resuelto';
	@override String get forwardAbuseReport => 'Informe reenviado';
	@override String get updateAbuseReportNote => 'Nota de moderación de un informe actualizada';
	@override String get createInvitation => 'Generar invitación';
	@override String get createAd => 'Anuncio creado';
	@override String get deleteAd => 'Anuncio eliminado';
	@override String get updateAd => 'Anuncio actualizado';
	@override String get createAvatarDecoration => 'Decoración de avatar creada';
	@override String get updateAvatarDecoration => 'Decoración de avatar actualizada';
	@override String get deleteAvatarDecoration => 'Decoración de avatar eliminada';
	@override String get unsetUserAvatar => 'Quitar decoración de avatar de este usuario';
	@override String get unsetUserBanner => 'Quitar banner de este usuario';
	@override String get createSystemWebhook => 'Crear un SystemWebhook';
	@override String get updateSystemWebhook => 'Actualizar SystemWebhook ';
	@override String get deleteSystemWebhook => 'Borrar SystemWebHook';
	@override String get createAbuseReportNotificationRecipient => 'Crear un destinatario para el informe de moderación';
	@override String get updateAbuseReportNotificationRecipient => 'Destinatario de los informes actualizados';
	@override String get deleteAbuseReportNotificationRecipient => 'Destinatario de los informes borrado';
	@override String get deleteAccount => 'Cuenta Borrada';
	@override String get deletePage => 'Página borrada';
	@override String get deleteFlash => 'Juego borrado';
	@override String get deleteGalleryPost => 'Publicación de la galería, eliminada';
	@override String get deleteChatRoom => 'Borrar  sala del chat';
	@override String get updateProxyAccountDescription => 'Actualizar la descripción de la cuenta proxy';
}

// Path: misskey.fileViewer_
class _TranslationsMisskeyFileViewerEsEs extends TranslationsMisskeyFileViewerEnUs {
	_TranslationsMisskeyFileViewerEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Detalles del archivo';
	@override String get type => 'Tipo de archivo';
	@override String get size => 'Tamaño del archivo';
	@override String get url => 'URL';
	@override String get uploadedAt => 'Subido el';
	@override String get attachedNotes => 'Notas adjuntas';
	@override String get usage => 'Utilizado';
	@override String get thisPageCanBeSeenFromTheAuthor => 'Esta página solo puede ser vista por el autor.';
}

// Path: misskey.externalResourceInstaller_
class _TranslationsMisskeyExternalResourceInstallerEsEs extends TranslationsMisskeyExternalResourceInstallerEnUs {
	_TranslationsMisskeyExternalResourceInstallerEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Instalar desde sitio externo';
	@override String get checkVendorBeforeInstall => 'Asegúrate de que el distribuidor de este recurso es de confianza antes de proceder a la instalación.';
	@override late final _TranslationsMisskeyExternalResourceInstallerPluginEsEs plugin_ = _TranslationsMisskeyExternalResourceInstallerPluginEsEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerThemeEsEs theme_ = _TranslationsMisskeyExternalResourceInstallerThemeEsEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerMetaEsEs meta_ = _TranslationsMisskeyExternalResourceInstallerMetaEsEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerVendorInfoEsEs vendorInfo_ = _TranslationsMisskeyExternalResourceInstallerVendorInfoEsEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsEsEs errors_ = _TranslationsMisskeyExternalResourceInstallerErrorsEsEs._(_root);
}

// Path: misskey.dataSaver_
class _TranslationsMisskeyDataSaverEsEs extends TranslationsMisskeyDataSaverEnUs {
	_TranslationsMisskeyDataSaverEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyDataSaverMediaEsEs media_ = _TranslationsMisskeyDataSaverMediaEsEs._(_root);
	@override late final _TranslationsMisskeyDataSaverAvatarEsEs avatar_ = _TranslationsMisskeyDataSaverAvatarEsEs._(_root);
	@override late final _TranslationsMisskeyDataSaverUrlPreviewThumbnailEsEs urlPreviewThumbnail_ = _TranslationsMisskeyDataSaverUrlPreviewThumbnailEsEs._(_root);
	@override late final _TranslationsMisskeyDataSaverDisableUrlPreviewEsEs disableUrlPreview_ = _TranslationsMisskeyDataSaverDisableUrlPreviewEsEs._(_root);
	@override late final _TranslationsMisskeyDataSaverCodeEsEs code_ = _TranslationsMisskeyDataSaverCodeEsEs._(_root);
}

// Path: misskey.hemisphere_
class _TranslationsMisskeyHemisphereEsEs extends TranslationsMisskeyHemisphereEnUs {
	_TranslationsMisskeyHemisphereEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get N => 'Hemisferio norte';
	@override String get S => 'Hemisferio sur';
	@override String get caption => 'Usado en algunos clientes para determinar la estación del año';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiEsEs extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get reversi => 'Reversi';
	@override String get gameSettings => 'Configuración del juego';
	@override String get chooseBoard => 'Elegir tablero';
	@override String get blackOrWhite => 'Negras/Blancas';
	@override String blackIs({required Object name}) => '${name} juega con negras';
	@override String get rules => 'Reglas';
	@override String get thisGameIsStartedSoon => 'El juego comenzará en breve';
	@override String get waitingForOther => 'Esperando el turno del adversario';
	@override String get waitingForMe => 'Esperando tu turno';
	@override String get waitingBoth => 'Prepárate';
	@override String get ready => 'Listo';
	@override String get cancelReady => 'No estoy listo';
	@override String get opponentTurn => 'Turno del oponente';
	@override String get myTurn => '¡Tu turno!';
	@override String turnOf({required Object name}) => 'Le toca a ${name}';
	@override String pastTurnOf({required Object name}) => 'Turno de ${name}';
	@override String get surrender => 'Rendirse';
	@override String get surrendered => 'Te has rendido';
	@override String get timeout => 'Se acabó el tiempo';
	@override String get drawn => 'Empate';
	@override String won({required Object name}) => '${name} ha ganado';
	@override String get black => 'Negras';
	@override String get white => 'Blancas';
	@override String get total => 'Total';
	@override String turnCount({required Object count}) => 'Turno ${count}';
	@override String get myGames => 'Mis rondas';
	@override String get allGames => 'Todos los juegos';
	@override String get ended => 'Finalizado';
	@override String get playing => 'Jugando actualmente';
	@override String get isLlotheo => 'El que tenga menos fichas gana (LLoTheO)';
	@override String get loopedMap => 'Mapa en bucle';
	@override String get canPutEverywhere => 'Las fichas se pueden poner a cualquier lugar\n';
	@override String get timeLimitForEachTurn => 'Tiempo límite por jugada.';
	@override String get freeMatch => 'Partida libre';
	@override String get lookingForPlayer => 'Buscando oponente';
	@override String get gameCanceled => 'La partida ha sido cancelada.';
	@override String get shareToTlTheGameWhenStart => 'Compartir la partida en la línea de tiempo cuando comience ';
	@override String get iStartedAGame => '¡La partida ha comenzado!';
	@override String get opponentHasSettingsChanged => 'El oponente ha cambiado su configuración';
	@override String get allowIrregularRules => 'Reglas irregulares (completamente libre)';
	@override String get disallowIrregularRules => 'Sin reglas irregulares ';
	@override String get showBoardLabels => 'Mostrar el número de línea y la letra de columna en el tablero de juego.';
	@override String get useAvatarAsStone => 'Usar los avatares de los usuarios como fichas\n';
}

// Path: misskey.offlineScreen_
class _TranslationsMisskeyOfflineScreenEsEs extends TranslationsMisskeyOfflineScreenEnUs {
	_TranslationsMisskeyOfflineScreenEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fuera de línea. No se puede conectar con el servidor';
	@override String get header => 'Incapaz de conectar con el servidor';
}

// Path: misskey.urlPreviewSetting_
class _TranslationsMisskeyUrlPreviewSettingEsEs extends TranslationsMisskeyUrlPreviewSettingEnUs {
	_TranslationsMisskeyUrlPreviewSettingEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Configuración para la previsualización de la URL';
	@override String get enable => 'Activar la vista previa de URL';
	@override String get allowRedirect => 'Permitir la redirección de la visualización previa';
	@override String get allowRedirectDescription => 'Si una URL tiene una redirección establecida, puede activar esta función para seguir la redirección y mostrar una vista previa del contenido redirigido. Si se desactiva, se ahorrarán recursos del servidor, pero no se mostrará el contenido redirigido.';
	@override String get timeout => 'Timeout de la carga de vista previa de las URLs (ms)';
	@override String get timeoutDescription => 'Si se tarda más de este valor en obtener la vista previa, ésta no se generará.';
	@override String get maximumContentLength => 'Content-Length Máximo (bytes)';
	@override String get maximumContentLengthDescription => 'Si Content-Length es superior a este valor, no se generará la vista previa.';
	@override String get requireContentLength => 'Genere la vista previa sólo si puede obtener Content-Length';
	@override String get requireContentLengthDescription => 'Si el otro servidor no devuelve Content-Length, no se generará la vista previa.';
	@override String get userAgent => 'User-Agent';
	@override String get userAgentDescription => 'Establece el User-Agent que se utilizará al recuperar vistas previas. Si se deja en blanco, se utilizará el User-Agent por defecto.';
	@override String get summaryProxy => 'Proxy endpoints para generar vistas previas';
	@override String get summaryProxyDescription => 'La vista previa se genera usando Summaly proxy, no la genera el mismo Misskey.';
	@override String get summaryProxyDescription2 => 'Los siguientes parámetros se vinculan al proxy como cadena de consulta (query string). Si el proxy no los admite, los valores se ignoran.';
}

// Path: misskey.mediaControls_
class _TranslationsMisskeyMediaControlsEsEs extends TranslationsMisskeyMediaControlsEnUs {
	_TranslationsMisskeyMediaControlsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get pip => 'Picture in Picture';
	@override String get playbackRate => 'Velocidad de reproducción';
	@override String get loop => 'Reproducción en bucle';
}

// Path: misskey.contextMenu_
class _TranslationsMisskeyContextMenuEsEs extends TranslationsMisskeyContextMenuEnUs {
	_TranslationsMisskeyContextMenuEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Menú contextual';
	@override String get app => 'Aplicación';
	@override String get appWithShift => 'Aplicación con la tecla shift';
	@override String get native => 'Interfaz nativa (del navegador web)';
}

// Path: misskey.gridComponent_
class _TranslationsMisskeyGridComponentEsEs extends TranslationsMisskeyGridComponentEnUs {
	_TranslationsMisskeyGridComponentEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyGridComponentErrorEsEs error_ = _TranslationsMisskeyGridComponentErrorEsEs._(_root);
}

// Path: misskey.roleSelectDialog_
class _TranslationsMisskeyRoleSelectDialogEsEs extends TranslationsMisskeyRoleSelectDialogEnUs {
	_TranslationsMisskeyRoleSelectDialogEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get notSelected => 'No seleccionado';
}

// Path: misskey.customEmojisManager_
class _TranslationsMisskeyCustomEmojisManagerEsEs extends TranslationsMisskeyCustomEmojisManagerEnUs {
	_TranslationsMisskeyCustomEmojisManagerEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCustomEmojisManagerGridCommonEsEs gridCommon_ = _TranslationsMisskeyCustomEmojisManagerGridCommonEsEs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLogsEsEs logs_ = _TranslationsMisskeyCustomEmojisManagerLogsEsEs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerRemoteEsEs remote_ = _TranslationsMisskeyCustomEmojisManagerRemoteEsEs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalEsEs local_ = _TranslationsMisskeyCustomEmojisManagerLocalEsEs._(_root);
}

// Path: misskey.embedCodeGen_
class _TranslationsMisskeyEmbedCodeGenEsEs extends TranslationsMisskeyEmbedCodeGenEnUs {
	_TranslationsMisskeyEmbedCodeGenEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Personalizar el código de incrustación';
	@override String get header => 'Mostrar encabezados';
	@override String get autoload => 'Cargar más automáticamente (no recomendado)';
	@override String get maxHeight => 'Altura máxima';
	@override String get maxHeightDescription => '0 desactiva el ajuste del valor máximo. Para evitar que el widget siga creciendo verticalmente, especifica algún valor.';
	@override String get maxHeightWarn => 'El límite de altura máxima está desactivado (0). Si esto no estaba previsto, establece la altura máxima en algún valor.';
	@override String get previewIsNotActual => 'La visualización difiere de la incrustación real porque excede el rango mostrado en la pantalla de vista previa.';
	@override String get rounded => 'Bordes Redondeados';
	@override String get border => 'Añadir un borde al marco exterior';
	@override String get applyToPreview => 'Aplicar a la vista previa';
	@override String get generateCode => 'Crear el código para incrustar';
	@override String get codeGenerated => 'El código ha sido generado';
	@override String get codeGeneratedDescription => 'Pegue el código generado en su sitio web para incrustar el contenido.';
}

// Path: misskey.selfXssPrevention_
class _TranslationsMisskeySelfXssPreventionEsEs extends TranslationsMisskeySelfXssPreventionEnUs {
	_TranslationsMisskeySelfXssPreventionEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get warning => 'Advertencia';
	@override String get title => '"Pegar algo en esta pantalla" es un timo.';
	@override String get description1 => 'Si pegas algo aquí, un usuario malintencionado podría secuestrar tu cuenta o robar tu información personal.';
	@override String get description2 => 'Si no entiendes que estás pegando exactamente, %cdetente ahora mismo y cierra esta ventana';
	@override String description3({required Object link}) => 'Para más información visita esto ${link}';
}

// Path: misskey.followRequest_
class _TranslationsMisskeyFollowRequestEsEs extends TranslationsMisskeyFollowRequestEnUs {
	_TranslationsMisskeyFollowRequestEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get recieved => 'Solicitud de seguimiento recibida';
	@override String get sent => 'Solicitud de seguimiento enviada';
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsEsEs extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEsEs federationNotAllowed_ = _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEsEs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsUriInvalidEsEs uriInvalid_ = _TranslationsMisskeyRemoteLookupErrorsUriInvalidEsEs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsRequestFailedEsEs requestFailed_ = _TranslationsMisskeyRemoteLookupErrorsRequestFailedEsEs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsResponseInvalidEsEs responseInvalid_ = _TranslationsMisskeyRemoteLookupErrorsResponseInvalidEsEs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEsEs noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEsEs._(_root);
}

// Path: misskey.captcha_
class _TranslationsMisskeyCaptchaEsEs extends TranslationsMisskeyCaptchaEnUs {
	_TranslationsMisskeyCaptchaEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get verify => 'Por favor verifica el CAPTCHA';
	@override String get testSiteKeyMessage => 'Puedes comprobar la vista previa introduciendo los valores de prueba para el sitio y las claves secretas.\nPara más detalles, consulta la página siguiente.\n';
	@override late final _TranslationsMisskeyCaptchaErrorEsEs error_ = _TranslationsMisskeyCaptchaErrorEsEs._(_root);
}

// Path: misskey.bootErrors_
class _TranslationsMisskeyBootErrorsEsEs extends TranslationsMisskeyBootErrorsEnUs {
	_TranslationsMisskeyBootErrorsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fallo al cargar';
	@override String get serverError => 'Si el problema persiste después de esperar un momento y volver a cargar, póngase en contacto con el administrador del servidor con el siguiente ID de error.';
	@override String get solution => 'Lo siguiente puede resolver el problema.';
	@override String get solution1 => 'Actualiza tu navegador web y el sistema operativo a la última versión';
	@override String get solution2 => 'Desactiva el AdBlocker';
	@override String get solution3 => 'Borra la memoria caché del navegador web ';
	@override String get solution4 => '(Navegador Tor) configura dom.webaudio.enabled a true';
	@override String get otherOption => 'Otras opciones';
	@override String get otherOption1 => 'Borra la configuración y la memoria caché del cliente';
	@override String get otherOption2 => 'Iniciar el cliente simple';
	@override String get otherOption3 => 'Iniciar la herramienta de reparación';
	@override String get otherOption4 => 'Iniciar Misskey en modo seguro';
}

// Path: misskey.search_
class _TranslationsMisskeySearchEsEs extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Todo';
	@override String get searchScopeLocal => 'Local';
	@override String get searchScopeServer => 'Especifica el servidor (Instancia)';
	@override String get searchScopeUser => 'Especificar usuario';
	@override String get pleaseEnterServerHost => 'Introduce la dirección del servidor/Instancia';
	@override String get pleaseSelectUser => 'Selecciona un usuario, por favor';
	@override String get serverHostPlaceholder => 'Ejemplo: misskey.example.com';
}

// Path: misskey.serverSetupWizard_
class _TranslationsMisskeyServerSetupWizardEsEs extends TranslationsMisskeyServerSetupWizardEnUs {
	_TranslationsMisskeyServerSetupWizardEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get installCompleted => '¡La instalación de Misskey se ha completado!';
	@override String get firstCreateAccount => 'Para comenzar, crea una cuenta de administrador';
	@override String get accountCreated => '¡La cuenta de administrador se ha creado! ';
	@override String get serverSetting => 'Configuración del servidor';
	@override String get youCanEasilyConfigureOptimalServerSettingsWithThisWizard => 'Este asistente te facilita una configuración óptima del servidor.';
	@override String get settingsYouMakeHereCanBeChangedLater => 'Los ajustes que han sido cambiados a través de este asistente pueden ser modificados más tarde.';
	@override String get howWillYouUseMisskey => '¿Cómo vas a usar Misskey?';
	@override late final _TranslationsMisskeyServerSetupWizardUseEsEs use_ = _TranslationsMisskeyServerSetupWizardUseEsEs._(_root);
	@override String get openServerAdvice => 'Aceptar un número no determinado de usuarios comporta algunos riesgos. Se recomienda operar con un sistema de moderación fiable para hacer frente a los problemas.';
	@override String get openServerAntiSpamAdvice => 'Para evitar que su servidor se convierta en un trampolín para el spam, también debe prestar mucha atención a la seguridad habilitando funciones anti-bot como reCAPTCHA.';
	@override String get howManyUsersDoYouExpect => '¿Cuántas personas esperas?';
	@override late final _TranslationsMisskeyServerSetupWizardScaleEsEs scale_ = _TranslationsMisskeyServerSetupWizardScaleEsEs._(_root);
	@override String get largeScaleServerAdvice => 'Los grandes servidores pueden requerir conocimientos avanzados de infraestructura, como equilibrio de carga y replicación de bases de datos.';
	@override String get doYouConnectToFediverse => '¿Quieres conectarte al Fediverso?';
	@override String get doYouConnectToFediverse_description1 => 'Cuando se conecta a una red de servidores distribuidos (Fediverso), el contenido puede intercambiarse con otros servidores.';
	@override String get doYouConnectToFediverse_description2 => 'Conectarse con el Fediverso también se conoce como "federación".';
	@override String get youCanConfigureMoreFederationSettingsLater => 'Los ajustes avanzados, como la especificación de servidores federados, pueden configurarse más adelante.';
	@override String get remoteContentsCleaning => 'Limpieza automática de los contenidos recibidos';
	@override String get remoteContentsCleaning_description => 'La federación puede dar lugar a un flujo continuo de contenido. Al habilitar la limpieza automática, se eliminará del servidor el contenido obsoleto y sin referencias para ahorrar espacio de almacenamiento.';
	@override String get adminInfo => 'Información del administrador';
	@override String get adminInfo_description => 'Establece la información del administrador para recibir consultas.';
	@override String get adminInfo_mustBeFilled => 'Esta información debe ser introducida en el caso de registros abiertos o la federación esté activada.';
	@override String get followingSettingsAreRecommended => 'Se recomienda los siguientes ajustes';
	@override String get applyTheseSettings => 'Aplicar estos ajustes';
	@override String get skipSettings => 'Omitir configuración';
	@override String get settingsCompleted => '¡Configuración inicial del servidor completada!';
	@override String get settingsCompleted_description => 'Gracias por tu tiempo. Ahora que está todo listo puedes empezar a utilizar el servidor inmediatamente.';
	@override String get settingsCompleted_description2 => 'La configuración avanzada del servidor pueden realizarse a través del "Panel de control".';
	@override String get donationRequest => 'Por favor Dona';
	@override late final _TranslationsMisskeyServerSetupWizardDonationRequestEsEs donationRequest_ = _TranslationsMisskeyServerSetupWizardDonationRequestEsEs._(_root);
}

// Path: misskey.uploader_
class _TranslationsMisskeyUploaderEsEs extends TranslationsMisskeyUploaderEnUs {
	_TranslationsMisskeyUploaderEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get editImage => 'Editar la imagen';
	@override String compressedToX({required Object x}) => 'Comprimir a ${x}';
	@override String savedXPercent({required Object x}) => 'Guardando ${x}%';
	@override String get abortConfirm => 'Algunos archivos no se han cargado, ¿deseas cancelar?';
	@override String get doneConfirm => 'Algunos archivos no se han cargado, ¿deseas continuar de todos modos?';
	@override String maxFileSizeIsX({required Object x}) => 'El tamaño máximo de archivo que se puede cargar es de ${x}';
	@override String get allowedTypes => 'Tipos de archivos que se pueden cargar.';
	@override String get tip => 'El archivo aún no se ha cargado, por lo que este cuadro de diálogo te permite confirmar, renombrar, comprimir y recortar el archivo antes de cargarlo. Cuando esté listo, puedes iniciar la carga pulsando el botón "Cargar".';
}

// Path: misskey.clientPerformanceIssueTip_
class _TranslationsMisskeyClientPerformanceIssueTipEsEs extends TranslationsMisskeyClientPerformanceIssueTipEnUs {
	_TranslationsMisskeyClientPerformanceIssueTipEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Si crees que el consumo de batería es demasiado alto';
	@override String get makeSureDisabledAdBlocker => 'Por favor, desactiva el bloqueador de publicidad.';
	@override String get makeSureDisabledAdBlocker_description => 'Los bloqueadores de anuncios pueden afectar al rendimiento. Asegúrate de que no están activados en tu sistema o en las funciones/extensiones de tu navegador.';
	@override String get makeSureDisabledCustomCss => 'Desactiva el CSS personalizado';
	@override String get makeSureDisabledCustomCss_description => 'Anular estilos puede afectar al rendimiento. Asegúrate de que el CSS personalizado o las extensiones que sobrescriben estilos no están activados.';
	@override String get makeSureDisabledAddons => 'Desactiva las extensiones ';
	@override String get makeSureDisabledAddons_description => 'Algunas extensiones pueden interferir con el comportamiento del cliente y afectar al rendimiento. Por favor, deshabilita las extensiones de tu navegador y comprueba si esto mejora la situación.';
}

// Path: misskey.clip_
class _TranslationsMisskeyClipEsEs extends TranslationsMisskeyClipEnUs {
	_TranslationsMisskeyClipEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Clip es una función que permite organizar varias notas.';
}

// Path: misskey.userLists_
class _TranslationsMisskeyUserListsEsEs extends TranslationsMisskeyUserListsEnUs {
	_TranslationsMisskeyUserListsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Las listas pueden contener cualquier usuario que especifiques al crearlas, la lista creada puede mostrarse entonces como una línea de tiempo mostrando solo los usuarios especificados.';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorEsEs extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Se puede añadir a la imagen una marca de agua, como información crediticia.';
	@override String get quitWithoutSaveConfirm => '¿Descartar cambios no guardados?';
	@override String get driveFileTypeWarn => 'Este archivo es incompatible';
	@override String get driveFileTypeWarnDescription => 'Elegir una imagen';
	@override String get title => 'Editar la marca de agua';
	@override String get cover => 'Cubrir todo';
	@override String get repeat => 'Repetir';
	@override String get preserveBoundingRect => 'Ajuste para evitar que se desborde al rotar.';
	@override String get opacity => 'Opacidad';
	@override String get scale => 'Tamaño';
	@override String get text => 'Texto';
	@override String get qr => 'Código QR';
	@override String get position => 'Posición';
	@override String get margin => 'Margen';
	@override String get type => 'Tipo';
	@override String get image => 'Imágenes';
	@override String get advanced => 'Avanzado';
	@override String get angle => 'Ángulo';
	@override String get stripe => 'Rayas';
	@override String get stripeWidth => 'Anchura de línea';
	@override String get stripeFrequency => 'Número de líneas.';
	@override String get polkadot => 'Patrón de Lunares';
	@override String get checker => 'Patrón de Damas / Tablero de Ajedrez';
	@override String get polkadotMainDotOpacity => 'Opacidad del círculo principal';
	@override String get polkadotMainDotRadius => 'Tamaño del círculo principal.';
	@override String get polkadotSubDotOpacity => 'Opacidad del círculo secundario';
	@override String get polkadotSubDotRadius => 'Tamaño del círculo secundario.';
	@override String get polkadotSubDotDivisions => 'Número de subpuntos.';
	@override String get leaveBlankToAccountUrl => 'Si dejas este campo en blanco, se utilizará la URL de tu cuenta.';
	@override String get failedToLoadImage => 'Error al cargar la imagen';
}

// Path: misskey.imageEffector_
class _TranslationsMisskeyImageEffectorEsEs extends TranslationsMisskeyImageEffectorEnUs {
	_TranslationsMisskeyImageEffectorEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Efecto';
	@override String get addEffect => 'Añadir Efecto';
	@override String get discardChangesConfirm => '¿Ignorar cambios y salir?';
	@override String get failedToLoadImage => 'Error al cargar la imagen';
	@override late final _TranslationsMisskeyImageEffectorFxsEsEs fxs_ = _TranslationsMisskeyImageEffectorFxsEsEs._(_root);
	@override late final _TranslationsMisskeyImageEffectorFxPropsEsEs fxProps_ = _TranslationsMisskeyImageEffectorFxPropsEsEs._(_root);
}

// Path: misskey.drafts_
class _TranslationsMisskeyDraftsEsEs extends TranslationsMisskeyDraftsEnUs {
	_TranslationsMisskeyDraftsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get select => 'Seleccionar borradores';
	@override String get cannotCreateDraftAnymore => 'Se ha superado el número de borradores que se pueden crear.';
	@override String get cannotCreateDraft => 'No se pueden crear borradores con este contenido.';
	@override String get delete => 'Eliminar borrador';
	@override String get deleteAreYouSure => '¿Quieres borrar el borrador?';
	@override String get noDrafts => 'No hay borradores disponibles.';
	@override String replyTo({required Object user}) => 'Responder a ${user}';
	@override String quoteOf({required Object user}) => 'Citar las notas de ${user}';
	@override String postTo({required Object channel}) => 'Destino a ${channel}';
	@override String get saveToDraft => 'Guardar como borrador';
	@override String get restoreFromDraft => 'Restaurar desde los borradores';
	@override String get restore => 'Restaurar';
	@override String get listDrafts => 'Listar los borradores';
	@override String get schedule => 'Programar Nota';
	@override String get listScheduledNotes => 'Lista de notas programadas';
	@override String get cancelSchedule => 'Cancelar programación';
}

// Path: misskey.qr_
class _TranslationsMisskeyQrEsEs extends TranslationsMisskeyQrEnUs {
	_TranslationsMisskeyQrEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get showTabTitle => 'Apariencia';
	@override String get readTabTitle => 'Escanear';
	@override String shareTitle({required Object name, required Object acct}) => '${name} ${acct}';
	@override String get shareText => '¡Sígueme en el Fediverso!';
	@override String get chooseCamera => 'Seleccione cámara';
	@override String get cannotToggleFlash => 'No se puede activar el flash';
	@override String get turnOnFlash => 'Encender el flash';
	@override String get turnOffFlash => 'Apagar el flash';
	@override String get startQr => 'Reiniciar el lector de códigos QR';
	@override String get stopQr => 'Detener el lector de códigos QR';
	@override String get noQrCodeFound => 'No se encontró el código QR';
	@override String get scanFile => 'Escanear imagen desde un dispositivo';
	@override String get raw => 'Texto';
	@override String get mfm => 'MFM';
}

// Path: misskey.imageEditing_.vars_
class _TranslationsMisskeyImageEditingVarsEsEs extends TranslationsMisskeyImageEditingVarsEnUs {
	_TranslationsMisskeyImageEditingVarsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get caption => 'Título del archivo';
	@override String get filename => 'Nombre de archivo';
	@override String get filename_without_ext => 'Nombre del archivo sin la extensión';
	@override String get year => 'Año de rodaje';
	@override String get month => 'Mes de la fotografía';
	@override String get day => 'Día de la fotografía';
	@override String get hour => 'Hora';
	@override String get minute => 'Minuto';
	@override String get second => 'Segundo';
	@override String get camera_model => 'Nombre de la cámara';
	@override String get camera_lens_model => 'Modelo de lente';
	@override String get camera_mm => 'Distancia focal';
	@override String get camera_mm_35 => 'Distancia Focal (Equivalente a formato de 35mm)';
	@override String get camera_f => 'Apertura de diafragma';
	@override String get camera_s => 'Velocidad de Obturación';
	@override String get camera_iso => 'Sensibilidad ISO';
	@override String get gps_lat => 'Latitud';
	@override String get gps_long => 'Longitud';
}

// Path: misskey.compression_.quality_
class _TranslationsMisskeyCompressionQualityEsEs extends TranslationsMisskeyCompressionQualityEnUs {
	_TranslationsMisskeyCompressionQualityEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get high => 'Calidad alta';
	@override String get medium => 'Calidad media';
	@override String get low => 'Calidad baja';
}

// Path: misskey.compression_.size_
class _TranslationsMisskeyCompressionSizeEsEs extends TranslationsMisskeyCompressionSizeEnUs {
	_TranslationsMisskeyCompressionSizeEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get large => 'Tamaño grande';
	@override String get medium => 'Tamaño mediano';
	@override String get small => 'Tamaño pequeño';
}

// Path: misskey.chat_.chatAllowedUsers_
class _TranslationsMisskeyChatChatAllowedUsersEsEs extends TranslationsMisskeyChatChatAllowedUsersEnUs {
	_TranslationsMisskeyChatChatAllowedUsersEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get everyone => 'Todos';
	@override String get followers => 'Sólo sus propios seguidores.';
	@override String get following => 'Solo usuarios que sigues';
	@override String get mutual => 'Solo seguidores mutuos';
	@override String get none => 'Nadie';
}

// Path: misskey.settings_.chat_
class _TranslationsMisskeySettingsChatEsEs extends TranslationsMisskeySettingsChatEnUs {
	_TranslationsMisskeySettingsChatEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get showSenderName => 'Mostrar el nombre del remitente';
	@override String get sendOnEnter => 'Intro para enviar';
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypeEsEs extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypeEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get none => 'Publicando';
	@override String get manuallySuspended => 'Suspendido manualmente';
	@override String get goneSuspended => 'El servidor se ha suspendido debido a la eliminación del servidor';
	@override String get autoSuspendedForNotResponding => 'El servidor se suspende debido a que el servidor no responde.';
	@override String get softwareSuspended => 'Suspendido porque este software ya no se distribuye a';
}

// Path: misskey.bubbleGame_.score_
class _TranslationsMisskeyBubbleGameScoreEsEs extends TranslationsMisskeyBubbleGameScoreEnUs {
	_TranslationsMisskeyBubbleGameScoreEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get score => 'Puntos';
	@override String get scoreYen => 'Cantidad de dinero ganada';
	@override String get highScore => 'Puntuación más alta';
	@override String get maxChain => 'Número máximo de combos';
	@override String yen({required Object yen}) => '${yen} Yenes';
	@override String estimatedQty({required Object qty}) => '${qty} Piezas';
	@override String scoreSweets({required Object onigiriQtyWithUnit}) => '${onigiriQtyWithUnit} Onigiris';
}

// Path: misskey.bubbleGame_.howToPlay_
class _TranslationsMisskeyBubbleGameHowToPlayEsEs extends TranslationsMisskeyBubbleGameHowToPlayEnUs {
	_TranslationsMisskeyBubbleGameHowToPlayEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get section1 => 'Ajuste la posición y deje caer el objeto en la caja';
	@override String get section2 => 'Cuando dos objetos del mismo tipo se tocan, cambian a otro tipo y consigues puntos';
	@override String get section3 => 'El juego termina cuando la caja se desborda de objetos. ¡Intenta conseguir una puntuación alta al juntar objetos mientras evitas desbordar la caja!';
}

// Path: misskey.initialTutorial_.landing_
class _TranslationsMisskeyInitialTutorialLandingEsEs extends TranslationsMisskeyInitialTutorialLandingEnUs {
	_TranslationsMisskeyInitialTutorialLandingEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bienvenid@ al tutorial';
	@override String get description => 'Aquí podrás aprender las nociones básicas sobre cómo usar Misskey y sus funciones.';
}

// Path: misskey.initialTutorial_.note_
class _TranslationsMisskeyInitialTutorialNoteEsEs extends TranslationsMisskeyInitialTutorialNoteEnUs {
	_TranslationsMisskeyInitialTutorialNoteEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Qué es una nota?';
	@override String get description => 'Las publicaciones en Misskey se llaman \'Notas\'. Las notas se ordenan de forma cronológica en la línea de tiempo y se actualizan en tiempo real.';
	@override String get reply => 'Pulsa en este botón para contestar a un mensaje. También es posible contestar a otras contestaciones, continuando así la conversación como un hilo.';
	@override String get renote => 'Puedes compartir esa nota en tu propia línea de tiempo. También puedes añadir una cita con tus comentarios.';
	@override String get reaction => 'Puedes añadir reacciones a la Nota. Se explicarán más detalles en la siguiente página.';
	@override String get menu => 'Puedes ver los detalles de la Nota, copiar enlaces, y realizar otras acciones.';
}

// Path: misskey.initialTutorial_.reaction_
class _TranslationsMisskeyInitialTutorialReactionEsEs extends TranslationsMisskeyInitialTutorialReactionEnUs {
	_TranslationsMisskeyInitialTutorialReactionEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Qué son las reacciones?';
	@override String get description => 'Se puede reaccionar a las Notas con diferentes emojis. Las reacciones te permiten expresar matices que no se pueden transmitir con un simple \'me gusta\'.';
	@override String get letsTryReacting => 'Puedes añadir reacciones pulsando en el botón \'+\' de la nota. ¡Intenta reaccionar a esta nota de ejemplo!';
	@override String get reactToContinue => 'Añade una reacción para continuar.';
	@override String get reactNotification => 'Recibirás notificaciones en tiempo real cuando alguien reaccione a tu nota.';
	@override String get reactDone => 'Puedes deshacer una reacción pulsando en el botón \'-\'.';
}

// Path: misskey.initialTutorial_.timeline_
class _TranslationsMisskeyInitialTutorialTimelineEsEs extends TranslationsMisskeyInitialTutorialTimelineEnUs {
	_TranslationsMisskeyInitialTutorialTimelineEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'El concepto de Línea de tiempo';
	@override String get description1 => 'Misskey proporciona múltiples líneas de tiempo basadas en su uso (algunas pueden no estar disponibles dependiendo de las políticas de la instancia).';
	@override String get home => 'Puedes ver los posts de las cuentas que sigues.';
	@override String get local => 'Puedes ver los posts de todos los usuarios de este servidor (también llamado instancia).';
	@override String get social => 'Se ven los posts de la línea de tiempo de inicio junto con los de la línea de tiempo local.';
	@override String get global => 'Puedes ver notas de todos los servidores (instancias) conectados.';
	@override String get description2 => 'Puedes cambiar la línea de tiempo en la parte superior de la pantalla cuando quieras.';
	@override String description3({required Object link}) => 'Además, hay listas de líneas de tiempo y listas de canales. Para más detalle, por favor visita este enlace: ${link}';
}

// Path: misskey.initialTutorial_.postNote_
class _TranslationsMisskeyInitialTutorialPostNoteEsEs extends TranslationsMisskeyInitialTutorialPostNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ajustes de publicación de nota';
	@override String get description1 => 'Cuando publicas una nota en Misskey, hay varias opciones disponibles. El formulario tiene este aspecto.';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteVisibilityEsEs visibility_ = _TranslationsMisskeyInitialTutorialPostNoteVisibilityEsEs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwEsEs cw_ = _TranslationsMisskeyInitialTutorialPostNoteCwEsEs._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEsEs extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Cómo puedo marcar adjuntos como contenido sensible?';
	@override String get description => 'Cuando las normas del servidor lo requieran, o el contenido lo requiera, marca la opción de "contenido sensible" para el adjunto.';
	@override String get tryThisFile => '¡Prueba a marcar la imagen adjunta como contenido sensible!';
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEsEs exampleNote_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEsEs._(_root);
	@override String get method => 'Para marcar un adjunto como sensible, haz clic en la miniatura, abre el menú, y haz clic en "Marcar como sensible".';
	@override String get sensitiveSucceeded => 'Cuando adjuntes archivos, por favor, ten en cuenta las normas del servidor para marcarlos como contenido sensible.';
	@override String get doItToContinue => 'Marca el archivo adjunto como sensible para continuar.';
}

// Path: misskey.initialTutorial_.done_
class _TranslationsMisskeyInitialTutorialDoneEsEs extends TranslationsMisskeyInitialTutorialDoneEnUs {
	_TranslationsMisskeyInitialTutorialDoneEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Has completado el tutorial! 🎉';
	@override String description({required Object link}) => 'Las funciones que mostramos aquí son sólo una pequeña parte. Para más detalles sobre el funcionamiento de Misskey, pulsa en este enlace: ${link}';
}

// Path: misskey.serverSettings_.userGeneratedContentsVisibilityForVisitor_
class _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorEsEs extends TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorEnUs {
	_TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get all => 'Todo es público.';
	@override String get localOnly => 'Sólo se publica el contenido local, el remoto se mantiene privado';
	@override String get none => 'Todo es privado';
}

// Path: misskey.achievements_.types_
class _TranslationsMisskeyAchievementsTypesEsEs extends TranslationsMisskeyAchievementsTypesEnUs {
	_TranslationsMisskeyAchievementsTypesEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesNotes1EsEs notes1_ = _TranslationsMisskeyAchievementsTypesNotes1EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10EsEs notes10_ = _TranslationsMisskeyAchievementsTypesNotes10EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100EsEs notes100_ = _TranslationsMisskeyAchievementsTypesNotes100EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes500EsEs notes500_ = _TranslationsMisskeyAchievementsTypesNotes500EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes1000EsEs notes1000_ = _TranslationsMisskeyAchievementsTypesNotes1000EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes5000EsEs notes5000_ = _TranslationsMisskeyAchievementsTypesNotes5000EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10000EsEs notes10000_ = _TranslationsMisskeyAchievementsTypesNotes10000EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes20000EsEs notes20000_ = _TranslationsMisskeyAchievementsTypesNotes20000EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes30000EsEs notes30000_ = _TranslationsMisskeyAchievementsTypesNotes30000EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes40000EsEs notes40000_ = _TranslationsMisskeyAchievementsTypesNotes40000EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes50000EsEs notes50000_ = _TranslationsMisskeyAchievementsTypesNotes50000EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes60000EsEs notes60000_ = _TranslationsMisskeyAchievementsTypesNotes60000EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes70000EsEs notes70000_ = _TranslationsMisskeyAchievementsTypesNotes70000EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes80000EsEs notes80000_ = _TranslationsMisskeyAchievementsTypesNotes80000EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes90000EsEs notes90000_ = _TranslationsMisskeyAchievementsTypesNotes90000EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100000EsEs notes100000_ = _TranslationsMisskeyAchievementsTypesNotes100000EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin3EsEs login3_ = _TranslationsMisskeyAchievementsTypesLogin3EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin7EsEs login7_ = _TranslationsMisskeyAchievementsTypesLogin7EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin15EsEs login15_ = _TranslationsMisskeyAchievementsTypesLogin15EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin30EsEs login30_ = _TranslationsMisskeyAchievementsTypesLogin30EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin60EsEs login60_ = _TranslationsMisskeyAchievementsTypesLogin60EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin100EsEs login100_ = _TranslationsMisskeyAchievementsTypesLogin100EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin200EsEs login200_ = _TranslationsMisskeyAchievementsTypesLogin200EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin300EsEs login300_ = _TranslationsMisskeyAchievementsTypesLogin300EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin400EsEs login400_ = _TranslationsMisskeyAchievementsTypesLogin400EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin500EsEs login500_ = _TranslationsMisskeyAchievementsTypesLogin500EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin600EsEs login600_ = _TranslationsMisskeyAchievementsTypesLogin600EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin700EsEs login700_ = _TranslationsMisskeyAchievementsTypesLogin700EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin800EsEs login800_ = _TranslationsMisskeyAchievementsTypesLogin800EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin900EsEs login900_ = _TranslationsMisskeyAchievementsTypesLogin900EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin1000EsEs login1000_ = _TranslationsMisskeyAchievementsTypesLogin1000EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteClipped1EsEs noteClipped1_ = _TranslationsMisskeyAchievementsTypesNoteClipped1EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteFavorited1EsEs noteFavorited1_ = _TranslationsMisskeyAchievementsTypesNoteFavorited1EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMyNoteFavorited1EsEs myNoteFavorited1_ = _TranslationsMisskeyAchievementsTypesMyNoteFavorited1EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesProfileFilledEsEs profileFilled_ = _TranslationsMisskeyAchievementsTypesProfileFilledEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMarkedAsCatEsEs markedAsCat_ = _TranslationsMisskeyAchievementsTypesMarkedAsCatEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing1EsEs following1_ = _TranslationsMisskeyAchievementsTypesFollowing1EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing10EsEs following10_ = _TranslationsMisskeyAchievementsTypesFollowing10EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing50EsEs following50_ = _TranslationsMisskeyAchievementsTypesFollowing50EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing100EsEs following100_ = _TranslationsMisskeyAchievementsTypesFollowing100EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing300EsEs following300_ = _TranslationsMisskeyAchievementsTypesFollowing300EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1EsEs followers1_ = _TranslationsMisskeyAchievementsTypesFollowers1EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers10EsEs followers10_ = _TranslationsMisskeyAchievementsTypesFollowers10EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers50EsEs followers50_ = _TranslationsMisskeyAchievementsTypesFollowers50EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers100EsEs followers100_ = _TranslationsMisskeyAchievementsTypesFollowers100EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers300EsEs followers300_ = _TranslationsMisskeyAchievementsTypesFollowers300EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers500EsEs followers500_ = _TranslationsMisskeyAchievementsTypesFollowers500EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1000EsEs followers1000_ = _TranslationsMisskeyAchievementsTypesFollowers1000EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCollectAchievements30EsEs collectAchievements30_ = _TranslationsMisskeyAchievementsTypesCollectAchievements30EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewAchievements3minEsEs viewAchievements3min_ = _TranslationsMisskeyAchievementsTypesViewAchievements3minEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesILoveMisskeyEsEs iLoveMisskey_ = _TranslationsMisskeyAchievementsTypesILoveMisskeyEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFoundTreasureEsEs foundTreasure_ = _TranslationsMisskeyAchievementsTypesFoundTreasureEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient30minEsEs client30min_ = _TranslationsMisskeyAchievementsTypesClient30minEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient60minEsEs client60min_ = _TranslationsMisskeyAchievementsTypesClient60minEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEsEs noteDeletedWithin1min_ = _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAtLateNightEsEs postedAtLateNight_ = _TranslationsMisskeyAchievementsTypesPostedAtLateNightEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAt0min0secEsEs postedAt0min0sec_ = _TranslationsMisskeyAchievementsTypesPostedAt0min0secEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSelfQuoteEsEs selfQuote_ = _TranslationsMisskeyAchievementsTypesSelfQuoteEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesHtl20npmEsEs htl20npm_ = _TranslationsMisskeyAchievementsTypesHtl20npmEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewInstanceChartEsEs viewInstanceChart_ = _TranslationsMisskeyAchievementsTypesViewInstanceChartEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEsEs outputHelloWorldOnScratchpad_ = _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOpen3windowsEsEs open3windows_ = _TranslationsMisskeyAchievementsTypesOpen3windowsEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEsEs driveFolderCircularReference_ = _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesReactWithoutReadEsEs reactWithoutRead_ = _TranslationsMisskeyAchievementsTypesReactWithoutReadEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClickedClickHereEsEs clickedClickHere_ = _TranslationsMisskeyAchievementsTypesClickedClickHereEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesJustPlainLuckyEsEs justPlainLucky_ = _TranslationsMisskeyAchievementsTypesJustPlainLuckyEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSetNameToSyuiloEsEs setNameToSyuilo_ = _TranslationsMisskeyAchievementsTypesSetNameToSyuiloEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EsEs passedSinceAccountCreated1_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EsEs passedSinceAccountCreated2_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EsEs passedSinceAccountCreated3_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEsEs loggedInOnBirthday_ = _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEsEs loggedInOnNewYearsDay_ = _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCookieClickedEsEs cookieClicked_ = _TranslationsMisskeyAchievementsTypesCookieClickedEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBrainDiverEsEs brainDiver_ = _TranslationsMisskeyAchievementsTypesBrainDiverEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEsEs smashTestNotificationButton_ = _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesTutorialCompletedEsEs tutorialCompleted_ = _TranslationsMisskeyAchievementsTypesTutorialCompletedEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEsEs bubbleGameExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEsEs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEsEs bubbleGameDoubleExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEsEs._(_root);
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityEsEs extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get low => 'Baja';
	@override String get middle => 'Mediano';
	@override String get high => 'Alta';
}

// Path: misskey.role_.options_
class _TranslationsMisskeyRoleOptionsEsEs extends TranslationsMisskeyRoleOptionsEnUs {
	_TranslationsMisskeyRoleOptionsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'Explorar la línea de tiempo global';
	@override String get ltlAvailable => 'Explorar la línea de tiempo local';
	@override String get canPublicNote => 'Permitir la publicación';
	@override String get mentionMax => 'Número máximo de menciones en una nota';
	@override String get canInvite => 'Puede crear códigos de invitación';
	@override String get inviteLimit => 'Límite de invitaciones';
	@override String get inviteLimitCycle => 'Enfriamiento del límite de invitaciones';
	@override String get inviteExpirationTime => 'Intervalo de caducidad de invitaciones';
	@override String get canManageCustomEmojis => 'Administrar emojis personalizados';
	@override String get canManageAvatarDecorations => 'Administrar decoraciones de avatar';
	@override String get driveCapacity => 'Capacidad del drive';
	@override String get maxFileSize => 'Tamaño máximo de archivo que se puede cargar.';
	@override String get maxFileSize_caption => 'Los proxies inversos o las CDN pueden tener diferentes valores de configuración aguas arriba.';
	@override String get alwaysMarkNsfw => 'Siempre marcar archivos como NSFW';
	@override String get canUpdateBioMedia => 'Puede editar un icono o una imagen de fondo (banner)';
	@override String get pinMax => 'Máximo de notas fijadas';
	@override String get antennaMax => 'Máximo de antenas';
	@override String get wordMuteMax => 'Máximo de caracteres en palabras silenciadas';
	@override String get webhookMax => 'Máximo de Webhooks';
	@override String get clipMax => 'Máximo de clips';
	@override String get noteEachClipsMax => 'Máximo de notas con clip';
	@override String get userListMax => 'Máximo de listas de usuarios';
	@override String get userEachUserListsMax => 'Máximo de usuarios en una lista';
	@override String get rateLimitFactor => 'Limitador';
	@override String get descriptionOfRateLimitFactor => 'Límites más bajos son menos restrictivos, más altos menos restrictivos';
	@override String get canHideAds => 'Puede ocultar anuncios';
	@override String get canSearchNotes => 'Uso de la búsqueda de notas';
	@override String get canSearchUsers => 'Uso de la búsqueda de usuarios';
	@override String get canUseTranslator => 'Uso de traductor';
	@override String get avatarDecorationLimit => 'Número máximo de decoraciones de avatar';
	@override String get canImportAntennas => 'Permitir la importación de antenas';
	@override String get canImportBlocking => 'Permitir la importación de bloqueos';
	@override String get canImportFollowing => 'Permitir la importación de seguidos';
	@override String get canImportMuting => 'Permitir la importación de silenciados';
	@override String get canImportUserLists => 'Permitir la importación de listas';
	@override String get chatAvailability => 'Permitir Chats';
	@override String get uploadableFileTypes => 'Tipos de archivos que se pueden cargar.';
	@override String get uploadableFileTypes_caption => 'Especifica los tipos MIME/archivos permitidos. Se pueden especificar varios tipos MIME separándolos con una nueva línea, y se pueden especificar comodines con un asterisco (*). (por ejemplo, image/*)';
	@override String uploadableFileTypes_caption2({required Object x}) => 'Es posible que no se detecten algunos tipos de archivos. Para permitir estos archivos, añade ${x} a la especificación.';
	@override String get noteDraftLimit => 'Número de posibles borradores de notas del servidor';
	@override String get scheduledNoteLimit => 'Máximo número de notas programadas que se pueden crear simultáneamente.';
	@override String get watermarkAvailable => 'Disponibilidad de la función de marca de agua';
}

// Path: misskey.role_.condition_
class _TranslationsMisskeyRoleConditionEsEs extends TranslationsMisskeyRoleConditionEnUs {
	_TranslationsMisskeyRoleConditionEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get roleAssignedTo => 'Asignado a roles manuales';
	@override String get isLocal => 'Usuario local';
	@override String get isRemote => 'Usuario remoto';
	@override String get isCat => 'Usuarios Gato';
	@override String get isBot => 'Usuarios Bot';
	@override String get isSuspended => 'Usuario suspendido';
	@override String get isLocked => 'Cuentas privadas';
	@override String get isExplorable => 'Hacer que la cuenta sea visible en las búsquedas';
	@override String get createdLessThan => 'Menos de X han pasado desde la creación de la cuenta';
	@override String get createdMoreThan => 'Más de X han pasado desde la creación de la cuenta';
	@override String get followersLessThanOrEq => 'Tiene X o menos seguidores';
	@override String get followersMoreThanOrEq => 'Tiene X o más seguidores';
	@override String get followingLessThanOrEq => 'Sigue X o menos cuentas';
	@override String get followingMoreThanOrEq => 'Sigue X o más cuentas';
	@override String get notesLessThanOrEq => 'El número de notas es inferior o igual a';
	@override String get notesMoreThanOrEq => 'El número de notas es superior o igual a';
	@override String get and => 'Condicional AND';
	@override String get or => 'Condicional OR';
	@override String get not => 'Condicional NOT';
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowEsEs extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'te ha seguido';
}

// Path: misskey.email_.receiveFollowRequest_
class _TranslationsMisskeyEmailReceiveFollowRequestEsEs extends TranslationsMisskeyEmailReceiveFollowRequestEnUs {
	_TranslationsMisskeyEmailReceiveFollowRequestEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Has recibido una solicitud de seguimiento';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysEsEs extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get accent => 'Acento';
	@override String get bg => 'Fondo';
	@override String get fg => 'Texto';
	@override String get focus => 'Enfoque';
	@override String get indicator => 'Indicador';
	@override String get panel => 'Panel';
	@override String get shadow => 'Sombra';
	@override String get header => 'Título';
	@override String get navBg => 'Fondo de la barra lateral';
	@override String get navFg => 'Texto de la barra lateral';
	@override String get navActive => 'Texto de la barra lateral (activo)';
	@override String get navIndicator => 'Indicador de la barra lateral';
	@override String get link => 'Vínculo';
	@override String get hashtag => 'Hashtag';
	@override String get mention => 'Menciones';
	@override String get mentionMe => 'Menciones (yo)';
	@override String get renote => 'Renotar';
	@override String get modalBg => 'Fondo modal';
	@override String get divider => 'Divisor';
	@override String get scrollbarHandle => 'Cuadro de la barra de desplazamiento';
	@override String get scrollbarHandleHover => 'Cuadro de la barra de desplazamiento (hover)';
	@override String get dateLabelFg => 'Texto de la etiqueta de fecha';
	@override String get infoBg => 'Fondo de información';
	@override String get infoFg => 'Texto de información';
	@override String get infoWarnBg => 'Fondo de advertencias';
	@override String get infoWarnFg => 'Texto de advertencias';
	@override String get toastBg => 'Fondo de notificaciones';
	@override String get toastFg => 'Texto de notificaciones';
	@override String get buttonBg => 'Fondo de botón';
	@override String get buttonHoverBg => 'Fondo de botón (hover)';
	@override String get inputBorder => 'Borde de los campos de entrada';
	@override String get badge => 'Medalla';
	@override String get messageBg => 'Fondo de chat';
	@override String get fgHighlighted => 'Texto resaltado';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListEsEs extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Seleccione una lista';
}

// Path: misskey.widgetOptions_.button_
class _TranslationsMisskeyWidgetOptionsButtonEsEs extends TranslationsMisskeyWidgetOptionsButtonEnUs {
	_TranslationsMisskeyWidgetOptionsButtonEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get colored => 'Color';
}

// Path: misskey.widgetOptions_.clock_
class _TranslationsMisskeyWidgetOptionsClockEsEs extends TranslationsMisskeyWidgetOptionsClockEnUs {
	_TranslationsMisskeyWidgetOptionsClockEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get size => 'Tamaño';
	@override String get thickness => 'Grosor de la aguja';
	@override String get thicknessThin => 'Delgada';
	@override String get thicknessMedium => 'Normal';
	@override String get thicknessThick => 'Gruesa';
	@override String get graduations => 'Marcas del dial';
	@override String get graduationDots => 'Puntos';
	@override String get graduationArabic => 'Números decimales';
	@override String get fadeGraduations => 'Desvanecer la escala';
	@override String get sAnimation => 'Animación de la manecilla de los segundos';
	@override String get sAnimationElastic => 'Real';
	@override String get sAnimationEaseOut => 'Suave';
	@override String get twentyFour => 'Formato 24 horas';
	@override String get labelTime => 'Hora';
	@override String get labelTz => 'Zona horaria';
	@override String get labelTimeAndTz => 'Hora y zona horaria';
	@override String get timezone => 'Zona horaria';
	@override String get showMs => 'Mostrar milisegundos';
	@override String get showLabel => 'Mostrar etiqueta';
}

// Path: misskey.widgetOptions_.jobQueue_
class _TranslationsMisskeyWidgetOptionsJobQueueEsEs extends TranslationsMisskeyWidgetOptionsJobQueueEnUs {
	_TranslationsMisskeyWidgetOptionsJobQueueEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get sound => 'Reproducir sonido';
}

// Path: misskey.widgetOptions_.rss_
class _TranslationsMisskeyWidgetOptionsRssEsEs extends TranslationsMisskeyWidgetOptionsRssEnUs {
	_TranslationsMisskeyWidgetOptionsRssEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get url => 'URL del canal RSS';
	@override String get refreshIntervalSec => 'Intervalo de actualización (En segundos)';
	@override String get maxEntries => 'Número máximo de elementos a mostrar';
}

// Path: misskey.widgetOptions_.rssTicker_
class _TranslationsMisskeyWidgetOptionsRssTickerEsEs extends TranslationsMisskeyWidgetOptionsRssTickerEnUs {
	_TranslationsMisskeyWidgetOptionsRssTickerEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get shuffle => 'Orden de visualización aleatorio';
	@override String get duration => 'Velocidad de desplazamiento del baner (En segundos)';
	@override String get reverse => 'Desplázate en la dirección opuesta.';
}

// Path: misskey.widgetOptions_.birthdayFollowings_
class _TranslationsMisskeyWidgetOptionsBirthdayFollowingsEsEs extends TranslationsMisskeyWidgetOptionsBirthdayFollowingsEnUs {
	_TranslationsMisskeyWidgetOptionsBirthdayFollowingsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get period => 'Duración';
}

// Path: misskey.postForm_.howToUse_
class _TranslationsMisskeyPostFormHowToUseEsEs extends TranslationsMisskeyPostFormHowToUseEnUs {
	_TranslationsMisskeyPostFormHowToUseEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get content_title => 'Cuerpo';
	@override String get content_description => 'Introduce aquí el contenido que deseas publicar.';
	@override String get toolbar_title => 'Barras de herramientas';
	@override String get toolbar_description => 'Puedes adjuntar archivos o realizar encuestas, añadir anotaciones o hashtags e insertar emojis o menciones.';
	@override String get account_title => 'Menú de la cuenta';
	@override String get account_description => 'Puedes cambiar entre cuentas para publicar o ver una lista de borradores y publicaciones programadas guardadas en tu cuenta.';
	@override String get visibility_title => 'Visibilidad';
	@override String get visibility_description => 'Puedes configurar la visibilidad de tus notas.';
	@override String get menu_title => 'Menú';
	@override String get menu_description => 'Puedes realizar otras acciones, como guardar borradores, programar publicaciones y configurar reacciones.';
	@override String get submit_title => 'Botón de publicar';
	@override String get submit_description => 'Publica tus notas pulsando este botón. También puedes publicar utilizando Ctrl + Intro / Cmd + Intro.';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersEsEs extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get a => '¿Qué haces?';
	@override String get b => '¿Te pasó algo?';
	@override String get c => '¿Qué estás pensando?';
	@override String get d => '¿Algo que quieras decir?';
	@override String get e => 'Escribe aquí';
	@override String get f => 'Esperando a que escribas algo...';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksEsEs extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get text => 'Texto';
	@override String get textarea => 'Área de texto';
	@override String get section => 'Sección';
	@override String get image => 'Imagen';
	@override String get button => 'Botón';
	@override String get dynamic => 'Bloques Dinámicos';
	@override String dynamicDescription({required Object play}) => 'Los bloques dinámicos están obsoletos. A partir de ahora, utiliza ${play} por favor.';
	@override String get note => 'Nota embebida';
	@override late final _TranslationsMisskeyPagesBlocksNoteEsEs note_ = _TranslationsMisskeyPagesBlocksNoteEsEs._(_root);
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesEsEs extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get all => 'Todo';
	@override String get note => 'Nuevas notas';
	@override String get follow => 'Siguiendo';
	@override String get mention => 'Menciones';
	@override String get reply => 'Respuestas';
	@override String get renote => 'Renotas';
	@override String get quote => 'Citar';
	@override String get reaction => 'Reacción';
	@override String get pollEnded => 'La encuesta terminó';
	@override String get scheduledNotePosted => 'Publicación programada con éxito';
	@override String get scheduledNotePostFailed => 'Publicación programada fallida';
	@override String get receiveFollowRequest => 'Recibió una solicitud de seguimiento';
	@override String get followRequestAccepted => 'El seguimiento fue aceptado';
	@override String get roleAssigned => 'Rol asignado';
	@override String get chatRoomInvitationReceived => 'Invitado a la sala de chat.';
	@override String get achievementEarned => 'Logro desbloqueado';
	@override String get exportCompleted => 'La exportación se ha completado';
	@override String get login => 'Iniciar sesión';
	@override String get createToken => 'Crear tokens de acceso';
	@override String get test => 'Pruebas de nofiticaciones';
	@override String get app => 'Notificaciones desde aplicaciones';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsEsEs extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'Te sigue de vuelta';
	@override String get reply => 'Responder';
	@override String get renote => 'Renotar';
}

// Path: misskey.deck_.howToUse_
class _TranslationsMisskeyDeckHowToUseEsEs extends TranslationsMisskeyDeckHowToUseEnUs {
	_TranslationsMisskeyDeckHowToUseEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get addColumn_title => 'Añadir columna';
	@override String get addColumn_description => 'Puede seleccionar y añadir tipos de columnas.';
	@override String get settings_title => 'Configuración de la interfaz de usuario';
	@override String get settings_description => 'Puedes configurar la interfaz de usuario en detalle.';
	@override String get switchProfile_title => 'Cambiar de perfil';
	@override String get switchProfile_description => 'Puedes guardar diseños de interfaz de usuario como perfiles y cambiar entre ellos en cualquier momento.';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsEsEs extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get main => 'Principal';
	@override String get widgets => 'Widgets';
	@override String get notifications => 'Notificaciones';
	@override String get tl => 'Linea de tiempo';
	@override String get antenna => 'Antenas';
	@override String get list => 'Listas';
	@override String get channel => 'Canal';
	@override String get mentions => 'Menciones';
	@override String get direct => 'Notas directas';
	@override String get roleTimeline => 'Linea de tiempo del rol';
	@override String get chat => 'Chatear';
}

// Path: misskey.webhookSettings_.events_
class _TranslationsMisskeyWebhookSettingsEventsEsEs extends TranslationsMisskeyWebhookSettingsEventsEnUs {
	_TranslationsMisskeyWebhookSettingsEventsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Cuando se sigue a alguien';
	@override String get followed => 'Cuando se es seguido';
	@override String get note => 'Cuando se publica una nota';
	@override String get reply => 'Cuando se recibe una respuesta';
	@override String get renote => 'Cuando reciba un "re-note"';
	@override String get reaction => 'Cuando se recibe una reacción';
	@override String get mention => 'Cuando hay una mención';
}

// Path: misskey.webhookSettings_.systemEvents_
class _TranslationsMisskeyWebhookSettingsSystemEventsEsEs extends TranslationsMisskeyWebhookSettingsSystemEventsEnUs {
	_TranslationsMisskeyWebhookSettingsSystemEventsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get abuseReport => 'Cuando se recibe un nuevo informe de moderación';
	@override String get abuseReportResolved => 'Cuando se resuelve un informe de moderación';
	@override String get userCreated => 'Cuando se crea el usuario.';
	@override String get inactiveModeratorsWarning => 'Cuando un moderador ha estado inactivo por un tiempo';
	@override String get inactiveModeratorsInvitationOnlyChanged => 'Cuando un moderador ha estado inactivo durante un tiempo, y el servidor se cambia a sólo por invitación';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientEsEs extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get createRecipient => 'Añadir destinatario a los informes';
	@override String get modifyRecipient => 'Editar un destinatario en el informe de moderación\n';
	@override String get recipientType => 'Tipo de notificación';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEsEs recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEsEs._(_root);
	@override String get keywords => 'Palabras Clave';
	@override String get notifiedUser => 'Usuarios a notificar';
	@override String get notifiedWebhook => 'Webhook a utilizar';
	@override String get deleteConfirm => '¿Estás seguro de que deseas borrar el destinatario del informe de moderación?';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _TranslationsMisskeyExternalResourceInstallerPluginEsEs extends TranslationsMisskeyExternalResourceInstallerPluginEnUs {
	_TranslationsMisskeyExternalResourceInstallerPluginEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Quieres instalar este plugin?';
}

// Path: misskey.externalResourceInstaller_.theme_
class _TranslationsMisskeyExternalResourceInstallerThemeEsEs extends TranslationsMisskeyExternalResourceInstallerThemeEnUs {
	_TranslationsMisskeyExternalResourceInstallerThemeEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Quieres instalar este tema?';
}

// Path: misskey.externalResourceInstaller_.meta_
class _TranslationsMisskeyExternalResourceInstallerMetaEsEs extends TranslationsMisskeyExternalResourceInstallerMetaEnUs {
	_TranslationsMisskeyExternalResourceInstallerMetaEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get base => 'Esquema de color base';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _TranslationsMisskeyExternalResourceInstallerVendorInfoEsEs extends TranslationsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_TranslationsMisskeyExternalResourceInstallerVendorInfoEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Información del distribuidor';
	@override String get endpoint => 'Terminal referenciada';
	@override String get hashVerify => 'Verificación de hash';
}

// Path: misskey.externalResourceInstaller_.errors_
class _TranslationsMisskeyExternalResourceInstallerErrorsEsEs extends TranslationsMisskeyExternalResourceInstallerErrorsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEsEs invalidParams_ = _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEsEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEsEs resourceTypeNotSupported_ = _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEsEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEsEs failedToFetch_ = _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEsEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEsEs hashUnmatched_ = _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEsEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEsEs pluginParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEsEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEsEs pluginInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEsEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEsEs themeParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEsEs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEsEs themeInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEsEs._(_root);
}

// Path: misskey.dataSaver_.media_
class _TranslationsMisskeyDataSaverMediaEsEs extends TranslationsMisskeyDataSaverMediaEnUs {
	_TranslationsMisskeyDataSaverMediaEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cargando Multimedia';
	@override String get description => 'Desactiva la carga automática de imágenes y vídeos. Tendrás que tocar en las imágenes y vídeos ocultos para cargarlos.';
}

// Path: misskey.dataSaver_.avatar_
class _TranslationsMisskeyDataSaverAvatarEsEs extends TranslationsMisskeyDataSaverAvatarEnUs {
	_TranslationsMisskeyDataSaverAvatarEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Avatares animados';
	@override String get description => 'Desactiva la animación de los avatares. Las imágenes animadas pueden llegar a ser de mayor tamaño que las normales, por lo que al desactivarlas puedes reducir el consumo de datos.';
}

// Path: misskey.dataSaver_.urlPreviewThumbnail_
class _TranslationsMisskeyDataSaverUrlPreviewThumbnailEsEs extends TranslationsMisskeyDataSaverUrlPreviewThumbnailEnUs {
	_TranslationsMisskeyDataSaverUrlPreviewThumbnailEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ocultar las miniaturas de las vistas previas de URL';
	@override String get description => 'Las imágenes en miniatura de la vista previa de URL no se pueden cargar ';
}

// Path: misskey.dataSaver_.disableUrlPreview_
class _TranslationsMisskeyDataSaverDisableUrlPreviewEsEs extends TranslationsMisskeyDataSaverDisableUrlPreviewEnUs {
	_TranslationsMisskeyDataSaverDisableUrlPreviewEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desactivar la vista previa de las URL';
	@override String get description => 'Desactiva la función de previsualización de la URL. A diferencia de solo las imágenes en miniatura, esta función  reduce la carga de la propia información vinculada.';
}

// Path: misskey.dataSaver_.code_
class _TranslationsMisskeyDataSaverCodeEsEs extends TranslationsMisskeyDataSaverCodeEnUs {
	_TranslationsMisskeyDataSaverCodeEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Resaltar código';
	@override String get description => 'Si se usa resaltado de código en MFM, etc., no se cargará hasta pulsar en ello. El resaltado de sintaxis requiere la descarga de archivos de definición para cada lenguaje de programación. Debido a esto, al deshabilitar la carga automática de estos archivos reducirás el consumo de datos.';
}

// Path: misskey.gridComponent_.error_
class _TranslationsMisskeyGridComponentErrorEsEs extends TranslationsMisskeyGridComponentErrorEnUs {
	_TranslationsMisskeyGridComponentErrorEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get requiredValue => 'Este valor es obligatorio';
	@override String get columnTypeNotSupport => 'La validación con expresión regular sólo se admite para columnas de tipo:texto.';
	@override String patternNotMatch({required Object pattern}) => 'Este valor no coincide con el patrón en ${pattern}';
	@override String get notUnique => 'Este valor debe ser único';
}

// Path: misskey.customEmojisManager_.gridCommon_
class _TranslationsMisskeyCustomEmojisManagerGridCommonEsEs extends TranslationsMisskeyCustomEmojisManagerGridCommonEnUs {
	_TranslationsMisskeyCustomEmojisManagerGridCommonEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get copySelectionRows => 'Copiar filas seleccionadas';
	@override String get copySelectionRanges => 'Copiar selección';
	@override String get deleteSelectionRows => 'Borrar las líneas seleccionadas';
	@override String get deleteSelectionRanges => 'Borrar las filas de la selección';
	@override String get searchSettings => 'Ajustes de búsqueda';
	@override String get searchSettingCaption => 'Establecer criterios de búsqueda detallados.';
	@override String get searchLimit => 'Límite de resultados';
	@override String get sortOrder => 'Ordenar';
	@override String get registrationLogs => 'Log de registros ';
	@override String get registrationLogsCaption => 'Los registros se mostrarán al actualizar o borrar Emojis. Desaparecerán después de actualizarlos o eliminarlos, pasar a una nueva página o recargar.';
	@override String get alertEmojisRegisterFailedDescription => 'No se ha podido actualizar o borrar el emoji. Por favor comprueba el log del registro para más detalles.';
}

// Path: misskey.customEmojisManager_.logs_
class _TranslationsMisskeyCustomEmojisManagerLogsEsEs extends TranslationsMisskeyCustomEmojisManagerLogsEnUs {
	_TranslationsMisskeyCustomEmojisManagerLogsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get showSuccessLogSwitch => 'Mostrar registro de éxito';
	@override String get failureLogNothing => 'No hay log de fallos';
	@override String get logNothing => 'No hay logs';
}

// Path: misskey.customEmojisManager_.remote_
class _TranslationsMisskeyCustomEmojisManagerRemoteEsEs extends TranslationsMisskeyCustomEmojisManagerRemoteEnUs {
	_TranslationsMisskeyCustomEmojisManagerRemoteEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get selectionRowDetail => 'Detalle de la línea seleccionada';
	@override String get importSelectionRows => 'Importar las líneas seleccionadas';
	@override String get importSelectionRangesRows => 'Importar las filas seleccionadas';
	@override String get importEmojisButton => 'Importar los Emojis marcados';
	@override String get confirmImportEmojisTitle => 'Importar Emojis';
	@override String confirmImportEmojisDescription({required Object count}) => 'Importar ${count} Emoji(s) recibidos del servidor remoto. Por favor, presta mucha atención a la licencia del Emoji. ¿Estás seguro de continuar?';
}

// Path: misskey.customEmojisManager_.local_
class _TranslationsMisskeyCustomEmojisManagerLocalEsEs extends TranslationsMisskeyCustomEmojisManagerLocalEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get tabTitleList => 'Lista de emojis registrados';
	@override String get tabTitleRegister => 'Registro de Emojis';
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalListEsEs list_ = _TranslationsMisskeyCustomEmojisManagerLocalListEsEs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalRegisterEsEs register_ = _TranslationsMisskeyCustomEmojisManagerLocalRegisterEsEs._(_root);
}

// Path: misskey.remoteLookupErrors_.federationNotAllowed_
class _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEsEs extends TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Incapaz de comunicarse con este servidor.';
	@override String get description => 'Es posible que se haya desactivado la comunicación con este servidor o que haya sido bloqueado.\nPonte en contacto con el administrador del servidor..';
}

// Path: misskey.remoteLookupErrors_.uriInvalid_
class _TranslationsMisskeyRemoteLookupErrorsUriInvalidEsEs extends TranslationsMisskeyRemoteLookupErrorsUriInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsUriInvalidEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'La URI es inválida';
	@override String get description => 'Ha habido un problema con la dirección introducida. Comprueba que no hayas escrito caracteres que no pueden ser usados en la URI';
}

// Path: misskey.remoteLookupErrors_.requestFailed_
class _TranslationsMisskeyRemoteLookupErrorsRequestFailedEsEs extends TranslationsMisskeyRemoteLookupErrorsRequestFailedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsRequestFailedEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Solicitud fallida.';
	@override String get description => 'Ha fallado la comunicación con este servidor. Es posible que el servidor no funcione. Asegúrese también de que no ha introducido un URI no válido o inexistente.';
}

// Path: misskey.remoteLookupErrors_.responseInvalid_
class _TranslationsMisskeyRemoteLookupErrorsResponseInvalidEsEs extends TranslationsMisskeyRemoteLookupErrorsResponseInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsResponseInvalidEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'La respuesta no es válida';
	@override String get description => 'Has podido comunicarte con este servidor, pero los datos obtenidos eran incorrectos. Si estás consultando contenidos remotos a través de un servidor de terceros, vuelve a realizar la consulta utilizando un URI que pueda obtenerse del servidor de origen.';
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEsEs extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No se encuentra';
	@override String get description => 'No se ha encontrado el recurso solicitado, por favor, vuelve a comprobar el URI.';
}

// Path: misskey.captcha_.error_
class _TranslationsMisskeyCaptchaErrorEsEs extends TranslationsMisskeyCaptchaErrorEnUs {
	_TranslationsMisskeyCaptchaErrorEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCaptchaErrorRequestFailedEsEs requestFailed_ = _TranslationsMisskeyCaptchaErrorRequestFailedEsEs._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorVerificationFailedEsEs verificationFailed_ = _TranslationsMisskeyCaptchaErrorVerificationFailedEsEs._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorUnknownEsEs unknown_ = _TranslationsMisskeyCaptchaErrorUnknownEsEs._(_root);
}

// Path: misskey.serverSetupWizard_.use_
class _TranslationsMisskeyServerSetupWizardUseEsEs extends TranslationsMisskeyServerSetupWizardUseEnUs {
	_TranslationsMisskeyServerSetupWizardUseEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get single => 'Servidor para un único usuario.';
	@override String get single_description => 'Utilízalo como tu propio servidor dedicado.';
	@override String get single_youCanCreateMultipleAccounts => 'Se pueden crear múltiples cuentas según sea necesario, incluso cuando se opera como servidor unipersonal.';
	@override String get group => 'Servidor de grupo';
	@override String get group_description => 'Invita otros usuarios de  confianza y úsalo con más de una persona.\n';
	@override String get open => 'Servidor público';
	@override String get open_description => 'Permite a cualquiera registrarse';
}

// Path: misskey.serverSetupWizard_.scale_
class _TranslationsMisskeyServerSetupWizardScaleEsEs extends TranslationsMisskeyServerSetupWizardScaleEnUs {
	_TranslationsMisskeyServerSetupWizardScaleEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get small => 'Menos de 100 (escala pequeña)';
	@override String get medium => 'Más de 100 y menos de 1000 (escala media)\n';
	@override String get large => 'Más de 1000(escala grande)';
}

// Path: misskey.serverSetupWizard_.donationRequest_
class _TranslationsMisskeyServerSetupWizardDonationRequestEsEs extends TranslationsMisskeyServerSetupWizardDonationRequestEnUs {
	_TranslationsMisskeyServerSetupWizardDonationRequestEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Misskey es un software libre desarrollado por voluntarios.';
	@override String get text2 => 'Agradeceríamos su apoyo para que podamos seguir desarrollando este software en el futuro.';
	@override String get text3 => 'También hay beneficios especiales para los donantes';
}

// Path: misskey.imageEffector_.fxs_
class _TranslationsMisskeyImageEffectorFxsEsEs extends TranslationsMisskeyImageEffectorFxsEnUs {
	_TranslationsMisskeyImageEffectorFxsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get chromaticAberration => 'Aberración Cromática';
	@override String get glitch => 'Glitch';
	@override String get mirror => 'Espejo';
	@override String get invert => 'Invertir colores';
	@override String get grayscale => 'Blanco y negro';
	@override String get blur => 'Difuminar';
	@override String get pixelate => 'Pixelar';
	@override String get colorAdjust => 'Corrección de Color';
	@override String get colorClamp => 'Ajuste de Tono';
	@override String get colorClampAdvanced => 'Ajuste de Tono avanzado';
	@override String get distort => 'Distorsión';
	@override String get threshold => 'Binarización';
	@override String get zoomLines => 'Líneas de Impacto';
	@override String get stripe => 'Rayas';
	@override String get polkadot => 'Patrón de Lunares';
	@override String get checker => 'Patrón de Damas / Tablero de Ajedrez';
	@override String get blockNoise => 'Ruido de Bloque';
	@override String get tearing => 'Rasgado de Imagen (Tearing)';
	@override String get fill => 'Relleno de color';
}

// Path: misskey.imageEffector_.fxProps_
class _TranslationsMisskeyImageEffectorFxPropsEsEs extends TranslationsMisskeyImageEffectorFxPropsEnUs {
	_TranslationsMisskeyImageEffectorFxPropsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get angle => 'Ángulo';
	@override String get scale => 'Tamaño';
	@override String get size => 'Tamaño';
	@override String get radius => 'Radio';
	@override String get samples => 'Tamaño de muestra';
	@override String get offset => 'Posición';
	@override String get color => 'Color';
	@override String get opacity => 'Opacidad';
	@override String get normalize => 'Normalización';
	@override String get amount => 'Cantidad';
	@override String get lightness => 'Brillo';
	@override String get contrast => 'Contraste';
	@override String get hue => 'Tonalidad';
	@override String get brightness => 'Luminancia';
	@override String get saturation => 'Saturación';
	@override String get max => 'Valor máximo';
	@override String get min => 'Valor mínimo';
	@override String get direction => 'Dirección';
	@override String get phase => 'Fase';
	@override String get frequency => 'Frecuencia';
	@override String get strength => 'Intensidad';
	@override String get glitchChannelShift => 'Desfase';
	@override String get seed => 'Valor de la semilla';
	@override String get redComponent => 'Canal Rojo';
	@override String get greenComponent => 'Canal Verde';
	@override String get blueComponent => 'Canal Azul';
	@override String get threshold => 'Umbral';
	@override String get centerX => 'Centrar X';
	@override String get centerY => 'Centrar Y';
	@override String get zoomLinesSmoothing => 'Suavizado';
	@override String get zoomLinesSmoothingDescription => 'El suavizado y el ancho de línea de zoom no se pueden utilizar juntos.';
	@override String get zoomLinesThreshold => 'Ancho de línea del zoom';
	@override String get zoomLinesMaskSize => 'Diámetro del centro';
	@override String get zoomLinesBlack => 'Cambiar color de las líneas de impacto a negro.';
	@override String get circle => 'Círculo';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _TranslationsMisskeyInitialTutorialPostNoteVisibilityEsEs extends TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteVisibilityEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get description => 'Puedes limitar quién puede ver tu nota.';
	@override String get public => 'Tu nota será visible para todos los usuarios.';
	@override String get home => 'Publicar solo en la línea de tiempo de Inicio. La nota se verá en tu perfil, la verán tus seguidores y también cuando sea renotada.';
	@override String get followers => 'Visible solo para seguidores. Solo tus seguidores podrán ver la nota, y no podrá ser renotada por otras personas.';
	@override String get direct => 'Visible sólo para usuarios específicos, y el destinatario será notificado. Puede usarse como alternativa a la mensajería directa.';
	@override String get doNotSendConfidencialOnDirect1 => '¡Ten cuidado cuando vayas a enviar información sensible!';
	@override String get doNotSendConfidencialOnDirect2 => 'Los administradores del servidor, también llamado instancia, pueden leer lo que escribes. Ten cuidado cuando envíes información sensible en notas directas en servidores o instancias no confiables.';
	@override String get localOnly => 'Publicando con esta opción seleccionada, la nota no se federará hacia otros servidores. Los usuarios de otros servidores no podrán ver estas notas directamente, sin importar los ajustes seleccionados más arriba.';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _TranslationsMisskeyInitialTutorialPostNoteCwEsEs extends TranslationsMisskeyInitialTutorialPostNoteCwEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Alerta de contenido (CW)';
	@override String get description => 'En lugar de mostrarse el contenido de la nota, se mostrará lo que escribas en el campo "comentarios". Pulsando en "Ver más" desplegará el contenido de la nota.';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEsEs exampleNote_ = _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEsEs._(_root);
	@override String get useCases => 'Esto se usa cuando las normas del servidor lo requieren, o para ocultar spoilers o contenido sensible.';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEsEs extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get note => 'Ups, la he liado al abrir la tapa del natto...';
}

// Path: misskey.achievements_.types_.notes1_
class _TranslationsMisskeyAchievementsTypesNotes1EsEs extends TranslationsMisskeyAchievementsTypesNotes1EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hola Misskey!';
	@override String get description => 'Publicaste tu primera nota';
	@override String get flavor => '¡Pasándola bien con Misskey!';
}

// Path: misskey.achievements_.types_.notes10_
class _TranslationsMisskeyAchievementsTypesNotes10EsEs extends TranslationsMisskeyAchievementsTypesNotes10EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Algunas notas';
	@override String get description => '10 notas publicadas';
}

// Path: misskey.achievements_.types_.notes100_
class _TranslationsMisskeyAchievementsTypesNotes100EsEs extends TranslationsMisskeyAchievementsTypesNotes100EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Muchas notas!';
	@override String get description => '100 notas publicadas';
}

// Path: misskey.achievements_.types_.notes500_
class _TranslationsMisskeyAchievementsTypesNotes500EsEs extends TranslationsMisskeyAchievementsTypesNotes500EnUs {
	_TranslationsMisskeyAchievementsTypesNotes500EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Cubierto de notas!';
	@override String get description => '500 notas publicadas';
}

// Path: misskey.achievements_.types_.notes1000_
class _TranslationsMisskeyAchievementsTypesNotes1000EsEs extends TranslationsMisskeyAchievementsTypesNotes1000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1000EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Una montaña de notas!';
	@override String get description => '1000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes5000_
class _TranslationsMisskeyAchievementsTypesNotes5000EsEs extends TranslationsMisskeyAchievementsTypesNotes5000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes5000EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Exceso de notas!';
	@override String get description => '5000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes10000_
class _TranslationsMisskeyAchievementsTypesNotes10000EsEs extends TranslationsMisskeyAchievementsTypesNotes10000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10000EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Súpernota!';
	@override String get description => '10000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes20000_
class _TranslationsMisskeyAchievementsTypesNotes20000EsEs extends TranslationsMisskeyAchievementsTypesNotes20000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes20000EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Necesito... Más... ¡Notas!';
	@override String get description => '20000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes30000_
class _TranslationsMisskeyAchievementsTypesNotes30000EsEs extends TranslationsMisskeyAchievementsTypesNotes30000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes30000EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Notas! ¡Notas! ¡Notas!';
	@override String get description => '30000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes40000_
class _TranslationsMisskeyAchievementsTypesNotes40000EsEs extends TranslationsMisskeyAchievementsTypesNotes40000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes40000EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fábrica de notas';
	@override String get description => '40000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes50000_
class _TranslationsMisskeyAchievementsTypesNotes50000EsEs extends TranslationsMisskeyAchievementsTypesNotes50000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes50000EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Un planeta de notas!';
	@override String get description => '50000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes60000_
class _TranslationsMisskeyAchievementsTypesNotes60000EsEs extends TranslationsMisskeyAchievementsTypesNotes60000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes60000EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Un cuásar de notas!';
	@override String get description => '60000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes70000_
class _TranslationsMisskeyAchievementsTypesNotes70000EsEs extends TranslationsMisskeyAchievementsTypesNotes70000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes70000EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Un hoyo negro de notas!';
	@override String get description => '70000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes80000_
class _TranslationsMisskeyAchievementsTypesNotes80000EsEs extends TranslationsMisskeyAchievementsTypesNotes80000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes80000EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Una galaxia de notas!';
	@override String get description => '80000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes90000_
class _TranslationsMisskeyAchievementsTypesNotes90000EsEs extends TranslationsMisskeyAchievementsTypesNotes90000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes90000EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Todo un universo de notas!';
	@override String get description => '90000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes100000_
class _TranslationsMisskeyAchievementsTypesNotes100000EsEs extends TranslationsMisskeyAchievementsTypesNotes100000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100000EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => '100000 notas publicadas';
	@override String get flavor => '¿Tienes tanto para publicar?';
}

// Path: misskey.achievements_.types_.login3_
class _TranslationsMisskeyAchievementsTypesLogin3EsEs extends TranslationsMisskeyAchievementsTypesLogin3EnUs {
	_TranslationsMisskeyAchievementsTypesLogin3EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiante I';
	@override String get description => 'Días desde el inicio de sesión: 3';
	@override String get flavor => 'Desde hoy, soy Misskero';
}

// Path: misskey.achievements_.types_.login7_
class _TranslationsMisskeyAchievementsTypesLogin7EsEs extends TranslationsMisskeyAchievementsTypesLogin7EnUs {
	_TranslationsMisskeyAchievementsTypesLogin7EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiante II';
	@override String get description => 'Días desde el inicio de sesión: 7';
	@override String get flavor => '¿Ya te acostumbraste?';
}

// Path: misskey.achievements_.types_.login15_
class _TranslationsMisskeyAchievementsTypesLogin15EsEs extends TranslationsMisskeyAchievementsTypesLogin15EnUs {
	_TranslationsMisskeyAchievementsTypesLogin15EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiante III';
	@override String get description => 'Días desde el inicio de sesión: 15';
}

// Path: misskey.achievements_.types_.login30_
class _TranslationsMisskeyAchievementsTypesLogin30EsEs extends TranslationsMisskeyAchievementsTypesLogin30EnUs {
	_TranslationsMisskeyAchievementsTypesLogin30EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskero I';
	@override String get description => 'Días desde el inicio de sesión: 30';
}

// Path: misskey.achievements_.types_.login60_
class _TranslationsMisskeyAchievementsTypesLogin60EsEs extends TranslationsMisskeyAchievementsTypesLogin60EnUs {
	_TranslationsMisskeyAchievementsTypesLogin60EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskero II';
	@override String get description => 'Días desde el inicio de sesión: 60';
}

// Path: misskey.achievements_.types_.login100_
class _TranslationsMisskeyAchievementsTypesLogin100EsEs extends TranslationsMisskeyAchievementsTypesLogin100EnUs {
	_TranslationsMisskeyAchievementsTypesLogin100EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskero III';
	@override String get description => 'Días desde el inicio de sesión: 100';
	@override String get flavor => 'Para este usuario, Misskaína';
}

// Path: misskey.achievements_.types_.login200_
class _TranslationsMisskeyAchievementsTypesLogin200EsEs extends TranslationsMisskeyAchievementsTypesLogin200EnUs {
	_TranslationsMisskeyAchievementsTypesLogin200EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regular I';
	@override String get description => 'Días desde el inicio de sesión: 200';
}

// Path: misskey.achievements_.types_.login300_
class _TranslationsMisskeyAchievementsTypesLogin300EsEs extends TranslationsMisskeyAchievementsTypesLogin300EnUs {
	_TranslationsMisskeyAchievementsTypesLogin300EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regular II';
	@override String get description => 'Días desde el inicio de sesión: 300';
}

// Path: misskey.achievements_.types_.login400_
class _TranslationsMisskeyAchievementsTypesLogin400EsEs extends TranslationsMisskeyAchievementsTypesLogin400EnUs {
	_TranslationsMisskeyAchievementsTypesLogin400EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regular III';
	@override String get description => 'Días desde el inicio de sesión: 400';
}

// Path: misskey.achievements_.types_.login500_
class _TranslationsMisskeyAchievementsTypesLogin500EsEs extends TranslationsMisskeyAchievementsTypesLogin500EnUs {
	_TranslationsMisskeyAchievementsTypesLogin500EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veterano I';
	@override String get description => 'Días desde el inicio de sesión: 500';
	@override String get flavor => 'Chicos, me encantan las libretas...';
}

// Path: misskey.achievements_.types_.login600_
class _TranslationsMisskeyAchievementsTypesLogin600EsEs extends TranslationsMisskeyAchievementsTypesLogin600EnUs {
	_TranslationsMisskeyAchievementsTypesLogin600EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veterano II';
	@override String get description => 'Días desde el inicio de sesión: 600';
}

// Path: misskey.achievements_.types_.login700_
class _TranslationsMisskeyAchievementsTypesLogin700EsEs extends TranslationsMisskeyAchievementsTypesLogin700EnUs {
	_TranslationsMisskeyAchievementsTypesLogin700EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veterano III';
	@override String get description => 'Días desde el inicio de sesión: 700';
}

// Path: misskey.achievements_.types_.login800_
class _TranslationsMisskeyAchievementsTypesLogin800EsEs extends TranslationsMisskeyAchievementsTypesLogin800EnUs {
	_TranslationsMisskeyAchievementsTypesLogin800EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maestro I';
	@override String get description => 'Días desde el inicio de sesión: 800';
}

// Path: misskey.achievements_.types_.login900_
class _TranslationsMisskeyAchievementsTypesLogin900EsEs extends TranslationsMisskeyAchievementsTypesLogin900EnUs {
	_TranslationsMisskeyAchievementsTypesLogin900EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maestro II';
	@override String get description => 'Días desde el inicio de sesión: 900';
}

// Path: misskey.achievements_.types_.login1000_
class _TranslationsMisskeyAchievementsTypesLogin1000EsEs extends TranslationsMisskeyAchievementsTypesLogin1000EnUs {
	_TranslationsMisskeyAchievementsTypesLogin1000EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maestro III';
	@override String get description => 'Días desde el inicio de sesión: 1000';
	@override String get flavor => '¡Gracias por usar Misskey!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _TranslationsMisskeyAchievementsTypesNoteClipped1EsEs extends TranslationsMisskeyAchievementsTypesNoteClipped1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteClipped1EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No puedo evitar clipearte...';
	@override String get description => 'Hacer un clip por primera vez';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _TranslationsMisskeyAchievementsTypesNoteFavorited1EsEs extends TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteFavorited1EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Contemplando las estrellas';
	@override String get description => 'Poner una nota como favorito por primera vez';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _TranslationsMisskeyAchievementsTypesMyNoteFavorited1EsEs extends TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesMyNoteFavorited1EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Quiero una estrella!';
	@override String get description => 'Tu nota ha sido marcada como favorito por primera vez';
}

// Path: misskey.achievements_.types_.profileFilled_
class _TranslationsMisskeyAchievementsTypesProfileFilledEsEs extends TranslationsMisskeyAchievementsTypesProfileFilledEnUs {
	_TranslationsMisskeyAchievementsTypesProfileFilledEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Listo!';
	@override String get description => 'Perfil completado';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _TranslationsMisskeyAchievementsTypesMarkedAsCatEsEs extends TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_TranslationsMisskeyAchievementsTypesMarkedAsCatEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Soy un gato';
	@override String get description => 'Configurar la cuenta como cuenta de un gato';
	@override String get flavor => 'Aún no tengo nombre';
}

// Path: misskey.achievements_.types_.following1_
class _TranslationsMisskeyAchievementsTypesFollowing1EsEs extends TranslationsMisskeyAchievementsTypesFollowing1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing1EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Primera vez siguiendo a alguien';
	@override String get description => 'Seguir a un usuario';
}

// Path: misskey.achievements_.types_.following10_
class _TranslationsMisskeyAchievementsTypesFollowing10EsEs extends TranslationsMisskeyAchievementsTypesFollowing10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing10EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ahí la llevas, ahí la llevas...';
	@override String get description => '10 usuarios seguidos';
}

// Path: misskey.achievements_.types_.following50_
class _TranslationsMisskeyAchievementsTypesFollowing50EsEs extends TranslationsMisskeyAchievementsTypesFollowing50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing50EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Un puñado de amigos!';
	@override String get description => '50 cuentas seguidas';
}

// Path: misskey.achievements_.types_.following100_
class _TranslationsMisskeyAchievementsTypesFollowing100EsEs extends TranslationsMisskeyAchievementsTypesFollowing100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing100EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '100 amigos';
	@override String get description => '100 cuentas seguidas';
}

// Path: misskey.achievements_.types_.following300_
class _TranslationsMisskeyAchievementsTypesFollowing300EsEs extends TranslationsMisskeyAchievementsTypesFollowing300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing300EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Sobrecarga de amigos!';
	@override String get description => '300 cuentas seguidas';
}

// Path: misskey.achievements_.types_.followers1_
class _TranslationsMisskeyAchievementsTypesFollowers1EsEs extends TranslationsMisskeyAchievementsTypesFollowers1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Tu primer seguidor!';
	@override String get description => '1 seguidor ganado';
}

// Path: misskey.achievements_.types_.followers10_
class _TranslationsMisskeyAchievementsTypesFollowers10EsEs extends TranslationsMisskeyAchievementsTypesFollowers10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers10EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Sígueme!';
	@override String get description => '10 seguidores ganados';
}

// Path: misskey.achievements_.types_.followers50_
class _TranslationsMisskeyAchievementsTypesFollowers50EsEs extends TranslationsMisskeyAchievementsTypesFollowers50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers50EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Viniendo en manada';
	@override String get description => '50 seguidores ganados';
}

// Path: misskey.achievements_.types_.followers100_
class _TranslationsMisskeyAchievementsTypesFollowers100EsEs extends TranslationsMisskeyAchievementsTypesFollowers100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers100EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Popular';
	@override String get description => '100 cuentas seguidas';
}

// Path: misskey.achievements_.types_.followers300_
class _TranslationsMisskeyAchievementsTypesFollowers300EsEs extends TranslationsMisskeyAchievementsTypesFollowers300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers300EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Por favor, hagan una fila';
	@override String get description => '300 seguidores ganados';
}

// Path: misskey.achievements_.types_.followers500_
class _TranslationsMisskeyAchievementsTypesFollowers500EsEs extends TranslationsMisskeyAchievementsTypesFollowers500EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers500EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Toda una torre de radio!';
	@override String get description => '500 seguidores ganados';
}

// Path: misskey.achievements_.types_.followers1000_
class _TranslationsMisskeyAchievementsTypesFollowers1000EsEs extends TranslationsMisskeyAchievementsTypesFollowers1000EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1000EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '"Influyente"';
	@override String get description => '1000 seguidores gandos';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _TranslationsMisskeyAchievementsTypesCollectAchievements30EsEs extends TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_TranslationsMisskeyAchievementsTypesCollectAchievements30EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Coleccionista';
	@override String get description => '30 logros ganados';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _TranslationsMisskeyAchievementsTypesViewAchievements3minEsEs extends TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_TranslationsMisskeyAchievementsTypesViewAchievements3minEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Te gustan los logros!';
	@override String get description => 'Mirando tus logros por 3 minutos';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _TranslationsMisskeyAchievementsTypesILoveMisskeyEsEs extends TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_TranslationsMisskeyAchievementsTypesILoveMisskeyEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡AMO Misskey!';
	@override String get description => '"I ❤ #Misskey" Publicado';
	@override String get flavor => 'El equipo de desarrollo de Misskey, en verdad, ¡aprecia tu apoyo!';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _TranslationsMisskeyAchievementsTypesFoundTreasureEsEs extends TranslationsMisskeyAchievementsTypesFoundTreasureEnUs {
	_TranslationsMisskeyAchievementsTypesFoundTreasureEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Búsqueda del tesoro';
	@override String get description => 'Encontraste un tesoro';
}

// Path: misskey.achievements_.types_.client30min_
class _TranslationsMisskeyAchievementsTypesClient30minEsEs extends TranslationsMisskeyAchievementsTypesClient30minEnUs {
	_TranslationsMisskeyAchievementsTypesClient30minEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un descansito';
	@override String get description => '30 minutos dedicados a Misskey';
}

// Path: misskey.achievements_.types_.client60min_
class _TranslationsMisskeyAchievementsTypesClient60minEsEs extends TranslationsMisskeyAchievementsTypesClient60minEnUs {
	_TranslationsMisskeyAchievementsTypesClient60minEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Viendo mucho Misskey.';
	@override String get description => 'Dejar abierto Misskey por al menos 60 minutos';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEsEs extends TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ah... Mejor no...';
	@override String get description => 'Borrar una nota antes que de pase 1 minuto';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _TranslationsMisskeyAchievementsTypesPostedAtLateNightEsEs extends TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAtLateNightEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nocturno';
	@override String get description => 'Una nota publicada por la noche';
	@override String get flavor => '¡Ya casi es hora de dormir!';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _TranslationsMisskeyAchievementsTypesPostedAt0min0secEsEs extends TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAt0min0secEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reloj parlante';
	@override String get description => 'Publicar una nota a las 00:00 de la madrugada';
	@override String get flavor => 'Tic, tic, tic ¡TUUUUUN!';
}

// Path: misskey.achievements_.types_.selfQuote_
class _TranslationsMisskeyAchievementsTypesSelfQuoteEsEs extends TranslationsMisskeyAchievementsTypesSelfQuoteEnUs {
	_TranslationsMisskeyAchievementsTypesSelfQuoteEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Autoreferencia';
	@override String get description => 'Citar tu propia nota';
}

// Path: misskey.achievements_.types_.htl20npm_
class _TranslationsMisskeyAchievementsTypesHtl20npmEsEs extends TranslationsMisskeyAchievementsTypesHtl20npmEnUs {
	_TranslationsMisskeyAchievementsTypesHtl20npmEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Línea de tiempo fluyendo';
	@override String get description => 'La velocidad de tu línea de tiempo excede las 20 npm (notas por minuto)';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _TranslationsMisskeyAchievementsTypesViewInstanceChartEsEs extends TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_TranslationsMisskeyAchievementsTypesViewInstanceChartEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analista';
	@override String get description => 'Gráficas de la instancia mostradas';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEsEs extends TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hola mundo!';
	@override String get description => 'Escribir "hello world" en el compositor';
}

// Path: misskey.achievements_.types_.open3windows_
class _TranslationsMisskeyAchievementsTypesOpen3windowsEsEs extends TranslationsMisskeyAchievementsTypesOpen3windowsEnUs {
	_TranslationsMisskeyAchievementsTypesOpen3windowsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Multiventana';
	@override String get description => 'Tener más de 3 ventanas al mismo tiempo';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEsEs extends TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Referencia circular';
	@override String get description => 'Intento de crear carpetas recursivamente';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _TranslationsMisskeyAchievementsTypesReactWithoutReadEsEs extends TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_TranslationsMisskeyAchievementsTypesReactWithoutReadEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Sí lo leíste bien?';
	@override String get description => 'Reaccionar a los 3 segundos de publicación de una nota con más de 100 caracteres';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _TranslationsMisskeyAchievementsTypesClickedClickHereEsEs extends TranslationsMisskeyAchievementsTypesClickedClickHereEnUs {
	_TranslationsMisskeyAchievementsTypesClickedClickHereEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pícale aquí';
	@override String get description => 'Le picó ahí';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _TranslationsMisskeyAchievementsTypesJustPlainLuckyEsEs extends TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_TranslationsMisskeyAchievementsTypesJustPlainLuckyEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pura suerte';
	@override String get description => 'Obtenido con una probabilidad del 0.01% cada 10 segundos';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _TranslationsMisskeyAchievementsTypesSetNameToSyuiloEsEs extends TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_TranslationsMisskeyAchievementsTypesSetNameToSyuiloEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Complejo de superioridad';
	@override String get description => 'Configurar el nombre como \'Syuilo\'';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EsEs extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Primer aniversario';
	@override String get description => 'Pasó un año desde la creación de la cuenta';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EsEs extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Segundo aniversario';
	@override String get description => 'Pasaron dos años desde la creación de la cuenta';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EsEs extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tercer aniversario';
	@override String get description => 'Pasaron tres años desde la creación de la cuenta';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEsEs extends TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Feliz cumpleaños!';
	@override String get description => 'En linea el día de tu cumpleaños';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEsEs extends TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Feliz Año Nuevo!';
	@override String get description => 'En linea en año nuevo';
	@override String get flavor => '¡Gracias por tu apoyo a la instancia durante todo este año!';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _TranslationsMisskeyAchievementsTypesCookieClickedEsEs extends TranslationsMisskeyAchievementsTypesCookieClickedEnUs {
	_TranslationsMisskeyAchievementsTypesCookieClickedEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un juego para picarle a una galleta';
	@override String get description => 'Picaste una galleta';
	@override String get flavor => '¿Está mal este juego?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _TranslationsMisskeyAchievementsTypesBrainDiverEsEs extends TranslationsMisskeyAchievementsTypesBrainDiverEnUs {
	_TranslationsMisskeyAchievementsTypesBrainDiverEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Publicaste un vínculo a "Brain Diver"';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEsEs extends TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobrecarga de pruebas';
	@override String get description => 'Envía muchas notificaciones de prueba en un corto espacio de tiempo';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _TranslationsMisskeyAchievementsTypesTutorialCompletedEsEs extends TranslationsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_TranslationsMisskeyAchievementsTypesTutorialCompletedEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Diploma del Curso Básico de Misskey';
	@override String get description => 'Tutorial completado';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEsEs extends TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => 'El objeto más grande en el juego de burbujas';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEsEs extends TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Doble 🤯';
	@override String get description => 'Dos de los objetos más grandes en el juego de burbujas al mismo tiempo';
	@override String get flavor => 'Puedes llenar el bento un poco de esta forma 🤯 🤯.';
}

// Path: misskey.pages_.blocks.note_
class _TranslationsMisskeyPagesBlocksNoteEsEs extends TranslationsMisskeyPagesBlocksNoteEnUs {
	_TranslationsMisskeyPagesBlocksNoteEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get id => 'Id de la nota';
	@override String get idDescription => 'Pega la URL de la nota para configurarla';
	@override String get detailed => 'Ver Detalles';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEsEs extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Correo';
	@override String get webhook => 'Webhook';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEsEs captions_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEsEs._(_root);
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEsEs extends TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Parámetros inválidos';
	@override String get description => 'No hay información suficiente para cargar datos de un sitio externo. Por favor, confirma la URL introducida.';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEsEs extends TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Este recurso externo no es compatible';
	@override String get description => 'El tipo de este recurso externo no es compatible. Por favor, contacta con el administrador del sitio.';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEsEs extends TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No se pudo obtener los datos';
	@override String get fetchErrorDescription => 'Ha ocurrido un error al comunicarse con el sitio externo. Si no se soluciona tras intentarlo otra vez, por favor, contacta con el administrador del sitio.';
	@override String get parseErrorDescription => 'Ha ocurrido un error al procesar los datos obtenidos del sitio externo. Por favor, contacta con el administrador del sitio.';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEsEs extends TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Verificación de datos fallida';
	@override String get description => 'Ha ocurrido un error al verificar la integridad de los datos obtenidos. Por seguridad, la instalación no se puede realizar. Por favor, contacta con el administrador del sitio.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEsEs extends TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Error de AiScript';
	@override String get description => 'Los datos se han obtenido correctamente, pero ha ocurrido un error de AiScript al procesarlos. Por favor, contacta con el autor del plugin. Se pueden ver más detalles del error en la consola de Javascript.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEsEs extends TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Instalación del plugin fallida.';
	@override String get description => 'Ha ocurrido un problema al instalar el plugin. Por favor, inténtalo de nuevo. Se pueden ver más detalles del error en la consola de Javascript.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEsEs extends TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Análisis del tema fallido';
	@override String get description => 'Los datos se han obtenido correctamente, pero ha ocurrido un error al analizar el tema. Por favor, contacta con el autor. Se pueden ver más detalles del error en la consola de Javascript.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEsEs extends TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Instalación de tema fallida';
	@override String get description => 'Ha ocurrido un problema al instalar el tema. Por favor, inténtalo de nuevo. Se pueden ver más detalles del error en la consola de Javascript.';
}

// Path: misskey.customEmojisManager_.local_.list_
class _TranslationsMisskeyCustomEmojisManagerLocalListEsEs extends TranslationsMisskeyCustomEmojisManagerLocalListEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalListEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get emojisNothing => 'No hay Emojis registrados';
	@override String get markAsDeleteTargetRows => 'Marcar las filas seleccionadas como objetivo a eliminar';
	@override String get markAsDeleteTargetRanges => 'Selección de filas para su eliminación';
	@override String get alertUpdateEmojisNothingDescription => 'No hay Emojis actualizados';
	@override String get alertDeleteEmojisNothingDescription => 'No hay Emojis para borrar';
	@override String get confirmMovePage => '¿Quieres cambiar de página?';
	@override String get confirmChangeView => '¿De verdad quieres cambiar la vista?';
	@override String confirmUpdateEmojisDescription({required Object count}) => 'Actualizar ${count} Emoji(s). ¿Deseas continuar?';
	@override String confirmDeleteEmojisDescription({required Object count}) => 'Borrar ${count} Emoji(s) seleccionados. ¿Deseas continuar?';
	@override String get confirmResetDescription => 'Se restablecerán todos los cambios hechos hasta ahora.';
	@override String get confirmMovePageDesciption => 'Se han realizado cambios en los Emojis de esta página.\nSi abandonas la página sin guardar, se descartarán todos los cambios realizados en esta página.';
	@override String get dialogSelectRoleTitle => 'Buscar Emojis por rol';
}

// Path: misskey.customEmojisManager_.local_.register_
class _TranslationsMisskeyCustomEmojisManagerLocalRegisterEsEs extends TranslationsMisskeyCustomEmojisManagerLocalRegisterEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalRegisterEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get uploadSettingTitle => 'Ajustes de carga';
	@override String get uploadSettingDescription => 'En esta pantalla, puedes configurar el comportamiento al cargar Emojis.';
	@override String get directoryToCategoryLabel => 'Introduce el nombre del directorio en el campo "categoría"';
	@override String get directoryToCategoryCaption => 'Cuando arrastres y sueltes un directorio, introduce el nombre del directorio en el campo "categoría".';
	@override String confirmRegisterEmojisDescription({required Object count}) => 'Registra los Emojis de la lista como nuevos Emojis personalizados. ¿Estás seguro de continuar? (Para evitar sobrecargas, sólo ${count} Emoji(s) en una sola operación)';
	@override String get confirmClearEmojisDescription => 'Descartar las ediciones y borrar los Emojis de la lista. ¿Estás seguro de continuar?';
	@override String confirmUploadEmojisDescription({required Object count}) => 'Cargar los ${count} archivo(s) arrastrado(s) y soltado(s) en la unidad. ¿Estás seguro de continuar?';
}

// Path: misskey.captcha_.error_.requestFailed_
class _TranslationsMisskeyCaptchaErrorRequestFailedEsEs extends TranslationsMisskeyCaptchaErrorRequestFailedEnUs {
	_TranslationsMisskeyCaptchaErrorRequestFailedEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ha fallado la solicitud del CAPTCHA';
	@override String get text => 'Por favor, ejecútalo después de un rato o comprueba los ajustes de nuevo.';
}

// Path: misskey.captcha_.error_.verificationFailed_
class _TranslationsMisskeyCaptchaErrorVerificationFailedEsEs extends TranslationsMisskeyCaptchaErrorVerificationFailedEnUs {
	_TranslationsMisskeyCaptchaErrorVerificationFailedEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ha fallado la validación del CAPTCHA';
	@override String get text => 'Comprueba que los ajustes son los correctos.';
}

// Path: misskey.captcha_.error_.unknown_
class _TranslationsMisskeyCaptchaErrorUnknownEsEs extends TranslationsMisskeyCaptchaErrorUnknownEnUs {
	_TranslationsMisskeyCaptchaErrorUnknownEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Error en el CAPTCHA.';
	@override String get text => 'Se ha producido un error inesperado.';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEsEs extends TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get cw => '¡Esto te hará tener hambre!';
	@override String get note => 'Acabo de comerme un donut de chocolate glaseado 🍩😋';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_.captions_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEsEs extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEsEs._(TranslationsEsEs root) : this._root = root, super.internal(root);

	final TranslationsEsEs _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Enviar un correo electrónico a todos los moderadores cuando reciban un informe de moderación';
	@override String get webhook => 'Enviar una notificación al SystemWebhook cuando se reciba o se resuelva un informe de moderación';
}
