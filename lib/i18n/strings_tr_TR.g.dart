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
class TranslationsTrTr extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTrTr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.trTr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <tr-TR>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsTrTr _root = this; // ignore: unused_field

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
	@override String get headlineMisskey => 'Notlarla bağlanmış bir ağ';
	@override String get introMisskey => 'Açık kaynaklı bir dağıtılmış mikroblog hizmeti olan Misskey\'e hoş geldiniz.\nMisskey, neler olup bittiğini paylaşmak ve herkese sizden bahsetmek için "notlar" oluşturmanıza olanak tanıyan, açık kaynaklı, dağıtılmış bir mikroblog hizmetidir.\nHerkesin notlarına kendi tepkilerinizi hızlıca eklemek için "Tepkiler" özelliğini de kullanabilirsiniz👍.\nYeni bir dünyayı keşfedin🚀.';
	@override String poweredByMisskeyDescription({required Object name}) => 'name}Açık kaynak bir platform\n<b>Misskey</b>Dünya\'nın en sunucularında biri。 ${name}';
	@override String monthAndDay({required Object month, required Object day}) => '${month}Ay ${day}Gün';
	@override String get search => 'Arama';
	@override String get notifications => 'Bildirim';
	@override String get username => 'Kullanıcı Adı';
	@override String get password => 'Şifre';
	@override String get forgotPassword => 'şifremi unuttum';
	@override String get fetchingAsApObject => '從聯邦宇宙取得中...';
	@override String get ok => 'TAMAM';
	@override String get gotIt => 'Anladım';
	@override String get cancel => 'İptal';
	@override String get noThankYou => 'Hayır, teşekkürler';
	@override String get enterUsername => 'Kullanıcı adınızı giriniz';
	@override String renotedBy({required Object user}) => '${user} tarafından Renotelandı';
	@override String get noNotes => 'Notlar mevcut değil.';
	@override String get noNotifications => 'Bildirim bulunmuyor';
	@override String get instance => 'Sunucu';
	@override String get settings => 'Ayarlar';
	@override String get notificationSettings => 'Bildirim Ayarları';
	@override String get basicSettings => 'Temel Ayarlar';
	@override String get otherSettings => 'Diğer Ayarlar';
	@override String get openInWindow => 'Bir pencere ile aç';
	@override String get profile => 'Profil';
	@override String get timeline => 'Zaman çizelgesi';
	@override String get noAccountDescription => 'Bu kullanıcı henüz biyografisini yazmadı';
	@override String get login => 'Giriş Yap ';
	@override String get loggingIn => 'Oturum aç';
	@override String get logout => 'Çıkış Yap';
	@override String get signup => 'Kayıt Ol';
	@override String get uploading => 'Yükleniyor';
	@override String get save => 'Kaydet';
	@override String get users => 'Kullanıcı';
	@override String get addUser => 'Kullanıcı Ekle';
	@override String get favorite => 'Favoriler';
	@override String get favorites => 'Favoriler';
	@override String get unfavorite => 'Favorilerden Kaldır';
	@override String get favorited => 'Favorilerime eklendi.';
	@override String get alreadyFavorited => 'Zaten favorilerinizde kayıtlı.';
	@override String get cantFavorite => 'Favorilere kayıt yapılamadı';
	@override String get pin => 'Sabitlenmiş';
	@override String get unpin => 'Sabitlemeyi kaldır';
	@override String get copyContent => 'İçeriği kopyala';
	@override String get copyLink => 'Bağlantıyı Kopyala';
	@override String get copyLinkRenote => 'Turkish';
	@override String get delete => 'Sil';
	@override String get deleteAndEdit => 'Sil ve yeniden düzenle';
	@override String get deleteAndEditConfirm => 'Bu notu silip yeniden düzenlemek istiyor musunuz? Bu nota ilişkin tüm Tepkiler, Yeniden Notlar ve Yanıtlar da silinecektir.';
	@override String get addToList => 'Listeye ekle';
	@override String get addToAntenna => 'Antene ekle';
	@override String get sendMessage => 'Mesaj Gönder';
	@override String get copyRSS => 'RSSKopyala';
	@override String get copyUsername => 'Kullanıcı Adını Kopyala';
	@override String get copyUserId => 'KullanıcıyıKopyala';
	@override String get copyNoteId => 'Kimlik notunu kopyala';
	@override String get copyFileId => 'Dosya ID\'sini kopyala';
	@override String get copyFolderId => 'Klasör ID\'sini kopyala';
	@override String get copyProfileUrl => 'Profil URL\'sini kopyala';
	@override String get searchUser => 'Kullanıcıları ara';
	@override String get reply => 'yanıt';
	@override String get loadMore => 'Devamını yükle';
	@override String get showMore => 'Devamını yükle';
	@override String get showLess => 'Kapat';
	@override String get youGotNewFollower => 'seni takip etti';
	@override String get receiveFollowRequest => 'Takip isteği alındı';
	@override String get followRequestAccepted => 'Takip isteği kabul edildi';
	@override String get mention => 'Bahset';
	@override String get mentions => 'Bahsetmeler';
	@override String get directNotes => 'Kişisel mesajlar';
	@override String get importAndExport => 'İçeri/Dışarı aktar';
	@override String get import => 'İçeri aktar';
	@override String get export => 'Dışa aktar';
	@override String get files => 'Dosyalar';
	@override String get download => 'İndir';
	@override String driveFileDeleteConfirm({required Object name}) => '"${name}" dosyası silinsin mi? Dosya kullanıldığı tüm notlardan kaybolacaktır.';
	@override String unfollowConfirm({required Object name}) => '${name} takipten çıkarılsın mı?';
	@override String get exportRequested => 'Dışa aktarım talep ettiniz. Bu biraz zaman alabilir. İşlem bitince Sürücünüze eklenecektir.';
	@override String get importRequested => 'Dışa aktarım talep ettiniz. Bu işlem biraz zaman alabilir.';
	@override String get lists => 'Listeler';
	@override String get noLists => 'Liste yok';
	@override String get note => 'not';
	@override String get notes => 'notlar';
	@override String get following => 'takipçi';
	@override String get followers => 'takipçi';
	@override String get followsYou => 'seni takip ediyor';
	@override String get createList => 'Liste oluştur';
	@override String get manageLists => 'Yönetici Listeleri';
	@override String get error => 'hata';
	@override String get somethingHappened => 'Bir hata oluştu';
	@override String get retry => 'Tekrar dene';
	@override String get pageLoadError => 'Sayfa yüklenemedi.';
	@override String get pageLoadErrorDescription => 'Bu genelde ağ veya tarayıcı ön belleği hatalarından olur. Lütfen ön belleği temizlemeyi veya birkaç dakika beklemeyi ve sayfayı yenilemeyi deneyin.';
	@override String get serverIsDead => 'Sunucu yanıt vermiyor. Birkaç dakika sonra tekrar deneyin.';
	@override String get youShouldUpgradeClient => 'Sayfayı görüntülemek için yenileyin.';
	@override String get enterListName => 'Liste ismi';
	@override String get privacy => 'Gizlilik';
	@override String get makeFollowManuallyApprove => 'Takip istekleri elle onaylansın';
	@override String get defaultNoteVisibility => 'Varsayılan görünürlük';
	@override String get follow => 'takipçi';
	@override String get followRequest => 'Takip isteği';
	@override String get followRequests => 'Takip istekleri';
	@override String get unfollow => 'takip etmeyi bırak';
	@override String get followRequestPending => 'Bekleyen Takip Etme Talebi';
	@override String get enterEmoji => 'Emoji Giriniz';
	@override String get renote => 'vazgeçme';
	@override String get unrenote => 'not alma';
	@override String get renoted => 'yeniden adlandırılmış';
	@override String get cantRenote => 'Ayrılamama';
	@override String get cantReRenote => 'not alabilirmiyim';
	@override String get quote => 'alıntı';
	@override String get inChannelRenote => 'Kanal içi Renote';
	@override String get inChannelQuote => 'Kanal içi Alıntı';
	@override String get pinnedNote => 'Sabitlenen';
	@override String get pinned => 'Sabitlenmiş';
	@override String get you => 'sen';
	@override String get clickToShow => 'Görüntülemek için tıkla';
	@override String get sensitive => 'Hassas içerik';
	@override String get add => 'Ekle';
	@override String get reaction => 'Tepkiler';
	@override String get reactions => 'Tepkiler';
	@override String get reactionSettingDescription2 => 'Sıralamak için sürükleyin, silmek için tıklayın, eklemek için "+" tuşuna tıklayın.';
	@override String get rememberNoteVisibility => 'Görünürlük ayarlarını hatırla';
	@override String get attachCancel => 'Eki sil';
	@override String get markAsSensitive => 'Hassas içerik olarak işaretle';
	@override String get unmarkAsSensitive => 'Hassas içerik işaretini kaldır';
	@override String get enterFileName => 'Dosya ismini gir';
	@override String get mute => 'Gizle';
	@override String get unmute => 'sesi aç';
	@override String get renoteMute => 'sesi kapat';
	@override String get renoteUnmute => 'sesi açmayı iptal et';
	@override String get block => 'engelle';
	@override String get unblock => 'engellemeyi kaldır';
	@override String get suspend => 'askıya al';
	@override String get unsuspend => 'askıya alma';
	@override String get blockConfirm => 'Onayı engelle';
	@override String get unblockConfirm => 'engellemeyi kaldır onayla';
	@override String get suspendConfirm => 'Hesap askıya alınsın mı?';
	@override String get unsuspendConfirm => 'Hesap askıdan kaldırılsın mı';
	@override String get selectList => 'Bir liste seç';
	@override String get editList => 'Listeyi düzenle';
	@override String get selectChannel => 'Kanal seç';
	@override String get selectAntenna => 'Bir anten seç';
	@override String get editAntenna => 'Anteni düzenle';
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
	@override String get cacheRemoteFilesDescription => 'Bu ayar açık olduğunda diğer sitelerin dosyaları doğrudan uzak sunucudan yüklenecektir. Bu ayarı kapatmak depolama kullanımını azaltacak ama küçük resimler oluşturulmadığından trafiği arttıracaktır.';
	@override String get youCanCleanRemoteFilesCache => '';
	@override String get cacheRemoteSensitiveFiles => 'Hassas uzak dosyalar ön belleğe alınsın';
	@override String get cacheRemoteSensitiveFilesDescription => 'Bu ayar kapalı olduğunda hassas uzak dosyalar ön belleğe alınmadan doğrudan uzak sunucudan yüklenecektir.';
	@override String get flagAsBot => 'Bot olarak işaretle';
	@override String get flagAsBotDescription => 'Bu seçeneği hesap bir program tarafından kontrol ediliyorsa işaretleyin. Bu, diğer geliştiricilerin sonsuz etkileşim zincirleri oluşturmasını engellemeye yardımcı olur ve Misskey\'in iç sisteminin hesaba bir bot gibi davranmasını sağlar.';
	@override String get flagAsCat => 'Kedi hesabı';
	@override String get flagAsCatDescription => 'Kedi hesabı';
	@override String get flagShowTimelineReplies => 'Zaman akışında notlara gelen cevapları göster';
	@override String get flagShowTimelineRepliesDescription => 'Açık olduğu durumda, zaman akışında kullanıcıların başkalarına verdiği cevaplar gözükür.';
	@override String get autoAcceptFollowed => 'Takip edilen hesapların takip isteklerini kabul et';
	@override String get addAccount => 'Hesap ekle';
	@override String get reloadAccountsList => 'Hesap listesini güncelle';
	@override String get loginFailed => 'Giriş başarısız oldu';
	@override String get showOnRemote => 'Uzak sunucuda görüntüle';
	@override String get general => 'Genel';
	@override String get wallpaper => 'Duvar kağıdı';
	@override String get setWallpaper => 'Duvar kağıdını ayarla';
	@override String get removeWallpaper => 'Duvar kağıdını sil';
	@override String searchWith({required Object q}) => 'Arama: ${q}';
	@override String get youHaveNoLists => 'Hiç listeniz yok';
	@override String followConfirm({required Object name}) => '${name} takip edilsin mi?';
	@override String get proxyAccount => 'Vekil hesabı';
	@override String get proxyAccountDescription => 'Proxy hesabı, belirli koşullar altında kullanıcılar için uzaktan takipçi işlevi gören bir hesaptır. Örneğin, bir kullanıcı listeye bir uzak kullanıcı eklediğinde, o kullanıcıyı takip eden yerel bir kullanıcı yoksa uzak kullanıcının etkinliği örneğe teslim edilmeyecektir, dolayısıyla bunun yerine proxy hesabı takip edilecektir.';
	@override String get host => 'Sağlayıcı';
	@override String get selectUser => 'Kullanıcı seç';
	@override String get recipient => 'Kime';
	@override String get annotation => 'Açıklamalar';
	@override String get federation => 'Federasyon';
	@override String get instances => 'Sunucu';
	@override String get registeredAt => 'Katılma tarihi';
	@override String get latestRequestReceivedAt => 'Alınan son talep';
	@override String get latestStatus => 'En son durum';
	@override String get storageUsage => 'Depolama kullanımı';
	@override String get charts => 'Çizelgeler';
	@override String get perHour => 'Saatlik';
	@override String get perDay => 'Günlük';
	@override String get stopActivityDelivery => 'Durum güncellemelerini gönderme';
	@override String get blockThisInstance => 'Bu sunucuyu engelle';
	@override String get silenceThisInstance => '';
	@override String get operations => 'İşlemler';
	@override String get software => 'Yazılımlar';
	@override String get version => 'Sürüm';
	@override String get metadata => 'Meta Verileri';
	@override String withNFiles({required Object n}) => '${n} tane dosya';
	@override String get monitor => 'Monitör';
	@override String get jobQueue => 'İşlem sırası';
	@override String get cpuAndMemory => 'İşlemci ve Hafıza';
	@override String get network => 'Ağ';
	@override String get disk => 'Disk';
	@override String get instanceInfo => 'Sunucu Bilgisi';
	@override String get statistics => 'İstatistikler';
	@override String get clearQueue => 'Sırayı temizle';
	@override String get clearQueueConfirmTitle => 'Sıra silinsin mi?';
	@override String get clearQueueConfirmText => 'Sırada kalan hiçbir şey iletilmeyecek. Genelde bu işlem gerekli değildir.';
	@override String get clearCachedFiles => 'Ön belleği temizle';
	@override String get clearCachedFilesConfirm => 'Ön belleğe alınmış tüm uzak sunucu dosyaları silinsin mi?';
	@override String get blockedInstances => 'Engellenen sunucular';
	@override String get blockedInstancesDescription => 'Engellemek istediğiniz sunucuların alan adlarını satır sonlarıyla ayırarak yazın. Yazılan sunucular bu sunucuyla iletişime geçemeyecek.';
	@override String get silencedInstances => 'Turkısh';
	@override String get silencedInstancesDescription => '';
	@override String get muteAndBlock => 'Susturma ve Engelleme';
	@override String get mutedUsers => 'Susturulan kullanıcılar';
	@override String get blockedUsers => 'Engellenen kullanıcılar';
	@override String get noUsers => 'Kullanıcı yok';
	@override String get editProfile => 'Profili düzenle';
	@override String get noteDeleteConfirm => 'Bu notu silmek istediğinizden emin misiniz?';
	@override String get pinLimitExceeded => 'Daha fazla not sabitlenemez';
	@override String get intro => 'Misskey yüklemesi tamamlandı! Lütfen yönetici hesabını oluşturun.';
	@override String get done => 'Tamamlandı';
	@override String get preview => 'Önizleme';
	@override String get default_ => 'Varsayılan';
	@override String defaultValueIs({required Object value}) => 'Varsayılan: ${value}';
	@override String get noCustomEmojis => 'Emoji bulunamadı';
	@override String get noJobs => 'Hiç işlem yok';
	@override String get federating => 'Federe ediliyor';
	@override String get blocked => 'Engellenmiş';
	@override String get suspended => 'Askıya alınmış';
	@override String get all => 'Tümü';
	@override String get subscribing => 'Abonelik';
	@override String get publishing => 'Paylaşım';
	@override String get notResponding => 'Cevap yok';
	@override String get instanceFollowing => 'Sunucuda takip edenler';
	@override String get instanceFollowers => 'Sunucu takipçileri';
	@override String get instanceUsers => 'Sunucu kullanıcıları';
	@override String get changePassword => 'Şifreyi değiştir';
	@override String get security => 'Güvenlik';
	@override String get retypedNotMatch => 'Girişler uyuşmuyor.';
	@override String get currentPassword => 'Geçerli şifre';
	@override String get newPassword => 'Yeni şifre';
	@override String get newPasswordRetype => 'Yeni şifre (tekrar)';
	@override String get attachFile => 'Dosya ekle';
	@override String get more => 'Daha!';
	@override String get featured => 'Öne Çıkan';
	@override String get usernameOrUserId => 'Kullanıcı adı veya ID\'si';
	@override String get noSuchUser => 'Kullanıcı bulunamadı';
	@override String get lookup => 'Sorgu';
	@override String get announcements => 'Duyurular';
	@override String get imageUrl => 'Görsel URL\'si';
	@override String get remove => 'Sil';
	@override String get removed => 'Silindi';
	@override String removeAreYouSure({required Object x}) => '"${x}" silmek istediğinizden emin misiniz?';
	@override String deleteAreYouSure({required Object x}) => '"${x}" silmek istediğinizden emin misiniz?';
	@override String get resetAreYouSure => 'Sıfırlansın mı?';
	@override String get saved => 'Kaydedildi';
	@override String get messaging => 'Mesajlar';
	@override String get upload => 'Yükle';
	@override String get keepOriginalUploading => 'Orijinal görseli koru';
	@override String get keepOriginalUploadingDescription => 'Orijinal olarak yüklenen görüntüyü olduğu gibi kaydeder. Kapatılırsa, yükleme sırasında web\'de görüntülenecek bir sürüm oluşturulur.';
	@override String get fromDrive => 'Drive Dosyasından';
	@override String get fromUrl => 'Bağlantıdan';
	@override String get uploadFromUrl => 'Bağlantıdan yükle';
	@override String get uploadFromUrlDescription => 'Yüklemek istediğiniz dosyanın bağlantısı';
	@override String get uploadFromUrlRequested => 'Yükleme talep edildi';
	@override String get uploadFromUrlMayTakeTime => 'Yüklemenin tamamlanması biraz süre alabilir.';
	@override String get explore => 'Keşfet';
	@override String get messageRead => 'Okundu';
	@override String get noMoreHistory => 'Bundan öncesi yok';
	@override String get startMessaging => 'Yeni bir sohbet başlat';
	@override String nUsersRead({required Object n}) => '${n} kişi okudu';
	@override String agreeTo({required Object x0}) => 'Kabul Ediyorum: ${x0}';
	@override String get agree => 'Kabul Et';
	@override String get agreeBelow => 'Aşağıdakileri kabul ederim';
	@override String get basicNotesBeforeCreateAccount => 'Önemli notlar';
	@override String get termsOfService => 'Şartlar ve Koşullar';
	@override String get start => 'Başla';
	@override String get home => 'Ana sayfa';
	@override String get remoteUserCaution => 'Bu kullanıcı bir uzak sunucudan olduğu için alınan bilgiler tam olmayabilir.';
	@override String get activity => 'Etkinlik';
	@override String get images => 'Görseller';
	@override String get image => 'Görseller';
	@override String get birthday => 'Doğum günü';
	@override String yearsOld({required Object age}) => '${age} yaşında';
	@override String get registeredDate => 'Kayıt tarihi';
	@override String get location => 'Konum';
	@override String get theme => 'Temalar';
	@override String get themeForLightMode => 'Aydınlık Tema';
	@override String get themeForDarkMode => 'Karanlık Tema';
	@override String get light => 'Aydınlık';
	@override String get dark => 'Karanlık';
	@override String get lightThemes => 'Aydınlık Temalar';
	@override String get darkThemes => 'Karanlık Temalar';
	@override String get syncDeviceDarkMode => 'Sistem Koyu Modu ile senkronize et';
	@override String get drive => 'Sürücü';
	@override String get fileName => 'Dosya adı';
	@override String get selectFile => 'Dosya seç';
	@override String get selectFiles => 'Dosya seç';
	@override String get selectFolder => 'Klasör seç';
	@override String get selectFolders => 'Klasör seç';
	@override String get renameFile => 'Dosyayı yeniden adlandır';
	@override String get folderName => 'Klasör adı';
	@override String get createFolder => 'Klasör oluştur';
	@override String get renameFolder => 'Klasörü Yeniden Adlandır';
	@override String get deleteFolder => 'Klasörü sil';
	@override String get addFile => 'Dosya ekle';
	@override String get emptyDrive => 'Sürücü boş';
	@override String get emptyFolder => 'Bu klasör boş';
	@override String get unableToDelete => 'Silme mümkün değil';
	@override String get inputNewFileName => 'Yeni dosya ismini girin';
	@override String get inputNewDescription => 'Yeni bir başlık gir';
	@override String get inputNewFolderName => 'Yeni klasör ismini girin';
	@override String get circularReferenceFolder => 'Hedef klasör taşınan klasörün bir alt klasörü.';
	@override String get hasChildFilesOrFolders => 'Klasör boş olmadığından silinemiyor';
	@override String get copyUrl => 'URL\'yi kopyala';
	@override String get rename => 'Yeniden adlandır';
	@override String get avatar => 'Avatar';
	@override String get banner => 'Banner';
	@override String get displayOfSensitiveMedia => 'Hassas içerik gösterimi';
	@override String get whenServerDisconnected => 'Sunucu bağlantısı kesildiğinde';
	@override String get disconnectedFromServer => 'Sunucu bağlantısı koptu';
	@override String get reload => 'Yenile';
	@override String get doNothing => 'Bir şey yapma';
	@override String get reloadConfirm => 'Zaman akışı yenilensin mi?';
	@override String get watch => 'İzle';
	@override String get unwatch => 'İzlemeyi bırak';
	@override String get accept => 'Kabul et';
	@override String get reject => 'Reddet';
	@override String get normal => 'Normal';
	@override String get instanceName => 'Sunucu ismi';
	@override String get instanceDescription => 'Sunucu açıklaması';
	@override String get maintainerName => 'Yönetici ismi';
	@override String get maintainerEmail => 'Yöneticinin e-postası';
	@override String get tosUrl => 'Hizmet Koşulları Bağlantısı';
	@override String get thisYear => 'Bu yıl';
	@override String get thisMonth => 'Bu ay';
	@override String get today => 'Bugün';
	@override String monthX({required Object month}) => '${month} ay';
	@override String get pages => 'Sayfalar';
	@override String get integration => 'Entegrasyon';
	@override String get basicInfo => 'Temel bilgiler';
	@override String get pinnedUsers => 'Sabitlenmiş kullanıcılar';
	@override String get pinnedNotes => 'Sabitlenen';
	@override String get manageAntennas => 'Anten ayarları';
	@override String get userList => 'Listeler';
	@override String get resetPassword => 'Şifre sıfırlama';
	@override String get noMessagesYet => 'Şimdilik mesaj yok';
	@override String get details => 'Detaylar';
	@override String get deck => 'Güverte';
	@override String get smtpHost => 'Sağlayıcı';
	@override String get smtpUser => 'Kullanıcı Adı';
	@override String get smtpPass => 'Şifre';
	@override String get notificationSetting => 'Bildirim ayarları';
	@override String get instanceTicker => 'Notların sunucu bilgileri';
	@override String get noCrawleDescription => 'Arama motorlarından profilinde, notlarında, sayfalarında  vb. dolaşılmamasını ve dizine eklememesini talep et.';
	@override String get clearCache => 'Ön belleği temizle';
	@override String onlineUsersCount({required Object n}) => '${n} kullanıcı çevrim içi';
	@override String get user => 'Kullanıcı';
	@override String get global => 'Küresel';
	@override String get squareAvatars => 'Kare avatarlar';
	@override String get searchByGoogle => 'Arama';
	@override String get file => 'Dosyalar';
	@override String get pushNotification => 'Push bildirimleri';
	@override String get subscribePushNotification => 'Push bildirimlerini etkinleştir';
	@override String get unsubscribePushNotification => 'Push bildirimlerini kapat';
	@override String get pushNotificationAlreadySubscribed => 'Push bildirimleri zaten açık';
	@override String get pushNotificationNotSupported => 'Push bildirimleri sunucu veya tarayıcı tarafından desteklenmiyor';
	@override String get noRole => 'Rol bulunamadı';
	@override String get color => 'Renk';
	@override String get addMemo => 'Kısa not ekle';
	@override String get icon => 'Avatar';
	@override String get replies => 'yanıt';
	@override String get renotes => 'vazgeçme';
	@override late final _TranslationsMisskeyDeliveryTrTr delivery_ = _TranslationsMisskeyDeliveryTrTr._(_root);
	@override late final _TranslationsMisskeyAccountDeleteTrTr accountDelete_ = _TranslationsMisskeyAccountDeleteTrTr._(_root);
	@override late final _TranslationsMisskeyEmailTrTr email_ = _TranslationsMisskeyEmailTrTr._(_root);
	@override late final _TranslationsMisskeyThemeTrTr theme_ = _TranslationsMisskeyThemeTrTr._(_root);
	@override late final _TranslationsMisskeySfxTrTr sfx_ = _TranslationsMisskeySfxTrTr._(_root);
	@override late final _TranslationsMisskeyX2faTrTr x2fa_ = _TranslationsMisskeyX2faTrTr._(_root);
	@override late final _TranslationsMisskeyPermissionsTrTr permissions_ = _TranslationsMisskeyPermissionsTrTr._(_root);
	@override late final _TranslationsMisskeyWidgetsTrTr widgets_ = _TranslationsMisskeyWidgetsTrTr._(_root);
	@override late final _TranslationsMisskeyCwTrTr cw_ = _TranslationsMisskeyCwTrTr._(_root);
	@override late final _TranslationsMisskeyPollTrTr poll_ = _TranslationsMisskeyPollTrTr._(_root);
	@override late final _TranslationsMisskeyVisibilityTrTr visibility_ = _TranslationsMisskeyVisibilityTrTr._(_root);
	@override late final _TranslationsMisskeyProfileTrTr profile_ = _TranslationsMisskeyProfileTrTr._(_root);
	@override late final _TranslationsMisskeyExportOrImportTrTr exportOrImport_ = _TranslationsMisskeyExportOrImportTrTr._(_root);
	@override late final _TranslationsMisskeyChartsTrTr charts_ = _TranslationsMisskeyChartsTrTr._(_root);
	@override late final _TranslationsMisskeyTimelinesTrTr timelines_ = _TranslationsMisskeyTimelinesTrTr._(_root);
	@override late final _TranslationsMisskeyPagesTrTr pages_ = _TranslationsMisskeyPagesTrTr._(_root);
	@override late final _TranslationsMisskeyNotificationTrTr notification_ = _TranslationsMisskeyNotificationTrTr._(_root);
	@override late final _TranslationsMisskeyDeckTrTr deck_ = _TranslationsMisskeyDeckTrTr._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesTrTr moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesTrTr._(_root);
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryTrTr extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get stop => 'Askıya alınmış';
	@override late final _TranslationsMisskeyDeliveryTypeTrTr type_ = _TranslationsMisskeyDeliveryTypeTrTr._(_root);
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeleteTrTr extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeleteTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get started => 'Silme işlemi başlatıldı';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailTrTr extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowTrTr follow_ = _TranslationsMisskeyEmailFollowTrTr._(_root);
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeTrTr extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get color => 'Renk';
	@override late final _TranslationsMisskeyThemeKeysTrTr keys = _TranslationsMisskeyThemeKeysTrTr._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxTrTr extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get note => 'notlar';
	@override String get notification => 'Bildirim';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faTrTr extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get renewTOTPCancel => 'Hayır, teşekkürler';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsTrTr extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get readBlocks => 'Engellenen hesapları gör';
	@override String get writeBlocks => 'Engellenen hesap listesini düzenle';
}

// Path: misskey.widgets_
class _TranslationsMisskeyWidgetsTrTr extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Profil';
	@override String get instanceInfo => 'Sunucu Bilgisi';
	@override String get notifications => 'Bildirim';
	@override String get timeline => 'Zaman çizelgesi';
	@override String get calendar => 'Takvim';
	@override String get clock => 'Saat';
	@override String get activity => 'Etkinlik';
	@override String get federation => 'Federasyon';
	@override String get jobQueue => 'İşlem sırası';
	@override late final _TranslationsMisskeyWidgetsUserListTrTr userList_ = _TranslationsMisskeyWidgetsUserListTrTr._(_root);
}

// Path: misskey.cw_
class _TranslationsMisskeyCwTrTr extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get show => 'Devamını yükle';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollTrTr extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get vote => 'Oy kullan';
}

// Path: misskey.visibility_
class _TranslationsMisskeyVisibilityTrTr extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get publicDescription => 'Herkese açık';
	@override String get home => 'Ana sayfa';
	@override String get followers => 'takipçi';
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileTrTr extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get username => 'Kullanıcı Adı';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportTrTr extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get followingList => 'takipçi';
	@override String get muteList => 'Gizle';
	@override String get blockingList => 'engelle';
	@override String get userLists => 'Listeler';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsTrTr extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Federasyon';
}

// Path: misskey.timelines_
class _TranslationsMisskeyTimelinesTrTr extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get home => 'Ana sayfa';
	@override String get global => 'Küresel';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesTrTr extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyPagesBlocksTrTr blocks = _TranslationsMisskeyPagesBlocksTrTr._(_root);
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationTrTr extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get youWereFollowed => 'seni takip etti';
	@override String unreadAntennaNote({required Object name}) => '${name} anteni';
	@override late final _TranslationsMisskeyNotificationTypesTrTr types_ = _TranslationsMisskeyNotificationTypesTrTr._(_root);
	@override late final _TranslationsMisskeyNotificationActionsTrTr actions_ = _TranslationsMisskeyNotificationActionsTrTr._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckTrTr extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get configureColumn => 'Sütun seçenekleri';
	@override late final _TranslationsMisskeyDeckColumnsTrTr columns_ = _TranslationsMisskeyDeckColumnsTrTr._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesTrTr extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'askıya al';
	@override String get resetPassword => 'Şifre sıfırlama';
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypeTrTr extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypeTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get none => 'Paylaşım';
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowTrTr extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'seni takip etti';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysTrTr extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get mention => 'Bahset';
	@override String get renote => 'vazgeçme';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListTrTr extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Bir liste seç';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksTrTr extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get image => 'Görseller';
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesTrTr extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get follow => 'takipçi';
	@override String get mention => 'Bahset';
	@override String get renote => 'vazgeçme';
	@override String get quote => 'alıntı';
	@override String get reaction => 'Tepkiler';
	@override String get receiveFollowRequest => 'Takip isteği alındı';
	@override String get followRequestAccepted => 'Takip isteği kabul edildi';
	@override String get login => 'Giriş Yap ';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsTrTr extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get reply => 'yanıt';
	@override String get renote => 'vazgeçme';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsTrTr extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsTrTr._(TranslationsTrTr root) : this._root = root, super.internal(root);

	final TranslationsTrTr _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Bildirim';
	@override String get tl => 'Zaman çizelgesi';
	@override String get list => 'Listeler';
	@override String get mentions => 'Bahsetmeler';
}
