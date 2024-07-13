///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint

part of 'strings.g.dart';

// Path: <root>
class _StringsTrTr extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsTrTr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.trTr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <tr-TR>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	@override late final _StringsTrTr _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAriaTrTr aria = _StringsAriaTrTr._(_root);
	@override late final _StringsMisskeyTrTr misskey = _StringsMisskeyTrTr._(_root);
}

// Path: aria
class _StringsAriaTrTr extends _StringsAriaEnUs {
	_StringsAriaTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

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
class _StringsMisskeyTrTr extends _StringsMisskeyEnUs {
	_StringsMisskeyTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

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
	@override String get enableRegistration => 'Kayıtlara izin ver';
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
	@override late final _StringsMisskeyDeliveryTrTr delivery_ = _StringsMisskeyDeliveryTrTr._(_root);
	@override late final _StringsMisskeyAccountDeleteTrTr accountDelete_ = _StringsMisskeyAccountDeleteTrTr._(_root);
	@override late final _StringsMisskeyEmailTrTr email_ = _StringsMisskeyEmailTrTr._(_root);
	@override late final _StringsMisskeyThemeTrTr theme_ = _StringsMisskeyThemeTrTr._(_root);
	@override late final _StringsMisskeySfxTrTr sfx_ = _StringsMisskeySfxTrTr._(_root);
	@override late final _StringsMisskeyX2faTrTr x2fa_ = _StringsMisskeyX2faTrTr._(_root);
	@override late final _StringsMisskeyPermissionsTrTr permissions_ = _StringsMisskeyPermissionsTrTr._(_root);
	@override late final _StringsMisskeyWidgetsTrTr widgets_ = _StringsMisskeyWidgetsTrTr._(_root);
	@override late final _StringsMisskeyCwTrTr cw_ = _StringsMisskeyCwTrTr._(_root);
	@override late final _StringsMisskeyPollTrTr poll_ = _StringsMisskeyPollTrTr._(_root);
	@override late final _StringsMisskeyVisibilityTrTr visibility_ = _StringsMisskeyVisibilityTrTr._(_root);
	@override late final _StringsMisskeyProfileTrTr profile_ = _StringsMisskeyProfileTrTr._(_root);
	@override late final _StringsMisskeyExportOrImportTrTr exportOrImport_ = _StringsMisskeyExportOrImportTrTr._(_root);
	@override late final _StringsMisskeyChartsTrTr charts_ = _StringsMisskeyChartsTrTr._(_root);
	@override late final _StringsMisskeyTimelinesTrTr timelines_ = _StringsMisskeyTimelinesTrTr._(_root);
	@override late final _StringsMisskeyPagesTrTr pages_ = _StringsMisskeyPagesTrTr._(_root);
	@override late final _StringsMisskeyNotificationTrTr notification_ = _StringsMisskeyNotificationTrTr._(_root);
	@override late final _StringsMisskeyDeckTrTr deck_ = _StringsMisskeyDeckTrTr._(_root);
	@override late final _StringsMisskeyModerationLogTypesTrTr moderationLogTypes_ = _StringsMisskeyModerationLogTypesTrTr._(_root);
}

// Path: misskey.delivery_
class _StringsMisskeyDeliveryTrTr extends _StringsMisskeyDeliveryEnUs {
	_StringsMisskeyDeliveryTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get stop => 'Askıya alınmış';
	@override late final _StringsMisskeyDeliveryTypeTrTr type_ = _StringsMisskeyDeliveryTypeTrTr._(_root);
}

// Path: misskey.accountDelete_
class _StringsMisskeyAccountDeleteTrTr extends _StringsMisskeyAccountDeleteEnUs {
	_StringsMisskeyAccountDeleteTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get started => 'Silme işlemi başlatıldı';
}

// Path: misskey.email_
class _StringsMisskeyEmailTrTr extends _StringsMisskeyEmailEnUs {
	_StringsMisskeyEmailTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyEmailFollowTrTr follow_ = _StringsMisskeyEmailFollowTrTr._(_root);
}

// Path: misskey.theme_
class _StringsMisskeyThemeTrTr extends _StringsMisskeyThemeEnUs {
	_StringsMisskeyThemeTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get color => 'Renk';
	@override late final _StringsMisskeyThemeKeysTrTr keys = _StringsMisskeyThemeKeysTrTr._(_root);
}

// Path: misskey.sfx_
class _StringsMisskeySfxTrTr extends _StringsMisskeySfxEnUs {
	_StringsMisskeySfxTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get note => 'notlar';
	@override String get notification => 'Bildirim';
}

// Path: misskey.x2fa_
class _StringsMisskeyX2faTrTr extends _StringsMisskeyX2faEnUs {
	_StringsMisskeyX2faTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get renewTOTPCancel => 'Hayır, teşekkürler';
}

// Path: misskey.permissions_
class _StringsMisskeyPermissionsTrTr extends _StringsMisskeyPermissionsEnUs {
	_StringsMisskeyPermissionsTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get readBlocks => 'Engellenen hesapları gör';
	@override String get writeBlocks => 'Engellenen hesap listesini düzenle';
}

// Path: misskey.widgets_
class _StringsMisskeyWidgetsTrTr extends _StringsMisskeyWidgetsEnUs {
	_StringsMisskeyWidgetsTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

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
	@override late final _StringsMisskeyWidgetsUserListTrTr userList_ = _StringsMisskeyWidgetsUserListTrTr._(_root);
}

// Path: misskey.cw_
class _StringsMisskeyCwTrTr extends _StringsMisskeyCwEnUs {
	_StringsMisskeyCwTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get show => 'Devamını yükle';
}

// Path: misskey.poll_
class _StringsMisskeyPollTrTr extends _StringsMisskeyPollEnUs {
	_StringsMisskeyPollTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get vote => 'Oy kullan';
}

// Path: misskey.visibility_
class _StringsMisskeyVisibilityTrTr extends _StringsMisskeyVisibilityEnUs {
	_StringsMisskeyVisibilityTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get publicDescription => 'Herkese açık';
	@override String get home => 'Ana sayfa';
	@override String get followers => 'takipçi';
}

// Path: misskey.profile_
class _StringsMisskeyProfileTrTr extends _StringsMisskeyProfileEnUs {
	_StringsMisskeyProfileTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get username => 'Kullanıcı Adı';
}

// Path: misskey.exportOrImport_
class _StringsMisskeyExportOrImportTrTr extends _StringsMisskeyExportOrImportEnUs {
	_StringsMisskeyExportOrImportTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get followingList => 'takipçi';
	@override String get muteList => 'Gizle';
	@override String get blockingList => 'engelle';
	@override String get userLists => 'Listeler';
}

// Path: misskey.charts_
class _StringsMisskeyChartsTrTr extends _StringsMisskeyChartsEnUs {
	_StringsMisskeyChartsTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Federasyon';
}

// Path: misskey.timelines_
class _StringsMisskeyTimelinesTrTr extends _StringsMisskeyTimelinesEnUs {
	_StringsMisskeyTimelinesTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get home => 'Ana sayfa';
	@override String get global => 'Küresel';
}

// Path: misskey.pages_
class _StringsMisskeyPagesTrTr extends _StringsMisskeyPagesEnUs {
	_StringsMisskeyPagesTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyPagesBlocksTrTr blocks = _StringsMisskeyPagesBlocksTrTr._(_root);
}

// Path: misskey.notification_
class _StringsMisskeyNotificationTrTr extends _StringsMisskeyNotificationEnUs {
	_StringsMisskeyNotificationTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get youWereFollowed => 'seni takip etti';
	@override String unreadAntennaNote({required Object name}) => '${name} anteni';
	@override late final _StringsMisskeyNotificationTypesTrTr types_ = _StringsMisskeyNotificationTypesTrTr._(_root);
	@override late final _StringsMisskeyNotificationActionsTrTr actions_ = _StringsMisskeyNotificationActionsTrTr._(_root);
}

// Path: misskey.deck_
class _StringsMisskeyDeckTrTr extends _StringsMisskeyDeckEnUs {
	_StringsMisskeyDeckTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get configureColumn => 'Sütun seçenekleri';
	@override late final _StringsMisskeyDeckColumnsTrTr columns_ = _StringsMisskeyDeckColumnsTrTr._(_root);
}

// Path: misskey.moderationLogTypes_
class _StringsMisskeyModerationLogTypesTrTr extends _StringsMisskeyModerationLogTypesEnUs {
	_StringsMisskeyModerationLogTypesTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'askıya al';
	@override String get resetPassword => 'Şifre sıfırlama';
}

// Path: misskey.delivery_.type_
class _StringsMisskeyDeliveryTypeTrTr extends _StringsMisskeyDeliveryTypeEnUs {
	_StringsMisskeyDeliveryTypeTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get none => 'Paylaşım';
}

// Path: misskey.email_.follow_
class _StringsMisskeyEmailFollowTrTr extends _StringsMisskeyEmailFollowEnUs {
	_StringsMisskeyEmailFollowTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'seni takip etti';
}

// Path: misskey.theme_.keys
class _StringsMisskeyThemeKeysTrTr extends _StringsMisskeyThemeKeysEnUs {
	_StringsMisskeyThemeKeysTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get mention => 'Bahset';
	@override String get renote => 'vazgeçme';
}

// Path: misskey.widgets_.userList_
class _StringsMisskeyWidgetsUserListTrTr extends _StringsMisskeyWidgetsUserListEnUs {
	_StringsMisskeyWidgetsUserListTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Bir liste seç';
}

// Path: misskey.pages_.blocks
class _StringsMisskeyPagesBlocksTrTr extends _StringsMisskeyPagesBlocksEnUs {
	_StringsMisskeyPagesBlocksTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get image => 'Görseller';
}

// Path: misskey.notification_.types_
class _StringsMisskeyNotificationTypesTrTr extends _StringsMisskeyNotificationTypesEnUs {
	_StringsMisskeyNotificationTypesTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get follow => 'takipçi';
	@override String get mention => 'Bahset';
	@override String get renote => 'vazgeçme';
	@override String get quote => 'alıntı';
	@override String get reaction => 'Tepkiler';
	@override String get receiveFollowRequest => 'Takip isteği alındı';
	@override String get followRequestAccepted => 'Takip isteği kabul edildi';
}

// Path: misskey.notification_.actions_
class _StringsMisskeyNotificationActionsTrTr extends _StringsMisskeyNotificationActionsEnUs {
	_StringsMisskeyNotificationActionsTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get reply => 'yanıt';
	@override String get renote => 'vazgeçme';
}

// Path: misskey.deck_.columns_
class _StringsMisskeyDeckColumnsTrTr extends _StringsMisskeyDeckColumnsEnUs {
	_StringsMisskeyDeckColumnsTrTr._(_StringsTrTr root) : this._root = root, super._(root);

	@override final _StringsTrTr _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Bildirim';
	@override String get tl => 'Zaman çizelgesi';
	@override String get list => 'Listeler';
	@override String get mentions => 'Bahsetmeler';
}
