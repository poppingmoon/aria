///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint

part of 'strings.g.dart';

// Path: <root>
class _StringsUzUz extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsUzUz.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.uzUz,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <uz-UZ>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	@override late final _StringsUzUz _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAriaUzUz aria = _StringsAriaUzUz._(_root);
	@override late final _StringsMisskeyUzUz misskey = _StringsMisskeyUzUz._(_root);
}

// Path: aria
class _StringsAriaUzUz extends _StringsAriaEnUs {
	_StringsAriaUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' ga obuna bo\'lmoqchimisiz?'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria bir qancha volontyorlar yordamida bir qancha tillarga tarjima qilingan. Ushbu '),
		link,
		const TextSpan(text: ' orqali ularga yordam berishingiz mumkin.'),
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		const TextSpan(text: 'Faol userlar '),
		n,
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: ' tomonidan qayta qayd etildi'),
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: 'ga obunani bekor qilmoqchimisiz?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' nimadir dedi'),
	]);
}

// Path: misskey
class _StringsMisskeyUzUz extends _StringsMisskeyEnUs {
	_StringsMisskeyUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'O\'zbek tili';
	@override String get headlineMisskey => 'Qaydlar tarmog\'i';
	@override String get introMisskey => 'Xush kelibsiz! Misskey ochiq kodli, markazlashmagan mikroblogging xizmati.\nO\'zingizni fikrlaringizni atrofingizdagilar bilan ulashish uchun "Qaydlar" yarating. 📡\nUstiga-ustak, "Reaktsiyalar" yordamida siz boshqalarning xatlari haqidagi o\'zingizni xissiyotlaringizni bildiring. 👍\nQani, yangi dunyoni kashf qilaylik! 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} ochiq manbali <b>Misskey</b>("Misskey instance" deb ataladi) platformasi tomonidan qurilgan servislardan biri. ';
	@override String monthAndDay({required Object day, required Object month}) => '${day}/${month}';
	@override String get search => 'Izlash';
	@override String get notifications => 'Xabarnomalar';
	@override String get username => 'Foydalanuvchi nomi';
	@override String get password => 'Parol';
	@override String get forgotPassword => 'Parolni unutib qo\'ydim';
	@override String get fetchingAsApObject => 'Fediversedan olib kelinmoqda...';
	@override String get ok => 'Ho\'p';
	@override String get gotIt => 'Tushunarli!';
	@override String get cancel => 'Bekor qilish';
	@override String get noThankYou => 'Hozir emas';
	@override String get enterUsername => 'Foydalanuvchini nomini kiriting';
	@override String renotedBy({required Object user}) => '${user} tomonidan qayta qayd etildi';
	@override String get noNotes => 'Qaydlar mavjud emas';
	@override String get noNotifications => 'Xabarlar mavjud emas';
	@override String get instance => 'Server';
	@override String get settings => 'Sozlamalar';
	@override String get notificationSettings => 'Xabarnoma sozlamalari';
	@override String get basicSettings => 'Asosiy sozlamalar';
	@override String get otherSettings => 'Qo‘shimcha sozlamalar';
	@override String get openInWindow => 'Yangi oynada ochish';
	@override String get profile => 'Profil';
	@override String get timeline => 'Xronologiya';
	@override String get noAccountDescription => 'Ushbu foydalanuvchi hali o\'zi haqida ma\'lumot yozmagan.';
	@override String get login => 'Kirish';
	@override String get loggingIn => 'Kirilmoqda';
	@override String get logout => 'Chiqish';
	@override String get signup => 'Ro\'yxatdan o\'tish';
	@override String get uploading => 'Yuklanmoqda...';
	@override String get save => 'Saqlash';
	@override String get users => 'Foydalanuvchilar';
	@override String get addUser => 'Foydalanuvchi qo\'shish';
	@override String get favorite => 'Sevimli';
	@override String get favorites => 'Sevimlilar';
	@override String get unfavorite => 'Sevimlidan chiqarish';
	@override String get favorited => 'sevimli';
	@override String get alreadyFavorited => 'allaqachon sevimlilar orasida';
	@override String get cantFavorite => 'sevimlilarga qo\'shib bo\'lmadi';
	@override String get pin => 'Profilga qadab qo\'yish';
	@override String get unpin => 'Profildan olib tashlash';
	@override String get copyContent => 'Tarkibini nusxalash';
	@override String get copyLink => 'Havolani nusxalash';
	@override String get delete => 'O\'chirib tashlash';
	@override String get deleteAndEdit => 'O\'chirish va tahrirlash';
	@override String get deleteAndEditConfirm => 'O\'chirib, tahrirlamoqchiligingizga ishonchingiz komilmi? Siz bu qaydga tegishli barcha reaktsiyalar va javoblarni yo\'qotasiz.';
	@override String get addToList => 'Ro‘yxatga qo‘shish';
	@override String get addToAntenna => 'Antennaga qo\'shish';
	@override String get sendMessage => 'Xabar yuborish';
	@override String get copyRSS => 'RSS\'ni nusxalash';
	@override String get copyUsername => 'Foydalanuvchi nomini nusxalash';
	@override String get copyUserId => 'Foydalanuvchi IDsini nusxalash';
	@override String get copyNoteId => 'Qayd IDsini ko\'chirish';
	@override String get copyFileId => 'Fayl ID raqamini nusxalash';
	@override String get copyFolderId => 'Jild ID raqamini nusxalash';
	@override String get copyProfileUrl => 'Profil manzilini nusxalash';
	@override String get searchUser => 'Foydalanuvchini izlash';
	@override String get reply => 'Javob berish';
	@override String get loadMore => 'Ko‘proq ko‘rish';
	@override String get showMore => 'Ko‘proq ko‘rish';
	@override String get showLess => 'Yopish';
	@override String get youGotNewFollower => 'sizga obuna bo\'ldi';
	@override String get receiveFollowRequest => 'Obuna bo\'lishga ruxsat qabul qilindi';
	@override String get followRequestAccepted => 'Obuna bo\'lishga ruxsat berildi';
	@override String get mention => 'Murojat';
	@override String get mentions => 'Eslatib o\'tish';
	@override String get directNotes => 'Bevosita qaydlar';
	@override String get importAndExport => 'Import/eksport';
	@override String get import => 'Import';
	@override String get export => 'Eksport';
	@override String get files => 'Fayllar';
	@override String get download => 'Yuklab olish';
	@override String driveFileDeleteConfirm({required Object name}) => '"${name}" o\'chirib tashlamoqchimisiz? Ushbu fayldan foydalanadigan har qanday kontent ham oʻchiriladi.';
	@override String unfollowConfirm({required Object name}) => '${name}ga obunani bekor qilmoqchimisiz?';
	@override String get exportRequested => 'Eksport so\'raldi. Bu ozgina vaqt olishi mumkin. Tugatilgandan so\'ng sizning Diskingizga qo\'shiladi';
	@override String get importRequested => 'Import so\'raldi. Bu ozgina vaqt olishi mumkin.';
	@override String get lists => 'Ro\'yxatlar';
	@override String get noLists => 'Hech qanday ro\'yxatlar mavjud emas';
	@override String get note => 'Qayd';
	@override String get notes => 'Qaydlar';
	@override String get following => 'Obuna bo‘lish';
	@override String get followers => 'Obunachilar';
	@override String get followsYou => 'Sizning obunachingiz.';
	@override String get createList => 'Ro\'yxat yaratish';
	@override String get manageLists => 'Ro\'yxatlarni boshqarish.';
	@override String get error => 'Xato';
	@override String get somethingHappened => 'Xatolik yuz berdi';
	@override String get retry => 'Qayta urinib ko\'rish';
	@override String get pageLoadError => 'Sahifani yuklayotganda xatolik yuz berdi';
	@override String get pageLoadErrorDescription => 'Buni odatda tarmoq muammolarni yoki browser keshi keltirib chiqaradi. Keshni tozalab, keyinroq urinib ko\'ring';
	@override String get serverIsDead => 'Server javob bermayabdi. Iltimos kuting va keyinroq urinib ko\'ring';
	@override String get youShouldUpgradeClient => 'Iltimos, ushbu sahifani ko\'rish uchun sahifani yangilang.';
	@override String get enterListName => 'Ro\'yxatga nom kiriting';
	@override String get privacy => 'Maxfiylik';
	@override String get makeFollowManuallyApprove => 'Yopiq akkaunt';
	@override String get defaultNoteVisibility => 'Standart ko\'rinish';
	@override String get follow => 'Obuna bo‘lish';
	@override String get followRequest => 'Obuna bo\'lish uchun ruxsat olish';
	@override String get followRequests => 'Obuna bo\'lmoqchilar';
	@override String get unfollow => 'obunani bekor qilish';
	@override String get followRequestPending => 'obuna bo\'lishga ruxsat kutilmoqda';
	@override String get enterEmoji => 'Emojini kiriting';
	@override String get renote => 'Qayta qayd etish';
	@override String get unrenote => 'Qayta qayd etishni bekor qilish';
	@override String get renoted => 'Qayta qayd etildi';
	@override String get cantRenote => 'Qayta qayd etish mumkin emas';
	@override String get cantReRenote => 'Repostni qayta joylashtirish mumkin emas.';
	@override String get quote => 'Iqtibos keltirish';
	@override String get inChannelRenote => 'Faqat kanalga qayta qayd etish';
	@override String get inChannelQuote => 'Kanaldagi eslatmalar';
	@override String get pinnedNote => 'Qadalgan qayd';
	@override String get pinned => 'Profilga qadab qo\'yish';
	@override String get you => 'Siz';
	@override String get clickToShow => 'Ko\'rsatish uchun bosing';
	@override String get sensitive => 'Sezuvchan';
	@override String get add => 'Qo\'shish';
	@override String get reaction => 'Reaktsiyalar';
	@override String get reactions => 'Reaktsiyalar';
	@override String get reactionSettingDescription2 => 'Qayta tartiblash uchun ushlab turib siljiting, oʻchirish uchun bosing, qoʻshish uchun “+” tugmasini bosing.';
	@override String get rememberNoteVisibility => 'Qaydning ko\'rinish sozlamarini eslab qolish';
	@override String get attachCancel => 'Qo\'shimchani olib tashlash';
	@override String get markAsSensitive => '"Hamma ko\'rishi mumkin emas" deb belgilash';
	@override String get unmarkAsSensitive => '"Hamma ko\'rishi mumkin" deb belgilash';
	@override String get enterFileName => 'Fayl nomini kiriting';
	@override String get mute => 'Ovozni o‘chirish';
	@override String get unmute => 'Ovozni yoqish';
	@override String get renoteMute => 'Qayta qaydlarni ovozini o\'chirish';
	@override String get renoteUnmute => 'Qayta qaydlarni ovozini yoqish';
	@override String get block => 'Bloklash';
	@override String get unblock => 'Blokdan chiqarish';
	@override String get suspend => 'To\'xtatish';
	@override String get unsuspend => 'Blokdan chiqarish';
	@override String get blockConfirm => 'Haqiqatdan ham quyidagi hisobni bloklashni xohlaysizmi? ';
	@override String get unblockConfirm => 'Haqiqatdan ham quyidagi hisobni blokdan chiqarishni xohlaysizmi? ';
	@override String get suspendConfirm => 'Bu hisobni to‘xtatib qo‘ymoqchi ekanligingizga ishonchingiz komilmi?';
	@override String get unsuspendConfirm => 'Tasdiqlashni to\'xtatib turish';
	@override String get selectList => 'Ro\'yxat tanlash';
	@override String get editList => 'Roʻyxatni tahrirlash';
	@override String get selectChannel => 'Kanalni tanlang';
	@override String get selectAntenna => 'Antennani tanlang';
	@override String get editAntenna => 'Antennani tahrirlang';
	@override String get selectWidget => 'Vidjet tanlash';
	@override String get editWidgets => 'Vidjetni tahrirlash';
	@override String get editWidgetsExit => 'Tugadi';
	@override String get customEmojis => 'Maxsus emoji';
	@override String get emoji => 'Emoji';
	@override String get emojis => 'Emoji';
	@override String get emojiName => 'Emoji nomi';
	@override String get emojiUrl => 'Emoji URL\'i';
	@override String get addEmoji => 'Emoji qo\'shish';
	@override String get settingGuide => 'Tavsiya qilingan sozlamalar';
	@override String get cacheRemoteFiles => 'Tashqi fayllarni keshlash';
	@override String get cacheRemoteFilesDescription => 'Ushbu sozlama o\'chirilgan bo\'lsa tashqi fayllar bevosita tashqi serverdan yuklanadi. Buni o\'chirish ombor ishlatilishini kamaytiradi, lekin traffikni ko\'paytiradi, chunki eskizlar generatsiya qilinmaydi.';
	@override String get youCanCleanRemoteFilesCache => 'Fayl menejeridagi 🗑️ tugmasi yordamida barcha keshlarni oʻchirib tashlashingiz mumkin.';
	@override String get cacheRemoteSensitiveFiles => 'Tashqi fayllarni keshlash';
	@override String get cacheRemoteSensitiveFilesDescription => 'Bu sozlama oʻchiq boʻlsa, "barcha ko\'rishi mumkin bo\'lmagan" fayllar keshlashsiz toʻgʻridan-toʻgʻri masofaviy serverdan yuklanadi.';
	@override String get flagAsBot => 'Ushbu akkauntni bot sifatida belgilash';
	@override String get flagAsBotDescription => 'Agar bu akkaunt bot tomonidan boshqaralayotgan bo\'lsa, bu sozlamani yoqing. Sozlama yoqilganda, boshqa foydalanuvchilar uchun belgi sifatida ishlaydi, va Misskey ichki tizimlari bu akkauntni bot ekanini biladi.';
	@override String get flagAsCat => 'Bu akkauntni mushuk sifatida belgilash';
	@override String get flagAsCatDescription => 'Ushbu akkauntni mushuk sifatida belgilash uchun ushbu sozlamani yoqing.';
	@override String get flagShowTimelineReplies => 'Javoblarni xronogoliya bo\'yicha ko\'rsatish';
	@override String get flagShowTimelineRepliesDescription => 'Bu parametr yoqilganda, lentada foydalanuvchi xabarlariga javob berilgan xabarlar ham ko\'rinadi';
	@override String get autoAcceptFollowed => 'Obunachilarni avtomatik ravishda qabul qilish';
	@override String get addAccount => 'Akkaunt qo\'shish';
	@override String get reloadAccountsList => 'Hisoblar ro\'yxatini yangilash';
	@override String get loginFailed => 'Tizimga kirishda xatolik yuz berdi';
	@override String get showOnRemote => 'Masofaviy boshqaruvni ko\'rish';
	@override String get general => 'Asosiy';
	@override String get wallpaper => 'Fon rasmi';
	@override String get setWallpaper => 'Fon rasmini o\'rnatish';
	@override String get removeWallpaper => 'Fon rasmini olib tashlash';
	@override String searchWith({required Object q}) => 'Izlash: ${q}';
	@override String get youHaveNoLists => 'Sizda hech qanday ro\'yxatlar mavjud emas';
	@override String followConfirm({required Object name}) => '${name} ga obuna bo\'lmoqchimisiz?';
	@override String get proxyAccount => 'Proksi hisob';
	@override String get proxyAccountDescription => 'Proksi-hisob qaydnomasi - bu ma\'lum shartlar ostida foydalanuvchi uchun masofaviy kuzatuvchi sifatida ishlaydigan hisob. Misol uchun, foydalanuvchi uzoq foydalanuvchini roʻyxatga qoʻyganda, roʻyxatdagi foydalanuvchini hech kim kuzatib turmasa, faoliyat serverga yetkazilmaydi, shuning uchun biz proksi hisobi ularning oʻrniga ularni kuzatishini xohlaymiz.';
	@override String get host => 'Host';
	@override String get selectUser => 'Foydalanuvchini tanlang';
	@override String get recipient => 'Qabul qiluvchi';
	@override String get annotation => 'Izohlar';
	@override String get federation => 'Federatsiya';
	@override String get instances => 'Serverlar';
	@override String get registeredAt => 'Ro\'yhatdan o\'tgan';
	@override String get latestRequestReceivedAt => 'Oxirgi qabul qilingan so\'rov';
	@override String get latestStatus => 'So\'nggi holat';
	@override String get storageUsage => 'Ishlatilgan xotira';
	@override String get charts => 'Diagrammalar';
	@override String get perHour => 'Soatbay';
	@override String get perDay => 'Kunbay';
	@override String get stopActivityDelivery => 'Faollikni jo\'natishi to\'xtatish';
	@override String get blockThisInstance => 'Ko;rsatilgan serverni bloklash';
	@override String get operations => 'Amallar';
	@override String get software => 'Dastur';
	@override String get version => 'Versiya';
	@override String get metadata => 'Meta ma\'lumot';
	@override String withNFiles({required Object n}) => '${n} ta fayl(lar)';
	@override String get monitor => 'Kuzatish';
	@override String get jobQueue => 'Vazifalar navbati';
	@override String get cpuAndMemory => 'CPU va Xotira';
	@override String get network => 'Tarmoq';
	@override String get disk => 'Disk';
	@override String get instanceInfo => 'Instans haqida ma\'lumot';
	@override String get statistics => 'Statistika';
	@override String get clearQueue => 'Navbatni tozalash';
	@override String get clearQueueConfirmTitle => 'Navbatni tozalamoqchimisiz?';
	@override String get clearQueueConfirmText => 'Yetkazib berilmagan xabarlar yetkazilmaydi. Odatda buni qilish shart emas.';
	@override String get clearCachedFiles => 'Keshni tozalash';
	@override String get clearCachedFilesConfirm => 'Barcha keshlangan masofaviy fayllar oʻchirilsinmi?';
	@override String get blockedInstances => 'Bloklangan serverlar';
	@override String get blockedInstancesDescription => 'Bloklanmoqchi bo\'lgan serverlaringiz hostlarini yangi qatorlar bilan ajrating. Bloklangan server bu server bilan o‘zaro aloqada bo‘lmaydi. Subdomenlar ham bloklangan.';
	@override String get muteAndBlock => 'Ovozsiz va Bloklangan';
	@override String get mutedUsers => 'Ovozsiz foydalanuvchilar';
	@override String get blockedUsers => 'Bloklangan foydalanuvchilar';
	@override String get noUsers => 'Foydalanuvchilar yo‘q';
	@override String get editProfile => 'Profilni o\'zgartirish';
	@override String get noteDeleteConfirm => 'Haqiqatan ham bu qaydni oʻchirib tashlamoqchimisiz?';
	@override String get pinLimitExceeded => 'Siz boshqa qaydlarni mahkamlay olmaysiz';
	@override String get intro => 'Misskeyni o\'rnatish tugallandi! Iltimos, administrator foydalanuvchi yarating.';
	@override String get done => 'Bajarildi';
	@override String get processing => 'Amaliyotda';
	@override String get preview => 'Ko\'rish';
	@override String get default_ => 'Odatiy';
	@override String defaultValueIs({required Object value}) => 'Sukut bo\'yicha: ${value}';
	@override String get noCustomEmojis => 'Emojilar mavjud emas';
	@override String get noJobs => 'Vazifalar yo\'q';
	@override String get federating => 'Ittifoqdosh';
	@override String get blocked => 'Bloklangan';
	@override String get suspended => 'To\'xtatilgan';
	@override String get all => 'Barcha';
	@override String get subscribing => 'Obuna bo\'lish';
	@override String get publishing => 'Yuborilmoqda';
	@override String get notResponding => 'Javob bermayapti';
	@override String get instanceFollowing => 'server obuna bo\'ladi';
	@override String get instanceFollowers => 'server obunachisi';
	@override String get instanceUsers => 'server foydalanuvchisi';
	@override String get changePassword => 'Parolni o‘zgartirish';
	@override String get security => 'Xavfsizlik';
	@override String get retypedNotMatch => 'Maydonlar mos kelmayapti';
	@override String get currentPassword => 'Joriy parol';
	@override String get newPassword => 'Yangi parol';
	@override String get newPasswordRetype => 'Yangi parolni boshqatdan tering';
	@override String get attachFile => 'Fayl biriktirish';
	@override String get more => 'Ko\'proq!';
	@override String get featured => 'ta\'kidlash';
	@override String get usernameOrUserId => 'Foydalanuvchi nomi yoki identifikatori';
	@override String get noSuchUser => 'Foydalanuvchi topilmadi';
	@override String get lookup => 'So\'rov';
	@override String get announcements => 'Bildirishnomalar';
	@override String get imageUrl => 'Rasm URL';
	@override String get remove => 'O\'chirib tashlash';
	@override String get removed => 'Muvaffaqiyatli o\'chirildi';
	@override String removeAreYouSure({required Object x}) => '“${x}”ni olib tashlamoqchi ekanligingizga ishonchingiz komilmi?';
	@override String deleteAreYouSure({required Object x}) => '“${x}”ni chindan ham yo\'q qilmoqchimisiz?';
	@override String get resetAreYouSure => 'Haqiqatan ham qayta tiklansinmi?';
	@override String get saved => 'Saqlandi';
	@override String get messaging => 'Suhbat';
	@override String get upload => 'Yuklash';
	@override String get keepOriginalUploading => 'Asl rasmni saqlang';
	@override String get keepOriginalUploadingDescription => 'Rasmlarni yuklashda asl nusxasini saqlaydi. Agar o\'chirilgan bo\'lsa, brauzer yuklangandan keyin nashr qilish uchun rasm yaratadi.';
	@override String get fromDrive => 'Drive orqali';
	@override String get fromUrl => 'URL dan';
	@override String get uploadFromUrl => 'URL orqali yuklash';
	@override String get uploadFromUrlDescription => 'Yuklamoqchi bo\'lgan faylingizga havola';
	@override String get uploadFromUrlRequested => 'yuklab olish so\'ralgan';
	@override String get uploadFromUrlMayTakeTime => 'Yuklash tugallanishi uchun biroz vaqt ketishi mumkin.';
	@override String get explore => 'Ko\'rib chiqish';
	@override String get messageRead => 'O‘qildi';
	@override String get noMoreHistory => 'Buning ortida hech qanday hikoya yo\'q';
	@override String get startMessaging => 'Yangi suhbatni boshlash';
	@override String nUsersRead({required Object n}) => '${n} tomonidan o\'qildi';
	@override String agreeTo({required Object x0}) => 'Men ${x0} ga roziman';
	@override String get agree => 'Rozi bo\'lish';
	@override String get agreeBelow => 'Men quyidagilarga roziman';
	@override String get basicNotesBeforeCreateAccount => 'Muhim qaydlar';
	@override String get termsOfService => 'Foydalanish shartlari';
	@override String get start => 'Boshlash';
	@override String get home => 'Bosh sahifa';
	@override String get remoteUserCaution => 'Bu foydalanuvchi uzoqda bo\'lganligi sababli, ko\'rsatilgan ma\'lumotlar to\'liq bo\'lmasligi mumkin.';
	@override String get activity => 'Faollik';
	@override String get images => 'Rasmlar';
	@override String get image => 'Rasm';
	@override String get birthday => 'Tug\'ilgan kun';
	@override String yearsOld({required Object age}) => '${age} yashar';
	@override String get registeredDate => 'Ro\'yxatdan o\'tgan sanasi';
	@override String get location => 'Manzil';
	@override String get theme => 'Rang sxemasi';
	@override String get themeForLightMode => 'Yorug\' rejim uchun rang sxemasi';
	@override String get themeForDarkMode => 'Qorong\'i rejim uchun rang sxemasi';
	@override String get light => 'Yorug\'';
	@override String get dark => 'Qorongʻi';
	@override String get lightThemes => 'Yorug‘ rang sxemasi';
	@override String get darkThemes => 'Qorong\'i rang sxemasi';
	@override String get syncDeviceDarkMode => 'Qurilmangizning qorong‘i rejimi bilan sinxronlashtiring';
	@override String get drive => 'Disk';
	@override String get fileName => 'Fayl nomi';
	@override String get selectFile => 'Faylni tanlang';
	@override String get selectFiles => 'Fayllarni tanlang';
	@override String get selectFolder => 'Jildni tanlang';
	@override String get selectFolders => 'Jildlarni tanlang';
	@override String get renameFile => 'Faylni nomini tahrirlash';
	@override String get folderName => 'Jild nomi';
	@override String get createFolder => 'Papka qo\'shish';
	@override String get renameFolder => 'Papka nomini o‘zgartirish';
	@override String get deleteFolder => 'Papkani o‘chirish';
	@override String get addFile => 'Fayl qo‘shish';
	@override String get emptyDrive => 'Diskingiz bo\'sh';
	@override String get emptyFolder => 'Ushbu papka bo\'sh';
	@override String get unableToDelete => 'O\'chirilmadi';
	@override String get inputNewFileName => 'Yangi fayl nomini kiriting';
	@override String get inputNewDescription => 'Iltimos, yangi sarlavha kiriting.';
	@override String get inputNewFolderName => 'Yangi papka nomini kiriting';
	@override String get circularReferenceFolder => 'Belgilangan papka siz ko\'chirmoqchi bo\'lgan jildning pastki jildidir.';
	@override String get hasChildFilesOrFolders => 'Bu papka boʻsh emas va uni oʻchirib boʻlmaydi.';
	@override String get copyUrl => 'Bog\'lamadan nusxa olish';
	@override String get rename => 'Qayta nomlash';
	@override String get avatar => 'Avatar';
	@override String get banner => 'Banner';
	@override String get displayOfSensitiveMedia => 'Nozik kontentni ko\'rish';
	@override String get whenServerDisconnected => 'server bilan aloqa uzilganda';
	@override String get disconnectedFromServer => 'Server bilan ulanish uzulib qoldi';
	@override String get reload => 'Yangilash';
	@override String get doNothing => 'E\'tiborsiz qoldirish';
	@override String get reloadConfirm => 'Timeline\'ni yangilashni xohlaysizmi?';
	@override String get watch => 'Kuzatmoq';
	@override String get unwatch => 'Kuzatishni to\'xtatish';
	@override String get accept => 'Ruxsat';
	@override String get reject => 'Rad etish';
	@override String get normal => 'Yaxshi';
	@override String get instanceName => 'Server nomi';
	@override String get instanceDescription => 'Server tavsifi';
	@override String get maintainerName => 'Qo\'llab-quvvatlovchi';
	@override String get maintainerEmail => 'Administratorning elektron pochtasi';
	@override String get tosUrl => 'Foydalanish shartlariga havola';
	@override String get thisYear => 'Joriy yil';
	@override String get thisMonth => 'Shu oy';
	@override String get today => 'Bugun';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => '${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'Sahifalar';
	@override String get integration => 'Integratsiya';
	@override String get connectService => 'Ulash';
	@override String get disconnectService => 'Uzish';
	@override String get enableLocalTimeline => 'Mahalliy vaqt mintaqasini yoqing';
	@override String get enableGlobalTimeline => 'Global vaqt mintaqasini yoqing';
	@override String get disablingTimelinesInfo => 'Administratorlar va Moderatorlar har doim barcha vaqt jadvallariga kirish huquqiga ega bo\'ladilar, hatto ular yoqilmagan bo\'lsa ham.';
	@override String get registration => 'Ro\'yxatdan o\'tish';
	@override String get enableRegistration => 'Ro\'yxatdan o\'tishni yoqing';
	@override String get invite => 'Taklif qilish';
	@override String get driveCapacityPerLocalAccount => 'Har bir mahalliy foydalanuvchi uchun disk maydoni';
	@override String get driveCapacityPerRemoteAccount => 'Har bir masofaviy foydalanuvchi uchun disk maydoni';
	@override String get inMb => 'Megabaytlarda';
	@override String get bannerUrl => 'Banner URLi';
	@override String get backgroundImageUrl => 'Fon rasmi URL manzili';
	@override String get basicInfo => 'Asosiy ma\'lumot';
	@override String get pinnedUsers => 'Qadalgan foydalanuvchilar';
	@override String get pinnedUsersDescription => 'Har bir qatorga bitta foydalanuvchi nomini kiriting. Bu yerda sanab oʻtilgan foydalanuvchilar “Oʻrganish” yorligʻiga bogʻlanadi.';
	@override String get pinnedPages => 'Qadalgan Sahifalar';
	@override String get pinnedClipId => 'Qadalgan xabar IDsi';
	@override String get pinnedNotes => 'Qadalgan qayd';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'hCaptchani yoqish';
	@override String get hcaptchaSiteKey => 'Sayt kaliti';
	@override String get hcaptchaSecretKey => 'Mahfiy kalit';
	@override String get mcaptchaSiteKey => 'Sayt kaliti';
	@override String get mcaptchaSecretKey => 'Maxfiy kalit';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'reCAPTCHA ni yoqish';
	@override String get recaptchaSiteKey => 'Sayt kaliti';
	@override String get recaptchaSecretKey => 'Maxfiy kalit';
	@override String get turnstile => 'Turniket';
	@override String get enableTurnstile => 'Turniketni yoqish';
	@override String get turnstileSiteKey => 'Sayt kaliti';
	@override String get turnstileSecretKey => 'Maxfiy kalit';
	@override String get avoidMultiCaptchaConfirm => '\nBir nechta Captcha tizimlaridan foydalanish ular o\'rtasida noqulaylik olib kelishi mumkin. Hozirda faol bo\'lgan boshqa Captcha tizimlarini o\'chirib qo\'ymoqchimisiz? Agar siz ularning faol bo\'lishini istasangiz, bekor qilish tugmasini bosing.';
	@override String get antennas => 'Antennalar';
	@override String get manageAntennas => 'Antennalarni boshqarish';
	@override String get name => 'Ism';
	@override String get antennaSource => 'Antenna manbai';
	@override String get antennaKeywords => 'Kalit so\'zni qabul qilish';
	@override String get antennaExcludeKeywords => 'Istisno qilingan kalit so\'zlar';
	@override String get antennaKeywordsDescription => 'VA sharti uchun bo\'shliqlar bilan yoki YOKI sharti uchun qator uzilishlari bilan ajrating.';
	@override String get notifyAntenna => 'Yangi qaydlar haqida menga xabar bering';
	@override String get withFileAntenna => 'Faqatgina fayli bor qaydlar';
	@override String get enableServiceworker => 'Bildirish nomalarni olish';
	@override String get antennaUsersDescription => 'Har bir foydalunvchi nomini alohida qatorga yozing';
	@override String get caseSensitive => 'Katta-kichik harfni farqlash';
	@override String get withReplies => 'Javob yo\'llash';
	@override String get connectedTo => 'Quyidagi akkountlarga ulangan';
	@override String get notesAndReplies => 'Qaydlar va javoblar';
	@override String get withFiles => 'Fayllar';
	@override String get silence => 'Jim qilish';
	@override String get silenceConfirm => 'Rostdan ham ushbu foydalanuvchini jim qilmoqchimisiz?';
	@override String get unsilence => 'Jim qilishni bekor qilish';
	@override String get unsilenceConfirm => 'Rostdan ham ushbu foydalanuvchini ovozsiz \nqilmoqchimisiz?';
	@override String get popularUsers => 'Mashhur foydalanuvchilar.';
	@override String get recentlyUpdatedUsers => 'Yaqinda ro\'yxatdan o\'tgan foydalanuvchilar';
	@override String get recentlyRegisteredUsers => 'Yaqinda ro\'yxatdan o\'tgan foydalanuvchilar';
	@override String get recentlyDiscoveredUsers => 'Yangi foydalanuvchilar';
	@override String exploreUsersCount({required Object count}) => '${count} ta foydalanuvchi bor';
	@override String get exploreFediverse => 'Fediversni ko\'rib chiqing';
	@override String get popularTags => 'Ommabop teglar';
	@override String get userList => 'Ro\'yxatlar';
	@override String get about => 'Haqida';
	@override String get aboutMisskey => 'Misskey haqida';
	@override String get administrator => 'Administrator';
	@override String get token => 'Tasdiqlash';
	@override String get x2fa => 'Ikki faktorli autentifikatsiya';
	@override String get totp => 'Autentifikatsiya ilovasi';
	@override String get totpDescription => 'Bir martalik parollarni kiritish uchun autentifikatsiya ilovasidan foydalaning';
	@override String get moderator => 'Moderator';
	@override String get moderation => 'Moderatsiya';
	@override String nUsersMentioned({required Object n}) => '${n} tomonidan chop etilgan';
	@override String get securityKeyAndPasskey => 'Xavfsizlik kaliti va maxfiy so\'z';
	@override String get securityKey => 'Xavfsizlik kaliti';
	@override String get lastUsed => 'Oxirgi marta foydalanilgan';
	@override String lastUsedAt({required Object t}) => 'Oxirgi marta ${t} da foydalanilgan';
	@override String get unregister => 'ro\'yxatdan chiqarish';
	@override String get passwordLessLogin => 'Parolsiz kirshni sozlash';
	@override String get passwordLessLoginDescription => 'Parolsiz kirish';
	@override String get resetPassword => 'Parolni tiklash';
	@override String newPasswordIs({required Object password}) => 'Yangi parolingiz ${password}';
	@override String get reduceUiAnimation => 'Interfeysdagi animatsiyani kamaytirish';
	@override String get share => 'Yuborish';
	@override String get notFound => 'Topilmadi';
	@override String get notFoundDescription => 'Ushbu sahifa topilmadi';
	@override String get uploadFolder => 'Jildni yuklash';
	@override String get markAsReadAllNotifications => 'Bildirishnomalarni o\'qilgan deb belgilash';
	@override String get markAsReadAllUnreadNotes => 'Barch xabarlarni oq\'ilgan deb belgilash';
	@override String get markAsReadAllTalkMessages => 'Barcha suhbatlarni o\'qilgan deb belgilang';
	@override String get help => 'Yordam';
	@override String get inputMessageHere => 'Xabar kiriting';
	@override String get close => 'Yopish';
	@override String get invites => 'Taklif qilish';
	@override String get members => 'A\'zolar';
	@override String get transfer => 'topshiriq';
	@override String get title => 'Sarlavha';
	@override String get text => 'Matn';
	@override String get enable => 'Yoqish';
	@override String get next => 'Keyingisi';
	@override String get retype => 'Qayta kiriting';
	@override String noteOf({required Object user}) => '${user} tomonidan  joylandi\n';
	@override String get quoteAttached => 'Iqtibos';
	@override String get quoteQuestion => 'Iqtibos sifatida qo\'shilsinmi?';
	@override String get noMessagesYet => 'Bu yerda xabarlar yo\'q';
	@override String get newMessageExists => 'Yangi xabarlar bor';
	@override String get onlyOneFileCanBeAttached => 'Faqat bitta faylni biriktirish mumkin';
	@override String get signinRequired => 'Davom etishdan oldin ro\'yhatdan o\'tishingiz yoki tizimga kirishingiz kerak';
	@override String get invitations => 'Taklif qilish';
	@override String get invitationCode => 'taklif qilish kodi';
	@override String get checking => 'Tekshirilmoqda';
	@override String get available => 'Mavjud';
	@override String get unavailable => 'Mavjud emas';
	@override String get usernameInvalidFormat => 'Siz a~z, A~Z, 0~9, _ dan foydalanishingiz mumkin';
	@override String get tooShort => 'Juda qisqa';
	@override String get tooLong => 'juda uzun';
	@override String get weakPassword => 'Zaif parol';
	@override String get normalPassword => 'Oddiy parol';
	@override String get strongPassword => 'Kuchli parol';
	@override String get passwordMatched => 'Mos keldi';
	@override String get passwordNotMatched => 'mos kelmadi';
	@override String signinWith({required Object x}) => '${x} bilan tizimga kirish';
	@override String get signinFailed => 'Tizimga kirishda xatolik yuz berdi. Iltimos, foydalanuvchi nomingiz va parolingizni tekshiring.';
	@override String get or => 'yoki';
	@override String get language => 'til';
	@override String get uiLanguage => 'Interfeys tili';
	@override String aboutX({required Object x}) => '${x} haqida';
	@override String get emojiStyle => 'Emoji ko\'rinishi';
	@override String get native => 'Mahalliy';
	@override String get showNoteActionsOnlyHover => 'Eslatma amallarini faqat sichqonchani olib borganda ko‘rsatish';
	@override String get noHistory => 'Tarix yo\'q';
	@override String get signinHistory => 'kirish tarixi';
	@override String get enableAdvancedMfm => 'MFMni faollashtirish';
	@override String get doing => 'Bajarilmoqda...';
	@override String get category => 'kategoriya';
	@override String get tags => 'teg';
	@override String get docSource => 'Ushbu hujjatning manbasi';
	@override String get createAccount => 'Akkaunt yaratish';
	@override String get existingAccount => 'mavjud akkaunt';
	@override String get regenerate => 'regeneratsiya';
	@override String get fontSize => 'shrift hajmi';
	@override String limitTo({required Object x}) => '${x} gacha';
	@override String get noFollowRequests => 'obuna uchun so\'rov yo\'q';
	@override String get openImageInNewTab => 'Rasmni boshqa oynada ochish';
	@override String get dashboard => 'Boshqaruv paneli';
	@override String get local => 'Mahalliy';
	@override String get remote => 'masofaviy';
	@override String get total => 'Jami';
	@override String get weekOverWeekChanges => 'Oxirgi haftadagi o\'zgarishlar';
	@override String get dayOverDayChanges => 'Kecha bo\'lgan o\'zgarishlar';
	@override String get appearance => 'Tasgqi ko\'rinish';
	@override String get clientSettings => 'Klient sozlamalari';
	@override String get accountSettings => 'Profil sozlamalari';
	@override String get promotion => 'rag\'batlantirish';
	@override String get promote => 'targ\'ib qilish';
	@override String get numberOfDays => 'kunlar soni';
	@override String get hideThisNote => 'bu eslatmani yashiring';
	@override String get showFeaturedNotesInTimeline => 'Tanlangan qaydlarni Timelineda ko\'rsatish';
	@override String get objectStorage => 'ob\'ektni saqlash';
	@override String get useObjectStorage => 'Ob\'ektni saqlashdan foydalaning';
	@override String get objectStorageBaseUrl => 'Asosiy URL';
	@override String get objectStorageBaseUrlDesc => 'Malumot va foydalanish uchun URL. Agar siz CDN yoki proksi-serverdan foydalanayotgan bo\'lsangiz, URL manzili, S3: \'https://<bucket>.s3.amazonaws.com\', GCS va boshqalar: \'https://storage.googleapis.com/<bucket>\'.';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => 'Iltimos, foydalaniladigan xizmatning bucket nomini belgilang.';
	@override String get objectStoragePrefix => 'Prefix';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageRegion => 'Mintaqa';
	@override String get objectStorageRegionDesc => '\'xx-east-1\' kabi mintaqani belgilang. Agar xizmatingizda mintaqa tushunchasi bo\'lmasa, `us-east-1` dan foydalaning. AWS konfiguratsiya fayllari yoki muhit oʻzgaruvchilariga havola qilishda boʻsh qoldiring.';
	@override String get objectStorageUseSSL => 'SSL dan foydalaning';
	@override String get objectStorageUseSSLDesc => 'API ulanishlari uchun https dan foydalanmasangiz, belgini olib tashlang';
	@override String get objectStorageUseProxy => 'Proksi-serverdan foydalaning';
	@override String get objectStorageUseProxyDesc => 'Proksi-serverdan foydalanishni xohlamasangiz, uni o\'chiring';
	@override String get objectStorageSetPublicRead => 'Yuklashda "public-read" ni o\'rnating';
	@override String get serverLogs => 'Server protokoli';
	@override String get deleteAll => 'Hammasini o\'chirib tashlash';
	@override String get showFixedPostForm => 'Taqdim etish shaklini vaqt jadvalining yuqori qismida ko\'rsating';
	@override String get newNoteRecived => 'Yangi qaydlar mavjud emas';
	@override String get sounds => 'Tovushlar';
	@override String get sound => 'ovoz';
	@override String get listen => 'Eshitish';
	@override String get none => 'Hechnima';
	@override String get showInPage => 'Sahifada ko\'rsatish';
	@override String get popout => 'Oching';
	@override String get volume => 'Ovoz balandligi';
	@override String get details => 'Batafsil';
	@override String get chooseEmoji => 'Emojini tanlang';
	@override String get unableToProcess => 'Opertsiya bajarilmadi';
	@override String get recentUsed => 'Oxirgi ishlatilganlar';
	@override String get install => 'O‘rnatish';
	@override String get uninstall => 'O‘chirib tashlash';
	@override String get installedApps => 'O\'rnatilgan ilovalar';
	@override String get nothing => 'Hech narsa yo\'q';
	@override String get installedDate => 'O\'rnatish sanasi';
	@override String get lastUsedDate => 'Oxirgi marta ishlatilgan sana';
	@override String get state => 'Holat';
	@override String get sort => 'saralamoq';
	@override String get ascendingOrder => 'O\'sish bo\'yicha';
	@override String get descendingOrder => 'Kamayish bo\'yicha';
	@override String get scratchpad => 'Qoralama';
	@override String get output => 'Chiqish';
	@override String get script => 'Skript';
	@override String get disablePagesScript => 'AiScriptni sahifalardan o\'chirish';
	@override String get updateRemoteUser => 'Masofaviy foydalanuvchi ma\'lumotlarini yangilash';
	@override String get deleteAllFiles => 'barcha fayllarni o\'chirish';
	@override String get deleteAllFilesConfirm => 'Barcha fayllar oʻchirilsinmi?';
	@override String get removeAllFollowing => 'Barcha obunalarni o\'chirish';
	@override String get userSuspended => 'Bu foydalanuvchi muzlatilgan.';
	@override String get userSilenced => 'Ushbu foydalanuvchi jim qilingan';
	@override String get yourAccountSuspendedTitle => 'akkaunt muzlatilgan';
	@override String get yourAccountSuspendedDescription => 'Ushbu akkaunt serverning xizmat ko\'rsatish shartlarini buzish kabi sabablarga ko\'ra to\'xtatilgan. Tafsilotlar uchun administratoringizga murojaat qiling. Iltimos, yangi akkaunt yaratmang.';
	@override String get tokenRevoked => 'token yaroqsiz';
	@override String get tokenRevokedDescription => 'Kirish tokeningizni muddati tugagan. Iltimos, qaytadan kiring.';
	@override String get accountDeleted => 'akkaunt o\'chirildi';
	@override String get accountDeletedDescription => 'Bu akkaunt oʻchirildi.';
	@override String get menu => 'Menyu';
	@override String get divider => 'Ajratrmoq';
	@override String get addItem => 'Element qo\'shish';
	@override String get rearrange => 'Qayta saralash';
	@override String get inboxUrl => 'Qabul qilingan xabarlar URL manzili';
	@override String get serviceworkerInfo => 'bildirishnomalar uchun yoqilgan bo\'lishi kerak.';
	@override String get deletedNote => 'Oʻchirilgan post';
	@override String get visibility => 'Ko\'rinishi';
	@override String get poll => 'So\'ro\'vnoma';
	@override String get useCw => 'Kontentni yashirish';
	@override String get enablePlayer => 'Video pleyerni ochish';
	@override String get disablePlayer => 'Video pleyerni yopish';
	@override String get expandTweet => 'Xabarni kengaytirish';
	@override String get themeEditor => 'Rang sxemasi muharriri';
	@override String get description => 'tavsif';
	@override String get describeFile => 'sarlavha qo\'shing';
	@override String get enterFileDescription => 'sarlavha kiriting';
	@override String get author => 'muallif';
	@override String get leaveConfirm => 'Sizda saqlanmagan oʻzgarishlar bor. Bekor qilinsinmi?';
	@override String get manage => 'Administratsiya';
	@override String get plugins => 'Kengaytmalar, plaginlar';
	@override String get preferencesBackups => 'Sozlamalarni zahiralash';
	@override String get useBlurEffectForModal => 'Modal uchun xiralashtirish effektidan foydalaning';
	@override String get useFullReactionPicker => 'Katta oynada reaksiya tanlash';
	@override String get width => 'kengligi';
	@override String get height => 'balandligi';
	@override String get large => 'Katta';
	@override String get medium => 'O\'rta';
	@override String get small => 'kichik';
	@override String get generateAccessToken => 'Kirish tokenini yaratish';
	@override String get permission => 'Ruxsatlar';
	@override String get enableAll => 'Yoqish';
	@override String get disableAll => 'hammasini o\'chirib qo\'ying';
	@override String get tokenRequested => 'Hisobga kirish';
	@override String get pluginTokenRequestedDescription => 'Bu plagin shu yerda belgilanganlarga qodir bo\'ladi';
	@override String get notificationType => 'Bildirishnoma turi';
	@override String get edit => 'Tahrirlash';
	@override String get emailServer => 'Email server';
	@override String get email => 'Email';
	@override String get emailAddress => 'E-pochtangiz:';
	@override String get smtpConfig => 'SMTP server sozlamalari';
	@override String get smtpHost => 'Host';
	@override String get smtpPort => 'Port';
	@override String get smtpUser => 'Foydalanuvchi nomi';
	@override String get smtpPass => 'Parol';
	@override String get testEmail => 'Email jo\'natmani testlash';
	@override String userSaysSomething({required Object name}) => '${name} nimadir dedi';
	@override String get makeActive => 'Faol';
	@override String get display => 'Displey';
	@override String get copy => 'Nusxa olish';
	@override String get metrics => 'Metrikalar';
	@override String get overview => 'Umumiy ma\'lumot';
	@override String get logs => 'Jurnallar';
	@override String get delayed => 'Kechiktirildi';
	@override String get database => 'Ma\'lumotlar bazasi';
	@override String get channel => 'Kanallar';
	@override String get create => 'Yaratish';
	@override String get notificationSetting => 'Bildirishnoma sozlamalari';
	@override String get notificationSettingDesc => 'Ko\'rsatish uchun bildirishnoma turlarini tanlang.';
	@override String get useGlobalSetting => 'Global sozlamalardan foydalanish';
	@override String get other => 'Qo‘shimcha';
	@override String get regenerateLoginToken => 'Kirish tokenini qayta yaratish';
	@override String get setMultipleBySeparatingWithSpace => 'Bo\'sh joy qoldirib, bir necha ma\'lumot kiritish mumkin';
	@override String get fileIdOrUrl => 'Fayl ID\'si yoki URL havolasi';
	@override String get behavior => 'Hatti-harakatlar';
	@override String get sample => 'Namuna';
	@override String get abuseReports => 'Shikoyatlar';
	@override String get reportAbuse => 'Shikoyat qilish';
	@override String reportAbuseOf({required Object name}) => '${name} ustidan shikoyat qilish';
	@override String get abuseReported => 'Shikoyatingiz yetkazildi. Ma\'lumot uchun rahmat.';
	@override String get reporter => 'Shikoyat qiluvchi';
	@override String get reporteeOrigin => 'Xabarning kelib chiqishi';
	@override String get reporterOrigin => 'Xabarchining joylashuvi';
	@override String get forwardReport => 'Xabarni masofadagi serverga yuborish';
	@override String get forwardReportIsAnonymous => 'Sizning yuborayotgan xabaringiz o\'z akkountingiz emas balki anonim tarzda qoladi';
	@override String get send => 'Yuborish';
	@override String get abuseMarkAsResolved => 'Yuborilgan xabarni hal qilingan deb belgilash';
	@override String get openInNewTab => 'Yangi tab da ochish';
	@override String get openInSideView => 'Yon panelda ochish';
	@override String get defaultNavigationBehaviour => 'Standart navigatsiya harakati';
	@override String get editTheseSettingsMayBreakAccount => 'Bu sozlamalarni o\'zgartirish hisobingizga zarar yetkazishi mumkin.';
	@override String waitingFor({required Object x}) => '${x}ni kutayapman';
	@override String get random => 'Tasodifiy';
	@override String get system => 'Tizim';
	@override String get switchUi => 'Interfeysni almashtirish';
	@override String get desktop => 'Brauzer rejimi';
	@override String get clip => 'Klip';
	@override String get createNew => 'Yangi yaratish';
	@override String get optional => 'Ixtiyoriy';
	@override String get createNewClip => 'Yangi klip yaratish';
	@override String get unclip => 'qirqish\n';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'Ushbu xat allaqachon "${name}" klipga tegishli. Uni ushbu klipdan olib tashlashni xohlaysizmi?';
	@override String get public => 'Ommaviy';
	@override String i18nInfo({required Object link}) => 'Misskey bir qancha volontyorlar yordamida bir qancha tillarga tarjima qilingan. Ushbu ${link} orqali ularga yordam berishingiz mumkin.';
	@override String get manageAccessTokens => 'Kirish tokenlarini boshqarish';
	@override String get accountInfo => 'Akkount haqida ma\'lumot';
	@override String get notesCount => 'Xatlar soni';
	@override String get repliesCount => 'Yuborilgan javoblar soni';
	@override String get renotesCount => 'Qayta yuborilgan xatlar soni';
	@override String get repliedCount => 'Qabul qilingan javoblar soni';
	@override String get renotedCount => 'Qayta yuborilgan xatlar soni';
	@override String get followingCount => 'Obuna bo\'lingan akkountlar soni';
	@override String get followersCount => 'Obunachilar soni';
	@override String get sentReactionsCount => 'Yuborilgan reaksiyalar soni';
	@override String get receivedReactionsCount => 'Qabul qilingan reaksiyalar soni';
	@override String get pollVotesCount => 'Berilgan ovozlar soni';
	@override String get pollVotedCount => 'Qabul qilingan ovozlar soni';
	@override String get yes => 'Ha';
	@override String get no => 'Yo\'q';
	@override String get driveFilesCount => 'Diskdagi fayllar soni';
	@override String get driveUsage => 'Ishlatilgan disk joyi';
	@override String get noCrawleDescription => 'Qidiruv tizimlari sizning profilingiz, sahifalaringiz, xatlaringiz va hokazolarni belgilamasligi uchun so\'rov yuborish';
	@override String get lockedAccountInfo => 'Xatlaringizni faqatgina obunachilaringizga ko\'rsatishni xohlasangiz unda "Faqat Obunachilar uchun" xususiyatini yoqishingiz lozim. Bo\'lmasa sizning yozgan xatlaringiz hammaga ko\'rinadi.';
	@override String get alwaysMarkSensitive => 'Avvaldan ta\'sirchan kontent deb belgilash';
	@override String get loadRawImages => 'Thumbnaillarsiz Original rasmni yuklash';
	@override String get disableShowingAnimatedImages => 'Animatsiyali rasmlarni ko\'rsatmaslik';
	@override String get verificationEmailSent => 'Emailingizga tasdiqlash xabari yuborildi. Iltimos linkda ko\'rsatilgan amallarga rioya qiling';
	@override String get notSet => 'Sozlanmagan';
	@override String get emailVerified => 'Elektron pochta manzili tasdiqlandi';
	@override String get pageLikesCount => 'Sahifadagi like\'lar soni';
	@override String get contact => 'aloqa uchun manzil';
	@override String get useSystemFont => 'Tizimdagi standart shriftidan foydalaning';
	@override String get clips => 'Klip';
	@override String get experimentalFeatures => 'eksperimental xususiyatlar';
	@override String get experimental => 'eksperimental';
	@override String get developer => 'Dasturchi';
	@override String get makeExplorable => 'Akkauntingizni topishni osonlashtiring';
	@override String get duplicate => 'Dublikat';
	@override String get left => 'Chap(dagi)';
	@override String get center => 'Markaz';
	@override String get wide => 'Keng';
	@override String get narrow => 'Tor';
	@override String get reloadToApplySetting => 'Bu sozlamalar sahifa yangilangandagina kuchga kiradi. Hozir yangilashni istaysizmi?';
	@override String get needReloadToApply => 'Sahifani yangilash talab etiladi.';
	@override String get clearCache => 'Keshni tozalash';
	@override String onlineUsersCount({required Object n}) => 'Faol userlar ${n}';
	@override String nUsers({required Object n}) => '${n} ta foydalanuvchi';
	@override String get myTheme => 'Mening rang sxemam';
	@override String get backgroundColor => 'Fon';
	@override String get accentColor => 'Urg\'u';
	@override String get textColor => 'Matn';
	@override String get saveAs => 'Boshqacha saqlash';
	@override String get advanced => 'Murakkab';
	@override String get advancedSettings => 'Qo\'shimcha sozlashlar';
	@override String get value => 'Qiymati';
	@override String get createdAt => 'Yaratilish vaqti';
	@override String get updatedAt => 'yangilangan sana';
	@override String get saveConfirm => 'O\'zgartirishni saqlash?';
	@override String get deleteConfirm => 'o\'chirishni tasdiqlash';
	@override String get invalidValue => 'noto\'g\'ri qiymat';
	@override String get registry => 'ro\'yhatga olish';
	@override String get closeAccount => 'hisobni yopish / profilni yopish';
	@override String get currentVersion => 'joriy versiya';
	@override String get latestVersion => 'so\'ngi versiya';
	@override String get youAreRunningUpToDateClient => 'siz so\'ngi versiyali ilovani ishlatyapsiz';
	@override String get newVersionOfClientAvailable => 'Mijozning yangi versiyasi mavjud.';
	@override String get usageAmount => 'foydalanish miqdori';
	@override String get capacity => 'sig\'im';
	@override String get inUse => 'allaqachon band';
	@override String get editCode => 'kodni tahrirlash';
	@override String get apply => 'Ilova';
	@override String get receiveAnnouncementFromInstance => 'Serverdan bildirishnomalarni oling';
	@override String get emailNotification => 'E-mail xabarlari';
	@override String get publish => 'Chiqarish';
	@override String get inChannelSearch => 'Kanal qidirish';
	@override String get useReactionPickerForContextMenu => 'kontekst menyusi uchun reaktsiya tanlash vositasidan foydalaning';
	@override String typingUsers({required Object users}) => '${users} yozmoqda';
	@override String get jumpToSpecifiedDate => 'Muayyan sanaga o\'tish';
	@override String get showingPastTimeline => 'O\'tgan vaqt jadvallarini ko\'rsatish';
	@override String get clear => 'aniq';
	@override String get markAllAsRead => 'hammasini o\'qilgan deb belgilang';
	@override String get goBack => 'qaytish';
	@override String get unlikeConfirm => 'Un like qilishni xohlaysizmi?';
	@override String get fullView => 'to\'liq ko\'rish';
	@override String get quitFullView => 'Toʻliq koʻrishdan chiqish';
	@override String get addDescription => 'Tavsif qo\'shing';
	@override String get info => 'Haqida';
	@override String get userInfo => 'Foydalanuvchi ma\'lumotlari';
	@override String get unknown => 'aniq emas';
	@override String get onlineStatus => 'onlayn holat';
	@override String get hideOnlineStatus => 'onlayn holatni yashirish';
	@override String get hideOnlineStatusDescription => 'Onlayn statusingizni yashirish, qidiruv kabi baʼzi funksiyalardan foydalanish imkoniyatini kamaytirishi mumkin.';
	@override String get online => 'onlayn';
	@override String get active => 'Aktiv';
	@override String get offline => 'oflayn';
	@override String get notRecommended => 'tavsiya etilmaydi';
	@override String get selectAccount => 'Akkauntni tanlang';
	@override String get switchAccount => 'akkauntni almashtirish';
	@override String get enabled => 'yaroqli';
	@override String get disabled => 'yaroqsiz';
	@override String get quickAction => 'tezkor harakat';
	@override String get user => 'Foydalanuvchilar';
	@override String get administration => 'Administratsiya';
	@override String get accounts => 'akkaunt';
	@override String get switch_ => 'almashtirish';
	@override String get noBotProtectionWarning => 'Bot himoyasi sozlanmagan.';
	@override String get configure => 'sozlamoq';
	@override String get postToGallery => 'Yangi galleriya posti';
	@override String get gallery => 'Galereya';
	@override String get recentPosts => 'So\'nggi postlar';
	@override String get popularPosts => 'Mashhur postlar';
	@override String get shareWithNote => 'Eslatmani ulashish';
	@override String get ads => 'Reklama';
	@override String get startingperiod => 'Boshlanish davri';
	@override String get memo => 'Eslatma';
	@override String get priority => 'Ustuvorlik';
	@override String get high => 'Yuqori';
	@override String get middle => 'O\'rta';
	@override String get low => 'Quyi';
	@override String get ratio => 'nisbat';
	@override String get previewNoteText => 'Razm solish';
	@override String get customCss => 'Maxsus CSS';
	@override String get global => 'Global';
	@override String get squareAvatars => 'Kvadrat avatarkalar';
	@override String get sent => 'Yuborish';
	@override String get received => 'Qabul qilingan';
	@override String get searchResult => 'Qidiruv natijalari';
	@override String get hashtags => 'Hashteglar';
	@override String get troubleshooting => 'Muammolarni bartaraf qilish';
	@override String get useBlurEffect => 'Interfeysda xiralashtiruvchi effektlardan foydalanish';
	@override String get learnMore => 'Batafsilroq';
	@override String get misskeyUpdated => 'Misskey yangilandi!';
	@override String get whatIsNew => 'O\'zgarishlarni ko\'rish';
	@override String get translate => 'Tarjima qilish';
	@override String translatedFrom({required Object x}) => '${x} tilidan tarjima qilindi';
	@override String get devMode => 'Dasturchi rejimi';
	@override String get lastCommunication => 'Oxirgi muloqot';
	@override String get resolved => 'Hal qilingan';
	@override String get unresolved => 'Hal qilinmagan';
	@override String get breakFollow => 'Obunachini o\'chirish';
	@override String get breakFollowConfirm => 'Obunachini o\'chirmoqchimisiz?';
	@override String get itsOn => 'Yoqilgan';
	@override String get itsOff => 'O\'chirilgan';
	@override String get on => 'Yoqish';
	@override String get off => 'O\'chirish';
	@override String get emailRequiredForSignup => 'Ro\'yxatdan o\'tish uchun email talab qilish';
	@override String get unread => 'Oʻqilmagan xabarlar';
	@override String get filter => 'Filter';
	@override String get controlPanel => 'Boshqaruv paneli';
	@override String get manageAccounts => 'Hisobni boshqarish';
	@override String get classic => 'Klassik';
	@override String get hide => 'Yashirish';
	@override String get searchByGoogle => 'Izlash';
	@override String get indefinitely => 'Hech qachon';
	@override String get file => 'Fayllar';
	@override String get recommended => 'Tavsiya qilingan';
	@override String get check => 'Tekshirish';
	@override String get requireAdminForView => 'Ko\'rish uchun adminstrator hisobi bilan tizimga kirgan bo\'lishingiz kerak.';
	@override String get isSystemAccount => 'Ushbu hisob tizim tomonidan avtomatik tarzda yaratilgan va boshqariladi.';
	@override String typeToConfirm({required Object x}) => 'Ushbu amalni bajarish uchun ${x}ni kiriting';
	@override String get deleteAccount => 'Hisobni o\'chirish';
	@override String get document => 'hujjat';
	@override String get numberOfPageCache => 'Sahifa keshlar soni';
	@override String get logoutConfirm => 'Chiqishni xohlaysizmi?';
	@override String get lastActiveDate => 'oxirgi foydalanish sanasi';
	@override String get statusbar => 'Holat paneli';
	@override String get pleaseSelect => 'Iltimos tanlang';
	@override String get reverse => 'Teskari';
	@override String get colored => 'rangli';
	@override String get refreshInterval => 'yangilash oralig\'i';
	@override String get label => 'Yorliq';
	@override String get type => 'turi';
	@override String get speed => 'tezlik';
	@override String get slow => 'Sekin';
	@override String get fast => 'Tez';
	@override String get localOnly => 'Faqat mahalliy';
	@override String get remoteOnly => 'faqat masofadan turib';
	@override String get failedToUpload => 'yuklanmadi';
	@override String get cannotUploadBecauseInappropriate => 'Faylni yuklab bo\'lmaydi, chunki unda nomaqbul kontent borligi aniqlangan.';
	@override String get cannotUploadBecauseNoFreeSpace => 'Yuklab bo\'lmadi, chunki diskda bo\'sh joy yo\'q.';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'Faylni yuklash mumkin emas, chunki u fayl hajmi chegarasidan oshib ketgan.';
	@override String get beta => 'beta';
	@override String get account => 'akkaunt';
	@override String get show => 'Displey';
	@override String get color => 'Rang';
	@override String get disableFederationConfirm => 'Federatsiyani o\'chirmoqchimisiz?';
	@override String get disableFederationOk => 'O\'chirish';
	@override String get emailNotSupported => 'Bu server E-pochtalar yuborishni qo\'llab-quvvatlamaydi';
	@override String get postToTheChannel => 'Kanalga joylash';
	@override String get cannotBeChangedLater => 'Buni keyinchalik o\'zgartirishni iloji yo\'q';
	@override String get likeOnly => 'Faqat like\'lar';
	@override String get nonSensitiveOnly => 'Xavfsiz rejim';
	@override String get rolesAssignedToMe => 'Mening rollarim';
	@override String get resetPasswordConfirm => 'Qayta parol o\'rnatmoqchimisiz?';
	@override String get sensitiveWords => 'Ta\'sirchan so\'zlar';
	@override String get icon => 'Avatar';
	@override String get replies => 'Javob berish';
	@override String get renotes => 'Qayta qayd etish';
	@override String get flip => 'Teskari';
	@override late final _StringsMisskeyDeliveryUzUz delivery_ = _StringsMisskeyDeliveryUzUz._(_root);
	@override late final _StringsMisskeyAchievementsUzUz achievements_ = _StringsMisskeyAchievementsUzUz._(_root);
	@override late final _StringsMisskeyRoleUzUz role_ = _StringsMisskeyRoleUzUz._(_root);
	@override late final _StringsMisskeyFfVisibilityUzUz ffVisibility_ = _StringsMisskeyFfVisibilityUzUz._(_root);
	@override late final _StringsMisskeyAdUzUz ad_ = _StringsMisskeyAdUzUz._(_root);
	@override late final _StringsMisskeyEmailUzUz email_ = _StringsMisskeyEmailUzUz._(_root);
	@override late final _StringsMisskeyRegistryUzUz registry_ = _StringsMisskeyRegistryUzUz._(_root);
	@override late final _StringsMisskeyInstanceTickerUzUz instanceTicker_ = _StringsMisskeyInstanceTickerUzUz._(_root);
	@override late final _StringsMisskeyThemeUzUz theme_ = _StringsMisskeyThemeUzUz._(_root);
	@override late final _StringsMisskeySfxUzUz sfx_ = _StringsMisskeySfxUzUz._(_root);
	@override late final _StringsMisskeyAgoUzUz ago_ = _StringsMisskeyAgoUzUz._(_root);
	@override late final _StringsMisskeyX2faUzUz x2fa_ = _StringsMisskeyX2faUzUz._(_root);
	@override late final _StringsMisskeyPermissionsUzUz permissions_ = _StringsMisskeyPermissionsUzUz._(_root);
	@override late final _StringsMisskeyWeekdayUzUz weekday_ = _StringsMisskeyWeekdayUzUz._(_root);
	@override late final _StringsMisskeyWidgetsUzUz widgets_ = _StringsMisskeyWidgetsUzUz._(_root);
	@override late final _StringsMisskeyCwUzUz cw_ = _StringsMisskeyCwUzUz._(_root);
	@override late final _StringsMisskeyPollUzUz poll_ = _StringsMisskeyPollUzUz._(_root);
	@override late final _StringsMisskeyVisibilityUzUz visibility_ = _StringsMisskeyVisibilityUzUz._(_root);
	@override late final _StringsMisskeyProfileUzUz profile_ = _StringsMisskeyProfileUzUz._(_root);
	@override late final _StringsMisskeyExportOrImportUzUz exportOrImport_ = _StringsMisskeyExportOrImportUzUz._(_root);
	@override late final _StringsMisskeyChartsUzUz charts_ = _StringsMisskeyChartsUzUz._(_root);
	@override late final _StringsMisskeyInstanceChartsUzUz instanceCharts_ = _StringsMisskeyInstanceChartsUzUz._(_root);
	@override late final _StringsMisskeyTimelinesUzUz timelines_ = _StringsMisskeyTimelinesUzUz._(_root);
	@override late final _StringsMisskeyPlayUzUz play_ = _StringsMisskeyPlayUzUz._(_root);
	@override late final _StringsMisskeyPagesUzUz pages_ = _StringsMisskeyPagesUzUz._(_root);
	@override late final _StringsMisskeyRelayStatusUzUz relayStatus_ = _StringsMisskeyRelayStatusUzUz._(_root);
	@override late final _StringsMisskeyNotificationUzUz notification_ = _StringsMisskeyNotificationUzUz._(_root);
	@override late final _StringsMisskeyDeckUzUz deck_ = _StringsMisskeyDeckUzUz._(_root);
	@override late final _StringsMisskeyWebhookSettingsUzUz webhookSettings_ = _StringsMisskeyWebhookSettingsUzUz._(_root);
	@override late final _StringsMisskeyAbuseReportUzUz abuseReport_ = _StringsMisskeyAbuseReportUzUz._(_root);
	@override late final _StringsMisskeyModerationLogTypesUzUz moderationLogTypes_ = _StringsMisskeyModerationLogTypesUzUz._(_root);
	@override late final _StringsMisskeyReversiUzUz reversi_ = _StringsMisskeyReversiUzUz._(_root);
}

// Path: misskey.delivery_
class _StringsMisskeyDeliveryUzUz extends _StringsMisskeyDeliveryEnUs {
	_StringsMisskeyDeliveryUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get stop => 'To\'xtatilgan';
	@override late final _StringsMisskeyDeliveryTypeUzUz type_ = _StringsMisskeyDeliveryTypeUzUz._(_root);
}

// Path: misskey.achievements_
class _StringsMisskeyAchievementsUzUz extends _StringsMisskeyAchievementsEnUs {
	_StringsMisskeyAchievementsUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAchievementsTypesUzUz types_ = _StringsMisskeyAchievementsTypesUzUz._(_root);
}

// Path: misskey.role_
class _StringsMisskeyRoleUzUz extends _StringsMisskeyRoleEnUs {
	_StringsMisskeyRoleUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get priority => 'Ustuvorlik';
	@override late final _StringsMisskeyRolePriorityUzUz priority_ = _StringsMisskeyRolePriorityUzUz._(_root);
}

// Path: misskey.ffVisibility_
class _StringsMisskeyFfVisibilityUzUz extends _StringsMisskeyFfVisibilityEnUs {
	_StringsMisskeyFfVisibilityUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get public => 'Chiqarish';
}

// Path: misskey.ad_
class _StringsMisskeyAdUzUz extends _StringsMisskeyAdEnUs {
	_StringsMisskeyAdUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get back => 'qaytish';
	@override String get hide => 'Boshqa ko\'rsatilmasin';
}

// Path: misskey.email_
class _StringsMisskeyEmailUzUz extends _StringsMisskeyEmailEnUs {
	_StringsMisskeyEmailUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyEmailFollowUzUz follow_ = _StringsMisskeyEmailFollowUzUz._(_root);
}

// Path: misskey.registry_
class _StringsMisskeyRegistryUzUz extends _StringsMisskeyRegistryEnUs {
	_StringsMisskeyRegistryUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get key => 'Kalit';
	@override String get keys => 'Kalit';
}

// Path: misskey.instanceTicker_
class _StringsMisskeyInstanceTickerUzUz extends _StringsMisskeyInstanceTickerEnUs {
	_StringsMisskeyInstanceTickerUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get none => 'Boshqa ko\'rsatilmasin';
	@override String get always => 'Doimo ko\'rsatilsin';
}

// Path: misskey.theme_
class _StringsMisskeyThemeUzUz extends _StringsMisskeyThemeEnUs {
	_StringsMisskeyThemeUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get install => 'Rang sxemasini o\'rnatish';
	@override String get manage => 'Rang sxemalarini boshqarish';
	@override String get code => 'Rang sxemasining kodi';
	@override String get description => 'Tavsif';
	@override String installed({required Object name}) => '${name} o\'rnatildi';
	@override String get installedThemes => 'O\'rnatilgan rang sxemalari';
	@override String get alreadyInstalled => 'Ushbu rang sxemasi allaqachon o\'rnatilgan';
	@override String get invalid => 'Ushbu rang sxemasining formati yaroqsiz';
	@override String get make => 'Rang sxemasini yasash';
	@override String get base => 'Asos';
	@override String get addConstant => 'O\'zgarmas qo\'shish';
	@override String get constant => 'O\'zgarmas';
	@override String get color => 'Rang';
	@override String get key => 'Kalit';
	@override String get func => 'Funksiyalar';
	@override String get funcKind => 'Funksiya turi';
	@override String get argument => 'Argument';
	@override String get darken => 'Qoraytirish';
	@override String get lighten => 'Yoritish';
	@override String get inputConstantName => 'Ushbu o\'zgarmas uchun nom kiriting';
	@override String deleteConstantConfirm({required Object const_}) => 'Siz rostdan ham ${const_} o\'zgarmasni o\'chirmoqchimisiz?';
	@override late final _StringsMisskeyThemeKeysUzUz keys = _StringsMisskeyThemeKeysUzUz._(_root);
}

// Path: misskey.sfx_
class _StringsMisskeySfxUzUz extends _StringsMisskeySfxEnUs {
	_StringsMisskeySfxUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get note => 'Qaydlar';
	@override String get notification => 'Xabarnomalar';
}

// Path: misskey.ago_
class _StringsMisskeyAgoUzUz extends _StringsMisskeyAgoEnUs {
	_StringsMisskeyAgoUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String minutesAgo({required Object n}) => '${n} daqiqa oldin';
	@override String hoursAgo({required Object n}) => '${n} soat oldin';
	@override String daysAgo({required Object n}) => '${n} kun oldin';
	@override String get invalid => 'Hech narsa yo\'q';
}

// Path: misskey.x2fa_
class _StringsMisskeyX2faUzUz extends _StringsMisskeyX2faEnUs {
	_StringsMisskeyX2faUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get renewTOTPCancel => 'Hozir emas';
}

// Path: misskey.permissions_
class _StringsMisskeyPermissionsUzUz extends _StringsMisskeyPermissionsEnUs {
	_StringsMisskeyPermissionsUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get readBlocks => 'Bloklangan foydalanuvchilar roʻyxatini koʻring';
	@override String get writeBlocks => 'Bloklangan foydalanuvchilar roʻyxatini tahrirlang';
}

// Path: misskey.weekday_
class _StringsMisskeyWeekdayUzUz extends _StringsMisskeyWeekdayEnUs {
	_StringsMisskeyWeekdayUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get saturday => 'Shanba';
}

// Path: misskey.widgets_
class _StringsMisskeyWidgetsUzUz extends _StringsMisskeyWidgetsEnUs {
	_StringsMisskeyWidgetsUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Profil';
	@override String get instanceInfo => 'Instans haqida ma\'lumot';
	@override String get notifications => 'Xabarnomalar';
	@override String get timeline => 'Xronologiya';
	@override String get clock => 'Soat';
	@override String get activity => 'Faollik';
	@override String get photos => 'Rasmlar';
	@override String get digitalClock => 'Raqamli soat';
	@override String get unixClock => 'UNIX soat';
	@override String get federation => 'Federatsiya';
	@override String get button => 'Tugma';
	@override String get jobQueue => 'Vazifalar navbati';
	@override late final _StringsMisskeyWidgetsUserListUzUz userList_ = _StringsMisskeyWidgetsUserListUzUz._(_root);
}

// Path: misskey.cw_
class _StringsMisskeyCwUzUz extends _StringsMisskeyCwEnUs {
	_StringsMisskeyCwUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get show => 'Ko‘proq ko‘rish';
	@override String chars({required Object count}) => '${count} ta belgi(lar)';
	@override String files({required Object count}) => '${count} ta fayl(lar)';
}

// Path: misskey.poll_
class _StringsMisskeyPollUzUz extends _StringsMisskeyPollEnUs {
	_StringsMisskeyPollUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'Kamida ikkita tanvol kerak';
	@override String get infinite => 'Hech qachon';
	@override String get at => '...da tugatish';
	@override String get after => '...dan keyin tugatish';
	@override String get deadlineTime => 'Vaqt';
	@override String get duration => 'Davomiylik';
	@override String votesCount({required Object n}) => '${n} ovozlar';
	@override String totalVotes({required Object n}) => 'Umuman ${n} ovozlar';
	@override String get vote => 'Ovoz berish';
	@override String get showResult => 'Natijalarni ko\'rish';
	@override String get voted => 'Ovoz berildi';
	@override String get closed => 'Yakunladi';
	@override String remainingDays({required Object d, required Object h}) => '${d} kun ${h} soat qoldi';
	@override String remainingHours({required Object h, required Object m}) => '${h} soat ${m} daqiqa qoldi';
	@override String remainingMinutes({required Object m, required Object s}) => '${m} daqiqa ${s} sekund qoldi';
	@override String remainingSeconds({required Object s}) => '${s} sekund qoldi';
}

// Path: misskey.visibility_
class _StringsMisskeyVisibilityUzUz extends _StringsMisskeyVisibilityEnUs {
	_StringsMisskeyVisibilityUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get public => 'Ommaviy';
	@override String get publicDescription => 'Sizning ovozingiz barcha foydalanuvchilarga ko\'rinadi';
	@override String get home => 'Bosh sahifa';
	@override String get followers => 'Obunachilar';
	@override String get specified => 'Bevosita';
}

// Path: misskey.profile_
class _StringsMisskeyProfileUzUz extends _StringsMisskeyProfileEnUs {
	_StringsMisskeyProfileUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ism';
	@override String get username => 'Foydalanuvchi nomi';
	@override String get description => 'Biografiya';
	@override String get metadata => 'Qo\'shimcha ma\'lumot';
	@override String get metadataLabel => 'Yorliq';
	@override String get metadataContent => 'Tarkib';
	@override String get changeBanner => 'Bannerni o\'zgartirish';
}

// Path: misskey.exportOrImport_
class _StringsMisskeyExportOrImportUzUz extends _StringsMisskeyExportOrImportEnUs {
	_StringsMisskeyExportOrImportUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Barcha qaydlar';
	@override String get clips => 'Klip';
	@override String get followingList => 'Obuna bo‘lish';
	@override String get muteList => 'Ovozni o‘chirish';
	@override String get blockingList => 'Bloklangan foydalanuvchilar';
	@override String get userLists => 'Ro\'yxatlar';
}

// Path: misskey.charts_
class _StringsMisskeyChartsUzUz extends _StringsMisskeyChartsEnUs {
	_StringsMisskeyChartsUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Federatsiya';
	@override String get apRequest => 'So\'rovlar';
	@override String get usersTotal => 'Foydalanuvchilarning umumiy soni';
	@override String get activeUsers => 'Faol foydalanuvchilar';
	@override String get notesTotal => 'Qaydlarning umumiy soni';
	@override String get filesTotal => 'Fayllarning umumiy soni';
}

// Path: misskey.instanceCharts_
class _StringsMisskeyInstanceChartsUzUz extends _StringsMisskeyInstanceChartsEnUs {
	_StringsMisskeyInstanceChartsUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get requests => 'So\'rovlar';
	@override String get notes => 'Qaydlar sonidagi farq';
	@override String get cacheSize => 'Kesh hajmidagi farq';
	@override String get files => 'Fayllar sonidagi farq';
}

// Path: misskey.timelines_
class _StringsMisskeyTimelinesUzUz extends _StringsMisskeyTimelinesEnUs {
	_StringsMisskeyTimelinesUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get home => 'Bosh sahifa';
	@override String get local => 'Mahalliy';
	@override String get social => 'Ijtimoiy';
	@override String get global => 'Global';
}

// Path: misskey.play_
class _StringsMisskeyPlayUzUz extends _StringsMisskeyPlayEnUs {
	_StringsMisskeyPlayUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get featured => 'Mashhur';
	@override String get title => 'Sarlavha';
	@override String get script => 'Skript';
	@override String get summary => 'Tavsif';
}

// Path: misskey.pages_
class _StringsMisskeyPagesUzUz extends _StringsMisskeyPagesEnUs {
	_StringsMisskeyPagesUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'Yangi Sahifa yaratish';
	@override String get editPage => 'Ushbu Sahifani tahrirlash';
	@override String get created => 'Sahifa muvaffaqiyatli yaratildi';
	@override String get updated => 'Sahifa muvaffaqiyatli tahrirlandi';
	@override String get deleted => 'Sahifa muvaffaqiyatli o\'chirildi';
	@override String get pageSetting => 'Sahifa sozlamalari';
	@override String get nameAlreadyExists => 'Ko\'rsatilgan Sahifa URL\'i allaqachon mavjud';
	@override String get invalidNameTitle => 'Ko\'rsatilgan Sahifa URL\'i yaroqsiz';
	@override String get editThisPage => 'Ushbu Sahifani tahrirlash';
	@override String get viewPage => 'Sizning Sahifalaringizni ko\'rish';
	@override String get my => 'Mening Sahifalarim';
	@override String get featured => 'Mashhur';
	@override String get contents => 'Tarkib';
	@override String get title => 'Sarlavha';
	@override String get url => 'Sahifa URL\'i';
	@override String get summary => 'Sahifa bayoni';
	@override String get font => 'Shrift';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
	@override String get selectType => 'Turni tanlang';
	@override String get contentBlocks => 'Tarkib';
	@override late final _StringsMisskeyPagesBlocksUzUz blocks = _StringsMisskeyPagesBlocksUzUz._(_root);
}

// Path: misskey.relayStatus_
class _StringsMisskeyRelayStatusUzUz extends _StringsMisskeyRelayStatusEnUs {
	_StringsMisskeyRelayStatusUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'Kutilmoqda';
	@override String get accepted => 'Tasdiqlandi';
	@override String get rejected => 'Rad etildi';
}

// Path: misskey.notification_
class _StringsMisskeyNotificationUzUz extends _StringsMisskeyNotificationEnUs {
	_StringsMisskeyNotificationUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'Fayl muvaffaqiyatli yuklandi';
	@override String youGotMention({required Object name}) => '${name} sizni eslab o\'tdi';
	@override String youGotReply({required Object name}) => '${name} sizga javob berdi';
	@override String youGotQuote({required Object name}) => '${name} sizdan iqtibos keltirdi';
	@override String youRenoted({required Object name}) => '${name} dan qayta qayd qilish';
	@override String get youWereFollowed => 'sizga obuna bo\'ldi';
	@override String unreadAntennaNote({required Object name}) => 'Antenna ${name}';
	@override late final _StringsMisskeyNotificationTypesUzUz types_ = _StringsMisskeyNotificationTypesUzUz._(_root);
	@override late final _StringsMisskeyNotificationActionsUzUz actions_ = _StringsMisskeyNotificationActionsUzUz._(_root);
}

// Path: misskey.deck_
class _StringsMisskeyDeckUzUz extends _StringsMisskeyDeckEnUs {
	_StringsMisskeyDeckUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Har doim asosiy ustunni ko\'rsatish';
	@override String get columnAlign => 'Ustunlarni tekislash';
	@override String get addColumn => 'Ustun qo\'shish';
	@override String get configureColumn => 'Ustun sozlamalari';
	@override String get swapLeft => 'Chapdagi ustun bilan joyni almashtirish';
	@override String get swapRight => 'O\'ngdagi ustun bilan joyni almashtirish';
	@override String get swapUp => 'Yuqoridagi ustun bilan joyni almashtirish';
	@override String get swapDown => 'Quyidagi ustun bilan joyni almashtirish';
	@override String get profile => 'Profil';
	@override String get newProfile => 'Yangi profil';
	@override String get deleteProfile => 'Profilni o‘chirib tashlash';
	@override late final _StringsMisskeyDeckColumnsUzUz columns_ = _StringsMisskeyDeckColumnsUzUz._(_root);
}

// Path: misskey.webhookSettings_
class _StringsMisskeyWebhookSettingsUzUz extends _StringsMisskeyWebhookSettingsEnUs {
	_StringsMisskeyWebhookSettingsUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ism';
	@override String get active => 'Yoqilgan';
	@override late final _StringsMisskeyWebhookSettingsEventsUzUz events_ = _StringsMisskeyWebhookSettingsEventsUzUz._(_root);
}

// Path: misskey.abuseReport_
class _StringsMisskeyAbuseReportUzUz extends _StringsMisskeyAbuseReportEnUs {
	_StringsMisskeyAbuseReportUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAbuseReportNotificationRecipientUzUz notificationRecipient_ = _StringsMisskeyAbuseReportNotificationRecipientUzUz._(_root);
}

// Path: misskey.moderationLogTypes_
class _StringsMisskeyModerationLogTypesUzUz extends _StringsMisskeyModerationLogTypesEnUs {
	_StringsMisskeyModerationLogTypesUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'To\'xtatish';
	@override String get resetPassword => 'Parolni tiklash';
}

// Path: misskey.reversi_
class _StringsMisskeyReversiUzUz extends _StringsMisskeyReversiEnUs {
	_StringsMisskeyReversiUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get total => 'Jami';
}

// Path: misskey.delivery_.type_
class _StringsMisskeyDeliveryTypeUzUz extends _StringsMisskeyDeliveryTypeEnUs {
	_StringsMisskeyDeliveryTypeUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get none => 'Yuborilmoqda';
}

// Path: misskey.achievements_.types_
class _StringsMisskeyAchievementsTypesUzUz extends _StringsMisskeyAchievementsTypesEnUs {
	_StringsMisskeyAchievementsTypesUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAchievementsTypesViewInstanceChartUzUz viewInstanceChart_ = _StringsMisskeyAchievementsTypesViewInstanceChartUzUz._(_root);
}

// Path: misskey.role_.priority_
class _StringsMisskeyRolePriorityUzUz extends _StringsMisskeyRolePriorityEnUs {
	_StringsMisskeyRolePriorityUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get low => 'Quyi';
	@override String get middle => 'O\'rta';
	@override String get high => 'Yuqori';
}

// Path: misskey.email_.follow_
class _StringsMisskeyEmailFollowUzUz extends _StringsMisskeyEmailFollowEnUs {
	_StringsMisskeyEmailFollowUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'sizga obuna bo\'ldi';
}

// Path: misskey.theme_.keys
class _StringsMisskeyThemeKeysUzUz extends _StringsMisskeyThemeKeysEnUs {
	_StringsMisskeyThemeKeysUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get accent => 'Urg\'u';
	@override String get bg => 'Fon';
	@override String get fg => 'Matn';
	@override String get focus => 'Fokus';
	@override String get panel => 'Panel';
	@override String get shadow => 'Soya';
	@override String get header => 'Sarlavha';
	@override String get navBg => 'Yon panel foni';
	@override String get navFg => 'Yon panel matni';
	@override String get mention => 'Murojat';
	@override String get renote => 'Qayta qayd etish';
	@override String get divider => 'Ajratrmoq';
	@override String get accentDarken => 'Urg\'u (Qoraytirilgan)';
	@override String get accentLighten => 'Urg\'u (Yoritilgan)';
	@override String get fgHighlighted => 'Belgilangan matn';
}

// Path: misskey.widgets_.userList_
class _StringsMisskeyWidgetsUserListUzUz extends _StringsMisskeyWidgetsUserListEnUs {
	_StringsMisskeyWidgetsUserListUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Ro\'yxat tanlash';
}

// Path: misskey.pages_.blocks
class _StringsMisskeyPagesBlocksUzUz extends _StringsMisskeyPagesBlocksEnUs {
	_StringsMisskeyPagesBlocksUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get text => 'Matn';
	@override String get textarea => 'Matn maydoni';
	@override String get section => 'Bo\'lim';
	@override String get image => 'Rasmlar';
	@override String get button => 'Tugma';
	@override String get note => 'Biriktirilgan qayd';
	@override late final _StringsMisskeyPagesBlocksNoteUzUz note_ = _StringsMisskeyPagesBlocksNoteUzUz._(_root);
}

// Path: misskey.notification_.types_
class _StringsMisskeyNotificationTypesUzUz extends _StringsMisskeyNotificationTypesEnUs {
	_StringsMisskeyNotificationTypesUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get all => 'Barchasi';
	@override String get follow => 'Obuna bo‘lish';
	@override String get mention => 'Murojat';
	@override String get renote => 'Qayta qayd etish';
	@override String get quote => 'Iqtibos keltirish';
	@override String get reaction => 'Reaktsiyalar';
	@override String get receiveFollowRequest => 'Qabul qilingan kuzatuv so\'rovlari';
	@override String get login => 'Kirish';
}

// Path: misskey.notification_.actions_
class _StringsMisskeyNotificationActionsUzUz extends _StringsMisskeyNotificationActionsEnUs {
	_StringsMisskeyNotificationActionsUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get reply => 'Javob berish';
	@override String get renote => 'Qayta qayd qilish';
}

// Path: misskey.deck_.columns_
class _StringsMisskeyDeckColumnsUzUz extends _StringsMisskeyDeckColumnsEnUs {
	_StringsMisskeyDeckColumnsUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get main => 'Asosiy';
	@override String get notifications => 'Xabarnomalar';
	@override String get tl => 'Xronologiya';
	@override String get antenna => 'Antennalar';
	@override String get list => 'Ro‘yxat';
	@override String get channel => 'Kanal';
	@override String get mentions => 'Eslatib o\'tish';
	@override String get direct => 'Bevosita qaydlar';
	@override String get roleTimeline => 'Rol xronologiyasi';
}

// Path: misskey.webhookSettings_.events_
class _StringsMisskeyWebhookSettingsEventsUzUz extends _StringsMisskeyWebhookSettingsEventsEnUs {
	_StringsMisskeyWebhookSettingsEventsUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get renote => 'Qayta qayd qilinganda';
	@override String get mention => 'Eslanganda';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _StringsMisskeyAbuseReportNotificationRecipientUzUz extends _StringsMisskeyAbuseReportNotificationRecipientEnUs {
	_StringsMisskeyAbuseReportNotificationRecipientUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeUzUz recipientType_ = _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeUzUz._(_root);
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _StringsMisskeyAchievementsTypesViewInstanceChartUzUz extends _StringsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_StringsMisskeyAchievementsTypesViewInstanceChartUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tahlilchi';
}

// Path: misskey.pages_.blocks.note_
class _StringsMisskeyPagesBlocksNoteUzUz extends _StringsMisskeyPagesBlocksNoteEnUs {
	_StringsMisskeyPagesBlocksNoteUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get id => 'Qayd ID';
	@override String get detailed => 'Batafsil ko\'rinishi';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeUzUz extends _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_StringsMisskeyAbuseReportNotificationRecipientRecipientTypeUzUz._(_StringsUzUz root) : this._root = root, super._(root);

	@override final _StringsUzUz _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Email';
}
