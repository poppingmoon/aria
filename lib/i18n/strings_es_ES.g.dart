///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint

part of 'strings.g.dart';

// Path: <root>
class _StringsEsEs extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEsEs.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.esEs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <es-ES>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	@override late final _StringsEsEs _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAriaEsEs aria = _StringsAriaEsEs._(_root);
	@override late final _StringsMisskeyEsEs misskey = _StringsMisskeyEsEs._(_root);
}

// Path: aria
class _StringsAriaEsEs extends _StringsAriaEnUs {
	_StringsAriaEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: '¿Desea seguir a '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria está siendo traducido a varios idiomas gracias a voluntarios. Se puede colaborar traduciendo en '),
		link,
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' usuarios en línea'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Renotado por '),
		user,
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: '¿Desea dejar de seguir a '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'La publicación de '),
		name,
		const TextSpan(text: ' contiene material sensible'),
	]);
	@override TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'La publicación de '),
		name,
		const TextSpan(text: ' contiene material sensible'),
	]);
}

// Path: misskey
class _StringsMisskeyEsEs extends _StringsMisskeyEnUs {
	_StringsMisskeyEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Español';
	@override String get headlineMisskey => 'Red conectada por notas';
	@override String get introMisskey => '¡Bienvenido/a! Misskey es un servicio de microblogging descentralizado de código abierto.\nEscribe "notas" para compartir lo que te ocurre ahora o para contar sobre ti a todos 📡\nCon la función de "reacciones", puedes también añadir una reacción rápida a las notas de todos 👍\n¡Exploremos juntos un nuevo mundo! 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} es uno de los servicios (también llamado instancia) que usa la plataforma de código abierto <b>Misskey</b>';
	@override String monthAndDay({required Object day, required Object month}) => '${day}/${month}';
	@override String get search => 'Buscar';
	@override String get notifications => 'Notificaciones';
	@override String get username => 'Nombre de usuario';
	@override String get password => 'Contraseña';
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
	@override String get alreadyFavorited => 'Ya había sido añadido a favoritos';
	@override String get cantFavorite => 'No se puede añadir a favoritos.';
	@override String get pin => 'Fijar al perfil';
	@override String get unpin => 'Desfijar';
	@override String get copyContent => 'Copiar contenido';
	@override String get copyLink => 'Copiar enlace';
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
	@override String get copyFileId => 'Copiar ID del archivo';
	@override String get copyFolderId => 'Copiar ID de carpeta';
	@override String get copyProfileUrl => 'Copiar la URL del perfil';
	@override String get searchUser => 'Buscar un usuario';
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
	@override String get exportRequested => 'Se ha solicitado la exportación. Puede tomar un tiempo. Cuando termine la exportación, se añadirá en el drive';
	@override String get importRequested => 'Se ha solicitado la importación. Puede tomar un tiempo.';
	@override String get lists => 'Listas';
	@override String get noLists => 'No tiene listas';
	@override String get note => 'Notas';
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
	@override String get serverIsDead => 'No hay respuesta del servidor. Espere un momento y vuelva a intentarlo.';
	@override String get youShouldUpgradeClient => 'Para ver esta página, por favor refrezca el navegador y utiliza una versión más reciente del cliente.';
	@override String get enterListName => 'Ingrese nombre de lista';
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
	@override String get cantRenote => 'No se puede renotar este post';
	@override String get cantReRenote => 'No se puede renotar una renota';
	@override String get quote => 'Citar';
	@override String get inChannelRenote => 'Renota sólo del canal';
	@override String get inChannelQuote => 'Cita sólo del canal';
	@override String get pinnedNote => 'Nota fijada';
	@override String get pinned => 'Fijar al perfil';
	@override String get you => 'Tú';
	@override String get clickToShow => 'Click para ver';
	@override String get sensitive => 'Marcado como sensible';
	@override String get add => 'Agregar';
	@override String get reaction => 'Reacción';
	@override String get reactions => 'Reacción';
	@override String get emojiPicker => 'Selector de emojis';
	@override String get pinnedEmojisForReactionSettingDescription => 'Puedes seleccionar reacciones para fijarlos en el selector';
	@override String get pinnedEmojisSettingDescription => 'Puedes seleccionar emojis para fijarlos en el selector';
	@override String get emojiPickerDisplay => 'Mostrar el selector de emojis';
	@override String get overwriteFromPinnedEmojisForReaction => 'Sobreescribir las reacciones fijadas';
	@override String get overwriteFromPinnedEmojis => 'Sobreescribir los emojis fijados';
	@override String get reactionSettingDescription2 => 'Arrastre para reordenar, click para borrar, apriete la tecla + para añadir.';
	@override String get rememberNoteVisibility => 'Recordar visibilidad';
	@override String get attachCancel => 'Quitar adjunto';
	@override String get deleteFile => 'Archivo eliminado';
	@override String get markAsSensitive => 'Marcar como sensible';
	@override String get unmarkAsSensitive => 'Desmarcar como sensible';
	@override String get enterFileName => 'Ingrese el nombre del archivo';
	@override String get mute => 'Silenciar';
	@override String get unmute => 'Dejar de silenciar';
	@override String get renoteMute => 'Silenciar renota';
	@override String get renoteUnmute => 'Desilenciar renota';
	@override String get block => 'Bloquear';
	@override String get unblock => 'Dejar de bloquear';
	@override String get suspend => 'Suspender';
	@override String get unsuspend => 'Dejar de suspender';
	@override String get blockConfirm => '¿Quiere bloquear esta cuenta?';
	@override String get unblockConfirm => '¿Quiere dejar de bloquear esta cuenta?';
	@override String get suspendConfirm => '¿Quiere suspender esta cuenta?';
	@override String get unsuspendConfirm => '¿Quiere dejar de suspender esta cuenta?';
	@override String get selectList => 'Seleccione una lista';
	@override String get editList => 'Editar lista';
	@override String get selectChannel => 'Seleccionar canal';
	@override String get selectAntenna => 'Seleccionar antena';
	@override String get editAntenna => 'Editar antena';
	@override String get selectWidget => 'Seleccionar widget';
	@override String get editWidgets => 'Editar widgets';
	@override String get editWidgetsExit => 'Terminar edición';
	@override String get customEmojis => 'Emojis personalizados';
	@override String get emoji => 'Emoji';
	@override String get emojis => 'Emoji';
	@override String get emojiName => 'Nombre del emoji';
	@override String get emojiUrl => 'URL de la imágen del emoji';
	@override String get addEmoji => 'Agregar emoji';
	@override String get settingGuide => 'Configuración sugerida';
	@override String get cacheRemoteFiles => 'Mantener en cache los archivos remotos';
	@override String get cacheRemoteFilesDescription => 'Si desactiva esta configuración, Los archivos remotos se cargarán desde el link directo sin usar la caché. Con eso se puede ahorrar almacenamiento del servidor, pero eso aumentará el tráfico al no crear miniaturas.';
	@override String get youCanCleanRemoteFilesCache => 'Puedes vaciar la caché pulsando en el botón 🗑️ en el administrador de archivos.';
	@override String get cacheRemoteSensitiveFiles => 'Cachear archivos remotos sensibles';
	@override String get cacheRemoteSensitiveFilesDescription => 'Cuando esta opción está desactivada, los archivos remotos sensibles son cargador directamente de la instancia origen sin ser cacheados.';
	@override String get flagAsBot => 'Esta cuenta es un bot';
	@override String get flagAsBotDescription => 'En caso de que esta cuenta fuera usada por un programa, active esta opción. Al hacerlo, esta opción servirá para otros desarrolladores para evitar cadenas infinitas de reacciones, y ajustará los sistemas internos de Misskey para que trate a esta cuenta como un bot.';
	@override String get flagAsCat => 'Esta cuenta es un gato';
	@override String get flagAsCatDescription => 'En caso de que declare que esta cuenta es de un gato, active esta opción.';
	@override String get flagShowTimelineReplies => 'Mostrar respuestas a las notas en la biografía';
	@override String get flagShowTimelineRepliesDescription => 'Cuando se marca, la línea de tiempo muestra respuestas a otras notas además de las notas del usuario';
	@override String get autoAcceptFollowed => 'Aceptar automáticamente las solicitudes de seguimiento de los usuarios que sigues';
	@override String get addAccount => 'Agregar Cuenta';
	@override String get reloadAccountsList => 'Recargar lista de cuentas';
	@override String get loginFailed => 'Error al iniciar sesión.';
	@override String get showOnRemote => 'Ver en una instancia remota';
	@override String get general => 'General';
	@override String get wallpaper => 'Fondo de pantalla';
	@override String get setWallpaper => 'Establecer fondo de pantalla';
	@override String get removeWallpaper => 'Quitar fondo de pantalla';
	@override String searchWith({required Object q}) => 'Buscar: ${q}';
	@override String get youHaveNoLists => 'No tienes listas';
	@override String followConfirm({required Object name}) => '¿Desea seguir a ${name}?';
	@override String get proxyAccount => 'Cuenta proxy';
	@override String get proxyAccountDescription => 'Una cuenta proxy es una cuenta que actúa como un seguidor remoto de un usuario bajo ciertas condiciones. Por ejemplo, cuando un usuario añade un usuario remoto a una lista, si ningún usuario local sigue al usuario agregado a la lista, la instancia no puede obtener su actividad. Así que la cuenta proxy sigue al usuario añadido a la lista';
	@override String get host => 'Host';
	@override String get selectUser => 'Elegir usuario';
	@override String get recipient => 'Recipiente';
	@override String get annotation => 'Anotación';
	@override String get federation => 'Federación';
	@override String get instances => 'Instancia';
	@override String get registeredAt => 'Registrado en';
	@override String get latestRequestReceivedAt => 'Ultimo pedido recibido';
	@override String get latestStatus => 'Último status';
	@override String get storageUsage => 'Almacenamiento usado';
	@override String get charts => 'Chat';
	@override String get perHour => 'por hora';
	@override String get perDay => 'por día';
	@override String get stopActivityDelivery => 'Dejar de enviar actividades';
	@override String get blockThisInstance => 'Bloquear instancia';
	@override String get silenceThisInstance => 'Silenciar esta instancia';
	@override String get operations => 'Operaciones';
	@override String get software => 'Software';
	@override String get version => 'Versión';
	@override String get metadata => 'Metadatos';
	@override String withNFiles({required Object n}) => '${n} archivos';
	@override String get monitor => 'Monitor';
	@override String get jobQueue => 'Cola de trabajos';
	@override String get cpuAndMemory => 'CPU y Memoria';
	@override String get network => 'Red';
	@override String get disk => 'Disco';
	@override String get instanceInfo => 'información de la instancia';
	@override String get statistics => 'Estadísticas';
	@override String get clearQueue => 'Limpiar cola';
	@override String get clearQueueConfirmTitle => '¿Desea limpiar la cola?';
	@override String get clearQueueConfirmText => 'Las notas aún no entregadas no se federarán. Normalmente no se necesita ejecutar esta operación';
	@override String get clearCachedFiles => 'Limpiar caché';
	@override String get clearCachedFilesConfirm => '¿Desea borrar todos los archivos remotos cacheados?';
	@override String get blockedInstances => 'Instancias bloqueadas';
	@override String get blockedInstancesDescription => 'Seleccione los hosts de las instancias que desea bloquear, separadas por una linea nueva. Las instancias bloqueadas no podrán comunicarse con esta instancia.';
	@override String get silencedInstances => 'Instancias silenciadas';
	@override String get silencedInstancesDescription => 'Listar los hostname de las instancias que quieres silenciar. Todas las cuentas de las instancias listadas serán tratadas como silenciadas, solo podrán hacer peticiones de seguimiento, y no podrán mencionar cuentas locales si no las siguen. Esto no afecta a las instancias bloqueadas.';
	@override String get muteAndBlock => 'Silenciar y bloquear';
	@override String get mutedUsers => 'Usuarios silenciados';
	@override String get blockedUsers => 'Usuarios bloqueados';
	@override String get noUsers => 'No hay usuarios';
	@override String get editProfile => 'Editar perfil';
	@override String get noteDeleteConfirm => '¿Desea borrar esta nota?';
	@override String get pinLimitExceeded => 'Ya no se pueden fijar más posts';
	@override String get intro => '¡La instalación de Misskey ha terminado! Crea el usuario administrador.';
	@override String get done => 'Terminado';
	@override String get processing => 'Procesando';
	@override String get preview => 'Vista previa';
	@override String get default_ => 'Predeterminado';
	@override String defaultValueIs({required Object value}) => 'Predeterminado ${value}';
	@override String get noCustomEmojis => 'No hay emojis personalizados';
	@override String get noJobs => 'No hay trabajos';
	@override String get federating => 'Federando';
	@override String get blocked => 'Bloqueando';
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
	@override String get announcements => 'Anuncios';
	@override String get imageUrl => 'URL de la imágen';
	@override String get remove => 'Borrar';
	@override String get removed => 'Borrado';
	@override String removeAreYouSure({required Object x}) => '¿Desea borrar "${x}"?';
	@override String deleteAreYouSure({required Object x}) => '¿Desea borrar "${x}"?';
	@override String get resetAreYouSure => '¿Desea reestablecer?';
	@override String get areYouSure => '¿Estás conforme?';
	@override String get saved => 'Guardado';
	@override String get messaging => 'Chat';
	@override String get upload => 'Subir';
	@override String get keepOriginalUploading => 'Mantener la imagen original';
	@override String get keepOriginalUploadingDescription => 'Mantener la versión original al cargar imágenes. Si está desactivado, el navegador generará imágenes para la publicación web en el momento de recargar la página';
	@override String get fromDrive => 'Desde el drive';
	@override String get fromUrl => 'Desde la URL';
	@override String get uploadFromUrl => 'Subir desde una URL';
	@override String get uploadFromUrlDescription => 'URL del fichero que quieres subir';
	@override String get uploadFromUrlRequested => 'Subida solicitada';
	@override String get uploadFromUrlMayTakeTime => 'Subir el fichero puede tardar un tiempo.';
	@override String get explore => 'Explorar';
	@override String get messageRead => 'Ya leído';
	@override String get noMoreHistory => 'El historial se ha acabado';
	@override String get startMessaging => 'Iniciar chat';
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
	@override String get birthday => 'Fecha de nacimiento';
	@override String yearsOld({required Object age}) => '${age} años';
	@override String get registeredDate => 'Fecha de registro';
	@override String get location => 'Lugar';
	@override String get theme => 'Tema';
	@override String get themeForLightMode => 'Tema para usar en Modo Linterna';
	@override String get themeForDarkMode => 'Tema para usar en Modo Oscuro';
	@override String get light => 'Linterna';
	@override String get dark => 'Oscuro';
	@override String get lightThemes => 'Tema claro';
	@override String get darkThemes => 'Tema oscuro';
	@override String get syncDeviceDarkMode => 'Sincronice el Modo Oscuro con la configuración de su dispositivo';
	@override String get drive => 'Drive';
	@override String get fileName => 'Nombre de archivo';
	@override String get selectFile => 'Elegir archivo';
	@override String get selectFiles => 'Elegir archivos';
	@override String get selectFolder => 'Seleccione una carpeta';
	@override String get selectFolders => 'Seleccione carpetas';
	@override String get renameFile => 'Renombrar archivo';
	@override String get folderName => 'Nombre de la carpeta';
	@override String get createFolder => 'Crear carpeta';
	@override String get renameFolder => 'Renombrar carpeta';
	@override String get deleteFolder => 'Borrar carpeta';
	@override String get folder => 'Carpeta';
	@override String get addFile => 'Agregar archivo';
	@override String get emptyDrive => 'El drive está vacío';
	@override String get emptyFolder => 'La carpeta está vacía';
	@override String get unableToDelete => 'No se puede borrar';
	@override String get inputNewFileName => 'Ingrese un nuevo nombre de archivo';
	@override String get inputNewDescription => 'Ingrese nueva descripción';
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
	@override String get enableRegistration => 'Permitir nuevos registros';
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
	@override String get antennaKeywordsDescription => 'Separar con espacios es una declaración AND, separar con una linea nueva es una declaración OR';
	@override String get notifyAntenna => 'Notificar nueva nota';
	@override String get withFileAntenna => 'Sólo notas con archivos adjuntados';
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
	@override String get noMessagesYet => 'Aún no hay chat';
	@override String get newMessageExists => 'Tienes un mensaje nuevo';
	@override String get onlyOneFileCanBeAttached => 'Solo se puede añadir un archivo al mensaje';
	@override String get signinRequired => 'Iniciar sesión';
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
	@override String get disableDrawer => 'No mostrar los menús en cajones';
	@override String get showNoteActionsOnlyHover => 'Mostrar acciones de la nota sólo al pasar el cursor';
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
	@override String get showFixedPostForm => 'Mostrar el formulario de las entradas encima de la línea de tiempo';
	@override String get showFixedPostFormInChannel => 'Mostrar el formulario de publicación por encima de la cronología (Canales)';
	@override String get withRepliesByDefaultForNewlyFollowed => 'Incluir por defecto respuestas de usuarios recién seguidos en la línea de tiempo';
	@override String get newNoteRecived => 'Tienes una nota nueva';
	@override String get sounds => 'Sonidos';
	@override String get sound => 'Sonidos';
	@override String get listen => 'Escuchar';
	@override String get none => 'Ninguna';
	@override String get showInPage => 'Mostrar en la página';
	@override String get popout => 'Popout';
	@override String get volume => 'Volumen';
	@override String get masterVolume => 'Volumen principal';
	@override String get notUseSound => 'Sin sonido';
	@override String get useSoundOnlyWhenActive => 'Sonar solo cuando Misskey esté activo';
	@override String get details => 'Detalles';
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
	@override String get describeFile => 'Añade una descripción';
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
	@override String get hardWordMute => 'Filtro de palabra fuerte';
	@override String get regexpError => 'Error de la expresión regular';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'Ocurrió un error en la expresión regular en la linea ${line} de las palabras muteadas ${tab}';
	@override String get instanceMute => 'Instancias silenciadas';
	@override String userSaysSomething({required Object name}) => '${name} dijo algo';
	@override String get makeActive => 'Activar';
	@override String get display => 'Apariencia';
	@override String get copy => 'Copiar';
	@override String get metrics => 'Métricas';
	@override String get overview => 'Resumen';
	@override String get logs => 'Registros';
	@override String get delayed => 'atrasado';
	@override String get database => 'Base de datos';
	@override String get channel => 'Canal';
	@override String get create => 'Crear';
	@override String get notificationSetting => 'Ajustes de Notificaciones';
	@override String get notificationSettingDesc => 'Por favor elija el tipo de notificación a mostrar';
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
	@override String get forwardReport => 'Transferir un informe a una instancia remota';
	@override String get forwardReportIsAnonymous => 'No puede ver su información de la instancia remota y aparecerá como una cuenta anónima del sistema';
	@override String get send => 'Enviar';
	@override String get abuseMarkAsResolved => 'Marcar reporte como resuelto';
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
	@override String get createNew => 'Crear';
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
	@override String get showGapBetweenNotesInTimeline => 'Mostrar un intervalo entre notas en la línea de tiempo';
	@override String get duplicate => 'Duplicar';
	@override String get left => 'Izquierda';
	@override String get center => 'Centrar';
	@override String get wide => 'Ancho';
	@override String get narrow => 'Estrecho';
	@override String get reloadToApplySetting => 'Esta configuración sólo se aplicará después de recargar la página. ¿Recargar ahora?';
	@override String get needReloadToApply => 'Se requiere un reinicio para la aplicar los cambios';
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
	@override String get goBack => 'Deseleccionar';
	@override String get unlikeConfirm => '¿Quitar como favorito?';
	@override String get fullView => 'Vista completa';
	@override String get quitFullView => 'quitar vista completa';
	@override String get addDescription => 'Agregar descripción';
	@override String get userPagePinTip => 'Puede mantener sus notas visibles aquí seleccionando Pin en el menú de notas individuales';
	@override String get notSpecifiedMentionWarning => 'Algunas menciones no están incluidas en el destino';
	@override String get info => 'Información';
	@override String get userInfo => 'Información del usuario';
	@override String get unknown => 'Desconocido';
	@override String get onlineStatus => 'En línea';
	@override String get hideOnlineStatus => 'mostrarse como desconectado';
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
	@override String get startingperiod => 'periodo de inicio';
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
	@override String get breakFollow => 'Dejar de seguir';
	@override String get breakFollowConfirm => '¿Quieres dejar de seguir?';
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
	@override String get reflectMayTakeTime => 'Puede pasar un tiempo hasta que se reflejen los cambios';
	@override String get failedToFetchAccountInformation => 'No se pudo obtener información de la cuenta';
	@override String get rateLimitExceeded => 'Se excedió el límite de peticiones';
	@override String get cropImage => 'Recortar imágen';
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
	@override String get numberOfPageCacheDescription => 'Al aumentar el número mejora la conveniencia pero tambien puede aumentar la carga y la memoria a usarse';
	@override String get logoutConfirm => '¿Cerrar sesión?';
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
	@override String get windowMaximize => 'Maximizar';
	@override String get windowMinimize => 'Minimizar';
	@override String get windowRestore => 'Regresar';
	@override String get caption => 'Pie de foto';
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
	@override String get achievements => 'Logros';
	@override String get gotInvalidResponseError => 'Respuesta del servidor inválida';
	@override String get gotInvalidResponseErrorDescription => 'Puede que el servidor esté caído o en mantenimiento. Favor de intentar más tarde';
	@override String get thisPostMayBeAnnoying => 'Ésta publicación puede resultar molesta.';
	@override String get thisPostMayBeAnnoyingHome => 'Publicar en línea de tiempo \'Inicio\'';
	@override String get thisPostMayBeAnnoyingCancel => 'detener';
	@override String get thisPostMayBeAnnoyingIgnore => 'Publicar de todos modos';
	@override String get collapseRenotes => 'Colapsar renotas que ya hayas visto';
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
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'Sólo no contenido sensible (sólo me gusta en remote)';
	@override String get rolesAssignedToMe => 'Roles asignados a mí';
	@override String get resetPasswordConfirm => '¿Realmente quieres cambiar la contraseña?';
	@override String get sensitiveWords => 'Palabras sensibles';
	@override String get sensitiveWordsDescription => 'La visibilidad de todas las notas que contienen cualquiera de las palabras configuradas serán puestas en "Inicio" automáticamente. Puedes enumerás varias separándolas con saltos de línea';
	@override String get sensitiveWordsDescription2 => 'Si se usan espacios se crearán expresiones AND y las palabras subsecuentes con barras inclinadas se convertirán en expresiones regulares.';
	@override String get prohibitedWords => 'Palabras explícitas';
	@override String get prohibitedWordsDescription2 => 'Si se usan espacios se crearán expresiones AND y las palabras subsecuentes con barras inclinadas se convertirán en expresiones regulares.';
	@override String get hiddenTags => 'Hashtags ocultos';
	@override String get hiddenTagsDescription => 'Selecciona las etiquetas que no se mostrarán en tendencias. Una etiqueta por línea.';
	@override String get notesSearchNotAvailable => 'No se puede buscar una nota';
	@override String get license => 'Licencia';
	@override String get unfavoriteConfirm => '¿Desea quitar de favoritos?';
	@override String get myClips => 'Mis clips';
	@override String get drivecleaner => 'Limpiador del Drive';
	@override String get retryAllQueuesNow => 'Reintentar inmediatamente todas las colas';
	@override String get retryAllQueuesConfirmTitle => 'Desea ¿reintentar inmediatamente todas las colas?';
	@override String get retryAllQueuesConfirmText => 'La carga del servidor está incrementándose temporalmente ';
	@override String get enableChartsForRemoteUser => 'Generar gráficas de usuarios remotos.';
	@override String get enableChartsForFederatedInstances => 'Generar gráficos de servidores remotos';
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
	@override String channelArchiveConfirmTitle({required Object name}) => '¿Seguro de archivar ${name}?';
	@override String get channelArchiveConfirmDescription => 'Un canal archivado no aparecerá en la lista de canales ni en los resultados. Las nuevas publicaciones tampoco serán añadidas.';
	@override String get thisChannelArchived => 'El canal ha sido archivado.';
	@override String get displayOfNote => 'Mostrar notas';
	@override String get initialAccountSetting => 'Configración inicial de su cuenta\nか\nConfigración de inicio';
	@override String get youFollowing => 'Siguiendo';
	@override String get preventAiLearning => 'Rechazar el uso en el Aprendizaje de Máquinas. (IA Generativa)';
	@override String get preventAiLearningDescription => 'Pedirle a las arañas (crawlers) no usar los textos publicados o imágenes en el aprendizaje automático (IA Predictiva / Generativa). Ésto se logra añadiendo una marca respuesta HTML con la cadena "noai" al cantenido. Una prevención total no podría lograrse sólo usando ésta marca, ya que puede ser simplemente ignorada.';
	@override String get options => 'Opción';
	@override String get specifyUser => 'Especificar usuario';
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
	@override String get currentAnnouncements => 'Anuncios actuales';
	@override String get pastAnnouncements => 'Anuncios anteriores';
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
	@override String get fileAttachedOnly => 'Solo notas con archivos';
	@override String get showRepliesToOthersInTimeline => 'Mostrar respuestas a otros en la línea de tiempo';
	@override String get hideRepliesToOthersInTimeline => 'Ocultar respuestas a otros en la línea de tiempo';
	@override String get showRepliesToOthersInTimelineAll => 'Muestra tus respuestas a otros usuarios que sigues en la línea de tiempo';
	@override String get hideRepliesToOthersInTimelineAll => 'Ocultar tus respuestas a otros usuarios que sigues en la línea de tiempo';
	@override String get confirmShowRepliesAll => 'Esta operación es irreversible. ¿Confirmas que quieres mostrar tus respuestas a otros usuarios que sigues en tu línea de tiempo?';
	@override String get confirmHideRepliesAll => 'Esta operación es irreversible. ¿Confirmas que quieres ocultar tus respuestas a otros usuarios que sigues en tu línea de tiempo?';
	@override String get externalServices => 'Servicios Externos';
	@override String get sourceCode => 'Código fuente';
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
	@override String get releaseToRefresh => 'Soltar para recargar';
	@override String get refreshing => 'Recargando...';
	@override String get pullDownToRefresh => 'Tira hacia abajo para recargar';
	@override String get disableStreamingTimeline => 'Desactivar actualizaciones en tiempo real de la línea de tiempo';
	@override String get useGroupedNotifications => 'Mostrar notificaciones agrupadas';
	@override String get signupPendingError => 'Ha habido un problema al verificar tu dirección de correo electrónico. Es posible que el enlace haya caducado.';
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
	@override String get soundWillBePlayed => 'Se reproducirán efectos sonoros';
	@override String get showReplay => 'Ver reproducción';
	@override String get replay => 'Reproducir';
	@override String get replaying => 'Reproduciendo';
	@override String get ranking => 'Clasificación';
	@override String lastNDays({required Object n}) => 'Últimos ${n} días';
	@override String get backToTitle => 'Regresar al inicio';
	@override String get hemisphere => 'Región';
	@override String get withSensitive => 'Mostrar notas que contengan material sensible';
	@override String userSaysSomethingSensitive({required Object name}) => 'La publicación de ${name} contiene material sensible';
	@override String get enableHorizontalSwipe => 'Deslice para cambiar de pestaña';
	@override String get surrender => 'detener';
	@override late final _StringsMisskeyBubbleGameEsEs bubbleGame_ = _StringsMisskeyBubbleGameEsEs._(_root);
	@override late final _StringsMisskeyAnnouncementEsEs announcement_ = _StringsMisskeyAnnouncementEsEs._(_root);
	@override late final _StringsMisskeyInitialAccountSettingEsEs initialAccountSetting_ = _StringsMisskeyInitialAccountSettingEsEs._(_root);
	@override late final _StringsMisskeyInitialTutorialEsEs initialTutorial_ = _StringsMisskeyInitialTutorialEsEs._(_root);
	@override late final _StringsMisskeyTimelineDescriptionEsEs timelineDescription_ = _StringsMisskeyTimelineDescriptionEsEs._(_root);
	@override late final _StringsMisskeyServerRulesEsEs serverRules_ = _StringsMisskeyServerRulesEsEs._(_root);
	@override late final _StringsMisskeyServerSettingsEsEs serverSettings_ = _StringsMisskeyServerSettingsEsEs._(_root);
	@override late final _StringsMisskeyAccountMigrationEsEs accountMigration_ = _StringsMisskeyAccountMigrationEsEs._(_root);
	@override late final _StringsMisskeyAchievementsEsEs achievements_ = _StringsMisskeyAchievementsEsEs._(_root);
	@override late final _StringsMisskeyRoleEsEs role_ = _StringsMisskeyRoleEsEs._(_root);
	@override late final _StringsMisskeySensitiveMediaDetectionEsEs sensitiveMediaDetection_ = _StringsMisskeySensitiveMediaDetectionEsEs._(_root);
	@override late final _StringsMisskeyEmailUnavailableEsEs emailUnavailable_ = _StringsMisskeyEmailUnavailableEsEs._(_root);
	@override late final _StringsMisskeyFfVisibilityEsEs ffVisibility_ = _StringsMisskeyFfVisibilityEsEs._(_root);
	@override late final _StringsMisskeySignupEsEs signup_ = _StringsMisskeySignupEsEs._(_root);
	@override late final _StringsMisskeyAccountDeleteEsEs accountDelete_ = _StringsMisskeyAccountDeleteEsEs._(_root);
	@override late final _StringsMisskeyAdEsEs ad_ = _StringsMisskeyAdEsEs._(_root);
	@override late final _StringsMisskeyForgotPasswordEsEs forgotPassword_ = _StringsMisskeyForgotPasswordEsEs._(_root);
	@override late final _StringsMisskeyGalleryEsEs gallery_ = _StringsMisskeyGalleryEsEs._(_root);
	@override late final _StringsMisskeyEmailEsEs email_ = _StringsMisskeyEmailEsEs._(_root);
	@override late final _StringsMisskeyPluginEsEs plugin_ = _StringsMisskeyPluginEsEs._(_root);
	@override late final _StringsMisskeyPreferencesBackupsEsEs preferencesBackups_ = _StringsMisskeyPreferencesBackupsEsEs._(_root);
	@override late final _StringsMisskeyRegistryEsEs registry_ = _StringsMisskeyRegistryEsEs._(_root);
	@override late final _StringsMisskeyAboutMisskeyEsEs aboutMisskey_ = _StringsMisskeyAboutMisskeyEsEs._(_root);
	@override late final _StringsMisskeyDisplayOfSensitiveMediaEsEs displayOfSensitiveMedia_ = _StringsMisskeyDisplayOfSensitiveMediaEsEs._(_root);
	@override late final _StringsMisskeyInstanceTickerEsEs instanceTicker_ = _StringsMisskeyInstanceTickerEsEs._(_root);
	@override late final _StringsMisskeyServerDisconnectedBehaviorEsEs serverDisconnectedBehavior_ = _StringsMisskeyServerDisconnectedBehaviorEsEs._(_root);
	@override late final _StringsMisskeyChannelEsEs channel_ = _StringsMisskeyChannelEsEs._(_root);
	@override late final _StringsMisskeyMenuDisplayEsEs menuDisplay_ = _StringsMisskeyMenuDisplayEsEs._(_root);
	@override late final _StringsMisskeyWordMuteEsEs wordMute_ = _StringsMisskeyWordMuteEsEs._(_root);
	@override late final _StringsMisskeyInstanceMuteEsEs instanceMute_ = _StringsMisskeyInstanceMuteEsEs._(_root);
	@override late final _StringsMisskeyThemeEsEs theme_ = _StringsMisskeyThemeEsEs._(_root);
	@override late final _StringsMisskeySfxEsEs sfx_ = _StringsMisskeySfxEsEs._(_root);
	@override late final _StringsMisskeySoundSettingsEsEs soundSettings_ = _StringsMisskeySoundSettingsEsEs._(_root);
	@override late final _StringsMisskeyAgoEsEs ago_ = _StringsMisskeyAgoEsEs._(_root);
	@override late final _StringsMisskeyTimeInEsEs timeIn_ = _StringsMisskeyTimeInEsEs._(_root);
	@override late final _StringsMisskeyTimeEsEs time_ = _StringsMisskeyTimeEsEs._(_root);
	@override late final _StringsMisskeyX2faEsEs x2fa_ = _StringsMisskeyX2faEsEs._(_root);
	@override late final _StringsMisskeyPermissionsEsEs permissions_ = _StringsMisskeyPermissionsEsEs._(_root);
	@override late final _StringsMisskeyAuthEsEs auth_ = _StringsMisskeyAuthEsEs._(_root);
	@override late final _StringsMisskeyAntennaSourcesEsEs antennaSources_ = _StringsMisskeyAntennaSourcesEsEs._(_root);
	@override late final _StringsMisskeyWeekdayEsEs weekday_ = _StringsMisskeyWeekdayEsEs._(_root);
	@override late final _StringsMisskeyWidgetsEsEs widgets_ = _StringsMisskeyWidgetsEsEs._(_root);
	@override late final _StringsMisskeyCwEsEs cw_ = _StringsMisskeyCwEsEs._(_root);
	@override late final _StringsMisskeyPollEsEs poll_ = _StringsMisskeyPollEsEs._(_root);
	@override late final _StringsMisskeyVisibilityEsEs visibility_ = _StringsMisskeyVisibilityEsEs._(_root);
	@override late final _StringsMisskeyPostFormEsEs postForm_ = _StringsMisskeyPostFormEsEs._(_root);
	@override late final _StringsMisskeyProfileEsEs profile_ = _StringsMisskeyProfileEsEs._(_root);
	@override late final _StringsMisskeyExportOrImportEsEs exportOrImport_ = _StringsMisskeyExportOrImportEsEs._(_root);
	@override late final _StringsMisskeyChartsEsEs charts_ = _StringsMisskeyChartsEsEs._(_root);
	@override late final _StringsMisskeyInstanceChartsEsEs instanceCharts_ = _StringsMisskeyInstanceChartsEsEs._(_root);
	@override late final _StringsMisskeyTimelinesEsEs timelines_ = _StringsMisskeyTimelinesEsEs._(_root);
	@override late final _StringsMisskeyPlayEsEs play_ = _StringsMisskeyPlayEsEs._(_root);
	@override late final _StringsMisskeyPagesEsEs pages_ = _StringsMisskeyPagesEsEs._(_root);
	@override late final _StringsMisskeyRelayStatusEsEs relayStatus_ = _StringsMisskeyRelayStatusEsEs._(_root);
	@override late final _StringsMisskeyNotificationEsEs notification_ = _StringsMisskeyNotificationEsEs._(_root);
	@override late final _StringsMisskeyDeckEsEs deck_ = _StringsMisskeyDeckEsEs._(_root);
	@override late final _StringsMisskeyDialogEsEs dialog_ = _StringsMisskeyDialogEsEs._(_root);
	@override late final _StringsMisskeyDisabledTimelineEsEs disabledTimeline_ = _StringsMisskeyDisabledTimelineEsEs._(_root);
	@override late final _StringsMisskeyDrivecleanerEsEs drivecleaner_ = _StringsMisskeyDrivecleanerEsEs._(_root);
	@override late final _StringsMisskeyWebhookSettingsEsEs webhookSettings_ = _StringsMisskeyWebhookSettingsEsEs._(_root);
	@override late final _StringsMisskeyModerationLogTypesEsEs moderationLogTypes_ = _StringsMisskeyModerationLogTypesEsEs._(_root);
	@override late final _StringsMisskeyFileViewerEsEs fileViewer_ = _StringsMisskeyFileViewerEsEs._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerEsEs externalResourceInstaller_ = _StringsMisskeyExternalResourceInstallerEsEs._(_root);
	@override late final _StringsMisskeyDataSaverEsEs dataSaver_ = _StringsMisskeyDataSaverEsEs._(_root);
	@override late final _StringsMisskeyHemisphereEsEs hemisphere_ = _StringsMisskeyHemisphereEsEs._(_root);
	@override late final _StringsMisskeyReversiEsEs reversi_ = _StringsMisskeyReversiEsEs._(_root);
}

// Path: misskey.bubbleGame_
class _StringsMisskeyBubbleGameEsEs extends _StringsMisskeyBubbleGameEnUs {
	_StringsMisskeyBubbleGameEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => 'Cómo jugar';
	@override late final _StringsMisskeyBubbleGameHowToPlayEsEs howToPlay_ = _StringsMisskeyBubbleGameHowToPlayEsEs._(_root);
}

// Path: misskey.announcement_
class _StringsMisskeyAnnouncementEsEs extends _StringsMisskeyAnnouncementEnUs {
	_StringsMisskeyAnnouncementEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => 'Solo para usuarios registrados';
	@override String get forExistingUsersDescription => 'Este anuncio solo se mostrará a aquellos usuarios registrados en el momento de su publicación. Si se deshabilita esta opción, aquellos usuarios que se registren tras su publicación también lo verán.';
	@override String get needConfirmationToRead => 'Requerir confirmación de lectura aparte';
	@override String get needConfirmationToReadDescription => 'Si se habilita esta opción, se pedirá una confirmación de lectura aparte. Además, este anuncio será excluido de cualquier funcionalidad de "Marcar todos como leídos".';
	@override String get end => 'Anuncios archivados';
	@override String get tooManyActiveAnnouncementDescription => 'Tener demasiados anuncios activos empeora la experiencia de usuario. Por favor, considera archivar aquellos anuncios que hayan quedado obsoletos.';
	@override String get readConfirmTitle => '¿Marcar como leído?';
	@override String readConfirmText({required Object title}) => 'Esto marcará el contenido de "${title}" como leído.';
	@override String get shouldNotBeUsedToPresentPermanentInfo => 'Dado que puede impactar en la experiencia de usuario de forma significativa, es recomendable usar notificaciones en el flujo de información en vez de información persistente.';
	@override String get dialogAnnouncementUxWarn => 'Mostrar dos o más notificaciones en formato diálogo a la vez puede impactar en la experiencia de usuario de forma significativa, úsalos con cuidado.';
	@override String get silence => 'Silenciar notificaciones';
	@override String get silenceDescription => 'Si lo activas, no enviarás notificación sobre este anuncio y el usuario no tendrá que leerlo.';
}

// Path: misskey.initialAccountSetting_
class _StringsMisskeyInitialAccountSettingEsEs extends _StringsMisskeyInitialAccountSettingEnUs {
	_StringsMisskeyInitialAccountSettingEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

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
class _StringsMisskeyInitialTutorialEsEs extends _StringsMisskeyInitialTutorialEnUs {
	_StringsMisskeyInitialTutorialEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'Comenzar tutorial';
	@override String get title => 'Tutorial';
	@override String get wellDone => '¡Bien hecho!';
	@override String get skipAreYouSure => '¿Salir del tutorial?';
	@override late final _StringsMisskeyInitialTutorialLandingEsEs landing_ = _StringsMisskeyInitialTutorialLandingEsEs._(_root);
	@override late final _StringsMisskeyInitialTutorialNoteEsEs note_ = _StringsMisskeyInitialTutorialNoteEsEs._(_root);
	@override late final _StringsMisskeyInitialTutorialReactionEsEs reaction_ = _StringsMisskeyInitialTutorialReactionEsEs._(_root);
	@override late final _StringsMisskeyInitialTutorialTimelineEsEs timeline_ = _StringsMisskeyInitialTutorialTimelineEsEs._(_root);
	@override late final _StringsMisskeyInitialTutorialPostNoteEsEs postNote_ = _StringsMisskeyInitialTutorialPostNoteEsEs._(_root);
	@override late final _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEsEs howToMakeAttachmentsSensitive_ = _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEsEs._(_root);
	@override late final _StringsMisskeyInitialTutorialDoneEsEs done_ = _StringsMisskeyInitialTutorialDoneEsEs._(_root);
}

// Path: misskey.timelineDescription_
class _StringsMisskeyTimelineDescriptionEsEs extends _StringsMisskeyTimelineDescriptionEnUs {
	_StringsMisskeyTimelineDescriptionEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get home => 'En la línea de tiempo de Inicio puedes ver las notas de las cuentas a las que sigues.';
	@override String get local => 'En la línea de tiempo Local puedes ver las notas de todos los usuarios del servidor.';
	@override String get social => 'En la línea de tiempo Social verás las notas de Inicio y Local a la vez.';
	@override String get global => 'En la línea de tiempo Global verás las notas de todos los servidores conectados.';
}

// Path: misskey.serverRules_
class _StringsMisskeyServerRulesEsEs extends _StringsMisskeyServerRulesEnUs {
	_StringsMisskeyServerRulesEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get description => 'Un conjunto de reglas que serán mostradas antes del registro. Configurar un sumario de términos de servicio es recomendado.';
}

// Path: misskey.serverSettings_
class _StringsMisskeyServerSettingsEsEs extends _StringsMisskeyServerSettingsEnUs {
	_StringsMisskeyServerSettingsEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

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
}

// Path: misskey.accountMigration_
class _StringsMisskeyAccountMigrationEsEs extends _StringsMisskeyAccountMigrationEnUs {
	_StringsMisskeyAccountMigrationEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => 'Trasladar de otra cuenta a ésta';
	@override String get moveFromSub => 'Crear un alias para otra cuenta.';
	@override String moveFromLabel({required Object n}) => 'Cuenta desde la que se realiza el traslado: ${n}';
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
class _StringsMisskeyAchievementsEsEs extends _StringsMisskeyAchievementsEnUs {
	_StringsMisskeyAchievementsEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Desbloqueado el';
	@override late final _StringsMisskeyAchievementsTypesEsEs types_ = _StringsMisskeyAchievementsTypesEsEs._(_root);
}

// Path: misskey.role_
class _StringsMisskeyRoleEsEs extends _StringsMisskeyRoleEnUs {
	_StringsMisskeyRoleEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

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
	@override String get options => 'Opción';
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
	@override String get canEditMembersByModerator => 'Permitir a los moderadores editar los miembros';
	@override String get descriptionOfCanEditMembersByModerator => 'Si se activa, los moderadores, al igual que los administradores, serán capaces de asignar/quitar usuarios a éste rol. Si se desactiva, sólo los administradores podrán hacerlo.';
	@override String get priority => 'Prioridad';
	@override late final _StringsMisskeyRolePriorityEsEs priority_ = _StringsMisskeyRolePriorityEsEs._(_root);
	@override late final _StringsMisskeyRoleOptionsEsEs options_ = _StringsMisskeyRoleOptionsEsEs._(_root);
	@override late final _StringsMisskeyRoleConditionEsEs condition_ = _StringsMisskeyRoleConditionEsEs._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _StringsMisskeySensitiveMediaDetectionEsEs extends _StringsMisskeySensitiveMediaDetectionEnUs {
	_StringsMisskeySensitiveMediaDetectionEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

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
class _StringsMisskeyEmailUnavailableEsEs extends _StringsMisskeyEmailUnavailableEnUs {
	_StringsMisskeyEmailUnavailableEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get used => 'Ya fue usado';
	@override String get format => 'Formato no válido.';
	@override String get disposable => 'No es un correo reutilizable';
	@override String get mx => 'Servidor de correo inválido';
	@override String get smtp => 'Servidor de correo no disponible';
	@override String get banned => 'Email no disponible';
}

// Path: misskey.ffVisibility_
class _StringsMisskeyFfVisibilityEsEs extends _StringsMisskeyFfVisibilityEnUs {
	_StringsMisskeyFfVisibilityEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get public => 'Publicar';
	@override String get followers => 'Visible solo para seguidores';
	@override String get private => 'Privado';
}

// Path: misskey.signup_
class _StringsMisskeySignupEsEs extends _StringsMisskeySignupEnUs {
	_StringsMisskeySignupEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Ya falta poco';
	@override String get emailAddressInfo => 'Ingrese el correo electrónico que usa. Este no se hará público.';
	@override String emailSent({required Object email}) => 'Se envió un correo de verificación a la dirección ${email}. Acceda al link enviado en el correo para completar el ingreso.';
}

// Path: misskey.accountDelete_
class _StringsMisskeyAccountDeleteEsEs extends _StringsMisskeyAccountDeleteEnUs {
	_StringsMisskeyAccountDeleteEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Eliminar Cuenta';
	@override String get mayTakeTime => 'La eliminación de la cuenta es un proceso que precisa de carga. Puede pasar un tiempo hasta que se complete si es mucho el contenido creado y los archivos subidos.';
	@override String get sendEmail => 'Cuando se termine de borrar la cuenta, se enviará un correo a la dirección usada para el registro.';
	@override String get requestAccountDelete => 'Pedir la eliminación de la cuenta.';
	@override String get started => 'El proceso de eliminación ha comenzado.';
	@override String get inProgress => 'La eliminación está en proceso.';
}

// Path: misskey.ad_
class _StringsMisskeyAdEsEs extends _StringsMisskeyAdEnUs {
	_StringsMisskeyAdEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get back => 'Deseleccionar';
	@override String get reduceFrequencyOfThisAd => 'Mostrar menos este anuncio.';
	@override String get hide => 'No mostrar';
	@override String get timezoneinfo => 'El día de la semana está determidado por la zona horaria del servidor.';
	@override String get adsSettings => 'Ajustes de anuncios';
	@override String get notesPerOneAd => 'Intervalo de actualización de anuncios en tiempo real (Notas por cada anuncio)';
	@override String get setZeroToDisable => 'Establece este valor a 0 para deshabilitar la actualización de anuncios en tiempo real';
	@override String get adsTooClose => 'El intervalo de anuncios actual puede empeorar la experiencia del usuario por ser demasiado bajo.';
}

// Path: misskey.forgotPassword_
class _StringsMisskeyForgotPasswordEsEs extends _StringsMisskeyForgotPasswordEnUs {
	_StringsMisskeyForgotPasswordEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Ingrese el correo usado para registrar la cuenta. Se enviará un link para resetear la contraseña.';
	@override String get ifNoEmail => 'Si no utilizó un correo para crear la cuenta, contáctese con el administrador.';
	@override String get contactAdmin => 'Esta instancia no admite el uso de direcciones de correo electrónico, póngase en contacto con el administrador de la instancia para restablecer su contraseña';
}

// Path: misskey.gallery_
class _StringsMisskeyGalleryEsEs extends _StringsMisskeyGalleryEnUs {
	_StringsMisskeyGalleryEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get my => 'Mi galería';
	@override String get liked => 'Publicaciones que me gustan';
	@override String get like => '¡Muy bien!';
	@override String get unlike => 'Quitar me gusta';
}

// Path: misskey.email_
class _StringsMisskeyEmailEsEs extends _StringsMisskeyEmailEnUs {
	_StringsMisskeyEmailEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyEmailFollowEsEs follow_ = _StringsMisskeyEmailFollowEsEs._(_root);
	@override late final _StringsMisskeyEmailReceiveFollowRequestEsEs receiveFollowRequest_ = _StringsMisskeyEmailReceiveFollowRequestEsEs._(_root);
}

// Path: misskey.plugin_
class _StringsMisskeyPluginEsEs extends _StringsMisskeyPluginEnUs {
	_StringsMisskeyPluginEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get install => 'Instalar plugins';
	@override String get installWarn => 'Por favor no instale plugins que no son de confianza';
	@override String get manage => 'Gestionar plugins';
	@override String get viewSource => 'Ver la fuente';
}

// Path: misskey.preferencesBackups_
class _StringsMisskeyPreferencesBackupsEsEs extends _StringsMisskeyPreferencesBackupsEnUs {
	_StringsMisskeyPreferencesBackupsEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

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
class _StringsMisskeyRegistryEsEs extends _StringsMisskeyRegistryEnUs {
	_StringsMisskeyRegistryEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Alcance';
	@override String get key => 'Clave';
	@override String get keys => 'Clave';
	@override String get domain => 'Dominio';
	@override String get createKey => 'Crear una llave';
}

// Path: misskey.aboutMisskey_
class _StringsMisskeyAboutMisskeyEsEs extends _StringsMisskeyAboutMisskeyEnUs {
	_StringsMisskeyAboutMisskeyEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey es un software de código abierto, desarrollado por syuilo desde el 2014';
	@override String get contributors => 'Principales colaboradores';
	@override String get allContributors => 'Todos los colaboradores';
	@override String get source => 'Código fuente';
	@override String get translation => 'Traducir Misskey';
	@override String get donate => 'Donar a Misskey';
	@override String get morePatrons => 'Muchas más personas nos apoyan. Muchas gracias🥰';
	@override String get patrons => 'Patrocinadores';
	@override String get projectMembers => 'Miembros del proyecto';
}

// Path: misskey.displayOfSensitiveMedia_
class _StringsMisskeyDisplayOfSensitiveMediaEsEs extends _StringsMisskeyDisplayOfSensitiveMediaEnUs {
	_StringsMisskeyDisplayOfSensitiveMediaEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get respect => 'Esconder medios marcados como sensibles';
	@override String get ignore => 'Mostrar medios marcados como sensibles';
	@override String get force => 'Esconder todala multimedia';
}

// Path: misskey.instanceTicker_
class _StringsMisskeyInstanceTickerEsEs extends _StringsMisskeyInstanceTickerEnUs {
	_StringsMisskeyInstanceTickerEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get none => 'No mostrar';
	@override String get remote => 'Mostrar a usuarios remotos';
	@override String get always => 'Mostrar siempre';
}

// Path: misskey.serverDisconnectedBehavior_
class _StringsMisskeyServerDisconnectedBehaviorEsEs extends _StringsMisskeyServerDisconnectedBehaviorEnUs {
	_StringsMisskeyServerDisconnectedBehaviorEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Recargar automáticamente';
	@override String get dialog => 'Mostrar diálogo de advertencia';
	@override String get quiet => 'Advertencia discreta';
}

// Path: misskey.channel_
class _StringsMisskeyChannelEsEs extends _StringsMisskeyChannelEnUs {
	_StringsMisskeyChannelEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

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
class _StringsMisskeyMenuDisplayEsEs extends _StringsMisskeyMenuDisplayEnUs {
	_StringsMisskeyMenuDisplayEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Horizontal';
	@override String get sideIcon => 'Horizontal (ícono)';
	@override String get top => 'Arriba';
	@override String get hide => 'Ocultar';
}

// Path: misskey.wordMute_
class _StringsMisskeyWordMuteEsEs extends _StringsMisskeyWordMuteEnUs {
	_StringsMisskeyWordMuteEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Palabras que silenciar';
	@override String get muteWordsDescription => 'Separar con espacios indica una declaracion And, separar con lineas nuevas indica una declaracion Or。';
	@override String get muteWordsDescription2 => 'Encerrar las palabras clave entre numerales para usar expresiones regulares';
}

// Path: misskey.instanceMute_
class _StringsMisskeyInstanceMuteEsEs extends _StringsMisskeyInstanceMuteEnUs {
	_StringsMisskeyInstanceMuteEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Silencia todas las notas y reposts de la instancias seleccionadas, incluyendo respuestas a los usuarios de las mismas';
	@override String get instanceMuteDescription2 => 'Separar por líneas';
	@override String get title => 'Oculta las notas de las instancias listadas.';
	@override String get heading => 'Instancias a silenciar';
}

// Path: misskey.theme_
class _StringsMisskeyThemeEsEs extends _StringsMisskeyThemeEnUs {
	_StringsMisskeyThemeEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get explore => 'Explorar temas';
	@override String get install => 'Instalar tema';
	@override String get manage => 'Gestor de temas';
	@override String get code => 'Código del tema';
	@override String get description => 'Descripción';
	@override String installed({required Object name}) => '${name} ha sido instalado';
	@override String get installedThemes => 'Temas instalados';
	@override String get builtinThemes => 'Temas integrados';
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
	@override late final _StringsMisskeyThemeKeysEsEs keys = _StringsMisskeyThemeKeysEsEs._(_root);
}

// Path: misskey.sfx_
class _StringsMisskeySfxEsEs extends _StringsMisskeySfxEnUs {
	_StringsMisskeySfxEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get note => 'Notas';
	@override String get noteMy => 'Nota (a mí mismo)';
	@override String get notification => 'Notificaciones';
	@override String get antenna => 'Antena receptora';
	@override String get channel => 'Notificaciones del canal';
	@override String get reaction => 'Al seleccionar una reacción';
}

// Path: misskey.soundSettings_
class _StringsMisskeySoundSettingsEsEs extends _StringsMisskeySoundSettingsEnUs {
	_StringsMisskeySoundSettingsEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get driveFile => 'Usar un archivo de audio en Drive';
	@override String get driveFileWarn => 'Selecciona un archivo de audio en Drive.';
	@override String get driveFileTypeWarn => 'Este archivo es incompatible';
	@override String get driveFileTypeWarnDescription => 'Selecciona un archivo de audio';
	@override String get driveFileDurationWarn => 'La duración del audio es demasiado larga.';
	@override String get driveFileDurationWarnDescription => 'Usar un audio de larga duración puede llegar a molestar mientras usas Misskey. ¿Quieres continuar?';
}

// Path: misskey.ago_
class _StringsMisskeyAgoEsEs extends _StringsMisskeyAgoEnUs {
	_StringsMisskeyAgoEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

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
class _StringsMisskeyTimeInEsEs extends _StringsMisskeyTimeInEnUs {
	_StringsMisskeyTimeInEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

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
class _StringsMisskeyTimeEsEs extends _StringsMisskeyTimeEnUs {
	_StringsMisskeyTimeEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get second => 'Segundos';
	@override String get minute => 'Minutos';
	@override String get hour => 'Horas';
	@override String get day => 'Días';
}

// Path: misskey.x2fa_
class _StringsMisskeyX2faEsEs extends _StringsMisskeyX2faEnUs {
	_StringsMisskeyX2faEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'Ya has completado la configuración.';
	@override String get registerTOTP => 'Registrar aplicación autenticadora';
	@override String step1({required Object a, required Object b}) => 'Primero, instale en su dispositivo la aplicación de autenticación ${a} o ${b} u otra.';
	@override String get step2 => 'Luego, escanee con la aplicación el código QR mostrado en pantalla.';
	@override String get step2Click => 'Clicking on this QR code will allow you to register 2FA to your security key or phone authenticator app.\nTocar este código QR te permitirá registrar la autenticación 2FA a tu llave de seguridad o aplicación autenticadora.';
	@override String get step2Uri => 'Si usas una aplicación de escritorio, introduce en ella la siguiente URL.';
	@override String get step3Title => 'Ingresa un código de autenticación';
	@override String get step3 => 'Para terminar, ingrese el token mostrado en la aplicación.';
	@override String get setupCompleted => 'Configuración completada';
	@override String get step4 => 'Ahora cuando inicie sesión, ingrese el mismo token';
	@override String get securityKeyNotSupported => 'Tu navegador no soporta claves de autenticación.';
	@override String get registerTOTPBeforeKey => 'Please set up an authenticator app to register a security or pass key.\npor favor. configura una aplicación de autenticación para registrar una llave de seguridad.';
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
}

// Path: misskey.permissions_
class _StringsMisskeyPermissionsEsEs extends _StringsMisskeyPermissionsEnUs {
	_StringsMisskeyPermissionsEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

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
	@override String get readAdminUserIps => 'Ver dirección IP de usuario';
	@override String get readAdminMeta => 'Ver metadatos de la instancia';
	@override String get writeAdminResetPassword => 'Restablecer contraseñas de usuario';
	@override String get writeAdminResolveAbuseUserReport => 'Resolución de reportes de usuario';
	@override String get writeAdminSendEmail => 'Enviar email';
	@override String get readAdminServerInfo => 'Ver información del servidor';
	@override String get readAdminShowModerationLog => 'Ver log de moderación';
	@override String get readAdminShowUser => 'Ver información privada de usuario';
	@override String get readAdminShowUsers => 'Ver información privada de usuario';
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
}

// Path: misskey.auth_
class _StringsMisskeyAuthEsEs extends _StringsMisskeyAuthEnUs {
	_StringsMisskeyAuthEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'Permisos de la aplicación';
	@override String shareAccess({required Object name}) => '¿Desea permitir el acceso a la cuenta "${name}"?';
	@override String get shareAccessAsk => '¿Está seguro de que desea autorizar esta aplicación para acceder a su cuenta?';
	@override String permission({required Object name}) => '${name} solicita los siguientes permisos';
	@override String get permissionAsk => 'Esta aplicación requiere los siguientes permisos';
	@override String get pleaseGoBack => 'Por favor, vuelve a la aplicación';
	@override String get callback => 'Volviendo a la aplicación';
	@override String get denied => 'Acceso denegado';
	@override String get pleaseLogin => 'Se requiere un inicio de sesión para darle permisos a la aplicación';
}

// Path: misskey.antennaSources_
class _StringsMisskeyAntennaSourcesEsEs extends _StringsMisskeyAntennaSourcesEnUs {
	_StringsMisskeyAntennaSourcesEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get all => 'Todas las notas';
	@override String get homeTimeline => 'Notas de los usuarios que sigues';
	@override String get users => 'Notas de un usuario o varios';
	@override String get userList => 'Notas de los usuarios de una lista';
	@override String get userBlacklist => 'Todas las notas excepto aquellas de uno o más usuarios especificados';
}

// Path: misskey.weekday_
class _StringsMisskeyWeekdayEsEs extends _StringsMisskeyWeekdayEnUs {
	_StringsMisskeyWeekdayEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

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
class _StringsMisskeyWidgetsEsEs extends _StringsMisskeyWidgetsEnUs {
	_StringsMisskeyWidgetsEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

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
	@override String get instanceCloud => 'Nube de palabras de la instancia';
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
	@override late final _StringsMisskeyWidgetsUserListEsEs userList_ = _StringsMisskeyWidgetsUserListEsEs._(_root);
	@override String get clicker => 'Cliqueador';
	@override String get birthdayFollowings => 'Hoy cumplen años';
}

// Path: misskey.cw_
class _StringsMisskeyCwEsEs extends _StringsMisskeyCwEnUs {
	_StringsMisskeyCwEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Ocultar';
	@override String get show => 'Ver más';
	@override String chars({required Object count}) => '${count} caracteres';
	@override String files({required Object count}) => '${count} archivos';
}

// Path: misskey.poll_
class _StringsMisskeyPollEsEs extends _StringsMisskeyPollEnUs {
	_StringsMisskeyPollEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'Se necesitan al menos 2 opciones';
	@override String choiceN({required Object n}) => 'Opción ${n}';
	@override String get noMore => 'No se pueden agregar más';
	@override String get canMultipleVote => 'Permitir más de una respuesta';
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
class _StringsMisskeyVisibilityEsEs extends _StringsMisskeyVisibilityEnUs {
	_StringsMisskeyVisibilityEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

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
class _StringsMisskeyPostFormEsEs extends _StringsMisskeyPostFormEnUs {
	_StringsMisskeyPostFormEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'Responder a esta nota';
	@override String get quotePlaceholder => 'Citar esta nota';
	@override String get channelPlaceholder => 'Publicar en el canal';
	@override late final _StringsMisskeyPostFormPlaceholdersEsEs placeholders_ = _StringsMisskeyPostFormPlaceholdersEsEs._(_root);
}

// Path: misskey.profile_
class _StringsMisskeyProfileEsEs extends _StringsMisskeyProfileEnUs {
	_StringsMisskeyProfileEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nombre';
	@override String get username => 'Nombre de usuario';
	@override String get description => 'Descripción';
	@override String get youCanIncludeHashtags => 'Puedes añadir hashtags';
	@override String get metadata => 'información adicional';
	@override String get metadataEdit => 'Editar información adicional';
	@override String get metadataDescription => 'Muestra la información adicional en el perfil';
	@override String get metadataLabel => 'Etiqueta';
	@override String get metadataContent => 'Contenido';
	@override String get changeAvatar => 'Cambiar avatar';
	@override String get changeBanner => 'Cambiar banner';
	@override String get verifiedLinkDescription => 'Introduciendo una URL que contiene un enlace a tu perfil, se puede mostrar un icono de verificación de propiedad al lado del campo.';
	@override String avatarDecorationMax({required Object max}) => 'Puedes añadir un máximo de ${max} decoraciones de avatar.';
}

// Path: misskey.exportOrImport_
class _StringsMisskeyExportOrImportEsEs extends _StringsMisskeyExportOrImportEnUs {
	_StringsMisskeyExportOrImportEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

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
	@override String get withReplies => 'Incluir respuestas de los usuarios importados en la línea de tiempo';
}

// Path: misskey.charts_
class _StringsMisskeyChartsEsEs extends _StringsMisskeyChartsEnUs {
	_StringsMisskeyChartsEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

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
class _StringsMisskeyInstanceChartsEsEs extends _StringsMisskeyInstanceChartsEnUs {
	_StringsMisskeyInstanceChartsEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

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
class _StringsMisskeyTimelinesEsEs extends _StringsMisskeyTimelinesEnUs {
	_StringsMisskeyTimelinesEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get home => 'Inicio';
	@override String get local => 'Local';
	@override String get social => 'Social';
	@override String get global => 'Global';
}

// Path: misskey.play_
class _StringsMisskeyPlayEsEs extends _StringsMisskeyPlayEnUs {
	_StringsMisskeyPlayEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

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
}

// Path: misskey.pages_
class _StringsMisskeyPagesEsEs extends _StringsMisskeyPagesEnUs {
	_StringsMisskeyPagesEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'Crear página';
	@override String get editPage => 'Editar página';
	@override String get readPage => 'Viendo la fuente';
	@override String get created => 'La página fue creada';
	@override String get updated => 'La página fue actualizada';
	@override String get deleted => 'La página borrada';
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
	@override String get selectType => 'Elegir tipo';
	@override String get contentBlocks => 'Contenido';
	@override String get inputBlocks => 'Entrada';
	@override String get specialBlocks => 'Especial';
	@override late final _StringsMisskeyPagesBlocksEsEs blocks = _StringsMisskeyPagesBlocksEsEs._(_root);
}

// Path: misskey.relayStatus_
class _StringsMisskeyRelayStatusEsEs extends _StringsMisskeyRelayStatusEnUs {
	_StringsMisskeyRelayStatusEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'Pendiente';
	@override String get accepted => 'Aceptar';
	@override String get rejected => 'Rechazada';
}

// Path: misskey.notification_
class _StringsMisskeyNotificationEsEs extends _StringsMisskeyNotificationEnUs {
	_StringsMisskeyNotificationEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

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
	@override String get newNote => 'Nueva nota';
	@override String unreadAntennaNote({required Object name}) => 'Antena ${name}';
	@override String get roleAssigned => 'Rol asignado';
	@override String get emptyPushNotificationMessage => 'Se han actualizado las notificaciones push';
	@override String get achievementEarned => 'Logro desbloqueado';
	@override String get testNotification => 'Notificación de prueba';
	@override String get checkNotificationBehavior => 'Comprobar comportamiento de la notificación';
	@override String get sendTestNotification => 'Enviar notificación de prueba';
	@override String get notificationWillBeDisplayedLikeThis => 'Las notificaciones tendrán este aspecto';
	@override String reactedBySomeUsers({required Object n}) => '${n} usuarios han reaccionado';
	@override String renotedBySomeUsers({required Object n}) => '${n} usuarios han renotado';
	@override String followedBySomeUsers({required Object n}) => 'Seguido por ${n} usuarios';
	@override late final _StringsMisskeyNotificationTypesEsEs types_ = _StringsMisskeyNotificationTypesEsEs._(_root);
	@override late final _StringsMisskeyNotificationActionsEsEs actions_ = _StringsMisskeyNotificationActionsEsEs._(_root);
}

// Path: misskey.deck_
class _StringsMisskeyDeckEsEs extends _StringsMisskeyDeckEnUs {
	_StringsMisskeyDeckEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Siempre mostrar la columna principal';
	@override String get columnAlign => 'Alinear columnas';
	@override String get addColumn => 'Agregar columna';
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
	@override late final _StringsMisskeyDeckColumnsEsEs columns_ = _StringsMisskeyDeckColumnsEsEs._(_root);
}

// Path: misskey.dialog_
class _StringsMisskeyDialogEsEs extends _StringsMisskeyDialogEnUs {
	_StringsMisskeyDialogEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => '¡Has excedido el límite de caracteres! Actualmente ${current} de ${max}.';
	@override String charactersBelow({required Object current, required Object min}) => '¡Estás por debajo del límite de caracteres! Actualmente ${current} de ${min}.';
}

// Path: misskey.disabledTimeline_
class _StringsMisskeyDisabledTimelineEsEs extends _StringsMisskeyDisabledTimelineEnUs {
	_StringsMisskeyDisabledTimelineEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Línea de tiempo deshabilitada';
	@override String get description => 'No puedes usar esta línea de tiempo con tus roles actuales.';
}

// Path: misskey.drivecleaner_
class _StringsMisskeyDrivecleanerEsEs extends _StringsMisskeyDrivecleanerEnUs {
	_StringsMisskeyDrivecleanerEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'Tamaño descendiente';
	@override String get orderByCreatedAtAsc => 'Fecha ascendente';
}

// Path: misskey.webhookSettings_
class _StringsMisskeyWebhookSettingsEsEs extends _StringsMisskeyWebhookSettingsEnUs {
	_StringsMisskeyWebhookSettingsEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Crear Webhook';
	@override String get name => 'Nombre';
	@override String get secret => 'Secreto';
	@override String get events => 'Eventos de webhook';
	@override String get active => 'Activado';
	@override late final _StringsMisskeyWebhookSettingsEventsEsEs events_ = _StringsMisskeyWebhookSettingsEventsEsEs._(_root);
}

// Path: misskey.moderationLogTypes_
class _StringsMisskeyModerationLogTypesEsEs extends _StringsMisskeyModerationLogTypesEnUs {
	_StringsMisskeyModerationLogTypesEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
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
	@override String get markSensitiveDriveFile => 'Archivo marcado como sensible';
	@override String get unmarkSensitiveDriveFile => 'Archivo marcado como no sensible';
	@override String get resolveAbuseReport => 'Reporte resuelto';
	@override String get createInvitation => 'Generar invitación';
	@override String get createAd => 'Anuncio creado';
	@override String get deleteAd => 'Anuncio eliminado';
	@override String get updateAd => 'Anuncio actualizado';
	@override String get createAvatarDecoration => 'Decoración de avatar creada';
	@override String get updateAvatarDecoration => 'Decoración de avatar actualizada';
	@override String get deleteAvatarDecoration => 'Decoración de avatar eliminada';
	@override String get unsetUserAvatar => 'Quitar decoración de avatar de este usuario';
	@override String get unsetUserBanner => 'Quitar banner de este usuario';
}

// Path: misskey.fileViewer_
class _StringsMisskeyFileViewerEsEs extends _StringsMisskeyFileViewerEnUs {
	_StringsMisskeyFileViewerEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Detalles del archivo';
	@override String get type => 'Tipo de archivo';
	@override String get size => 'Tamaño del archivo';
	@override String get url => 'URL';
	@override String get uploadedAt => 'Subido el';
	@override String get attachedNotes => 'Notas adjuntas';
	@override String get thisPageCanBeSeenFromTheAuthor => 'Esta página solo puede ser vista por el autor.';
}

// Path: misskey.externalResourceInstaller_
class _StringsMisskeyExternalResourceInstallerEsEs extends _StringsMisskeyExternalResourceInstallerEnUs {
	_StringsMisskeyExternalResourceInstallerEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Instalar desde sitio externo';
	@override String get checkVendorBeforeInstall => 'Asegúrate de que el distribuidor de este recurso es de confianza antes de proceder a la instalación.';
	@override late final _StringsMisskeyExternalResourceInstallerPluginEsEs plugin_ = _StringsMisskeyExternalResourceInstallerPluginEsEs._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerThemeEsEs theme_ = _StringsMisskeyExternalResourceInstallerThemeEsEs._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerMetaEsEs meta_ = _StringsMisskeyExternalResourceInstallerMetaEsEs._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerVendorInfoEsEs vendorInfo_ = _StringsMisskeyExternalResourceInstallerVendorInfoEsEs._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsEsEs errors_ = _StringsMisskeyExternalResourceInstallerErrorsEsEs._(_root);
}

// Path: misskey.dataSaver_
class _StringsMisskeyDataSaverEsEs extends _StringsMisskeyDataSaverEnUs {
	_StringsMisskeyDataSaverEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyDataSaverMediaEsEs media_ = _StringsMisskeyDataSaverMediaEsEs._(_root);
	@override late final _StringsMisskeyDataSaverAvatarEsEs avatar_ = _StringsMisskeyDataSaverAvatarEsEs._(_root);
	@override late final _StringsMisskeyDataSaverUrlPreviewEsEs urlPreview_ = _StringsMisskeyDataSaverUrlPreviewEsEs._(_root);
	@override late final _StringsMisskeyDataSaverCodeEsEs code_ = _StringsMisskeyDataSaverCodeEsEs._(_root);
}

// Path: misskey.hemisphere_
class _StringsMisskeyHemisphereEsEs extends _StringsMisskeyHemisphereEnUs {
	_StringsMisskeyHemisphereEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get N => 'Hemisferio norte';
	@override String get S => 'Hemisferio sur';
}

// Path: misskey.reversi_
class _StringsMisskeyReversiEsEs extends _StringsMisskeyReversiEnUs {
	_StringsMisskeyReversiEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get reversi => 'Reversi';
	@override String won({required Object name}) => '${name} ha ganado';
	@override String get total => 'Total';
}

// Path: misskey.bubbleGame_.howToPlay_
class _StringsMisskeyBubbleGameHowToPlayEsEs extends _StringsMisskeyBubbleGameHowToPlayEnUs {
	_StringsMisskeyBubbleGameHowToPlayEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get section1 => 'Ajuste la posición y deje caer el objeto en la caja';
	@override String get section2 => 'Cuando dos objetos del mismo tipo se tocan, cambian a otro tipo y consigues puntos';
	@override String get section3 => 'El juego termina cuando la caja se desborda de objetos. ¡Intenta conseguir una puntuación alta al juntar objetos mientras evitas desbordar la caja!';
}

// Path: misskey.initialTutorial_.landing_
class _StringsMisskeyInitialTutorialLandingEsEs extends _StringsMisskeyInitialTutorialLandingEnUs {
	_StringsMisskeyInitialTutorialLandingEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bienvenid@ al tutorial';
	@override String get description => 'Aquí podrás aprender las nociones básicas sobre cómo usar Misskey y sus funciones.';
}

// Path: misskey.initialTutorial_.note_
class _StringsMisskeyInitialTutorialNoteEsEs extends _StringsMisskeyInitialTutorialNoteEnUs {
	_StringsMisskeyInitialTutorialNoteEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Qué es una nota?';
	@override String get description => 'Las publicaciones en Misskey se llaman \'Notas\'. Las notas se ordenan de forma cronológica en la línea de tiempo y se actualizan en tiempo real.';
	@override String get reply => 'Pulsa en este botón para contestar a un mensaje. También es posible contestar a otras contestaciones, continuando así la conversación como un hilo.';
	@override String get renote => 'Puedes compartir esa nota en tu propia línea de tiempo. También puedes añadir una cita con tus comentarios.';
	@override String get reaction => 'Puedes añadir reacciones a la Nota. Se explicarán más detalles en la siguiente página.';
	@override String get menu => 'Puedes ver los detalles de la Nota, copiar enlaces, y realizar otras acciones.';
}

// Path: misskey.initialTutorial_.reaction_
class _StringsMisskeyInitialTutorialReactionEsEs extends _StringsMisskeyInitialTutorialReactionEnUs {
	_StringsMisskeyInitialTutorialReactionEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Qué son las reacciones?';
	@override String get description => 'Se puede reaccionar a las Notas con diferentes emojis. Las reacciones te permiten expresar matices que no se pueden transmitir con un simple \'me gusta\'.';
	@override String get letsTryReacting => 'Puedes añadir reacciones pulsando en el botón \'+\' de la nota. ¡Intenta reaccionar a esta nota de ejemplo!';
	@override String get reactToContinue => 'Añade una reacción para continuar.';
	@override String get reactNotification => 'Recibirás notificaciones en tiempo real cuando alguien reaccione a tu nota.';
	@override String get reactDone => 'Puedes deshacer una reacción pulsando en el botón \'-\'.';
}

// Path: misskey.initialTutorial_.timeline_
class _StringsMisskeyInitialTutorialTimelineEsEs extends _StringsMisskeyInitialTutorialTimelineEnUs {
	_StringsMisskeyInitialTutorialTimelineEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'El concepto de Línea de tiempo';
	@override String get description1 => 'Misskey proporciona múltiples líneas de tiempo basadas en su uso (algunas pueden no estar disponibles dependiendo de las políticas de la instancia).';
	@override String get home => 'Puedes ver los posts de las cuentas que sigues.';
	@override String get local => 'Puedes ver los posts de todos los usuarios de este servidor.';
	@override String get social => 'Se ven los posts de la línea de tiempo de inicio junto con los de la línea de tiempo local.';
	@override String get global => 'Puedes ver notas de todos los servidores conectados.';
	@override String get description2 => 'Puedes cambiar la línea de tiempo en la parte superior de la pantalla cuando quieras.';
	@override String description3({required Object link}) => 'Además, hay listas de líneas de tiempo y listas de canales. Para más detalle, por favor visita este enlace: ${link}';
}

// Path: misskey.initialTutorial_.postNote_
class _StringsMisskeyInitialTutorialPostNoteEsEs extends _StringsMisskeyInitialTutorialPostNoteEnUs {
	_StringsMisskeyInitialTutorialPostNoteEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ajustes de publicación de nota';
	@override String get description1 => 'Cuando publicas una nota en Misskey, hay varias opciones disponibles. El formulario tiene este aspecto.';
	@override late final _StringsMisskeyInitialTutorialPostNoteVisibilityEsEs visibility_ = _StringsMisskeyInitialTutorialPostNoteVisibilityEsEs._(_root);
	@override late final _StringsMisskeyInitialTutorialPostNoteCwEsEs cw_ = _StringsMisskeyInitialTutorialPostNoteCwEsEs._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEsEs extends _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Cómo puedo marcar adjuntos como contenido sensible?';
	@override String get description => 'Cuando las normas del servidor lo requieran, o el contenido lo requiera, marca la opción de "contenido sensible" para el adjunto.';
	@override String get tryThisFile => '¡Prueba a marcar la imagen adjunta como contenido sensible!';
	@override late final _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEsEs exampleNote_ = _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEsEs._(_root);
	@override String get method => 'Para marcar un adjunto como sensible, haz clic en la miniatura, abre el menú, y haz clic en "Marcar como sensible".';
	@override String get sensitiveSucceeded => 'Cuando adjuntes archivos, por favor, ten en cuenta las normas del servidor para marcarlos como contenido sensible.';
	@override String get doItToContinue => 'Marca el archivo adjunto como sensible para continuar.';
}

// Path: misskey.initialTutorial_.done_
class _StringsMisskeyInitialTutorialDoneEsEs extends _StringsMisskeyInitialTutorialDoneEnUs {
	_StringsMisskeyInitialTutorialDoneEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Has completado el tutorial! 🎉';
	@override String description({required Object link}) => 'Las funciones que mostramos aquí son sólo una pequeña parte. Para más detalles sobre el funcionamiento de Misskey, pulsa en este enlace: ${link}';
}

// Path: misskey.achievements_.types_
class _StringsMisskeyAchievementsTypesEsEs extends _StringsMisskeyAchievementsTypesEnUs {
	_StringsMisskeyAchievementsTypesEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAchievementsTypesNotes1EsEs notes1_ = _StringsMisskeyAchievementsTypesNotes1EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10EsEs notes10_ = _StringsMisskeyAchievementsTypesNotes10EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100EsEs notes100_ = _StringsMisskeyAchievementsTypesNotes100EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes500EsEs notes500_ = _StringsMisskeyAchievementsTypesNotes500EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes1000EsEs notes1000_ = _StringsMisskeyAchievementsTypesNotes1000EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes5000EsEs notes5000_ = _StringsMisskeyAchievementsTypesNotes5000EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10000EsEs notes10000_ = _StringsMisskeyAchievementsTypesNotes10000EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes20000EsEs notes20000_ = _StringsMisskeyAchievementsTypesNotes20000EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes30000EsEs notes30000_ = _StringsMisskeyAchievementsTypesNotes30000EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes40000EsEs notes40000_ = _StringsMisskeyAchievementsTypesNotes40000EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes50000EsEs notes50000_ = _StringsMisskeyAchievementsTypesNotes50000EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes60000EsEs notes60000_ = _StringsMisskeyAchievementsTypesNotes60000EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes70000EsEs notes70000_ = _StringsMisskeyAchievementsTypesNotes70000EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes80000EsEs notes80000_ = _StringsMisskeyAchievementsTypesNotes80000EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes90000EsEs notes90000_ = _StringsMisskeyAchievementsTypesNotes90000EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100000EsEs notes100000_ = _StringsMisskeyAchievementsTypesNotes100000EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin3EsEs login3_ = _StringsMisskeyAchievementsTypesLogin3EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin7EsEs login7_ = _StringsMisskeyAchievementsTypesLogin7EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin15EsEs login15_ = _StringsMisskeyAchievementsTypesLogin15EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin30EsEs login30_ = _StringsMisskeyAchievementsTypesLogin30EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin60EsEs login60_ = _StringsMisskeyAchievementsTypesLogin60EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin100EsEs login100_ = _StringsMisskeyAchievementsTypesLogin100EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin200EsEs login200_ = _StringsMisskeyAchievementsTypesLogin200EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin300EsEs login300_ = _StringsMisskeyAchievementsTypesLogin300EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin400EsEs login400_ = _StringsMisskeyAchievementsTypesLogin400EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin500EsEs login500_ = _StringsMisskeyAchievementsTypesLogin500EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin600EsEs login600_ = _StringsMisskeyAchievementsTypesLogin600EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin700EsEs login700_ = _StringsMisskeyAchievementsTypesLogin700EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin800EsEs login800_ = _StringsMisskeyAchievementsTypesLogin800EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin900EsEs login900_ = _StringsMisskeyAchievementsTypesLogin900EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin1000EsEs login1000_ = _StringsMisskeyAchievementsTypesLogin1000EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteClipped1EsEs noteClipped1_ = _StringsMisskeyAchievementsTypesNoteClipped1EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteFavorited1EsEs noteFavorited1_ = _StringsMisskeyAchievementsTypesNoteFavorited1EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesMyNoteFavorited1EsEs myNoteFavorited1_ = _StringsMisskeyAchievementsTypesMyNoteFavorited1EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesProfileFilledEsEs profileFilled_ = _StringsMisskeyAchievementsTypesProfileFilledEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesMarkedAsCatEsEs markedAsCat_ = _StringsMisskeyAchievementsTypesMarkedAsCatEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing1EsEs following1_ = _StringsMisskeyAchievementsTypesFollowing1EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing10EsEs following10_ = _StringsMisskeyAchievementsTypesFollowing10EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing50EsEs following50_ = _StringsMisskeyAchievementsTypesFollowing50EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing100EsEs following100_ = _StringsMisskeyAchievementsTypesFollowing100EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing300EsEs following300_ = _StringsMisskeyAchievementsTypesFollowing300EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers1EsEs followers1_ = _StringsMisskeyAchievementsTypesFollowers1EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers10EsEs followers10_ = _StringsMisskeyAchievementsTypesFollowers10EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers50EsEs followers50_ = _StringsMisskeyAchievementsTypesFollowers50EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers100EsEs followers100_ = _StringsMisskeyAchievementsTypesFollowers100EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers300EsEs followers300_ = _StringsMisskeyAchievementsTypesFollowers300EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers500EsEs followers500_ = _StringsMisskeyAchievementsTypesFollowers500EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers1000EsEs followers1000_ = _StringsMisskeyAchievementsTypesFollowers1000EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesCollectAchievements30EsEs collectAchievements30_ = _StringsMisskeyAchievementsTypesCollectAchievements30EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesViewAchievements3minEsEs viewAchievements3min_ = _StringsMisskeyAchievementsTypesViewAchievements3minEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesILoveMisskeyEsEs iLoveMisskey_ = _StringsMisskeyAchievementsTypesILoveMisskeyEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesFoundTreasureEsEs foundTreasure_ = _StringsMisskeyAchievementsTypesFoundTreasureEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesClient30minEsEs client30min_ = _StringsMisskeyAchievementsTypesClient30minEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesClient60minEsEs client60min_ = _StringsMisskeyAchievementsTypesClient60minEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteDeletedWithin1minEsEs noteDeletedWithin1min_ = _StringsMisskeyAchievementsTypesNoteDeletedWithin1minEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesPostedAtLateNightEsEs postedAtLateNight_ = _StringsMisskeyAchievementsTypesPostedAtLateNightEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesPostedAt0min0secEsEs postedAt0min0sec_ = _StringsMisskeyAchievementsTypesPostedAt0min0secEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesSelfQuoteEsEs selfQuote_ = _StringsMisskeyAchievementsTypesSelfQuoteEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesHtl20npmEsEs htl20npm_ = _StringsMisskeyAchievementsTypesHtl20npmEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesViewInstanceChartEsEs viewInstanceChart_ = _StringsMisskeyAchievementsTypesViewInstanceChartEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEsEs outputHelloWorldOnScratchpad_ = _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesOpen3windowsEsEs open3windows_ = _StringsMisskeyAchievementsTypesOpen3windowsEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceEsEs driveFolderCircularReference_ = _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesReactWithoutReadEsEs reactWithoutRead_ = _StringsMisskeyAchievementsTypesReactWithoutReadEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesClickedClickHereEsEs clickedClickHere_ = _StringsMisskeyAchievementsTypesClickedClickHereEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesJustPlainLuckyEsEs justPlainLucky_ = _StringsMisskeyAchievementsTypesJustPlainLuckyEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesSetNameToSyuiloEsEs setNameToSyuilo_ = _StringsMisskeyAchievementsTypesSetNameToSyuiloEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1EsEs passedSinceAccountCreated1_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2EsEs passedSinceAccountCreated2_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3EsEs passedSinceAccountCreated3_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3EsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLoggedInOnBirthdayEsEs loggedInOnBirthday_ = _StringsMisskeyAchievementsTypesLoggedInOnBirthdayEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayEsEs loggedInOnNewYearsDay_ = _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesCookieClickedEsEs cookieClicked_ = _StringsMisskeyAchievementsTypesCookieClickedEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesBrainDiverEsEs brainDiver_ = _StringsMisskeyAchievementsTypesBrainDiverEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesSmashTestNotificationButtonEsEs smashTestNotificationButton_ = _StringsMisskeyAchievementsTypesSmashTestNotificationButtonEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesTutorialCompletedEsEs tutorialCompleted_ = _StringsMisskeyAchievementsTypesTutorialCompletedEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadEsEs bubbleGameExplodingHead_ = _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadEsEs._(_root);
	@override late final _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEsEs bubbleGameDoubleExplodingHead_ = _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEsEs._(_root);
}

// Path: misskey.role_.priority_
class _StringsMisskeyRolePriorityEsEs extends _StringsMisskeyRolePriorityEnUs {
	_StringsMisskeyRolePriorityEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get low => 'Baja';
	@override String get middle => 'Mediano';
	@override String get high => 'Alta';
}

// Path: misskey.role_.options_
class _StringsMisskeyRoleOptionsEsEs extends _StringsMisskeyRoleOptionsEnUs {
	_StringsMisskeyRoleOptionsEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'Explorar la línea de tiempo global';
	@override String get ltlAvailable => 'Explorar la línea de tiempo local';
	@override String get canPublicNote => 'Permitir la publicación';
	@override String get canInvite => 'Puede crear códigos de invitación';
	@override String get inviteLimit => 'Límite de invitaciones';
	@override String get inviteLimitCycle => 'Enfriamiento del límite de invitaciones';
	@override String get inviteExpirationTime => 'Intervalo de caducidad de invitaciones';
	@override String get canManageCustomEmojis => 'Administrar emojis personalizados';
	@override String get canManageAvatarDecorations => 'Administrar decoraciones de avatar';
	@override String get driveCapacity => 'Capacidad del drive';
	@override String get alwaysMarkNsfw => 'Siempre marcar archivos como NSFW';
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
	@override String get canUseTranslator => 'Uso de traductor';
	@override String get avatarDecorationLimit => 'Número máximo de decoraciones de avatar';
}

// Path: misskey.role_.condition_
class _StringsMisskeyRoleConditionEsEs extends _StringsMisskeyRoleConditionEnUs {
	_StringsMisskeyRoleConditionEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get isLocal => 'Usuario local';
	@override String get isRemote => 'Usuario remoto';
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
class _StringsMisskeyEmailFollowEsEs extends _StringsMisskeyEmailFollowEnUs {
	_StringsMisskeyEmailFollowEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'te ha seguido';
}

// Path: misskey.email_.receiveFollowRequest_
class _StringsMisskeyEmailReceiveFollowRequestEsEs extends _StringsMisskeyEmailReceiveFollowRequestEnUs {
	_StringsMisskeyEmailReceiveFollowRequestEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Has recibido una solicitud de seguimiento';
}

// Path: misskey.theme_.keys
class _StringsMisskeyThemeKeysEsEs extends _StringsMisskeyThemeKeysEnUs {
	_StringsMisskeyThemeKeysEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get accent => 'Acento';
	@override String get bg => 'Fondo';
	@override String get fg => 'Texto';
	@override String get focus => 'Enfoque';
	@override String get indicator => 'Indicador';
	@override String get panel => 'Panel';
	@override String get shadow => 'Sombra';
	@override String get header => 'Cabezal';
	@override String get navBg => 'Fondo de la barra lateral';
	@override String get navFg => 'Texto de la barra lateral';
	@override String get navHoverFg => 'Texto de la barra lateral (hover)';
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
	@override String get listItemHoverBg => 'Fondo de elemento de listas (hover)';
	@override String get driveFolderBg => 'Fondo de capeta del drive';
	@override String get wallpaperOverlay => 'Transparencia del fondo de pantalla';
	@override String get badge => 'Medalla';
	@override String get messageBg => 'Fondo de chat';
	@override String get accentDarken => 'Acento (oscuro)';
	@override String get accentLighten => 'Acento (claro)';
	@override String get fgHighlighted => 'Texto resaltado';
}

// Path: misskey.widgets_.userList_
class _StringsMisskeyWidgetsUserListEsEs extends _StringsMisskeyWidgetsUserListEnUs {
	_StringsMisskeyWidgetsUserListEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Seleccione una lista';
}

// Path: misskey.postForm_.placeholders_
class _StringsMisskeyPostFormPlaceholdersEsEs extends _StringsMisskeyPostFormPlaceholdersEnUs {
	_StringsMisskeyPostFormPlaceholdersEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get a => '¿Qué haces?';
	@override String get b => '¿Te pasó algo?';
	@override String get c => '¿Qué estás pensando?';
	@override String get d => '¿Algo que quieras decir?';
	@override String get e => 'Escribe aquí';
	@override String get f => 'Esperando a que escribas algo...';
}

// Path: misskey.pages_.blocks
class _StringsMisskeyPagesBlocksEsEs extends _StringsMisskeyPagesBlocksEnUs {
	_StringsMisskeyPagesBlocksEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get text => 'Texto';
	@override String get textarea => 'Área de texto';
	@override String get section => 'Sección';
	@override String get image => 'Imagen';
	@override String get button => 'Botón';
	@override String get note => 'Nota embebida';
	@override late final _StringsMisskeyPagesBlocksNoteEsEs note_ = _StringsMisskeyPagesBlocksNoteEsEs._(_root);
}

// Path: misskey.notification_.types_
class _StringsMisskeyNotificationTypesEsEs extends _StringsMisskeyNotificationTypesEnUs {
	_StringsMisskeyNotificationTypesEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get all => 'Todo';
	@override String get note => 'Nuevas notas';
	@override String get follow => 'Siguiendo';
	@override String get mention => 'Menciones';
	@override String get reply => 'Respuestas';
	@override String get renote => 'Renotar';
	@override String get quote => 'Citar';
	@override String get reaction => 'Reacción';
	@override String get pollEnded => 'La encuesta terminó';
	@override String get receiveFollowRequest => 'Recibió una solicitud de seguimiento';
	@override String get followRequestAccepted => 'El seguimiento fue aceptado';
	@override String get roleAssigned => 'Rol asignado';
	@override String get achievementEarned => 'Logro desbloqueado';
	@override String get app => 'Notificaciones desde aplicaciones';
}

// Path: misskey.notification_.actions_
class _StringsMisskeyNotificationActionsEsEs extends _StringsMisskeyNotificationActionsEnUs {
	_StringsMisskeyNotificationActionsEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'Te sigue de vuelta';
	@override String get reply => 'Responder';
	@override String get renote => 'Renotar';
}

// Path: misskey.deck_.columns_
class _StringsMisskeyDeckColumnsEsEs extends _StringsMisskeyDeckColumnsEnUs {
	_StringsMisskeyDeckColumnsEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

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
}

// Path: misskey.webhookSettings_.events_
class _StringsMisskeyWebhookSettingsEventsEsEs extends _StringsMisskeyWebhookSettingsEventsEnUs {
	_StringsMisskeyWebhookSettingsEventsEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Cuando se sigue a alguien';
	@override String get followed => 'Cuando se es seguido';
	@override String get note => 'Cuando se publica una nota';
	@override String get reply => 'Cuando se recibe una respuesta';
	@override String get renote => 'Cuando reciba un "re-note"';
	@override String get reaction => 'Cuando se recibe una reacción';
	@override String get mention => 'Cuando hay una mención';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _StringsMisskeyExternalResourceInstallerPluginEsEs extends _StringsMisskeyExternalResourceInstallerPluginEnUs {
	_StringsMisskeyExternalResourceInstallerPluginEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Quieres instalar este plugin?';
	@override String get metaTitle => 'Información del plugin';
}

// Path: misskey.externalResourceInstaller_.theme_
class _StringsMisskeyExternalResourceInstallerThemeEsEs extends _StringsMisskeyExternalResourceInstallerThemeEnUs {
	_StringsMisskeyExternalResourceInstallerThemeEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Quieres instalar este tema?';
	@override String get metaTitle => 'Información del tema';
}

// Path: misskey.externalResourceInstaller_.meta_
class _StringsMisskeyExternalResourceInstallerMetaEsEs extends _StringsMisskeyExternalResourceInstallerMetaEnUs {
	_StringsMisskeyExternalResourceInstallerMetaEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get base => 'Esquema de color base';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _StringsMisskeyExternalResourceInstallerVendorInfoEsEs extends _StringsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_StringsMisskeyExternalResourceInstallerVendorInfoEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Información del distribuidor';
	@override String get endpoint => 'Terminal referenciada';
	@override String get hashVerify => 'Verificación de hash';
}

// Path: misskey.externalResourceInstaller_.errors_
class _StringsMisskeyExternalResourceInstallerErrorsEsEs extends _StringsMisskeyExternalResourceInstallerErrorsEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsEsEs invalidParams_ = _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsEsEs._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEsEs resourceTypeNotSupported_ = _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEsEs._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchEsEs failedToFetch_ = _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchEsEs._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedEsEs hashUnmatched_ = _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedEsEs._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedEsEs pluginParseFailed_ = _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedEsEs._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEsEs pluginInstallFailed_ = _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEsEs._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedEsEs themeParseFailed_ = _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedEsEs._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEsEs themeInstallFailed_ = _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEsEs._(_root);
}

// Path: misskey.dataSaver_.media_
class _StringsMisskeyDataSaverMediaEsEs extends _StringsMisskeyDataSaverMediaEnUs {
	_StringsMisskeyDataSaverMediaEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cargando Multimedia';
	@override String get description => 'Desactiva la carga automática de imágenes y vídeos. Tendrás que tocar en las imágenes y vídeos ocultos para cargarlos.';
}

// Path: misskey.dataSaver_.avatar_
class _StringsMisskeyDataSaverAvatarEsEs extends _StringsMisskeyDataSaverAvatarEnUs {
	_StringsMisskeyDataSaverAvatarEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Avatares animados';
	@override String get description => 'Desactiva la animación de los avatares. Las imágenes animadas pueden llegar a ser de mayor tamaño que las normales, por lo que al desactivarlas puedes reducir el consumo de datos.';
}

// Path: misskey.dataSaver_.urlPreview_
class _StringsMisskeyDataSaverUrlPreviewEsEs extends _StringsMisskeyDataSaverUrlPreviewEnUs {
	_StringsMisskeyDataSaverUrlPreviewEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vista previa de URLs';
	@override String get description => 'Desactiva la carga de vistas previas de las URLs.';
}

// Path: misskey.dataSaver_.code_
class _StringsMisskeyDataSaverCodeEsEs extends _StringsMisskeyDataSaverCodeEnUs {
	_StringsMisskeyDataSaverCodeEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Resaltar código';
	@override String get description => 'Si se usa resaltado de código en MFM, etc., no se cargará hasta pulsar en ello. El resaltado de sintaxis requiere la descarga de archivos de definición para cada lenguaje de programación. Debido a esto, al deshabilitar la carga automática de estos archivos reducirás el consumo de datos.';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _StringsMisskeyInitialTutorialPostNoteVisibilityEsEs extends _StringsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_StringsMisskeyInitialTutorialPostNoteVisibilityEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get description => 'Puedes limitar quién puede ver tu nota.';
	@override String get public => 'Tu nota será visible para todos los usuarios.';
	@override String get home => 'Publicar solo en la línea de tiempo de Inicio. La nota se verá en tu perfil, la verán tus seguidores y también cuando sea renotada.';
	@override String get followers => 'Visible solo para seguidores. Sólo tus seguidores podrán ver la nota, y no podrá ser renotada por otras personas.';
	@override String get direct => 'Visible sólo para usuarios específicos, y el destinatario será notificado. Puede usarse como alternativa a la mensajería directa.';
	@override String get doNotSendConfidencialOnDirect1 => '¡Ten cuidado cuando vayas a enviar información sensible!';
	@override String get doNotSendConfidencialOnDirect2 => 'Los administradores del servidor pueden leer lo que escribes. Ten cuidado cuando envíes información sensible en notas directas en servidores no confiables.';
	@override String get localOnly => 'Publicando con esta opción seleccionada, la nota no se federará hacia otros servidores. Los usuarios de otros servidores no podrán ver estas notas directamente, sin importar los ajustes seleccionados más arriba.';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _StringsMisskeyInitialTutorialPostNoteCwEsEs extends _StringsMisskeyInitialTutorialPostNoteCwEnUs {
	_StringsMisskeyInitialTutorialPostNoteCwEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Alerta de contenido (CW)';
	@override String get description => 'En lugar de mostrarse el contenido de la nota, se mostrará lo que escribas en el campo "comentarios". Pulsando en "leer más" desplegará el contenido de la nota.';
	@override late final _StringsMisskeyInitialTutorialPostNoteCwExampleNoteEsEs exampleNote_ = _StringsMisskeyInitialTutorialPostNoteCwExampleNoteEsEs._(_root);
	@override String get useCases => 'Esto se usa cuando las normas del servidor lo requieren, o para ocultar spoilers o contenido sensible.';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEsEs extends _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get note => 'Ups, la he liado al abrir la tapa del natto...';
}

// Path: misskey.achievements_.types_.notes1_
class _StringsMisskeyAchievementsTypesNotes1EsEs extends _StringsMisskeyAchievementsTypesNotes1EnUs {
	_StringsMisskeyAchievementsTypesNotes1EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hola Misskey!';
	@override String get description => 'Publicaste tu primera nota';
	@override String get flavor => '¡Pasándola bien con Misskey!';
}

// Path: misskey.achievements_.types_.notes10_
class _StringsMisskeyAchievementsTypesNotes10EsEs extends _StringsMisskeyAchievementsTypesNotes10EnUs {
	_StringsMisskeyAchievementsTypesNotes10EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Algunas notas';
	@override String get description => '10 notas publicadas';
}

// Path: misskey.achievements_.types_.notes100_
class _StringsMisskeyAchievementsTypesNotes100EsEs extends _StringsMisskeyAchievementsTypesNotes100EnUs {
	_StringsMisskeyAchievementsTypesNotes100EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Muchas notas!';
	@override String get description => '100 notas publicadas';
}

// Path: misskey.achievements_.types_.notes500_
class _StringsMisskeyAchievementsTypesNotes500EsEs extends _StringsMisskeyAchievementsTypesNotes500EnUs {
	_StringsMisskeyAchievementsTypesNotes500EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Cubierto de notas!';
	@override String get description => '500 notas publicadas';
}

// Path: misskey.achievements_.types_.notes1000_
class _StringsMisskeyAchievementsTypesNotes1000EsEs extends _StringsMisskeyAchievementsTypesNotes1000EnUs {
	_StringsMisskeyAchievementsTypesNotes1000EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Una montaña de notas!';
	@override String get description => '1000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes5000_
class _StringsMisskeyAchievementsTypesNotes5000EsEs extends _StringsMisskeyAchievementsTypesNotes5000EnUs {
	_StringsMisskeyAchievementsTypesNotes5000EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Exceso de notas!';
	@override String get description => '5000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes10000_
class _StringsMisskeyAchievementsTypesNotes10000EsEs extends _StringsMisskeyAchievementsTypesNotes10000EnUs {
	_StringsMisskeyAchievementsTypesNotes10000EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Súpernota!';
	@override String get description => '10000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes20000_
class _StringsMisskeyAchievementsTypesNotes20000EsEs extends _StringsMisskeyAchievementsTypesNotes20000EnUs {
	_StringsMisskeyAchievementsTypesNotes20000EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Necesito... Más... ¡Notas!';
	@override String get description => '20000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes30000_
class _StringsMisskeyAchievementsTypesNotes30000EsEs extends _StringsMisskeyAchievementsTypesNotes30000EnUs {
	_StringsMisskeyAchievementsTypesNotes30000EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Notas! ¡Notas! ¡Notas!';
	@override String get description => '30000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes40000_
class _StringsMisskeyAchievementsTypesNotes40000EsEs extends _StringsMisskeyAchievementsTypesNotes40000EnUs {
	_StringsMisskeyAchievementsTypesNotes40000EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fábrica de notas';
	@override String get description => '40000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes50000_
class _StringsMisskeyAchievementsTypesNotes50000EsEs extends _StringsMisskeyAchievementsTypesNotes50000EnUs {
	_StringsMisskeyAchievementsTypesNotes50000EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Un planeta de notas!';
	@override String get description => '50000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes60000_
class _StringsMisskeyAchievementsTypesNotes60000EsEs extends _StringsMisskeyAchievementsTypesNotes60000EnUs {
	_StringsMisskeyAchievementsTypesNotes60000EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Un cuásar de notas!';
	@override String get description => '60000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes70000_
class _StringsMisskeyAchievementsTypesNotes70000EsEs extends _StringsMisskeyAchievementsTypesNotes70000EnUs {
	_StringsMisskeyAchievementsTypesNotes70000EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Un hoyo negro de notas!';
	@override String get description => '70000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes80000_
class _StringsMisskeyAchievementsTypesNotes80000EsEs extends _StringsMisskeyAchievementsTypesNotes80000EnUs {
	_StringsMisskeyAchievementsTypesNotes80000EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Una galaxia de notas!';
	@override String get description => '80000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes90000_
class _StringsMisskeyAchievementsTypesNotes90000EsEs extends _StringsMisskeyAchievementsTypesNotes90000EnUs {
	_StringsMisskeyAchievementsTypesNotes90000EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Todo un universo de notas!';
	@override String get description => '90000 notas publicadas';
}

// Path: misskey.achievements_.types_.notes100000_
class _StringsMisskeyAchievementsTypesNotes100000EsEs extends _StringsMisskeyAchievementsTypesNotes100000EnUs {
	_StringsMisskeyAchievementsTypesNotes100000EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => '100000 notas publicadas';
	@override String get flavor => '¿Tienes tanto para publicar?';
}

// Path: misskey.achievements_.types_.login3_
class _StringsMisskeyAchievementsTypesLogin3EsEs extends _StringsMisskeyAchievementsTypesLogin3EnUs {
	_StringsMisskeyAchievementsTypesLogin3EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiante I';
	@override String get description => 'Días desde el inicio de sesión: 3';
	@override String get flavor => 'Desde hoy, soy Misskero';
}

// Path: misskey.achievements_.types_.login7_
class _StringsMisskeyAchievementsTypesLogin7EsEs extends _StringsMisskeyAchievementsTypesLogin7EnUs {
	_StringsMisskeyAchievementsTypesLogin7EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiante II';
	@override String get description => 'Días desde el inicio de sesión: 7';
	@override String get flavor => '¿Ya te acostumbraste?';
}

// Path: misskey.achievements_.types_.login15_
class _StringsMisskeyAchievementsTypesLogin15EsEs extends _StringsMisskeyAchievementsTypesLogin15EnUs {
	_StringsMisskeyAchievementsTypesLogin15EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Principiante III';
	@override String get description => 'Días desde el inicio de sesión: 15';
}

// Path: misskey.achievements_.types_.login30_
class _StringsMisskeyAchievementsTypesLogin30EsEs extends _StringsMisskeyAchievementsTypesLogin30EnUs {
	_StringsMisskeyAchievementsTypesLogin30EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskero I';
	@override String get description => 'Días desde el inicio de sesión: 30';
}

// Path: misskey.achievements_.types_.login60_
class _StringsMisskeyAchievementsTypesLogin60EsEs extends _StringsMisskeyAchievementsTypesLogin60EnUs {
	_StringsMisskeyAchievementsTypesLogin60EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskero II';
	@override String get description => 'Días desde el inicio de sesión: 60';
}

// Path: misskey.achievements_.types_.login100_
class _StringsMisskeyAchievementsTypesLogin100EsEs extends _StringsMisskeyAchievementsTypesLogin100EnUs {
	_StringsMisskeyAchievementsTypesLogin100EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskero III';
	@override String get description => 'Días desde el inicio de sesión: 100';
	@override String get flavor => 'Para este usuario, Misskaína';
}

// Path: misskey.achievements_.types_.login200_
class _StringsMisskeyAchievementsTypesLogin200EsEs extends _StringsMisskeyAchievementsTypesLogin200EnUs {
	_StringsMisskeyAchievementsTypesLogin200EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regular I';
	@override String get description => 'Días desde el inicio de sesión: 200';
}

// Path: misskey.achievements_.types_.login300_
class _StringsMisskeyAchievementsTypesLogin300EsEs extends _StringsMisskeyAchievementsTypesLogin300EnUs {
	_StringsMisskeyAchievementsTypesLogin300EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regular II';
	@override String get description => 'Días desde el inicio de sesión: 300';
}

// Path: misskey.achievements_.types_.login400_
class _StringsMisskeyAchievementsTypesLogin400EsEs extends _StringsMisskeyAchievementsTypesLogin400EnUs {
	_StringsMisskeyAchievementsTypesLogin400EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regular III';
	@override String get description => 'Días desde el inicio de sesión: 400';
}

// Path: misskey.achievements_.types_.login500_
class _StringsMisskeyAchievementsTypesLogin500EsEs extends _StringsMisskeyAchievementsTypesLogin500EnUs {
	_StringsMisskeyAchievementsTypesLogin500EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veterano I';
	@override String get description => 'Días desde el inicio de sesión: 500';
	@override String get flavor => 'Chicos, me encantan las libretas...';
}

// Path: misskey.achievements_.types_.login600_
class _StringsMisskeyAchievementsTypesLogin600EsEs extends _StringsMisskeyAchievementsTypesLogin600EnUs {
	_StringsMisskeyAchievementsTypesLogin600EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veterano II';
	@override String get description => 'Días desde el inicio de sesión: 600';
}

// Path: misskey.achievements_.types_.login700_
class _StringsMisskeyAchievementsTypesLogin700EsEs extends _StringsMisskeyAchievementsTypesLogin700EnUs {
	_StringsMisskeyAchievementsTypesLogin700EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veterano III';
	@override String get description => 'Días desde el inicio de sesión: 700';
}

// Path: misskey.achievements_.types_.login800_
class _StringsMisskeyAchievementsTypesLogin800EsEs extends _StringsMisskeyAchievementsTypesLogin800EnUs {
	_StringsMisskeyAchievementsTypesLogin800EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maestro I';
	@override String get description => 'Días desde el inicio de sesión: 800';
}

// Path: misskey.achievements_.types_.login900_
class _StringsMisskeyAchievementsTypesLogin900EsEs extends _StringsMisskeyAchievementsTypesLogin900EnUs {
	_StringsMisskeyAchievementsTypesLogin900EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maestro II';
	@override String get description => 'Días desde el inicio de sesión: 900';
}

// Path: misskey.achievements_.types_.login1000_
class _StringsMisskeyAchievementsTypesLogin1000EsEs extends _StringsMisskeyAchievementsTypesLogin1000EnUs {
	_StringsMisskeyAchievementsTypesLogin1000EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maestro III';
	@override String get description => 'Días desde el inicio de sesión: 1000';
	@override String get flavor => '¡Gracias por usar Misskey!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _StringsMisskeyAchievementsTypesNoteClipped1EsEs extends _StringsMisskeyAchievementsTypesNoteClipped1EnUs {
	_StringsMisskeyAchievementsTypesNoteClipped1EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No puedo evitar clipearte...';
	@override String get description => 'Hacer un clip por primera vez';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _StringsMisskeyAchievementsTypesNoteFavorited1EsEs extends _StringsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesNoteFavorited1EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Contemplando las estrellas';
	@override String get description => 'Poner una nota como favorito por primera vez';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _StringsMisskeyAchievementsTypesMyNoteFavorited1EsEs extends _StringsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesMyNoteFavorited1EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Quiero una estrella!';
	@override String get description => 'Tu nota ha sido marcada como favorito por primera vez';
}

// Path: misskey.achievements_.types_.profileFilled_
class _StringsMisskeyAchievementsTypesProfileFilledEsEs extends _StringsMisskeyAchievementsTypesProfileFilledEnUs {
	_StringsMisskeyAchievementsTypesProfileFilledEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Listo!';
	@override String get description => 'Perfil completado';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _StringsMisskeyAchievementsTypesMarkedAsCatEsEs extends _StringsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_StringsMisskeyAchievementsTypesMarkedAsCatEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Soy un gato';
	@override String get description => 'Configurar la cuenta como cuenta de un gato';
	@override String get flavor => 'Aún no tengo nombre';
}

// Path: misskey.achievements_.types_.following1_
class _StringsMisskeyAchievementsTypesFollowing1EsEs extends _StringsMisskeyAchievementsTypesFollowing1EnUs {
	_StringsMisskeyAchievementsTypesFollowing1EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Primera vez siguiendo a alguien';
	@override String get description => 'Seguir a un usuario';
}

// Path: misskey.achievements_.types_.following10_
class _StringsMisskeyAchievementsTypesFollowing10EsEs extends _StringsMisskeyAchievementsTypesFollowing10EnUs {
	_StringsMisskeyAchievementsTypesFollowing10EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ahí la llevas, ahí la llevas...';
	@override String get description => '10 usuarios seguidos';
}

// Path: misskey.achievements_.types_.following50_
class _StringsMisskeyAchievementsTypesFollowing50EsEs extends _StringsMisskeyAchievementsTypesFollowing50EnUs {
	_StringsMisskeyAchievementsTypesFollowing50EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Un puñado de amigos!';
	@override String get description => '50 cuentas seguidas';
}

// Path: misskey.achievements_.types_.following100_
class _StringsMisskeyAchievementsTypesFollowing100EsEs extends _StringsMisskeyAchievementsTypesFollowing100EnUs {
	_StringsMisskeyAchievementsTypesFollowing100EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '100 amigos';
	@override String get description => '100 cuentas seguidas';
}

// Path: misskey.achievements_.types_.following300_
class _StringsMisskeyAchievementsTypesFollowing300EsEs extends _StringsMisskeyAchievementsTypesFollowing300EnUs {
	_StringsMisskeyAchievementsTypesFollowing300EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Sobrecarga de amigos!';
	@override String get description => '300 cuentas seguidas';
}

// Path: misskey.achievements_.types_.followers1_
class _StringsMisskeyAchievementsTypesFollowers1EsEs extends _StringsMisskeyAchievementsTypesFollowers1EnUs {
	_StringsMisskeyAchievementsTypesFollowers1EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Tu primer seguidor!';
	@override String get description => '1 seguidor ganado';
}

// Path: misskey.achievements_.types_.followers10_
class _StringsMisskeyAchievementsTypesFollowers10EsEs extends _StringsMisskeyAchievementsTypesFollowers10EnUs {
	_StringsMisskeyAchievementsTypesFollowers10EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Sígueme!';
	@override String get description => '10 seguidores ganados';
}

// Path: misskey.achievements_.types_.followers50_
class _StringsMisskeyAchievementsTypesFollowers50EsEs extends _StringsMisskeyAchievementsTypesFollowers50EnUs {
	_StringsMisskeyAchievementsTypesFollowers50EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Viniendo en manada';
	@override String get description => '50 seguidores ganados';
}

// Path: misskey.achievements_.types_.followers100_
class _StringsMisskeyAchievementsTypesFollowers100EsEs extends _StringsMisskeyAchievementsTypesFollowers100EnUs {
	_StringsMisskeyAchievementsTypesFollowers100EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Popular';
	@override String get description => '100 cuentas seguidas';
}

// Path: misskey.achievements_.types_.followers300_
class _StringsMisskeyAchievementsTypesFollowers300EsEs extends _StringsMisskeyAchievementsTypesFollowers300EnUs {
	_StringsMisskeyAchievementsTypesFollowers300EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Por favor, hagan una fila';
	@override String get description => '300 seguidores ganados';
}

// Path: misskey.achievements_.types_.followers500_
class _StringsMisskeyAchievementsTypesFollowers500EsEs extends _StringsMisskeyAchievementsTypesFollowers500EnUs {
	_StringsMisskeyAchievementsTypesFollowers500EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Toda una torre de radio!';
	@override String get description => '500 seguidores ganados';
}

// Path: misskey.achievements_.types_.followers1000_
class _StringsMisskeyAchievementsTypesFollowers1000EsEs extends _StringsMisskeyAchievementsTypesFollowers1000EnUs {
	_StringsMisskeyAchievementsTypesFollowers1000EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '"Influyente"';
	@override String get description => '1000 seguidores gandos';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _StringsMisskeyAchievementsTypesCollectAchievements30EsEs extends _StringsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_StringsMisskeyAchievementsTypesCollectAchievements30EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Coleccionista';
	@override String get description => '30 logros ganados';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _StringsMisskeyAchievementsTypesViewAchievements3minEsEs extends _StringsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_StringsMisskeyAchievementsTypesViewAchievements3minEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Te gustan los logros!';
	@override String get description => 'Mirando tus logros por 3 minutos';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _StringsMisskeyAchievementsTypesILoveMisskeyEsEs extends _StringsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_StringsMisskeyAchievementsTypesILoveMisskeyEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡AMO Misskey!';
	@override String get description => '"I ❤ #Misskey" Publicado';
	@override String get flavor => 'El equipo de desarrollo de Misskey, en verdad, ¡aprecia tu apoyo!';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _StringsMisskeyAchievementsTypesFoundTreasureEsEs extends _StringsMisskeyAchievementsTypesFoundTreasureEnUs {
	_StringsMisskeyAchievementsTypesFoundTreasureEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Búsqueda del tesoro';
	@override String get description => 'Encontraste un tesoro';
}

// Path: misskey.achievements_.types_.client30min_
class _StringsMisskeyAchievementsTypesClient30minEsEs extends _StringsMisskeyAchievementsTypesClient30minEnUs {
	_StringsMisskeyAchievementsTypesClient30minEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un descansito';
	@override String get description => '30 minutos dedicados a Misskey';
}

// Path: misskey.achievements_.types_.client60min_
class _StringsMisskeyAchievementsTypesClient60minEsEs extends _StringsMisskeyAchievementsTypesClient60minEnUs {
	_StringsMisskeyAchievementsTypesClient60minEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Viendo mucho Misskey.';
	@override String get description => 'Dejar abierto Misskey por al menos 60 minutos';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _StringsMisskeyAchievementsTypesNoteDeletedWithin1minEsEs extends _StringsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_StringsMisskeyAchievementsTypesNoteDeletedWithin1minEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ah... Mejor no...';
	@override String get description => 'Borrar una nota antes que de pase 1 minuto';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _StringsMisskeyAchievementsTypesPostedAtLateNightEsEs extends _StringsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_StringsMisskeyAchievementsTypesPostedAtLateNightEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nocturno';
	@override String get description => 'Una nota publicada por la noche';
	@override String get flavor => '¡Ya casi es hora de dormir!';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _StringsMisskeyAchievementsTypesPostedAt0min0secEsEs extends _StringsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_StringsMisskeyAchievementsTypesPostedAt0min0secEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reloj parlante';
	@override String get description => 'Publicar una nota a las 00:00 de la madrugada';
	@override String get flavor => 'Tic, tic, tic ¡TUUUUUN!';
}

// Path: misskey.achievements_.types_.selfQuote_
class _StringsMisskeyAchievementsTypesSelfQuoteEsEs extends _StringsMisskeyAchievementsTypesSelfQuoteEnUs {
	_StringsMisskeyAchievementsTypesSelfQuoteEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Autoreferencia';
	@override String get description => 'Citar tu propia nota';
}

// Path: misskey.achievements_.types_.htl20npm_
class _StringsMisskeyAchievementsTypesHtl20npmEsEs extends _StringsMisskeyAchievementsTypesHtl20npmEnUs {
	_StringsMisskeyAchievementsTypesHtl20npmEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Línea de tiempo fluyendo';
	@override String get description => 'La velocidad de tu línea de tiempo excede las 20 npm (notas por minuto)';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _StringsMisskeyAchievementsTypesViewInstanceChartEsEs extends _StringsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_StringsMisskeyAchievementsTypesViewInstanceChartEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analista';
	@override String get description => 'Gráficas de la instancia mostradas';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEsEs extends _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hola mundo!';
	@override String get description => 'Escribir "hello world" en el compositor';
}

// Path: misskey.achievements_.types_.open3windows_
class _StringsMisskeyAchievementsTypesOpen3windowsEsEs extends _StringsMisskeyAchievementsTypesOpen3windowsEnUs {
	_StringsMisskeyAchievementsTypesOpen3windowsEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Multiventana';
	@override String get description => 'Tener más de 3 ventanas al mismo tiempo';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceEsEs extends _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_StringsMisskeyAchievementsTypesDriveFolderCircularReferenceEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Referencia circular';
	@override String get description => 'Intento de crear carpetas recursivamente';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _StringsMisskeyAchievementsTypesReactWithoutReadEsEs extends _StringsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_StringsMisskeyAchievementsTypesReactWithoutReadEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Sí lo leíste bien?';
	@override String get description => 'Reaccionar a los 3 segundos de publicación de una nota con más de 100 caracteres';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _StringsMisskeyAchievementsTypesClickedClickHereEsEs extends _StringsMisskeyAchievementsTypesClickedClickHereEnUs {
	_StringsMisskeyAchievementsTypesClickedClickHereEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pícale aquí';
	@override String get description => 'Le picó ahí';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _StringsMisskeyAchievementsTypesJustPlainLuckyEsEs extends _StringsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_StringsMisskeyAchievementsTypesJustPlainLuckyEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pura suerte';
	@override String get description => 'Obtenido con una probabilidad del 0.01% cada 10 segundos';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _StringsMisskeyAchievementsTypesSetNameToSyuiloEsEs extends _StringsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_StringsMisskeyAchievementsTypesSetNameToSyuiloEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Complejo de superioridad';
	@override String get description => 'Configurar el nombre como \'Syuilo\'';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1EsEs extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated1EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Primer aniversario';
	@override String get description => 'Pasó un año desde la creación de la cuenta';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2EsEs extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated2EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Segundo aniversario';
	@override String get description => 'Pasaron dos años desde la creación de la cuenta';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3EsEs extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated3EsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tercer aniversario';
	@override String get description => 'Pasaron tres años desde la creación de la cuenta';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _StringsMisskeyAchievementsTypesLoggedInOnBirthdayEsEs extends _StringsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnBirthdayEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Feliz cumpleaños!';
	@override String get description => 'En linea el día de tu cumpleaños';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayEsEs extends _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Feliz Año Nuevo!';
	@override String get description => 'En linea en año nuevo';
	@override String get flavor => '¡Gracias por tu apoyo a la instancia durante todo este año!';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _StringsMisskeyAchievementsTypesCookieClickedEsEs extends _StringsMisskeyAchievementsTypesCookieClickedEnUs {
	_StringsMisskeyAchievementsTypesCookieClickedEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un juego para picarle a una galleta';
	@override String get description => 'Picaste una galleta';
	@override String get flavor => '¿Está mal este juego?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _StringsMisskeyAchievementsTypesBrainDiverEsEs extends _StringsMisskeyAchievementsTypesBrainDiverEnUs {
	_StringsMisskeyAchievementsTypesBrainDiverEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Publicaste un vínculo a "Brain Diver"';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _StringsMisskeyAchievementsTypesSmashTestNotificationButtonEsEs extends _StringsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_StringsMisskeyAchievementsTypesSmashTestNotificationButtonEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobrecarga de pruebas';
	@override String get description => 'Envía muchas notificaciones de prueba en un corto espacio de tiempo';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _StringsMisskeyAchievementsTypesTutorialCompletedEsEs extends _StringsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_StringsMisskeyAchievementsTypesTutorialCompletedEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Diploma del Curso Básico de Misskey';
	@override String get description => 'Tutorial completado';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadEsEs extends _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_StringsMisskeyAchievementsTypesBubbleGameExplodingHeadEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEsEs extends _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Doble 🤯';
}

// Path: misskey.pages_.blocks.note_
class _StringsMisskeyPagesBlocksNoteEsEs extends _StringsMisskeyPagesBlocksNoteEnUs {
	_StringsMisskeyPagesBlocksNoteEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get id => 'Id de la nota';
	@override String get idDescription => 'Pega la URL de la nota para configurarla';
	@override String get detailed => 'Ver Detalles';
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsEsEs extends _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsInvalidParamsEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Parámetros inválidos';
	@override String get description => 'No hay información suficiente para cargar datos de un sitio externo. Por favor, confirma la URL introducida.';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEsEs extends _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Este recurso externo no es compatible';
	@override String get description => 'El tipo de este recurso externo no es compatible. Por favor, contacta con el administrador del sitio.';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchEsEs extends _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsFailedToFetchEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No se pudo obtener los datos';
	@override String get fetchErrorDescription => 'Ha ocurrido un error al comunicarse con el sitio externo. Si no se soluciona tras intentarlo otra vez, por favor, contacta con el administrador del sitio.';
	@override String get parseErrorDescription => 'Ha ocurrido un error al procesar los datos obtenidos del sitio externo. Por favor, contacta con el administrador del sitio.';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedEsEs extends _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Verificación de datos fallida';
	@override String get description => 'Ha ocurrido un error al verificar la integridad de los datos obtenidos. Por seguridad, la instalación no se puede realizar. Por favor, contacta con el administrador del sitio.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedEsEs extends _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Error de AiScript';
	@override String get description => 'Los datos se han obtenido correctamente, pero ha ocurrido un error de AiScript al procesarlos. Por favor, contacta con el autor del plugin. Se pueden ver más detalles del error en la consola de Javascript.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEsEs extends _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Instalación del plugin fallida.';
	@override String get description => 'Ha ocurrido un problema al instalar el plugin. Por favor, inténtalo de nuevo. Se pueden ver más detalles del error en la consola de Javascript.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedEsEs extends _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Análisis del tema fallido';
	@override String get description => 'Los datos se han obtenido correctamente, pero ha ocurrido un error al analizar el tema. Por favor, contacta con el autor. Se pueden ver más detalles del error en la consola de Javascript.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEsEs extends _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Instalación de tema fallida';
	@override String get description => 'Ha ocurrido un problema al instalar el tema. Por favor, inténtalo de nuevo. Se pueden ver más detalles del error en la consola de Javascript.';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _StringsMisskeyInitialTutorialPostNoteCwExampleNoteEsEs extends _StringsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_StringsMisskeyInitialTutorialPostNoteCwExampleNoteEsEs._(_StringsEsEs root) : this._root = root, super._(root);

	@override final _StringsEsEs _root; // ignore: unused_field

	// Translations
	@override String get cw => '¡Esto te hará tener hambre!';
	@override String get note => 'Acabo de comerme un donut de chocolate glaseado 🍩😋';
}
