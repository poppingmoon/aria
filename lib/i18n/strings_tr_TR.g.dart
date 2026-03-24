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
class TranslationsTrTr extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTrTr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.trTr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <tr-TR>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsTrTr _root = this; // ignore: unused_field

	@override 
	TranslationsTrTr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTrTr(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAriaTrTr aria = _TranslationsAriaTrTr._(_root);
	@override late final _TranslationsMisskeyTrTr misskey = _TranslationsMisskeyTrTr._(_root);
}

// Path: aria
class _TranslationsAriaTrTr extends TranslationsAriaEnUs {
	_TranslationsAriaTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' takip edilsin mi?'),
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' kullanıcı çevrim içi'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: ' tarafından Renotelandı'),
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' takipten çıkarılsın mı?'),
	]);
}

// Path: misskey
class _TranslationsMisskeyTrTr extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Türkçe';
	@override String get headlineMisskey => 'Notlarla birbirine bağlı bir ağ';
	@override String get introMisskey => 'Hoş geldiniz! Misskey, merkezi olmayan bir açık kaynaklı mikroblog platformudur.\n“Notlar” yazarak şu anda neler olduğunu anlatabilir veya olayları başkalarıyla paylaşabilirsiniz. 📡\n“Tepkiler” ile diğer kullanıcıların notları hakkındaki duygularınızı hızlı bir şekilde ifade edebilirsiniz. 👍\nYeni bir dünya sizi bekliyor! 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name}, açık kaynak platformu <b>Misskey</b> (kısaca “Misskey örneği” olarak anılır) tarafından desteklenen hizmetlerden biridir.';
	@override String monthAndDay({required Object day, required Object month}) => '${day}.${month}.';
	@override String get search => 'Ara';
	@override String get reset => 'Sıfırla';
	@override String get notifications => 'Bildirimler';
	@override String get username => 'Kullanıcı Adı';
	@override String get password => 'Şifre';
	@override String get initialPasswordForSetup => 'Kurulum için ilk şifre';
	@override String get initialPasswordIsIncorrect => 'Kurulum için ilk şifre yanlış';
	@override String get initialPasswordForSetupDescription => 'Misskey\'i kendiniz kurduysan, yapılandırma dosyasında belirtilen şifreyi kullan.\nMisskey barındırma hizmeti veya benzeri bir hizmet kullanıyorsan, orada belirtilen şifreyi kullan.\nŞifre belirlemediysen, devam etmek için boş bırak.';
	@override String get forgotPassword => 'Şifremi unuttum';
	@override String get fetchingAsApObject => 'Fediverse\'den talep ediliyor...';
	@override String get ok => 'Tamam';
	@override String get gotIt => 'Anladım!';
	@override String get cancel => 'Vazgeç';
	@override String get noThankYou => 'Hayır, teşekkürler.';
	@override String get enterUsername => 'Kullanıcı adı gir';
	@override String renotedBy({required Object user}) => '${user} renote etti';
	@override String get noNotes => 'Not yok';
	@override String get noNotifications => 'Bildirim yok';
	@override String get instance => 'Sunucu';
	@override String get settings => 'Ayarlar';
	@override String get notificationSettings => 'Bildirim Ayarları';
	@override String get basicSettings => 'Temel Ayarlar';
	@override String get otherSettings => 'Diğer Ayarlar';
	@override String get openInWindow => 'Pencerede aç';
	@override String get profile => 'Profil';
	@override String get timeline => 'Pano';
	@override String get noAccountDescription => 'Bu kullanıcı henüz biyografisini yazmamış.';
	@override String get login => 'Oturum Aç';
	@override String get loggingIn => 'Giriş Yapılıyor...';
	@override String get logout => 'Çıkış Yap';
	@override String get signup => 'Kaydol';
	@override String get uploading => 'Yükleniyor...';
	@override String get save => 'Kaydet';
	@override String get users => 'Kullanıcılar';
	@override String get addUser => 'Kullanıcı ekle';
	@override String get favorite => 'Favori';
	@override String get favorites => 'Favoriler';
	@override String get unfavorite => 'Favoriden kaldır';
	@override String get favorited => 'Favoriye eklendi.';
	@override String get alreadyFavorited => 'Zaten favoride';
	@override String get cantFavorite => 'Favoriye eklenemedi';
	@override String get pin => 'Profiline sabitle';
	@override String get unpin => 'Profilden sabitlemeyi kaldır';
	@override String get copyContent => 'İçeriği kopyala';
	@override String get copyLink => 'Link kopyala';
	@override String get copyRemoteLink => 'Uzak linki kopyala';
	@override String get copyLinkRenote => 'Renote linkini kopyala';
	@override String get delete => 'Sil';
	@override String get deleteAndEdit => 'Sil ve yeniden düzenle';
	@override String get deleteAndEditConfirm => 'Bu notu silip yeniden düzenlemek ister misin? Bu notla ilgili tüm Tepki, Renote ve Yanıtlar da silinecek.';
	@override String get addToList => 'Listeye ekle';
	@override String get addToAntenna => 'Anten\'e ekle';
	@override String get sendMessage => 'Mesaj gönder';
	@override String get copyRSS => 'RSS kopyala';
	@override String get copyUsername => 'Kullanıcı adını kopyala';
	@override String get copyUserId => 'Kullanıcı ID\'yi kopyala';
	@override String get copyNoteId => 'Not ID\'yi kopyala';
	@override String get copyFileId => 'Dosya ID\'yi kopyala';
	@override String get copyFolderId => 'Klasör ID\'yi kopyala';
	@override String get copyProfileUrl => 'Profil URL kopyala';
	@override String get searchUser => 'Kullanıcı ara';
	@override String get searchThisUsersNotes => 'Kullanıcının notlarını ara';
	@override String get reply => 'Yanıtla';
	@override String get loadMore => 'Daha fazla yükle';
	@override String get showMore => 'Daha fazlasını göster';
	@override String get showLess => 'Kapat';
	@override String get youGotNewFollower => 'seni takip etti';
	@override String get receiveFollowRequest => 'Takip isteği alındı';
	@override String get followRequestAccepted => 'Takip isteği kabul edildi';
	@override String get mention => 'Bahset';
	@override String get mentions => 'Bahsetmeler';
	@override String get directNotes => 'Doğrudan notlar';
	@override String get importAndExport => 'İçeri/Dışarı aktar';
	@override String get import => 'İçeri aktar';
	@override String get export => 'Dışa aktar';
	@override String get files => 'Dosyalar';
	@override String get download => 'İndir';
	@override String driveFileDeleteConfirm({required Object name}) => '“${name}” dosyasını silmek istediğinden emin misin? Bu dosyaya ekli tüm notlar da silinecek.';
	@override String unfollowConfirm({required Object name}) => '${name} kullanıcısını cidden takipden çıkmak istiyor musun?';
	@override String cancelFollowRequestConfirm({required Object name}) => '${name} adlı kişiye gönderdiğiniz takip isteğini iptal etmek ister misiniz?';
	@override String rejectFollowRequestConfirm({required Object name}) => '${name} adlı kullanıcının takip isteğini reddetmek istiyor musunuz?';
	@override String get exportRequested => 'Dışa aktarma işlemi talep ettin. Bu işlem biraz zaman alabilir. İşlem tamamlandığında Drive\'ına eklenecek.';
	@override String get importRequested => 'İçe aktarma talebinde bulundun. Bu işlem biraz zaman alabilir.';
	@override String get lists => 'Listeler';
	@override String get noLists => 'Hiç liste yok';
	@override String get note => 'Not';
	@override String get notes => 'Notlar';
	@override String get following => 'Takip';
	@override String get followers => 'Takipçi';
	@override String get followsYou => 'Sizi takip ediyor';
	@override String get createList => 'Liste oluştur';
	@override String get manageLists => 'Listeleri yönet';
	@override String get error => 'Hata';
	@override String get somethingHappened => 'Bir hata oluştu';
	@override String get retry => 'Tekrar dene';
	@override String get pageLoadError => 'Sayfa yüklenirken bir hata oluştu.';
	@override String get pageLoadErrorDescription => 'Bu durum genellikle ağ hataları veya tarayıcının önbelleği nedeniyle oluşur. Önbelleği temizleyin ve bir süre bekledikten sonra tekrar dene.';
	@override String get serverIsDead => 'Bu sunucu yanıt vermiyor. Lütfen bir süre bekleyin ve tekrar dene.';
	@override String get youShouldUpgradeClient => 'Bu sayfayı görüntülemek için lütfen yenileyerek istemcini güncelle.';
	@override String get enterListName => 'Listeye bir ad girin';
	@override String get privacy => 'Gizlilik';
	@override String get makeFollowManuallyApprove => 'Takip istekleri onay gerektirir';
	@override String get defaultNoteVisibility => 'Varsayılan görünürlük';
	@override String get follow => 'Takip et';
	@override String get followRequest => 'Takip isteği gönder';
	@override String get followRequests => 'Takip istekleri';
	@override String get unfollow => 'Takibi bırak';
	@override String get followRequestPending => 'Takip isteği beklemede';
	@override String get enterEmoji => 'Bir emoji gir';
	@override String get renote => 'Renote';
	@override String get unrenote => 'Renote geri al';
	@override String get renoted => 'Renote yapıldı.';
	@override String renotedToX({required Object name}) => '${name} adresine Renote';
	@override String get cantRenote => 'Bu not renote edilemez.';
	@override String get cantReRenote => 'Renote yeniden Renote edilemez.';
	@override String get quote => 'Alıntı';
	@override String get inChannelRenote => 'Kanal içi renote';
	@override String get inChannelQuote => 'Kanal içi alıntı';
	@override String get renoteToChannel => 'Kanala Renote';
	@override String get renoteToOtherChannel => 'Diğer kanala Renote\n';
	@override String get pinnedNote => 'Sabit not';
	@override String get pinned => 'Profiline sabitle';
	@override String get you => 'Sen';
	@override String get clickToShow => 'Göstermek için tıklayın';
	@override String get sensitive => 'Hassas';
	@override String get add => 'Ekle';
	@override String get reaction => 'Tepki';
	@override String get reactions => 'Tepkiler';
	@override String get emojiPicker => 'Emoji seçici';
	@override String get pinnedEmojisForReactionSettingDescription => 'Tepki verirken sabitlenecek ve görüntülenecek emojileri ayarlayın.';
	@override String get pinnedEmojisSettingDescription => 'Emoji seçiciyi görüntülerken sabitlenecek ve görüntülenecek emojileri ayarlayın';
	@override String get emojiPickerDisplay => 'Emoji seçici ekranı';
	@override String get overwriteFromPinnedEmojisForReaction => 'Tepki ayarlarından geçersiz kılma';
	@override String get overwriteFromPinnedEmojis => 'Genel ayarlardan geçersiz kılma';
	@override String get reactionSettingDescription2 => 'Sıralamayı değiştirmek için sürükle, silmek için tıkla, eklemek için “+” tuşuna bas.';
	@override String get rememberNoteVisibility => 'Not görünürlük ayarlarını hatırla';
	@override String get attachCancel => 'Eki kaldır';
	@override String get deleteFile => 'Dosyayı sil';
	@override String get markAsSensitive => 'Hassas içerik olarak işaretle';
	@override String get unmarkAsSensitive => 'Hassas içerik işaretini kaldır';
	@override String get enterFileName => 'Dosya ismini gir';
	@override String get mute => 'Gizle';
	@override String get unmute => 'sesi aç';
	@override String get renoteMute => 'sesi kapat';
	@override String get renoteUnmute => 'Renote sessiz modunu kaldır';
	@override String get block => 'engelle';
	@override String get unblock => 'engellemeyi kaldır';
	@override String get suspend => 'askıya al';
	@override String get unsuspend => 'askıya almayı kaldır';
	@override String get blockConfirm => 'Engeli onayla';
	@override String get unblockConfirm => 'Engel kaldırmayı onayla';
	@override String get suspendConfirm => 'Hesap askıya alınsın mı?';
	@override String get unsuspendConfirm => 'Hesap askıdan kaldırılsın mı?';
	@override String get selectList => 'Bir liste seç';
	@override String get editList => 'Listeyi düzenle';
	@override String get selectChannel => 'Kanal seç';
	@override String get selectAntenna => 'Bir anten seç';
	@override String get editAntenna => 'Anteni düzenle';
	@override String get createAntenna => 'Bir anten oluşturun';
	@override String get selectWidget => 'Araç seç';
	@override String get editWidgets => 'Araçları düzenle';
	@override String get editWidgetsExit => 'Tamam';
	@override String get customEmojis => 'Özel Emoji';
	@override String get emoji => 'Emoji';
	@override String get emojis => 'Emoji';
	@override String get emojiName => 'Emoji adı';
	@override String get emojiUrl => 'Emoji URL\'si';
	@override String get addEmoji => 'Emoji ekle';
	@override String get settingGuide => 'Önerilen ayarlar';
	@override String get cacheRemoteFiles => 'Uzak dosyalar ön belleğe alınsın';
	@override String get cacheRemoteFilesDescription => 'Bu ayar açık olduğunda diğer sitelerin dosyaları doğrudan uzak sunucudan yüklenece. Bu ayarı kapatmak depolama kullanımını azaltacak ama küçük resimler oluşturulmadığından trafiği arttıracak.';
	@override String get youCanCleanRemoteFilesCache => 'Dosya yönetimi görünümünde 🗑️ düğmesine tıklayarak önbelleği temizleyebilirsin.';
	@override String get cacheRemoteSensitiveFiles => 'Hassas uzak dosyalar ön belleğe alınsın';
	@override String get cacheRemoteSensitiveFilesDescription => 'Bu ayar kapalı olduğunda hassas uzak dosyalar ön belleğe alınmadan doğrudan uzak sunucudan yüklenecek.';
	@override String get flagAsBot => 'Bot olarak işaretle';
	@override String get flagAsBotDescription => 'Bu hesap bir program tarafından kontrol ediliyorsa bu seçeneği etkinleştir. Etkinleştirildiğinde, diğer geliştiriciler için bir işaret görevi görerek diğer botlarla sonsuz etkileşim zincirlerini önleyecek ve Misskey\'in iç sistemlerini bu hesabı bir bot olarak ele alacak şekilde ayarlayacak.';
	@override String get flagAsCat => 'Kedi hesabı';
	@override String get flagAsCatDescription => 'Kedi hesabı';
	@override String get flagShowTimelineReplies => 'Pano\'da notlara gelen cevapları göster';
	@override String get flagShowTimelineRepliesDescription => 'Açık olduğu durumda, Pano\'da kullanıcıların başkalarına verdiği cevaplar gözükür.';
	@override String get autoAcceptFollowed => 'Takip edilen hesapların takip isteklerini kabul et';
	@override String get addAccount => 'Hesap ekle';
	@override String get reloadAccountsList => 'Hesap listesini güncelle';
	@override String get loginFailed => 'Giriş başarısız oldu';
	@override String get showOnRemote => 'Uzak sunucuda görüntüle';
	@override String get continueOnRemote => 'Uzak bir sunucuda devam edin';
	@override String get chooseServerOnMisskeyHub => 'Misskey Hub\'dan bir sunucu seçin.';
	@override String get specifyServerHost => 'Doğrudan bir sunucu ana bilgisayarı belirtin';
	@override String get inputHostName => 'Alan adını girin';
	@override String get general => 'Genel';
	@override String get wallpaper => 'Duvar kağıdı';
	@override String get setWallpaper => 'Duvar kağıdını ayarla';
	@override String get removeWallpaper => 'Duvar kağıdını kaldır';
	@override String searchWith({required Object q}) => 'Ara: ${q}';
	@override String get youHaveNoLists => 'Hiç listeniz yok.';
	@override String followConfirm({required Object name}) => '${name} kullanıcısını takip etmek istediğinden emin misin?';
	@override String get proxyAccount => 'Proxy hesabı';
	@override String get proxyAccountDescription => 'Proxy hesabı, belirli koşullar altında kullanıcılar için uzaktan takipçi görevi gören bir hesap. Örneğin, bir kullanıcı listeye uzaktan bir kullanıcı eklediğinde, o kullanıcıyı takip eden yerel kullanıcı yoksa uzaktan kullanıcının etkinliği örneğe iletilmez, bunun yerine proxy hesabı takip eder.';
	@override String get host => 'Host';
	@override String get selectSelf => 'Kendimi seç';
	@override String get selectUser => 'Kullanıcı seç';
	@override String get recipient => 'Alıcı';
	@override String get annotation => 'Yorumlar';
	@override String get federation => 'Federasyon';
	@override String get instances => 'Sunucular';
	@override String get registeredAt => 'Kayıtlı';
	@override String get latestRequestReceivedAt => 'Son talep alındı';
	@override String get latestStatus => 'Son durum';
	@override String get storageUsage => 'Depolama kullanımı';
	@override String get charts => 'Grafikler';
	@override String get perHour => 'Saatlik';
	@override String get perDay => 'Günlük';
	@override String get stopActivityDelivery => 'Etkinlik göndermeyi durdur';
	@override String get blockThisInstance => 'Bu sunucuyu engelle';
	@override String get silenceThisInstance => 'Bu sunucuyu sustur';
	@override String get mediaSilenceThisInstance => 'Medya bu sunucuyu sustursun';
	@override String get operations => 'Operasyonlar';
	@override String get software => 'Yazılım';
	@override String get softwareName => 'Yazılım';
	@override String get version => 'Sürüm';
	@override String get metadata => 'Meta veri';
	@override String withNFiles({required Object n}) => '${n} dosya';
	@override String get monitor => 'Monitör';
	@override String get jobQueue => 'İşlem sırası';
	@override String get cpuAndMemory => 'CPU ve Bellek';
	@override String get network => 'Ağ';
	@override String get disk => 'Disk';
	@override String get instanceInfo => 'Sunucu Bilgisi';
	@override String get statistics => 'İstatistikler';
	@override String get clearQueue => 'Kuyruğu temizle';
	@override String get clearQueueConfirmTitle => 'Kuyruğu silmek istediğinden emin misin?';
	@override String get clearQueueConfirmText => 'Kuyrukta kalan teslim edilmemiş notlar birleştirilmeyecek. Genellikle bu işlem gerekli değildir.';
	@override String get clearCachedFiles => 'Önbelleği temizle';
	@override String get clearCachedFilesConfirm => 'Tüm önbelleğe alınmış uzak dosyaları silmek istediğinden emin misin?';
	@override String get blockedInstances => 'Engellenen Sunucu';
	@override String get blockedInstancesDescription => 'Engellemek istediğin sunucuların ana bilgisayar adlarını satır sonlarıyla ayırarak liste. Listelenen örnekler artık bu örnekle iletişim kuramayacaktır.';
	@override String get silencedInstances => 'Susturulmuş sunucular';
	@override String get silencedInstancesDescription => 'Sessize almak istediğin sunucuların ana bilgisayar adlarını yeni bir satırla ayırarak listele. Listelenen sunuculara ait tüm hesaplar sessize alınmış olarak kabul edilecek ve yalnızca takip isteklerinde bulunabilecek, takip edilmedikleri takdirde yerel hesapları etiketleyemeyeceklerdir. Bu, engellenen sunucuları etkilemeyecek.';
	@override String get mediaSilencedInstances => 'Medya susturulmuş sunucular';
	@override String get mediaSilencedInstancesDescription => 'Medya sessize almak istediğin sunucuların ana bilgisayar adlarını yeni bir satırla ayırarak liste. Listelenen sunuculara ait tüm hesaplar hassas hesap olarak değerlendirilecek ve özel emojiler kullanılamayacaktır. Bu durum, engellenen sunucuları etkilemeyecek.';
	@override String get federationAllowedHosts => 'Federasyona izin verilen sunucular';
	@override String get federationAllowedHostsDescription => 'Federasyona izin vermek istediğiniz sunucuların ana bilgisayar adlarını satır sonlarıyla ayırın.';
	@override String get muteAndBlock => 'Sessize Alma ve Engelleme';
	@override String get mutedUsers => 'Sessize alınan kullanıcılar';
	@override String get blockedUsers => 'Engellenen kullanıcılar';
	@override String get noUsers => 'Kullanıcı yok';
	@override String get editProfile => 'Profili düzenle';
	@override String get noteDeleteConfirm => 'Bu notu silmek istediğinden emin misin?';
	@override String get pinLimitExceeded => 'Artık daha fazla not sabitleyemezsin';
	@override String get done => 'Tamam';
	@override String get processing => 'İşleniyor...';
	@override String get preprocessing => 'Hazırlık aşamasında';
	@override String get preview => 'Önizleme';
	@override String get default_ => 'Varsayılan';
	@override String defaultValueIs({required Object value}) => 'Varsayılan: ${value}';
	@override String get noCustomEmojis => 'Emoji yok';
	@override String get noJobs => 'Hiç ş yok';
	@override String get federating => 'Birleştirme';
	@override String get blocked => 'Engellenmiş';
	@override String get suspended => 'Askıya alınmış';
	@override String get all => 'Tümü';
	@override String get subscribing => 'Abonelik';
	@override String get publishing => 'Paylaşım';
	@override String get notResponding => 'Yanıt vermiyor';
	@override String get instanceFollowing => 'Sunucuda takip';
	@override String get instanceFollowers => 'Sunucu takipçileri';
	@override String get instanceUsers => 'Bu sunucunun kullanıcıları';
	@override String get changePassword => 'Şifreyi değiştir';
	@override String get security => 'Güvenlik';
	@override String get retypedNotMatch => 'Girişler eşleşmiyor.';
	@override String get currentPassword => 'Mevcut şifre';
	@override String get newPassword => 'Yeni şifre';
	@override String get newPasswordRetype => 'Yeni şifreyi tekrar girin';
	@override String get attachFile => 'Dosyaları ekle';
	@override String get more => 'Daha fazlası!';
	@override String get featured => 'Öne çıkan';
	@override String get usernameOrUserId => 'Kullanıcı adı veya ID';
	@override String get noSuchUser => 'Kullanıcı bulunamadı';
	@override String get lookup => 'Sorgu';
	@override String get announcements => 'Duyurular';
	@override String get imageUrl => 'Görsel URL';
	@override String get remove => 'Sil';
	@override String get removed => 'Silindi';
	@override String removeAreYouSure({required Object x}) => '“${x}” öğesini kaldırmak istediğinizden emin misin?';
	@override String deleteAreYouSure({required Object x}) => '“${x}” öğesini silmek istediğinizden emin misin?';
	@override String get resetAreYouSure => 'Cidden sıfırlansın mı?';
	@override String get areYouSure => 'Emin misin?';
	@override String get saved => 'Kaydedildi';
	@override String get upload => 'Yükle';
	@override String get keepOriginalUploading => 'Orijinal görüntüyü koru';
	@override String get keepOriginalUploadingDescription => 'Orijinal olarak yüklenen görüntüyü olduğu gibi kaydeder. Kapalıysa, yükleme sırasında web\'de görüntülenecek bir sürüm oluşturulur.';
	@override String get fromDrive => 'Drive\'den';
	@override String get fromUrl => 'URL\'den';
	@override String get uploadFromUrl => 'URL\'den yükle';
	@override String get uploadFromUrlDescription => 'Yüklemek istediğiniz dosyanın URL\'si';
	@override String get uploadFromUrlRequested => 'Yükleme istendi';
	@override String get uploadFromUrlMayTakeTime => 'Yükleme işleminin tamamlanması biraz zaman alabilir.';
	@override String uploadNFiles({required Object n}) => '${n} dosya yükle';
	@override String get explore => 'Keşfet';
	@override String get messageRead => 'Oku';
	@override String get readAllChatMessages => 'Tüm mesajları okundu olarak işaretle';
	@override String get noMoreHistory => 'Daha fazla geçmiş bilgisi yok.';
	@override String get startChat => 'Sohbete başla';
	@override String nUsersRead({required Object n}) => '${n} tarafından okundu';
	@override String agreeTo({required Object x0}) => '${x0}\'ı kabul ediyorum.';
	@override String get agree => 'Kabul ediyorum';
	@override String get agreeBelow => 'Aşağıdakileri kabul ediyorum';
	@override String get basicNotesBeforeCreateAccount => 'Önemli notlar';
	@override String get termsOfService => 'Hizmet Şartları';
	@override String get start => 'Başla';
	@override String get home => 'Pano';
	@override String get remoteUserCaution => 'Bu kullanıcı uzak bir sunucudan geldiği için, gösterilen bilgiler eksik olabilir.';
	@override String get activity => 'Etkinlik';
	@override String get images => 'Görseller';
	@override String get image => 'Görsel';
	@override String get birthday => 'Doğum günü';
	@override String yearsOld({required Object age}) => '${age} yaşında';
	@override String get registeredDate => 'Katılma tarihi';
	@override String get location => 'Konum';
	@override String get theme => 'Tema';
	@override String get themeForLightMode => 'Aydınlık Mod\'da kullanılacak tema';
	@override String get themeForDarkMode => 'Karanlık Mod\'da kullanılacak tema';
	@override String get light => 'Aydınlık';
	@override String get dark => 'Karanlık';
	@override String get lightThemes => 'Aydınlık temalar';
	@override String get darkThemes => 'Karanlık temalar';
	@override String get syncDeviceDarkMode => 'Karanlık Modu cihaz ayarlarınızla senkronize et';
	@override String switchDarkModeManuallyWhenSyncEnabledConfirm({required Object x}) => '"${x}" açık. Senkronizasyonu kapatıp modları manuel olarak değiştirmek ister misin?';
	@override String get drive => 'Drive';
	@override String get fileName => 'Dosya adı';
	@override String get selectFile => 'Dosya seçin';
	@override String get selectFiles => 'Dosyaları seçin';
	@override String get selectFolder => 'Klasör seçin';
	@override String get unselectFolder => 'Klasör seçimini kaldır';
	@override String get selectFolders => 'Klasörleri seçin';
	@override String get fileNotSelected => 'Hiç dosya seçilmedi';
	@override String get renameFile => 'Dosyayı yeniden adlandır';
	@override String get folderName => 'Klasör adı';
	@override String get createFolder => 'Bir klasör oluşturun';
	@override String get renameFolder => 'Bu klasörü yeniden adlandır';
	@override String get deleteFolder => 'Bu klasörü sil';
	@override String get folder => 'Dosya';
	@override String get addFile => 'Bir dosya ekle';
	@override String get showFile => 'Dosyaları göster';
	@override String get emptyDrive => 'Drive boş';
	@override String get emptyFolder => 'Bu klasör boş';
	@override String get dropHereToUpload => 'Yüklemek için dosyalarınızı buraya sürükleyin.';
	@override String get unableToDelete => 'Silinemiyor';
	@override String get inputNewFileName => 'Yeni bir dosya adı girin';
	@override String get inputNewDescription => 'Yeni alternatif metin girin';
	@override String get inputNewFolderName => 'Yeni bir klasör adı girin';
	@override String get circularReferenceFolder => 'Hedef klasör, taşımak istediğiniz klasörün bir alt klasörü.';
	@override String get hasChildFilesOrFolders => 'Bu klasör boş olmadığı için silinemez.';
	@override String get copyUrl => 'URL kopyala';
	@override String get rename => 'Yeniden adlandır';
	@override String get avatar => 'Avatar';
	@override String get banner => 'Banner';
	@override String get displayOfSensitiveMedia => 'Hassas ortamların görüntülenmesi';
	@override String get whenServerDisconnected => 'Sunucu ile bağlantı kesildiğinde';
	@override String get disconnectedFromServer => 'Sunucu bağlantısı kesildi';
	@override String get reload => 'Yenile';
	@override String get doNothing => 'Yoksay';
	@override String get reloadConfirm => 'Panoyu yenilemek ister misin?';
	@override String get watch => 'İzle';
	@override String get unwatch => 'İzlemeyi bırak';
	@override String get accept => 'Kabul et';
	@override String get reject => 'Reddet';
	@override String get normal => 'Normal';
	@override String get instanceName => 'Sunucu adı';
	@override String get instanceDescription => 'Sunucu açıklaması';
	@override String get maintainerName => 'Bakım sorumlusu';
	@override String get maintainerEmail => 'Bakım sorumlusu E-Posta adresi';
	@override String get tosUrl => 'Hizmet Şartları URL\'si';
	@override String get thisYear => 'Yıl';
	@override String get thisMonth => 'Ay';
	@override String get today => 'Bugün';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => '${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'Sayfalar';
	@override String get integration => 'Entegrasyon';
	@override String get connectService => 'Bağlan';
	@override String get disconnectService => 'Bağlantıyı kes';
	@override String get enableLocalTimeline => 'Yerel Pano\'yu etkinleştir';
	@override String get enableGlobalTimeline => 'Global Pano\'yu etkinleştir';
	@override String get disablingTimelinesInfo => 'Yöneticiler ve Moderatörler, etkinleştirilmemiş olsalar bile her zaman tüm Pano\'ya erişebilecekler.';
	@override String get registration => 'Kaydol';
	@override String get invite => 'Davet et';
	@override String get driveCapacityPerLocalAccount => 'Yerel kullanıcı başına Drive kapasitesi';
	@override String get driveCapacityPerRemoteAccount => 'Uzak kullanıcı başına Drive kapasitesi';
	@override String get inMb => 'Megabayt cinsinden';
	@override String get bannerUrl => 'Banner görseli URL';
	@override String get backgroundImageUrl => 'Arka plan görseli URL';
	@override String get basicInfo => 'Temel bilgiler';
	@override String get pinnedUsers => 'Sabitlenmiş kullanıcılar';
	@override String get pinnedUsersDescription => '“Keşfet” sekmesinde sabitlenecek kullanıcı adlarını satır sonlarıyla ayırarak liste.';
	@override String get pinnedPages => 'Sabitlenmiş Sayfalar';
	@override String get pinnedPagesDescription => 'Bu örneğin üst sayfasına sabitlemek istediğin Sayfaların yollarını satır sonlarıyla ayırarak gir.';
	@override String get pinnedClipId => 'Sabitlenecek klibin ID';
	@override String get pinnedNotes => 'Sabitlenmiş notlar';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'hCaptcha etkinleştir';
	@override String get hcaptchaSiteKey => 'Site anahtar';
	@override String get hcaptchaSecretKey => 'Gizli anahtar';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => 'mCaptcha etkinleştir';
	@override String get mcaptchaSiteKey => 'Site anahtarı';
	@override String get mcaptchaSecretKey => 'Gizli anahtar';
	@override String get mcaptchaInstanceUrl => 'mCaptcha sunucu URL\'si';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'reCAPTCHA etkinleştir';
	@override String get recaptchaSiteKey => 'Site anahtar';
	@override String get recaptchaSecretKey => 'Gizli anahtar';
	@override String get turnstile => 'Turnstile';
	@override String get enableTurnstile => 'Turnstile etkinleştir';
	@override String get turnstileSiteKey => 'Site anahtar';
	@override String get turnstileSecretKey => 'Gizli anahtar';
	@override String get avoidMultiCaptchaConfirm => 'Birden fazla Captcha sistemi kullanmak, aralarında çakışmaya neden olabilir. Şu anda etkin olan diğer Captcha sistemlerini devre dışı bırakmak ister misiniz? Etkin kalmalarını istiyorsan, iptal düğmesine bas.';
	@override String get antennas => 'Antenler';
	@override String get manageAntennas => 'Antenleri Yönet';
	@override String get name => 'İsim';
	@override String get antennaSource => 'Anten kaynağı';
	@override String get antennaKeywords => 'Dinlenecek anahtar kelimeler';
	@override String get antennaExcludeKeywords => 'Hariç tutulacak anahtar kelimeler';
	@override String get antennaExcludeBots => 'Bot hesaplarını hariç tut';
	@override String get antennaKeywordsDescription => 'VE koşulu için boşluklarla, VEYA koşulu için satır sonlarıyla ayırın.';
	@override String get notifyAntenna => 'Yeni notlar hakkında bildirimde bulunun';
	@override String get withFileAntenna => 'Sadece dosyalı notlar';
	@override String get excludeNotesInSensitiveChannel => 'Hassas kanallardan gelen notları hariç tutun';
	@override String get enableServiceworker => 'Tarayıcınız için Push Bildirimlerini Etkinleştir';
	@override String get antennaUsersDescription => 'Satır başına bir kullanıcı adı listele';
	@override String get caseSensitive => 'Harfe duyarlı';
	@override String get withReplies => 'Yanıtları ekle';
	@override String get connectedTo => 'Aşağıdaki hesap(lar) bağlı';
	@override String get notesAndReplies => 'Notlar ve yanıtlar';
	@override String get withFiles => 'Dosyalar dahil';
	@override String get silence => 'Sessize al';
	@override String get silenceConfirm => 'Bu kullanıcıyı susturmak istediğinden emin misin?';
	@override String get unsilence => 'Sessize almayı geri al';
	@override String get unsilenceConfirm => 'Bu kullanıcının sessize alınmasını geri almak istediğinden emin misin?';
	@override String get popularUsers => 'Popüler kullanıcılar';
	@override String get recentlyUpdatedUsers => 'Son zamanlarda aktif olan kullanıcılar';
	@override String get recentlyRegisteredUsers => 'Yeni katılan kullanıcılar';
	@override String get recentlyDiscoveredUsers => 'Yeni keşfedilen kullanıcılar';
	@override String exploreUsersCount({required Object count}) => '${count} kullanıcı var';
	@override String get exploreFediverse => 'Fediverse\'i keşfedin';
	@override String get popularTags => 'Popüler etiketler';
	@override String get userList => 'Listeler';
	@override String get about => 'Hakkında';
	@override String get aboutMisskey => 'Misskey Hakkında';
	@override String get administrator => 'Yönetici';
	@override String get token => 'Token';
	@override String get x2fa => 'İki faktörlü kimlik doğrulama';
	@override String get setupOf2fa => 'İki faktörlü kimlik doğrulamayı ayarlayın';
	@override String get totp => 'Authenticator Uygulaması';
	@override String get totpDescription => 'Tek seferlik şifreleri girmek için bir kimlik doğrulama uygulaması kullanın';
	@override String get moderator => 'Moderatör';
	@override String get moderation => 'Moderasyon';
	@override String get moderationNote => 'Moderasyon notu';
	@override String get moderationNoteDescription => 'Moderatörler arasında paylaşılacak notları girebilirsin.';
	@override String get addModerationNote => 'Moderasyon notu ekle';
	@override String get moderationLogs => 'Moderasyon günlükleri';
	@override String nUsersMentioned({required Object n}) => '${n} kullanıcı bahsetti';
	@override String get securityKeyAndPasskey => 'Güvenlik ve geçiş anahtarları';
	@override String get securityKey => 'Güvenlik anahtarı';
	@override String get lastUsed => 'Son kullanılan';
	@override String lastUsedAt({required Object t}) => 'Son kullanım: ${t}';
	@override String get unregister => 'Kayıttan çık';
	@override String get passwordLessLogin => 'Şifresiz giriş';
	@override String get passwordLessLoginDescription => 'Yalnızca güvenlik anahtarı veya şifre anahtarı kullanarak şifresiz oturum açmaya izin verir.';
	@override String get resetPassword => 'Şifreyi sıfırla';
	@override String newPasswordIs({required Object password}) => 'Yeni şifre "${password}"';
	@override String get reduceUiAnimation => 'UI animasyonlarını azaltın.';
	@override String get share => 'Paylaş';
	@override String get notFound => 'Bulunamadı';
	@override String get notFoundDescription => 'Bu URL\'ye karşılık gelen sayfa bulunamadı.';
	@override String get uploadFolder => 'Yüklemeler için varsayılan klasör';
	@override String get markAsReadAllNotifications => 'Tüm bildirimleri okundu olarak işaretle';
	@override String get markAsReadAllUnreadNotes => 'Tüm notları okundu olarak işaretle';
	@override String get markAsReadAllTalkMessages => 'Tüm mesajları okundu olarak işaretle';
	@override String get help => 'Yardım';
	@override String get inputMessageHere => 'Mesajınızı buraya girin';
	@override String get close => 'Kapat';
	@override String get invites => 'Davetler';
	@override String get members => 'Üyeler';
	@override String get transfer => 'Transfer';
	@override String get title => 'Başlık';
	@override String get text => 'Metin';
	@override String get enable => 'Etkin';
	@override String get next => 'Sonraki';
	@override String get retype => 'Tekrar girin';
	@override String noteOf({required Object user}) => '${user} not\'u';
	@override String get quoteAttached => 'Alıntı';
	@override String get quoteQuestion => 'Alıntı olarak ekle?';
	@override String get attachAsFileQuestion => 'Panodaki metin uzun. Metin dosyası olarak eklemek ister misin?';
	@override String get onlyOneFileCanBeAttached => 'Bir mesaja yalnızca bir dosya ekleyebilirsin.';
	@override String get signinRequired => 'Devam etmeden önce lütfen kayıt olun veya giriş yapın.';
	@override String get signinOrContinueOnRemote => 'Devam etmek için sunucunuzu taşıyın veya bu sunucuya kaydolun / giriş yapın.';
	@override String get invitations => 'Davetler';
	@override String get invitationCode => 'Davet kodu';
	@override String get checking => 'Kontrol ediliyor...';
	@override String get available => 'Kullanılabilir';
	@override String get unavailable => 'Kullanılamaz';
	@override String get usernameInvalidFormat => 'Büyük ve küçük harfler, rakamlar ve alt çizgi kullanabilirsin. (a~z、A~Z、0~9)';
	@override String get tooShort => 'Çok kısa';
	@override String get tooLong => 'Çok uzun';
	@override String get weakPassword => 'Zayıf şifre';
	@override String get normalPassword => 'Ortalama şifre';
	@override String get strongPassword => 'Güçlü şifre';
	@override String get passwordMatched => 'Eşleşti';
	@override String get passwordNotMatched => 'Eşleşmedi';
	@override String signinWith({required Object x}) => '${x} ile giriş yapın';
	@override String get signinFailed => 'Giriş yapılamıyor. Girilen kullanıcı adı veya şifre yanlış.';
	@override String get or => 'veya';
	@override String get language => 'Dil';
	@override String get uiLanguage => 'Kullanıcı arayüzü dili';
	@override String aboutX({required Object x}) => '${x} hakkında';
	@override String get emojiStyle => 'Emoji stili';
	@override String get native => 'Yerli';
	@override String get menuStyle => 'Menü stili';
	@override String get style => 'Stil';
	@override String get drawer => 'Çekmece';
	@override String get popup => 'Pop-up';
	@override String get showNoteActionsOnlyHover => 'Not eylemlerini yalnızca üzerine gelindiğinde göster';
	@override String get showReactionsCount => 'Notlardaki tepki sayısını gör';
	@override String get noHistory => 'Geçmiş mevcut değil';
	@override String get signinHistory => 'Giriş geçmişi';
	@override String get enableAdvancedMfm => 'Gelişmiş MFM\'yi etkinleştir';
	@override String get enableAnimatedMfm => 'Animasyonlu MFM\'yi etkinleştir';
	@override String get doing => 'İşleniyor...';
	@override String get category => 'Kategori';
	@override String get tags => 'Takma adlar';
	@override String get docSource => 'Bu belgenin kaynağı';
	@override String get createAccount => 'Hesap oluştur';
	@override String get existingAccount => 'Mevcut hesap';
	@override String get regenerate => 'Yeniden oluştur';
	@override String get fontSize => 'Yazı tipi boyutu';
	@override String get mediaListWithOneImageAppearance => 'Tek bir resim içeren medya listelerinin yüksekliği';
	@override String limitTo({required Object x}) => '${x} ile sınırlandır';
	@override String get showMediaListByGridInWideArea => 'Ekran genişliği geniş olduğunda, medya listesi yatay olarak görüntülenecektir.';
	@override String get noFollowRequests => 'Bekleyen takip istekleri yok.';
	@override String get openImageInNewTab => 'Görüntüleri yeni sekmede aç';
	@override String get dashboard => 'Gösterge paneli';
	@override String get local => 'Yerel';
	@override String get remote => 'Uzak';
	@override String get total => 'Toplam';
	@override String get weekOverWeekChanges => 'Geçen haftadan beri yapılan değişiklikler';
	@override String get dayOverDayChanges => 'Dünkü değişiklikler';
	@override String get appearance => 'Görünüm';
	@override String get clientSettings => 'İstemci Ayarları';
	@override String get accountSettings => 'Hesap Ayarları';
	@override String get promotion => 'Tanıtım';
	@override String get promote => 'Tanıtıldı';
	@override String get numberOfDays => 'Gün sayısı';
	@override String get hideThisNote => 'Bu notu gizle';
	@override String get showFeaturedNotesInTimeline => 'Pano\'da öne çıkan notları göster';
	@override String get objectStorage => 'Nesne Depolama';
	@override String get useObjectStorage => 'Nesne depolamayı kullanın';
	@override String get objectStorageBaseUrl => 'Temel URL';
	@override String get objectStorageBaseUrlDesc => 'Referans olarak kullanılan URL. CDN veya Proxy kullanıyorsanız, bunların URL\'sini belirtin.\nS3 için ‘https://<bucket>.s3.amazonaws.com’ ve GCS veya eşdeğer hizmetler için ‘https://storage.googleapis.com/<bucket>’ vb. kullanın.';
	@override String get objectStorageBucket => 'Kova';
	@override String get objectStorageBucketDesc => 'Lütfen sağlayıcınızda kullanılan kova adını belirtin.';
	@override String get objectStoragePrefix => 'Ön ek';
	@override String get objectStoragePrefixDesc => 'Dosyalar bu öneke sahip dizinler altında saklanacaktır.';
	@override String get objectStorageEndpoint => 'Uç nokta';
	@override String get objectStorageEndpointDesc => 'AWS S3 kullanıyorsanız bu alanı boş bırakın, aksi takdirde kullandığınız hizmete bağlı olarak uç noktayı ‘<host>’ veya ‘<host>:<port>’ olarak belirtin.';
	@override String get objectStorageRegion => 'Bölge';
	@override String get objectStorageRegionDesc => '\'xx-east-1\' gibi bir bölge belirt. Hizmetin bölgeler arasında ayrım yapmıyorsa, ‘us-east-1’ girin. AWS yapılandırma dosyalarını veya ortam değişkenlerini kullanıyorsan boş bırak.';
	@override String get objectStorageUseSSL => 'SSL kullanın';
	@override String get objectStorageUseSSLDesc => 'API bağlantıları için HTTPS kullanmayacaksanız bunu kapatın.';
	@override String get objectStorageUseProxy => 'Proxy üzerinden bağlan';
	@override String get objectStorageUseProxyDesc => 'API bağlantıları için Proxy kullanmayacaksanız bunu kapatın.';
	@override String get objectStorageSetPublicRead => 'Yükleme sırasında "genel-okuma" ayarını yapın';
	@override String get s3ForcePathStyleDesc => 's3ForcePathStyle etkinleştirilirse, kova adı URL\'nin ana bilgisayar adı yerine URL yoluna eklenmelidir. Kendi kendine barındırılan bir Minio örneği gibi hizmetleri kullanırken bu ayarı etkinleştirmen gerekebilir.';
	@override String get serverLogs => 'Sunucu log kayıtları';
	@override String get deleteAll => 'Tümünü sil';
	@override String get showFixedPostForm => 'Gönderi formunu pano üstünde görüntüle';
	@override String get showFixedPostFormInChannel => 'Gönderi formunu pano üstünde görüntüle (Kanallar)';
	@override String get withRepliesByDefaultForNewlyFollowed => 'Yeni takip edilen kullanıcıların yanıtlarını varsayılan olarak panoya dahil et';
	@override String get newNoteRecived => 'Yeni Not\'lar var';
	@override String get newNote => 'Yeni Not';
	@override String get sounds => 'Sesler';
	@override String get sound => 'Ses';
	@override String get notificationSoundSettings => 'Bildirim sesi ayarları';
	@override String get listen => 'Dinle';
	@override String get none => 'Hiçbiri';
	@override String get showInPage => 'Sayfada göster';
	@override String get popout => 'Açılır pencere';
	@override String get volume => 'Ses hacmi';
	@override String get masterVolume => 'Ana ses seviyesi';
	@override String get notUseSound => 'Sesi kapat';
	@override String get useSoundOnlyWhenActive => 'Misskey etkin olduğunda ses çıkarılır.';
	@override String get details => 'Ayrıntılar';
	@override String get renoteDetails => 'Renote detayları';
	@override String get chooseEmoji => 'Bir emoji seçin';
	@override String get unableToProcess => 'İşlem tamamlanamadı.';
	@override String get recentUsed => 'Son kullanılan';
	@override String get install => 'Yükle';
	@override String get uninstall => 'Kaldır';
	@override String get installedApps => 'Yetkili Uygulamalar';
	@override String get nothing => 'Burada görülecek bir şey yok.';
	@override String get installedDate => 'Yetkili';
	@override String get lastUsedDate => 'En son kullanıldığı tarih';
	@override String get state => 'Durum';
	@override String get sort => 'Sıralama düzeni';
	@override String get ascendingOrder => 'Artan';
	@override String get descendingOrder => 'Azalan';
	@override String get scratchpad => 'Not defteri';
	@override String get scratchpadDescription => 'Scratchpad, AiScript deneyleri için bir ortam sağlar. Misskey ile etkileşim halindeyken yazabilir, çalıştırabilir ve sonuçlarını kontrol edebilirsin.';
	@override String get uiInspector => 'UI denetçisi';
	@override String get uiInspectorDescription => 'Bellekteki UI bileşeni sunucu listesini görebilirsin. UI bileşeni, Ui:C: işlevi tarafından oluşturulacak.';
	@override String get output => 'Çıktı';
	@override String get script => 'Script';
	@override String get disablePagesScript => 'Sayfalarda AiScript\'i devre dışı bırak';
	@override String get updateRemoteUser => 'Uzak kullanıcı bilgilerini güncelle';
	@override String get unsetUserAvatar => 'Avatar\'ı kaldır';
	@override String get unsetUserAvatarConfirm => 'Avatarı silmek istediğinden emin misin?';
	@override String get unsetUserBanner => 'Banner\'ı kaldır';
	@override String get unsetUserBannerConfirm => 'Banner\'ı kaldırmak istediğinden emin misin?';
	@override String get deleteAllFiles => 'Tüm dosyaları sil';
	@override String get deleteAllFilesConfirm => 'Tüm dosyaları silmek istediğinden emin misin?';
	@override String get removeAllFollowing => 'Takip ettiğin tüm kullanıcıları takipten çıkar';
	@override String removeAllFollowingDescription({required Object host}) => 'Bu komutu çalıştırmak, ${host} adresindeki tüm hesapları takipten çıkarır. Örneğin, sunucu artık mevcut değilse bu komutu çalıştırın.';
	@override String get userSuspended => 'Bu kullanıcı askıya alınmıştır.';
	@override String get userSilenced => 'Bu kullanıcı susturuluyor.';
	@override String get yourAccountSuspendedTitle => 'Bu hesap askıya alınmıştır.';
	@override String get yourAccountSuspendedDescription => 'Bu hesap, sunucunun hizmet şartlarını veya benzerlerini ihlal ettiği için askıya alınmıştır. Daha ayrıntılı bir neden öğrenmek istersen yöneticiyle iletişime geç. Lütfen yeni bir hesap oluşturma.';
	@override String get tokenRevoked => 'Geçersiz jeton';
	@override String get tokenRevokedDescription => 'Bu jetonun süresi doldu. Lütfen tekrar giriş yapın.';
	@override String get accountDeleted => 'Hesap silindi';
	@override String get accountDeletedDescription => 'Bu hesap silinmiş.';
	@override String get menu => 'Menü';
	@override String get divider => 'Bölücü';
	@override String get addItem => 'Öğe Ekle';
	@override String get rearrange => 'Yeniden düzenle';
	@override String get relays => 'Röleler';
	@override String get addRelay => 'Röle ekle';
	@override String get inboxUrl => 'Gelen Kutusu URL';
	@override String get addedRelays => 'Eklenen Röleler';
	@override String get serviceworkerInfo => 'Push bildirimleri için etkinleştirilmeli.';
	@override String get deletedNote => 'Silinen not';
	@override String get invisibleNote => 'Görünmez not';
	@override String get enableInfiniteScroll => 'Otomatik olarak daha fazlasını yükle';
	@override String get visibility => 'Görünürlük';
	@override String get poll => 'Anket';
	@override String get useCw => 'İçeriği gizle';
	@override String get enablePlayer => 'Video oynatıcıyı aç';
	@override String get disablePlayer => 'Video oynatıcıyı kapat';
	@override String get expandTweet => 'Notu genişlet';
	@override String get themeEditor => 'Tema düzenleyici';
	@override String get description => 'Açıklama';
	@override String get describeFile => 'Alternatif metin ekle';
	@override String get enterFileDescription => 'Alternatif metin girin';
	@override String get author => 'Yazar';
	@override String get leaveConfirm => 'Kaydedilmemiş değişiklikler var. Bunları silmek istiyor musunuz?';
	@override String get manage => 'Yönetim';
	@override String get plugins => 'Eklentiler';
	@override String get preferencesBackups => 'Tercih yedeklemeleri';
	@override String get deck => 'Deck';
	@override String get undeck => 'Güverteden Ayrıl';
	@override String get useBlurEffectForModal => 'Modaller için bulanıklaştırma efekti kullanın';
	@override String get useFullReactionPicker => 'Tam boy tepki seçiciyi kullanın';
	@override String get width => 'Genişlik';
	@override String get height => 'Yükseklik';
	@override String get large => 'Büyük';
	@override String get medium => 'Orta';
	@override String get small => 'Küçük';
	@override String get generateAccessToken => 'Erişim jetonu oluştur';
	@override String get permission => 'İzinler';
	@override String get adminPermission => 'Yönetici İzinleri';
	@override String get enableAll => 'Tümünü etkinleştir';
	@override String get disableAll => 'Tümünü devre dışı bırak';
	@override String get tokenRequested => 'Hesaba erişim izni ver';
	@override String get pluginTokenRequestedDescription => 'Bu eklenti, burada ayarlanan izinleri kullanabilecek.';
	@override String get notificationType => 'Bildirim türü';
	@override String get edit => 'Düzenle';
	@override String get emailServer => 'E-posta sunucusu';
	@override String get enableEmail => 'E-posta dağıtımını etkinleştir';
	@override String get emailConfigInfo => 'Kayıt sırasında veya şifreni unuttuğunda E-postanı doğrulamak için kullanılır.';
	@override String get email => 'E-Posta';
	@override String get emailAddress => 'E-Posta adresi';
	@override String get smtpConfig => 'SMTP Sunucu yapılandırması';
	@override String get smtpHost => 'Host';
	@override String get smtpPort => 'Port';
	@override String get smtpUser => 'Kullanıcı adı';
	@override String get smtpPass => 'Şifre';
	@override String get emptyToDisableSmtpAuth => 'SMTP kimlik doğrulamasını devre dışı bırakmak için kullanıcı adı ve şifre alanlarını boş bırakın.';
	@override String get smtpSecure => 'SMTP bağlantıları için örtük SSL/TLS kullanın';
	@override String get smtpSecureInfo => 'STARTTLS kullanırken bunu kapatın.';
	@override String get testEmail => 'Test E-postası gönderimi';
	@override String get wordMute => 'Kelime sustur';
	@override String get wordMuteDescription => 'Belirtilen kelime veya kelime öbeğini içeren notları küçültün. Küçültülmüş notlar, üzerlerine tıklanarak görüntülenebilir.';
	@override String get hardWordMute => 'Zorla kelime sustur';
	@override String get showMutedWord => 'Sessize alınan kelimeleri göster';
	@override String get hardWordMuteDescription => 'Belirtilen kelime veya kelime öbeğini içeren notları gizle. Kelime sessize alma özelliğinden farklı olarak, not tamamen görünmez hale gelir.';
	@override String get regexpError => 'Düzenli ifade hatası';
	@override String regexpErrorDescription({required Object tab, required Object line}) => '${tab} kelimesinin ${line} satırındaki düzenli ifadede bir hata oluştu:';
	@override String get instanceMute => 'Sunucu Sessizleştirme';
	@override String userSaysSomething({required Object name}) => '${name} bir şey söyledi.';
	@override String userSaysSomethingAbout({required Object name, required Object word}) => '${name} “${word}” hakkında bir şey söyledi.';
	@override String get makeActive => 'Etkinleştir';
	@override String get display => 'Ekran';
	@override String get copy => 'Kopyala';
	@override String get copiedToClipboard => 'Panoya kopyalandı';
	@override String get metrics => 'Metrikler';
	@override String get overview => 'Genel Bakış';
	@override String get logs => 'Günlükler';
	@override String get delayed => 'Gecikmeli';
	@override String get database => 'Veritabanı';
	@override String get channel => 'Kanallar';
	@override String get create => 'Oluştur';
	@override String get notificationSetting => 'Bildirim ayarları';
	@override String get notificationSettingDesc => 'Görüntülemek istediğiniz bildirim türlerini seçin.';
	@override String get useGlobalSetting => 'Genel ayarları kullan';
	@override String get useGlobalSettingDesc => 'Etkinleştirildiğinde, hesabınızın bildirim ayarları kullanılır. Devre dışı bırakıldığında, bireysel yapılandırmalar yapılabilir.';
	@override String get other => 'Diğer';
	@override String get regenerateLoginToken => 'Giriş jetonunu yeniden oluştur';
	@override String get regenerateLoginTokenDescription => 'Giriş sırasında dahili olarak kullanılan jetonu yeniden oluşturur. Normalde bu işlem gerekli değildir. Yeniden oluşturulursa, tüm cihazlar oturumu kapatılır.';
	@override String get theKeywordWhenSearchingForCustomEmoji => 'Bu, kendi emojilerini ararken kullanılan anahtar kelimedir.';
	@override String get setMultipleBySeparatingWithSpace => 'Birden fazla girişi boşluklarla ayırın.';
	@override String get fileIdOrUrl => 'Dosya ID veya URL';
	@override String get behavior => 'Davranış';
	@override String get sample => 'Örnek';
	@override String get abuseReports => 'Raporlar';
	@override String get reportAbuse => 'Rapor';
	@override String get reportAbuseRenote => 'Raporu yeniden gönder';
	@override String reportAbuseOf({required Object name}) => '${name} raporu';
	@override String get fillAbuseReportDescription => 'Bu raporla ilgili ayrıntıları lütfen doldur. Belirli bir notla ilgiliyse, lütfen URL\'sini de ekle.';
	@override String get abuseReported => 'Raporunuz gönderildi. Çok teşekkür ederiz.';
	@override String get reporter => 'Raporlayan';
	@override String get reporteeOrigin => 'Bildirim Kaynağı';
	@override String get reporterOrigin => 'Bildirenin Kaynağı';
	@override String get send => 'Gönder';
	@override String get openInNewTab => 'Yeni sekmede aç';
	@override String get openInSideView => 'Yan görünümde aç';
	@override String get defaultNavigationBehaviour => 'Varsayılan gezinme davranışı';
	@override String get editTheseSettingsMayBreakAccount => 'Bu ayarları düzenlemek hesabınıza zarar verebilir.';
	@override String get instanceTicker => 'Notların sunucu bilgileri';
	@override String waitingFor({required Object x}) => '${x} bekleniyor';
	@override String get random => 'Rastgele';
	@override String get system => 'Sistem';
	@override String get switchUi => 'UI değiştir';
	@override String get desktop => 'Masaüstü ';
	@override String get clip => 'Klip';
	@override String get createNew => 'Yeni oluştur';
	@override String get optional => 'Opsiyonel';
	@override String get createNewClip => 'Klip oluştur';
	@override String get unclip => 'Klip kaldır';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'Bu not zaten “${name}” klibinin bir parçası. Bu klipten silmek ister misin?';
	@override String get public => 'Herkese açık';
	@override String get private => 'Özel';
	@override String i18nInfo({required Object link}) => 'Misskey, gönüllüler tarafından çeşitli dillere çevrilmektedir. ${link} adresinden yardımcı olabilirsin.';
	@override String get manageAccessTokens => 'Acces Tokens yönet';
	@override String get accountInfo => 'Hesap bilgileri';
	@override String get notesCount => 'Not sayısı';
	@override String get repliesCount => 'Yanıt sayısı';
	@override String get renotesCount => 'Renote sayısı';
	@override String get repliedCount => 'Alınan yanıt sayısı';
	@override String get renotedCount => 'Alınan Renote sayısı';
	@override String get followingCount => 'Takip sayısı';
	@override String get followersCount => 'Takipçi sayısı';
	@override String get sentReactionsCount => 'Tepki sayısı';
	@override String get receivedReactionsCount => 'Alınan tepki sayısı';
	@override String get pollVotesCount => 'Anket oy sayısı';
	@override String get pollVotedCount => 'Alınan anket oy sayısı';
	@override String get yes => 'Evet';
	@override String get no => 'Hayır';
	@override String get driveFilesCount => 'Drive dosya sayısı';
	@override String get driveUsage => 'Drive alanı kullanımı';
	@override String get noCrawle => 'Tarayıcı indekslemesini reddet';
	@override String get noCrawleDescription => 'Arama motorlarından profilinde, notlarında, sayfalarında  vb. dolaşılmamasını ve dizine eklememesini talep et.';
	@override String get lockedAccountInfo => 'Notunuzun görünürlüğünü “Yalnızca takipçiler” olarak ayarlamadığınız sürece, takipçilerin manuel olarak onaylanmasını gerektirse bile notlarınız herkes tarafından görülebilir.';
	@override String get alwaysMarkSensitive => 'Varsayılan olarak hassas olarak işaretle';
	@override String get loadRawImages => 'Küçük resimleri göstermek yerine orijinal resimleri yükle';
	@override String get disableShowingAnimatedImages => 'Animasyonlu görüntüleri oynatmayın';
	@override String get disableShowingAnimatedImages_caption => 'Bu ayara rağmen animasyonlu görüntüler oynatılmıyorsa, bunun nedeni tarayıcınızın veya işletim sisteminizin erişilebilirlik ayarları veya güç tasarrufu ayarlarından kaynaklanan parazit olabilir.';
	@override String get highlightSensitiveMedia => 'Hassas medyayı vurgulayın';
	@override String get verificationEmailSent => 'Doğrulama e-postası gönderildi. Doğrulamayı tamamlamak için e-postadaki bağlantıyı takip edin.';
	@override String get notSet => 'Ayarlı değil';
	@override String get emailVerified => 'E-posta adresi doğrulandı.';
	@override String get noteFavoritesCount => 'Favori not sayısı';
	@override String get pageLikesCount => 'Beğenilen sayfa sayısı';
	@override String get pageLikedCount => 'Alınan sayfa beğen sayısı';
	@override String get contact => 'İletişim';
	@override String get useSystemFont => 'Sistemin varsayılan yazı tipini kullanın';
	@override String get clips => 'Klipler';
	@override String get experimentalFeatures => 'Deneysel özellikler';
	@override String get experimental => 'Deneysel';
	@override String get thisIsExperimentalFeature => 'Bu deneysel bir özellik. İşlevselliği değişebilir ve amaçlandığı gibi çalışmayabilir.';
	@override String get developer => 'Geliştirici';
	@override String get makeExplorable => 'Hesabı “Keşfet” bölümünde görünür hale getir';
	@override String get makeExplorableDescription => 'Bunu kapatırsanız, hesabınız “Keşfet” bölümünde görünmez.';
	@override String get duplicate => 'Çoğalt';
	@override String get left => 'Sol';
	@override String get center => 'Merkez';
	@override String get wide => 'Geniş';
	@override String get narrow => 'Dar';
	@override String get reloadToApplySetting => 'Bu ayar, sayfa yeniden yüklendikten sonra geçerli olacaktır. Şimdi yeniden yüklemek ister misin?';
	@override String get needReloadToApply => 'Bunun yansıtılması için yeniden yükleme yapılması gerekir.';
	@override String get needToRestartServerToApply => 'Değişikliğin yansıtılması için Misskey\'in yeniden başlatılması gerekir.';
	@override String get showTitlebar => 'Başlık çubuğunu göster';
	@override String get clearCache => 'Önbellek temizle';
	@override String onlineUsersCount({required Object n}) => '${n} kullanıcı çevrim içi';
	@override String nUsers({required Object n}) => '${n} Kullanıcı';
	@override String nNotes({required Object n}) => '${n} Not';
	@override String get sendErrorReports => 'Hata raporları gönder';
	@override String get sendErrorReportsDescription => 'Etkinleştirildiğinde, bir sorun oluştuğunda ayrıntılı hata bilgileri Misskey ile paylaşılacak ve bu da Misskey\'in kalitesinin iyileştirilmesine yardımcı olacak.\nBu bilgiler arasında işletim sisteminizin sürümü, kullandığınız tarayıcı, Misskey\'deki faaliyetlerin vb. yer alacaktır.';
	@override String get myTheme => 'Benim temam';
	@override String get backgroundColor => 'Arka plan rengi';
	@override String get accentColor => 'Vurgu rengi';
	@override String get textColor => 'Metin rengi';
	@override String get saveAs => 'Farklı kaydet';
	@override String get advanced => 'Gelişmiş';
	@override String get advancedSettings => 'Gelişmiş ayarlar';
	@override String get value => 'Değer';
	@override String get createdAt => 'Oluşturuldu';
	@override String get updatedAt => 'Güncellendi';
	@override String get saveConfirm => 'Değişiklikleri kaydetmek ister misin?';
	@override String get deleteConfirm => 'Cidden silmek istiyor musunuz?';
	@override String get invalidValue => 'Geçersiz değer.';
	@override String get registry => 'Kayıt Defteri';
	@override String get closeAccount => 'Hesabı kapat';
	@override String get currentVersion => 'Şu anki sürüm';
	@override String get latestVersion => 'En yeni sürüm';
	@override String get youAreRunningUpToDateClient => 'İstemci yazılımınızın en yeni sürümünü kullanıyorsunuz.';
	@override String get newVersionOfClientAvailable => 'İstemcinin daha yeni bir sürümü var.';
	@override String get usageAmount => 'Kullanım';
	@override String get capacity => 'Kapasite';
	@override String get inUse => 'Kullanılıyor';
	@override String get editCode => 'Kodu düzenle';
	@override String get apply => 'Uygula';
	@override String get receiveAnnouncementFromInstance => 'Bu sunucudan bildirimler alın';
	@override String get emailNotification => 'E-posta bildirimi';
	@override String get publish => 'Yayınla';
	@override String get inChannelSearch => 'Kanalda ara';
	@override String get useReactionPickerForContextMenu => 'Sağ tıklama ile tepki seçiciyi aç';
	@override String typingUsers({required Object users}) => '${users} yazıyor...';
	@override String get jumpToSpecifiedDate => 'Belirli bir tarihe atla';
	@override String get showingPastTimeline => 'Şu anda eski bir Pano görüntüleniyor.';
	@override String get clear => 'Temizle';
	@override String get markAllAsRead => 'Tümünü okundu olarak işaretle';
	@override String get goBack => 'Geri';
	@override String get unlikeConfirm => 'Cidden beğenini kaldırmak mı istiyorsun?';
	@override String get fullView => 'Tam görünüm';
	@override String get quitFullView => 'Tam ekranı kapat';
	@override String get addDescription => 'Açıklama ekle';
	@override String get userPagePinTip => 'Bireysel notların menüsünden “Profiline sabitle” seçeneğini seçerek notları burada görüntüleyebilirsin.';
	@override String get notSpecifiedMentionWarning => 'Bu notta, alıcılar arasında yer almayan kullanıcılar hakkında bilgiler bulunmaktadır.';
	@override String get info => 'Hakkında';
	@override String get userInfo => 'Kullanıcı hakkında';
	@override String get unknown => 'Bilinmiyor';
	@override String get onlineStatus => 'Çevrimiçi durumu';
	@override String get hideOnlineStatus => 'Çevrimiçi durumunu gizle';
	@override String get hideOnlineStatusDescription => 'Çevrimiçi durumunuzu gizlemek, arama gibi bazı özelliklerin kullanışlılığını azaltır.';
	@override String get online => 'Online';
	@override String get active => 'Aktif';
	@override String get offline => 'Offline';
	@override String get notRecommended => 'Tavsiye edilmez';
	@override String get botProtection => 'Bot Koruması';
	@override String get instanceBlocking => 'Blocked/Silenced Instances';
	@override String get selectAccount => 'Hesap seç';
	@override String get switchAccount => 'Hesap değiştir';
	@override String get enabled => 'Aktif';
	@override String get disabled => 'Devre Dışı';
	@override String get quickAction => 'Hızlı eylemler';
	@override String get user => 'Kullanıcı';
	@override String get administration => 'Yönetim';
	@override String get accounts => 'Hesaplar';
	@override String get switch_ => 'Anahtar';
	@override String get noMaintainerInformationWarning => 'Bakımcı bilgileri yapılandırılmamıştır.';
	@override String get noInquiryUrlWarning => 'Sorgu URL\'si ayarlanmadı';
	@override String get noBotProtectionWarning => 'Bot koruması yapılandırılmamıştır.';
	@override String get configure => 'Yeniden Yapılandır';
	@override String get postToGallery => 'Yeni galeri gönderisi oluştur';
	@override String get postToHashtag => 'Bu hashtag\'e gönder';
	@override String get gallery => 'Galeri';
	@override String get recentPosts => 'Son gönderiler';
	@override String get popularPosts => 'Popüler gönderiler';
	@override String get shareWithNote => 'Notla paylaş';
	@override String get ads => 'Reklamlar';
	@override String get expiration => 'Son tarih';
	@override String get startingperiod => 'Başla';
	@override String get memo => 'Hatırlatıcı';
	@override String get priority => 'Öncelik';
	@override String get high => 'Yüksek';
	@override String get middle => 'Orta';
	@override String get low => 'Düşük';
	@override String get emailNotConfiguredWarning => 'E-posta adresi ayarlanmamış.';
	@override String get ratio => 'Oran';
	@override String get previewNoteText => 'Önizlemeyi göster';
	@override String get customCss => 'Özel CSS';
	@override String get customCssWarn => 'Bu ayar, yalnızca ne işe yaradığını biliyorsanız kullanılmalıdır. Yanlış değerler girilmesi, istemcinin normal şekilde çalışmamasına neden olabilir.';
	@override String get global => 'Global';
	@override String get squareAvatars => 'Kare avatarlar';
	@override String get sent => 'Gönderilen';
	@override String get received => 'Alınan';
	@override String get searchResult => 'Arama sonuçları';
	@override String get hashtags => 'Hashtag\'ler';
	@override String get troubleshooting => 'Sorun Giderme';
	@override String get useBlurEffect => 'UI\'da bulanıklık efektleri kullanın';
	@override String get learnMore => 'Daha fazla bilgi edinin';
	@override String get misskeyUpdated => 'Misskey güncellendi!';
	@override String get whatIsNew => 'Değişiklikleri göster';
	@override String get translate => 'Çevir';
	@override String translatedFrom({required Object x}) => '${x}\'ten çevrilmiştir.';
	@override String get accountDeletionInProgress => 'Hesap silme işlemi şu anda devam ediyor.';
	@override String get usernameInfo => 'Bu sunucudaki diğer hesaplardan hesabını ayıran bir isim.  Alfabe (a~z, A~Z), rakamlar (0~9) veya alt çizgi (_) kullanabilirsin. Kullanıcı adları daha sonra değiştirilemez.';
	@override String get aiChanMode => 'Ai Modu';
	@override String get devMode => 'Geliştirici modu';
	@override String get keepCw => 'İçerik uyarılarını sakla';
	@override String get pubSub => 'Yayın/Abonelik Hesapları';
	@override String get lastCommunication => 'Son iletişim';
	@override String get resolved => 'Çözülmüş';
	@override String get unresolved => 'Çözülmemiş';
	@override String get breakFollow => 'Takipçiyi kaldır';
	@override String get breakFollowConfirm => 'Bu takipçiyi ciddden silmek istiyor musun?';
	@override String get itsOn => 'Etkin';
	@override String get itsOff => 'Devre Dışı';
	@override String get on => 'Açık';
	@override String get off => 'Kapalı';
	@override String get emailRequiredForSignup => 'Kayıt için E-posta adresi gereklidir.';
	@override String get unread => 'Okunmamış';
	@override String get filter => 'Filtre';
	@override String get controlPanel => 'Kontrol Paneli';
	@override String get manageAccounts => 'Hesapları Yönet';
	@override String get makeReactionsPublic => 'Tepki geçmişini herkese açık olarak ayarla';
	@override String get makeReactionsPublicDescription => 'Bu, geçmişteki tüm tepkilerinin listesini herkese açık hale getirecek.';
	@override String get classic => 'Klasik';
	@override String get muteThread => 'Konuyu sessize al';
	@override String get unmuteThread => 'Konuyu sessizden çıkar';
	@override String get followingVisibility => 'Takip edilenlerin görünürlüğü';
	@override String get followersVisibility => 'Takipçilerin görünürlüğü';
	@override String get continueThread => 'Konunun devamını görüntüle';
	@override String get deleteAccountConfirm => 'Bu, hesabını geri dönüşü olmayan bir şekilde silecek. Devam etmek istiyor musun?';
	@override String get incorrectPassword => 'Yanlış şifre.';
	@override String get incorrectTotp => 'Tek kullanımlık şifre yanlış veya süresi dolmuş.';
	@override String voteConfirm({required Object choice}) => '"${choice}" için oyunuzu onaylıyor musunuz?';
	@override String get hide => 'Gizle';
	@override String get useDrawerReactionPickerForMobile => 'Mobil cihazlarda tepki seçiciyi çekmece olarak göster';
	@override String welcomeBackWithName({required Object name}) => 'Hoş geldin, ${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => 'E-posta doğrulamasını tamamlamak için lütfen [${ok}] düğmesine tıklayın.';
	@override String get overridedDeviceKind => 'Cihaz türü';
	@override String get smartphone => 'Akıllı telefon';
	@override String get tablet => 'Tablet';
	@override String get auto => 'Otomatik';
	@override String get themeColor => 'Örnek Ticker Rengi';
	@override String get size => 'Boyut';
	@override String get numberOfColumn => 'Sütun sayısı';
	@override String get searchByGoogle => 'Arama';
	@override String get instanceDefaultLightTheme => 'Sunucu genelinde varsayılan açık tema';
	@override String get instanceDefaultDarkTheme => 'Sunucu genelinde varsayılan koyu tema';
	@override String get instanceDefaultThemeDescription => 'Tema kodunu nesne biçiminde girin.';
	@override String get mutePeriod => 'Sessiz kalma süresi';
	@override String get period => 'Zaman sınırı';
	@override String get indefinitely => 'Kalıcı olarak';
	@override String get tenMinutes => '10 dakika';
	@override String get oneHour => '1 saat';
	@override String get oneDay => '1 gün';
	@override String get oneWeek => '1 hafta';
	@override String get oneMonth => '1 ay';
	@override String get threeMonths => '3 ay';
	@override String get oneYear => '1 yıl';
	@override String get threeDays => '3 gün';
	@override String get reflectMayTakeTime => 'Bunun yansıtılması biraz zaman alabilir.';
	@override String get failedToFetchAccountInformation => 'Hesap bilgileri alınamadı';
	@override String get rateLimitExceeded => 'Hız sınırı aşıldı';
	@override String get cropImage => 'Görüntüyü kırp';
	@override String get cropImageAsk => 'Bu görüntüyü kırpmak ister misin?';
	@override String get cropYes => 'Kırp';
	@override String get cropNo => 'Olduğu gibi kullanın';
	@override String get file => 'Dosyalar';
	@override String recentNHours({required Object n}) => 'Son ${n} saat';
	@override String recentNDays({required Object n}) => 'Son ${n} gün';
	@override String get noEmailServerWarning => 'E-posta sunucusu yapılandırılmamış.';
	@override String get thereIsUnresolvedAbuseReportWarning => 'Çözülmemiş raporlar var.';
	@override String get recommended => 'Önerilen';
	@override String get check => 'Kontrol';
	@override String get driveCapOverrideLabel => 'Bu kullanıcının Drive kapasitesini değiştir';
	@override String get driveCapOverrideCaption => 'Kapasiteyi varsayılan değere sıfırlamak için 0 veya daha düşük bir değer girin.';
	@override String get requireAdminForView => 'Bunu görüntülemek için yönetici hesabıyla oturum açmanız gerekir.';
	@override String get isSystemAccount => 'Sistem tarafından oluşturulan ve otomatik olarak işletilen bir hesap.';
	@override String typeToConfirm({required Object x}) => 'Onaylamak için lütfen ${x} girin.';
	@override String get deleteAccount => 'Hesabı sil';
	@override String get document => 'Dokümantasyon';
	@override String get numberOfPageCache => 'Önbelleğe alınmış sayfa sayısı';
	@override String get numberOfPageCacheDescription => 'Bu sayıyı artırmak, kullanıcının cihazında daha fazla bellek kullanımı nedeniyle daha fazla yük oluşturmakla birlikte, kullanıcının rahatlığını artıracaktır.';
	@override String get logoutConfirm => 'Çıkmak istediğinden emin misin?';
	@override String get logoutWillClearClientData => 'Oturumu kapatmak, tarayıcıdan istemcinin ayarlarını siler. Tekrar oturum açtığında ayarları geri yükleyebilmek için, ayarlarının otomatik yedeklenmesini etkinleştirmen gerekir.';
	@override String get lastActiveDate => 'Son kullanımı';
	@override String get statusbar => 'Durum çubuğu';
	@override String get pleaseSelect => 'Bir seçenek seçin';
	@override String get reverse => 'Tersine';
	@override String get colored => 'Renkli';
	@override String get refreshInterval => 'Güncelleme aralığı';
	@override String get label => 'Etiket';
	@override String get type => 'Tür';
	@override String get speed => 'Hız';
	@override String get slow => 'Yavaş';
	@override String get fast => 'Hızlı';
	@override String get sensitiveMediaDetection => 'Hassas ortamların tespiti';
	@override String get localOnly => 'Yalnızca yerel';
	@override String get remoteOnly => 'Sadece uzaktan';
	@override String get failedToUpload => 'Yükleme başarısız';
	@override String get cannotUploadBecauseInappropriate => 'Bu dosya, dosyanın bazı kısımlarının uygunsuz olabileceği tespit edildiği için yüklenemiyor.';
	@override String get cannotUploadBecauseNoFreeSpace => 'Drive kapasitesi yetersiz olduğu için yükleme başarısız oldu.';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'Bu dosya, dosya boyutu sınırını aştığı için yüklenemiyor.';
	@override String get cannotUploadBecauseUnallowedFileType => 'Yetkisiz dosya türü nedeniyle yükleme yapılamıyor.';
	@override String get beta => 'Beta';
	@override String get enableAutoSensitive => 'Otomatik olarak hassas olarak işaretleme';
	@override String get enableAutoSensitiveDescription => 'Mümkün olduğunda, Makine Öğrenimi yoluyla hassas ortamların otomatik olarak algılanmasını ve işaretlenmesini sağlar. Bu seçenek devre dışı bırakılmış olsa bile, örnek genelinde etkinleştirilebilir.';
	@override String get activeEmailValidationDescription => 'E-posta adreslerinin daha sıkı bir şekilde doğrulanmasını sağlar. Bu, tek kullanımlık adreslerin kontrol edilmesini ve adresin gerçekten iletişim kurulabilir olup olmadığının kontrol edilmesini içerir. İşaretlenmediğinde, yalnızca e-postanın biçimi doğrulanır.';
	@override String get navbar => 'Gezinti çubuğu';
	@override String get shuffle => 'Karıştır';
	@override String get account => 'Hesap';
	@override String get move => 'Taşı';
	@override String get pushNotification => 'Push bildirimleri';
	@override String get subscribePushNotification => 'Push bildirimlerini etkinleştir';
	@override String get unsubscribePushNotification => 'Push bildirimlerini kapat';
	@override String get pushNotificationAlreadySubscribed => 'Push bildirimleri zaten açık';
	@override String get pushNotificationNotSupported => 'Push bildirimleri sunucu veya tarayıcı tarafından desteklenmiyor';
	@override String get sendPushNotificationReadMessage => 'Okunduktan sonra push bildirimlerini silin';
	@override String get sendPushNotificationReadMessageCaption => 'Bu, cihazınızın güç tüketimini artırabilir.';
	@override String get pleaseAllowPushNotification => 'Lütfen tarayıcı ayarlarınızdan bildirimlere izin verin.';
	@override String get browserPushNotificationDisabled => 'Bildirim gönderme izni alınamadı.';
	@override String browserPushNotificationDisabledDescription({required Object serverName}) => '${serverName} sunucusundan bildirim gönderme izniniz yok. Lütfen tarayıcı ayarlarınızdan bildirimlere izin verin ve tekrar deneyin.';
	@override String get windowMaximize => 'Maksimize et';
	@override String get windowMinimize => 'Minimize et';
	@override String get windowRestore => 'Geri yükle';
	@override String get caption => 'Alternatif metin';
	@override String get loggedInAsBot => 'Şu anda bot olarak oturum açmış durumdasınız.';
	@override String get tools => 'Araçlar';
	@override String get cannotLoad => 'Yüklenemiyor';
	@override String get numberOfProfileView => 'Profil görüntülemeleri';
	@override String get like => 'Beğen';
	@override String get unlike => 'Beğenme';
	@override String get numberOfLikes => 'Beğeniler';
	@override String get show => 'Göster';
	@override String get neverShow => 'Bir daha gösterme';
	@override String get remindMeLater => 'Belki daha sonra';
	@override String get didYouLikeMisskey => 'Misskey\'i sevdin mi?';
	@override String pleaseDonate({required Object host}) => '${host} ücretsiz yazılım Misskey kullanmaktadır. Misskey\'in geliştirilmesinin devam edebilmesi için bağışlarınızı çok takdir ederiz!';
	@override String correspondingSourceIsAvailable({required Object anchor}) => 'İlgili kaynak kodu ${anchor} adresinde mevcuttur.';
	@override String get roles => 'Roller';
	@override String get role => 'Rol';
	@override String get noRole => 'Rol bulunamadı';
	@override String get normalUser => 'Normal kullanıcı';
	@override String get undefined => 'Tanımlanmamış';
	@override String get assign => 'Atama';
	@override String get unassign => 'Atamayı kaldır';
	@override String get color => 'Renk';
	@override String get manageCustomEmojis => 'Özel Emojileri Yönet';
	@override String get manageAvatarDecorations => 'Avatar süslerini yönet';
	@override String get youCannotCreateAnymore => 'Oluşturma sınırına ulaştınız.';
	@override String get cannotPerformTemporary => 'Geçici olarak kullanılamıyor';
	@override String get cannotPerformTemporaryDescription => 'Bu işlem, yürütme sınırını aştığı için geçici olarak gerçekleştirilememekte. Lütfen bir süre bekle ve tekrar dene.';
	@override String get invalidParamError => 'Geçersiz parametreler';
	@override String get invalidParamErrorDescription => 'İstek parametreleri geçersiz. Bu durum genellikle bir hata nedeniyle oluşur, ancak boyut sınırlarını aşan girdiler veya benzer nedenlerden de kaynaklanabilir.';
	@override String get permissionDeniedError => 'İşlem reddedildi';
	@override String get permissionDeniedErrorDescription => 'Bu hesap bu işlemi gerçekleştirmek için gerekli izne sahip değildir.';
	@override String get preset => 'Ön ayar';
	@override String get selectFromPresets => 'Ön ayarlardan seçim yapın';
	@override String get custom => 'Özel';
	@override String get achievements => 'Başarılar';
	@override String get gotInvalidResponseError => 'Geçersiz sunucu yanıtı';
	@override String get gotInvalidResponseErrorDescription => 'Sunucu erişilemez durumda olabilir veya bakım çalışması yapılmaktadır. Lütfen daha sonra tekrar dene.';
	@override String get thisPostMayBeAnnoying => 'Bu not başkalarını rahatsız edebilir.';
	@override String get thisPostMayBeAnnoyingHome => 'Ana panoya gönder';
	@override String get thisPostMayBeAnnoyingCancel => 'İptal';
	@override String get thisPostMayBeAnnoyingIgnore => 'Yine de gönder';
	@override String get collapseRenotes => 'Daha önce görüntülenen Renote\'lari kısaltılmış olarak göster';
	@override String get collapseRenotesDescription => 'Zaten yanıtladığın veya renote aldığın notları kapat.';
	@override String get internalServerError => 'İç Sunucu Hatası';
	@override String get internalServerErrorDescription => 'Sunucu beklenmedik bir hatayla karşılaştı.';
	@override String get copyErrorInfo => 'Hata ayrıntılarını kopyala';
	@override String get joinThisServer => 'Kaydol';
	@override String get exploreOtherServers => 'Diğer sunucuları keşfet';
	@override String get letsLookAtTimeline => 'Pano\'ya bir göz atın';
	@override String get disableFederationConfirm => 'Federasyonu cidden devre dışı bırakmak istiyor musun?';
	@override String get disableFederationConfirmWarn => 'Federasyondan ayrılsa bile, aksi belirtilmedikçe gönderiler herkese açık olmaya devam edecek. Genellikle bunu yapmanız gerekmez.';
	@override String get disableFederationOk => 'Devre Dışı';
	@override String get invitationRequiredToRegister => 'Bu etkinlik davetle katılımlıdır. Geçerli bir davet kodu girerek kaydolmanız gerekir.';
	@override String get emailNotSupported => 'Bu sunucu, E-Posta göndermeyi desteklemiyor.';
	@override String get postToTheChannel => 'Kanalına gönder';
	@override String get cannotBeChangedLater => 'Bu daha sonra değiştirilemez.';
	@override String get reactionAcceptance => 'Tepki Kabulü';
	@override String get likeOnly => 'Sadece beğeniler';
	@override String get likeOnlyForRemote => 'Tüm (Yalnızca uzak sunucu için beğeniler)';
	@override String get nonSensitiveOnly => 'Hassas olmayanlar için';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'Yalnızca hassas olmayanlar (Yalnızca uzaktan beğeniler)';
	@override String get rolesAssignedToMe => 'Bana atanan roller';
	@override String get resetPasswordConfirm => 'Şifreni gerçekten sıfırlamak istiyor musun?';
	@override String get sensitiveWords => 'Hassas kelimeler';
	@override String get sensitiveWordsDescription => 'Yapılandırılan kelimelerden herhangi birini içeren tüm notların görünürlüğü otomatik olarak “Ana Sayfa” olarak ayarlanacaktır. Satır sonları ile ayırarak birden fazla not listeleyebilirsin.';
	@override String get sensitiveWordsDescription2 => 'Boşluk kullanmak AND ifadeleri oluşturur ve anahtar kelimeleri eğik çizgi ile çevrelemek bunları düzenli ifadeye dönüştürür.';
	@override String get prohibitedWords => 'Yasaklanmış kelimeler';
	@override String get prohibitedWordsDescription => 'Belirlenen kelime(ler)i içeren bir not göndermeye çalışıldığında hata verir. Birden fazla kelime, yeni satırla ayrılmış olarak ayarlanabilir.';
	@override String get prohibitedWordsDescription2 => 'Boşluk kullanmak AND ifadeleri oluşturur ve anahtar kelimeleri eğik çizgi ile çevrelemek bunları düzenli ifadeye dönüştürür.';
	@override String get hiddenTags => 'Gizli hashtag\'ler';
	@override String get hiddenTagsDescription => 'Trend listesinde gösterilmeyecek etiketleri seçin.\nSatırlarla birden fazla etiket kaydedilebilir.';
	@override String get notesSearchNotAvailable => 'Not arama özelliği kullanılamıyor.';
	@override String get usersSearchNotAvailable => 'Kullanıcı araması mevcut değildir.';
	@override String get license => 'Lisans';
	@override String get unfavoriteConfirm => 'Cidden favorilerden kaldırmak istiyor musunuz?';
	@override String get myClips => 'Kliplerim';
	@override String get drivecleaner => 'Drive Temizleyici';
	@override String get retryAllQueuesNow => 'Tüm kuyrukları yeniden çalıştırmayı deneyin';
	@override String get retryAllQueuesConfirmTitle => 'Cidden hepsini tekrar denemek istiyor musunuz?';
	@override String get retryAllQueuesConfirmText => 'Bu, sunucu yükünü geçici olarak artıracaktır.';
	@override String get enableChartsForRemoteUser => 'Uzak kullanıcı veri grafikleri oluşturun';
	@override String get enableChartsForFederatedInstances => 'Uzak sunucu veri grafikleri oluşturun';
	@override String get enableStatsForFederatedInstances => 'Uzak sunucu istatistiklerini alın';
	@override String get showClipButtonInNoteFooter => 'Not eylem menüsüne “Klip” ekle';
	@override String get reactionsDisplaySize => 'Tepki ekran boyutu';
	@override String get limitWidthOfReaction => 'Tepkilerin maksimum genişliğini sınırla ve bunları küçültülmüş boyutta görüntüle.';
	@override String get noteIdOrUrl => 'Not ID veya URL';
	@override String get video => 'Video';
	@override String get videos => 'Videolar';
	@override String get audio => 'Ses';
	@override String get audioFiles => 'Ses Dosyası';
	@override String get dataSaver => 'Veri Tasarrufu';
	@override String get accountMigration => 'Hesap Taşıma';
	@override String get accountMoved => 'Bu kullanıcı yeni bir hesaba taşındı:';
	@override String get accountMovedShort => 'Bu hesap taşınmıştır.';
	@override String get operationForbidden => 'İşlem yasak';
	@override String get forceShowAds => 'Her zaman reklamları göster';
	@override String get addMemo => 'Kısa not ekle';
	@override String get editMemo => 'Kısa not düzenle';
	@override String get reactionsList => 'Tepkiler';
	@override String get renotesList => 'Renote\'lar';
	@override String get notificationDisplay => 'Bildirimler';
	@override String get leftTop => 'Sol üst';
	@override String get rightTop => 'Sağ üst';
	@override String get leftBottom => 'Sol alt';
	@override String get rightBottom => 'Sağ alt';
	@override String get stackAxis => 'Yığınlama yönü';
	@override String get vertical => 'Dikey';
	@override String get horizontal => 'Yatay';
	@override String get position => 'Pozisyon';
	@override String get serverRules => 'Sunucu kuralları';
	@override String get pleaseConfirmBelowBeforeSignup => 'Bu sunucuya kaydolmak için aşağıdakileri gözden geçirip kabul etmelisin:';
	@override String get pleaseAgreeAllToContinue => 'Devam etmek için yukarıdaki tüm alanları kabul etmelisin.';
	@override String get continue_ => 'Devam et';
	@override String get preservedUsernames => 'Rezerve edilmiş kullanıcı adları';
	@override String get preservedUsernamesDescription => 'Rezervasyon yapmak için kullanıcı adlarını satır sonlarıyla ayırarak listele. Bu kullanıcı adları normal hesap oluşturma sırasında kullanılamaz hale gelir, ancak yöneticiler tarafından manuel olarak hesap oluşturmak için kullanılabilir. Bu kullanıcı adlarını kullanan mevcut hesaplar etkilenmez.';
	@override String get createNoteFromTheFile => 'Bu dosyadan not oluşturun';
	@override String get archive => 'Arşiv';
	@override String get archived => 'Arşivle';
	@override String get unarchive => 'Arşivden çıkar';
	@override String channelArchiveConfirmTitle({required Object name}) => 'Cidden ${name} arşivlemek mi istiyorsun?';
	@override String get channelArchiveConfirmDescription => 'Arşivlenmiş bir kanal artık kanal listesinde veya arama sonuçlarında görünmeyecektir. Ayrıca, bu kanala yeni gönderiler eklenemeyecek.';
	@override String get thisChannelArchived => 'Bu kanal arşivlenmiş.';
	@override String get displayOfNote => 'Not ekranı';
	@override String get initialAccountSetting => 'Profil ayarları';
	@override String get youFollowing => 'Takip edildi';
	@override String get preventAiLearning => 'Makine Öğreniminde (Üretken Ai) kullanımını reddet';
	@override String get preventAiLearningDescription => 'Tarayıcılardan, makine öğrenimi (Tahminsel / Üretken Ai) veri kümelerinde yayınlanan metin veya görsel materyalleri vb. kullanmamalarını talep eder. Bu, ilgili içeriğe “noai” HTML-Response bayrağı eklenerek gerçekleştirilir. Ancak, bu bayrakla tam bir önleme sağlanamaz, çünkü bu bayrak basitçe göz ardı edilebilir.';
	@override String get options => 'Seçenekler';
	@override String get specifyUser => 'Belirli kullanıcı';
	@override String get lookupConfirm => 'Yukarı bakmak ister misin?';
	@override String get openTagPageConfirm => 'Bir hashtag sayfası açmak ister misin?';
	@override String get specifyHost => 'Belirli ana bilgisayar';
	@override String get failedToPreviewUrl => 'Önizleme yapılamadı';
	@override String get update => 'Güncelle';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'Bu emojiyi tepki olarak kullanabileceğin roller';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'Herhangi bir rol belirtilmezse, herkes bu emojiyi tepki olarak kullanabilir.';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'Bu roller herkese açık olmalıdır.';
	@override String get cancelReactionConfirm => 'Tepkini cidden silmek istiyor musun?';
	@override String get changeReactionConfirm => 'Tepkini cidden değiştirmek istiyor musun?';
	@override String get later => 'Daha sonra';
	@override String get goToMisskey => 'Misskey\'e';
	@override String get additionalEmojiDictionary => 'Ek emoji sözlükleri';
	@override String get installed => 'Yüklendi';
	@override String get branding => 'Markalaşma';
	@override String get enableServerMachineStats => 'Sunucu donanım istatistiklerini yayınla';
	@override String get enableIdenticonGeneration => 'Kullanıcı identicon oluşturmayı etkinleştir';
	@override String get showRoleBadgesOfRemoteUsers => 'Uzaktan kullanıcılara verilen rol rozetlerini görüntüle';
	@override String get turnOffToImprovePerformance => 'Devre dışı bırakma, daha yüksek performansa yol açabilir.';
	@override String get createInviteCode => 'Davet Kodu oluştur';
	@override String get createWithOptions => 'Seçeneklerle oluştur';
	@override String get createCount => 'Davet sayısı';
	@override String get inviteCodeCreated => 'Davet oluşturuldu';
	@override String get inviteLimitExceeded => 'Oluşturulabilecek davetiyelerin maksimum sayısına ulaştın.';
	@override String createLimitRemaining({required Object limit}) => '${limit} Davet limiti kaldı';
	@override String inviteLimitResetCycle({required Object time, required Object limit}) => 'Bu limit ${time} tarihinde ${limit} değerine sıfırlanacaktır.';
	@override String get expirationDate => 'Son kullanma tarihi';
	@override String get noExpirationDate => 'Son kullanma tarihi yok';
	@override String get inviteCodeUsedAt => 'Kullanılan davet kodu';
	@override String get registeredUserUsingInviteCode => 'Kullanılan davet';
	@override String get waitingForMailAuth => 'E-Posta doğrulama beklemede';
	@override String get inviteCodeCreator => 'Davet oluşturuldu';
	@override String get usedAt => 'Kullanıldığı yer';
	@override String get unused => 'Kullanılmamış';
	@override String get used => 'Kullanılmış';
	@override String get expired => 'Süresi dolmuş';
	@override String get doYouAgree => 'Katılıyor musunuz?';
	@override String get beSureToReadThisAsItIsImportant => 'Lütfen bu önemli bilgileri okuyun.';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => '“${x}” metnini okudum ve kabul ediyorum.';
	@override String get dialog => 'Diyalog';
	@override String get icon => 'Avatar';
	@override String get forYou => 'Senin için';
	@override String get currentAnnouncements => 'Güncel duyurular';
	@override String get pastAnnouncements => 'Geçmiş duyurular';
	@override String get youHaveUnreadAnnouncements => 'Okunmamış duyurular var.';
	@override String get useSecurityKey => 'Güvenlik anahtarını veya şifreni kullanmak için lütfen tarayıcının veya cihazının talimatlarını izle.';
	@override String get replies => 'Yanıtla';
	@override String get renotes => 'Renote\'lar';
	@override String get loadReplies => 'Yanıtları göster';
	@override String get loadConversation => 'Konuşmayı göster';
	@override String get pinnedList => 'Sabitlenmiş liste';
	@override String get keepScreenOn => 'Ekranı açık tut';
	@override String get verifiedLink => 'Bağlantı sahipliği doğrulanmıştır.';
	@override String get notifyNotes => 'Yeni notlar hakkında bildirimde bulun';
	@override String get unnotifyNotes => 'Yeni notlar hakkında bildirim almayı durdur';
	@override String get authentication => 'Kimlik doğrulama';
	@override String get authenticationRequiredToContinue => 'Devam etmek için lütfen kimlik doğrulaması yapın.';
	@override String get dateAndTime => 'Zaman damgası';
	@override String get showRenotes => 'Renote\'ları göster';
	@override String get edited => 'Düzenlendi';
	@override String get notificationRecieveConfig => 'Bildirim Ayarları';
	@override String get mutualFollow => 'Karşılıklı takip';
	@override String get followingOrFollower => 'Takip eden veya takipçi';
	@override String get fileAttachedOnly => 'Yalnızca dosya içeren notlar';
	@override String get showRepliesToOthersInTimeline => 'Pano\'da diğer kişilere verilen yanıtları göster';
	@override String get hideRepliesToOthersInTimeline => 'Pano\'dan diğer kişilerin yanıtlarını gizle';
	@override String get showRepliesToOthersInTimelineAll => 'Pano\'da takip ettiğin herkesin diğerlerine verdiği yanıtları göster';
	@override String get hideRepliesToOthersInTimelineAll => 'Pano\'da takip ettiğin herkesten diğer kişilere verilen yanıtları gizle';
	@override String get confirmShowRepliesAll => 'Bu işlem geri alınamaz. Takip ettiğin herkesin yanıtlarını panoda diğer kullanıcılara göstermek istiyor musun?';
	@override String get confirmHideRepliesAll => 'Bu işlem geri alınamaz. Şu anda takip ettiğin tüm kullanıcıların yanıtlarını panoda cidden göstermeyecek misin?';
	@override String get externalServices => 'Dış Hizmetler';
	@override String get sourceCode => 'Kaynak kodu';
	@override String get sourceCodeIsNotYetProvided => 'Kaynak kodu henüz mevcut değildir. Bu sorunu gidermek için yöneticiyle iletişime geçin.';
	@override String get repositoryUrl => 'Depo URL\'si';
	@override String get repositoryUrlDescription => 'Misskey\'i olduğu gibi kullanıyorsanız (kaynak kodunda herhangi bir değişiklik yapmadan), https://github.com/misskey-dev/misskey adresini girin.';
	@override String get repositoryUrlOrTarballRequired => 'Bir depo yayınlamadıysanız, bunun yerine bir tarball sağlamalısınız. Daha fazla bilgi için .config/example.yml dosyasına bakın.';
	@override String get feedback => 'Feedback';
	@override String get feedbackUrl => 'Geri Bildirim URL\'si';
	@override String get impressum => 'Yayıncı Bilgileri';
	@override String get impressumUrl => 'Yayıncı Bilgileri URL\'si';
	@override String get impressumDescription => 'Almanya gibi bazı ülkelerde, ticari web sitelerinde işletmeci iletişim bilgilerinin (Yayıncı) yer alması yasal olarak zorunludur.';
	@override String get privacyPolicy => 'Gizlilik Politikası';
	@override String get privacyPolicyUrl => 'Gizlilik Politikası URL\'si';
	@override String get tosAndPrivacyPolicy => 'Hizmet Şartları ve Gizlilik Politikası';
	@override String get avatarDecorations => 'Avatar süsleri';
	@override String get attach => 'Ek';
	@override String get detach => 'Kaldır';
	@override String get detachAll => 'Tümünü Kaldır';
	@override String get angle => 'Açı';
	@override String get flip => 'Çevir';
	@override String get showAvatarDecorations => 'Avatar süslerini göster';
	@override String get releaseToRefresh => 'Yenilemek için serbest bırak';
	@override String get refreshing => 'Yenileniyor...';
	@override String get pullDownToRefresh => 'Yenilemek için aşağı çekin';
	@override String get useGroupedNotifications => 'Gruplandırılmış bildirimleri göster';
	@override String get emailVerificationFailedError => 'E-posta adresi doğrulanırken bir sorun oluştu. Bağlantının geçerlilik süresi dolmuş olabilir.';
	@override String get cwNotationRequired => '“İçeriği gizle” seçeneği etkinleştirilirse, bir açıklama sağlanmalı.';
	@override String get doReaction => 'Tepki ekle';
	@override String get code => 'Kod';
	@override String get reloadRequiredToApplySettings => 'Ayarları uygulamak için yeniden yükleme gereklidir.';
	@override String remainingN({required Object n}) => 'Kalan: ${n}';
	@override String get overwriteContentConfirm => 'Mevcut içeriği üzerine yazmak istediğinden emin misin?';
	@override String get seasonalScreenEffect => 'Mevsimsel Ekran Efekti';
	@override String get decorate => 'Süsle';
	@override String get addMfmFunction => 'MFM ekle';
	@override String get enableQuickAddMfmFunction => 'Gelişmiş MFM seçiciyi göster';
	@override String get bubbleGame => 'Kabarcık Oyunu';
	@override String get sfx => 'Ses Efektleri';
	@override String get soundWillBePlayed => 'Ses çalınacaktır';
	@override String get showReplay => 'Tekrarı izle';
	@override String get replay => 'Tekrar oynat';
	@override String get replaying => 'Tekrar gösteriliyor';
	@override String get endReplay => 'Tekrardan çık';
	@override String get copyReplayData => 'Tekrar oynatma verilerini kopyala';
	@override String get ranking => 'Sıralama';
	@override String lastNDays({required Object n}) => 'Son ${n} gün';
	@override String get backToTitle => 'Başlığa geri dön';
	@override String get hemisphere => 'Yaşadığınız yer';
	@override String get withSensitive => 'Hassas dosyalara notlar ekle';
	@override String userSaysSomethingSensitive({required Object name}) => '${name} tarafından gönderilen mesaj hassas içerik barındırmaktadır.';
	@override String get enableHorizontalSwipe => 'Kaydırarak sekmeler arasında geçiş yapın';
	@override String get loading => 'Yükleniyor';
	@override String get surrender => 'İptal';
	@override String get gameRetry => 'Tekrar dene';
	@override String get notUsePleaseLeaveBlank => 'Kullanılmıyorsa boş bırakın.';
	@override String get useTotp => 'Tek Kullanımlık Şifreyi Girin';
	@override String get useBackupCode => 'Yedek kodları kullanın';
	@override String get launchApp => 'Uygulamayı başlatın';
	@override String get useNativeUIForVideoAudioPlayer => 'Video ve ses oynatımı için tarayıcı kullanıcı arayüzünü kullan';
	@override String get keepOriginalFilename => 'Orijinal dosya adını koru';
	@override String get keepOriginalFilenameDescription => 'Bu ayarı kapatırsan, dosya yüklediğinde dosya adları otomatik olarak rastgele bir dizeyle değiştirilecek.';
	@override String get noDescription => 'Açıklama yok';
	@override String get alwaysConfirmFollow => 'Takip ederken her zaman onaylayın';
	@override String get inquiry => 'İletişim';
	@override String get tryAgain => 'Lütfen daha sonra tekrar dene.';
	@override String get confirmWhenRevealingSensitiveMedia => 'Confirm when revealing sensitive media';
	@override String get sensitiveMediaRevealConfirm => 'Bu hassas bir medya olabilir. Açıklamakta emin misin?';
	@override String get createdLists => 'Oluşturulan listeler';
	@override String get createdAntennas => 'Oluşturulan antenler';
	@override String fromX({required Object x}) => '${x}\'den';
	@override String get genEmbedCode => 'Gömme kodu oluştur';
	@override String get noteOfThisUser => 'Bu kullanıcının notları';
	@override String get clipNoteLimitExceeded => 'Bu klibe daha fazla not eklenemez.';
	@override String get performance => 'Başarım';
	@override String get modified => 'Değiştirilmiş';
	@override String get discard => 'At';
	@override String thereAreNChanges({required Object n}) => '${n} değişiklik var.';
	@override String get signinWithPasskey => 'Geçiş Anahtarı ile giriş yapın';
	@override String get unknownWebAuthnKey => 'Bilinmeyen Geçiş Anahtarı';
	@override String get passkeyVerificationFailed => 'Geçiş Anahtarı doğrulama başarısız oldu.';
	@override String get passkeyVerificationSucceededButPasswordlessLoginDisabled => 'Geçiş anahtarı doğrulaması başarılı oldu ancak şifresiz oturum açma devre dışıdır.';
	@override String get messageToFollower => 'Takipçilere mesaj';
	@override String get target => 'Hedef';
	@override String get testCaptchaWarning => 'Bu işlev CAPTCHA testi amacıyla tasarlanmıştır.\n<strong>Üretim ortamında kullanmayın.</strong>';
	@override String get prohibitedWordsForNameOfUser => 'Kullanıcı adları için yasaklanmış kelimeler';
	@override String get prohibitedWordsForNameOfUserDescription => 'Bu listedeki dizilerden herhangi biri kullanıcının adında yer alıyorsa, ad reddedilecektir. Moderatör ayrıcalıklarına sahip kullanıcılar bu kısıtlamadan etkilenmez.';
	@override String get yourNameContainsProhibitedWords => 'Adınız yasaklanmış kelimeler içeriyor';
	@override String get yourNameContainsProhibitedWordsDescription => 'Bu adı kullanmak istiyorsan, lütfen sunucu yöneticinizle iletişime geç.';
	@override String get thisContentsAreMarkedAsSigninRequiredByAuthor => 'Yazar tarafından görüntülemek için oturum açma gerektirir.';
	@override String get lockdown => 'Karantina';
	@override String get pleaseSelectAccount => 'Hesap seçin';
	@override String get availableRoles => 'Mevcut roller';
	@override String get acknowledgeNotesAndEnable => 'Önlemleri anladıktan sonra açın.';
	@override String get federationSpecified => 'Bu sunucu, beyaz liste federasyonunda çalıştırılmaktadır. Yönetici tarafından belirlenen sunucular dışında diğer sunucularla etkileşim kurmak yasaktır.';
	@override String get federationDisabled => 'Bu sunucuda federasyon devre dışıdır. Diğer sunuculardaki kullanıcılarla etkileşim kuramazsınız.';
	@override String get draft => 'Taslaklar';
	@override String get draftsAndScheduledNotes => 'Taslaklar ve planlanmış gönderiler';
	@override String get confirmOnReact => 'Tepki verirken onaylayın';
	@override String reactAreYouSure({required Object emoji}) => '“${emoji}” tepkisini eklemek ister misin?';
	@override String get markAsSensitiveConfirm => 'Bu medyayı hassas olarak ayarlamak ister misin?';
	@override String get unmarkAsSensitiveConfirm => 'Bu medya için hassas işaretini kaldırmak ister misin?';
	@override String get preferences => 'Tercihler';
	@override String get accessibility => 'Erişilebilirlik';
	@override String get preferencesProfile => 'Tercihler profili';
	@override String get copyPreferenceId => 'Tercih ID kopyala';
	@override String get resetToDefaultValue => 'Varsayılana dön';
	@override String get overrideByAccount => 'Hesap tarafından geçersiz kılma';
	@override String get untitled => 'İsimsiz';
	@override String get noName => 'İsim yok';
	@override String get skip => 'Atla';
	@override String get restore => 'Geri yükle';
	@override String get syncBetweenDevices => 'Cihazlar arasında senkronizasyon';
	@override String get preferenceSyncConflictTitle => 'Yapılandırılan değer sunucuda mevcuttur.';
	@override String get preferenceSyncConflictText => 'Senkronizasyon etkin ayarlar, değerlerini sunucuya kaydeder. Ancak, sunucuda mevcut değerler bulunmaktadır. Hangi değerleri üzerine yazmak istersin?';
	@override String get preferenceSyncConflictChoiceMerge => 'Birleştir';
	@override String get preferenceSyncConflictChoiceServer => 'Sunucuda yapılandırılan değer';
	@override String get preferenceSyncConflictChoiceDevice => 'Cihazda yapılandırılan değer';
	@override String get preferenceSyncConflictChoiceCancel => 'Senkronizasyonu etkinleştirmeyi iptal et';
	@override String get paste => 'Yapıştır';
	@override String get emojiPalette => 'Emoji paleti';
	@override String get postForm => 'Gönderim formu';
	@override String get textCount => 'Karakter sayısı';
	@override String get information => 'Hakkında';
	@override String get chat => 'Sohbet';
	@override String get directMessage => 'Kullanıcıyla sohbet et';
	@override String get directMessage_short => 'Mesaj';
	@override String get migrateOldSettings => 'Eski istemci ayarlarını taşıma';
	@override String get migrateOldSettings_description => 'Bu işlem otomatik olarak yapılmalıdır, ancak herhangi bir nedenle geçiş başarısız olursa, geçiş işlemini manuel olarak kendin başlatabilirsin. Mevcut yapılandırma bilgileri üzerine yazılacaktır.';
	@override String get compress => 'Sıkıştır';
	@override String get right => 'Sağ';
	@override String get bottom => 'Alt';
	@override String get top => 'Üst';
	@override String get embed => 'Göm';
	@override String get settingsMigrating => 'Ayarlar taşınıyor, lütfen bir dakika bekle... (Daha sonra Ayarlar→Diğerler→Eski ayarları taşı seçeneğine giderek manuel olarak da taşıyabilirsin)';
	@override String get readonly => 'Sadece okuma';
	@override String get goToDeck => 'Güverteye Dön';
	@override String get federationJobs => 'Federasyon İşleri';
	@override String get driveAboutTip => 'Drive\'da, geçmişte yüklediğin dosyaların bir listesi görüntülenir. <br>\nBu dosyaları notlara eklerken yeniden kullanabilir veya daha sonra paylaşmak üzere önceden yükleyebilirsin. <br>\n<b>Bir dosyayı silerken dikkatli ol, çünkü kullanıldığı her yerde (notlar, sayfalar, avatarlar, afişler vb.) mevcut olmayacakt.</b> <br>\nAyrıca dosyalarını düzenlemek için klasörler oluşturabilirsin.';
	@override String get scrollToClose => 'Kaydırarak kapatın';
	@override String get advice => 'Tavsiye';
	@override String get realtimeMode => 'Gerçek zamanlı mod';
	@override String get turnItOn => 'Aç';
	@override String get turnItOff => 'Kapat';
	@override String get emojiMute => 'Emoji ses kapat';
	@override String get emojiUnmute => 'Emoji ses aç';
	@override String muteX({required Object x}) => 'Sessiz ${x}';
	@override String unmuteX({required Object x}) => 'Sesi aç ${x}';
	@override String get abort => 'İptal';
	@override String get tip => 'İpucu & Püf Nokta';
	@override String get redisplayAllTips => 'Tüm “İpucu & Püf Nokta” tekrar göster';
	@override String get hideAllTips => 'Tüm “İpucu & Püf Nokta” gizle';
	@override String get defaultImageCompressionLevel => 'Varsayılan görüntü sıkıştırma düzeyi';
	@override String get defaultImageCompressionLevel_description => 'Düşük seviye görüntü kalitesini korur ancak dosya boyutunu artırır.<br>Yüksek seviye dosya boyutunu azaltır ancak görüntü kalitesini düşürür.';
	@override String get defaultCompressionLevel => 'Varsayılan sıkıştırma seviyesi';
	@override String get defaultCompressionLevel_description => 'Ayarı düşürmek kaliteyi koruyacak ancak dosya boyutunu artıracaktır. <br> Ayarı yükseltmek dosya boyutunu küçültecek ancak kaliteyi düşürecektir.';
	@override String get inMinutes => 'Dakika(lar)';
	@override String get inDays => 'Gün(ler)';
	@override String get safeModeEnabled => 'Güvenli mod etkinleştirildi';
	@override String get pluginsAreDisabledBecauseSafeMode => 'Güvenli mod etkinleştirildiği için tüm eklentiler devre dışı bırakılmıştır.';
	@override String get customCssIsDisabledBecauseSafeMode => 'Güvenli mod etkin olduğu için özel CSS uygulanmıyor.';
	@override String get themeIsDefaultBecauseSafeMode => 'Güvenli mod etkinken, varsayılan tema kullanılır. Güvenli modu devre dışı bırakmak bu değişiklikleri geri alır.';
	@override String get thankYouForTestingBeta => 'Beta sürümünü test ettiğin için teşekkür ederiz!';
	@override String get createUserSpecifiedNote => 'Kullanıcı tarafından belirtilen notlar oluşturun';
	@override String get schedulePost => 'Bir gönderi planla';
	@override String scheduleToPostOnX({required Object x}) => '${x} için bir gönderi planla';
	@override String scheduledToPostOnX({required Object x}) => '${x} için bir gönderi planlandı.';
	@override String get schedule => 'rezervasyon';
	@override String get scheduled => 'rezervasyon';
	@override String get widgets => 'Widget\'lar';
	@override String get deviceInfo => 'Cihaz Bilgileri';
	@override String get deviceInfoDescription => 'Teknik bir sorunuz olduğunda, aşağıdaki bilgileri eklemeniz sorunun çözülmesine yardımcı olabilir.';
	@override String get youAreAdmin => 'Siz yöneticisiniz.';
	@override String get frame => 'Çerçeve';
	@override String get presets => 'Ön ayar';
	@override String get zeroPadding => 'Sıfır doldurma';
	@override String get nothingToConfigure => 'Ayarlar seçeneği bulunmamaktadır.';
	@override late final _TranslationsMisskeyImageEditingTrTr imageEditing_ = _TranslationsMisskeyImageEditingTrTr._(_root);
	@override late final _TranslationsMisskeyImageFrameEditorTrTr imageFrameEditor_ = _TranslationsMisskeyImageFrameEditorTrTr._(_root);
	@override late final _TranslationsMisskeyCompressionTrTr compression_ = _TranslationsMisskeyCompressionTrTr._(_root);
	@override late final _TranslationsMisskeyOrderTrTr order_ = _TranslationsMisskeyOrderTrTr._(_root);
	@override late final _TranslationsMisskeyChatTrTr chat_ = _TranslationsMisskeyChatTrTr._(_root);
	@override late final _TranslationsMisskeyEmojiPaletteTrTr emojiPalette_ = _TranslationsMisskeyEmojiPaletteTrTr._(_root);
	@override late final _TranslationsMisskeySettingsTrTr settings_ = _TranslationsMisskeySettingsTrTr._(_root);
	@override late final _TranslationsMisskeyPreferencesProfileTrTr preferencesProfile_ = _TranslationsMisskeyPreferencesProfileTrTr._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupTrTr preferencesBackup_ = _TranslationsMisskeyPreferencesBackupTrTr._(_root);
	@override late final _TranslationsMisskeyAccountSettingsTrTr accountSettings_ = _TranslationsMisskeyAccountSettingsTrTr._(_root);
	@override late final _TranslationsMisskeyAbuseUserReportTrTr abuseUserReport_ = _TranslationsMisskeyAbuseUserReportTrTr._(_root);
	@override late final _TranslationsMisskeyDeliveryTrTr delivery_ = _TranslationsMisskeyDeliveryTrTr._(_root);
	@override late final _TranslationsMisskeyBubbleGameTrTr bubbleGame_ = _TranslationsMisskeyBubbleGameTrTr._(_root);
	@override late final _TranslationsMisskeyAnnouncementTrTr announcement_ = _TranslationsMisskeyAnnouncementTrTr._(_root);
	@override late final _TranslationsMisskeyInitialAccountSettingTrTr initialAccountSetting_ = _TranslationsMisskeyInitialAccountSettingTrTr._(_root);
	@override late final _TranslationsMisskeyInitialTutorialTrTr initialTutorial_ = _TranslationsMisskeyInitialTutorialTrTr._(_root);
	@override late final _TranslationsMisskeyTimelineDescriptionTrTr timelineDescription_ = _TranslationsMisskeyTimelineDescriptionTrTr._(_root);
	@override late final _TranslationsMisskeyServerRulesTrTr serverRules_ = _TranslationsMisskeyServerRulesTrTr._(_root);
	@override late final _TranslationsMisskeyServerSettingsTrTr serverSettings_ = _TranslationsMisskeyServerSettingsTrTr._(_root);
	@override late final _TranslationsMisskeyAccountMigrationTrTr accountMigration_ = _TranslationsMisskeyAccountMigrationTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTrTr achievements_ = _TranslationsMisskeyAchievementsTrTr._(_root);
	@override late final _TranslationsMisskeyRoleTrTr role_ = _TranslationsMisskeyRoleTrTr._(_root);
	@override late final _TranslationsMisskeySensitiveMediaDetectionTrTr sensitiveMediaDetection_ = _TranslationsMisskeySensitiveMediaDetectionTrTr._(_root);
	@override late final _TranslationsMisskeyEmailUnavailableTrTr emailUnavailable_ = _TranslationsMisskeyEmailUnavailableTrTr._(_root);
	@override late final _TranslationsMisskeyFfVisibilityTrTr ffVisibility_ = _TranslationsMisskeyFfVisibilityTrTr._(_root);
	@override late final _TranslationsMisskeySignupTrTr signup_ = _TranslationsMisskeySignupTrTr._(_root);
	@override late final _TranslationsMisskeyAccountDeleteTrTr accountDelete_ = _TranslationsMisskeyAccountDeleteTrTr._(_root);
	@override late final _TranslationsMisskeyAdTrTr ad_ = _TranslationsMisskeyAdTrTr._(_root);
	@override late final _TranslationsMisskeyForgotPasswordTrTr forgotPassword_ = _TranslationsMisskeyForgotPasswordTrTr._(_root);
	@override late final _TranslationsMisskeyGalleryTrTr gallery_ = _TranslationsMisskeyGalleryTrTr._(_root);
	@override late final _TranslationsMisskeyEmailTrTr email_ = _TranslationsMisskeyEmailTrTr._(_root);
	@override late final _TranslationsMisskeyPluginTrTr plugin_ = _TranslationsMisskeyPluginTrTr._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupsTrTr preferencesBackups_ = _TranslationsMisskeyPreferencesBackupsTrTr._(_root);
	@override late final _TranslationsMisskeyRegistryTrTr registry_ = _TranslationsMisskeyRegistryTrTr._(_root);
	@override late final _TranslationsMisskeyAboutMisskeyTrTr aboutMisskey_ = _TranslationsMisskeyAboutMisskeyTrTr._(_root);
	@override late final _TranslationsMisskeyDisplayOfSensitiveMediaTrTr displayOfSensitiveMedia_ = _TranslationsMisskeyDisplayOfSensitiveMediaTrTr._(_root);
	@override late final _TranslationsMisskeyInstanceTickerTrTr instanceTicker_ = _TranslationsMisskeyInstanceTickerTrTr._(_root);
	@override late final _TranslationsMisskeyServerDisconnectedBehaviorTrTr serverDisconnectedBehavior_ = _TranslationsMisskeyServerDisconnectedBehaviorTrTr._(_root);
	@override late final _TranslationsMisskeyChannelTrTr channel_ = _TranslationsMisskeyChannelTrTr._(_root);
	@override late final _TranslationsMisskeyMenuDisplayTrTr menuDisplay_ = _TranslationsMisskeyMenuDisplayTrTr._(_root);
	@override late final _TranslationsMisskeyWordMuteTrTr wordMute_ = _TranslationsMisskeyWordMuteTrTr._(_root);
	@override late final _TranslationsMisskeyInstanceMuteTrTr instanceMute_ = _TranslationsMisskeyInstanceMuteTrTr._(_root);
	@override late final _TranslationsMisskeyThemeTrTr theme_ = _TranslationsMisskeyThemeTrTr._(_root);
	@override late final _TranslationsMisskeySfxTrTr sfx_ = _TranslationsMisskeySfxTrTr._(_root);
	@override late final _TranslationsMisskeySoundSettingsTrTr soundSettings_ = _TranslationsMisskeySoundSettingsTrTr._(_root);
	@override late final _TranslationsMisskeyAgoTrTr ago_ = _TranslationsMisskeyAgoTrTr._(_root);
	@override late final _TranslationsMisskeyTimeInTrTr timeIn_ = _TranslationsMisskeyTimeInTrTr._(_root);
	@override late final _TranslationsMisskeyTimeTrTr time_ = _TranslationsMisskeyTimeTrTr._(_root);
	@override late final _TranslationsMisskeyX2faTrTr x2fa_ = _TranslationsMisskeyX2faTrTr._(_root);
	@override late final _TranslationsMisskeyPermissionsTrTr permissions_ = _TranslationsMisskeyPermissionsTrTr._(_root);
	@override late final _TranslationsMisskeyAuthTrTr auth_ = _TranslationsMisskeyAuthTrTr._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesTrTr antennaSources_ = _TranslationsMisskeyAntennaSourcesTrTr._(_root);
	@override late final _TranslationsMisskeyWeekdayTrTr weekday_ = _TranslationsMisskeyWeekdayTrTr._(_root);
	@override late final _TranslationsMisskeyWidgetsTrTr widgets_ = _TranslationsMisskeyWidgetsTrTr._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsTrTr widgetOptions_ = _TranslationsMisskeyWidgetOptionsTrTr._(_root);
	@override late final _TranslationsMisskeyCwTrTr cw_ = _TranslationsMisskeyCwTrTr._(_root);
	@override late final _TranslationsMisskeyPollTrTr poll_ = _TranslationsMisskeyPollTrTr._(_root);
	@override late final _TranslationsMisskeyVisibilityTrTr visibility_ = _TranslationsMisskeyVisibilityTrTr._(_root);
	@override late final _TranslationsMisskeyPostFormTrTr postForm_ = _TranslationsMisskeyPostFormTrTr._(_root);
	@override late final _TranslationsMisskeyProfileTrTr profile_ = _TranslationsMisskeyProfileTrTr._(_root);
	@override late final _TranslationsMisskeyExportOrImportTrTr exportOrImport_ = _TranslationsMisskeyExportOrImportTrTr._(_root);
	@override late final _TranslationsMisskeyChartsTrTr charts_ = _TranslationsMisskeyChartsTrTr._(_root);
	@override late final _TranslationsMisskeyInstanceChartsTrTr instanceCharts_ = _TranslationsMisskeyInstanceChartsTrTr._(_root);
	@override late final _TranslationsMisskeyTimelinesTrTr timelines_ = _TranslationsMisskeyTimelinesTrTr._(_root);
	@override late final _TranslationsMisskeyPlayTrTr play_ = _TranslationsMisskeyPlayTrTr._(_root);
	@override late final _TranslationsMisskeyPagesTrTr pages_ = _TranslationsMisskeyPagesTrTr._(_root);
	@override late final _TranslationsMisskeyRelayStatusTrTr relayStatus_ = _TranslationsMisskeyRelayStatusTrTr._(_root);
	@override late final _TranslationsMisskeyNotificationTrTr notification_ = _TranslationsMisskeyNotificationTrTr._(_root);
	@override late final _TranslationsMisskeyDeckTrTr deck_ = _TranslationsMisskeyDeckTrTr._(_root);
	@override late final _TranslationsMisskeyDialogTrTr dialog_ = _TranslationsMisskeyDialogTrTr._(_root);
	@override late final _TranslationsMisskeyDisabledTimelineTrTr disabledTimeline_ = _TranslationsMisskeyDisabledTimelineTrTr._(_root);
	@override late final _TranslationsMisskeyDrivecleanerTrTr drivecleaner_ = _TranslationsMisskeyDrivecleanerTrTr._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsTrTr webhookSettings_ = _TranslationsMisskeyWebhookSettingsTrTr._(_root);
	@override late final _TranslationsMisskeyAbuseReportTrTr abuseReport_ = _TranslationsMisskeyAbuseReportTrTr._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesTrTr moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesTrTr._(_root);
	@override late final _TranslationsMisskeyFileViewerTrTr fileViewer_ = _TranslationsMisskeyFileViewerTrTr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerTrTr externalResourceInstaller_ = _TranslationsMisskeyExternalResourceInstallerTrTr._(_root);
	@override late final _TranslationsMisskeyDataSaverTrTr dataSaver_ = _TranslationsMisskeyDataSaverTrTr._(_root);
	@override late final _TranslationsMisskeyHemisphereTrTr hemisphere_ = _TranslationsMisskeyHemisphereTrTr._(_root);
	@override late final _TranslationsMisskeyReversiTrTr reversi_ = _TranslationsMisskeyReversiTrTr._(_root);
	@override late final _TranslationsMisskeyOfflineScreenTrTr offlineScreen_ = _TranslationsMisskeyOfflineScreenTrTr._(_root);
	@override late final _TranslationsMisskeyUrlPreviewSettingTrTr urlPreviewSetting_ = _TranslationsMisskeyUrlPreviewSettingTrTr._(_root);
	@override late final _TranslationsMisskeyMediaControlsTrTr mediaControls_ = _TranslationsMisskeyMediaControlsTrTr._(_root);
	@override late final _TranslationsMisskeyContextMenuTrTr contextMenu_ = _TranslationsMisskeyContextMenuTrTr._(_root);
	@override late final _TranslationsMisskeyGridComponentTrTr gridComponent_ = _TranslationsMisskeyGridComponentTrTr._(_root);
	@override late final _TranslationsMisskeyRoleSelectDialogTrTr roleSelectDialog_ = _TranslationsMisskeyRoleSelectDialogTrTr._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerTrTr customEmojisManager_ = _TranslationsMisskeyCustomEmojisManagerTrTr._(_root);
	@override late final _TranslationsMisskeyEmbedCodeGenTrTr embedCodeGen_ = _TranslationsMisskeyEmbedCodeGenTrTr._(_root);
	@override late final _TranslationsMisskeySelfXssPreventionTrTr selfXssPrevention_ = _TranslationsMisskeySelfXssPreventionTrTr._(_root);
	@override late final _TranslationsMisskeyFollowRequestTrTr followRequest_ = _TranslationsMisskeyFollowRequestTrTr._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsTrTr remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsTrTr._(_root);
	@override late final _TranslationsMisskeyCaptchaTrTr captcha_ = _TranslationsMisskeyCaptchaTrTr._(_root);
	@override late final _TranslationsMisskeyBootErrorsTrTr bootErrors_ = _TranslationsMisskeyBootErrorsTrTr._(_root);
	@override late final _TranslationsMisskeySearchTrTr search_ = _TranslationsMisskeySearchTrTr._(_root);
	@override late final _TranslationsMisskeyServerSetupWizardTrTr serverSetupWizard_ = _TranslationsMisskeyServerSetupWizardTrTr._(_root);
	@override late final _TranslationsMisskeyUploaderTrTr uploader_ = _TranslationsMisskeyUploaderTrTr._(_root);
	@override late final _TranslationsMisskeyClientPerformanceIssueTipTrTr clientPerformanceIssueTip_ = _TranslationsMisskeyClientPerformanceIssueTipTrTr._(_root);
	@override late final _TranslationsMisskeyClipTrTr clip_ = _TranslationsMisskeyClipTrTr._(_root);
	@override late final _TranslationsMisskeyUserListsTrTr userLists_ = _TranslationsMisskeyUserListsTrTr._(_root);
	@override String get watermark => 'Filigran';
	@override String get defaultPreset => 'Varsayılan Ön Ayar';
	@override late final _TranslationsMisskeyWatermarkEditorTrTr watermarkEditor_ = _TranslationsMisskeyWatermarkEditorTrTr._(_root);
	@override late final _TranslationsMisskeyImageEffectorTrTr imageEffector_ = _TranslationsMisskeyImageEffectorTrTr._(_root);
	@override String get drafts => 'Taslaklar';
	@override late final _TranslationsMisskeyDraftsTrTr drafts_ = _TranslationsMisskeyDraftsTrTr._(_root);
	@override String get qr => '2 boyutlu kod';
	@override late final _TranslationsMisskeyQrTrTr qr_ = _TranslationsMisskeyQrTrTr._(_root);
}

// Path: misskey.imageEditing_
class _TranslationsMisskeyImageEditingTrTr extends TranslationsMisskeyImageEditingEnUs {
	_TranslationsMisskeyImageEditingTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyImageEditingVarsTrTr vars_ = _TranslationsMisskeyImageEditingVarsTrTr._(_root);
}

// Path: misskey.imageFrameEditor_
class _TranslationsMisskeyImageFrameEditorTrTr extends TranslationsMisskeyImageFrameEditorEnUs {
	_TranslationsMisskeyImageFrameEditorTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Düzenleme kareleri';
	@override String get tip => 'Görselleri, meta verileri içeren çerçeveler ve etiketler ekleyerek süsleyebilirsiniz.';
	@override String get header => 'Başlık';
	@override String get footer => 'Alt bilgi';
	@override String get borderThickness => 'jantın genişliği';
	@override String get labelThickness => 'Etiket genişliği';
	@override String get labelScale => 'Etiket ölçeği';
	@override String get centered => 'Merkezlenmiş';
	@override String get captionMain => 'Altyazı (büyük)';
	@override String get captionSub => 'Altyazı (küçük)';
	@override String get availableVariables => 'Mevcut değişkenler';
	@override String get withQrCode => '2 boyutlu kod';
	@override String get backgroundColor => 'Arka Plan Rengi ';
	@override String get textColor => 'Metin Rengi ';
	@override String get font => 'Yazı tipi';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
	@override String get quitWithoutSaveConfirm => 'Kaydedilmemiş değişiklikleri silmek ister misin?';
	@override String get failedToLoadImage => 'Görüntü yükleme başarısız oldu ';
}

// Path: misskey.compression_
class _TranslationsMisskeyCompressionTrTr extends TranslationsMisskeyCompressionEnUs {
	_TranslationsMisskeyCompressionTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCompressionQualityTrTr quality_ = _TranslationsMisskeyCompressionQualityTrTr._(_root);
	@override late final _TranslationsMisskeyCompressionSizeTrTr size_ = _TranslationsMisskeyCompressionSizeTrTr._(_root);
}

// Path: misskey.order_
class _TranslationsMisskeyOrderTrTr extends TranslationsMisskeyOrderEnUs {
	_TranslationsMisskeyOrderTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get newest => 'Önce yeni';
	@override String get oldest => 'Önce eski';
}

// Path: misskey.chat_
class _TranslationsMisskeyChatTrTr extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get messages => 'Mesaj';
	@override String get noMessagesYet => 'Henüz mesaj yok';
	@override String get newMessage => 'Yeni mesaj';
	@override String get individualChat => 'Özel Sohbet';
	@override String get individualChat_description => 'Başka bir kişiyle özel sohbet edin.';
	@override String get roomChat => 'Sohbet Odası';
	@override String get roomChat_description => 'Birden fazla kişinin katılabileceği bir sohbet odası.\nÖzel sohbetlere izin vermeyen kişileri de davet edebilirsin, ancak davetini kabul etmeleri gerekir.';
	@override String get createRoom => 'Oda Oluştur';
	@override String get inviteUserToChat => 'Kullanıcıları sohbete davet edin';
	@override String get yourRooms => 'Oluşturulan odalar';
	@override String get joiningRooms => 'Katıldığı odalar';
	@override String get invitations => 'Davet';
	@override String get noInvitations => 'Davet yok';
	@override String get history => 'Tarih';
	@override String get noHistory => 'Geçmiş bilgisi mevcut değil';
	@override String get noRooms => 'Oda bulunamadı';
	@override String get inviteUser => 'Kullanıcıları Davet Et';
	@override String get sentInvitations => 'Gönderilen Davetler';
	@override String get join => 'Katıl';
	@override String get ignore => 'Yoksay';
	@override String get leave => 'Odadan çık';
	@override String get members => 'Üyeler';
	@override String get searchMessages => 'Mesajları ara';
	@override String get home => 'Ana Sayfa';
	@override String get send => 'Gönder';
	@override String get newline => 'Yeni satır';
	@override String get muteThisRoom => 'Sessiz oda';
	@override String get deleteRoom => 'Odayı sil';
	@override String get chatNotAvailableForThisAccountOrServer => 'Bu sunucuda veya bu hesapta sohbet özelliği etkin değildir.';
	@override String get chatIsReadOnlyForThisAccountOrServer => 'Bu sunucuda veya bu hesapta sohbet okunur modundadır. Yeni mesaj yazamaz veya sohbet odası oluşturamaz/katılamazsınız.';
	@override String get chatNotAvailableInOtherAccount => 'Sohbet işlevi diğer kullanıcı için devre dışı bırakılmıştır.';
	@override String get cannotChatWithTheUser => 'Bu kullanıcıyla sohbet başlatılamıyor.';
	@override String get cannotChatWithTheUser_description => 'Sohbet kullanılamıyor veya karşı taraf sohbeti etkinleştirmedi.';
	@override String get youAreNotAMemberOfThisRoomButInvited => 'Bu odanın katılımcısı değilsin, ancak bir davet aldın. Lütfen daveti kabul ederek katıl.';
	@override String get doYouAcceptInvitation => 'Daveti kabul ediyor musunuz?';
	@override String get chatWithThisUser => 'Kullanıcıyla sohbet et';
	@override String get thisUserAllowsChatOnlyFromFollowers => 'Bu kullanıcı yalnızca takipçilerinden gelen sohbetleri kabul eder.';
	@override String get thisUserAllowsChatOnlyFromFollowing => 'Bu kullanıcı, yalnızca takip ettiği kullanıcılardan gelen sohbetleri kabul eder.';
	@override String get thisUserAllowsChatOnlyFromMutualFollowing => 'Bu kullanıcı, yalnızca karşılıklı takip eden kullanıcıların sohbetlerini kabul eder.';
	@override String get thisUserNotAllowedChatAnyone => 'Bu kullanıcı kimseyle sohbet etmiyor.';
	@override String get chatAllowedUsers => 'Sohbet etmesine izin verilecek kişiler';
	@override String get chatAllowedUsers_note => 'Bu ayardan bağımsız olarak, sohbet mesajı gönderdiğin herkesle sohbet edebilirsin.';
	@override late final _TranslationsMisskeyChatChatAllowedUsersTrTr chatAllowedUsers_ = _TranslationsMisskeyChatChatAllowedUsersTrTr._(_root);
}

// Path: misskey.emojiPalette_
class _TranslationsMisskeyEmojiPaletteTrTr extends TranslationsMisskeyEmojiPaletteEnUs {
	_TranslationsMisskeyEmojiPaletteTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get palettes => 'Palet';
	@override String get enableSyncBetweenDevicesForPalettes => 'Cihazlar arasında palet senkronizasyonunu etkinleştir';
	@override String get paletteForMain => 'Ana palet';
	@override String get paletteForReaction => 'Reaksiyon paleti';
}

// Path: misskey.settings_
class _TranslationsMisskeySettingsTrTr extends TranslationsMisskeySettingsEnUs {
	_TranslationsMisskeySettingsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get driveBanner => 'Drive\'ı yönetebilir ve yapılandırabilir, kullanımı kontrol edebilir ve dosya yükleme ayarlarını yapılandırabilirsin.';
	@override String get pluginBanner => 'Eklentilerle istemci özelliklerini genişletebilirsin. Eklentileri yükleyebilir, ayrı ayrı yapılandırabilir ve yönetebilirsin.';
	@override String get notificationsBanner => 'Sunucudan gelen bildirimlerin türlerini ve kapsamını ve push bildirimlerini yapılandırabilirsin.';
	@override String get api => 'API';
	@override String get webhook => 'Webhook';
	@override String get serviceConnection => 'Hizmet entegrasyonu';
	@override String get serviceConnectionBanner => 'Dış uygulamalar veya hizmetlerle entegrasyon sağlamak için erişim belirteçlerini ve Webhook\'ları yönetin ve yapılandırın.';
	@override String get accountData => 'Hesap verileri';
	@override String get accountDataBanner => 'Hesap verilerini yönetmek için dışa ve içe aktarma.';
	@override String get muteAndBlockBanner => 'İçeriği gizlemek ve belirli kullanıcıların eylemlerini kısıtlamak için ayarları yapılandırabilir ve yönetebilirsin.';
	@override String get accessibilityBanner => 'İstemci, görünüm ve davranışları açısından en iyi şekilde kullanılmak üzere kişiselleştirilebilir ve ayarlanabilir.';
	@override String get privacyBanner => 'Hesap gizliliği ile ilgili ayarları, örneğin içerik görünürlüğü, bulunabilirlik ve takip onayı gibi ayarları yapılandırabilirsin.';
	@override String get securityBanner => 'Şifre, oturum açma yöntemleri, kimlik doğrulama uygulamaları ve Passkeys gibi hesap güvenliği ile ilgili ayarları yapılandırabilirsin.';
	@override String get preferencesBanner => 'İstediğin şekilde istemcinin genel davranışını yapılandırabilirsin.';
	@override String get appearanceBanner => 'İstemcinin görünüm ve ekran ayarlarını tercihlerini göre yapılandırabilirsin.';
	@override String get soundsBanner => 'İstemcide oynatma için ses ayarlarını yapılandırabilirsin.';
	@override String get timelineAndNote => 'Pano ve not';
	@override String get makeEveryTextElementsSelectable => 'Tüm metin öğelerini seçilebilir hale getir';
	@override String get makeEveryTextElementsSelectable_description => 'Bunu etkinleştirmek bazı durumlarda kullanılabilirliği azaltabilir.';
	@override String get useStickyIcons => 'Kaydırma sırasında simgeleri takip et';
	@override String get enableHighQualityImagePlaceholders => 'Yüksek kaliteli görüntüler için yer tutucuları göster';
	@override String get uiAnimations => 'UI Animasyonları';
	@override String get showNavbarSubButtons => 'Navigasyon çubuğunda alt düğmeleri göster';
	@override String get ifOn => 'Açıkken';
	@override String get ifOff => 'Kapalıyken';
	@override String get enableSyncThemesBetweenDevices => 'Yüklü temaları cihazlar arasında senkronize edin';
	@override String get enablePullToRefresh => 'Yenilemek için çekin';
	@override String get enablePullToRefresh_description => 'Fareyi kullanırken, kaydırma tekerleğini basılı tutarken sürükle.';
	@override String get realtimeMode_description => 'Sunucu ile bağlantı kurar ve içeriği gerçek zamanlı olarak günceller. Bu, trafik ve bellek tüketimini artırabilir.';
	@override String get contentsUpdateFrequency => 'İçerik erişim sıklığı';
	@override String get contentsUpdateFrequency_description => 'Değer ne kadar yüksek olursa içerik o kadar sık güncellenir, ancak bu durum performansı düşürür ve trafik ile bellek tüketimini artırır.';
	@override String get contentsUpdateFrequency_description2 => 'Gerçek zamanlı mod açık olduğunda, bu ayardan bağımsız olarak içerik gerçek zamanlı olarak güncellenir.';
	@override String get showUrlPreview => 'URL önizlemesi';
	@override String get showAvailableReactionsFirstInNote => 'Mevcut tepkileri en üstte göster.';
	@override String get showPageTabBarBottom => 'Sayfa sekme çubuğunu aşağıda göster';
	@override String get emojiPaletteBanner => 'Emoji seçiciye kalıcı olarak bir palet olarak görüntülenecek ön ayarları kaydedebilir veya seçicinin nasıl görüntüleneceğini özelleştirebilirsiniz.';
	@override String get enableAnimatedImages => 'Hareketli görüntüleri etkinleştirin';
	@override String get settingsPersistence_title => 'Ayarların kalıcılığı';
	@override String get settingsPersistence_description1 => 'Ayarların kalıcı olarak saklanmasını etkinleştirmek, yapılandırma bilgilerinin kaybolmasını önler.';
	@override String get settingsPersistence_description2 => 'Ortamınıza bağlı olarak bu özelliği etkinleştirmek mümkün olmayabilir.';
	@override late final _TranslationsMisskeySettingsChatTrTr chat_ = _TranslationsMisskeySettingsChatTrTr._(_root);
}

// Path: misskey.preferencesProfile_
class _TranslationsMisskeyPreferencesProfileTrTr extends TranslationsMisskeyPreferencesProfileEnUs {
	_TranslationsMisskeyPreferencesProfileTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get profileName => 'Profil adı';
	@override String get profileNameDescription => 'Bu cihazı tanımlayan bir ad belirle.';
	@override String get profileNameDescription2 => 'Örnek: “Ana bilgisayar”, “Akıllı telefon”';
	@override String get manageProfiles => 'Profilleri Yönet';
	@override String get shareSameProfileBetweenDevicesIsNotRecommended => 'Aynı profili birden fazla cihazda kullanmak önerilmez.';
	@override String get useSyncBetweenDevicesOptionIfYouWantToSyncSetting => 'Birden fazla cihazda senkronize etmek istediğiniz ayarlarınız varsa, lütfen her bir ayar için "Birden fazla cihazda senkronize et" seçeneğini etkinleştirin.';
}

// Path: misskey.preferencesBackup_
class _TranslationsMisskeyPreferencesBackupTrTr extends TranslationsMisskeyPreferencesBackupEnUs {
	_TranslationsMisskeyPreferencesBackupTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get autoBackup => 'Otomatik yedekleme';
	@override String get restoreFromBackup => 'Yedeklemeden geri yükle';
	@override String get noBackupsFoundTitle => 'Yedekleme bulunamadı';
	@override String get noBackupsFoundDescription => 'Otomatik olarak oluşturulan yedekleme bulunamadı, ancak manuel olarak bir yedekleme dosyası kaydettiysen, bunu içe aktarabilir ve geri yükleyebilirsin.';
	@override String get selectBackupToRestore => 'Geri yüklemek için bir yedekleme seçin';
	@override String get youNeedToNameYourProfileToEnableAutoBackup => 'Otomatik yedeklemeyi etkinleştirmek için bir profil adı ayarlanmalıdır.';
	@override String get autoPreferencesBackupIsNotEnabledForThisDevice => 'Bu cihazda ayarların otomatik yedeklemesi etkinleştirilmemiş.';
	@override String get backupFound => 'Ayarların yedeği bulundu';
	@override String get forceBackup => 'Ayarların zorunlu yedeklenmesi';
}

// Path: misskey.accountSettings_
class _TranslationsMisskeyAccountSettingsTrTr extends TranslationsMisskeyAccountSettingsEnUs {
	_TranslationsMisskeyAccountSettingsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get requireSigninToViewContents => 'İçeriği görüntülemek için oturum açmanız gerekir.';
	@override String get requireSigninToViewContentsDescription1 => 'Oluşturduğun tüm notları ve diğer içeriği görüntülemek için oturum açman gerekir. Bu, tarayıcıların bilgilerini toplamasına engel olacaktır.';
	@override String get requireSigninToViewContentsDescription2 => 'İçerik, URL önizlemelerinde (OGP), web sayfalarına gömülü olarak veya not alıntıları desteklemeyen sunucularda görüntülenmeyecek.';
	@override String get requireSigninToViewContentsDescription3 => 'Bu kısıtlamalar, diğer uzak sunuculardan gelen birleştirilmiş içerik için geçerli olmayabilir.';
	@override String get makeNotesFollowersOnlyBefore => 'Geçmiş notların yalnızca takipçilere gösterilmesini sağlayın';
	@override String get makeNotesFollowersOnlyBeforeDescription => 'Bu özellik etkinleştirildiğinde, yalnızca takipçiler belirlenen tarih ve saatten sonra veya belirlenen süre boyunca görünür olan notları görebilir. Bu özellik devre dışı bırakıldığında, notun yayın durumu da geri yüklenir.';
	@override String get makeNotesHiddenBefore => 'Geçmiş notları gizli yap';
	@override String get makeNotesHiddenBeforeDescription => 'Bu özellik etkinleştirildiğinde, belirlenen tarih ve saatten geçmiş olan veya yalnızca sizin görebildiğiniz notlar. Bu özellik devre dışı bırakıldığında, notun yayın durumu da geri yüklenecek.';
	@override String get mayNotEffectForFederatedNotes => 'Uzak sunucuya bağlı notlar etkilenmeyebilir.';
	@override String get mayNotEffectSomeSituations => 'Bu kısıtlamalar basitleştirilmiştir. Uzaktaki bir sunucuda görüntüleme veya moderasyon sırasında gibi bazı durumlarda geçerli olmayabilir.';
	@override String get notesHavePassedSpecifiedPeriod => 'Belirtilen sürenin geçtiğini unutmayın.';
	@override String get notesOlderThanSpecifiedDateAndTime => 'Belirtilen tarih ve saatten önceki notlar';
}

// Path: misskey.abuseUserReport_
class _TranslationsMisskeyAbuseUserReportTrTr extends TranslationsMisskeyAbuseUserReportEnUs {
	_TranslationsMisskeyAbuseUserReportTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get forward => 'İleri';
	@override String get forwardDescription => 'Raporu, anonim bir sistem hesabı olarak uzak bir sunucuya iletin.';
	@override String get resolve => 'Çözüm';
	@override String get accept => 'Kabul et';
	@override String get reject => 'Reddet';
	@override String get resolveTutorial => 'Raporun içeriği meşruysa, “Kabul Et” seçeneğini seçerek sorunu çözülmüş olarak işaretle.\nRaporun içeriği meşru değilse, “Reddet” seçeneğini seçerek raporu yok say.';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryTrTr extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get status => 'Teslimat durumu';
	@override String get stop => 'Askıya al';
	@override String get resume => 'Teslimat özgeçmişi';
	@override late final _TranslationsMisskeyDeliveryTypeTrTr type_ = _TranslationsMisskeyDeliveryTypeTrTr._(_root);
}

// Path: misskey.bubbleGame_
class _TranslationsMisskeyBubbleGameTrTr extends TranslationsMisskeyBubbleGameEnUs {
	_TranslationsMisskeyBubbleGameTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => 'Nasıl oynanır';
	@override String get hold => 'Tut';
	@override late final _TranslationsMisskeyBubbleGameScoreTrTr score_ = _TranslationsMisskeyBubbleGameScoreTrTr._(_root);
	@override late final _TranslationsMisskeyBubbleGameHowToPlayTrTr howToPlay_ = _TranslationsMisskeyBubbleGameHowToPlayTrTr._(_root);
}

// Path: misskey.announcement_
class _TranslationsMisskeyAnnouncementTrTr extends TranslationsMisskeyAnnouncementEnUs {
	_TranslationsMisskeyAnnouncementTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => 'Sadece mevcut kullanıcılar';
	@override String get forExistingUsersDescription => 'Bu duyuru, etkinleştirildiğinde yalnızca yayınlandığı anda mevcut olan kullanıcılara gösterilecek. Devre dışı bırakıldığında, yayınlandıktan sonra yeni kaydolan kullanıcılar da bu duyuruyu görecek.';
	@override String get needConfirmationToRead => 'Ayrı okuma onayı gerektirir';
	@override String get needConfirmationToReadDescription => 'Etkinleştirildiğinde, bu duyuruyu okundu olarak işaretlemek için ayrı bir onay mesajı görüntülenir. Bu duyuru, “Tümünü okundu olarak işaretle” işlevinden de hariç tutulur.';
	@override String get end => 'Arşiv duyurusu';
	@override String get tooManyActiveAnnouncementDescription => 'Çok fazla aktif duyuru olması kullanıcı deneyimini kötüleştirebilir. Artık geçerliliğini yitirmiş duyuruları arşivlemeyi düşün.';
	@override String get readConfirmTitle => 'Okundu olarak işaretle?';
	@override String readConfirmText({required Object title}) => 'Bu, “${title}” içeriğini okundu olarak işaretleyecek.';
	@override String get shouldNotBeUsedToPresentPermanentInfo => 'Duyuruları, uzun vadede geçerli olacak bilgiler için değil, güncel ve zaman sınırlı bilgileri yayınlamak için kullanmak en iyisidir.';
	@override String get dialogAnnouncementUxWarn => 'Aynı anda iki veya daha fazla diyalog tarzı bildirim olması, kullanıcı deneyimini önemli ölçüde etkileyebilir, bu nedenle lütfen bunları dikkatli kullanın.';
	@override String get silence => 'Bildirim yok';
	@override String get silenceDescription => 'Bu seçeneği etkinleştirdiğinde, bu duyurunun bildirimi atlanacak ve kullanıcı bunu okumak zorunda kalmayacak.';
}

// Path: misskey.initialAccountSetting_
class _TranslationsMisskeyInitialAccountSettingTrTr extends TranslationsMisskeyInitialAccountSettingEnUs {
	_TranslationsMisskeyInitialAccountSettingTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => 'Hesabınız başarıyla oluşturuldu!';
	@override String get letsStartAccountSetup => 'Şimdi hesabını oluşturalım.';
	@override String get letsFillYourProfile => 'Önce profilini oluşturalım.';
	@override String get profileSetting => 'Profil ayarları';
	@override String get privacySetting => 'Gizlilik ayarları';
	@override String get theseSettingsCanEditLater => 'Bu ayarları daha sonra istediğin zaman değiştirebilirsin.';
	@override String get youCanEditMoreSettingsInSettingsPageLater => '“Ayarlar” sayfasından yapılandırabileceğin daha birçok ayar bulunmaktadır. Daha sonra mutlaka ziyaret et.';
	@override String get followUsers => 'İlgilendiğiniz bazı kullanıcıları takip ederek zaman akışını oluşturmaya çalış.';
	@override String pushNotificationDescription({required Object name}) => 'Push bildirimlerini etkinleştirdiğinde, ${name} adresinden gelen bildirimleri doğrudan cihazınıza alabilirsin.';
	@override String get initialAccountSettingCompleted => 'Profil kurulumu tamamlandı!';
	@override String haveFun({required Object name}) => '${name} ile iyi eğlenceler!';
	@override String youCanContinueTutorial({required Object name}) => '${name} (Misskey) öğreticisine geçebilir veya buradan kurulumu sonlandırıp hemen kullanabilirsin.';
	@override String get startTutorial => 'Öğreticiye başla';
	@override String get skipAreYouSure => 'Profil kurulumunu cidden atlamak mı istiyorsun?';
	@override String get laterAreYouSure => 'Profil ayarlarını cidden daha sonra mı yapacaksın?';
}

// Path: misskey.initialTutorial_
class _TranslationsMisskeyInitialTutorialTrTr extends TranslationsMisskeyInitialTutorialEnUs {
	_TranslationsMisskeyInitialTutorialTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'Öğreticiyi izle';
	@override String get title => 'Öğretici';
	@override String get wellDone => 'Tebrikler!';
	@override String get skipAreYouSure => 'Öğreticiyi kapatmak mı istiyorsunuz?';
	@override late final _TranslationsMisskeyInitialTutorialLandingTrTr landing_ = _TranslationsMisskeyInitialTutorialLandingTrTr._(_root);
	@override late final _TranslationsMisskeyInitialTutorialNoteTrTr note_ = _TranslationsMisskeyInitialTutorialNoteTrTr._(_root);
	@override late final _TranslationsMisskeyInitialTutorialReactionTrTr reaction_ = _TranslationsMisskeyInitialTutorialReactionTrTr._(_root);
	@override late final _TranslationsMisskeyInitialTutorialTimelineTrTr timeline_ = _TranslationsMisskeyInitialTutorialTimelineTrTr._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteTrTr postNote_ = _TranslationsMisskeyInitialTutorialPostNoteTrTr._(_root);
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveTrTr howToMakeAttachmentsSensitive_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveTrTr._(_root);
	@override late final _TranslationsMisskeyInitialTutorialDoneTrTr done_ = _TranslationsMisskeyInitialTutorialDoneTrTr._(_root);
}

// Path: misskey.timelineDescription_
class _TranslationsMisskeyTimelineDescriptionTrTr extends TranslationsMisskeyTimelineDescriptionEnUs {
	_TranslationsMisskeyTimelineDescriptionTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get home => 'Ana Pano\'da, takip ettiğin hesapların notlarını görebilirsin.';
	@override String get local => 'Yerel Pano\'da, bu sunucudaki tüm kullanıcıların notlarını görebilirsin.';
	@override String get social => 'Pano, Sosyal Pano ve Yerel Pano\'dan gelen notları görüntüler.';
	@override String get global => 'Global Pano\'da, bağlı tüm sunuculardan gelen notları görebilirsin.';
}

// Path: misskey.serverRules_
class _TranslationsMisskeyServerRulesTrTr extends TranslationsMisskeyServerRulesEnUs {
	_TranslationsMisskeyServerRulesTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get description => 'Kayıt öncesinde gösterilecek bir dizi kural. Hizmet Şartlarının özetini belirlemen önerilir.';
}

// Path: misskey.serverSettings_
class _TranslationsMisskeyServerSettingsTrTr extends TranslationsMisskeyServerSettingsEnUs {
	_TranslationsMisskeyServerSettingsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get iconUrl => 'Simge URL\'si';
	@override String appIconDescription({required Object host}) => ' ${host} bir uygulama olarak görüntülendiğinde kullanılacak simgeyi belirtir.';
	@override String get appIconUsageExample => 'Örneğin, PWA olarak veya bir telefonda ana ekran yer imi olarak görüntülendiğinde';
	@override String get appIconStyleRecommendation => 'Simge kare veya daire şeklinde kırpılabileceğinden, içeriğin etrafında renkli kenar boşluğu bulunan bir simge kullanılması önerilir.';
	@override String appIconResolutionMustBe({required Object resolution}) => 'Minimum çözünürlük ${resolution}\'tür.';
	@override String get manifestJsonOverride => 'manifest.json Geçersiz Kılma';
	@override String get shortName => 'Kısa ad';
	@override String get shortNameDescription => 'Resmi adın uzun olması durumunda görüntülenebilen, örneğin adının kısaltması.';
	@override String get fanoutTimelineDescription => 'Etkinleştirildiğinde Pano alma performansını büyük ölçüde artırır ve veritabanı yükünü azaltır. Bunun karşılığında Redis\'in bellek kullanımı artacaktır. Sunucu belleği düşükse veya sunucu kararsızsa bunu devre dışı bırakmayı düşün.';
	@override String get fanoutTimelineDbFallback => 'Veritabanına geri dön';
	@override String get fanoutTimelineDbFallbackDescription => 'Etkinleştirildiğinde, Pano önbelleğe alınmamışsa ek sorgular için veritabanına geri döner. Bu özelliği devre dışı bırakmak, geri dönüş sürecini ortadan kaldırarak sunucu yükünü daha da azaltır, ancak alınabilecek panoların aralığını sınırlar.';
	@override String get reactionsBufferingDescription => 'Etkinleştirildiğinde, reaksiyon oluşturma sırasında performans büyük ölçüde artacak ve veritabanı üzerindeki yük azalacaktır. Ancak, Redis bellek kullanımı artacakt.';
	@override String get remoteNotesCleaning => 'Uzak notların otomatik olarak temizlenmesi';
	@override String get remoteNotesCleaning_description => 'Etkinleştirildiğinde, kullanılmayan ve güncelliğini yitirmiş uzak notlar, veritabanının şişmesini önlemek için periyodik olarak temizlenecek.';
	@override String get remoteNotesCleaningMaxProcessingDuration => 'Maksimum temizleme işlem süresi';
	@override String get remoteNotesCleaningExpiryDaysForEachNotes => 'Notları saklamak için minimum gün sayısı';
	@override String get inquiryUrl => 'Sorgu URL\'si';
	@override String get inquiryUrlDescription => 'Sorgu formu için sunucu yöneticisine bir URL veya iletişim bilgileri için bir web sayfası belirtin.';
	@override String get openRegistration => 'Hesap oluşturmayı açık hale getir';
	@override String get openRegistrationWarning => 'Kayıt açma işlemi riskler içerir. Sunucuyu sürekli olarak izleyen ve herhangi bir sorun durumunda hemen müdahale edebilen bir sistemin varsa, bu işlemi etkinleştirmen önerilir.';
	@override String get thisSettingWillAutomaticallyOffWhenModeratorsInactive => 'Bir süre boyunca moderatör etkinliği algılanmazsa, spam\'ı önlemek için bu ayar otomatik olarak kapatılır.';
	@override String get deliverSuspendedSoftware => 'Askıya Alınan Yazılım';
	@override String get deliverSuspendedSoftwareDescription => 'Güvenlik açığı veya diğer nedenlerle sunucunun yazılımının belirli bir isim ve sürüm aralığı için teslimatı durdurabilirsiniz. Bu sürüm bilgileri sunucu tarafından sağlanır ve güvenilirliği garanti edilmez. Sürümü belirtmek için semver aralığı belirtilebilir, ancak >= 2024.3.1 belirtildiğinde 2024.3.1-custom.0 gibi özel sürümler dahil edilmez, bu nedenle >= 2024.3.1-0 gibi ön sürüm belirtimi kullanılması önerilir.';
	@override String get singleUserMode => 'Tek kullanıcı modu';
	@override String get singleUserMode_description => 'Bu sunucunun tek kullanıcısıysanız, bu modu etkinleştirerek performansını optimize edebilirsin.';
	@override String get signToActivityPubGet => 'ActivityPub GET isteklerini imzalayın';
	@override String get signToActivityPubGet_description => 'Normalde bu özellik etkinleştirilmiş olmalıdır. Bu özelliği devre dışı bırakmak federasyonla ilgili sorunları iyileştirebilir, ancak diğer yandan bazı diğer sunuculara yönelik federasyonu devre dışı bırakabilir.';
	@override String get proxyRemoteFiles => 'Proxy uzak dosyalar';
	@override String get proxyRemoteFiles_description => 'Etkinleştirildiğinde, sunucu uzak dosyaları proxy olarak kullanır ve sunar. Bu, resim küçük resimleri oluşturmak ve kullanıcı gizliliğini korumak için kullanışlıdır.';
	@override String get allowExternalApRedirect => 'ActivityPub aracılığıyla yapılan sorgular için yönlendirmelere izin ver';
	@override String get allowExternalApRedirect_description => 'Etkinleştirildiğinde, diğer sunucular bu sunucu aracılığıyla üçüncü taraf içeriğini sorgulayabilir, ancak bu durum içerik sahteciliğine yol açabilir.';
	@override String get userGeneratedContentsVisibilityForVisitor => 'Kullanıcılar tarafından oluşturulan içeriğin misafirlere görünürlüğü';
	@override String get userGeneratedContentsVisibilityForVisitor_description => 'Bu, uygunsuz ve iyi denetlenmemiş uzaktaki içeriğin kendi sunucunuz aracılığıyla istemeden internette yayınlanmasını önlemek için yararlıdır.';
	@override String get userGeneratedContentsVisibilityForVisitor_description2 => 'Sunucu tarafından alınan uzak içerik dahil olmak üzere sunucudaki tüm içeriği koşulsuz olarak İnternet\'e yayınlamak risklidir. Bu, içeriğin dağıtılmış yapısından haberdar olmayan misafirler için özellikle önemlidir, çünkü onlar yanlışlıkla uzak içeriğin bile sunucudaki kullanıcılar tarafından oluşturulan içerik olduğunu düşünebilirler.';
	@override String get restartServerSetupWizardConfirm_title => 'Sunucu kurulum sihirbazını yeniden başlatmak ister misin?';
	@override String get restartServerSetupWizardConfirm_text => 'Bazı mevcut ayarlar sıfırlanacaktır.';
	@override String get entrancePageStyle => 'Giriş sayfası stili';
	@override String get showTimelineForVisitor => 'Panoyu göster';
	@override String get showActivitiesForVisitor => 'Aktiviteleri göster';
	@override late final _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorTrTr userGeneratedContentsVisibilityForVisitor_ = _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorTrTr._(_root);
}

// Path: misskey.accountMigration_
class _TranslationsMisskeyAccountMigrationTrTr extends TranslationsMisskeyAccountMigrationEnUs {
	_TranslationsMisskeyAccountMigrationTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => 'Başka bir hesabı bu hesaba taşıyın';
	@override String get moveFromSub => 'Başka bir hesaba takma ad oluşturun';
	@override String moveFromLabel({required Object n}) => 'Orijinal Hesap #${n}';
	@override String get moveFromDescription => 'Bu hesaptan taşınacak hesap için bir takma ad oluşturmalısınız.\nTaşınacak hesabı aşağıdaki biçimde girin: @username@server.example.com\nTakma adı silmek için alanı boş bırakın (önerilmez).';
	@override String get moveTo => 'Bu hesabı başka bir hesaba taşıyın';
	@override String get moveToLabel => 'Taşınacak hesap:';
	@override String get moveCannotBeUndone => 'Hesap taşıma işlemi geri alınamaz.';
	@override String get moveAccountDescription => 'Bu işlem, hesabını farklı bir hesaba taşıyacaktır.\n・Bu hesabın takipçileri otomatik olarak yeni hesaba taşınacak.\n・Bu hesap, şu anda takip ettiği tüm kullanıcıları takipten çıkaracak.\n・Bu hesapta yeni notlar vb. oluşturamayacaksın.\n\nTakipçilerin taşınması otomatik olarak gerçekleşirken, takip ettiğin kullanıcıların listesini taşımak için bazı adımları manuel olarak hazırlaman gerekir. Bunu yapmak için, ayarlar menüsünden takipçilerini dışa aktar ve daha sonra yeni hesaba içe aktar. Aynı prosedür, listelerinin yanı sıra sessize aldığın ve engellediğin kullanıcılar için de geçerli.\n\n(Bu açıklama Misskey v13.12.0 ve sonraki sürümler için geçerlidir. Mastodon gibi diğer ActivityPub yazılımları farklı şekilde çalışabilir.)';
	@override String get moveAccountHowTo => 'Geçiş yapmak için, önce taşınacak hesapta bu hesap için bir takma ad oluşturun.\nTakma adı oluşturduktan sonra, taşınacak hesabı aşağıdaki biçimde girin: @username@server.example.com';
	@override String get startMigration => 'Taşın';
	@override String migrationConfirm({required Object account}) => 'Bu hesabı ${account} hesabına gerçekten taşımak istiyor musun? Bu işlem başlatıldıktan sonra durdurulamaz veya geri alınamaz ve bu hesabı artık orijinal haliyle kullanamazsın.';
	@override String get movedAndCannotBeUndone => '\nBu hesap taşınmıştır.\nTaşıma işlemi geri alınamaz.';
	@override String get postMigrationNote => 'Bu hesap, geçiş işlemi tamamlandıktan 24 saat sonra şu anda takip ettiği tüm hesapları takipten çıkaracak.\nHem takipçi sayısı hem de takip edilenler sayısı sıfır olacak. Takipçilerinin bu hesabın yalnızca takipçilere açık gönderilerini görememesi durumunu önlemek için, takipçilerin bu hesabı takip etmeye devam edecek.';
	@override String get movedTo => 'Yeni hesap:';
}

// Path: misskey.achievements_
class _TranslationsMisskeyAchievementsTrTr extends TranslationsMisskeyAchievementsEnUs {
	_TranslationsMisskeyAchievementsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Şurada açıldı';
	@override late final _TranslationsMisskeyAchievementsTypesTrTr types_ = _TranslationsMisskeyAchievementsTypesTrTr._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRoleTrTr extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRoleTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Yeni rol';
	@override String get edit => 'Rolü düzenle';
	@override String get name => 'Rol adı';
	@override String get description => 'Rol tanımı';
	@override String get permission => 'Rol izinleri';
	@override String get descriptionOfPermission => '<b>Moderators</b> temel moderasyon işlemlerini gerçekleştirebilir.\n<b>Administrators</b> örneğin tüm ayarlarını değiştirebilir.';
	@override String get assignTarget => 'Görev türü';
	@override String get descriptionOfAssignTarget => 'Bu rolün parçası olan ve olmayan kişileri manuel olarak değiştirmek için </b>manuel</b>.\nKullanıcıların bir koşula bağlı olarak bu role otomatik olarak atanmasını ve bu rolden çıkarılmasını sağlamak için <b>koşullu.</b>';
	@override String get manual => 'Kılavuz';
	@override String get manualRoles => 'Manuel roller';
	@override String get conditional => 'Koşullu';
	@override String get conditionalRoles => 'Koşullu roller';
	@override String get condition => 'Durum';
	@override String get isConditionalRole => 'Bu, koşullu bir roldür.';
	@override String get isPublic => 'Kamu rolü';
	@override String get descriptionOfIsPublic => 'Bu rol, atanan kullanıcıların profillerinde görüntülenecek.';
	@override String get options => 'Seçenekler';
	@override String get policies => 'Politikalar';
	@override String get baseRole => 'Rol şablonu';
	@override String get useBaseValue => 'Rol şablonu değerini kullan';
	@override String get chooseRoleToAssign => 'Atamak istediğin rolü seç';
	@override String get iconUrl => 'Simge URL\'si';
	@override String get asBadge => 'Rozet olarak göster';
	@override String get descriptionOfAsBadge => 'This role\'s icon will be displayed next to the username of users with this role if turned on.';
	@override String get isExplorable => 'Rolü keşfedilebilir hale getir';
	@override String get descriptionOfIsExplorable => 'Bu rolün panosu ve bu role sahip kullanıcıların listesi, etkinleştirilirse kamuya açık hale getirilecek.';
	@override String get displayOrder => 'Pozisyon';
	@override String get descriptionOfDisplayOrder => 'Sayı ne kadar yüksekse, UI pozisyonu da o kadar yüksek olur.';
	@override String get preserveAssignmentOnMoveAccount => 'Geçiş sırasında rol atamalarını koruyun';
	@override String get preserveAssignmentOnMoveAccount_description => 'Etkinleştirildiğinde, bu rol, bu role sahip bir hesap taşındığında hedef hesaba aktarılacak.';
	@override String get canEditMembersByModerator => 'Moderatörlerin bu rol için üye listesini düzenlemesine izin ver';
	@override String get descriptionOfCanEditMembersByModerator => 'Etkinleştirildiğinde, moderatörler ve yöneticiler bu role kullanıcıları atayabilir ve atamalarını kaldırabilir. Devre dışı bırakıldığında, yalnızca yöneticiler kullanıcıları atayabilir.';
	@override String get priority => 'Öncelik';
	@override late final _TranslationsMisskeyRolePriorityTrTr priority_ = _TranslationsMisskeyRolePriorityTrTr._(_root);
	@override late final _TranslationsMisskeyRoleOptionsTrTr options_ = _TranslationsMisskeyRoleOptionsTrTr._(_root);
	@override late final _TranslationsMisskeyRoleConditionTrTr condition_ = _TranslationsMisskeyRoleConditionTrTr._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _TranslationsMisskeySensitiveMediaDetectionTrTr extends TranslationsMisskeySensitiveMediaDetectionEnUs {
	_TranslationsMisskeySensitiveMediaDetectionTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get description => 'Makine öğrenimi yoluyla hassas medyayı otomatik olarak tanıyarak sunucu moderasyonunun yükünü azaltır. Bu, sunucu üzerindeki yükü biraz artıracaktır.';
	@override String get sensitivity => 'Algılama hassasiyeti';
	@override String get sensitivityDescription => 'Hassasiyeti azaltmak, yanlış algılamaların (yanlış pozitifler) azalmasına neden olurken, hassasiyeti artırmak ise algılamaların kaçırılmasının (yanlış negatifler) azalmasına neden olur.';
	@override String get setSensitiveFlagAutomatically => 'Hassas olarak işaretle';
	@override String get setSensitiveFlagAutomaticallyDescription => 'Bu seçenek kapatılsa bile, dahili algılama sonuçları korunacaktır.';
	@override String get analyzeVideos => 'Videoların analizini etkinleştir';
	@override String get analyzeVideosDescription => 'Görüntülerin yanı sıra videoları da analiz eder. Bu, sunucu üzerindeki yükü biraz artıracaktır.';
}

// Path: misskey.emailUnavailable_
class _TranslationsMisskeyEmailUnavailableTrTr extends TranslationsMisskeyEmailUnavailableEnUs {
	_TranslationsMisskeyEmailUnavailableTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get used => 'Bu E-Posta adresi zaten kullanılıyor.';
	@override String get format => 'Bu E-Posta adresinin biçimi geçersizdir.';
	@override String get disposable => 'Tek kullanımlık E-Posta adresleri kullanılamaz.';
	@override String get mx => 'Bu E-Posta sunucusu geçersizdir.';
	@override String get smtp => 'Bu E-Posta sunucusu yanıt vermiyor.';
	@override String get banned => 'Bu E-Posta adresiyle kayıt olamazsınız.';
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilityTrTr extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilityTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get public => 'Bu e-posta adresiyle kayıt olamazsınız.';
	@override String get followers => 'Sadece takipçiler tarafından görülebilir';
	@override String get private => 'Özel';
}

// Path: misskey.signup_
class _TranslationsMisskeySignupTrTr extends TranslationsMisskeySignupEnUs {
	_TranslationsMisskeySignupTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Neredeyse vardık';
	@override String get emailAddressInfo => 'Lütfen E-Posta adresini gir. Bu adres kamuya açık hale getirilmeyecek.';
	@override String emailSent({required Object email}) => 'Onay e-postası E-Posta adresine (${email}) gönderilmiştir. Hesap oluşturma işlemini tamamlamak için e-postadaki bağlantıya tıkla.';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeleteTrTr extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeleteTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Hesabı sil';
	@override String get mayTakeTime => 'Hesap silme işlemi kaynak yoğun bir işlem olduğundan, oluşturduğun içerik miktarına ve yüklediğin dosya sayısına bağlı olarak tamamlanması biraz zaman alabilir.';
	@override String get sendEmail => 'Hesap silme işlemi tamamlandıktan sonra, bu hesaba kayıtlı E-Posta adresine bir e-posta gönderilecek.';
	@override String get requestAccountDelete => 'Hesap silme talebi';
	@override String get started => 'Silme işlemi başlatıldı.';
	@override String get inProgress => 'Silme işlemi şu anda devam ediyor.';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdTrTr extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get back => 'Geri';
	@override String get reduceFrequencyOfThisAd => 'Bu reklamı daha az göster';
	@override String get hide => 'Gizle';
	@override String get timezoneinfo => 'Haftanın günü, sunucunun saat diliminden belirlenir.';
	@override String get adsSettings => 'Reklam ayarları';
	@override String get notesPerOneAd => 'Gerçek zamanlı güncelleme reklam yerleşim aralığı (Reklam başına notlar)';
	@override String get setZeroToDisable => 'Bu değeri 0 olarak ayarlayarak gerçek zamanlı güncelleme reklamlarını devre dışı bırakın.';
	@override String get adsTooClose => 'Mevcut reklam aralığı çok düşük olduğu için kullanıcı deneyimini önemli ölçüde kötüleştirebilir.';
}

// Path: misskey.forgotPassword_
class _TranslationsMisskeyForgotPasswordTrTr extends TranslationsMisskeyForgotPasswordEnUs {
	_TranslationsMisskeyForgotPasswordTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Kayıt olurken kullandığın E-Posta adresini gir. Şifreni sıfırlayabileceğin bir bağlantı bu adrese gönderilecek.';
	@override String get ifNoEmail => 'Kayıt sırasında E-Posta kullanmadıysanız, lütfen bunun yerine sunucu yöneticisiyle iletişime geçin.';
	@override String get contactAdmin => 'This instance does not support using email addresses, please contact the instance administrator to reset your password instead.';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryTrTr extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get my => 'Benim Galerim';
	@override String get liked => 'Beğenilen Gönderiler';
	@override String get like => 'Beğen';
	@override String get unlike => 'Benzerlerini kaldır';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailTrTr extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowTrTr follow_ = _TranslationsMisskeyEmailFollowTrTr._(_root);
	@override late final _TranslationsMisskeyEmailReceiveFollowRequestTrTr receiveFollowRequest_ = _TranslationsMisskeyEmailReceiveFollowRequestTrTr._(_root);
}

// Path: misskey.plugin_
class _TranslationsMisskeyPluginTrTr extends TranslationsMisskeyPluginEnUs {
	_TranslationsMisskeyPluginTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get install => 'Eklentileri yükle takip isteği aldınız';
	@override String get installWarn => 'Güvenilir olmayan eklentileri yükleme.';
	@override String get manage => 'Eklentileri yönet';
	@override String get viewSource => 'Kaynak görüntüle';
	@override String get viewLog => 'Günlüğü göster';
}

// Path: misskey.preferencesBackups_
class _TranslationsMisskeyPreferencesBackupsTrTr extends TranslationsMisskeyPreferencesBackupsEnUs {
	_TranslationsMisskeyPreferencesBackupsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get list => 'Created backups';
	@override String get saveNew => 'Yeni yedeklemeyi kaydet';
	@override String get loadFile => 'Dosyadan yükle';
	@override String get apply => 'Bu cihaza başvur';
	@override String get save => 'Değişiklikleri kaydet';
	@override String get inputName => 'Lütfen bu yedekleme için bir ad girin.';
	@override String get cannotSave => 'Kaydetme başarısız oldu';
	@override String nameAlreadyExists({required Object name}) => '“${name}” adlı bir yedekleme zaten mevcut. Lütfen farklı bir ad girin.';
	@override String applyConfirm({required Object name}) => 'Bu cihaza “${name}” yedeklemesini cidden uygulamak istiyor musun? Bu cihazın mevcut ayarları üzerine yazılacaktır.';
	@override String saveConfirm({required Object name}) => 'Yedeklemeyi ${name} olarak kaydedin?';
	@override String deleteConfirm({required Object name}) => '${name} yedeklemesini silmek ister misin?';
	@override String renameConfirm({required Object old, required Object new_}) => 'Bu yedeğin adını “${old}” den “${new_}” ye değiştirmek ister misin?';
	@override String get noBackups => 'Yedekleme mevcut değil. “Yeni yedekleme oluştur” seçeneğini kullanarak bu sunucudaki istemci ayarlarınızı yedekleyebilirsin.';
	@override String createdAt({required Object date, required Object time}) => 'Oluşturulma tarihi: ${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => 'Güncelleme tarihi: ${date} ${time}';
	@override String get cannotLoad => 'Yükleme başarısız';
	@override String get invalidFile => 'Geçersiz dosya biçimi';
}

// Path: misskey.registry_
class _TranslationsMisskeyRegistryTrTr extends TranslationsMisskeyRegistryEnUs {
	_TranslationsMisskeyRegistryTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Kapsam';
	@override String get key => 'Anahtar';
	@override String get keys => 'Anahtarlar';
	@override String get domain => 'Alan adı';
	@override String get createKey => 'Anahtar oluştur';
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeyTrTr extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeyTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey, 2014 yılından beri syuilo tarafından geliştirilen açık kaynaklı bir yazılımdır.';
	@override String get contributors => 'Başlıca katkıda bulunanlar';
	@override String get allContributors => 'Tüm katkıda bulunanlar';
	@override String get source => 'Kaynak kodu';
	@override String get original => 'Orijinal';
	@override String thisIsModifiedVersion({required Object name}) => '${name} orijinal Misskey\'in değiştirilmiş bir sürümünü kullanır.';
	@override String get translation => 'Misskey\'i çevir';
	@override String get donate => 'Misskey\'e bağış yapın';
	@override String get morePatrons => 'Burada adı geçmeyen diğer birçok yardımseverin desteğine de teşekkür ederiz. Teşekkürler! 🥰';
	@override String get patrons => 'Müşteriler';
	@override String get projectMembers => 'Proje üyeleri';
}

// Path: misskey.displayOfSensitiveMedia_
class _TranslationsMisskeyDisplayOfSensitiveMediaTrTr extends TranslationsMisskeyDisplayOfSensitiveMediaEnUs {
	_TranslationsMisskeyDisplayOfSensitiveMediaTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get respect => 'Hassas olarak işaretlenmiş medyayı gizle';
	@override String get ignore => 'Hassas olarak işaretlenmiş medya görüntüleme';
	@override String get force => 'Hide all media';
}

// Path: misskey.instanceTicker_
class _TranslationsMisskeyInstanceTickerTrTr extends TranslationsMisskeyInstanceTickerEnUs {
	_TranslationsMisskeyInstanceTickerTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get none => 'Asla gösterme';
	@override String get remote => 'Uzak kullanıcılar için göster';
	@override String get always => 'Her zaman göster';
}

// Path: misskey.serverDisconnectedBehavior_
class _TranslationsMisskeyServerDisconnectedBehaviorTrTr extends TranslationsMisskeyServerDisconnectedBehaviorEnUs {
	_TranslationsMisskeyServerDisconnectedBehaviorTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Otomatik olarak yeniden yükle';
	@override String get dialog => 'Otomatik olarak yeniden yükle';
	@override String get quiet => 'Göze batmayan uyarı göster';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelTrTr extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get create => 'Kanal oluştur';
	@override String get edit => 'Kanalı düzenle';
	@override String get setBanner => 'Afiş ayarla';
	@override String get removeBanner => 'Afişi kaldır';
	@override String get featured => 'Trend olan';
	@override String get owned => 'Sahip olunan';
	@override String get following => 'Takip edildi';
	@override String usersCount({required Object n}) => '${n} Katılımcılar';
	@override String notesCount({required Object n}) => '${n} Notlar';
	@override String get nameAndDescription => 'Adı ve açıklaması';
	@override String get nameOnly => 'Sadece isim';
	@override String get allowRenoteToExternal => 'Kanal dışında yeniden not alma ve alıntı yapmaya izin ver';
}

// Path: misskey.menuDisplay_
class _TranslationsMisskeyMenuDisplayTrTr extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplayTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Yan';
	@override String get sideIcon => 'Yan (Simgeler)';
	@override String get top => 'En üst';
	@override String get hide => 'Gizle';
}

// Path: misskey.wordMute_
class _TranslationsMisskeyWordMuteTrTr extends TranslationsMisskeyWordMuteEnUs {
	_TranslationsMisskeyWordMuteTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Sessiz kelimeler';
	@override String get muteWordsDescription => 'AND koşulu için boşluklarla, OR koşulu için satır sonlarıyla ayırın.';
	@override String get muteWordsDescription2 => 'Surround keywords with slashes to use regular expressions.';
}

// Path: misskey.instanceMute_
class _TranslationsMisskeyInstanceMuteTrTr extends TranslationsMisskeyInstanceMuteEnUs {
	_TranslationsMisskeyInstanceMuteTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Bu, listelenen sunuculardan gelen tüm notları/yeniden notları sessize alır, sessize alınan bir sunucudan bir kullanıcıya yanıt veren kullanıcıların notları da dahil olmak üzere.';
	@override String get instanceMuteDescription2 => 'Yeni satırlarla ayırın';
	@override String get title => 'Listelenen sunuculardan notları gizler.';
	@override String get heading => 'Sessize alınacak sunucuların listesi';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeTrTr extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get explore => 'Temaları Keşfedin';
	@override String get install => 'Bir tema yükle';
	@override String get manage => 'Temaları yönet';
	@override String get code => 'Tema kodu';
	@override String get copyThemeCode => 'Tema kodunu kopyala';
	@override String get description => 'Açıklama';
	@override String installed({required Object name}) => '${name} kuruldu';
	@override String get installedThemes => 'Yüklü temalar';
	@override String get builtinThemes => 'Yerleşik temalar';
	@override String get instanceTheme => 'Sunucu teması';
	@override String get alreadyInstalled => 'Bu tema zaten yüklenmiş.';
	@override String get invalid => 'Bu temanın biçimi geçersizdir.';
	@override String get make => 'Bir tema oluşturun';
	@override String get base => 'Base';
	@override String get addConstant => 'Sabit ekle';
	@override String get constant => 'Sabit';
	@override String get defaultValue => 'Varsayılan değer';
	@override String get color => 'Renk';
	@override String get refProp => 'Bir özelliği referans al';
	@override String get refConst => 'Sabiti referans al';
	@override String get key => 'Anahtar';
	@override String get func => 'İşlevler';
	@override String get funcKind => 'İşlev türü';
	@override String get argument => 'Tartışma';
	@override String get basedProp => 'Referans verilen mülk';
	@override String get alpha => 'Opaklık';
	@override String get darken => 'Koyulaştır';
	@override String get lighten => 'Hafiflet';
	@override String get inputConstantName => 'Bu sabit için bir ad girin';
	@override String get importInfo => 'Buraya tema kodunu girersen, onu tema düzenleyicisine aktarabilirsin.';
	@override String deleteConstantConfirm({required Object const_}) => '${const_} sabitini cidden silmek istiyor musun?';
	@override late final _TranslationsMisskeyThemeKeysTrTr keys = _TranslationsMisskeyThemeKeysTrTr._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxTrTr extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get note => 'Yeni not';
	@override String get noteMy => 'Kendi notu';
	@override String get notification => 'Bildirimler';
	@override String get reaction => 'Reaksiyon seçimi hakkında';
	@override String get chatMessage => 'Sohbet Mesajları';
}

// Path: misskey.soundSettings_
class _TranslationsMisskeySoundSettingsTrTr extends TranslationsMisskeySoundSettingsEnUs {
	_TranslationsMisskeySoundSettingsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get driveFile => 'Drive\'da bir ses dosyası kullanın.';
	@override String get driveFileWarn => 'Drive\'dan bir ses dosyası seçin.';
	@override String get driveFileTypeWarn => 'Bu dosya desteklenmiyor';
	@override String get driveFileTypeWarnDescription => 'Bir ses dosyası seçin';
	@override String get driveFileDurationWarn => 'Ses kaydı çok uzun.';
	@override String get driveFileDurationWarnDescription => 'Uzun sesli mesajlar Misskey\'in kullanımını engelleyebilir. Devam etmek istiyor musunuz?';
	@override String get driveFileError => 'Ses yüklenemedi. Lütfen ayarları değiştir.';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoTrTr extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get future => 'Gelecek';
	@override String get justNow => 'Şimdi';
	@override String secondsAgo({required Object n}) => '${n} sn';
	@override String minutesAgo({required Object n}) => '${n} dk';
	@override String hoursAgo({required Object n}) => '${n} sa';
	@override String daysAgo({required Object n}) => '${n} gün';
	@override String weeksAgo({required Object n}) => '${n} hafta';
	@override String monthsAgo({required Object n}) => '${n} ay';
	@override String yearsAgo({required Object n}) => '${n} yıl';
	@override String get invalid => 'Geçersiz';
}

// Path: misskey.timeIn_
class _TranslationsMisskeyTimeInTrTr extends TranslationsMisskeyTimeInEnUs {
	_TranslationsMisskeyTimeInTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String seconds({required Object n}) => '${n} saniye içinde';
	@override String minutes({required Object n}) => '${n} dakika içinde';
	@override String hours({required Object n}) => '${n} saat içinde';
	@override String days({required Object n}) => '${n} gün içinde';
	@override String weeks({required Object n}) => '${n} hafta içinde';
	@override String months({required Object n}) => '${n} ay içinde';
	@override String years({required Object n}) => '${n} yıl içinde';
}

// Path: misskey.time_
class _TranslationsMisskeyTimeTrTr extends TranslationsMisskeyTimeEnUs {
	_TranslationsMisskeyTimeTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get second => 'Saniye(ler)';
	@override String get minute => 'Dakika(lar)';
	@override String get hour => 'Saat(ler)';
	@override String get day => 'Gün(ler)';
	@override String get month => 'Ay';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faTrTr extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => '2fa kimlik doğrulama cihazını zaten kaydettin.';
	@override String get registerTOTP => 'Kimlik doğrulama uygulamasını kaydet';
	@override String step1({required Object a, required Object b}) => 'Öncelikle, cihazınıza bir kimlik doğrulama uygulaması (örneğin ${a} veya ${b}) yükleyin.';
	@override String get step2 => 'Ardından, bu ekranda görüntülenen QR kodunu tarayın.';
	@override String get step2Uri => 'Masaüstü programı kullanıyorsanız aşağıdaki URI\'yi girin';
	@override String get step3Title => 'Doğrulama kodunu girin';
	@override String get step3 => 'Uygulamanız tarafından sağlanan kimlik doğrulama kodunu (token) girerek kurulumu tamamlayın.';
	@override String get setupCompleted => 'Kurulum tamamlandı';
	@override String get step4 => 'Bundan sonra, gelecekteki tüm oturum açma girişimlerinde bu tür bir oturum açma jetonu istenecek.';
	@override String get securityKeyNotSupported => 'Tarayıcınız güvenlik anahtarlarını desteklemiyor.';
	@override String get registerTOTPBeforeKey => 'Güvenlik veya geçiş anahtarını kaydetmek için bir kimlik doğrulama uygulaması kurun.';
	@override String get securityKeyInfo => 'Parmak izi veya PIN kimlik doğrulamasının yanı sıra, hesabını daha da güvenli hale getirmek için FIDO2\'yi destekleyen donanım güvenlik anahtarları aracılığıyla kimlik doğrulama da ayarlayabilirsin.';
	@override String get registerSecurityKey => 'Güvenlik veya geçiş anahtarını kaydedin';
	@override String get securityKeyName => 'Bir anahtar adı girin';
	@override String get tapSecurityKey => 'Güvenlik veya geçiş anahtarını kaydetmek için lütfen tarayıcınızı takip edin.';
	@override String get removeKey => 'Güvenlik anahtarını kaldır';
	@override String removeKeyConfirm({required Object name}) => '${name} anahtarını cidden silmek istiyor musun?';
	@override String get whyTOTPOnlyRenew => 'Güvenlik anahtarı kayıtlı olduğu sürece kimlik doğrulama uygulaması kaldırılamaz.';
	@override String get renewTOTP => 'Kimlik doğrulama uygulamasını yeniden yapılandırın';
	@override String get renewTOTPConfirm => 'Bu, önceki uygulamanızdaki doğrulama kodlarının çalışmamasına neden olacaktır.';
	@override String get renewTOTPOk => 'Yeniden yapılandır';
	@override String get renewTOTPCancel => 'İptal';
	@override String get checkBackupCodesBeforeCloseThisWizard => 'Bu pencereyi kapatmadan önce, lütfen aşağıdaki yedek kodları not edin.';
	@override String get backupCodes => 'Yedek kodlar';
	@override String get backupCodesDescription => 'İki faktörlü kimlik doğrulama uygulamasını kullanamaz hale gelmen durumunda, bu kodları kullanarak hesabınıza erişebilirsin. Her kod yalnızca bir kez kullanılabilir. Lütfen bu kodları güvenli bir yerde sakla.';
	@override String get backupCodeUsedWarning => 'Yedek kod kullanıldı. Artık kullanamıyorsanız, lütfen iki faktörlü kimlik doğrulamayı mümkün olan en kısa sürede yeniden yapılandırın.';
	@override String get backupCodesExhaustedWarning => 'Tüm yedek kodlar kullanıldı. İki faktörlü kimlik doğrulama uygulamana erişimini kaybedersen, bu hesaba erişemezsin. Lütfen iki faktörlü kimlik doğrulamayı yeniden yapılandır.';
	@override String get moreDetailedGuideHere => 'İşte ayrıntılı kılavuz';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsTrTr extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'Hesap bilgilerini gör';
	@override String get writeAccount => 'Hesap bilgilerini düzenle';
	@override String get readBlocks => 'Engellenen kullanıcıların listesini görüntüle';
	@override String get writeBlocks => 'Engellenen kullanıcılar listeni düzenle';
	@override String get readDrive => 'Drive dosyalarına ve klasörlerine eriş';
	@override String get writeDrive => 'Drive dosyalarını ve klasörlerini düzenle veya sil';
	@override String get readFavorites => 'Favoriler listeni görüntüle';
	@override String get writeFavorites => 'Favoriler listeni düzenle';
	@override String get readFollowing => 'Takip ettiğin kişilerle ilgili bilgileri görüntüle';
	@override String get writeFollowing => 'Diğer hesapları takip et veya takipten çıkar';
	@override String get readMessaging => 'Sohbetlerini görüntüle';
	@override String get writeMessaging => 'Sohbet mesajlarını oluşturun veya silin';
	@override String get readMutes => 'Sessize alınan kullanıcıların listesini görüntüle';
	@override String get writeMutes => 'Sessize alınan kullanıcıların listesini düzenle';
	@override String get writeNotes => 'Notlar oluşturun veya silin';
	@override String get readNotifications => 'Bildirimlerini görüntüle';
	@override String get writeNotifications => 'Bildirimlerini yönet';
	@override String get readReactions => 'Tepkilerini görüntüle';
	@override String get writeReactions => 'Tepkilerini düzenle';
	@override String get writeVotes => 'Ankete oy verin';
	@override String get readPages => 'Sayfalarını görüntüle';
	@override String get writePages => 'Sayfalarını düzenle veya sil';
	@override String get readPageLikes => 'Beğenilen sayfaların listesini görüntüle';
	@override String get writePageLikes => 'Beğenilen sayfaların listesini düzenle';
	@override String get readUserGroups => 'Kullanıcı gruplarını görüntüle';
	@override String get writeUserGroups => 'Kullanıcı gruplarını düzenle veya sil';
	@override String get readChannels => 'Kanallarını görüntüle';
	@override String get writeChannels => 'Kanallarını düzenle';
	@override String get readGallery => 'Galeriyi görüntüle';
	@override String get writeGallery => 'Galeri düzenle';
	@override String get readGalleryLikes => 'Beğendiğin galeri gönderilerinin listesini görüntüle';
	@override String get writeGalleryLikes => 'Beğendiğin galeri gönderilerinin listesini düzenle';
	@override String get readFlash => 'Oynat';
	@override String get writeFlash => 'Oyunları Düzenle';
	@override String get readFlashLikes => 'Beğenilen Oyunların listesini görüntüle';
	@override String get writeFlashLikes => 'Beğenilen Oyunlar listesini düzenle';
	@override String get readAdminAbuseUserReports => 'Kullanıcı raporlarını görüntüle';
	@override String get writeAdminDeleteAccount => 'Kullanıcı hesabını sil';
	@override String get writeAdminDeleteAllFilesOfAUser => 'Bir kullanıcının tüm dosyalarını sil';
	@override String get readAdminIndexStats => 'Veritabanı dizin istatistiklerini görüntüle';
	@override String get readAdminTableStats => 'Veritabanı tablosu istatistiklerini görüntüle';
	@override String get readAdminUserIps => 'Kullanıcı IP adreslerini görüntüle';
	@override String get readAdminMeta => 'Sunucu meta verilerini görüntüle';
	@override String get writeAdminResetPassword => 'Kullanıcı şifresini sıfırla';
	@override String get writeAdminResolveAbuseUserReport => 'Kullanıcı raporunu çözme';
	@override String get writeAdminSendEmail => 'E-Posta gönder';
	@override String get readAdminServerInfo => 'Sunucu bilgilerini görüntüle';
	@override String get readAdminShowModerationLog => 'Moderasyon günlüğünü görüntüle';
	@override String get readAdminShowUser => 'Özel kullanıcı bilgilerini görüntüle';
	@override String get writeAdminSuspendUser => 'Kullanıcıyı askıya al';
	@override String get writeAdminUnsetUserAvatar => 'Kullanıcı avatarını kaldır';
	@override String get writeAdminUnsetUserBanner => 'Kullanıcı afişini kaldır';
	@override String get writeAdminUnsuspendUser => 'Kullanıcı askıya alma işlemini kaldır';
	@override String get writeAdminMeta => 'Sunucu meta verilerini yönetme';
	@override String get writeAdminUserNote => 'Moderasyon notunu yönet';
	@override String get writeAdminRoles => 'Rolleri yönet';
	@override String get readAdminRoles => 'Rolü görüntüle';
	@override String get writeAdminRelays => 'Röleleri yönetme';
	@override String get readAdminRelays => 'Röleleri görüntüle';
	@override String get writeAdminInviteCodes => 'Davet kodlarını yönet';
	@override String get readAdminInviteCodes => 'Davet kodlarını görüntüle';
	@override String get writeAdminAnnouncements => 'Duyuruları yönet';
	@override String get readAdminAnnouncements => 'Duyuruları görüntüle';
	@override String get writeAdminAvatarDecorations => 'Avatar süslerini yönetebilir';
	@override String get readAdminAvatarDecorations => 'Avatar süslerini görüntüle';
	@override String get writeAdminFederation => 'Federasyon verilerini yönetme';
	@override String get writeAdminAccount => 'Kullanıcı hesabını yönet';
	@override String get readAdminAccount => 'Kullanıcı hesabını görüntüle';
	@override String get writeAdminEmoji => 'Emoji\'leri yönet';
	@override String get readAdminEmoji => 'Emojiyi görüntüle';
	@override String get writeAdminQueue => 'İş kuyruğunu yönet';
	@override String get readAdminQueue => 'İş kuyruğu bilgilerini görüntüle';
	@override String get writeAdminPromo => 'Promosyon notlarını yönet';
	@override String get writeAdminDrive => 'Kullanıcı Drive\'ını yönet';
	@override String get readAdminDrive => 'Kullanıcı Drive bilgilerini görüntüle';
	@override String get readAdminStream => 'Yönetici için WebSocket API\'sını kullanın';
	@override String get writeAdminAd => 'Reklamları yönet';
	@override String get readAdminAd => 'Reklamları görüntüle';
	@override String get writeInviteCodes => 'Davet kodları oluşturun';
	@override String get readInviteCodes => 'Davet kodlarını alın';
	@override String get writeClipFavorite => 'Favorilere eklenen klipleri yönet';
	@override String get readClipFavorite => 'Favorilere eklenen klipleri görüntüle';
	@override String get readFederation => 'Federasyon verilerini alın';
	@override String get writeReportAbuse => 'İhlali bildir';
	@override String get writeChat => 'Sohbet mesajlarını oluşturun veya silin';
	@override String get readChat => 'Sohbeti Gözat';
}

// Path: misskey.auth_
class _TranslationsMisskeyAuthTrTr extends TranslationsMisskeyAuthEnUs {
	_TranslationsMisskeyAuthTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'Uygulama izinlerinin verilmesi';
	@override String shareAccess({required Object name}) => '“${name}”nin bu hesaba erişmesine izin vermek ister misiniz?';
	@override String get shareAccessAsk => 'Bu uygulamanın hesabınıza erişmesine izin vermek istediğinden emin misin?';
	@override String permission({required Object name}) => '${name} aşağıdaki izinleri talep etmektedir.';
	@override String get permissionAsk => 'Bu uygulama aşağıdaki izinleri talep etmektedir';
	@override String get pleaseGoBack => 'Lütfen uygulamaya geri dönün.';
	@override String get callback => 'Uygulamaya geri dönmek';
	@override String get accepted => 'Erişim izni verildi';
	@override String get denied => 'Erişim reddedildi';
	@override String get scopeUser => 'Aşağıdaki kullanıcı olarak çalıştırın';
	@override String get pleaseLogin => 'Uygulamaları yetkilendirmek için lütfen giriş yapın.';
	@override String get byClickingYouWillBeRedirectedToThisUrl => 'Erişim izni verildiğinde, otomatik olarak aşağıdaki URL\'ye yönlendirileceksin.';
	@override String get alreadyAuthorized => 'Bu uygulamaya zaten erişim izinleri verilmiş durumda.';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesTrTr extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get all => 'Tüm notlar';
	@override String get homeTimeline => 'Takip edilen kullanıcıların notları';
	@override String get users => 'Belirli kullanıcılardan gelen notlar';
	@override String get userList => 'Belirtilen kullanıcı listesinden notlar';
	@override String get userBlacklist => 'Bir veya daha fazla belirli kullanıcıya ait olanlar hariç tüm notlar';
}

// Path: misskey.weekday_
class _TranslationsMisskeyWeekdayTrTr extends TranslationsMisskeyWeekdayEnUs {
	_TranslationsMisskeyWeekdayTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get sunday => 'Pazar';
	@override String get monday => 'Pazartesi';
	@override String get tuesday => 'Salı';
	@override String get wednesday => 'Çarşamba';
	@override String get thursday => 'Perşembe';
	@override String get friday => 'Cuma';
	@override String get saturday => 'Cumartesi';
}

// Path: misskey.widgets_
class _TranslationsMisskeyWidgetsTrTr extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Profil';
	@override String get instanceInfo => 'Sunucu Bilgisi';
	@override String get memo => 'Yapışkan notlar';
	@override String get notifications => 'Bildirimler';
	@override String get timeline => 'Pano';
	@override String get calendar => 'Takvim';
	@override String get trends => 'Trend olan';
	@override String get clock => 'Saat';
	@override String get rss => 'RSS okuyucu';
	@override String get rssTicker => 'RSS-Ticker';
	@override String get activity => 'Etkinlik';
	@override String get photos => 'Fotoğraflar';
	@override String get digitalClock => 'Dijital saat';
	@override String get unixClock => 'UNIX saati';
	@override String get federation => 'Federasyon';
	@override String get instanceCloud => 'Bulut sunucu';
	@override String get postForm => 'Gönderim formu';
	@override String get slideshow => 'Slayt gösterisi';
	@override String get button => 'Düğme';
	@override String get onlineUsers => 'Çevrimiçi kullanıcılar';
	@override String get jobQueue => 'İş Kuyruğu';
	@override String get serverMetric => 'Sunucu ölçümleri';
	@override String get aiscript => 'AiScript konsolu';
	@override String get aiscriptApp => 'AiScript Uygulaması';
	@override String get aichan => 'Ai';
	@override String get userList => 'Kullanıcı listesi';
	@override late final _TranslationsMisskeyWidgetsUserListTrTr userList_ = _TranslationsMisskeyWidgetsUserListTrTr._(_root);
	@override String get clicker => 'Tıklayıcı';
	@override String get birthdayFollowings => 'Bugünün Doğum Günleri';
	@override String get chat => 'Sohbet';
}

// Path: misskey.widgetOptions_
class _TranslationsMisskeyWidgetOptionsTrTr extends TranslationsMisskeyWidgetOptionsEnUs {
	_TranslationsMisskeyWidgetOptionsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get showHeader => 'Başlığı göster';
	@override String get transparent => 'Arka planı şeffaf yapın';
	@override String get height => 'Yükseklik';
	@override late final _TranslationsMisskeyWidgetOptionsButtonTrTr button_ = _TranslationsMisskeyWidgetOptionsButtonTrTr._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsClockTrTr clock_ = _TranslationsMisskeyWidgetOptionsClockTrTr._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsJobQueueTrTr jobQueue_ = _TranslationsMisskeyWidgetOptionsJobQueueTrTr._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsRssTrTr rss_ = _TranslationsMisskeyWidgetOptionsRssTrTr._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsRssTickerTrTr rssTicker_ = _TranslationsMisskeyWidgetOptionsRssTickerTrTr._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsBirthdayFollowingsTrTr birthdayFollowings_ = _TranslationsMisskeyWidgetOptionsBirthdayFollowingsTrTr._(_root);
}

// Path: misskey.cw_
class _TranslationsMisskeyCwTrTr extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Gizle';
	@override String get show => 'İçeriği göster';
	@override String chars({required Object count}) => '${count} karakter';
	@override String files({required Object count}) => '${count} dosya(lar)';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollTrTr extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'En az iki seçenek gereklidir.';
	@override String choiceN({required Object n}) => 'Seçim ${n}';
	@override String get noMore => 'Daha fazla seçenek ekleyemezsin.';
	@override String get canMultipleVote => 'Birden fazla seçenek seçilmesine izin ver';
	@override String get expiration => 'Anketi sonlandır';
	@override String get infinite => 'Asla';
	@override String get at => 'Şurada bitir...';
	@override String get after => 'Sonrasında bitir...';
	@override String get deadlineDate => 'Bitiş tarihi';
	@override String get deadlineTime => 'Zaman';
	@override String get duration => 'Süre';
	@override String votesCount({required Object n}) => '${n} oy';
	@override String totalVotes({required Object n}) => 'Toplam ${n} oy';
	@override String get vote => 'Oy ver';
	@override String get showResult => 'Sonuçları görüntüle';
	@override String get voted => 'Oylandı';
	@override String get closed => 'Sona erdi';
	@override String remainingDays({required Object d, required Object h}) => '${d} gün ${h} saat kaldı';
	@override String remainingHours({required Object h, required Object m}) => '${h} saat ${m} dakika kaldı';
	@override String remainingMinutes({required Object m, required Object s}) => '${m} dakika ${s} saniye kaldı';
	@override String remainingSeconds({required Object s}) => '${s} saniye kaldı';
}

// Path: misskey.visibility_
class _TranslationsMisskeyVisibilityTrTr extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get public => 'Halka açık';
	@override String get publicDescription => 'Notunuz tüm kullanıcılar tarafından görülebilir olacaktır.';
	@override String get home => 'Pano';
	@override String get homeDescription => 'Yalnızca ana panoya gönder';
	@override String get followers => 'Takipçiler';
	@override String get followersDescription => 'Sadece takipçilerine görünür hale getir';
	@override String get specified => 'Doğrudan';
	@override String get specifiedDescription => 'Yalnızca belirli kullanıcılar için görünür hale getir';
	@override String get disableFederation => 'Federasyon olmadan';
	@override String get disableFederationDescription => 'Diğer sunuculara aktarma';
}

// Path: misskey.postForm_
class _TranslationsMisskeyPostFormTrTr extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get quitInspiteOfThereAreUnuploadedFilesConfirm => 'Yüklenmemiş dosyalar var, bunları silip formu kapatmak ister misin?';
	@override String get uploaderTip => 'Dosya henüz yüklenmemiş. Dosya menüsünden dosyayı yeniden adlandırabilir, görüntüleri kırpabilir, filigran ekleyebilir ve dosyayı sıkıştırabilir veya sıkıştırmayı kaldırabilirsin. Notu yayınladığında dosyalar otomatik olarak yüklenir.';
	@override String get replyPlaceholder => 'Bu notu yanıtla...';
	@override String get quotePlaceholder => 'Bu notu alıntı yap...';
	@override String get channelPlaceholder => 'Bir kanala gönder...';
	@override String get showHowToUse => 'Form açıklamasını göster';
	@override late final _TranslationsMisskeyPostFormHowToUseTrTr howToUse_ = _TranslationsMisskeyPostFormHowToUseTrTr._(_root);
	@override late final _TranslationsMisskeyPostFormPlaceholdersTrTr placeholders_ = _TranslationsMisskeyPostFormPlaceholdersTrTr._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileTrTr extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ad';
	@override String get username => 'Kullanıcı adı';
	@override String get description => 'Biyografi';
	@override String get youCanIncludeHashtags => 'Biyografinize hashtag\'ler de ekleyebilirsiniz.';
	@override String get metadata => 'Ek Bilgiler';
	@override String get metadataEdit => 'Ek bilgileri düzenle';
	@override String get metadataDescription => 'Bunları kullanarak profilinde ek bilgi alanları görüntüleyebilirsin.';
	@override String get metadataLabel => 'Etiket';
	@override String get metadataContent => 'İçerik';
	@override String get changeAvatar => 'Avatar değiştir';
	@override String get changeBanner => 'Banner değiştir';
	@override String get verifiedLinkDescription => 'Buraya profiline bağlantı içeren bir URL girerek, alanın yanında bir sahiplik doğrulama simgesi görüntülenebilir.';
	@override String avatarDecorationMax({required Object max}) => 'En fazla ${max} süs ekleyebilirsin.';
	@override String get followedMessage => 'Takip edildiğinizde gönderilen mesaj';
	@override String get followedMessageDescription => 'Abonelerin seni takip ettiklerinde görüntülenmesini istediğin kısa bir mesaj ayarlayabilirsin.';
	@override String get followedMessageDescriptionForLockedAccount => 'Takip isteklerinin onay gerektirmesini ayarladıysan, bir takip isteğini kabul ettiğinde bu mesaj görüntülenir.';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportTrTr extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Tüm notlar';
	@override String get favoritedNotes => 'Favori notlar';
	@override String get clips => 'Klip';
	@override String get followingList => 'Takip edilen kullanıcılar';
	@override String get muteList => 'Sessize alınan kullanıcılar';
	@override String get blockingList => 'Engellenen kullanıcılar';
	@override String get userLists => 'Kullanıcı listeleri';
	@override String get excludeMutingUsers => 'Sessize alınan kullanıcıları hariç tut';
	@override String get excludeInactiveUsers => 'Etkin olmayan kullanıcıları hariç tut';
	@override String get withReplies => 'İçe aktarılan kullanıcıların yanıtlarını panoya dahil edin';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsTrTr extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Federasyon';
	@override String get apRequest => 'Talepler';
	@override String get usersIncDec => 'Kullanıcı sayısındaki fark';
	@override String get usersTotal => 'Toplam kullanıcı sayısı';
	@override String get activeUsers => 'Aktif kullanıcılar';
	@override String get notesIncDec => 'Not sayısındaki fark';
	@override String get localNotesIncDec => 'Yerel notaların sayısındaki fark';
	@override String get remoteNotesIncDec => 'Uzak notların sayısındaki fark';
	@override String get notesTotal => 'Toplam not sayısı';
	@override String get filesIncDec => 'Dosya sayısındaki fark';
	@override String get filesTotal => 'Toplam dosya sayısı';
	@override String get storageUsageIncDec => 'Depolama kullanımı farkı';
	@override String get storageUsageTotal => 'Total storage usage';
}

// Path: misskey.instanceCharts_
class _TranslationsMisskeyInstanceChartsTrTr extends TranslationsMisskeyInstanceChartsEnUs {
	_TranslationsMisskeyInstanceChartsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get requests => 'Talepler';
	@override String get users => 'Kullanıcı sayısındaki fark';
	@override String get usersTotal => 'Toplam kullanıcı sayısı';
	@override String get notes => 'Not sayısındaki fark';
	@override String get notesTotal => 'Toplam not sayısı';
	@override String get ff => 'Takip  / Takipçi sayısı farkı';
	@override String get ffTotal => 'Takip  / Takipçi toplam sayısı';
	@override String get cacheSize => 'Önbellek boyutundaki fark';
	@override String get cacheSizeTotal => 'Önbelleğin toplam boyutu';
	@override String get files => 'Dosya sayısındaki fark';
	@override String get filesTotal => 'Toplam dosya sayısı';
}

// Path: misskey.timelines_
class _TranslationsMisskeyTimelinesTrTr extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get home => 'Pano';
	@override String get local => 'Yerel';
	@override String get social => 'Sosyal';
	@override String get global => 'Global';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayTrTr extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Oyun Oluştur';
	@override String get edit => 'Düzenle Oynat';
	@override String get created => 'Oyun oluşturuldu';
	@override String get updated => 'Düzenlenmiş oynat';
	@override String get deleted => 'Oyun silindi';
	@override String get pageSetting => 'Oyun ayarları';
	@override String get editThisPage => 'Bu Oyunu Düzenle';
	@override String get viewSource => 'Kaynak görüntüle';
	@override String get my => 'Oyunlarım';
	@override String get liked => 'Beğenilen Oyunlar';
	@override String get featured => 'Popüler';
	@override String get title => 'Başlık';
	@override String get script => 'Senaryo';
	@override String get summary => 'Açıklama';
	@override String get visibilityDescription => 'Özel olarak ayarlamak, profilinde görünmeyeceği anlamına gelir, ancak URL\'ye sahip olan herkes yine de erişebilir.';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesTrTr extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'Yeni bir Sayfa oluşturun';
	@override String get editPage => 'Bu sayfayı düzenle';
	@override String get readPage => 'Bu Sayfanın Kaynağını Görüntüleme';
	@override String get pageSetting => 'Sayfa ayarları';
	@override String get nameAlreadyExists => 'Belirtilen Sayfa URL\'si zaten mevcut.';
	@override String get invalidNameTitle => 'Belirtilen Sayfa URL geçersiz';
	@override String get invalidNameText => 'Sayfa başlığının boş olmadığından emin olun.';
	@override String get editThisPage => 'Bu sayfayı düzenle';
	@override String get viewSource => 'Kaynak görüntüle';
	@override String get viewPage => 'Sayfalarını görüntüle';
	@override String get like => 'Beğen';
	@override String get unlike => 'Benzerlerini kaldır';
	@override String get my => 'Benzerlerini kaldır';
	@override String get liked => 'Beğenilen Sayfalar';
	@override String get featured => 'Popüler';
	@override String get inspector => 'Müfettiş';
	@override String get contents => 'İçindekiler';
	@override String get content => 'Sayfa bloğu';
	@override String get variables => 'Değişkenler';
	@override String get title => 'Başlık';
	@override String get url => 'Sayfa URL\'si';
	@override String get summary => 'Sayfa özeti';
	@override String get alignCenter => 'Merkez öğeleri';
	@override String get hideTitleWhenPinned => 'Profiline sabitlendiğinde sayfa başlığını gizle';
	@override String get font => 'Yazı tipi';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
	@override String get eyeCatchingImageSet => 'Küçük resmi ayarla';
	@override String get eyeCatchingImageRemove => 'Küçük resmi sil';
	@override String get chooseBlock => 'Blok ekle';
	@override String get enterSectionTitle => 'Bölüm başlığını girin';
	@override String get selectType => 'Bir tür seçin';
	@override String get contentBlocks => 'İçerik';
	@override String get inputBlocks => 'Giriş';
	@override String get specialBlocks => 'Özel';
	@override late final _TranslationsMisskeyPagesBlocksTrTr blocks = _TranslationsMisskeyPagesBlocksTrTr._(_root);
}

// Path: misskey.relayStatus_
class _TranslationsMisskeyRelayStatusTrTr extends TranslationsMisskeyRelayStatusEnUs {
	_TranslationsMisskeyRelayStatusTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'Beklemede';
	@override String get accepted => 'Accepted';
	@override String get rejected => 'Reddedildi';
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationTrTr extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'Dosya başarıyla yüklendi';
	@override String youGotMention({required Object name}) => '${name} sizden bahsetti.';
	@override String youGotReply({required Object name}) => '${name} size yanıt verdi';
	@override String youGotQuote({required Object name}) => '${name} sizden alıntı yaptı';
	@override String youRenoted({required Object name}) => '${name}\'den Renote';
	@override String get youWereFollowed => 'seni takip etti';
	@override String get youReceivedFollowRequest => 'Bir takip isteği aldınız.';
	@override String get yourFollowRequestAccepted => 'Takip isteğin kabul edildi.';
	@override String get pollEnded => 'Anket sonuçları açıklandı.';
	@override String get scheduledNotePosted => 'Rezervasyon defteri yayınlandı.';
	@override String get scheduledNotePostFailed => 'Rezervasyon defterine gönderilemedi';
	@override String get newNote => 'Yeni not';
	@override String unreadAntennaNote({required Object name}) => '${name} anteni';
	@override String get roleAssigned => 'Verilen rol';
	@override String get chatRoomInvitationReceived => 'Sohbet odasına davet edildin.';
	@override String get emptyPushNotificationMessage => 'Push bildirimleri güncellendi';
	@override String get achievementEarned => 'Achievement unlocked';
	@override String get testNotification => 'Test bildirimi';
	@override String get checkNotificationBehavior => 'Bildirim görünümünü kontrol edin';
	@override String get sendTestNotification => 'Test bildirimi gönder';
	@override String get notificationWillBeDisplayedLikeThis => 'Bildirimler şöyle görünür';
	@override String reactedBySomeUsers({required Object n}) => '${n} kullanıcı tepki gösterdi';
	@override String likedBySomeUsers({required Object n}) => '${n} kullanıcı notunuzu beğendi.';
	@override String renotedBySomeUsers({required Object n}) => '${n} kullanıcıdan gelen hatırlatma';
	@override String followedBySomeUsers({required Object n}) => '${n} kullanıcı tarafından takip ediliyor';
	@override String get flushNotification => 'Bildirimleri temizle';
	@override String exportOfXCompleted({required Object x}) => '${x} ihracatı tamamlandı.';
	@override String get login => 'Biri oturum açtı';
	@override String get createToken => 'Bir erişim jetonu oluşturuldu.';
	@override String createTokenDescription({required Object text}) => 'Eğer bilmiyorsanız, “${text}” aracılığıyla erişim jetonunu silin.';
	@override late final _TranslationsMisskeyNotificationTypesTrTr types_ = _TranslationsMisskeyNotificationTypesTrTr._(_root);
	@override late final _TranslationsMisskeyNotificationActionsTrTr actions_ = _TranslationsMisskeyNotificationActionsTrTr._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckTrTr extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Ana sütunu her zaman göster';
	@override String get columnAlign => 'Sütunları hizala';
	@override String get columnGap => 'Sütunlar arasındaki kenar boşluğu';
	@override String get deckMenuPosition => 'Sütunlar arasındaki kenar boşluğu';
	@override String get navbarPosition => 'Gezinti çubuğu konumu';
	@override String get addColumn => 'Sütun ekle';
	@override String get newNoteNotificationSettings => 'Notification setting for new notes';
	@override String get configureColumn => 'Sütun ayarları';
	@override String get swapLeft => 'Sol sütunla değiştir';
	@override String get swapRight => 'Sağ sütunla değiştir';
	@override String get swapUp => 'Yukarıdaki sütunla değiştir';
	@override String get swapDown => 'Aşağıdaki sütunla değiştir';
	@override String get stackLeft => 'Sol sütunda yığın';
	@override String get popRight => 'Sağdaki pop sütunu';
	@override String get profile => 'Profil';
	@override String get newProfile => 'Yeni profil';
	@override String get deleteProfile => 'Profili sil';
	@override String get introduction => 'Sütunları serbestçe düzenleyerek size en uygun arayüzü oluşturun!';
	@override String get introduction2 => 'Ekranın sağındaki + işaretine tıklayarak istediğin zaman yeni sütunlar ekleyebilirsin.';
	@override String get widgetsIntroduction => 'Lütfen sütun menüsünden “Widget\'ları düzenle” seçeneğini seç ve bir widget ekle.';
	@override String get useSimpleUiForNonRootPages => 'Gezinilen sayfalar için basit kullanıcı arayüzü kullanın';
	@override String get usedAsMinWidthWhenFlexible => '“Otomatik genişlik ayarı” seçeneği etkinleştirildiğinde, bunun için minimum genişlik kullanılacak.';
	@override String get flexible => 'Otomatik genişlik ayarı';
	@override String get enableSyncBetweenDevicesForProfiles => 'Cihazlar arasında profil bilgilerinin senkronizasyonunu etkinleştir';
	@override String get showHowToUse => 'Kullanıcı arayüzü açıklamasını görüntüle';
	@override late final _TranslationsMisskeyDeckHowToUseTrTr howToUse_ = _TranslationsMisskeyDeckHowToUseTrTr._(_root);
	@override late final _TranslationsMisskeyDeckColumnsTrTr columns_ = _TranslationsMisskeyDeckColumnsTrTr._(_root);
}

// Path: misskey.dialog_
class _TranslationsMisskeyDialogTrTr extends TranslationsMisskeyDialogEnUs {
	_TranslationsMisskeyDialogTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => 'Maksimum karakter sınırını aştınız! Şu anda ${current} karakterde ${max} karakterlik sınırın ${current} karakterinde bulunuyorsunuz.';
	@override String charactersBelow({required Object current, required Object min}) => 'You\'re below the minimum character limit! Currently at ${current} of ${min}.';
}

// Path: misskey.disabledTimeline_
class _TranslationsMisskeyDisabledTimelineTrTr extends TranslationsMisskeyDisabledTimelineEnUs {
	_TranslationsMisskeyDisabledTimelineTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pano devre dışı bırakıldı';
	@override String get description => 'Mevcut rollerinle bu Pano kullanılamaz.';
}

// Path: misskey.drivecleaner_
class _TranslationsMisskeyDrivecleanerTrTr extends TranslationsMisskeyDrivecleanerEnUs {
	_TranslationsMisskeyDrivecleanerTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'Azalan Dosya Boyutları';
	@override String get orderByCreatedAtAsc => 'Yükselen Tarihler';
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsTrTr extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Webhook oluştur';
	@override String get modifyWebhook => 'Webhook\'u değiştir';
	@override String get name => 'Webhook\'u değiştir';
	@override String get secret => 'Gizli';
	@override String get trigger => 'Tetikleyici';
	@override String get active => 'Etkin';
	@override late final _TranslationsMisskeyWebhookSettingsEventsTrTr events_ = _TranslationsMisskeyWebhookSettingsEventsTrTr._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsSystemEventsTrTr systemEvents_ = _TranslationsMisskeyWebhookSettingsSystemEventsTrTr._(_root);
	@override String get deleteConfirm => 'Webhook\'u silmek istediğinden emin misin?';
	@override String get testRemarks => 'Anahtarın sağındaki düğmeyi tıklayarak sahte verilerle bir test Webhook gönderin.';
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportTrTr extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientTrTr notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientTrTr._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesTrTr extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get clearQueue => 'Kuyruğu temizle';
	@override String get promoteQueue => 'Sıraya alınmış işi yeniden deneyin.';
	@override String get createRole => 'Rol oluşturuldu';
	@override String get deleteRole => 'Rol silindi';
	@override String get updateRole => 'Rol güncellendi';
	@override String get assignRole => 'Rol atandı';
	@override String get unassignRole => 'Görevinden alınmış';
	@override String get suspend => 'Askıya alınmış';
	@override String get unsuspend => 'Askıya alınmamış';
	@override String get addCustomEmoji => 'Özel emoji eklendi';
	@override String get updateCustomEmoji => 'Özel emoji güncellendi';
	@override String get deleteCustomEmoji => 'Özel emoji silindi';
	@override String get updateServerSettings => 'Sunucu ayarları güncellendi';
	@override String get updateUserNote => 'Moderasyon notu güncellendi';
	@override String get deleteDriveFile => 'Dosya silindi';
	@override String get deleteNote => 'Not silindi';
	@override String get createGlobalAnnouncement => 'Global duyuru oluşturuldu';
	@override String get createUserAnnouncement => 'Kullanıcı duyurusu oluşturuldu';
	@override String get updateGlobalAnnouncement => 'Global duyuru güncellendi';
	@override String get updateUserAnnouncement => 'Kullanıcı duyurusu güncellendi';
	@override String get deleteGlobalAnnouncement => 'Global duyuru silindi';
	@override String get deleteUserAnnouncement => 'Kullanıcı duyurusu silindi';
	@override String get resetPassword => 'Şifreyi sıfırla';
	@override String get suspendRemoteInstance => 'Uzak sunucu askıya alındı';
	@override String get unsuspendRemoteInstance => 'Uzak sunucu askıya alınmadı';
	@override String get updateRemoteInstanceNote => 'Uzak sunucular için güncellenmiş moderasyon notu';
	@override String get markSensitiveDriveFile => 'Hassas olarak işaretlenmiş dosya';
	@override String get unmarkSensitiveDriveFile => 'Dosya hassas olarak işaretlenmemiş';
	@override String get resolveAbuseReport => 'Rapor çözüldü';
	@override String get forwardAbuseReport => 'Rapor iletildi';
	@override String get updateAbuseReportNote => 'Güncellenen raporun moderasyon notu';
	@override String get createInvitation => 'Davet oluşturuldu';
	@override String get createAd => 'Reklam oluşturuldu';
	@override String get deleteAd => 'Reklam silindi';
	@override String get updateAd => 'Reklam güncellendi';
	@override String get createAvatarDecoration => 'Avatar dekorasyonu oluşturuldu';
	@override String get updateAvatarDecoration => 'Avatar dekorasyonu güncellendi';
	@override String get deleteAvatarDecoration => 'Avatar süsü silindi';
	@override String get unsetUserAvatar => 'Kullanıcı avatarı ayarlanmamış';
	@override String get unsetUserBanner => 'Kullanıcı başlığı ayarlanmamış';
	@override String get createSystemWebhook => 'Sistem Webhook oluşturuldu';
	@override String get updateSystemWebhook => 'Sistem Webhook güncellendi';
	@override String get deleteSystemWebhook => 'Sistem Webhook silindi';
	@override String get createAbuseReportNotificationRecipient => 'Oluşturulan raporlar için alıcı';
	@override String get updateAbuseReportNotificationRecipient => 'Raporlar için alıcı güncellendi';
	@override String get deleteAbuseReportNotificationRecipient => 'Silinen raporlar için alıcı';
	@override String get deleteAccount => 'Hesap silindi';
	@override String get deletePage => 'Sayfa silindi';
	@override String get deleteFlash => 'Oyun silindi';
	@override String get deleteGalleryPost => 'Galeri gönderisi silindi';
	@override String get deleteChatRoom => 'Deleted Chat Room';
	@override String get updateProxyAccountDescription => 'Proxy hesabının açıklamasını güncelle';
}

// Path: misskey.fileViewer_
class _TranslationsMisskeyFileViewerTrTr extends TranslationsMisskeyFileViewerEnUs {
	_TranslationsMisskeyFileViewerTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dosya ayrıntıları';
	@override String get type => 'Dosya türü';
	@override String get size => 'Dosya boyutu';
	@override String get url => 'URL';
	@override String get uploadedAt => 'Yüklendiği tarih';
	@override String get attachedNotes => 'Ekli notlar';
	@override String get usage => 'Kullanılmış';
	@override String get thisPageCanBeSeenFromTheAuthor => 'Bu sayfa, bu dosyayı yükleyen kullanıcı tarafından görülebilir.';
}

// Path: misskey.externalResourceInstaller_
class _TranslationsMisskeyExternalResourceInstallerTrTr extends TranslationsMisskeyExternalResourceInstallerEnUs {
	_TranslationsMisskeyExternalResourceInstallerTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Harici siteden yükle';
	@override String get checkVendorBeforeInstall => 'Yüklemeden önce bu kaynağın dağıtımcısının güvenilir olduğundan emin olun.';
	@override late final _TranslationsMisskeyExternalResourceInstallerPluginTrTr plugin_ = _TranslationsMisskeyExternalResourceInstallerPluginTrTr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerThemeTrTr theme_ = _TranslationsMisskeyExternalResourceInstallerThemeTrTr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerMetaTrTr meta_ = _TranslationsMisskeyExternalResourceInstallerMetaTrTr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerVendorInfoTrTr vendorInfo_ = _TranslationsMisskeyExternalResourceInstallerVendorInfoTrTr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsTrTr errors_ = _TranslationsMisskeyExternalResourceInstallerErrorsTrTr._(_root);
}

// Path: misskey.dataSaver_
class _TranslationsMisskeyDataSaverTrTr extends TranslationsMisskeyDataSaverEnUs {
	_TranslationsMisskeyDataSaverTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyDataSaverMediaTrTr media_ = _TranslationsMisskeyDataSaverMediaTrTr._(_root);
	@override late final _TranslationsMisskeyDataSaverAvatarTrTr avatar_ = _TranslationsMisskeyDataSaverAvatarTrTr._(_root);
	@override late final _TranslationsMisskeyDataSaverUrlPreviewThumbnailTrTr urlPreviewThumbnail_ = _TranslationsMisskeyDataSaverUrlPreviewThumbnailTrTr._(_root);
	@override late final _TranslationsMisskeyDataSaverDisableUrlPreviewTrTr disableUrlPreview_ = _TranslationsMisskeyDataSaverDisableUrlPreviewTrTr._(_root);
	@override late final _TranslationsMisskeyDataSaverCodeTrTr code_ = _TranslationsMisskeyDataSaverCodeTrTr._(_root);
}

// Path: misskey.hemisphere_
class _TranslationsMisskeyHemisphereTrTr extends TranslationsMisskeyHemisphereEnUs {
	_TranslationsMisskeyHemisphereTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get N => 'Kuzey Yarımküre';
	@override String get S => 'Güney Yarımküre';
	@override String get caption => 'Bazı istemci ayarlarında mevsimi belirlemek için kullanılır.';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiTrTr extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get reversi => 'Tersine çevirme';
	@override String get gameSettings => 'Oyun ayarları';
	@override String get chooseBoard => 'Bir tahta seçin';
	@override String get blackOrWhite => 'Siyah/Beyaz';
	@override String blackIs({required Object name}) => '${name} siyah oynuyor.';
	@override String get rules => 'Kurallar';
	@override String get thisGameIsStartedSoon => 'Oyun kısa süre içinde başlayacak.';
	@override String get waitingForOther => 'Rakibin sırasını bekle';
	@override String get waitingForMe => 'Sıranı bekliyorsun';
	@override String get waitingBoth => 'Hazır olun';
	@override String get ready => 'Hazır';
	@override String get cancelReady => 'Hazır değil';
	@override String get opponentTurn => 'Rakibin sırası';
	@override String get myTurn => 'Sıra sende';
	@override String turnOf({required Object name}) => 'Sıra ${name}\'de.';
	@override String pastTurnOf({required Object name}) => '${name}\'nin sırası';
	@override String get surrender => 'Teslimiyet';
	@override String get surrendered => 'Teslim oldu';
	@override String get timeout => 'Zaman doldu';
	@override String get drawn => 'Çiz';
	@override String won({required Object name}) => '${name} kazandı';
	@override String get black => 'Siyah';
	@override String get white => 'Beyaz';
	@override String get total => 'Toplam';
	@override String turnCount({required Object count}) => '${count} döndür';
	@override String get myGames => 'Benim turlarım';
	@override String get allGames => 'Tüm turlar';
	@override String get ended => 'Sona erdi';
	@override String get playing => 'Şu anda oynatılıyor';
	@override String get isLlotheo => 'Taş sayısı daha az olan kazanır (Llotheo)';
	@override String get loopedMap => 'Döngüsel harita';
	@override String get canPutEverywhere => 'Fayanslar her yere yerleştirilebilir.';
	@override String get timeLimitForEachTurn => 'Sıra için zaman sınırı';
	@override String get freeMatch => 'Ücretsiz Eşleştirme';
	@override String get lookingForPlayer => 'Rakip aranıyor...';
	@override String get gameCanceled => 'Oyun iptal edildi.';
	@override String get shareToTlTheGameWhenStart => 'Oyun başlatıldığında panoda paylaş';
	@override String get iStartedAGame => 'Oyun başladı! #MisskeyReversi';
	@override String get opponentHasSettingsChanged => 'Rakip ayarlarını değiştirmiş.';
	@override String get allowIrregularRules => 'Düzensiz kurallar (tamamen ücretsiz)';
	@override String get disallowIrregularRules => 'Düzensiz kurallar yok';
	@override String get showBoardLabels => 'Tahtada satır ve sütun numaralarını göster';
	@override String get useAvatarAsStone => 'Taşları kullanıcı avatarlarına dönüştürün';
}

// Path: misskey.offlineScreen_
class _TranslationsMisskeyOfflineScreenTrTr extends TranslationsMisskeyOfflineScreenEnUs {
	_TranslationsMisskeyOfflineScreenTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Çevrimdışı - sunucuya bağlanılamıyor';
	@override String get header => 'Sunucuya bağlanılamıyor';
}

// Path: misskey.urlPreviewSetting_
class _TranslationsMisskeyUrlPreviewSettingTrTr extends TranslationsMisskeyUrlPreviewSettingEnUs {
	_TranslationsMisskeyUrlPreviewSettingTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL önizleme ayarları';
	@override String get enable => 'URL önizlemesini etkinleştir';
	@override String get allowRedirect => 'URL önizleme yönlendirmesine izin ver';
	@override String get allowRedirectDescription => 'Bir URL\'de yönlendirme ayarlanmışsa, bu özelliği etkinleştirerek yönlendirmeyi takip edebilir ve yönlendirilen içeriğin önizlemesini görüntüleyebilirsin. Bu özelliği devre dışı bırakmak sunucu kaynaklarından tasarruf sağlar, ancak yönlendirilen içerik görüntülenmez.';
	@override String get timeout => 'Önizleme alırken zaman aşımı (ms)';
	@override String get timeoutDescription => 'Önizlemeyi almak bu değerden daha uzun sürerse, önizleme oluşturulmaz.';
	@override String get maximumContentLength => 'Maksimum İçerik Uzunluğu (bayt)';
	@override String get maximumContentLengthDescription => 'Content-Length bu değerden yüksekse, önizleme oluşturulmaz.';
	@override String get requireContentLength => 'Yalnızca Content-Length değerini alabiliyorsanız önizlemeyi oluşturun.';
	@override String get requireContentLengthDescription => 'Diğer sunucu Content-Length değerini döndürmezse, önizleme oluşturulmaz.';
	@override String get userAgent => 'Kullanıcı Aracısı';
	@override String get userAgentDescription => 'Önizlemeleri alırken kullanılacak Kullanıcı Aracısını ayarlar. Boş bırakılırsa, varsayılan Kullanıcı Aracısı kullanılır.';
	@override String get summaryProxy => 'Önizlemeler oluşturan proxy uç noktaları';
	@override String get summaryProxyDescription => 'Misskey\'in kendisi değil, Summaly Proxy kullanarak önizlemeler oluştur.';
	@override String get summaryProxyDescription2 => 'Aşağıdaki parametreler, sorgu dizesi olarak proxy\'ye bağlanır. Proxy bunları desteklemiyorsa, değerler yok sayılır.';
}

// Path: misskey.mediaControls_
class _TranslationsMisskeyMediaControlsTrTr extends TranslationsMisskeyMediaControlsEnUs {
	_TranslationsMisskeyMediaControlsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get pip => 'Resim içinde resim';
	@override String get playbackRate => 'Oynatma Hızı';
	@override String get loop => 'Döngüsel oynatma';
}

// Path: misskey.contextMenu_
class _TranslationsMisskeyContextMenuTrTr extends TranslationsMisskeyContextMenuEnUs {
	_TranslationsMisskeyContextMenuTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bağlam menüsü';
	@override String get app => 'Uygulama';
	@override String get appWithShift => 'Shift tuşuyla uygulama';
	@override String get native => 'Doğal';
}

// Path: misskey.gridComponent_
class _TranslationsMisskeyGridComponentTrTr extends TranslationsMisskeyGridComponentEnUs {
	_TranslationsMisskeyGridComponentTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyGridComponentErrorTrTr error_ = _TranslationsMisskeyGridComponentErrorTrTr._(_root);
}

// Path: misskey.roleSelectDialog_
class _TranslationsMisskeyRoleSelectDialogTrTr extends TranslationsMisskeyRoleSelectDialogEnUs {
	_TranslationsMisskeyRoleSelectDialogTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get notSelected => 'Seçilmedi';
}

// Path: misskey.customEmojisManager_
class _TranslationsMisskeyCustomEmojisManagerTrTr extends TranslationsMisskeyCustomEmojisManagerEnUs {
	_TranslationsMisskeyCustomEmojisManagerTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCustomEmojisManagerGridCommonTrTr gridCommon_ = _TranslationsMisskeyCustomEmojisManagerGridCommonTrTr._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLogsTrTr logs_ = _TranslationsMisskeyCustomEmojisManagerLogsTrTr._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerRemoteTrTr remote_ = _TranslationsMisskeyCustomEmojisManagerRemoteTrTr._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalTrTr local_ = _TranslationsMisskeyCustomEmojisManagerLocalTrTr._(_root);
}

// Path: misskey.embedCodeGen_
class _TranslationsMisskeyEmbedCodeGenTrTr extends TranslationsMisskeyEmbedCodeGenEnUs {
	_TranslationsMisskeyEmbedCodeGenTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gömme kodunu özelleştir';
	@override String get header => 'Başlığı göster';
	@override String get autoload => 'Otomatik olarak daha fazlasını yükle (kullanımdan kaldırıldı)';
	@override String get maxHeight => 'Maksimum yükseklik';
	@override String get maxHeightDescription => '0 olarak ayarlandığında maksimum yükseklik ayarı devre dışı bırakılır. Widget\'ın dikey olarak genişlemeye devam etmesini önlemek için bir değer belirt.';
	@override String get maxHeightWarn => 'Maksimum yükseklik sınırı devre dışıdır (0). Bu istenmeyen bir durumsa, maksimum yüksekliği bir değer olarak ayarla.';
	@override String get previewIsNotActual => 'Ekran, önizleme ekranında görüntülenen aralığı aştığı için gerçek gömme işleminden farklıdır.';
	@override String get rounded => 'Yuvarlak hale getir';
	@override String get border => 'Dış çerçeveye kenarlık ekle';
	@override String get applyToPreview => 'Önizlemeye başvur';
	@override String get generateCode => 'Gömme kodu oluştur';
	@override String get codeGenerated => 'Kod oluşturuldu';
	@override String get codeGeneratedDescription => 'Oluşturulan kodu web sitene yapıştırarak içeriği göm.';
}

// Path: misskey.selfXssPrevention_
class _TranslationsMisskeySelfXssPreventionTrTr extends TranslationsMisskeySelfXssPreventionEnUs {
	_TranslationsMisskeySelfXssPreventionTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get warning => 'UYARI';
	@override String get title => '“Bu ekrana bir şey yapıştırın” tamamen bir aldatmaca.';
	@override String get description1 => 'Buraya bir şey yapıştırırsan, kötü niyetli bir kullanıcı hesabını ele geçirebilir veya kişisel bilgilerini çalabilir.';
	@override String get description2 => 'Yapıştırmaya çalıştığınız şeyi tam olarak anlamıyorsanız, %c hemen çalışmayı bırakın ve bu pencereyi kapatın.';
	@override String description3({required Object link}) => 'Daha fazla bilgi için lütfen buraya bakın. ${link}';
}

// Path: misskey.followRequest_
class _TranslationsMisskeyFollowRequestTrTr extends TranslationsMisskeyFollowRequestEnUs {
	_TranslationsMisskeyFollowRequestTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get recieved => 'Talep alındı';
	@override String get sent => 'İstek gönderildi';
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsTrTr extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedTrTr federationNotAllowed_ = _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedTrTr._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsUriInvalidTrTr uriInvalid_ = _TranslationsMisskeyRemoteLookupErrorsUriInvalidTrTr._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsRequestFailedTrTr requestFailed_ = _TranslationsMisskeyRemoteLookupErrorsRequestFailedTrTr._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsResponseInvalidTrTr responseInvalid_ = _TranslationsMisskeyRemoteLookupErrorsResponseInvalidTrTr._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectTrTr noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectTrTr._(_root);
}

// Path: misskey.captcha_
class _TranslationsMisskeyCaptchaTrTr extends TranslationsMisskeyCaptchaEnUs {
	_TranslationsMisskeyCaptchaTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get verify => 'Lütfen CAPTCHA\'yı doğrulayın';
	@override String get testSiteKeyMessage => 'Site ve gizli anahtarlar için test değerlerini girerek önizlemeyi kontrol edebilirsin.\nAyrıntılar için lütfen aşağıdaki sayfaya bak.';
	@override late final _TranslationsMisskeyCaptchaErrorTrTr error_ = _TranslationsMisskeyCaptchaErrorTrTr._(_root);
}

// Path: misskey.bootErrors_
class _TranslationsMisskeyBootErrorsTrTr extends TranslationsMisskeyBootErrorsEnUs {
	_TranslationsMisskeyBootErrorsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yükleme başarısız';
	@override String get serverError => 'Bir süre bekledikten ve yeniden yükledikten sonra sorun devam ederse, lütfen aşağıdaki Hata ID ile sunucu yöneticisine başvurun.';
	@override String get solution => 'Aşağıdakiler sorunu çözebilir.';
	@override String get solution1 => 'Tarayıcını ve işletim sistemini en son sürüme güncelle.';
	@override String get solution2 => 'Reklam engelleyiciyi devre dışı bırak';
	@override String get solution3 => 'Tarayıcı önbelleğini temizle';
	@override String get solution4 => 'Tor Tarayıcı için dom.webaudio.enabled değerini true olarak ayarlayın.';
	@override String get otherOption => 'Diğer seçenekler';
	@override String get otherOption1 => 'İstemci ayarlarını ve önbelleği sil';
	@override String get otherOption2 => 'Basit istemciyi başlatın';
	@override String get otherOption3 => 'Onarım aracını başlatın';
	@override String get otherOption4 => 'Misskey\'i güvenli modda başlatın';
}

// Path: misskey.search_
class _TranslationsMisskeySearchTrTr extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Tümü';
	@override String get searchScopeLocal => 'Yerel';
	@override String get searchScopeServer => 'Spesifik sunucu';
	@override String get searchScopeUser => 'Spesifik kullanıcı';
	@override String get pleaseEnterServerHost => 'Sunucu ana bilgisayarını girin';
	@override String get pleaseSelectUser => 'Kullanıcı seç';
	@override String get serverHostPlaceholder => 'Örnek: misskey.example.com';
}

// Path: misskey.serverSetupWizard_
class _TranslationsMisskeyServerSetupWizardTrTr extends TranslationsMisskeyServerSetupWizardEnUs {
	_TranslationsMisskeyServerSetupWizardTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get installCompleted => 'Misskey kurulumu tamamlandı!';
	@override String get firstCreateAccount => 'Başlamak için bir yönetici hesabı oluşturun.';
	@override String get accountCreated => 'Yönetici hesabı oluşturuldu!';
	@override String get serverSetting => 'Sunucu Ayarları';
	@override String get youCanEasilyConfigureOptimalServerSettingsWithThisWizard => 'Bu sihirbaz, sunucu ayarlarını yapılandırmayı kolaylaştırır.';
	@override String get settingsYouMakeHereCanBeChangedLater => 'Bu sihirbaz aracılığıyla değiştirilen ayarlar daha sonra yeniden düzenlenebilir.';
	@override String get howWillYouUseMisskey => 'Misskey\'i nasıl kullanacaksınız?';
	@override late final _TranslationsMisskeyServerSetupWizardUseTrTr use_ = _TranslationsMisskeyServerSetupWizardUseTrTr._(_root);
	@override String get openServerAdvice => 'Çok sayıda bilinmeyen kullanıcıyı kabul etmek risklidir. Herhangi bir sorunu çözmek için güvenilir bir moderasyon sistemi kullanmanızı öneririz.';
	@override String get openServerAntiSpamAdvice => 'Sunucunuzun spam için bir basamak haline gelmesini önlemek için, reCAPTCHA gibi anti-bot işlevlerini etkinleştirerek güvenliğe de özen göstermelisin.';
	@override String get howManyUsersDoYouExpect => 'Kaç kullanıcı bekliyorsunuz?';
	@override late final _TranslationsMisskeyServerSetupWizardScaleTrTr scale_ = _TranslationsMisskeyServerSetupWizardScaleTrTr._(_root);
	@override String get largeScaleServerAdvice => 'Büyük sunucular, yük dengeleme ve veritabanı çoğaltma gibi gelişmiş altyapı bilgisi gerektirebilir.';
	@override String get doYouConnectToFediverse => 'Fediverse\'e bağlanmak ister misin?';
	@override String get doYouConnectToFediverse_description1 => 'Dağıtılmış sunucular ağına (Fediverse) bağlandığında, içerik diğer sunucularla paylaşılabilir.';
	@override String get doYouConnectToFediverse_description2 => 'Fediverse ile bağlantı kurmak “federasyon” olarak da adlandırılır.';
	@override String get youCanConfigureMoreFederationSettingsLater => 'Birleştirilmiş sunucuları belirtme gibi gelişmiş ayarlar daha sonra yapılandırılabilir.';
	@override String get remoteContentsCleaning => 'Alınan içeriklerin otomatik olarak temizlenmesi';
	@override String get remoteContentsCleaning_description => 'Federasyon, sürekli içerik akışına neden olabilir. Otomatik temizleme özelliğini etkinleştirmek, depolama alanından tasarruf etmek için sunucudan eski ve referanslanmamış içeriği kaldıracak.';
	@override String get adminInfo => 'Yönetici bilgileri';
	@override String get adminInfo_description => 'Sorguları almak için kullanılan yönetici bilgilerini ayarlar.';
	@override String get adminInfo_mustBeFilled => 'Genel sunucu veya federasyon açıksa girilmelidir.';
	@override String get followingSettingsAreRecommended => 'Aşağıdaki ayarlar önerilir';
	@override String get applyTheseSettings => 'Bu ayarları uygulayın';
	@override String get skipSettings => 'Ayarları atla';
	@override String get settingsCompleted => 'Kurulum tamamlandı!';
	@override String get settingsCompleted_description => 'Zaman ayırdığınız için teşekkür ederiz. Artık her şey hazır olduğuna göre, sunucuyu hemen kullanmaya başlayabilirsin.';
	@override String get settingsCompleted_description2 => 'Sunucu ayarları “Kontrol Paneli”nden değiştirilebilir.';
	@override String get donationRequest => 'Bağış Talebi';
	@override late final _TranslationsMisskeyServerSetupWizardDonationRequestTrTr donationRequest_ = _TranslationsMisskeyServerSetupWizardDonationRequestTrTr._(_root);
}

// Path: misskey.uploader_
class _TranslationsMisskeyUploaderTrTr extends TranslationsMisskeyUploaderEnUs {
	_TranslationsMisskeyUploaderTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get editImage => 'Resmi Düzenle';
	@override String compressedToX({required Object x}) => '${x} boyutuna sıkıştırıldı';
	@override String savedXPercent({required Object x}) => '${x}% tasarruf';
	@override String get abortConfirm => 'Bazı dosyalar yüklenmedi, iptal etmek ister misin?';
	@override String get doneConfirm => 'Bazı dosyalar yüklenmedi, yine de devam etmek istiyor musun?';
	@override String maxFileSizeIsX({required Object x}) => 'Yükleyebileceğin maksimum dosya boyutu ${x}';
	@override String get allowedTypes => 'Yüklenebilir dosya türleri';
	@override String get tip => 'Dosya henüz yüklenmediğinden, bu iletişim kutusu yüklemeden önce dosyayı onaylamanıza, yeniden adlandırmana, sıkıştırmana ve kırpmana olanak tanır. Hazır olduğunda, “Yükle” düğmesine basarak yüklemeyi başlatabilirsin.';
}

// Path: misskey.clientPerformanceIssueTip_
class _TranslationsMisskeyClientPerformanceIssueTipTrTr extends TranslationsMisskeyClientPerformanceIssueTipEnUs {
	_TranslationsMisskeyClientPerformanceIssueTipTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Performans ipuçları';
	@override String get makeSureDisabledAdBlocker => 'Reklam engelleyicini devre dışı bırak';
	@override String get makeSureDisabledAdBlocker_description => 'Reklam engelleyiciler performansı etkileyebilir, lütfen sisteminde veya tarayıcının özelliklerinde/uzantılarında reklam engelleyicilerin etkinleştirilmediğinden emin ol.';
	@override String get makeSureDisabledCustomCss => 'Özel CSS\'yi devre dışı bırak';
	@override String get makeSureDisabledCustomCss_description => 'Stil geçersiz kılma, performansı etkileyebilir. Stil geçersiz kılan özel CSS veya uzantıların etkinleştirilmediğinden emin ol.';
	@override String get makeSureDisabledAddons => 'Uzantıları devre dışı bırak';
	@override String get makeSureDisabledAddons_description => 'Bazı uzantılar istemci davranışını engelleyebilir ve performansı etkileyebilir. Lütfen tarayıcı uzantılarınızı devre dışı bırakın ve durumun düzelip düzelmediğini kontrol edin.';
}

// Path: misskey.clip_
class _TranslationsMisskeyClipTrTr extends TranslationsMisskeyClipEnUs {
	_TranslationsMisskeyClipTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Klip, notları gruplandırmanıza olanak tanıyan bir özelliktir.';
}

// Path: misskey.userLists_
class _TranslationsMisskeyUserListsTrTr extends TranslationsMisskeyUserListsEnUs {
	_TranslationsMisskeyUserListsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Listeler, oluşturulurken belirttiğin herhangi bir kullanıcıyı içerebilir. Oluşturulan liste, yalnızca belirtilen kullanıcıları gösteren bir pano olarak görüntülenebilir.';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorTrTr extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get tip => 'Kredi bilgileri gibi bir filigran görüntüye eklenebilir.';
	@override String get quitWithoutSaveConfirm => 'Kaydedilmemiş değişiklikleri silmek ister misin?';
	@override String get driveFileTypeWarn => 'Bu dosya desteklenmiyor';
	@override String get driveFileTypeWarnDescription => 'Bir görüntü dosyası seçin';
	@override String get title => 'Filigranı Düzenle';
	@override String get cover => 'Her şeyi örtün';
	@override String get repeat => 'her yere yayılmış';
	@override String get preserveBoundingRect => 'Döndürme sırasında dışarı çıkmayacak şekilde ayarlayın.';
	@override String get opacity => 'Opaklık';
	@override String get scale => 'Boyut';
	@override String get text => 'Metin';
	@override String get qr => '2 boyutlu kod';
	@override String get position => 'Pozisyon';
	@override String get margin => 'Kenar';
	@override String get type => 'Tür';
	@override String get image => 'Görseller';
	@override String get advanced => 'Gelişmiş';
	@override String get angle => 'Açı';
	@override String get stripe => 'Çizgiler';
	@override String get stripeWidth => 'Çizgi genişliği';
	@override String get stripeFrequency => 'Satır sayısı';
	@override String get polkadot => 'Nokta deseni';
	@override String get checker => 'Kontrolcü';
	@override String get polkadotMainDotOpacity => 'Ana noktanın opaklığı';
	@override String get polkadotMainDotRadius => 'Ana noktanın boyutu';
	@override String get polkadotSubDotOpacity => 'İkincil noktanın opaklığı';
	@override String get polkadotSubDotRadius => 'İkincil noktanın boyutu';
	@override String get polkadotSubDotDivisions => 'Alt nokta sayısı.';
	@override String get leaveBlankToAccountUrl => 'Boş bırakılması durumunda hesap URL\'si görüntülenecektir.';
	@override String get failedToLoadImage => 'Görüntü yükleme başarısız oldu ';
}

// Path: misskey.imageEffector_
class _TranslationsMisskeyImageEffectorTrTr extends TranslationsMisskeyImageEffectorEnUs {
	_TranslationsMisskeyImageEffectorTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Effektler';
	@override String get addEffect => 'Efektler Ekle';
	@override String get discardChangesConfirm => 'Cidden çıkmak istiyor musun? Kaydedilmemiş değişikliklerin var.';
	@override String get failedToLoadImage => 'Görüntü yükleme başarısız oldu ';
	@override late final _TranslationsMisskeyImageEffectorFxsTrTr fxs_ = _TranslationsMisskeyImageEffectorFxsTrTr._(_root);
	@override late final _TranslationsMisskeyImageEffectorFxPropsTrTr fxProps_ = _TranslationsMisskeyImageEffectorFxPropsTrTr._(_root);
}

// Path: misskey.drafts_
class _TranslationsMisskeyDraftsTrTr extends TranslationsMisskeyDraftsEnUs {
	_TranslationsMisskeyDraftsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get select => 'Taslak Seç';
	@override String get cannotCreateDraftAnymore => 'Oluşturulabilecek taslak sayısı aşılmıştır.';
	@override String get cannotCreateDraft => 'Bu içerikle taslak oluşturamazsınız.';
	@override String get delete => 'Taslak Sil';
	@override String get deleteAreYouSure => 'Taslağı silmek ister misin?';
	@override String get noDrafts => 'Taslak yok';
	@override String replyTo({required Object user}) => '${user} notunu yanıtla';
	@override String quoteOf({required Object user}) => '${user} notuna alıntı';
	@override String postTo({required Object channel}) => '${channel}\'a gönder';
	@override String get saveToDraft => 'Taslak olarak kaydet';
	@override String get restoreFromDraft => 'Taslaktan geri yükle';
	@override String get restore => 'Geri yükle';
	@override String get listDrafts => 'Taslaklar Listesi';
	@override String get schedule => 'Planlanmış Gönderi';
	@override String get listScheduledNotes => 'Planlanmış gönderilerin listesi';
	@override String get cancelSchedule => 'Rezervasyonu iptal et';
}

// Path: misskey.qr_
class _TranslationsMisskeyQrTrTr extends TranslationsMisskeyQrEnUs {
	_TranslationsMisskeyQrTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get showTabTitle => 'Ekran';
	@override String get readTabTitle => 'Okumak';
	@override String shareTitle({required Object name, required Object acct}) => '${name}${acct}';
	@override String get shareText => 'Beni Fediverse\'te takip edin!';
	@override String get chooseCamera => 'Kamera Seç';
	@override String get cannotToggleFlash => 'Işık seçeneği mevcut değil.';
	@override String get turnOnFlash => 'Işığı açın';
	@override String get turnOffFlash => 'Işığı kapatın';
	@override String get startQr => 'Özgeçmiş Kodu Okuyucu';
	@override String get stopQr => 'Kod okuyucuyu durdurun';
	@override String get noQrCodeFound => 'QR kodu bulunamadı';
	@override String get scanFile => 'Cihazdaki görüntüyü tarayın';
	@override String get raw => 'Metin';
	@override String get mfm => 'MFM';
}

// Path: misskey.imageEditing_.vars_
class _TranslationsMisskeyImageEditingVarsTrTr extends TranslationsMisskeyImageEditingVarsEnUs {
	_TranslationsMisskeyImageEditingVarsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get caption => 'Dosya başlığı';
	@override String get filename => 'Dosya adı';
	@override String get filename_without_ext => 'Uzantısız dosya adları';
	@override String get year => 'Çekim yılı';
	@override String get month => 'Çekim ayı';
	@override String get day => 'Çekim tarihi';
	@override String get hour => 'Fotoğrafın çekildiği zaman (saat)';
	@override String get minute => 'Çekim süresi (dakika)';
	@override String get second => 'Çekim süresi (saniye)';
	@override String get camera_model => 'Kamera Adı';
	@override String get camera_lens_model => 'Lens adı';
	@override String get camera_mm => 'Odak uzaklığı';
	@override String get camera_mm_35 => 'Genişlik (35mm)';
	@override String get camera_f => 'açıklık';
	@override String get camera_s => 'Enstantane hızı';
	@override String get camera_iso => 'ISO hassasiyeti';
	@override String get gps_lat => 'Enlem';
	@override String get gps_long => 'Boylam';
}

// Path: misskey.compression_.quality_
class _TranslationsMisskeyCompressionQualityTrTr extends TranslationsMisskeyCompressionQualityEnUs {
	_TranslationsMisskeyCompressionQualityTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get high => 'Yüksek Kalite ';
	@override String get medium => 'Orta Kalite';
	@override String get low => 'Düşük Kalite ';
}

// Path: misskey.compression_.size_
class _TranslationsMisskeyCompressionSizeTrTr extends TranslationsMisskeyCompressionSizeEnUs {
	_TranslationsMisskeyCompressionSizeTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get large => 'Büyük Boyut';
	@override String get medium => 'Orta Boyut';
	@override String get small => 'Küçük Boyut';
}

// Path: misskey.chat_.chatAllowedUsers_
class _TranslationsMisskeyChatChatAllowedUsersTrTr extends TranslationsMisskeyChatChatAllowedUsersEnUs {
	_TranslationsMisskeyChatChatAllowedUsersTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get everyone => 'Herkes';
	@override String get followers => 'Sadece takipçilerin';
	@override String get following => 'Only users you are following';
	@override String get mutual => 'Sadece takiplerin';
	@override String get none => 'Kimse';
}

// Path: misskey.settings_.chat_
class _TranslationsMisskeySettingsChatTrTr extends TranslationsMisskeySettingsChatEnUs {
	_TranslationsMisskeySettingsChatTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get showSenderName => 'Gönderenin adını göster';
	@override String get sendOnEnter => 'Enter tuşuna basarak gönderin';
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypeTrTr extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypeTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get none => 'Paylaşım';
	@override String get manuallySuspended => 'Manuel olarak askıya alınmış';
	@override String get goneSuspended => 'Sunucu, sunucunun silinmesi nedeniyle askıya alınmıştır.';
	@override String get autoSuspendedForNotResponding => 'Sunucu yanıt vermediği için askıya alınmıştır.';
	@override String get softwareSuspended => 'Bu yazılım artık dağıtılmadığı için askıya alınmıştır.';
}

// Path: misskey.bubbleGame_.score_
class _TranslationsMisskeyBubbleGameScoreTrTr extends TranslationsMisskeyBubbleGameScoreEnUs {
	_TranslationsMisskeyBubbleGameScoreTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get score => 'Skor';
	@override String get scoreYen => 'Kazanılan para miktarı';
	@override String get highScore => 'Yüksek puan';
	@override String get maxChain => 'Maksimum zincir sayısı';
	@override String yen({required Object yen}) => '${yen} Yen';
	@override String estimatedQty({required Object qty}) => '${qty} Adet';
	@override String scoreSweets({required Object onigiriQtyWithUnit}) => '${onigiriQtyWithUnit} Onigiri';
}

// Path: misskey.bubbleGame_.howToPlay_
class _TranslationsMisskeyBubbleGameHowToPlayTrTr extends TranslationsMisskeyBubbleGameHowToPlayEnUs {
	_TranslationsMisskeyBubbleGameHowToPlayTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get section1 => 'Konumu ayarlayın ve nesneyi kutuya bırakın.';
	@override String get section2 => 'Aynı türden iki nesne birbirine dokunduğunda, farklı bir nesneye dönüşür ve puan kazanırsınız.';
	@override String get section3 => 'Kutu dolduğunda oyun biter. Kutuyu doldurmadan nesneleri birleştirerek yüksek puan almaya çalış!';
}

// Path: misskey.initialTutorial_.landing_
class _TranslationsMisskeyInitialTutorialLandingTrTr extends TranslationsMisskeyInitialTutorialLandingEnUs {
	_TranslationsMisskeyInitialTutorialLandingTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Öğreticiye hoş geldin';
	@override String get description => 'Burada, Misskey\'i kullanmanın temellerini ve özelliklerini öğrenebilirsin.';
}

// Path: misskey.initialTutorial_.note_
class _TranslationsMisskeyInitialTutorialNoteTrTr extends TranslationsMisskeyInitialTutorialNoteEnUs {
	_TranslationsMisskeyInitialTutorialNoteTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Not nedir?';
	@override String get description => 'Misskey\'deki gönderiler “Notlar” olarak adlandırılır. Notlar panoda kronolojik olarak düzenlenir ve gerçek zamanlı olarak güncellenir.';
	@override String get reply => 'Bir mesaja yanıt vermek için bu düğmeye tıklayın. Yanıtlara yanıt vermek de mümkündür, böylece konuşma bir konu başlığı gibi devam eder.';
	@override String get renote => 'Bu notu kendi panonda paylaşabilirsin. Ayrıca yorumlarınla birlikte alıntı da yapabilirsin.';
	@override String get reaction => 'Not\'a tepkiler ekleyebilirsin. Daha fazla ayrıntı bir sonraki sayfada açıklanacak.';
	@override String get menu => 'Not ayrıntılarını görüntüleyebilir, bağlantıları kopyalayabilir ve çeşitli diğer işlemleri gerçekleştirebilirsin.';
}

// Path: misskey.initialTutorial_.reaction_
class _TranslationsMisskeyInitialTutorialReactionTrTr extends TranslationsMisskeyInitialTutorialReactionEnUs {
	_TranslationsMisskeyInitialTutorialReactionTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reaksiyonlar nedir?';
	@override String get description => 'Notlara çeşitli emojilerle tepki verilebilir. Tepkiler, sadece bir ‘beğeni’ ile ifade edilemeyen nüansları ifade etmeni sağlar.';
	@override String get letsTryReacting => 'Notun üzerindeki ‘+’ düğmesine tıklayarak tepkiler eklenebilir. Bu örnek nota tepki verin!';
	@override String get reactToContinue => 'Devam etmek için bir tepki ekle.';
	@override String get reactNotification => 'Biri notunuza tepki verdiğinde gerçek zamanlı bildirimler alacaksınız.';
	@override String get reactDone => '“-” düğmesine basarak bir tepkiyi geri alabilirsin.';
}

// Path: misskey.initialTutorial_.timeline_
class _TranslationsMisskeyInitialTutorialTimelineTrTr extends TranslationsMisskeyInitialTutorialTimelineEnUs {
	_TranslationsMisskeyInitialTutorialTimelineTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pano Kavramı';
	@override String get description1 => 'Misskey, kullanıma göre birden fazla Pano sunar (Bazı Pano\'lar sunucunun politikalarına bağlı olarak kullanılamayabilir).';
	@override String get home => 'Takip ettiğin hesapların notlarını görüntüleyebilirsin.';
	@override String get local => 'Bu sunucudaki tüm kullanıcıların notlarını görüntüleyebilirsin.';
	@override String get social => 'Ev ve Yerel Pano\'dan notlar görüntülenecek.';
	@override String get global => 'Bağlı tüm sunuculardan gelen notları görüntüleyebilirsin.';
	@override String get description2 => 'Ekranın üst kısmındaki Pano\'lar arasında istediğin zaman geçiş yapabilirsin.';
	@override String description3({required Object link}) => 'Ayrıca, Liste Pano ve Kanal Pano da bulunmaktadır. Daha fazla ayrıntı için lütfen ${link} adresine bakın.';
}

// Path: misskey.initialTutorial_.postNote_
class _TranslationsMisskeyInitialTutorialPostNoteTrTr extends TranslationsMisskeyInitialTutorialPostNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Not Yayınlama Ayarları';
	@override String get description1 => 'Misskey\'de not yayınlarken çeşitli seçenekler mevcuttur. Yayınlama formu şu şekildedir.';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteVisibilityTrTr visibility_ = _TranslationsMisskeyInitialTutorialPostNoteVisibilityTrTr._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwTrTr cw_ = _TranslationsMisskeyInitialTutorialPostNoteCwTrTr._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveTrTr extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ekleri Hassas Olarak İşaretleme';
	@override String get description => 'Sunucu kuralları gereği gerekli olan veya bozulmaması gereken ekler için “hassas” bayrağı ekle.';
	@override String get tryThisFile => 'Bu forma ekli resmi hassas olarak işaretlemeyi dene!';
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteTrTr exampleNote_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteTrTr._(_root);
	@override String get method => 'Bir eki hassas olarak işaretlemek için, dosya küçük resmini tıklayın, menüyü açın ve “Hassas Olarak İşaretle” seçeneğini tıklayın.';
	@override String get sensitiveSucceeded => 'Dosya eklerken, lütfen sunucu kurallarına uygun olarak hassasiyet ayarlarını yapın.';
	@override String get doItToContinue => 'Devam etmek için ek dosyayı hassas olarak işaretle.';
}

// Path: misskey.initialTutorial_.done_
class _TranslationsMisskeyInitialTutorialDoneTrTr extends TranslationsMisskeyInitialTutorialDoneEnUs {
	_TranslationsMisskeyInitialTutorialDoneTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eğitimi tamamladınız! 🎉';
	@override String description({required Object link}) => 'Burada tanıtılan işlevler sadece küçük bir kısmıdır. Misskey\'i kullanma konusunda daha ayrıntılı bilgi için lütfen şu kaynağa bakın: ${link}.';
}

// Path: misskey.serverSettings_.userGeneratedContentsVisibilityForVisitor_
class _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorTrTr extends TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorEnUs {
	_TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get all => 'Her şey halka açıktır.';
	@override String get localOnly => 'Yalnızca yerel içerik yayınlanır, uzak içerik gizli tutulur.';
	@override String get none => 'Her şey gizlidir.';
}

// Path: misskey.achievements_.types_
class _TranslationsMisskeyAchievementsTypesTrTr extends TranslationsMisskeyAchievementsTypesEnUs {
	_TranslationsMisskeyAchievementsTypesTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesNotes1TrTr notes1_ = _TranslationsMisskeyAchievementsTypesNotes1TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10TrTr notes10_ = _TranslationsMisskeyAchievementsTypesNotes10TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100TrTr notes100_ = _TranslationsMisskeyAchievementsTypesNotes100TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes500TrTr notes500_ = _TranslationsMisskeyAchievementsTypesNotes500TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes1000TrTr notes1000_ = _TranslationsMisskeyAchievementsTypesNotes1000TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes5000TrTr notes5000_ = _TranslationsMisskeyAchievementsTypesNotes5000TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10000TrTr notes10000_ = _TranslationsMisskeyAchievementsTypesNotes10000TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes20000TrTr notes20000_ = _TranslationsMisskeyAchievementsTypesNotes20000TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes30000TrTr notes30000_ = _TranslationsMisskeyAchievementsTypesNotes30000TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes40000TrTr notes40000_ = _TranslationsMisskeyAchievementsTypesNotes40000TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes50000TrTr notes50000_ = _TranslationsMisskeyAchievementsTypesNotes50000TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes60000TrTr notes60000_ = _TranslationsMisskeyAchievementsTypesNotes60000TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes70000TrTr notes70000_ = _TranslationsMisskeyAchievementsTypesNotes70000TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes80000TrTr notes80000_ = _TranslationsMisskeyAchievementsTypesNotes80000TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes90000TrTr notes90000_ = _TranslationsMisskeyAchievementsTypesNotes90000TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100000TrTr notes100000_ = _TranslationsMisskeyAchievementsTypesNotes100000TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin3TrTr login3_ = _TranslationsMisskeyAchievementsTypesLogin3TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin7TrTr login7_ = _TranslationsMisskeyAchievementsTypesLogin7TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin15TrTr login15_ = _TranslationsMisskeyAchievementsTypesLogin15TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin30TrTr login30_ = _TranslationsMisskeyAchievementsTypesLogin30TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin60TrTr login60_ = _TranslationsMisskeyAchievementsTypesLogin60TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin100TrTr login100_ = _TranslationsMisskeyAchievementsTypesLogin100TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin200TrTr login200_ = _TranslationsMisskeyAchievementsTypesLogin200TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin300TrTr login300_ = _TranslationsMisskeyAchievementsTypesLogin300TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin400TrTr login400_ = _TranslationsMisskeyAchievementsTypesLogin400TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin500TrTr login500_ = _TranslationsMisskeyAchievementsTypesLogin500TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin600TrTr login600_ = _TranslationsMisskeyAchievementsTypesLogin600TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin700TrTr login700_ = _TranslationsMisskeyAchievementsTypesLogin700TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin800TrTr login800_ = _TranslationsMisskeyAchievementsTypesLogin800TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin900TrTr login900_ = _TranslationsMisskeyAchievementsTypesLogin900TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin1000TrTr login1000_ = _TranslationsMisskeyAchievementsTypesLogin1000TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteClipped1TrTr noteClipped1_ = _TranslationsMisskeyAchievementsTypesNoteClipped1TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteFavorited1TrTr noteFavorited1_ = _TranslationsMisskeyAchievementsTypesNoteFavorited1TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMyNoteFavorited1TrTr myNoteFavorited1_ = _TranslationsMisskeyAchievementsTypesMyNoteFavorited1TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesProfileFilledTrTr profileFilled_ = _TranslationsMisskeyAchievementsTypesProfileFilledTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMarkedAsCatTrTr markedAsCat_ = _TranslationsMisskeyAchievementsTypesMarkedAsCatTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing1TrTr following1_ = _TranslationsMisskeyAchievementsTypesFollowing1TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing10TrTr following10_ = _TranslationsMisskeyAchievementsTypesFollowing10TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing50TrTr following50_ = _TranslationsMisskeyAchievementsTypesFollowing50TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing100TrTr following100_ = _TranslationsMisskeyAchievementsTypesFollowing100TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing300TrTr following300_ = _TranslationsMisskeyAchievementsTypesFollowing300TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1TrTr followers1_ = _TranslationsMisskeyAchievementsTypesFollowers1TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers10TrTr followers10_ = _TranslationsMisskeyAchievementsTypesFollowers10TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers50TrTr followers50_ = _TranslationsMisskeyAchievementsTypesFollowers50TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers100TrTr followers100_ = _TranslationsMisskeyAchievementsTypesFollowers100TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers300TrTr followers300_ = _TranslationsMisskeyAchievementsTypesFollowers300TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers500TrTr followers500_ = _TranslationsMisskeyAchievementsTypesFollowers500TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1000TrTr followers1000_ = _TranslationsMisskeyAchievementsTypesFollowers1000TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCollectAchievements30TrTr collectAchievements30_ = _TranslationsMisskeyAchievementsTypesCollectAchievements30TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewAchievements3minTrTr viewAchievements3min_ = _TranslationsMisskeyAchievementsTypesViewAchievements3minTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesILoveMisskeyTrTr iLoveMisskey_ = _TranslationsMisskeyAchievementsTypesILoveMisskeyTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFoundTreasureTrTr foundTreasure_ = _TranslationsMisskeyAchievementsTypesFoundTreasureTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient30minTrTr client30min_ = _TranslationsMisskeyAchievementsTypesClient30minTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient60minTrTr client60min_ = _TranslationsMisskeyAchievementsTypesClient60minTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minTrTr noteDeletedWithin1min_ = _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAtLateNightTrTr postedAtLateNight_ = _TranslationsMisskeyAchievementsTypesPostedAtLateNightTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAt0min0secTrTr postedAt0min0sec_ = _TranslationsMisskeyAchievementsTypesPostedAt0min0secTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSelfQuoteTrTr selfQuote_ = _TranslationsMisskeyAchievementsTypesSelfQuoteTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesHtl20npmTrTr htl20npm_ = _TranslationsMisskeyAchievementsTypesHtl20npmTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewInstanceChartTrTr viewInstanceChart_ = _TranslationsMisskeyAchievementsTypesViewInstanceChartTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadTrTr outputHelloWorldOnScratchpad_ = _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOpen3windowsTrTr open3windows_ = _TranslationsMisskeyAchievementsTypesOpen3windowsTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceTrTr driveFolderCircularReference_ = _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesReactWithoutReadTrTr reactWithoutRead_ = _TranslationsMisskeyAchievementsTypesReactWithoutReadTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClickedClickHereTrTr clickedClickHere_ = _TranslationsMisskeyAchievementsTypesClickedClickHereTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesJustPlainLuckyTrTr justPlainLucky_ = _TranslationsMisskeyAchievementsTypesJustPlainLuckyTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSetNameToSyuiloTrTr setNameToSyuilo_ = _TranslationsMisskeyAchievementsTypesSetNameToSyuiloTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1TrTr passedSinceAccountCreated1_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2TrTr passedSinceAccountCreated2_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3TrTr passedSinceAccountCreated3_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3TrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayTrTr loggedInOnBirthday_ = _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayTrTr loggedInOnNewYearsDay_ = _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCookieClickedTrTr cookieClicked_ = _TranslationsMisskeyAchievementsTypesCookieClickedTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBrainDiverTrTr brainDiver_ = _TranslationsMisskeyAchievementsTypesBrainDiverTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonTrTr smashTestNotificationButton_ = _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesTutorialCompletedTrTr tutorialCompleted_ = _TranslationsMisskeyAchievementsTypesTutorialCompletedTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadTrTr bubbleGameExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadTrTr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadTrTr bubbleGameDoubleExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadTrTr._(_root);
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityTrTr extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get low => 'Düşük';
	@override String get middle => 'Orta';
	@override String get high => 'Yüksek';
}

// Path: misskey.role_.options_
class _TranslationsMisskeyRoleOptionsTrTr extends TranslationsMisskeyRoleOptionsEnUs {
	_TranslationsMisskeyRoleOptionsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'Global Pano\'yu görüntüleyebilir';
	@override String get ltlAvailable => 'Yerel panoyu görüntüleyebilir';
	@override String get canPublicNote => 'Halka açık notlar gönderebilir';
	@override String get mentionMax => 'Bir notta maksimum bahsetme sayısı';
	@override String get canInvite => 'Sunucu davet kodları oluşturabilir';
	@override String get inviteLimit => 'Davet sınırı';
	@override String get inviteLimitCycle => 'Davet sınırı bekleme süresi';
	@override String get inviteExpirationTime => 'Davet süresi dolma aralığı';
	@override String get canManageCustomEmojis => 'Özel emojileri yönetebilir';
	@override String get canManageAvatarDecorations => 'Avatar süslerini yönet';
	@override String get driveCapacity => 'Drive kapasitesi';
	@override String get maxFileSize => 'Yükleyebileceğin maksimum dosya boyutu';
	@override String get maxFileSize_caption => 'Önceki aşamada ters proxy veya CDN gibi başka yapılandırma ayarları da olabilir.';
	@override String get alwaysMarkNsfw => 'Dosyaları her zaman NSFW olarak işaretle';
	@override String get canUpdateBioMedia => 'Bir simge veya banner görüntüsünü düzenleyebilir';
	@override String get pinMax => 'Sabitlenmiş notların maksimum sayısı';
	@override String get antennaMax => 'Maksimum anten sayısı';
	@override String get wordMuteMax => 'Kelime sessizlerinde izin verilen maksimum karakter sayısı';
	@override String get webhookMax => 'Maksimum Webhook sayısı';
	@override String get clipMax => 'Maksimum klip sayısı';
	@override String get noteEachClipsMax => 'Bir klip içindeki maksimum not sayısı';
	@override String get userListMax => 'Maksimum kullanıcı listesi sayısı';
	@override String get userEachUserListsMax => 'Kullanıcı listesindeki maksimum kullanıcı sayısı';
	@override String get rateLimitFactor => 'Hız Sınırı';
	@override String get descriptionOfRateLimitFactor => 'Daha düşük oran sınırları daha az kısıtlayıcıdır, daha yüksek olanlar ise daha kısıtlayıcıdır.';
	@override String get canHideAds => 'Reklamları gizleyebilir';
	@override String get canSearchNotes => 'Not arama kullanımı';
	@override String get canSearchUsers => 'Kullanıcı arama';
	@override String get canUseTranslator => 'Çevirmen kullanımı';
	@override String get avatarDecorationLimit => 'Maksimum avatar süsü sayısı';
	@override String get canImportAntennas => 'Antenlerin içe aktarılmasına izin ver';
	@override String get canImportBlocking => 'Engellemeyi içe aktarmaya izin ver';
	@override String get canImportFollowing => 'Aşağıdakilerin içe aktarılmasına izin ver';
	@override String get canImportMuting => 'Sessize alma özelliğini içe aktarmaya izin ver';
	@override String get canImportUserLists => 'Listelerin içe aktarılmasına izin ver';
	@override String get chatAvailability => 'Sohbeti İzin Ver';
	@override String get uploadableFileTypes => 'Yüklenebilir dosya türleri';
	@override String get uploadableFileTypes_caption => 'İzin verilen MIME/dosya türlerini belirtir. Birden fazla MIME türü, yeni bir satırla ayırarak belirtilebilir ve joker karakterler yıldız işareti (*) ile belirtilebilir. (örneğin, image/*)';
	@override String uploadableFileTypes_caption2({required Object x}) => 'Bazı dosya türleri algılanamayabilir. Bu tür dosyalara izin vermek için, spesifikasyona ${x} ekle.';
	@override String get noteDraftLimit => 'Sunucu notlarının olası taslak sayısı';
	@override String get scheduledNoteLimit => 'Aynı anda oluşturulabilecek planlanmış gönderi sayısı';
	@override String get watermarkAvailable => 'Filigran işlevinin kullanılabilirliği';
}

// Path: misskey.role_.condition_
class _TranslationsMisskeyRoleConditionTrTr extends TranslationsMisskeyRoleConditionEnUs {
	_TranslationsMisskeyRoleConditionTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get roleAssignedTo => 'Manuel rollere atanmış';
	@override String get isLocal => 'Yerel kullanıcı';
	@override String get isRemote => 'Uzak kullanıcı';
	@override String get isCat => 'Kedi Kullanıcıları';
	@override String get isBot => 'Bot Kullanıcıları';
	@override String get isSuspended => 'Askıya alınmış kullanıcı';
	@override String get isLocked => 'Özel hesaplar';
	@override String get isExplorable => '“Hesabı bulunabilir hale getir” özelliğini etkili bir şekilde kullanan kullanıcı';
	@override String get createdLessThan => 'Hesap oluşturulduktan sonra X\'ten az zaman geçti.';
	@override String get createdMoreThan => 'Hesap oluşturulmasından bu yana X\'ten fazla zaman geçti.';
	@override String get followersLessThanOrEq => 'X veya daha az takipçisi var';
	@override String get followersMoreThanOrEq => 'X veya daha fazla takipçisi var';
	@override String get followingLessThanOrEq => 'X veya daha az sayıda hesabı takip ediyor';
	@override String get followingMoreThanOrEq => 'X veya daha fazla hesabı takip ediyor';
	@override String get notesLessThanOrEq => 'Gönderi sayısı şundan az/eşit';
	@override String get notesMoreThanOrEq => 'Gönderi sayısı şundan büyük/eşit';
	@override String get and => 'Koşul-AND';
	@override String get or => 'Koşul-QR';
	@override String get not => 'Koşul-NOT';
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowTrTr extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yeni bir takipçin var.';
}

// Path: misskey.email_.receiveFollowRequest_
class _TranslationsMisskeyEmailReceiveFollowRequestTrTr extends TranslationsMisskeyEmailReceiveFollowRequestEnUs {
	_TranslationsMisskeyEmailReceiveFollowRequestTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bir takip isteği aldınız.';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysTrTr extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get accent => 'Aksan';
	@override String get bg => 'Arka plan';
	@override String get fg => 'Metin';
	@override String get focus => 'Odak';
	@override String get indicator => 'Gösterge';
	@override String get panel => 'Panel';
	@override String get shadow => 'Gölge';
	@override String get header => 'Başlık';
	@override String get navBg => 'Kenar çubuğu arka planı';
	@override String get navFg => 'Kenar çubuğu metni';
	@override String get navActive => 'Kenar çubuğu metni (Etkin)';
	@override String get navIndicator => 'Kenar çubuğu göstergesi';
	@override String get link => 'Link';
	@override String get hashtag => 'Hashtag';
	@override String get mention => 'Bahsetmeler';
	@override String get mentionMe => 'Bahsetmeler (Ben)';
	@override String get renote => 'Renote';
	@override String get modalBg => 'Modal arka plan';
	@override String get divider => 'Bölücü';
	@override String get scrollbarHandle => 'Kaydırma çubuğu';
	@override String get scrollbarHandleHover => 'Kaydırma çubuğu (Fareyi üzerine getir)';
	@override String get dateLabelFg => 'Tarih etiketi metni';
	@override String get infoBg => 'Bilgi arka planı';
	@override String get infoFg => 'Bilgi metni';
	@override String get infoWarnBg => 'Uyarı arka planı';
	@override String get infoWarnFg => 'Uyarı metni';
	@override String get toastBg => 'Bildirim arka planı';
	@override String get toastFg => 'Bildirim metni';
	@override String get buttonBg => 'Düğme arka planı';
	@override String get buttonHoverBg => 'Button background (Hover)';
	@override String get inputBorder => 'Giriş alanı kenarlığı';
	@override String get badge => 'Rozet';
	@override String get messageBg => 'Sohbet arka planı';
	@override String get fgHighlighted => 'Vurgulanan Metin';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListTrTr extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Bir liste seçin';
}

// Path: misskey.widgetOptions_.button_
class _TranslationsMisskeyWidgetOptionsButtonTrTr extends TranslationsMisskeyWidgetOptionsButtonEnUs {
	_TranslationsMisskeyWidgetOptionsButtonTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get colored => 'Renkli';
}

// Path: misskey.widgetOptions_.clock_
class _TranslationsMisskeyWidgetOptionsClockTrTr extends TranslationsMisskeyWidgetOptionsClockEnUs {
	_TranslationsMisskeyWidgetOptionsClockTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get size => 'Boyut';
	@override String get thickness => 'İğne kalınlığı';
	@override String get thicknessThin => 'İnce';
	@override String get thicknessMedium => 'Normal';
	@override String get thicknessThick => 'Kalın';
	@override String get graduations => 'Kadran ölçeği';
	@override String get graduationDots => 'Nokta';
	@override String get graduationArabic => 'Arap rakamları';
	@override String get fadeGraduations => 'ölçeği soluklaştır';
	@override String get sAnimation => 'İkinci el animasyon';
	@override String get sAnimationElastic => 'Gerçek';
	@override String get sAnimationEaseOut => 'Düz';
	@override String get twentyFour => '24 saat ekran';
	@override String get labelTime => 'Zaman';
	@override String get labelTz => 'Zaman Dilimi';
	@override String get labelTimeAndTz => 'Zaman ve Saat Dilimi';
	@override String get timezone => 'Zaman Dilimi ';
	@override String get showMs => 'Milisaniye cinsinden göster';
	@override String get showLabel => 'Etiketi Göster';
}

// Path: misskey.widgetOptions_.jobQueue_
class _TranslationsMisskeyWidgetOptionsJobQueueTrTr extends TranslationsMisskeyWidgetOptionsJobQueueEnUs {
	_TranslationsMisskeyWidgetOptionsJobQueueTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get sound => 'Sesleri Çal';
}

// Path: misskey.widgetOptions_.rss_
class _TranslationsMisskeyWidgetOptionsRssTrTr extends TranslationsMisskeyWidgetOptionsRssEnUs {
	_TranslationsMisskeyWidgetOptionsRssTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get url => 'RSS beslemesi URL\'si';
	@override String get refreshIntervalSec => 'Güncelleme aralığı (saniye)';
	@override String get maxEntries => 'Görüntülenecek maksimum öğe sayısı';
}

// Path: misskey.widgetOptions_.rssTicker_
class _TranslationsMisskeyWidgetOptionsRssTickerTrTr extends TranslationsMisskeyWidgetOptionsRssTickerEnUs {
	_TranslationsMisskeyWidgetOptionsRssTickerTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get shuffle => 'Görüntüleme sırasını karıştır';
	@override String get duration => 'Kaydırma yazısı hızı (saniye)';
	@override String get reverse => 'Geriye doğru kaydır';
}

// Path: misskey.widgetOptions_.birthdayFollowings_
class _TranslationsMisskeyWidgetOptionsBirthdayFollowingsTrTr extends TranslationsMisskeyWidgetOptionsBirthdayFollowingsEnUs {
	_TranslationsMisskeyWidgetOptionsBirthdayFollowingsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get period => 'Süre';
}

// Path: misskey.postForm_.howToUse_
class _TranslationsMisskeyPostFormHowToUseTrTr extends TranslationsMisskeyPostFormHowToUseEnUs {
	_TranslationsMisskeyPostFormHowToUseTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get content_title => 'Metin';
	@override String get content_description => 'Yayınlamak istediğiniz içeriği girin.';
	@override String get toolbar_title => 'Araç Çubuğu';
	@override String get toolbar_description => 'Dosya ve anket ekleyebilir, açıklamalar ve etiketler ekleyebilir, emoji ve bahsetme mesajları ekleyebilirsiniz.';
	@override String get account_title => 'Hesap Menüsü';
	@override String get account_description => 'Paylaşım yaptığınız hesabı değiştirebilir ve hesabınıza kaydedilmiş taslak ve planlanmış paylaşımların listesini görüntüleyebilirsiniz.';
	@override String get visibility_title => 'Görünürlük';
	@override String get visibility_description => 'Notlarınıza kimlerin erişebileceğinin kapsamını belirleyebilirsiniz.';
	@override String get menu_title => 'Menü';
	@override String get menu_description => 'Taslak olarak kaydetme, gönderi planlama ve tepki ayarlama gibi diğer işlemleri de gerçekleştirebilirsiniz.';
	@override String get submit_title => 'Gönder düğmesi';
	@override String get submit_description => 'Bir not paylaşacağım. Ctrl + Enter / Cmd + Enter tuşlarını kullanarak da paylaşım yapabilirsiniz.';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersTrTr extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get a => 'Ne yapıyorsun?';
	@override String get b => 'Çevrende neler oluyor?';
	@override String get c => 'Aklında ne var?';
	@override String get d => 'Ne söylemek istiyorsun?';
	@override String get e => 'Yazmaya başlayın...';
	@override String get f => 'Yazmanızı bekliyoruz...';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksTrTr extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get text => 'Metin';
	@override String get textarea => 'Metin alanı';
	@override String get section => 'Bölüm';
	@override String get image => 'Görseller';
	@override String get button => 'Düğme';
	@override String get dynamic => 'Dinamik Bloklar';
	@override String dynamicDescription({required Object play}) => 'Bu blok kaldırılmıştır. Bundan sonra lütfen ${play} kullanın.';
	@override String get note => 'Gömülü not';
	@override late final _TranslationsMisskeyPagesBlocksNoteTrTr note_ = _TranslationsMisskeyPagesBlocksNoteTrTr._(_root);
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesTrTr extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get all => 'Tümü';
	@override String get note => 'Yeni notlar';
	@override String get follow => 'Yeni takipçiler';
	@override String get mention => 'Bahsetmeler';
	@override String get reply => 'Yanıtlar';
	@override String get renote => 'Renote';
	@override String get quote => 'Alıntılar';
	@override String get reaction => 'Tepki';
	@override String get pollEnded => 'Anketler sona eriyor';
	@override String get scheduledNotePosted => 'Planlanan gönderi başarılı';
	@override String get scheduledNotePostFailed => 'Planlanan gönderi başarısız oldu';
	@override String get receiveFollowRequest => 'Takip istekleri alındı';
	@override String get followRequestAccepted => 'Kabul edilen takip istekleri';
	@override String get roleAssigned => 'Verilen rol';
	@override String get chatRoomInvitationReceived => 'Sohbet odasına davet edildi';
	@override String get achievementEarned => 'Başarı kilidi açıldı';
	@override String get exportCompleted => 'İhracat işlemi tamamlandı.';
	@override String get login => 'Oturum Aç';
	@override String get createToken => 'Erişim jetonu oluştur';
	@override String get test => 'Bildirim testi';
	@override String get app => 'Bağlı uygulamalardan gelen bildirimler';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsTrTr extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'seni takip ettim';
	@override String get reply => 'Yanıtla';
	@override String get renote => 'Renote';
}

// Path: misskey.deck_.howToUse_
class _TranslationsMisskeyDeckHowToUseTrTr extends TranslationsMisskeyDeckHowToUseEnUs {
	_TranslationsMisskeyDeckHowToUseTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get addColumn_title => 'Sütun ekle';
	@override String get addColumn_description => 'Sütun türlerini seçip ekleyebilirsiniz.';
	@override String get settings_title => 'Arayüz Yapılandırması';
	@override String get settings_description => 'Sekme kullanıcı arayüzünü ayrıntılı olarak yapılandırabilirsiniz.';
	@override String get switchProfile_title => 'Profili Değiştir';
	@override String get switchProfile_description => 'Kullanıcı arayüzü düzenlerini profil olarak kaydedebilir ve istediğiniz zaman bunlar arasında geçiş yapabilirsiniz.';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsTrTr extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get main => 'Ana';
	@override String get widgets => 'Widget\'lar';
	@override String get notifications => 'Bildirimler';
	@override String get tl => 'Pano';
	@override String get antenna => 'Antenler';
	@override String get list => 'Liste';
	@override String get channel => 'Kanal';
	@override String get mentions => 'Bahsetmeler';
	@override String get direct => 'Doğrudan notlar';
	@override String get roleTimeline => 'Rol Pano';
	@override String get chat => 'Sohbet';
}

// Path: misskey.webhookSettings_.events_
class _TranslationsMisskeyWebhookSettingsEventsTrTr extends TranslationsMisskeyWebhookSettingsEventsEnUs {
	_TranslationsMisskeyWebhookSettingsEventsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Bir kullanıcıyı takip ederken';
	@override String get followed => 'Takip edildiğinde';
	@override String get note => 'Not gönderirken';
	@override String get reply => 'Yanıt alındığında';
	@override String get renote => 'Yeniden not edildiğinde';
	@override String get reaction => 'Tepki aldığınızda';
	@override String get mention => 'Bahsedildiğinde';
}

// Path: misskey.webhookSettings_.systemEvents_
class _TranslationsMisskeyWebhookSettingsSystemEventsTrTr extends TranslationsMisskeyWebhookSettingsSystemEventsEnUs {
	_TranslationsMisskeyWebhookSettingsSystemEventsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get abuseReport => 'Yeni bir rapor alındığında';
	@override String get abuseReportResolved => 'Çözüldüğünde rapor';
	@override String get userCreated => 'Kullanıcı oluşturulduğunda';
	@override String get inactiveModeratorsWarning => 'Moderatörler bir süredir aktif olmadıklarında';
	@override String get inactiveModeratorsInvitationOnlyChanged => 'Bir moderatör bir süre aktif olmadığında ve sunucu davetle erişilebilir hale getirildiğinde';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientTrTr extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get createRecipient => 'Raporlar için alıcı ekle';
	@override String get modifyRecipient => 'Raporlar için alıcıyı düzenle';
	@override String get recipientType => 'Bildirim türü';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeTrTr recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeTrTr._(_root);
	@override String get keywords => 'Anahtar kelimeler';
	@override String get notifiedUser => 'Bildirilecek kullanıcılar';
	@override String get notifiedWebhook => 'Kullanılacak webhook';
	@override String get deleteConfirm => 'Bildirim alıcısını silmek istediğinden emin misin?';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _TranslationsMisskeyExternalResourceInstallerPluginTrTr extends TranslationsMisskeyExternalResourceInstallerPluginEnUs {
	_TranslationsMisskeyExternalResourceInstallerPluginTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bu eklentiyi yüklemek ister misin?';
}

// Path: misskey.externalResourceInstaller_.theme_
class _TranslationsMisskeyExternalResourceInstallerThemeTrTr extends TranslationsMisskeyExternalResourceInstallerThemeEnUs {
	_TranslationsMisskeyExternalResourceInstallerThemeTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bu temayı yüklemek ister misin?';
}

// Path: misskey.externalResourceInstaller_.meta_
class _TranslationsMisskeyExternalResourceInstallerMetaTrTr extends TranslationsMisskeyExternalResourceInstallerMetaEnUs {
	_TranslationsMisskeyExternalResourceInstallerMetaTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get base => 'Temel renk şeması';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _TranslationsMisskeyExternalResourceInstallerVendorInfoTrTr extends TranslationsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_TranslationsMisskeyExternalResourceInstallerVendorInfoTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dağıtıcı bilgileri';
	@override String get endpoint => 'Referans uç nokta';
	@override String get hashVerify => 'Hash doğrulama';
}

// Path: misskey.externalResourceInstaller_.errors_
class _TranslationsMisskeyExternalResourceInstallerErrorsTrTr extends TranslationsMisskeyExternalResourceInstallerErrorsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsTrTr invalidParams_ = _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsTrTr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedTrTr resourceTypeNotSupported_ = _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedTrTr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchTrTr failedToFetch_ = _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchTrTr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedTrTr hashUnmatched_ = _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedTrTr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedTrTr pluginParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedTrTr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedTrTr pluginInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedTrTr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedTrTr themeParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedTrTr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedTrTr themeInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedTrTr._(_root);
}

// Path: misskey.dataSaver_.media_
class _TranslationsMisskeyDataSaverMediaTrTr extends TranslationsMisskeyDataSaverMediaEnUs {
	_TranslationsMisskeyDataSaverMediaTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Medya yükleniyor';
	@override String get description => 'Görüntülerin/videoların otomatik olarak yüklenmesini engeller. Gizli görüntüler/videolar dokunulduğunda yüklenir.';
}

// Path: misskey.dataSaver_.avatar_
class _TranslationsMisskeyDataSaverAvatarTrTr extends TranslationsMisskeyDataSaverAvatarEnUs {
	_TranslationsMisskeyDataSaverAvatarTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Avatar resmi';
	@override String get description => 'Avatar görüntüsünün animasyonunu durdurun. Animasyonlu görüntüler normal görüntülere göre dosya boyutu açısından daha büyük olabilir ve bu da veri trafiğinde daha fazla azalmaya yol açabilir.';
}

// Path: misskey.dataSaver_.urlPreviewThumbnail_
class _TranslationsMisskeyDataSaverUrlPreviewThumbnailTrTr extends TranslationsMisskeyDataSaverUrlPreviewThumbnailEnUs {
	_TranslationsMisskeyDataSaverUrlPreviewThumbnailTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL önizleme küçük resimlerini gizle';
	@override String get description => 'URL önizleme küçük resimleri artık yüklenmeyecek.';
}

// Path: misskey.dataSaver_.disableUrlPreview_
class _TranslationsMisskeyDataSaverDisableUrlPreviewTrTr extends TranslationsMisskeyDataSaverDisableUrlPreviewEnUs {
	_TranslationsMisskeyDataSaverDisableUrlPreviewTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL önizlemesini devre dışı bırak';
	@override String get description => 'URL önizleme işlevini devre dışı bırakır. Küçük resimler aksine, bu işlev bağlantılı bilgilerin kendisinin yüklenmesini azaltır.';
}

// Path: misskey.dataSaver_.code_
class _TranslationsMisskeyDataSaverCodeTrTr extends TranslationsMisskeyDataSaverCodeEnUs {
	_TranslationsMisskeyDataSaverCodeTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kod vurgulama';
	@override String get description => 'MFM vb. programlarda kod vurgulama notasyonları kullanılıyorsa, bunlar dokunulana kadar yüklenmez. Sözdizimi vurgulama, her programlama dili için vurgu tanım dosyalarının indirilmesini gerektirir. Bu nedenle, bu dosyaların otomatik olarak yüklenmesinin devre dışı bırakılması, iletişim verisi miktarını azaltması beklenir.';
}

// Path: misskey.gridComponent_.error_
class _TranslationsMisskeyGridComponentErrorTrTr extends TranslationsMisskeyGridComponentErrorEnUs {
	_TranslationsMisskeyGridComponentErrorTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get requiredValue => 'Bu değer gereklidir.';
	@override String get columnTypeNotSupport => 'Düzenli ifade ile doğrulama yalnızca type:text sütunları için desteklenir.';
	@override String patternNotMatch({required Object pattern}) => 'Bu değer ${pattern} içindeki desenle eşleşmiyor.';
	@override String get notUnique => 'Bu değer benzersiz olmalıdır.';
}

// Path: misskey.customEmojisManager_.gridCommon_
class _TranslationsMisskeyCustomEmojisManagerGridCommonTrTr extends TranslationsMisskeyCustomEmojisManagerGridCommonEnUs {
	_TranslationsMisskeyCustomEmojisManagerGridCommonTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get copySelectionRows => 'Seçili satırları kopyala';
	@override String get copySelectionRanges => 'Seçimi kopyala';
	@override String get deleteSelectionRows => 'Seçili satırları sil';
	@override String get deleteSelectionRanges => 'Seçimdeki satırları sil';
	@override String get searchSettings => 'Arama ayarları';
	@override String get searchSettingCaption => 'Ayrıntılı arama kriterleri belirle.';
	@override String get searchLimit => 'Sonuç sayısı';
	@override String get sortOrder => 'Sıralama düzeni';
	@override String get registrationLogs => 'Kayıt günlüğü';
	@override String get registrationLogsCaption => 'Emojileri güncellerken veya silerken günlükler görüntülenecek. Güncelleme veya silme işleminden sonra, yeni bir sayfaya geçildiğinde veya yeniden yüklendiğinde günlükler kaybolacak.';
	@override String get alertEmojisRegisterFailedDescription => 'Emojileri güncelleyemedi veya silemedi. Ayrıntılar için kayıt günlüğünü kontrol edin.';
}

// Path: misskey.customEmojisManager_.logs_
class _TranslationsMisskeyCustomEmojisManagerLogsTrTr extends TranslationsMisskeyCustomEmojisManagerLogsEnUs {
	_TranslationsMisskeyCustomEmojisManagerLogsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get showSuccessLogSwitch => 'Başarı günlüğünü göster';
	@override String get failureLogNothing => 'Hata günlüğü yoktur.';
	@override String get logNothing => 'Günlük kaydı yok.';
}

// Path: misskey.customEmojisManager_.remote_
class _TranslationsMisskeyCustomEmojisManagerRemoteTrTr extends TranslationsMisskeyCustomEmojisManagerRemoteEnUs {
	_TranslationsMisskeyCustomEmojisManagerRemoteTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get selectionRowDetail => 'Seçilen satırın ayrıntıları';
	@override String get importSelectionRows => 'Seçilen satırları içe aktar';
	@override String get importSelectionRangesRows => 'Seçimdeki satırları içe aktar';
	@override String get importEmojisButton => 'Kontrol edilen Emojileri içe aktar';
	@override String get confirmImportEmojisTitle => 'Emoji\'leri İçe Aktar';
	@override String confirmImportEmojisDescription({required Object count}) => 'Uzak sunucudan alınan ${count} Emoji(ler)i içe aktarın. Emoji lisansına dikkat edin. Devam etmek istediğinizden emin misiniz?';
}

// Path: misskey.customEmojisManager_.local_
class _TranslationsMisskeyCustomEmojisManagerLocalTrTr extends TranslationsMisskeyCustomEmojisManagerLocalEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get tabTitleList => 'Kayıtlı emojiler';
	@override String get tabTitleRegister => 'Emoji kaydı';
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalListTrTr list_ = _TranslationsMisskeyCustomEmojisManagerLocalListTrTr._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalRegisterTrTr register_ = _TranslationsMisskeyCustomEmojisManagerLocalRegisterTrTr._(_root);
}

// Path: misskey.remoteLookupErrors_.federationNotAllowed_
class _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedTrTr extends TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bu sunucuyla iletişim kurulamıyor';
	@override String get description => 'Bu sunucu ile iletişim devre dışı bırakılmış olabilir veya bu sunucu engellenmiş olabilir.\nLütfen sunucu yöneticisi ile iletişime geçin.';
}

// Path: misskey.remoteLookupErrors_.uriInvalid_
class _TranslationsMisskeyRemoteLookupErrorsUriInvalidTrTr extends TranslationsMisskeyRemoteLookupErrorsUriInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsUriInvalidTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'URI geçersiz';
	@override String get description => 'Girdiğin URI ile ilgili bir sorun var. Lütfen URI\'da kullanılamayan karakterler girip girmediğini kontrol et.';
}

// Path: misskey.remoteLookupErrors_.requestFailed_
class _TranslationsMisskeyRemoteLookupErrorsRequestFailedTrTr extends TranslationsMisskeyRemoteLookupErrorsRequestFailedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsRequestFailedTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'İstek başarısız oldu';
	@override String get description => 'Bu sunucuyla iletişim kurulamadı. Sunucu kapalı olabilir. Ayrıca, geçersiz veya mevcut olmayan bir URI girmediğinizden emin ol.';
}

// Path: misskey.remoteLookupErrors_.responseInvalid_
class _TranslationsMisskeyRemoteLookupErrorsResponseInvalidTrTr extends TranslationsMisskeyRemoteLookupErrorsResponseInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsResponseInvalidTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yanıt geçersiz';
	@override String get description => 'Bu sunucuyla iletişim kurabildi, ancak elde edilen veriler yanlıştı.';
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectTrTr extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bulunamadı';
	@override String get description => 'İstenen kaynak bulunamadı, lütfen URI\'yi tekrar kontrol edin.';
}

// Path: misskey.captcha_.error_
class _TranslationsMisskeyCaptchaErrorTrTr extends TranslationsMisskeyCaptchaErrorEnUs {
	_TranslationsMisskeyCaptchaErrorTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCaptchaErrorRequestFailedTrTr requestFailed_ = _TranslationsMisskeyCaptchaErrorRequestFailedTrTr._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorVerificationFailedTrTr verificationFailed_ = _TranslationsMisskeyCaptchaErrorVerificationFailedTrTr._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorUnknownTrTr unknown_ = _TranslationsMisskeyCaptchaErrorUnknownTrTr._(_root);
}

// Path: misskey.serverSetupWizard_.use_
class _TranslationsMisskeyServerSetupWizardUseTrTr extends TranslationsMisskeyServerSetupWizardUseEnUs {
	_TranslationsMisskeyServerSetupWizardUseTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get single => 'Tek Kullanıcı Sunucusu';
	@override String get single_description => 'Kendi sunucunuz olarak tek başına kullanın.';
	@override String get single_youCanCreateMultipleAccounts => 'Tek kullanıcı sunucusu olarak çalıştırıldığında bile, gerektiğinde birden fazla hesap oluşturulabilir.';
	@override String get group => 'Grup sunucusu';
	@override String get group_description => 'Diğer güvenilir kullanıcıları birden fazla kullanıcıyla birlikte kullanmaya davet edin.';
	@override String get open => 'Genel sunucu';
	@override String get open_description => 'Herkesin kayıt olmasına izin verin.';
}

// Path: misskey.serverSetupWizard_.scale_
class _TranslationsMisskeyServerSetupWizardScaleTrTr extends TranslationsMisskeyServerSetupWizardScaleEnUs {
	_TranslationsMisskeyServerSetupWizardScaleTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get small => '100\'den az (küçük ölçekli)';
	@override String get medium => '100\'den fazla ve 1000\'den az kullanıcı (orta büyüklükte)';
	@override String get large => '1000\'den fazla (Büyük ölçekli)';
}

// Path: misskey.serverSetupWizard_.donationRequest_
class _TranslationsMisskeyServerSetupWizardDonationRequestTrTr extends TranslationsMisskeyServerSetupWizardDonationRequestEnUs {
	_TranslationsMisskeyServerSetupWizardDonationRequestTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Misskey, gönüllüler tarafından geliştirilen ücretsiz bir yazılımdır.';
	@override String get text2 => 'Bu yazılımı gelecekte de geliştirmeye devam edebilmemiz için desteğini rica ederiz.';
	@override String get text3 => 'Destekçilere özel avantajlar da var!';
}

// Path: misskey.imageEffector_.fxs_
class _TranslationsMisskeyImageEffectorFxsTrTr extends TranslationsMisskeyImageEffectorFxsEnUs {
	_TranslationsMisskeyImageEffectorFxsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get chromaticAberration => 'Renk Sapması';
	@override String get glitch => 'Bozulma';
	@override String get mirror => 'Ayna';
	@override String get invert => 'Renkleri Ters Çevir';
	@override String get grayscale => 'Gri tonlama';
	@override String get blur => 'Bulanıklık';
	@override String get pixelate => 'Mozaik';
	@override String get colorAdjust => 'Renk Düzeltme';
	@override String get colorClamp => 'Renk Sıkıştırma';
	@override String get colorClampAdvanced => 'Renk Sıkıştırma (Gelişmiş)';
	@override String get distort => 'Bozulma';
	@override String get threshold => 'Binarize';
	@override String get zoomLines => 'Doymuş hatlar';
	@override String get stripe => 'Çizgiler';
	@override String get polkadot => 'Nokta deseni';
	@override String get checker => 'Denetleyici';
	@override String get blockNoise => 'Gürültüyü Engelle';
	@override String get tearing => 'Yırtılma';
	@override String get fill => 'Doldur';
}

// Path: misskey.imageEffector_.fxProps_
class _TranslationsMisskeyImageEffectorFxPropsTrTr extends TranslationsMisskeyImageEffectorFxPropsEnUs {
	_TranslationsMisskeyImageEffectorFxPropsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get angle => 'Açı';
	@override String get scale => 'Boyut';
	@override String get size => 'Boyut';
	@override String get radius => 'Yarıçap';
	@override String get samples => 'Örnek sayısı';
	@override String get offset => 'Pozisyon';
	@override String get color => 'Renk';
	@override String get opacity => 'Opaklık';
	@override String get normalize => 'Normalize';
	@override String get amount => 'Miktar';
	@override String get lightness => 'Hafiflet';
	@override String get contrast => 'Kontrast';
	@override String get hue => 'Hue';
	@override String get brightness => 'Parlaklık';
	@override String get saturation => 'Doygunluk';
	@override String get max => 'Maksimum';
	@override String get min => 'Minimum';
	@override String get direction => 'Yön';
	@override String get phase => 'Aşama';
	@override String get frequency => 'Sıklık';
	@override String get strength => 'Güç';
	@override String get glitchChannelShift => 'Kanal değişimi';
	@override String get seed => 'Tohum değeri';
	@override String get redComponent => 'Kırmızı bileşen';
	@override String get greenComponent => 'Yeşil bileşen';
	@override String get blueComponent => 'Mavi bileşen';
	@override String get threshold => 'Eşik';
	@override String get centerX => 'Merkez X';
	@override String get centerY => 'Merkez Y';
	@override String get zoomLinesMaskSize => 'Merkez çapı';
	@override String get circle => 'Dairesel';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _TranslationsMisskeyInitialTutorialPostNoteVisibilityTrTr extends TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteVisibilityTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get description => 'Notunu kimlerin görüntüleyebileceğini sınırlayabilirsin.';
	@override String get public => 'Notunuz tüm kullanıcılar tarafından görülebilir olacaktır.';
	@override String get home => 'Yalnızca Ana zaman akışında herkese açık. Profilinizi ziyaret edenler, takipçilerin ve yeniden notlar aracılığıyla bunu görebilirler.';
	@override String get followers => 'Sadece takipçiler tarafından görülebilir. Sadece takipçiler görebilir, başkaları göremez ve başkaları tarafından yeniden not edilemez.';
	@override String get direct => 'Yalnızca belirli kullanıcılar tarafından görülebilir ve alıcıya bildirim gönderilir. Doğrudan mesajlaşma yerine alternatif olarak kullanılabilir.';
	@override String get doNotSendConfidencialOnDirect1 => 'Hassas bilgileri gönderirken dikkatli olun!';
	@override String get doNotSendConfidencialOnDirect2 => 'Sunucu yöneticileri yazdıklarınızı görebilir. Güvenilir olmayan sunuculardaki kullanıcılara doğrudan not gönderirken hassas bilgilere dikkat edin.';
	@override String get localOnly => 'Bu bayrakla yayınlamak, notu diğer sunuculara aktarmaz. Diğer sunuculardaki kullanıcılar, yukarıdaki görüntüleme ayarlarından bağımsız olarak bu notları doğrudan görüntüleyemezler.';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _TranslationsMisskeyInitialTutorialPostNoteCwTrTr extends TranslationsMisskeyInitialTutorialPostNoteCwEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'İçerik Uyarısı';
	@override String get description => 'Gövde yerine, “Yorumlar” alanına yazılan içerik görüntülenecek. “Devamını oku” düğmesine basıldığında gövde görüntülenecek.';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteTrTr exampleNote_ = _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteTrTr._(_root);
	@override String get useCases => 'Bu, sunucu kurallarına uyulurken, gerekli notlar için veya spoiler veya hassas metinlerin kendi kendine kısıtlanması için kullanılır.';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteTrTr extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get note => 'Oops, natto kapağını açarken berbat ettim...';
}

// Path: misskey.achievements_.types_.notes1_
class _TranslationsMisskeyAchievementsTypesNotes1TrTr extends TranslationsMisskeyAchievementsTypesNotes1EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'msky\'ımı kuruyorum';
	@override String get description => 'İlk notunuzu yayınlayın';
	@override String get flavor => 'Misskey ile iyi vakit geçirin!';
}

// Path: misskey.achievements_.types_.notes10_
class _TranslationsMisskeyAchievementsTypesNotes10TrTr extends TranslationsMisskeyAchievementsTypesNotes10EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bazı notlar';
	@override String get description => '10 not gönder';
}

// Path: misskey.achievements_.types_.notes100_
class _TranslationsMisskeyAchievementsTypesNotes100TrTr extends TranslationsMisskeyAchievementsTypesNotes100EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Çok sayıda not';
	@override String get description => '100 notu yayınla';
}

// Path: misskey.achievements_.types_.notes500_
class _TranslationsMisskeyAchievementsTypesNotes500TrTr extends TranslationsMisskeyAchievementsTypesNotes500EnUs {
	_TranslationsMisskeyAchievementsTypesNotes500TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notlarla kaplı';
	@override String get description => '500 notu yayınla';
}

// Path: misskey.achievements_.types_.notes1000_
class _TranslationsMisskeyAchievementsTypesNotes1000TrTr extends TranslationsMisskeyAchievementsTypesNotes1000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1000TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notlardan oluşan bir dağ';
	@override String get description => '1.000 not yayınla';
}

// Path: misskey.achievements_.types_.notes5000_
class _TranslationsMisskeyAchievementsTypesNotes5000TrTr extends TranslationsMisskeyAchievementsTypesNotes5000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes5000TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Taşan notlar';
	@override String get description => '5.000 not yayınla';
}

// Path: misskey.achievements_.types_.notes10000_
class _TranslationsMisskeyAchievementsTypesNotes10000TrTr extends TranslationsMisskeyAchievementsTypesNotes10000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10000TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Süper not';
	@override String get description => '10.000 not yayınla';
}

// Path: misskey.achievements_.types_.notes20000_
class _TranslationsMisskeyAchievementsTypesNotes20000TrTr extends TranslationsMisskeyAchievementsTypesNotes20000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes20000TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Daha... fazla... not... lazım...';
	@override String get description => '20.000 not yayınla';
}

// Path: misskey.achievements_.types_.notes30000_
class _TranslationsMisskeyAchievementsTypesNotes30000TrTr extends TranslationsMisskeyAchievementsTypesNotes30000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes30000TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notlar notlar notlar!';
	@override String get description => '30.000 not yayınla';
}

// Path: misskey.achievements_.types_.notes40000_
class _TranslationsMisskeyAchievementsTypesNotes40000TrTr extends TranslationsMisskeyAchievementsTypesNotes40000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes40000TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Not fabrikası';
	@override String get description => '40.000 not yayınla';
}

// Path: misskey.achievements_.types_.notes50000_
class _TranslationsMisskeyAchievementsTypesNotes50000TrTr extends TranslationsMisskeyAchievementsTypesNotes50000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes50000TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notların gezegeni';
	@override String get description => '50.000 not yayınla';
}

// Path: misskey.achievements_.types_.notes60000_
class _TranslationsMisskeyAchievementsTypesNotes60000TrTr extends TranslationsMisskeyAchievementsTypesNotes60000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes60000TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Not kuasar';
	@override String get description => '60.000 not yayınla';
}

// Path: misskey.achievements_.types_.notes70000_
class _TranslationsMisskeyAchievementsTypesNotes70000TrTr extends TranslationsMisskeyAchievementsTypesNotes70000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes70000TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Not kara deliği';
	@override String get description => '70.000 not yayınla';
}

// Path: misskey.achievements_.types_.notes80000_
class _TranslationsMisskeyAchievementsTypesNotes80000TrTr extends TranslationsMisskeyAchievementsTypesNotes80000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes80000TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Not galaksisi';
	@override String get description => '80.000 not yayınla';
}

// Path: misskey.achievements_.types_.notes90000_
class _TranslationsMisskeyAchievementsTypesNotes90000TrTr extends TranslationsMisskeyAchievementsTypesNotes90000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes90000TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Not evreni';
	@override String get description => '90.000 not yayınla';
}

// Path: misskey.achievements_.types_.notes100000_
class _TranslationsMisskeyAchievementsTypesNotes100000TrTr extends TranslationsMisskeyAchievementsTypesNotes100000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100000TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'TÜM NOTLARINIZ BİZE AİTTİR';
	@override String get description => '100.000 yayınlanmış not';
	@override String get flavor => 'Gerçekten söyleyecek çok şeyin var.';
}

// Path: misskey.achievements_.types_.login3_
class _TranslationsMisskeyAchievementsTypesLogin3TrTr extends TranslationsMisskeyAchievementsTypesLogin3EnUs {
	_TranslationsMisskeyAchievementsTypesLogin3TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Başlangıç I';
	@override String get description => 'Log in for a total of 3 days';
	@override String get flavor => 'Toplam 3 gün boyunca oturum açın';
}

// Path: misskey.achievements_.types_.login7_
class _TranslationsMisskeyAchievementsTypesLogin7TrTr extends TranslationsMisskeyAchievementsTypesLogin7EnUs {
	_TranslationsMisskeyAchievementsTypesLogin7TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Başlangıç II';
	@override String get description => 'Toplam 7 gün boyunca oturum açın';
	@override String get flavor => 'Henüz işlerin nasıl yürüdüğünü anladığını hissediyor musun?';
}

// Path: misskey.achievements_.types_.login15_
class _TranslationsMisskeyAchievementsTypesLogin15TrTr extends TranslationsMisskeyAchievementsTypesLogin15EnUs {
	_TranslationsMisskeyAchievementsTypesLogin15TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Başlangıç III';
	@override String get description => 'Toplam 15 gün boyunca oturum açın';
}

// Path: misskey.achievements_.types_.login30_
class _TranslationsMisskeyAchievementsTypesLogin30TrTr extends TranslationsMisskeyAchievementsTypesLogin30EnUs {
	_TranslationsMisskeyAchievementsTypesLogin30TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist I';
	@override String get description => 'Toplam 30 gün boyunca oturum açın';
}

// Path: misskey.achievements_.types_.login60_
class _TranslationsMisskeyAchievementsTypesLogin60TrTr extends TranslationsMisskeyAchievementsTypesLogin60EnUs {
	_TranslationsMisskeyAchievementsTypesLogin60TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist II';
	@override String get description => 'Toplam 60 gün boyunca oturum açın';
}

// Path: misskey.achievements_.types_.login100_
class _TranslationsMisskeyAchievementsTypesLogin100TrTr extends TranslationsMisskeyAchievementsTypesLogin100EnUs {
	_TranslationsMisskeyAchievementsTypesLogin100TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist III';
	@override String get description => 'Toplam 100 gün boyunca oturum açın';
	@override String get flavor => 'Şiddetli Misskist';
}

// Path: misskey.achievements_.types_.login200_
class _TranslationsMisskeyAchievementsTypesLogin200TrTr extends TranslationsMisskeyAchievementsTypesLogin200EnUs {
	_TranslationsMisskeyAchievementsTypesLogin200TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Düzenli I';
	@override String get description => 'Toplam 200 gün boyunca oturum açın.';
}

// Path: misskey.achievements_.types_.login300_
class _TranslationsMisskeyAchievementsTypesLogin300TrTr extends TranslationsMisskeyAchievementsTypesLogin300EnUs {
	_TranslationsMisskeyAchievementsTypesLogin300TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Düzenli II';
	@override String get description => 'Toplam 300 gün boyunca oturum açın';
}

// Path: misskey.achievements_.types_.login400_
class _TranslationsMisskeyAchievementsTypesLogin400TrTr extends TranslationsMisskeyAchievementsTypesLogin400EnUs {
	_TranslationsMisskeyAchievementsTypesLogin400TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Düzenli III';
	@override String get description => 'Toplam 400 gün boyunca oturum açın';
}

// Path: misskey.achievements_.types_.login500_
class _TranslationsMisskeyAchievementsTypesLogin500TrTr extends TranslationsMisskeyAchievementsTypesLogin500EnUs {
	_TranslationsMisskeyAchievementsTypesLogin500TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uzman I';
	@override String get description => 'Toplam 500 gün boyunca oturum açın';
	@override String get flavor => 'Arkadaşlar, sık sık not almayı sevdiğim söylenir.';
}

// Path: misskey.achievements_.types_.login600_
class _TranslationsMisskeyAchievementsTypesLogin600TrTr extends TranslationsMisskeyAchievementsTypesLogin600EnUs {
	_TranslationsMisskeyAchievementsTypesLogin600TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uzman II';
	@override String get description => 'Toplam 600 gün boyunca oturum açın';
}

// Path: misskey.achievements_.types_.login700_
class _TranslationsMisskeyAchievementsTypesLogin700TrTr extends TranslationsMisskeyAchievementsTypesLogin700EnUs {
	_TranslationsMisskeyAchievementsTypesLogin700TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uzman III';
	@override String get description => 'Toplam 700 gün boyunca oturum açın';
}

// Path: misskey.achievements_.types_.login800_
class _TranslationsMisskeyAchievementsTypesLogin800TrTr extends TranslationsMisskeyAchievementsTypesLogin800EnUs {
	_TranslationsMisskeyAchievementsTypesLogin800TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notların Ustası I';
	@override String get description => 'Toplam 800 gün boyunca oturum açın';
}

// Path: misskey.achievements_.types_.login900_
class _TranslationsMisskeyAchievementsTypesLogin900TrTr extends TranslationsMisskeyAchievementsTypesLogin900EnUs {
	_TranslationsMisskeyAchievementsTypesLogin900TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notların Ustası II';
	@override String get description => 'Toplam 900 gün boyunca oturum açın';
}

// Path: misskey.achievements_.types_.login1000_
class _TranslationsMisskeyAchievementsTypesLogin1000TrTr extends TranslationsMisskeyAchievementsTypesLogin1000EnUs {
	_TranslationsMisskeyAchievementsTypesLogin1000TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notların Ustası III';
	@override String get description => 'Toplam 1.000 gün boyunca oturum açın.';
	@override String get flavor => 'Misskey\'i kullandığınız için teşekkür ederiz!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _TranslationsMisskeyAchievementsTypesNoteClipped1TrTr extends TranslationsMisskeyAchievementsTypesNoteClipped1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteClipped1TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kesinlikle... kesmeliyim...';
	@override String get description => 'İlk notunu ekle';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _TranslationsMisskeyAchievementsTypesNoteFavorited1TrTr extends TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteFavorited1TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yıldız gözlemcisi';
	@override String get description => 'İlk notunu favorilerine ekle';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _TranslationsMisskeyAchievementsTypesMyNoteFavorited1TrTr extends TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesMyNoteFavorited1TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yıldızları Arayış';
	@override String get description => 'Başka birinin notlarınızdan birini favorilerine eklemesini sağlayın';
}

// Path: misskey.achievements_.types_.profileFilled_
class _TranslationsMisskeyAchievementsTypesProfileFilledTrTr extends TranslationsMisskeyAchievementsTypesProfileFilledEnUs {
	_TranslationsMisskeyAchievementsTypesProfileFilledTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'İyi hazırlanmış';
	@override String get description => 'Profilini oluştur';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _TranslationsMisskeyAchievementsTypesMarkedAsCatTrTr extends TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_TranslationsMisskeyAchievementsTypesMarkedAsCatTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ben bir kediyim.';
	@override String get description => 'Hesabını kedi olarak işaretle';
	@override String get flavor => 'Sana daha sonra bir isim vereceğim.';
}

// Path: misskey.achievements_.types_.following1_
class _TranslationsMisskeyAchievementsTypesFollowing1TrTr extends TranslationsMisskeyAchievementsTypesFollowing1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing1TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'İlk kullanıcınızı takip edin';
	@override String get description => 'Bir kullanıcıyı takip et';
}

// Path: misskey.achievements_.types_.following10_
class _TranslationsMisskeyAchievementsTypesFollowing10TrTr extends TranslationsMisskeyAchievementsTypesFollowing10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing10TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Devam et... devam et...';
	@override String get description => '10 kullanıcıyı takip et';
}

// Path: misskey.achievements_.types_.following50_
class _TranslationsMisskeyAchievementsTypesFollowing50TrTr extends TranslationsMisskeyAchievementsTypesFollowing50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing50TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bir sürü arkadaş';
	@override String get description => '50 hesabı takip et';
}

// Path: misskey.achievements_.types_.following100_
class _TranslationsMisskeyAchievementsTypesFollowing100TrTr extends TranslationsMisskeyAchievementsTypesFollowing100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing100TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => '100 Arkadaş';
	@override String get description => '100 hesabı takip et';
}

// Path: misskey.achievements_.types_.following300_
class _TranslationsMisskeyAchievementsTypesFollowing300TrTr extends TranslationsMisskeyAchievementsTypesFollowing300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing300TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Arkadaş yüklemesi';
	@override String get description => '300 hesabı takip et';
}

// Path: misskey.achievements_.types_.followers1_
class _TranslationsMisskeyAchievementsTypesFollowers1TrTr extends TranslationsMisskeyAchievementsTypesFollowers1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'İlk takipçi';
	@override String get description => '1 takipçi kazanın';
}

// Path: misskey.achievements_.types_.followers10_
class _TranslationsMisskeyAchievementsTypesFollowers10TrTr extends TranslationsMisskeyAchievementsTypesFollowers10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers10TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beni takip edin!';
	@override String get description => '10 takipçi kazanın';
}

// Path: misskey.achievements_.types_.followers50_
class _TranslationsMisskeyAchievementsTypesFollowers50TrTr extends TranslationsMisskeyAchievementsTypesFollowers50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers50TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalabalıklar halinde gelmek';
	@override String get description => '50 takipçi kazanın';
}

// Path: misskey.achievements_.types_.followers100_
class _TranslationsMisskeyAchievementsTypesFollowers100TrTr extends TranslationsMisskeyAchievementsTypesFollowers100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers100TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Popüler';
	@override String get description => '100 takipçi kazanın';
}

// Path: misskey.achievements_.types_.followers300_
class _TranslationsMisskeyAchievementsTypesFollowers300TrTr extends TranslationsMisskeyAchievementsTypesFollowers300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers300TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lütfen tek sıra halinde dizilin.';
	@override String get description => '300 takipçi kazanın';
}

// Path: misskey.achievements_.types_.followers500_
class _TranslationsMisskeyAchievementsTypesFollowers500TrTr extends TranslationsMisskeyAchievementsTypesFollowers500EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers500TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Radyo Kulesi';
	@override String get description => '500 takipçi kazanın';
}

// Path: misskey.achievements_.types_.followers1000_
class _TranslationsMisskeyAchievementsTypesFollowers1000TrTr extends TranslationsMisskeyAchievementsTypesFollowers1000EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1000TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Etkileyici';
	@override String get description => '1.000 takipçi kazanın';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _TranslationsMisskeyAchievementsTypesCollectAchievements30TrTr extends TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_TranslationsMisskeyAchievementsTypesCollectAchievements30TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Başarı Koleksiyoncusu';
	@override String get description => '30 başarı kazan';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _TranslationsMisskeyAchievementsTypesViewAchievements3minTrTr extends TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_TranslationsMisskeyAchievementsTypesViewAchievements3minTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beğeniler Başarılar';
	@override String get description => 'Likes Achievements';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _TranslationsMisskeyAchievementsTypesILoveMisskeyTrTr extends TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_TranslationsMisskeyAchievementsTypesILoveMisskeyTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskey\'i seviyorum';
	@override String get description => '“I ❤ #Misskey” yazısını paylaş';
	@override String get flavor => 'Misskey geliştirme ekibi desteğin için çok teşekkür eder!';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _TranslationsMisskeyAchievementsTypesFoundTreasureTrTr extends TranslationsMisskeyAchievementsTypesFoundTreasureEnUs {
	_TranslationsMisskeyAchievementsTypesFoundTreasureTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hazine Avı';
	@override String get description => 'Gizli hazineyi buldunuz.';
}

// Path: misskey.achievements_.types_.client30min_
class _TranslationsMisskeyAchievementsTypesClient30minTrTr extends TranslationsMisskeyAchievementsTypesClient30minEnUs {
	_TranslationsMisskeyAchievementsTypesClient30minTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kısa mola';
	@override String get description => 'Misskey\'i en az 30 dakika açık tutun.';
}

// Path: misskey.achievements_.types_.client60min_
class _TranslationsMisskeyAchievementsTypesClient60minTrTr extends TranslationsMisskeyAchievementsTypesClient60minEnUs {
	_TranslationsMisskeyAchievementsTypesClient60minTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskey\'de “Miss” yok';
	@override String get description => 'Misskey\'i en az 60 dakika açık tutun.';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minTrTr extends TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nevermind';
	@override String get description => 'Boş ver';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _TranslationsMisskeyAchievementsTypesPostedAtLateNightTrTr extends TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAtLateNightTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gececi';
	@override String get description => 'Gece geç saatlerde bir not yayınlayın';
	@override String get flavor => 'Yatma vakti geldi.';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _TranslationsMisskeyAchievementsTypesPostedAt0min0secTrTr extends TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAt0min0secTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Konuşan Saat';
	@override String get description => '00:00\'da bir not yayınlayın.';
	@override String get flavor => 'Tık tık tık, güm!';
}

// Path: misskey.achievements_.types_.selfQuote_
class _TranslationsMisskeyAchievementsTypesSelfQuoteTrTr extends TranslationsMisskeyAchievementsTypesSelfQuoteEnUs {
	_TranslationsMisskeyAchievementsTypesSelfQuoteTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Öz Referans';
	@override String get description => 'Kendi notunuzu alıntı yapın';
}

// Path: misskey.achievements_.types_.htl20npm_
class _TranslationsMisskeyAchievementsTypesHtl20npmTrTr extends TranslationsMisskeyAchievementsTypesHtl20npmEnUs {
	_TranslationsMisskeyAchievementsTypesHtl20npmTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Akış Panosu';
	@override String get description => 'Ev zaman çizelgenizin hızı 20 npm\'yi (dakika başına not sayısı) aşıyor mu?';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _TranslationsMisskeyAchievementsTypesViewInstanceChartTrTr extends TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_TranslationsMisskeyAchievementsTypesViewInstanceChartTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analist';
	@override String get description => 'Sunucunun grafiklerini görüntüle';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadTrTr extends TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Merhaba, dünya!';
	@override String get description => 'Scratchpad\'de “hello world” yazdırın.';
}

// Path: misskey.achievements_.types_.open3windows_
class _TranslationsMisskeyAchievementsTypesOpen3windowsTrTr extends TranslationsMisskeyAchievementsTypesOpen3windowsEnUs {
	_TranslationsMisskeyAchievementsTypesOpen3windowsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Çoklu Pencere';
	@override String get description => 'Aynı anda en az 3 pencere açık olsun.';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceTrTr extends TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Döngüsel Referans';
	@override String get description => 'Drive\'da yinelemeli olarak iç içe geçmiş bir klasör oluşturmaya çalış.';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _TranslationsMisskeyAchievementsTypesReactWithoutReadTrTr extends TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_TranslationsMisskeyAchievementsTypesReactWithoutReadTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cidden okudun mu?';
	@override String get description => '100 karakterden uzun bir notun yayınlanmasından itibaren 3 saniye içinde yanıt verin.';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _TranslationsMisskeyAchievementsTypesClickedClickHereTrTr extends TranslationsMisskeyAchievementsTypesClickedClickHereEnUs {
	_TranslationsMisskeyAchievementsTypesClickedClickHereTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Buraya tıklayın';
	@override String get description => 'Buraya tıkladınız';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _TranslationsMisskeyAchievementsTypesJustPlainLuckyTrTr extends TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_TranslationsMisskeyAchievementsTypesJustPlainLuckyTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sadece Şanslı';
	@override String get description => 'Her 10 saniyede bir %0,005 olasılıkla elde edilme şansı vardır.';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _TranslationsMisskeyAchievementsTypesSetNameToSyuiloTrTr extends TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_TranslationsMisskeyAchievementsTypesSetNameToSyuiloTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tanrı Kompleksi';
	@override String get description => 'Adınızı “syuilo” olarak ayarlayın.';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1TrTr extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Birinci Yıl Dönümü';
	@override String get description => 'Hesabınızın oluşturulmasından bu yana bir yıl geçti.';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2TrTr extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'İki Yıllık Yıldönümü';
	@override String get description => 'Hesabınızın oluşturulmasından bu yana iki yıl geçti.';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3TrTr extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3TrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Üçüncü Yıl Dönümü';
	@override String get description => 'Hesabınızın oluşturulmasından bu yana üç yıl geçti.';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayTrTr extends TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Doğum günün kutlu olsun';
	@override String get description => 'Doğum gününüzde giriş yapın';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayTrTr extends TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yeni yılınız kutlu olsun!';
	@override String get description => 'Yılın ilk gününde oturum açıldı';
	@override String get flavor => 'Bu sunucuda bir başka harika yıla';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _TranslationsMisskeyAchievementsTypesCookieClickedTrTr extends TranslationsMisskeyAchievementsTypesCookieClickedEnUs {
	_TranslationsMisskeyAchievementsTypesCookieClickedTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Çerezleri tıklayarak oynanan bir oyun';
	@override String get description => 'Çerezi tıkladı';
	@override String get flavor => 'Wait, are you on the correct website?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _TranslationsMisskeyAchievementsTypesBrainDiverTrTr extends TranslationsMisskeyAchievementsTypesBrainDiverEnUs {
	_TranslationsMisskeyAchievementsTypesBrainDiverTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Brain Diver bağlantısını paylaşın';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonTrTr extends TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Test taşması';
	@override String get description => 'Bildirim testini çok kısa bir süre içinde tekrar tekrar tetikle.';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _TranslationsMisskeyAchievementsTypesTutorialCompletedTrTr extends TranslationsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_TranslationsMisskeyAchievementsTypesTutorialCompletedTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskey Temel Kurs Diploması';
	@override String get description => 'Eğitim tamamlandı';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadTrTr extends TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => 'Kabarcık oyunundaki en büyük nesne';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadTrTr extends TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Çift🤯';
	@override String get description => 'Aynı anda balon oyunundaki en büyük iki nesne';
	@override String get flavor => 'Öğle yemeği kutunu şöyle doldurabilirsin 🤯 🤯 biraz.';
}

// Path: misskey.pages_.blocks.note_
class _TranslationsMisskeyPagesBlocksNoteTrTr extends TranslationsMisskeyPagesBlocksNoteEnUs {
	_TranslationsMisskeyPagesBlocksNoteTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get id => 'Not Kimliği';
	@override String get idDescription => 'Alternatif olarak notun URL buraya yapıştırabilirsin.';
	@override String get detailed => 'Ayrıntılı görünüm';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeTrTr extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get mail => 'E-Posta';
	@override String get webhook => 'Webhook';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsTrTr captions_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsTrTr._(_root);
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsTrTr extends TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Geçersiz parametreler';
	@override String get description => 'Harici bir siteden veri yüklemek için yeterli bilgi yok. Lütfen girdiğin URL\'yi kontrol et.';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedTrTr extends TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bu harici kaynak desteklenmemektedir.';
	@override String get description => 'Bu harici kaynağın türü desteklenmemektedir. Lütfen site yöneticisiyle iletişime geç.';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchTrTr extends TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veriler alınamadı';
	@override String get fetchErrorDescription => 'Harici siteyle iletişim sırasında bir hata oluştu. Tekrar denemen sorunu çözmezse, lütfen site yöneticisine başvur.';
	@override String get parseErrorDescription => 'Harici siteden yüklenen veriler işlenirken bir hata oluştu. Lütfen site yöneticisiyle iletişime geçin.';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedTrTr extends TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veri doğrulama başarısız oldu';
	@override String get description => 'Alınan verilerin bütünlüğünü doğrularken bir hata oluştu. Güvenlik önlemi olarak, kurulum devam edemez. Lütfen site yöneticisiyle iletişime geçin.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedTrTr extends TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AiScript Hatası';
	@override String get description => 'İstenen veriler başarıyla alındı, ancak AiScript ayrıştırma sırasında bir hata oluştu. Lütfen eklenti yazarına başvurun. Hata ayrıntıları Javascript konsolunda görüntülenebilir.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedTrTr extends TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eklenti kurulumu başarısız oldu';
	@override String get description => 'Eklenti yükleme sırasında bir sorun oluştu. Lütfen tekrar dene. Hata ayrıntıları Javascript konsolunda görüntülenebilir.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedTrTr extends TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema ayrıştırma başarısız oldu';
	@override String get description => 'İstenen veriler başarıyla alındı, ancak tema ayrıştırma sırasında bir hata oluştu. Lütfen tema yazarıyla iletişime geçin. Hata ayrıntıları Javascript konsolunda görüntülenebilir.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedTrTr extends TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema yüklenemedi';
	@override String get description => 'Tema yükleme sırasında bir sorun oluştu. Lütfen tekrar dene. Hata ayrıntıları Javascript konsolunda görüntülenebilir.';
}

// Path: misskey.customEmojisManager_.local_.list_
class _TranslationsMisskeyCustomEmojisManagerLocalListTrTr extends TranslationsMisskeyCustomEmojisManagerLocalListEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalListTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get emojisNothing => 'Kayıtlı Emoji yok.';
	@override String get markAsDeleteTargetRows => 'Silinecek hedef olarak seçilen satırları işaretle';
	@override String get markAsDeleteTargetRanges => 'Seçimdeki satırları silinecek hedef olarak işaretle';
	@override String get alertUpdateEmojisNothingDescription => 'Güncellenmiş Emoji yok.';
	@override String get alertDeleteEmojisNothingDescription => 'Silinecek Emoji yok.';
	@override String get confirmMovePage => 'Sayfaları taşımak ister misin?';
	@override String get confirmChangeView => 'Görüntüleme şeklini değiştirmek ister misn?';
	@override String confirmUpdateEmojisDescription({required Object count}) => '${count} Emoji\'yi güncelle. Devam etmek istediğinden emin misin?';
	@override String confirmDeleteEmojisDescription({required Object count}) => 'İşaretli ${count} Emoji(leri) silin. Devam etmek istediğinden emin misin?';
	@override String get confirmResetDescription => 'Şimdiye kadar yapılan tüm değişiklikler geri alınacaktır.';
	@override String get confirmMovePageDesciption => 'Bu sayfadaki Emojilerde değişiklikler yapılmış.\nSayfayı kaydetmeden terk ederseniz, bu sayfada yapılan tüm değişiklikler silinecek.';
	@override String get dialogSelectRoleTitle => 'Emojilerde rol setine göre arama yapın';
}

// Path: misskey.customEmojisManager_.local_.register_
class _TranslationsMisskeyCustomEmojisManagerLocalRegisterTrTr extends TranslationsMisskeyCustomEmojisManagerLocalRegisterEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalRegisterTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get uploadSettingTitle => 'Yükleme ayarları';
	@override String get uploadSettingDescription => 'Bu ekranda, Emoji yüklerken davranışı yapılandırabilirsin.';
	@override String get directoryToCategoryLabel => '“Kategori” alanına dizin adını girin.';
	@override String get directoryToCategoryCaption => 'Bir dizini sürükleyip bıraktığınızda, “kategori” alanına dizin adını girin.';
	@override String confirmRegisterEmojisDescription({required Object count}) => 'Listeden Emojileri yeni özel Emojiler olarak kaydet. Devam etmek istediğinden emin misin? (Aşırı yüklemeyi önlemek için, tek bir işlemde yalnızca ${count} Emoji kaydedilebilir)';
	@override String get confirmClearEmojisDescription => 'Düzenlemeleri sil ve listeden Emojileri temizle. Devam etmek istediğinden emin misiniz?';
	@override String confirmUploadEmojisDescription({required Object count}) => 'Drive\'a sürüklenip bırakılan ${count} dosyayı yükle. Devam etmek istediğinden emin misin?';
}

// Path: misskey.captcha_.error_.requestFailed_
class _TranslationsMisskeyCaptchaErrorRequestFailedTrTr extends TranslationsMisskeyCaptchaErrorRequestFailedEnUs {
	_TranslationsMisskeyCaptchaErrorRequestFailedTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'CAPTCHA isteği başarısız oldu';
	@override String get text => 'Lütfen bir süre sonra tekrar çalıştırın veya ayarları tekrar kontrol edin.';
}

// Path: misskey.captcha_.error_.verificationFailed_
class _TranslationsMisskeyCaptchaErrorVerificationFailedTrTr extends TranslationsMisskeyCaptchaErrorVerificationFailedEnUs {
	_TranslationsMisskeyCaptchaErrorVerificationFailedTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'CAPTCHA doğrulaması başarısız oldu';
	@override String get text => 'Ayarların doğru olup olmadığını lütfen tekrar kontrol edin.';
}

// Path: misskey.captcha_.error_.unknown_
class _TranslationsMisskeyCaptchaErrorUnknownTrTr extends TranslationsMisskeyCaptchaErrorUnknownEnUs {
	_TranslationsMisskeyCaptchaErrorUnknownTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'CAPTCHA hatası';
	@override String get text => 'Beklenmedik bir hata oluştu.';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteTrTr extends TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get cw => 'Bu kesinlikle sizi acıktıracak!';
	@override String get note => 'Az önce çikolata kaplı bir donut yedim 🍩😋';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_.captions_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsTrTr extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Raporları aldığınızda, E-Postayı moderatörlerin e-posta adreslerine gönderin.';
	@override String get webhook => 'Raporları aldığınızda veya çözdüğünüzde Sistem Webhook\'una bir bildirim gönderin.';
}
