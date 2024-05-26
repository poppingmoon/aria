///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint

part of 'strings.g.dart';

// Path: <root>
class _StringsPtPt extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsPtPt.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ptPt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <pt-PT>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	@override late final _StringsPtPt _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAriaPtPt aria = _StringsAriaPtPt._(_root);
	@override late final _StringsMisskeyPtPt misskey = _StringsMisskeyPtPt._(_root);
}

// Path: aria
class _StringsAriaPtPt extends _StringsAriaEnUs {
	_StringsAriaPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Tem certeza que quer deixar de seguir '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria é traduzido para várias línguas por voluntários. Você pode ajudar com as traduções em '),
		link,
		const TextSpan(text: '.'),
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		const TextSpan(text: 'Pessoas Online '),
		n,
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Repostado por '),
		user,
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Gostaria de deixar de seguir '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' disse algo'),
	]);
}

// Path: misskey
class _StringsMisskeyPtPt extends _StringsMisskeyEnUs {
	_StringsMisskeyPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Português';
	@override String get headlineMisskey => 'Uma rede ligada por notas';
	@override String get introMisskey => 'Bem-vindo! O Misskey é um serviço de microblog descentralizado de código aberto.\nCrie "notas" para compartilhar o que está acontecendo agora ou para se expressar com todos à sua volta 📡\nVocê também pode adicionar rapidamente reações às notas de outras pessoas usando a função "Reações" 👍\nVamos explorar um novo mundo 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} é um dos servidores da plataforma de código aberto <b>Misskey</b>.';
	@override String monthAndDay({required Object day, required Object month}) => '${day}/${month}';
	@override String get search => 'Pesquisar';
	@override String get notifications => 'Notificações';
	@override String get username => 'Nome de usuário';
	@override String get password => 'Senha';
	@override String get forgotPassword => 'Esqueci-me da senha';
	@override String get fetchingAsApObject => 'Buscando no Fediverso';
	@override String get ok => 'OK';
	@override String get gotIt => 'Entendi';
	@override String get cancel => 'Cancelar';
	@override String get noThankYou => 'Não, obrigado';
	@override String get enterUsername => 'Digite o nome de usuário';
	@override String renotedBy({required Object user}) => 'Repostado por ${user}';
	@override String get noNotes => 'Sem notas';
	@override String get noNotifications => 'Sem notificações';
	@override String get instance => 'Instância';
	@override String get settings => 'Configurações';
	@override String get notificationSettings => 'Configurações de notificação';
	@override String get basicSettings => 'Configurações básicas';
	@override String get otherSettings => 'Outras configurações';
	@override String get openInWindow => 'Abrir em um janela';
	@override String get profile => 'Perfil';
	@override String get timeline => 'Linha do tempo';
	@override String get noAccountDescription => 'Este usuário não tem uma descrição.';
	@override String get login => 'Iniciar sessão';
	@override String get loggingIn => 'Iniciando sessão…';
	@override String get logout => 'Sair';
	@override String get signup => 'Registrar-se';
	@override String get uploading => 'Enviando…';
	@override String get save => 'Salvar';
	@override String get users => 'Usuários';
	@override String get addUser => 'Adicionar usuário';
	@override String get favorite => 'Adicionar aos favoritos';
	@override String get favorites => 'Favoritos';
	@override String get unfavorite => 'Remover dos favoritos';
	@override String get favorited => 'Adicionado aos favoritos.';
	@override String get alreadyFavorited => 'Já adicionado aos favoritos.';
	@override String get cantFavorite => 'Não foi possível adicionar aos favoritos.';
	@override String get pin => 'Fixar no perfil';
	@override String get unpin => 'Desafixar do perfil';
	@override String get copyContent => 'Copiar conteúdos';
	@override String get copyLink => 'Copiar link';
	@override String get copyLinkRenote => 'Copiar o link da repostagem';
	@override String get delete => 'Excluir';
	@override String get deleteAndEdit => 'Excluir e editar';
	@override String get deleteAndEditConfirm => 'Deseja excluir esta nota e editá-la novamente? Todas as reações, compartilhamentos e respostas a esta nota também serão excluídas.';
	@override String get addToList => 'Adicionar a lista';
	@override String get addToAntenna => 'Adicionar à antena';
	@override String get sendMessage => 'Enviar mensagem';
	@override String get copyRSS => 'Copiar RSS';
	@override String get copyUsername => 'Copiar nome de utilizador';
	@override String get copyUserId => 'Copiar ID do utilizador';
	@override String get copyNoteId => 'Copiar ID da publicação';
	@override String get copyFileId => 'Copiar o ID do arquivo';
	@override String get copyFolderId => 'Copiar o ID da pasta';
	@override String get copyProfileUrl => 'Copiar a URL do perfil';
	@override String get searchUser => 'Pesquisar usuário';
	@override String get reply => 'Responder';
	@override String get loadMore => 'Carregar mais';
	@override String get showMore => 'Ver mais';
	@override String get showLess => 'Fechar';
	@override String get youGotNewFollower => 'Você tem um novo seguidor';
	@override String get receiveFollowRequest => 'Pedido de seguidor recebido';
	@override String get followRequestAccepted => 'Pedido de seguidor aceito';
	@override String get mention => 'Menção';
	@override String get mentions => 'Menções';
	@override String get directNotes => 'Notas diretas';
	@override String get importAndExport => 'Importar/Exportar';
	@override String get import => 'Importar';
	@override String get export => 'Exportar';
	@override String get files => 'Arquivos';
	@override String get download => 'Descarregar';
	@override String driveFileDeleteConfirm({required Object name}) => 'Deseja excluir o arquivo \'${name}\'? Qualquer conteúdo que use este arquivo também será removido.';
	@override String unfollowConfirm({required Object name}) => 'Gostaria de deixar de seguir ${name}?';
	@override String get exportRequested => 'A sua solicitação de exportação foi enviada. Isso pode levar algum tempo. Assim que a exportação estiver concluída, ela será adicionada ao seu drive.';
	@override String get importRequested => 'A sua solicitação de importação foi enviada. Isso pode levar algum tempo.';
	@override String get lists => 'Listas';
	@override String get noLists => 'Não possui nenhuma lista';
	@override String get note => 'Post';
	@override String get notes => 'Posts';
	@override String get following => 'Seguindo';
	@override String get followers => 'Seguidores';
	@override String get followsYou => 'Te seguem';
	@override String get createList => 'Criar lista';
	@override String get manageLists => 'Gerenciar listas';
	@override String get error => 'Erro';
	@override String get somethingHappened => 'Ocorreu um erro';
	@override String get retry => 'Tente novamente';
	@override String get pageLoadError => 'Ocorreu um erro ao carregar a página.';
	@override String get pageLoadErrorDescription => 'Isso geralmente acontece devido ao cache do navegador ou da rede. Tente limpar o cache ou aguarde um pouco antes de tentar novamente.';
	@override String get serverIsDead => 'Não há resposta do servidor. Aguarde um momento e tente novamente.';
	@override String get youShouldUpgradeClient => 'Para visualizar esta página, recarregue-a e utilize a nova versão do cliente.';
	@override String get enterListName => 'Insira um nome para a lista';
	@override String get privacy => 'Privacidade';
	@override String get makeFollowManuallyApprove => 'Pedidos de seguidores precisam ser aprovados';
	@override String get defaultNoteVisibility => 'Visibilidade padrão';
	@override String get follow => 'Seguindo';
	@override String get followRequest => 'Enviar pedido de seguidor';
	@override String get followRequests => 'Pedidos de seguidor';
	@override String get unfollow => 'Deixar de seguir';
	@override String get followRequestPending => 'Pedido de seguidor pendente';
	@override String get enterEmoji => 'Inserir emoji';
	@override String get renote => 'Repostar';
	@override String get unrenote => 'Remover repostagem';
	@override String get renoted => 'Repostado';
	@override String get cantRenote => 'Não é possível repostar esta postagem';
	@override String get cantReRenote => 'Não pode repostar este repost';
	@override String get quote => 'Citar';
	@override String get inChannelRenote => 'Repostar no canal';
	@override String get inChannelQuote => 'Citar no canal';
	@override String get pinnedNote => 'Nota fixada';
	@override String get pinned => 'Fixar no perfil';
	@override String get you => 'Você';
	@override String get clickToShow => 'Clique para ver';
	@override String get sensitive => 'Conteúdo sensível';
	@override String get add => 'Adicionar';
	@override String get reaction => 'Reações';
	@override String get reactions => 'Reações';
	@override String get reactionSettingDescription2 => 'Arraste para reordenar, clique para excluir, pressione + para adicionar.';
	@override String get rememberNoteVisibility => 'Lembrar das configurações de visibilidade de notas';
	@override String get attachCancel => 'Remover anexo';
	@override String get markAsSensitive => 'Marcar como sensível';
	@override String get unmarkAsSensitive => 'Desmarcar como sensível';
	@override String get enterFileName => 'Digite o nome do arquivo';
	@override String get mute => 'Mutar';
	@override String get unmute => 'Desmutar';
	@override String get renoteMute => 'Mutar repostagens';
	@override String get renoteUnmute => 'Reativar repostagens';
	@override String get block => 'Bloquear';
	@override String get unblock => 'Desbloquear';
	@override String get suspend => 'Suspender';
	@override String get unsuspend => 'Cancelar suspensão';
	@override String get blockConfirm => 'Tem certeza que gostaria de bloquear esta conta?';
	@override String get unblockConfirm => 'Tem certeza que gostaria de desbloquear esta conta?';
	@override String get suspendConfirm => 'Tem certeza que gostaria de suspender esta conta?';
	@override String get unsuspendConfirm => 'Tem certeza que gostaria de cancelar a suspensão desta conta?';
	@override String get selectList => 'Selecione uma lista';
	@override String get editList => 'Editar lista';
	@override String get selectChannel => 'Selecionar canal';
	@override String get selectAntenna => 'Selecione uma antena';
	@override String get editAntenna => 'Editar antena';
	@override String get selectWidget => 'Selecione um widget';
	@override String get editWidgets => 'Editar widgets';
	@override String get editWidgetsExit => 'Pronto';
	@override String get customEmojis => 'Emoji personalizado';
	@override String get emoji => 'Emoji';
	@override String get emojis => 'Emojis';
	@override String get emojiName => 'Nome do Emoji';
	@override String get emojiUrl => 'URL do Emoji';
	@override String get addEmoji => 'Adicionar um Emoji';
	@override String get settingGuide => 'Guia de configuração';
	@override String get cacheRemoteFiles => 'Cache de arquivos remotos';
	@override String get cacheRemoteFilesDescription => 'Ao desativar esta configuração, os arquivos remotos não serão mais armazenados em cache e serão vinculados diretamente. Isso economizará espaço de armazenamento no servidor, mas os thumbnails não serão gerados, o que pode aumentar o tráfego de dados.';
	@override String get youCanCleanRemoteFilesCache => 'Pode excluir todos os caches com o botão 🗑️ de gestão de arquivos.';
	@override String get cacheRemoteSensitiveFiles => 'Fazer cache de arquivos remotos sensíveis';
	@override String get cacheRemoteSensitiveFilesDescription => 'Desativar essa configuração faz com que arquivos remotos sensíveis sejam vinculados diretamente em vez de armazenados em cache.';
	@override String get flagAsBot => 'Marcar conta como robô';
	@override String get flagAsBotDescription => 'Se esta conta for operada por uma aplicação, ative esta opção. Ao ativá-la, ela servirá como um sinalizador para evitar reações em cadeia e ajudar outros desenvolvedores. Além disso, ajustará o tratamento da conta no sistema do Misskey para que se adeque a um Bot.';
	@override String get flagAsCat => 'Marcar conta como gato';
	@override String get flagAsCatDescription => 'Ative esta opção para marcar essa conta como gato';
	@override String get flagShowTimelineReplies => 'Mostrar respostas na linha de tempo';
	@override String get flagShowTimelineRepliesDescription => 'Quando ativado, a linha do tempo mostra as respostas às outras notas do utilizador, além da nota do utilizador.';
	@override String get autoAcceptFollowed => 'Aprove automaticamente os seguidores dos seguintes utilizadores';
	@override String get addAccount => 'Adicionar Conta';
	@override String get reloadAccountsList => 'Recarregar lista de contas';
	@override String get loginFailed => 'Falha ao logar';
	@override String get showOnRemote => 'Exibir remotamente';
	@override String get general => 'Geral';
	@override String get wallpaper => 'Papel de parede';
	@override String get setWallpaper => 'Definir papel de parede';
	@override String get removeWallpaper => 'Remover papel de parede';
	@override String searchWith({required Object q}) => 'Buscar: ${q}';
	@override String get youHaveNoLists => 'Não tem nenhuma lista';
	@override String followConfirm({required Object name}) => 'Tem certeza que quer deixar de seguir ${name}?';
	@override String get proxyAccount => 'Conta proxy';
	@override String get proxyAccountDescription => 'Uma conta de proxy é uma conta que assume o acompanhamento remoto de um usuário sob certas condições específicas. Por exemplo, quando um usuário inclui um usuário remoto em uma lista, mas ninguém na lista está seguindo o usuário remoto, a atividade não é entregue ao servidor. Nesse caso, a conta de proxy entra em ação para seguir o usuário remoto em vez disso.';
	@override String get host => 'Host';
	@override String get selectUser => 'Selecionar usuário';
	@override String get recipient => 'Destinatário';
	@override String get annotation => 'Anotação';
	@override String get federation => 'Federação';
	@override String get instances => 'Instâncias';
	@override String get registeredAt => 'Registrado em';
	@override String get latestRequestReceivedAt => 'Última solicitação recebida';
	@override String get latestStatus => 'Status mais recente';
	@override String get storageUsage => 'Uso de armazenamento';
	@override String get charts => 'Gráfico';
	@override String get perHour => 'Por Hora';
	@override String get perDay => 'Por dia';
	@override String get stopActivityDelivery => 'Parar a entrega de atividades';
	@override String get blockThisInstance => 'Bloquear esta instância';
	@override String get operations => 'Operações';
	@override String get software => 'Software';
	@override String get version => 'Versão';
	@override String get metadata => 'Metadados';
	@override String withNFiles({required Object n}) => '${n} arquivo(s)';
	@override String get monitor => 'monitor';
	@override String get jobQueue => 'Fila de tarefas';
	@override String get cpuAndMemory => 'CPU e memória';
	@override String get network => 'Rede';
	@override String get disk => 'Disco';
	@override String get instanceInfo => 'Informações da instância';
	@override String get statistics => 'Estatísticas';
	@override String get clearQueue => 'Limpar a fila';
	@override String get clearQueueConfirmTitle => 'Deseja limpar a fila?';
	@override String get clearQueueConfirmText => 'As postagens não entregues deixarão de ser enviadas. Geralmente, não é necessário realizar essa operação.';
	@override String get clearCachedFiles => 'Limpar o cache';
	@override String get clearCachedFilesConfirm => 'Deseja excluir todos os arquivos remotos em cache?';
	@override String get blockedInstances => 'Instância bloqueada';
	@override String get blockedInstancesDescription => 'Configure os hosts dos servidores que deseja bloquear, separando-os por quebras de linha. Os servidores bloqueados não poderão interagir com este servidor, incluindo os subdomínios.';
	@override String get muteAndBlock => 'Silenciar e bloquear';
	@override String get mutedUsers => 'Usuários silenciados';
	@override String get blockedUsers => 'Usuários bloqueados';
	@override String get noUsers => 'Sem usuários';
	@override String get editProfile => 'Editar Perfil';
	@override String get noteDeleteConfirm => 'Deseja excluir esta nota?';
	@override String get pinLimitExceeded => 'Não é possível fixar novas notas';
	@override String get intro => 'A instalação do Misskey está completa! Crie uma conta de administrador.';
	@override String get done => 'Concluído';
	@override String get processing => 'Em Progresso';
	@override String get preview => 'Pré-visualizar';
	@override String get default_ => 'Predefinição';
	@override String defaultValueIs({required Object value}) => 'Predefinição:  ${value}';
	@override String get noCustomEmojis => 'Não há emojis';
	@override String get noJobs => 'Não há tarefas';
	@override String get federating => 'Federando';
	@override String get blocked => 'Bloqueado';
	@override String get suspended => 'Suspenso';
	@override String get all => 'Todos';
	@override String get subscribing => 'Inscrito';
	@override String get publishing => 'Publicando';
	@override String get notResponding => 'Sem resposta';
	@override String get instanceFollowing => 'Seguir a instância';
	@override String get instanceFollowers => 'Seguidores da instância';
	@override String get instanceUsers => 'Usuários da instância';
	@override String get changePassword => 'Mudar senha';
	@override String get security => 'Segurança';
	@override String get retypedNotMatch => 'As informações inseridas não coincidem.';
	@override String get currentPassword => 'Senha atual';
	@override String get newPassword => 'Nova senha';
	@override String get newPasswordRetype => 'Nova senha (digite novamente)';
	@override String get attachFile => 'Anexar arquivo';
	@override String get more => 'Mais!';
	@override String get featured => 'Destaques';
	@override String get usernameOrUserId => 'Nome de usuário ou ID do usuário';
	@override String get noSuchUser => 'Usuário não encontrado';
	@override String get lookup => 'Buscando';
	@override String get announcements => 'Avisos';
	@override String get imageUrl => 'URL da imagem';
	@override String get remove => 'Remover';
	@override String get removed => 'Removido';
	@override String removeAreYouSure({required Object x}) => 'Deseja excluir "${x}"?';
	@override String deleteAreYouSure({required Object x}) => 'Deseja excluir "${x}"?';
	@override String get resetAreYouSure => 'Deseja reiniciar?';
	@override String get saved => 'Salvo';
	@override String get messaging => 'Chat';
	@override String get upload => 'Fazer upload';
	@override String get keepOriginalUploading => 'Manter a imagem original';
	@override String get keepOriginalUploadingDescription => 'Ao fazer o upload de uma imagem, ela será mantida em sua versão original. Caso desative esta opção, o navegador irá gerar uma versão da imagem otimizada para publicação na web durante o upload.';
	@override String get fromDrive => 'Do drive';
	@override String get fromUrl => 'Da URL';
	@override String get uploadFromUrl => 'Enviar por URL';
	@override String get uploadFromUrlDescription => 'URL do arquivo que você deseja enviar';
	@override String get uploadFromUrlRequested => 'Upload solicitado';
	@override String get uploadFromUrlMayTakeTime => 'Pode levar algum tempo para que o upload seja concluído.';
	@override String get explore => 'Explorar';
	@override String get messageRead => 'Lida';
	@override String get noMoreHistory => 'Não existe histórico anterior';
	@override String get startMessaging => 'Iniciar conversação';
	@override String nUsersRead({required Object n}) => '${n} Pessoas leem';
	@override String agreeTo({required Object x0}) => 'Eu concordo com ${x0}';
	@override String get agree => 'Concordar';
	@override String get agreeBelow => 'Eu concordo com o seguinte';
	@override String get basicNotesBeforeCreateAccount => 'Observações importantes';
	@override String get termsOfService => 'Termos de Uso';
	@override String get start => 'começar';
	@override String get home => 'Início';
	@override String get remoteUserCaution => 'As informações estão incompletas porque é um utilizador remoto.';
	@override String get activity => 'atividade';
	@override String get images => 'imagem';
	@override String get image => 'imagem';
	@override String get birthday => 'Aniversário';
	@override String yearsOld({required Object age}) => '${age} anos';
	@override String get registeredDate => 'Data de registro';
	@override String get location => 'Localização';
	@override String get theme => 'tema';
	@override String get themeForLightMode => 'Temas usados ​​no modo de luz';
	@override String get themeForDarkMode => 'Temas usados ​​no modo escuro';
	@override String get light => 'Claro';
	@override String get dark => 'Escuro';
	@override String get lightThemes => 'Tema claro';
	@override String get darkThemes => 'Tema escuro';
	@override String get syncDeviceDarkMode => 'Sincronize com o modo escuro do dispositivo';
	@override String get drive => 'Drive';
	@override String get fileName => 'Nome do Ficheiro';
	@override String get selectFile => 'Selecione os arquivos';
	@override String get selectFiles => 'Selecione os arquivos';
	@override String get selectFolder => 'Selecionar uma pasta';
	@override String get selectFolders => 'Selecionar uma pasta';
	@override String get renameFile => 'Renomear ficheiro';
	@override String get folderName => 'Nome da pasta';
	@override String get createFolder => 'Criar pasta';
	@override String get renameFolder => 'Renomear Pasta';
	@override String get deleteFolder => 'Excluir pasta';
	@override String get addFile => 'Adicionar arquivo';
	@override String get emptyDrive => 'O drive está vazio';
	@override String get emptyFolder => 'A pasta está vazia';
	@override String get unableToDelete => 'Não é possível excluir';
	@override String get inputNewFileName => 'Por favor, digite um novo nome para a pasta!';
	@override String get inputNewDescription => 'Insira uma nova legenda';
	@override String get inputNewFolderName => 'Por favor, digite um novo nome para a pasta!';
	@override String get circularReferenceFolder => 'A pasta de destino é uma subpasta da pasta que você deseja mover.';
	@override String get hasChildFilesOrFolders => 'Esta pasta não está vazia e não pode ser excluída.';
	@override String get copyUrl => 'Copiar URL';
	@override String get rename => 'Renomear';
	@override String get avatar => 'Avatar';
	@override String get banner => 'Capa';
	@override String get displayOfSensitiveMedia => 'Exibição de mídia sensível';
	@override String get whenServerDisconnected => 'Quando a conexão com o servidor é perdida';
	@override String get disconnectedFromServer => 'Desconectado do servidor';
	@override String get reload => 'Recarregar';
	@override String get doNothing => 'Nenhuma ação adicional';
	@override String get reloadConfirm => 'Quer recarregar?';
	@override String get watch => 'ver';
	@override String get unwatch => 'Não observar';
	@override String get accept => 'Aceitar';
	@override String get reject => 'Rejeitar';
	@override String get normal => 'Normal';
	@override String get instanceName => 'Nome da instância';
	@override String get instanceDescription => 'Descrição da instância';
	@override String get maintainerName => 'Nome do administrador';
	@override String get maintainerEmail => 'E-mail do Administrador:';
	@override String get tosUrl => 'URL dos Termos de Uso';
	@override String get thisYear => 'Este ano';
	@override String get thisMonth => 'Este mês';
	@override String get today => 'Hoje';
	@override String dayX({required Object day}) => ' Dia ${day}';
	@override String monthX({required Object month}) => 'mês de ${month}';
	@override String yearX({required Object year}) => 'Ano ${year}';
	@override String get pages => 'Páginas';
	@override String get integration => 'Integração';
	@override String get connectService => 'Conectar';
	@override String get disconnectService => 'Desconectar';
	@override String get enableLocalTimeline => 'Ativar linha do tempo local';
	@override String get enableGlobalTimeline => 'Ativar linha do tempo global';
	@override String get disablingTimelinesInfo => 'Se você desabilitar essas linhas do tempo, administradores e moderadores ainda poderão usá-las por conveniência.';
	@override String get registration => 'Registar';
	@override String get enableRegistration => 'Permitir que qualquer pessoa se registre';
	@override String get invite => 'Convidar';
	@override String get driveCapacityPerLocalAccount => 'Capacidade do drive por usuário local';
	@override String get driveCapacityPerRemoteAccount => 'Capacidade do drive por usuário remoto';
	@override String get inMb => 'Em ‘megabytes’';
	@override String get bannerUrl => 'URL da imagem do ‘banner’';
	@override String get backgroundImageUrl => 'URL da imagem de fundo';
	@override String get basicInfo => 'Informações básicas';
	@override String get pinnedUsers => 'Utilizador fixado';
	@override String get pinnedUsersDescription => 'Descreva os utilizadores que você deseja fixar na página "Localizar", etc., separados por quebras de linha.';
	@override String get pinnedPages => 'Página fixada';
	@override String get pinnedPagesDescription => 'Descreva o caminho da página que você deseja fixar na página superior da instância, separada por quebras de linha.';
	@override String get pinnedClipId => 'ID do clipe a ser fixado';
	@override String get pinnedNotes => 'Post fixado';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'Ativar hCaptcha';
	@override String get hcaptchaSiteKey => 'Chave do sítio ‘web’';
	@override String get hcaptchaSecretKey => 'Chave secreta';
	@override String get mcaptchaSiteKey => 'Chave do sítio ‘web’';
	@override String get mcaptchaSecretKey => 'Chave secreta';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'Habilitar reCAPTCHA';
	@override String get recaptchaSiteKey => 'Chave do sítio ‘web’';
	@override String get recaptchaSecretKey => 'Chave secreta';
	@override String get turnstile => 'Controle de acesso';
	@override String get enableTurnstile => 'Ativar controle de acesso';
	@override String get turnstileSiteKey => 'Chave do sítio ‘web’';
	@override String get turnstileSecretKey => 'Chave secreta';
	@override String get avoidMultiCaptchaConfirm => 'O uso de vários captchas pode causar interferência. Deseja desativar outros captchas? Você também pode cancelar e deixar vários captchas ativados.';
	@override String get antennas => 'Antenas';
	@override String get manageAntennas => 'Gestão de antena';
	@override String get name => 'Nome';
	@override String get antennaSource => 'Origem de entrada';
	@override String get antennaKeywords => 'Palavras-chave recebidas';
	@override String get antennaExcludeKeywords => 'Palavras-chave negativas';
	@override String get antennaKeywordsDescription => 'Se você separá-lo com um espaço, será uma especificação AND, e se você separá-lo com uma quebra de linha, será uma especificação OR.';
	@override String get notifyAntenna => 'Notificar novas notas';
	@override String get withFileAntenna => 'Apenas notas com arquivos anexados';
	@override String get enableServiceworker => 'Ative as notificações push para o seu navegador';
	@override String get antennaUsersDescription => 'Especificar nomes de utilizador separados por quebras de linha';
	@override String get caseSensitive => 'Maiúsculas e minúsculas';
	@override String get withReplies => 'Incluindo resposta';
	@override String get connectedTo => 'Você está conectado à seguinte conta';
	@override String get notesAndReplies => 'Publicações e respostas';
	@override String get withFiles => 'Com arquivo';
	@override String get silence => 'Silenciado';
	@override String get silenceConfirm => 'Quer silenciar?';
	@override String get unsilence => 'Liberar silenciar';
	@override String get unsilenceConfirm => 'Quer liberar o silêncio?';
	@override String get popularUsers => 'Utilizadores populares';
	@override String get recentlyUpdatedUsers => 'Utilizadores postados recentemente';
	@override String get recentlyRegisteredUsers => 'Utilizadores registrados recentemente';
	@override String get recentlyDiscoveredUsers => 'Utilizadores descobertos recentemente';
	@override String exploreUsersCount({required Object count}) => 'Há um utilizador de ${count}';
	@override String get exploreFediverse => 'Explorar Fediverse';
	@override String get popularTags => 'Tags populares';
	@override String get userList => 'Listas';
	@override String get about => 'Informações';
	@override String get aboutMisskey => 'Sobre Misskey';
	@override String get administrator => 'Administrador';
	@override String get token => 'Símbolo';
	@override String get x2fa => 'Autenticação de dois fatores';
	@override String get setupOf2fa => 'Configuração de autenticação de dois fatores';
	@override String get totp => 'Aplicativo Autenticador';
	@override String get totpDescription => 'Digite a senha de uso único informado pelo aplicativo autenticador';
	@override String get moderator => 'Moderador';
	@override String get moderation => 'Moderação';
	@override String nUsersMentioned({required Object n}) => 'Postado por ${n} pessoas';
	@override String get securityKeyAndPasskey => 'Chave de segurança / Chave de acesso';
	@override String get securityKey => 'Chave de segurança';
	@override String get lastUsed => 'Último uso';
	@override String lastUsedAt({required Object t}) => 'Última utilização: ${t}';
	@override String get unregister => 'Cancelar registro';
	@override String get passwordLessLogin => 'Entrar sem senha';
	@override String get passwordLessLoginDescription => 'Faça login apenas com uma chave de segurança / chave de acesso sem utilização de senha';
	@override String get resetPassword => 'Redefinir senha';
	@override String newPasswordIs({required Object password}) => 'A nova senha é "${password}"';
	@override String get reduceUiAnimation => 'Reduzir a animação da ‘interface’ do utilizador';
	@override String get share => 'Compartilhar';
	@override String get notFound => 'Não encontrado';
	@override String get notFoundDescription => 'Não havia página correspondente ao URL especificado.';
	@override String get uploadFolder => 'Destino de upload padrão';
	@override String get markAsReadAllNotifications => 'Marcar todas as notificações como lidas';
	@override String get markAsReadAllUnreadNotes => 'Marcar todas as postagens como lidas';
	@override String get markAsReadAllTalkMessages => 'Marcar todas as conversas como lidas';
	@override String get help => 'Ajuda';
	@override String get inputMessageHere => 'Escrever mensagem aqui';
	@override String get close => 'Fechar';
	@override String get invites => 'Convidar';
	@override String get members => 'Membros';
	@override String get transfer => 'Transferência';
	@override String get title => 'Título';
	@override String get text => 'Texto';
	@override String get enable => 'Habilitar';
	@override String get next => 'Seguinte';
	@override String get retype => 'Digite novamente';
	@override String noteOf({required Object user}) => 'Publicação de ${user}';
	@override String get quoteAttached => 'Com citação';
	@override String get quoteQuestion => 'Anexar como citação?';
	@override String get noMessagesYet => 'Sem conversas até o momento';
	@override String get newMessageExists => 'Há uma nova mensagem';
	@override String get onlyOneFileCanBeAttached => 'Apenas um arquivo pode ser anexado a uma mensagem';
	@override String get signinRequired => 'É necessário se inscrever ou fazer login antes de continuar';
	@override String get invitations => 'Convidar';
	@override String get invitationCode => 'Código de convite';
	@override String get checking => 'Verificando...';
	@override String get available => 'Disponível';
	@override String get unavailable => 'Não disponível';
	@override String get usernameInvalidFormat => 'Pode utilizar letras maiúsculas e minúsculas, números e sublinhado (_)';
	@override String get tooShort => 'Muito curto';
	@override String get tooLong => 'Muito longo';
	@override String get weakPassword => 'Senha fraca';
	@override String get normalPassword => 'Senha normal';
	@override String get strongPassword => 'Senha forte';
	@override String get passwordMatched => 'As senhas coincidem';
	@override String get passwordNotMatched => 'As senhas não coincidem';
	@override String signinWith({required Object x}) => 'Faça login com ${x}';
	@override String get signinFailed => 'Não foi possível fazer login. Por favor, verifique o nome de usuário e a senha.';
	@override String get or => 'Ou';
	@override String get language => 'Idioma';
	@override String get uiLanguage => 'Idioma de exibição da interface ';
	@override String aboutX({required Object x}) => 'Sobre ${x}';
	@override String get emojiStyle => 'Estilo de emojis';
	@override String get native => 'Nativo';
	@override String get disableDrawer => 'Não mostrar o menu em formato de gaveta';
	@override String get showNoteActionsOnlyHover => 'Exibir as ações da nota somente ao passar o cursor sobre ela';
	@override String get noHistory => 'Ainda não há histórico';
	@override String get signinHistory => 'Histórico de acesso';
	@override String get enableAdvancedMfm => 'Habilitar MFM avançado';
	@override String get enableAnimatedMfm => 'Habilitar MFM animado';
	@override String get doing => 'Processando...';
	@override String get category => 'Categoria';
	@override String get tags => 'Etiquetas';
	@override String get docSource => 'Fonte deste documento';
	@override String get createAccount => 'Criar conta';
	@override String get existingAccount => 'Contas existentes';
	@override String get regenerate => 'Gerar novamente';
	@override String get fontSize => 'Tamanho do texto';
	@override String get mediaListWithOneImageAppearance => 'Altura da lista de mídias com apenas uma imagem';
	@override String limitTo({required Object x}) => 'Até ${x}';
	@override String get noFollowRequests => 'Não há pedidos de seguidor pendentes';
	@override String get openImageInNewTab => 'Abrir a imagem em uma nova aba';
	@override String get dashboard => 'Painel de controle';
	@override String get local => 'Local';
	@override String get remote => 'Remoto';
	@override String get total => 'Total';
	@override String get weekOverWeekChanges => 'Em comparação com a semana anterior';
	@override String get dayOverDayChanges => 'Dia anterior';
	@override String get appearance => 'Aparência';
	@override String get clientSettings => 'Configurações do cliente';
	@override String get accountSettings => 'Configurações da conta';
	@override String get promotion => 'Promoção';
	@override String get promote => 'Promover';
	@override String get numberOfDays => 'Dias';
	@override String get hideThisNote => 'Ocultar esta nota';
	@override String get showFeaturedNotesInTimeline => 'Mostrar notas recomendadas na linha do tempo';
	@override String get objectStorage => 'Armazenamento de objetos';
	@override String get useObjectStorage => 'Usar armazenamento de objetos';
	@override String get objectStorageBaseUrl => 'URL base';
	@override String get objectStorageBaseUrlDesc => 'O URL usado para referência. Se você estiver usando um CDN ou Proxy, seu URL, S3:\'https: // <bucket> .s3.amazonaws.com\', GCS, etc .:\'https://storage.googleapis.com/ <bucket>\' .';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => 'Especifique o nome do bucket do serviço a ser usado.';
	@override String get objectStoragePrefix => 'Prefixo';
	@override String get objectStoragePrefixDesc => 'Ele é armazenado neste diretório de prefixo.';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageEndpointDesc => 'No caso do S3, deixe em branco; para outros serviços, especifique o endpoint de cada serviço. Informe-o no formato \'<host>\' ou \'<host>:<port>\'.';
	@override String get objectStorageRegion => 'Região';
	@override String get objectStorageRegionDesc => 'Especifique uma região como \'xx-east-1\'. Caso seu serviço não tenha o conceito de região, ele deve estar vazio ou \'us-east-1\'.';
	@override String get objectStorageUseSSL => 'Usar SSL';
	@override String get objectStorageUseSSLDesc => 'Desative-o se não quiser usar https para conexões de API';
	@override String get objectStorageUseProxy => 'Usar proxy';
	@override String get objectStorageUseProxyDesc => 'Se você não usa proxy para conexão de API, desative-o.';
	@override String get objectStorageSetPublicRead => 'Definir \'public-read\' ao fazer o upload';
	@override String get s3ForcePathStyleDesc => 'Ao habilitar s3ForcePathStyle, o nome do bucket é especificado como parte do caminho em vez de ser o nome do host na URL. Isso pode ser necessário ao usar serviços auto-hospedados como o Minio.';
	@override String get serverLogs => 'Registro do servidor';
	@override String get deleteAll => 'Excluir tudo';
	@override String get showFixedPostForm => 'Exibir o formulário de postagem na parte superior da linha do tempo';
	@override String get showFixedPostFormInChannel => 'Exibir o campo de postagem na parte superior da linha do tempo (canais)';
	@override String get newNoteRecived => 'Nova nota recebida';
	@override String get sounds => 'Sons';
	@override String get sound => 'Sons';
	@override String get listen => 'Ouvir';
	@override String get none => 'Nenhum';
	@override String get showInPage => 'Ver na página';
	@override String get popout => 'Sair';
	@override String get volume => 'Volume';
	@override String get masterVolume => 'volume principal';
	@override String get details => 'Detalhes';
	@override String get chooseEmoji => 'Selecione um emoji';
	@override String get unableToProcess => 'Não é possível concluir a operação';
	@override String get recentUsed => 'Usado recentemente';
	@override String get install => 'Instalar';
	@override String get uninstall => 'Desinstalar';
	@override String get installedApps => 'Aplicativos instalados';
	@override String get nothing => 'Não há nada aqui';
	@override String get installedDate => 'Data de instalação';
	@override String get lastUsedDate => 'Data de última utilização';
	@override String get state => 'Estado';
	@override String get sort => 'Ordenação';
	@override String get ascendingOrder => 'Ascendente';
	@override String get descendingOrder => 'Descendente';
	@override String get scratchpad => 'Bloco de rascunho';
	@override String get scratchpadDescription => 'O Bloco de rascunho fornece um ambiente experimental para AiScript. Permite escrever, executar e verificar os resultados do código para interagir com o Misskey.';
	@override String get output => 'Resultado';
	@override String get script => 'Script';
	@override String get disablePagesScript => 'Desabilitar scripts nas páginas';
	@override String get updateRemoteUser => 'Atualizar informações do usuário remoto';
	@override String get deleteAllFiles => 'Excluir todos os arquivos';
	@override String get deleteAllFilesConfirm => 'Deseja excluir todos os arquivos?';
	@override String get removeAllFollowing => 'Deseja remover todos os seguidores?';
	@override String removeAllFollowingDescription({required Object host}) => 'Deixar de seguir todos de ${host}. Faça isso se, por exemplo, o servidor não existir mais.';
	@override String get userSuspended => 'Este usuário foi suspenso.';
	@override String get userSilenced => 'Este usuário está silenciado.';
	@override String get yourAccountSuspendedTitle => 'Esta conta está suspensa';
	@override String get yourAccountSuspendedDescription => 'Esta conta foi suspensa devido a violações dos termos de uso do servidor ou por outros motivos. Para mais detalhes, entre em contato com o administrador. Por favor, não crie uma nova conta.';
	@override String get tokenRevoked => 'Token inválido';
	@override String get tokenRevokedDescription => 'Seu token de login expirou. Por favor, faça login novamente.';
	@override String get accountDeleted => 'A conta foi removida';
	@override String get accountDeletedDescription => 'Esta conta foi removida.';
	@override String get menu => 'Menu\n';
	@override String get divider => 'Separador';
	@override String get addItem => 'Adicionar item';
	@override String get rearrange => 'Reordernar';
	@override String get relays => 'Relays';
	@override String get addRelay => 'Adicionar relay';
	@override String get inboxUrl => 'Inbox URL';
	@override String get addedRelays => 'Relays adicionados';
	@override String get serviceworkerInfo => 'Deve estar habilitado para receber notificações por push.';
	@override String get deletedNote => 'Postagem excluída';
	@override String get invisibleNote => 'Notas invisíveis';
	@override String get enableInfiniteScroll => 'Carregar automaticamente';
	@override String get visibility => 'Visibilidade';
	@override String get poll => 'Enquetes';
	@override String get useCw => 'Ocultar conteúdo';
	@override String get enablePlayer => 'Abrir o reprodutor de mídia';
	@override String get disablePlayer => 'Fechar o reprodutor de mídia';
	@override String get expandTweet => 'Expandir tweet';
	@override String get themeEditor => 'Editor de temas';
	@override String get description => 'Descrição';
	@override String get describeFile => 'Adicionar legenda';
	@override String get enterFileDescription => 'Insira uma legenda';
	@override String get author => 'Autor';
	@override String get leaveConfirm => 'Existem alterações não salvas. Deseja descartá-las?';
	@override String get manage => 'Administrar';
	@override String get plugins => 'Plugins';
	@override String get preferencesBackups => 'Definições de Backup';
	@override String get deck => 'Deck';
	@override String get undeck => 'Sair do deck';
	@override String get useBlurEffectForModal => 'Usar efeito de desfoque para modal';
	@override String get useFullReactionPicker => 'Usar o seletor de reações completo';
	@override String get width => 'Largura';
	@override String get height => 'Altura';
	@override String get large => 'Grande';
	@override String get medium => 'Médio';
	@override String get small => 'Pequeno';
	@override String get generateAccessToken => 'Gerar token de acesso';
	@override String get permission => 'Permissões';
	@override String get enableAll => 'Habilitar tudo';
	@override String get disableAll => 'Desabilitar tudo';
	@override String get tokenRequested => 'Autorização de acesso à conta';
	@override String get pluginTokenRequestedDescription => 'Este plugin poderá utilizar as permissões definidas aqui.';
	@override String get notificationType => 'Tipos de notificação';
	@override String get edit => 'Editar';
	@override String get emailServer => 'Servidor de e-mail';
	@override String get enableEmail => 'Habilitar envio de e-mails';
	@override String get emailConfigInfo => 'Usado para confirmar o seu endereço de e-mail e redefinir sua senha';
	@override String get email => 'E-mail';
	@override String get emailAddress => 'Endereço de e-mail';
	@override String get smtpConfig => 'Configuração do servidor SMTP';
	@override String get smtpHost => 'Host';
	@override String get smtpPort => 'Porta';
	@override String get smtpUser => 'Nome de usuário';
	@override String get smtpPass => 'Senha';
	@override String get emptyToDisableSmtpAuth => 'Desative a autenticação SMTP deixando o nome de usuário e a senha em branco.';
	@override String get smtpSecure => 'Use SSL/TLS implícito para conexões SMTP';
	@override String get smtpSecureInfo => 'Desative esta opção ao utilizar STARTTLS.';
	@override String get testEmail => 'Testar envio de e-mail';
	@override String get wordMute => 'Silenciar palavras';
	@override String get regexpError => 'Erro na expressão regular';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'Ocorreu um erro na expressão regular na linha ${line} da palavra mutada ${tab}:';
	@override String get instanceMute => 'Instâncias silenciadas';
	@override String userSaysSomething({required Object name}) => '${name} disse algo';
	@override String get makeActive => 'Ativar';
	@override String get display => 'Visualizar';
	@override String get copy => 'Copiar';
	@override String get metrics => 'Métricas';
	@override String get overview => 'Visão geral';
	@override String get logs => 'Logs';
	@override String get delayed => 'atrasado';
	@override String get database => 'Banco de dados';
	@override String get channel => 'Canais';
	@override String get create => 'Criar';
	@override String get notificationSetting => 'Configurações de notificação';
	@override String get notificationSettingDesc => 'Selecione o tipo de notificação a ser exibido.';
	@override String get useGlobalSetting => 'Utilizar a configuração global';
	@override String get useGlobalSettingDesc => 'Ao ativar, serão utilizadas as configurações de notificação da conta. Ao desativar, você poderá configurar individualmente.';
	@override String get other => 'Outros';
	@override String get regenerateLoginToken => 'Gerar novo token de login';
	@override String get regenerateLoginTokenDescription => 'Gera novamente o token interno usado para o login. Normalmente, isso não é necessário. Ao regenerar, você será desconectado de todos os dispositivos.';
	@override String get setMultipleBySeparatingWithSpace => 'Você pode configurar vários itens separando-os por espaço.';
	@override String get fileIdOrUrl => 'ID do arquivo ou URL';
	@override String get behavior => 'Comportamento';
	@override String get sample => 'Exemplo';
	@override String get abuseReports => 'Denúncias';
	@override String get reportAbuse => 'Denúncias';
	@override String get reportAbuseRenote => 'Reportar repostagem';
	@override String reportAbuseOf({required Object name}) => 'Denunciar ${name}';
	@override String get fillAbuseReportDescription => 'Por favor, forneça detalhes sobre o motivo da denúncia. Se houver uma nota específica envolvida, inclua também a URL dela.';
	@override String get abuseReported => 'Denúncia enviada. Obrigado por sua ajuda.';
	@override String get reporter => 'Denunciante';
	@override String get reporteeOrigin => 'Origem da denúncia';
	@override String get reporterOrigin => 'Origem do denunciante';
	@override String get forwardReport => 'Encaminhar a denúncia para o servidor remoto';
	@override String get forwardReportIsAnonymous => 'No servidor remoto, suas informações não serão visíveis, e você será apresentado como uma conta do sistema anônima.';
	@override String get send => 'Enviar';
	@override String get abuseMarkAsResolved => 'Marcar denúncia como resolvida';
	@override String get openInNewTab => 'Abrir em nova aba';
	@override String get openInSideView => 'Abrir em visão lateral';
	@override String get defaultNavigationBehaviour => 'Navegação padrão';
	@override String get editTheseSettingsMayBreakAccount => 'Editar essas configurações pode resultar em danos à conta."';
	@override String get instanceTicker => 'Informações do servidor das notas';
	@override String waitingFor({required Object x}) => 'Aguardando por ${x}';
	@override String get random => 'Aleatório';
	@override String get system => 'Sistema';
	@override String get switchUi => 'Alternar UI';
	@override String get desktop => 'Área de Trabalho';
	@override String get clip => 'Clipe';
	@override String get createNew => 'Criar novo';
	@override String get optional => 'Opcional';
	@override String get createNewClip => 'Criar novo clipe';
	@override String get unclip => 'Remover do clipe';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'Esta nota já está incluída no clipe "${name}". Você deseja remover a nota deste clipe?';
	@override String get public => 'Público';
	@override String get private => 'Privado';
	@override String i18nInfo({required Object link}) => 'Misskey é traduzido para várias línguas por voluntários. Você pode ajudar com as traduções em ${link}.';
	@override String get manageAccessTokens => 'Gerenciar tokens de acesso';
	@override String get accountInfo => 'Informações da conta';
	@override String get notesCount => 'Número de notas';
	@override String get repliesCount => 'Número de respostas enviadas';
	@override String get renotesCount => 'Número de repostagens feitas';
	@override String get repliedCount => 'Número de respostas recebidas';
	@override String get renotedCount => 'Números de repostagens recebidas';
	@override String get followingCount => 'Número de contas seguidas';
	@override String get followersCount => 'Número de seguidores';
	@override String get sentReactionsCount => 'Número de reações enviadas';
	@override String get receivedReactionsCount => 'Número de reações recebidas';
	@override String get pollVotesCount => 'Número de votos feitos em enquetes';
	@override String get pollVotedCount => 'Número de votos recebidos em enquetes';
	@override String get yes => 'Sim';
	@override String get no => 'Não';
	@override String get driveFilesCount => 'Número de arquivos no drive';
	@override String get driveUsage => 'Capacidade do drive';
	@override String get noCrawle => 'Recusar indexação por crawler';
	@override String get noCrawleDescription => 'Solicitar que os mecanismos de pesquisa externos não indexem o conteúdo de suas páginas de usuário, notas, páginas etc.';
	@override String get lockedAccountInfo => 'Mesmo que você defina a aprovação para seguir, a menos que você defina o alcance da nota para \'Apenas seguidores\', qualquer pessoa poderá ver suas notas.';
	@override String get alwaysMarkSensitive => 'Marcar como sensível por padrão';
	@override String get loadRawImages => 'Exibir as imagens originais ao invés de miniaturas';
	@override String get disableShowingAnimatedImages => 'Não reproduzir imagens animadas';
	@override String get verificationEmailSent => 'Um e-mail de confirmação foi enviado. Siga o link no e-mail para concluir a verificação.';
	@override String get notSet => 'Não definido';
	@override String get emailVerified => 'O endereço de e-mail foi confirmado';
	@override String get noteFavoritesCount => 'Número de notas salvas nos favoritos';
	@override String get pageLikesCount => 'Número de páginas curtidas';
	@override String get pageLikedCount => 'Número de curtidas recebidas nas suas páginas';
	@override String get contact => 'Contato';
	@override String get useSystemFont => 'Utilizar a fonte padrão do sistema';
	@override String get clips => 'Clipe';
	@override String get experimentalFeatures => 'Funcionalidades Experimentais';
	@override String get experimental => 'Experimental';
	@override String get thisIsExperimentalFeature => 'Este é um recurso experimental. As funções podem mudar ou pode não funcionar corretamente.';
	@override String get developer => 'Programador';
	@override String get makeExplorable => 'Deixe a sua conta mais fácil de encontrar.';
	@override String get makeExplorableDescription => 'Se você desativá-lo, outros usuários não poderão encontrar a sua conta na aba Descoberta.';
	@override String get showGapBetweenNotesInTimeline => 'Mostrar um espaço entre as notas na linha de tempo';
	@override String get duplicate => 'Duplicar';
	@override String get left => 'Esquerda';
	@override String get center => 'Centralizar';
	@override String get wide => 'Largo';
	@override String get narrow => 'Estreito';
	@override String get reloadToApplySetting => 'As configurações serão refletidas após recarregar a página. Deseja recarregar agora?';
	@override String get needReloadToApply => 'É necessário recarregar a página para refletir as alterações.';
	@override String get showTitlebar => 'Exibir barra de título';
	@override String get clearCache => 'Limpar o cache';
	@override String onlineUsersCount({required Object n}) => '${n} Pessoas Online';
	@override String nUsers({required Object n}) => '${n} Usuários';
	@override String nNotes({required Object n}) => '${n} Notas';
	@override String get sendErrorReports => 'Enviar relatórios de erro';
	@override String get sendErrorReportsDescription => 'Ao ativar essa opção, informações detalhadas de erro serão compartilhadas com o Misskey em caso de problemas, o que pode ajudar a melhorar a qualidade do software. As informações de erro podem incluir a versão do sistema operacional, o tipo de navegador e o sua atividade no Misskey.';
	@override String get myTheme => 'Meu tema';
	@override String get backgroundColor => 'Cor de fundo';
	@override String get accentColor => 'Cor de destaque';
	@override String get textColor => 'Cor do texto';
	@override String get saveAs => 'Salvar como';
	@override String get advanced => 'Avançado';
	@override String get advancedSettings => 'Configurações avançadas';
	@override String get value => 'Valor';
	@override String get createdAt => 'Data de criação';
	@override String get updatedAt => 'Última atualização';
	@override String get saveConfirm => 'Deseja salvá-lo?';
	@override String get deleteConfirm => 'Confirma a exclusão?';
	@override String get invalidValue => 'Valor inválido';
	@override String get registry => 'Registo';
	@override String get closeAccount => 'Encerrar conta';
	@override String get currentVersion => 'Versão Atual';
	@override String get latestVersion => 'Última versão';
	@override String get youAreRunningUpToDateClient => 'Você está usando a última versão do cliente';
	@override String get newVersionOfClientAvailable => 'Nova versão do cliente disponível';
	@override String get usageAmount => 'Quantidade utilizada';
	@override String get capacity => 'Capacidade';
	@override String get inUse => 'Em uso';
	@override String get editCode => 'Editar código';
	@override String get apply => 'Aplicar';
	@override String get receiveAnnouncementFromInstance => 'Receba as notificações da instância';
	@override String get emailNotification => 'Notificações por e-mail';
	@override String get publish => 'Publicar';
	@override String get inChannelSearch => 'Pesquisar no canal';
	@override String get useReactionPickerForContextMenu => 'Clique com o botão direito do mouse para abrir o seletor de reações.';
	@override String typingUsers({required Object users}) => '${users} pessoas digitando';
	@override String get jumpToSpecifiedDate => 'Pular para uma data específica';
	@override String get showingPastTimeline => 'Visualizar linha de tempo anterior';
	@override String get clear => 'Limpar';
	@override String get markAllAsRead => 'Marcar todas como lidas';
	@override String get goBack => 'Voltar';
	@override String get unlikeConfirm => 'Deseja realmente deixar de curtir?';
	@override String get fullView => 'Visão completa';
	@override String get quitFullView => 'Sair da visualização completa';
	@override String get addDescription => 'Adicionar descrição';
	@override String get userPagePinTip => 'Notas podem ser mostradas aqui ao clicar em "Fixar no Perfil" no menu de notas individuais.';
	@override String get notSpecifiedMentionWarning => 'Esta nota menciona usuários que não foram incluídos como recipientes.';
	@override String get info => 'Informações';
	@override String get userInfo => 'Informações do Usuário';
	@override String get unknown => 'Desconhecido';
	@override String get onlineStatus => 'On-line';
	@override String get hideOnlineStatus => 'Ocultar o status on-line.';
	@override String get hideOnlineStatusDescription => 'Esconder que está Ativo reduzirá a utilidade de certas funções (como, por exemplo, a Pesquisa).';
	@override String get online => 'Online';
	@override String get active => 'Ativo';
	@override String get offline => 'Inativo';
	@override String get notRecommended => 'Não recomendado';
	@override String get botProtection => 'Proteção contra Bot';
	@override String get instanceBlocking => 'Instâncias bloqueadas';
	@override String get selectAccount => 'Selecionar conta';
	@override String get switchAccount => 'Trocar conta';
	@override String get enabled => 'Ativado';
	@override String get disabled => 'Desativado';
	@override String get quickAction => 'Ações rápidas';
	@override String get user => 'Usuários';
	@override String get administration => 'Administrar';
	@override String get accounts => 'Contas';
	@override String get switch_ => 'Trocar';
	@override String get noMaintainerInformationWarning => 'A informação de administrador não foi configurada.';
	@override String get noBotProtectionWarning => 'A proteção contra bots não foi configurada.';
	@override String get configure => 'Configurar';
	@override String get postToGallery => 'Criar publicação em galeria';
	@override String get postToHashtag => 'Publicar nesta Hashtag';
	@override String get gallery => 'Galeria';
	@override String get recentPosts => 'Notas recentes';
	@override String get popularPosts => 'Notas populares';
	@override String get shareWithNote => 'Compartilhar em Notas';
	@override String get ads => 'Anúncios';
	@override String get expiration => 'Data limite';
	@override String get startingperiod => 'Data de início';
	@override String get memo => 'Nota';
	@override String get priority => 'Prioridade';
	@override String get high => 'Alto';
	@override String get middle => 'Meio';
	@override String get low => 'Baixo';
	@override String get emailNotConfiguredWarning => 'Endereço de e-mail não configurado. ';
	@override String get ratio => 'Ratio';
	@override String get previewNoteText => 'Visualizar Nota';
	@override String get customCss => 'CSS Personalizado';
	@override String get customCssWarn => 'Esta configuração só deve ser usada se souber o que está fazendo. Valores impróprios podem causar erros no funcionamento do cliente.';
	@override String get global => 'Global';
	@override String get squareAvatars => 'Exibir ícones quadrados';
	@override String get sent => 'Enviar';
	@override String get received => 'Recebido';
	@override String get searchResult => 'Pesquisar';
	@override String get hashtags => 'Hashtags';
	@override String get troubleshooting => 'Resolução de problemas';
	@override String get useBlurEffect => 'Usar efeito de desfoque na UI';
	@override String get learnMore => 'Saiba mais';
	@override String get misskeyUpdated => 'Misskey foi atualizado!';
	@override String get whatIsNew => 'Ver atualizações';
	@override String get translate => 'Traduzir';
	@override String translatedFrom({required Object x}) => 'Traduzido de ${x}';
	@override String get accountDeletionInProgress => 'Encerramento de conta em andamento';
	@override String get usernameInfo => 'O nome para identificar exclusivamente a sua conta no servidor. Pode conter letras (az, AZ), números (0~9) e sublinhados (_). O nome de usuário não pode ser alterado posteriormente.';
	@override String get aiChanMode => 'Modo AI-chan';
	@override String get devMode => 'Modo de Desenvolvedor';
	@override String get keepCw => 'Manter aviso de conteúdo';
	@override String get pubSub => 'Publicar/Inscrever no perfil';
	@override String get lastCommunication => 'Ultima atualização';
	@override String get resolved => 'Resolvido';
	@override String get unresolved => 'Não resolvido';
	@override String get breakFollow => 'Remover seguidor';
	@override String get breakFollowConfirm => 'Deseja realmente deixar de seguir?';
	@override String get itsOn => 'Ativado';
	@override String get itsOff => 'Desativado';
	@override String get on => 'Ligado';
	@override String get off => 'Desligado';
	@override String get emailRequiredForSignup => 'Tornar o endereço de e-mail obrigatório durante o cadastro';
	@override String get unread => 'Não lido';
	@override String get filter => 'Filtrar';
	@override String get controlPanel => 'Painel de controle';
	@override String get manageAccounts => 'Gerenciar contas';
	@override String get makeReactionsPublic => 'Deixar o histórico de reações em Público';
	@override String get makeReactionsPublicDescription => 'Isto vai deixar o histórico de todas as suas reações visíveis para qualquer um ver.';
	@override String get classic => 'Clássico';
	@override String get muteThread => 'Silenciar esta conversa';
	@override String get unmuteThread => 'Desativar silêncio desta conversa';
	@override String get continueThread => 'Ver mais desta conversa';
	@override String get deleteAccountConfirm => 'Deseja realmente excluir a conta?';
	@override String get incorrectPassword => 'Senha inválida.';
	@override String voteConfirm({required Object choice}) => 'Deseja confirmar o seu voto em "${choice}"?';
	@override String get hide => 'Ocultar';
	@override String get useDrawerReactionPickerForMobile => 'Mostrar em formato de gaveta';
	@override String welcomeBackWithName({required Object name}) => 'Bem-vindo de volta, ${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => 'Clique em [${ok}] para completar a validação do endereço de e-mail.';
	@override String get overridedDeviceKind => 'Sobrepor dispositivo';
	@override String get smartphone => 'Celular';
	@override String get tablet => 'Tablet';
	@override String get auto => 'Automático';
	@override String get themeColor => 'Cor do tema';
	@override String get size => 'Tamanho';
	@override String get numberOfColumn => 'Número da coluna';
	@override String get searchByGoogle => 'Pesquisar';
	@override String get instanceDefaultLightTheme => 'Tema diurno padrão para toda a instância';
	@override String get instanceDefaultDarkTheme => 'Tema noturno para toda a instância';
	@override String get instanceDefaultThemeDescription => 'Insira o código do tema em formato de objeto.';
	@override String get mutePeriod => 'Duração de silenciamento';
	@override String get period => 'Data limite';
	@override String get indefinitely => 'Indefinitivamente';
	@override String get tenMinutes => '10 minutos';
	@override String get oneHour => '1 hora';
	@override String get oneDay => '1 dia';
	@override String get oneWeek => '1 semana';
	@override String get oneMonth => '1 mês';
	@override String get reflectMayTakeTime => 'As mudanças podem demorar a aparecer.';
	@override String get failedToFetchAccountInformation => 'Não foi possível obter informações da conta';
	@override String get rateLimitExceeded => 'Taxa limite excedido';
	@override String get cropImage => 'Recortar imagem';
	@override String get cropImageAsk => 'Deseja recortar esta imagem?';
	@override String get cropYes => 'Recortar';
	@override String get cropNo => 'Manter deste jeito';
	@override String get file => 'Ficheiros';
	@override String recentNHours({required Object n}) => 'Últimas ${n} horas';
	@override String recentNDays({required Object n}) => 'Últimos ${n} dias';
	@override String get noEmailServerWarning => 'Servidor de e-mail não configurado.';
	@override String get thereIsUnresolvedAbuseReportWarning => 'Existem denúncias não resolvidas.';
	@override String get recommended => 'Recomendado';
	@override String get check => 'Verificar';
	@override String get driveCapOverrideLabel => 'Altere a capacidade do drive para este usuário';
	@override String get driveCapOverrideCaption => 'Altere a capacidade para o valor padrão informando o valor 0 ou inferior.';
	@override String get requireAdminForView => 'Para visualizar, é necessário acessar com uma conta de administrador.';
	@override String get isSystemAccount => 'É uma conta criada e gerenciada automaticamente pelo sistema.';
	@override String typeToConfirm({required Object x}) => 'Para realizar essa operação, digite ${x}.';
	@override String get deleteAccount => 'Excluir conta';
	@override String get document => 'Documentação';
	@override String get numberOfPageCache => 'Número de cache de página';
	@override String get numberOfPageCacheDescription => 'Aumentar isso melhora a conveniência, mas também resulta em maior carga e uso de memória.';
	@override String get logoutConfirm => 'Gostaria de encerrar a sessão?';
	@override String get lastActiveDate => 'Última data de uso';
	@override String get statusbar => 'Barra de status';
	@override String get pleaseSelect => 'Por favor, selecione.';
	@override String get reverse => 'Inversão';
	@override String get colored => 'Colorido';
	@override String get refreshInterval => 'Intervalo de atualização';
	@override String get label => 'Etiqueta';
	@override String get type => 'Tipo';
	@override String get speed => 'Velocidade';
	@override String get slow => 'Lento';
	@override String get fast => 'Rápido';
	@override String get sensitiveMediaDetection => 'Detecção de conteúdo sensível';
	@override String get localOnly => 'Apenas local';
	@override String get remoteOnly => 'Apenas remoto';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'Não é possível realizar o upload deste arquivo porque ele excede o tamanho máximo permitido.';
	@override String get beta => 'Beta';
	@override String get enableAutoSensitive => 'Marcar automaticamente como conteúdo sensível';
	@override String get enableAutoSensitiveDescription => 'Quando disponível, a marcação de mídia sensível será automaticamente atribuído ao conteúdo de mídia usando aprendizado de máquina. Mesmo que você desative essa função, em alguns servidores, isso pode ser configurado automaticamente.';
	@override String get activeEmailValidationDescription => 'A validação do endereço de e-mail do usuário será realizada de forma mais rigorosa, considerando se é um endereço descartável ou se é possível realizar comunicação efetiva. Se desativado, apenas a validade do formato do endereço será verificada como uma sequência de caracteres.';
	@override String get shuffle => 'Aleatório';
	@override String get account => 'Contas';
	@override String get move => 'Mover';
	@override String get pushNotification => 'Notificações Push';
	@override String get subscribePushNotification => 'Ativar notificações push';
	@override String get unsubscribePushNotification => 'Desativar notificações push';
	@override String get windowMinimize => 'Minimizar';
	@override String get windowRestore => 'Restaurar';
	@override String get caption => 'legenda';
	@override String get tools => 'Ferramentas';
	@override String get like => 'Curtir';
	@override String get unlike => 'Remover curtida';
	@override String get numberOfLikes => 'Número de curtidas';
	@override String get show => 'Visualizar';
	@override String get neverShow => 'Não exibir novamente';
	@override String get remindMeLater => 'Lembrar mais tarde';
	@override String get didYouLikeMisskey => 'Você gostou do Misskey?';
	@override String pleaseDonate({required Object host}) => 'O Misskey é um software gratuito utilizado por ${host}. Para que possamos continuar o desenvolvimento, pedimos que considerem fazer doações. A sua contribuição é muito importante!';
	@override String get roles => 'Cargos';
	@override String get role => 'Cargo';
	@override String get noRole => 'Nenhum cargo';
	@override String get normalUser => 'Usuários padrão';
	@override String get undefined => 'Indefinido';
	@override String get assign => 'Atribuir';
	@override String get unassign => 'Remover';
	@override String get color => 'Cor';
	@override String get manageCustomEmojis => 'Gerenciar Emojis customizados';
	@override String get youCannotCreateAnymore => 'Você atingiu o limite de criação.';
	@override String get cannotPerformTemporary => 'Ação temporariamente indisponível';
	@override String get cannotPerformTemporaryDescription => 'Esta ação não pôde ser concluída devido ao excesso de pedidos em sucessão. Tente novamente em alguns momentos.';
	@override String get invalidParamError => 'Parâmetros inválidos';
	@override String get invalidParamErrorDescription => 'Parâmetros requisitados inválidos. Isto normalmente acontece devido a um erro, mas também pode ocorrer devido à entrada de valores além do limite ou algo semelhante.';
	@override String get permissionDeniedError => 'Operação recusada';
	@override String get permissionDeniedErrorDescription => 'Esta conta não tem permissão para executar esta ação.';
	@override String get preset => 'Predefinições';
	@override String get selectFromPresets => 'Escolher de predefinições';
	@override String get achievements => 'Conquistas';
	@override String get gotInvalidResponseError => 'Resposta do servidor inválida';
	@override String get gotInvalidResponseErrorDescription => 'Servidor fora do ar ou em manutenção. Favor tentar mais tarde.';
	@override String get thisPostMayBeAnnoying => 'Esta nota pode incomodar outras pessoas.';
	@override String get thisPostMayBeAnnoyingHome => 'Postar na linha do tempo inicial';
	@override String get thisPostMayBeAnnoyingCancel => 'Cancelar';
	@override String get thisPostMayBeAnnoyingIgnore => 'Postar mesmo assim';
	@override String get collapseRenotes => 'Ocultar repostagens já visualizadas';
	@override String get internalServerError => 'Erro interno de servidor';
	@override String get emailNotSupported => 'O envio de e-mails não é suportado nesta instância';
	@override String get likeOnly => 'Apenas curtidas';
	@override String get likeOnlyForRemote => 'Tudo (somente curtidas remotas)';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'Apenas não sensíveis (somente curtidas remotas)';
	@override String get rolesAssignedToMe => 'Cargos atribuídos a mim';
	@override String get unfavoriteConfirm => 'Deseja realmente remover dos favoritos?';
	@override String get drivecleaner => 'Limpeza do drive';
	@override String get retryAllQueuesConfirmTitle => 'Gostaria de tentar novamente agora?';
	@override String get reactionsDisplaySize => 'Tamanho de exibição das reações';
	@override String get reactionsList => 'Reações';
	@override String get renotesList => 'Repostagens';
	@override String get leftTop => 'Superior esquerdo';
	@override String get rightTop => 'Superior direito';
	@override String get leftBottom => 'Inferior esquerdo';
	@override String get rightBottom => 'Inferior direito';
	@override String get vertical => 'Vertical';
	@override String get horizontal => 'Exibir painel lateral inteiro';
	@override String get position => 'Posição';
	@override String get serverRules => 'Regras do servidor';
	@override String get continue_ => 'Continuar';
	@override String get preservedUsernamesDescription => 'Liste os nomes de usuário que deseja reservar, separando-os por quebras de linha. Os nomes de usuário especificados aqui não poderão ser utilizados durante a criação de contas. No entanto, esta restrição não se aplica quando a conta é criada por um administrador. Além disso, as contas que já existem não serão afetadas.';
	@override String get archive => 'Arquivo';
	@override String channelArchiveConfirmTitle({required Object name}) => 'Deseja realmente arquivar ${name}?';
	@override String get youFollowing => 'Seguindo';
	@override String get preventAiLearningDescription => 'Solicita-se que o conteúdo de notas e imagens enviadas não seja usado como objeto de aprendizado por sistemas externos de geração de texto ou imagens. Isso é alcançado incluindo a flag \'noai\' na resposta HTML. No entanto, o cumprimento dessa solicitação depende do próprio sistema de IA, portanto, não é garantia total de prevenção de aprendizado.';
	@override String get options => 'Opções';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'Cargos que podem utilizar este emoji como reação';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'Se nenhum cargo for especificado, qualquer pessoa pode usar este emoji como reação.';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'Estes cargos devem ser públicos.';
	@override String get waitingForMailAuth => 'Verificação de e-mail pendente ';
	@override String get icon => 'Avatar';
	@override String get replies => 'Responder';
	@override String get renotes => 'Repostar';
	@override String get keepScreenOn => 'Manter a tela do dispositivo sempre ligada';
	@override String get flip => 'Inversão';
	@override String lastNDays({required Object n}) => 'Últimos ${n} dias';
	@override String get surrender => 'Cancelar';
	@override late final _StringsMisskeyInitialAccountSettingPtPt initialAccountSetting_ = _StringsMisskeyInitialAccountSettingPtPt._(_root);
	@override late final _StringsMisskeyServerSettingsPtPt serverSettings_ = _StringsMisskeyServerSettingsPtPt._(_root);
	@override late final _StringsMisskeyAccountMigrationPtPt accountMigration_ = _StringsMisskeyAccountMigrationPtPt._(_root);
	@override late final _StringsMisskeyAchievementsPtPt achievements_ = _StringsMisskeyAchievementsPtPt._(_root);
	@override late final _StringsMisskeyRolePtPt role_ = _StringsMisskeyRolePtPt._(_root);
	@override late final _StringsMisskeySensitiveMediaDetectionPtPt sensitiveMediaDetection_ = _StringsMisskeySensitiveMediaDetectionPtPt._(_root);
	@override late final _StringsMisskeyEmailUnavailablePtPt emailUnavailable_ = _StringsMisskeyEmailUnavailablePtPt._(_root);
	@override late final _StringsMisskeyFfVisibilityPtPt ffVisibility_ = _StringsMisskeyFfVisibilityPtPt._(_root);
	@override late final _StringsMisskeySignupPtPt signup_ = _StringsMisskeySignupPtPt._(_root);
	@override late final _StringsMisskeyAccountDeletePtPt accountDelete_ = _StringsMisskeyAccountDeletePtPt._(_root);
	@override late final _StringsMisskeyAdPtPt ad_ = _StringsMisskeyAdPtPt._(_root);
	@override late final _StringsMisskeyForgotPasswordPtPt forgotPassword_ = _StringsMisskeyForgotPasswordPtPt._(_root);
	@override late final _StringsMisskeyGalleryPtPt gallery_ = _StringsMisskeyGalleryPtPt._(_root);
	@override late final _StringsMisskeyEmailPtPt email_ = _StringsMisskeyEmailPtPt._(_root);
	@override late final _StringsMisskeyPreferencesBackupsPtPt preferencesBackups_ = _StringsMisskeyPreferencesBackupsPtPt._(_root);
	@override late final _StringsMisskeyChannelPtPt channel_ = _StringsMisskeyChannelPtPt._(_root);
	@override late final _StringsMisskeyMenuDisplayPtPt menuDisplay_ = _StringsMisskeyMenuDisplayPtPt._(_root);
	@override late final _StringsMisskeyInstanceMutePtPt instanceMute_ = _StringsMisskeyInstanceMutePtPt._(_root);
	@override late final _StringsMisskeyThemePtPt theme_ = _StringsMisskeyThemePtPt._(_root);
	@override late final _StringsMisskeySfxPtPt sfx_ = _StringsMisskeySfxPtPt._(_root);
	@override late final _StringsMisskeyAgoPtPt ago_ = _StringsMisskeyAgoPtPt._(_root);
	@override late final _StringsMisskeyX2faPtPt x2fa_ = _StringsMisskeyX2faPtPt._(_root);
	@override late final _StringsMisskeyPermissionsPtPt permissions_ = _StringsMisskeyPermissionsPtPt._(_root);
	@override late final _StringsMisskeyWidgetsPtPt widgets_ = _StringsMisskeyWidgetsPtPt._(_root);
	@override late final _StringsMisskeyCwPtPt cw_ = _StringsMisskeyCwPtPt._(_root);
	@override late final _StringsMisskeyPollPtPt poll_ = _StringsMisskeyPollPtPt._(_root);
	@override late final _StringsMisskeyVisibilityPtPt visibility_ = _StringsMisskeyVisibilityPtPt._(_root);
	@override late final _StringsMisskeyProfilePtPt profile_ = _StringsMisskeyProfilePtPt._(_root);
	@override late final _StringsMisskeyExportOrImportPtPt exportOrImport_ = _StringsMisskeyExportOrImportPtPt._(_root);
	@override late final _StringsMisskeyChartsPtPt charts_ = _StringsMisskeyChartsPtPt._(_root);
	@override late final _StringsMisskeyTimelinesPtPt timelines_ = _StringsMisskeyTimelinesPtPt._(_root);
	@override late final _StringsMisskeyPlayPtPt play_ = _StringsMisskeyPlayPtPt._(_root);
	@override late final _StringsMisskeyPagesPtPt pages_ = _StringsMisskeyPagesPtPt._(_root);
	@override late final _StringsMisskeyRelayStatusPtPt relayStatus_ = _StringsMisskeyRelayStatusPtPt._(_root);
	@override late final _StringsMisskeyNotificationPtPt notification_ = _StringsMisskeyNotificationPtPt._(_root);
	@override late final _StringsMisskeyDeckPtPt deck_ = _StringsMisskeyDeckPtPt._(_root);
	@override late final _StringsMisskeyDrivecleanerPtPt drivecleaner_ = _StringsMisskeyDrivecleanerPtPt._(_root);
	@override late final _StringsMisskeyWebhookSettingsPtPt webhookSettings_ = _StringsMisskeyWebhookSettingsPtPt._(_root);
	@override late final _StringsMisskeyModerationLogTypesPtPt moderationLogTypes_ = _StringsMisskeyModerationLogTypesPtPt._(_root);
	@override late final _StringsMisskeyReversiPtPt reversi_ = _StringsMisskeyReversiPtPt._(_root);
}

// Path: misskey.initialAccountSetting_
class _StringsMisskeyInitialAccountSettingPtPt extends _StringsMisskeyInitialAccountSettingEnUs {
	_StringsMisskeyInitialAccountSettingPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get followUsers => 'Siga usuários que lhe interessam para criar a sua linha do tempo.';
}

// Path: misskey.serverSettings_
class _StringsMisskeyServerSettingsPtPt extends _StringsMisskeyServerSettingsEnUs {
	_StringsMisskeyServerSettingsPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get iconUrl => 'URL do ícone';
}

// Path: misskey.accountMigration_
class _StringsMisskeyAccountMigrationPtPt extends _StringsMisskeyAccountMigrationEnUs {
	_StringsMisskeyAccountMigrationPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get moveFromDescription => 'Se você deseja migrar de outra conta para esta, é necessário criar um alias aqui. Por favor, insira a conta de origem da migração no seguinte formato: @username@server.example.com. Para excluir o alias, deixe o campo em branco e clique em salvar (não recomendado).';
	@override String get moveAccountDescription => 'Você está migrando para uma nova conta.\n　・Seus seguidores irão automaticamente seguir a nova conta.\n　・Todas as suas conexões de seguidores nesta conta serão removidas.\n　・Você não poderá mais criar novas notas nesta conta.\n\nA migração dos seguidores é automática, mas a migração das pessoas que você segue deve ser feita manualmente. Antes de migrar, exporte quem você está seguindo nesta conta e, assim que migrar, importe essa lista na nova conta.\nO mesmo se aplica para listas, silenciamentos e bloqueios, que também devem ser migrados manualmente.\n\n(Esta descrição se refere ao comportamento do servidor Misskey v13.12.0 ou posterior. Outros softwares ActivityPub, como Mastodon, podem ter comportamentos diferentes.)';
	@override String get moveAccountHowTo => 'Para realizar a migração da conta, primeiro crie um alias para esta conta no destino da migração. Após criar o alias, insira a conta de destino da migração no seguinte formato: @username@server.example.com.';
	@override String migrationConfirm({required Object account}) => 'Tem certeza de que deseja migrar esta conta para \'${account}\'? Uma vez migrada, não poderá ser desfeita e não será possível usar esta conta novamente em seu estado original.';
	@override String get postMigrationNote => 'A remoção dos seguidores desta conta será realizada 24 horas após a operação de migração. O número de seguidores e seguidos desta conta se tornará zero. Os seguidores não serão removidos, portanto, eles continuarão a ver as postagens destinadas aos seguidores desta conta.';
}

// Path: misskey.achievements_
class _StringsMisskeyAchievementsPtPt extends _StringsMisskeyAchievementsEnUs {
	_StringsMisskeyAchievementsPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Data de aquisição';
	@override late final _StringsMisskeyAchievementsTypesPtPt types_ = _StringsMisskeyAchievementsTypesPtPt._(_root);
}

// Path: misskey.role_
class _StringsMisskeyRolePtPt extends _StringsMisskeyRoleEnUs {
	_StringsMisskeyRolePtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Novo cargo';
	@override String get edit => 'Editar cargo';
	@override String get name => 'Nome do Cargo';
	@override String get description => 'Descrição do cargo';
	@override String get permission => 'Permissões do cargo';
	@override String get descriptionOfPermission => '<b>Moderador</b> permite que você execute operações básicas relacionadas à moderação.\n<b>Administradores</b> podem alterar todas as configurações do servidor.';
	@override String get assignTarget => 'Atribuir';
	@override String get descriptionOfAssignTarget => '<b>Manual</b> para gerenciar manualmente quem está incluído neste cargo.\n<b>Condicional</b> define uma condição e os usuários que corresponderem a ela serão incluídos automaticamente.';
	@override String get manual => 'Documentação';
	@override String get conditional => 'Condicional';
	@override String get condition => 'Condição';
	@override String get isConditionalRole => 'Este é um cargo condicional.';
	@override String get isPublic => 'Cargo público';
	@override String get descriptionOfIsPublic => 'Este cargo será exibido no perfil do usuário.';
	@override String get options => 'Opções';
	@override String get policies => 'Políticas';
	@override String get baseRole => 'Cargo padrão';
	@override String get useBaseValue => 'Usar o valor do cargo padrão';
	@override String get chooseRoleToAssign => 'Selecionar o cargo a ser atribuído';
	@override String get iconUrl => 'URL do ícone';
	@override String get asBadge => 'Exibir como insígnia';
	@override String get descriptionOfAsBadge => 'Quando ativado, o ícone do cargo será exibido ao lado do nome de usuário';
	@override String get isExplorable => 'Fazer o cargo explorável';
	@override String get descriptionOfIsExplorable => 'Ao ativar, a lista de membros será pública na seção \'Explorar\' e a linha do tempo do cargo ficará disponível.';
	@override String get displayOrder => 'Ordenação';
	@override String get descriptionOfDisplayOrder => 'Quanto maior o número, maior a posição de destaque na interface do usuário.';
	@override String get canEditMembersByModerator => 'Permitir a edição de membros deste cargo por moderadores';
	@override String get descriptionOfCanEditMembersByModerator => 'Quando ativado, os moderadores também poderão atribuir/remover usuários deste papel, além dos administradores. Quando desativado, apenas os administradores poderão fazê-lo.';
	@override String get priority => 'Prioridade';
	@override late final _StringsMisskeyRolePriorityPtPt priority_ = _StringsMisskeyRolePriorityPtPt._(_root);
	@override late final _StringsMisskeyRoleOptionsPtPt options_ = _StringsMisskeyRoleOptionsPtPt._(_root);
	@override late final _StringsMisskeyRoleConditionPtPt condition_ = _StringsMisskeyRoleConditionPtPt._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _StringsMisskeySensitiveMediaDetectionPtPt extends _StringsMisskeySensitiveMediaDetectionEnUs {
	_StringsMisskeySensitiveMediaDetectionPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get description => 'Use o aprendizado de máquina para detectar automaticamente mídias sensíveis para moderação. Isso pode aumentar ligeiramente a carga no servidor.';
	@override String get sensitivityDescription => 'Ao reduzir a sensibilidade, as detecções incorretas (falsos positivos) diminuem. Ao aumentar a sensibilidade, as falhas de detecção (falsos negativos) diminuem.';
}

// Path: misskey.emailUnavailable_
class _StringsMisskeyEmailUnavailablePtPt extends _StringsMisskeyEmailUnavailableEnUs {
	_StringsMisskeyEmailUnavailablePtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get used => 'O endereço de e-mail informado já está sendo utilizado';
	@override String get format => 'Formado de e-mail inválido';
	@override String get disposable => 'Endereços de e-mail descartáveis não devem ser utilizados';
	@override String get mx => 'O servidor de informado é inválido';
	@override String get smtp => 'O servidor de e-mail não está respondendo';
}

// Path: misskey.ffVisibility_
class _StringsMisskeyFfVisibilityPtPt extends _StringsMisskeyFfVisibilityEnUs {
	_StringsMisskeyFfVisibilityPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get public => 'Público';
	@override String get followers => 'Visível apenas para seguidores';
	@override String get private => 'Privado';
}

// Path: misskey.signup_
class _StringsMisskeySignupPtPt extends _StringsMisskeySignupEnUs {
	_StringsMisskeySignupPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Quase pronto';
	@override String get emailAddressInfo => 'Por favor, insira o seu endereço de e-mail. Ele não será divulgado.';
	@override String emailSent({required Object email}) => 'Um e-mail de confirmação foi enviado para o endereço de e-mail fornecido (${email}). Acesse o link fornecido no e-mail para concluir a criação de sua conta.';
}

// Path: misskey.accountDelete_
class _StringsMisskeyAccountDeletePtPt extends _StringsMisskeyAccountDeleteEnUs {
	_StringsMisskeyAccountDeletePtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Remover Conta';
	@override String get mayTakeTime => 'A exclusão de uma conta é um processo que requer muito recurso, portanto, se você tiver muito conteúdo criados ou arquivos enviados, pode levar algum tempo até ser concluída.';
	@override String get sendEmail => 'Quando a exclusão da conta estiver concluída, enviaremos uma notificação para o endereço de e-mail registrado.';
	@override String get requestAccountDelete => 'Solicitar exclusão de conta';
	@override String get started => 'O processo de exclusão foi iniciado.';
	@override String get inProgress => 'A exclusão está em andamento';
}

// Path: misskey.ad_
class _StringsMisskeyAdPtPt extends _StringsMisskeyAdEnUs {
	_StringsMisskeyAdPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get back => 'Voltar';
	@override String get reduceFrequencyOfThisAd => 'Diminuir frequência deste anúncio';
	@override String get hide => 'Não exibir anúncios';
}

// Path: misskey.forgotPassword_
class _StringsMisskeyForgotPasswordPtPt extends _StringsMisskeyForgotPasswordEnUs {
	_StringsMisskeyForgotPasswordPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Por favor, insira o endereço de e-mail usado no cadastro de sua conta. Um link para redefinição de senha será enviado para esse endereço.';
	@override String get ifNoEmail => 'Caso você não tenha registrado um endereço de e-mail, por favor, entre em contato com o administrador.';
}

// Path: misskey.gallery_
class _StringsMisskeyGalleryPtPt extends _StringsMisskeyGalleryEnUs {
	_StringsMisskeyGalleryPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get liked => 'Postagens curtidas';
	@override String get like => 'Curtir';
	@override String get unlike => 'Remover curtida';
}

// Path: misskey.email_
class _StringsMisskeyEmailPtPt extends _StringsMisskeyEmailEnUs {
	_StringsMisskeyEmailPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyEmailFollowPtPt follow_ = _StringsMisskeyEmailFollowPtPt._(_root);
	@override late final _StringsMisskeyEmailReceiveFollowRequestPtPt receiveFollowRequest_ = _StringsMisskeyEmailReceiveFollowRequestPtPt._(_root);
}

// Path: misskey.preferencesBackups_
class _StringsMisskeyPreferencesBackupsPtPt extends _StringsMisskeyPreferencesBackupsEnUs {
	_StringsMisskeyPreferencesBackupsPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get cannotSave => 'Não foi possível salvar';
	@override String applyConfirm({required Object name}) => 'Deseja aplicar o backup \'${name}\' ao dispositivo atual? As configurações atuais do dispositivo serão perdidas.';
	@override String deleteConfirm({required Object name}) => 'Deseja excluir ${name}?';
	@override String get cannotLoad => 'Não foi possível carregar';
}

// Path: misskey.channel_
class _StringsMisskeyChannelPtPt extends _StringsMisskeyChannelEnUs {
	_StringsMisskeyChannelPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get featured => 'Destaques';
	@override String get following => 'Seguindo';
	@override String usersCount({required Object n}) => '${n} usuários ativos';
	@override String notesCount({required Object n}) => '${n} notas';
	@override String get nameAndDescription => 'Nome e descrição';
}

// Path: misskey.menuDisplay_
class _StringsMisskeyMenuDisplayPtPt extends _StringsMisskeyMenuDisplayEnUs {
	_StringsMisskeyMenuDisplayPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Exibir painel lateral inteiro';
	@override String get top => 'Exibir barra superior';
	@override String get hide => 'Ocultar';
}

// Path: misskey.instanceMute_
class _StringsMisskeyInstanceMutePtPt extends _StringsMisskeyInstanceMuteEnUs {
	_StringsMisskeyInstanceMutePtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Todas as notas e repostagens do servidor configurado serão silenciados, incluindo respostas aos usuários do servidor mutado.';
}

// Path: misskey.theme_
class _StringsMisskeyThemePtPt extends _StringsMisskeyThemeEnUs {
	_StringsMisskeyThemePtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get description => 'Descrição';
	@override String get alpha => 'Opacidade';
	@override String deleteConstantConfirm({required Object const_}) => 'Confirma a exclusão da constante ${const_}?';
	@override late final _StringsMisskeyThemeKeysPtPt keys = _StringsMisskeyThemeKeysPtPt._(_root);
}

// Path: misskey.sfx_
class _StringsMisskeySfxPtPt extends _StringsMisskeySfxEnUs {
	_StringsMisskeySfxPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get note => 'Posts';
	@override String get notification => 'Notificações';
}

// Path: misskey.ago_
class _StringsMisskeyAgoPtPt extends _StringsMisskeyAgoEnUs {
	_StringsMisskeyAgoPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get invalid => 'Não há nada aqui';
}

// Path: misskey.x2fa_
class _StringsMisskeyX2faPtPt extends _StringsMisskeyX2faEnUs {
	_StringsMisskeyX2faPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get securityKeyInfo => 'Além da autenticação por impressão digital ou PIN, você também pode configurar a autenticação por chaves de segurança de hardware compatível com FIDO2 para proteger ainda mais a sua conta.';
	@override String removeKeyConfirm({required Object name}) => 'Deseja excluir ${name}?';
	@override String get renewTOTPCancel => 'Não, obrigado';
}

// Path: misskey.permissions_
class _StringsMisskeyPermissionsPtPt extends _StringsMisskeyPermissionsEnUs {
	_StringsMisskeyPermissionsPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'Visualizar informações da conta';
	@override String get writeAccount => 'Editar informações da conta';
	@override String get readBlocks => 'Visualizar a sua lista de usuários bloqueados';
	@override String get writeBlocks => 'Editar a sua lista de usuários bloqueados';
	@override String get readDrive => 'Visualizar os seus arquivos e pastas do drive';
	@override String get writeDrive => 'Editar ou excluir os seus arquivos e pastas do drive';
	@override String get readFavorites => 'Visualizar a sua lista de favoritos';
	@override String get writeFavorites => 'Editar a sua lista de favoritos';
	@override String get readFollowing => 'Visualizar informações de quem você segue';
	@override String get writeFollowing => 'Seguir ou deixar de seguir outras contas';
	@override String get readMessaging => 'Visualizar os seus chats';
	@override String get writeMessaging => 'Compor ou editar mensagens de chat';
	@override String get readMutes => 'Visualizar a sua lista de usuários silenciados';
	@override String get writeMutes => 'Editar a sua lista de usuários silenciados';
	@override String get writeNotes => 'Compor ou excluir notas';
	@override String get readNotifications => 'Visualizar as suas notificações';
	@override String get writeNotifications => 'Gerenciar as suas notificações';
	@override String get readReactions => 'Visualizar as suas reações';
	@override String get writeReactions => 'Editar as suas reações';
	@override String get writeVotes => 'Votar em enquetes';
	@override String get readPages => 'Visualizar as suas páginas';
	@override String get writePages => 'Editar ou excluir as suas páginas';
	@override String get readPageLikes => 'Visualizar as suas curtidas em páginas';
	@override String get writePageLikes => 'Editar as suas curtidas em páginas';
	@override String get readUserGroups => 'Visualizar os seus grupos de usuários';
	@override String get writeUserGroups => 'Editar ou excluir os seus grupos de usuários';
	@override String get readChannels => 'Visualizar os seus canais';
	@override String get writeChannels => 'Editar os seus canais';
	@override String get readGallery => 'Visualizar a sua galeria';
	@override String get writeGallery => 'Editar sua galeria';
	@override String get readGalleryLikes => 'Visualizar a sua lista de curtidas da galeria';
	@override String get writeGalleryLikes => 'Editar a sua lista de curtidas da galeria';
}

// Path: misskey.widgets_
class _StringsMisskeyWidgetsPtPt extends _StringsMisskeyWidgetsEnUs {
	_StringsMisskeyWidgetsPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Perfil';
	@override String get instanceInfo => 'Informações da instância';
	@override String get memo => 'Notas adesivas';
	@override String get notifications => 'Notificações';
	@override String get timeline => 'Linha do tempo';
	@override String get calendar => 'Calendário';
	@override String get trends => 'Destaques';
	@override String get clock => 'Relógio';
	@override String get rss => 'Leitor de RSS';
	@override String get rssTicker => 'Ticker RSS';
	@override String get activity => 'Atividades';
	@override String get photos => 'Fotos';
	@override String get digitalClock => 'Relógio digital';
	@override String get unixClock => 'Hora UNIX';
	@override String get federation => 'Federação';
	@override String get instanceCloud => 'Nuvem de instâncias';
	@override String get postForm => 'Campo de postagem';
	@override String get slideshow => 'Apresentação de slides';
	@override String get button => 'Botão';
	@override String get onlineUsers => 'Usuários Online';
	@override String get jobQueue => 'Fila de tarefas';
	@override String get serverMetric => 'Métricas do servidor';
	@override String get aiscript => 'Console AiScript';
	@override String get aiscriptApp => 'AiScript App';
	@override String get aichan => 'Ai';
	@override String get userList => 'Lista de usuários';
	@override late final _StringsMisskeyWidgetsUserListPtPt userList_ = _StringsMisskeyWidgetsUserListPtPt._(_root);
	@override String get clicker => 'Clicker';
}

// Path: misskey.cw_
class _StringsMisskeyCwPtPt extends _StringsMisskeyCwEnUs {
	_StringsMisskeyCwPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get show => 'Carregar mais';
}

// Path: misskey.poll_
class _StringsMisskeyPollPtPt extends _StringsMisskeyPollEnUs {
	_StringsMisskeyPollPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get canMultipleVote => 'Permitir múltipla seleção';
	@override String get vote => 'Votar em enquetes';
}

// Path: misskey.visibility_
class _StringsMisskeyVisibilityPtPt extends _StringsMisskeyVisibilityEnUs {
	_StringsMisskeyVisibilityPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get home => 'Início';
	@override String get followers => 'Seguidores';
	@override String get followersDescription => 'Tornar visível apenas para os meus seguidores';
}

// Path: misskey.profile_
class _StringsMisskeyProfilePtPt extends _StringsMisskeyProfileEnUs {
	_StringsMisskeyProfilePtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nome';
	@override String get username => 'Nome de usuário';
}

// Path: misskey.exportOrImport_
class _StringsMisskeyExportOrImportPtPt extends _StringsMisskeyExportOrImportEnUs {
	_StringsMisskeyExportOrImportPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get favoritedNotes => 'Notas nos favoritos';
	@override String get clips => 'Clipe';
	@override String get followingList => 'Seguindo';
	@override String get muteList => 'Silenciar';
	@override String get blockingList => 'Bloquear';
	@override String get userLists => 'Listas';
}

// Path: misskey.charts_
class _StringsMisskeyChartsPtPt extends _StringsMisskeyChartsEnUs {
	_StringsMisskeyChartsPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get federation => 'União';
}

// Path: misskey.timelines_
class _StringsMisskeyTimelinesPtPt extends _StringsMisskeyTimelinesEnUs {
	_StringsMisskeyTimelinesPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get home => 'Início';
}

// Path: misskey.play_
class _StringsMisskeyPlayPtPt extends _StringsMisskeyPlayEnUs {
	_StringsMisskeyPlayPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Criar  Play';
	@override String get edit => 'Editar Play';
	@override String get created => 'Play criado';
	@override String get updated => 'Play editado';
	@override String get deleted => 'Play foi excluído';
	@override String get pageSetting => 'Configurações do Play';
	@override String get editThisPage => 'Editar este Play';
	@override String get my => 'Meus Plays';
	@override String get liked => 'Plays curtidos';
	@override String get script => 'Script';
	@override String get summary => 'Descrição';
}

// Path: misskey.pages_
class _StringsMisskeyPagesPtPt extends _StringsMisskeyPagesEnUs {
	_StringsMisskeyPagesPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get deleted => 'Página excluída com sucesso';
	@override String get viewPage => 'Visualizar as suas páginas';
	@override String get like => 'Curtir';
	@override String get unlike => 'Remover curtida';
	@override String get liked => 'Páginas curtidas';
	@override late final _StringsMisskeyPagesBlocksPtPt blocks = _StringsMisskeyPagesBlocksPtPt._(_root);
}

// Path: misskey.relayStatus_
class _StringsMisskeyRelayStatusPtPt extends _StringsMisskeyRelayStatusEnUs {
	_StringsMisskeyRelayStatusPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'Pendente';
	@override String get accepted => 'Aprovado';
	@override String get rejected => 'Recusado';
}

// Path: misskey.notification_
class _StringsMisskeyNotificationPtPt extends _StringsMisskeyNotificationEnUs {
	_StringsMisskeyNotificationPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'Carregamento de arquivo efetuado com sucesso';
	@override String youGotMention({required Object name}) => '${name} te mencionou';
	@override String youGotReply({required Object name}) => '${name} te respondeu';
	@override String youGotQuote({required Object name}) => '${name} te citou';
	@override String youRenoted({required Object name}) => 'Repostagens de ${name}';
	@override String get youWereFollowed => 'Você tem um novo seguidor';
	@override String get youReceivedFollowRequest => 'Você recebeu um pedido de seguidor';
	@override String get yourFollowRequestAccepted => 'Seu pedido de seguidor foi aceito';
	@override String get pollEnded => 'Os resultados da enquete agora estão disponíveis';
	@override String get emptyPushNotificationMessage => 'As notificações de alerta foram atualizadas';
	@override late final _StringsMisskeyNotificationTypesPtPt types_ = _StringsMisskeyNotificationTypesPtPt._(_root);
	@override late final _StringsMisskeyNotificationActionsPtPt actions_ = _StringsMisskeyNotificationActionsPtPt._(_root);
}

// Path: misskey.deck_
class _StringsMisskeyDeckPtPt extends _StringsMisskeyDeckEnUs {
	_StringsMisskeyDeckPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Sempre mostrar a coluna principal';
	@override String get columnAlign => 'Alinhar colunas';
	@override String get addColumn => 'Adicionar coluna';
	@override String get swapLeft => 'Trocar de posição com a coluna à esquerda';
	@override String get swapRight => 'Trocar de posição com a coluna à direita';
	@override String get swapUp => 'Trocar de posição com a coluna acima';
	@override String get swapDown => 'Trocar de posição com a coluna abaixo';
	@override String get popRight => 'Acoplar coluna à direita';
	@override String get profile => 'Perfil';
	@override String get deleteProfile => 'Remover perfil';
	@override late final _StringsMisskeyDeckColumnsPtPt columns_ = _StringsMisskeyDeckColumnsPtPt._(_root);
}

// Path: misskey.drivecleaner_
class _StringsMisskeyDrivecleanerPtPt extends _StringsMisskeyDrivecleanerEnUs {
	_StringsMisskeyDrivecleanerPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'Tamanho descendente';
	@override String get orderByCreatedAtAsc => 'Data ascendente';
}

// Path: misskey.webhookSettings_
class _StringsMisskeyWebhookSettingsPtPt extends _StringsMisskeyWebhookSettingsEnUs {
	_StringsMisskeyWebhookSettingsPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nome';
	@override String get active => 'Ativado';
	@override late final _StringsMisskeyWebhookSettingsEventsPtPt events_ = _StringsMisskeyWebhookSettingsEventsPtPt._(_root);
}

// Path: misskey.moderationLogTypes_
class _StringsMisskeyModerationLogTypesPtPt extends _StringsMisskeyModerationLogTypesEnUs {
	_StringsMisskeyModerationLogTypesPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'Suspender';
	@override String get resetPassword => 'Redefinir senha';
}

// Path: misskey.reversi_
class _StringsMisskeyReversiPtPt extends _StringsMisskeyReversiEnUs {
	_StringsMisskeyReversiPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get total => 'Total';
}

// Path: misskey.achievements_.types_
class _StringsMisskeyAchievementsTypesPtPt extends _StringsMisskeyAchievementsTypesEnUs {
	_StringsMisskeyAchievementsTypesPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAchievementsTypesNotes1PtPt notes1_ = _StringsMisskeyAchievementsTypesNotes1PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10PtPt notes10_ = _StringsMisskeyAchievementsTypesNotes10PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100PtPt notes100_ = _StringsMisskeyAchievementsTypesNotes100PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes500PtPt notes500_ = _StringsMisskeyAchievementsTypesNotes500PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes1000PtPt notes1000_ = _StringsMisskeyAchievementsTypesNotes1000PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes5000PtPt notes5000_ = _StringsMisskeyAchievementsTypesNotes5000PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10000PtPt notes10000_ = _StringsMisskeyAchievementsTypesNotes10000PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes20000PtPt notes20000_ = _StringsMisskeyAchievementsTypesNotes20000PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes30000PtPt notes30000_ = _StringsMisskeyAchievementsTypesNotes30000PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes40000PtPt notes40000_ = _StringsMisskeyAchievementsTypesNotes40000PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes50000PtPt notes50000_ = _StringsMisskeyAchievementsTypesNotes50000PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes60000PtPt notes60000_ = _StringsMisskeyAchievementsTypesNotes60000PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes70000PtPt notes70000_ = _StringsMisskeyAchievementsTypesNotes70000PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes80000PtPt notes80000_ = _StringsMisskeyAchievementsTypesNotes80000PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes90000PtPt notes90000_ = _StringsMisskeyAchievementsTypesNotes90000PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100000PtPt notes100000_ = _StringsMisskeyAchievementsTypesNotes100000PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin3PtPt login3_ = _StringsMisskeyAchievementsTypesLogin3PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin7PtPt login7_ = _StringsMisskeyAchievementsTypesLogin7PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin15PtPt login15_ = _StringsMisskeyAchievementsTypesLogin15PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin30PtPt login30_ = _StringsMisskeyAchievementsTypesLogin30PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin60PtPt login60_ = _StringsMisskeyAchievementsTypesLogin60PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin100PtPt login100_ = _StringsMisskeyAchievementsTypesLogin100PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin200PtPt login200_ = _StringsMisskeyAchievementsTypesLogin200PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin300PtPt login300_ = _StringsMisskeyAchievementsTypesLogin300PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin400PtPt login400_ = _StringsMisskeyAchievementsTypesLogin400PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin500PtPt login500_ = _StringsMisskeyAchievementsTypesLogin500PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin600PtPt login600_ = _StringsMisskeyAchievementsTypesLogin600PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin700PtPt login700_ = _StringsMisskeyAchievementsTypesLogin700PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin800PtPt login800_ = _StringsMisskeyAchievementsTypesLogin800PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin900PtPt login900_ = _StringsMisskeyAchievementsTypesLogin900PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin1000PtPt login1000_ = _StringsMisskeyAchievementsTypesLogin1000PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteClipped1PtPt noteClipped1_ = _StringsMisskeyAchievementsTypesNoteClipped1PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteFavorited1PtPt noteFavorited1_ = _StringsMisskeyAchievementsTypesNoteFavorited1PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesMyNoteFavorited1PtPt myNoteFavorited1_ = _StringsMisskeyAchievementsTypesMyNoteFavorited1PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesProfileFilledPtPt profileFilled_ = _StringsMisskeyAchievementsTypesProfileFilledPtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesMarkedAsCatPtPt markedAsCat_ = _StringsMisskeyAchievementsTypesMarkedAsCatPtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing1PtPt following1_ = _StringsMisskeyAchievementsTypesFollowing1PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing10PtPt following10_ = _StringsMisskeyAchievementsTypesFollowing10PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing50PtPt following50_ = _StringsMisskeyAchievementsTypesFollowing50PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing100PtPt following100_ = _StringsMisskeyAchievementsTypesFollowing100PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing300PtPt following300_ = _StringsMisskeyAchievementsTypesFollowing300PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers1PtPt followers1_ = _StringsMisskeyAchievementsTypesFollowers1PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers10PtPt followers10_ = _StringsMisskeyAchievementsTypesFollowers10PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers50PtPt followers50_ = _StringsMisskeyAchievementsTypesFollowers50PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers100PtPt followers100_ = _StringsMisskeyAchievementsTypesFollowers100PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers300PtPt followers300_ = _StringsMisskeyAchievementsTypesFollowers300PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers500PtPt followers500_ = _StringsMisskeyAchievementsTypesFollowers500PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers1000PtPt followers1000_ = _StringsMisskeyAchievementsTypesFollowers1000PtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteDeletedWithin1minPtPt noteDeletedWithin1min_ = _StringsMisskeyAchievementsTypesNoteDeletedWithin1minPtPt._(_root);
	@override late final _StringsMisskeyAchievementsTypesDriveFolderCircularReferencePtPt driveFolderCircularReference_ = _StringsMisskeyAchievementsTypesDriveFolderCircularReferencePtPt._(_root);
}

// Path: misskey.role_.priority_
class _StringsMisskeyRolePriorityPtPt extends _StringsMisskeyRolePriorityEnUs {
	_StringsMisskeyRolePriorityPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get low => 'Baixa';
	@override String get middle => 'Médio';
	@override String get high => 'Alta';
}

// Path: misskey.role_.options_
class _StringsMisskeyRoleOptionsPtPt extends _StringsMisskeyRoleOptionsEnUs {
	_StringsMisskeyRoleOptionsPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'Visualizar Linha do Tempo Global';
	@override String get ltlAvailable => 'Visualizar Linha do Tempo Local';
	@override String get canPublicNote => 'Permitir postagem pública';
	@override String get canInvite => 'Permitir a criação de códigos de convites para a instância';
	@override String get inviteLimit => 'Limite de códigos de convite';
	@override String get inviteLimitCycle => 'Intervalo de emissão do código de convite';
	@override String get inviteExpirationTime => 'Prazo de validade do código de convite';
	@override String get canManageCustomEmojis => 'Permitir gerenciar emojis personalizados';
	@override String get driveCapacity => 'Capacidade do drive';
	@override String get alwaysMarkNsfw => 'Sempre marcar arquivos como NSFW';
	@override String get pinMax => 'Número máximo de notas fixadas';
	@override String get antennaMax => 'Número máximo de antenas';
	@override String get wordMuteMax => 'Número máximo de caracteres nas palavras silenciadas';
	@override String get webhookMax => 'Número máximo de webhooks';
	@override String get clipMax => 'Número máximo de clipes';
	@override String get noteEachClipsMax => 'Número máximo de notas em um clipe';
	@override String get userListMax => 'Número máximo de listas de usuários';
	@override String get userEachUserListsMax => 'Número máximo de usuários em uma lista';
	@override String get rateLimitFactor => 'Taxa de limitação';
	@override String get descriptionOfRateLimitFactor => 'Valores menores são menos restritivos, valores maiores são mais restritivos.';
	@override String get canHideAds => 'Permitir ocultar anúncios';
	@override String get canSearchNotes => 'Permitir a busca de notas';
}

// Path: misskey.role_.condition_
class _StringsMisskeyRoleConditionPtPt extends _StringsMisskeyRoleConditionEnUs {
	_StringsMisskeyRoleConditionPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get isLocal => 'Usuário local';
	@override String get isRemote => 'Usuário remoto';
	@override String get createdLessThan => 'Menos de X passados desde a criação da conta';
	@override String get createdMoreThan => 'Mais de X passados desde a criação da conta';
	@override String get followersLessThanOrEq => 'Possui X ou menos seguidores';
	@override String get followersMoreThanOrEq => 'Possui X ou mais seguidores';
	@override String get followingLessThanOrEq => 'Segue X ou menos contas';
	@override String get followingMoreThanOrEq => 'Segue X ou mais contas';
	@override String get notesLessThanOrEq => 'A quantidade de postagens é menor ou igual a';
	@override String get notesMoreThanOrEq => 'A quantidade de postagens é maior ou igual a';
	@override String get and => '~ E ~ (Condicional)';
	@override String get or => '~ OU ~ (Condicional)';
	@override String get not => 'Não ~ (Condicional)';
}

// Path: misskey.email_.follow_
class _StringsMisskeyEmailFollowPtPt extends _StringsMisskeyEmailFollowEnUs {
	_StringsMisskeyEmailFollowPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Você tem um novo seguidor';
}

// Path: misskey.email_.receiveFollowRequest_
class _StringsMisskeyEmailReceiveFollowRequestPtPt extends _StringsMisskeyEmailReceiveFollowRequestEnUs {
	_StringsMisskeyEmailReceiveFollowRequestPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Você recebeu um pedido de seguidor';
}

// Path: misskey.theme_.keys
class _StringsMisskeyThemeKeysPtPt extends _StringsMisskeyThemeKeysEnUs {
	_StringsMisskeyThemeKeysPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get mention => 'Menção';
	@override String get renote => 'Repostar';
	@override String get divider => 'Separador';
}

// Path: misskey.widgets_.userList_
class _StringsMisskeyWidgetsUserListPtPt extends _StringsMisskeyWidgetsUserListEnUs {
	_StringsMisskeyWidgetsUserListPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Selecione uma lista';
}

// Path: misskey.pages_.blocks
class _StringsMisskeyPagesBlocksPtPt extends _StringsMisskeyPagesBlocksEnUs {
	_StringsMisskeyPagesBlocksPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get image => 'imagem';
}

// Path: misskey.notification_.types_
class _StringsMisskeyNotificationTypesPtPt extends _StringsMisskeyNotificationTypesEnUs {
	_StringsMisskeyNotificationTypesPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get all => 'Todas';
	@override String get follow => 'Seguindo';
	@override String get mention => 'Menção';
	@override String get reply => 'Respostas';
	@override String get renote => 'Repostar';
	@override String get quote => 'Citar';
	@override String get reaction => 'Reações';
	@override String get pollEnded => 'Enquetes terminando';
	@override String get receiveFollowRequest => 'Recebeu pedidos de seguidor';
	@override String get followRequestAccepted => 'Aceitou pedidos de seguidor';
	@override String get app => 'Notificações de aplicativos conectados';
}

// Path: misskey.notification_.actions_
class _StringsMisskeyNotificationActionsPtPt extends _StringsMisskeyNotificationActionsEnUs {
	_StringsMisskeyNotificationActionsPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'te seguiu de volta';
	@override String get reply => 'Responder';
	@override String get renote => 'Repostar';
}

// Path: misskey.deck_.columns_
class _StringsMisskeyDeckColumnsPtPt extends _StringsMisskeyDeckColumnsEnUs {
	_StringsMisskeyDeckColumnsPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get main => 'Principal';
	@override String get widgets => 'Widgets';
	@override String get notifications => 'Notificações';
	@override String get tl => 'Timeline';
	@override String get antenna => 'Antenas';
	@override String get list => 'Listas';
	@override String get channel => 'Canais';
	@override String get mentions => 'Menções';
	@override String get direct => 'Notas diretas';
	@override String get roleTimeline => 'Linha do tempo do cargo';
}

// Path: misskey.webhookSettings_.events_
class _StringsMisskeyWebhookSettingsEventsPtPt extends _StringsMisskeyWebhookSettingsEventsEnUs {
	_StringsMisskeyWebhookSettingsEventsPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Quando seguindo um usuário';
	@override String get followed => 'Quando sendo seguido';
	@override String get renote => 'Quando repostado';
}

// Path: misskey.achievements_.types_.notes1_
class _StringsMisskeyAchievementsTypesNotes1PtPt extends _StringsMisskeyAchievementsTypesNotes1EnUs {
	_StringsMisskeyAchievementsTypesNotes1PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Configurando o meu misskey';
	@override String get description => 'Postou uma nota pela primeira vez';
	@override String get flavor => 'Divirta-se com o Misskey!';
}

// Path: misskey.achievements_.types_.notes10_
class _StringsMisskeyAchievementsTypesNotes10PtPt extends _StringsMisskeyAchievementsTypesNotes10EnUs {
	_StringsMisskeyAchievementsTypesNotes10PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Algumas notas';
	@override String get description => 'Postou 10 notas';
}

// Path: misskey.achievements_.types_.notes100_
class _StringsMisskeyAchievementsTypesNotes100PtPt extends _StringsMisskeyAchievementsTypesNotes100EnUs {
	_StringsMisskeyAchievementsTypesNotes100PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Um monte de notas';
	@override String get description => 'Postou 100 notas';
}

// Path: misskey.achievements_.types_.notes500_
class _StringsMisskeyAchievementsTypesNotes500PtPt extends _StringsMisskeyAchievementsTypesNotes500EnUs {
	_StringsMisskeyAchievementsTypesNotes500PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Coberto por notas';
	@override String get description => 'Postou 500 notas';
}

// Path: misskey.achievements_.types_.notes1000_
class _StringsMisskeyAchievementsTypesNotes1000PtPt extends _StringsMisskeyAchievementsTypesNotes1000EnUs {
	_StringsMisskeyAchievementsTypesNotes1000PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uma montanha de notas';
	@override String get description => 'Postou 1000 notas';
}

// Path: misskey.achievements_.types_.notes5000_
class _StringsMisskeyAchievementsTypesNotes5000PtPt extends _StringsMisskeyAchievementsTypesNotes5000EnUs {
	_StringsMisskeyAchievementsTypesNotes5000PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Enxurrada de notas';
	@override String get description => 'Postou 5000 notas';
}

// Path: misskey.achievements_.types_.notes10000_
class _StringsMisskeyAchievementsTypesNotes10000PtPt extends _StringsMisskeyAchievementsTypesNotes10000EnUs {
	_StringsMisskeyAchievementsTypesNotes10000PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Super nota';
	@override String get description => 'Postou 10000 notas';
}

// Path: misskey.achievements_.types_.notes20000_
class _StringsMisskeyAchievementsTypesNotes20000PtPt extends _StringsMisskeyAchievementsTypesNotes20000EnUs {
	_StringsMisskeyAchievementsTypesNotes20000PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preciso... de mais... notas...';
	@override String get description => 'Postou 20000 notas';
}

// Path: misskey.achievements_.types_.notes30000_
class _StringsMisskeyAchievementsTypesNotes30000PtPt extends _StringsMisskeyAchievementsTypesNotes30000EnUs {
	_StringsMisskeyAchievementsTypesNotes30000PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notas, Notas, NOTAS!';
	@override String get description => 'Postou 30000 notas';
}

// Path: misskey.achievements_.types_.notes40000_
class _StringsMisskeyAchievementsTypesNotes40000PtPt extends _StringsMisskeyAchievementsTypesNotes40000EnUs {
	_StringsMisskeyAchievementsTypesNotes40000PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fábrica de notas';
	@override String get description => 'Postou 40000 notas';
}

// Path: misskey.achievements_.types_.notes50000_
class _StringsMisskeyAchievementsTypesNotes50000PtPt extends _StringsMisskeyAchievementsTypesNotes50000EnUs {
	_StringsMisskeyAchievementsTypesNotes50000PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Planeta de notas';
	@override String get description => 'Postou 50000 notas';
}

// Path: misskey.achievements_.types_.notes60000_
class _StringsMisskeyAchievementsTypesNotes60000PtPt extends _StringsMisskeyAchievementsTypesNotes60000EnUs {
	_StringsMisskeyAchievementsTypesNotes60000PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quasar de notas';
	@override String get description => 'Postou 60000 notas';
}

// Path: misskey.achievements_.types_.notes70000_
class _StringsMisskeyAchievementsTypesNotes70000PtPt extends _StringsMisskeyAchievementsTypesNotes70000EnUs {
	_StringsMisskeyAchievementsTypesNotes70000PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Buraco negro de notas';
	@override String get description => 'Postou 70000 notas';
}

// Path: misskey.achievements_.types_.notes80000_
class _StringsMisskeyAchievementsTypesNotes80000PtPt extends _StringsMisskeyAchievementsTypesNotes80000EnUs {
	_StringsMisskeyAchievementsTypesNotes80000PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Galáxia de notas';
	@override String get description => 'Postou 80000 notas';
}

// Path: misskey.achievements_.types_.notes90000_
class _StringsMisskeyAchievementsTypesNotes90000PtPt extends _StringsMisskeyAchievementsTypesNotes90000EnUs {
	_StringsMisskeyAchievementsTypesNotes90000PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Universo de notas';
	@override String get description => 'Postou 90000 notas';
}

// Path: misskey.achievements_.types_.notes100000_
class _StringsMisskeyAchievementsTypesNotes100000PtPt extends _StringsMisskeyAchievementsTypesNotes100000EnUs {
	_StringsMisskeyAchievementsTypesNotes100000PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => 'Postou 100000 notas';
	@override String get flavor => 'Você realmente tem muita coisa para escrever';
}

// Path: misskey.achievements_.types_.login3_
class _StringsMisskeyAchievementsTypesLogin3PtPt extends _StringsMisskeyAchievementsTypesLogin3EnUs {
	_StringsMisskeyAchievementsTypesLogin3PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Iniciante I';
	@override String get description => 'Fez login por um total de 3 dias';
	@override String get flavor => 'De hoje em diante, me chame apenas de Misskist';
}

// Path: misskey.achievements_.types_.login7_
class _StringsMisskeyAchievementsTypesLogin7PtPt extends _StringsMisskeyAchievementsTypesLogin7EnUs {
	_StringsMisskeyAchievementsTypesLogin7PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Iniciante II';
	@override String get description => 'Fez login por um total de 7 dias';
	@override String get flavor => 'Pegando o jeito da coisa?';
}

// Path: misskey.achievements_.types_.login15_
class _StringsMisskeyAchievementsTypesLogin15PtPt extends _StringsMisskeyAchievementsTypesLogin15EnUs {
	_StringsMisskeyAchievementsTypesLogin15PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Iniciante III';
	@override String get description => 'Fez login por um total de 15 dias';
}

// Path: misskey.achievements_.types_.login30_
class _StringsMisskeyAchievementsTypesLogin30PtPt extends _StringsMisskeyAchievementsTypesLogin30EnUs {
	_StringsMisskeyAchievementsTypesLogin30PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist I';
	@override String get description => 'Fez login por um total de 30 dias';
}

// Path: misskey.achievements_.types_.login60_
class _StringsMisskeyAchievementsTypesLogin60PtPt extends _StringsMisskeyAchievementsTypesLogin60EnUs {
	_StringsMisskeyAchievementsTypesLogin60PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist II';
	@override String get description => 'Fez login por um total de 60 dias';
}

// Path: misskey.achievements_.types_.login100_
class _StringsMisskeyAchievementsTypesLogin100PtPt extends _StringsMisskeyAchievementsTypesLogin100EnUs {
	_StringsMisskeyAchievementsTypesLogin100PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist III';
	@override String get description => 'Fez login por um total de 100 dias';
	@override String get flavor => 'Misskist violento';
}

// Path: misskey.achievements_.types_.login200_
class _StringsMisskeyAchievementsTypesLogin200PtPt extends _StringsMisskeyAchievementsTypesLogin200EnUs {
	_StringsMisskeyAchievementsTypesLogin200PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Freguês I';
	@override String get description => 'Fez login por um total de 200 dias';
}

// Path: misskey.achievements_.types_.login300_
class _StringsMisskeyAchievementsTypesLogin300PtPt extends _StringsMisskeyAchievementsTypesLogin300EnUs {
	_StringsMisskeyAchievementsTypesLogin300PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Freguês II';
	@override String get description => 'Fez login por um total de 300 dias';
}

// Path: misskey.achievements_.types_.login400_
class _StringsMisskeyAchievementsTypesLogin400PtPt extends _StringsMisskeyAchievementsTypesLogin400EnUs {
	_StringsMisskeyAchievementsTypesLogin400PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Freguês III';
	@override String get description => 'Fez login por um total de 400 dias';
}

// Path: misskey.achievements_.types_.login500_
class _StringsMisskeyAchievementsTypesLogin500PtPt extends _StringsMisskeyAchievementsTypesLogin500EnUs {
	_StringsMisskeyAchievementsTypesLogin500PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veterano I';
	@override String get description => 'Fez login por um total de 500 dias';
	@override String get flavor => 'Cavalheiros, tudo o que peço são notas';
}

// Path: misskey.achievements_.types_.login600_
class _StringsMisskeyAchievementsTypesLogin600PtPt extends _StringsMisskeyAchievementsTypesLogin600EnUs {
	_StringsMisskeyAchievementsTypesLogin600PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veterano II';
	@override String get description => 'Fez login por um total de 600 dias';
}

// Path: misskey.achievements_.types_.login700_
class _StringsMisskeyAchievementsTypesLogin700PtPt extends _StringsMisskeyAchievementsTypesLogin700EnUs {
	_StringsMisskeyAchievementsTypesLogin700PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veterano III';
	@override String get description => 'Fez login por um total de 700 dias';
}

// Path: misskey.achievements_.types_.login800_
class _StringsMisskeyAchievementsTypesLogin800PtPt extends _StringsMisskeyAchievementsTypesLogin800EnUs {
	_StringsMisskeyAchievementsTypesLogin800PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mestre das notas I';
	@override String get description => 'Fez login por um total de 800 dias';
}

// Path: misskey.achievements_.types_.login900_
class _StringsMisskeyAchievementsTypesLogin900PtPt extends _StringsMisskeyAchievementsTypesLogin900EnUs {
	_StringsMisskeyAchievementsTypesLogin900PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mestre das notas II';
	@override String get description => 'Fez login por um total de 900 dias';
}

// Path: misskey.achievements_.types_.login1000_
class _StringsMisskeyAchievementsTypesLogin1000PtPt extends _StringsMisskeyAchievementsTypesLogin1000EnUs {
	_StringsMisskeyAchievementsTypesLogin1000PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mestre das notas III';
	@override String get description => 'Fez login por um total de 1000 dias';
	@override String get flavor => 'Obrigado por utilizar o Misskey!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _StringsMisskeyAchievementsTypesNoteClipped1PtPt extends _StringsMisskeyAchievementsTypesNoteClipped1EnUs {
	_StringsMisskeyAchievementsTypesNoteClipped1PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Não posso deixar de adicionar ao clipe';
	@override String get description => 'Adicionou a um clipe a sua primeira nota';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _StringsMisskeyAchievementsTypesNoteFavorited1PtPt extends _StringsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesNoteFavorited1PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Astrônomo amador';
	@override String get description => 'Adicionou uma nota aos favoritos pela primeira vez';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _StringsMisskeyAchievementsTypesMyNoteFavorited1PtPt extends _StringsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesMyNoteFavorited1PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cabeça nas estrelas';
	@override String get description => 'Teve uma das suas notas adicionada aos favoritos de alguém';
}

// Path: misskey.achievements_.types_.profileFilled_
class _StringsMisskeyAchievementsTypesProfileFilledPtPt extends _StringsMisskeyAchievementsTypesProfileFilledEnUs {
	_StringsMisskeyAchievementsTypesProfileFilledPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tudo pronto';
	@override String get description => 'Configurou o seu perfil';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _StringsMisskeyAchievementsTypesMarkedAsCatPtPt extends _StringsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_StringsMisskeyAchievementsTypesMarkedAsCatPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eu Sou Um Gato';
	@override String get description => 'Marcou a sua conta como um gato';
	@override String get flavor => 'Ainda não tenho um nome.';
}

// Path: misskey.achievements_.types_.following1_
class _StringsMisskeyAchievementsTypesFollowing1PtPt extends _StringsMisskeyAchievementsTypesFollowing1EnUs {
	_StringsMisskeyAchievementsTypesFollowing1PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Primeira vez seguindo alguém';
	@override String get description => 'Seguiu um usuário pela primeira vez';
}

// Path: misskey.achievements_.types_.following10_
class _StringsMisskeyAchievementsTypesFollowing10PtPt extends _StringsMisskeyAchievementsTypesFollowing10EnUs {
	_StringsMisskeyAchievementsTypesFollowing10PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Circulando, circulando';
	@override String get description => 'Seguiu 10 usuários';
}

// Path: misskey.achievements_.types_.following50_
class _StringsMisskeyAchievementsTypesFollowing50PtPt extends _StringsMisskeyAchievementsTypesFollowing50EnUs {
	_StringsMisskeyAchievementsTypesFollowing50PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Muitos amigos';
	@override String get description => 'Seguiu 50 usuários';
}

// Path: misskey.achievements_.types_.following100_
class _StringsMisskeyAchievementsTypesFollowing100PtPt extends _StringsMisskeyAchievementsTypesFollowing100EnUs {
	_StringsMisskeyAchievementsTypesFollowing100PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => '100 amigos';
	@override String get description => 'Seguiu 100 usuários';
}

// Path: misskey.achievements_.types_.following300_
class _StringsMisskeyAchievementsTypesFollowing300PtPt extends _StringsMisskeyAchievementsTypesFollowing300EnUs {
	_StringsMisskeyAchievementsTypesFollowing300PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobrecarga de amigos';
	@override String get description => 'Seguiu 300 usuários';
}

// Path: misskey.achievements_.types_.followers1_
class _StringsMisskeyAchievementsTypesFollowers1PtPt extends _StringsMisskeyAchievementsTypesFollowers1EnUs {
	_StringsMisskeyAchievementsTypesFollowers1PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Primeiro seguidor';
	@override String get description => 'Ganhou o seu primeiro seguidor';
}

// Path: misskey.achievements_.types_.followers10_
class _StringsMisskeyAchievementsTypesFollowers10PtPt extends _StringsMisskeyAchievementsTypesFollowers10EnUs {
	_StringsMisskeyAchievementsTypesFollowers10PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sigam-me os bons!';
	@override String get description => 'Ganhou 10 seguidores';
}

// Path: misskey.achievements_.types_.followers50_
class _StringsMisskeyAchievementsTypesFollowers50PtPt extends _StringsMisskeyAchievementsTypesFollowers50EnUs {
	_StringsMisskeyAchievementsTypesFollowers50PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aos montes';
	@override String get description => 'Ganhou 50 seguidores';
}

// Path: misskey.achievements_.types_.followers100_
class _StringsMisskeyAchievementsTypesFollowers100PtPt extends _StringsMisskeyAchievementsTypesFollowers100EnUs {
	_StringsMisskeyAchievementsTypesFollowers100PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Popular';
	@override String get description => 'Ganhou 100 seguidores';
}

// Path: misskey.achievements_.types_.followers300_
class _StringsMisskeyAchievementsTypesFollowers300PtPt extends _StringsMisskeyAchievementsTypesFollowers300EnUs {
	_StringsMisskeyAchievementsTypesFollowers300PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Em fila única, por favor';
	@override String get description => 'Ganhou 300 seguidores';
}

// Path: misskey.achievements_.types_.followers500_
class _StringsMisskeyAchievementsTypesFollowers500PtPt extends _StringsMisskeyAchievementsTypesFollowers500EnUs {
	_StringsMisskeyAchievementsTypesFollowers500PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Torre de celular';
	@override String get description => 'Ganhou 500 seguidores';
}

// Path: misskey.achievements_.types_.followers1000_
class _StringsMisskeyAchievementsTypesFollowers1000PtPt extends _StringsMisskeyAchievementsTypesFollowers1000EnUs {
	_StringsMisskeyAchievementsTypesFollowers1000PtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Influencer';
	@override String get description => 'Ganhou 1000 seguidores';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _StringsMisskeyAchievementsTypesNoteDeletedWithin1minPtPt extends _StringsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_StringsMisskeyAchievementsTypesNoteDeletedWithin1minPtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Deixa pra lá';
	@override String get description => 'Excluí a postagem dentro de 1 minuto após ter publicado';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _StringsMisskeyAchievementsTypesDriveFolderCircularReferencePtPt extends _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_StringsMisskeyAchievementsTypesDriveFolderCircularReferencePtPt._(_StringsPtPt root) : this._root = root, super._(root);

	@override final _StringsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Referência circular';
}
