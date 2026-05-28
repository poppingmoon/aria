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
class TranslationsFrFr extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFrFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.frFr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <fr-FR>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsFrFr _root = this; // ignore: unused_field

	@override 
	TranslationsFrFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFrFr(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$aria$fr_FR aria = _Translations$aria$fr_FR._(_root);
	@override late final _Translations$misskey$fr_FR misskey = _Translations$misskey$fr_FR._(_root);
}

// Path: aria
class _Translations$aria$fr_FR extends Translations$aria$en_US {
	_Translations$aria$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Êtes-vous sûr·e de vouloir suivre '),
		name,
		const TextSpan(text: ' ?'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria est traduit dans différentes langues par des bénévoles. Vous pouvez contribuer à '),
		link,
		const TextSpan(text: '.'),
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' utilisateur(s) en ligne'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Renoté par '),
		user,
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Désirez-vous vous désabonner de '),
		name,
		const TextSpan(text: ' ?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' a dit quelque chose'),
	]);
	@override TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Note de '),
		name,
		const TextSpan(text: ' contenant des fichiers joints sensibles'),
	]);
}

// Path: misskey
class _Translations$misskey$fr_FR extends Translations$misskey$en_US {
	_Translations$misskey$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Français';
	@override String get headlineMisskey => 'Réseau relié par des notes';
	@override String get introMisskey => 'Bienvenue ! Misskey est un service de microblogage décentralisé, libre et ouvert.\nÉcrivez des « notes » et partagez ce qui se passe à l’instant présent, autour de vous avec les autres 📡\nLa fonction « réactions », vous permet également d’ajouter une réaction rapide aux notes des autres utilisateur·rice·s 👍\nExplorons un nouveau monde 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} est l\'un des services propulsés par la plateforme ouverte <b>Misskey</b> (appelée "instance Misskey").';
	@override String monthAndDay({required Object day, required Object month}) => '${day}/${month}';
	@override String get search => 'Rechercher';
	@override String get reset => 'Réinitialiser';
	@override String get notifications => 'Notifications';
	@override String get username => 'Nom d’utilisateur·rice';
	@override String get password => 'Mot de passe';
	@override String get initialPasswordForSetup => 'Mot de passe initial pour la configuration';
	@override String get initialPasswordIsIncorrect => 'Le mot de passe initial pour la configuration est incorrect';
	@override String get initialPasswordForSetupDescription => 'Utilisez le mot de passe que vous avez entré pour le fichier de configuration si vous avez installé Misskey vous-même.\nSi vous utilisez un service d\'hébergement Misskey, utilisez le mot de passe fourni.\nSi vous n\'avez pas défini de mot de passe, laissez le champ vide pour continuer.';
	@override String get forgotPassword => 'Mot de passe oublié';
	@override String get fetchingAsApObject => 'Récupération depuis le fédiverse …';
	@override String get ok => 'OK';
	@override String get gotIt => 'J’ai compris !';
	@override String get cancel => 'Annuler';
	@override String get noThankYou => 'Pas maintenant';
	@override String get enterUsername => 'Entrer un nom d’utilisateur·rice';
	@override String renotedBy({required Object user}) => 'Renoté par ${user}';
	@override String get noNotes => 'Aucune note';
	@override String get noNotifications => 'Aucune notification';
	@override String get instance => 'Instance';
	@override String get settings => 'Paramètres';
	@override String get notificationSettings => 'Paramètres des notifications ';
	@override String get basicSettings => 'Paramètres généraux';
	@override String get otherSettings => 'Paramètres avancés';
	@override String get openInWindow => 'Ouvrir dans une nouvelle fenêtre';
	@override String get profile => 'Profil';
	@override String get timeline => 'Fil';
	@override String get noAccountDescription => 'L’utilisateur·rice n’a pas encore renseigné de biographie de présentation sur son profil.';
	@override String get login => 'Se connecter';
	@override String get loggingIn => 'Connexion en cours';
	@override String get logout => 'Se déconnecter';
	@override String get signup => 'S’inscrire';
	@override String get uploading => 'Envoi en cours';
	@override String get save => 'Enregistrer';
	@override String get users => 'Utilisateur·rice·s';
	@override String get addUser => 'Ajouter un·e utilisateur·rice';
	@override String get favorite => 'Ajouter aux favoris';
	@override String get favorites => 'Favoris';
	@override String get unfavorite => 'Retirer des favoris';
	@override String get favorited => 'Ajouté à mes favoris';
	@override String get alreadyFavorited => 'Déjà ajouté aux favoris.';
	@override String get cantFavorite => 'Impossible d\'ajouter aux favoris.';
	@override String get pin => 'Épingler sur le profil';
	@override String get unpin => 'Désépingler';
	@override String get copyContent => 'Copier le contenu';
	@override String get copyLink => 'Copier le lien';
	@override String get copyRemoteLink => 'Copier le lien de la note';
	@override String get copyLinkRenote => 'Copier le lien de la renote';
	@override String get delete => 'Supprimer';
	@override String get deleteAndEdit => 'Supprimer et réécrire';
	@override String get deleteAndEditConfirm => 'Êtes-vous sûr de vouloir effacer cette note et la modifier ? Vous perdrez toutes les réactions, renotes et réponses.';
	@override String get addToList => 'Ajouter à une liste';
	@override String get addToAntenna => 'Ajouter à l’antenne';
	@override String get sendMessage => 'Envoyer un message';
	@override String get copyRSS => 'Copier le RSS';
	@override String get copyUsername => 'Copier le nom d’utilisateur·rice';
	@override String get copyUserId => 'Copier l\'identifiant de l\'utilisateur';
	@override String get copyNoteId => 'Copier l\'identifiant de la note';
	@override String get copyFileId => 'Copier l\'identifiant du fichier';
	@override String get copyFolderId => 'Copier l\'identifiant du dossier';
	@override String get copyProfileUrl => 'Copier l\'URL du profil';
	@override String get searchUser => 'Chercher un utilisateur';
	@override String get searchThisUsersNotes => 'Cherchez les notes de cet utilisateur';
	@override String get reply => 'Répondre';
	@override String get loadMore => 'Afficher plus …';
	@override String get showMore => 'Voir plus';
	@override String get showLess => 'Fermer';
	@override String get youGotNewFollower => 'Vous suit';
	@override String get receiveFollowRequest => 'Demande d’abonnement reçue';
	@override String get followRequestAccepted => 'La demande d’abonnement a été acceptée';
	@override String get mention => 'Mentionner';
	@override String get mentions => 'Mentions';
	@override String get directNotes => 'Notes directes';
	@override String get importAndExport => 'Import et export';
	@override String get import => 'Importer';
	@override String get export => 'Exporter';
	@override String get files => 'Fichiers';
	@override String get download => 'Télécharger';
	@override String driveFileDeleteConfirm({required Object name}) => 'Êtes-vous sûr·e de vouloir supprimer le fichier « ${name} » ? Les notes avec ce fichier joint seront aussi supprimées.';
	@override String unfollowConfirm({required Object name}) => 'Désirez-vous vous désabonner de ${name} ?';
	@override String cancelFollowRequestConfirm({required Object name}) => 'Est-te vous sur de vouloir annuler la demande de suivi de ${name} ?';
	@override String rejectFollowRequestConfirm({required Object name}) => 'Refuser la demande de suivi de ${name} ?';
	@override String get exportRequested => 'Vous avez demandé une exportation. L’opération pourrait prendre un peu de temps. Une fois terminée, le fichier sera ajouté au Drive.';
	@override String get importRequested => 'Vous avez initié un import. Cela pourrait prendre un peu de temps.';
	@override String get lists => 'Listes';
	@override String get noLists => 'Vous n’avez aucune liste';
	@override String get note => 'Note';
	@override String get notes => 'Notes';
	@override String get following => 'Abonnements';
	@override String get followers => 'Abonné·e·s';
	@override String get followsYou => 'Vous suit';
	@override String get createList => 'Créer une liste';
	@override String get manageLists => 'Gérer les listes';
	@override String get error => 'Erreur';
	@override String get somethingHappened => 'Une erreur est survenue';
	@override String get retry => 'Réessayer';
	@override String get pageLoadError => 'Le chargement de la page a échoué';
	@override String get pageLoadErrorDescription => 'Cela est généralement causé par le cache du navigateur ou par un problème réseau. Veuillez vider votre cache ou attendre un peu et réessayer.';
	@override String get serverIsDead => 'Le serveur ne répond pas. Patientez quelques instants puis essayez à nouveau.';
	@override String get youShouldUpgradeClient => 'Si la page ne s\'affiche pas correctement, rechargez-la pour mettre votre client à jour.';
	@override String get enterListName => 'Nom de la liste';
	@override String get privacy => 'Confidentialité';
	@override String get makeFollowManuallyApprove => 'Accepter manuellement les demandes d’abonnement';
	@override String get defaultNoteVisibility => 'Visibilité des notes par défaut';
	@override String get follow => 'S’abonner';
	@override String get followRequest => 'Demande d’abonnement';
	@override String get followRequests => 'Demandes d’abonnement';
	@override String get unfollow => 'Se désabonner';
	@override String get followRequestPending => 'Demande d\'abonnement en attente de confirmation';
	@override String get enterEmoji => 'Insérer un émoji';
	@override String get renote => 'Renoter';
	@override String get unrenote => 'Annuler la Renote';
	@override String get renoted => 'Renoté !';
	@override String renotedToX({required Object name}) => 'Renoté en ${name}';
	@override String get cantRenote => 'Ce message ne peut pas être renoté.';
	@override String get cantReRenote => 'Impossible de renoter une Renote.';
	@override String get quote => 'Citer';
	@override String get inChannelRenote => 'Renoter dans le canal';
	@override String get inChannelQuote => 'Citer dans le canal';
	@override String get renoteToChannel => 'Renoter sur le canal';
	@override String get renoteToOtherChannel => 'Renoter sur un autre canal';
	@override String get pinnedNote => 'Note épinglée';
	@override String get pinned => 'Épingler sur le profil';
	@override String get you => 'Vous';
	@override String get clickToShow => 'Cliquer pour afficher';
	@override String get sensitive => 'Contenu sensible';
	@override String get add => 'Ajouter';
	@override String get reaction => 'Réactions';
	@override String get reactions => 'Réactions';
	@override String get emojiPicker => 'Sélecteur d’émojis';
	@override String get pinnedEmojisForReactionSettingDescription => 'Vous pouvez définir les émojis épinglés lors de la réaction';
	@override String get pinnedEmojisSettingDescription => 'Vous pouvez définir les émojis épinglés lors de la saisie de l\'émoji';
	@override String get emojiPickerDisplay => 'Affichage du sélecteur d\'émojis';
	@override String get overwriteFromPinnedEmojisForReaction => 'Remplacer par les émojis épinglés pour la réaction';
	@override String get overwriteFromPinnedEmojis => 'Remplacer par les émojis épinglés globalement';
	@override String get reactionSettingDescription2 => 'Déplacer pour réorganiser, cliquer pour effacer, utiliser « + » pour ajouter.';
	@override String get rememberNoteVisibility => 'Se souvenir de la visibilité des notes';
	@override String get attachCancel => 'Supprimer le fichier joint';
	@override String get deleteFile => 'Fichier supprimé';
	@override String get markAsSensitive => 'Marquer comme sensible';
	@override String get unmarkAsSensitive => 'Supprimer le marquage comme sensible';
	@override String get enterFileName => 'Entrer le nom du fichier';
	@override String get mute => 'Masquer';
	@override String get unmute => 'Ne plus masquer';
	@override String get renoteMute => 'Masquer les renotes';
	@override String get renoteUnmute => 'Ne plus masquer les renotes';
	@override String get block => 'Bloquer';
	@override String get unblock => 'Débloquer';
	@override String get suspend => 'Suspendre';
	@override String get unsuspend => 'Annuler la suspension';
	@override String get blockConfirm => 'Êtes-vous sûr·e de vouloir bloquer ce compte ?';
	@override String get unblockConfirm => 'Êtes-vous sûr·e de vouloir débloquer ce compte ?';
	@override String get suspendConfirm => 'Êtes-vous sûr·e de vouloir suspendre ce compte ?';
	@override String get unsuspendConfirm => 'Êtes-vous sûr·e de vouloir annuler la suspension de ce compte ?';
	@override String get selectList => 'Sélectionner une liste';
	@override String get editList => 'Modifier la liste';
	@override String get selectChannel => 'Sélectionner un canal';
	@override String get selectAntenna => 'Sélectionner une antenne';
	@override String get editAntenna => 'Modifier l\'antenne';
	@override String get createAntenna => 'Créer une antenne';
	@override String get selectWidget => 'Sélectionner un widget';
	@override String get editWidgets => 'Modifier les widgets';
	@override String get editWidgetsExit => 'Valider les modifications';
	@override String get customEmojis => 'Émojis personnalisés';
	@override String get emoji => 'Émoji';
	@override String get emojis => 'Émoji';
	@override String get emojiName => 'Nom de l’émoji';
	@override String get emojiUrl => 'URL de l’émoji';
	@override String get addEmoji => 'Ajouter un émoji';
	@override String get settingGuide => 'Configuration proposée';
	@override String get cacheRemoteFiles => 'Mise en cache des fichiers distants';
	@override String get cacheRemoteFilesDescription => 'Lorsque cette option est désactivée, les fichiers distants sont chargés directement depuis l’instance distante. La désactiver diminuera certes l’utilisation de l’espace de stockage local mais augmentera le trafic réseau puisque les miniatures ne seront plus générées.';
	@override String get youCanCleanRemoteFilesCache => 'Vous pouvez supprimer tous les caches en cliquant le bouton 🗑️ dans la gestion des fichiers.';
	@override String get cacheRemoteSensitiveFiles => 'Mettre en cache les fichiers distants sensibles';
	@override String get cacheRemoteSensitiveFilesDescription => 'Si vous désactivez ce paramètre, les fichiers sensibles distants ne seront pas mis en cache et un lien direct sera utilisé à la place';
	@override String get flagAsBot => 'Ce compte est un robot';
	@override String get flagAsBotDescription => 'Si ce compte est géré de manière automatisée, choisissez cette option. Si elle est activée, elle agira comme un marqueur pour les autres développeurs afin d\'éviter des chaînes d\'interaction sans fin avec d\'autres robots et d\'ajuster les systèmes internes de Misskey pour traiter ce compte comme un robot.';
	@override String get flagAsCat => 'Ce compte est un chat';
	@override String get flagAsCatDescription => 'Miaou miaou miaou ?';
	@override String get flagShowTimelineReplies => 'Afficher les réponses dans le fil';
	@override String get flagShowTimelineRepliesDescription => 'Affiche les réponses des utilisateurs aux notes des autres utilisateurs dans la timeline si cette option est activée.';
	@override String get autoAcceptFollowed => 'Accepter automatiquement les demandes d’abonnement venant d’utilisateur·rice·s que vous suivez';
	@override String get addAccount => 'Ajouter un compte';
	@override String get reloadAccountsList => 'Rafraichir la liste des comptes';
	@override String get loginFailed => 'Échec de la connexion';
	@override String get showOnRemote => 'Voir sur l’instance distante';
	@override String get continueOnRemote => 'Continuer sur l\'instance distante';
	@override String get general => 'Général';
	@override String get wallpaper => 'Fond d’écran';
	@override String get setWallpaper => 'Définir le fond d’écran';
	@override String get removeWallpaper => 'Supprimer le fond d’écran';
	@override String searchWith({required Object q}) => 'Recherche : ${q}';
	@override String get youHaveNoLists => 'Vous n’avez aucune liste';
	@override String followConfirm({required Object name}) => 'Êtes-vous sûr·e de vouloir suivre ${name} ?';
	@override String get proxyAccount => 'Compte proxy';
	@override String get proxyAccountDescription => 'Un compte proxy se comporte, dans certaines conditions, comme un·e abonné·e distant·e pour les utilisateurs d\'autres instances. Par exemple, quand un·e utilisateur·rice ajoute un·e utilisateur·rice distant·e à une liste, ses notes ne seront pas visibles sur l\'instance si personne ne suit cet·te utilisateur·rice. Le compte proxy va donc suivre cet·te utilisateur·rice pour que ses notes soient acheminées.';
	@override String get host => 'Serveur distant';
	@override String get selectSelf => 'Sélectionner manuellement';
	@override String get selectUser => 'Sélectionner un·e utilisateur·rice';
	@override String get recipient => 'Destinataire';
	@override String get annotation => 'Commentaires';
	@override String get federation => 'Fédération';
	@override String get instances => 'Instances';
	@override String get registeredAt => 'Premier contact le';
	@override String get latestRequestReceivedAt => 'Dernière requête reçue';
	@override String get latestStatus => 'Dernier statut';
	@override String get storageUsage => 'Stockage utilisé';
	@override String get charts => 'Graphiques';
	@override String get perHour => 'par heure';
	@override String get perDay => 'par jour';
	@override String get stopActivityDelivery => 'Arrêter l’envoi de l’activité';
	@override String get blockThisInstance => 'Bloquer cette instance';
	@override String get silenceThisInstance => 'Mettre cette instance en sourdine';
	@override String get operations => 'Opérations';
	@override String get software => 'Logiciel';
	@override String get softwareName => 'Nom du logiciel';
	@override String get version => 'Version';
	@override String get metadata => 'Métadonnées';
	@override String withNFiles({required Object n}) => '${n} fichier(s)';
	@override String get monitor => 'Contrôle';
	@override String get jobQueue => 'File d’attente';
	@override String get cpuAndMemory => 'Processeur et mémoire';
	@override String get network => 'Réseau';
	@override String get disk => 'Disque';
	@override String get instanceInfo => 'Informations sur l’instance';
	@override String get statistics => 'Statistiques';
	@override String get clearQueue => 'Vider la file d’attente';
	@override String get clearQueueConfirmTitle => 'Êtes-vous sûr·e de vouloir vider la file d’attente ?';
	@override String get clearQueueConfirmText => 'Les notes non distribuées ne seront pas délivrées. Normalement, vous n\'avez pas besoin d\'effectuer cette opération.';
	@override String get clearCachedFiles => 'Vider le cache';
	@override String get clearCachedFilesConfirm => 'Êtes-vous sûr·e de vouloir vider tout le cache de fichiers distants ?';
	@override String get blockedInstances => 'Instances bloquées';
	@override String get blockedInstancesDescription => 'Listez les instances que vous désirez bloquer, une par ligne. Ces instances ne seront plus en capacité d\'interagir avec votre instance.';
	@override String get silencedInstances => 'Instances mises en sourdine';
	@override String get silencedInstancesDescription => 'Énumérer les noms d\'hôte des instances à mettre en sourdine. Tous les comptes des instances énumérées seront traités comme mis en sourdine, ne peuvent faire que des demandes de suivi et ne peuvent pas mentionner les comptes locaux s\'ils ne sont pas suivis. Cela n\'affectera pas les instances bloquées.';
	@override String get mediaSilencedInstances => 'Médias silencieux sur ces instances';
	@override String get mediaSilencedInstancesDescription => 'Liste des noms de serveurs où vous voulez que les médias soient silencieux, séparés par un retour à la ligne.\nTous les comptes des instances listées seront considérés comme sensibles, et ne peuvent pas utilisés d\'émojis personnalisés. Ceci n\'affectera pas les serveurs bloquées.';
	@override String get federationAllowedHosts => 'Serveurs qui autorisent la fédération';
	@override String get muteAndBlock => 'Masqué·e·s / Bloqué·e·s';
	@override String get mutedUsers => 'Utilisateur·rice·s en sourdine';
	@override String get blockedUsers => 'Utilisateur·rice·s bloqué·e·s';
	@override String get noUsers => 'Il n’y a pas d’utilisateur·rice·s';
	@override String get editProfile => 'Modifier votre profil';
	@override String get noteDeleteConfirm => 'Êtes-vous sûr·e de vouloir supprimer cette note ?';
	@override String get pinLimitExceeded => 'Vous ne pouvez plus épingler d’autres notes.';
	@override String get done => 'Terminé';
	@override String get processing => 'Traitement en cours';
	@override String get preview => 'Aperçu';
	@override String get default_ => 'Par défaut';
	@override String defaultValueIs({required Object value}) => 'Par défaut : ${value}';
	@override String get noCustomEmojis => 'Il n\'y a pas d’émoji';
	@override String get noJobs => 'Il n’y a aucune tâche planifiée';
	@override String get federating => 'En cours de fédération';
	@override String get blocked => 'Bloqué·e';
	@override String get suspended => 'Suspendu·e';
	@override String get all => 'Tous';
	@override String get subscribing => 'Abonné';
	@override String get publishing => 'Publié';
	@override String get notResponding => 'Ne répond pas';
	@override String get instanceFollowing => 'Abonnements de l\'instance';
	@override String get instanceFollowers => 'Abonné·e·s de l’instance';
	@override String get instanceUsers => 'Utilisateur·rice·s de cette l’instance';
	@override String get changePassword => 'Modifier votre mot de passe';
	@override String get security => 'Sécurité';
	@override String get retypedNotMatch => 'Les saisies ne correspondent pas.';
	@override String get currentPassword => 'Mot de passe actuel';
	@override String get newPassword => 'Nouveau mot de passe';
	@override String get newPasswordRetype => 'Répéter le nouveau mot de passe';
	@override String get attachFile => 'Joindre un fichier';
	@override String get more => 'Plus !';
	@override String get featured => 'Tendances';
	@override String get usernameOrUserId => 'Nom d’utilisateur·rice ou ID utilisateur';
	@override String get noSuchUser => 'Utilisateur·rice non trouvé·e';
	@override String get lookup => 'Recherche';
	@override String get announcements => 'Annonces';
	@override String get imageUrl => 'URL de l’image';
	@override String get remove => 'Supprimer';
	@override String get removed => 'Supprimé';
	@override String removeAreYouSure({required Object x}) => 'Êtes-vous sûr·e de vouloir supprimer « ${x} » ?';
	@override String deleteAreYouSure({required Object x}) => 'Êtes-vous sûr·e de vouloir supprimer « ${x} » ?';
	@override String get resetAreYouSure => 'Voulez-vous réinitialiser ?';
	@override String get areYouSure => 'Êtes-vous sûr·e ?';
	@override String get saved => 'Enregistré';
	@override String get upload => 'Téléverser';
	@override String get keepOriginalUploading => 'Garder l’image d’origine';
	@override String get keepOriginalUploadingDescription => 'Conserve la version originale lors du téléchargement d\'images. S\'il est désactivé, le navigateur génère l\'image pour la publication web lors du téléchargement.';
	@override String get fromDrive => 'Depuis le Disque';
	@override String get fromUrl => 'Depuis une URL';
	@override String get uploadFromUrl => 'Téléverser via une URL';
	@override String get uploadFromUrlDescription => 'URL du fichier que vous souhaitez téléverser';
	@override String get uploadFromUrlRequested => 'Téléversement demandé';
	@override String get uploadFromUrlMayTakeTime => 'Le téléversement de votre fichier peut prendre un certain temps.';
	@override String get explore => 'Découvrir';
	@override String get messageRead => 'Lu';
	@override String get noMoreHistory => 'Il n’y a plus d’historique';
	@override String nUsersRead({required Object n}) => 'Lu par ${n} personnes';
	@override String agreeTo({required Object x0}) => 'J’accepte ${x0}';
	@override String get agree => 'Accepter';
	@override String get agreeBelow => 'J’accepte ce qui suit';
	@override String get basicNotesBeforeCreateAccount => 'Notes importantes';
	@override String get termsOfService => 'Conditions d\'utilisation';
	@override String get start => 'Commencer';
	@override String get home => 'Principal';
	@override String get remoteUserCaution => 'Les informations de ce compte risqueraient d’être incomplètes du fait que l’utilisateur·rice provient d’une instance distante.';
	@override String get activity => 'Activité';
	@override String get images => 'Images';
	@override String get image => 'Images';
	@override String get birthday => 'Date de naissance';
	@override String yearsOld({required Object age}) => '${age} ans';
	@override String get registeredDate => 'Inscrit le';
	@override String get location => 'Localisation';
	@override String get theme => 'Thème';
	@override String get themeForLightMode => 'Thème à utiliser en Mode Clair';
	@override String get themeForDarkMode => 'Thème à utiliser en Mode Sombre';
	@override String get light => 'Clair';
	@override String get dark => 'Sombre';
	@override String get lightThemes => 'Thèmes clairs';
	@override String get darkThemes => 'Thèmes sombres';
	@override String get syncDeviceDarkMode => 'Utiliser le mode sombre de votre appareil';
	@override String get drive => 'Disque';
	@override String get fileName => 'Nom du fichier';
	@override String get selectFile => 'Choisir le fichier';
	@override String get selectFiles => 'Choisir les fichiers';
	@override String get selectFolder => 'Sélectionnez un dossier';
	@override String get selectFolders => 'Sélectionnez des dossiers';
	@override String get renameFile => 'Renommer le fichier';
	@override String get folderName => 'Nom du dossier';
	@override String get createFolder => 'Créer un dossier';
	@override String get renameFolder => 'Renommer le dossier';
	@override String get deleteFolder => 'Supprimer le dossier';
	@override String get folder => 'Dossier';
	@override String get addFile => 'Ajouter un fichier';
	@override String get showFile => 'Voir les fichiers';
	@override String get emptyDrive => 'Le Disque est vide';
	@override String get emptyFolder => 'Le dossier est vide';
	@override String get unableToDelete => 'Suppression impossible';
	@override String get inputNewFileName => 'Entrez un nouveau nom de fichier';
	@override String get inputNewDescription => 'Veuillez entrer une nouvelle description';
	@override String get inputNewFolderName => 'Entrez un nouveau nom de dossier';
	@override String get circularReferenceFolder => 'Le dossier de destination est un sous-dossier du dossier que vous souhaitez déplacer.';
	@override String get hasChildFilesOrFolders => 'Impossible de supprimer ce dossier car il n\'est pas vide.';
	@override String get copyUrl => 'Copier l’URL';
	@override String get rename => 'Renommer';
	@override String get avatar => 'Avatar';
	@override String get banner => 'Bannière';
	@override String get displayOfSensitiveMedia => 'Afficher les médias sensibles';
	@override String get whenServerDisconnected => 'Lorsque la connexion au serveur est perdue';
	@override String get disconnectedFromServer => 'Déconnecté·e du serveur';
	@override String get reload => 'Rafraîchir';
	@override String get doNothing => 'Ignorer';
	@override String get reloadConfirm => 'Voulez-vous recharger?';
	@override String get watch => 'Surveiller';
	@override String get unwatch => 'Ne plus surveiller';
	@override String get accept => 'Autoriser';
	@override String get reject => 'Refuser';
	@override String get normal => 'Normal';
	@override String get instanceName => 'Nom de l’instance';
	@override String get instanceDescription => 'Description de l’instance';
	@override String get maintainerName => 'L’administrateur·rice';
	@override String get maintainerEmail => 'Email de l’administrateur·rice';
	@override String get tosUrl => 'URL des conditions d’utilisation';
	@override String get thisYear => 'Cette année';
	@override String get thisMonth => 'Ce mois-ci';
	@override String get today => 'Aujourd’hui';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => '${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'Pages';
	@override String get integration => 'Intégrations';
	@override String get connectService => 'Connexion';
	@override String get disconnectService => 'Déconnexion';
	@override String get enableLocalTimeline => 'Activer le fil local';
	@override String get enableGlobalTimeline => 'Activer le fil global';
	@override String get disablingTimelinesInfo => 'Même si vous désactivez ces fils, les administrateur·rice·s et les modérateur·rice·s pourront toujours y accéder.';
	@override String get registration => 'S’inscrire';
	@override String get invite => 'Inviter';
	@override String get driveCapacityPerLocalAccount => 'Capacité de stockage du Disque par utilisateur local';
	@override String get driveCapacityPerRemoteAccount => 'Capacité de stockage du Disque par utilisateur distant';
	@override String get inMb => 'en mégaoctets';
	@override String get bannerUrl => 'URL de l’image de la bannière';
	@override String get backgroundImageUrl => 'URL de l\'image d\'arrière-plan';
	@override String get basicInfo => 'Informations basiques';
	@override String get pinnedUsers => 'Utilisateur·rice épinglé·e';
	@override String get pinnedUsersDescription => 'Listez les utilisateur·rice·s que vous souhaitez voir épinglé·e·s sur la page "Découvrir", un·e par ligne.';
	@override String get pinnedPages => 'Pages épinglées';
	@override String get pinnedPagesDescription => 'Inscrivez le chemin des pages que vous souhaitez épingler en haut de la page de l\'instance. Séparez les pages d\'un retour à la ligne.';
	@override String get pinnedClipId => 'Identifiant du clip épinglé';
	@override String get pinnedNotes => 'Note épinglée';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'Activer hCaptcha';
	@override String get hcaptchaSiteKey => 'Clé du site';
	@override String get hcaptchaSecretKey => 'Clé secrète';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => 'Activer mCaptcha';
	@override String get mcaptchaSiteKey => 'Clé du site';
	@override String get mcaptchaSecretKey => 'Clé secrète';
	@override String get mcaptchaInstanceUrl => 'URL de l\'instance de mCaptcha';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'Activer reCAPTCHA';
	@override String get recaptchaSiteKey => 'Clé du site';
	@override String get recaptchaSecretKey => 'Clé secrète';
	@override String get turnstile => 'Tourniquet';
	@override String get enableTurnstile => 'Activer le tourniquet';
	@override String get turnstileSiteKey => 'Clé du site';
	@override String get turnstileSecretKey => 'Clé secrète';
	@override String get avoidMultiCaptchaConfirm => 'L’utilisation de plusieurs Captchas peut provoquer des interférences. Souhaitez-vous désactiver l’autre Captcha ? Vous pouvez laisser plusieurs Captcha activés en appuyant sur Annuler.';
	@override String get antennas => 'Antennes';
	@override String get manageAntennas => 'Gestion des antennes';
	@override String get name => 'Nom';
	@override String get antennaSource => 'Source de l’antenne';
	@override String get antennaKeywords => 'Mots clés à recevoir';
	@override String get antennaExcludeKeywords => 'Mots clés à exclure';
	@override String get antennaExcludeBots => 'Exclure les comptes robot';
	@override String get antennaKeywordsDescription => 'Séparer avec des espaces pour la condition AND. Séparer avec un saut de ligne pour une condition OR.';
	@override String get notifyAntenna => 'Me notifier pour les nouvelles notes';
	@override String get withFileAntenna => 'Notes ayant des fichiers joints uniquement';
	@override String get enableServiceworker => 'Activer ServiceWorker';
	@override String get antennaUsersDescription => 'Saisissez un seul nom d’utilisateur·rice par ligne';
	@override String get caseSensitive => 'Sensible à la casse';
	@override String get withReplies => 'Inclure les réponses';
	@override String get connectedTo => 'Vous êtes connectés aux services suivants';
	@override String get notesAndReplies => 'Notes et Réponses';
	@override String get withFiles => 'Avec fichiers joints';
	@override String get silence => 'Mettre en sourdine';
	@override String get silenceConfirm => 'Êtes-vous sûr·e de vouloir mettre l’utilisateur·rice en sourdine ?';
	@override String get unsilence => 'Annuler la sourdine';
	@override String get unsilenceConfirm => 'Êtes-vous sûr·e de vouloir annuler la mise en sourdine de cet·te utilisateur·rice ?';
	@override String get popularUsers => 'Utilisateur·rice·s populaires';
	@override String get recentlyUpdatedUsers => 'Utilisateur·rice·s actif·ve·s récemment';
	@override String get recentlyRegisteredUsers => 'Utilisateur·rice·s récemment inscrit·e·s';
	@override String get recentlyDiscoveredUsers => 'Utilisateur·rice·s récemment découvert·e·s';
	@override String exploreUsersCount({required Object count}) => 'Il y a ${count} utilisateur·rice·s';
	@override String get exploreFediverse => 'Explorer le Fediverse';
	@override String get popularTags => 'Mots-clés populaires';
	@override String get userList => 'Listes';
	@override String get about => 'Informations';
	@override String get aboutMisskey => 'À propos de Misskey';
	@override String get administrator => 'Administrateur';
	@override String get token => 'Jeton';
	@override String get x2fa => 'Authentification à deux facteurs';
	@override String get setupOf2fa => 'Configuration de l’authentification à deux facteurs';
	@override String get totp => 'Application d\'authentification';
	@override String get totpDescription => 'Entrer un mot de passe à usage unique à l\'aide d\'une application d\'authentification';
	@override String get moderator => 'Modérateur·rice·s';
	@override String get moderation => 'Modérations';
	@override String get moderationNote => 'Note de modération';
	@override String get moderationNoteDescription => 'Vous pouvez remplir des notes qui seront partagés seulement entre modérateurs.';
	@override String get addModerationNote => 'Ajouter une note de modération';
	@override String get moderationLogs => 'Journal de modération';
	@override String nUsersMentioned({required Object n}) => '${n} utilisateur·rice·s mentionné·e·s';
	@override String get securityKeyAndPasskey => 'Sécurité et clés de sécurité';
	@override String get securityKey => 'Clé de sécurité';
	@override String get lastUsed => 'Dernier utilisé';
	@override String lastUsedAt({required Object t}) => 'Dernière utilisation : ${t}';
	@override String get unregister => 'Se désinscrire';
	@override String get passwordLessLogin => 'Se connecter sans mot de passe';
	@override String get passwordLessLoginDescription => 'Se connecter uniquement avec une clé de sécurité ou une clé d\'accès sans utiliser de mot de passe';
	@override String get resetPassword => 'Réinitialiser le mot de passe';
	@override String newPasswordIs({required Object password}) => 'Votre nouveau mot de passe est "${password}"';
	@override String get reduceUiAnimation => 'Réduire les animations dans l’interface';
	@override String get share => 'Partager';
	@override String get notFound => 'Non trouvé';
	@override String get notFoundDescription => 'Aucune page ne correspond à l’URL spécifiée.';
	@override String get uploadFolder => 'Emplacement de téléversement par défaut';
	@override String get markAsReadAllNotifications => 'Marquer toutes les notifications comme lues';
	@override String get markAsReadAllUnreadNotes => 'Marquer toutes les notes comme lues';
	@override String get markAsReadAllTalkMessages => 'Marquer toutes les discussions comme lues';
	@override String get help => 'Aide';
	@override String get inputMessageHere => 'Écrivez votre message ici';
	@override String get close => 'Fermer';
	@override String get invites => 'Invitations';
	@override String get members => 'Membres';
	@override String get transfer => 'Transférer';
	@override String get title => 'Titre';
	@override String get text => 'Texte';
	@override String get enable => 'Activer';
	@override String get next => 'Suivant';
	@override String get retype => 'Confirmation';
	@override String noteOf({required Object user}) => 'Notes de ${user}';
	@override String get quoteAttached => 'Avec citation';
	@override String get quoteQuestion => 'Souhaitez-vous ajouter une citation ?';
	@override String get onlyOneFileCanBeAttached => 'Vous ne pouvez joindre qu’un seul fichier au message';
	@override String get signinRequired => 'Veuillez vous connecter';
	@override String get invitations => 'Invitations';
	@override String get invitationCode => 'Code d’invitation';
	@override String get checking => 'Vérification en cours...';
	@override String get available => 'Disponible';
	@override String get unavailable => 'Non disponible';
	@override String get usernameInvalidFormat => 'Le nom d\'utilisateur peut contenir uniquement des lettres (minuscules et/ou majuscules), des chiffres et des _';
	@override String get tooShort => 'Trop court';
	@override String get tooLong => 'Trop long';
	@override String get weakPassword => 'Mot de passe faible';
	@override String get normalPassword => 'Mot de passe acceptable';
	@override String get strongPassword => 'Mot de passe fort';
	@override String get passwordMatched => 'Les mots de passe correspondent';
	@override String get passwordNotMatched => 'Les mots de passe ne correspondent pas';
	@override String signinWith({required Object x}) => 'Se connecter avec ${x}';
	@override String get signinFailed => 'Échec d’authentification. Veuillez vérifier que votre nom d’utilisateur et mot de passe sont corrects.';
	@override String get or => 'OU';
	@override String get language => 'Langue';
	@override String get uiLanguage => 'Langue d’affichage de l’interface';
	@override String aboutX({required Object x}) => 'À propos de ${x}';
	@override String get emojiStyle => 'Style des émojis';
	@override String get native => 'Natif';
	@override String get menuStyle => 'Style du menu';
	@override String get style => 'Style';
	@override String get drawer => 'Sélecteur';
	@override String get popup => 'Pop-up';
	@override String get showNoteActionsOnlyHover => 'Afficher les actions de note uniquement au survol';
	@override String get showReactionsCount => 'Afficher le nombre de réactions des notes';
	@override String get noHistory => 'Pas d\'historique';
	@override String get signinHistory => 'Historique de connexion';
	@override String get enableAdvancedMfm => 'Activer la MFM avancée';
	@override String get enableAnimatedMfm => 'Activer le MFM animé';
	@override String get doing => 'En cours...';
	@override String get category => 'Catégorie';
	@override String get tags => 'Étiquettes';
	@override String get docSource => 'Source de ce document';
	@override String get createAccount => 'Créer un compte';
	@override String get existingAccount => 'Compte existant';
	@override String get regenerate => 'Générer à nouveau';
	@override String get fontSize => 'Taille de la police';
	@override String get mediaListWithOneImageAppearance => 'Hauteur des listes de médias n\'ayant qu\'une image ';
	@override String limitTo({required Object x}) => 'Limiter à ${x}';
	@override String get noFollowRequests => 'Vous n’avez aucune demande d’abonnement en attente';
	@override String get openImageInNewTab => 'Ouvrir les images dans un nouvel onglet';
	@override String get dashboard => 'Tableau de bord';
	@override String get local => 'Local';
	@override String get remote => 'Distant';
	@override String get total => 'Total';
	@override String get weekOverWeekChanges => 'Hebdomadaire';
	@override String get dayOverDayChanges => 'Journalier';
	@override String get appearance => 'Apparence';
	@override String get clientSettings => 'Paramètres du client';
	@override String get accountSettings => 'Paramètres du compte';
	@override String get promotion => 'Promu';
	@override String get promote => 'Promouvoir';
	@override String get numberOfDays => 'Nombre de jours';
	@override String get hideThisNote => 'Masquer cette note';
	@override String get showFeaturedNotesInTimeline => 'Afficher les notes des Tendances dans le fil d\'actualité';
	@override String get objectStorage => 'Stockage d\'objets';
	@override String get useObjectStorage => 'Utiliser le stockage d\'objets';
	@override String get objectStorageBaseUrl => 'URL de base';
	@override String get objectStorageBaseUrlDesc => 'Préfixe d’URL utilisé pour construire l’URL vers le référencement d’objet (média). Spécifiez son URL si vous utilisez un CDN ou un proxy, sinon spécifiez l’adresse accessible au public selon le guide de service que vous allez utiliser. P.ex. \'https://<bucket>.s3.amazonaws.com\' pour AWS S3 et \'https://storage.googleapis.com/<bucket>\' pour GCS.';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => 'Veuillez spécifier le nom du compartiment utilisé sur le service configuré.';
	@override String get objectStoragePrefix => 'Prefix';
	@override String get objectStoragePrefixDesc => 'Les fichiers seront stockés sous le répertoire de ce préfixe.';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageEndpointDesc => 'Laissez ce champ vide si vous utilisez AWS S3, sinon spécifiez le point de terminaison comme \'<host>\' ou \'<host>: <port>\' selon le guide de service que vous allez utiliser.';
	@override String get objectStorageRegion => 'Région';
	@override String get objectStorageRegionDesc => 'Spécifiez une région comme \'xx-east-1\'. Si votre service ne fait pas de distinction entre les régions, laissez-le vide ou remplissez \'us-east-1\'.';
	@override String get objectStorageUseSSL => 'Utiliser SSL';
	@override String get objectStorageUseSSLDesc => 'Désactivez cette option si vous n\'utilisez pas HTTPS pour la connexion API';
	@override String get objectStorageUseProxy => 'Se connecter via proxy';
	@override String get objectStorageUseProxyDesc => 'Désactivez cette option si vous n\'utilisez pas de proxy pour la connexion API';
	@override String get objectStorageSetPublicRead => 'Régler sur « public » lors de l\'envoi';
	@override String get s3ForcePathStyleDesc => 'Si s3ForcePathStyle est activé, le nom du compartiment doit être spécifié comme une partie du chemin de l\'URL plutôt que le nom d\'hôte. Il faudra peut-être l\'activer lors de l\'utilisation d\'une instance de Minio autohébergée, etc.';
	@override String get serverLogs => 'Journal du serveur';
	@override String get deleteAll => 'Supprimer tout';
	@override String get showFixedPostForm => 'Afficher le formulaire de publication en haut du fil d\'actualité';
	@override String get showFixedPostFormInChannel => 'Afficher le formulaire de publication en haut du fil (canaux)';
	@override String get withRepliesByDefaultForNewlyFollowed => 'Afficher les réponses des nouvelles personnes que vous suivez dans le fil par défaut';
	@override String get newNoteRecived => 'Voir les nouvelles notes';
	@override String get sounds => 'Sons';
	@override String get sound => 'Sons';
	@override String get listen => 'Écouter';
	@override String get none => 'Rien';
	@override String get showInPage => 'Afficher dans la page';
	@override String get popout => 'Fenêtre contextuelle';
	@override String get volume => 'Volume';
	@override String get masterVolume => 'Volume principal';
	@override String get notUseSound => 'Ne pas émettre de son';
	@override String get useSoundOnlyWhenActive => 'Émettre des sons uniquement quand Misskey est active';
	@override String get details => 'Détails';
	@override String get chooseEmoji => 'Choisissez un émoji';
	@override String get unableToProcess => 'L’opération n’a pas pu être complétée.';
	@override String get recentUsed => 'Utilisé récemment';
	@override String get install => 'Installation';
	@override String get uninstall => 'Désinstaller';
	@override String get installedApps => 'Applications installées';
	@override String get nothing => 'Il n\'y a rien à voir ici';
	@override String get installedDate => 'Date d\'installation';
	@override String get lastUsedDate => 'Dernière utilisation';
	@override String get state => 'État';
	@override String get sort => 'Trier';
	@override String get ascendingOrder => 'Ascendant';
	@override String get descendingOrder => 'Descendant';
	@override String get scratchpad => 'ScratchPad';
	@override String get scratchpadDescription => 'ScratchPad fournit un environnement expérimental pour AiScript. Vous pouvez vérifier la rédaction de votre code, sa bonne exécution et le résultat de son interaction avec Misskey.';
	@override String get uiInspector => 'Inspecteur UI';
	@override String get output => 'Sortie';
	@override String get script => 'Script';
	@override String get disablePagesScript => 'Désactiver AiScript sur les Pages';
	@override String get updateRemoteUser => 'Mettre à jour les informations de l’utilisateur·rice distant·e';
	@override String get unsetUserAvatar => 'Supprimer l’avatar';
	@override String get unsetUserAvatarConfirm => 'Êtes-vous sûr·e de vouloir supprimer l\'avatar ?';
	@override String get unsetUserBanner => 'Supprimer la bannière';
	@override String get unsetUserBannerConfirm => 'Êtes-vous sûr·e de vouloir supprimer la bannière ?';
	@override String get deleteAllFiles => 'Supprimer tous les fichiers';
	@override String get deleteAllFilesConfirm => 'Êtes-vous sûr·e de vouloir supprimer tous les fichiers ?';
	@override String get removeAllFollowing => 'Se désabonner de tous les utilisateurs auxquels vous êtes abonné·e';
	@override String removeAllFollowingDescription({required Object host}) => 'Se désabonner de tous les comptes de ${host}. Veuillez lancer cette action dans les cas où l’instance n’existe plus, etc.';
	@override String get userSuspended => 'Cet·te utilisateur·rice a été suspendu·e.';
	@override String get userSilenced => 'Cette utilisateur·trice a été mis·e en sourdine.';
	@override String get yourAccountSuspendedTitle => 'Ce compte est suspendu';
	@override String get yourAccountSuspendedDescription => 'Ce compte est suspendu car vous avez enfreint les conditions d\'utilisation de l\'instance, ou pour un motif similaire. Si vous souhaitez connaître en détail les raisons de cette suspension, renseignez-vous auprès de l\'administrateur·rice de votre instance. Merci de ne pas créer de nouveau compte.';
	@override String get tokenRevoked => 'Ce jeton est invalide.';
	@override String get tokenRevokedDescription => 'Votre jeton de connexion a expiré. Veuillez vous reconnecter.';
	@override String get accountDeleted => 'Compte supprimé';
	@override String get accountDeletedDescription => 'Ce compte a été supprimé.';
	@override String get menu => 'Menu';
	@override String get divider => 'Séparateur';
	@override String get addItem => 'Ajouter un élément';
	@override String get rearrange => 'Trier par';
	@override String get relays => 'Relais';
	@override String get addRelay => 'Ajouter un relais';
	@override String get inboxUrl => 'Inbox URL';
	@override String get addedRelays => 'Relais ajoutés';
	@override String get serviceworkerInfo => 'Devrait être activé pour les notifications push.';
	@override String get deletedNote => 'Note supprimée';
	@override String get invisibleNote => 'Note invisible';
	@override String get enableInfiniteScroll => 'Activer le défilement infini';
	@override String get visibility => 'Visibilité';
	@override String get poll => 'Sondage';
	@override String get useCw => 'Masquer le contenu';
	@override String get enablePlayer => 'Ouvrir dans le lecteur vidéo';
	@override String get disablePlayer => 'Fermer le lecteur vidéo';
	@override String get expandTweet => 'Étendre le tweet';
	@override String get themeEditor => 'Éditeur de thèmes';
	@override String get description => 'Description';
	@override String get describeFile => 'Ajouter une description d\'image';
	@override String get enterFileDescription => 'Saisissez une description';
	@override String get author => 'Auteur·rice';
	@override String get leaveConfirm => 'Vous avez des modifications non sauvegardées. Voulez-vous les ignorer ?';
	@override String get manage => 'Gestion';
	@override String get plugins => 'Extensions';
	@override String get preferencesBackups => 'Sauvegarder les paramètres';
	@override String get deck => 'Deck';
	@override String get undeck => 'Quitter le deck';
	@override String get useBlurEffectForModal => 'Utiliser un effet de flou pour les modals';
	@override String get useFullReactionPicker => 'Utiliser l\'intégralité du panneau de réactions';
	@override String get width => 'Largeur';
	@override String get height => 'Hauteur';
	@override String get large => 'Grand';
	@override String get medium => 'Moyen';
	@override String get small => 'Petit';
	@override String get generateAccessToken => 'Générer un jeton d\'accès';
	@override String get permission => 'Autorisations ';
	@override String get adminPermission => 'Droits de l\'administrateur';
	@override String get enableAll => 'Tout activer';
	@override String get disableAll => 'Tout désactiver';
	@override String get tokenRequested => 'Autoriser l\'accès au compte';
	@override String get pluginTokenRequestedDescription => 'Cette extension pourra utiliser les autorisations définies ici.';
	@override String get notificationType => 'Type de notifications';
	@override String get edit => 'Editer';
	@override String get emailServer => 'Serveur de messagerie';
	@override String get enableEmail => 'Activer la distribution de courriel';
	@override String get emailConfigInfo => 'Utilisé pour confirmer votre adresse e-mail et réinitialiser votre mot de passe en cas d’oubli';
	@override String get email => 'E-mail ';
	@override String get emailAddress => 'Adresse e-mail';
	@override String get smtpConfig => 'Paramètres du serveur SMTP';
	@override String get smtpHost => 'Serveur distant';
	@override String get smtpPort => 'Port';
	@override String get smtpUser => 'Nom d’utilisateur·rice';
	@override String get smtpPass => 'Mot de passe';
	@override String get emptyToDisableSmtpAuth => 'Laisser le nom d’utilisateur et le mot de passe vides pour désactiver la vérification SMTP';
	@override String get smtpSecure => 'Utiliser SSL/TLS implicitement dans les connexions SMTP';
	@override String get smtpSecureInfo => 'Désactiver cette option lorsque STARTTLS est utilisé';
	@override String get testEmail => 'Tester la distribution de courriel';
	@override String get wordMute => 'Filtre de mots';
	@override String get hardWordMute => 'Filtre de mots dur';
	@override String get regexpError => 'Erreur d’expression régulière';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'Une erreur s\'est produite dans l\'expression régulière sur la ligne ${line} de votre mot muet ${tab} :';
	@override String get instanceMute => 'Instance en sourdine';
	@override String userSaysSomething({required Object name}) => '${name} a dit quelque chose';
	@override String get makeActive => 'Activer';
	@override String get display => 'Affichage';
	@override String get copy => 'Copier';
	@override String get metrics => 'Métriques';
	@override String get overview => 'Aperçu';
	@override String get logs => 'Journaux';
	@override String get delayed => 'en retard';
	@override String get database => 'Base de données';
	@override String get channel => 'Canaux';
	@override String get create => 'Créer';
	@override String get notificationSetting => 'Paramètres des notifications ';
	@override String get notificationSettingDesc => 'Sélectionnez le type de notification à afficher';
	@override String get useGlobalSetting => 'Utiliser paramètre général';
	@override String get useGlobalSettingDesc => 'S\'il est activé, les paramètres de notification de votre compte seront utilisés. S\'il est désactivé, des configurations individuelles peuvent être effectuées.';
	@override String get other => 'Autre';
	@override String get regenerateLoginToken => 'Régénérer le jeton de connexion';
	@override String get regenerateLoginTokenDescription => 'Générer un nouveau jeton d\'authentification. Cette opération ne devrait pas être nécessaire ; lors de la génération d\'un nouveau jeton, tous les appareils seront déconnectés. ';
	@override String get theKeywordWhenSearchingForCustomEmoji => 'Ce mot-clé est utilisé lors de la recherche des émojis personnalisés.';
	@override String get setMultipleBySeparatingWithSpace => 'Vous pouvez en définir plusieurs, en les séparant par des espaces.';
	@override String get fileIdOrUrl => 'ID du fichier ou URL';
	@override String get behavior => 'Comportement';
	@override String get sample => 'Exemple';
	@override String get abuseReports => 'Signalements';
	@override String get reportAbuse => 'Signaler';
	@override String get reportAbuseRenote => 'Signaler la renote';
	@override String reportAbuseOf({required Object name}) => 'Signaler ${name}';
	@override String get fillAbuseReportDescription => 'Veuillez expliquer les raisons du signalement. S\'il s\'agit d\'une note précise, veuillez en donner le lien.';
	@override String get abuseReported => 'Le rapport est envoyé. Merci.';
	@override String get reporter => 'Signalé par';
	@override String get reporteeOrigin => 'Origine du signalement';
	@override String get reporterOrigin => 'Signalé par';
	@override String get send => 'Envoyer';
	@override String get openInNewTab => 'Ouvrir dans un nouvel onglet';
	@override String get openInSideView => 'Ouvrir en vue latérale';
	@override String get defaultNavigationBehaviour => 'Navigation par défaut';
	@override String get editTheseSettingsMayBreakAccount => 'La modification de ces paramètres peut endommager votre compte.';
	@override String get instanceTicker => 'Nom de l\'instance d\'origine des notes';
	@override String waitingFor({required Object x}) => 'En attente de ${x}';
	@override String get random => 'Aléatoire';
	@override String get system => 'Système';
	@override String get switchUi => 'Modifier l\'interface utilisateur';
	@override String get desktop => 'Bureau';
	@override String get clip => 'Clip';
	@override String get createNew => 'Créer';
	@override String get optional => 'Facultatif';
	@override String get createNewClip => 'Créer un nouveau clip';
	@override String get unclip => 'Supprimer le clip';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'Cette note fait déjà partie du clip « ${name} ». Souhaitez-vous la supprimer de ce clip ?';
	@override String get public => 'Public';
	@override String get private => 'Privé';
	@override String i18nInfo({required Object link}) => 'Misskey est traduit dans différentes langues par des bénévoles. Vous pouvez contribuer à ${link}.';
	@override String get manageAccessTokens => 'Gérer les jetons d\'accès';
	@override String get accountInfo => ' Informations du compte ';
	@override String get notesCount => 'Nombre de notes';
	@override String get repliesCount => 'Nombre de réponses envoyées';
	@override String get renotesCount => 'Nombre de notes que vous avez renotées';
	@override String get repliedCount => 'Nombre de réponses reçues';
	@override String get renotedCount => 'Nombre de vos notes renotées';
	@override String get followingCount => 'Nombre d\'abonnements';
	@override String get followersCount => 'Nombre d\'abonnés';
	@override String get sentReactionsCount => 'Nombre de réactions envoyées';
	@override String get receivedReactionsCount => 'Nombre de réactions reçues';
	@override String get pollVotesCount => 'Nombre de votes envoyés';
	@override String get pollVotedCount => 'Nombre de votes reçus';
	@override String get yes => 'Oui';
	@override String get no => 'Non';
	@override String get driveFilesCount => 'Nombre de fichiers sur le Disque';
	@override String get driveUsage => 'Utilisation du Disque';
	@override String get noCrawle => 'Refuser l\'indexation par les robots';
	@override String get noCrawleDescription => 'Demandez aux moteurs de recherche de ne pas indexer votre page de profil, vos notes, vos pages, etc.';
	@override String get lockedAccountInfo => 'À moins que vous ne définissiez la visibilité de votre note sur "Abonné-e-s", vos notes sont visibles par tous, même si vous exigez que les demandes d\'abonnement soient approuvées manuellement.';
	@override String get alwaysMarkSensitive => 'Marquer les médias comme contenu sensible par défaut';
	@override String get loadRawImages => 'Affichage complet des images jointes au lieu des vignettes';
	@override String get disableShowingAnimatedImages => 'Désactiver l\'animation des images';
	@override String get highlightSensitiveMedia => 'Mettre en évidence les médias sensibles';
	@override String get verificationEmailSent => 'Un e-mail de vérification a été envoyé. Veuillez accéder au lien pour compléter la vérification.';
	@override String get notSet => 'Non défini';
	@override String get emailVerified => 'Votre adresse e-mail a été vérifiée.';
	@override String get noteFavoritesCount => 'Nombre de notes dans les favoris';
	@override String get pageLikesCount => 'Nombre de pages aimées';
	@override String get pageLikedCount => 'Nombre de vos pages aimées';
	@override String get contact => 'Contact';
	@override String get useSystemFont => 'Utiliser la police par défaut du système';
	@override String get clips => 'Clips';
	@override String get experimentalFeatures => 'Fonctionnalités expérimentales';
	@override String get experimental => 'Expérimental';
	@override String get thisIsExperimentalFeature => 'Ceci est une fonctionnalité expérimentale. Il y a une possibilité que les spécifications changent ou qu\'elle ne fonctionne pas correctement.';
	@override String get developer => 'Développeur';
	@override String get makeExplorable => 'Rendre le compte visible sur la page "Découvrir".';
	@override String get makeExplorableDescription => 'Si vous désactivez cette option, votre compte n\'apparaîtra pas sur la page "Découvrir".';
	@override String get duplicate => 'Duliquer';
	@override String get left => 'Gauche';
	@override String get center => 'Centrer';
	@override String get wide => 'Large';
	@override String get narrow => 'Condensé';
	@override String get reloadToApplySetting => 'Vos paramètres seront appliqués lorsque vous rechargerez la page. Souhaitez-vous recharger ?';
	@override String get needReloadToApply => 'Ce paramètre s\'appliquera après un rechargement.';
	@override String get showTitlebar => 'Afficher la barre de titre';
	@override String get clearCache => 'Vider le cache';
	@override String onlineUsersCount({required Object n}) => '${n} utilisateur(s) en ligne';
	@override String nUsers({required Object n}) => '${n} utilisateur·rice·s';
	@override String nNotes({required Object n}) => '${n} Notes';
	@override String get sendErrorReports => 'Envoyer les rapports d’erreur';
	@override String get sendErrorReportsDescription => 'Si vous activez l\'envoi des rapports d\'erreur, vous contribuerez à améliorer la qualité de Misskey grâce au partage d\'informations détaillées sur les erreurs lorsqu\'un problème survient.\nCela inclut des informations telles que la version de votre système d\'exploitation, le type de navigateur que vous utilisez, votre historique d\'activité, etc.';
	@override String get myTheme => 'Mes thèmes';
	@override String get backgroundColor => 'Arrière-plan';
	@override String get accentColor => 'Accentuation';
	@override String get textColor => 'Texte';
	@override String get saveAs => 'Enregistrer sous ...';
	@override String get advanced => 'Avancé';
	@override String get advancedSettings => 'Paramètres avancés';
	@override String get value => 'Valeur';
	@override String get createdAt => 'Date de création';
	@override String get updatedAt => 'Mis à jour le';
	@override String get saveConfirm => 'Voulez-vous sauvegarder les modifications?';
	@override String get deleteConfirm => 'Confirmez-vous la suppression?';
	@override String get invalidValue => 'Cette valeur est invalide.';
	@override String get registry => 'Registre';
	@override String get closeAccount => 'Fermer le compte';
	@override String get currentVersion => 'Version actuelle';
	@override String get latestVersion => 'Dernière version ';
	@override String get youAreRunningUpToDateClient => 'Votre client est à jour.';
	@override String get newVersionOfClientAvailable => 'Une nouvelle version de votre client est disponible.';
	@override String get usageAmount => 'Utilisation';
	@override String get capacity => 'Capacité ';
	@override String get inUse => 'utilisé';
	@override String get editCode => 'Modifier le code';
	@override String get apply => 'Appliquer';
	@override String get receiveAnnouncementFromInstance => 'Recevoir les messages d\'information de l\'instance';
	@override String get emailNotification => 'Notifications par courriel';
	@override String get publish => 'Public';
	@override String get inChannelSearch => 'Chercher dans le canal';
	@override String get useReactionPickerForContextMenu => 'Clic-droit pour ouvrir le panneau de réactions';
	@override String typingUsers({required Object users}) => '${users} est en train d\'écrire';
	@override String get jumpToSpecifiedDate => 'Se rendre à la date';
	@override String get showingPastTimeline => 'Un fil ancien est affiché';
	@override String get clear => 'Effacer';
	@override String get markAllAsRead => 'Tout marquer comme lu';
	@override String get goBack => 'Retour';
	@override String get unlikeConfirm => 'Êtes-vous sûr·e de ne plus vouloir aimer cette publication ?';
	@override String get fullView => 'Plein écran';
	@override String get quitFullView => 'Quitter le plein écran';
	@override String get addDescription => 'Ajouter une description';
	@override String get userPagePinTip => 'Vous pouvez afficher des notes ici en sélectionnant l\'option « Épingler au profil » dans le menu de chaque note.';
	@override String get notSpecifiedMentionWarning => 'Vous avez mentionné des utilisateur·rice·s qui ne font pas partie de la liste des destinataires';
	@override String get info => 'Informations';
	@override String get userInfo => 'Informations sur l\'utilisateur·rice';
	@override String get unknown => 'Inconnu';
	@override String get onlineStatus => 'Statut';
	@override String get hideOnlineStatus => 'Se rendre invisible';
	@override String get hideOnlineStatusDescription => 'Rendre votre statut invisible peut diminuer les performances de certaines fonctionnalités, telles que la Recherche.';
	@override String get online => 'En ligne';
	@override String get active => 'Actif·ve';
	@override String get offline => 'Hors ligne';
	@override String get notRecommended => 'Déconseillé';
	@override String get botProtection => 'Protection contre les bots';
	@override String get instanceBlocking => 'Instances bloquées';
	@override String get selectAccount => 'Sélectionner un compte';
	@override String get switchAccount => 'Changer de compte';
	@override String get enabled => 'Activé';
	@override String get disabled => 'Désactivé';
	@override String get quickAction => 'Actions rapides';
	@override String get user => 'Utilisateur·rice·s';
	@override String get administration => 'Gestion';
	@override String get accounts => 'Comptes';
	@override String get switch_ => 'Remplacer';
	@override String get noMaintainerInformationWarning => 'Informations administrateur non configurées.';
	@override String get noInquiryUrlWarning => 'L\'URL demandé n\'est pas définie';
	@override String get noBotProtectionWarning => 'La protection contre les bots n\'est pas configurée.';
	@override String get configure => 'Configurer';
	@override String get postToGallery => 'Publier dans la galerie';
	@override String get postToHashtag => 'Publier avec ce hashtag';
	@override String get gallery => 'Galerie';
	@override String get recentPosts => 'Les plus récentes';
	@override String get popularPosts => 'Les plus consultées';
	@override String get shareWithNote => 'Partager dans une note';
	@override String get ads => 'Publicité';
	@override String get expiration => 'Échéance';
	@override String get startingperiod => 'Commencer';
	@override String get memo => 'Pense-bête';
	@override String get priority => 'Priorité';
	@override String get high => 'Haute';
	@override String get middle => 'Moyen';
	@override String get low => 'Basse';
	@override String get emailNotConfiguredWarning => 'Vous n\'avez pas configuré d\'adresse e-mail.';
	@override String get ratio => 'Ratio';
	@override String get previewNoteText => 'Voir l\'aperçu';
	@override String get customCss => 'CSS personnalisé';
	@override String get customCssWarn => 'Utilisez cette fonctionnalité uniquement si vous savez exactement ce que vous faites. Une configuration inadaptée peut empêcher le client de s\'exécuter normalement.';
	@override String get global => 'Global';
	@override String get squareAvatars => 'Avatars carrés';
	@override String get sent => 'Envoyer';
	@override String get received => 'Reçu';
	@override String get searchResult => 'Résultats de la recherche';
	@override String get hashtags => 'Hashtags';
	@override String get troubleshooting => 'Résolution de problèmes';
	@override String get useBlurEffect => 'Utiliser des effets de flou dans l\'interface';
	@override String get learnMore => 'Plus d\'informations';
	@override String get misskeyUpdated => 'Misskey a été mis à jour !';
	@override String get whatIsNew => 'Voir les derniers changements';
	@override String get translate => 'Traduire';
	@override String translatedFrom({required Object x}) => 'Traduit depuis ${x}';
	@override String get accountDeletionInProgress => 'La suppression de votre compte est en cours';
	@override String get usernameInfo => 'C\'est un nom qui identifie votre compte sur l\'instance de manière unique. Vous pouvez utiliser des lettres de l\'alphabet (minuscules et majuscules), des chiffres (de 0 à 9), ou bien le tiret « _ ». Vous ne pourrez pas modifier votre nom d\'utilisateur·rice par la suite.';
	@override String get aiChanMode => 'Mode Ai';
	@override String get devMode => 'Mode développement';
	@override String get keepCw => 'Garder le CW';
	@override String get pubSub => 'Comptes Pub/Sub';
	@override String get lastCommunication => 'Dernière communication';
	@override String get resolved => 'Résolu';
	@override String get unresolved => 'En attente';
	@override String get breakFollow => 'Supprimer l\'abonné·e';
	@override String get breakFollowConfirm => 'Êtes-vous sûr de vouloir vous désabonner ?';
	@override String get itsOn => 'Activé';
	@override String get itsOff => 'Désactivé';
	@override String get on => 'Activé';
	@override String get off => 'Désactivé';
	@override String get emailRequiredForSignup => 'Une adresse e-mail est nécessaire pour créer un compte';
	@override String get unread => 'Non lu';
	@override String get filter => 'Filtre';
	@override String get controlPanel => 'Panneau de configuration';
	@override String get manageAccounts => 'Gérer les comptes';
	@override String get makeReactionsPublic => 'Rendre les réactions publiques';
	@override String get makeReactionsPublicDescription => 'Ceci rendra la liste de toutes vos réactions données publique.';
	@override String get classic => 'Classique';
	@override String get muteThread => 'Masquer cette discussion';
	@override String get unmuteThread => 'Ne plus masquer le fil';
	@override String get followingVisibility => 'Visibilité des abonnements';
	@override String get followersVisibility => 'Visibilité des abonnés';
	@override String get continueThread => 'Afficher la suite du fil';
	@override String get deleteAccountConfirm => 'Votre compte sera supprimé. Êtes vous certain ?';
	@override String get incorrectPassword => 'Le mot de passe est incorrect.';
	@override String get incorrectTotp => 'Le mot de passe à usage unique est incorrect ou a expiré.';
	@override String voteConfirm({required Object choice}) => 'Confirmez-vous votre vote pour « ${choice} » ?';
	@override String get hide => 'Masquer';
	@override String get useDrawerReactionPickerForMobile => 'Afficher le sélecteur de réactions en tant que panneau sur mobile';
	@override String welcomeBackWithName({required Object name}) => 'Heureux de vous revoir, ${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => 'Veuillez cliquer sur [${ok}] afin de compléter la vérification par courriel.';
	@override String get overridedDeviceKind => 'Type d’appareil';
	@override String get smartphone => 'Smartphone';
	@override String get tablet => 'Tablette';
	@override String get auto => 'Automatique';
	@override String get themeColor => 'Couleur du thème';
	@override String get size => 'Taille';
	@override String get numberOfColumn => 'Nombre de colonnes';
	@override String get searchByGoogle => 'Google';
	@override String get instanceDefaultLightTheme => 'Thème clair par défaut sur toute l’instance';
	@override String get instanceDefaultDarkTheme => 'Thème sombre par défaut sur toute l’instance';
	@override String get instanceDefaultThemeDescription => 'Saisissez le code du thème en format objet.';
	@override String get mutePeriod => 'Durée de mise en sourdine';
	@override String get period => 'Fin du sondage';
	@override String get indefinitely => 'Illimité';
	@override String get tenMinutes => '10 minutes';
	@override String get oneHour => '1 heure';
	@override String get oneDay => '1 jour';
	@override String get oneWeek => '1 semaine';
	@override String get oneMonth => 'Un mois';
	@override String get threeMonths => '3 mois';
	@override String get oneYear => '1 an';
	@override String get threeDays => '3 jours';
	@override String get reflectMayTakeTime => 'Cela peut prendre un certain temps avant que cela ne se termine.';
	@override String get failedToFetchAccountInformation => 'Impossible de récupérer les informations du compte.';
	@override String get rateLimitExceeded => 'Limite de taux dépassée';
	@override String get cropImage => 'Recadrer l\'image';
	@override String get cropImageAsk => 'Voulez-vous recadrer cette image ?';
	@override String get cropYes => 'Rogner';
	@override String get cropNo => 'Utiliser en l\'état';
	@override String get file => 'Fichier';
	@override String recentNHours({required Object n}) => 'Dernières ${n} heures';
	@override String recentNDays({required Object n}) => 'Derniers ${n} jours';
	@override String get noEmailServerWarning => 'Serveur de courrier non configuré.';
	@override String get thereIsUnresolvedAbuseReportWarning => 'Il n’y a aucun rapport non résolu.';
	@override String get recommended => 'Recommandé';
	@override String get check => 'Vérifier';
	@override String get driveCapOverrideLabel => 'Modifier la capacité de stockage du Disque de cet·te utilisateur·rice';
	@override String get driveCapOverrideCaption => 'Si une valeur inférieure à 0 est spécifiée, elle est annulée.';
	@override String get requireAdminForView => 'Vous devez être connecté avec un compte administrateur pour les visualiser.';
	@override String get isSystemAccount => 'Ces comptes sont automatiquement créés et gérés par le système.';
	@override String typeToConfirm({required Object x}) => 'Pour effectuer cette opération, tapez ${x}';
	@override String get deleteAccount => 'Supprimer le compte';
	@override String get document => 'Documentation';
	@override String get numberOfPageCache => 'Nombre de pages en cache';
	@override String get numberOfPageCacheDescription => 'Plus de confort, mais aussi plus de poids et d\'utilisation de la mémoire.';
	@override String get logoutConfirm => 'Se déconnecter ?';
	@override String get lastActiveDate => 'Dernière utilisation';
	@override String get statusbar => 'Barre d’état';
	@override String get pleaseSelect => 'Choisir une option';
	@override String get reverse => 'Inverser';
	@override String get colored => 'Coloré';
	@override String get refreshInterval => 'Intervalle de mise à jour';
	@override String get label => 'Étiquette';
	@override String get type => 'Type';
	@override String get speed => 'Vitesse';
	@override String get slow => 'Lente';
	@override String get fast => 'Rapide';
	@override String get sensitiveMediaDetection => 'Détection des médias sensibles';
	@override String get localOnly => 'Local seulement';
	@override String get remoteOnly => 'Distant uniquement';
	@override String get failedToUpload => 'Échec du transfert';
	@override String get cannotUploadBecauseInappropriate => 'Impossible de télécharger le document car il a été déterminé qu\'il pouvait contenir un contenu inapproprié.';
	@override String get cannotUploadBecauseNoFreeSpace => 'Impossible de télécharger en raison d\'un manque d\'espace libre sur le disque.\n';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'Ce fichier ne peut pas être téléchargé parce qu\'il dépasse la taille maximale.';
	@override String get beta => 'Bêta';
	@override String get enableAutoSensitive => 'Détermination automatique de NSFW';
	@override String get enableAutoSensitiveDescription => 'S\'il est disponible, le drapeau NSFW est automatiquement défini sur le média en utilisant l\'apprentissage automatique. Même si cette fonction est désactivée, elle peut être réglée automatiquement dans certains cas.';
	@override String get activeEmailValidationDescription => 'Valide l\'adresse électronique d\'un utilisateur de manière plus agressive en déterminant s\'il s\'agit d\'une adresse électronique jetable et si l\'on peut effectivement communiquer avec elle. Si cette option n\'est pas cochée, l\'adresse électronique n\'est vérifiée que sous forme de chaîne de caractères.';
	@override String get navbar => 'Barre de navigation';
	@override String get shuffle => 'Lecture aléatoire';
	@override String get account => 'Comptes';
	@override String get move => 'Déplacer';
	@override String get pushNotification => 'Notifications push';
	@override String get subscribePushNotification => 'Autoriser les notifications push';
	@override String get unsubscribePushNotification => 'Désactiver les notifications push';
	@override String get pushNotificationAlreadySubscribed => 'Les notifications push sont déjà activées';
	@override String get pushNotificationNotSupported => 'Votre navigateur ou votre instance ne prend pas en charge les notifications push';
	@override String get sendPushNotificationReadMessage => 'Supprimer les notifications push une fois que les notifications ou messages pertinents ont été lus.';
	@override String get sendPushNotificationReadMessageCaption => 'Cela peut augmenter la consommation de batterie de votre appareil.';
	@override String get windowMaximize => 'Maximiser';
	@override String get windowMinimize => 'Minimaliser';
	@override String get windowRestore => 'Restaurer';
	@override String get caption => 'Libellé';
	@override String get loggedInAsBot => 'Connecté actuellement en tant que bot';
	@override String get tools => 'Outils';
	@override String get cannotLoad => 'Chargement impossible';
	@override String get numberOfProfileView => 'Nombre de vues du profil';
	@override String get like => 'J\'aime';
	@override String get unlike => 'Ne plus aimer';
	@override String get numberOfLikes => 'Favoris';
	@override String get show => 'Affichage';
	@override String get neverShow => 'Ne plus afficher';
	@override String get remindMeLater => 'Peut-être plus tard';
	@override String get didYouLikeMisskey => 'Avez-vous aimé Misskey ?';
	@override String pleaseDonate({required Object host}) => 'Misskey est le logiciel libre utilisé par ${host}. Merci de faire un don pour que nous puissions continuer à le développer !';
	@override String correspondingSourceIsAvailable({required Object anchor}) => 'Le code source correspondant est disponible à ${anchor}';
	@override String get roles => 'Rôles';
	@override String get role => 'Rôles';
	@override String get noRole => 'Aucun rôle';
	@override String get normalUser => 'Simple utilisateur·rice';
	@override String get undefined => 'Non défini';
	@override String get assign => 'Attribuer';
	@override String get unassign => 'Retirer';
	@override String get color => 'Couleur';
	@override String get manageCustomEmojis => 'Gestion des émojis personnalisés';
	@override String get manageAvatarDecorations => 'Gérer les décorations d\'avatar';
	@override String get youCannotCreateAnymore => 'Vous avez atteint la limite de création.';
	@override String get cannotPerformTemporary => 'Temporairement indisponible';
	@override String get cannotPerformTemporaryDescription => 'Temporairement indisponible puisque le nombre d\'opérations dépasse la limite. Veuillez patienter un peu, puis réessayer.';
	@override String get invalidParamError => 'Paramètres invalides';
	@override String get invalidParamErrorDescription => 'Les paramètres de la requête sont invalides. Il s\'agit généralement d\'un bogue, mais cela peut aussi être causé par un excès de caractères ou quelque chose de similaire.';
	@override String get permissionDeniedError => 'Opération refusée';
	@override String get permissionDeniedErrorDescription => 'Ce compte n\'a pas la permission d\'effectuer cette opération.';
	@override String get preset => 'Préréglage';
	@override String get selectFromPresets => 'Sélectionner à partir des préréglages';
	@override String get achievements => 'Accomplissements';
	@override String get gotInvalidResponseError => 'Réponse du serveur invalide';
	@override String get gotInvalidResponseErrorDescription => 'Il se peut que le serveur soit hors ligne ou en maintenance. Veuillez réessayer plus tard.';
	@override String get thisPostMayBeAnnoying => 'Cette note peut gêner d\'autres personnes.';
	@override String get thisPostMayBeAnnoyingHome => 'Publier vers le fil principal';
	@override String get thisPostMayBeAnnoyingCancel => 'Annuler';
	@override String get thisPostMayBeAnnoyingIgnore => 'Publier quand-même';
	@override String get collapseRenotes => 'Réduire les renotes déjà vues';
	@override String get internalServerError => 'Erreur interne du serveur';
	@override String get internalServerErrorDescription => 'Une erreur inattendue s\'est produite sur le serveur.';
	@override String get copyErrorInfo => 'Copier les détails de l’erreur';
	@override String get joinThisServer => 'S\'inscrire à cette instance';
	@override String get exploreOtherServers => 'Trouver une autre instance';
	@override String get letsLookAtTimeline => 'Jetez un coup d\'œil au fil';
	@override String get disableFederationConfirm => 'Voulez-vous vraiment désactiver la fédération ?';
	@override String get disableFederationConfirmWarn => 'Même sans fédération, la note ne sera pas privée. Dans la plupart des cas, ce n\'est pas nécessaire de désactiver la fédération.';
	@override String get disableFederationOk => 'Désactiver';
	@override String get invitationRequiredToRegister => 'Actuellement, cette instance est uniquement sur invitation. Seuls ceux qui ont un code d\'invitation peuvent s\'inscrire.';
	@override String get emailNotSupported => 'Cette instance ne prend pas en charge l\'envoi de courriels';
	@override String get postToTheChannel => 'Publier au canal';
	@override String get cannotBeChangedLater => 'Cela ne peut pas être modifié plus tard.';
	@override String get reactionAcceptance => 'Acceptation des réactions';
	@override String get likeOnly => 'Les favoris uniquement';
	@override String get likeOnlyForRemote => 'Toutes (mentions j\'aime seulement pour les instances distantes)';
	@override String get nonSensitiveOnly => 'Non sensibles seulement';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'Non sensibles seulement (mentions j\'aime seulement pour les instances distantes)';
	@override String get rolesAssignedToMe => 'Rôles attribués à moi';
	@override String get resetPasswordConfirm => 'Souhaitez-vous réinitialiser votre mot de passe ?';
	@override String get sensitiveWords => 'Mots sensibles';
	@override String get sensitiveWordsDescription => 'Définir la visibilité des notes contenant un mot défini ici au fil principal automatiquement. Vous pouvez définir plusieurs valeurs en les séparant par des sauts de ligne.';
	@override String get sensitiveWordsDescription2 => 'Séparer par une espace pour créer une expression AND ; entourer de barres obliques pour créer une expression régulière.';
	@override String get prohibitedWords => 'Mots interdits';
	@override String get prohibitedWordsDescription => 'Publier une note contenant un mot défini ici produira une erreur. Vous pouvez définir plusieurs valeurs en les séparant par des sauts de ligne.';
	@override String get prohibitedWordsDescription2 => 'Séparer par une espace pour créer une expression AND ; entourer de barres obliques pour créer une expression régulière.';
	@override String get hiddenTags => 'Hashtags cachés';
	@override String get hiddenTagsDescription => 'Les hashtags définis ne s\'afficheront pas dans les tendances. Vous pouvez définir plusieurs hashtags en faisant un saut de ligne.';
	@override String get notesSearchNotAvailable => 'La recherche de notes n\'est pas disponible.';
	@override String get license => 'Licence';
	@override String get unfavoriteConfirm => 'Vraiment supprimer des favoris ?';
	@override String get myClips => 'Mes clips';
	@override String get drivecleaner => 'Nettoyeur du Disque';
	@override String get retryAllQueuesNow => 'Réessayer tous les fils d\'attente immédiatement';
	@override String get retryAllQueuesConfirmTitle => 'Vraiment réessayer ?';
	@override String get retryAllQueuesConfirmText => 'Cela peut augmenter temporairement la charge du serveur.';
	@override String get enableChartsForRemoteUser => 'Générer les graphiques pour les utilisateurs distants';
	@override String get enableChartsForFederatedInstances => 'Générer les graphiques pour les instances distantes';
	@override String get enableStatsForFederatedInstances => 'Recevoir les statistiques des instances distantes';
	@override String get showClipButtonInNoteFooter => 'Ajouter « Clip » au menu d\'action de la note';
	@override String get reactionsDisplaySize => 'Taille de l\'affichage des réactions';
	@override String get limitWidthOfReaction => 'Limiter la largeur maximale des réactions et les afficher en taille réduite';
	@override String get noteIdOrUrl => 'Identifiant de la note ou URL';
	@override String get video => 'Vidéo';
	@override String get videos => 'Vidéos';
	@override String get audio => 'Audio';
	@override String get audioFiles => 'Fichiers audio';
	@override String get dataSaver => 'Économiseur de données';
	@override String get accountMigration => 'Migration de compte';
	@override String get accountMoved => 'Cet·te utilisateur·rice a migré son compte vers :';
	@override String get accountMovedShort => 'Ce compte a migré';
	@override String get operationForbidden => 'Opération non autorisée';
	@override String get forceShowAds => 'Toujours afficher les publicités';
	@override String get addMemo => 'Ajouter un mémo';
	@override String get editMemo => 'Éditer le mémo';
	@override String get reactionsList => 'Réactions';
	@override String get renotesList => 'Liste de renotes';
	@override String get notificationDisplay => 'Style des notifications';
	@override String get leftTop => 'En haut à gauche';
	@override String get rightTop => 'En haut à droite';
	@override String get leftBottom => 'En bas à gauche';
	@override String get rightBottom => 'En bas à droite';
	@override String get stackAxis => 'Direction d\'empilement';
	@override String get vertical => 'Vertical';
	@override String get horizontal => 'Latéral';
	@override String get position => 'Position';
	@override String get serverRules => 'Règles du serveur';
	@override String get pleaseConfirmBelowBeforeSignup => 'Pour vous inscrire sur cette instance, vous devez confirmer et accepter le contenu suivant.';
	@override String get pleaseAgreeAllToContinue => 'Pour continuer, veuillez accepter tous les champs ci-dessus.';
	@override String get continue_ => 'Continuer';
	@override String get preservedUsernames => 'Noms d\'utilisateur·rice réservés';
	@override String get preservedUsernamesDescription => 'Énumérez les noms d\'utilisateur à réserver, séparés par des nouvelles lignes. Les noms d\'utilisateur spécifiés ici ne seront plus utilisables lors de la création d\'un compte, sauf la création manuelle par un administrateur. De plus, les comptes existants ne seront pas affectés.';
	@override String get createNoteFromTheFile => 'Rédiger une note de ce fichier';
	@override String get archive => 'Archive';
	@override String get archived => 'Archivé';
	@override String get unarchive => 'Annuler l\'archivage';
	@override String channelArchiveConfirmTitle({required Object name}) => 'Voulez-vous vraiment archiver ${name} ?';
	@override String get channelArchiveConfirmDescription => 'Une fois archivé, le canal n\'apparaîtra plus dans la liste des canaux ni dans les résultats de recherche, et la publication des nouvelles notes sera impossible.';
	@override String get thisChannelArchived => 'Ce canal a été archivé.';
	@override String get displayOfNote => 'Affichage de la note';
	@override String get initialAccountSetting => 'Configuration initiale du profil';
	@override String get youFollowing => 'Abonné·e';
	@override String get preventAiLearning => 'Refuser l\'usage dans l\'apprentissage automatique d\'IA générative';
	@override String get preventAiLearningDescription => 'Demander aux robots d\'indexation de ne pas utiliser le contenu publié, tel que les notes et les images, dans l\'apprentissage automatique d\'IA générative. Cela est réalisé en incluant le drapeau « noai » dans la réponse HTML. Une prévention complète n\'est toutefois pas possible, car il est au robot d\'indexation de respecter cette demande.';
	@override String get options => 'Options';
	@override String get specifyUser => 'Spécifier l\'utilisateur·rice';
	@override String get openTagPageConfirm => 'Ouvrir une page d\'hashtags ?';
	@override String get specifyHost => 'Spécifier un serveur distant';
	@override String get failedToPreviewUrl => 'Aperçu d\'URL échoué';
	@override String get update => 'Mettre à jour';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'Rôles qui peuvent utiliser cet émoji comme réaction';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'Si aucun rôle n\'est spécifié, tout le monde peut utiliser cet émoji comme réaction.';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'Il faut un rôle public.';
	@override String get cancelReactionConfirm => 'Supprimez la réaction ?';
	@override String get changeReactionConfirm => 'Changer la réaction ?';
	@override String get later => 'Plus tard';
	@override String get goToMisskey => 'Retour vers Misskey';
	@override String get additionalEmojiDictionary => 'Dictionnaires d\'émojis additionnels';
	@override String get installed => 'Installé';
	@override String get branding => 'Image de marque';
	@override String get enableServerMachineStats => 'Publier les statistiques du matériel du serveur';
	@override String get enableIdenticonGeneration => 'Générer les identicons des utilisateurs';
	@override String get turnOffToImprovePerformance => 'Désactiver peut améliorer la performance.';
	@override String get createInviteCode => 'Créer un code d\'invitation';
	@override String get createWithOptions => 'Options';
	@override String get createCount => 'Quantité à créer';
	@override String get inviteCodeCreated => 'Code d\'invitation créé';
	@override String get inviteLimitExceeded => 'Vous avez atteint la limite de codes d\'invitation que vous pouvez générer.';
	@override String createLimitRemaining({required Object limit}) => 'Codes d\'invitation pouvant être créés : ${limit} restants';
	@override String inviteLimitResetCycle({required Object limit, required Object time}) => 'Vous pouvez créer jusqu\'à ${limit} codes d\'invitation en ${time}.';
	@override String get expirationDate => 'Date d’expiration';
	@override String get noExpirationDate => 'Ne pas expirer';
	@override String get inviteCodeUsedAt => 'Code d\'invitation utilisé à';
	@override String get registeredUserUsingInviteCode => 'Code d\'invitation utilisé par';
	@override String get waitingForMailAuth => 'En attente de la vérification de l\'adresse courriel';
	@override String get inviteCodeCreator => 'Créateur·rice de ce code d\'invitation';
	@override String get usedAt => 'Utilisé le';
	@override String get unused => 'Non-utilisé';
	@override String get used => 'Utilisé';
	@override String get expired => 'Expiré';
	@override String get doYouAgree => 'Êtes-vous d’accord ?';
	@override String get beSureToReadThisAsItIsImportant => 'Assurez-vous de le lire ; c\'est important.';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => 'J\'ai lu le contenu de « ${x} » et donne mon accord.';
	@override String get dialog => 'Dialogue';
	@override String get icon => 'Avatar';
	@override String get forYou => 'Pour vous';
	@override String get currentAnnouncements => 'Annonces actuelles';
	@override String get pastAnnouncements => 'Annonces passées';
	@override String get youHaveUnreadAnnouncements => 'Il y a des annonces non lues.';
	@override String get useSecurityKey => 'Suivez les instructions de votre navigateur ou de votre appareil pour utiliser une clé de sécurité ou une clé d\'accès.';
	@override String get replies => 'Réponses';
	@override String get renotes => 'Renotes';
	@override String get loadReplies => 'Inclure les réponses';
	@override String get loadConversation => 'Afficher la conversation';
	@override String get pinnedList => 'Liste épinglée';
	@override String get keepScreenOn => 'Garder l\'écran toujours allumé';
	@override String get verifiedLink => 'Votre propriété de ce lien a été vérifiée';
	@override String get notifyNotes => 'Notifier à propos des nouvelles notes';
	@override String get unnotifyNotes => 'Ne pas notifier pour la publication des notes';
	@override String get authentication => 'Authentification';
	@override String get authenticationRequiredToContinue => 'Veuillez vous authentifier pour continuer';
	@override String get dateAndTime => 'Date et heure';
	@override String get showRenotes => 'Afficher les renotes';
	@override String get edited => 'Modifié';
	@override String get notificationRecieveConfig => 'Paramètres des notifications';
	@override String get mutualFollow => 'Abonnement mutuel';
	@override String get followingOrFollower => 'Abonnement ou abonné';
	@override String get fileAttachedOnly => 'Avec fichiers joints seulement';
	@override String get showRepliesToOthersInTimeline => 'Afficher les réponses aux autres dans le fil';
	@override String get hideRepliesToOthersInTimeline => 'Masquer les réponses aux autres dans le fil';
	@override String get showRepliesToOthersInTimelineAll => 'Afficher les réponses de toutes les personnes que vous suivez dans le fil';
	@override String get hideRepliesToOthersInTimelineAll => 'Masquer les réponses de toutes les personnes que vous suivez dans le fil';
	@override String get confirmShowRepliesAll => 'Cette opération est irréversible. Voulez-vous vraiment afficher les réponses de toutes les personnes que vous suivez dans le fil ?';
	@override String get confirmHideRepliesAll => 'Cette opération est irréversible. Voulez-vous vraiment masquer les réponses de toutes les personnes que vous suivez dans le fil ?';
	@override String get externalServices => 'Services externes';
	@override String get sourceCode => 'Code source';
	@override String get sourceCodeIsNotYetProvided => 'Le code source n\'est pas encore disponible. Veuillez signaler ce problème aux administrateurs.';
	@override String get repositoryUrl => 'URL du dépôt';
	@override String get repositoryUrlDescription => 'Entrez l\'URL du dépôt où se trouve le code source ici. Si vous utilisez Misskey tel quel (sans changer le code source), entrez https://github.com/misskey-dev/misskey';
	@override String get feedback => 'Commentaires';
	@override String get feedbackUrl => 'URL pour les commentaires';
	@override String get impressum => 'Impressum';
	@override String get impressumUrl => 'URL de l\'impressum';
	@override String get impressumDescription => 'Dans certains pays comme l\'Allemagne, il est obligatoire d\'afficher les informations sur l\'opérateur d\'un site (un impressum).';
	@override String get privacyPolicy => 'Politique de confidentialité';
	@override String get privacyPolicyUrl => 'URL de la politique de confidentialité';
	@override String get tosAndPrivacyPolicy => 'Conditions d\'utilisation et politique de confidentialité';
	@override String get avatarDecorations => 'Décorations d\'avatar';
	@override String get attach => 'Mettre';
	@override String get detach => 'Enlever';
	@override String get detachAll => 'Tout enlever';
	@override String get angle => 'Angle';
	@override String get flip => 'Inverser';
	@override String get showAvatarDecorations => 'Afficher les décorations d\'avatar';
	@override String get releaseToRefresh => 'Relâcher pour rafraîchir';
	@override String get refreshing => 'Rafraîchissement...';
	@override String get pullDownToRefresh => 'Tirer vers le bas pour rafraîchir';
	@override String get useGroupedNotifications => 'Grouper les notifications';
	@override String get cwNotationRequired => 'Si « Masquer le contenu » est activé, une description doit être fournie.';
	@override String get doReaction => 'Réagir';
	@override String get code => 'Code';
	@override String get reloadRequiredToApplySettings => 'Le rafraîchissement est nécessaire pour que les paramètres prennent effet.';
	@override String remainingN({required Object n}) => 'Restants : ${n}';
	@override String get overwriteContentConfirm => 'Voulez-vous remplacer le contenu actuel ?';
	@override String get seasonalScreenEffect => 'Effet d\'écran saisonnier';
	@override String get decorate => 'Décorer';
	@override String get addMfmFunction => 'Insérer MFM';
	@override String get enableQuickAddMfmFunction => 'Afficher le sélecteur de MFM avancé';
	@override String get bubbleGame => 'Jeu de bulles';
	@override String get sfx => 'Effets sonores';
	@override String get soundWillBePlayed => 'Le son sera joué';
	@override String get showReplay => 'Voir le replay';
	@override String get replay => 'Rediffusion';
	@override String get replaying => 'En cours de rediffusion';
	@override String get endReplay => 'Arrêter la rediffusion';
	@override String get copyReplayData => 'Copier les données de la rediffusion';
	@override String get ranking => 'Classement';
	@override String lastNDays({required Object n}) => 'Derniers ${n} jours';
	@override String get backToTitle => 'Retourner au titre';
	@override String get hemisphere => 'Votre région';
	@override String get withSensitive => 'Afficher les notes contenant des fichiers joints sensibles';
	@override String userSaysSomethingSensitive({required Object name}) => 'Note de ${name} contenant des fichiers joints sensibles';
	@override String get enableHorizontalSwipe => 'Glisser pour changer d\'onglet';
	@override String get loading => 'Chargement en cours';
	@override String get surrender => 'Annuler';
	@override String get gameRetry => 'Réessayer';
	@override String get notUsePleaseLeaveBlank => 'Laisser vide si non utilisé';
	@override String get useTotp => 'Entrer un mot de passe à usage unique';
	@override String get useBackupCode => 'Utiliser le codes de secours';
	@override String get launchApp => 'Lancer l\'app';
	@override String get useNativeUIForVideoAudioPlayer => 'Lire les vidéos et audios en utilisant l\'UI du navigateur';
	@override String get keepOriginalFilename => 'Garder le nom original du fichier';
	@override String get keepOriginalFilenameDescription => 'Si vous désactivez ce paramètre, les noms de fichiers seront automatiquement remplacés par des noms aléatoires lorsque vous téléchargerez des fichiers.';
	@override String get noDescription => 'Il n\'y a pas de description';
	@override String get alwaysConfirmFollow => 'Confirmer lors d\'un abonnement';
	@override String get inquiry => 'Contact';
	@override String get tryAgain => 'Veuillez réessayer plus tard';
	@override String get confirmWhenRevealingSensitiveMedia => 'Confirmer pour révéler du contenu sensible';
	@override String get sensitiveMediaRevealConfirm => 'Ceci pourrait être du contenu sensible. Voulez-vous l\'afficher ?';
	@override String get createdLists => 'Listes créées';
	@override String get createdAntennas => 'Antennes créées';
	@override String fromX({required Object x}) => 'De ${x}';
	@override String get genEmbedCode => 'Générer le code d\'intégration';
	@override String get noteOfThisUser => 'Notes de cet·te utilisateur·rice';
	@override String get clipNoteLimitExceeded => 'Aucune note supplémentaire ne peut être ajoutée à ce clip.';
	@override String get performance => 'Performance';
	@override String get modified => 'Modifié';
	@override String get discard => 'Annuler';
	@override String thereAreNChanges({required Object n}) => 'Il y a ${n} modification(s)';
	@override String get signinWithPasskey => 'Se connecter avec une clé d\'accès';
	@override String get unknownWebAuthnKey => 'Clé d\'accès inconnue.';
	@override String get passkeyVerificationFailed => 'La vérification de la clé d\'accès a échoué.';
	@override String get passkeyVerificationSucceededButPasswordlessLoginDisabled => 'La vérification de la clé d\'accès a réussi, mais la connexion sans mot de passe est désactivée.';
	@override String get messageToFollower => 'Message aux abonné·es';
	@override String get target => 'Destinataire';
	@override String get prohibitedWordsForNameOfUser => 'Mots interdits pour les noms d\'utilisateur·rices';
	@override String get lockdown => 'Verrouiller';
	@override String get pleaseSelectAccount => 'Sélectionner un compte';
	@override String get availableRoles => 'Rôles disponibles';
	@override String get postForm => 'Formulaire de publication';
	@override String get information => 'Informations';
	@override String get inMinutes => 'min';
	@override String get inDays => 'j';
	@override String get widgets => 'Widgets';
	@override String get presets => 'Préréglage';
	@override late final _Translations$misskey$imageEditing_$fr_FR imageEditing_ = _Translations$misskey$imageEditing_$fr_FR._(_root);
	@override late final _Translations$misskey$imageFrameEditor_$fr_FR imageFrameEditor_ = _Translations$misskey$imageFrameEditor_$fr_FR._(_root);
	@override late final _Translations$misskey$chat_$fr_FR chat_ = _Translations$misskey$chat_$fr_FR._(_root);
	@override late final _Translations$misskey$abuseUserReport_$fr_FR abuseUserReport_ = _Translations$misskey$abuseUserReport_$fr_FR._(_root);
	@override late final _Translations$misskey$delivery_$fr_FR delivery_ = _Translations$misskey$delivery_$fr_FR._(_root);
	@override late final _Translations$misskey$bubbleGame_$fr_FR bubbleGame_ = _Translations$misskey$bubbleGame_$fr_FR._(_root);
	@override late final _Translations$misskey$announcement_$fr_FR announcement_ = _Translations$misskey$announcement_$fr_FR._(_root);
	@override late final _Translations$misskey$initialAccountSetting_$fr_FR initialAccountSetting_ = _Translations$misskey$initialAccountSetting_$fr_FR._(_root);
	@override late final _Translations$misskey$initialTutorial_$fr_FR initialTutorial_ = _Translations$misskey$initialTutorial_$fr_FR._(_root);
	@override late final _Translations$misskey$timelineDescription_$fr_FR timelineDescription_ = _Translations$misskey$timelineDescription_$fr_FR._(_root);
	@override late final _Translations$misskey$serverSettings_$fr_FR serverSettings_ = _Translations$misskey$serverSettings_$fr_FR._(_root);
	@override late final _Translations$misskey$accountMigration_$fr_FR accountMigration_ = _Translations$misskey$accountMigration_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$fr_FR achievements_ = _Translations$misskey$achievements_$fr_FR._(_root);
	@override late final _Translations$misskey$role_$fr_FR role_ = _Translations$misskey$role_$fr_FR._(_root);
	@override late final _Translations$misskey$sensitiveMediaDetection_$fr_FR sensitiveMediaDetection_ = _Translations$misskey$sensitiveMediaDetection_$fr_FR._(_root);
	@override late final _Translations$misskey$emailUnavailable_$fr_FR emailUnavailable_ = _Translations$misskey$emailUnavailable_$fr_FR._(_root);
	@override late final _Translations$misskey$ffVisibility_$fr_FR ffVisibility_ = _Translations$misskey$ffVisibility_$fr_FR._(_root);
	@override late final _Translations$misskey$signup_$fr_FR signup_ = _Translations$misskey$signup_$fr_FR._(_root);
	@override late final _Translations$misskey$accountDelete_$fr_FR accountDelete_ = _Translations$misskey$accountDelete_$fr_FR._(_root);
	@override late final _Translations$misskey$ad_$fr_FR ad_ = _Translations$misskey$ad_$fr_FR._(_root);
	@override late final _Translations$misskey$forgotPassword_$fr_FR forgotPassword_ = _Translations$misskey$forgotPassword_$fr_FR._(_root);
	@override late final _Translations$misskey$gallery_$fr_FR gallery_ = _Translations$misskey$gallery_$fr_FR._(_root);
	@override late final _Translations$misskey$email_$fr_FR email_ = _Translations$misskey$email_$fr_FR._(_root);
	@override late final _Translations$misskey$plugin_$fr_FR plugin_ = _Translations$misskey$plugin_$fr_FR._(_root);
	@override late final _Translations$misskey$preferencesBackups_$fr_FR preferencesBackups_ = _Translations$misskey$preferencesBackups_$fr_FR._(_root);
	@override late final _Translations$misskey$registry_$fr_FR registry_ = _Translations$misskey$registry_$fr_FR._(_root);
	@override late final _Translations$misskey$aboutMisskey_$fr_FR aboutMisskey_ = _Translations$misskey$aboutMisskey_$fr_FR._(_root);
	@override late final _Translations$misskey$displayOfSensitiveMedia_$fr_FR displayOfSensitiveMedia_ = _Translations$misskey$displayOfSensitiveMedia_$fr_FR._(_root);
	@override late final _Translations$misskey$instanceTicker_$fr_FR instanceTicker_ = _Translations$misskey$instanceTicker_$fr_FR._(_root);
	@override late final _Translations$misskey$serverDisconnectedBehavior_$fr_FR serverDisconnectedBehavior_ = _Translations$misskey$serverDisconnectedBehavior_$fr_FR._(_root);
	@override late final _Translations$misskey$channel_$fr_FR channel_ = _Translations$misskey$channel_$fr_FR._(_root);
	@override late final _Translations$misskey$menuDisplay_$fr_FR menuDisplay_ = _Translations$misskey$menuDisplay_$fr_FR._(_root);
	@override late final _Translations$misskey$wordMute_$fr_FR wordMute_ = _Translations$misskey$wordMute_$fr_FR._(_root);
	@override late final _Translations$misskey$instanceMute_$fr_FR instanceMute_ = _Translations$misskey$instanceMute_$fr_FR._(_root);
	@override late final _Translations$misskey$theme_$fr_FR theme_ = _Translations$misskey$theme_$fr_FR._(_root);
	@override late final _Translations$misskey$sfx_$fr_FR sfx_ = _Translations$misskey$sfx_$fr_FR._(_root);
	@override late final _Translations$misskey$soundSettings_$fr_FR soundSettings_ = _Translations$misskey$soundSettings_$fr_FR._(_root);
	@override late final _Translations$misskey$ago_$fr_FR ago_ = _Translations$misskey$ago_$fr_FR._(_root);
	@override late final _Translations$misskey$timeIn_$fr_FR timeIn_ = _Translations$misskey$timeIn_$fr_FR._(_root);
	@override late final _Translations$misskey$time_$fr_FR time_ = _Translations$misskey$time_$fr_FR._(_root);
	@override late final _Translations$misskey$x2fa_$fr_FR x2fa_ = _Translations$misskey$x2fa_$fr_FR._(_root);
	@override late final _Translations$misskey$permissions_$fr_FR permissions_ = _Translations$misskey$permissions_$fr_FR._(_root);
	@override late final _Translations$misskey$auth_$fr_FR auth_ = _Translations$misskey$auth_$fr_FR._(_root);
	@override late final _Translations$misskey$antennaSources_$fr_FR antennaSources_ = _Translations$misskey$antennaSources_$fr_FR._(_root);
	@override late final _Translations$misskey$weekday_$fr_FR weekday_ = _Translations$misskey$weekday_$fr_FR._(_root);
	@override late final _Translations$misskey$widgets_$fr_FR widgets_ = _Translations$misskey$widgets_$fr_FR._(_root);
	@override late final _Translations$misskey$widgetOptions_$fr_FR widgetOptions_ = _Translations$misskey$widgetOptions_$fr_FR._(_root);
	@override late final _Translations$misskey$cw_$fr_FR cw_ = _Translations$misskey$cw_$fr_FR._(_root);
	@override late final _Translations$misskey$poll_$fr_FR poll_ = _Translations$misskey$poll_$fr_FR._(_root);
	@override late final _Translations$misskey$visibility_$fr_FR visibility_ = _Translations$misskey$visibility_$fr_FR._(_root);
	@override late final _Translations$misskey$postForm_$fr_FR postForm_ = _Translations$misskey$postForm_$fr_FR._(_root);
	@override late final _Translations$misskey$profile_$fr_FR profile_ = _Translations$misskey$profile_$fr_FR._(_root);
	@override late final _Translations$misskey$exportOrImport_$fr_FR exportOrImport_ = _Translations$misskey$exportOrImport_$fr_FR._(_root);
	@override late final _Translations$misskey$charts_$fr_FR charts_ = _Translations$misskey$charts_$fr_FR._(_root);
	@override late final _Translations$misskey$instanceCharts_$fr_FR instanceCharts_ = _Translations$misskey$instanceCharts_$fr_FR._(_root);
	@override late final _Translations$misskey$timelines_$fr_FR timelines_ = _Translations$misskey$timelines_$fr_FR._(_root);
	@override late final _Translations$misskey$play_$fr_FR play_ = _Translations$misskey$play_$fr_FR._(_root);
	@override late final _Translations$misskey$pages_$fr_FR pages_ = _Translations$misskey$pages_$fr_FR._(_root);
	@override late final _Translations$misskey$relayStatus_$fr_FR relayStatus_ = _Translations$misskey$relayStatus_$fr_FR._(_root);
	@override late final _Translations$misskey$notification_$fr_FR notification_ = _Translations$misskey$notification_$fr_FR._(_root);
	@override late final _Translations$misskey$deck_$fr_FR deck_ = _Translations$misskey$deck_$fr_FR._(_root);
	@override late final _Translations$misskey$drivecleaner_$fr_FR drivecleaner_ = _Translations$misskey$drivecleaner_$fr_FR._(_root);
	@override late final _Translations$misskey$webhookSettings_$fr_FR webhookSettings_ = _Translations$misskey$webhookSettings_$fr_FR._(_root);
	@override late final _Translations$misskey$abuseReport_$fr_FR abuseReport_ = _Translations$misskey$abuseReport_$fr_FR._(_root);
	@override late final _Translations$misskey$moderationLogTypes_$fr_FR moderationLogTypes_ = _Translations$misskey$moderationLogTypes_$fr_FR._(_root);
	@override late final _Translations$misskey$fileViewer_$fr_FR fileViewer_ = _Translations$misskey$fileViewer_$fr_FR._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$fr_FR externalResourceInstaller_ = _Translations$misskey$externalResourceInstaller_$fr_FR._(_root);
	@override late final _Translations$misskey$dataSaver_$fr_FR dataSaver_ = _Translations$misskey$dataSaver_$fr_FR._(_root);
	@override late final _Translations$misskey$reversi_$fr_FR reversi_ = _Translations$misskey$reversi_$fr_FR._(_root);
	@override late final _Translations$misskey$mediaControls_$fr_FR mediaControls_ = _Translations$misskey$mediaControls_$fr_FR._(_root);
	@override late final _Translations$misskey$embedCodeGen_$fr_FR embedCodeGen_ = _Translations$misskey$embedCodeGen_$fr_FR._(_root);
	@override late final _Translations$misskey$remoteLookupErrors_$fr_FR remoteLookupErrors_ = _Translations$misskey$remoteLookupErrors_$fr_FR._(_root);
	@override late final _Translations$misskey$search_$fr_FR search_ = _Translations$misskey$search_$fr_FR._(_root);
	@override late final _Translations$misskey$watermarkEditor_$fr_FR watermarkEditor_ = _Translations$misskey$watermarkEditor_$fr_FR._(_root);
	@override late final _Translations$misskey$imageEffector_$fr_FR imageEffector_ = _Translations$misskey$imageEffector_$fr_FR._(_root);
	@override late final _Translations$misskey$qr_$fr_FR qr_ = _Translations$misskey$qr_$fr_FR._(_root);
}

// Path: misskey.imageEditing_
class _Translations$misskey$imageEditing_$fr_FR extends Translations$misskey$imageEditing_$en_US {
	_Translations$misskey$imageEditing_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$imageEditing_$vars_$fr_FR vars_ = _Translations$misskey$imageEditing_$vars_$fr_FR._(_root);
}

// Path: misskey.imageFrameEditor_
class _Translations$misskey$imageFrameEditor_$fr_FR extends Translations$misskey$imageFrameEditor_$en_US {
	_Translations$misskey$imageFrameEditor_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get header => 'Entête';
	@override String get font => 'Police de caractères';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
}

// Path: misskey.chat_
class _Translations$misskey$chat_$fr_FR extends Translations$misskey$chat_$en_US {
	_Translations$misskey$chat_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get invitations => 'Inviter';
	@override String get noHistory => 'Pas d\'historique';
	@override String get members => 'Membres';
	@override String get home => 'Principal';
	@override String get send => 'Envoyer';
}

// Path: misskey.abuseUserReport_
class _Translations$misskey$abuseUserReport_$fr_FR extends Translations$misskey$abuseUserReport_$en_US {
	_Translations$misskey$abuseUserReport_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get forward => 'Transférer';
	@override String get forwardDescription => 'Transférer le signalement vers une instance distante en tant qu\'anonyme.';
	@override String get resolve => 'Résoudre';
	@override String get accept => 'Accepter';
	@override String get reject => 'Rejeter';
	@override String get resolveTutorial => 'Si le signalement est légitime dans son contenu, sélectionnez « Accepter » pour marquer le cas comme résolu par l\'affirmative.\nSi le contenu du rapport n\'est pas légitime, sélectionnez « Rejeter » pour marquer le cas comme résolu par la négative.';
}

// Path: misskey.delivery_
class _Translations$misskey$delivery_$fr_FR extends Translations$misskey$delivery_$en_US {
	_Translations$misskey$delivery_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get status => 'Statut de la diffusion';
	@override String get stop => 'Suspendu·e';
	@override String get resume => 'Reprendre';
	@override late final _Translations$misskey$delivery_$type_$fr_FR type_ = _Translations$misskey$delivery_$type_$fr_FR._(_root);
}

// Path: misskey.bubbleGame_
class _Translations$misskey$bubbleGame_$fr_FR extends Translations$misskey$bubbleGame_$en_US {
	_Translations$misskey$bubbleGame_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => 'Comment jouer';
	@override String get hold => 'Réserver';
	@override late final _Translations$misskey$bubbleGame_$score_$fr_FR score_ = _Translations$misskey$bubbleGame_$score_$fr_FR._(_root);
}

// Path: misskey.announcement_
class _Translations$misskey$announcement_$fr_FR extends Translations$misskey$announcement_$en_US {
	_Translations$misskey$announcement_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => 'Pour les utilisateurs existants seulement';
	@override String get needConfirmationToRead => 'Exiger la confirmation de la lecture';
	@override String get needConfirmationToReadDescription => 'Si activé, afficher un dialogue de confirmation quand l\'annonce est marquée comme lue. Aussi, elle sera exclue de « marquer tout comme lu » .';
	@override String get end => 'Archiver l\'annonce';
	@override String get tooManyActiveAnnouncementDescription => 'Un grand nombre d\'annonces actives peut baisser l\'expérience utilisateur. Considérez d\'archiver les annonces obsolètes.';
	@override String get readConfirmTitle => 'Marquer comme lu ?';
	@override String readConfirmText({required Object title}) => 'Cela marquera le contenu de  « ${title} » comme lu.';
	@override String get shouldNotBeUsedToPresentPermanentInfo => 'Puisque cela pourrait nuire considérablement à l\'expérience utilisateur pour les nouveaux utilisateurs, il est recommandé d\'utiliser les annonces pour afficher des informations temporaires plutôt que des informations persistantes.';
	@override String get dialogAnnouncementUxWarn => 'Avoir deux ou plus annonces de style dialogue en même temps pourrait nuire considérablement à l\'expérience utilisateur. Veuillez les utiliser avec caution.';
	@override String get silence => 'Ne pas me notifier';
	@override String get silenceDescription => 'Si activée, vous ne recevrez pas de notifications sur les annonces et n\'aurez pas besoin de les marquer comme lues.';
}

// Path: misskey.initialAccountSetting_
class _Translations$misskey$initialAccountSetting_$fr_FR extends Translations$misskey$initialAccountSetting_$en_US {
	_Translations$misskey$initialAccountSetting_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => 'Votre compte a été créé avec succès !';
	@override String get letsStartAccountSetup => 'Procédons au réglage initial du compte.';
	@override String get letsFillYourProfile => 'Commençons par configurer votre profil !';
	@override String get profileSetting => 'Paramètres du profil';
	@override String get privacySetting => 'Paramètres de confidentialité';
	@override String get initialAccountSettingCompleted => 'Configuration du profil terminée avec succès !';
	@override String haveFun({required Object name}) => 'Profitez de ${name} !';
	@override String youCanContinueTutorial({required Object name}) => 'Vous pouvez procéder au tutoriel sur l\'utilisation de ${name}(Misskey) ou vous arrêter ici et commencer à l\'utiliser immédiatement.';
	@override String get startTutorial => 'Démarrer le tutoriel';
	@override String get skipAreYouSure => 'Désirez-vous ignorer la configuration du profil ?';
}

// Path: misskey.initialTutorial_
class _Translations$misskey$initialTutorial_$fr_FR extends Translations$misskey$initialTutorial_$en_US {
	_Translations$misskey$initialTutorial_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'Visionner le tutoriel';
	@override String get title => 'Tutoriel';
	@override String get wellDone => 'Bien joué !';
	@override String get skipAreYouSure => 'Quitter le tutoriel ?';
	@override late final _Translations$misskey$initialTutorial_$landing_$fr_FR landing_ = _Translations$misskey$initialTutorial_$landing_$fr_FR._(_root);
	@override late final _Translations$misskey$initialTutorial_$note_$fr_FR note_ = _Translations$misskey$initialTutorial_$note_$fr_FR._(_root);
	@override late final _Translations$misskey$initialTutorial_$reaction_$fr_FR reaction_ = _Translations$misskey$initialTutorial_$reaction_$fr_FR._(_root);
	@override late final _Translations$misskey$initialTutorial_$timeline_$fr_FR timeline_ = _Translations$misskey$initialTutorial_$timeline_$fr_FR._(_root);
	@override late final _Translations$misskey$initialTutorial_$postNote_$fr_FR postNote_ = _Translations$misskey$initialTutorial_$postNote_$fr_FR._(_root);
	@override late final _Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$fr_FR howToMakeAttachmentsSensitive_ = _Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$fr_FR._(_root);
	@override late final _Translations$misskey$initialTutorial_$done_$fr_FR done_ = _Translations$misskey$initialTutorial_$done_$fr_FR._(_root);
}

// Path: misskey.timelineDescription_
class _Translations$misskey$timelineDescription_$fr_FR extends Translations$misskey$timelineDescription_$en_US {
	_Translations$misskey$timelineDescription_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get home => 'Sur le fil principal, vous pouvez voir les notes des utilisateurs auxquels vous êtes abonné·e.';
	@override String get local => 'Sur le fil local, vous pouvez voir les notes de tous les utilisateurs sur cette instance.';
	@override String get social => 'Sur le fil social, les notes des fils principal et local sont affichées.';
	@override String get global => 'Sur le fil global, vous pouvez voir les notes de toutes les instances connectées.';
}

// Path: misskey.serverSettings_
class _Translations$misskey$serverSettings_$fr_FR extends Translations$misskey$serverSettings_$en_US {
	_Translations$misskey$serverSettings_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get iconUrl => 'URL de l’icône';
	@override String appIconResolutionMustBe({required Object resolution}) => 'La résolution doit être au moins ${resolution}.';
	@override String get shortName => 'Nom court';
	@override String get shortNameDescription => 'Si le nom officiel de l\'instance est long, cette abréviation peut être affichée à la place.';
	@override String get fanoutTimelineDescription => 'Si activée, la performance de la récupération de la chronologie augmentera considérablement et la charge sur la base de données sera réduite. En revanche, l\'utilisation de la mémoire de Redis augmentera. Considérez désactiver cette option si le serveur est bas en mémoire ou instable.';
	@override String get fanoutTimelineDbFallback => 'Recours à la base de données';
	@override String get fanoutTimelineDbFallbackDescription => 'Si activée, une demande supplémentaire à la base de données est effectuée comme solution de rechange quand le fil n\'est pas mis en cache. Si désactivée, la demande à la base de données n\'est pas effectuée, ce qui réduit davantage la charge du serveur mais limite l\'étendue du fil récupérable.';
}

// Path: misskey.accountMigration_
class _Translations$misskey$accountMigration_$fr_FR extends Translations$misskey$accountMigration_$en_US {
	_Translations$misskey$accountMigration_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => 'Migrer un autre compte vers le présent compte';
	@override String get moveFromSub => 'Créer un alias vers un autre compte';
	@override String get moveToLabel => 'Compte vers lequel vous migrez :';
	@override String get startMigration => 'Migrer';
	@override String get movedTo => 'Compte vers lequel vous migrez :';
}

// Path: misskey.achievements_
class _Translations$misskey$achievements_$fr_FR extends Translations$misskey$achievements_$en_US {
	_Translations$misskey$achievements_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Date d\'obtention';
	@override late final _Translations$misskey$achievements_$types_$fr_FR types_ = _Translations$misskey$achievements_$types_$fr_FR._(_root);
}

// Path: misskey.role_
class _Translations$misskey$role_$fr_FR extends Translations$misskey$role_$en_US {
	_Translations$misskey$role_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Nouveau rôle';
	@override String get edit => 'Modifier le rôle';
	@override String get name => 'Nom du rôle';
	@override String get description => 'Description du rôle';
	@override String get permission => 'Autorisations du rôle';
	@override String get assignTarget => 'Attribuer';
	@override String get manual => 'Manuel';
	@override String get manualRoles => 'Rôles manuels';
	@override String get conditional => 'Conditionnel';
	@override String get conditionalRoles => 'Rôles conditionnels';
	@override String get condition => 'Condition';
	@override String get isConditionalRole => 'Ceci est un rôle conditionnel.';
	@override String get isPublic => 'Rôle public';
	@override String get options => 'Options';
	@override String get policies => 'Stratégies';
	@override String get baseRole => 'Modèle de rôle';
	@override String get useBaseValue => 'Utiliser la valeur du modèle de rôle';
	@override String get chooseRoleToAssign => 'Sélectionner le rôle à assigner';
	@override String get iconUrl => 'URL de l’icône';
	@override String get displayOrder => 'Classement';
	@override String get priority => 'Priorité';
	@override late final _Translations$misskey$role_$priority_$fr_FR priority_ = _Translations$misskey$role_$priority_$fr_FR._(_root);
	@override late final _Translations$misskey$role_$options_$fr_FR options_ = _Translations$misskey$role_$options_$fr_FR._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _Translations$misskey$sensitiveMediaDetection_$fr_FR extends Translations$misskey$sensitiveMediaDetection_$en_US {
	_Translations$misskey$sensitiveMediaDetection_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get description => 'L\'apprentissage automatique peut être utilisé pour détecter automatiquement les médias sensibles à modérer. La sollicitation des serveurs augmente légèrement.';
	@override String get sensitivity => 'Sensibilité de la détection';
	@override String get sensitivityDescription => 'Une sensibilité plus faible réduit les faux positifs. Une sensibilité plus élevée réduit les omissions (faux négatifs).';
	@override String get setSensitiveFlagAutomatically => 'Définir le drapeau NSFW.';
	@override String get setSensitiveFlagAutomaticallyDescription => 'Même si ce paramètre est désactivé, le résultat de la décision est conservé en interne.';
	@override String get analyzeVideos => 'Activer l’analyse de vidéos';
	@override String get analyzeVideosDescription => 'Veillez à ce que les vidéos soient analysées en plus des images fixes. La sollicitation des serveurs augmentera légèrement.';
}

// Path: misskey.emailUnavailable_
class _Translations$misskey$emailUnavailable_$fr_FR extends Translations$misskey$emailUnavailable_$en_US {
	_Translations$misskey$emailUnavailable_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get used => 'Non disponible';
	@override String get format => 'Le format de cette adresse de courriel est invalide';
	@override String get disposable => 'Les adresses e-mail jetables ne peuvent pas être utilisées';
	@override String get mx => 'Ce serveur de courriels est invalide';
	@override String get smtp => 'Ce serveur de courriels ne répond pas';
}

// Path: misskey.ffVisibility_
class _Translations$misskey$ffVisibility_$fr_FR extends Translations$misskey$ffVisibility_$en_US {
	_Translations$misskey$ffVisibility_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get public => 'Public';
	@override String get followers => 'Visible uniquement pour les abonné·e·s';
	@override String get private => 'Privé';
}

// Path: misskey.signup_
class _Translations$misskey$signup_$fr_FR extends Translations$misskey$signup_$en_US {
	_Translations$misskey$signup_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Bientôt fini';
	@override String get emailAddressInfo => 'Insérez votre adresse e-mail.';
	@override String emailSent({required Object email}) => 'Un courriel de confirmation vient d\'être envoyé à l\'adresse que vous avez renseignée (${email}). Cliquez sur le lien contenu dans le message pour terminer la création de votre compte.';
}

// Path: misskey.accountDelete_
class _Translations$misskey$accountDelete_$fr_FR extends Translations$misskey$accountDelete_$en_US {
	_Translations$misskey$accountDelete_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Supprimer le compte';
	@override String get mayTakeTime => 'La suppression de compte nécessitant beaucoup de ressources, l\'exécution du processus peut prendre du temps, en fonction de la quantité de contenus que vous avez créés et du nombre de fichiers que vous avez téléversés.';
	@override String get sendEmail => 'Une fois la suppression de votre compte effectuée, un courriel sera envoyé à l\'adresse que vous aviez enregistrée.';
	@override String get requestAccountDelete => 'Demander la suppression de votre compte';
	@override String get started => 'La procédure de suppression a commencé.';
	@override String get inProgress => 'Suppression en cours';
}

// Path: misskey.ad_
class _Translations$misskey$ad_$fr_FR extends Translations$misskey$ad_$en_US {
	_Translations$misskey$ad_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get back => 'Retour';
	@override String get reduceFrequencyOfThisAd => 'Voir cette publicité moins souvent';
	@override String get hide => 'Cacher ';
	@override String get adsSettings => 'Paramètres des publicités';
	@override String get notesPerOneAd => 'Intervalle de diffusion de publicités lors de la mise à jour en temps réel (nombre de notes par publicité)';
	@override String get setZeroToDisable => 'Mettre cette valeur à 0 pour désactiver la diffusion de publicités lors de la mise à jour en temps réel';
	@override String get adsTooClose => 'L\'expérience utilisateur peut être gravement compromise par un intervalle de diffusion de publicités extrêmement court.';
}

// Path: misskey.forgotPassword_
class _Translations$misskey$forgotPassword_$fr_FR extends Translations$misskey$forgotPassword_$en_US {
	_Translations$misskey$forgotPassword_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Entrez ici l\'adresse e-mail que vous avez enregistrée pour votre compte. Un lien vous permettant de réinitialiser votre mot de passe sera envoyé à cette adresse.';
	@override String get ifNoEmail => 'Si vous n\'avez pas enregistré d\'adresse e-mail, merci de contacter l\'administrateur·rice de votre instance.';
	@override String get contactAdmin => 'Cette instance ne permettant pas l\'utilisation d\'adresses e-mail, prenez contact avec l\'administrateur·rice pour procéder à la réinitialisation de votre mot de passe.';
}

// Path: misskey.gallery_
class _Translations$misskey$gallery_$fr_FR extends Translations$misskey$gallery_$en_US {
	_Translations$misskey$gallery_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get my => 'Mes publications';
	@override String get liked => ' Publications que j\'ai aimées';
	@override String get like => 'J\'aime';
	@override String get unlike => 'Je n’aime pas';
}

// Path: misskey.email_
class _Translations$misskey$email_$fr_FR extends Translations$misskey$email_$en_US {
	_Translations$misskey$email_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$email_$follow_$fr_FR follow_ = _Translations$misskey$email_$follow_$fr_FR._(_root);
	@override late final _Translations$misskey$email_$receiveFollowRequest_$fr_FR receiveFollowRequest_ = _Translations$misskey$email_$receiveFollowRequest_$fr_FR._(_root);
}

// Path: misskey.plugin_
class _Translations$misskey$plugin_$fr_FR extends Translations$misskey$plugin_$en_US {
	_Translations$misskey$plugin_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get install => 'Installation d\'extensions';
	@override String get installWarn => 'N’installez que des extensions provenant de sources de confiance.';
	@override String get manage => 'Gestion des extensions';
	@override String get viewSource => 'Afficher la source';
}

// Path: misskey.preferencesBackups_
class _Translations$misskey$preferencesBackups_$fr_FR extends Translations$misskey$preferencesBackups_$en_US {
	_Translations$misskey$preferencesBackups_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get list => 'Sauvegardes créées';
	@override String get saveNew => 'Nouvelle sauvegarde';
	@override String get loadFile => 'Importer à partir d’un fichier';
	@override String get apply => 'Appliquer à cet appareil';
	@override String get save => 'Sauvegarder les changements';
	@override String get inputName => 'Entrez le nom de la sauvegarde';
	@override String get cannotSave => 'Impossible de sauvegarder';
	@override String nameAlreadyExists({required Object name}) => 'Le nom de sauvegarde "${name}" existe déjà. Veuillez spécifier un autre nom.';
	@override String applyConfirm({required Object name}) => 'Voulez-vous appliquer la sauvegarde \'${name}\' au dispositif actuel ? La configuration actuelle de l\'appareil sera perdue.';
	@override String saveConfirm({required Object name}) => 'Voulez-vous écraser ${name} ?';
	@override String deleteConfirm({required Object name}) => 'Êtes-vous sûr·e de vouloir supprimer ${name} ?';
	@override String renameConfirm({required Object old, required Object new_}) => 'Voulez-vous remplacer "${old}" par "${new_}" ?';
	@override String get noBackups => 'Aucune sauvegarde n\'est disponible. L\'option "Nouvelle sauvegarde" vous permet de sauvegarder la configuration actuelle du client sur le serveur.';
	@override String createdAt({required Object date, required Object time}) => 'Créé : ${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => 'Mis à jour : ${date} ${time}';
	@override String get cannotLoad => 'Échec du chargement';
	@override String get invalidFile => 'Format de fichier non valide';
}

// Path: misskey.registry_
class _Translations$misskey$registry_$fr_FR extends Translations$misskey$registry_$en_US {
	_Translations$misskey$registry_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Portée';
	@override String get key => 'Clé ';
	@override String get keys => 'Clé ';
	@override String get domain => 'Domaine';
	@override String get createKey => 'Créer une clé';
}

// Path: misskey.aboutMisskey_
class _Translations$misskey$aboutMisskey_$fr_FR extends Translations$misskey$aboutMisskey_$en_US {
	_Translations$misskey$aboutMisskey_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey est un logiciel libre et ouvert, développé par syuilo depuis 2014.';
	@override String get contributors => 'Principaux contributeurs';
	@override String get allContributors => 'Tous les contributeurs';
	@override String get source => 'Code source';
	@override String get translation => 'Traduire Misskey';
	@override String get donate => 'Soutenir Misskey';
	@override String get morePatrons => 'Nous apprécions vraiment le soutien de nombreuses autres personnes non mentionnées ici. Merci à toutes et à tous ! 🥰';
	@override String get patrons => 'Contributeurs';
	@override String get projectMembers => 'Membres du projet';
}

// Path: misskey.displayOfSensitiveMedia_
class _Translations$misskey$displayOfSensitiveMedia_$fr_FR extends Translations$misskey$displayOfSensitiveMedia_$en_US {
	_Translations$misskey$displayOfSensitiveMedia_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get force => 'Masquer tous les médias';
}

// Path: misskey.instanceTicker_
class _Translations$misskey$instanceTicker_$fr_FR extends Translations$misskey$instanceTicker_$en_US {
	_Translations$misskey$instanceTicker_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get none => 'Cacher ';
	@override String get remote => 'Montrer pour les utilisateur·ice·s distant·e·s';
	@override String get always => 'Toujours afficher';
}

// Path: misskey.serverDisconnectedBehavior_
class _Translations$misskey$serverDisconnectedBehavior_$fr_FR extends Translations$misskey$serverDisconnectedBehavior_$en_US {
	_Translations$misskey$serverDisconnectedBehavior_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Rechargement automatique';
	@override String get dialog => 'Ouvrir une boîte de dialogue pour l\'avertissement';
	@override String get quiet => 'Afficher un avertissement discret';
}

// Path: misskey.channel_
class _Translations$misskey$channel_$fr_FR extends Translations$misskey$channel_$en_US {
	_Translations$misskey$channel_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get create => 'Créer un canal';
	@override String get edit => 'Éditer le canal';
	@override String get setBanner => 'Sélectionner la bannière';
	@override String get removeBanner => 'Supprimer la bannière';
	@override String get featured => 'Tendances';
	@override String get owned => 'Mes canaux';
	@override String get following => 'Abonné·e';
	@override String usersCount({required Object n}) => '${n} Participant·e·s';
	@override String notesCount({required Object n}) => '${n} Notes';
	@override String get nameAndDescription => 'Nom et description';
	@override String get nameOnly => 'Nom seulement';
	@override String get allowRenoteToExternal => 'Permettre la renote et la citation hors du canal';
}

// Path: misskey.menuDisplay_
class _Translations$misskey$menuDisplay_$fr_FR extends Translations$misskey$menuDisplay_$en_US {
	_Translations$misskey$menuDisplay_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Latéral';
	@override String get sideIcon => 'Latéral (icônes)';
	@override String get top => 'Haut de page';
	@override String get hide => 'Masquer';
}

// Path: misskey.wordMute_
class _Translations$misskey$wordMute_$fr_FR extends Translations$misskey$wordMute_$en_US {
	_Translations$misskey$wordMute_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Mots à filtrer';
	@override String get muteWordsDescription => 'Séparer avec des espaces pour la condition AND. Séparer avec un saut de ligne pour une condition OR.';
	@override String get muteWordsDescription2 => 'Pour utiliser des expressions régulières (regex), mettez les mots-clés entre barres obliques.';
}

// Path: misskey.instanceMute_
class _Translations$misskey$instanceMute_$fr_FR extends Translations$misskey$instanceMute_$en_US {
	_Translations$misskey$instanceMute_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Met en sourdine toutes les notes et renotes de l\'instance configurée, y compris les réponses aux utilisateurs de l\'instance muette.';
	@override String get instanceMuteDescription2 => 'Séparer avec de nouvelles lignes';
	@override String get title => 'Masque les notes venant des instances listées.';
	@override String get heading => 'Instances à mettre en sourdine';
}

// Path: misskey.theme_
class _Translations$misskey$theme_$fr_FR extends Translations$misskey$theme_$en_US {
	_Translations$misskey$theme_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get explore => 'Explorer les thèmes';
	@override String get install => 'Installer un thème';
	@override String get manage => 'Gestion des thèmes';
	@override String get code => 'Code du thème';
	@override String get description => 'Description';
	@override String installed({required Object name}) => '${name} a été installé';
	@override String get installedThemes => 'Thèmes installés';
	@override String get builtinThemes => 'Thèmes intégrés';
	@override String get alreadyInstalled => 'Ce thème est déjà installé';
	@override String get invalid => 'Le format du thème n\'est pas valide';
	@override String get make => 'Créer un thème';
	@override String get base => 'Base';
	@override String get addConstant => 'Ajouter une constante';
	@override String get constant => 'Constante';
	@override String get defaultValue => 'Valeur par défaut';
	@override String get color => 'Couleur';
	@override String get refProp => 'Appeler une propriété';
	@override String get refConst => 'Appeler une constante';
	@override String get key => 'Clé ';
	@override String get func => 'Fonction';
	@override String get funcKind => 'Type de fonction';
	@override String get argument => 'Argument';
	@override String get basedProp => 'Nom de la propriété référencée';
	@override String get alpha => 'Transparence';
	@override String get darken => 'Sombre';
	@override String get lighten => 'Clair';
	@override String get inputConstantName => 'Insérez un nom de constante';
	@override String get importInfo => 'Vous pouvez importer un thème vers l’éditeur de thèmes en saisissant son code ici.';
	@override String deleteConstantConfirm({required Object const_}) => 'Êtes-vous sûr·e de vouloir supprimer la constante ${const_} ?';
	@override late final _Translations$misskey$theme_$keys$fr_FR keys = _Translations$misskey$theme_$keys$fr_FR._(_root);
}

// Path: misskey.sfx_
class _Translations$misskey$sfx_$fr_FR extends Translations$misskey$sfx_$en_US {
	_Translations$misskey$sfx_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get note => 'Nouvelle note';
	@override String get noteMy => 'Ma note';
	@override String get notification => 'Notifications';
	@override String get reaction => 'Lors de la sélection de la réaction';
}

// Path: misskey.soundSettings_
class _Translations$misskey$soundSettings_$fr_FR extends Translations$misskey$soundSettings_$en_US {
	_Translations$misskey$soundSettings_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get driveFile => 'Utiliser un effet sonore sur le Disque';
	@override String get driveFileWarn => 'Veuillez sélectionner le fichier sur le Disque';
	@override String get driveFileTypeWarn => 'Ce fichier n\'est pas pris en charge';
	@override String get driveFileTypeWarnDescription => 'Veuillez sélectionner un fichier audio';
	@override String get driveFileDurationWarn => 'L\'effet sonore est trop long';
	@override String get driveFileDurationWarnDescription => 'Utiliser un effet sonore long peut affecter l\'utilisation de Misskey. Voulez-vous encore continuer ?';
}

// Path: misskey.ago_
class _Translations$misskey$ago_$fr_FR extends Translations$misskey$ago_$en_US {
	_Translations$misskey$ago_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get future => 'Futur';
	@override String get justNow => 'à l’instant';
	@override String secondsAgo({required Object n}) => 'Il y a ${n}s';
	@override String minutesAgo({required Object n}) => 'Il y a ${n}min';
	@override String hoursAgo({required Object n}) => 'Il y a ${n} heures';
	@override String daysAgo({required Object n}) => 'Il y a ${n} jours';
	@override String weeksAgo({required Object n}) => 'Il y a ${n} semaines';
	@override String monthsAgo({required Object n}) => 'Il y a ${n} mois';
	@override String yearsAgo({required Object n}) => 'Il y a ${n} ans';
	@override String get invalid => 'Il n\'y a rien à voir ici';
}

// Path: misskey.timeIn_
class _Translations$misskey$timeIn_$fr_FR extends Translations$misskey$timeIn_$en_US {
	_Translations$misskey$timeIn_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String seconds({required Object n}) => 'Dans ${n}s';
	@override String minutes({required Object n}) => 'Dans ${n}min';
	@override String hours({required Object n}) => 'Dans ${n}h';
	@override String days({required Object n}) => 'Dans ${n}j';
	@override String weeks({required Object n}) => 'Dans ${n} sem.';
	@override String months({required Object n}) => 'Dans ${n} mois';
	@override String years({required Object n}) => 'Dans ${n}a';
}

// Path: misskey.time_
class _Translations$misskey$time_$fr_FR extends Translations$misskey$time_$en_US {
	_Translations$misskey$time_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get second => 's';
	@override String get minute => 'min';
	@override String get hour => 'h';
	@override String get day => 'j';
}

// Path: misskey.x2fa_
class _Translations$misskey$x2fa_$fr_FR extends Translations$misskey$x2fa_$en_US {
	_Translations$misskey$x2fa_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'Configuration déjà achevée.';
	@override String step1({required Object a, required Object b}) => 'Tout d\'abord, installez une application d\'authentification, telle que ${a} ou ${b}, sur votre appareil.';
	@override String get step2 => 'Ensuite, scannez le code QR affiché sur l’écran.';
	@override String get step3Title => 'Veuillez saisir le code d’authentification';
	@override String get step3 => 'Entrez le jeton affiché sur votre application pour compléter la configuration.';
	@override String get setupCompleted => 'Configuration terminée avec succès !';
	@override String get step4 => 'À partir de maintenant, ce même jeton vous sera demandé à chacune de vos connexions.';
	@override String get securityKeyNotSupported => 'Votre navigateur ne prend pas en charge les clés de sécurité.';
	@override String get securityKeyInfo => 'Vous pouvez configurer l\'authentification WebAuthN pour sécuriser davantage le processus de connexion grâce à une clé de sécurité matérielle qui prend en charge FIDO2, ou bien en configurant l\'authentification par empreinte digitale ou par code PIN sur votre appareil.';
	@override String get securityKeyName => 'Nom de la clé';
	@override String get removeKey => 'Supprimer la clé de sécurité';
	@override String removeKeyConfirm({required Object name}) => 'Êtes-vous sûr·e de vouloir supprimer ${name} ?';
	@override String get renewTOTPOk => 'Reconfigurer';
	@override String get renewTOTPCancel => 'Pas maintenant';
	@override String get backupCodes => 'Codes de Secours';
}

// Path: misskey.permissions_
class _Translations$misskey$permissions_$fr_FR extends Translations$misskey$permissions_$en_US {
	_Translations$misskey$permissions_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'Afficher les informations du compte';
	@override String get writeAccount => 'Mettre à jour les informations de votre compte';
	@override String get readBlocks => 'Voir les comptes bloqués';
	@override String get writeBlocks => 'Gérer les comptes bloqués';
	@override String get readDrive => 'Parcourir le Disque';
	@override String get writeDrive => 'Modifier le Disque';
	@override String get readFavorites => 'Afficher les favoris';
	@override String get writeFavorites => 'Gérer les favoris';
	@override String get readFollowing => 'Voir les informations de vos abonnements';
	@override String get writeFollowing => 'Abonnements/Se désabonner';
	@override String get readMessaging => 'Voir vos discussions';
	@override String get writeMessaging => 'Gérer les discussions';
	@override String get readMutes => 'Voir les comptes masqués';
	@override String get writeMutes => 'Gérer les comptes masqués';
	@override String get writeNotes => 'Créer / supprimer des notes';
	@override String get readNotifications => 'Afficher les notifications';
	@override String get writeNotifications => 'Gérer vos notifications';
	@override String get readReactions => 'Lire les réactions';
	@override String get writeReactions => 'Gérer vos réactions';
	@override String get writeVotes => 'Voter';
	@override String get readPages => 'Voir vos pages';
	@override String get writePages => 'Gérer les pages';
	@override String get readPageLikes => 'Voir les mentions « J\'aime » des pages';
	@override String get writePageLikes => 'Gérer les mentions « J\'aime » sur les pages';
	@override String get readUserGroups => 'Voir les groupes d\'utilisateur·rice·s';
	@override String get writeUserGroups => 'Éditer les groupes d\'utilisateur·rice·s';
	@override String get readChannels => 'Lire les canaux';
	@override String get writeChannels => 'Gérer les canaux';
	@override String get readGallery => 'Voir la galerie';
	@override String get writeGallery => 'Éditer la galerie';
	@override String get readGalleryLikes => 'Voir les mentions « J\'aime » dans la galerie';
	@override String get writeGalleryLikes => 'Gérer les mentions « J\'aime » dans la galerie';
	@override String get readFlash => 'Voir le Play';
	@override String get writeFlash => 'Modifier le Play';
	@override String get readFlashLikes => 'Lire vos mentions j\'aime des Play';
	@override String get writeFlashLikes => 'Modifier vos mentions j\'aime des Play';
	@override String get readAdminAbuseUserReports => 'Voir les utilisateurs signalés';
	@override String get writeAdminDeleteAccount => 'Supprimer le compte d\'utilisateur';
	@override String get writeAdminDeleteAllFilesOfAUser => 'Supprimer tous les fichiers d\'un utilisateur';
	@override String get readAdminIndexStats => 'Voir les statistiques sur les index de base de données';
	@override String get readAdminTableStats => 'Voir les statistiques sur les index de base de données';
	@override String get readAdminUserIps => 'Voir l\'adresse IP de l\'utilisateur';
	@override String get readAdminMeta => 'Voir les métadonnées de l\'instance';
	@override String get writeAdminResetPassword => 'Réinitialiser le mot de passe de l\'utilisateur';
	@override String get writeAdminResolveAbuseUserReport => 'Résoudre le signalement d\'un utilisateur';
	@override String get writeAdminSendEmail => 'Envoyer un mail';
	@override String get readAdminServerInfo => 'Voir les informations de l\'instance';
	@override String get readAdminShowModerationLog => 'Voir les logs de modération';
	@override String get readAdminShowUser => 'Voir les informations privées de l\'utilisateur';
	@override String get writeAdminSuspendUser => 'Suspendre l\'utilisateur';
	@override String get writeAdminUnsetUserAvatar => 'Retirer l\'avatar de l\'utilisateur';
	@override String get writeAdminUnsetUserBanner => 'Retirer la bannière de l\'utilisateur';
	@override String get writeAdminUnsuspendUser => 'Lever la suspension d\'un utilisateur';
	@override String get writeAdminMeta => 'Gérer les métadonnées de l\'instance';
	@override String get writeAdminRoles => 'Gérer les rôles';
	@override String get writeChat => 'Gérer les discussions';
}

// Path: misskey.auth_
class _Translations$misskey$auth_$fr_FR extends Translations$misskey$auth_$en_US {
	_Translations$misskey$auth_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String shareAccess({required Object name}) => 'Autoriser "${name}" à accéder à votre compte ?';
	@override String get shareAccessAsk => 'Voulez-vous vraiment autoriser cette application à accéder à votre compte?';
	@override String get permissionAsk => 'Cette application nécessite les autorisations suivantes :';
	@override String get pleaseGoBack => 'Veuillez retourner à l’application';
	@override String get callback => 'Retour vers l’application';
	@override String get denied => 'Accès refusé';
}

// Path: misskey.antennaSources_
class _Translations$misskey$antennaSources_$fr_FR extends Translations$misskey$antennaSources_$en_US {
	_Translations$misskey$antennaSources_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get all => 'Toutes les notes';
	@override String get homeTimeline => 'Notes venant des utilisateur·rice·s auxquel·les je suis abonné';
	@override String get users => 'Notes venant de la part d’utilisateur·rice·s précis';
	@override String get userList => 'Notes venant d’une liste spécifique';
}

// Path: misskey.weekday_
class _Translations$misskey$weekday_$fr_FR extends Translations$misskey$weekday_$en_US {
	_Translations$misskey$weekday_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get sunday => 'Dimanche';
	@override String get monday => 'Lundi';
	@override String get tuesday => 'Mardi';
	@override String get wednesday => 'Mercredi';
	@override String get thursday => 'Jeudi';
	@override String get friday => 'Vendredi';
	@override String get saturday => 'Samedi';
}

// Path: misskey.widgets_
class _Translations$misskey$widgets_$fr_FR extends Translations$misskey$widgets_$en_US {
	_Translations$misskey$widgets_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Profil';
	@override String get instanceInfo => 'Informations sur l’instance';
	@override String get memo => 'Note collante';
	@override String get notifications => 'Notifications';
	@override String get timeline => 'Fil';
	@override String get calendar => 'Calendrier';
	@override String get trends => 'Tendances';
	@override String get clock => 'Horloge';
	@override String get rss => 'Lecteur de flux RSS';
	@override String get rssTicker => 'Filtre RSS';
	@override String get activity => 'Activité';
	@override String get photos => 'Photos';
	@override String get digitalClock => 'Horloge numérique';
	@override String get unixClock => 'Horloge UNIX';
	@override String get federation => 'Fédération';
	@override String get postForm => 'Formulaire de publication';
	@override String get slideshow => 'Diaporama';
	@override String get button => 'Bouton';
	@override String get onlineUsers => 'Utilisateurs en ligne';
	@override String get jobQueue => 'File d’attente';
	@override String get serverMetric => 'Statistiques du serveur';
	@override String get aiscript => 'Console AiScript';
	@override String get aichan => 'Ai';
	@override String get userList => 'Liste utilisateur';
	@override late final _Translations$misskey$widgets_$userList_$fr_FR userList_ = _Translations$misskey$widgets_$userList_$fr_FR._(_root);
	@override String get birthdayFollowings => 'Utilisateurs qui fêtent l\'anniversaire aujourd\'hui';
}

// Path: misskey.widgetOptions_
class _Translations$misskey$widgetOptions_$fr_FR extends Translations$misskey$widgetOptions_$en_US {
	_Translations$misskey$widgetOptions_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get height => 'Hauteur';
	@override late final _Translations$misskey$widgetOptions_$button_$fr_FR button_ = _Translations$misskey$widgetOptions_$button_$fr_FR._(_root);
	@override late final _Translations$misskey$widgetOptions_$clock_$fr_FR clock_ = _Translations$misskey$widgetOptions_$clock_$fr_FR._(_root);
	@override late final _Translations$misskey$widgetOptions_$birthdayFollowings_$fr_FR birthdayFollowings_ = _Translations$misskey$widgetOptions_$birthdayFollowings_$fr_FR._(_root);
}

// Path: misskey.cw_
class _Translations$misskey$cw_$fr_FR extends Translations$misskey$cw_$en_US {
	_Translations$misskey$cw_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Masquer';
	@override String get show => 'Afficher le contenu';
	@override String chars({required Object count}) => '${count} caractères';
	@override String files({required Object count}) => '${count} fichiers';
}

// Path: misskey.poll_
class _Translations$misskey$poll_$fr_FR extends Translations$misskey$poll_$en_US {
	_Translations$misskey$poll_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'Au moins 2 réponses nécéssaires';
	@override String choiceN({required Object n}) => 'Choix ${n}';
	@override String get noMore => 'Vous ne pouvez pas en ajouter davantage';
	@override String get canMultipleVote => 'Autoriser le multi-choix';
	@override String get expiration => 'Fin du sondage';
	@override String get infinite => 'Illimité';
	@override String get at => 'Choisir une date';
	@override String get after => 'Choisir la durée';
	@override String get deadlineDate => 'Date de fin';
	@override String get deadlineTime => 'Heure de fin';
	@override String get duration => 'Durée';
	@override String votesCount({required Object n}) => '${n} votes';
	@override String totalVotes({required Object n}) => '${n} votes au total';
	@override String get vote => 'Voter';
	@override String get showResult => 'Voir résultats';
	@override String get voted => 'Déjà voté';
	@override String get closed => 'Terminé';
	@override String remainingDays({required Object d, required Object h}) => '${d} jours, ${h} heures restantes';
	@override String remainingHours({required Object h, required Object m}) => '${h} heures et ${m} minutes restantes';
	@override String remainingMinutes({required Object m, required Object s}) => '${m} minutes et ${s} secondes restantes';
	@override String remainingSeconds({required Object s}) => '${s} secondes restantes';
}

// Path: misskey.visibility_
class _Translations$misskey$visibility_$fr_FR extends Translations$misskey$visibility_$en_US {
	_Translations$misskey$visibility_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get public => 'Public';
	@override String get publicDescription => 'Publier à tou·te·s les utilisateur·rice·s';
	@override String get home => 'Principal';
	@override String get homeDescription => 'Publier sur le fil principal uniquement';
	@override String get followers => 'Abonné·e·s';
	@override String get followersDescription => 'Publier à vos abonné·e·s uniquement';
	@override String get specified => 'Direct';
	@override String get specifiedDescription => 'Publier uniquement aux utilisateur·rice·s mentionné·e·s';
	@override String get disableFederation => 'Défédérer';
}

// Path: misskey.postForm_
class _Translations$misskey$postForm_$fr_FR extends Translations$misskey$postForm_$en_US {
	_Translations$misskey$postForm_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'Répondre à cette note ...';
	@override String get quotePlaceholder => 'Citez cette note ...';
	@override String get channelPlaceholder => 'Publier au canal…';
	@override late final _Translations$misskey$postForm_$howToUse_$fr_FR howToUse_ = _Translations$misskey$postForm_$howToUse_$fr_FR._(_root);
	@override late final _Translations$misskey$postForm_$placeholders_$fr_FR placeholders_ = _Translations$misskey$postForm_$placeholders_$fr_FR._(_root);
}

// Path: misskey.profile_
class _Translations$misskey$profile_$fr_FR extends Translations$misskey$profile_$en_US {
	_Translations$misskey$profile_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nom';
	@override String get username => 'Nom d’utilisateur·rice';
	@override String get description => 'À propos de moi';
	@override String get youCanIncludeHashtags => 'Vous pouvez également inclure des hashtags.';
	@override String get metadata => 'Informations supplémentaires';
	@override String get metadataEdit => 'Éditer les informations supplémentaires';
	@override String get metadataDescription => 'Vous pouvez afficher jusqu\'à quatre informations supplémentaires dans votre profil.';
	@override String get metadataLabel => 'Étiquette';
	@override String get metadataContent => 'Contenu';
	@override String get changeAvatar => 'Changer l\'avatar';
	@override String get changeBanner => 'Changer de bannière';
	@override String avatarDecorationMax({required Object max}) => 'Vous pouvez mettre au plus ${max} décorations d\'avatar.';
}

// Path: misskey.exportOrImport_
class _Translations$misskey$exportOrImport_$fr_FR extends Translations$misskey$exportOrImport_$en_US {
	_Translations$misskey$exportOrImport_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Toutes les notes';
	@override String get clips => 'Clip';
	@override String get followingList => 'Abonnements';
	@override String get muteList => 'Comptes masqués';
	@override String get blockingList => 'Comptes bloqués';
	@override String get userLists => 'Listes';
	@override String get excludeMutingUsers => 'Exclure les utilisateur·rice·s mis en sourdine';
	@override String get excludeInactiveUsers => 'Exclure les utilisateur·rice·s inactifs';
	@override String get withReplies => 'Inclure les réponses des utilisateur·rice·s importé·e·s dans le fil';
}

// Path: misskey.charts_
class _Translations$misskey$charts_$fr_FR extends Translations$misskey$charts_$en_US {
	_Translations$misskey$charts_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Fédération';
	@override String get apRequest => 'Requêtes';
	@override String get usersIncDec => 'Variation du nombre d\'utilisateur·rice·s';
	@override String get usersTotal => 'Nombre des utilisateur·rice·s au total';
	@override String get activeUsers => 'Nombre d\'utilisateurices actif·ve·s';
	@override String get notesIncDec => 'Variation du nombre des notes';
	@override String get localNotesIncDec => 'Variation du nombre de notes locales';
	@override String get remoteNotesIncDec => 'Variation du nombre de notes distantes';
	@override String get notesTotal => 'Nombre total des notes';
	@override String get filesIncDec => 'Variation du nombre de fichiers';
	@override String get filesTotal => 'Nombre total de fichiers';
	@override String get storageUsageIncDec => 'Variation de l\'utilisation du stockage';
	@override String get storageUsageTotal => 'Utilisation totale du stockage';
}

// Path: misskey.instanceCharts_
class _Translations$misskey$instanceCharts_$fr_FR extends Translations$misskey$instanceCharts_$en_US {
	_Translations$misskey$instanceCharts_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get requests => 'Requêtes';
	@override String get users => 'Variation du nombre d\'utilisateur·rice·s';
	@override String get usersTotal => 'Total cumulé du nombre d\'utilisateur·rice·s';
	@override String get notes => 'Variation du nombre de notes';
	@override String get notesTotal => 'Nombre total cumulé des notes';
	@override String get ff => 'Variation des abonné·e·s / abonnements';
	@override String get ffTotal => 'Total cumulé du nombre d\'abonné·e·s / abonnements';
	@override String get cacheSize => 'Variation de la taille du cache';
	@override String get cacheSizeTotal => 'Total cumulé de la taille du cache';
	@override String get files => 'Variation du nombre de fichiers';
	@override String get filesTotal => 'Total cumulé du nombre de fichiers';
}

// Path: misskey.timelines_
class _Translations$misskey$timelines_$fr_FR extends Translations$misskey$timelines_$en_US {
	_Translations$misskey$timelines_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get home => 'Principal';
	@override String get local => 'Local';
	@override String get social => 'Social';
	@override String get global => 'Global';
}

// Path: misskey.play_
class _Translations$misskey$play_$fr_FR extends Translations$misskey$play_$en_US {
	_Translations$misskey$play_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Créer un Play';
	@override String get edit => 'Modifier un Play';
	@override String get created => 'Play créé';
	@override String get updated => 'Play édité';
	@override String get deleted => 'Play supprimé';
	@override String get pageSetting => 'Configuration du Play';
	@override String get editThisPage => 'Modifier ce Play';
	@override String get viewSource => 'Afficher la source';
	@override String get my => 'Mes Play';
	@override String get liked => 'Play aimés';
	@override String get featured => 'Populaire';
	@override String get title => 'Titre';
	@override String get script => 'Script';
	@override String get summary => 'Description';
}

// Path: misskey.pages_
class _Translations$misskey$pages_$fr_FR extends Translations$misskey$pages_$en_US {
	_Translations$misskey$pages_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'Créer une page';
	@override String get editPage => 'Modifier une page';
	@override String get readPage => 'Affichage de la source en cours';
	@override String get pageSetting => 'Paramètres de la Page';
	@override String get nameAlreadyExists => 'L\'URL de page spécifiée existe déjà';
	@override String get invalidNameTitle => 'L\'URL de page spécifiée n’est pas valide';
	@override String get invalidNameText => 'Assurez-vous qu’il n’est pas vide';
	@override String get editThisPage => 'Éditer cette page';
	@override String get viewSource => 'Afficher la source';
	@override String get viewPage => 'Afficher la page';
	@override String get like => 'Favori';
	@override String get unlike => 'Je n’aime pas';
	@override String get my => 'Mes pages';
	@override String get liked => 'Pages favorites';
	@override String get featured => 'Populaire';
	@override String get inspector => 'Inspecteur';
	@override String get contents => 'Contenu';
	@override String get content => 'Bloc de page';
	@override String get variables => 'Variables';
	@override String get title => 'Titre';
	@override String get url => 'URL de la page';
	@override String get summary => 'Résumé de page';
	@override String get alignCenter => 'Centrée';
	@override String get hideTitleWhenPinned => 'Masquer le titre de la page lorsque celle-ci est épinglée au profil';
	@override String get font => 'Police de caractères';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
	@override String get eyeCatchingImageSet => 'Définir une image attractive';
	@override String get eyeCatchingImageRemove => 'Supprimer la miniature';
	@override String get chooseBlock => 'Ajouter un bloc';
	@override String get selectType => 'Choisir un type';
	@override String get contentBlocks => 'Contenu';
	@override String get inputBlocks => 'Blocs d\'entrée';
	@override String get specialBlocks => 'Spécial';
	@override late final _Translations$misskey$pages_$blocks$fr_FR blocks = _Translations$misskey$pages_$blocks$fr_FR._(_root);
}

// Path: misskey.relayStatus_
class _Translations$misskey$relayStatus_$fr_FR extends Translations$misskey$relayStatus_$en_US {
	_Translations$misskey$relayStatus_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'En attente';
	@override String get accepted => 'Accepté';
	@override String get rejected => 'Refusée';
}

// Path: misskey.notification_
class _Translations$misskey$notification_$fr_FR extends Translations$misskey$notification_$en_US {
	_Translations$misskey$notification_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'Le fichier a été téléversé !';
	@override String youGotMention({required Object name}) => '${name} vous a mentionné';
	@override String youGotReply({required Object name}) => 'Réponse de ${name}';
	@override String youGotQuote({required Object name}) => 'Cité·e par ${name}';
	@override String youRenoted({required Object name}) => '${name} vous a Renoté';
	@override String get youWereFollowed => 's\'est abonné·e à vous';
	@override String get youReceivedFollowRequest => 'Vous avez reçu une demande d’abonnement';
	@override String get yourFollowRequestAccepted => 'Votre demande d’abonnement a été accepté';
	@override String get pollEnded => 'Les résultats du sondage sont disponibles';
	@override String unreadAntennaNote({required Object name}) => 'Antenne ${name}';
	@override String get roleAssigned => 'Rôle attribué';
	@override String get emptyPushNotificationMessage => 'Les notifications push ont été mises à jour';
	@override String get achievementEarned => 'Accomplissement déverrouillé';
	@override String get testNotification => 'Tester la notification';
	@override String reactedBySomeUsers({required Object n}) => '${n} utilisateur·rice·s ont réagi';
	@override String likedBySomeUsers({required Object n}) => '${n} utilisateurs ont aimé votre note';
	@override String renotedBySomeUsers({required Object n}) => '${n} utilisateur·rice·s ont renoté';
	@override String followedBySomeUsers({required Object n}) => '${n} utilisateur·rice·s se sont abonné·e·s à vous';
	@override String get login => 'Quelqu\'un s\'est connecté';
	@override late final _Translations$misskey$notification_$types_$fr_FR types_ = _Translations$misskey$notification_$types_$fr_FR._(_root);
	@override late final _Translations$misskey$notification_$actions_$fr_FR actions_ = _Translations$misskey$notification_$actions_$fr_FR._(_root);
}

// Path: misskey.deck_
class _Translations$misskey$deck_$fr_FR extends Translations$misskey$deck_$en_US {
	_Translations$misskey$deck_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Toujours afficher la colonne principale';
	@override String get columnAlign => 'Aligner les colonnes';
	@override String get addColumn => 'Ajouter une colonne';
	@override String get configureColumn => 'Configuration de la colonne';
	@override String get swapLeft => 'Déplacer à gauche';
	@override String get swapRight => 'Déplacer à droite';
	@override String get swapUp => 'Déplacer vers le haut';
	@override String get swapDown => 'Déplacer vers le bas';
	@override String get stackLeft => 'Empiler à gauche';
	@override String get popRight => 'Extraire à droite';
	@override String get profile => 'Profil';
	@override String get newProfile => 'Nouveau profil';
	@override String get deleteProfile => 'Supprimer le profil';
	@override String get introduction => 'Créez l’interface parfaite qui vous sied en arrangeant librement les colonnes !';
	@override String get introduction2 => 'Cliquez sur le + à droite de l\'écran pour ajouter de nouvelles colonnes quand vous le souhaitez.';
	@override String get flexible => 'Ajuster automatiquement la largeur';
	@override late final _Translations$misskey$deck_$columns_$fr_FR columns_ = _Translations$misskey$deck_$columns_$fr_FR._(_root);
}

// Path: misskey.drivecleaner_
class _Translations$misskey$drivecleaner_$fr_FR extends Translations$misskey$drivecleaner_$en_US {
	_Translations$misskey$drivecleaner_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'Taille descendante';
	@override String get orderByCreatedAtAsc => 'Date d\'ajout ascendante';
}

// Path: misskey.webhookSettings_
class _Translations$misskey$webhookSettings_$fr_FR extends Translations$misskey$webhookSettings_$en_US {
	_Translations$misskey$webhookSettings_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nom';
	@override String get secret => 'Secret';
	@override String get trigger => 'Activateur';
	@override String get active => 'Activé';
}

// Path: misskey.abuseReport_
class _Translations$misskey$abuseReport_$fr_FR extends Translations$misskey$abuseReport_$en_US {
	_Translations$misskey$abuseReport_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$abuseReport_$notificationRecipient_$fr_FR notificationRecipient_ = _Translations$misskey$abuseReport_$notificationRecipient_$fr_FR._(_root);
}

// Path: misskey.moderationLogTypes_
class _Translations$misskey$moderationLogTypes_$fr_FR extends Translations$misskey$moderationLogTypes_$en_US {
	_Translations$misskey$moderationLogTypes_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get createRole => 'Rôle créé';
	@override String get deleteRole => 'Rôle supprimé';
	@override String get updateRole => 'Rôle mis à jour';
	@override String get assignRole => 'Rôle attribué';
	@override String get unassignRole => 'Rôle enlevé';
	@override String get suspend => 'Utilisateur suspendu';
	@override String get unsuspend => 'Suspension d\'un utilisateur levée';
	@override String get addCustomEmoji => 'Émoji personnalisé ajouté';
	@override String get updateCustomEmoji => 'Émoji personnalisé mis à jour';
	@override String get deleteCustomEmoji => 'Émoji personnalisé supprimé';
	@override String get updateServerSettings => 'Paramètres du serveur mis à jour';
	@override String get updateUserNote => 'Note de modération mise à jour';
	@override String get deleteDriveFile => 'Fichier supprimé';
	@override String get deleteNote => 'Note supprimée';
	@override String get createGlobalAnnouncement => 'Annonce globale créée';
	@override String get createUserAnnouncement => 'Annonce individuelle créée';
	@override String get updateGlobalAnnouncement => 'Annonce globale mise à jour';
	@override String get updateUserAnnouncement => 'Annonce individuelle mise à jour';
	@override String get deleteGlobalAnnouncement => 'Annonce globale supprimée';
	@override String get deleteUserAnnouncement => 'Annonce individuelle supprimée';
	@override String get resetPassword => 'Mot de passe réinitialisé';
	@override String get suspendRemoteInstance => 'Instance distante suspendue';
	@override String get unsuspendRemoteInstance => 'Suspension d\'une instance distante levée';
	@override String get markSensitiveDriveFile => 'Fichier marqué comme sensible';
	@override String get unmarkSensitiveDriveFile => 'Marquage du fichier comme sensible enlevé';
	@override String get resolveAbuseReport => 'Signalement résolu';
	@override String get createInvitation => 'Code d\'invitation créé';
	@override String get createAd => 'Publicité créée';
	@override String get deleteAd => 'Publicité supprimée';
	@override String get updateAd => 'Publicité mise à jour';
	@override String get createAvatarDecoration => 'Décoration d\'avatar créée';
	@override String get updateAvatarDecoration => 'Décoration d\'avatar mise à jour';
	@override String get deleteAvatarDecoration => 'Décoration d\'avatar supprimée';
	@override String get unsetUserAvatar => 'Supprimer l\'avatar de l\'utilisateur·rice';
	@override String get unsetUserBanner => 'Supprimer la bannière de l\'utilisateur·rice';
	@override String get deleteFlash => 'Supprimer le Play';
}

// Path: misskey.fileViewer_
class _Translations$misskey$fileViewer_$fr_FR extends Translations$misskey$fileViewer_$en_US {
	_Translations$misskey$fileViewer_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Détails du fichier';
	@override String get type => 'Type du fichier';
	@override String get size => 'Taille du fichier';
	@override String get url => 'URL';
	@override String get uploadedAt => 'Date de téléversement';
	@override String get attachedNotes => 'Notes avec ce fichier';
	@override String get thisPageCanBeSeenFromTheAuthor => 'Cette page ne peut être vue que par l\'utilisateur qui a téléversé ce fichier.';
}

// Path: misskey.externalResourceInstaller_
class _Translations$misskey$externalResourceInstaller_$fr_FR extends Translations$misskey$externalResourceInstaller_$en_US {
	_Translations$misskey$externalResourceInstaller_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Installer depuis un site externe';
	@override String get checkVendorBeforeInstall => 'Veuillez confirmer que le distributeur est fiable avant l\'installation.';
	@override late final _Translations$misskey$externalResourceInstaller_$plugin_$fr_FR plugin_ = _Translations$misskey$externalResourceInstaller_$plugin_$fr_FR._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$theme_$fr_FR theme_ = _Translations$misskey$externalResourceInstaller_$theme_$fr_FR._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$meta_$fr_FR meta_ = _Translations$misskey$externalResourceInstaller_$meta_$fr_FR._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$vendorInfo_$fr_FR vendorInfo_ = _Translations$misskey$externalResourceInstaller_$vendorInfo_$fr_FR._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$errors_$fr_FR errors_ = _Translations$misskey$externalResourceInstaller_$errors_$fr_FR._(_root);
}

// Path: misskey.dataSaver_
class _Translations$misskey$dataSaver_$fr_FR extends Translations$misskey$dataSaver_$en_US {
	_Translations$misskey$dataSaver_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$dataSaver_$media_$fr_FR media_ = _Translations$misskey$dataSaver_$media_$fr_FR._(_root);
	@override late final _Translations$misskey$dataSaver_$avatar_$fr_FR avatar_ = _Translations$misskey$dataSaver_$avatar_$fr_FR._(_root);
	@override late final _Translations$misskey$dataSaver_$code_$fr_FR code_ = _Translations$misskey$dataSaver_$code_$fr_FR._(_root);
}

// Path: misskey.reversi_
class _Translations$misskey$reversi_$fr_FR extends Translations$misskey$reversi_$en_US {
	_Translations$misskey$reversi_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get reversi => 'Reversi';
	@override String blackIs({required Object name}) => '${name} joue les noirs';
	@override String get rules => 'Règles';
	@override String get waitingBoth => 'Préparez-vous';
	@override String get myTurn => 'C’est votre tour';
	@override String turnOf({required Object name}) => 'C\'est le tour de ${name}';
	@override String pastTurnOf({required Object name}) => 'Tour de ${name}';
	@override String get surrender => 'Se rendre';
	@override String get surrendered => 'Par abandon';
	@override String get total => 'Total';
	@override String get playing => 'En cours';
	@override String get lookingForPlayer => 'Recherche d\'adversaire';
}

// Path: misskey.mediaControls_
class _Translations$misskey$mediaControls_$fr_FR extends Translations$misskey$mediaControls_$en_US {
	_Translations$misskey$mediaControls_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get playbackRate => 'Vitesse de lecture';
}

// Path: misskey.embedCodeGen_
class _Translations$misskey$embedCodeGen_$fr_FR extends Translations$misskey$embedCodeGen_$en_US {
	_Translations$misskey$embedCodeGen_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Personnaliser le code d\'intégration';
	@override String get generateCode => 'Générer le code d\'intégration';
}

// Path: misskey.remoteLookupErrors_
class _Translations$misskey$remoteLookupErrors_$fr_FR extends Translations$misskey$remoteLookupErrors_$en_US {
	_Translations$misskey$remoteLookupErrors_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$remoteLookupErrors_$noSuchObject_$fr_FR noSuchObject_ = _Translations$misskey$remoteLookupErrors_$noSuchObject_$fr_FR._(_root);
}

// Path: misskey.search_
class _Translations$misskey$search_$fr_FR extends Translations$misskey$search_$en_US {
	_Translations$misskey$search_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Tous';
	@override String get searchScopeLocal => 'Local';
	@override String get searchScopeUser => 'Spécifier l\'utilisateur·rice';
}

// Path: misskey.watermarkEditor_
class _Translations$misskey$watermarkEditor_$fr_FR extends Translations$misskey$watermarkEditor_$en_US {
	_Translations$misskey$watermarkEditor_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get driveFileTypeWarn => 'Ce fichier n\'est pas pris en charge';
	@override String get opacity => 'Transparence';
	@override String get scale => 'Taille';
	@override String get text => 'Texte';
	@override String get position => 'Position';
	@override String get type => 'Type';
	@override String get image => 'Images';
	@override String get advanced => 'Avancé';
	@override String get angle => 'Angle';
}

// Path: misskey.imageEffector_
class _Translations$misskey$imageEffector_$fr_FR extends Translations$misskey$imageEffector_$en_US {
	_Translations$misskey$imageEffector_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$imageEffector_$fxProps_$fr_FR fxProps_ = _Translations$misskey$imageEffector_$fxProps_$fr_FR._(_root);
}

// Path: misskey.qr_
class _Translations$misskey$qr_$fr_FR extends Translations$misskey$qr_$en_US {
	_Translations$misskey$qr_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get showTabTitle => 'Affichage';
	@override String get raw => 'Texte';
}

// Path: misskey.imageEditing_.vars_
class _Translations$misskey$imageEditing_$vars_$fr_FR extends Translations$misskey$imageEditing_$vars_$en_US {
	_Translations$misskey$imageEditing_$vars_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get filename => 'Nom du fichier';
}

// Path: misskey.delivery_.type_
class _Translations$misskey$delivery_$type_$fr_FR extends Translations$misskey$delivery_$type_$en_US {
	_Translations$misskey$delivery_$type_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get none => 'Publié';
	@override String get manuallySuspended => 'Suspendre manuellement';
	@override String get goneSuspended => 'L\'instance est suspendue en raison de la suppression de ce dernier';
	@override String get autoSuspendedForNotResponding => 'L\'instance est suspendue car elle ne répond pas';
}

// Path: misskey.bubbleGame_.score_
class _Translations$misskey$bubbleGame_$score_$fr_FR extends Translations$misskey$bubbleGame_$score_$en_US {
	_Translations$misskey$bubbleGame_$score_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get score => 'Score';
	@override String get scoreYen => 'Montant gagné';
	@override String get highScore => 'Meilleur score';
	@override String get maxChain => 'Nombre maximum de chaînes';
	@override String yen({required Object yen}) => '${yen} yens';
	@override String estimatedQty({required Object qty}) => '${qty} pièces';
	@override String scoreSweets({required Object onigiriQtyWithUnit}) => '${onigiriQtyWithUnit} Onigiri(s)';
}

// Path: misskey.initialTutorial_.landing_
class _Translations$misskey$initialTutorial_$landing_$fr_FR extends Translations$misskey$initialTutorial_$landing_$en_US {
	_Translations$misskey$initialTutorial_$landing_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bienvenue dans le tutoriel';
	@override String get description => 'Ici, vous pouvez apprendre l\'utilisation de base de Misskey et ses fonctionnalités.';
}

// Path: misskey.initialTutorial_.note_
class _Translations$misskey$initialTutorial_$note_$fr_FR extends Translations$misskey$initialTutorial_$note_$en_US {
	_Translations$misskey$initialTutorial_$note_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qu\'est-ce que les notes ?';
	@override String get description => 'Les messages sur Misskey sont appelés des « notes » . Les notes sont classées par ordre chronologique sur le fil et sont mises à jour en temps réel.';
	@override String get reply => 'Vous pouvez répondre aux messages. Vous pouvez également répondre aux réponses et poursuivre la conversation comme un fil de discussion.';
	@override String get renote => 'Vous pouvez partager cette note sur votre propre fil. Vous pouvez aussi ajouter du texte en citant.';
	@override String get reaction => 'Vous pouvez ajouter des réactions. Les détails sont expliqués à la page suivante.';
	@override String get menu => 'Vous pouvez afficher les détails de la note, copier le lien et effectuer d\'autres actions.';
}

// Path: misskey.initialTutorial_.reaction_
class _Translations$misskey$initialTutorial_$reaction_$fr_FR extends Translations$misskey$initialTutorial_$reaction_$en_US {
	_Translations$misskey$initialTutorial_$reaction_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qu\'est-ce que les réactions ?';
	@override String get description => 'Vous pouvez ajouter des « réactions » aux notes. Les réactions vous permettent d\'exprimer à l\'aise des nuances qui ne peuvent pas être exprimées par des mentions j\'aime.';
	@override String get letsTryReacting => 'Des réactions peuvent être ajoutées en cliquant sur le bouton « + » de la note. Essayez d\'ajouter une réaction à cet exemple de note !';
	@override String get reactToContinue => 'Ajoutez une réaction pour procéder.';
	@override String get reactNotification => 'Vous recevez des notifications en temps réel lorsque quelqu\'un réagit à votre note.';
	@override String get reactDone => 'Vous pouvez annuler la réaction en cliquant sur le bouton « - » .';
}

// Path: misskey.initialTutorial_.timeline_
class _Translations$misskey$initialTutorial_$timeline_$fr_FR extends Translations$misskey$initialTutorial_$timeline_$en_US {
	_Translations$misskey$initialTutorial_$timeline_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fonctionnement des fils';
	@override String get description1 => 'Misskey offre plusieurs fils selon l\'usage (certains peuvent être désactivés par le serveur).';
	@override String get home => 'Vous pouvez voir les notes des utilisateurs auxquels vous êtes abonné·e.';
	@override String get local => 'Vous pouvez voir les notes de tous les utilisateurs sur cette instance.';
	@override String get social => 'Les notes des fils principal et local sont affichées.';
	@override String get global => 'Vous pouvez voir les notes de toutes les instances connectées.';
	@override String get description2 => 'Vous pouvez passer d\'un fil à l\'autre en haut de l\'écran à tout moment.';
	@override String description3({required Object link}) => 'De plus, il y a les fils des listes et des canaux. Pour plus de détails, consultez ${link}.';
}

// Path: misskey.initialTutorial_.postNote_
class _Translations$misskey$initialTutorial_$postNote_$fr_FR extends Translations$misskey$initialTutorial_$postNote_$en_US {
	_Translations$misskey$initialTutorial_$postNote_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paramètres de la publication de note';
	@override String get description1 => 'Lorsque vous publiez des notes sur Misskey, diverses options sont disponibles. Voici le formulaire de publication.';
	@override late final _Translations$misskey$initialTutorial_$postNote_$visibility_$fr_FR visibility_ = _Translations$misskey$initialTutorial_$postNote_$visibility_$fr_FR._(_root);
	@override late final _Translations$misskey$initialTutorial_$postNote_$cw_$fr_FR cw_ = _Translations$misskey$initialTutorial_$postNote_$cw_$fr_FR._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$fr_FR extends Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$en_US {
	_Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comment marquer un fichier joint comme sensible ?';
	@override String get description => 'Attachez un drapeau « sensible » aux fichiers joints selon les règles du serveur ou si vous ne voulez pas que le fichier soit vu directement.';
	@override String get tryThisFile => 'Essayez de marquer l\'image jointe à ce formulaire de publication comme sensible !';
	@override late final _Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$exampleNote_$fr_FR exampleNote_ = _Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$exampleNote_$fr_FR._(_root);
	@override String get method => 'Pour marquer un fichier joint comme sensible, cliquez sur la vignette du fichier pour ouvrir le menu et cliquez sur « marquer comme sensible » .';
	@override String get sensitiveSucceeded => 'Quand vous joignez des fichiers, veuillez indiquer la sensibilité selon les règles du serveur.';
	@override String get doItToContinue => 'Marquez le fichier joint comme sensible pour procéder.';
}

// Path: misskey.initialTutorial_.done_
class _Translations$misskey$initialTutorial_$done_$fr_FR extends Translations$misskey$initialTutorial_$done_$en_US {
	_Translations$misskey$initialTutorial_$done_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Le tutoriel est terminé ! 🎉';
	@override String description({required Object link}) => 'Les fonctionnalités introduites ici ne sont que quelques-unes. Pour savoir plus sur l\'utilisation de Misskey, veuillez consulter ${link}.';
}

// Path: misskey.achievements_.types_
class _Translations$misskey$achievements_$types_$fr_FR extends Translations$misskey$achievements_$types_$en_US {
	_Translations$misskey$achievements_$types_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$achievements_$types_$notes1_$fr_FR notes1_ = _Translations$misskey$achievements_$types_$notes1_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes10_$fr_FR notes10_ = _Translations$misskey$achievements_$types_$notes10_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes100_$fr_FR notes100_ = _Translations$misskey$achievements_$types_$notes100_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes500_$fr_FR notes500_ = _Translations$misskey$achievements_$types_$notes500_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes1000_$fr_FR notes1000_ = _Translations$misskey$achievements_$types_$notes1000_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes5000_$fr_FR notes5000_ = _Translations$misskey$achievements_$types_$notes5000_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes10000_$fr_FR notes10000_ = _Translations$misskey$achievements_$types_$notes10000_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes20000_$fr_FR notes20000_ = _Translations$misskey$achievements_$types_$notes20000_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes30000_$fr_FR notes30000_ = _Translations$misskey$achievements_$types_$notes30000_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes40000_$fr_FR notes40000_ = _Translations$misskey$achievements_$types_$notes40000_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes50000_$fr_FR notes50000_ = _Translations$misskey$achievements_$types_$notes50000_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes60000_$fr_FR notes60000_ = _Translations$misskey$achievements_$types_$notes60000_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes70000_$fr_FR notes70000_ = _Translations$misskey$achievements_$types_$notes70000_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes80000_$fr_FR notes80000_ = _Translations$misskey$achievements_$types_$notes80000_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes90000_$fr_FR notes90000_ = _Translations$misskey$achievements_$types_$notes90000_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes100000_$fr_FR notes100000_ = _Translations$misskey$achievements_$types_$notes100000_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$login3_$fr_FR login3_ = _Translations$misskey$achievements_$types_$login3_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$login7_$fr_FR login7_ = _Translations$misskey$achievements_$types_$login7_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$login15_$fr_FR login15_ = _Translations$misskey$achievements_$types_$login15_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$login30_$fr_FR login30_ = _Translations$misskey$achievements_$types_$login30_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$login60_$fr_FR login60_ = _Translations$misskey$achievements_$types_$login60_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$login100_$fr_FR login100_ = _Translations$misskey$achievements_$types_$login100_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$login200_$fr_FR login200_ = _Translations$misskey$achievements_$types_$login200_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$login300_$fr_FR login300_ = _Translations$misskey$achievements_$types_$login300_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$login400_$fr_FR login400_ = _Translations$misskey$achievements_$types_$login400_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$login500_$fr_FR login500_ = _Translations$misskey$achievements_$types_$login500_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$login600_$fr_FR login600_ = _Translations$misskey$achievements_$types_$login600_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$login700_$fr_FR login700_ = _Translations$misskey$achievements_$types_$login700_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$login800_$fr_FR login800_ = _Translations$misskey$achievements_$types_$login800_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$login900_$fr_FR login900_ = _Translations$misskey$achievements_$types_$login900_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$login1000_$fr_FR login1000_ = _Translations$misskey$achievements_$types_$login1000_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$noteClipped1_$fr_FR noteClipped1_ = _Translations$misskey$achievements_$types_$noteClipped1_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$profileFilled_$fr_FR profileFilled_ = _Translations$misskey$achievements_$types_$profileFilled_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$markedAsCat_$fr_FR markedAsCat_ = _Translations$misskey$achievements_$types_$markedAsCat_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$following1_$fr_FR following1_ = _Translations$misskey$achievements_$types_$following1_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$following10_$fr_FR following10_ = _Translations$misskey$achievements_$types_$following10_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$following50_$fr_FR following50_ = _Translations$misskey$achievements_$types_$following50_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$following100_$fr_FR following100_ = _Translations$misskey$achievements_$types_$following100_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$following300_$fr_FR following300_ = _Translations$misskey$achievements_$types_$following300_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers10_$fr_FR followers10_ = _Translations$misskey$achievements_$types_$followers10_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers50_$fr_FR followers50_ = _Translations$misskey$achievements_$types_$followers50_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers100_$fr_FR followers100_ = _Translations$misskey$achievements_$types_$followers100_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers300_$fr_FR followers300_ = _Translations$misskey$achievements_$types_$followers300_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers500_$fr_FR followers500_ = _Translations$misskey$achievements_$types_$followers500_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers1000_$fr_FR followers1000_ = _Translations$misskey$achievements_$types_$followers1000_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$iLoveMisskey_$fr_FR iLoveMisskey_ = _Translations$misskey$achievements_$types_$iLoveMisskey_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$foundTreasure_$fr_FR foundTreasure_ = _Translations$misskey$achievements_$types_$foundTreasure_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$client30min_$fr_FR client30min_ = _Translations$misskey$achievements_$types_$client30min_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$postedAtLateNight_$fr_FR postedAtLateNight_ = _Translations$misskey$achievements_$types_$postedAtLateNight_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$postedAt0min0sec_$fr_FR postedAt0min0sec_ = _Translations$misskey$achievements_$types_$postedAt0min0sec_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$viewInstanceChart_$fr_FR viewInstanceChart_ = _Translations$misskey$achievements_$types_$viewInstanceChart_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$outputHelloWorldOnScratchpad_$fr_FR outputHelloWorldOnScratchpad_ = _Translations$misskey$achievements_$types_$outputHelloWorldOnScratchpad_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$open3windows_$fr_FR open3windows_ = _Translations$misskey$achievements_$types_$open3windows_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$driveFolderCircularReference_$fr_FR driveFolderCircularReference_ = _Translations$misskey$achievements_$types_$driveFolderCircularReference_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$setNameToSyuilo_$fr_FR setNameToSyuilo_ = _Translations$misskey$achievements_$types_$setNameToSyuilo_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$fr_FR passedSinceAccountCreated1_ = _Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$fr_FR passedSinceAccountCreated2_ = _Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$fr_FR passedSinceAccountCreated3_ = _Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$loggedInOnBirthday_$fr_FR loggedInOnBirthday_ = _Translations$misskey$achievements_$types_$loggedInOnBirthday_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$fr_FR loggedInOnNewYearsDay_ = _Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$cookieClicked_$fr_FR cookieClicked_ = _Translations$misskey$achievements_$types_$cookieClicked_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$brainDiver_$fr_FR brainDiver_ = _Translations$misskey$achievements_$types_$brainDiver_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$smashTestNotificationButton_$fr_FR smashTestNotificationButton_ = _Translations$misskey$achievements_$types_$smashTestNotificationButton_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$tutorialCompleted_$fr_FR tutorialCompleted_ = _Translations$misskey$achievements_$types_$tutorialCompleted_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$bubbleGameExplodingHead_$fr_FR bubbleGameExplodingHead_ = _Translations$misskey$achievements_$types_$bubbleGameExplodingHead_$fr_FR._(_root);
	@override late final _Translations$misskey$achievements_$types_$bubbleGameDoubleExplodingHead_$fr_FR bubbleGameDoubleExplodingHead_ = _Translations$misskey$achievements_$types_$bubbleGameDoubleExplodingHead_$fr_FR._(_root);
}

// Path: misskey.role_.priority_
class _Translations$misskey$role_$priority_$fr_FR extends Translations$misskey$role_$priority_$en_US {
	_Translations$misskey$role_$priority_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get low => 'Basse';
	@override String get middle => 'Moyen';
	@override String get high => 'Haute';
}

// Path: misskey.role_.options_
class _Translations$misskey$role_$options_$fr_FR extends Translations$misskey$role_$options_$en_US {
	_Translations$misskey$role_$options_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get canManageCustomEmojis => 'Gestion des émojis personnalisés';
	@override String get canManageAvatarDecorations => 'Gestion des décorations d\'avatar';
	@override String get driveCapacity => 'Capacité de stockage du Disque';
	@override String get antennaMax => 'Nombre maximum d\'antennes';
	@override String get wordMuteMax => 'Nombre maximal de caractères dans le filtre de mots';
	@override String get canUseTranslator => 'Usage de la fonctionnalité de traduction';
	@override String get avatarDecorationLimit => 'Nombre maximal de décorations d\'avatar';
	@override String get canImportAntennas => 'Autoriser l\'importation d\'antennes';
}

// Path: misskey.email_.follow_
class _Translations$misskey$email_$follow_$fr_FR extends Translations$misskey$email_$follow_$en_US {
	_Translations$misskey$email_$follow_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vous suit';
}

// Path: misskey.email_.receiveFollowRequest_
class _Translations$misskey$email_$receiveFollowRequest_$fr_FR extends Translations$misskey$email_$receiveFollowRequest_$en_US {
	_Translations$misskey$email_$receiveFollowRequest_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vous avez reçu une demande de suivi';
}

// Path: misskey.theme_.keys
class _Translations$misskey$theme_$keys$fr_FR extends Translations$misskey$theme_$keys$en_US {
	_Translations$misskey$theme_$keys$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get accent => 'Accentuation';
	@override String get bg => 'Arrière-plan';
	@override String get fg => 'Texte';
	@override String get focus => 'Mise au point';
	@override String get indicator => 'Indicateur';
	@override String get panel => 'Panneau';
	@override String get shadow => 'Ombre';
	@override String get header => 'Entête';
	@override String get navBg => 'Fond de la barre latérale';
	@override String get navFg => 'Texte de la barre latérale';
	@override String get navActive => 'Texte de la barre latérale (actif)';
	@override String get navIndicator => 'Indicateur de barre latérale';
	@override String get link => 'Lien';
	@override String get hashtag => 'Hashtags';
	@override String get mention => 'Mentionner';
	@override String get mentionMe => 'Mentions (Moi)';
	@override String get renote => 'Renoter';
	@override String get modalBg => 'Modal d\'arrière-plan';
	@override String get divider => 'Séparateur';
	@override String get scrollbarHandle => 'Poignée de la barre de navigation';
	@override String get scrollbarHandleHover => 'Poignée de la barre de navigation (survolée)';
	@override String get dateLabelFg => 'Texte de l\'étiquette de la date';
	@override String get infoBg => 'Arrière-plan pour les informations';
	@override String get infoFg => 'Texte d\'information';
	@override String get infoWarnBg => 'Arrière-plan des avertissements';
	@override String get infoWarnFg => 'Texte d’avertissement';
	@override String get toastBg => 'Arrière-plan de la bulle de notification';
	@override String get toastFg => 'Texte de la bulle de notification';
	@override String get buttonBg => 'Arrière-plan du bouton';
	@override String get buttonHoverBg => 'Arrière-plan du bouton (survolé)';
	@override String get inputBorder => 'Cadre de la zone de texte';
	@override String get badge => 'Badge';
	@override String get messageBg => 'Arrière plan de la discussion';
	@override String get fgHighlighted => 'Texte mis en évidence';
}

// Path: misskey.widgets_.userList_
class _Translations$misskey$widgets_$userList_$fr_FR extends Translations$misskey$widgets_$userList_$en_US {
	_Translations$misskey$widgets_$userList_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Sélectionner une liste';
}

// Path: misskey.widgetOptions_.button_
class _Translations$misskey$widgetOptions_$button_$fr_FR extends Translations$misskey$widgetOptions_$button_$en_US {
	_Translations$misskey$widgetOptions_$button_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get colored => 'Coloré';
}

// Path: misskey.widgetOptions_.clock_
class _Translations$misskey$widgetOptions_$clock_$fr_FR extends Translations$misskey$widgetOptions_$clock_$en_US {
	_Translations$misskey$widgetOptions_$clock_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get size => 'Taille';
}

// Path: misskey.widgetOptions_.birthdayFollowings_
class _Translations$misskey$widgetOptions_$birthdayFollowings_$fr_FR extends Translations$misskey$widgetOptions_$birthdayFollowings_$en_US {
	_Translations$misskey$widgetOptions_$birthdayFollowings_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get period => 'Durée';
}

// Path: misskey.postForm_.howToUse_
class _Translations$misskey$postForm_$howToUse_$fr_FR extends Translations$misskey$postForm_$howToUse_$en_US {
	_Translations$misskey$postForm_$howToUse_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get visibility_title => 'Visibilité';
	@override String get menu_title => 'Menu';
}

// Path: misskey.postForm_.placeholders_
class _Translations$misskey$postForm_$placeholders_$fr_FR extends Translations$misskey$postForm_$placeholders_$en_US {
	_Translations$misskey$postForm_$placeholders_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get a => 'Quoi de neuf ?';
	@override String get b => 'Il s\'est passé quelque chose ?';
	@override String get c => 'Qu’avez-vous en tête ?';
	@override String get d => 'Désirez-vous publier quelques mots ?';
	@override String get e => 'Écrivez ici';
	@override String get f => 'En attente de vos écrits ...';
}

// Path: misskey.pages_.blocks
class _Translations$misskey$pages_$blocks$fr_FR extends Translations$misskey$pages_$blocks$en_US {
	_Translations$misskey$pages_$blocks$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get text => 'Texte';
	@override String get textarea => 'Zone de texte';
	@override String get section => 'Section';
	@override String get image => 'Images';
	@override String get button => 'Bouton';
	@override String get note => 'Note intégrée';
	@override late final _Translations$misskey$pages_$blocks$note_$fr_FR note_ = _Translations$misskey$pages_$blocks$note_$fr_FR._(_root);
}

// Path: misskey.notification_.types_
class _Translations$misskey$notification_$types_$fr_FR extends Translations$misskey$notification_$types_$en_US {
	_Translations$misskey$notification_$types_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get all => 'Toutes';
	@override String get note => 'Nouvelles notes';
	@override String get follow => 'Nouvel·le abonné·e';
	@override String get mention => 'Mentions';
	@override String get reply => 'Réponses';
	@override String get renote => 'Renotes';
	@override String get quote => 'Citations';
	@override String get reaction => 'Réactions';
	@override String get pollEnded => 'Sondages se cloturant';
	@override String get receiveFollowRequest => 'Demande d\'abonnement reçue';
	@override String get followRequestAccepted => 'Demande d\'abonnement acceptée';
	@override String get roleAssigned => 'Rôle reçu';
	@override String get achievementEarned => 'Déverrouillage d\'accomplissement';
	@override String get login => 'Se connecter';
	@override String get app => 'Notifications provenant des apps';
}

// Path: misskey.notification_.actions_
class _Translations$misskey$notification_$actions_$fr_FR extends Translations$misskey$notification_$actions_$en_US {
	_Translations$misskey$notification_$actions_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'Suivre';
	@override String get reply => 'Répondre';
	@override String get renote => 'Renoter';
}

// Path: misskey.deck_.columns_
class _Translations$misskey$deck_$columns_$fr_FR extends Translations$misskey$deck_$columns_$en_US {
	_Translations$misskey$deck_$columns_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get main => 'Principale';
	@override String get widgets => 'Widgets';
	@override String get notifications => 'Notifications';
	@override String get tl => 'Fil';
	@override String get antenna => 'Antennes';
	@override String get list => 'Listes';
	@override String get channel => 'Canal';
	@override String get mentions => 'Mentions';
	@override String get direct => 'Direct';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _Translations$misskey$abuseReport_$notificationRecipient_$fr_FR extends Translations$misskey$abuseReport_$notificationRecipient_$en_US {
	_Translations$misskey$abuseReport_$notificationRecipient_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$fr_FR recipientType_ = _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$fr_FR._(_root);
	@override String get keywords => 'Mots clés ';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _Translations$misskey$externalResourceInstaller_$plugin_$fr_FR extends Translations$misskey$externalResourceInstaller_$plugin_$en_US {
	_Translations$misskey$externalResourceInstaller_$plugin_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Voulez-vous installer cette extension ?';
}

// Path: misskey.externalResourceInstaller_.theme_
class _Translations$misskey$externalResourceInstaller_$theme_$fr_FR extends Translations$misskey$externalResourceInstaller_$theme_$en_US {
	_Translations$misskey$externalResourceInstaller_$theme_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Voulez-vous installer ce thème ?';
}

// Path: misskey.externalResourceInstaller_.meta_
class _Translations$misskey$externalResourceInstaller_$meta_$fr_FR extends Translations$misskey$externalResourceInstaller_$meta_$en_US {
	_Translations$misskey$externalResourceInstaller_$meta_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get base => 'Palette de couleurs de base';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _Translations$misskey$externalResourceInstaller_$vendorInfo_$fr_FR extends Translations$misskey$externalResourceInstaller_$vendorInfo_$en_US {
	_Translations$misskey$externalResourceInstaller_$vendorInfo_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informations sur le distributeur';
	@override String get endpoint => 'Point de terminaison référencé';
	@override String get hashVerify => 'Vérification de l\'intégrité du fichier';
}

// Path: misskey.externalResourceInstaller_.errors_
class _Translations$misskey$externalResourceInstaller_$errors_$fr_FR extends Translations$misskey$externalResourceInstaller_$errors_$en_US {
	_Translations$misskey$externalResourceInstaller_$errors_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$externalResourceInstaller_$errors_$invalidParams_$fr_FR invalidParams_ = _Translations$misskey$externalResourceInstaller_$errors_$invalidParams_$fr_FR._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$errors_$resourceTypeNotSupported_$fr_FR resourceTypeNotSupported_ = _Translations$misskey$externalResourceInstaller_$errors_$resourceTypeNotSupported_$fr_FR._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$errors_$failedToFetch_$fr_FR failedToFetch_ = _Translations$misskey$externalResourceInstaller_$errors_$failedToFetch_$fr_FR._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$errors_$hashUnmatched_$fr_FR hashUnmatched_ = _Translations$misskey$externalResourceInstaller_$errors_$hashUnmatched_$fr_FR._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$errors_$pluginParseFailed_$fr_FR pluginParseFailed_ = _Translations$misskey$externalResourceInstaller_$errors_$pluginParseFailed_$fr_FR._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$errors_$pluginInstallFailed_$fr_FR pluginInstallFailed_ = _Translations$misskey$externalResourceInstaller_$errors_$pluginInstallFailed_$fr_FR._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$errors_$themeParseFailed_$fr_FR themeParseFailed_ = _Translations$misskey$externalResourceInstaller_$errors_$themeParseFailed_$fr_FR._(_root);
	@override late final _Translations$misskey$externalResourceInstaller_$errors_$themeInstallFailed_$fr_FR themeInstallFailed_ = _Translations$misskey$externalResourceInstaller_$errors_$themeInstallFailed_$fr_FR._(_root);
}

// Path: misskey.dataSaver_.media_
class _Translations$misskey$dataSaver_$media_$fr_FR extends Translations$misskey$dataSaver_$media_$en_US {
	_Translations$misskey$dataSaver_$media_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chargement des médias';
	@override String get description => 'Empêche le chargement automatique des images et des vidéos. Appuyez sur les images et les vidéos cachées pour les charger.';
}

// Path: misskey.dataSaver_.avatar_
class _Translations$misskey$dataSaver_$avatar_$fr_FR extends Translations$misskey$dataSaver_$avatar_$en_US {
	_Translations$misskey$dataSaver_$avatar_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Animation d\'avatars';
	@override String get description => 'Arrête l\'animation d\'avatars. Comme les images animées peuvent être plus volumineuses que les images normales, cela permet de réduire davantage le trafic de données.';
}

// Path: misskey.dataSaver_.code_
class _Translations$misskey$dataSaver_$code_$fr_FR extends Translations$misskey$dataSaver_$code_$en_US {
	_Translations$misskey$dataSaver_$code_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mise en évidence du code';
	@override String get description => 'Si la notation de mise en évidence du code est utilisée, par exemple dans la MFM, elle ne sera pas chargée tant qu\'elle n\'aura pas été tapée. La mise en évidence du code nécessite le chargement du fichier de définition de chaque langue à mettre en évidence, mais comme ces fichiers ne sont plus chargés automatiquement, on peut s\'attendre à une réduction du trafic de données.';
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _Translations$misskey$remoteLookupErrors_$noSuchObject_$fr_FR extends Translations$misskey$remoteLookupErrors_$noSuchObject_$en_US {
	_Translations$misskey$remoteLookupErrors_$noSuchObject_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Non trouvé';
}

// Path: misskey.imageEffector_.fxProps_
class _Translations$misskey$imageEffector_$fxProps_$fr_FR extends Translations$misskey$imageEffector_$fxProps_$en_US {
	_Translations$misskey$imageEffector_$fxProps_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get angle => 'Angle';
	@override String get scale => 'Taille';
	@override String get size => 'Taille';
	@override String get offset => 'Position';
	@override String get color => 'Couleur';
	@override String get opacity => 'Transparence';
	@override String get lightness => 'Clair';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _Translations$misskey$initialTutorial_$postNote_$visibility_$fr_FR extends Translations$misskey$initialTutorial_$postNote_$visibility_$en_US {
	_Translations$misskey$initialTutorial_$postNote_$visibility_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get description => 'Vous pouvez choisir qui peut voir vos notes.';
	@override String get public => 'Visible à tous les utilisateurs.';
	@override String get home => 'Uniquement visible sur le fil principal. Les utilisateurs pourront la voir en visitant ton profil, en s\'abonnant à vous et par les renotes.';
	@override String get followers => 'Uniquement visible à vos abonnés. Elle ne pourra être renotée que par vous-même.';
	@override String get direct => 'Uniquement visible aux utilisateurs de votre choix. Les récipients seront notifiés. Cette option peut être utilisée comme alternative aux messages directs.';
	@override String get doNotSendConfidencialOnDirect1 => 'Faites attention quand vous envoyez vos informations sensibles !';
	@override String get doNotSendConfidencialOnDirect2 => 'Les administrateurs de l\'instance destinataire peuvent voir toutes les notes publiées. Soyez prudent·e avec vos informations sensibles quand vous envoyez des notes directes aux utilisateurs dont vous ne vous fiez pas aux instances.';
	@override String get localOnly => 'Désactiver la fédération de la note aux autres instances. Les utilisateurs des autres instances ne pourront pas voir directement la note quelle que soit l\'étendue de la publication mentionnée ci-dessus.';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _Translations$misskey$initialTutorial_$postNote_$cw_$fr_FR extends Translations$misskey$initialTutorial_$postNote_$cw_$en_US {
	_Translations$misskey$initialTutorial_$postNote_$cw_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Masquer le contenu (CW)';
	@override String get description => 'Au lieu du corps du texte, le contenu du champ « commentaires » s\'affichera. Appuyez sur « afficher le contenu » pour voir le corps du texte.';
	@override late final _Translations$misskey$initialTutorial_$postNote_$cw_$exampleNote_$fr_FR exampleNote_ = _Translations$misskey$initialTutorial_$postNote_$cw_$exampleNote_$fr_FR._(_root);
	@override String get useCases => 'Utilisé pour désigner certaines notes selon les règles du serveur ou pour cacher des spoilers ou des textes sensibles.';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$exampleNote_$fr_FR extends Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$exampleNote_$en_US {
	_Translations$misskey$initialTutorial_$howToMakeAttachmentsSensitive_$exampleNote_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get note => 'Oups, j\'ai échoué à ouvrir le couvercle du natto...';
}

// Path: misskey.achievements_.types_.notes1_
class _Translations$misskey$achievements_$types_$notes1_$fr_FR extends Translations$misskey$achievements_$types_$notes1_$en_US {
	_Translations$misskey$achievements_$types_$notes1_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Je viens tout juste de configurer mon msky';
	@override String get description => 'Publiez votre première note';
	@override String get flavor => 'Passez un bon moment avec Misskey !';
}

// Path: misskey.achievements_.types_.notes10_
class _Translations$misskey$achievements_$types_$notes10_$fr_FR extends Translations$misskey$achievements_$types_$notes10_$en_US {
	_Translations$misskey$achievements_$types_$notes10_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quelques notes';
	@override String get description => 'Poster 10 notes';
}

// Path: misskey.achievements_.types_.notes100_
class _Translations$misskey$achievements_$types_$notes100_$fr_FR extends Translations$misskey$achievements_$types_$notes100_$en_US {
	_Translations$misskey$achievements_$types_$notes100_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beaucoup de notes';
	@override String get description => 'Poster 100 notes';
}

// Path: misskey.achievements_.types_.notes500_
class _Translations$misskey$achievements_$types_$notes500_$fr_FR extends Translations$misskey$achievements_$types_$notes500_$en_US {
	_Translations$misskey$achievements_$types_$notes500_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Couvert de notes';
	@override String get description => 'Poster 500 notes';
}

// Path: misskey.achievements_.types_.notes1000_
class _Translations$misskey$achievements_$types_$notes1000_$fr_FR extends Translations$misskey$achievements_$types_$notes1000_$en_US {
	_Translations$misskey$achievements_$types_$notes1000_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Une montagne de notes';
	@override String get description => 'Poster 1000 notes';
}

// Path: misskey.achievements_.types_.notes5000_
class _Translations$misskey$achievements_$types_$notes5000_$fr_FR extends Translations$misskey$achievements_$types_$notes5000_$en_US {
	_Translations$misskey$achievements_$types_$notes5000_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Débordement de notes';
	@override String get description => 'Poster 5 000 notes';
}

// Path: misskey.achievements_.types_.notes10000_
class _Translations$misskey$achievements_$types_$notes10000_$fr_FR extends Translations$misskey$achievements_$types_$notes10000_$en_US {
	_Translations$misskey$achievements_$types_$notes10000_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Super note';
	@override String get description => 'Poster 10 000 notes';
}

// Path: misskey.achievements_.types_.notes20000_
class _Translations$misskey$achievements_$types_$notes20000_$fr_FR extends Translations$misskey$achievements_$types_$notes20000_$en_US {
	_Translations$misskey$achievements_$types_$notes20000_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Encore... plus... de... notes...';
	@override String get description => 'Poster 20 000 notes';
}

// Path: misskey.achievements_.types_.notes30000_
class _Translations$misskey$achievements_$types_$notes30000_$fr_FR extends Translations$misskey$achievements_$types_$notes30000_$en_US {
	_Translations$misskey$achievements_$types_$notes30000_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notes notes notes !';
	@override String get description => 'Poster 30 000 notes';
}

// Path: misskey.achievements_.types_.notes40000_
class _Translations$misskey$achievements_$types_$notes40000_$fr_FR extends Translations$misskey$achievements_$types_$notes40000_$en_US {
	_Translations$misskey$achievements_$types_$notes40000_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Usine de notes';
	@override String get description => 'Poster 40 000 notes';
}

// Path: misskey.achievements_.types_.notes50000_
class _Translations$misskey$achievements_$types_$notes50000_$fr_FR extends Translations$misskey$achievements_$types_$notes50000_$en_US {
	_Translations$misskey$achievements_$types_$notes50000_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Planète des notes';
	@override String get description => 'Poster 50 000 notes';
}

// Path: misskey.achievements_.types_.notes60000_
class _Translations$misskey$achievements_$types_$notes60000_$fr_FR extends Translations$misskey$achievements_$types_$notes60000_$en_US {
	_Translations$misskey$achievements_$types_$notes60000_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quasar de note';
	@override String get description => 'Poster 50 000 notes';
}

// Path: misskey.achievements_.types_.notes70000_
class _Translations$misskey$achievements_$types_$notes70000_$fr_FR extends Translations$misskey$achievements_$types_$notes70000_$en_US {
	_Translations$misskey$achievements_$types_$notes70000_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trou noir de notes';
	@override String get description => 'Poster 70 000 notes';
}

// Path: misskey.achievements_.types_.notes80000_
class _Translations$misskey$achievements_$types_$notes80000_$fr_FR extends Translations$misskey$achievements_$types_$notes80000_$en_US {
	_Translations$misskey$achievements_$types_$notes80000_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Galaxie de notes';
	@override String get description => 'Poster 80 000 notes';
}

// Path: misskey.achievements_.types_.notes90000_
class _Translations$misskey$achievements_$types_$notes90000_$fr_FR extends Translations$misskey$achievements_$types_$notes90000_$en_US {
	_Translations$misskey$achievements_$types_$notes90000_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Univers de notes';
	@override String get description => 'Poster 90 000 notes';
}

// Path: misskey.achievements_.types_.notes100000_
class _Translations$misskey$achievements_$types_$notes100000_$fr_FR extends Translations$misskey$achievements_$types_$notes100000_$en_US {
	_Translations$misskey$achievements_$types_$notes100000_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => 'Poster 100 000 notes';
	@override String get flavor => 'Avez-vous tant de choses à dire ?';
}

// Path: misskey.achievements_.types_.login3_
class _Translations$misskey$achievements_$types_$login3_$fr_FR extends Translations$misskey$achievements_$types_$login3_$en_US {
	_Translations$misskey$achievements_$types_$login3_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Débutant I';
	@override String get description => 'Se connecter pour un total de 3 jours';
	@override String get flavor => 'Dès maintenant, appelez-moi Misskeynaute';
}

// Path: misskey.achievements_.types_.login7_
class _Translations$misskey$achievements_$types_$login7_$fr_FR extends Translations$misskey$achievements_$types_$login7_$en_US {
	_Translations$misskey$achievements_$types_$login7_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Débutant II';
	@override String get description => 'Se connecter pour un total de 7 jours';
	@override String get flavor => 'On s\'habitue ?';
}

// Path: misskey.achievements_.types_.login15_
class _Translations$misskey$achievements_$types_$login15_$fr_FR extends Translations$misskey$achievements_$types_$login15_$en_US {
	_Translations$misskey$achievements_$types_$login15_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Débutant III';
	@override String get description => 'Se connecter pour un total de 15 jours';
}

// Path: misskey.achievements_.types_.login30_
class _Translations$misskey$achievements_$types_$login30_$fr_FR extends Translations$misskey$achievements_$types_$login30_$en_US {
	_Translations$misskey$achievements_$types_$login30_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskeynaute I';
	@override String get description => 'Se connecter pour un total de 30 jours';
}

// Path: misskey.achievements_.types_.login60_
class _Translations$misskey$achievements_$types_$login60_$fr_FR extends Translations$misskey$achievements_$types_$login60_$en_US {
	_Translations$misskey$achievements_$types_$login60_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskeynaute II';
	@override String get description => 'Se connecter pour un total de 60 jours';
}

// Path: misskey.achievements_.types_.login100_
class _Translations$misskey$achievements_$types_$login100_$fr_FR extends Translations$misskey$achievements_$types_$login100_$en_US {
	_Translations$misskey$achievements_$types_$login100_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskeynaute III';
	@override String get description => 'Se connecter pour un total de 100 jours';
	@override String get flavor => 'Misskeynaute acharné·e';
}

// Path: misskey.achievements_.types_.login200_
class _Translations$misskey$achievements_$types_$login200_$fr_FR extends Translations$misskey$achievements_$types_$login200_$en_US {
	_Translations$misskey$achievements_$types_$login200_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Régulier I';
	@override String get description => 'Se connecter pour un total de 200 jours';
}

// Path: misskey.achievements_.types_.login300_
class _Translations$misskey$achievements_$types_$login300_$fr_FR extends Translations$misskey$achievements_$types_$login300_$en_US {
	_Translations$misskey$achievements_$types_$login300_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Régulier II';
	@override String get description => 'Se connecter pour un total de 300 jours';
}

// Path: misskey.achievements_.types_.login400_
class _Translations$misskey$achievements_$types_$login400_$fr_FR extends Translations$misskey$achievements_$types_$login400_$en_US {
	_Translations$misskey$achievements_$types_$login400_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Régulier III';
	@override String get description => 'Se connecter pour un total de 400 jours';
}

// Path: misskey.achievements_.types_.login500_
class _Translations$misskey$achievements_$types_$login500_$fr_FR extends Translations$misskey$achievements_$types_$login500_$en_US {
	_Translations$misskey$achievements_$types_$login500_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Expert I';
	@override String get description => 'Se connecter pour un total de 500 jours';
	@override String get flavor => 'Non, mes amis, j\'aime les notes';
}

// Path: misskey.achievements_.types_.login600_
class _Translations$misskey$achievements_$types_$login600_$fr_FR extends Translations$misskey$achievements_$types_$login600_$en_US {
	_Translations$misskey$achievements_$types_$login600_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Expert II';
	@override String get description => 'Se connecter pour un total de 600 jours';
}

// Path: misskey.achievements_.types_.login700_
class _Translations$misskey$achievements_$types_$login700_$fr_FR extends Translations$misskey$achievements_$types_$login700_$en_US {
	_Translations$misskey$achievements_$types_$login700_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Expert III';
	@override String get description => 'Se connecter pour un total de 700 jours';
}

// Path: misskey.achievements_.types_.login800_
class _Translations$misskey$achievements_$types_$login800_$fr_FR extends Translations$misskey$achievements_$types_$login800_$en_US {
	_Translations$misskey$achievements_$types_$login800_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maître des notes I';
	@override String get description => 'Se connecter pour un total de 800 jours';
}

// Path: misskey.achievements_.types_.login900_
class _Translations$misskey$achievements_$types_$login900_$fr_FR extends Translations$misskey$achievements_$types_$login900_$en_US {
	_Translations$misskey$achievements_$types_$login900_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maître des notes II';
	@override String get description => 'Se connecter pour un total de 900 jours';
}

// Path: misskey.achievements_.types_.login1000_
class _Translations$misskey$achievements_$types_$login1000_$fr_FR extends Translations$misskey$achievements_$types_$login1000_$en_US {
	_Translations$misskey$achievements_$types_$login1000_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maître des notes III';
	@override String get description => 'Se connecter pour un total de 1 000 jours';
	@override String get flavor => 'Merci d\'utiliser Misskey !';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _Translations$misskey$achievements_$types_$noteClipped1_$fr_FR extends Translations$misskey$achievements_$types_$noteClipped1_$en_US {
	_Translations$misskey$achievements_$types_$noteClipped1_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Je... dois... clip...';
	@override String get description => 'Ajouter sa première note aux clips';
}

// Path: misskey.achievements_.types_.profileFilled_
class _Translations$misskey$achievements_$types_$profileFilled_$fr_FR extends Translations$misskey$achievements_$types_$profileFilled_$en_US {
	_Translations$misskey$achievements_$types_$profileFilled_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bien préparé';
	@override String get description => 'Configuration de votre profil';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _Translations$misskey$achievements_$types_$markedAsCat_$fr_FR extends Translations$misskey$achievements_$types_$markedAsCat_$en_US {
	_Translations$misskey$achievements_$types_$markedAsCat_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Je suis un chat';
	@override String get description => 'Rendre votre compte comme un chat';
	@override String get flavor => 'Je n\'ai pas encore de nom';
}

// Path: misskey.achievements_.types_.following1_
class _Translations$misskey$achievements_$types_$following1_$fr_FR extends Translations$misskey$achievements_$types_$following1_$en_US {
	_Translations$misskey$achievements_$types_$following1_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vous suivez votre premier·ère utilisateur·rice';
}

// Path: misskey.achievements_.types_.following10_
class _Translations$misskey$achievements_$types_$following10_$fr_FR extends Translations$misskey$achievements_$types_$following10_$en_US {
	_Translations$misskey$achievements_$types_$following10_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get description => 'S\'abonner à plus de 10 utilisateur·rice·s';
}

// Path: misskey.achievements_.types_.following50_
class _Translations$misskey$achievements_$types_$following50_$fr_FR extends Translations$misskey$achievements_$types_$following50_$en_US {
	_Translations$misskey$achievements_$types_$following50_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beaucoup d\'amis';
	@override String get description => 'S\'abonner à plus de 50 utilisateur·rice·s';
}

// Path: misskey.achievements_.types_.following100_
class _Translations$misskey$achievements_$types_$following100_$fr_FR extends Translations$misskey$achievements_$types_$following100_$en_US {
	_Translations$misskey$achievements_$types_$following100_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get description => 'S\'abonner à plus de 100 utilisateur·rice·s';
}

// Path: misskey.achievements_.types_.following300_
class _Translations$misskey$achievements_$types_$following300_$fr_FR extends Translations$misskey$achievements_$types_$following300_$en_US {
	_Translations$misskey$achievements_$types_$following300_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get description => 'S\'abonner à plus de 300 utilisateur·rice·s';
}

// Path: misskey.achievements_.types_.followers10_
class _Translations$misskey$achievements_$types_$followers10_$fr_FR extends Translations$misskey$achievements_$types_$followers10_$en_US {
	_Translations$misskey$achievements_$types_$followers10_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Abonnez-moi !';
	@override String get description => 'Obtenir plus de 10 abonné·e·s';
}

// Path: misskey.achievements_.types_.followers50_
class _Translations$misskey$achievements_$types_$followers50_$fr_FR extends Translations$misskey$achievements_$types_$followers50_$en_US {
	_Translations$misskey$achievements_$types_$followers50_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get description => 'Obtenir plus de 50 abonné·e·s';
}

// Path: misskey.achievements_.types_.followers100_
class _Translations$misskey$achievements_$types_$followers100_$fr_FR extends Translations$misskey$achievements_$types_$followers100_$en_US {
	_Translations$misskey$achievements_$types_$followers100_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Populaire';
	@override String get description => 'Obtenir plus de 100 abonné·e·s';
}

// Path: misskey.achievements_.types_.followers300_
class _Translations$misskey$achievements_$types_$followers300_$fr_FR extends Translations$misskey$achievements_$types_$followers300_$en_US {
	_Translations$misskey$achievements_$types_$followers300_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get description => 'Obtenir plus de 300 abonné·e·s';
}

// Path: misskey.achievements_.types_.followers500_
class _Translations$misskey$achievements_$types_$followers500_$fr_FR extends Translations$misskey$achievements_$types_$followers500_$en_US {
	_Translations$misskey$achievements_$types_$followers500_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tour radio';
	@override String get description => 'Obtenir plus de 500 abonné·e·s';
}

// Path: misskey.achievements_.types_.followers1000_
class _Translations$misskey$achievements_$types_$followers1000_$fr_FR extends Translations$misskey$achievements_$types_$followers1000_$en_US {
	_Translations$misskey$achievements_$types_$followers1000_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Influenceur·euse';
	@override String get description => 'Obtenir plus de 1000 abonné·e·s';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _Translations$misskey$achievements_$types_$iLoveMisskey_$fr_FR extends Translations$misskey$achievements_$types_$iLoveMisskey_$en_US {
	_Translations$misskey$achievements_$types_$iLoveMisskey_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'J’adore Misskey';
	@override String get description => 'Publication « J’❤ #Misskey »';
	@override String get flavor => 'L\'équipe de développement de Misskey apprécie vraiment votre aide !';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _Translations$misskey$achievements_$types_$foundTreasure_$fr_FR extends Translations$misskey$achievements_$types_$foundTreasure_$en_US {
	_Translations$misskey$achievements_$types_$foundTreasure_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chasse au trésor';
	@override String get description => 'Vous avez trouvé le trésor caché';
}

// Path: misskey.achievements_.types_.client30min_
class _Translations$misskey$achievements_$types_$client30min_$fr_FR extends Translations$misskey$achievements_$types_$client30min_$en_US {
	_Translations$misskey$achievements_$types_$client30min_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pause bien méritée';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _Translations$misskey$achievements_$types_$postedAtLateNight_$fr_FR extends Translations$misskey$achievements_$types_$postedAtLateNight_$en_US {
	_Translations$misskey$achievements_$types_$postedAtLateNight_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get flavor => 'C’est l’heure d’aller au lit.';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _Translations$misskey$achievements_$types_$postedAt0min0sec_$fr_FR extends Translations$misskey$achievements_$types_$postedAt0min0sec_$en_US {
	_Translations$misskey$achievements_$types_$postedAt0min0sec_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Horloge parlante';
	@override String get description => 'Publication d’une note à 00:00';
	@override String get flavor => 'Tic tac, tic tac, tic tac, ding !';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _Translations$misskey$achievements_$types_$viewInstanceChart_$fr_FR extends Translations$misskey$achievements_$types_$viewInstanceChart_$en_US {
	_Translations$misskey$achievements_$types_$viewInstanceChart_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyste';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _Translations$misskey$achievements_$types_$outputHelloWorldOnScratchpad_$fr_FR extends Translations$misskey$achievements_$types_$outputHelloWorldOnScratchpad_$en_US {
	_Translations$misskey$achievements_$types_$outputHelloWorldOnScratchpad_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hello, world!';
}

// Path: misskey.achievements_.types_.open3windows_
class _Translations$misskey$achievements_$types_$open3windows_$fr_FR extends Translations$misskey$achievements_$types_$open3windows_$en_US {
	_Translations$misskey$achievements_$types_$open3windows_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Multi-fenêtres';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _Translations$misskey$achievements_$types_$driveFolderCircularReference_$fr_FR extends Translations$misskey$achievements_$types_$driveFolderCircularReference_$en_US {
	_Translations$misskey$achievements_$types_$driveFolderCircularReference_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Référence circulaire';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _Translations$misskey$achievements_$types_$setNameToSyuilo_$fr_FR extends Translations$misskey$achievements_$types_$setNameToSyuilo_$en_US {
	_Translations$misskey$achievements_$types_$setNameToSyuilo_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Complexe de dieu';
	@override String get description => 'Vous avez spécifié « syuilo » comme nom';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$fr_FR extends Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$en_US {
	_Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Premier anniversaire';
	@override String get description => 'Un an est passé depuis la création du compte';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$fr_FR extends Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$en_US {
	_Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Second anniversaire';
	@override String get description => 'Deux ans sont passés depuis la création du compte';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$fr_FR extends Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$en_US {
	_Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => '3ème anniversaire';
	@override String get description => 'Trois ans sont passés depuis la création du compte';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _Translations$misskey$achievements_$types_$loggedInOnBirthday_$fr_FR extends Translations$misskey$achievements_$types_$loggedInOnBirthday_$en_US {
	_Translations$misskey$achievements_$types_$loggedInOnBirthday_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Joyeux Anniversaire !';
	@override String get description => 'Vous vous êtes connecté à la date de votre anniversaire';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$fr_FR extends Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$en_US {
	_Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bonne année !';
	@override String get description => 'Vous vous êtes connecté le premier jour de l\'année';
	@override String get flavor => 'Merci pour le soutient continue sur cette instance.';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _Translations$misskey$achievements_$types_$cookieClicked_$fr_FR extends Translations$misskey$achievements_$types_$cookieClicked_$en_US {
	_Translations$misskey$achievements_$types_$cookieClicked_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jeu de clic sur des cookies';
	@override String get description => 'Cliqué sur un cookie';
	@override String get flavor => 'Attendez une minute, vous êtes sur le mauvais site web ?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _Translations$misskey$achievements_$types_$brainDiver_$fr_FR extends Translations$misskey$achievements_$types_$brainDiver_$en_US {
	_Translations$misskey$achievements_$types_$brainDiver_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Poster le lien sur Brain Diver';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _Translations$misskey$achievements_$types_$smashTestNotificationButton_$fr_FR extends Translations$misskey$achievements_$types_$smashTestNotificationButton_$en_US {
	_Translations$misskey$achievements_$types_$smashTestNotificationButton_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Débordement de tests';
	@override String get description => 'Détruire le bouton de test de notifications dans un intervalle extrêmement court';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _Translations$misskey$achievements_$types_$tutorialCompleted_$fr_FR extends Translations$misskey$achievements_$types_$tutorialCompleted_$en_US {
	_Translations$misskey$achievements_$types_$tutorialCompleted_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Diplôme de la course élémentaire de Misskey';
	@override String get description => 'Terminer le tutoriel';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _Translations$misskey$achievements_$types_$bubbleGameExplodingHead_$fr_FR extends Translations$misskey$achievements_$types_$bubbleGameExplodingHead_$en_US {
	_Translations$misskey$achievements_$types_$bubbleGameExplodingHead_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => 'Le plus gros objet du jeu de bulles';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _Translations$misskey$achievements_$types_$bubbleGameDoubleExplodingHead_$fr_FR extends Translations$misskey$achievements_$types_$bubbleGameDoubleExplodingHead_$en_US {
	_Translations$misskey$achievements_$types_$bubbleGameDoubleExplodingHead_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Double🤯';
}

// Path: misskey.pages_.blocks.note_
class _Translations$misskey$pages_$blocks$note_$fr_FR extends Translations$misskey$pages_$blocks$note_$en_US {
	_Translations$misskey$pages_$blocks$note_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get id => 'Identifiant de la note';
	@override String get idDescription => 'Pour configurer la note, vous pouvez aussi coller ici l\'URL correspondante.';
	@override String get detailed => 'Afficher les détails';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$fr_FR extends Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$en_US {
	_Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get mail => 'E-mail ';
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _Translations$misskey$externalResourceInstaller_$errors_$invalidParams_$fr_FR extends Translations$misskey$externalResourceInstaller_$errors_$invalidParams_$en_US {
	_Translations$misskey$externalResourceInstaller_$errors_$invalidParams_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paramètres invalides';
	@override String get description => 'Il y a un manque d\'informations nécessaires pour obtenir des données à partir de sites externes. Veuillez vérifier l\'URL.';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _Translations$misskey$externalResourceInstaller_$errors_$resourceTypeNotSupported_$fr_FR extends Translations$misskey$externalResourceInstaller_$errors_$resourceTypeNotSupported_$en_US {
	_Translations$misskey$externalResourceInstaller_$errors_$resourceTypeNotSupported_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cette ressource externe n\'est pas prise en charge.';
	@override String get description => 'Le type de ressource obtenue à partir de ce site externe n\'est pas pris en charge. Veuillez contacter l\'administrateur du site.';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _Translations$misskey$externalResourceInstaller_$errors_$failedToFetch_$fr_FR extends Translations$misskey$externalResourceInstaller_$errors_$failedToFetch_$en_US {
	_Translations$misskey$externalResourceInstaller_$errors_$failedToFetch_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Échec de récupération des données';
	@override String get fetchErrorDescription => 'La communication avec le site externe a échoué. Si vous réessayez et que cela ne s\'améliore pas, veuillez contacter l\'administrateur du site.';
	@override String get parseErrorDescription => 'Les données obtenues à partir du site externe n\'ont pas pu être parsées. Veuillez contacter l\'administrateur du site.';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _Translations$misskey$externalResourceInstaller_$errors_$hashUnmatched_$fr_FR extends Translations$misskey$externalResourceInstaller_$errors_$hashUnmatched_$en_US {
	_Translations$misskey$externalResourceInstaller_$errors_$hashUnmatched_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Échec de vérification des données';
	@override String get description => 'La vérification de l\'intégrité des données fournies a échoué. Pour des raisons de sécurité, l\'installation ne peut pas continuer. Veuillez contacter l\'administrateur du site.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _Translations$misskey$externalResourceInstaller_$errors_$pluginParseFailed_$fr_FR extends Translations$misskey$externalResourceInstaller_$errors_$pluginParseFailed_$en_US {
	_Translations$misskey$externalResourceInstaller_$errors_$pluginParseFailed_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Erreur d\'AiScript';
	@override String get description => 'Bien que les données aient été obtenues, elles n\'ont pas pu être lues, car il y a eu une erreur lors du parsage d\'AiScript. Veuillez contacter l\'auteur de l\'extension. Pour plus de détails sur l\'erreur, veuillez consulter la console JavaScript.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _Translations$misskey$externalResourceInstaller_$errors_$pluginInstallFailed_$fr_FR extends Translations$misskey$externalResourceInstaller_$errors_$pluginInstallFailed_$en_US {
	_Translations$misskey$externalResourceInstaller_$errors_$pluginInstallFailed_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Échec d\'installation de l\'extension';
	@override String get description => 'Il y a eu un problème lors de l\'installation de l\'extension. Veuillez réessayer. Pour plus de détails sur l\'erreur, veuillez consulter la console JavaScript.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _Translations$misskey$externalResourceInstaller_$errors_$themeParseFailed_$fr_FR extends Translations$misskey$externalResourceInstaller_$errors_$themeParseFailed_$en_US {
	_Translations$misskey$externalResourceInstaller_$errors_$themeParseFailed_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Erreur de parsage du thème';
	@override String get description => 'Bien que les données aient été obtenues, elles n\'ont pas pu être lues, car il y a eu une erreur lors du parsage du fichier du thème. Veuillez contacter l\'auteur du thème. Pour plus de détails sur l\'erreur, veuillez consulter la console JavaScript.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _Translations$misskey$externalResourceInstaller_$errors_$themeInstallFailed_$fr_FR extends Translations$misskey$externalResourceInstaller_$errors_$themeInstallFailed_$en_US {
	_Translations$misskey$externalResourceInstaller_$errors_$themeInstallFailed_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Échec d\'installation du thème';
	@override String get description => 'Il y a eu un problème lors de l\'installation du thème. Veuillez réessayer. Pour plus de détails sur l\'erreur, veuillez consulter la console JavaScript.';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _Translations$misskey$initialTutorial_$postNote_$cw_$exampleNote_$fr_FR extends Translations$misskey$initialTutorial_$postNote_$cw_$exampleNote_$en_US {
	_Translations$misskey$initialTutorial_$postNote_$cw_$exampleNote_$fr_FR._(TranslationsFrFr root) : this._root = root, super.internal(root);

	final TranslationsFrFr _root; // ignore: unused_field

	// Translations
	@override String get cw => 'Attention : cela vous donnera faim !';
	@override String get note => 'J\'ai mangé un beignet enrobé de chocolat 🍩😋';
}
