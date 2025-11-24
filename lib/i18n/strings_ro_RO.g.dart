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
class TranslationsRoRo extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRoRo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.roRo,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <ro-RO>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsRoRo _root = this; // ignore: unused_field

	@override 
	TranslationsRoRo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRoRo(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAriaRoRo aria = _TranslationsAriaRoRo._(_root);
	@override late final _TranslationsMisskeyRoRo misskey = _TranslationsMisskeyRoRo._(_root);
}

// Path: aria
class _TranslationsAriaRoRo extends TranslationsAriaEnUs {
	_TranslationsAriaRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

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
class _TranslationsMisskeyRoRo extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Română';
	@override String get headlineMisskey => 'O rețea conectată prin note';
	@override String get introMisskey => 'Bine ai venit! Misskey este un serviciu de microblogging open source și decentralizat.\nCreează "note" cu care să îți poți împărțasi gândurile cu oricine din jurul tău. 📡\nCu "reacții" îți poți exprima rapid părerea despre notele oricui. 👍\nHai să explorăm o lume nouă! 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} este unul dintre serviciile care se folosește de platforma open source <b>Misskey</b>.';
	@override String monthAndDay({required Object day, required Object month}) => '${day}/${month}';
	@override String get search => 'Caută';
	@override String get reset => 'Resetează.';
	@override String get notifications => 'Notificări';
	@override String get username => 'Nume de utilizator';
	@override String get password => 'Parolă';
	@override String get initialPasswordForSetup => 'Parola pentru a începe configurarea inițială.';
	@override String get initialPasswordIsIncorrect => 'Parola inițială este incorectă.';
	@override String get initialPasswordForSetupDescription => 'Dacă ai instalat singur Misskey, utilizează parola pe care ai introdus-o în fișierul de configurare.\n\nDacă utilizezi un serviciu de găzduire(hosting) precum Misskey, te rugăm să utilizezi parola furnizată.\n\nDacă nu ai setat o parolă, las-o necompletată și mergi mai departe.';
	@override String get forgotPassword => 'Am uitat parola';
	@override String get fetchingAsApObject => 'Se preia din Fediverse...';
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
	@override String get copyRemoteLink => 'Copiază sursa externă.';
	@override String get copyLinkRenote => 'Copiază linkul pentru re-notare';
	@override String get delete => 'Şterge';
	@override String get deleteAndEdit => 'Șterge și editează';
	@override String get deleteAndEditConfirm => 'Ești sigur(ă) că vrei să ștergi această notă și să o editezi? Vei pierde reacțiile, Re-Notele și răspunsurile acestora.';
	@override String get addToList => 'Adaugă în listă';
	@override String get addToAntenna => 'Adaugă la antenă';
	@override String get sendMessage => 'Trimite un mesaj';
	@override String get copyRSS => 'Copiază RSS';
	@override String get copyUsername => 'Copiază numele de utilizator';
	@override String get copyUserId => 'Copiază ID-ul de utilizator';
	@override String get copyNoteId => 'Copiază ID-ul notiței';
	@override String get copyFileId => 'Copiază ID-ul fișierului';
	@override String get copyFolderId => 'Copiază ID-ul folderului';
	@override String get copyProfileUrl => 'Copiază URL-ul profilului ';
	@override String get searchUser => 'Caută un utilizator';
	@override String get searchThisUsersNotes => 'Caută în notele acestui utilizator.';
	@override String get reply => 'Răspunde';
	@override String get loadMore => 'Incarcă mai mult';
	@override String get showMore => 'Arată mai mult';
	@override String get showLess => 'Închide';
	@override String get youGotNewFollower => 'Te-a urmărit';
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
	@override String driveFileDeleteConfirm({required Object name}) => 'Ești sigur(ă) că vrei să ștergi fișierul "${name}"? Notele atașate fișierului vor fi și ele șterse.';
	@override String unfollowConfirm({required Object name}) => 'Ești sigur(ă) că vrei să nu mai urmărești pe ${name}?';
	@override String get exportRequested => 'Ai cerut un export. S-ar putea să ia un pic. Va fi adăugat in Drive-ul tău odată completat.';
	@override String get importRequested => 'Ai cerut un import. S-ar putea să ia un pic.';
	@override String get lists => 'Liste';
	@override String get noLists => 'Nu ai nicio listă';
	@override String get note => 'Notă';
	@override String get notes => 'Note';
	@override String get following => 'Îl urmărești';
	@override String get followers => 'Urmăritori';
	@override String get followsYou => 'Te urmărește';
	@override String get createList => 'Creează listă';
	@override String get manageLists => 'Gestionează listele';
	@override String get error => 'Eroare';
	@override String get somethingHappened => 'A apărut o eroare';
	@override String get retry => 'Reîncearcă';
	@override String get pageLoadError => 'A apărut o eroare la încărcarea paginii.';
	@override String get pageLoadErrorDescription => 'De obicei asta este cauzat de o eroare de rețea sau cache-ul browser-ului. Încearcă să cureți cache-ul și apoi să încerci din nou puțin mai târziu.';
	@override String get serverIsDead => 'Serverul nu răspunde. Te rugăm să aștepți o perioadă și să încerci din nou.';
	@override String get youShouldUpgradeClient => 'Pentru a vedea această pagină, te rugăm să îți actualizezi clientul.';
	@override String get enterListName => 'Introdu un nume pentru listă';
	@override String get privacy => 'Confidenţialitate';
	@override String get makeFollowManuallyApprove => 'Fă cererile de urmărire să necesite aprobare';
	@override String get defaultNoteVisibility => 'Vizibilitate implicită';
	@override String get follow => 'Urmărește';
	@override String get followRequest => 'Trimite cerere de urmărire';
	@override String get followRequests => 'Cereri de urmărire';
	@override String get unfollow => 'Nu mai urmări';
	@override String get followRequestPending => 'Cerere de urmărire în așteptare';
	@override String get enterEmoji => 'Introdu un emoji';
	@override String get renote => 'Re-Notează';
	@override String get unrenote => 'Anulează re-nota';
	@override String get renoted => 'Re-notat.';
	@override String renotedToX({required Object name}) => 'Re-notă către ${name}.';
	@override String get cantRenote => 'Această postare nu poate fi re-notată.';
	@override String get cantReRenote => 'O re-notă nu poate fi re-notată.';
	@override String get quote => 'Citează';
	@override String get inChannelRenote => 'Re-Notează în canal';
	@override String get inChannelQuote => 'Citează în canal';
	@override String get renoteToChannel => 'Re-notă către alte canale.';
	@override String get renoteToOtherChannel => 'Re-notă către alte canale.';
	@override String get pinnedNote => 'Notă fixată';
	@override String get pinned => 'Fixat pe profil';
	@override String get you => 'Tu';
	@override String get clickToShow => 'Click pentru a afișa';
	@override String get sensitive => 'NSFW';
	@override String get add => 'Adaugă';
	@override String get reaction => 'Reacție';
	@override String get reactions => 'Reacție';
	@override String get emojiPicker => 'Selectator de emoji';
	@override String get pinnedEmojisForReactionSettingDescription => 'Poți seta emoji-urile să fie fixate atunci când reacționați.';
	@override String get pinnedEmojisSettingDescription => 'Poți seta emoji-urile să fie fixate și afișate la introducerea emoji-urilor.';
	@override String get emojiPickerDisplay => 'Meniu de selectare ale reacțiilor.';
	@override String get overwriteFromPinnedEmojisForReaction => 'Ignoră din setările de reacție.';
	@override String get overwriteFromPinnedEmojis => 'Ignoră din setările generale.';
	@override String get reactionSettingDescription2 => 'Trage pentru a rearanja, apasă pe "+" pentru a adăuga.';
	@override String get rememberNoteVisibility => 'Amintește setarea de vizibilitate a notelor';
	@override String get attachCancel => 'Înlătură atașament';
	@override String get deleteFile => 'Șterge fișierul.';
	@override String get markAsSensitive => 'Marchează ca NSFW';
	@override String get unmarkAsSensitive => 'Demarchează ca NSFW';
	@override String get enterFileName => 'Introdu numele fişierului';
	@override String get mute => 'Amuțește';
	@override String get unmute => 'Înlătură amuțirea';
	@override String get renoteMute => 'Re-notări pe modul silențios';
	@override String get renoteUnmute => 'Scoate renotările de pe modul silențios';
	@override String get block => 'Blochează';
	@override String get unblock => 'Deblochează';
	@override String get suspend => 'Suspendă';
	@override String get unsuspend => 'Anulează suspendare';
	@override String get blockConfirm => 'Ești sigur(ă) că vrei să blochezi acest cont?';
	@override String get unblockConfirm => 'Ești sigur(ă) că vrei să deblochezi acest cont?';
	@override String get suspendConfirm => 'Ești sigur(ă) că vrei să suspendezi acest cont?';
	@override String get unsuspendConfirm => 'Ești sigur că vrei să nu mai suspendezi acest cont?';
	@override String get selectList => 'Selectează o listă';
	@override String get editList => 'Editează lista';
	@override String get selectChannel => 'Selectează canalul';
	@override String get selectAntenna => 'Selectează o antenă';
	@override String get editAntenna => 'Editează antena';
	@override String get createAntenna => 'Creează o antenă.';
	@override String get selectWidget => 'Alege un widget';
	@override String get editWidgets => 'Editează widget-urile';
	@override String get editWidgetsExit => 'Terminat';
	@override String get customEmojis => 'Emoji personalizate';
	@override String get emoji => 'Emoji';
	@override String get emojis => 'Emoji-uri';
	@override String get emojiName => 'Numele emoji-ului';
	@override String get emojiUrl => 'URL-ul emoji-ului';
	@override String get addEmoji => 'Adaugă un emoji';
	@override String get settingGuide => 'Setări recomandate';
	@override String get cacheRemoteFiles => 'Reţine fișierele externe in memoria cache.';
	@override String get cacheRemoteFilesDescription => 'Când această setare este dezactivată, fișierele externe sunt încărcate direct din instanța externă. Dezactivarea va scădea utilizarea spațiului de stocare, dar va crește traficul, deoarece miniaturile nu vor fi generate.';
	@override String get youCanCleanRemoteFilesCache => 'Poți goli cache-ul prin a apăsa pe butonul de 🗑️ din fereastra de gestionare a fișierelor.';
	@override String get cacheRemoteSensitiveFiles => 'Memorează în cache fișierele sensibile la distanță.';
	@override String get cacheRemoteSensitiveFilesDescription => 'Dacă dezactivezi această setare, fișierele sensibile externe vor fi conectate direct și nu stocate în cache.';
	@override String get flagAsBot => 'Marchează acest cont ca bot';
	@override String get flagAsBotDescription => 'Activează această opțiune dacă acest cont este controlat de un program. Daca e activată, aceasta va juca rolul unui indicator pentru dezvoltatori pentru a preveni interacțiunea în lanțuri infinite cu ceilalți boți și ajustează sistemele interne al Misskey pentru a trata acest cont drept un bot.';
	@override String get flagAsCat => 'Marchează acest cont ca pisică';
	@override String get flagAsCatDescription => 'Activează această opțiune dacă acest cont este o pisică.';
	@override String get flagShowTimelineReplies => 'Arată răspunsurile în cronologie';
	@override String get flagShowTimelineRepliesDescription => 'Dacă e activată vor fi arătate în cronologie răspunsurile utilizatorilor către alte notele altor utilizatori.';
	@override String get autoAcceptFollowed => 'Aprobă automat cererile de urmărire de la utilizatorii pe care îi urmărești';
	@override String get addAccount => 'Adaugă un cont';
	@override String get reloadAccountsList => 'Reîncarcă informațiile din lista de conturi';
	@override String get loginFailed => 'Autentificare eșuată';
	@override String get showOnRemote => 'Vezi mai multe pe instanța externă';
	@override String get continueOnRemote => 'Continuă de pe sursa externa.';
	@override String get chooseServerOnMisskeyHub => 'Selectează un server din Hub-ul Misskey.';
	@override String get specifyServerHost => 'Specifică un server gazdă(host).';
	@override String get inputHostName => 'Introdu numele gazdă(hostname).';
	@override String get general => 'General';
	@override String get wallpaper => 'Imagine de fundal';
	@override String get setWallpaper => 'Setează imaginea de fundal';
	@override String get removeWallpaper => 'Șterge imagine de fundal';
	@override String searchWith({required Object q}) => 'Caută: ${q}';
	@override String get youHaveNoLists => 'Nu ai nici o listă';
	@override String followConfirm({required Object name}) => 'Ești sigur(ă) că vrei să urmărești pe ${name}?';
	@override String get proxyAccount => 'Cont proxy';
	@override String get proxyAccountDescription => 'Un cont proxy este un cont care se comportă ca un urmăritor extern pentru utilizatorii puși sub anumite condiții. De exemplu, când un cineva adaugă un utilizator extern intr-o listă, activitatea utilizatorului extern nu va fi adusă în instanță daca nici un utilizator local nu urmărește acel utilizator, așa că în schimb contul proxy îl va urmări.';
	@override String get host => 'Gazdă';
	@override String get selectSelf => 'Selectează-te pe tine însuți.';
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
	@override String get silenceThisInstance => 'Ascunde acest server.';
	@override String get mediaSilenceThisInstance => 'Ascunde conținutul media din acest server.';
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
	@override String get clearQueueConfirmTitle => 'Ești sigur(ă) că vrei să cureți coada?';
	@override String get clearQueueConfirmText => 'Orice notă rămasă în coadă nu va fi federată. De obicei această operație nu este necesară.';
	@override String get clearCachedFiles => 'Golește cache-ul';
	@override String get clearCachedFilesConfirm => 'Ești sigur(ă) că vrei să ștergi toate fișierele externe din cache?';
	@override String get blockedInstances => 'Instanțe blocate';
	@override String get blockedInstancesDescription => 'Scrie numele gazdă(hostname) ale serverelor pe care dorești să le blochezi. Serverele listate nu vor mai putea să comunice cu acest server.';
	@override String get silencedInstances => 'Servere ascunse.';
	@override String get silencedInstancesDescription => 'Listează numele de gazdă(hostname) ale serverelor pe care dorești să le ascunzi, separate printr-o nouă linie de spațiere. Toate conturile care aparțin serverelor enumerate vor fi tratate ca fiind ascunse și pot face doar solicitări de urmărire și nu pot menționa conturi locale dacă nu sunt urmate. Acest lucru nu va afecta serverele blocate.';
	@override String get mediaSilencedInstances => 'Servere cu conținutul media ascuns.';
	@override String get mediaSilencedInstancesDescription => 'Setați numele de gazdă(hostname-urile) ale serverelor pe care dorești să le ascunzi, separate de o linie noua de spațiere. Orice fișier din conturile de pe un server cu sunet media vor fi tratate ca fiind sensibile și nu vor putea folosi emoji-uri personalizate. Nu are niciun efect asupra serverelor blocate.';
	@override String get federationAllowedHosts => 'Servere permise pentru federare';
	@override String get federationAllowedHostsDescription => 'Specifica numele de gazdă ale serverelor pe care dorești să le permiți federarea, separate prin spații noi.';
	@override String get muteAndBlock => 'Amuțiri și Blocări';
	@override String get mutedUsers => 'Utilizatori amuțiți';
	@override String get blockedUsers => 'Utilizatori blocați';
	@override String get noUsers => 'Niciun utilizator';
	@override String get editProfile => 'Editează profilul';
	@override String get noteDeleteConfirm => 'Ești sigur(ă) că vrei să ștergi această notă?';
	@override String get pinLimitExceeded => 'Nu poți mai fixa mai multe note';
	@override String get done => 'Gata';
	@override String get processing => 'Se procesează';
	@override String get preview => 'Previzualizare';
	@override String get default_ => 'Prestabilit';
	@override String defaultValueIs({required Object value}) => 'Valori implicite: ${value}';
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
	@override String get instanceFollowers => 'Urmăritori al instanței';
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
	@override String removeAreYouSure({required Object x}) => 'Ești sigur(ă) că vrei să înlături ${x}?';
	@override String deleteAreYouSure({required Object x}) => 'Ești sigur(ă) că vrei să ștergi ${x}?';
	@override String get resetAreYouSure => 'Sigur vrei să resetezi?';
	@override String get areYouSure => 'Ești sigur(ă)?';
	@override String get saved => 'Salvat';
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
	@override String get startChat => 'Pornește chat-ul';
	@override String nUsersRead({required Object n}) => 'citit de ${n}';
	@override String agreeTo({required Object x0}) => 'Sunt de acord cu ${x0}';
	@override String get agree => 'De acord';
	@override String get agreeBelow => 'Sunt de acord cu cele menționate mai jos';
	@override String get basicNotesBeforeCreateAccount => 'Detalii importante';
	@override String get termsOfService => 'Termenii serviciului';
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
	@override String get selectFile => 'Alege un fișier';
	@override String get selectFiles => 'Alege fișiere';
	@override String get selectFolder => 'Selectează un folder';
	@override String get selectFolders => 'Selectează folderele';
	@override String get fileNotSelected => 'Niciun fișier selectat';
	@override String get renameFile => 'Redenumește fișier';
	@override String get folderName => 'Nume folder';
	@override String get createFolder => 'Crează folder';
	@override String get renameFolder => 'Redenumește acest folder';
	@override String get deleteFolder => 'Șterge acest folder';
	@override String get folder => 'Folder';
	@override String get addFile => 'Adaugă un fișier';
	@override String get showFile => 'Arata fișierele';
	@override String get emptyDrive => 'Drive-ul tău e gol';
	@override String get emptyFolder => 'Folder-ul acesta este gol';
	@override String get unableToDelete => 'Nu se poate șterge';
	@override String get inputNewFileName => 'Introdu un nou nume de fișier';
	@override String get inputNewDescription => 'Introdu o titrare nouă';
	@override String get inputNewFolderName => 'Introdu un nume de folder nou';
	@override String get circularReferenceFolder => 'Destinația folderului este un subfolder al folderului pe care dorești să îl muți.';
	@override String get hasChildFilesOrFolders => 'Acest folder nu este gol, așa că nu poate fi șters.';
	@override String get copyUrl => 'Copiază URL';
	@override String get rename => 'Redenumește';
	@override String get avatar => 'Avatar';
	@override String get banner => 'Banner';
	@override String get displayOfSensitiveMedia => 'Afișarea conținutului media sensibil';
	@override String get whenServerDisconnected => 'Când pierzi conexiunea cu serverul';
	@override String get disconnectedFromServer => 'Conexiunea cu serverul a fost pierdută';
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
	@override String get invite => 'Invită';
	@override String get driveCapacityPerLocalAccount => 'Capacitatea Drive-ului per utilizator local';
	@override String get driveCapacityPerRemoteAccount => 'Capacitatea Drive-ului per utilizator extern';
	@override String get inMb => 'În megabytes';
	@override String get bannerUrl => 'URL-ul imaginii de banner';
	@override String get backgroundImageUrl => 'URL-ul imaginii de fundal';
	@override String get basicInfo => 'Informații de bază';
	@override String get pinnedUsers => 'Utilizatori fixați';
	@override String get pinnedUsersDescription => 'Scrie utilizatorii, separați prin o linie de rând, care vor fi fixați pe pagina "Explorează".';
	@override String get pinnedPages => 'Pagini fixate';
	@override String get pinnedPagesDescription => 'Introdu linkurile Paginilor pe care le vrei fixate in vârful paginii acestei instanțe, separate de o linie de spațiere.';
	@override String get pinnedClipId => 'ID-ul clip-ului pe care să îl fixezi';
	@override String get pinnedNotes => 'Notă fixată';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'Activează hCaptcha';
	@override String get hcaptchaSiteKey => 'Site key';
	@override String get hcaptchaSecretKey => 'Secret key';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => 'Permite mCaptcha';
	@override String get mcaptchaSiteKey => 'Site key';
	@override String get mcaptchaSecretKey => 'Secret key';
	@override String get mcaptchaInstanceUrl => 'URL-ul serverului mCaptcha';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'Activează reCAPTCHA';
	@override String get recaptchaSiteKey => 'Site key';
	@override String get recaptchaSecretKey => 'Secret key';
	@override String get turnstile => '\nTurnstile';
	@override String get enableTurnstile => 'Permite Turnstile';
	@override String get turnstileSiteKey => 'Site key';
	@override String get turnstileSecretKey => 'Secret key';
	@override String get avoidMultiCaptchaConfirm => 'Folosirea mai multor sisteme Captcha poate cauza interferență între acestea. Ai dori să dezactivezi alte sisteme Captcha acum active? Dacă preferi să rămână activate, apasă Anulare.';
	@override String get antennas => 'Antene';
	@override String get manageAntennas => 'Gestionează Antenele';
	@override String get name => 'Nume';
	@override String get antennaSource => 'Sursa antenei';
	@override String get antennaKeywords => 'Cuvinte cheie ascultate';
	@override String get antennaExcludeKeywords => 'Cuvinte cheie excluse';
	@override String get antennaExcludeBots => 'Exclude conturi tip bot';
	@override String get antennaKeywordsDescription => 'Separă cu spații pentru o condiție \'\'AND\'\' sau cu o linie de spațiere nouă pentru o condiție \'\'OR\'\'.';
	@override String get notifyAntenna => 'Notifică-mă pentru note noi';
	@override String get withFileAntenna => 'Doar note cu fișiere';
	@override String get excludeNotesInSensitiveChannel => 'Exclude  note din canale sensibile';
	@override String get enableServiceworker => 'Activează ServiceWorker';
	@override String get antennaUsersDescription => 'Scrie un nume de utilizator per linie';
	@override String get caseSensitive => 'Sensibil la majuscule și minuscule';
	@override String get withReplies => 'Include răspunsuri';
	@override String get connectedTo => 'Următoarele conturi sunt conectate';
	@override String get notesAndReplies => 'Note și răspunsuri';
	@override String get withFiles => 'Incluzând fișiere';
	@override String get silence => 'Amuțește';
	@override String get silenceConfirm => 'Ești sigur(ă) că vrei să amuțești acest utilizator?';
	@override String get unsilence => 'Anulează amuțirea';
	@override String get unsilenceConfirm => 'Ești sigur(ă) că vrei să anulezi amuțirea acestui utilizator?';
	@override String get popularUsers => 'Utilizatori populari';
	@override String get recentlyUpdatedUsers => 'Utilizatori activi recent';
	@override String get recentlyRegisteredUsers => 'Utilizatori ce s-au alăturat recent';
	@override String get recentlyDiscoveredUsers => 'Utilizatori recent descoperiți';
	@override String exploreUsersCount({required Object count}) => 'Aici sunt ${count} utilizatori';
	@override String get exploreFediverse => 'Explorează Fediverse-ul';
	@override String get popularTags => 'Taguri populare';
	@override String get userList => 'Liste';
	@override String get about => 'Despre';
	@override String get aboutMisskey => 'Despre Misskey';
	@override String get administrator => 'Administrator';
	@override String get token => 'Token';
	@override String get x2fa => 'Autentificare cu doi factori';
	@override String get setupOf2fa => 'Configurează autentificarea cu doi factori';
	@override String get totp => 'Aplicația de autentificare';
	@override String get totpDescription => 'Folosește o aplicație de autentificare pentru a putea utiliza parole de unica folosință';
	@override String get moderator => 'Moderator';
	@override String get moderation => 'Moderare';
	@override String get moderationNote => 'Note de moderare';
	@override String get moderationNoteDescription => 'Poți completa note care vor fi partajate doar între moderatori.';
	@override String get addModerationNote => 'Adaugă o notă de moderare';
	@override String get moderationLogs => 'Jurnal de moderare';
	@override String nUsersMentioned({required Object n}) => 'Menționat de ${n} utilizatori';
	@override String get securityKeyAndPasskey => 'Cheie de securitate - cheie de acces ';
	@override String get securityKey => 'Cheie de securitate';
	@override String get lastUsed => 'Ultima utilizată';
	@override String lastUsedAt({required Object t}) => 'Ultima utilizare: ${t}';
	@override String get unregister => 'Dezînregistrează';
	@override String get passwordLessLogin => 'Autentificare fără parolă';
	@override String get passwordLessLoginDescription => 'Permite autentificare fără parolă folosind doar o cheie de securitate sau o cheie de acces';
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
	@override String get attachAsFileQuestion => 'Textul clipboard-ului este lung. Dorești să-l atașezi ca fișier text?';
	@override String get onlyOneFileCanBeAttached => 'Poți atașa un singur fișier la un mesaj';
	@override String get signinRequired => 'Te rog autentifică-te';
	@override String get signinOrContinueOnRemote => 'Pentru a continua, trebuie să mergi la serverul dvs. sau să te înregistrezi și să te conectezi la acest server.';
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
	@override String get signinFailed => 'Nu se poate autentifica. Numele de utilizator sau parola introdusă e incorectă.';
	@override String get or => 'Sau';
	@override String get language => 'Limbă';
	@override String get uiLanguage => 'Limba interfeței';
	@override String aboutX({required Object x}) => 'Despre ${x}';
	@override String get emojiStyle => 'Stil emoji';
	@override String get native => 'Nativ';
	@override String get menuStyle => 'Stilul meniului';
	@override String get style => 'Stil';
	@override String get drawer => 'Sertar';
	@override String get popup => 'Pop up';
	@override String get showNoteActionsOnlyHover => 'Afișează acțiunile de notare numai la trecerea cursorului';
	@override String get showReactionsCount => 'Afișează numărul de reacții la note';
	@override String get noHistory => 'Nu există istoric';
	@override String get signinHistory => 'Istoric autentificări';
	@override String get enableAdvancedMfm => 'Permite autentificarea multiplă(MFM) avansată';
	@override String get enableAnimatedMfm => 'Permite autentificarea multiplă(MFM) animată';
	@override String get doing => 'Se procesează...';
	@override String get category => 'Categorie';
	@override String get tags => 'Etichete';
	@override String get docSource => 'Sursa acestui document';
	@override String get createAccount => 'Creează un cont';
	@override String get existingAccount => 'Cont existent';
	@override String get regenerate => 'Regenerează';
	@override String get fontSize => 'Mărimea fontului';
	@override String get mediaListWithOneImageAppearance => 'Înălțimea listelor media cu o singură imagine';
	@override String limitTo({required Object x}) => 'Limitează până la ${x}';
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
	@override String get s3ForcePathStyleDesc => 'Dacă s3ForcePathStyle este activat, numele compartimentului trebuie inclus în calea adresei URL, spre deosebire de numele de gazdă(hostname) al adresei URL. Poate fi necesar să activezi această setare atunci când utilizezi servicii precum o instanță Minio găzduită de sine(self-hosted).';
	@override String get serverLogs => 'Loguri server';
	@override String get deleteAll => 'Șterge tot';
	@override String get showFixedPostForm => 'Arată caseta de postare în vârful cronologie';
	@override String get showFixedPostFormInChannel => 'Afișează formularul de postare în partea de sus a cronologiei (Canale)';
	@override String get withRepliesByDefaultForNewlyFollowed => 'Include în mod prestabilit răspunsurile utilizatorilor nou urmăriți în cronologie';
	@override String get newNoteRecived => 'Sunt note noi';
	@override String get sounds => 'Sunete';
	@override String get sound => 'Sunete';
	@override String get listen => 'Ascultă';
	@override String get none => 'Nimic';
	@override String get showInPage => 'Arată în pagină';
	@override String get popout => 'Scoate în afară';
	@override String get volume => 'Volum';
	@override String get masterVolume => 'Volumul principal';
	@override String get notUseSound => 'Oprește sunetul';
	@override String get useSoundOnlyWhenActive => 'Sunetele se aud numai dacă fereastra de Misskey este activă';
	@override String get details => 'Detalii';
	@override String get renoteDetails => 'Detalii de re-notare';
	@override String get chooseEmoji => 'Alege un emoji';
	@override String get unableToProcess => 'Această operație nu poate fi completată';
	@override String get recentUsed => 'Folosit(e) recent';
	@override String get install => 'Instalează';
	@override String get uninstall => 'Dezinstalează';
	@override String get installedApps => 'Aplicații autorizate';
	@override String get nothing => 'Nu e nimic de văzut aici';
	@override String get installedDate => 'Autorizat la data de';
	@override String get lastUsedDate => 'Folosit(e) ultima oara la';
	@override String get state => 'Stare';
	@override String get sort => 'Sortează';
	@override String get ascendingOrder => 'Crescător';
	@override String get descendingOrder => 'Descrescător';
	@override String get scratchpad => 'Scratchpad';
	@override String get scratchpadDescription => 'Scratchpad-ul oferă un mediu de experimentare în AiScript. Poți scrie, executa și verifica rezultatele acestuia interacționând cu Misskey în el.';
	@override String get uiInspector => 'Inspector UI';
	@override String get uiInspectorDescription => 'Poți vedea lista de servere de componente UI în memorie. Componenta UI va fi generată de funcția Ui:C:.';
	@override String get output => 'Ieșire';
	@override String get script => 'Script';
	@override String get disablePagesScript => 'Dezactivează AiScript în Pagini';
	@override String get updateRemoteUser => 'Actualizează informațiile utilizatorului extern';
	@override String get unsetUserAvatar => 'Anulează avatarul';
	@override String get unsetUserAvatarConfirm => 'Ești sigur(ă) că vrei sa anulezi avatarul?';
	@override String get unsetUserBanner => 'Avatarul utilizatorului a fost anulat';
	@override String get unsetUserBannerConfirm => 'Ești sigur(ă) că vrei sa anulezi bannerul?';
	@override String get deleteAllFiles => 'Șterge toate fișierele';
	@override String get deleteAllFilesConfirm => 'Ești sigur că vrei să ștergi toate fișierele?';
	@override String get removeAllFollowing => 'Elimină toți utilizatorii urmăriți';
	@override String removeAllFollowingDescription({required Object host}) => 'Asta va elimina urmărirea tuturor conturilor din ${host}. Te rog execută asta numai dacă instanța, de ex., nu mai există.';
	@override String get userSuspended => 'Acest utilizator a fost suspendat.';
	@override String get userSilenced => 'Acest utilizator a fost setat silențios.';
	@override String get yourAccountSuspendedTitle => 'Acest cont a fost suspendat';
	@override String get yourAccountSuspendedDescription => 'Acest cont a fost suspendat din cauza încălcării termenilor de serviciu al serverului sau ceva similar. Contactează administratorul dacă ai dori să afli un motiv mai detaliat. Te rog nu crea un cont nou.';
	@override String get tokenRevoked => 'Token invalid';
	@override String get tokenRevokedDescription => 'Token-ul a expirat.\nTe rugăm sa te reloghezi.';
	@override String get accountDeleted => 'Cont șters.';
	@override String get accountDeletedDescription => 'Acest cont a fost eliminat.';
	@override String get menu => 'Meniu';
	@override String get divider => 'Separator';
	@override String get addItem => 'Adaugă element';
	@override String get rearrange => 'Rearanjează';
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
	@override String get preferencesBackups => 'Copii de rezervă ale preferințelor';
	@override String get deck => 'Deck';
	@override String get undeck => 'Părăsește Deck';
	@override String get useBlurEffectForModal => 'Folosește efect de blur pentru modale';
	@override String get useFullReactionPicker => 'Utilizează selectorul de reacții de dimensiune completă';
	@override String get width => 'Lăţime';
	@override String get height => 'Înălţime';
	@override String get large => 'Mare';
	@override String get medium => 'Mediu';
	@override String get small => 'Mic';
	@override String get generateAccessToken => 'Generează token de acces';
	@override String get permission => 'Permisiuni';
	@override String get adminPermission => 'Permisiuni administrator';
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
	@override String get wordMuteDescription => 'Minimizează notele care conțin cuvântul sau expresia specificată. Notele minimizate pot fi afișate făcând clic pe ele.';
	@override String get hardWordMute => 'Amuțire pe cuvinte grele';
	@override String get showMutedWord => 'Arata cuvintele amuțite';
	@override String get hardWordMuteDescription => 'Ascunde notele care conțin fraza specificată. Spre deosebire de cuvintele amuțite, notele vor fi complet ascunse.';
	@override String get regexpError => 'Eroare de Expresie Regulată';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'A apărut o eroare în expresia regulată pe linia ${line} al cuvintelor ${tab} setate pe mut:';
	@override String get instanceMute => 'Instanțe pe mut';
	@override String userSaysSomething({required Object name}) => '${name} a spus ceva';
	@override String userSaysSomethingAbout({required Object name, required Object word}) => '${name} a scris ceva despre ${name} ${word}';
	@override String get makeActive => 'Activează';
	@override String get display => 'Arată';
	@override String get copy => 'Copiază';
	@override String get copiedToClipboard => 'Copiat în clipboard.';
	@override String get metrics => 'Metrici';
	@override String get overview => 'Privire de ansamblu';
	@override String get logs => 'Log-uri';
	@override String get delayed => 'Întârziate';
	@override String get database => 'Baza de date';
	@override String get channel => 'Canale';
	@override String get create => 'Creează';
	@override String get notificationSetting => 'Setări notificări';
	@override String get notificationSettingDesc => 'Selectează tipurile de notificări care să fie arătate';
	@override String get useGlobalSetting => 'Folosește setările globale';
	@override String get useGlobalSettingDesc => 'Dacă opțiunea e pornită, notificările contului tău vor fi folosite. Dacă e oprită, configurația va fi individuală.';
	@override String get other => 'Altele';
	@override String get regenerateLoginToken => 'Regenerează token de login';
	@override String get regenerateLoginTokenDescription => 'Regenerează token-ul folosit intern în timpul logări. În mod normal asta nu este necesar. Odată regenerat, toate dispozitivele vor fi delogate.';
	@override String get theKeywordWhenSearchingForCustomEmoji => 'Acesta este cuvântul cheie atunci când cauți emoji-uri personalizate.';
	@override String get setMultipleBySeparatingWithSpace => 'Separă mai multe intrări cu spații.';
	@override String get fileIdOrUrl => 'Introdu ID sau URL';
	@override String get behavior => 'Comportament';
	@override String get sample => 'exemplu';
	@override String get abuseReports => 'Rapoarte';
	@override String get reportAbuse => 'Raportează';
	@override String get reportAbuseRenote => 'Raportați Re-nota';
	@override String reportAbuseOf({required Object name}) => 'Raportează ${name}';
	@override String get fillAbuseReportDescription => 'Te rog scrie detaliile legate de acest raport. Dacă este despre o notă specifică, te rog introdu URL-ul ei.';
	@override String get abuseReported => 'Raportul tău a fost trimis. Mulțumim.';
	@override String get reporter => 'Raportorul';
	@override String get reporteeOrigin => 'Originea raportatului';
	@override String get reporterOrigin => 'Originea raportorului';
	@override String get send => 'Trimite';
	@override String get openInNewTab => 'Deschide în tab nou';
	@override String get openInSideView => 'Deschide în vedere laterală';
	@override String get defaultNavigationBehaviour => 'Comportament de navigare implicit';
	@override String get editTheseSettingsMayBreakAccount => 'Editarea acestor setări îți pot defecta contul.';
	@override String get instanceTicker => 'Informații de instanță ale notelor';
	@override String waitingFor({required Object x}) => 'Așteptând pentru ${x}';
	@override String get random => 'Aleatoriu';
	@override String get system => 'Sistem';
	@override String get switchUi => 'Schimbă UI';
	@override String get desktop => 'Desktop';
	@override String get clip => 'Clip';
	@override String get createNew => 'Creează ceva nou';
	@override String get optional => 'Opțional';
	@override String get createNewClip => 'Creează un clip nou';
	@override String get unclip => 'Anulează clipul';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'Această notă face deja parte din clipul „${name}”. Dorești, în schimb, să îl elimini din acest clip?';
	@override String get public => 'Public';
	@override String get private => 'Privat';
	@override String i18nInfo({required Object link}) => 'Misskey este tradusă în diferite limbi de către voluntari. Puteți ajuta accesând ${link}.';
	@override String get manageAccessTokens => 'Gestionați token-urile de acces';
	@override String get accountInfo => 'Informațiile contului';
	@override String get notesCount => 'Numărul de note';
	@override String get repliesCount => 'Numărul de răspunsuri trimise';
	@override String get renotesCount => 'Numărul de Re-Note trimise';
	@override String get repliedCount => 'Numărul de răspunsuri primite';
	@override String get renotedCount => 'Numărul de Re-Note primite';
	@override String get followingCount => 'Numărul de conturi urmărite';
	@override String get followersCount => 'Numărul de urmăritori';
	@override String get sentReactionsCount => 'Numărul de reacții trimise';
	@override String get receivedReactionsCount => 'Numărul de reacții primite';
	@override String get pollVotesCount => 'Numărul de voturi trimise la sondaj';
	@override String get pollVotedCount => 'Numărul de voturi în sondaj';
	@override String get yes => 'Da';
	@override String get no => 'Nu';
	@override String get driveFilesCount => 'Numărul de fișiere din drive';
	@override String get driveUsage => 'Gestionati spatiul de utilizare a drive-ului';
	@override String get noCrawle => 'Respingeți indexarea prin crawler';
	@override String get noCrawleDescription => 'Cere motoarelor de căutare să nu indexeze pagina de profil, noteele, paginile etc.';
	@override String get lockedAccountInfo => 'Dacă nu setați vizibilitatea notei la „Numai persoane interesate”, notele vor fi vizibile pentru oricine, chiar dacă aveți nevoie de aprobarea manuală a persoanelor interesate.';
	@override String get alwaysMarkSensitive => 'Marcați ca sensibil în mod prestabilit';
	@override String get loadRawImages => 'Încărcați imagini originale în loc să afișați miniaturile';
	@override String get disableShowingAnimatedImages => 'Nu reda imaginile animate';
	@override String get highlightSensitiveMedia => 'Evidențiază conținutul media sensibil';
	@override String get verificationEmailSent => 'A fost trimis un e-mail de confirmare. Urmează linkul din e-mail pentru a finaliza configurarea.';
	@override String get notSet => 'Nesetat';
	@override String get emailVerified => 'E-mailul a fost verificat';
	@override String get noteFavoritesCount => 'Numărul de note preferate';
	@override String get pageLikesCount => 'Numărul de pagini apreciate';
	@override String get pageLikedCount => 'Numărul de aprecieri primite pe pagină';
	@override String get contact => 'Contact';
	@override String get useSystemFont => 'Utilizați fontul implicit al sistemului';
	@override String get clips => 'Clip';
	@override String get experimentalFeatures => 'Funcții experimentale';
	@override String get experimental => 'Experimental';
	@override String get thisIsExperimentalFeature => 'Aceasta este o funcție experimentală. Funcționalitatea sa este supusă modificării și este posibil să nu funcționeze conform intenției.';
	@override String get developer => 'Dezvoltator';
	@override String get makeExplorable => 'Fă-ți contul vizibil în secțiunea„Explorați”';
	@override String get makeExplorableDescription => 'Dacă dezactivezi această opțiune, contul dvs. nu va fi vizibil în secțiunea"Explorați".';
	@override String get duplicate => 'Duplicat';
	@override String get left => 'Stânga';
	@override String get center => 'Centru';
	@override String get wide => 'Lat';
	@override String get narrow => 'Îngust';
	@override String get reloadToApplySetting => 'Setările vor fi replicate după reîncărcarea paginii.';
	@override String get needReloadToApply => 'Este necesară o reîncărcare pentru ca acest lucru să se replice.';
	@override String get showTitlebar => 'Afișează bara de titlu';
	@override String get clearCache => 'Golește cache-ul';
	@override String onlineUsersCount({required Object n}) => '${n} de utilizatori online';
	@override String nUsers({required Object n}) => '${n} Utilizatori';
	@override String nNotes({required Object n}) => '${n} de note';
	@override String get sendErrorReports => 'Trimite rapoartele de eroare';
	@override String get sendErrorReportsDescription => 'Când este pornit, informațiile detaliate despre erori vor fi partajate cu Misskey atunci când apare o problemă, ajutând la îmbunătățirea calității Misskey.\nAceasta va include informații precum versiunea sistemului de operare, ce browser utilizați, activitatea dvs. în Misskey etc.';
	@override String get myTheme => 'Tema mea';
	@override String get backgroundColor => 'Culoare de fundal';
	@override String get accentColor => 'Culoare de accent';
	@override String get textColor => 'Culoarea textului';
	@override String get saveAs => 'Salvează ca...';
	@override String get advanced => 'Avansat';
	@override String get advancedSettings => 'Setări Avansate';
	@override String get value => 'Valoare';
	@override String get createdAt => 'Creat în';
	@override String get updatedAt => 'Actualizat la';
	@override String get saveConfirm => 'Salvezi modificările?';
	@override String get deleteConfirm => 'Sigur vrei să ștergi?';
	@override String get invalidValue => 'Valoare invalidă.';
	@override String get registry => 'Registru';
	@override String get closeAccount => 'Șterge contul';
	@override String get currentVersion => 'Versiunea curentă';
	@override String get latestVersion => 'Versiunea cea mai nouă';
	@override String get youAreRunningUpToDateClient => 'Utilizezi cea mai nouă versiune a clientului';
	@override String get newVersionOfClientAvailable => 'Este disponibilă o nouă versiune a clientului.';
	@override String get usageAmount => 'Utilizare';
	@override String get capacity => 'Capacitate';
	@override String get inUse => 'Folosit';
	@override String get editCode => 'Editează codul';
	@override String get apply => 'Aplică';
	@override String get receiveAnnouncementFromInstance => 'Primește notificări de la această instanță';
	@override String get emailNotification => 'Notificări prin e-mail';
	@override String get publish => 'Publică';
	@override String get inChannelSearch => 'Caută pe canal';
	@override String get useReactionPickerForContextMenu => 'Deschide selectorul de reacții făcând clic dreapta';
	@override String typingUsers({required Object users}) => '${users} scriu/e chiar acum...';
	@override String get jumpToSpecifiedDate => 'Sari la o anumită dată';
	@override String get showingPastTimeline => 'În prezent, se afișează o cronologie veche';
	@override String get clear => 'Întoarce-te';
	@override String get markAllAsRead => 'Marchează ca ,,citit”';
	@override String get goBack => 'Înapoi';
	@override String get unlikeConfirm => 'Chiar îți elimini like-ul?';
	@override String get fullView => 'Ecran complet';
	@override String get quitFullView => 'Ieși din ecranul complet';
	@override String get addDescription => 'Adaugă o descriere';
	@override String get userPagePinTip => 'Poți afișa notele aici selectând „fixează pe profil” din meniul individual al fiecărei note ';
	@override String get notSpecifiedMentionWarning => 'Există mențiuni ce nu sunt incluse în lista de destinatari';
	@override String get info => 'Despre';
	@override String get userInfo => 'Informații despre utilizator';
	@override String get unknown => 'Necunoscut';
	@override String get onlineStatus => 'Stare online';
	@override String get hideOnlineStatus => 'Ascunde starea online';
	@override String get hideOnlineStatusDescription => 'Ascunderea stării dvs. online reduce confortul unor funcții, cum ar fi căutarea.';
	@override String get online => 'Online';
	@override String get active => 'Disponibil';
	@override String get offline => 'Offline';
	@override String get notRecommended => 'Nerecomandat';
	@override String get botProtection => 'Protecție boți';
	@override String get instanceBlocking => 'Instanțe blocate/ascunse';
	@override String get selectAccount => 'Selectează un cont';
	@override String get switchAccount => 'Schimbă contul';
	@override String get enabled => 'Activat';
	@override String get disabled => 'Dezactivat';
	@override String get quickAction => 'Acțiuni rapide';
	@override String get user => 'Utilizatori';
	@override String get administration => 'Gestionare';
	@override String get accounts => 'Conturi';
	@override String get switch_ => 'Schimbă';
	@override String get noMaintainerInformationWarning => 'Informațiile întreținătorului nu sunt configurate.';
	@override String get noInquiryUrlWarning => 'Adresa URL de cereri de informații nu este setata';
	@override String get noBotProtectionWarning => 'Protecția împotriva boților nu este configurată.';
	@override String get configure => 'Configurează';
	@override String get postToGallery => 'Creează o postare nouă în galerie';
	@override String get postToHashtag => 'Postează pe acest hashtag';
	@override String get gallery => 'Galerie';
	@override String get recentPosts => 'Postări recente';
	@override String get popularPosts => 'Postări populare';
	@override String get shareWithNote => 'Distribuie cu notă';
	@override String get ads => 'Reclame';
	@override String get expiration => 'Termen limită';
	@override String get startingperiod => 'Start';
	@override String get memo => 'Memo';
	@override String get priority => 'Prioritate';
	@override String get high => 'Ridicată';
	@override String get middle => 'Mediu';
	@override String get low => 'Scăzuta';
	@override String get emailNotConfiguredWarning => 'Adresa de e-mail nu este setată.';
	@override String get ratio => 'Rație';
	@override String get previewNoteText => 'Afișează previzualizarea';
	@override String get customCss => 'CSS personalizat';
	@override String get customCssWarn => 'Această setare ar trebui folosită numai dacă știi ce face. Introducerea unor valori necorespunzătoare poate determina clientul să nu mai funcționeze normal.';
	@override String get global => 'Global';
	@override String get squareAvatars => 'Afișează avatarele pătrate';
	@override String get sent => 'Trimite';
	@override String get received => 'Primite';
	@override String get searchResult => 'Rezultate căutare';
	@override String get hashtags => 'Hashtag-uri';
	@override String get troubleshooting => 'Diagnosticare';
	@override String get useBlurEffect => 'Utilizează efecte de estompare în interfața de utilizare';
	@override String get learnMore => 'Află mai multe';
	@override String get misskeyUpdated => 'Misskey a fost actualizat!';
	@override String get whatIsNew => 'Vezi noile modificări';
	@override String get translate => 'Tradu';
	@override String translatedFrom({required Object x}) => 'Tradus din ${x}';
	@override String get accountDeletionInProgress => 'Ștergerea contului este în curs de desfășurare';
	@override String get usernameInfo => 'Un nume care vă identifică contul de alții de pe acest server. Poți folosi alfabetul (a~z, A~Z), cifrele (0~9) sau litere de subliniere (_). Numele de utilizator nu pot fi schimbate ulterior.';
	@override String get aiChanMode => 'Modul Ai';
	@override String get devMode => 'Modul Dezvoltator';
	@override String get keepCw => 'Păstrează avertismentele de conținut';
	@override String get pubSub => 'Conturi de Pub/Sub';
	@override String get lastCommunication => 'Ultima comunicare';
	@override String get resolved => 'Rezolvat';
	@override String get unresolved => 'Nerezolvat';
	@override String get breakFollow => 'Elimină urmăritorul';
	@override String get breakFollowConfirm => 'Chiar eliminați această urmărire?';
	@override String get itsOn => 'Activat';
	@override String get itsOff => 'Dezactivat';
	@override String get on => 'Pornit';
	@override String get off => 'Oprit';
	@override String get emailRequiredForSignup => 'E nevoie de o adresă de e-mail pentru înregistrare';
	@override String get unread => 'Necitit/e';
	@override String get filter => 'Filtru';
	@override String get controlPanel => 'Panou de Control';
	@override String get manageAccounts => 'Gestionează Conturile';
	@override String get makeReactionsPublic => 'Setați istoricul reacțiilor să fie public';
	@override String get makeReactionsPublicDescription => 'Faceți-vă reacțiile vizibile pentru toată lumea';
	@override String get classic => 'Clasic';
	@override String get muteThread => 'Amuțește thread-ul';
	@override String get unmuteThread => 'Dezmuțește thread-ul';
	@override String get followingVisibility => 'Vizibilitatea celor pe care ii urmărești';
	@override String get followersVisibility => 'Vizibilitatea celor care te urmărește';
	@override String get continueThread => 'Continuă thread-ul';
	@override String get deleteAccountConfirm => 'Acest lucru vă va șterge ireversibil contul. Continui?';
	@override String get incorrectPassword => 'Parolă incorectă.';
	@override String get incorrectTotp => 'Parola unică este incorectă sau a expirat.';
	@override String voteConfirm({required Object choice}) => 'Confirmi votul pentru „${choice}”?';
	@override String get hide => 'Ascunde';
	@override String get useDrawerReactionPickerForMobile => 'Afișează selectorul de reacții ca sertar pe mobil';
	@override String welcomeBackWithName({required Object name}) => 'Bine ai revenit, ${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => 'Dați clic pe [${ok}] pentru a finaliza verificarea e-mailului.';
	@override String get overridedDeviceKind => 'Tipul de dispozitiv';
	@override String get smartphone => 'Smartphone';
	@override String get tablet => 'Tableta';
	@override String get auto => 'Auto';
	@override String get themeColor => 'Culoarea temei';
	@override String get size => 'Dimensiune';
	@override String get numberOfColumn => 'Numărul de coloane';
	@override String get searchByGoogle => 'Caută';
	@override String get instanceDefaultLightTheme => 'Tema luminoasă implicită la nivelul întregii instanțe';
	@override String get instanceDefaultDarkTheme => 'Tema întunecată implicită la nivelul întregii instanțe';
	@override String get instanceDefaultThemeDescription => 'Introduceți codul temei în format obiect.';
	@override String get mutePeriod => 'Durata amuțire';
	@override String get period => 'Timp limită';
	@override String get indefinitely => 'Permanent';
	@override String get tenMinutes => '10 minute';
	@override String get oneHour => 'O oră';
	@override String get oneDay => 'O zi';
	@override String get oneWeek => 'O săptămâna';
	@override String get oneMonth => 'O lună';
	@override String get threeMonths => 'Trei luni';
	@override String get oneYear => 'Un an';
	@override String get threeDays => 'Trei zile';
	@override String get reflectMayTakeTime => 'Poate dura ceva timp pentru ca acest lucru să se replice.';
	@override String get failedToFetchAccountInformation => 'Nu s-a putut prelua informațiile despre cont';
	@override String get rateLimitExceeded => 'Limita ratei a fost depășită';
	@override String get cropImage => 'Trunchiază imaginea';
	@override String get cropImageAsk => 'Dorești să trunchiezi această imagine?';
	@override String get cropYes => 'Trunchiază';
	@override String get cropNo => 'Utilizează-o așa cum e';
	@override String get file => 'Fișiere';
	@override String recentNHours({required Object n}) => 'Ultimele ${n} ore';
	@override String recentNDays({required Object n}) => 'Ultimele ${n} zile';
	@override String get noEmailServerWarning => 'Serverul de e-mail nu este configurat.';
	@override String get thereIsUnresolvedAbuseReportWarning => 'Sunt rapoarte nerezolvate.';
	@override String get recommended => 'Recomandat';
	@override String get check => 'Verifică';
	@override String get driveCapOverrideLabel => 'Schimbă capacitatea de stocare a drive-ului pentru acest utilizator';
	@override String get driveCapOverrideCaption => 'Resetează capacitatea la valoarea implicită introducând o valoare de 0 sau mai mică.';
	@override String get requireAdminForView => 'Trebuie să te conectezi cu un cont de administrator pentru a vedea această resursă.';
	@override String get isSystemAccount => 'Un cont creat și operat automat de sistem.';
	@override String typeToConfirm({required Object x}) => 'Introdu ${x} pentru a confirma';
	@override String get deleteAccount => 'Șterge contul';
	@override String get document => 'Documentație';
	@override String get numberOfPageCache => 'Număr de pagini stocate cache';
	@override String get numberOfPageCacheDescription => 'Mărirea acestui număr va îmbunătăți conveniența, dar va cauza mai multă sarcină pe măsură ce se utilizează mai multă memorie pe dispozitivul utilizatorului.\n';
	@override String get logoutConfirm => 'Ești sigur(ă) că vrei să te deloghezi?';
	@override String get logoutWillClearClientData => 'Deconectarea va șterge setările clientului din browser. Pentru a putea restabili setările la autentificare, trebuie să activezi copia de rezervă automată a setărilor.';
	@override String get lastActiveDate => 'Ultima dată de utilizare';
	@override String get statusbar => 'Bară de stare';
	@override String get pleaseSelect => 'Alege o opțiune';
	@override String get reverse => 'Invers';
	@override String get colored => 'Colorat';
	@override String get refreshInterval => 'Interval de actualizare';
	@override String get label => 'Etichetă';
	@override String get type => 'Tip';
	@override String get speed => 'Viteză';
	@override String get slow => 'Lent';
	@override String get fast => 'Rapid';
	@override String get sensitiveMediaDetection => 'Detectarea conținutului media sensibil';
	@override String get localOnly => 'Beta';
	@override String get remoteOnly => 'Doar externe';
	@override String get failedToUpload => 'Încărcare eșuată';
	@override String get cannotUploadBecauseInappropriate => 'Acest fișier nu a putut fi încărcat deoarece părți din acesta au fost detectate ca potențial neadecvate.';
	@override String get cannotUploadBecauseNoFreeSpace => 'Încărcarea a eșuat datorită lipsei spațiului din drive.';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'Acest fișier nu poate fi încărcat deoarece depășește limita de dimensiune a fișierelor.';
	@override String get beta => 'Beta';
	@override String get enableAutoSensitive => 'Marcare automată ca fiind conținut sensibil';
	@override String get enableAutoSensitiveDescription => 'Permite detectarea și marcarea automată a mediilor sensibile prin Machine Learning acolo unde este posibil. Chiar dacă această opțiune este dezactivată ea poate fi, în schimb, activă la nivelul întregii instanțe.';
	@override String get activeEmailValidationDescription => 'Permite validarea mai strictă a adreselor de e-mail, care includ verificarea adreselor de unică folosință și dacă pot fi comunicate cu acestea. Când este debifat, este validat doar formatul e-mailului.';
	@override String get navbar => 'Bara de navigare';
	@override String get shuffle => 'Amestecă';
	@override String get account => 'Conturi';
	@override String get move => 'Mută';
	@override String get pushNotification => 'Notificări tip „push”';
	@override String get subscribePushNotification => 'Permite notificările tip „push”';
	@override String get unsubscribePushNotification => 'Oprește notificările tip „push”';
	@override String get pushNotificationAlreadySubscribed => 'Notificările tip „push” sunt deja activate';
	@override String get pushNotificationNotSupported => 'Browserul sau instanța dvs. nu acceptă notificările tip „push”';
	@override String get sendPushNotificationReadMessage => 'Șterge notificările tip „push” după ce au fost citite';
	@override String get sendPushNotificationReadMessageCaption => 'Acest lucru poate crește consumul de energie al dispozitivului';
	@override String get windowMaximize => 'Maximizează';
	@override String get windowMinimize => 'Minimizează';
	@override String get windowRestore => 'Restabilește';
	@override String get caption => 'Titrare';
	@override String get loggedInAsBot => 'Conectat în prezent ca bot';
	@override String get tools => 'Unelte';
	@override String get cannotLoad => 'Nu se poate încărca';
	@override String get numberOfProfileView => 'Numărul de vizualizări ale profilului';
	@override String get like => 'Îmi place!';
	@override String get unlike => 'Îmi displace';
	@override String get numberOfLikes => 'Numărul de aprecieri';
	@override String get show => 'Arată';
	@override String get neverShow => 'Nu mai afișa';
	@override String get remindMeLater => 'Poate mai târziu';
	@override String get didYouLikeMisskey => 'A început sa îți placa Misskey?';
	@override String pleaseDonate({required Object host}) => '${host} folosește software-ul gratuit, Misskey. Am aprecia foarte mult donațiile dumneavoastră, astfel încât dezvoltarea Misskey să poată continua!';
	@override String correspondingSourceIsAvailable({required Object anchor}) => 'Codul sursă corespunzător este disponibil la ${anchor}';
	@override String get roles => 'Roluri';
	@override String get role => 'Roluri';
	@override String get noRole => 'Rolul nu a fost găsit';
	@override String get normalUser => 'Utilizator obișnuit';
	@override String get undefined => 'Nedefinit';
	@override String get assign => 'Asignează';
	@override String get unassign => 'Dezasignează';
	@override String get color => 'Culoare';
	@override String get manageCustomEmojis => 'Gestionează emoji-uri personalizate';
	@override String get manageAvatarDecorations => 'Gestionați decorațiunile avatarului';
	@override String get youCannotCreateAnymore => 'Ai atins limita de creație.';
	@override String get cannotPerformTemporary => 'Temporar indisponibil';
	@override String get cannotPerformTemporaryDescription => 'Această acțiune nu poate fi efectuată temporar din cauza depășirii limitei de execuție. Te rugăm să aștepți puțin și apoi să încerci din nou.';
	@override String get invalidParamError => 'Parametri invalizi';
	@override String get invalidParamErrorDescription => 'Parametrii cererii sunt invalizi. Acest lucru este cauzat în mod normal de o eroare, dar se poate datora și intrărilor care depășesc limitele de dimensiune sau altceva similar.';
	@override String get permissionDeniedError => 'Operațiune refuzată';
	@override String get permissionDeniedErrorDescription => 'Acest cont nu are permisiunea de a efectua această acțiune.';
	@override String get preset => 'Presetate';
	@override String get selectFromPresets => 'Alege din presetate';
	@override String get achievements => 'Realizări';
	@override String get gotInvalidResponseError => 'Răspunsul serverului este invalid';
	@override String get gotInvalidResponseErrorDescription => 'Serverul poate fi oprit sau e în curs de întreținere. Te rugăm să încerci din nou după un timp.';
	@override String get thisPostMayBeAnnoying => 'Această notă îi poate deranja pe alții.';
	@override String get thisPostMayBeAnnoyingHome => 'Postează în cronologia de acasă';
	@override String get thisPostMayBeAnnoyingCancel => 'Anulează';
	@override String get thisPostMayBeAnnoyingIgnore => 'Postează oricum';
	@override String get collapseRenotes => 'Restrânge Re-Notările pe care le-ați văzut deja';
	@override String get collapseRenotesDescription => 'Restrânge notările pe care le-ați văzut deja';
	@override String get internalServerError => 'Eroare interna a serverului';
	@override String get internalServerErrorDescription => 'Serverul a întâmpinat o eroare neașteptată.';
	@override String get copyErrorInfo => 'Copiază detaliile erorii';
	@override String get joinThisServer => 'Înregistrează-te în această instanță';
	@override String get exploreOtherServers => 'Caută o altă instanță';
	@override String get letsLookAtTimeline => 'Aruncă o privire la cronologie';
	@override String get disableFederationConfirm => 'Sigur vrei sa oprești federarea';
	@override String get disableFederationConfirmWarn => 'Chiar dacă sunt defederate, postările vor continua să fie publice, dacă nu sunt stabilite altfel. De obicei, nu trebuie să faceți acest lucru.';
	@override String get disableFederationOk => 'Dezactivează';
	@override String get invitationRequiredToRegister => 'Acest server este în prezent accesibil numai pe bază de invitație. Se pot înregistra doar cei care au cod de invitație.';
	@override String get emailNotSupported => 'Această instanță nu acceptă trimiterea de e-mailuri';
	@override String get postToTheChannel => 'Postează pe canal';
	@override String get cannotBeChangedLater => 'Nu poate fi schimbat ulterior';
	@override String get reactionAcceptance => 'Acceptarea reacțiilor';
	@override String get likeOnly => 'Doar aprecieri';
	@override String get likeOnlyForRemote => 'Toate (aplicabil numai pentru instanțe externe)';
	@override String get nonSensitiveOnly => 'Numai conținut non-sensibil';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'Numai non-sensibile (aplicabil numai pentru aprecieri de la surse externe)';
	@override String get rolesAssignedToMe => 'Roluri asignate mie';
	@override String get resetPasswordConfirm => 'Sigur vrei sa îți resetezi parola';
	@override String get sensitiveWords => 'Cuvinte sensibile';
	@override String get sensitiveWordsDescription => 'Vizibilitatea tuturor notelor care conțin oricare dintre cuvintele configurate va fi setate automat la „Acasă”. Puteți enumera mai multe, separându-le prin o linie de spațiere nouă.';
	@override String get sensitiveWordsDescription2 => 'Folosirea spațiilor va crea expresii "AND" și înconjurând cuvintele cheie cu bare oblice le vor transforma într-o expresie obișnuită.';
	@override String get prohibitedWords => 'Cuvinte interzise';
	@override String get prohibitedWordsDescription => 'Activează o eroare la încercarea de a posta o notă care conține cuvintele setate. Pot fi setate mai multe cuvinte, separate printr-o linie de spațiere nouă.';
	@override String get prohibitedWordsDescription2 => 'Folosirea spațiilor va crea expresii "AND" și înconjurând cuvintele cheie cu bare oblice le vor transforma într-o expresie obișnuită.';
	@override String get hiddenTags => 'Hashtag-uri ascunse';
	@override String get hiddenTagsDescription => 'Selectați hashtag-uri care nu vor fi afișate în lista de tendințe.\nMai multe hashtag-uri pot fi înregistrate pe o linie de spațiere noua.';
	@override String get notesSearchNotAvailable => 'Căutarea notelor este indisponibilă.';
	@override String get license => 'Licență';
	@override String get unfavoriteConfirm => 'Sigur vrei să elimini din favorite?';
	@override String get myClips => 'Clipurile mele';
	@override String get drivecleaner => 'Curățitorul de drive';
	@override String get retryAllQueuesNow => 'Reîncearcă să rulezi toate cozile';
	@override String get retryAllQueuesConfirmTitle => 'Sigur vrei să le reîncerci din nou?';
	@override String get retryAllQueuesConfirmText => 'Acest lucru va crește temporar încărcarea rulării serverului.';
	@override String get enableChartsForRemoteUser => 'Generează diagrame cu datele utilizatorilor externi';
	@override String get enableChartsForFederatedInstances => 'Generează diagrame de date ale instanțelor externe';
	@override String get enableStatsForFederatedInstances => 'Primește statistici ale serverelor externe';
	@override String get showClipButtonInNoteFooter => 'Adaugă „Clip” la meniul de acțiuni pentru note';
	@override String get reactionsDisplaySize => 'Dimensiunea afișajului de reacție';
	@override String get limitWidthOfReaction => 'Limitează lățimea maximă a reacțiilor și afișează-le în dimensiuni reduse.';
	@override String get noteIdOrUrl => 'ID sau URL-ul notei';
	@override String get video => 'Video';
	@override String get videos => 'Video-uri';
	@override String get audio => 'Audio';
	@override String get audioFiles => 'Audio';
	@override String get dataSaver => 'Economizor de date';
	@override String get accountMigration => 'Migrarea contului';
	@override String get accountMoved => 'Acest utilizator a fost mutat într-un alt cont：';
	@override String get accountMovedShort => 'Acest cont a fost migrat.';
	@override String get operationForbidden => 'Operațiune interzisă';
	@override String get forceShowAds => 'Afișează întotdeauna reclame';
	@override String get addMemo => 'Adaugă un memo';
	@override String get editMemo => 'Editează memo-ul';
	@override String get reactionsList => 'Reacții';
	@override String get renotesList => 'Re-Notări';
	@override String get notificationDisplay => 'Notificări';
	@override String get leftTop => 'Stânga-sus';
	@override String get rightTop => 'Dreapta-sus';
	@override String get leftBottom => 'Stânga-jos';
	@override String get rightBottom => 'Dreapta-jos';
	@override String get stackAxis => 'Direcția de stack-are';
	@override String get vertical => 'Vertical';
	@override String get horizontal => 'Orizontal';
	@override String get position => 'Poziție';
	@override String get serverRules => 'Regulamentul serverului';
	@override String get pleaseConfirmBelowBeforeSignup => 'Pentru a te înregistra pe acest server, trebuie să examinezi și să fii de acord cu următoarele:';
	@override String get pleaseAgreeAllToContinue => 'Trebuie să fii de acord cu toate câmpurile de mai sus pentru a continua.';
	@override String get continue_ => 'Continuă';
	@override String get preservedUsernames => 'Nume rezervate de utilizator';
	@override String get preservedUsernamesDescription => 'Listeaza numele de utilizatori pentru a le rezerva, separate prin întreruperi de linie. Acestea vor deveni inutilizabile în timpul creării normale a contului, dar pot fi folosite de administratori pentru a crea conturi manual. Conturile deja existente care folosesc aceste nume de utilizator nu vor fi afectate.';
	@override String get createNoteFromTheFile => 'Compuneți o notă din acest fișier';
	@override String get archive => 'Arhivă';
	@override String get archived => 'Arhivat';
	@override String get unarchive => 'Nearhivabil';
	@override String channelArchiveConfirmTitle({required Object name}) => 'Sigur vrei să arhivezi ${name}?';
	@override String get channelArchiveConfirmDescription => 'Un canal arhivat nu va mai apărea în lista de canale sau în rezultatele căutării. De asemenea, postările noi nu mai pot fi adăugate la acesta.';
	@override String get thisChannelArchived => 'Acest canal a fost arhivat.';
	@override String get displayOfNote => 'Afișajul notelor';
	@override String get initialAccountSetting => 'Configurarea Profilului';
	@override String get youFollowing => 'Îl urmărești';
	@override String get preventAiLearning => 'Respinge utilizarea în Machine Learning (IA generativă)';
	@override String get preventAiLearningDescription => 'Solicită crawlerilor să nu folosească textul sau materialul de imagine postat etc. în seturile de date de învățare automată (AI predictivă/generativă). Acest lucru se realizează prin adăugarea unui flag „noai” HTML-Response la conținutul respectiv. Cu toate acestea, o prevenire completă nu poate fi realizată prin acest flag, deoarece poate fi pur și simplu ignorat.';
	@override String get options => 'Opțiuni';
	@override String get specifyUser => 'Utilizator specific';
	@override String get lookupConfirm => 'Vrei să cauți?';
	@override String get openTagPageConfirm => 'Vrei să deschizi o pagină cu hashtag?';
	@override String get specifyHost => 'O gazdă(host) specifică';
	@override String get failedToPreviewUrl => 'Nu se poate previzualiza';
	@override String get update => 'Actualizare';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'Roluri care pot folosi acest emoji ca reacție';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'Dacă nu sunt specificate rolurile, cineva poate folosi acest emoji ca reacție.';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'Aceste roluri trebuie să fie publice.';
	@override String get cancelReactionConfirm => 'Ești sigur(ă) că vrei să ștergi reacția ta?';
	@override String get changeReactionConfirm => 'Sigur vrei sa îți ștergi reacția?';
	@override String get later => 'Mai târziu';
	@override String get goToMisskey => 'Spre Misskey';
	@override String get additionalEmojiDictionary => 'Dicționare emoji suplimentare';
	@override String get installed => 'Instalat';
	@override String get branding => 'Branding';
	@override String get enableServerMachineStats => 'Publicați statistici hardware ale serverului';
	@override String get enableIdenticonGeneration => 'Activați generarea identicon a utilizatorului';
	@override String get turnOffToImprovePerformance => 'Oprirea acestei opțiuni poate crește performanța.';
	@override String get createInviteCode => 'Generează invitația';
	@override String get createWithOptions => 'Generează cu opțiuni';
	@override String get createCount => 'Numărul de invitații';
	@override String get inviteCodeCreated => 'Invitație generată';
	@override String get inviteLimitExceeded => 'Ați depășit limita invitațiilor pe care le puteți genera.';
	@override String createLimitRemaining({required Object limit}) => 'Limită invitații : ${limit} rămase';
	@override String inviteLimitResetCycle({required Object limit, required Object time}) => 'Această limită se va reseta la ${limit} la ${time}.';
	@override String get expirationDate => 'Data de expirare';
	@override String get noExpirationDate => 'Fără expirare';
	@override String get inviteCodeUsedAt => 'Codul de invitație în';
	@override String get registeredUserUsingInviteCode => 'Invitație folosita de';
	@override String get waitingForMailAuth => 'Verificarea e-mailului este în așteptare';
	@override String get inviteCodeCreator => 'Invitație creată de';
	@override String get usedAt => 'Folosit în';
	@override String get unused => 'Neutilizat';
	@override String get used => 'Utilizat';
	@override String get expired => 'Expirat';
	@override String get doYouAgree => 'De-acord?';
	@override String get beSureToReadThisAsItIsImportant => 'Te rugăm citește informația aceasta importantă';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => 'Am citit textul „${x}” și sunt de acord.';
	@override String get dialog => 'Dialog';
	@override String get icon => 'Avatar';
	@override String get forYou => 'Pentru tine';
	@override String get currentAnnouncements => 'Anunțuri curente';
	@override String get pastAnnouncements => 'Anunțuri anterioare';
	@override String get youHaveUnreadAnnouncements => 'Sunt anunțuri necitite.';
	@override String get useSecurityKey => 'Te rugăm să urmezi instrucțiunile browserului sau ale dispozitivului tău pentru a-ți folosi cheia de securitate sau de acces.';
	@override String get replies => 'Răspunde';
	@override String get renotes => 'Re-Note';
	@override String get loadReplies => 'Afișează răspunsurile';
	@override String get loadConversation => 'Afișează conversația';
	@override String get pinnedList => 'Lista fixată';
	@override String get keepScreenOn => 'Menține ecranul aprins';
	@override String get verifiedLink => 'Deținerea linkului a fost verificată';
	@override String get notifyNotes => 'Notifică-mă despre notele noi';
	@override String get unnotifyNotes => 'Nu mai mă notifica despre notele noi';
	@override String get authentication => 'Autentificare';
	@override String get authenticationRequiredToContinue => 'Te rugăm să te autentifici pentru a continua';
	@override String get dateAndTime => 'Data și ora';
	@override String get showRenotes => 'Afiseaza Re-Notele';
	@override String get edited => 'Editat';
	@override String get notificationRecieveConfig => 'Setări de notificare';
	@override String get mutualFollow => 'Vă urmăriți';
	@override String get followingOrFollower => 'Urmărit sau urmăritor';
	@override String get fileAttachedOnly => 'Numai Note cu fișiere';
	@override String get showRepliesToOthersInTimeline => 'Afișează răspunsurile către ceilalți în cronologie';
	@override String get hideRepliesToOthersInTimeline => 'Ascunde răspunsurile către ceilalți în cronologie';
	@override String get showRepliesToOthersInTimelineAll => 'Afișează răspunsurile către ceilalți de către cei ce ii urmărești în cronologie';
	@override String get repositoryUrlDescription => 'Dacă utilizați Misskey așa cum este (fără modificări ale codului sursă), introduceți https://github.com/misskey-dev/misskey';
	@override String get flip => 'Invers';
	@override String get copyReplayData => 'Copiază datele de reluare';
	@override String lastNDays({required Object n}) => 'Ultimele ${n} zile';
	@override String get surrender => 'Anulează';
	@override String get copyPreferenceId => 'Copiază ID-ul preferințelor';
	@override String get information => 'Despre';
	@override late final _TranslationsMisskeyChatRoRo chat_ = _TranslationsMisskeyChatRoRo._(_root);
	@override late final _TranslationsMisskeyAccountSettingsRoRo accountSettings_ = _TranslationsMisskeyAccountSettingsRoRo._(_root);
	@override late final _TranslationsMisskeyDeliveryRoRo delivery_ = _TranslationsMisskeyDeliveryRoRo._(_root);
	@override late final _TranslationsMisskeyInitialTutorialRoRo initialTutorial_ = _TranslationsMisskeyInitialTutorialRoRo._(_root);
	@override late final _TranslationsMisskeyTimelineDescriptionRoRo timelineDescription_ = _TranslationsMisskeyTimelineDescriptionRoRo._(_root);
	@override late final _TranslationsMisskeyRoleRoRo role_ = _TranslationsMisskeyRoleRoRo._(_root);
	@override late final _TranslationsMisskeyFfVisibilityRoRo ffVisibility_ = _TranslationsMisskeyFfVisibilityRoRo._(_root);
	@override late final _TranslationsMisskeyAdRoRo ad_ = _TranslationsMisskeyAdRoRo._(_root);
	@override late final _TranslationsMisskeyGalleryRoRo gallery_ = _TranslationsMisskeyGalleryRoRo._(_root);
	@override late final _TranslationsMisskeyEmailRoRo email_ = _TranslationsMisskeyEmailRoRo._(_root);
	@override late final _TranslationsMisskeyInstanceMuteRoRo instanceMute_ = _TranslationsMisskeyInstanceMuteRoRo._(_root);
	@override late final _TranslationsMisskeyThemeRoRo theme_ = _TranslationsMisskeyThemeRoRo._(_root);
	@override late final _TranslationsMisskeySfxRoRo sfx_ = _TranslationsMisskeySfxRoRo._(_root);
	@override late final _TranslationsMisskeyAgoRoRo ago_ = _TranslationsMisskeyAgoRoRo._(_root);
	@override late final _TranslationsMisskeyX2faRoRo x2fa_ = _TranslationsMisskeyX2faRoRo._(_root);
	@override late final _TranslationsMisskeyPermissionsRoRo permissions_ = _TranslationsMisskeyPermissionsRoRo._(_root);
	@override late final _TranslationsMisskeyWidgetsRoRo widgets_ = _TranslationsMisskeyWidgetsRoRo._(_root);
	@override late final _TranslationsMisskeyCwRoRo cw_ = _TranslationsMisskeyCwRoRo._(_root);
	@override late final _TranslationsMisskeyVisibilityRoRo visibility_ = _TranslationsMisskeyVisibilityRoRo._(_root);
	@override late final _TranslationsMisskeyPostFormRoRo postForm_ = _TranslationsMisskeyPostFormRoRo._(_root);
	@override late final _TranslationsMisskeyProfileRoRo profile_ = _TranslationsMisskeyProfileRoRo._(_root);
	@override late final _TranslationsMisskeyExportOrImportRoRo exportOrImport_ = _TranslationsMisskeyExportOrImportRoRo._(_root);
	@override late final _TranslationsMisskeyChartsRoRo charts_ = _TranslationsMisskeyChartsRoRo._(_root);
	@override late final _TranslationsMisskeyTimelinesRoRo timelines_ = _TranslationsMisskeyTimelinesRoRo._(_root);
	@override late final _TranslationsMisskeyPlayRoRo play_ = _TranslationsMisskeyPlayRoRo._(_root);
	@override late final _TranslationsMisskeyPagesRoRo pages_ = _TranslationsMisskeyPagesRoRo._(_root);
	@override late final _TranslationsMisskeyNotificationRoRo notification_ = _TranslationsMisskeyNotificationRoRo._(_root);
	@override late final _TranslationsMisskeyDeckRoRo deck_ = _TranslationsMisskeyDeckRoRo._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsRoRo webhookSettings_ = _TranslationsMisskeyWebhookSettingsRoRo._(_root);
	@override late final _TranslationsMisskeyAbuseReportRoRo abuseReport_ = _TranslationsMisskeyAbuseReportRoRo._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesRoRo moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesRoRo._(_root);
	@override late final _TranslationsMisskeyDataSaverRoRo dataSaver_ = _TranslationsMisskeyDataSaverRoRo._(_root);
	@override late final _TranslationsMisskeyReversiRoRo reversi_ = _TranslationsMisskeyReversiRoRo._(_root);
	@override late final _TranslationsMisskeyContextMenuRoRo contextMenu_ = _TranslationsMisskeyContextMenuRoRo._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerRoRo customEmojisManager_ = _TranslationsMisskeyCustomEmojisManagerRoRo._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsRoRo remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsRoRo._(_root);
	@override late final _TranslationsMisskeySearchRoRo search_ = _TranslationsMisskeySearchRoRo._(_root);
	@override late final _TranslationsMisskeyWatermarkEditorRoRo watermarkEditor_ = _TranslationsMisskeyWatermarkEditorRoRo._(_root);
	@override late final _TranslationsMisskeyImageEffectorRoRo imageEffector_ = _TranslationsMisskeyImageEffectorRoRo._(_root);
	@override late final _TranslationsMisskeyQrRoRo qr_ = _TranslationsMisskeyQrRoRo._(_root);
}

// Path: misskey.chat_
class _TranslationsMisskeyChatRoRo extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get invitations => 'Invită';
	@override String get noHistory => 'Nu există istoric';
	@override String get members => 'Membri';
	@override String get home => 'Acasă';
	@override String get send => 'Trimite';
}

// Path: misskey.accountSettings_
class _TranslationsMisskeyAccountSettingsRoRo extends TranslationsMisskeyAccountSettingsEnUs {
	_TranslationsMisskeyAccountSettingsRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get requireSigninToViewContentsDescription2 => 'Conținutul nu va fi afișat în previzualizările URL (OGP), încorporate în paginile web sau pe serverele care nu acceptă citările de note.';
	@override String get makeNotesFollowersOnlyBefore => 'Face ca notele anterioare pentru a fi afișate numai pentru urmăritori';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryRoRo extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get stop => 'Suspendat';
	@override late final _TranslationsMisskeyDeliveryTypeRoRo type_ = _TranslationsMisskeyDeliveryTypeRoRo._(_root);
}

// Path: misskey.initialTutorial_
class _TranslationsMisskeyInitialTutorialRoRo extends TranslationsMisskeyInitialTutorialEnUs {
	_TranslationsMisskeyInitialTutorialRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyInitialTutorialNoteRoRo note_ = _TranslationsMisskeyInitialTutorialNoteRoRo._(_root);
	@override late final _TranslationsMisskeyInitialTutorialTimelineRoRo timeline_ = _TranslationsMisskeyInitialTutorialTimelineRoRo._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteRoRo postNote_ = _TranslationsMisskeyInitialTutorialPostNoteRoRo._(_root);
}

// Path: misskey.timelineDescription_
class _TranslationsMisskeyTimelineDescriptionRoRo extends TranslationsMisskeyTimelineDescriptionEnUs {
	_TranslationsMisskeyTimelineDescriptionRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get social => 'Cronologia socială afișează note atât din cronologia de ,,Acasă\'\', cât și din cea ,,Locală".';
}

// Path: misskey.role_
class _TranslationsMisskeyRoleRoRo extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRoleRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get assignTarget => 'Asignează';
	@override String get priority => 'Prioritate';
	@override late final _TranslationsMisskeyRolePriorityRoRo priority_ = _TranslationsMisskeyRolePriorityRoRo._(_root);
	@override late final _TranslationsMisskeyRoleOptionsRoRo options_ = _TranslationsMisskeyRoleOptionsRoRo._(_root);
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilityRoRo extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilityRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get public => 'Publică';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdRoRo extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get back => 'Înapoi';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryRoRo extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get my => 'Galeria mea';
	@override String get liked => 'Postări apreciate';
	@override String get like => 'Îmi place!';
	@override String get unlike => 'Îmi displace';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailRoRo extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowRoRo follow_ = _TranslationsMisskeyEmailFollowRoRo._(_root);
}

// Path: misskey.instanceMute_
class _TranslationsMisskeyInstanceMuteRoRo extends TranslationsMisskeyInstanceMuteEnUs {
	_TranslationsMisskeyInstanceMuteRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Aceasta va dezactiva orice notă/renotă din instanțele enumerate, inclusiv cele ale utilizatorilor care răspund unui utilizator dintr-o instanță mută.';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeRoRo extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get description => 'Descriere';
	@override late final _TranslationsMisskeyThemeKeysRoRo keys = _TranslationsMisskeyThemeKeysRoRo._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxRoRo extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get note => 'Note';
	@override String get notification => 'Notificări';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoRoRo extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get invalid => 'Nu e nimic de văzut aici';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faRoRo extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get renewTOTPCancel => 'Nu, mulțumesc.';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsRoRo extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get readGallery => 'Vizualizează-ți galeria';
	@override String get writeGallery => 'Editează-ți galeria';
	@override String get readGalleryLikes => 'Vizualizează-ți lista de postări apreciate din galerie';
	@override String get writeGalleryLikes => 'Editează-ți lista de postări apreciate din galerie';
}

// Path: misskey.widgets_
class _TranslationsMisskeyWidgetsRoRo extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Profil';
	@override String get instanceInfo => 'Informații despre instanță';
	@override String get notifications => 'Notificări';
	@override String get timeline => 'Cronologie';
	@override String get activity => 'Activitate';
	@override String get federation => 'Federație';
	@override String get jobQueue => 'coada de job-uri';
	@override late final _TranslationsMisskeyWidgetsUserListRoRo userList_ = _TranslationsMisskeyWidgetsUserListRoRo._(_root);
}

// Path: misskey.cw_
class _TranslationsMisskeyCwRoRo extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get show => 'Incarcă mai mult';
}

// Path: misskey.visibility_
class _TranslationsMisskeyVisibilityRoRo extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get home => 'Acasă';
	@override String get followers => 'Urmăritori';
	@override String get specified => 'Note directe';
}

// Path: misskey.postForm_
class _TranslationsMisskeyPostFormRoRo extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'Răspunde la această notă...';
	@override String get quotePlaceholder => 'Citează aceasta nota...';
	@override String get channelPlaceholder => 'Postează pe un canal...';
	@override late final _TranslationsMisskeyPostFormPlaceholdersRoRo placeholders_ = _TranslationsMisskeyPostFormPlaceholdersRoRo._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileRoRo extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nume';
	@override String get username => 'Nume de utilizator';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportRoRo extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get clips => 'Clip';
	@override String get followingList => 'Urmărești';
	@override String get muteList => 'Amuțește';
	@override String get blockingList => 'Blochează';
	@override String get userLists => 'Liste';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsRoRo extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Federație';
}

// Path: misskey.timelines_
class _TranslationsMisskeyTimelinesRoRo extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get home => 'Acasă';
	@override String get local => 'Local';
	@override String get social => 'Social';
	@override String get global => 'Global';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayRoRo extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get script => 'Script';
	@override String get summary => 'Descriere';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesRoRo extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyPagesBlocksRoRo blocks = _TranslationsMisskeyPagesBlocksRoRo._(_root);
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationRoRo extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get youWereFollowed => 'te-a urmărit';
	@override late final _TranslationsMisskeyNotificationTypesRoRo types_ = _TranslationsMisskeyNotificationTypesRoRo._(_root);
	@override late final _TranslationsMisskeyNotificationActionsRoRo actions_ = _TranslationsMisskeyNotificationActionsRoRo._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckRoRo extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyDeckColumnsRoRo columns_ = _TranslationsMisskeyDeckColumnsRoRo._(_root);
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsRoRo extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nume';
	@override String get active => 'Activat';
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportRoRo extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRoRo notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientRoRo._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesRoRo extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'Suspendă';
	@override String get resetPassword => 'Resetează parola';
	@override String get createInvitation => 'Generează invitația';
	@override String get deleteGalleryPost => 'Postarea din galerie a fost ștearsă';
}

// Path: misskey.dataSaver_
class _TranslationsMisskeyDataSaverRoRo extends TranslationsMisskeyDataSaverEnUs {
	_TranslationsMisskeyDataSaverRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyDataSaverCodeRoRo code_ = _TranslationsMisskeyDataSaverCodeRoRo._(_root);
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiRoRo extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get total => 'Total';
}

// Path: misskey.contextMenu_
class _TranslationsMisskeyContextMenuRoRo extends TranslationsMisskeyContextMenuEnUs {
	_TranslationsMisskeyContextMenuRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get app => 'Aplicație';
	@override String get appWithShift => 'Aplicatie ce utilizeaza tasta ,,shift"';
	@override String get native => 'Nativ';
}

// Path: misskey.customEmojisManager_
class _TranslationsMisskeyCustomEmojisManagerRoRo extends TranslationsMisskeyCustomEmojisManagerEnUs {
	_TranslationsMisskeyCustomEmojisManagerRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCustomEmojisManagerGridCommonRoRo gridCommon_ = _TranslationsMisskeyCustomEmojisManagerGridCommonRoRo._(_root);
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsRoRo extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectRoRo noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectRoRo._(_root);
}

// Path: misskey.search_
class _TranslationsMisskeySearchRoRo extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Tot';
	@override String get searchScopeLocal => 'Local';
	@override String get searchScopeUser => 'Utilizator specific';
	@override String get serverHostPlaceholder => 'Exemplu: misskey.example.com';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorRoRo extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get scale => 'Dimensiune';
	@override String get text => 'Text';
	@override String get position => 'Poziție';
	@override String get type => 'Tip';
	@override String get image => 'Imagini';
	@override String get advanced => 'Avansat';
}

// Path: misskey.imageEffector_
class _TranslationsMisskeyImageEffectorRoRo extends TranslationsMisskeyImageEffectorEnUs {
	_TranslationsMisskeyImageEffectorRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyImageEffectorFxPropsRoRo fxProps_ = _TranslationsMisskeyImageEffectorFxPropsRoRo._(_root);
}

// Path: misskey.qr_
class _TranslationsMisskeyQrRoRo extends TranslationsMisskeyQrEnUs {
	_TranslationsMisskeyQrRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get showTabTitle => 'Arată';
	@override String get raw => 'Text';
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypeRoRo extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypeRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get none => 'Publicare';
}

// Path: misskey.initialTutorial_.note_
class _TranslationsMisskeyInitialTutorialNoteRoRo extends TranslationsMisskeyInitialTutorialNoteEnUs {
	_TranslationsMisskeyInitialTutorialNoteRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get reply => 'Face clic pe acest buton pentru a răspunde la un mesaj. De asemenea, este posibil să răspunzi la răspunsuri, continuând conversația ca pe un șir de replici(thread).';
	@override String get menu => 'Poți vedea detaliile ce țin de Note, să copiezi linkuri și să efectuezi alte acțiuni.';
}

// Path: misskey.initialTutorial_.timeline_
class _TranslationsMisskeyInitialTutorialTimelineRoRo extends TranslationsMisskeyInitialTutorialTimelineEnUs {
	_TranslationsMisskeyInitialTutorialTimelineRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get social => 'Vor fi afișate notele din cronologia „Acasă\'\' și „Locală\'\'.';
}

// Path: misskey.initialTutorial_.postNote_
class _TranslationsMisskeyInitialTutorialPostNoteRoRo extends TranslationsMisskeyInitialTutorialPostNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyInitialTutorialPostNoteVisibilityRoRo visibility_ = _TranslationsMisskeyInitialTutorialPostNoteVisibilityRoRo._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwRoRo cw_ = _TranslationsMisskeyInitialTutorialPostNoteCwRoRo._(_root);
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityRoRo extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get low => 'Scăzuta';
	@override String get middle => 'Mediu';
	@override String get high => 'Ridicată';
}

// Path: misskey.role_.options_
class _TranslationsMisskeyRoleOptionsRoRo extends TranslationsMisskeyRoleOptionsEnUs {
	_TranslationsMisskeyRoleOptionsRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get canManageCustomEmojis => 'Gestionează emoji-uri personalizate';
	@override String get canManageAvatarDecorations => 'Gestionați decorațiunile avatarului';
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowRoRo extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ai un nou urmăritor';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysRoRo extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get fg => 'Text';
	@override String get mention => 'Mențiune';
	@override String get renote => 'Re-Notează';
	@override String get divider => 'Separator';
	@override String get toastFg => 'Textul din notificare';
	@override String get fgHighlighted => 'Textul evidențiat';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListRoRo extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Selectează o listă';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersRoRo extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get a => 'Ce mai faci?';
	@override String get b => 'Ce se mai petrece in jurul tău?';
	@override String get c => 'La ce te gândești?';
	@override String get d => 'Ce vrei să scrii?';
	@override String get e => 'Începe să scrii...';
	@override String get f => 'Te aștept să scrii...';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksRoRo extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get text => 'Text';
	@override String get image => 'Imagini';
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesRoRo extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Urmărești';
	@override String get mention => 'Mențiune';
	@override String get renote => 'Re-Note';
	@override String get quote => 'Citează';
	@override String get reaction => 'Reacție';
	@override String get login => 'Autentifică-te';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsRoRo extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get reply => 'Răspunde';
	@override String get renote => 'Re-Notează';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsRoRo extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Notificări';
	@override String get tl => 'Cronologie';
	@override String get antenna => 'Antene';
	@override String get list => 'Liste';
	@override String get channel => 'Canale';
	@override String get mentions => 'Mențiuni';
	@override String get direct => 'Note directe';
	@override String get roleTimeline => 'Cronologia rolului';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientRoRo extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeRoRo recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeRoRo._(_root);
}

// Path: misskey.dataSaver_.code_
class _TranslationsMisskeyDataSaverCodeRoRo extends TranslationsMisskeyDataSaverCodeEnUs {
	_TranslationsMisskeyDataSaverCodeRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Evidențierea codului';
	@override String get description => 'Dacă notațiile de evidențiere a codului sunt utilizate în MFM etc., acestea nu se vor încărca până când sunt atinse. Evidențierea de sintaxă necesită descărcarea fișierelor de definiție de evidențiere pentru fiecare limbaj de programare. Prin urmare, dezactivarea încărcării automate a acestor fișiere este de așteptat să reducă cantitatea de date de comunicare.';
}

// Path: misskey.customEmojisManager_.gridCommon_
class _TranslationsMisskeyCustomEmojisManagerGridCommonRoRo extends TranslationsMisskeyCustomEmojisManagerGridCommonEnUs {
	_TranslationsMisskeyCustomEmojisManagerGridCommonRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get copySelectionRows => 'Copiază rândurile selectate';
	@override String get copySelectionRanges => 'Copiază selecția';
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectRoRo extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nu a fost găsit';
}

// Path: misskey.imageEffector_.fxProps_
class _TranslationsMisskeyImageEffectorFxPropsRoRo extends TranslationsMisskeyImageEffectorFxPropsEnUs {
	_TranslationsMisskeyImageEffectorFxPropsRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get scale => 'Dimensiune';
	@override String get size => 'Dimensiune';
	@override String get offset => 'Poziție';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _TranslationsMisskeyInitialTutorialPostNoteVisibilityRoRo extends TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteVisibilityRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get localOnly => 'Postarea cu acest flag nu va federa nota pe alte servere. Utilizatorii de pe alte servere nu vor putea vizualiza aceste note direct, indiferent de setările de afișare de mai sus.';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _TranslationsMisskeyInitialTutorialPostNoteCwRoRo extends TranslationsMisskeyInitialTutorialPostNoteCwEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get description => 'În locul corpului, va fi afișat conținutul scris în câmpul „comentarii”. Apăsând „citește mai mult” va dezvălui corpul.';
	@override String get useCases => 'Acesta este folosit atunci când respectați instrucțiunile serverului, pentru notele necesare sau pentru auto-restrângerea spoilerului sau a textului sensibil.';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeRoRo extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeRoRo._(TranslationsRoRo root) : this._root = root, super.internal(root);

	final TranslationsRoRo _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Email';
}
