///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint

part of 'strings.g.dart';

// Path: <root>
class _StringsRoRo extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsRoRo.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.roRo,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <ro-RO>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	@override late final _StringsRoRo _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAriaRoRo aria = _StringsAriaRoRo._(_root);
	@override late final _StringsMisskeyRoRo misskey = _StringsMisskeyRoRo._(_root);
}

// Path: aria
class _StringsAriaRoRo extends _StringsAriaEnUs {
	_StringsAriaRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Ești sigur ca vrei să urmărești pe '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Re-notat de '),
		user,
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Ești sigur ca vrei să nu mai urmărești pe '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' a spus ceva'),
	]);
}

// Path: misskey
class _StringsMisskeyRoRo extends _StringsMisskeyEnUs {
	_StringsMisskeyRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Română';
	@override String get headlineMisskey => 'O rețea conectată prin note';
	@override String get introMisskey => 'Bine ai venit! Misskey este un serviciu de microblogging open source și decentralizat.\nCreează "note" cu care să îți poți împărți gândurile cu oricine din jurul tău. 📡\nCu "reacții" îți poți expirma rapid părerea despre notele oricui. 👍\nHai să explorăm o lume nouă! 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} este unul dintre serviciile care se folosește de platforma open source <b>Misskey</b>.';
	@override String monthAndDay({required Object day, required Object month}) => '${day}/${month}';
	@override String get search => 'Caută';
	@override String get notifications => 'Notificări';
	@override String get username => 'Nume de utilizator';
	@override String get password => 'Parolă';
	@override String get forgotPassword => 'Am uitat parola';
	@override String get fetchingAsApObject => 'Se aduce din Fediverse...';
	@override String get ok => 'OK';
	@override String get gotIt => 'Am înțeles!';
	@override String get cancel => 'Anulează';
	@override String get noThankYou => 'Nu, mulțumesc.';
	@override String get enterUsername => 'Introdu numele de utilizator';
	@override String renotedBy({required Object user}) => 'Re-notat de ${user}';
	@override String get noNotes => 'Nicio notă';
	@override String get noNotifications => 'Nicio notificare';
	@override String get instance => 'Instanță';
	@override String get settings => 'Setări';
	@override String get notificationSettings => 'Setări notificări';
	@override String get basicSettings => 'Setări generale';
	@override String get otherSettings => 'Alte Setări';
	@override String get openInWindow => 'Deschide într-o fereastră';
	@override String get profile => 'Profil';
	@override String get timeline => 'Cronologie';
	@override String get noAccountDescription => 'Acest utilizator încă nu a scris un bio.';
	@override String get login => 'Autentifică-te';
	@override String get loggingIn => 'Se autentifică';
	@override String get logout => 'Deconectează-te';
	@override String get signup => 'Înregistrează-te';
	@override String get uploading => 'Se încarcă';
	@override String get save => 'Salvează';
	@override String get users => 'Utilizatori';
	@override String get addUser => 'Adăugă utilizator';
	@override String get favorite => 'Adaugă la favorite';
	@override String get favorites => 'Favorite';
	@override String get unfavorite => 'Elimină din favorite';
	@override String get favorited => 'Adăugat la favorite.';
	@override String get alreadyFavorited => 'Deja adăugat la favorite.';
	@override String get cantFavorite => 'Nu se poate adăuga la favorite.';
	@override String get pin => 'Fixează pe profil';
	@override String get unpin => 'Anulati fixare';
	@override String get copyContent => 'Copiază conținutul';
	@override String get copyLink => 'Copiază link-ul';
	@override String get copyLinkRenote => 'Copiază linkul pentru renote';
	@override String get delete => 'Şterge';
	@override String get deleteAndEdit => 'Șterge și editează';
	@override String get deleteAndEditConfirm => 'Ești sigur că vrei să ștergi această notă și să o editezi? Vei pierde reacțiile, re-notele și răspunsurile acesteia.';
	@override String get addToList => 'Adaugă în listă';
	@override String get addToAntenna => 'Adaugă la antenă';
	@override String get sendMessage => 'Trimite un mesaj';
	@override String get copyRSS => 'Copiază RSS';
	@override String get copyUsername => 'Copiază numele de utilizator';
	@override String get copyUserId => 'Copiază numele de utilizator';
	@override String get copyNoteId => 'Copiază ID-ul notiței';
	@override String get copyFileId => 'Copiază ID-ul fișierului';
	@override String get copyFolderId => 'Copiază ID-ul folderului';
	@override String get copyProfileUrl => 'Copiază URL profil';
	@override String get searchUser => 'Caută un utilizator';
	@override String get reply => 'Răspunde';
	@override String get loadMore => 'Incarcă mai mult';
	@override String get showMore => 'Arată mai mult';
	@override String get showLess => 'Închide';
	@override String get youGotNewFollower => 'te-a urmărit';
	@override String get receiveFollowRequest => 'Cerere de urmărire primită';
	@override String get followRequestAccepted => 'Cerere de urmărire acceptată';
	@override String get mention => 'Mențiune';
	@override String get mentions => 'Mențiuni';
	@override String get directNotes => 'Note directe';
	@override String get importAndExport => 'Importă / Exportă';
	@override String get import => 'Importă';
	@override String get export => 'Exportă';
	@override String get files => 'Fișiere';
	@override String get download => 'Descarcă';
	@override String driveFileDeleteConfirm({required Object name}) => 'Ești sigur ca vrei să ștergi fișierul "${name}"? Notele atașate fișierului vor fi șterse și ele.';
	@override String unfollowConfirm({required Object name}) => 'Ești sigur ca vrei să nu mai urmărești pe ${name}?';
	@override String get exportRequested => 'Ai cerut un export. S-ar putea să ia un pic. Va fi adăugat in Drive-ul tău odată completat.';
	@override String get importRequested => 'Ai cerut un import. S-ar putea să ia un pic.';
	@override String get lists => 'Liste';
	@override String get noLists => 'Nu ai nici o listă';
	@override String get note => 'Notă';
	@override String get notes => 'Note';
	@override String get following => 'Urmărești';
	@override String get followers => 'Urmăritori';
	@override String get followsYou => 'Te urmărește';
	@override String get createList => 'Creează listă';
	@override String get manageLists => 'Gestionează listele';
	@override String get error => 'Eroare';
	@override String get somethingHappened => 'A survenit o eroare';
	@override String get retry => 'Reîncearcă';
	@override String get pageLoadError => 'A apărut o eroare la încărcarea paginii.';
	@override String get pageLoadErrorDescription => 'De obicei asta este cauzat de o eroare de rețea sau cache-ul browser-ului. Încearcă să cureți cache-ul și apoi să încerci din nou puțin mai târziu.';
	@override String get serverIsDead => 'Serverul nu răspunde. Te rugăm să aștepți o perioadă și să încerci din nou.';
	@override String get youShouldUpgradeClient => 'Pentru a vedea această pagină, te rugăm să îți actualizezi clientul.';
	@override String get enterListName => 'Introdu un nume pentru listă';
	@override String get privacy => 'Confidenţialitate';
	@override String get makeFollowManuallyApprove => 'Fă cererile de urmărire să necesite aprobare';
	@override String get defaultNoteVisibility => 'Vizibilitate implicită';
	@override String get follow => 'Urmărești';
	@override String get followRequest => 'Trimite cerere de urmărire';
	@override String get followRequests => 'Cereri de urmărire';
	@override String get unfollow => 'Nu mai urmări';
	@override String get followRequestPending => 'Cerere de urmărire în așteptare';
	@override String get enterEmoji => 'Introdu un emoji';
	@override String get renote => 'Re-notează';
	@override String get unrenote => 'Ia înapoi re-nota';
	@override String get renoted => 'Re-notat.';
	@override String get cantRenote => 'Această postare nu poate fi re-notată.';
	@override String get cantReRenote => 'O re-notă nu poate fi re-notată.';
	@override String get quote => 'Citează';
	@override String get inChannelRenote => 'Renotează în canal';
	@override String get inChannelQuote => 'Citează în canal';
	@override String get pinnedNote => 'Notă fixată';
	@override String get pinned => 'Fixat pe profil';
	@override String get you => 'Tu';
	@override String get clickToShow => 'Click pentru a afișa';
	@override String get sensitive => 'NSFW';
	@override String get add => 'Adaugă';
	@override String get reaction => 'Reacție';
	@override String get reactions => 'Reacție';
	@override String get reactionSettingDescription2 => 'Trage pentru a rearanja, apasă pe "+" pentru a adăuga.';
	@override String get rememberNoteVisibility => 'Amintește setarea de vizibilitate a notelor';
	@override String get attachCancel => 'Înlătură atașament';
	@override String get markAsSensitive => 'Marchează ca NSFW';
	@override String get unmarkAsSensitive => 'Demarchează ca NSFW';
	@override String get enterFileName => 'Introduceţi numele fişierului';
	@override String get mute => 'Amuțește';
	@override String get unmute => 'Înlătură amuțirea';
	@override String get renoteMute => 'Renotări pe modul silențios';
	@override String get renoteUnmute => 'Scoate renotările de pe modul silențios';
	@override String get block => 'Blochează';
	@override String get unblock => 'Deblochează';
	@override String get suspend => 'Suspendă';
	@override String get unsuspend => 'Anulează suspendare';
	@override String get blockConfirm => 'Ești sigur că vrei să blochezi acest cont?';
	@override String get unblockConfirm => 'Ești sigur ca vrei să deblochezi acest cont?';
	@override String get suspendConfirm => 'Ești sigur ca vrei să suspendezi acest cont?';
	@override String get unsuspendConfirm => 'Ești sigur ca vrei să nu mai suspendezi acest cont?';
	@override String get selectList => 'Selectează o listă';
	@override String get editList => 'Editați lista';
	@override String get selectChannel => 'Selectaţi canalul';
	@override String get selectAntenna => 'Selectează o antenă';
	@override String get editAntenna => 'Editează antena';
	@override String get selectWidget => 'Selectați un widget';
	@override String get editWidgets => 'Editează widget-urile';
	@override String get editWidgetsExit => 'Terminat';
	@override String get customEmojis => 'Emoji personalizat';
	@override String get emoji => 'Emoji';
	@override String get emojis => 'Emoji-uri';
	@override String get emojiName => 'Numele emoji-ului';
	@override String get emojiUrl => 'URL-ul emoji-ului';
	@override String get addEmoji => 'Adaugă un emoji';
	@override String get settingGuide => 'Setări recomandate';
	@override String get cacheRemoteFiles => 'Ține fișierele externe in cache';
	@override String get cacheRemoteFilesDescription => 'Când această setare este dezactivată, fișierele externe sunt încărcate direct din instanța externă. Dezactivarea va scădea utilizarea spațiului de stocare, dar va crește traficul, deoarece thumbnail-urile nu vor fi generate.';
	@override String get youCanCleanRemoteFilesCache => 'Poți goli cache-ul prin a apăsa pe butonul de 🗑️ din fereastra de gestionare a fișierelor.';
	@override String get flagAsBot => 'Marchează acest cont ca bot';
	@override String get flagAsBotDescription => 'Activează această opțiune dacă acest cont este controlat de un program. Daca e activată, aceasta va juca rolul unui indicator pentru dezvoltatori pentru a preveni interacțiunea în lanțuri infinite cu ceilalți boți și ajustează sistemele interne al Misskey pentru a trata acest cont drept un bot.';
	@override String get flagAsCat => 'Marchează acest cont ca pisică';
	@override String get flagAsCatDescription => 'Activează această opțiune dacă acest cont este o pisică.';
	@override String get flagShowTimelineReplies => 'Arată răspunsurile în cronologie';
	@override String get flagShowTimelineRepliesDescription => 'Dacă e activată vor fi arătate în cronologie răspunsurile utilizatorilor către alte notele altor utilizatori.';
	@override String get autoAcceptFollowed => 'Aprobă automat cererile de urmărire de la utilizatorii pe care îi urmărești';
	@override String get addAccount => 'Adaugă un cont';
	@override String get loginFailed => 'Autentificare eșuată';
	@override String get showOnRemote => 'Vezi mai multe pe instanța externă';
	@override String get general => 'General';
	@override String get wallpaper => 'Imagine de fundal';
	@override String get setWallpaper => 'Setați imaginea de fundal';
	@override String get removeWallpaper => 'Șterge imagine de fundal';
	@override String searchWith({required Object q}) => 'Caută: ${q}';
	@override String get youHaveNoLists => 'Nu ai nici o listă';
	@override String followConfirm({required Object name}) => 'Ești sigur ca vrei să urmărești pe ${name}?';
	@override String get proxyAccount => 'Cont proxy';
	@override String get proxyAccountDescription => 'Un cont proxy este un cont care se comportă ca un urmăritor extern pentru utilizatorii puși sub anumite condiții. De exemplu, când un cineva adaugă un utilizator extern intr-o listă, activitatea utilizatorului extern nu va fi adusă în instanță daca nici un utilizator local nu urmărește acel utilizator, așa că în schimb contul proxy îl va urmări.';
	@override String get host => 'Gazdă';
	@override String get selectUser => 'Selectează un utilizator';
	@override String get recipient => 'Destinatar';
	@override String get annotation => 'Adnotări';
	@override String get federation => 'Federație';
	@override String get instances => 'Instanțe';
	@override String get registeredAt => 'Înregistrat în';
	@override String get latestRequestReceivedAt => 'Ultima cerere primită';
	@override String get latestStatus => 'Ultimul status';
	@override String get storageUsage => 'Utilizare stocare';
	@override String get charts => 'Diagrame';
	@override String get perHour => 'Pe oră';
	@override String get perDay => 'Pe zi';
	@override String get stopActivityDelivery => 'Nu mai trimite activități';
	@override String get blockThisInstance => 'Blochează această instanță';
	@override String get operations => 'Operațiuni';
	@override String get software => 'Software';
	@override String get version => 'Versiune';
	@override String get metadata => 'Metadata';
	@override String withNFiles({required Object n}) => '${n} fișier(e)';
	@override String get monitor => 'Monitor';
	@override String get jobQueue => 'coada de job-uri';
	@override String get cpuAndMemory => 'CPU și memorie';
	@override String get network => 'Rețea';
	@override String get disk => 'Disk';
	@override String get instanceInfo => 'Informații despre instanță';
	@override String get statistics => 'Statistici';
	@override String get clearQueue => 'Șterge coada';
	@override String get clearQueueConfirmTitle => 'Ești sigur că vrei să cureți coada?';
	@override String get clearQueueConfirmText => 'Orice notă rămasă în coadă nu va fi federată. De obicei această operație nu este necesară.';
	@override String get clearCachedFiles => 'Golește cache-ul';
	@override String get clearCachedFilesConfirm => 'Ești sigur că vrei să ștergi toate fișierele externe din cache?';
	@override String get blockedInstances => 'Instanțe blocate';
	@override String get blockedInstancesDescription => 'Scrie hostname-urile instanțelor pe care dorești să le blochezi. Instanțele listate nu vor mai putea să comunice cu această instanță.';
	@override String get muteAndBlock => 'Amuțiri și Blocări';
	@override String get mutedUsers => 'Utilizatori amuțiți';
	@override String get blockedUsers => 'Utilizatori blocați';
	@override String get noUsers => 'Niciun utilizator';
	@override String get editProfile => 'Editează profilul';
	@override String get noteDeleteConfirm => 'Ești sigur că vrei să ștergi această notă?';
	@override String get pinLimitExceeded => 'Nu poți mai fixa mai multe note';
	@override String get intro => 'Misskey s-a instalat! Te rog crează un utilizator admin.';
	@override String get done => 'Gata';
	@override String get processing => 'Se procesează';
	@override String get preview => 'Previzualizare';
	@override String get default_ => 'Prestabilit';
	@override String get noCustomEmojis => 'Nu e niciun emoji';
	@override String get noJobs => 'Nu e niciun job';
	@override String get federating => 'Federație';
	@override String get blocked => 'Blocat';
	@override String get suspended => 'Suspendat';
	@override String get all => 'Tot';
	@override String get subscribing => 'Abonare';
	@override String get publishing => 'Publicare';
	@override String get notResponding => 'Nu răspunde';
	@override String get instanceFollowing => 'Urmărind în instanță';
	@override String get instanceFollowers => 'Urmăritori ai instanței';
	@override String get instanceUsers => 'Utilizatori ai acestei instanțe';
	@override String get changePassword => 'Schimbă parolă';
	@override String get security => 'Securitate';
	@override String get retypedNotMatch => 'Intrările nu corespund';
	@override String get currentPassword => 'Parola curentă';
	@override String get newPassword => 'Parola nouă';
	@override String get newPasswordRetype => 'Rescrie parola nouă';
	@override String get attachFile => 'Atașează fișiere';
	@override String get more => 'Mai mult!';
	@override String get featured => 'Evidențiat';
	@override String get usernameOrUserId => 'Nume sau ID de utilizator';
	@override String get noSuchUser => 'Utilizatorul nu a fost găsit';
	@override String get lookup => 'Privire';
	@override String get announcements => 'Anunțuri';
	@override String get imageUrl => 'URL-ul imaginii';
	@override String get remove => 'Şterge';
	@override String get removed => 'Șterș cu succes';
	@override String removeAreYouSure({required Object x}) => 'Ești sigur că vrei să înlături ${x}?';
	@override String deleteAreYouSure({required Object x}) => 'Ești sigur că vrei să ștergi ${x}?';
	@override String get resetAreYouSure => 'Sigur vrei să resetezi?';
	@override String get saved => 'Salvat';
	@override String get messaging => 'Chat';
	@override String get upload => 'Încarcă';
	@override String get keepOriginalUploading => 'Păstrează imaginea originală';
	@override String get keepOriginalUploadingDescription => 'Salvează imaginea originala încărcată fără modificări. Dacă e oprită, o versiune pentru afișarea pe web va fi generată la încărcare.';
	@override String get fromDrive => 'Din Drive';
	@override String get fromUrl => 'Din URL';
	@override String get uploadFromUrl => 'Încarcă dintr-un URL';
	@override String get uploadFromUrlDescription => 'URL-ul fișierului pe care dorești să îl încarci';
	@override String get uploadFromUrlRequested => 'Încărcare solicitată';
	@override String get uploadFromUrlMayTakeTime => 'S-ar putea să ia puțin până se finalizează încărcarea.';
	@override String get explore => 'Explorează';
	@override String get messageRead => 'Citit';
	@override String get noMoreHistory => 'Nu există mai mult istoric';
	@override String get startMessaging => 'Începe un chat nou';
	@override String nUsersRead({required Object n}) => 'citit de ${n}';
	@override String agreeTo({required Object x0}) => 'Sunt de acord cu ${x0}';
	@override String get start => 'Să începem';
	@override String get home => 'Acasă';
	@override String get remoteUserCaution => 'Deoarece acest utilizator este dintr-o instanță externă, informația afișată poate fi incompletă.';
	@override String get activity => 'Activitate';
	@override String get images => 'Imagini';
	@override String get image => 'Imagini';
	@override String get birthday => 'Zi de naștere';
	@override String yearsOld({required Object age}) => '${age} ani';
	@override String get registeredDate => 'Data înregistrării';
	@override String get location => 'Locație';
	@override String get theme => 'Teme';
	@override String get themeForLightMode => 'Temă folosită pentru Modul Luminat';
	@override String get themeForDarkMode => 'Temă folosită pentru Modul Întunecat';
	@override String get light => 'Luminos';
	@override String get dark => 'Întunecat';
	@override String get lightThemes => 'Teme luminoase';
	@override String get darkThemes => 'Teme întunecate';
	@override String get syncDeviceDarkMode => 'Sincronizează Modul Întunecat cu setările dispozitivului';
	@override String get drive => 'Drive';
	@override String get fileName => 'Nume fișier';
	@override String get selectFile => 'Alege un fisier';
	@override String get selectFiles => 'Alege fișiere';
	@override String get selectFolder => 'Selectează un folder';
	@override String get selectFolders => 'Selectează folderele';
	@override String get renameFile => 'Redenumește fișier';
	@override String get folderName => 'Nume folder';
	@override String get createFolder => 'Crează folder';
	@override String get renameFolder => 'Redenumește acest folder';
	@override String get deleteFolder => 'Șterge acest folder';
	@override String get addFile => 'Adăugați un fișier';
	@override String get emptyDrive => 'Drive-ul tău e gol';
	@override String get emptyFolder => 'Folder-ul acesta este gol';
	@override String get unableToDelete => 'Nu se poate șterge';
	@override String get inputNewFileName => 'Introdu un nou nume de fișier';
	@override String get inputNewDescription => 'Introdu o descriere nouă';
	@override String get inputNewFolderName => 'Introdu un nume de folder nou';
	@override String get circularReferenceFolder => 'Destinația folderului este un subfolder al folderului pe care dorești să îl muți.';
	@override String get hasChildFilesOrFolders => 'Acest folder nu este gol, așa că nu poate fi șters.';
	@override String get copyUrl => 'Copiază URL';
	@override String get rename => 'Redenumește';
	@override String get avatar => 'Avatar';
	@override String get banner => 'Banner';
	@override String get whenServerDisconnected => 'Când pierzi conexiunea cu serverul';
	@override String get disconnectedFromServer => 'Conecțiunea cu serverul a fost pierdută';
	@override String get reload => 'Reîncarcă';
	@override String get doNothing => 'Ignoră';
	@override String get reloadConfirm => 'Ai dori să reîmprospătezi cronologia?';
	@override String get watch => 'Vezi';
	@override String get unwatch => 'Oprește-te din văzut';
	@override String get accept => 'Acceptă';
	@override String get reject => 'Respinge';
	@override String get normal => 'Normal';
	@override String get instanceName => 'Numele instanței';
	@override String get instanceDescription => 'Descrierea instanței';
	@override String get maintainerName => 'Administrator';
	@override String get maintainerEmail => 'Email-ul administratorului';
	@override String get tosUrl => 'URL-ul Termenilor de utilizare';
	@override String get thisYear => 'An';
	@override String get thisMonth => 'Lună';
	@override String get today => 'Azi';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => '${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'Pagini';
	@override String get integration => 'Integrare';
	@override String get connectService => 'Conectează';
	@override String get disconnectService => 'Deconectează';
	@override String get enableLocalTimeline => 'Activează cronologia locală';
	@override String get enableGlobalTimeline => 'Activeaza cronologia globală';
	@override String get disablingTimelinesInfo => 'Administratorii și Moderatorii vor avea mereu access la toate cronologiile, chiar dacă nu sunt activate.';
	@override String get registration => 'Inregistrare';
	@override String get enableRegistration => 'Activează înregistrările pentru utilizatori noi';
	@override String get invite => 'Invită';
	@override String get driveCapacityPerLocalAccount => 'Capacitatea Drive-ului per utilizator local';
	@override String get driveCapacityPerRemoteAccount => 'Capacitatea Drive-ului per utilizator extern';
	@override String get inMb => 'În megabytes';
	@override String get bannerUrl => 'URL-ul imaginii de banner';
	@override String get backgroundImageUrl => 'URL-ul imaginii de fundal';
	@override String get basicInfo => 'Informații de bază';
	@override String get pinnedUsers => 'Utilizatori fixați';
	@override String get pinnedUsersDescription => 'Scrie utilizatorii, separați prin pauză de rând, care vor fi fixați pe pagina "Explorează".';
	@override String get pinnedPages => 'Pagini fixate';
	@override String get pinnedPagesDescription => 'Introdu linkurile Paginilor pe care le vrei fixate in vâruful paginii acestei instanțe, separate de pauze de rând.';
	@override String get pinnedClipId => 'ID-ul clip-ului pe care să îl fixezi';
	@override String get pinnedNotes => 'Notă fixată';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'Activează hCaptcha';
	@override String get hcaptchaSiteKey => 'Site key';
	@override String get hcaptchaSecretKey => 'Secret key';
	@override String get mcaptchaSiteKey => 'Site key';
	@override String get mcaptchaSecretKey => 'Secret key';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'Activează reCAPTCHA';
	@override String get recaptchaSiteKey => 'Site key';
	@override String get recaptchaSecretKey => 'Secret key';
	@override String get turnstileSiteKey => 'Site key';
	@override String get turnstileSecretKey => 'Secret key';
	@override String get avoidMultiCaptchaConfirm => 'Folosirea mai multor sisteme Captcha poate cauza interferență între acestea. Ai dori să dezactivezi alte sisteme Captcha acum active? Dacă preferi să rămână activate, apasă Anulare.';
	@override String get antennas => 'Antene';
	@override String get manageAntennas => 'Gestionează Antenele';
	@override String get name => 'Nume';
	@override String get antennaSource => 'Sursa antenei';
	@override String get antennaKeywords => 'Cuvinte cheie ascultate';
	@override String get antennaExcludeKeywords => 'Cuvinte cheie excluse';
	@override String get antennaKeywordsDescription => 'Separă cu spații pentru o condiție ȘI sau cu o întrerupere de rând pentru o condiție SAU.';
	@override String get notifyAntenna => 'Notifică-mă pentru note noi';
	@override String get withFileAntenna => 'Doar note cu fișiere';
	@override String get enableServiceworker => 'Activează ServiceWorker';
	@override String get antennaUsersDescription => 'Scrie un nume de utilizator per linie';
	@override String get caseSensitive => 'Sensibil la majuscule și minuscule';
	@override String get withReplies => 'Include răspunsuri';
	@override String get connectedTo => 'Următoarele conturi sunt conectate';
	@override String get notesAndReplies => 'Note și răspunsuri';
	@override String get withFiles => 'Incluzând fișiere';
	@override String get silence => 'Amuțește';
	@override String get silenceConfirm => 'Ești sigur că vrei să amuțești acest utilizator?';
	@override String get unsilence => 'Anulează amuțirea';
	@override String get unsilenceConfirm => 'Ești sigur că vrei să anulezi amuțirea acestui utilizator?';
	@override String get popularUsers => 'Utilizatori populari';
	@override String get recentlyUpdatedUsers => 'Utilizatori activi recent';
	@override String get recentlyRegisteredUsers => 'Utilizatori ce s-au alăturat recent';
	@override String get recentlyDiscoveredUsers => 'Utilizatori descoperiți recent';
	@override String exploreUsersCount({required Object count}) => 'Aici sunt ${count} utilizatori';
	@override String get exploreFediverse => 'Explorează Fediverse-ul';
	@override String get popularTags => 'Taguri populare';
	@override String get userList => 'Liste';
	@override String get about => 'Despre';
	@override String get aboutMisskey => 'Despre Misskey';
	@override String get administrator => 'Administrator';
	@override String get token => 'Token';
	@override String get moderator => 'Moderator';
	@override String nUsersMentioned({required Object n}) => 'Menționat de ${n} utilizatori';
	@override String get securityKey => 'Cheie de securitate';
	@override String get lastUsed => 'Ultima utilizată';
	@override String get unregister => 'Dezînregistrează';
	@override String get passwordLessLogin => 'Autentificare fără parolă';
	@override String get resetPassword => 'Resetează parola';
	@override String newPasswordIs({required Object password}) => 'Noua parolă este "${password}"';
	@override String get reduceUiAnimation => 'Redu animațiile interfeței';
	@override String get share => 'Distribuie';
	@override String get notFound => 'Nu a fost găsit';
	@override String get notFoundDescription => 'N-a fost găsită nicio pagină cu acest URL.';
	@override String get uploadFolder => 'Folder implicit pentru încărcări';
	@override String get markAsReadAllNotifications => 'Marchează toate notificările drept citit';
	@override String get markAsReadAllUnreadNotes => 'Marchează toate notele drept citit';
	@override String get markAsReadAllTalkMessages => 'Marchează toate mesajele drept citit';
	@override String get help => 'Ajutor';
	@override String get inputMessageHere => 'Introdu un mesaj aici';
	@override String get close => 'Închide';
	@override String get invites => 'Invită';
	@override String get members => 'Membri';
	@override String get transfer => 'Transferă';
	@override String get title => 'Titlu';
	@override String get text => 'Text';
	@override String get enable => 'Activează';
	@override String get next => 'Următorul';
	@override String get retype => 'Introdu din nou';
	@override String noteOf({required Object user}) => 'Notă de ${user}';
	@override String get quoteAttached => 'Citat';
	@override String get quoteQuestion => 'Vrei să adaugi ca citat?';
	@override String get noMessagesYet => 'Niciun mesaj încă';
	@override String get newMessageExists => 'Ai mesaje noi';
	@override String get onlyOneFileCanBeAttached => 'Poți atașa un singur fișier la un mesaj';
	@override String get signinRequired => 'Te rog autentifică-te';
	@override String get invitations => 'Invită';
	@override String get invitationCode => 'Cod de invitație';
	@override String get checking => 'Se verifică...';
	@override String get available => 'Disponibil';
	@override String get unavailable => 'Indisponibil';
	@override String get usernameInvalidFormat => 'Poți folosi litere mari și mici, numere și underscore-uri.';
	@override String get tooShort => 'Prea scurt';
	@override String get tooLong => 'Prea lung';
	@override String get weakPassword => 'Parolă slabă';
	@override String get normalPassword => 'Parolă medie';
	@override String get strongPassword => 'Parolă puternică';
	@override String get passwordMatched => 'Se potrivește!';
	@override String get passwordNotMatched => 'Nu se potrivește';
	@override String signinWith({required Object x}) => 'Autentifică-te cu ${x}';
	@override String get signinFailed => 'Nu se poate autentifica. Numele de utilizator sau parola introduse sunt incorecte.';
	@override String get or => 'Sau';
	@override String get language => 'Limbă';
	@override String get uiLanguage => 'Limba interfeței';
	@override String aboutX({required Object x}) => 'Despre ${x}';
	@override String get disableDrawer => 'Nu folosi meniuri în stil sertar';
	@override String get noHistory => 'Nu există istoric';
	@override String get signinHistory => 'Istoric autentificări';
	@override String get doing => 'Se procesează...';
	@override String get category => 'Categorie';
	@override String get tags => 'Etichete';
	@override String get docSource => 'Sursa acestui document';
	@override String get createAccount => 'Creează un cont';
	@override String get existingAccount => 'Cont existent';
	@override String get regenerate => 'Regenerează';
	@override String get fontSize => 'Mărimea fontului';
	@override String get noFollowRequests => 'Nu ai nicio cerere de urmărire în așteptare';
	@override String get openImageInNewTab => 'Deschide imaginile în taburi noi';
	@override String get dashboard => 'Panou de control';
	@override String get local => 'Local';
	@override String get remote => 'Extern';
	@override String get total => 'Total';
	@override String get weekOverWeekChanges => 'Schimbări până săptămâna trecută';
	@override String get dayOverDayChanges => 'Schimbări până ieri';
	@override String get appearance => 'Aspect';
	@override String get clientSettings => 'Setări client';
	@override String get accountSettings => 'Setări cont';
	@override String get promotion => 'Promovat';
	@override String get promote => 'Promovează';
	@override String get numberOfDays => 'Numărul zilelor';
	@override String get hideThisNote => 'Ascunde această notă';
	@override String get showFeaturedNotesInTimeline => 'Arată notele recomandate în cronologii';
	@override String get objectStorage => 'Object Storage';
	@override String get useObjectStorage => 'Folosește Object Storage';
	@override String get objectStorageBaseUrl => 'URL de bază';
	@override String get objectStorageBaseUrlDesc => 'URL-ul este folosit pentru referință. Specifică URL-ul CDN-ului sau Proxy-ului tău dacă folosești unul. Pentru S3 folosește \'https://<bucket>.s3.amazonaws.com\' și pentru GCS sau servicii echivalente folosește \'https://storage.googleapis.com/<bucket>\', etc.';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => 'Te rog specifică numele bucket-ului furnizorului tău.';
	@override String get objectStoragePrefix => 'Prefix';
	@override String get objectStoragePrefixDesc => 'Fișierele vor fi stocate sub directoare cu acest prefix.';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageEndpointDesc => 'Lasă acest câmp gol dacă folosești AWS S3, dacă nu specifică endpoint-ul ca \'<host>\' sau \'<host>:<port>\', depinzând de ce serviciu folosești.';
	@override String get objectStorageRegion => 'Regiune';
	@override String get objectStorageRegionDesc => 'Specifică o regiune precum \'xx-east-1\'. Dacă serviciul tău nu face distincția între regiuni lasă acest câmp gol sau introdu \'us-east-1\'.';
	@override String get objectStorageUseSSL => 'Folosește SSl';
	@override String get objectStorageUseSSLDesc => 'Oprește această opțiune dacă nu vei folosi HTTPS pentru conexiunile API-ului';
	@override String get objectStorageUseProxy => 'Conectează-te prin Proxy';
	@override String get objectStorageUseProxyDesc => 'Oprește această opțiune dacă vei nu folosi un Proxy pentru conexiunile API-ului';
	@override String get objectStorageSetPublicRead => 'Setează "public-read" pentru încărcare';
	@override String get serverLogs => 'Loguri server';
	@override String get deleteAll => 'Șterge tot';
	@override String get showFixedPostForm => 'Arată caseta de postare în vârful cronologie';
	@override String get newNoteRecived => 'Sunt note noi';
	@override String get sounds => 'Sunete';
	@override String get sound => 'Sunete';
	@override String get listen => 'Ascultă';
	@override String get none => 'Nimic';
	@override String get showInPage => 'Arată în pagină';
	@override String get popout => 'Scoate în afară';
	@override String get volume => 'Volum';
	@override String get masterVolume => 'Volumul principal';
	@override String get details => 'Detalii';
	@override String get chooseEmoji => 'Alege un emoji';
	@override String get unableToProcess => 'Această operație nu poate fi completată';
	@override String get recentUsed => 'Folosit recent';
	@override String get install => 'Instalează';
	@override String get uninstall => 'Dezinstalează';
	@override String get installedApps => 'Aplicații autorizate';
	@override String get nothing => 'Nu e nimic de văzut aici';
	@override String get installedDate => 'Autorizat la data de';
	@override String get lastUsedDate => 'Folosit ultima oara la';
	@override String get state => 'Stare';
	@override String get sort => 'Sortează';
	@override String get ascendingOrder => 'Crescător';
	@override String get descendingOrder => 'Descrescător';
	@override String get scratchpad => 'Scratchpad';
	@override String get scratchpadDescription => 'Scratchpad-ul oferă un mediu de experimentare în AiScript. Poți scrie, executa și verifica rezultatele acestuia interacționând cu Misskey în el.';
	@override String get output => 'Ieșire';
	@override String get script => 'Script';
	@override String get disablePagesScript => 'Dezactivează AiScript în Pagini';
	@override String get updateRemoteUser => 'Actualizează informațiile utilizatorului extern';
	@override String get deleteAllFiles => 'Șterge toate fișierele';
	@override String get deleteAllFilesConfirm => 'Ești sigur că vrei să ștergi toate fișierele?';
	@override String get removeAllFollowing => 'Dezurmărește toți utilizatorii urmăriți';
	@override String removeAllFollowingDescription({required Object host}) => 'Asta va dez-urmări toate conturile din ${host}. Te rog execută asta numai dacă instanța, de ex., nu mai există.';
	@override String get userSuspended => 'Acest utilizator a fost suspendat.';
	@override String get userSilenced => 'Acest utilizator a fost setat silențios.';
	@override String get yourAccountSuspendedTitle => 'Acest cont a fost suspendat';
	@override String get yourAccountSuspendedDescription => 'Acest cont a fost suspendat din cauza încălcării termenilor de serviciu al serverului sau ceva similar. Contactează administratorul dacă ai dori să afli un motiv mai detaliat. Te rog nu crea un cont nou.';
	@override String get menu => 'Meniu';
	@override String get divider => 'Separator';
	@override String get addItem => 'Adaugă element';
	@override String get relays => 'Relee';
	@override String get addRelay => 'Adaugă Releu';
	@override String get inboxUrl => 'URL-ul inbox-ului';
	@override String get addedRelays => 'Relee adăugate';
	@override String get serviceworkerInfo => 'Trebuie să fie activat pentru notificări push.';
	@override String get deletedNote => 'Notă ștearsă';
	@override String get invisibleNote => 'Note ascunse';
	@override String get enableInfiniteScroll => 'Încarcă mai mult automat';
	@override String get visibility => 'Vizibilitate';
	@override String get poll => 'Sondaj';
	@override String get useCw => 'Ascunde conținutul';
	@override String get enablePlayer => 'Deschide player-ul video';
	@override String get disablePlayer => 'Închide player-ul video';
	@override String get expandTweet => 'Expandează tweet';
	@override String get themeEditor => 'Editor de teme';
	@override String get description => 'Descriere';
	@override String get describeFile => 'Adaugă titrări';
	@override String get enterFileDescription => 'Introdu titrările';
	@override String get author => 'Autor';
	@override String get leaveConfirm => 'Ai schimbări nesalvate. Vrei să renunți la ele?';
	@override String get manage => 'Gestionare';
	@override String get plugins => 'Pluginuri';
	@override String get deck => 'Deck';
	@override String get undeck => 'Părăsește Deck';
	@override String get useBlurEffectForModal => 'Folosește efect de blur pentru modale';
	@override String get width => 'Lăţime';
	@override String get height => 'Înălţime';
	@override String get large => 'Mare';
	@override String get medium => 'Mediu';
	@override String get small => 'Mic';
	@override String get generateAccessToken => 'Generează token de acces';
	@override String get permission => 'Permisiuni';
	@override String get enableAll => 'Actevează tot';
	@override String get disableAll => 'Dezactivează tot';
	@override String get tokenRequested => 'Acordă acces la cont';
	@override String get pluginTokenRequestedDescription => 'Acest plugin va putea să folosească permisiunile setate aici.';
	@override String get notificationType => 'Tipul notificării';
	@override String get edit => 'Editează';
	@override String get emailServer => 'Server email';
	@override String get enableEmail => 'Activează distribuția de emailuri';
	@override String get emailConfigInfo => 'Folosit pentru a confirma emailul tău în timpul logări dacă îți uiți parola';
	@override String get email => 'Email';
	@override String get emailAddress => 'Adresă de email';
	@override String get smtpConfig => 'Configurare Server SMTP';
	@override String get smtpHost => 'Gazdă';
	@override String get smtpPort => 'Port';
	@override String get smtpUser => 'Nume de utilizator';
	@override String get smtpPass => 'Parolă';
	@override String get emptyToDisableSmtpAuth => 'Lasă username-ul și parola necompletate pentru a dezactiva verificarea SMTP';
	@override String get smtpSecure => 'Folosește SSL/TLS implicit pentru conecțiunile SMTP';
	@override String get smtpSecureInfo => 'Oprește opțiunea asta dacă STARTTLS este folosit';
	@override String get testEmail => 'Testează livrarea emailurilor';
	@override String get wordMute => 'Cuvinte pe mut';
	@override String get regexpError => 'Eroare de Expresie Regulată';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'A apărut o eroare în expresia regulată pe linia ${line} al cuvintelor ${tab} setate pe mut:';
	@override String get instanceMute => 'Instanțe pe mut';
	@override String userSaysSomething({required Object name}) => '${name} a spus ceva';
	@override String get makeActive => 'Activează';
	@override String get display => 'Arată';
	@override String get copy => 'Copiază';
	@override String get metrics => 'Metrici';
	@override String get overview => 'Privire de ansamblu';
	@override String get logs => 'Log-uri';
	@override String get delayed => 'Întârziate';
	@override String get database => 'Baza de date';
	@override String get channel => 'Canale';
	@override String get create => 'Crează';
	@override String get notificationSetting => 'Setări notificări';
	@override String get notificationSettingDesc => 'Selectează tipurile de notificări care să fie arătate';
	@override String get useGlobalSetting => 'Folosește setările globale';
	@override String get useGlobalSettingDesc => 'Dacă opțiunea e pornită, notificările contului tău vor fi folosite. Dacă e oprită, configurația va fi individuală.';
	@override String get other => 'Altele';
	@override String get regenerateLoginToken => 'Regenerează token de login';
	@override String get regenerateLoginTokenDescription => 'Regenerează token-ul folosit intern în timpul logări. În mod normal asta nu este necesar. Odată regenerat, toate dispozitivele vor fi delogate.';
	@override String get setMultipleBySeparatingWithSpace => 'Separă mai multe intrări cu spații.';
	@override String get fileIdOrUrl => 'Introdu ID sau URL';
	@override String get behavior => 'Comportament';
	@override String get sample => 'exemplu';
	@override String get abuseReports => 'Rapoarte';
	@override String get reportAbuse => 'Raportează';
	@override String reportAbuseOf({required Object name}) => 'Raportează ${name}';
	@override String get fillAbuseReportDescription => 'Te rog scrie detaliile legate de acest raport. Dacă este despre o notă specifică, te rog introdu URL-ul ei.';
	@override String get abuseReported => 'Raportul tău a fost trimis. Mulțumim.';
	@override String get reporter => 'Raportorul';
	@override String get reporteeOrigin => 'Originea raportatului';
	@override String get reporterOrigin => 'Originea raportorului';
	@override String get forwardReport => 'Redirecționează raportul către instanța externă';
	@override String get forwardReportIsAnonymous => 'În locul contului tău, va fi afișat un cont anonim, de sistem, ca raportor către instanța externă.';
	@override String get send => 'Trimite';
	@override String get abuseMarkAsResolved => 'Marchează raportul ca rezolvat';
	@override String get openInNewTab => 'Deschide în tab nou';
	@override String get openInSideView => 'Deschide în vedere laterală';
	@override String get defaultNavigationBehaviour => 'Comportament de navigare implicit';
	@override String get editTheseSettingsMayBreakAccount => 'Editarea acestor setări îți pot defecta contul.';
	@override String waitingFor({required Object x}) => 'Așteptând pentru ${x}';
	@override String get random => 'Aleator';
	@override String get system => 'Sistem';
	@override String get switchUi => 'Schimbă UI';
	@override String get desktop => 'Desktop';
	@override String get clearCache => 'Golește cache-ul';
	@override String get info => 'Despre';
	@override String get user => 'Utilizatori';
	@override String get administration => 'Gestionare';
	@override String get middle => 'Mediu';
	@override String get sent => 'Trimite';
	@override String get searchByGoogle => 'Caută';
	@override String get file => 'Fișiere';
	@override String get show => 'Arată';
	@override String get icon => 'Avatar';
	@override String get replies => 'Răspunde';
	@override String get renotes => 'Re-notează';
	@override late final _StringsMisskeyDeliveryRoRo delivery_ = _StringsMisskeyDeliveryRoRo._(_root);
	@override late final _StringsMisskeyRoleRoRo role_ = _StringsMisskeyRoleRoRo._(_root);
	@override late final _StringsMisskeyEmailRoRo email_ = _StringsMisskeyEmailRoRo._(_root);
	@override late final _StringsMisskeyThemeRoRo theme_ = _StringsMisskeyThemeRoRo._(_root);
	@override late final _StringsMisskeySfxRoRo sfx_ = _StringsMisskeySfxRoRo._(_root);
	@override late final _StringsMisskeyAgoRoRo ago_ = _StringsMisskeyAgoRoRo._(_root);
	@override late final _StringsMisskeyX2faRoRo x2fa_ = _StringsMisskeyX2faRoRo._(_root);
	@override late final _StringsMisskeyWidgetsRoRo widgets_ = _StringsMisskeyWidgetsRoRo._(_root);
	@override late final _StringsMisskeyCwRoRo cw_ = _StringsMisskeyCwRoRo._(_root);
	@override late final _StringsMisskeyVisibilityRoRo visibility_ = _StringsMisskeyVisibilityRoRo._(_root);
	@override late final _StringsMisskeyProfileRoRo profile_ = _StringsMisskeyProfileRoRo._(_root);
	@override late final _StringsMisskeyExportOrImportRoRo exportOrImport_ = _StringsMisskeyExportOrImportRoRo._(_root);
	@override late final _StringsMisskeyChartsRoRo charts_ = _StringsMisskeyChartsRoRo._(_root);
	@override late final _StringsMisskeyTimelinesRoRo timelines_ = _StringsMisskeyTimelinesRoRo._(_root);
	@override late final _StringsMisskeyPlayRoRo play_ = _StringsMisskeyPlayRoRo._(_root);
	@override late final _StringsMisskeyPagesRoRo pages_ = _StringsMisskeyPagesRoRo._(_root);
	@override late final _StringsMisskeyNotificationRoRo notification_ = _StringsMisskeyNotificationRoRo._(_root);
	@override late final _StringsMisskeyDeckRoRo deck_ = _StringsMisskeyDeckRoRo._(_root);
	@override late final _StringsMisskeyWebhookSettingsRoRo webhookSettings_ = _StringsMisskeyWebhookSettingsRoRo._(_root);
	@override late final _StringsMisskeyModerationLogTypesRoRo moderationLogTypes_ = _StringsMisskeyModerationLogTypesRoRo._(_root);
	@override late final _StringsMisskeyReversiRoRo reversi_ = _StringsMisskeyReversiRoRo._(_root);
}

// Path: misskey.delivery_
class _StringsMisskeyDeliveryRoRo extends _StringsMisskeyDeliveryEnUs {
	_StringsMisskeyDeliveryRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get stop => 'Suspendat';
	@override late final _StringsMisskeyDeliveryTypeRoRo type_ = _StringsMisskeyDeliveryTypeRoRo._(_root);
}

// Path: misskey.role_
class _StringsMisskeyRoleRoRo extends _StringsMisskeyRoleEnUs {
	_StringsMisskeyRoleRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyRolePriorityRoRo priority_ = _StringsMisskeyRolePriorityRoRo._(_root);
}

// Path: misskey.email_
class _StringsMisskeyEmailRoRo extends _StringsMisskeyEmailEnUs {
	_StringsMisskeyEmailRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyEmailFollowRoRo follow_ = _StringsMisskeyEmailFollowRoRo._(_root);
}

// Path: misskey.theme_
class _StringsMisskeyThemeRoRo extends _StringsMisskeyThemeEnUs {
	_StringsMisskeyThemeRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get description => 'Descriere';
	@override late final _StringsMisskeyThemeKeysRoRo keys = _StringsMisskeyThemeKeysRoRo._(_root);
}

// Path: misskey.sfx_
class _StringsMisskeySfxRoRo extends _StringsMisskeySfxEnUs {
	_StringsMisskeySfxRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get note => 'Note';
	@override String get notification => 'Notificări';
}

// Path: misskey.ago_
class _StringsMisskeyAgoRoRo extends _StringsMisskeyAgoEnUs {
	_StringsMisskeyAgoRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get invalid => 'Nu e nimic de văzut aici';
}

// Path: misskey.x2fa_
class _StringsMisskeyX2faRoRo extends _StringsMisskeyX2faEnUs {
	_StringsMisskeyX2faRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get renewTOTPCancel => 'Nu, mulțumesc.';
}

// Path: misskey.widgets_
class _StringsMisskeyWidgetsRoRo extends _StringsMisskeyWidgetsEnUs {
	_StringsMisskeyWidgetsRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Profil';
	@override String get instanceInfo => 'Informații despre instanță';
	@override String get notifications => 'Notificări';
	@override String get timeline => 'Cronologie';
	@override String get activity => 'Activitate';
	@override String get federation => 'Federație';
	@override String get jobQueue => 'coada de job-uri';
	@override late final _StringsMisskeyWidgetsUserListRoRo userList_ = _StringsMisskeyWidgetsUserListRoRo._(_root);
}

// Path: misskey.cw_
class _StringsMisskeyCwRoRo extends _StringsMisskeyCwEnUs {
	_StringsMisskeyCwRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get show => 'Incarcă mai mult';
}

// Path: misskey.visibility_
class _StringsMisskeyVisibilityRoRo extends _StringsMisskeyVisibilityEnUs {
	_StringsMisskeyVisibilityRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get home => 'Acasă';
	@override String get followers => 'Urmăritori';
}

// Path: misskey.profile_
class _StringsMisskeyProfileRoRo extends _StringsMisskeyProfileEnUs {
	_StringsMisskeyProfileRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nume';
	@override String get username => 'Nume de utilizator';
}

// Path: misskey.exportOrImport_
class _StringsMisskeyExportOrImportRoRo extends _StringsMisskeyExportOrImportEnUs {
	_StringsMisskeyExportOrImportRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get followingList => 'Urmărești';
	@override String get muteList => 'Amuțește';
	@override String get blockingList => 'Blochează';
	@override String get userLists => 'Liste';
}

// Path: misskey.charts_
class _StringsMisskeyChartsRoRo extends _StringsMisskeyChartsEnUs {
	_StringsMisskeyChartsRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Federație';
}

// Path: misskey.timelines_
class _StringsMisskeyTimelinesRoRo extends _StringsMisskeyTimelinesEnUs {
	_StringsMisskeyTimelinesRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get home => 'Acasă';
}

// Path: misskey.play_
class _StringsMisskeyPlayRoRo extends _StringsMisskeyPlayEnUs {
	_StringsMisskeyPlayRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get script => 'Script';
	@override String get summary => 'Descriere';
}

// Path: misskey.pages_
class _StringsMisskeyPagesRoRo extends _StringsMisskeyPagesEnUs {
	_StringsMisskeyPagesRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyPagesBlocksRoRo blocks = _StringsMisskeyPagesBlocksRoRo._(_root);
}

// Path: misskey.notification_
class _StringsMisskeyNotificationRoRo extends _StringsMisskeyNotificationEnUs {
	_StringsMisskeyNotificationRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get youWereFollowed => 'te-a urmărit';
	@override late final _StringsMisskeyNotificationTypesRoRo types_ = _StringsMisskeyNotificationTypesRoRo._(_root);
	@override late final _StringsMisskeyNotificationActionsRoRo actions_ = _StringsMisskeyNotificationActionsRoRo._(_root);
}

// Path: misskey.deck_
class _StringsMisskeyDeckRoRo extends _StringsMisskeyDeckEnUs {
	_StringsMisskeyDeckRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyDeckColumnsRoRo columns_ = _StringsMisskeyDeckColumnsRoRo._(_root);
}

// Path: misskey.webhookSettings_
class _StringsMisskeyWebhookSettingsRoRo extends _StringsMisskeyWebhookSettingsEnUs {
	_StringsMisskeyWebhookSettingsRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nume';
}

// Path: misskey.moderationLogTypes_
class _StringsMisskeyModerationLogTypesRoRo extends _StringsMisskeyModerationLogTypesEnUs {
	_StringsMisskeyModerationLogTypesRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'Suspendă';
	@override String get resetPassword => 'Resetează parola';
}

// Path: misskey.reversi_
class _StringsMisskeyReversiRoRo extends _StringsMisskeyReversiEnUs {
	_StringsMisskeyReversiRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get total => 'Total';
}

// Path: misskey.delivery_.type_
class _StringsMisskeyDeliveryTypeRoRo extends _StringsMisskeyDeliveryTypeEnUs {
	_StringsMisskeyDeliveryTypeRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get none => 'Publicare';
}

// Path: misskey.role_.priority_
class _StringsMisskeyRolePriorityRoRo extends _StringsMisskeyRolePriorityEnUs {
	_StringsMisskeyRolePriorityRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get middle => 'Mediu';
}

// Path: misskey.email_.follow_
class _StringsMisskeyEmailFollowRoRo extends _StringsMisskeyEmailFollowEnUs {
	_StringsMisskeyEmailFollowRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'te-a urmărit';
}

// Path: misskey.theme_.keys
class _StringsMisskeyThemeKeysRoRo extends _StringsMisskeyThemeKeysEnUs {
	_StringsMisskeyThemeKeysRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get mention => 'Mențiune';
	@override String get renote => 'Re-notează';
	@override String get divider => 'Separator';
}

// Path: misskey.widgets_.userList_
class _StringsMisskeyWidgetsUserListRoRo extends _StringsMisskeyWidgetsUserListEnUs {
	_StringsMisskeyWidgetsUserListRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Selectează o listă';
}

// Path: misskey.pages_.blocks
class _StringsMisskeyPagesBlocksRoRo extends _StringsMisskeyPagesBlocksEnUs {
	_StringsMisskeyPagesBlocksRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get image => 'Imagini';
}

// Path: misskey.notification_.types_
class _StringsMisskeyNotificationTypesRoRo extends _StringsMisskeyNotificationTypesEnUs {
	_StringsMisskeyNotificationTypesRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Urmărești';
	@override String get mention => 'Mențiune';
	@override String get renote => 'Re-notează';
	@override String get quote => 'Citează';
	@override String get reaction => 'Reacție';
}

// Path: misskey.notification_.actions_
class _StringsMisskeyNotificationActionsRoRo extends _StringsMisskeyNotificationActionsEnUs {
	_StringsMisskeyNotificationActionsRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get reply => 'Răspunde';
	@override String get renote => 'Re-notează';
}

// Path: misskey.deck_.columns_
class _StringsMisskeyDeckColumnsRoRo extends _StringsMisskeyDeckColumnsEnUs {
	_StringsMisskeyDeckColumnsRoRo._(_StringsRoRo root) : this._root = root, super._(root);

	@override final _StringsRoRo _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Notificări';
	@override String get tl => 'Cronologie';
	@override String get antenna => 'Antene';
	@override String get list => 'Liste';
	@override String get channel => 'Canale';
	@override String get mentions => 'Mențiuni';
}
