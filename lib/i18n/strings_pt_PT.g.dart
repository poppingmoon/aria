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
class TranslationsPtPt extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPtPt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ptPt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <pt-PT>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsPtPt _root = this; // ignore: unused_field

	@override 
	TranslationsPtPt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPtPt(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAriaPtPt aria = _TranslationsAriaPtPt._(_root);
	@override late final _TranslationsMisskeyPtPt misskey = _TranslationsMisskeyPtPt._(_root);
}

// Path: aria
class _TranslationsAriaPtPt extends TranslationsAriaEnUs {
	_TranslationsAriaPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get aboutAria => 'Sobre Aria';
	@override String get addTab => 'Adicionar aba';
	@override String get alwaysExpandCw => 'Sempre expandir aviso de conteúdo';
	@override String get alwaysExpandLongNote => 'Sempre expandir nota longa';
	@override String get alwaysExpandMediaInSubNote => 'Sempre expandir mídia na subnota';
	@override String get alwaysShowAllReactions => 'Sempre mostrar todas as reações';
	@override String get avatarSize => 'Tamanho do avatar';
	@override String get custom => 'Personalizado';
	@override String get defaultReaction => 'Reação padrão';
	@override String get disableDataSaverWhenOnWifi => 'Desabilitar economia de dados quando estiver no Wi-Fi';
	@override String get disableSubscribingNotes => 'Desabilitar atualizações de reações em tempo real';
	@override String get displayOfThumbnail => 'Exibição de miniatura';
	@override String get findServer => 'Encontre um servidor Misskey';
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Tem certeza que quer seguir '),
		name,
		const TextSpan(text: '?'),
	]);
	@override String get guest => 'Convidado';
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria é traduzido para várias línguas por voluntários. Você pode ajudar com as traduções em '),
		link,
		const TextSpan(text: '.'),
	]);
	@override String get keepTimelinePosition => 'Manter posição da timeline';
	@override String get lineHeight => 'Altura da linha';
	@override String get margin => 'Margem';
	@override String get mergeReactionsByName => 'Juntar reações com o mesmo nome';
	@override String get mutedEmojis => 'Emojis silenciados';
	@override String get noteFooterSize => 'Tamanho dos botões de ação nas notas';
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' Pessoas Online'),
	]);
	@override String get paste => 'Colar';
	@override String get recentlyUsedEmojis => 'Emojis usados recentemente';
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Repostado por '),
		user,
	]);
	@override TextSpan settingsForUser({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Configurações para '),
		user,
	]);
	@override String get showAvatarsInNote => 'Exibir avatares nas notas';
	@override String get showAvatarsInSubNote => 'Exibir avatares nas subnotas';
	@override String get showEntireImage => 'Mostrar imagem inteira';
	@override String get showLikeButtonInNoteFooter => 'Adicionar "Curtir" ao menu da nota';
	@override String get showNoteCreatedAt => 'Exibir data de criação das notas';
	@override String get showNoteFooter => 'Mostrar botões de ação nas notas';
	@override String get showNoteReactionsViewer => 'Mostrar visualizadores das reações nas notas';
	@override String get showQuoteButtonInNoteFooter => 'Adicionar "Citar" ao menu da nota';
	@override String get showReactionsCountForEachTypes => 'Ver o número de reações para cada tipo de reação';
	@override String get showRenotesCount => 'Ver o número de repostagens nas notas';
	@override String get showRepliesCount => 'Ver o número de respostas nas notas';
	@override String get showSelfRenotes => 'Mostrar repostagens próprias';
	@override String get showSubNoteFooter => 'Mostrar botões de ação nas subnotas';
	@override String get showSubNoteReactionsViewer => 'Mostrar visualizadores das reações nas subnotas';
	@override String get showTranslateButtonInNoteFooter => 'Adicionar "Traduzir" ao menu da nota';
	@override String get sinceDate => 'Desde';
	@override String get tabName => 'Nome da aba';
	@override String get tabType => 'Tipo de aba';
	@override String get tabs => 'Abas';
	@override String get timeMachine => 'Máquina do tempo';
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Gostaria de deixar de seguir '),
		name,
		const TextSpan(text: '?'),
	]);
	@override String get untilDate => 'Até';
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' disse algo'),
	]);
	@override TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Publicação de '),
		name,
		const TextSpan(text: ' contém conteúdo sensível'),
	]);
}

// Path: misskey
class _TranslationsMisskeyPtPt extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Português';
	@override String get headlineMisskey => 'Uma rede ligada por notas';
	@override String get introMisskey => 'Bem-vindo! O Misskey é um serviço de microblog descentralizado de código aberto.\nCrie "notas" para compartilhar o que está acontecendo agora ou para se expressar com todos à sua volta 📡\nVocê também pode adicionar rapidamente reações às notas de outras pessoas usando a função "Reações" 👍\nVamos explorar um novo mundo 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} é uma instância da plataforma de código aberto <b>Misskey</b>.';
	@override String monthAndDay({required Object day, required Object month}) => '${day}/${month}';
	@override String get search => 'Pesquisar';
	@override String get reset => 'Redefinir';
	@override String get notifications => 'Notificações';
	@override String get username => 'Nome de usuário';
	@override String get password => 'Senha';
	@override String get initialPasswordForSetup => 'Senha para a configuração inicial';
	@override String get initialPasswordIsIncorrect => 'Senha para configuração inicial está incorreta';
	@override String get initialPasswordForSetupDescription => 'Use a senha configurada no arquivo de configuração se você instalou o Misskey manualmente.\nSe você estiver utilizando um serviço de hospedagem, utilize a senha fornecida.\nSe uma senha não foi configurada, deixe em branco e continue.';
	@override String get forgotPassword => 'Esqueci-me da senha';
	@override String get fetchingAsApObject => 'Buscando no Fediverso...';
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
	@override String get copyRemoteLink => 'Copiar endereço remoto';
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
	@override String get searchThisUsersNotes => 'Pesquisar as notas desse usuário';
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
	@override String get note => 'Publicar';
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
	@override String get follow => 'Seguir';
	@override String get followRequest => 'Enviar pedido de seguidor';
	@override String get followRequests => 'Pedidos de seguidor';
	@override String get unfollow => 'Deixar de seguir';
	@override String get followRequestPending => 'Pedido de seguidor pendente';
	@override String get enterEmoji => 'Inserir emoji';
	@override String get renote => 'Repostar';
	@override String get unrenote => 'Remover repostagem';
	@override String get renoted => 'Repostado';
	@override String renotedToX({required Object name}) => 'Repostar em ${name}.';
	@override String get cantRenote => 'Não é possível repostar esta postagem';
	@override String get cantReRenote => 'Não pode repostar este repost';
	@override String get quote => 'Citar';
	@override String get inChannelRenote => 'Repostar no canal';
	@override String get inChannelQuote => 'Citar no canal';
	@override String get renoteToChannel => 'Repostar em canal';
	@override String get renoteToOtherChannel => 'Repostar em outro canal';
	@override String get pinnedNote => 'Nota fixada';
	@override String get pinned => 'Fixar no perfil';
	@override String get you => 'Você';
	@override String get clickToShow => 'Clique para ver';
	@override String get sensitive => 'Conteúdo sensível';
	@override String get add => 'Adicionar';
	@override String get reaction => 'Reações';
	@override String get reactions => 'Reações';
	@override String get emojiPicker => 'Seleção de emoji';
	@override String get pinnedEmojisForReactionSettingDescription => 'Selecionar os emojis que serão fixados e exibidos ao reagir.';
	@override String get pinnedEmojisSettingDescription => 'Selecionar os emojis que serão fixos e exibidos na seleção de emoji.';
	@override String get emojiPickerDisplay => 'Janela de seleção de emoji';
	@override String get overwriteFromPinnedEmojisForReaction => 'Sobrescrever as opções de reação';
	@override String get overwriteFromPinnedEmojis => 'Sobrescrever as opções gerais';
	@override String get reactionSettingDescription2 => 'Arraste para reordenar, clique para excluir, pressione + para adicionar.';
	@override String get rememberNoteVisibility => 'Lembrar das configurações de visibilidade de notas';
	@override String get attachCancel => 'Remover anexo';
	@override String get deleteFile => 'Excluir arquivo';
	@override String get markAsSensitive => 'Marcar como sensível';
	@override String get unmarkAsSensitive => 'Desmarcar como sensível';
	@override String get enterFileName => 'Digite o nome do arquivo';
	@override String get mute => 'Silenciar';
	@override String get unmute => 'Desmutar';
	@override String get renoteMute => 'Silenciar repostagens';
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
	@override String get createAntenna => 'Criar  uma antena';
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
	@override String get continueOnRemote => '';
	@override String get chooseServerOnMisskeyHub => 'Escolher um servidor da Misskey Hub';
	@override String get specifyServerHost => 'Especificar uma instância diretamente';
	@override String get inputHostName => 'Insira o domínio';
	@override String get general => 'Geral';
	@override String get wallpaper => 'Papel de parede';
	@override String get setWallpaper => 'Definir papel de parede';
	@override String get removeWallpaper => 'Remover papel de parede';
	@override String searchWith({required Object q}) => 'Buscar: ${q}';
	@override String get youHaveNoLists => 'Não tem nenhuma lista';
	@override String followConfirm({required Object name}) => 'Tem certeza que quer seguir ${name}?';
	@override String get proxyAccount => 'Conta proxy';
	@override String get proxyAccountDescription => 'Uma conta de proxy é uma conta que assume o acompanhamento remoto de um usuário sob certas condições específicas. Por exemplo, quando um usuário inclui um usuário remoto em uma lista, mas ninguém na lista está seguindo o usuário remoto, a atividade não é entregue ao servidor. Nesse caso, a conta de proxy entra em ação para seguir o usuário remoto em vez disso.';
	@override String get host => 'Host';
	@override String get selectSelf => 'Selecionar a mim';
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
	@override String get silenceThisInstance => 'Silenciar essa instância';
	@override String get mediaSilenceThisInstance => 'Silenciar a mídia dessa instância';
	@override String get operations => 'Operações';
	@override String get software => 'Software';
	@override String get softwareName => 'Software';
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
	@override String get silencedInstances => 'Instâncias silenciadas';
	@override String get silencedInstancesDescription => 'Liste o nome de hospedagem dos servidores que você deseja silenciar, separados por linha. Todas as contas desses servidores serão silenciada e poderão enviar solicitações para seguir, mas não poderão mencionar usuários locais sem segui-los. Isso não afetará servidores bloqueados.';
	@override String get mediaSilencedInstances => 'Instâncias com mídia silenciadas';
	@override String get mediaSilencedInstancesDescription => 'Liste o nome de hospedagem dos servidores cuja mídia você deseja silenciar, separados por linha. Todas as contas desses servidores serão consideradas sensíveis e não poderão utilizar emojis personalizados. Isso não afetará servidores bloqueados.';
	@override String get federationAllowedHosts => 'Servidores com federação permitida';
	@override String get federationAllowedHostsDescription => 'Especifique o endereço dos servidores em que deseja permitir a federação separados por linha.';
	@override String get muteAndBlock => 'Silenciar e bloquear';
	@override String get mutedUsers => 'Usuários silenciados';
	@override String get blockedUsers => 'Usuários bloqueados';
	@override String get noUsers => 'Sem usuários';
	@override String get editProfile => 'Editar Perfil';
	@override String get noteDeleteConfirm => 'Deseja excluir esta nota?';
	@override String get pinLimitExceeded => 'Não é possível fixar novas notas';
	@override String get done => 'Concluído';
	@override String get processing => 'Em Progresso';
	@override String get preprocessing => 'Preparando...';
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
	@override String get lookup => 'Consultar';
	@override String get announcements => 'Avisos';
	@override String get imageUrl => 'URL da imagem';
	@override String get remove => 'Remover';
	@override String get removed => 'Removido';
	@override String removeAreYouSure({required Object x}) => 'Deseja excluir "${x}"?';
	@override String deleteAreYouSure({required Object x}) => 'Deseja excluir "${x}"?';
	@override String get resetAreYouSure => 'Deseja reiniciar?';
	@override String get areYouSure => 'Tem certeza?';
	@override String get saved => 'Salvo';
	@override String get upload => 'Fazer upload';
	@override String get keepOriginalUploading => 'Manter a imagem original';
	@override String get keepOriginalUploadingDescription => 'Ao fazer o upload de uma imagem, ela será mantida em sua versão original. Caso desative esta opção, o navegador irá gerar uma versão da imagem otimizada para publicação na web durante o upload.';
	@override String get fromDrive => 'Do drive';
	@override String get fromUrl => 'Da URL';
	@override String get uploadFromUrl => 'Enviar por URL';
	@override String get uploadFromUrlDescription => 'URL do arquivo que você deseja enviar';
	@override String get uploadFromUrlRequested => 'Upload solicitado';
	@override String get uploadFromUrlMayTakeTime => 'Pode levar algum tempo para que o upload seja concluído.';
	@override String uploadNFiles({required Object n}) => 'Enviar ${n} arquivos';
	@override String get explore => 'Explorar';
	@override String get messageRead => 'Lida';
	@override String get noMoreHistory => 'Não existe histórico anterior';
	@override String get startChat => 'Iniciar conversa';
	@override String nUsersRead({required Object n}) => '${n} pessoas leram';
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
	@override String get theme => 'Tema';
	@override String get themeForLightMode => 'Temas usados ​​no modo de luz';
	@override String get themeForDarkMode => 'Temas usados ​​no modo escuro';
	@override String get light => 'Claro';
	@override String get dark => 'Escuro';
	@override String get lightThemes => 'Tema claro';
	@override String get darkThemes => 'Tema escuro';
	@override String get syncDeviceDarkMode => 'Sincronize com o modo escuro do dispositivo';
	@override String switchDarkModeManuallyWhenSyncEnabledConfirm({required Object x}) => '"${x}" está ativado. Você gostaria de desligar a sincronização e alterar manualmente?';
	@override String get drive => 'Drive';
	@override String get fileName => 'Nome do Ficheiro';
	@override String get selectFile => 'Selecione os arquivos';
	@override String get selectFiles => 'Selecione os arquivos';
	@override String get selectFolder => 'Selecionar uma pasta';
	@override String get selectFolders => 'Selecionar uma pasta';
	@override String get fileNotSelected => 'Nenhuma pasta selecionada';
	@override String get renameFile => 'Renomear ficheiro';
	@override String get folderName => 'Nome da pasta';
	@override String get createFolder => 'Criar pasta';
	@override String get renameFolder => 'Renomear Pasta';
	@override String get deleteFolder => 'Excluir pasta';
	@override String get folder => 'Pasta';
	@override String get addFile => 'Adicionar arquivo';
	@override String get showFile => 'Mostrar arquivos';
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
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => 'Habilitar mCaptcha';
	@override String get mcaptchaSiteKey => 'Chave do sítio ‘web’';
	@override String get mcaptchaSecretKey => 'Chave secreta';
	@override String get mcaptchaInstanceUrl => 'URL do servidor mCaptcha';
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
	@override String get antennaExcludeBots => 'Ignorar contas de bot';
	@override String get antennaKeywordsDescription => 'Se você separá-lo com um espaço, será uma especificação AND, e se você separá-lo com uma quebra de linha, será uma especificação OR.';
	@override String get notifyAntenna => 'Notificar novas notas';
	@override String get withFileAntenna => 'Apenas notas com arquivos anexados';
	@override String get excludeNotesInSensitiveChannel => 'Excluir notas de canais sensíveis';
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
	@override String get about => 'Sobre';
	@override String get aboutMisskey => 'Sobre Misskey';
	@override String get administrator => 'Administrador';
	@override String get token => 'Símbolo';
	@override String get x2fa => 'Autenticação de dois fatores';
	@override String get setupOf2fa => 'Configuração de autenticação de dois fatores';
	@override String get totp => 'Aplicativo Autenticador';
	@override String get totpDescription => 'Digite a senha de uso único informado pelo aplicativo autenticador';
	@override String get moderator => 'Moderador';
	@override String get moderation => 'Moderação';
	@override String get moderationNote => 'Nota de moderação';
	@override String get moderationNoteDescription => 'Você pode preencher notas que serão compartilhadas apenas com moderadores.';
	@override String get addModerationNote => 'Adicionar nota de moderação';
	@override String get moderationLogs => 'Logs de moderação';
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
	@override String get attachAsFileQuestion => 'O texto na área de transferência é muito longo. Você gostaria de anexá-lo como um arquivo de texto?';
	@override String get onlyOneFileCanBeAttached => 'Apenas um arquivo pode ser anexado a uma mensagem';
	@override String get signinRequired => 'É necessário se inscrever ou fazer login antes de continuar';
	@override String get signinOrContinueOnRemote => 'Para continuar, você precisa mover o seu servidor ou entrar/cadastrar-se nesse servidor.';
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
	@override String get menuStyle => 'Estilo do menu';
	@override String get style => 'Estilo';
	@override String get drawer => 'Gaveta';
	@override String get popup => 'Pop-up';
	@override String get showNoteActionsOnlyHover => 'Exibir as ações da nota somente ao passar o cursor sobre ela';
	@override String get showReactionsCount => 'Ver o número de reações nas notas';
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
	@override String get serverLogs => 'Logs do servidor';
	@override String get deleteAll => 'Excluir tudo';
	@override String get showFixedPostForm => 'Exibir o formulário de postagem na parte superior da linha do tempo';
	@override String get showFixedPostFormInChannel => 'Exibir o campo de postagem na parte superior da linha do tempo (canais)';
	@override String get withRepliesByDefaultForNewlyFollowed => 'Incluir respostas por usuários recém-seguidos na linha do tempo por padrão';
	@override String get newNoteRecived => 'Nova nota recebida';
	@override String get newNote => 'Nova Nota';
	@override String get sounds => 'Sons';
	@override String get sound => 'Sons';
	@override String get notificationSoundSettings => 'Configurações de som de notificações';
	@override String get listen => 'Ouvir';
	@override String get none => 'Nenhum';
	@override String get showInPage => 'Ver na página';
	@override String get popout => 'Sair';
	@override String get volume => 'Volume';
	@override String get masterVolume => 'volume principal';
	@override String get notUseSound => 'Desabilitar som';
	@override String get useSoundOnlyWhenActive => 'Apenas reproduzir sons quando Misskey estiver aberto.';
	@override String get details => 'Detalhes';
	@override String get renoteDetails => 'Detalhes da repostagem';
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
	@override String get uiInspector => 'Inspecionador de interface';
	@override String get uiInspectorDescription => 'Você pode ver a lista de servidores de componentes de interface na memória. Componentes da interface serão gerados pela função Ui:C:.';
	@override String get output => 'Resultado';
	@override String get script => 'Script';
	@override String get disablePagesScript => 'Desabilitar scripts nas páginas';
	@override String get updateRemoteUser => 'Atualizar informações do usuário remoto';
	@override String get unsetUserAvatar => 'Remover avatar';
	@override String get unsetUserAvatarConfirm => 'Você tem certeza de que deseja remover o avatar?';
	@override String get unsetUserBanner => 'Remover banner';
	@override String get unsetUserBannerConfirm => 'Você tem certeza de que deseja remover o banner?';
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
	@override String get adminPermission => 'Permissões de administrador';
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
	@override String get wordMuteDescription => 'Minimizar notas que contêm a palavra ou frase especificada. Notas minimizadas são exibidas ao clicá-las.';
	@override String get hardWordMute => 'Silenciar palavras (esconder posts)';
	@override String get showMutedWord => 'Exibir palavras silenciadas';
	@override String get hardWordMuteDescription => 'Esconder notas que contêm a palavra ou frase especificada. Diferente do silenciamento de palavras, a nota será completamente escondida.';
	@override String get regexpError => 'Erro na expressão regular';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'Ocorreu um erro na expressão regular na linha ${line} da palavra mutada ${tab}:';
	@override String get instanceMute => 'Instâncias silenciadas';
	@override String userSaysSomething({required Object name}) => '${name} disse algo';
	@override String userSaysSomethingAbout({required Object name, required Object word}) => '${name} disse algo sobre "${word}"';
	@override String get makeActive => 'Ativar';
	@override String get display => 'Visualizar';
	@override String get copy => 'Copiar';
	@override String get copiedToClipboard => 'Copiado à área de transferência';
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
	@override String get theKeywordWhenSearchingForCustomEmoji => 'Essa é a palavra-chave ao pesquisar por emojis personalizados';
	@override String get setMultipleBySeparatingWithSpace => 'Você pode configurar vários itens separando-os por espaço.';
	@override String get fileIdOrUrl => 'ID do arquivo ou URL';
	@override String get behavior => 'Comportamento';
	@override String get sample => 'Exemplo';
	@override String get abuseReports => 'Denúncias';
	@override String get reportAbuse => 'Denunciar';
	@override String get reportAbuseRenote => 'Reportar repostagem';
	@override String reportAbuseOf({required Object name}) => 'Denunciar ${name}';
	@override String get fillAbuseReportDescription => 'Por favor, forneça detalhes sobre o motivo da denúncia. Se houver uma nota específica envolvida, inclua também a URL dela.';
	@override String get abuseReported => 'Denúncia enviada. Obrigado por sua ajuda.';
	@override String get reporter => 'Denunciante';
	@override String get reporteeOrigin => 'Origem da denúncia';
	@override String get reporterOrigin => 'Origem do denunciante';
	@override String get send => 'Enviar';
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
	@override String get highlightSensitiveMedia => 'Destacar mídia sensível';
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
	@override String get makeExplorable => 'Deixe a sua conta encontrável em "Explorar".';
	@override String get makeExplorableDescription => 'Se você desativá-lo, outros usuários não poderão encontrar a sua conta na aba Descoberta.';
	@override String get duplicate => 'Duplicar';
	@override String get left => 'Esquerda';
	@override String get center => 'Centralizar';
	@override String get wide => 'Largo';
	@override String get narrow => 'Estreito';
	@override String get reloadToApplySetting => 'As configurações serão refletidas após recarregar a página. Deseja recarregar agora?';
	@override String get needReloadToApply => 'É necessário recarregar a página para refletir as alterações.';
	@override String get needToRestartServerToApply => 'É necessário reiniciar o servidor para aplicar as mudanças.';
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
	@override String get user => 'Usuário';
	@override String get administration => 'Administrar';
	@override String get accounts => 'Contas';
	@override String get switch_ => 'Trocar';
	@override String get noMaintainerInformationWarning => 'A informação de administrador não foi configurada.';
	@override String get noInquiryUrlWarning => 'URL de consulta não está definida';
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
	@override String get followingVisibility => 'Visibilidade dos usuários seguidos';
	@override String get followersVisibility => 'Visibilidade dos seguidores';
	@override String get continueThread => 'Ver mais desta conversa';
	@override String get deleteAccountConfirm => 'Deseja realmente excluir a conta?';
	@override String get incorrectPassword => 'Senha inválida.';
	@override String get incorrectTotp => 'A senha de uso único está incorreta ou expirou.';
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
	@override String get threeMonths => '3 meses';
	@override String get oneYear => '1 ano';
	@override String get threeDays => '3 dias';
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
	@override String get logoutWillClearClientData => 'Sair irá remover as configurações do cliente do navegador. Para redefinir as configurações ao entrar, você deve habilitar o backup automático de configurações.';
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
	@override String get failedToUpload => 'Falha ao enviar';
	@override String get cannotUploadBecauseInappropriate => 'Esse arquivo não pôde ser enviado porque partes dele foram detectadas como potencialmente inapropriadas.';
	@override String get cannotUploadBecauseNoFreeSpace => 'Envio falhou devido à falta de capacidade no Drive.';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'Não é possível realizar o upload deste arquivo porque ele excede o tamanho máximo permitido.';
	@override String get cannotUploadBecauseUnallowedFileType => 'Não foi possível fazer o envio, pois o formato do arquivo não foi autorizado.';
	@override String get beta => 'Beta';
	@override String get enableAutoSensitive => 'Marcar automaticamente como conteúdo sensível';
	@override String get enableAutoSensitiveDescription => 'Quando disponível, a marcação de mídia sensível será automaticamente atribuído ao conteúdo de mídia usando aprendizado de máquina. Mesmo que você desative essa função, em alguns servidores, isso pode ser configurado automaticamente.';
	@override String get activeEmailValidationDescription => 'A validação do endereço de e-mail do usuário será realizada de forma mais rigorosa, considerando se é um endereço descartável ou se é possível realizar comunicação efetiva. Se desativado, apenas a validade do formato do endereço será verificada como uma sequência de caracteres.';
	@override String get navbar => 'Barra de navegação';
	@override String get shuffle => 'Aleatório';
	@override String get account => 'Contas';
	@override String get move => 'Mover';
	@override String get pushNotification => 'Notificações Push';
	@override String get subscribePushNotification => 'Ativar notificações push';
	@override String get unsubscribePushNotification => 'Desativar notificações push';
	@override String get pushNotificationAlreadySubscribed => 'Notificações push já estão habilitadas';
	@override String get pushNotificationNotSupported => 'Seu navegador ou instância não tem suporte às notificações push';
	@override String get sendPushNotificationReadMessage => 'Apagar notificações push quando elas foram lidas';
	@override String get sendPushNotificationReadMessageCaption => 'Pode aumentar o consumo de energia do dispositivo.';
	@override String get windowMaximize => 'Maximizar';
	@override String get windowMinimize => 'Minimizar';
	@override String get windowRestore => 'Restaurar';
	@override String get caption => 'legenda';
	@override String get loggedInAsBot => 'Atualmente conectado como bot';
	@override String get tools => 'Ferramentas';
	@override String get cannotLoad => 'Não foi possível carregar';
	@override String get numberOfProfileView => 'Visualizações do perfil';
	@override String get like => 'Curtir';
	@override String get unlike => 'Remover curtida';
	@override String get numberOfLikes => 'Número de curtidas';
	@override String get show => 'Visualizar';
	@override String get neverShow => 'Não exibir novamente';
	@override String get remindMeLater => 'Lembrar mais tarde';
	@override String get didYouLikeMisskey => 'Você gostou do Misskey?';
	@override String pleaseDonate({required Object host}) => 'O Misskey é um software gratuito utilizado por ${host}. Para que possamos continuar o desenvolvimento, pedimos que considerem fazer doações. A sua contribuição é muito importante!';
	@override String correspondingSourceIsAvailable({required Object anchor}) => 'O código-fonte correspondente está disponível em ${anchor}';
	@override String get roles => 'Cargos';
	@override String get role => 'Cargo';
	@override String get noRole => 'Nenhum cargo';
	@override String get normalUser => 'Usuários padrão';
	@override String get undefined => 'Indefinido';
	@override String get assign => 'Atribuir';
	@override String get unassign => 'Remover';
	@override String get color => 'Cor';
	@override String get manageCustomEmojis => 'Gerenciar Emojis customizados';
	@override String get manageAvatarDecorations => 'Gerenciar decorações de avatar';
	@override String get youCannotCreateAnymore => 'Você atingiu o limite de criação.';
	@override String get cannotPerformTemporary => 'Ação temporariamente indisponível';
	@override String get cannotPerformTemporaryDescription => 'Esta ação não pôde ser concluída devido ao excesso de pedidos em sucessão. Tente novamente em alguns momentos.';
	@override String get invalidParamError => 'Parâmetros inválidos';
	@override String get invalidParamErrorDescription => 'Parâmetros requisitados inválidos. Isto normalmente acontece devido a um erro, mas também pode ocorrer devido à entrada de valores além do limite ou algo semelhante.';
	@override String get permissionDeniedError => 'Operação recusada';
	@override String get permissionDeniedErrorDescription => 'Esta conta não tem permissão para executar esta ação.';
	@override String get preset => 'Predefinições';
	@override String get selectFromPresets => 'Escolher de predefinições';
	@override String get custom => 'Personalizado';
	@override String get achievements => 'Conquistas';
	@override String get gotInvalidResponseError => 'Resposta do servidor inválida';
	@override String get gotInvalidResponseErrorDescription => 'Servidor fora do ar ou em manutenção. Favor tentar mais tarde.';
	@override String get thisPostMayBeAnnoying => 'Esta nota pode incomodar outras pessoas.';
	@override String get thisPostMayBeAnnoyingHome => 'Postar na linha do tempo inicial';
	@override String get thisPostMayBeAnnoyingCancel => 'Cancelar';
	@override String get thisPostMayBeAnnoyingIgnore => 'Postar mesmo assim';
	@override String get collapseRenotes => 'Ocultar repostagens já visualizadas';
	@override String get collapseRenotesDescription => 'Colapsar notas em que você reagiu ou repostou.';
	@override String get internalServerError => 'Erro interno de servidor';
	@override String get internalServerErrorDescription => 'Houve um erro inesperado no servidor.';
	@override String get copyErrorInfo => 'Copiar detalhes de erro';
	@override String get joinThisServer => 'Cadastrar-se na instância';
	@override String get exploreOtherServers => 'Buscar outra instância';
	@override String get letsLookAtTimeline => 'Dar uma olhada na linha do tempo';
	@override String get disableFederationConfirm => 'Realmente desabilitar a federação?';
	@override String get disableFederationConfirmWarn => 'Mesmo se defederado, publicações continuarão sendo públicas, a menos que seja definido o contrário. Você geralmente não precisa disso.';
	@override String get disableFederationOk => 'Desabilitar';
	@override String get invitationRequiredToRegister => 'Essa instância é apenas para convidados. Você precisa inserir um código válido para se cadastrar.';
	@override String get emailNotSupported => 'O envio de e-mails não é suportado nesta instância';
	@override String get postToTheChannel => 'Publicar ao canal';
	@override String get cannotBeChangedLater => 'Isso não pode ser alterado.';
	@override String get reactionAcceptance => 'Aceitação de Reações';
	@override String get likeOnly => 'Apenas curtidas';
	@override String get likeOnlyForRemote => 'Tudo (somente curtidas remotas)';
	@override String get nonSensitiveOnly => 'Apenas não-sensível';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'Apenas não sensíveis (somente curtidas remotas)';
	@override String get rolesAssignedToMe => 'Cargos atribuídos a mim';
	@override String get resetPasswordConfirm => 'Deseja realmente mudar a sua senha?';
	@override String get sensitiveWords => 'Palavras sensíveis';
	@override String get sensitiveWordsDescription => 'A visibilidade de todas as notas contendo as palavras configuradas será colocadas como "Início" automaticamente. Você pode listar várias delas separando-as por linha.';
	@override String get sensitiveWordsDescription2 => 'Utilizar espaços irá criar expressões aditivas (AND) e cercar palavras-chave com barras irá transformá-las em expressões regulares (RegEx)';
	@override String get prohibitedWords => 'Palavras proibidas';
	@override String get prohibitedWordsDescription => 'Habilita um erro ao tentar publicar uma nota contendo as palavras escolhidas. Várias palavras podem ser escolhidas, separando-as por linha.';
	@override String get prohibitedWordsDescription2 => 'Utilizar espaços irá criar expressões aditivas (AND) e cercar palavras-chave com barras irá transformá-las em expressões regulares (RegEx)';
	@override String get hiddenTags => 'Hashtags escondidas';
	@override String get hiddenTagsDescription => 'Selecione tags que não serão exibidas na lista de destaques. Várias tags podem ser escolhidas, separadas por linha.';
	@override String get notesSearchNotAvailable => 'A pesquisa de notas está indisponível.';
	@override String get usersSearchNotAvailable => 'Pesquisa de usuário está indisponível.';
	@override String get license => 'Licença';
	@override String get unfavoriteConfirm => 'Deseja realmente remover dos favoritos?';
	@override String get myClips => 'Meus clipes';
	@override String get drivecleaner => 'Limpeza do drive';
	@override String get retryAllQueuesNow => 'Tentar novamente todas as pendências';
	@override String get retryAllQueuesConfirmTitle => 'Gostaria de tentar novamente agora?';
	@override String get retryAllQueuesConfirmText => 'Isso irá temporariamente aumentar a carga do servidor.';
	@override String get enableChartsForRemoteUser => 'Gerar gráficos estatísticos de usuários remotos';
	@override String get enableChartsForFederatedInstances => 'Gerar gráficos estatísticos de instâncias remotas';
	@override String get enableStatsForFederatedInstances => 'Receber estatísticas de servidores remotos';
	@override String get showClipButtonInNoteFooter => 'Adicionar "Clip" ao menu de ação de notas';
	@override String get reactionsDisplaySize => 'Tamanho de exibição das reações';
	@override String get limitWidthOfReaction => 'Limita o comprimento máximo de reações e as exibe em tamanho reduzido';
	@override String get noteIdOrUrl => 'ID ou URL de nota';
	@override String get video => 'Vídeo';
	@override String get videos => 'Vídeos';
	@override String get audio => 'Áudio';
	@override String get audioFiles => 'Áudio';
	@override String get dataSaver => 'Economia de Dados';
	@override String get accountMigration => 'Migração da Conta';
	@override String get accountMoved => 'Esse usuário moveu-se para uma nova conta:';
	@override String get accountMovedShort => 'Essa conta foi migrada.';
	@override String get operationForbidden => 'Operação proibída';
	@override String get forceShowAds => 'Sempre mostrar propagandas';
	@override String get addMemo => 'Adicionar memorando';
	@override String get editMemo => 'Editar memorando';
	@override String get reactionsList => 'Reações';
	@override String get renotesList => 'Repostagens';
	@override String get notificationDisplay => 'Notificações';
	@override String get leftTop => 'Superior esquerdo';
	@override String get rightTop => 'Superior direito';
	@override String get leftBottom => 'Inferior esquerdo';
	@override String get rightBottom => 'Inferior direito';
	@override String get stackAxis => 'Eixo de empilhamento';
	@override String get vertical => 'Vertical';
	@override String get horizontal => 'Exibir painel lateral inteiro';
	@override String get position => 'Posição';
	@override String get serverRules => 'Regras do servidor';
	@override String get pleaseConfirmBelowBeforeSignup => 'Para cadastrar-se no servidor, você precisa ler e concordar como seguinte:';
	@override String get pleaseAgreeAllToContinue => 'Você precisa concordar com todos os campos acima para continuar.';
	@override String get continue_ => 'Continuar';
	@override String get preservedUsernames => 'Nomes de usuário reservados';
	@override String get preservedUsernamesDescription => 'Liste os nomes de usuário que deseja reservar, separando-os por quebras de linha. Os nomes de usuário especificados aqui não poderão ser utilizados durante a criação de contas. No entanto, esta restrição não se aplica quando a conta é criada por um administrador. Além disso, as contas que já existem não serão afetadas.';
	@override String get createNoteFromTheFile => 'Compor nota a partir desse arquivo';
	@override String get archive => 'Arquivo';
	@override String get archived => 'Arquivado';
	@override String get unarchive => 'Desarquivar';
	@override String channelArchiveConfirmTitle({required Object name}) => 'Deseja realmente arquivar ${name}?';
	@override String get channelArchiveConfirmDescription => 'Um canal arquivado não irá aparecer na lista de canais e nem resultados de pesquisa. Novas publicações não poderão mais ser adicionadas.';
	@override String get thisChannelArchived => 'Esse canal foi arquivado.';
	@override String get displayOfNote => 'Exibição de nota';
	@override String get initialAccountSetting => 'Configuração inicial do perfil';
	@override String get youFollowing => 'Seguindo';
	@override String get preventAiLearning => 'Rejeitar uso de Aprendizado de Máquina (IA Generativa)';
	@override String get preventAiLearningDescription => 'Solicita-se que o conteúdo de notas e imagens enviadas não seja usado como objeto de aprendizado por sistemas externos de geração de texto ou imagens. Isso é alcançado incluindo a flag \'noai\' na resposta HTML. No entanto, o cumprimento dessa solicitação depende do próprio sistema de IA, portanto, não é garantia total de prevenção de aprendizado.';
	@override String get options => 'Opções';
	@override String get specifyUser => 'Usuário específico';
	@override String get lookupConfirm => 'Deseja buscar?';
	@override String get openTagPageConfirm => 'Deseja abrir a uma página de hashtag?';
	@override String get specifyHost => 'Especificar um hospedeiro';
	@override String get failedToPreviewUrl => 'Não foi possível carregar prévia';
	@override String get update => 'Atualizar';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'Cargos que podem utilizar este emoji como reação';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'Se nenhum cargo for especificado, qualquer pessoa pode usar este emoji como reação.';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'Estes cargos devem ser públicos.';
	@override String get cancelReactionConfirm => 'Realmente excluir a sua reação?';
	@override String get changeReactionConfirm => 'Realmente mudar a sua reação?';
	@override String get later => 'Talvez mais tarde';
	@override String get goToMisskey => 'Ao Misskey';
	@override String get additionalEmojiDictionary => 'Dicionários adicionais de emoji';
	@override String get installed => 'Instalado';
	@override String get branding => 'Marca';
	@override String get enableServerMachineStats => 'Publicar estatísticas do hardware do servidor';
	@override String get enableIdenticonGeneration => 'Habilitar geração de identicon de usuário';
	@override String get turnOffToImprovePerformance => 'Desligar isso pode melhorar o desempenho.';
	@override String get createInviteCode => 'Gerar convite';
	@override String get createWithOptions => 'Criar com opções';
	@override String get createCount => 'Número de convites';
	@override String get inviteCodeCreated => 'Convite gerado';
	@override String get inviteLimitExceeded => 'Você excedeu o limite de convites que podem ser gerados.';
	@override String createLimitRemaining({required Object limit}) => 'Limite de convites: ${limit}';
	@override String inviteLimitResetCycle({required Object limit, required Object time}) => 'Esse limite irá tornar-se ${limit} em ${time}.';
	@override String get expirationDate => 'Data de expiração';
	@override String get noExpirationDate => 'Sem expiração';
	@override String get inviteCodeUsedAt => 'Código de convite usado em';
	@override String get registeredUserUsingInviteCode => 'Convite usado por';
	@override String get waitingForMailAuth => 'Verificação de e-mail pendente ';
	@override String get inviteCodeCreator => 'Convite criado por';
	@override String get usedAt => 'Usado em';
	@override String get unused => 'Não foi usado';
	@override String get used => 'Usado';
	@override String get expired => 'Expirado';
	@override String get doYouAgree => 'Concorda?';
	@override String get beSureToReadThisAsItIsImportant => 'Por favor, leia essa informação importante.';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => 'Eu li o texto "${x}" e concordo.';
	@override String get dialog => 'Diálogo';
	@override String get icon => 'Avatar';
	@override String get forYou => 'Para você';
	@override String get currentAnnouncements => 'Anúncios atuais';
	@override String get pastAnnouncements => 'Anúncios passados';
	@override String get youHaveUnreadAnnouncements => 'Há anúncios não lidos.';
	@override String get useSecurityKey => 'Por favor, siga as instruções do seu navegador ou dispositivo para utilizar uma chave de acesso.';
	@override String get replies => 'Responder';
	@override String get renotes => 'Repostar';
	@override String get loadReplies => 'Mostrar respostas';
	@override String get loadConversation => 'Mostrar conversa';
	@override String get pinnedList => 'Lista fixada';
	@override String get keepScreenOn => 'Manter a tela do dispositivo sempre ligada';
	@override String get verifiedLink => 'A autoria do link foi verificada';
	@override String get notifyNotes => 'Notificar sobre novas notas';
	@override String get unnotifyNotes => 'Deixar de notificar sobre novas notas';
	@override String get authentication => 'Autenticação';
	@override String get authenticationRequiredToContinue => 'Por favor, autentique-se para continuar';
	@override String get dateAndTime => 'Data e Hora';
	@override String get showRenotes => 'Exibir reposts';
	@override String get edited => 'Editado';
	@override String get notificationRecieveConfig => 'Configurações de Notificação';
	@override String get mutualFollow => 'Seguidor mútuo';
	@override String get followingOrFollower => 'Seguidor ou usuário seguido';
	@override String get fileAttachedOnly => 'Apenas notas com arquivos';
	@override String get showRepliesToOthersInTimeline => 'Mostrar respostas aos outros na linha do tempo';
	@override String get hideRepliesToOthersInTimeline => 'Esconder respostas dos outros na linha do tempo';
	@override String get showRepliesToOthersInTimelineAll => 'Mostrar respostas aos outros,  mas apenas de quem você segue, na linha do tempo';
	@override String get hideRepliesToOthersInTimelineAll => 'Esconder respostas de todos que você segue na linha do tempo';
	@override String get confirmShowRepliesAll => 'Essa operação é irreversível. Você gostaria de mostrar respostas a todos que você segue na sua linha do tempo?';
	@override String get confirmHideRepliesAll => 'Essa operação é irreversível. Você gostaria de esconder respostas a todos que você segue na sua linha do tempo?';
	@override String get externalServices => 'Serviços Externos';
	@override String get sourceCode => 'Código-fonte';
	@override String get sourceCodeIsNotYetProvided => 'Código-fonte está indisponível. Contate o administrador para resolver esse problema.';
	@override String get repositoryUrl => 'URL do repositório';
	@override String get repositoryUrlDescription => 'Se você estiver utilizando Misskey como está (sem mudanças no código-fonte), insira https://github.com/misskey-dev/misskey';
	@override String get repositoryUrlOrTarballRequired => 'Se você não publicou um repositório, você precisa providenciar uma tarball em seu lugar. Veja .config/example.yml para mais informações.';
	@override String get feedback => 'Feedback';
	@override String get feedbackUrl => 'Link para Feedback';
	@override String get impressum => 'Impressum';
	@override String get impressumUrl => 'URL de \'Impressum\'';
	@override String get impressumDescription => 'Em alguns países, como a Alemanha, a inclusão de informação de contato do operador de um serviço é legalmente exigida para websites comerciais.';
	@override String get privacyPolicy => 'Política de Privacidade';
	@override String get privacyPolicyUrl => 'URL da Política de Privacidade';
	@override String get tosAndPrivacyPolicy => 'Termos de Serviço e Política de Privacidade';
	@override String get avatarDecorations => 'Decorações de avatar';
	@override String get attach => 'Anexar';
	@override String get detach => 'Remover';
	@override String get detachAll => 'Remover Tudo';
	@override String get angle => 'Ângulo';
	@override String get flip => 'Inversão';
	@override String get showAvatarDecorations => 'Exibir decorações de avatar';
	@override String get releaseToRefresh => 'Solte para atualizar';
	@override String get refreshing => 'Atualizando...';
	@override String get pullDownToRefresh => 'Puxe para baixo para atualizar';
	@override String get useGroupedNotifications => 'Agrupar notificações';
	@override String get emailVerificationFailedError => 'Houve um problema ao verificar seu endereço de email. O link pode ter expirado.';
	@override String get cwNotationRequired => 'Se "Esconder conteúdo" está habilitado, uma descrição deve ser adicionada.';
	@override String get doReaction => 'Adicionar reação';
	@override String get code => 'Código';
	@override String get reloadRequiredToApplySettings => 'É necessário reiniciar para aplicar as configurações.';
	@override String remainingN({required Object n}) => 'Restante: ${n}';
	@override String get overwriteContentConfirm => 'Você tem certeza de que deseja sobrescrever o conteúdo atual?';
	@override String get seasonalScreenEffect => 'Efeito de Tela Sazonal';
	@override String get decorate => 'Decorar';
	@override String get addMfmFunction => 'Adicionar MFM';
	@override String get enableQuickAddMfmFunction => 'Exibir seleção avançada de MFM';
	@override String get bubbleGame => 'Bubble Game';
	@override String get sfx => 'Efeitos Sonoros';
	@override String get soundWillBePlayed => 'Sons serão reproduzidos';
	@override String get showReplay => 'Ver Replay';
	@override String get replay => 'Replay';
	@override String get replaying => 'Mostrando Replay';
	@override String get endReplay => 'Sair do Replay';
	@override String get copyReplayData => 'Copiar dados de Replay';
	@override String get ranking => 'Ranking';
	@override String lastNDays({required Object n}) => 'Últimos ${n} dias';
	@override String get backToTitle => 'Voltar à página inicial';
	@override String get hemisphere => 'Onde você se localiza';
	@override String get withSensitive => 'Incluir notas com arquivos sensíveis';
	@override String userSaysSomethingSensitive({required Object name}) => 'Publicação de ${name} contém conteúdo sensível';
	@override String get enableHorizontalSwipe => 'Arraste para mudar de aba';
	@override String get loading => 'Carregando';
	@override String get surrender => 'Cancelar';
	@override String get gameRetry => 'Tentar Novamente';
	@override String get notUsePleaseLeaveBlank => 'Deixe em branco caso inutilizado';
	@override String get useTotp => 'Digite a senha de uso único';
	@override String get useBackupCode => 'Usar códigos de “backup”';
	@override String get launchApp => 'Iniciar aplicação';
	@override String get useNativeUIForVideoAudioPlayer => 'Utilizar UI do navegador ao reproduzir vídeo e áudio';
	@override String get keepOriginalFilename => 'Manter nome original do arquivo';
	@override String get keepOriginalFilenameDescription => 'Se você desabilitar essa opção, os nomes de arquivos serão substituídos por uma sequência aleatória ao enviar arquivos.';
	@override String get noDescription => 'Não há descrição';
	@override String get alwaysConfirmFollow => 'Sempre confirmar ao seguir';
	@override String get inquiry => 'Contato';
	@override String get tryAgain => 'Por favor, tente novamente mais tarde';
	@override String get confirmWhenRevealingSensitiveMedia => 'Confirmar ao revelar mídia sensível';
	@override String get sensitiveMediaRevealConfirm => 'Essa mídia pode ser sensível. Deseja revelá-la?';
	@override String get createdLists => 'Listas criadas';
	@override String get createdAntennas => 'Antenas criadas';
	@override String fromX({required Object x}) => 'De ${x}';
	@override String get genEmbedCode => 'Gerar código de embed';
	@override String get noteOfThisUser => 'Notas por este usuário';
	@override String get clipNoteLimitExceeded => 'Não é possível adicionar mais notas ao clipe.';
	@override String get performance => 'Desempenho';
	@override String get modified => 'Modificado';
	@override String get discard => 'Descartar';
	@override String thereAreNChanges({required Object n}) => 'Há ${n} mudança(s)';
	@override String get signinWithPasskey => 'Entrar com Passkey';
	@override String get unknownWebAuthnKey => 'Passkey desconhecida';
	@override String get passkeyVerificationFailed => 'A verificação com Passkey falhou.';
	@override String get passkeyVerificationSucceededButPasswordlessLoginDisabled => 'A verificação com Passkey teve êxito, mas a entrada sem senha está desabilitada.';
	@override String get messageToFollower => 'Mensagem aos seguidores';
	@override String get target => 'Alvo';
	@override String get testCaptchaWarning => 'Essa função é utilizada apenas para testar CAPTCHA. <strong>Não a use num ambiente de produção.</strong>';
	@override String get prohibitedWordsForNameOfUser => 'Palavras proibidas para nomes de usuário';
	@override String get prohibitedWordsForNameOfUserDescription => 'Se quaisquer palavras dessa lista forem incluídas no nome de usuário, seu uso será negado. Usuários com privilégios de moderador não serão afetados pela restrição.';
	@override String get yourNameContainsProhibitedWords => 'O seu nome possui palavras proibidas';
	@override String get yourNameContainsProhibitedWordsDescription => 'Se você deseja utilizar esse nome, entre em contato com o administrador do servidor.';
	@override String get thisContentsAreMarkedAsSigninRequiredByAuthor => 'O autor exige que você esteja cadastrado para ver';
	@override String get lockdown => 'Lockdown';
	@override String get pleaseSelectAccount => 'Selecione uma conta';
	@override String get availableRoles => 'Cargos disponíveis';
	@override String get acknowledgeNotesAndEnable => 'Ative após compreender as precauções.';
	@override String get federationSpecified => 'Esse servidor opera com uma lista branca de federação. Interagir com servidores diferentes daqueles designados pela administração não é permitido.';
	@override String get federationDisabled => 'Federação está desabilitada nesse servidor. Você não pode interagir com usuários de outros servidores.';
	@override String get draft => 'Rascunhos';
	@override String get draftsAndScheduledNotes => 'Rascunhos e notas agendadas.';
	@override String get confirmOnReact => 'Confirmar ao reagir';
	@override String reactAreYouSure({required Object emoji}) => 'Você deseja adicionar uma reação "${emoji}"?';
	@override String get markAsSensitiveConfirm => 'Você deseja definir essa mídia como sensível?';
	@override String get unmarkAsSensitiveConfirm => 'Você deseja remover a definição dessa mídia como sensível?';
	@override String get preferences => 'Preferências';
	@override String get accessibility => 'Acessibilidade';
	@override String get preferencesProfile => 'Perfil de preferências';
	@override String get copyPreferenceId => 'Copiar ID de preferências';
	@override String get resetToDefaultValue => 'Reverter ao padrão';
	@override String get overrideByAccount => 'Sobrescrever pela conta';
	@override String get untitled => 'Sem título';
	@override String get noName => 'Sem nome';
	@override String get skip => 'Pular';
	@override String get restore => 'Redefinir';
	@override String get syncBetweenDevices => 'Sincronizar entre dispositivos';
	@override String get preferenceSyncConflictTitle => 'O valor configurado já existe no servidor.';
	@override String get preferenceSyncConflictText => 'As preferências com a sincronização ativada irão salvar os seus valores no servidor. Porém, já existem valores no servidor. Qual conjunto de valores você deseja sobrescrever?';
	@override String get preferenceSyncConflictChoiceMerge => 'Combinar';
	@override String get preferenceSyncConflictChoiceServer => 'Valor configurado no servidor';
	@override String get preferenceSyncConflictChoiceDevice => 'Valor configurado no dispositivo';
	@override String get preferenceSyncConflictChoiceCancel => 'Cancelar a habilitação de sincronização';
	@override String get paste => 'Colar';
	@override String get emojiPalette => 'Paleta de emojis';
	@override String get postForm => 'Campo de postagem';
	@override String get textCount => 'Contagem de caracteres';
	@override String get information => 'Sobre';
	@override String get chat => 'Conversas';
	@override String get directMessage => 'Conversar com usuário';
	@override String get directMessage_short => 'Mensagem';
	@override String get migrateOldSettings => 'Migrar configurações antigas de cliente';
	@override String get migrateOldSettings_description => 'Isso deve ser feito automaticamente. Caso o processo de migração tenha falhado, você pode acioná-lo manualmente. As informações atuais de migração serão substituídas.';
	@override String get compress => 'Comprimir';
	@override String get right => 'Direita';
	@override String get bottom => 'Inferior';
	@override String get top => 'Superior';
	@override String get embed => 'Embed';
	@override String get settingsMigrating => 'Configurações estão sendo migradas, aguarde... (Você pode migrar manualmente em Configurações→Outros→Migrar configurações antigas de cliente)';
	@override String get readonly => 'Ler apenas';
	@override String get goToDeck => 'Voltar ao Deck';
	@override String get federationJobs => 'Tarefas de Federação';
	@override String get driveAboutTip => 'No Drive, uma lista de arquivos enviados no passado será exibida. <br>\nVocê pode reutilizar esses arquivos anexando-os às notas, ou você pode enviar arquivos para publicar posteriormente. <br>\n<b>Cuidado ao excluir um arquivo, pois ele será removido de quaisquer outros lugares onde está sendo utilizado (notas, páginas, avatares, banners, etc.)</b><br>\nVocê também pode criar pastas para organizar seus arquivos.';
	@override String get scrollToClose => 'Role a página para fechar';
	@override String get advice => 'Dica';
	@override String get realtimeMode => 'Modo tempo-real';
	@override String get turnItOn => 'Ativar';
	@override String get turnItOff => 'Desativar';
	@override String get emojiMute => 'Silenciar emoji';
	@override String get emojiUnmute => 'Reativar emoji';
	@override String muteX({required Object x}) => 'Silenciar ${x}';
	@override String unmuteX({required Object x}) => 'Reativar ${x}';
	@override String get abort => 'Abortar';
	@override String get tip => 'Dicas e Truques';
	@override String get redisplayAllTips => 'Mostrar todas as "Dicas e Truques" novamente';
	@override String get hideAllTips => 'Ocultas todas as "Dicas e Truques"';
	@override String get defaultImageCompressionLevel => 'Nível de compressão de imagem padrão';
	@override String get defaultImageCompressionLevel_description => 'Alto, reduz o tamanho do arquivo mas, também, a qualidade da imagem.<br>Alto, reduz o tamanho do arquivo mas, também, a qualidade da imagem.';
	@override String get defaultCompressionLevel => 'Nível padrão de compressão';
	@override String get defaultCompressionLevel_description => 'Menor compressão preserva a qualidade mas aumenta o tamanho do arquivo.<br>Maior compressão reduz o tamanho do arquivo mas diminui a qualidade.';
	@override String get inMinutes => 'Minuto(s)';
	@override String get inDays => 'Dia(s)';
	@override String get safeModeEnabled => 'Modo seguro está habilitado';
	@override String get pluginsAreDisabledBecauseSafeMode => 'Todos os plugins estão desabilitados porque o modo seguro está habilitado.';
	@override String get customCssIsDisabledBecauseSafeMode => 'CSS personalizado não está aplicado porque o modo seguro está habilitado.';
	@override String get themeIsDefaultBecauseSafeMode => 'Enquanto o modo seguro estiver ativo, o tema padrão é utilizado. Desabilitar o modo seguro reverterá essas mudanças.';
	@override String get thankYouForTestingBeta => 'Obrigado por nos ajudar a testar a versão beta!';
	@override String get createUserSpecifiedNote => 'Criar uma nota direta';
	@override String get schedulePost => 'Agendar publicação';
	@override String scheduleToPostOnX({required Object x}) => 'Agendar nota para ${x}';
	@override String scheduledToPostOnX({required Object x}) => 'A nota está agendada para ${x}';
	@override String get schedule => 'Agendar';
	@override String get scheduled => 'Agendado';
	@override String get widgets => 'Widgets';
	@override String get presets => 'Predefinições';
	@override late final _TranslationsMisskeyImageEditingPtPt imageEditing_ = _TranslationsMisskeyImageEditingPtPt._(_root);
	@override late final _TranslationsMisskeyImageFrameEditorPtPt imageFrameEditor_ = _TranslationsMisskeyImageFrameEditorPtPt._(_root);
	@override late final _TranslationsMisskeyCompressionPtPt compression_ = _TranslationsMisskeyCompressionPtPt._(_root);
	@override late final _TranslationsMisskeyOrderPtPt order_ = _TranslationsMisskeyOrderPtPt._(_root);
	@override late final _TranslationsMisskeyChatPtPt chat_ = _TranslationsMisskeyChatPtPt._(_root);
	@override late final _TranslationsMisskeyEmojiPalettePtPt emojiPalette_ = _TranslationsMisskeyEmojiPalettePtPt._(_root);
	@override late final _TranslationsMisskeySettingsPtPt settings_ = _TranslationsMisskeySettingsPtPt._(_root);
	@override late final _TranslationsMisskeyPreferencesProfilePtPt preferencesProfile_ = _TranslationsMisskeyPreferencesProfilePtPt._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupPtPt preferencesBackup_ = _TranslationsMisskeyPreferencesBackupPtPt._(_root);
	@override late final _TranslationsMisskeyAccountSettingsPtPt accountSettings_ = _TranslationsMisskeyAccountSettingsPtPt._(_root);
	@override late final _TranslationsMisskeyAbuseUserReportPtPt abuseUserReport_ = _TranslationsMisskeyAbuseUserReportPtPt._(_root);
	@override late final _TranslationsMisskeyDeliveryPtPt delivery_ = _TranslationsMisskeyDeliveryPtPt._(_root);
	@override late final _TranslationsMisskeyBubbleGamePtPt bubbleGame_ = _TranslationsMisskeyBubbleGamePtPt._(_root);
	@override late final _TranslationsMisskeyAnnouncementPtPt announcement_ = _TranslationsMisskeyAnnouncementPtPt._(_root);
	@override late final _TranslationsMisskeyInitialAccountSettingPtPt initialAccountSetting_ = _TranslationsMisskeyInitialAccountSettingPtPt._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPtPt initialTutorial_ = _TranslationsMisskeyInitialTutorialPtPt._(_root);
	@override late final _TranslationsMisskeyTimelineDescriptionPtPt timelineDescription_ = _TranslationsMisskeyTimelineDescriptionPtPt._(_root);
	@override late final _TranslationsMisskeyServerRulesPtPt serverRules_ = _TranslationsMisskeyServerRulesPtPt._(_root);
	@override late final _TranslationsMisskeyServerSettingsPtPt serverSettings_ = _TranslationsMisskeyServerSettingsPtPt._(_root);
	@override late final _TranslationsMisskeyAccountMigrationPtPt accountMigration_ = _TranslationsMisskeyAccountMigrationPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsPtPt achievements_ = _TranslationsMisskeyAchievementsPtPt._(_root);
	@override late final _TranslationsMisskeyRolePtPt role_ = _TranslationsMisskeyRolePtPt._(_root);
	@override late final _TranslationsMisskeySensitiveMediaDetectionPtPt sensitiveMediaDetection_ = _TranslationsMisskeySensitiveMediaDetectionPtPt._(_root);
	@override late final _TranslationsMisskeyEmailUnavailablePtPt emailUnavailable_ = _TranslationsMisskeyEmailUnavailablePtPt._(_root);
	@override late final _TranslationsMisskeyFfVisibilityPtPt ffVisibility_ = _TranslationsMisskeyFfVisibilityPtPt._(_root);
	@override late final _TranslationsMisskeySignupPtPt signup_ = _TranslationsMisskeySignupPtPt._(_root);
	@override late final _TranslationsMisskeyAccountDeletePtPt accountDelete_ = _TranslationsMisskeyAccountDeletePtPt._(_root);
	@override late final _TranslationsMisskeyAdPtPt ad_ = _TranslationsMisskeyAdPtPt._(_root);
	@override late final _TranslationsMisskeyForgotPasswordPtPt forgotPassword_ = _TranslationsMisskeyForgotPasswordPtPt._(_root);
	@override late final _TranslationsMisskeyGalleryPtPt gallery_ = _TranslationsMisskeyGalleryPtPt._(_root);
	@override late final _TranslationsMisskeyEmailPtPt email_ = _TranslationsMisskeyEmailPtPt._(_root);
	@override late final _TranslationsMisskeyPluginPtPt plugin_ = _TranslationsMisskeyPluginPtPt._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupsPtPt preferencesBackups_ = _TranslationsMisskeyPreferencesBackupsPtPt._(_root);
	@override late final _TranslationsMisskeyRegistryPtPt registry_ = _TranslationsMisskeyRegistryPtPt._(_root);
	@override late final _TranslationsMisskeyAboutMisskeyPtPt aboutMisskey_ = _TranslationsMisskeyAboutMisskeyPtPt._(_root);
	@override late final _TranslationsMisskeyDisplayOfSensitiveMediaPtPt displayOfSensitiveMedia_ = _TranslationsMisskeyDisplayOfSensitiveMediaPtPt._(_root);
	@override late final _TranslationsMisskeyInstanceTickerPtPt instanceTicker_ = _TranslationsMisskeyInstanceTickerPtPt._(_root);
	@override late final _TranslationsMisskeyServerDisconnectedBehaviorPtPt serverDisconnectedBehavior_ = _TranslationsMisskeyServerDisconnectedBehaviorPtPt._(_root);
	@override late final _TranslationsMisskeyChannelPtPt channel_ = _TranslationsMisskeyChannelPtPt._(_root);
	@override late final _TranslationsMisskeyMenuDisplayPtPt menuDisplay_ = _TranslationsMisskeyMenuDisplayPtPt._(_root);
	@override late final _TranslationsMisskeyWordMutePtPt wordMute_ = _TranslationsMisskeyWordMutePtPt._(_root);
	@override late final _TranslationsMisskeyInstanceMutePtPt instanceMute_ = _TranslationsMisskeyInstanceMutePtPt._(_root);
	@override late final _TranslationsMisskeyThemePtPt theme_ = _TranslationsMisskeyThemePtPt._(_root);
	@override late final _TranslationsMisskeySfxPtPt sfx_ = _TranslationsMisskeySfxPtPt._(_root);
	@override late final _TranslationsMisskeySoundSettingsPtPt soundSettings_ = _TranslationsMisskeySoundSettingsPtPt._(_root);
	@override late final _TranslationsMisskeyAgoPtPt ago_ = _TranslationsMisskeyAgoPtPt._(_root);
	@override late final _TranslationsMisskeyTimeInPtPt timeIn_ = _TranslationsMisskeyTimeInPtPt._(_root);
	@override late final _TranslationsMisskeyTimePtPt time_ = _TranslationsMisskeyTimePtPt._(_root);
	@override late final _TranslationsMisskeyX2faPtPt x2fa_ = _TranslationsMisskeyX2faPtPt._(_root);
	@override late final _TranslationsMisskeyPermissionsPtPt permissions_ = _TranslationsMisskeyPermissionsPtPt._(_root);
	@override late final _TranslationsMisskeyAuthPtPt auth_ = _TranslationsMisskeyAuthPtPt._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesPtPt antennaSources_ = _TranslationsMisskeyAntennaSourcesPtPt._(_root);
	@override late final _TranslationsMisskeyWeekdayPtPt weekday_ = _TranslationsMisskeyWeekdayPtPt._(_root);
	@override late final _TranslationsMisskeyWidgetsPtPt widgets_ = _TranslationsMisskeyWidgetsPtPt._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsPtPt widgetOptions_ = _TranslationsMisskeyWidgetOptionsPtPt._(_root);
	@override late final _TranslationsMisskeyCwPtPt cw_ = _TranslationsMisskeyCwPtPt._(_root);
	@override late final _TranslationsMisskeyPollPtPt poll_ = _TranslationsMisskeyPollPtPt._(_root);
	@override late final _TranslationsMisskeyVisibilityPtPt visibility_ = _TranslationsMisskeyVisibilityPtPt._(_root);
	@override late final _TranslationsMisskeyPostFormPtPt postForm_ = _TranslationsMisskeyPostFormPtPt._(_root);
	@override late final _TranslationsMisskeyProfilePtPt profile_ = _TranslationsMisskeyProfilePtPt._(_root);
	@override late final _TranslationsMisskeyExportOrImportPtPt exportOrImport_ = _TranslationsMisskeyExportOrImportPtPt._(_root);
	@override late final _TranslationsMisskeyChartsPtPt charts_ = _TranslationsMisskeyChartsPtPt._(_root);
	@override late final _TranslationsMisskeyInstanceChartsPtPt instanceCharts_ = _TranslationsMisskeyInstanceChartsPtPt._(_root);
	@override late final _TranslationsMisskeyTimelinesPtPt timelines_ = _TranslationsMisskeyTimelinesPtPt._(_root);
	@override late final _TranslationsMisskeyPlayPtPt play_ = _TranslationsMisskeyPlayPtPt._(_root);
	@override late final _TranslationsMisskeyPagesPtPt pages_ = _TranslationsMisskeyPagesPtPt._(_root);
	@override late final _TranslationsMisskeyRelayStatusPtPt relayStatus_ = _TranslationsMisskeyRelayStatusPtPt._(_root);
	@override late final _TranslationsMisskeyNotificationPtPt notification_ = _TranslationsMisskeyNotificationPtPt._(_root);
	@override late final _TranslationsMisskeyDeckPtPt deck_ = _TranslationsMisskeyDeckPtPt._(_root);
	@override late final _TranslationsMisskeyDialogPtPt dialog_ = _TranslationsMisskeyDialogPtPt._(_root);
	@override late final _TranslationsMisskeyDisabledTimelinePtPt disabledTimeline_ = _TranslationsMisskeyDisabledTimelinePtPt._(_root);
	@override late final _TranslationsMisskeyDrivecleanerPtPt drivecleaner_ = _TranslationsMisskeyDrivecleanerPtPt._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsPtPt webhookSettings_ = _TranslationsMisskeyWebhookSettingsPtPt._(_root);
	@override late final _TranslationsMisskeyAbuseReportPtPt abuseReport_ = _TranslationsMisskeyAbuseReportPtPt._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesPtPt moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesPtPt._(_root);
	@override late final _TranslationsMisskeyFileViewerPtPt fileViewer_ = _TranslationsMisskeyFileViewerPtPt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerPtPt externalResourceInstaller_ = _TranslationsMisskeyExternalResourceInstallerPtPt._(_root);
	@override late final _TranslationsMisskeyDataSaverPtPt dataSaver_ = _TranslationsMisskeyDataSaverPtPt._(_root);
	@override late final _TranslationsMisskeyHemispherePtPt hemisphere_ = _TranslationsMisskeyHemispherePtPt._(_root);
	@override late final _TranslationsMisskeyReversiPtPt reversi_ = _TranslationsMisskeyReversiPtPt._(_root);
	@override late final _TranslationsMisskeyOfflineScreenPtPt offlineScreen_ = _TranslationsMisskeyOfflineScreenPtPt._(_root);
	@override late final _TranslationsMisskeyUrlPreviewSettingPtPt urlPreviewSetting_ = _TranslationsMisskeyUrlPreviewSettingPtPt._(_root);
	@override late final _TranslationsMisskeyMediaControlsPtPt mediaControls_ = _TranslationsMisskeyMediaControlsPtPt._(_root);
	@override late final _TranslationsMisskeyContextMenuPtPt contextMenu_ = _TranslationsMisskeyContextMenuPtPt._(_root);
	@override late final _TranslationsMisskeyGridComponentPtPt gridComponent_ = _TranslationsMisskeyGridComponentPtPt._(_root);
	@override late final _TranslationsMisskeyRoleSelectDialogPtPt roleSelectDialog_ = _TranslationsMisskeyRoleSelectDialogPtPt._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerPtPt customEmojisManager_ = _TranslationsMisskeyCustomEmojisManagerPtPt._(_root);
	@override late final _TranslationsMisskeyEmbedCodeGenPtPt embedCodeGen_ = _TranslationsMisskeyEmbedCodeGenPtPt._(_root);
	@override late final _TranslationsMisskeySelfXssPreventionPtPt selfXssPrevention_ = _TranslationsMisskeySelfXssPreventionPtPt._(_root);
	@override late final _TranslationsMisskeyFollowRequestPtPt followRequest_ = _TranslationsMisskeyFollowRequestPtPt._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsPtPt remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsPtPt._(_root);
	@override late final _TranslationsMisskeyCaptchaPtPt captcha_ = _TranslationsMisskeyCaptchaPtPt._(_root);
	@override late final _TranslationsMisskeyBootErrorsPtPt bootErrors_ = _TranslationsMisskeyBootErrorsPtPt._(_root);
	@override late final _TranslationsMisskeySearchPtPt search_ = _TranslationsMisskeySearchPtPt._(_root);
	@override late final _TranslationsMisskeyServerSetupWizardPtPt serverSetupWizard_ = _TranslationsMisskeyServerSetupWizardPtPt._(_root);
	@override late final _TranslationsMisskeyUploaderPtPt uploader_ = _TranslationsMisskeyUploaderPtPt._(_root);
	@override late final _TranslationsMisskeyClientPerformanceIssueTipPtPt clientPerformanceIssueTip_ = _TranslationsMisskeyClientPerformanceIssueTipPtPt._(_root);
	@override late final _TranslationsMisskeyClipPtPt clip_ = _TranslationsMisskeyClipPtPt._(_root);
	@override late final _TranslationsMisskeyUserListsPtPt userLists_ = _TranslationsMisskeyUserListsPtPt._(_root);
	@override String get watermark => 'Marca d\'água';
	@override String get defaultPreset => 'Predefinição Padrão';
	@override late final _TranslationsMisskeyWatermarkEditorPtPt watermarkEditor_ = _TranslationsMisskeyWatermarkEditorPtPt._(_root);
	@override late final _TranslationsMisskeyImageEffectorPtPt imageEffector_ = _TranslationsMisskeyImageEffectorPtPt._(_root);
	@override String get drafts => 'Rascunhos';
	@override late final _TranslationsMisskeyDraftsPtPt drafts_ = _TranslationsMisskeyDraftsPtPt._(_root);
	@override String get qr => 'Código QR';
	@override late final _TranslationsMisskeyQrPtPt qr_ = _TranslationsMisskeyQrPtPt._(_root);
}

// Path: misskey.imageEditing_
class _TranslationsMisskeyImageEditingPtPt extends TranslationsMisskeyImageEditingEnUs {
	_TranslationsMisskeyImageEditingPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyImageEditingVarsPtPt vars_ = _TranslationsMisskeyImageEditingVarsPtPt._(_root);
}

// Path: misskey.imageFrameEditor_
class _TranslationsMisskeyImageFrameEditorPtPt extends TranslationsMisskeyImageFrameEditorEnUs {
	_TranslationsMisskeyImageFrameEditorPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get header => 'Cabeçalho';
	@override String get withQrCode => 'Código QR';
	@override String get font => 'Fonte';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
	@override String get quitWithoutSaveConfirm => 'Descartar mudanças?';
}

// Path: misskey.compression_
class _TranslationsMisskeyCompressionPtPt extends TranslationsMisskeyCompressionEnUs {
	_TranslationsMisskeyCompressionPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCompressionQualityPtPt quality_ = _TranslationsMisskeyCompressionQualityPtPt._(_root);
	@override late final _TranslationsMisskeyCompressionSizePtPt size_ = _TranslationsMisskeyCompressionSizePtPt._(_root);
}

// Path: misskey.order_
class _TranslationsMisskeyOrderPtPt extends TranslationsMisskeyOrderEnUs {
	_TranslationsMisskeyOrderPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get newest => 'Priorizar Mais Novos';
	@override String get oldest => 'Priorizar Mais Antigos';
}

// Path: misskey.chat_
class _TranslationsMisskeyChatPtPt extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get messages => 'Mensagem';
	@override String get noMessagesYet => 'Ainda não há mensagens';
	@override String get newMessage => 'Nova mensagem';
	@override String get individualChat => 'Conversa Particular';
	@override String get individualChat_description => 'Ter uma conversa particular com outra pessoa.';
	@override String get roomChat => 'Conversa de Grupo';
	@override String get roomChat_description => 'Uma sala de conversas com várias pessoas. Você pode adicionar pessoas que não permitem conversas privadas se elas aceitarem o convite.';
	@override String get createRoom => 'Criar Sala';
	@override String get inviteUserToChat => 'Convide usuários para começar a conversar';
	@override String get yourRooms => 'Salas criadas';
	@override String get joiningRooms => 'Salas ingressadas';
	@override String get invitations => 'Convidar';
	@override String get noInvitations => 'Sem convites';
	@override String get history => 'Histórico';
	@override String get noHistory => 'Ainda não há histórico';
	@override String get noRooms => 'Nenhuma sala encontrada';
	@override String get inviteUser => 'Convidar Usuários';
	@override String get sentInvitations => 'Convites Enviados';
	@override String get join => 'Entrar';
	@override String get ignore => 'Ignorar';
	@override String get leave => 'Deixar sala';
	@override String get members => 'Membros';
	@override String get searchMessages => 'Pesquisar mensagens';
	@override String get home => 'Início';
	@override String get send => 'Enviar';
	@override String get newline => 'Nova linha';
	@override String get muteThisRoom => 'Silenciar sala';
	@override String get deleteRoom => 'Excluir sala';
	@override String get chatNotAvailableForThisAccountOrServer => 'Conversas não estão habilitadas nesse servidor ou para essa conta.';
	@override String get chatIsReadOnlyForThisAccountOrServer => 'Conversas são apenas para leitura nesse servidor ou para essa conta. Não é possível escrever novas mensagens ou criar/ingressar novas conversas.';
	@override String get chatNotAvailableInOtherAccount => 'A função de conversas está desabilitadas para o outro usuário.';
	@override String get cannotChatWithTheUser => 'Não é possível conversar com esse usuário.';
	@override String get cannotChatWithTheUser_description => 'Conversas estão indisponíveis ou o outro usuário não as habilitou.';
	@override String get youAreNotAMemberOfThisRoomButInvited => 'Você não é um participante da sala, mas recebeu um convite. Por favor, aceite o convite para entrar.';
	@override String get doYouAcceptInvitation => 'Aceita o convite?';
	@override String get chatWithThisUser => 'Conversar com usuário';
	@override String get thisUserAllowsChatOnlyFromFollowers => 'Esse usuário aceita conversar apenas com seguidores.';
	@override String get thisUserAllowsChatOnlyFromFollowing => 'Esse usuário aceita conversar apenas com quem segue.';
	@override String get thisUserAllowsChatOnlyFromMutualFollowing => 'Esse usuário aceita conversar apenas com seguidores mútuos.';
	@override String get thisUserNotAllowedChatAnyone => 'Esse usuário não aceita conversar com ninguém.';
	@override String get chatAllowedUsers => 'Com quem permitir conversas';
	@override String get chatAllowedUsers_note => 'Você pode conversar com qualquer um com quem tenha iniciado uma conversa independente dessa configuração.';
	@override late final _TranslationsMisskeyChatChatAllowedUsersPtPt chatAllowedUsers_ = _TranslationsMisskeyChatChatAllowedUsersPtPt._(_root);
}

// Path: misskey.emojiPalette_
class _TranslationsMisskeyEmojiPalettePtPt extends TranslationsMisskeyEmojiPaletteEnUs {
	_TranslationsMisskeyEmojiPalettePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get palettes => 'Paleta';
	@override String get enableSyncBetweenDevicesForPalettes => 'Sincronizar paleta entre dispositivos';
	@override String get paletteForMain => 'Paleta principal';
	@override String get paletteForReaction => 'Paleta de reações';
}

// Path: misskey.settings_
class _TranslationsMisskeySettingsPtPt extends TranslationsMisskeySettingsEnUs {
	_TranslationsMisskeySettingsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get driveBanner => 'Você consegue administrar e configurar o drive, conferir o seu uso e configurar as opções de envio de arquivos.';
	@override String get pluginBanner => 'Você pode ampliar as funções do cliente com plugins. Você pode instalar plugins, configurar e administrar individualmente.';
	@override String get notificationsBanner => 'Você pode configurar os tipos e intervalo das notificações do servidor, além de notificações push.';
	@override String get api => 'API';
	@override String get webhook => 'Webhook';
	@override String get serviceConnection => 'Integração de serviço';
	@override String get serviceConnectionBanner => 'Administre e configure tokens de acesso e webhooks para interagir com aplicações e serviços externos.';
	@override String get accountData => 'Dados da conta';
	@override String get accountDataBanner => 'Exportar e importar dados da conta.';
	@override String get muteAndBlockBanner => 'Você pode configurar meios para esconder conteúdo e restringir ações de certos usuários.';
	@override String get accessibilityBanner => 'Você pode personalizar o visual e comportamento do cliente, além de configurar modos de otimizar o uso.';
	@override String get privacyBanner => 'Você pode configurar a privacidade da conta por meio da visibilidade do conteúdo, capacidade de descoberta e aprovação manual de seguidores.';
	@override String get securityBanner => 'Você pode configurar a segurança da conta em ajustes como senha, meios de entrada, aplicativos de autenticação e chaves de acesso.';
	@override String get preferencesBanner => 'Você pode configurar o comportamento geral do cliente segundo as suas preferências.';
	@override String get appearanceBanner => 'Você pode configurar a aparência do cliente e ajustes de tela segundo as suas preferências.';
	@override String get soundsBanner => 'Você pode configurar a reprodução de sons no cliente.';
	@override String get timelineAndNote => 'Notas e linha do tempo';
	@override String get makeEveryTextElementsSelectable => 'Tornar todos os elementos de texto selecionáveis';
	@override String get makeEveryTextElementsSelectable_description => 'Habilitar isso pode reduzir a usabilidade em algumas situações';
	@override String get useStickyIcons => 'Fazer ícones acompanharem a rolagem da tela';
	@override String get enableHighQualityImagePlaceholders => 'Exibir prévias para imagens de alta qualidade';
	@override String get uiAnimations => 'Animações de UI';
	@override String get showNavbarSubButtons => 'Mostrar sub-botões na barra de navegação';
	@override String get ifOn => 'Quando ligado';
	@override String get ifOff => 'Quando desligado';
	@override String get enableSyncThemesBetweenDevices => 'Sincronizar temas instalados entre dispositivos';
	@override String get enablePullToRefresh => 'Puxe para atualizar';
	@override String get enablePullToRefresh_description => 'Quando estiver utilizando um mouse, arraste enquanto aperta a roda de rolagem.';
	@override String get realtimeMode_description => 'Estabelece uma conexão com o servidor e atualiza o conteúdo em tempo real. Isso pode aumentar o tráfego e uso de memória.';
	@override String get contentsUpdateFrequency => 'Frequência da obtenção de conteúdo';
	@override String get contentsUpdateFrequency_description => 'Quanto maior o valor, mais o conteúdo atualiza. Porém, há uma diminuição do desempenho e aumento do tráfego e consumo de memória.';
	@override String get contentsUpdateFrequency_description2 => 'Quando o modo tempo-real está ativado, o conteúdo é atualizado em tempo real, ignorando essa opção.';
	@override String get showUrlPreview => 'Exibir prévia de URL';
	@override String get showAvailableReactionsFirstInNote => 'Exibir reações disponíveis no topo.';
	@override String get showPageTabBarBottom => 'Mostrar barra de aba da página inferiormente';
	@override late final _TranslationsMisskeySettingsChatPtPt chat_ = _TranslationsMisskeySettingsChatPtPt._(_root);
}

// Path: misskey.preferencesProfile_
class _TranslationsMisskeyPreferencesProfilePtPt extends TranslationsMisskeyPreferencesProfileEnUs {
	_TranslationsMisskeyPreferencesProfilePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get profileName => 'Nome do perfil';
	@override String get profileNameDescription => 'Defina o nome que identifica esse dispositivo.';
	@override String get profileNameDescription2 => 'Exemplo: "Computador Principal", "Celular"';
	@override String get manageProfiles => 'Gerenciar Perfis';
}

// Path: misskey.preferencesBackup_
class _TranslationsMisskeyPreferencesBackupPtPt extends TranslationsMisskeyPreferencesBackupEnUs {
	_TranslationsMisskeyPreferencesBackupPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get autoBackup => 'Backup automático';
	@override String get restoreFromBackup => 'Restaurar backup';
	@override String get noBackupsFoundTitle => 'Nenhum backup encontrado';
	@override String get noBackupsFoundDescription => 'Nenhum backup automático foi encontrado. Se você salvou um arquivo de backup manualmente, você pode importá-lo e restaurá-lo.';
	@override String get selectBackupToRestore => 'Selecionar um backup para restaurar';
	@override String get youNeedToNameYourProfileToEnableAutoBackup => 'Um nome de perfil deve ser definido para habilitar o backup automático.';
	@override String get autoPreferencesBackupIsNotEnabledForThisDevice => 'Backup automático de configurações não está habilitado no dispositivo.';
	@override String get backupFound => 'Backup de configurações encontrado';
}

// Path: misskey.accountSettings_
class _TranslationsMisskeyAccountSettingsPtPt extends TranslationsMisskeyAccountSettingsEnUs {
	_TranslationsMisskeyAccountSettingsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get requireSigninToViewContents => 'Exigir cadastro para ver o conteúdo';
	@override String get requireSigninToViewContentsDescription1 => 'Exigir cadastro para ver todas as notas e outro conteúdo que você criou. Isso previne \'crawlers\' de coletar os seus dados.';
	@override String get requireSigninToViewContentsDescription2 => 'Conteúdo não será exibido nas prévias de URL (OGP), incorporado em outras páginas web ou em servidores que não têm suporte a citações.';
	@override String get requireSigninToViewContentsDescription3 => 'Essas restrições podem não ser aplicadas a conteúdo federado de outros servidores.';
	@override String get makeNotesFollowersOnlyBefore => 'Tornar notas passadas visíveis apenas para seguidores.';
	@override String get makeNotesFollowersOnlyBeforeDescription => 'Com essa função ativada, apenas seguidores podem ver as notas anteriores à data e hora marcadas. Se isso for desativado, o status de publicação da nota será reestabelecido.';
	@override String get makeNotesHiddenBefore => 'Tornar notas passadas privadas';
	@override String get makeNotesHiddenBeforeDescription => 'Com essa função ativada, apenas você poderá ver as notas anteriores à data e hora marcadas. Se isso for desativado, o status de publicação da nota será reestabelecido.';
	@override String get mayNotEffectForFederatedNotes => 'Notas federadas a servidores remotos podem não ser afetadas.';
	@override String get mayNotEffectSomeSituations => 'Essas restrições são simplificadas. Elas podem não ser aplicadas em algumas situações, como ao visualizar num servidor remoto ou durante a moderação.';
	@override String get notesHavePassedSpecifiedPeriod => 'Notas que duraram um tempo específico.';
	@override String get notesOlderThanSpecifiedDateAndTime => 'Notas antes do tempo específico.';
}

// Path: misskey.abuseUserReport_
class _TranslationsMisskeyAbuseUserReportPtPt extends TranslationsMisskeyAbuseUserReportEnUs {
	_TranslationsMisskeyAbuseUserReportPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get forward => 'Encaminhar';
	@override String get forwardDescription => 'Encaminhar a denúncia ao servidor remoto como uma conta anônima do sistema.';
	@override String get resolve => 'Resolver';
	@override String get accept => 'Aceitar';
	@override String get reject => 'Rejeitar';
	@override String get resolveTutorial => 'Se a denúncia for legítima em conteúdo, selecione "Aceitar" para marcar o caso como resolvido afirmativamente.\nSe a denúncia for ilegítima em conteúdo, selecione "Rejeitar" para marcar o caso como resolvido negativamente.';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryPtPt extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get status => 'Estado de entrega';
	@override String get stop => 'Suspenso';
	@override String get resume => 'Continuar entrega';
	@override late final _TranslationsMisskeyDeliveryTypePtPt type_ = _TranslationsMisskeyDeliveryTypePtPt._(_root);
}

// Path: misskey.bubbleGame_
class _TranslationsMisskeyBubbleGamePtPt extends TranslationsMisskeyBubbleGameEnUs {
	_TranslationsMisskeyBubbleGamePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => 'Como jogar';
	@override String get hold => 'Próximos';
	@override late final _TranslationsMisskeyBubbleGameScorePtPt score_ = _TranslationsMisskeyBubbleGameScorePtPt._(_root);
	@override late final _TranslationsMisskeyBubbleGameHowToPlayPtPt howToPlay_ = _TranslationsMisskeyBubbleGameHowToPlayPtPt._(_root);
}

// Path: misskey.announcement_
class _TranslationsMisskeyAnnouncementPtPt extends TranslationsMisskeyAnnouncementEnUs {
	_TranslationsMisskeyAnnouncementPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => 'Apenas aos usuários existente';
	@override String get forExistingUsersDescription => 'Se habilitado, esse anúncio será exibido apenas para usuários existentes no tempo de publicação. Se desabilitado, novos usuários também o receberão. ';
	@override String get needConfirmationToRead => 'Exigir confirmação de leitura';
	@override String get needConfirmationToReadDescription => 'Um lembrete adicional será exibido para confirmar a leitura do anúncio. Esse anúncio também será excluído de qualquer forma de "Marcar tudo como lido".';
	@override String get end => 'Arquivar anúncio';
	@override String get tooManyActiveAnnouncementDescription => 'O excesso de anúncios pode atrapalhar a experiência do usuário. Considere arquivar anúncios obsoletos.';
	@override String get readConfirmTitle => 'Marcar como lido?';
	@override String readConfirmText({required Object title}) => 'Isso marcará o conteúdo de "${title}" como lido.';
	@override String get shouldNotBeUsedToPresentPermanentInfo => 'É preferível utilizar anúncios para publicar informações atuais e de curto prazo, e não informações que serão relevantes por muito tempo.';
	@override String get dialogAnnouncementUxWarn => 'O uso de duas ou mais notificações de diálogo simultaneamente pode impactar significativamente a experiência de usuário. Portanto, utilize-as cuidadosamente.';
	@override String get silence => 'Sem notificação';
	@override String get silenceDescription => 'Habilitar isso irá pular a notificação desse anúncio e o usuário não precisará lê-lo.';
}

// Path: misskey.initialAccountSetting_
class _TranslationsMisskeyInitialAccountSettingPtPt extends TranslationsMisskeyInitialAccountSettingEnUs {
	_TranslationsMisskeyInitialAccountSettingPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => 'A sua conta foi criada com sucesso!';
	@override String get letsStartAccountSetup => 'Em primeiro lugar, vamos configurar o seu perfil.';
	@override String get letsFillYourProfile => 'Primeiramente, vamos configurar o seu perfil.';
	@override String get profileSetting => 'Configurações do perfil';
	@override String get privacySetting => 'Configurações de privacidade';
	@override String get theseSettingsCanEditLater => 'Você pode alterar estas configurações mais tarde.';
	@override String get youCanEditMoreSettingsInSettingsPageLater => 'Há mais configurações na página "Configurações". Não se esqueça de visitá-la mais tarde.';
	@override String get followUsers => 'Siga usuários que lhe interessam para criar a sua linha do tempo.';
	@override String pushNotificationDescription({required Object name}) => 'Habilitar notificações push o possibilitará receber notificações de ${name} diretamente no seu dispositivo.';
	@override String get initialAccountSettingCompleted => 'Configuração de perfil completa!';
	@override String haveFun({required Object name}) => 'Aproveite ${name}!';
	@override String youCanContinueTutorial({required Object name}) => 'Você pode iniciar um tutorial de como utilizar ${name} (Misskey) ou pode sair da configuração e começar o uso imediatamente.';
	@override String get startTutorial => 'Iniciar Tutorial';
	@override String get skipAreYouSure => 'Deseja pular a configuração de perfil?';
	@override String get laterAreYouSure => 'Deseja adiar a configuração de perfil?';
}

// Path: misskey.initialTutorial_
class _TranslationsMisskeyInitialTutorialPtPt extends TranslationsMisskeyInitialTutorialEnUs {
	_TranslationsMisskeyInitialTutorialPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'Iniciar Tutorial';
	@override String get title => 'Tutorial';
	@override String get wellDone => 'Ótimo!';
	@override String get skipAreYouSure => 'Sair do Tutorial?';
	@override late final _TranslationsMisskeyInitialTutorialLandingPtPt landing_ = _TranslationsMisskeyInitialTutorialLandingPtPt._(_root);
	@override late final _TranslationsMisskeyInitialTutorialNotePtPt note_ = _TranslationsMisskeyInitialTutorialNotePtPt._(_root);
	@override late final _TranslationsMisskeyInitialTutorialReactionPtPt reaction_ = _TranslationsMisskeyInitialTutorialReactionPtPt._(_root);
	@override late final _TranslationsMisskeyInitialTutorialTimelinePtPt timeline_ = _TranslationsMisskeyInitialTutorialTimelinePtPt._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNotePtPt postNote_ = _TranslationsMisskeyInitialTutorialPostNotePtPt._(_root);
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitivePtPt howToMakeAttachmentsSensitive_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitivePtPt._(_root);
	@override late final _TranslationsMisskeyInitialTutorialDonePtPt done_ = _TranslationsMisskeyInitialTutorialDonePtPt._(_root);
}

// Path: misskey.timelineDescription_
class _TranslationsMisskeyTimelineDescriptionPtPt extends TranslationsMisskeyTimelineDescriptionEnUs {
	_TranslationsMisskeyTimelineDescriptionPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get home => 'Na linha do tempo Início, você verá notas dos usuários que você segue.';
	@override String get local => 'Na linha do tempo Local, você verá notas de todos os usuários da instância.';
	@override String get social => 'Na linha do tempo Social, você verá notas do Início e Local.';
	@override String get global => 'Na linha do tempo Global, você verá notas de todas as instâncias conectadas.';
}

// Path: misskey.serverRules_
class _TranslationsMisskeyServerRulesPtPt extends TranslationsMisskeyServerRulesEnUs {
	_TranslationsMisskeyServerRulesPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get description => 'Um grupo de regras a ser exibido antes de um cadastro. É recomendado que se faça um resumo dos Termos de Serviço.';
}

// Path: misskey.serverSettings_
class _TranslationsMisskeyServerSettingsPtPt extends TranslationsMisskeyServerSettingsEnUs {
	_TranslationsMisskeyServerSettingsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get iconUrl => 'URL do ícone';
	@override String appIconDescription({required Object host}) => 'Especifica o ícone utilizado quando ${host} é exibido como um app.';
	@override String get appIconUsageExample => 'Exemplo: Como PWA, ou quando exibido num marcador de páginas ou na tela inicial de um celular';
	@override String get appIconStyleRecommendation => 'Como o ícone pode ser cortado para um quadrado ou círculo, é recomendado adicionar um fundo colorido na imagem.';
	@override String appIconResolutionMustBe({required Object resolution}) => 'A resolução mínima é ${resolution}.';
	@override String get manifestJsonOverride => 'Sobrescrever manifest.json';
	@override String get shortName => 'Abreviação';
	@override String get shortNameDescription => 'Uma abreviação do nome da instância que pode ser exibido caso o nome oficial completo seja muito longo.';
	@override String get fanoutTimelineDescription => 'Melhora significativamente a performance do retorno da linha do tempo e reduz o impacto no banco de dados quando habilitado. Em contrapartida, o uso de memória do Redis aumentará. Considere desabilitar em casos de baixa disponibilidade de memória ou instabilidade do servidor.';
	@override String get fanoutTimelineDbFallback => '"Fallback" ao banco de dados';
	@override String get fanoutTimelineDbFallbackDescription => 'Quando habilitado, a linha do tempo irá recuar ao banco de dados caso consultas adicionais sejam feitas e ela não estiver em cache. Quando desabilitado, o impacto no servidor será reduzido ao eliminar o recuo, mas limita a quantidade de linhas do tempo que podem ser recebidas.';
	@override String get reactionsBufferingDescription => 'Quando ativado, o desempenho durante a criação de uma reação será melhorado substancialmente, reduzindo a carga do banco de dados. Porém, a o uso de memória do Redis irá aumentar.';
	@override String get remoteNotesCleaning => 'Limpeza automática de notas remotas';
	@override String get remoteNotesCleaning_description => 'Quando habilitado, notas remotas obsoletas e não utilizadas serão periodicamente limpadas para previnir sobrecarga no banco de dados.';
	@override String get remoteNotesCleaningMaxProcessingDuration => 'Maximizar tempo de processamento da limpeza';
	@override String get remoteNotesCleaningExpiryDaysForEachNotes => 'Mínimo de dias para retenção de notas';
	@override String get inquiryUrl => 'URL de inquérito';
	@override String get inquiryUrlDescription => 'Especifique um URL para um formulário de inquérito para a administração ou uma página web com informações de contato.';
	@override String get openRegistration => 'Abrir a criação de contas';
	@override String get openRegistrationWarning => 'Abrir cadastros contém riscos. É recomendado apenas habilitá-los se houver um sistema de monitoramento contínuo e resolução imediata de problemas.';
	@override String get thisSettingWillAutomaticallyOffWhenModeratorsInactive => 'Se nenhuma atividade da moderação for detectada por um tempo, essa configuração será desativada para prevenir spam.';
	@override String get deliverSuspendedSoftware => 'Software Suspenso';
	@override String get deliverSuspendedSoftwareDescription => 'Você pode especificar uma faixa de nomes e versões do software de servidores para cancelar o envio de conteúdo por motivos como vulnerabilidades. Essa informação da versão é providenciada pelo servidor e pode não ser confiável. Uma faixa semver pode ser utilizada para especificar a versão, mas colocar \'>= 2024.3.1\' não incluirá versões personalizadas como \'2024.3.1-custom.0\'. Logo, é recomendado inserir uma especificação como \'>= 2024.3.1-0\'';
	@override String get singleUserMode => 'Modo de usuário único';
	@override String get singleUserMode_description => 'Se você é o único usuário desse servidor, habilitar esse modo irá otimizar a performance.';
	@override String get signToActivityPubGet => 'Assinar solicitações GET do ActivityPub';
	@override String get signToActivityPubGet_description => 'Normalmente, isso deve ser habilitado. Desabilitar pode melhorar o desempenho na federação, mas também pode cortar a federação com alguns servidores.';
	@override String get proxyRemoteFiles => 'Passar arquivos remotos por proxy';
	@override String get proxyRemoteFiles_description => 'Se habilitado, o servidor irá servir arquivos remotos através de um proxy. Isso é útil para gerar prévias de imagens e proteger a privacidade do usuário.';
	@override String get allowExternalApRedirect => 'Permitir redirecionamento de conteúdo pelo ActivityPub';
	@override String get allowExternalApRedirect_description => 'Se habilitado, outros servidores podem solicitar conteúdo de terceiros através desse servidor, o que pode resultar em falsificação de conteúdo (spoofing).';
	@override String get userGeneratedContentsVisibilityForVisitor => 'Visibilidade de conteúdo dos usuários para visitantes';
	@override String get userGeneratedContentsVisibilityForVisitor_description => 'Isso é útil para prevenir problemas causados por conteúdo inapropriado de usuários remotos de servidores com pouca ou nenhuma moderação, que pode ser hospedado na internet a partir desse servidor.';
	@override String get userGeneratedContentsVisibilityForVisitor_description2 => 'Publicar todo o conteúdo do servidor para a internet pode ser arriscado. Isso é especialmente importante para visitantes que desconhecem a natureza distribuída do conteúdo na internet, pois eles podem acreditar que o conteúdo remoto é criado por usuários desse servidor.';
	@override String get restartServerSetupWizardConfirm_title => 'Reiniciar o assistente de configuração?';
	@override String get restartServerSetupWizardConfirm_text => 'Algumas configurações atuais serão reiniciadas.';
	@override String get entrancePageStyle => 'Estilo da página de entrada';
	@override String get showTimelineForVisitor => 'Mostrar linha do tempo';
	@override String get showActivitiesForVisitor => 'Mostrar atividades';
	@override late final _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorPtPt userGeneratedContentsVisibilityForVisitor_ = _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorPtPt._(_root);
}

// Path: misskey.accountMigration_
class _TranslationsMisskeyAccountMigrationPtPt extends TranslationsMisskeyAccountMigrationEnUs {
	_TranslationsMisskeyAccountMigrationPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => 'Migrar outra conta para essa';
	@override String get moveFromSub => 'Criar um \'alias\' a outra conta';
	@override String moveFromLabel({required Object n}) => 'Conta original #${n}';
	@override String get moveFromDescription => 'Se você deseja migrar de outra conta para esta, é necessário criar um alias aqui. Por favor, insira a conta de origem da migração no seguinte formato: @username@server.example.com. Para excluir o alias, deixe o campo em branco e clique em salvar (não recomendado).';
	@override String get moveTo => 'Migrar dessa conta para outra';
	@override String get moveToLabel => 'Conta para a qual se mover:';
	@override String get moveCannotBeUndone => 'A migração de conta não pode ser desfeita.';
	@override String get moveAccountDescription => 'Você está migrando para uma nova conta.\n　・Seus seguidores irão automaticamente seguir a nova conta.\n　・Todas as suas conexões de seguidores nesta conta serão removidas.\n　・Você não poderá mais criar novas notas nesta conta.\n\nA migração dos seguidores é automática, mas a migração das pessoas que você segue deve ser feita manualmente. Antes de migrar, exporte quem você está seguindo nesta conta e, assim que migrar, importe essa lista na nova conta.\nO mesmo se aplica para listas, silenciamentos e bloqueios, que também devem ser migrados manualmente.\n\n(Esta descrição se refere ao comportamento do servidor Misskey v13.12.0 ou posterior. Outros softwares ActivityPub, como Mastodon, podem ter comportamentos diferentes.)';
	@override String get moveAccountHowTo => 'Para realizar a migração da conta, primeiro crie um alias para esta conta no destino da migração. Após criar o alias, insira a conta de destino da migração no seguinte formato: @username@server.example.com.';
	@override String get startMigration => 'Migrar';
	@override String migrationConfirm({required Object account}) => 'Tem certeza de que deseja migrar esta conta para \'${account}\'? Uma vez migrada, não poderá ser desfeita e não será possível usar esta conta novamente em seu estado original.';
	@override String get movedAndCannotBeUndone => 'Essa conta foi migrada. A migração não pode ser desfeita.';
	@override String get postMigrationNote => 'A remoção dos seguidores desta conta será realizada 24 horas após a operação de migração. O número de seguidores e seguidos desta conta se tornará zero. Os seguidores não serão removidos, portanto, eles continuarão a ver as postagens destinadas aos seguidores desta conta.';
	@override String get movedTo => 'Conta para a qual se mover:';
}

// Path: misskey.achievements_
class _TranslationsMisskeyAchievementsPtPt extends TranslationsMisskeyAchievementsEnUs {
	_TranslationsMisskeyAchievementsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Data de aquisição';
	@override late final _TranslationsMisskeyAchievementsTypesPtPt types_ = _TranslationsMisskeyAchievementsTypesPtPt._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRolePtPt extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRolePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Novo cargo';
	@override String get edit => 'Editar cargo';
	@override String get name => 'Nome do Cargo';
	@override String get description => 'Descrição do cargo';
	@override String get permission => 'Permissões do cargo';
	@override String get descriptionOfPermission => '<b>Moderador</b> permite que você execute operações básicas relacionadas à moderação.\n<b>Administradores</b> podem alterar todas as configurações do servidor.';
	@override String get assignTarget => 'Atribuir';
	@override String get descriptionOfAssignTarget => '<b>Manual</b> para gerenciar manualmente quem está incluído neste cargo.\n<b>Condicional</b> define uma condição e os usuários que corresponderem a ela serão incluídos automaticamente.';
	@override String get manual => 'Manual';
	@override String get manualRoles => 'Cargos manuais';
	@override String get conditional => 'Condicional';
	@override String get conditionalRoles => 'Cargos condicionais';
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
	@override String get preserveAssignmentOnMoveAccount => 'Preservar a associação de cargos durante a migração';
	@override String get preserveAssignmentOnMoveAccount_description => 'Quando ligado, esse cargo será encaminhado para a conta final quando houver migração de um usuário.';
	@override String get canEditMembersByModerator => 'Permitir a edição de membros deste cargo por moderadores';
	@override String get descriptionOfCanEditMembersByModerator => 'Quando ativado, os moderadores também poderão atribuir/remover usuários deste papel, além dos administradores. Quando desativado, apenas os administradores poderão fazê-lo.';
	@override String get priority => 'Prioridade';
	@override late final _TranslationsMisskeyRolePriorityPtPt priority_ = _TranslationsMisskeyRolePriorityPtPt._(_root);
	@override late final _TranslationsMisskeyRoleOptionsPtPt options_ = _TranslationsMisskeyRoleOptionsPtPt._(_root);
	@override late final _TranslationsMisskeyRoleConditionPtPt condition_ = _TranslationsMisskeyRoleConditionPtPt._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _TranslationsMisskeySensitiveMediaDetectionPtPt extends TranslationsMisskeySensitiveMediaDetectionEnUs {
	_TranslationsMisskeySensitiveMediaDetectionPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get description => 'Use o aprendizado de máquina para detectar automaticamente mídias sensíveis para moderação. Isso pode aumentar ligeiramente a carga no servidor.';
	@override String get sensitivity => 'Detecção de sensibilidade';
	@override String get sensitivityDescription => 'Ao reduzir a sensibilidade, as detecções incorretas (falsos positivos) diminuem. Ao aumentar a sensibilidade, as falhas de detecção (falsos negativos) diminuem.';
	@override String get setSensitiveFlagAutomatically => 'Marcar como sensível';
	@override String get setSensitiveFlagAutomaticallyDescription => 'Os resultados da detecção interna serão mantidos mesmo se essa opção estiver desligada.';
	@override String get analyzeVideos => 'Habilitar análise de vídeos';
	@override String get analyzeVideosDescription => 'Analisa vídeos em adição a imagens. Isso irá aumentar levemente a carga do servidor.';
}

// Path: misskey.emailUnavailable_
class _TranslationsMisskeyEmailUnavailablePtPt extends TranslationsMisskeyEmailUnavailableEnUs {
	_TranslationsMisskeyEmailUnavailablePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get used => 'O endereço de e-mail informado já está sendo utilizado';
	@override String get format => 'Formado de e-mail inválido';
	@override String get disposable => 'Endereços de e-mail descartáveis não devem ser utilizados';
	@override String get mx => 'O servidor de informado é inválido';
	@override String get smtp => 'O servidor de e-mail não está respondendo';
	@override String get banned => 'Você não pode se cadastrar com esse endereço de email';
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilityPtPt extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilityPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get public => 'Público';
	@override String get followers => 'Visível apenas para seguidores';
	@override String get private => 'Privado';
}

// Path: misskey.signup_
class _TranslationsMisskeySignupPtPt extends TranslationsMisskeySignupEnUs {
	_TranslationsMisskeySignupPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Quase pronto';
	@override String get emailAddressInfo => 'Por favor, insira o seu endereço de e-mail. Ele não será divulgado.';
	@override String emailSent({required Object email}) => 'Um e-mail de confirmação foi enviado para o endereço de e-mail fornecido (${email}). Acesse o link fornecido no e-mail para concluir a criação de sua conta.';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeletePtPt extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeletePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Remover Conta';
	@override String get mayTakeTime => 'A exclusão de uma conta é um processo que requer muito recurso, portanto, se você tiver muito conteúdo criados ou arquivos enviados, pode levar algum tempo até ser concluída.';
	@override String get sendEmail => 'Quando a exclusão da conta estiver concluída, enviaremos uma notificação para o endereço de e-mail registrado.';
	@override String get requestAccountDelete => 'Solicitar exclusão de conta';
	@override String get started => 'O processo de exclusão foi iniciado.';
	@override String get inProgress => 'A exclusão está em andamento';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdPtPt extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get back => 'Voltar';
	@override String get reduceFrequencyOfThisAd => 'Diminuir frequência deste anúncio';
	@override String get hide => 'Não exibir anúncios';
	@override String get timezoneinfo => 'O dia da semana é determinado pelo fuso horário do servidor.';
	@override String get adsSettings => 'Configurações de propaganda';
	@override String get notesPerOneAd => 'Intervalo de notas entre o anúncio nas atualizações em tempo real.';
	@override String get setZeroToDisable => 'Selecione o valor 0 para desabilitar anúncios nas atualizações em tempo real.';
	@override String get adsTooClose => 'O intervalo atual de anúncio pode impactar negativamente a experiência de usuário por ser muito baixo.';
}

// Path: misskey.forgotPassword_
class _TranslationsMisskeyForgotPasswordPtPt extends TranslationsMisskeyForgotPasswordEnUs {
	_TranslationsMisskeyForgotPasswordPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Por favor, insira o endereço de e-mail usado no cadastro de sua conta. Um link para redefinição de senha será enviado para esse endereço.';
	@override String get ifNoEmail => 'Caso você não tenha registrado um endereço de e-mail, por favor, entre em contato com o administrador.';
	@override String get contactAdmin => 'Essa instância não possui suporte ao uso de endereços de email, contate seu administrador para mudar a sua senha.';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryPtPt extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get my => 'Minha Galeria';
	@override String get liked => 'Postagens curtidas';
	@override String get like => 'Curtir';
	@override String get unlike => 'Remover curtida';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailPtPt extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowPtPt follow_ = _TranslationsMisskeyEmailFollowPtPt._(_root);
	@override late final _TranslationsMisskeyEmailReceiveFollowRequestPtPt receiveFollowRequest_ = _TranslationsMisskeyEmailReceiveFollowRequestPtPt._(_root);
}

// Path: misskey.plugin_
class _TranslationsMisskeyPluginPtPt extends TranslationsMisskeyPluginEnUs {
	_TranslationsMisskeyPluginPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get install => 'Instalar plugins';
	@override String get installWarn => 'Por favor, não instale plugins duvidosos.';
	@override String get manage => 'Gerenciar plugins';
	@override String get viewSource => 'Ver código-fonte';
	@override String get viewLog => 'Mostrar registo';
}

// Path: misskey.preferencesBackups_
class _TranslationsMisskeyPreferencesBackupsPtPt extends TranslationsMisskeyPreferencesBackupsEnUs {
	_TranslationsMisskeyPreferencesBackupsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get list => 'Backups criados';
	@override String get saveNew => 'Salvar novo backup';
	@override String get loadFile => 'Carregar de arquivo';
	@override String get apply => 'Aplicar a este dispositivo';
	@override String get save => 'Salvar mudanças';
	@override String get inputName => 'Insira um nome para esse backup';
	@override String get cannotSave => 'Não foi possível salvar';
	@override String nameAlreadyExists({required Object name}) => 'Um backup chamado "${name}" já existe. Por favor, insira outro nome.';
	@override String applyConfirm({required Object name}) => 'Deseja aplicar o backup \'${name}\' ao dispositivo atual? As configurações atuais do dispositivo serão perdidas.';
	@override String saveConfirm({required Object name}) => 'Salvar backup como "${name}"?';
	@override String deleteConfirm({required Object name}) => 'Deseja excluir ${name}?';
	@override String renameConfirm({required Object old, required Object new_}) => 'Renomear esse backup de "${old}" para "${new_}"?';
	@override String get noBackups => 'Não há backups. Você pode configurar suas configurações de cliente nesse servidor ao selecionar "Criar novo backup".';
	@override String createdAt({required Object date, required Object time}) => 'Criado em: ${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => 'Atualizado em: ${date} ${time}';
	@override String get cannotLoad => 'Não foi possível carregar';
	@override String get invalidFile => 'Formato de arquivo inválido';
}

// Path: misskey.registry_
class _TranslationsMisskeyRegistryPtPt extends TranslationsMisskeyRegistryEnUs {
	_TranslationsMisskeyRegistryPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Escopo';
	@override String get key => 'Chave';
	@override String get keys => 'Chave';
	@override String get domain => 'Domínio';
	@override String get createKey => 'Criar chave';
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeyPtPt extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeyPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey é um software de código aberto desenvolvido por syulio desde 2014.';
	@override String get contributors => 'Contribuidores principais';
	@override String get allContributors => 'Todos os contribuidores';
	@override String get source => 'Código-fonte';
	@override String get original => 'Original';
	@override String thisIsModifiedVersion({required Object name}) => '${name} utiliza uma versão modificada do Misskey original.';
	@override String get translation => 'Traduza o Misskey';
	@override String get donate => 'Doe para o Misskey';
	@override String get morePatrons => 'Nós apreciamos o apoio de vários outros apoiadores não listados aqui. Obrigado! 🥰';
	@override String get patrons => 'Apoiadores';
	@override String get projectMembers => 'Membros do projeto';
}

// Path: misskey.displayOfSensitiveMedia_
class _TranslationsMisskeyDisplayOfSensitiveMediaPtPt extends TranslationsMisskeyDisplayOfSensitiveMediaEnUs {
	_TranslationsMisskeyDisplayOfSensitiveMediaPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get respect => 'Esconder mídia marcada como sensível';
	@override String get ignore => 'Exibir mídia marcada como sensível';
	@override String get force => 'Esconder toda mídia';
}

// Path: misskey.instanceTicker_
class _TranslationsMisskeyInstanceTickerPtPt extends TranslationsMisskeyInstanceTickerEnUs {
	_TranslationsMisskeyInstanceTickerPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get none => 'Nunca mostrar';
	@override String get remote => 'Mostrar para usuários remotos';
	@override String get always => 'Sempre mostrar';
}

// Path: misskey.serverDisconnectedBehavior_
class _TranslationsMisskeyServerDisconnectedBehaviorPtPt extends TranslationsMisskeyServerDisconnectedBehaviorEnUs {
	_TranslationsMisskeyServerDisconnectedBehaviorPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Recarregar automaticamente';
	@override String get dialog => 'Exibir diálogo de aviso de conteúdo';
	@override String get quiet => 'Exibir aviso de conteúdo discreto';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelPtPt extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get create => 'Criar canal';
	@override String get edit => 'Editar canal';
	@override String get setBanner => 'Definir banner';
	@override String get removeBanner => 'Remover banner';
	@override String get featured => 'Destaques';
	@override String get owned => 'Autoral';
	@override String get following => 'Seguindo';
	@override String usersCount({required Object n}) => '${n} usuários ativos';
	@override String notesCount({required Object n}) => '${n} notas';
	@override String get nameAndDescription => 'Nome e descrição';
	@override String get nameOnly => 'Apenas o nome';
	@override String get allowRenoteToExternal => 'Permitir repostagens e citações de fora do canal';
}

// Path: misskey.menuDisplay_
class _TranslationsMisskeyMenuDisplayPtPt extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplayPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Exibir painel lateral inteiro';
	@override String get sideIcon => 'Lateral (Ícones)';
	@override String get top => 'Exibir barra superior';
	@override String get hide => 'Ocultar';
}

// Path: misskey.wordMute_
class _TranslationsMisskeyWordMutePtPt extends TranslationsMisskeyWordMuteEnUs {
	_TranslationsMisskeyWordMutePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Palavras silenciadas';
	@override String get muteWordsDescription => 'Separe com espaços para uma condicional AND (&&) ou por linha para uma condicional OR (||).';
	@override String get muteWordsDescription2 => 'Cercar palavras-chave com barras para usar expressões regulares (RegEx).';
}

// Path: misskey.instanceMute_
class _TranslationsMisskeyInstanceMutePtPt extends TranslationsMisskeyInstanceMuteEnUs {
	_TranslationsMisskeyInstanceMutePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Todas as notas e repostagens do servidor configurado serão silenciados, incluindo respostas aos usuários do servidor mutado.';
	@override String get instanceMuteDescription2 => 'Separar por linha';
	@override String get title => 'Esconder notas das instâncias listadas. ';
	@override String get heading => 'Lista de instâncias a serem silenciadas';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemePtPt extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get explore => 'Explorar Temas';
	@override String get install => 'Instalar um tema';
	@override String get manage => 'Gerenciar temas';
	@override String get code => 'Código do tema';
	@override String get copyThemeCode => 'Copiar código do tema';
	@override String get description => 'Descrição';
	@override String installed({required Object name}) => '${name} foi instalado';
	@override String get installedThemes => 'Temas instalados';
	@override String get builtinThemes => 'Temas nativos';
	@override String get instanceTheme => 'Tema do servidor';
	@override String get alreadyInstalled => 'Esse tema já foi instalado';
	@override String get invalid => 'O formato desse tema é invalido';
	@override String get make => 'Fazer um tema';
	@override String get base => 'Base';
	@override String get addConstant => 'Adicionar constante';
	@override String get constant => 'Constante';
	@override String get defaultValue => 'Valor padrão';
	@override String get color => 'Cor';
	@override String get refProp => 'Referenciar uma propriedade';
	@override String get refConst => 'Referenciar uma constante';
	@override String get key => 'Chave';
	@override String get func => 'Funções';
	@override String get funcKind => 'Tipo de função';
	@override String get argument => 'Argumento';
	@override String get basedProp => 'Propriedade referenciada';
	@override String get alpha => 'Opacidade';
	@override String get darken => 'Escurecer';
	@override String get lighten => 'Esclarecer';
	@override String get inputConstantName => 'Insira um nome para essa constante';
	@override String get importInfo => 'Se você inserir o código do tema aqui, você pode importá-lo no editor de temas';
	@override String deleteConstantConfirm({required Object const_}) => 'Confirma a exclusão da constante ${const_}?';
	@override late final _TranslationsMisskeyThemeKeysPtPt keys = _TranslationsMisskeyThemeKeysPtPt._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxPtPt extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get note => 'Posts';
	@override String get noteMy => 'Própria nota';
	@override String get notification => 'Notificações';
	@override String get reaction => 'Ao selecionar uma reação';
	@override String get chatMessage => 'Mensagens em Conversas';
}

// Path: misskey.soundSettings_
class _TranslationsMisskeySoundSettingsPtPt extends TranslationsMisskeySoundSettingsEnUs {
	_TranslationsMisskeySoundSettingsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get driveFile => 'Usar um arquivo de áudio do Drive.';
	@override String get driveFileWarn => 'Selecione um arquivo de áudio do Drive.';
	@override String get driveFileTypeWarn => 'Esse arquivo não é compatível';
	@override String get driveFileTypeWarnDescription => 'Selecione um arquivo de áudio';
	@override String get driveFileDurationWarn => 'O áudio é muito longo.';
	@override String get driveFileDurationWarnDescription => 'Áudios longos podem atrapalhar o funcionamento do Misskey. Deseja continuar?';
	@override String get driveFileError => 'Não foi possível carregar o som. Por favor, altere a configuração.';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoPtPt extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get future => 'Futuro';
	@override String get justNow => 'Agora mesmo';
	@override String secondsAgo({required Object n}) => '${n}s atrás';
	@override String minutesAgo({required Object n}) => '${n}m atrás';
	@override String hoursAgo({required Object n}) => '${n}h atrás';
	@override String daysAgo({required Object n}) => '${n}d atrás';
	@override String weeksAgo({required Object n}) => '${n} semanas atrás';
	@override String monthsAgo({required Object n}) => '${n} meses atrás';
	@override String yearsAgo({required Object n}) => '${n} anos atrás';
	@override String get invalid => 'Não há nada aqui';
}

// Path: misskey.timeIn_
class _TranslationsMisskeyTimeInPtPt extends TranslationsMisskeyTimeInEnUs {
	_TranslationsMisskeyTimeInPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String seconds({required Object n}) => 'Em ${n}s';
	@override String minutes({required Object n}) => 'Em ${n}m';
	@override String hours({required Object n}) => 'Em ${n}h';
	@override String days({required Object n}) => 'Em ${n}d';
	@override String weeks({required Object n}) => 'Em ${n} semanas';
	@override String months({required Object n}) => 'Em ${n} meses';
	@override String years({required Object n}) => 'Em ${n} anos';
}

// Path: misskey.time_
class _TranslationsMisskeyTimePtPt extends TranslationsMisskeyTimeEnUs {
	_TranslationsMisskeyTimePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get second => 'Segundo(s)';
	@override String get minute => 'Minuto(s)';
	@override String get hour => 'Hora(s)';
	@override String get day => 'Dia(s)';
	@override String get month => 'Mês(es)';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faPtPt extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'Você já cadastrou um dispositivo de autenticação de dois fatores.';
	@override String get registerTOTP => 'Cadastrar aplicativo autenticador';
	@override String step1({required Object a, required Object b}) => 'Inicialmente, instale um aplicativo autenticador (como ${a} ou ${b}) em seu dispositivo.';
	@override String get step2 => 'Então, escaneie o código QR exibido na tela.';
	@override String get step2Uri => 'Acesse o seguinte URI se você estiver utilizando um aplicativo no computador';
	@override String get step3Title => 'Insira o código de autenticação';
	@override String get step3 => 'Insira o código de autenticação (token) providenciado pelo seu aplicativo para terminar a configuração.';
	@override String get setupCompleted => 'Configuração completa';
	@override String get step4 => 'De agora em diante, quaisquer solicitações de entrada pedirão pelo código.';
	@override String get securityKeyNotSupported => 'O seu navegador não é compatível com chaves de segurança.';
	@override String get registerTOTPBeforeKey => 'Por favor, configure um aplicativo autenticador para registrar uma chave de segurança.';
	@override String get securityKeyInfo => 'Além da autenticação por impressão digital ou PIN, você também pode configurar a autenticação por chaves de segurança de hardware compatível com FIDO2 para proteger ainda mais a sua conta.';
	@override String get registerSecurityKey => 'Registre um código de segurança';
	@override String get securityKeyName => 'Insira um nome para a chave';
	@override String get tapSecurityKey => 'Por favor, siga as instruções do navegador para registrar o código de segurança';
	@override String get removeKey => 'Remover código de segurança';
	@override String removeKeyConfirm({required Object name}) => 'Deseja excluir ${name}?';
	@override String get whyTOTPOnlyRenew => 'O autenticador não pode ser removido enquanto há códigos de segurança registrados.';
	@override String get renewTOTP => 'Reconfigurar autenticador';
	@override String get renewTOTPConfirm => 'Isso interromperá o funcionamento dos códigos de aplicativos anteriores ';
	@override String get renewTOTPOk => 'Reconfigurar';
	@override String get renewTOTPCancel => 'Não, obrigado';
	@override String get checkBackupCodesBeforeCloseThisWizard => 'Antes de fechar essa janela, anote os códigos de backup a seguir.';
	@override String get backupCodes => 'Códigos de backup';
	@override String get backupCodesDescription => 'Você pode utilizar esses códigos para ganhar acesso à conta caso sua autenticação de dois fatores esteja indisponível. Cada código pode ser utilizado apenas uma vez. Por favor, guarde-os em um local seguro.';
	@override String get backupCodeUsedWarning => 'Um código de backup foi utilizado. Por favor, reconfigure a autenticação de dois fatores o quanto antes, caso não consiga utilizá-la.';
	@override String get backupCodesExhaustedWarning => 'Todos os códigos de backup foram utilizados. Caso perca acesso à autenticação de dois fatores, você perderá o acesso à conta. Por favor, reconfigure a autenticação de dois fatores.';
	@override String get moreDetailedGuideHere => 'Aqui está um guia detalhado';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsPtPt extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

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
	@override String get readFlash => 'Ver Play';
	@override String get writeFlash => 'Editar Plays';
	@override String get readFlashLikes => 'Ver lista de Plays curtidas';
	@override String get writeFlashLikes => 'Editar lista de Plays curtidas';
	@override String get readAdminAbuseUserReports => 'Ver relatórios de usuário';
	@override String get writeAdminDeleteAccount => 'Excluir conta de usuário';
	@override String get writeAdminDeleteAllFilesOfAUser => 'Excluir todos os arquivos de um usuário';
	@override String get readAdminIndexStats => 'Ver estatísticas do índice do banco de dados';
	@override String get readAdminTableStats => 'Ver estatísticas da tabela do banco de dados';
	@override String get readAdminUserIps => 'Ver endereços IP do usuário';
	@override String get readAdminMeta => 'Ver metadados da instância';
	@override String get writeAdminResetPassword => 'Mudar a senha do usuário';
	@override String get writeAdminResolveAbuseUserReport => 'Resolver relatório de usuário';
	@override String get writeAdminSendEmail => 'Enviar email';
	@override String get readAdminServerInfo => 'Ver informações do servidor';
	@override String get readAdminShowModerationLog => 'Ver log de moderação';
	@override String get readAdminShowUser => 'Ver informações privadas do usuário';
	@override String get writeAdminSuspendUser => 'Suspender usuário';
	@override String get writeAdminUnsetUserAvatar => 'Remover avatar do usuário';
	@override String get writeAdminUnsetUserBanner => 'Remover banner do usuário';
	@override String get writeAdminUnsuspendUser => 'Cancelar a suspensão do usuário';
	@override String get writeAdminMeta => 'Gerenciar os metadados da instância';
	@override String get writeAdminUserNote => 'Gerenciar a nota de moderação';
	@override String get writeAdminRoles => 'Gerenciar cargos';
	@override String get readAdminRoles => 'Ver cargos';
	@override String get writeAdminRelays => 'Gerenciar relays';
	@override String get readAdminRelays => 'Ver relays';
	@override String get writeAdminInviteCodes => 'Gerenciar códigos de convite';
	@override String get readAdminInviteCodes => 'Ver códigos de convite';
	@override String get writeAdminAnnouncements => 'Gerenciar anúncios';
	@override String get readAdminAnnouncements => 'Ver anúncios';
	@override String get writeAdminAvatarDecorations => 'Gerenciar decorações de avatar';
	@override String get readAdminAvatarDecorations => 'Ver decorações de avatar';
	@override String get writeAdminFederation => 'Gerenciar dados de federação';
	@override String get writeAdminAccount => 'Gerenciar conta de usuário';
	@override String get readAdminAccount => 'Ver conta de usuário';
	@override String get writeAdminEmoji => 'Gerenciar emoji';
	@override String get readAdminEmoji => 'Ver emoji';
	@override String get writeAdminQueue => 'Gerenciar trabalhos pendentes';
	@override String get readAdminQueue => 'Ver informações de trabalhos pendentes';
	@override String get writeAdminPromo => 'Gerenciar notas de promoção';
	@override String get writeAdminDrive => 'Gerenciar Drive de usuário';
	@override String get readAdminDrive => 'Ver informações de Drive de usuário';
	@override String get readAdminStream => 'Utilizar WebSocket API para Admin';
	@override String get writeAdminAd => 'Gerenciar propagandas';
	@override String get readAdminAd => 'Ver propagandas';
	@override String get writeInviteCodes => 'Criar códigos de convite';
	@override String get readInviteCodes => 'Obter códigos de convite';
	@override String get writeClipFavorite => 'Gerenciar clipes favoritados';
	@override String get readClipFavorite => 'Ver Clipes favoritados';
	@override String get readFederation => 'Ver dados de federação';
	@override String get writeReportAbuse => 'Reportar violação';
	@override String get writeChat => 'Compor ou editar mensagens de chat';
	@override String get readChat => 'Navegar Conversas';
}

// Path: misskey.auth_
class _TranslationsMisskeyAuthPtPt extends TranslationsMisskeyAuthEnUs {
	_TranslationsMisskeyAuthPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'Conceder permissões do aplicativo';
	@override String shareAccess({required Object name}) => 'Você gostaria de autorizar "${name}" para acessar essa conta?';
	@override String get shareAccessAsk => 'Você tem certeza de que gostaria de conceder ao aplicativo o acesso à conta?';
	@override String permission({required Object name}) => '${name} solicita as seguintes permissões';
	@override String get permissionAsk => 'O aplicativo solicita as seguintes permissões';
	@override String get pleaseGoBack => 'Por favor, volte ao aplicativo';
	@override String get callback => 'Retornando ao aplicativo';
	@override String get accepted => 'Acesso permitido';
	@override String get denied => 'Acesso negado';
	@override String get scopeUser => 'Operar como o usuário a seguir';
	@override String get pleaseLogin => 'Por favor, entre para autorizar aplicativos.';
	@override String get byClickingYouWillBeRedirectedToThisUrl => 'Quando o acesso for permitido, você será redirecionado para o seguinte endereço';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesPtPt extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get all => 'Todas as notas';
	@override String get homeTimeline => 'Notas de usuários seguidos';
	@override String get users => 'Notas de usuários específicos';
	@override String get userList => 'Notas de uma lista específica de usuários';
	@override String get userBlacklist => 'Todas as notas, exceto as de um ou mais usuários específicos';
}

// Path: misskey.weekday_
class _TranslationsMisskeyWeekdayPtPt extends TranslationsMisskeyWeekdayEnUs {
	_TranslationsMisskeyWeekdayPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get sunday => 'Domingo';
	@override String get monday => 'Segunda-feira';
	@override String get tuesday => 'Terça-feira';
	@override String get wednesday => 'Quarta-feira';
	@override String get thursday => 'Quinta-feira';
	@override String get friday => 'Sexta-feira';
	@override String get saturday => 'Sábado';
}

// Path: misskey.widgets_
class _TranslationsMisskeyWidgetsPtPt extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

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
	@override late final _TranslationsMisskeyWidgetsUserListPtPt userList_ = _TranslationsMisskeyWidgetsUserListPtPt._(_root);
	@override String get clicker => 'Clicker';
	@override String get birthdayFollowings => 'Usuários de aniversário hoje';
	@override String get chat => 'Conversar com usuário';
}

// Path: misskey.widgetOptions_
class _TranslationsMisskeyWidgetOptionsPtPt extends TranslationsMisskeyWidgetOptionsEnUs {
	_TranslationsMisskeyWidgetOptionsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get showHeader => 'Exibir cabeçalho';
	@override String get height => 'Altura';
	@override late final _TranslationsMisskeyWidgetOptionsButtonPtPt button_ = _TranslationsMisskeyWidgetOptionsButtonPtPt._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsClockPtPt clock_ = _TranslationsMisskeyWidgetOptionsClockPtPt._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsBirthdayFollowingsPtPt birthdayFollowings_ = _TranslationsMisskeyWidgetOptionsBirthdayFollowingsPtPt._(_root);
}

// Path: misskey.cw_
class _TranslationsMisskeyCwPtPt extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Esconder';
	@override String get show => 'Carregar mais';
	@override String chars({required Object count}) => '${count} caracteres';
	@override String files({required Object count}) => '${count} arquivo(s)';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollPtPt extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'São necessárias, no mínimo, duas escolhas';
	@override String choiceN({required Object n}) => 'Escolha ${n}';
	@override String get noMore => 'Você não pode adicionar mais escolhas';
	@override String get canMultipleVote => 'Permitir múltipla seleção';
	@override String get expiration => 'Encerrar enquete';
	@override String get infinite => 'Nunca';
	@override String get at => 'Terminar em...';
	@override String get after => 'Terminar após...';
	@override String get deadlineDate => 'Data de término';
	@override String get deadlineTime => 'Tempo';
	@override String get duration => 'Duração';
	@override String votesCount({required Object n}) => '${n} votos';
	@override String totalVotes({required Object n}) => '${n} votos totais';
	@override String get vote => 'Votar em enquetes';
	@override String get showResult => 'Ver resultados';
	@override String get voted => 'Votada';
	@override String get closed => 'Encerrada';
	@override String remainingDays({required Object d, required Object h}) => '${d} dia(s) ${h} hora(s) restantes';
	@override String remainingHours({required Object h, required Object m}) => '${h} hora(s) ${m} minuto(s) restantes';
	@override String remainingMinutes({required Object m, required Object s}) => '${m} minuto(s) ${s} segundo(s) restantes';
	@override String remainingSeconds({required Object s}) => '${s} segundo(s) restantes';
}

// Path: misskey.visibility_
class _TranslationsMisskeyVisibilityPtPt extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get public => 'Público';
	@override String get publicDescription => 'Sua nota será visível para todos os usuários';
	@override String get home => 'Início';
	@override String get homeDescription => 'Publicar apenas na linha do tempo Início';
	@override String get followers => 'Seguidores';
	@override String get followersDescription => 'Tornar visível apenas para os meus seguidores';
	@override String get specified => 'Mensagem Direta';
	@override String get specifiedDescription => 'Tornar visível apenas para usuários específicos';
	@override String get disableFederation => 'Defederar';
	@override String get disableFederationDescription => 'Não transmitir às outras instâncias';
}

// Path: misskey.postForm_
class _TranslationsMisskeyPostFormPtPt extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get quitInspiteOfThereAreUnuploadedFilesConfirm => 'Há arquivos que não foram enviados, gostaria de descartá-los e fechar o editor?';
	@override String get uploaderTip => 'O arquivo ainda não foi enviado. No menu do arquivo, você pode renomear, cortar, adicionar uma marca d\'água, comprimir ou descomprimir um arquivo. Arquivos serão enviados automaticamente ao publicar a nota.';
	@override String get replyPlaceholder => 'Responder a essa nota...';
	@override String get quotePlaceholder => 'Citar essa nota...';
	@override String get channelPlaceholder => 'Postar em canal...';
	@override late final _TranslationsMisskeyPostFormHowToUsePtPt howToUse_ = _TranslationsMisskeyPostFormHowToUsePtPt._(_root);
	@override late final _TranslationsMisskeyPostFormPlaceholdersPtPt placeholders_ = _TranslationsMisskeyPostFormPlaceholdersPtPt._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfilePtPt extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfilePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nome';
	@override String get username => 'Nome de usuário';
	@override String get description => 'Bio';
	@override String get youCanIncludeHashtags => 'Você pode incluir hashtags em sua bio.';
	@override String get metadata => 'Informações Adicionais';
	@override String get metadataEdit => 'Editar informações adicionais';
	@override String get metadataDescription => 'Aqui, você pode exibir campos adicionais de informação no seu perfil.';
	@override String get metadataLabel => 'Rótulo';
	@override String get metadataContent => 'Conteúdo';
	@override String get changeAvatar => 'Mudar avatar';
	@override String get changeBanner => 'Mudar banner';
	@override String get verifiedLinkDescription => 'Ao inserir um URL que contém um link para essa conta, um ícone de verificação será exibido ao lado do campo';
	@override String avatarDecorationMax({required Object max}) => 'Você pode adicionar até ${max} decorações.';
	@override String get followedMessage => 'Mensagem exibida quando alguém segue você';
	@override String get followedMessageDescription => 'Você pode definir uma curta mensagem que será exibida aos usuários que seguirem você.';
	@override String get followedMessageDescriptionForLockedAccount => 'Se você aceita pedidos de seguidor manualmente, isso será exibido quando você aceitá-los.';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportPtPt extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Todas as notas';
	@override String get favoritedNotes => 'Notas nos favoritos';
	@override String get clips => 'Clipe';
	@override String get followingList => 'Seguindo';
	@override String get muteList => 'Silenciar';
	@override String get blockingList => 'Bloquear';
	@override String get userLists => 'Listas';
	@override String get excludeMutingUsers => 'Excluir usuários silenciados';
	@override String get excludeInactiveUsers => 'Excluir usuários inativos';
	@override String get withReplies => 'Incluir respostas de usuários importados na linha do tempo';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsPtPt extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get federation => 'União';
	@override String get apRequest => 'Solicitações';
	@override String get usersIncDec => 'Diferença no número de usuários';
	@override String get usersTotal => 'Número total de usuários';
	@override String get activeUsers => 'Usuários ativos';
	@override String get notesIncDec => 'Diferença no número de notas';
	@override String get localNotesIncDec => 'Diferença no número de notas locais';
	@override String get remoteNotesIncDec => 'Diferença no número de notas remotas';
	@override String get notesTotal => 'Número total de notas';
	@override String get filesIncDec => 'Diferença no número de arquivos';
	@override String get filesTotal => 'Número total de arquivos';
	@override String get storageUsageIncDec => 'Diferença no uso de armazenamento';
	@override String get storageUsageTotal => 'Uso total de armazenamento';
}

// Path: misskey.instanceCharts_
class _TranslationsMisskeyInstanceChartsPtPt extends TranslationsMisskeyInstanceChartsEnUs {
	_TranslationsMisskeyInstanceChartsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get requests => 'Solicitações';
	@override String get users => 'Diferença no número de usuários';
	@override String get usersTotal => 'Número cumulativo de usuários';
	@override String get notes => 'Diferença no número de notas';
	@override String get notesTotal => 'Número cumulativo de notas';
	@override String get ff => 'Diferença entre número de usuários seguidos/seguidores';
	@override String get ffTotal => 'Número cumulativo de usuários seguidos/seguidores';
	@override String get cacheSize => 'Diferença do tamanho do cache';
	@override String get cacheSizeTotal => 'Tamanho cumulativo do cache';
	@override String get files => 'Diferença no número de arquivos';
	@override String get filesTotal => 'Número cumulativo de arquivos';
}

// Path: misskey.timelines_
class _TranslationsMisskeyTimelinesPtPt extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get home => 'Início';
	@override String get local => 'Local';
	@override String get social => 'Social';
	@override String get global => 'Global';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayPtPt extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Criar  Play';
	@override String get edit => 'Editar Play';
	@override String get created => 'Play criado';
	@override String get updated => 'Play editado';
	@override String get deleted => 'Play foi excluído';
	@override String get pageSetting => 'Configurações do Play';
	@override String get editThisPage => 'Editar este Play';
	@override String get viewSource => 'Ver fonte';
	@override String get my => 'Meus Plays';
	@override String get liked => 'Plays curtidos';
	@override String get featured => 'Popular';
	@override String get title => 'Título';
	@override String get script => 'Script';
	@override String get summary => 'Descrição';
	@override String get visibilityDescription => 'Pôr em privado significa que ele não será visível no perfil, mas qualquer um com o URL poderá acessar';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesPtPt extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'Criar uma Página';
	@override String get editPage => 'Editar essa Página';
	@override String get readPage => 'Ver a fonte dessa Página';
	@override String get pageSetting => 'Configurações da página';
	@override String get nameAlreadyExists => 'O URL de Página especificado já existe';
	@override String get invalidNameTitle => 'O URL de Página especificado é inválido';
	@override String get invalidNameText => 'Confira se o título da Página não está vazio';
	@override String get editThisPage => 'Editar essa Página';
	@override String get viewSource => 'Ver código-fonte';
	@override String get viewPage => 'Visualizar as suas páginas';
	@override String get like => 'Curtir';
	@override String get unlike => 'Remover curtida';
	@override String get my => 'Minhas Páginas';
	@override String get liked => 'Páginas curtidas';
	@override String get featured => 'Populares';
	@override String get inspector => 'Inspetor';
	@override String get contents => 'Conteúdo';
	@override String get content => 'Bloco da Página';
	@override String get variables => 'Variáveis';
	@override String get title => 'Título';
	@override String get url => 'URL da Página';
	@override String get summary => 'Resumo da página';
	@override String get alignCenter => 'Centralizar elementos';
	@override String get hideTitleWhenPinned => 'Esconder título da Página quando fixado em perfil';
	@override String get font => 'Fonte';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
	@override String get eyeCatchingImageSet => 'Escolher miniatura';
	@override String get eyeCatchingImageRemove => 'Excluir miniatura';
	@override String get chooseBlock => 'Adicionar bloco';
	@override String get enterSectionTitle => 'Insira um título à seção';
	@override String get selectType => 'Selecionar um tipo';
	@override String get contentBlocks => 'Conteúdo';
	@override String get inputBlocks => 'Inserir';
	@override String get specialBlocks => 'Especial';
	@override late final _TranslationsMisskeyPagesBlocksPtPt blocks = _TranslationsMisskeyPagesBlocksPtPt._(_root);
}

// Path: misskey.relayStatus_
class _TranslationsMisskeyRelayStatusPtPt extends TranslationsMisskeyRelayStatusEnUs {
	_TranslationsMisskeyRelayStatusPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'Pendente';
	@override String get accepted => 'Aprovado';
	@override String get rejected => 'Recusado';
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationPtPt extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

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
	@override String get scheduledNotePosted => 'Nota agendada foi publicada';
	@override String get scheduledNotePostFailed => 'Não foi possível publicar nota agendada';
	@override String get newNote => 'Nova nota';
	@override String unreadAntennaNote({required Object name}) => 'Antena ${name}';
	@override String get roleAssigned => 'Cargo dado';
	@override String get chatRoomInvitationReceived => 'Você foi convidado para uma conversa';
	@override String get emptyPushNotificationMessage => 'As notificações de alerta foram atualizadas';
	@override String get achievementEarned => 'Conquista desbloqueada';
	@override String get testNotification => 'Notificação teste';
	@override String get checkNotificationBehavior => 'Verificar aparência da notificação';
	@override String get sendTestNotification => 'Enviar notificação de teste';
	@override String get notificationWillBeDisplayedLikeThis => 'Notificações se parecem com isso';
	@override String reactedBySomeUsers({required Object n}) => '${n} usuários reagiram';
	@override String likedBySomeUsers({required Object n}) => '${n} usuários gostaram da nota';
	@override String renotedBySomeUsers({required Object n}) => '${n} usuários repostaram a nota';
	@override String followedBySomeUsers({required Object n}) => '${n} usuários te seguiram';
	@override String get flushNotification => 'Limpar notificações';
	@override String exportOfXCompleted({required Object x}) => 'Exportação de ${x} foi concluída';
	@override String get login => 'Alguém entrou na conta';
	@override String get createToken => 'Uma token de acesso foi criada';
	@override String createTokenDescription({required Object text}) => 'Se você não faz ideia, exclua o token de acesso através de "${text}".';
	@override late final _TranslationsMisskeyNotificationTypesPtPt types_ = _TranslationsMisskeyNotificationTypesPtPt._(_root);
	@override late final _TranslationsMisskeyNotificationActionsPtPt actions_ = _TranslationsMisskeyNotificationActionsPtPt._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckPtPt extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Sempre mostrar a coluna principal';
	@override String get columnAlign => 'Alinhar colunas';
	@override String get columnGap => 'Margem entre colunas';
	@override String get deckMenuPosition => 'Posição do menu do deck';
	@override String get navbarPosition => 'Posição da barra de navegação';
	@override String get addColumn => 'Adicionar coluna';
	@override String get newNoteNotificationSettings => 'Opções de notificação para novas notas';
	@override String get configureColumn => 'Configurar coluna';
	@override String get swapLeft => 'Trocar de posição com a coluna à esquerda';
	@override String get swapRight => 'Trocar de posição com a coluna à direita';
	@override String get swapUp => 'Trocar de posição com a coluna acima';
	@override String get swapDown => 'Trocar de posição com a coluna abaixo';
	@override String get stackLeft => 'Empilhar na coluna à esquerda';
	@override String get popRight => 'Acoplar coluna à direita';
	@override String get profile => 'Perfil';
	@override String get newProfile => 'Novo perfil';
	@override String get deleteProfile => 'Remover perfil';
	@override String get introduction => 'Crie a interface perfeita para você arranjando as colunas livremente!';
	@override String get introduction2 => 'Clique no + à direita da tela para adicionar novas colunas quando quiser.';
	@override String get widgetsIntroduction => 'Por favor, selecione "Editar widgets" no menu em coluna e adicione um widget.';
	@override String get useSimpleUiForNonRootPages => 'Usar UI simples para páginas navegadas';
	@override String get usedAsMinWidthWhenFlexible => 'A largura mínima será usada para isso quando o "Ajuste automático da largura" estiver ativado';
	@override String get flexible => 'Ajuste automático da largura';
	@override String get enableSyncBetweenDevicesForProfiles => 'Habilitar sincronização das informações do perfil entre dispositivos';
	@override late final _TranslationsMisskeyDeckColumnsPtPt columns_ = _TranslationsMisskeyDeckColumnsPtPt._(_root);
}

// Path: misskey.dialog_
class _TranslationsMisskeyDialogPtPt extends TranslationsMisskeyDialogEnUs {
	_TranslationsMisskeyDialogPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => 'Você excedeu o limite de caracteres! Atualmente em ${current} de ${max}.';
	@override String charactersBelow({required Object current, required Object min}) => 'Você está abaixo do limite mínimo de caracteres! Atualmente em ${current} of ${min}.';
}

// Path: misskey.disabledTimeline_
class _TranslationsMisskeyDisabledTimelinePtPt extends TranslationsMisskeyDisabledTimelineEnUs {
	_TranslationsMisskeyDisabledTimelinePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Linha do tempo desabilitada';
	@override String get description => 'Você não pode acessar essa linha do tempo sob o seu cargo atual.';
}

// Path: misskey.drivecleaner_
class _TranslationsMisskeyDrivecleanerPtPt extends TranslationsMisskeyDrivecleanerEnUs {
	_TranslationsMisskeyDrivecleanerPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'Tamanho descendente';
	@override String get orderByCreatedAtAsc => 'Data ascendente';
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsPtPt extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Criar Webhook';
	@override String get modifyWebhook => 'Modificar Webhook';
	@override String get name => 'Nome';
	@override String get secret => 'Segredo';
	@override String get trigger => 'Gatilho';
	@override String get active => 'Ativado';
	@override late final _TranslationsMisskeyWebhookSettingsEventsPtPt events_ = _TranslationsMisskeyWebhookSettingsEventsPtPt._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsSystemEventsPtPt systemEvents_ = _TranslationsMisskeyWebhookSettingsSystemEventsPtPt._(_root);
	@override String get deleteConfirm => 'Você tem certeza de que deseja excluir o Webhook?';
	@override String get testRemarks => 'Clique no botão à direita do interruptor para enviar um Webhook de teste com dados fictícios.';
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportPtPt extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientPtPt notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientPtPt._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesPtPt extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get createRole => 'Cargo criado';
	@override String get deleteRole => 'Cargo excluído';
	@override String get updateRole => 'Cargo atualizado';
	@override String get assignRole => 'Cargo atribuído';
	@override String get unassignRole => 'Cargo removido';
	@override String get suspend => 'Suspender';
	@override String get unsuspend => 'Suspensão cancelada';
	@override String get addCustomEmoji => 'Emoji personalizado adicionado';
	@override String get updateCustomEmoji => 'Emoji personalizado atualizado';
	@override String get deleteCustomEmoji => 'Emoji personalizado removido';
	@override String get updateServerSettings => 'Configurações de servidor atualizadas';
	@override String get updateUserNote => 'Nota de moderação atualizada';
	@override String get deleteDriveFile => 'Arquivo excluído';
	@override String get deleteNote => 'Nota excluída';
	@override String get createGlobalAnnouncement => 'Anúncio global criado';
	@override String get createUserAnnouncement => 'Anúncio de usuário criado';
	@override String get updateGlobalAnnouncement => 'Anúncio global atualizado';
	@override String get updateUserAnnouncement => 'Anúncio de usuário atualizado';
	@override String get deleteGlobalAnnouncement => 'Anúncio global excluído';
	@override String get deleteUserAnnouncement => 'Anúncio de usuário excluído';
	@override String get resetPassword => 'Redefinir senha';
	@override String get suspendRemoteInstance => 'Instância remota suspensa';
	@override String get unsuspendRemoteInstance => 'Suspensão de instância remota removida';
	@override String get updateRemoteInstanceNote => 'Nota de moderação atualizada para instância remota.';
	@override String get markSensitiveDriveFile => 'Arquivo marcado como sensível';
	@override String get unmarkSensitiveDriveFile => 'Arquivo desmarcado como sensível';
	@override String get resolveAbuseReport => 'Relatório resolvido';
	@override String get forwardAbuseReport => 'Denúncia encaminhada';
	@override String get updateAbuseReportNote => 'Nota de moderação da denúncia atualizada';
	@override String get createInvitation => 'Convite gerado';
	@override String get createAd => 'Propaganda criada';
	@override String get deleteAd => 'Propaganda excluída';
	@override String get updateAd => 'Propaganda atualizada';
	@override String get createAvatarDecoration => 'Decoração de avatar criada';
	@override String get updateAvatarDecoration => 'Decoração de avatar atualizada';
	@override String get deleteAvatarDecoration => 'Decoração de avatar removida';
	@override String get unsetUserAvatar => 'Remover avatar de usuário';
	@override String get unsetUserBanner => 'Remover banner de usuário';
	@override String get createSystemWebhook => 'Criar SystemWebhook';
	@override String get updateSystemWebhook => 'Atualizar SystemWebhook';
	@override String get deleteSystemWebhook => 'Remover SystemWebhook';
	@override String get createAbuseReportNotificationRecipient => 'Criar um destinatário para relatórios de abuso';
	@override String get updateAbuseReportNotificationRecipient => 'Atualizar destinatários para relatórios de abuso';
	@override String get deleteAbuseReportNotificationRecipient => 'Remover um destinatário para relatórios de abuso';
	@override String get deleteAccount => 'Remover conta';
	@override String get deletePage => 'Remover página';
	@override String get deleteFlash => 'Remover Play';
	@override String get deleteGalleryPost => 'Remover a publicação da galeria';
	@override String get deleteChatRoom => 'Sala de Conversas Excluída';
	@override String get updateProxyAccountDescription => 'Atualizar descrição da conta de proxy';
}

// Path: misskey.fileViewer_
class _TranslationsMisskeyFileViewerPtPt extends TranslationsMisskeyFileViewerEnUs {
	_TranslationsMisskeyFileViewerPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Detalhes do arquivo';
	@override String get type => 'Tipo de arquivo';
	@override String get size => 'Tamanho do arquivo';
	@override String get url => 'URL';
	@override String get uploadedAt => 'Adicionado em';
	@override String get attachedNotes => 'Notas anexadas';
	@override String get usage => 'Usado';
	@override String get thisPageCanBeSeenFromTheAuthor => 'Essa página só pode ser vista pelo usuário que enviou esse arquivo.';
}

// Path: misskey.externalResourceInstaller_
class _TranslationsMisskeyExternalResourceInstallerPtPt extends TranslationsMisskeyExternalResourceInstallerEnUs {
	_TranslationsMisskeyExternalResourceInstallerPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Instalar de site externo';
	@override String get checkVendorBeforeInstall => 'Tenha certeza de que o distribuidor desse recurso é confiável antes da instalação.';
	@override late final _TranslationsMisskeyExternalResourceInstallerPluginPtPt plugin_ = _TranslationsMisskeyExternalResourceInstallerPluginPtPt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerThemePtPt theme_ = _TranslationsMisskeyExternalResourceInstallerThemePtPt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerMetaPtPt meta_ = _TranslationsMisskeyExternalResourceInstallerMetaPtPt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerVendorInfoPtPt vendorInfo_ = _TranslationsMisskeyExternalResourceInstallerVendorInfoPtPt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPtPt errors_ = _TranslationsMisskeyExternalResourceInstallerErrorsPtPt._(_root);
}

// Path: misskey.dataSaver_
class _TranslationsMisskeyDataSaverPtPt extends TranslationsMisskeyDataSaverEnUs {
	_TranslationsMisskeyDataSaverPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyDataSaverMediaPtPt media_ = _TranslationsMisskeyDataSaverMediaPtPt._(_root);
	@override late final _TranslationsMisskeyDataSaverAvatarPtPt avatar_ = _TranslationsMisskeyDataSaverAvatarPtPt._(_root);
	@override late final _TranslationsMisskeyDataSaverUrlPreviewThumbnailPtPt urlPreviewThumbnail_ = _TranslationsMisskeyDataSaverUrlPreviewThumbnailPtPt._(_root);
	@override late final _TranslationsMisskeyDataSaverDisableUrlPreviewPtPt disableUrlPreview_ = _TranslationsMisskeyDataSaverDisableUrlPreviewPtPt._(_root);
	@override late final _TranslationsMisskeyDataSaverCodePtPt code_ = _TranslationsMisskeyDataSaverCodePtPt._(_root);
}

// Path: misskey.hemisphere_
class _TranslationsMisskeyHemispherePtPt extends TranslationsMisskeyHemisphereEnUs {
	_TranslationsMisskeyHemispherePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get N => 'Hemisfério Norte';
	@override String get S => 'Hemisfério Sul';
	@override String get caption => 'Utilizado em algumas configurações de aplicativo para determinar a estação do ano.';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiPtPt extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get reversi => 'Reversi';
	@override String get gameSettings => 'Configurações de jogo';
	@override String get chooseBoard => 'Escolha um tabuleiro';
	@override String get blackOrWhite => 'Preto/Branco';
	@override String blackIs({required Object name}) => '${name} é as peças Pretas';
	@override String get rules => 'Regras';
	@override String get thisGameIsStartedSoon => 'O jogo começará em breve';
	@override String get waitingForOther => 'Esperando o turno do oponente';
	@override String get waitingForMe => 'Esperando o seu turno';
	@override String get waitingBoth => 'Prepare-se';
	@override String get ready => 'Pronto';
	@override String get cancelReady => 'Não pronto';
	@override String get opponentTurn => 'Turno do oponente';
	@override String get myTurn => 'Seu turno';
	@override String turnOf({required Object name}) => 'É o turno de ${name}';
	@override String pastTurnOf({required Object name}) => 'Turno de ${name}';
	@override String get surrender => 'Desistir';
	@override String get surrendered => 'Desistiu';
	@override String get timeout => 'Fim do tempo';
	@override String get drawn => 'Empate';
	@override String won({required Object name}) => '${name} venceu';
	@override String get black => 'Preto';
	@override String get white => 'Branco';
	@override String get total => 'Total';
	@override String turnCount({required Object count}) => 'Turno ${count}';
	@override String get myGames => 'Meus jogos';
	@override String get allGames => 'Todos os jogos';
	@override String get ended => 'Terminado';
	@override String get playing => 'Atualmente jogando';
	@override String get isLlotheo => 'Aquele com menos pedras vence (Llotheo)';
	@override String get loopedMap => 'Mapa em ‘loop’';
	@override String get canPutEverywhere => 'É possível pôr em qualquer lugar';
	@override String get timeLimitForEachTurn => 'Tempo limite por turno';
	@override String get freeMatch => 'Partida Livre';
	@override String get lookingForPlayer => 'À procura de adversários...';
	@override String get gameCanceled => 'A partida foi cancelada.';
	@override String get shareToTlTheGameWhenStart => 'Compartilhar jogo na linha do tempo ao iniciar';
	@override String get iStartedAGame => 'O jogo começou! #MisskeyReversi';
	@override String get opponentHasSettingsChanged => 'O oponente alterou as configurações dele';
	@override String get allowIrregularRules => 'Regras irregulares (completamente livre)';
	@override String get disallowIrregularRules => 'Sem regras irregulares';
	@override String get showBoardLabels => 'Exibir numeração de linha e coluna no tabuleiro';
	@override String get useAvatarAsStone => 'Utilizar avatares de usuário como as pedras';
}

// Path: misskey.offlineScreen_
class _TranslationsMisskeyOfflineScreenPtPt extends TranslationsMisskeyOfflineScreenEnUs {
	_TranslationsMisskeyOfflineScreenPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Offline - não foi possível conectar ao servidor';
	@override String get header => 'Não foi possível conectar ao servidor';
}

// Path: misskey.urlPreviewSetting_
class _TranslationsMisskeyUrlPreviewSettingPtPt extends TranslationsMisskeyUrlPreviewSettingEnUs {
	_TranslationsMisskeyUrlPreviewSettingPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Configurações da prévia de URL';
	@override String get enable => 'Habilitar prévia de URL';
	@override String get allowRedirect => 'Permitir redirecionamentos de URL em prévias.';
	@override String get allowRedirectDescription => 'Se um URL tem um redirecionamento, você pode habilitar essa função para segui-lo e exibir a prévia do conteúdo redirecionado. Desabilitar isso irá economizar recursos, mas o conteúdo não será exibido.';
	@override String get timeout => 'Tempo máximo para obter a prévia (ms)';
	@override String get timeoutDescription => 'Se demorar mais que esse valor para obter uma prévia, ela não será gerada.';
	@override String get maximumContentLength => 'Content-Length máximo (em bytes)';
	@override String get maximumContentLengthDescription => 'Se o Content-Length for maior que esse valor, a prévia não será gerada.';
	@override String get requireContentLength => 'Gerar previu apenas se houver cabeçalho Content-Length disponível na solicitação';
	@override String get requireContentLengthDescription => 'Se o outro servidor não retornar um cabeçalho Content-Length, a prévia não será gerada.';
	@override String get userAgent => 'User-Agent';
	@override String get userAgentDescription => 'Define o User-Agent a ser usado ao gerar prévias. Se for deixado em branco, será usado o User-Agent padrão.';
	@override String get summaryProxy => 'Endpoints do Proxy que geram prévias';
	@override String get summaryProxyDescription => 'Fora do Misskey, gerar prévias usando o Sumally Proxy.';
	@override String get summaryProxyDescription2 => 'Os parâmetros a seguir são vinculados ao proxy como um \'query string\'. Se o proxy não os suportar, os valores serão ignorados.';
}

// Path: misskey.mediaControls_
class _TranslationsMisskeyMediaControlsPtPt extends TranslationsMisskeyMediaControlsEnUs {
	_TranslationsMisskeyMediaControlsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get pip => 'Picture-in-Picture';
	@override String get playbackRate => 'Velocidade de Reprodução';
	@override String get loop => 'Reprodução em Loop';
}

// Path: misskey.contextMenu_
class _TranslationsMisskeyContextMenuPtPt extends TranslationsMisskeyContextMenuEnUs {
	_TranslationsMisskeyContextMenuPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Menu de contexto';
	@override String get app => 'Aplicativo';
	@override String get appWithShift => 'Aplicativo com a tecla shift';
	@override String get native => 'Nativo';
}

// Path: misskey.gridComponent_
class _TranslationsMisskeyGridComponentPtPt extends TranslationsMisskeyGridComponentEnUs {
	_TranslationsMisskeyGridComponentPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyGridComponentErrorPtPt error_ = _TranslationsMisskeyGridComponentErrorPtPt._(_root);
}

// Path: misskey.roleSelectDialog_
class _TranslationsMisskeyRoleSelectDialogPtPt extends TranslationsMisskeyRoleSelectDialogEnUs {
	_TranslationsMisskeyRoleSelectDialogPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get notSelected => 'Não selecionado';
}

// Path: misskey.customEmojisManager_
class _TranslationsMisskeyCustomEmojisManagerPtPt extends TranslationsMisskeyCustomEmojisManagerEnUs {
	_TranslationsMisskeyCustomEmojisManagerPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCustomEmojisManagerGridCommonPtPt gridCommon_ = _TranslationsMisskeyCustomEmojisManagerGridCommonPtPt._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLogsPtPt logs_ = _TranslationsMisskeyCustomEmojisManagerLogsPtPt._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerRemotePtPt remote_ = _TranslationsMisskeyCustomEmojisManagerRemotePtPt._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalPtPt local_ = _TranslationsMisskeyCustomEmojisManagerLocalPtPt._(_root);
}

// Path: misskey.embedCodeGen_
class _TranslationsMisskeyEmbedCodeGenPtPt extends TranslationsMisskeyEmbedCodeGenEnUs {
	_TranslationsMisskeyEmbedCodeGenPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Personalizar código do embed';
	@override String get header => 'Exibir cabeçalho';
	@override String get autoload => 'Carregar mais automaticamente (obsoleto)';
	@override String get maxHeight => 'Altura máxima';
	@override String get maxHeightDescription => 'Colocar em 0 desabilita a altura máxima. Especifique um valor para prevenir uma expansão vertical contínua.';
	@override String get maxHeightWarn => 'O limite de altura máxima está desabilitado (0). Se isso não for intencional, insira um valor para a altura máxima.';
	@override String get previewIsNotActual => 'A exibição difere do embed original porque ela excede o tamanho da tela de prévia.';
	@override String get rounded => 'Tornar arredondado';
	@override String get border => 'Adicionar uma borda ao quadro externo';
	@override String get applyToPreview => 'Aplicar para a prévia';
	@override String get generateCode => 'Gerar código de embed';
	@override String get codeGenerated => 'O código foi gerado';
	@override String get codeGeneratedDescription => 'Coloque o código no seu website para incorporar o conteúdo.';
}

// Path: misskey.selfXssPrevention_
class _TranslationsMisskeySelfXssPreventionPtPt extends TranslationsMisskeySelfXssPreventionEnUs {
	_TranslationsMisskeySelfXssPreventionPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get warning => 'AVISO';
	@override String get title => '"Cole algo nessa tela" é uma fraude';
	@override String get description1 => 'Se você colar algo aqui, um usuário malicioso pode sabotar a sua conta ou roubar informações pessoais.';
	@override String get description2 => 'Se você não entender exatamente o que está colando, %cpare agora e feche essa janela.';
	@override String description3({required Object link}) => 'Para mais informação, clique no link. ${link}';
}

// Path: misskey.followRequest_
class _TranslationsMisskeyFollowRequestPtPt extends TranslationsMisskeyFollowRequestEnUs {
	_TranslationsMisskeyFollowRequestPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get recieved => 'Aplicação recebida';
	@override String get sent => 'Aplicação enviada';
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsPtPt extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedPtPt federationNotAllowed_ = _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedPtPt._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsUriInvalidPtPt uriInvalid_ = _TranslationsMisskeyRemoteLookupErrorsUriInvalidPtPt._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsRequestFailedPtPt requestFailed_ = _TranslationsMisskeyRemoteLookupErrorsRequestFailedPtPt._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsResponseInvalidPtPt responseInvalid_ = _TranslationsMisskeyRemoteLookupErrorsResponseInvalidPtPt._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectPtPt noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectPtPt._(_root);
}

// Path: misskey.captcha_
class _TranslationsMisskeyCaptchaPtPt extends TranslationsMisskeyCaptchaEnUs {
	_TranslationsMisskeyCaptchaPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get verify => 'Por favor, verifique o CAPTCHA';
	@override String get testSiteKeyMessage => 'Você pode conferir a prévia inserindo valores de teste para o site e chaves secretas.\nVeja a página seguinte para mais detalhes.';
	@override late final _TranslationsMisskeyCaptchaErrorPtPt error_ = _TranslationsMisskeyCaptchaErrorPtPt._(_root);
}

// Path: misskey.bootErrors_
class _TranslationsMisskeyBootErrorsPtPt extends TranslationsMisskeyBootErrorsEnUs {
	_TranslationsMisskeyBootErrorsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Falha ao carregar';
	@override String get serverError => 'Se o problema persistir após esperar um momento e recarregar, contate a administração da instância com o seguinte ID de erro.';
	@override String get solution => 'O seguinte pode resolver o problema.';
	@override String get solution1 => 'Atualize seu navegador e sistema operacional para a última versão.';
	@override String get solution2 => 'Desative o bloqueador de anúncios';
	@override String get solution3 => 'Limpe o cache do navegador';
	@override String get solution4 => 'Defina dom.webaudio.enabled como verdadeiro no Navegador Tor';
	@override String get otherOption => 'Outras opções';
	@override String get otherOption1 => 'Excluir ajustes de cliente e cache';
	@override String get otherOption2 => 'Iniciar o cliente simples';
	@override String get otherOption3 => 'Iniciar ferramenta de reparo';
	@override String get otherOption4 => 'Abrir Misskey no modo seguro';
}

// Path: misskey.search_
class _TranslationsMisskeySearchPtPt extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Todos';
	@override String get searchScopeLocal => 'Local';
	@override String get searchScopeServer => 'Servidor específico';
	@override String get searchScopeUser => 'Usuário específico';
	@override String get pleaseEnterServerHost => 'Insira o endereço do servidor';
	@override String get pleaseSelectUser => 'Selecione um usuário';
	@override String get serverHostPlaceholder => 'Exemplo: misskey.example.com';
}

// Path: misskey.serverSetupWizard_
class _TranslationsMisskeyServerSetupWizardPtPt extends TranslationsMisskeyServerSetupWizardEnUs {
	_TranslationsMisskeyServerSetupWizardPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get installCompleted => 'Instalação do Misskey concluída!';
	@override String get firstCreateAccount => 'Para iniciar, crie uma conta de administrador.';
	@override String get accountCreated => 'Conta de administrador foi criada!';
	@override String get serverSetting => 'Configurações de Servidor';
	@override String get youCanEasilyConfigureOptimalServerSettingsWithThisWizard => 'O assistente facilita a configuração do servidor.';
	@override String get settingsYouMakeHereCanBeChangedLater => 'Configurações alteradas pelo assistente podem ser ajustadas posteriormente.';
	@override String get howWillYouUseMisskey => 'Como você usará o Misskey?';
	@override late final _TranslationsMisskeyServerSetupWizardUsePtPt use_ = _TranslationsMisskeyServerSetupWizardUsePtPt._(_root);
	@override String get openServerAdvice => 'Aceitar um número alto de pessoas desconhecidas pode envolve um risco. Recomendamos que você opere com um sistema de moderação confiável para resolver quaisquer problemas.';
	@override String get openServerAntiSpamAdvice => 'Para prevenir que o seu servidor se torne alvo de spam, é essencial cuidar da segurança habilitando recursos antibot como o reCAPTCHA.';
	@override String get howManyUsersDoYouExpect => 'Quantos usuários você espera?';
	@override late final _TranslationsMisskeyServerSetupWizardScalePtPt scale_ = _TranslationsMisskeyServerSetupWizardScalePtPt._(_root);
	@override String get largeScaleServerAdvice => 'Servidores de larga escala podem precisar de conhecimento avançado de infraestrutura, como balanceamento de carga e replicação de banco de dados.';
	@override String get doYouConnectToFediverse => 'Você deseja conectar-se com o Fediverso?';
	@override String get doYouConnectToFediverse_description1 => 'Quando conectado com uma rede distribuída de servidores (Fediverso), o conteúdo pode ser trocado com outros servidores.';
	@override String get doYouConnectToFediverse_description2 => 'Conectar com o Fediverso também é chamado de "federação"';
	@override String get youCanConfigureMoreFederationSettingsLater => 'Configurações adicionais como especificar servidores para conectar-se com podem ser feitas posteriormente';
	@override String get remoteContentsCleaning => 'Limpeza automática de conteúdos recebidos';
	@override String get remoteContentsCleaning_description => 'A federação pode resultar em uma entrada contínua de conteúdo. Habilitar a limpeza automática removerá conteúdo obsoleto e não referenciado do servidor para economizar armazenamento.';
	@override String get adminInfo => 'Informações da administração';
	@override String get adminInfo_description => 'Define as informações do administrador usadas para receber consultas.';
	@override String get adminInfo_mustBeFilled => 'Deve ser preenchido se o servidor é público ou se a federação está ativa.';
	@override String get followingSettingsAreRecommended => 'As configurações a seguir são recomendadas';
	@override String get applyTheseSettings => 'Aplicar essas configurações';
	@override String get skipSettings => 'Pular configuração';
	@override String get settingsCompleted => 'Instalação concluída!';
	@override String get settingsCompleted_description => 'Obrigado pelo seu tempo. Agora que tudo está pronto, você pode começar a utilizar o servidor.';
	@override String get settingsCompleted_description2 => 'As configurações do servidor podem ser alteradas no "Painel de Controle"';
	@override String get donationRequest => 'Solicitação de Doação';
	@override late final _TranslationsMisskeyServerSetupWizardDonationRequestPtPt donationRequest_ = _TranslationsMisskeyServerSetupWizardDonationRequestPtPt._(_root);
}

// Path: misskey.uploader_
class _TranslationsMisskeyUploaderPtPt extends TranslationsMisskeyUploaderEnUs {
	_TranslationsMisskeyUploaderPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get editImage => 'Editar Imagem';
	@override String compressedToX({required Object x}) => 'Comprimido para ${x}';
	@override String savedXPercent({required Object x}) => 'Salvando ${x}%';
	@override String get abortConfirm => 'Alguns arquivos não foram enviados, deseja abortar?';
	@override String get doneConfirm => 'Alguns arquivos não foram enviados, deseja continuar mesmo assim?';
	@override String maxFileSizeIsX({required Object x}) => 'O tamanho máximo de arquivos enviados é ${x}';
	@override String get allowedTypes => 'Tipos de arquivo enviáveis';
	@override String get tip => 'O arquivo não foi enviado. Então, esse diálogo permite que você confirme, renomeie, comprima e recorte o arquivo antes de enviar. Quando estiver pronto, você pode enviar apertando  o botão "Enviar".';
}

// Path: misskey.clientPerformanceIssueTip_
class _TranslationsMisskeyClientPerformanceIssueTipPtPt extends TranslationsMisskeyClientPerformanceIssueTipEnUs {
	_TranslationsMisskeyClientPerformanceIssueTipPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dicas de desempenho';
	@override String get makeSureDisabledAdBlocker => 'Desative o seu bloqueador de anúncios';
	@override String get makeSureDisabledAdBlocker_description => 'Bloqueadores de anúncios podem afetar o desempenho. Certifique-se que eles não estão habilitados no seu sistema ou nos recursos/extensões do navegador. ';
	@override String get makeSureDisabledCustomCss => 'Desabilite CSS personalizado';
	@override String get makeSureDisabledCustomCss_description => 'Substituir o estilo da página pode afetar o desempenho. Certifique-se que o CSS personalizado ou extensões que modifiquem o estilo da página estejam desabilitados.';
	@override String get makeSureDisabledAddons => 'Desabilite extensões';
	@override String get makeSureDisabledAddons_description => 'Algumas extensões podem afetar comportamentos do cliente e afetar o desempenho. Por favor, desative as extensões do seu navegador e veja se isso melhora a situação.';
}

// Path: misskey.clip_
class _TranslationsMisskeyClipPtPt extends TranslationsMisskeyClipEnUs {
	_TranslationsMisskeyClipPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Clip é uma função que permite organização das suas notas.';
}

// Path: misskey.userLists_
class _TranslationsMisskeyUserListsPtPt extends TranslationsMisskeyUserListsEnUs {
	_TranslationsMisskeyUserListsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Listas podem conter qualquer usuário que você especificar em sua criação. A lista criada aparece como uma linha do tempo exibindo usuários selecionados.';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorPtPt extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Uma marca d\'água, como informação de autoria, pode ser adicionada à imagem.';
	@override String get quitWithoutSaveConfirm => 'Descartar mudanças?';
	@override String get driveFileTypeWarn => 'Esse arquivo não é compatível';
	@override String get driveFileTypeWarnDescription => 'Escolha um arquivo de imagem';
	@override String get title => 'Editar marca d\'água';
	@override String get cover => 'Cobrir tudo';
	@override String get repeat => 'Espalhar pelo conteúdo';
	@override String get opacity => 'Opacidade';
	@override String get scale => 'Tamanho';
	@override String get text => 'Texto';
	@override String get qr => 'Código QR';
	@override String get position => 'Posição';
	@override String get margin => 'Margem';
	@override String get type => 'Tipo';
	@override String get image => 'imagem';
	@override String get advanced => 'Avançado';
	@override String get angle => 'Ângulo';
	@override String get stripe => 'Listras';
	@override String get stripeWidth => 'Largura da linha';
	@override String get stripeFrequency => 'Número de linhas';
	@override String get polkadot => 'Bolinhas';
	@override String get checker => 'Xadrez';
	@override String get polkadotMainDotOpacity => 'Opacidade da bolinha principal';
	@override String get polkadotMainDotRadius => 'Raio da bolinha principal';
	@override String get polkadotSubDotOpacity => 'Opacidade da bolinha secundária';
	@override String get polkadotSubDotRadius => 'Raio das bolinhas adicionais';
	@override String get polkadotSubDotDivisions => 'Número de bolinhas adicionais';
	@override String get leaveBlankToAccountUrl => 'Deixe em branco para utilizar URL da conta';
}

// Path: misskey.imageEffector_
class _TranslationsMisskeyImageEffectorPtPt extends TranslationsMisskeyImageEffectorEnUs {
	_TranslationsMisskeyImageEffectorPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Efeitos';
	@override String get addEffect => 'Adicionar efeitos';
	@override String get discardChangesConfirm => 'Tem certeza que deseja sair? Há mudanças não salvas.';
	@override late final _TranslationsMisskeyImageEffectorFxsPtPt fxs_ = _TranslationsMisskeyImageEffectorFxsPtPt._(_root);
	@override late final _TranslationsMisskeyImageEffectorFxPropsPtPt fxProps_ = _TranslationsMisskeyImageEffectorFxPropsPtPt._(_root);
}

// Path: misskey.drafts_
class _TranslationsMisskeyDraftsPtPt extends TranslationsMisskeyDraftsEnUs {
	_TranslationsMisskeyDraftsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get select => 'Selecionar Rascunho';
	@override String get cannotCreateDraftAnymore => 'O número máximo de rascunhos foi excedido.';
	@override String get cannotCreateDraft => 'Você não pode criar um rascunho com esse conteúdo.';
	@override String get delete => 'Excluir Rascunho';
	@override String get deleteAreYouSure => 'Excluir rascunho?';
	@override String get noDrafts => 'Sem rascunhos';
	@override String replyTo({required Object user}) => 'Resposta a ${user}';
	@override String quoteOf({required Object user}) => 'Citação à nota de ${user}';
	@override String postTo({required Object channel}) => 'Publicando em ${channel}';
	@override String get saveToDraft => 'Salvar como Rascunho';
	@override String get restoreFromDraft => 'Restaurar de Rascunho';
	@override String get restore => 'Redefinir';
	@override String get listDrafts => 'Lista de Rascunhos';
	@override String get schedule => 'Agendar nota';
	@override String get listScheduledNotes => 'Lista de notas agendadas';
	@override String get cancelSchedule => 'Cancelar agendamento';
}

// Path: misskey.qr_
class _TranslationsMisskeyQrPtPt extends TranslationsMisskeyQrEnUs {
	_TranslationsMisskeyQrPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get showTabTitle => 'Visualizar';
	@override String get readTabTitle => 'Escanear';
	@override String shareTitle({required Object name, required Object acct}) => '${name} ${acct}';
	@override String get shareText => 'Siga-me no Fediverso!';
	@override String get chooseCamera => 'Escolher câmera';
	@override String get cannotToggleFlash => 'Não foi possível ligar a lanterna';
	@override String get turnOnFlash => 'Ligar a lanterna';
	@override String get turnOffFlash => 'Desligar a lanterna';
	@override String get startQr => 'Retornar ao leitor de códigos QR';
	@override String get stopQr => 'Deixar o leitor de códigos QR';
	@override String get noQrCodeFound => 'Nenhum código QR encontrado';
	@override String get scanFile => 'Escanear imagem de dispositivo';
	@override String get raw => 'Texto';
	@override String get mfm => 'MFM';
}

// Path: misskey.imageEditing_.vars_
class _TranslationsMisskeyImageEditingVarsPtPt extends TranslationsMisskeyImageEditingVarsEnUs {
	_TranslationsMisskeyImageEditingVarsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get filename => 'Nome do Ficheiro';
}

// Path: misskey.compression_.quality_
class _TranslationsMisskeyCompressionQualityPtPt extends TranslationsMisskeyCompressionQualityEnUs {
	_TranslationsMisskeyCompressionQualityPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get high => 'Qualidade alta';
	@override String get medium => 'Qualidade média';
	@override String get low => 'Qualidade baixa';
}

// Path: misskey.compression_.size_
class _TranslationsMisskeyCompressionSizePtPt extends TranslationsMisskeyCompressionSizeEnUs {
	_TranslationsMisskeyCompressionSizePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get large => 'Tamanho grande';
	@override String get medium => 'Tamanho médio';
	@override String get small => 'Tamanho pequeno';
}

// Path: misskey.chat_.chatAllowedUsers_
class _TranslationsMisskeyChatChatAllowedUsersPtPt extends TranslationsMisskeyChatChatAllowedUsersEnUs {
	_TranslationsMisskeyChatChatAllowedUsersPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get everyone => 'Todos';
	@override String get followers => 'Seus seguidores';
	@override String get following => 'Quem você segue';
	@override String get mutual => 'Seguidores mútuos';
	@override String get none => 'Ninguém';
}

// Path: misskey.settings_.chat_
class _TranslationsMisskeySettingsChatPtPt extends TranslationsMisskeySettingsChatEnUs {
	_TranslationsMisskeySettingsChatPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get showSenderName => 'Exibir nome de usuário do remetente';
	@override String get sendOnEnter => 'Pressionar Enter para enviar';
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypePtPt extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get none => 'Publicando';
	@override String get manuallySuspended => 'Suspenso manualmente';
	@override String get goneSuspended => 'Servidor foi suspenso devido ao seu apagamento';
	@override String get autoSuspendedForNotResponding => 'Servidor foi suspenso por não responder';
	@override String get softwareSuspended => 'Suspenso, pois esse software não está recebendo conteúdo';
}

// Path: misskey.bubbleGame_.score_
class _TranslationsMisskeyBubbleGameScorePtPt extends TranslationsMisskeyBubbleGameScoreEnUs {
	_TranslationsMisskeyBubbleGameScorePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get score => 'Pontuação';
	@override String get scoreYen => 'Dinheiro recebido';
	@override String get highScore => 'Melhor pontuação';
	@override String get maxChain => 'Número máximo de encadeamentos';
	@override String yen({required Object yen}) => '${yen} Yen';
	@override String estimatedQty({required Object qty}) => '${qty} Peças';
	@override String scoreSweets({required Object onigiriQtyWithUnit}) => '${onigiriQtyWithUnit} Onigiri';
}

// Path: misskey.bubbleGame_.howToPlay_
class _TranslationsMisskeyBubbleGameHowToPlayPtPt extends TranslationsMisskeyBubbleGameHowToPlayEnUs {
	_TranslationsMisskeyBubbleGameHowToPlayPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get section1 => 'Ajuste a posição e solte o objeto na caixa.';
	@override String get section2 => 'Quando dois objetos do mesmo tipo tocam-se, eles tornam-se outro objeto e você ganha pontos.';
	@override String get section3 => 'O jogo acaba quando objetos transbordam da caixa. Busque uma pontuação alta ao fundir objetos enquanto evita transbordar a caixa.';
}

// Path: misskey.initialTutorial_.landing_
class _TranslationsMisskeyInitialTutorialLandingPtPt extends TranslationsMisskeyInitialTutorialLandingEnUs {
	_TranslationsMisskeyInitialTutorialLandingPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bem-vindo ao Tutorial!';
	@override String get description => 'Aqui, você pode aprender o básico de como usar o Misskey e as suas funções.';
}

// Path: misskey.initialTutorial_.note_
class _TranslationsMisskeyInitialTutorialNotePtPt extends TranslationsMisskeyInitialTutorialNoteEnUs {
	_TranslationsMisskeyInitialTutorialNotePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'O que é uma Nota?';
	@override String get description => 'Publicações no Misskey chamam-se \'Notas\'. Notas são organizadas cronologicamente na linha do tempo e atualizam em tempo real.';
	@override String get reply => 'Clique nesse botão para responder a uma mensagem. Também é possível responder respostas, continuando a conversa como uma "thread".';
	@override String get renote => 'Você pode compartilhar essa nota na sua linha do tempo. Você também pode citá-la com os seus comentários.';
	@override String get reaction => 'Você pode adicionar reações à nota. Mais detalhes serão explicados na próxima página.';
	@override String get menu => 'Você pode ver detalhes da nota, copiar links e realizar outras ações.';
}

// Path: misskey.initialTutorial_.reaction_
class _TranslationsMisskeyInitialTutorialReactionPtPt extends TranslationsMisskeyInitialTutorialReactionEnUs {
	_TranslationsMisskeyInitialTutorialReactionPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'O que são Reações?';
	@override String get description => 'É possível reagir às notas com diversos emojis. Reações permitem que você expresse sutilezas que não são possíveis apenas com uma curtida.';
	@override String get letsTryReacting => 'Reações podem ser adicionadas clicando no botão "+". Tente reagir à nota de exemplo.';
	@override String get reactToContinue => 'Adicione uma reação para continuar.';
	@override String get reactNotification => 'Você receberá notificações em tempo real quando alguém reagir à sua nota.';
	@override String get reactDone => 'Você pode desfazer uma reação ao selecionar o botão "-".';
}

// Path: misskey.initialTutorial_.timeline_
class _TranslationsMisskeyInitialTutorialTimelinePtPt extends TranslationsMisskeyInitialTutorialTimelineEnUs {
	_TranslationsMisskeyInitialTutorialTimelinePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'O Conceito das Linhas do Tempo';
	@override String get description1 => 'Misskey providencia diversas linhas do tempo baseadas na sua utilidade (algumas podem não estar disponíveis a partir das configurações da instância).';
	@override String get home => 'Você pode ver as notas das contas seguidas. ';
	@override String get local => 'Você pode ver notas de todos os usuários dessa instância.';
	@override String get social => 'Notas da linha do tempo Início e Local serão exibidas.';
	@override String get global => 'Você pode ver notas de todos os servidores conectados.';
	@override String get description2 => 'Você pode alterar dentre as linhas do tempo no todo da tela a qualquer momento.';
	@override String description3({required Object link}) => 'Adicionalmente, há "listas" e "canais". Para mais informações, acesse ${link}.';
}

// Path: misskey.initialTutorial_.postNote_
class _TranslationsMisskeyInitialTutorialPostNotePtPt extends TranslationsMisskeyInitialTutorialPostNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNotePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opções de Postagem de Nota';
	@override String get description1 => 'Ao postar uma nota no Misskey, diversas opções estão disponíveis. A ficha de publicação parece com isto: ';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteVisibilityPtPt visibility_ = _TranslationsMisskeyInitialTutorialPostNoteVisibilityPtPt._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwPtPt cw_ = _TranslationsMisskeyInitialTutorialPostNoteCwPtPt._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitivePtPt extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitivePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Como Marcar Anexos como Sensíveis?';
	@override String get description => 'Para anexos cujo conteúdo é considerado sensível pelas diretrizes do servidor ou quando pretende-se esconder o seu conteúdo, adicione o sinal "sensível".';
	@override String get tryThisFile => 'Tente marcar a imagem anexada como sensível!';
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNotePtPt exampleNote_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNotePtPt._(_root);
	@override String get method => 'Para marcar um anexo como sensível, clique na sua miniatura, abra o menu e clique "Marcar como sensível".';
	@override String get sensitiveSucceeded => 'Ao anexar arquivos, por favor atribua uma sensibilidade coerente com as diretrizes da instância.';
	@override String get doItToContinue => 'Marque o anexo como sensível para prosseguir.';
}

// Path: misskey.initialTutorial_.done_
class _TranslationsMisskeyInitialTutorialDonePtPt extends TranslationsMisskeyInitialTutorialDoneEnUs {
	_TranslationsMisskeyInitialTutorialDonePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Você completou o tutorial! 🎉';
	@override String description({required Object link}) => 'As funções apresentadas aqui são apenas uma pequena parte. Para um conhecimento mais detalhado do uso do Misskey, acesse ${link}.';
}

// Path: misskey.serverSettings_.userGeneratedContentsVisibilityForVisitor_
class _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorPtPt extends TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorEnUs {
	_TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get all => 'Tudo é público';
	@override String get localOnly => 'Conteúdo local é publicado, conteúdo remoto é privado';
	@override String get none => 'Tudo é privado';
}

// Path: misskey.achievements_.types_
class _TranslationsMisskeyAchievementsTypesPtPt extends TranslationsMisskeyAchievementsTypesEnUs {
	_TranslationsMisskeyAchievementsTypesPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesNotes1PtPt notes1_ = _TranslationsMisskeyAchievementsTypesNotes1PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10PtPt notes10_ = _TranslationsMisskeyAchievementsTypesNotes10PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100PtPt notes100_ = _TranslationsMisskeyAchievementsTypesNotes100PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes500PtPt notes500_ = _TranslationsMisskeyAchievementsTypesNotes500PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes1000PtPt notes1000_ = _TranslationsMisskeyAchievementsTypesNotes1000PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes5000PtPt notes5000_ = _TranslationsMisskeyAchievementsTypesNotes5000PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10000PtPt notes10000_ = _TranslationsMisskeyAchievementsTypesNotes10000PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes20000PtPt notes20000_ = _TranslationsMisskeyAchievementsTypesNotes20000PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes30000PtPt notes30000_ = _TranslationsMisskeyAchievementsTypesNotes30000PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes40000PtPt notes40000_ = _TranslationsMisskeyAchievementsTypesNotes40000PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes50000PtPt notes50000_ = _TranslationsMisskeyAchievementsTypesNotes50000PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes60000PtPt notes60000_ = _TranslationsMisskeyAchievementsTypesNotes60000PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes70000PtPt notes70000_ = _TranslationsMisskeyAchievementsTypesNotes70000PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes80000PtPt notes80000_ = _TranslationsMisskeyAchievementsTypesNotes80000PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes90000PtPt notes90000_ = _TranslationsMisskeyAchievementsTypesNotes90000PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100000PtPt notes100000_ = _TranslationsMisskeyAchievementsTypesNotes100000PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin3PtPt login3_ = _TranslationsMisskeyAchievementsTypesLogin3PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin7PtPt login7_ = _TranslationsMisskeyAchievementsTypesLogin7PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin15PtPt login15_ = _TranslationsMisskeyAchievementsTypesLogin15PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin30PtPt login30_ = _TranslationsMisskeyAchievementsTypesLogin30PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin60PtPt login60_ = _TranslationsMisskeyAchievementsTypesLogin60PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin100PtPt login100_ = _TranslationsMisskeyAchievementsTypesLogin100PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin200PtPt login200_ = _TranslationsMisskeyAchievementsTypesLogin200PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin300PtPt login300_ = _TranslationsMisskeyAchievementsTypesLogin300PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin400PtPt login400_ = _TranslationsMisskeyAchievementsTypesLogin400PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin500PtPt login500_ = _TranslationsMisskeyAchievementsTypesLogin500PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin600PtPt login600_ = _TranslationsMisskeyAchievementsTypesLogin600PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin700PtPt login700_ = _TranslationsMisskeyAchievementsTypesLogin700PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin800PtPt login800_ = _TranslationsMisskeyAchievementsTypesLogin800PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin900PtPt login900_ = _TranslationsMisskeyAchievementsTypesLogin900PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin1000PtPt login1000_ = _TranslationsMisskeyAchievementsTypesLogin1000PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteClipped1PtPt noteClipped1_ = _TranslationsMisskeyAchievementsTypesNoteClipped1PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteFavorited1PtPt noteFavorited1_ = _TranslationsMisskeyAchievementsTypesNoteFavorited1PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMyNoteFavorited1PtPt myNoteFavorited1_ = _TranslationsMisskeyAchievementsTypesMyNoteFavorited1PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesProfileFilledPtPt profileFilled_ = _TranslationsMisskeyAchievementsTypesProfileFilledPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMarkedAsCatPtPt markedAsCat_ = _TranslationsMisskeyAchievementsTypesMarkedAsCatPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing1PtPt following1_ = _TranslationsMisskeyAchievementsTypesFollowing1PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing10PtPt following10_ = _TranslationsMisskeyAchievementsTypesFollowing10PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing50PtPt following50_ = _TranslationsMisskeyAchievementsTypesFollowing50PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing100PtPt following100_ = _TranslationsMisskeyAchievementsTypesFollowing100PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing300PtPt following300_ = _TranslationsMisskeyAchievementsTypesFollowing300PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1PtPt followers1_ = _TranslationsMisskeyAchievementsTypesFollowers1PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers10PtPt followers10_ = _TranslationsMisskeyAchievementsTypesFollowers10PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers50PtPt followers50_ = _TranslationsMisskeyAchievementsTypesFollowers50PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers100PtPt followers100_ = _TranslationsMisskeyAchievementsTypesFollowers100PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers300PtPt followers300_ = _TranslationsMisskeyAchievementsTypesFollowers300PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers500PtPt followers500_ = _TranslationsMisskeyAchievementsTypesFollowers500PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1000PtPt followers1000_ = _TranslationsMisskeyAchievementsTypesFollowers1000PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCollectAchievements30PtPt collectAchievements30_ = _TranslationsMisskeyAchievementsTypesCollectAchievements30PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewAchievements3minPtPt viewAchievements3min_ = _TranslationsMisskeyAchievementsTypesViewAchievements3minPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesILoveMisskeyPtPt iLoveMisskey_ = _TranslationsMisskeyAchievementsTypesILoveMisskeyPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFoundTreasurePtPt foundTreasure_ = _TranslationsMisskeyAchievementsTypesFoundTreasurePtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient30minPtPt client30min_ = _TranslationsMisskeyAchievementsTypesClient30minPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient60minPtPt client60min_ = _TranslationsMisskeyAchievementsTypesClient60minPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minPtPt noteDeletedWithin1min_ = _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAtLateNightPtPt postedAtLateNight_ = _TranslationsMisskeyAchievementsTypesPostedAtLateNightPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAt0min0secPtPt postedAt0min0sec_ = _TranslationsMisskeyAchievementsTypesPostedAt0min0secPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSelfQuotePtPt selfQuote_ = _TranslationsMisskeyAchievementsTypesSelfQuotePtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesHtl20npmPtPt htl20npm_ = _TranslationsMisskeyAchievementsTypesHtl20npmPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewInstanceChartPtPt viewInstanceChart_ = _TranslationsMisskeyAchievementsTypesViewInstanceChartPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadPtPt outputHelloWorldOnScratchpad_ = _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOpen3windowsPtPt open3windows_ = _TranslationsMisskeyAchievementsTypesOpen3windowsPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferencePtPt driveFolderCircularReference_ = _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferencePtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesReactWithoutReadPtPt reactWithoutRead_ = _TranslationsMisskeyAchievementsTypesReactWithoutReadPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClickedClickHerePtPt clickedClickHere_ = _TranslationsMisskeyAchievementsTypesClickedClickHerePtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesJustPlainLuckyPtPt justPlainLucky_ = _TranslationsMisskeyAchievementsTypesJustPlainLuckyPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSetNameToSyuiloPtPt setNameToSyuilo_ = _TranslationsMisskeyAchievementsTypesSetNameToSyuiloPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1PtPt passedSinceAccountCreated1_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2PtPt passedSinceAccountCreated2_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3PtPt passedSinceAccountCreated3_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3PtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayPtPt loggedInOnBirthday_ = _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayPtPt loggedInOnNewYearsDay_ = _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCookieClickedPtPt cookieClicked_ = _TranslationsMisskeyAchievementsTypesCookieClickedPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBrainDiverPtPt brainDiver_ = _TranslationsMisskeyAchievementsTypesBrainDiverPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonPtPt smashTestNotificationButton_ = _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesTutorialCompletedPtPt tutorialCompleted_ = _TranslationsMisskeyAchievementsTypesTutorialCompletedPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadPtPt bubbleGameExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadPtPt._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadPtPt bubbleGameDoubleExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadPtPt._(_root);
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityPtPt extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get low => 'Baixa';
	@override String get middle => 'Médio';
	@override String get high => 'Alta';
}

// Path: misskey.role_.options_
class _TranslationsMisskeyRoleOptionsPtPt extends TranslationsMisskeyRoleOptionsEnUs {
	_TranslationsMisskeyRoleOptionsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'Visualizar Linha do Tempo Global';
	@override String get ltlAvailable => 'Visualizar Linha do Tempo Local';
	@override String get canPublicNote => 'Permitir postagem pública';
	@override String get mentionMax => 'Número máximo de menções em uma nota';
	@override String get canInvite => 'Permitir a criação de códigos de convites para a instância';
	@override String get inviteLimit => 'Limite de códigos de convite';
	@override String get inviteLimitCycle => 'Intervalo de emissão do código de convite';
	@override String get inviteExpirationTime => 'Prazo de validade do código de convite';
	@override String get canManageCustomEmojis => 'Permitir gerenciar emojis personalizados';
	@override String get canManageAvatarDecorations => 'Gerenciar decorações de avatar';
	@override String get driveCapacity => 'Capacidade do drive';
	@override String get maxFileSize => 'Tamanho máximo de envio de arquivos';
	@override String get alwaysMarkNsfw => 'Sempre marcar arquivos como NSFW';
	@override String get canUpdateBioMedia => 'Permitir a edição de ícone ou imagem do banner.';
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
	@override String get canSearchUsers => 'Busca de usuário';
	@override String get canUseTranslator => 'Uso do tradutor';
	@override String get avatarDecorationLimit => 'Número máximo de decorações de avatar que podem ser aplicadas';
	@override String get canImportAntennas => 'Permitir importação de antenas';
	@override String get canImportBlocking => 'Permitir importação de bloqueios';
	@override String get canImportFollowing => 'Permitir importação de usuários seguidos';
	@override String get canImportMuting => 'Permitir importação de silenciamentos';
	@override String get canImportUserLists => 'Permitir importação de listas';
	@override String get chatAvailability => 'Permitir Conversas';
	@override String get uploadableFileTypes => 'Tipos de arquivo enviáveis';
	@override String get uploadableFileTypes_caption => 'Especifica tipos MIME permitidos. Múltiplos tipos MIME podem ser especificados separando-os por linha. Curingas podem ser especificados com um asterisco (*). (exemplo, image/*)';
	@override String uploadableFileTypes_caption2({required Object x}) => 'Alguns tipos de arquivos podem não ser detectados. Para permiti-los, adicione ${x} à especificação.';
	@override String get noteDraftLimit => 'Limite de rascunhos possíveis';
	@override String get scheduledNoteLimit => 'Número máximo de notas agendadas simultâneas';
	@override String get watermarkAvailable => 'Disponibilidade da função de marca d\'água';
}

// Path: misskey.role_.condition_
class _TranslationsMisskeyRoleConditionPtPt extends TranslationsMisskeyRoleConditionEnUs {
	_TranslationsMisskeyRoleConditionPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get roleAssignedTo => 'Atribuído a cargos manuais';
	@override String get isLocal => 'Usuário local';
	@override String get isRemote => 'Usuário remoto';
	@override String get isCat => 'Usuários Gatinho';
	@override String get isBot => 'Usuários Bot';
	@override String get isSuspended => 'Usuário suspenso';
	@override String get isLocked => 'Contas privadas';
	@override String get isExplorable => 'Encontrável em "Explorar"';
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
class _TranslationsMisskeyEmailFollowPtPt extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Você tem um novo seguidor';
}

// Path: misskey.email_.receiveFollowRequest_
class _TranslationsMisskeyEmailReceiveFollowRequestPtPt extends TranslationsMisskeyEmailReceiveFollowRequestEnUs {
	_TranslationsMisskeyEmailReceiveFollowRequestPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Você recebeu um pedido de seguidor';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysPtPt extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get accent => 'Cor de destaque';
	@override String get bg => 'Plano de fundo';
	@override String get fg => 'Texto';
	@override String get focus => 'Foco';
	@override String get indicator => 'Indicador';
	@override String get panel => 'Painel';
	@override String get shadow => 'Sombra';
	@override String get header => 'Cabeçalho';
	@override String get navBg => 'Plano de fundo da barra lateral';
	@override String get navFg => 'Texto da barra lateral';
	@override String get navActive => 'Texto da coluna lateral (Ativa)';
	@override String get navIndicator => 'Indicador da coluna lateral';
	@override String get link => 'Link';
	@override String get hashtag => 'Hashtag';
	@override String get mention => 'Menção';
	@override String get mentionMe => 'Menciona (a mim)';
	@override String get renote => 'Repostar';
	@override String get modalBg => 'Plano de fundo modal';
	@override String get divider => 'Separador';
	@override String get scrollbarHandle => 'Alça da barra de rolagem (Selecionada)';
	@override String get scrollbarHandleHover => 'Alça da barra de rolagem (Selecionada)';
	@override String get dateLabelFg => 'Texto do rótulo de data';
	@override String get infoBg => 'Plano de fundo de informações';
	@override String get infoFg => 'Texto de informações';
	@override String get infoWarnBg => 'Plano de fundo de avisos';
	@override String get infoWarnFg => 'Texto de avisos';
	@override String get toastBg => 'Plano de fundo de notificações';
	@override String get toastFg => 'Texto da notificação';
	@override String get buttonBg => 'Plano de fundo de botão';
	@override String get buttonHoverBg => 'Plano de fundo de botão (Selecionado)';
	@override String get inputBorder => 'Borda de campo digitável';
	@override String get badge => 'Emblema';
	@override String get messageBg => 'Plano de fundo do chat';
	@override String get fgHighlighted => 'Texto Destacado';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListPtPt extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Selecione uma lista';
}

// Path: misskey.widgetOptions_.button_
class _TranslationsMisskeyWidgetOptionsButtonPtPt extends TranslationsMisskeyWidgetOptionsButtonEnUs {
	_TranslationsMisskeyWidgetOptionsButtonPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get colored => 'Colorido';
}

// Path: misskey.widgetOptions_.clock_
class _TranslationsMisskeyWidgetOptionsClockPtPt extends TranslationsMisskeyWidgetOptionsClockEnUs {
	_TranslationsMisskeyWidgetOptionsClockPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get size => 'Tamanho';
}

// Path: misskey.widgetOptions_.birthdayFollowings_
class _TranslationsMisskeyWidgetOptionsBirthdayFollowingsPtPt extends TranslationsMisskeyWidgetOptionsBirthdayFollowingsEnUs {
	_TranslationsMisskeyWidgetOptionsBirthdayFollowingsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get period => 'Duração';
}

// Path: misskey.postForm_.howToUse_
class _TranslationsMisskeyPostFormHowToUsePtPt extends TranslationsMisskeyPostFormHowToUseEnUs {
	_TranslationsMisskeyPostFormHowToUsePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get visibility_title => 'Visibilidade';
	@override String get menu_title => 'Menu\n';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersPtPt extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get a => 'Como vão as coisas?';
	@override String get b => 'O que está rolando por aí?';
	@override String get c => 'No que está pensando?';
	@override String get d => 'Do que você quer falar?';
	@override String get e => 'Comece a digitar...';
	@override String get f => 'Esperando você digitar...';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksPtPt extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get text => 'Texto';
	@override String get textarea => 'Área do texto';
	@override String get section => 'Seção';
	@override String get image => 'imagem';
	@override String get button => 'Botão';
	@override String get dynamic => 'Blocos Dinâmicos';
	@override String dynamicDescription({required Object play}) => 'Esse bloco foi abolido. Por favor, use ${play} de agora em diante.';
	@override String get note => 'Nota embutida';
	@override late final _TranslationsMisskeyPagesBlocksNotePtPt note_ = _TranslationsMisskeyPagesBlocksNotePtPt._(_root);
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesPtPt extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get all => 'Todas';
	@override String get note => 'Novas notas';
	@override String get follow => 'Seguindo';
	@override String get mention => 'Menção';
	@override String get reply => 'Respostas';
	@override String get renote => 'Repostar';
	@override String get quote => 'Citações';
	@override String get reaction => 'Reações';
	@override String get pollEnded => 'Enquetes terminando';
	@override String get receiveFollowRequest => 'Recebeu pedidos de seguidor';
	@override String get followRequestAccepted => 'Aceitou pedidos de seguidor';
	@override String get roleAssigned => 'Cargo dado';
	@override String get chatRoomInvitationReceived => 'Convite de conversa recebido';
	@override String get achievementEarned => 'Conquista desbloqueada';
	@override String get exportCompleted => 'A exportação foi concluída';
	@override String get login => 'Iniciar sessão';
	@override String get createToken => 'Criar token de acesso';
	@override String get test => 'Notificação teste';
	@override String get app => 'Notificações de aplicativos conectados';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsPtPt extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'te seguiu de volta';
	@override String get reply => 'Responder';
	@override String get renote => 'Repostar';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsPtPt extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

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
	@override String get chat => 'Conversar com usuário';
}

// Path: misskey.webhookSettings_.events_
class _TranslationsMisskeyWebhookSettingsEventsPtPt extends TranslationsMisskeyWebhookSettingsEventsEnUs {
	_TranslationsMisskeyWebhookSettingsEventsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Quando seguindo um usuário';
	@override String get followed => 'Quando sendo seguido';
	@override String get note => 'Ao postar uma nota';
	@override String get reply => 'Quando receber uma resposta';
	@override String get renote => 'Quando repostado';
	@override String get reaction => 'Quando receber uma reação';
	@override String get mention => 'Quando for mencionado';
}

// Path: misskey.webhookSettings_.systemEvents_
class _TranslationsMisskeyWebhookSettingsSystemEventsPtPt extends TranslationsMisskeyWebhookSettingsSystemEventsEnUs {
	_TranslationsMisskeyWebhookSettingsSystemEventsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get abuseReport => 'Quando receber um relatório de abuso';
	@override String get abuseReportResolved => 'Quando relatórios de abuso forem resolvidos ';
	@override String get userCreated => 'Quando um usuário é criado';
	@override String get inactiveModeratorsWarning => 'Quando moderadores estiverem inativos por um tempo';
	@override String get inactiveModeratorsInvitationOnlyChanged => 'Quando um moderador está inativo por um tempo e os cadastros passam a exigir convites';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientPtPt extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get createRecipient => 'Adicionar destinatário para relatórios de abuso';
	@override String get modifyRecipient => 'Editar destinatários para relatórios de abuso';
	@override String get recipientType => 'TIpo de notificação';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypePtPt recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypePtPt._(_root);
	@override String get keywords => 'Palavras-chave';
	@override String get notifiedUser => 'Usuários para notificar';
	@override String get notifiedWebhook => 'Webhook usado';
	@override String get deleteConfirm => 'Você tem certeza de que quer excluir o destinatário da notificação?';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _TranslationsMisskeyExternalResourceInstallerPluginPtPt extends TranslationsMisskeyExternalResourceInstallerPluginEnUs {
	_TranslationsMisskeyExternalResourceInstallerPluginPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Deseja instalar esse plugin?';
}

// Path: misskey.externalResourceInstaller_.theme_
class _TranslationsMisskeyExternalResourceInstallerThemePtPt extends TranslationsMisskeyExternalResourceInstallerThemeEnUs {
	_TranslationsMisskeyExternalResourceInstallerThemePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Deseja instalar esse tema?';
}

// Path: misskey.externalResourceInstaller_.meta_
class _TranslationsMisskeyExternalResourceInstallerMetaPtPt extends TranslationsMisskeyExternalResourceInstallerMetaEnUs {
	_TranslationsMisskeyExternalResourceInstallerMetaPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get base => 'Paleta de cores base';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _TranslationsMisskeyExternalResourceInstallerVendorInfoPtPt extends TranslationsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_TranslationsMisskeyExternalResourceInstallerVendorInfoPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informações do distribuidor';
	@override String get endpoint => 'Endpoint referenciado';
	@override String get hashVerify => 'Verificação de hashes';
}

// Path: misskey.externalResourceInstaller_.errors_
class _TranslationsMisskeyExternalResourceInstallerErrorsPtPt extends TranslationsMisskeyExternalResourceInstallerErrorsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsPtPt invalidParams_ = _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsPtPt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedPtPt resourceTypeNotSupported_ = _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedPtPt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchPtPt failedToFetch_ = _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchPtPt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedPtPt hashUnmatched_ = _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedPtPt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedPtPt pluginParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedPtPt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedPtPt pluginInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedPtPt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedPtPt themeParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedPtPt._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedPtPt themeInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedPtPt._(_root);
}

// Path: misskey.dataSaver_.media_
class _TranslationsMisskeyDataSaverMediaPtPt extends TranslationsMisskeyDataSaverMediaEnUs {
	_TranslationsMisskeyDataSaverMediaPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Carregando mídia';
	@override String get description => 'Previne que mídia seja carregada automaticamente. Mídias escondidas serão carregadas quando selecionadas.';
}

// Path: misskey.dataSaver_.avatar_
class _TranslationsMisskeyDataSaverAvatarPtPt extends TranslationsMisskeyDataSaverAvatarEnUs {
	_TranslationsMisskeyDataSaverAvatarPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Imagem do avatar';
	@override String get description => 'Parar animação de avatares. Imagens animadas podem ter um arquivo mais pesado do que imagens normais, potencialmente levando a reduções no tráfego de dados.';
}

// Path: misskey.dataSaver_.urlPreviewThumbnail_
class _TranslationsMisskeyDataSaverUrlPreviewThumbnailPtPt extends TranslationsMisskeyDataSaverUrlPreviewThumbnailEnUs {
	_TranslationsMisskeyDataSaverUrlPreviewThumbnailPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Esconder miniaturas em prévias de URL';
	@override String get description => 'Miniaturas em prévias de URL não serão carregadas.';
}

// Path: misskey.dataSaver_.disableUrlPreview_
class _TranslationsMisskeyDataSaverDisableUrlPreviewPtPt extends TranslationsMisskeyDataSaverDisableUrlPreviewEnUs {
	_TranslationsMisskeyDataSaverDisableUrlPreviewPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desabilitar prévias de URL';
	@override String get description => 'Desabilita a função de prévias de URL. Diferente das miniaturas, essa função impede o carregamento de toda informação do link.';
}

// Path: misskey.dataSaver_.code_
class _TranslationsMisskeyDataSaverCodePtPt extends TranslationsMisskeyDataSaverCodeEnUs {
	_TranslationsMisskeyDataSaverCodePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Destaque de código';
	@override String get description => 'Se as notações de formatação de código forem utilizadas em MFM, elas não irão carregar até serem selecionadas. Destaque de código exige baixar arquivos de alta definição para cada linguagem de programação. Logo, desabilitar o carregamento automático desses arquivos diminui a quantidade de informação comunicada.';
}

// Path: misskey.gridComponent_.error_
class _TranslationsMisskeyGridComponentErrorPtPt extends TranslationsMisskeyGridComponentErrorEnUs {
	_TranslationsMisskeyGridComponentErrorPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get requiredValue => 'Esse valor é necessário';
	@override String get columnTypeNotSupport => 'Validação de expressões regulares (RegEx) só é permitida em colunas type:text.';
	@override String patternNotMatch({required Object pattern}) => 'Esse valor não se encaixa no padrão de ${pattern}';
	@override String get notUnique => 'Valor deve ser único';
}

// Path: misskey.customEmojisManager_.gridCommon_
class _TranslationsMisskeyCustomEmojisManagerGridCommonPtPt extends TranslationsMisskeyCustomEmojisManagerGridCommonEnUs {
	_TranslationsMisskeyCustomEmojisManagerGridCommonPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get copySelectionRows => 'Copiar linhas selecionadas';
	@override String get copySelectionRanges => 'Copiar seleção';
	@override String get deleteSelectionRows => 'Excluir linhas selecionadas';
	@override String get deleteSelectionRanges => 'Excluir valores selecionados';
	@override String get searchSettings => 'Opções de busca';
	@override String get searchSettingCaption => 'Definir critérios detalhados de busca.';
	@override String get searchLimit => 'Limite de busca';
	@override String get sortOrder => 'Ordem de classificação';
	@override String get registrationLogs => 'Histórico de registros';
	@override String get registrationLogsCaption => 'Atualizações e remoções de emoji serão gravadas no histórico. Atualizar, remover, mover a uma nova página ou recarregar limpará o histórico';
	@override String get alertEmojisRegisterFailedDescription => 'Não foi possível atualizar ou remover emojis. Por favor, confira o histórico de registro para mais detalhes.';
}

// Path: misskey.customEmojisManager_.logs_
class _TranslationsMisskeyCustomEmojisManagerLogsPtPt extends TranslationsMisskeyCustomEmojisManagerLogsEnUs {
	_TranslationsMisskeyCustomEmojisManagerLogsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get showSuccessLogSwitch => 'Exibir sucessos no histórico';
	@override String get failureLogNothing => 'Não há registro de falhas.';
	@override String get logNothing => 'Não há registros.';
}

// Path: misskey.customEmojisManager_.remote_
class _TranslationsMisskeyCustomEmojisManagerRemotePtPt extends TranslationsMisskeyCustomEmojisManagerRemoteEnUs {
	_TranslationsMisskeyCustomEmojisManagerRemotePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get selectionRowDetail => 'Detalhes da linha selecionada';
	@override String get importSelectionRows => 'Importar linhas selecionadas';
	@override String get importSelectionRangesRows => 'Importar linhas no intervalo';
	@override String get importEmojisButton => 'Importar Emojis selecionados';
	@override String get confirmImportEmojisTitle => 'Importar Emojis';
	@override String confirmImportEmojisDescription({required Object count}) => 'Importar ${count} Emoji(s) recebidos de um servidor remoto. Por favor, preste atenção na licença do Emoji. Tem certeza que deseja continuar?';
}

// Path: misskey.customEmojisManager_.local_
class _TranslationsMisskeyCustomEmojisManagerLocalPtPt extends TranslationsMisskeyCustomEmojisManagerLocalEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get tabTitleList => 'Emojis registrados';
	@override String get tabTitleRegister => 'Registro de Emoji';
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalListPtPt list_ = _TranslationsMisskeyCustomEmojisManagerLocalListPtPt._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalRegisterPtPt register_ = _TranslationsMisskeyCustomEmojisManagerLocalRegisterPtPt._(_root);
}

// Path: misskey.remoteLookupErrors_.federationNotAllowed_
class _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedPtPt extends TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Não foi possível se comunicar com o servidor';
	@override String get description => 'Comunicação com esse servidor pode ter sido desabilitada ou o servidor pode ter sido bloqueado.\nPor favor, entre em contato com o administrador do servidor.';
}

// Path: misskey.remoteLookupErrors_.uriInvalid_
class _TranslationsMisskeyRemoteLookupErrorsUriInvalidPtPt extends TranslationsMisskeyRemoteLookupErrorsUriInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsUriInvalidPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Endereço inválido';
	@override String get description => 'Há um problema com o endereço inserido. Por favor, confira se você não inseriu caracteres inválidos.';
}

// Path: misskey.remoteLookupErrors_.requestFailed_
class _TranslationsMisskeyRemoteLookupErrorsRequestFailedPtPt extends TranslationsMisskeyRemoteLookupErrorsRequestFailedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsRequestFailedPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Solicitação falhou';
	@override String get description => 'Comunicação com esse servidor falhou. O servidor pode estar inativo. Além disso, confira se você não inseriu um endereço inválido ou inexistente.';
}

// Path: misskey.remoteLookupErrors_.responseInvalid_
class _TranslationsMisskeyRemoteLookupErrorsResponseInvalidPtPt extends TranslationsMisskeyRemoteLookupErrorsResponseInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsResponseInvalidPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Resposta inválida';
	@override String get description => 'Foi possível comunicar com o servidor, porém os dados obtidos foram incorretos.';
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectPtPt extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Não encontrado';
	@override String get description => 'O recurso solicitado não foi encontrado, confira o endereço.';
}

// Path: misskey.captcha_.error_
class _TranslationsMisskeyCaptchaErrorPtPt extends TranslationsMisskeyCaptchaErrorEnUs {
	_TranslationsMisskeyCaptchaErrorPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCaptchaErrorRequestFailedPtPt requestFailed_ = _TranslationsMisskeyCaptchaErrorRequestFailedPtPt._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorVerificationFailedPtPt verificationFailed_ = _TranslationsMisskeyCaptchaErrorVerificationFailedPtPt._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorUnknownPtPt unknown_ = _TranslationsMisskeyCaptchaErrorUnknownPtPt._(_root);
}

// Path: misskey.serverSetupWizard_.use_
class _TranslationsMisskeyServerSetupWizardUsePtPt extends TranslationsMisskeyServerSetupWizardUseEnUs {
	_TranslationsMisskeyServerSetupWizardUsePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get single => 'Servidor de Usuário Único';
	@override String get single_description => 'Utilizar servidor sozinho.';
	@override String get single_youCanCreateMultipleAccounts => 'Múltiplas contas podem ser criadas se necessário, mesmo operando como servidor de usuário único.';
	@override String get group => 'Servidor de Grupo';
	@override String get group_description => 'Convide outros usuários confiáveis para utilizar com mais de um usuário';
	@override String get open => 'Servidor Público';
	@override String get open_description => 'Permitir registro de todos.';
}

// Path: misskey.serverSetupWizard_.scale_
class _TranslationsMisskeyServerSetupWizardScalePtPt extends TranslationsMisskeyServerSetupWizardScaleEnUs {
	_TranslationsMisskeyServerSetupWizardScalePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get small => 'Menos que 100 (pequeno porte)';
	@override String get medium => 'Entre 100 e 1000 usuários (médio porte)';
	@override String get large => 'Mais que 1000 usuários (larga escala)';
}

// Path: misskey.serverSetupWizard_.donationRequest_
class _TranslationsMisskeyServerSetupWizardDonationRequestPtPt extends TranslationsMisskeyServerSetupWizardDonationRequestEnUs {
	_TranslationsMisskeyServerSetupWizardDonationRequestPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Misskey é software aberto desenvolvido por voluntários.';
	@override String get text2 => 'Nós apreciaríamos o seu apoio para podermos continuar o desenvolvimento desse software no futuro.';
	@override String get text3 => 'Também há benefícios especiais para apoiadores!';
}

// Path: misskey.imageEffector_.fxs_
class _TranslationsMisskeyImageEffectorFxsPtPt extends TranslationsMisskeyImageEffectorFxsEnUs {
	_TranslationsMisskeyImageEffectorFxsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get chromaticAberration => 'Aberração cromática';
	@override String get glitch => 'Glitch';
	@override String get mirror => 'Espelho';
	@override String get invert => 'Inverter Cores';
	@override String get grayscale => 'Tons de Cinza';
	@override String get blur => 'Desfoque';
	@override String get pixelate => 'Pixelizar';
	@override String get colorAdjust => 'Correção de Cores';
	@override String get colorClamp => 'Compressão de Cores';
	@override String get colorClampAdvanced => 'Compressão Avançada de Cores';
	@override String get distort => 'Distorção';
	@override String get threshold => 'Limiarização Binária';
	@override String get zoomLines => 'Linhas de Ação';
	@override String get stripe => 'Listras';
	@override String get polkadot => 'Bolinhas';
	@override String get checker => 'Xadrez';
	@override String get blockNoise => 'Bloquear Ruído';
	@override String get tearing => 'Descontinuidade';
	@override String get fill => 'Preencher';
}

// Path: misskey.imageEffector_.fxProps_
class _TranslationsMisskeyImageEffectorFxPropsPtPt extends TranslationsMisskeyImageEffectorFxPropsEnUs {
	_TranslationsMisskeyImageEffectorFxPropsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get angle => 'Ângulo';
	@override String get scale => 'Tamanho';
	@override String get size => 'Tamanho';
	@override String get radius => 'Raio';
	@override String get samples => 'Número de amostras';
	@override String get offset => 'Posição';
	@override String get color => 'Cor';
	@override String get opacity => 'Opacidade';
	@override String get normalize => 'Normalizar';
	@override String get amount => 'Quantidade';
	@override String get lightness => 'Esclarecer';
	@override String get contrast => 'Contraste';
	@override String get hue => 'Matiz';
	@override String get brightness => 'Brilho';
	@override String get saturation => 'Saturação';
	@override String get max => 'Máximo';
	@override String get min => 'Mínimo';
	@override String get direction => 'Direção';
	@override String get phase => 'Fase';
	@override String get frequency => 'Frequência';
	@override String get strength => 'Força';
	@override String get glitchChannelShift => 'Mudança de canal';
	@override String get seed => 'Valor da semente';
	@override String get redComponent => 'Componente vermelho';
	@override String get greenComponent => 'Componente verde';
	@override String get blueComponent => 'Componente azul';
	@override String get threshold => 'Limiar';
	@override String get centerX => 'Centralizar X';
	@override String get centerY => 'Centralizar Y';
	@override String get zoomLinesMaskSize => 'Diâmetro do centro';
	@override String get circle => 'Circular';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _TranslationsMisskeyInitialTutorialPostNoteVisibilityPtPt extends TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteVisibilityPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get description => 'Você pode limitar quem vê a sua nota.';
	@override String get public => 'Sua nota será visível a todos os usuários.';
	@override String get home => 'Publicar apenas na linha do tempo Início. Pessoas visitando seu perfil, seja seguindo ou por um repost poderão vê-los.';
	@override String get followers => 'Visível apenas para seguidores. Apenas seguidores podem vê-la e mais ninguém, e ela não pode ser repostada pelos demais.';
	@override String get direct => 'Visível apenas para usuários específicos, e o destinatário será notificado. Pode ser usado como uma alternativa às mensagens diretas.';
	@override String get doNotSendConfidencialOnDirect1 => 'Tenha cuidado ao enviar informações sensíveis!';
	@override String get doNotSendConfidencialOnDirect2 => 'Administradores do servidor podem ver o que foi escrito. Cuidado, também, ao enviar notas diretas a usuários de servidores não confiáveis.';
	@override String get localOnly => 'Publicar com essa opção não federará a nota com outros servidores. Usuários desses servidores não poderão ver essas notas diretamente, independente das opções de visibilidade acima. ';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _TranslationsMisskeyInitialTutorialPostNoteCwPtPt extends TranslationsMisskeyInitialTutorialPostNoteCwEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aviso de Conteúdo';
	@override String get description => 'Ao invés do corpo do texto, o conteúdo escrito na caixa "anotação" será exibido. Apertar "Carregar mais" irá revelar o corpo.';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwExampleNotePtPt exampleNote_ = _TranslationsMisskeyInitialTutorialPostNoteCwExampleNotePtPt._(_root);
	@override String get useCases => 'Isso pode ser usado caso seja exigido, pelas diretrizes do servidor, o cuidado com algum tópico ou ao publicar conteúdo sensível ou spoilers.';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNotePtPt extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNotePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get note => 'Opa, me atrapalhei abrindo a tampa do natô...';
}

// Path: misskey.achievements_.types_.notes1_
class _TranslationsMisskeyAchievementsTypesNotes1PtPt extends TranslationsMisskeyAchievementsTypesNotes1EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Configurando o meu misskey';
	@override String get description => 'Poste uma nota pela primeira vez';
	@override String get flavor => 'Divirta-se com o Misskey!';
}

// Path: misskey.achievements_.types_.notes10_
class _TranslationsMisskeyAchievementsTypesNotes10PtPt extends TranslationsMisskeyAchievementsTypesNotes10EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Algumas notas';
	@override String get description => 'Poste 10 notas';
}

// Path: misskey.achievements_.types_.notes100_
class _TranslationsMisskeyAchievementsTypesNotes100PtPt extends TranslationsMisskeyAchievementsTypesNotes100EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Um monte de notas';
	@override String get description => 'Poste 100 notas';
}

// Path: misskey.achievements_.types_.notes500_
class _TranslationsMisskeyAchievementsTypesNotes500PtPt extends TranslationsMisskeyAchievementsTypesNotes500EnUs {
	_TranslationsMisskeyAchievementsTypesNotes500PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Coberto por notas';
	@override String get description => 'Poste 500 notas';
}

// Path: misskey.achievements_.types_.notes1000_
class _TranslationsMisskeyAchievementsTypesNotes1000PtPt extends TranslationsMisskeyAchievementsTypesNotes1000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1000PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uma montanha de notas';
	@override String get description => 'Poste 1 000 notas';
}

// Path: misskey.achievements_.types_.notes5000_
class _TranslationsMisskeyAchievementsTypesNotes5000PtPt extends TranslationsMisskeyAchievementsTypesNotes5000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes5000PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Enxurrada de notas';
	@override String get description => 'Poste 5000 notas';
}

// Path: misskey.achievements_.types_.notes10000_
class _TranslationsMisskeyAchievementsTypesNotes10000PtPt extends TranslationsMisskeyAchievementsTypesNotes10000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10000PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supernota';
	@override String get description => 'Poste 10 000 notas';
}

// Path: misskey.achievements_.types_.notes20000_
class _TranslationsMisskeyAchievementsTypesNotes20000PtPt extends TranslationsMisskeyAchievementsTypesNotes20000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes20000PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preciso... de mais... notas...';
	@override String get description => 'Poste 20 000 notas';
}

// Path: misskey.achievements_.types_.notes30000_
class _TranslationsMisskeyAchievementsTypesNotes30000PtPt extends TranslationsMisskeyAchievementsTypesNotes30000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes30000PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notas, Notas, NOTAS!';
	@override String get description => 'Poste 30 000 notas';
}

// Path: misskey.achievements_.types_.notes40000_
class _TranslationsMisskeyAchievementsTypesNotes40000PtPt extends TranslationsMisskeyAchievementsTypesNotes40000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes40000PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fábrica de notas';
	@override String get description => 'Poste 40 000 notas';
}

// Path: misskey.achievements_.types_.notes50000_
class _TranslationsMisskeyAchievementsTypesNotes50000PtPt extends TranslationsMisskeyAchievementsTypesNotes50000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes50000PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Planeta de notas';
	@override String get description => 'Poste 50 000 notas';
}

// Path: misskey.achievements_.types_.notes60000_
class _TranslationsMisskeyAchievementsTypesNotes60000PtPt extends TranslationsMisskeyAchievementsTypesNotes60000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes60000PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quasar de notas';
	@override String get description => 'Poste 60 000 notas';
}

// Path: misskey.achievements_.types_.notes70000_
class _TranslationsMisskeyAchievementsTypesNotes70000PtPt extends TranslationsMisskeyAchievementsTypesNotes70000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes70000PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Buraco negro de notas';
	@override String get description => 'Poste 70 000 notas';
}

// Path: misskey.achievements_.types_.notes80000_
class _TranslationsMisskeyAchievementsTypesNotes80000PtPt extends TranslationsMisskeyAchievementsTypesNotes80000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes80000PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Galáxia de notas';
	@override String get description => 'Poste 80 000 notas';
}

// Path: misskey.achievements_.types_.notes90000_
class _TranslationsMisskeyAchievementsTypesNotes90000PtPt extends TranslationsMisskeyAchievementsTypesNotes90000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes90000PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Universo de notas';
	@override String get description => 'Poste 90 000 notas';
}

// Path: misskey.achievements_.types_.notes100000_
class _TranslationsMisskeyAchievementsTypesNotes100000PtPt extends TranslationsMisskeyAchievementsTypesNotes100000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100000PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => 'Poste 100 000 notas';
	@override String get flavor => 'Você realmente tem muita coisa para escrever';
}

// Path: misskey.achievements_.types_.login3_
class _TranslationsMisskeyAchievementsTypesLogin3PtPt extends TranslationsMisskeyAchievementsTypesLogin3EnUs {
	_TranslationsMisskeyAchievementsTypesLogin3PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Iniciante I';
	@override String get description => 'Faça login por um total de 3 dias';
	@override String get flavor => 'De hoje em diante, me chame apenas de Misskist';
}

// Path: misskey.achievements_.types_.login7_
class _TranslationsMisskeyAchievementsTypesLogin7PtPt extends TranslationsMisskeyAchievementsTypesLogin7EnUs {
	_TranslationsMisskeyAchievementsTypesLogin7PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Iniciante II';
	@override String get description => 'Faça login por um total de 7 dias';
	@override String get flavor => 'Pegando o jeito da coisa?';
}

// Path: misskey.achievements_.types_.login15_
class _TranslationsMisskeyAchievementsTypesLogin15PtPt extends TranslationsMisskeyAchievementsTypesLogin15EnUs {
	_TranslationsMisskeyAchievementsTypesLogin15PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Iniciante III';
	@override String get description => 'Faça login por um total de 15 dias';
}

// Path: misskey.achievements_.types_.login30_
class _TranslationsMisskeyAchievementsTypesLogin30PtPt extends TranslationsMisskeyAchievementsTypesLogin30EnUs {
	_TranslationsMisskeyAchievementsTypesLogin30PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist I';
	@override String get description => 'Faça login por um total de 30 dias';
}

// Path: misskey.achievements_.types_.login60_
class _TranslationsMisskeyAchievementsTypesLogin60PtPt extends TranslationsMisskeyAchievementsTypesLogin60EnUs {
	_TranslationsMisskeyAchievementsTypesLogin60PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist II';
	@override String get description => 'Faça login por um total de 60 dias';
}

// Path: misskey.achievements_.types_.login100_
class _TranslationsMisskeyAchievementsTypesLogin100PtPt extends TranslationsMisskeyAchievementsTypesLogin100EnUs {
	_TranslationsMisskeyAchievementsTypesLogin100PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist III';
	@override String get description => 'Faça login por um total de 100 dias';
	@override String get flavor => 'Misskist violento';
}

// Path: misskey.achievements_.types_.login200_
class _TranslationsMisskeyAchievementsTypesLogin200PtPt extends TranslationsMisskeyAchievementsTypesLogin200EnUs {
	_TranslationsMisskeyAchievementsTypesLogin200PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Freguês I';
	@override String get description => 'Faça login por um total de 200 dias';
}

// Path: misskey.achievements_.types_.login300_
class _TranslationsMisskeyAchievementsTypesLogin300PtPt extends TranslationsMisskeyAchievementsTypesLogin300EnUs {
	_TranslationsMisskeyAchievementsTypesLogin300PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Freguês II';
	@override String get description => 'Faça login por um total de 300 dias';
}

// Path: misskey.achievements_.types_.login400_
class _TranslationsMisskeyAchievementsTypesLogin400PtPt extends TranslationsMisskeyAchievementsTypesLogin400EnUs {
	_TranslationsMisskeyAchievementsTypesLogin400PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Freguês III';
	@override String get description => 'Faça login por um total de 400 dias';
}

// Path: misskey.achievements_.types_.login500_
class _TranslationsMisskeyAchievementsTypesLogin500PtPt extends TranslationsMisskeyAchievementsTypesLogin500EnUs {
	_TranslationsMisskeyAchievementsTypesLogin500PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veterano I';
	@override String get description => 'Faça login por um total de 500 dias';
	@override String get flavor => 'Cavalheiros, tudo o que peço são notas';
}

// Path: misskey.achievements_.types_.login600_
class _TranslationsMisskeyAchievementsTypesLogin600PtPt extends TranslationsMisskeyAchievementsTypesLogin600EnUs {
	_TranslationsMisskeyAchievementsTypesLogin600PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veterano II';
	@override String get description => 'Faça login por um total de 600 dias';
}

// Path: misskey.achievements_.types_.login700_
class _TranslationsMisskeyAchievementsTypesLogin700PtPt extends TranslationsMisskeyAchievementsTypesLogin700EnUs {
	_TranslationsMisskeyAchievementsTypesLogin700PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veterano III';
	@override String get description => 'Faça login por um total de 700 dias';
}

// Path: misskey.achievements_.types_.login800_
class _TranslationsMisskeyAchievementsTypesLogin800PtPt extends TranslationsMisskeyAchievementsTypesLogin800EnUs {
	_TranslationsMisskeyAchievementsTypesLogin800PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mestre das Notas I';
	@override String get description => 'Faça login por um total de 800 dias';
}

// Path: misskey.achievements_.types_.login900_
class _TranslationsMisskeyAchievementsTypesLogin900PtPt extends TranslationsMisskeyAchievementsTypesLogin900EnUs {
	_TranslationsMisskeyAchievementsTypesLogin900PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mestre das Notas II';
	@override String get description => 'Faça login por um total de 900 dias';
}

// Path: misskey.achievements_.types_.login1000_
class _TranslationsMisskeyAchievementsTypesLogin1000PtPt extends TranslationsMisskeyAchievementsTypesLogin1000EnUs {
	_TranslationsMisskeyAchievementsTypesLogin1000PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mestre das Notas III';
	@override String get description => 'Faça login por um total de 1 000 dias';
	@override String get flavor => 'Obrigado por utilizar o Misskey!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _TranslationsMisskeyAchievementsTypesNoteClipped1PtPt extends TranslationsMisskeyAchievementsTypesNoteClipped1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteClipped1PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preciso... clipar...';
	@override String get description => 'Adicione a um clipe a sua primeira nota';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _TranslationsMisskeyAchievementsTypesNoteFavorited1PtPt extends TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteFavorited1PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Astrônomo Amador';
	@override String get description => 'Adicione uma nota aos favoritos pela primeira vez';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _TranslationsMisskeyAchievementsTypesMyNoteFavorited1PtPt extends TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesMyNoteFavorited1PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cabeça nas estrelas';
	@override String get description => 'Tenha uma das suas notas adicionada aos favoritos de alguém';
}

// Path: misskey.achievements_.types_.profileFilled_
class _TranslationsMisskeyAchievementsTypesProfileFilledPtPt extends TranslationsMisskeyAchievementsTypesProfileFilledEnUs {
	_TranslationsMisskeyAchievementsTypesProfileFilledPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tudo Pronto';
	@override String get description => 'Configure o seu perfil';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _TranslationsMisskeyAchievementsTypesMarkedAsCatPtPt extends TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_TranslationsMisskeyAchievementsTypesMarkedAsCatPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eu Sou Um Gato';
	@override String get description => 'Marque a sua conta como um gato';
	@override String get flavor => 'Ainda não tenho um nome.';
}

// Path: misskey.achievements_.types_.following1_
class _TranslationsMisskeyAchievementsTypesFollowing1PtPt extends TranslationsMisskeyAchievementsTypesFollowing1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing1PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Primeira vez seguindo alguém';
	@override String get description => 'Siga um usuário pela primeira vez';
}

// Path: misskey.achievements_.types_.following10_
class _TranslationsMisskeyAchievementsTypesFollowing10PtPt extends TranslationsMisskeyAchievementsTypesFollowing10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing10PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Circulando, circulando';
	@override String get description => 'Siga 10 usuários';
}

// Path: misskey.achievements_.types_.following50_
class _TranslationsMisskeyAchievementsTypesFollowing50PtPt extends TranslationsMisskeyAchievementsTypesFollowing50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing50PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Muitos amigos';
	@override String get description => 'Siga 50 usuários';
}

// Path: misskey.achievements_.types_.following100_
class _TranslationsMisskeyAchievementsTypesFollowing100PtPt extends TranslationsMisskeyAchievementsTypesFollowing100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing100PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => '100 Amigos';
	@override String get description => 'Siga 100 usuários';
}

// Path: misskey.achievements_.types_.following300_
class _TranslationsMisskeyAchievementsTypesFollowing300PtPt extends TranslationsMisskeyAchievementsTypesFollowing300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing300PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobrecarga de amigos';
	@override String get description => 'Siga 300 usuários';
}

// Path: misskey.achievements_.types_.followers1_
class _TranslationsMisskeyAchievementsTypesFollowers1PtPt extends TranslationsMisskeyAchievementsTypesFollowers1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Primeiro seguidor';
	@override String get description => 'Ganhe o seu primeiro seguidor';
}

// Path: misskey.achievements_.types_.followers10_
class _TranslationsMisskeyAchievementsTypesFollowers10PtPt extends TranslationsMisskeyAchievementsTypesFollowers10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers10PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sigam-me os bons!';
	@override String get description => 'Ganhe 10 seguidores';
}

// Path: misskey.achievements_.types_.followers50_
class _TranslationsMisskeyAchievementsTypesFollowers50PtPt extends TranslationsMisskeyAchievementsTypesFollowers50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers50PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aos montes';
	@override String get description => 'Ganhe 50 seguidores';
}

// Path: misskey.achievements_.types_.followers100_
class _TranslationsMisskeyAchievementsTypesFollowers100PtPt extends TranslationsMisskeyAchievementsTypesFollowers100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers100PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Popular';
	@override String get description => 'Ganhe 100 seguidores';
}

// Path: misskey.achievements_.types_.followers300_
class _TranslationsMisskeyAchievementsTypesFollowers300PtPt extends TranslationsMisskeyAchievementsTypesFollowers300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers300PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Em fila única, por favor';
	@override String get description => 'Ganhe 300 seguidores';
}

// Path: misskey.achievements_.types_.followers500_
class _TranslationsMisskeyAchievementsTypesFollowers500PtPt extends TranslationsMisskeyAchievementsTypesFollowers500EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers500PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Torre de celular';
	@override String get description => 'Ganhe 500 seguidores';
}

// Path: misskey.achievements_.types_.followers1000_
class _TranslationsMisskeyAchievementsTypesFollowers1000PtPt extends TranslationsMisskeyAchievementsTypesFollowers1000EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1000PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Influencer';
	@override String get description => 'Ganhe 1 000 seguidores';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _TranslationsMisskeyAchievementsTypesCollectAchievements30PtPt extends TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_TranslationsMisskeyAchievementsTypesCollectAchievements30PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Coletor de Conquistas';
	@override String get description => 'Ganhe 30 conquistas';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _TranslationsMisskeyAchievementsTypesViewAchievements3minPtPt extends TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_TranslationsMisskeyAchievementsTypesViewAchievements3minPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Curte Conquistas';
	@override String get description => 'Olhe para a sua lista de conquistas por pelo menos 3 minutos';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _TranslationsMisskeyAchievementsTypesILoveMisskeyPtPt extends TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_TranslationsMisskeyAchievementsTypesILoveMisskeyPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eu Amo Misskey';
	@override String get description => 'Poste "I ❤ #Misskey"';
	@override String get flavor => 'A equipe de desenvolvimento do Misskey aprecia profundamente o seu apoio!';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _TranslationsMisskeyAchievementsTypesFoundTreasurePtPt extends TranslationsMisskeyAchievementsTypesFoundTreasureEnUs {
	_TranslationsMisskeyAchievementsTypesFoundTreasurePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Caça ao Tesouro';
	@override String get description => 'Você achou o tesouro escondido';
}

// Path: misskey.achievements_.types_.client30min_
class _TranslationsMisskeyAchievementsTypesClient30minPtPt extends TranslationsMisskeyAchievementsTypesClient30minEnUs {
	_TranslationsMisskeyAchievementsTypesClient30minPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pausinha';
	@override String get description => 'Deixe o Misskey aberto por pelo menos 30 minutos';
}

// Path: misskey.achievements_.types_.client60min_
class _TranslationsMisskeyAchievementsTypesClient60minPtPt extends TranslationsMisskeyAchievementsTypesClient60minEnUs {
	_TranslationsMisskeyAchievementsTypesClient60minPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sem falta';
	@override String get description => 'Deixe o Misskey aberto por pelo menos 60 minutos';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minPtPt extends TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Deixa pra lá';
	@override String get description => 'Exclua a postagem dentro de 1 minuto após a ter publicado';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _TranslationsMisskeyAchievementsTypesPostedAtLateNightPtPt extends TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAtLateNightPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Noturno';
	@override String get description => 'Poste uma nota tarde da noite';
	@override String get flavor => 'Tá na hora de ir dormir.';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _TranslationsMisskeyAchievementsTypesPostedAt0min0secPtPt extends TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAt0min0secPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Relógio Falante';
	@override String get description => 'Poste uma nota à meia-noite em ponto';
	@override String get flavor => 'Tic-Tac-Tic-Tac';
}

// Path: misskey.achievements_.types_.selfQuote_
class _TranslationsMisskeyAchievementsTypesSelfQuotePtPt extends TranslationsMisskeyAchievementsTypesSelfQuoteEnUs {
	_TranslationsMisskeyAchievementsTypesSelfQuotePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Autorreferência';
	@override String get description => 'Cite sua própria nota';
}

// Path: misskey.achievements_.types_.htl20npm_
class _TranslationsMisskeyAchievementsTypesHtl20npmPtPt extends TranslationsMisskeyAchievementsTypesHtl20npmEnUs {
	_TranslationsMisskeyAchievementsTypesHtl20npmPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Linha do Tempo Fluida';
	@override String get description => 'Faça a velocidade da linha do tempo exceder 20 npm (notas por minuto)';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _TranslationsMisskeyAchievementsTypesViewInstanceChartPtPt extends TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_TranslationsMisskeyAchievementsTypesViewInstanceChartPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analista';
	@override String get description => 'Veja os infográficos da instância';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadPtPt extends TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Olá, Mundo!';
	@override String get description => 'Produza "hello world" no Scratchpad';
}

// Path: misskey.achievements_.types_.open3windows_
class _TranslationsMisskeyAchievementsTypesOpen3windowsPtPt extends TranslationsMisskeyAchievementsTypesOpen3windowsEnUs {
	_TranslationsMisskeyAchievementsTypesOpen3windowsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Múlti-Janelas';
	@override String get description => 'Tenha ao mínimo 3 janelas abertas simultaneamente.';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferencePtPt extends TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_TranslationsMisskeyAchievementsTypesDriveFolderCircularReferencePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Referência circular';
	@override String get description => 'Tente criar uma pasta recursiva no Drive.';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _TranslationsMisskeyAchievementsTypesReactWithoutReadPtPt extends TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_TranslationsMisskeyAchievementsTypesReactWithoutReadPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Você leu tudo isso?';
	@override String get description => 'Reaja a uma nota com mais de 100 caracteres dentro de 3 segundos após a sua publicação.';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _TranslationsMisskeyAchievementsTypesClickedClickHerePtPt extends TranslationsMisskeyAchievementsTypesClickedClickHereEnUs {
	_TranslationsMisskeyAchievementsTypesClickedClickHerePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Clique aqui';
	@override String get description => 'Você clicou aqui';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _TranslationsMisskeyAchievementsTypesJustPlainLuckyPtPt extends TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_TranslationsMisskeyAchievementsTypesJustPlainLuckyPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pura Sorte';
	@override String get description => 'Tem uma chance de ser obtido com uma probabilidade de 0.005% a cada 10 segundos.';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _TranslationsMisskeyAchievementsTypesSetNameToSyuiloPtPt extends TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_TranslationsMisskeyAchievementsTypesSetNameToSyuiloPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Complexo de Deus';
	@override String get description => 'Colocar seu nome como "syuilo"';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1PtPt extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aniversário de Um Ano';
	@override String get description => 'Um ano passou-se desde a criação da conta';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2PtPt extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aniversário de Dois Anos';
	@override String get description => 'Dois anos passaram-se desde a criação da conta';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3PtPt extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3PtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aniversário de Três Anos';
	@override String get description => 'Três anos passaram-se desde a criação da conta';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayPtPt extends TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Feliz Aniversário';
	@override String get description => 'Entre no dia do seu aniversário';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayPtPt extends TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Feliz Ano Novo!';
	@override String get description => 'Entre no primeiro dia do ano';
	@override String get flavor => 'Para outro ótimo ano nessa instância';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _TranslationsMisskeyAchievementsTypesCookieClickedPtPt extends TranslationsMisskeyAchievementsTypesCookieClickedEnUs {
	_TranslationsMisskeyAchievementsTypesCookieClickedPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Um jogo onde você clica em cookies';
	@override String get description => 'Clicou o cookie';
	@override String get flavor => 'Pera, você tá no website correto?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _TranslationsMisskeyAchievementsTypesBrainDiverPtPt extends TranslationsMisskeyAchievementsTypesBrainDiverEnUs {
	_TranslationsMisskeyAchievementsTypesBrainDiverPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Poste o link do Brain Diver';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonPtPt extends TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Teste de Transbordamento';
	@override String get description => 'Ative o teste de notificações repetidamente dentro de um curto período de tempo';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _TranslationsMisskeyAchievementsTypesTutorialCompletedPtPt extends TranslationsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_TranslationsMisskeyAchievementsTypesTutorialCompletedPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Diploma de Ensino Fundamental Misskey';
	@override String get description => 'Complete o tutorial';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadPtPt extends TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => 'O maior objeto no Bubble Game';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadPtPt extends TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯 Duplo';
	@override String get description => 'Dois dos maiores objetos do Bubble Game ao mesmo tempo.';
	@override String get flavor => 'Dá para encher uma lancheira com esses 🤯🤯.';
}

// Path: misskey.pages_.blocks.note_
class _TranslationsMisskeyPagesBlocksNotePtPt extends TranslationsMisskeyPagesBlocksNoteEnUs {
	_TranslationsMisskeyPagesBlocksNotePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get id => 'ID da nota';
	@override String get idDescription => 'Você também pode colar o URL da nota aqui.';
	@override String get detailed => 'Visão detalhada';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypePtPt extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get mail => 'E-mail';
	@override String get webhook => 'Webhook';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsPtPt captions_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsPtPt._(_root);
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsPtPt extends TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Parâmetros inválidos';
	@override String get description => 'Não há informações suficientes para carregar dados do site externo. Por favor, confirme o URL inserido.';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedPtPt extends TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Esse recurso externo é incompatível';
	@override String get description => 'Esse tipo de recuso externo é incompatível. Por favor, comunique o administrador do site.';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchPtPt extends TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Não foi possível obter dados';
	@override String get fetchErrorDescription => 'Houve um erro ao comunicar com o site externo. Se tentar novamente não resolver o problema, contate o administrador do site.';
	@override String get parseErrorDescription => 'Houve um erro processando os dados do site externo. Por favor, contate o administrador do site.';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedPtPt extends TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Verificação de dados falhou';
	@override String get description => 'Houve um erro verificando a integridade do conteúdo obtido. Como medida de segurança, a instalação foi interrompida. Por favor, contate o administrador do site.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedPtPt extends TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Erro AiScript';
	@override String get description => 'Os dados solicitados foram obtidos com sucesso, mas houve um erro na leitura do AiScript. Por favor, contate o autor do plugin. Detalhes de erro podem ser vistos no console Javascript.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedPtPt extends TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'A instalação do plugin falhou.';
	@override String get description => 'Houve um problema na instalação do plugin. Por favor, tente novamente. Detalhes de erro podem ser vistos no console Javascript.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedPtPt extends TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Erro na leitura do tema';
	@override String get description => 'Os dados solicitados foram obtidos com sucesso, mas houve um erro na leitura do tema. Por favor, contate o autor do tema. Detalhes de erro podem ser vistos no console Javascript.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedPtPt extends TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Falha ao instalar tema';
	@override String get description => 'Houve um problema na instalação do tema. Por favor, tente novamente. Detalhes do erro podem ser vistos no console Javascript.';
}

// Path: misskey.customEmojisManager_.local_.list_
class _TranslationsMisskeyCustomEmojisManagerLocalListPtPt extends TranslationsMisskeyCustomEmojisManagerLocalListEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalListPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get emojisNothing => 'Não há Emojis registrados.';
	@override String get markAsDeleteTargetRows => 'Marcar linhas selecionadas para remoção';
	@override String get markAsDeleteTargetRanges => 'Marcar linhas no intervalo para remoção';
	@override String get alertUpdateEmojisNothingDescription => 'Não há Emojis atualizados.';
	@override String get alertDeleteEmojisNothingDescription => 'Não há Emojis marcados para remoção.';
	@override String get confirmMovePage => 'Deseja mudar de página?';
	@override String get confirmChangeView => 'Deseja mudar de seção?';
	@override String confirmUpdateEmojisDescription({required Object count}) => 'Atualizando ${count} Emoji(s). Deseja continuar?';
	@override String confirmDeleteEmojisDescription({required Object count}) => 'Removendo ${count} Emoji(s) marcado(s). Deseja continuar?';
	@override String get confirmResetDescription => 'Todas as mudanças serão redefinidas.';
	@override String get confirmMovePageDesciption => 'Mudanças foram feitas nos Emojis dessa página. Se você sair sem salvar, todas serão descartadas.';
	@override String get dialogSelectRoleTitle => 'Buscar por cargo que pode usar esse Emoji';
}

// Path: misskey.customEmojisManager_.local_.register_
class _TranslationsMisskeyCustomEmojisManagerLocalRegisterPtPt extends TranslationsMisskeyCustomEmojisManagerLocalRegisterEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalRegisterPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get uploadSettingTitle => 'Configurações de envio';
	@override String get uploadSettingDescription => 'Nessa tela, você pode configurar o comportamento ao enviar Emojis.';
	@override String get directoryToCategoryLabel => 'Transformar as pastas em categorias';
	@override String get directoryToCategoryCaption => 'Quando você arrastar um diretório, converter o caminho das pastas no campo "categoria".';
	@override String confirmRegisterEmojisDescription({required Object count}) => 'Registrando os Emojis da lista como novos Emojis personalizados. Deseja continuar? (Para evitar sobrecarga, apenas ${count} Emoji(s) podem ser registrados em uma única operação)';
	@override String get confirmClearEmojisDescription => 'Descartando edições e limpando Emojis da lista. Deseja continuar?';
	@override String confirmUploadEmojisDescription({required Object count}) => 'Enviando ${count} arquivo(s) arrastados ao drive. Deseja continuar?';
}

// Path: misskey.captcha_.error_.requestFailed_
class _TranslationsMisskeyCaptchaErrorRequestFailedPtPt extends TranslationsMisskeyCaptchaErrorRequestFailedEnUs {
	_TranslationsMisskeyCaptchaErrorRequestFailedPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'O pedido do CAPTCHA falhou';
	@override String get text => 'Por favor, tente novamente ou verifique as configurações.';
}

// Path: misskey.captcha_.error_.verificationFailed_
class _TranslationsMisskeyCaptchaErrorVerificationFailedPtPt extends TranslationsMisskeyCaptchaErrorVerificationFailedEnUs {
	_TranslationsMisskeyCaptchaErrorVerificationFailedPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'A validação do CAPTCHA falhou';
	@override String get text => 'Por favor, verifique se as configurações estão corretas.';
}

// Path: misskey.captcha_.error_.unknown_
class _TranslationsMisskeyCaptchaErrorUnknownPtPt extends TranslationsMisskeyCaptchaErrorUnknownEnUs {
	_TranslationsMisskeyCaptchaErrorUnknownPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Erro CAPTCHA';
	@override String get text => 'Houve um erro inexperado.';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _TranslationsMisskeyInitialTutorialPostNoteCwExampleNotePtPt extends TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwExampleNotePtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get cw => 'Isso irá te esfomear!';
	@override String get note => 'Acabei de comer um donut coberto de chocolate! 🍩😋';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_.captions_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsPtPt extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsPtPt._(TranslationsPtPt root) : this._root = root, super.internal(root);

	final TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Enviar o email aos endereços dos moderadores ao receber relatório de abuso.';
	@override String get webhook => 'Enviar uma notificação ao SystemWebhook quando você receber um resolver um relatório de abuso.';
}
