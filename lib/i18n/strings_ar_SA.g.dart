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
class TranslationsArSa extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsArSa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.arSa,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <ar-SA>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsArSa _root = this; // ignore: unused_field

	@override 
	TranslationsArSa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsArSa(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAriaArSa aria = _TranslationsAriaArSa._(_root);
	@override late final _TranslationsMisskeyArSa misskey = _TranslationsMisskeyArSa._(_root);
}

// Path: aria
class _TranslationsAriaArSa extends TranslationsAriaEnUs {
	_TranslationsAriaArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'أتريد متابعة '),
		name,
		const TextSpan(text: '؟'),
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' مستخدم متصل'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'أعاد نشرها '),
		user,
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'أمتأكد من إلغاء متابعة '),
		name,
		const TextSpan(text: '؟'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'كتب '),
		name,
		const TextSpan(text: ' شيءً'),
	]);
}

// Path: misskey
class _TranslationsMisskeyArSa extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'العربية';
	@override String get headlineMisskey => 'شبكة مرتبطة بالملاحظات';
	@override String get introMisskey => 'اهلا بك! ميسكي هو منصة تدوين مصغر لا مركزية ومفتوحة المصدر.\nيمكنك مشاركة "ملاحظات" عن ما يجري حولك، وإخبار الجميع عن نفسك 📡\nتسمح لك "الانفعالات" بتعبير عن شعورك حول ملاحظات الآخرين 👍\nاكتشف عالمًا جديدًا 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} هو إحدى الخِدمات التي تستخدم المنصة مفتوحة المصدر <b>ميسكي</b> (يشار إليه كمثيل ميسكي)';
	@override String monthAndDay({required Object day, required Object month}) => '${day}/${month}';
	@override String get search => 'البحث';
	@override String get notifications => 'الإشعارات';
	@override String get username => 'اسم المستخدم';
	@override String get password => 'الكلمة السرية';
	@override String get forgotPassword => 'نسيتَ كلمة السر';
	@override String get fetchingAsApObject => 'جارٍ جلبه مِن الفديفرس…';
	@override String get ok => ' حسناً';
	@override String get gotIt => 'فهِمت';
	@override String get cancel => ' إلغاء';
	@override String get noThankYou => 'ليس اﻵن';
	@override String get enterUsername => 'أدخِل إسم مسخدم';
	@override String renotedBy({required Object user}) => 'أعاد نشرها ${user}';
	@override String get noNotes => 'لم يُعثر على أية ملاحظات';
	@override String get noNotifications => 'ليس هناك أية اشعارات';
	@override String get instance => 'مثيل الخادم';
	@override String get settings => 'الاعدادات';
	@override String get notificationSettings => 'إعدادات الإشعارات';
	@override String get basicSettings => 'الاعدادات الأساسية';
	@override String get otherSettings => 'إعدادات أخرى';
	@override String get openInWindow => 'افتح في نافذة جديدة';
	@override String get profile => 'الملف التعريفي';
	@override String get timeline => 'الخيط الزمني';
	@override String get noAccountDescription => 'لم يكتب هذا المستخدم سيرته بعد.';
	@override String get login => 'لِج';
	@override String get loggingIn => 'جارٍ تسجيل الدخول';
	@override String get logout => 'الخروج';
	@override String get signup => 'أنشئ حسابًا';
	@override String get uploading => 'يرفع...';
	@override String get save => 'حفظ';
	@override String get users => 'المستخدمون';
	@override String get addUser => 'اضافة مستخدم';
	@override String get favorite => 'أضفها للمفضلة';
	@override String get favorites => 'المفضلات';
	@override String get unfavorite => 'إزالة من المفضلة';
	@override String get favorited => 'أُضيف إلى المفضلة.';
	@override String get alreadyFavorited => 'تمت إضافته بالفعل إلى المفضلة.';
	@override String get cantFavorite => 'تعذرت الإضافة إلى المفضلة.';
	@override String get pin => 'ثبتها على الصفحة الشخصية';
	@override String get unpin => 'فكها من ملفك الشخصي';
	@override String get copyContent => 'انسخ المحتوى';
	@override String get copyLink => 'انسخ الرابط';
	@override String get delete => 'حذف';
	@override String get deleteAndEdit => 'إزالة وإعادة الصياغة';
	@override String get deleteAndEditConfirm => 'أمتأكد من حذف الملاحظة؟ ستفقد كل مشاركاتها، والتفاعلات، والردود عليها.';
	@override String get addToList => 'أضفه إلى قائمة';
	@override String get addToAntenna => 'أضف إلى هوائي';
	@override String get sendMessage => 'أرسل رسالة';
	@override String get copyRSS => 'انسخ رابط RSS';
	@override String get copyUsername => 'انسخ اسم المستخدم';
	@override String get copyUserId => 'انسخ معرف المستخدم';
	@override String get copyNoteId => 'انسخ معرف الملاحظة';
	@override String get copyFileId => 'انسخ معرّف الملف';
	@override String get copyFolderId => 'انسخ معرّف المجلد';
	@override String get copyProfileUrl => 'انسخ رابط الملف الشخصي';
	@override String get searchUser => 'ابحث عن مستخدمين';
	@override String get reply => 'رد';
	@override String get loadMore => 'عرض المزيد';
	@override String get showMore => 'عرض المزيد';
	@override String get showLess => 'اغلق';
	@override String get youGotNewFollower => 'يتابعك';
	@override String get receiveFollowRequest => 'تلقيت طلب متابعة';
	@override String get followRequestAccepted => 'قُبل طلب المتابعة';
	@override String get mention => 'أشر الى';
	@override String get mentions => 'الإشارات';
	@override String get directNotes => 'رسالة خاصة';
	@override String get importAndExport => 'إستورد / صدر';
	@override String get import => 'استيراد';
	@override String get export => 'تصدير';
	@override String get files => 'الملفات';
	@override String get download => 'تنزيل';
	@override String driveFileDeleteConfirm({required Object name}) => 'أمتأكد من حذف ملف ${name}؟ كل الملاحظات المُرفق بها هذا الملف ستحذف.';
	@override String unfollowConfirm({required Object name}) => 'أمتأكد من إلغاء متابعة ${name}؟';
	@override String get exportRequested => 'قد تستغرق عملية التصدير بعض الوقت. بمجرد الانتهاء سيضاف الملف الناتج إلى قرص التخزين.';
	@override String get importRequested => 'يستغرق الاستيراد بعض الوقت';
	@override String get lists => 'القوائم';
	@override String get noLists => 'ليس لديك أية قائمة';
	@override String get note => 'ملاحظة';
	@override String get notes => 'الملاحظات';
	@override String get following => 'المتابَعون';
	@override String get followers => 'المتابِعون';
	@override String get followsYou => 'يتابعك';
	@override String get createList => 'إنشاء قائمة';
	@override String get manageLists => 'إدارة القوائم';
	@override String get error => 'خطأ';
	@override String get somethingHappened => 'حدث خطأ';
	@override String get retry => 'حاول مجددًا';
	@override String get pageLoadError => 'فشل تحميل الصفحة';
	@override String get pageLoadErrorDescription => 'عادة ما يكون السبب خطأ في الشبكة أو التخزين المؤقت للمتصفح. امسح التخزين المؤقت ثم أعد المحاولة لاحقًا.';
	@override String get serverIsDead => 'الخادم لا يستجيب، حاول بعد قليل';
	@override String get youShouldUpgradeClient => 'حدّث الصفحة لعرضها.';
	@override String get enterListName => 'اسم القائمة';
	@override String get privacy => 'الخصوصية';
	@override String get makeFollowManuallyApprove => 'قبول طلبات الإشتراك يدويا';
	@override String get defaultNoteVisibility => 'مدى الرؤية الافتراضي';
	@override String get follow => 'تابِع';
	@override String get followRequest => 'طلب اشتراك';
	@override String get followRequests => 'طلبات الإشتراك';
	@override String get unfollow => 'إلغاء الاشتراك';
	@override String get followRequestPending => 'طلبات الإشتراك المعلّقة';
	@override String get enterEmoji => 'أدخل إيموجي';
	@override String get renote => 'أعد النشر';
	@override String get unrenote => 'إلغاء مشاركة الملاحظة';
	@override String get renoted => 'أُعيد نشره';
	@override String get cantRenote => 'لا يمكن إعادة نشر الملاحظة';
	@override String get cantReRenote => 'لا يمكنك إعادة نشر ملاحظة معاد نشرها';
	@override String get quote => 'اقتبس';
	@override String get inChannelRenote => 'إعادة نشر في قناة';
	@override String get inChannelQuote => 'اقتباس في قناة';
	@override String get pinnedNote => 'ملاحظة مثبتة';
	@override String get pinned => 'ثبتها على الصفحة الشخصية';
	@override String get you => 'أنت';
	@override String get clickToShow => 'اضغط للعرض';
	@override String get sensitive => 'محتوى حساس';
	@override String get add => 'إضافة';
	@override String get reaction => 'التفاعلات';
	@override String get reactions => 'التفاعلات';
	@override String get reactionSettingDescription2 => 'اسحب لترتيب ، انقر للحذف ، استخدم "+" للإضافة.';
	@override String get rememberNoteVisibility => 'تذكر إعدادت مدى رؤية الملاحظات';
	@override String get attachCancel => 'أزل المرفق';
	@override String get deleteFile => 'حُذف الملف';
	@override String get markAsSensitive => 'علّمه كمحتوى حساس';
	@override String get unmarkAsSensitive => 'ألغ تعيينه كمحتوى حساس';
	@override String get enterFileName => 'ادخل اسم الملف';
	@override String get mute => 'اكتم';
	@override String get unmute => 'إلغاء الكتم';
	@override String get renoteMute => 'اكتم إعادة النشر';
	@override String get renoteUnmute => 'ارفع الكتم عن إعادة النشر';
	@override String get block => 'احجب';
	@override String get unblock => 'إلغاء الحجب';
	@override String get suspend => 'علِق';
	@override String get unsuspend => 'ألغ التعليق';
	@override String get blockConfirm => 'أمتأكد من حجب هذا الحساب؟';
	@override String get unblockConfirm => 'أمتأكد من إلغاء حجب هذا الحساب؟';
	@override String get suspendConfirm => 'أمتأكد من تعليق الحساب؟';
	@override String get unsuspendConfirm => 'أمتأكد من إلغاء تعليق؟';
	@override String get selectList => 'اختر قائمة';
	@override String get editList => 'عدّل القائمة';
	@override String get selectChannel => 'اختر قناة';
	@override String get selectAntenna => 'اختر هوائيًا';
	@override String get editAntenna => 'عدّل الهوائي';
	@override String get selectWidget => 'اختر ودجة';
	@override String get editWidgets => 'عدّل الودجات';
	@override String get editWidgetsExit => 'تم';
	@override String get customEmojis => 'إيموجي مخصص';
	@override String get emoji => 'إيموجي';
	@override String get emojis => 'إيموجي';
	@override String get emojiName => 'اسم الإيموجي';
	@override String get emojiUrl => 'رابط الإيموجي';
	@override String get addEmoji => 'إضافة إيموجي';
	@override String get settingGuide => 'الإعدادات المستحسنة';
	@override String get cacheRemoteFiles => 'خزن مؤقتا الملفات البعيدة';
	@override String get cacheRemoteFilesDescription => 'إذا عُطل هذا الإعداد، ستُحمل الملفات من المثيل البعيد، هذا سيقلل من المساحة المستغلة على القرص لكن سيزيد حجم تدفق البيانات وهذا لأن الصور المصغرة لن تولّد.';
	@override String get flagAsBot => 'علّمه كحساب آلي';
	@override String get flagAsBotDescription => 'فعّل هذا الخيار إذا كان هذا الحساب يُدار عبر برمجية. إذا فُعل فسيكون بمثابة علامة للمطورين الآخرين لتجنب سلاسل لا متناهية من التفاعل بين حسابات الآلية وضبط أنظمة ميسكي للتعامل مع هذا الحساب كآلي.';
	@override String get flagAsCat => 'علّم هذا الحساب كحساب قط';
	@override String get flagAsCatDescription => 'فعّل هذا الخيار لوضع علامة على الحساب لتوضيح أنه حساب قط.';
	@override String get flagShowTimelineReplies => 'أظهر التعليقات في الخيط الزمني';
	@override String get flagShowTimelineRepliesDescription => 'يظهر الردود في الخيط الزمني';
	@override String get autoAcceptFollowed => 'اقبل طلبات المتابعة تلقائيا من الحسابات المتابَعة';
	@override String get addAccount => 'أضف حساباً';
	@override String get loginFailed => 'فشل الولوج';
	@override String get showOnRemote => 'رؤيته على مثيل الخادم البُعدي';
	@override String get general => 'الرئيسية';
	@override String get wallpaper => 'الخلفية';
	@override String get setWallpaper => 'عيّن خلفية';
	@override String get removeWallpaper => 'أزل الخلفية';
	@override String searchWith({required Object q}) => 'البحث: ${q}';
	@override String get youHaveNoLists => 'لا تمتلك أية قائمة';
	@override String followConfirm({required Object name}) => 'أتريد متابعة ${name}؟';
	@override String get proxyAccount => 'حساب وكيل البروكسي';
	@override String get proxyAccountDescription => 'يتصرف حساب الوكيل كمتابع بعيد لمستخدمين تحت ظروف معينة. على سبيل المثال ، عندما يضيف مستخدم مستخدمًا بعيدًا إلى قائمة  فإن ملاحظاته لن تُرسل إلى المثيل ما لم يُتابعه مستخدم محلي. وبالتالي فإن حساب الوكيل سوف يتابع هذا المستخدم لكي تُرسل ملاحظاته.';
	@override String get host => 'المضيف';
	@override String get selectUser => 'حدّد مستخدمًا';
	@override String get recipient => 'المرسَل إليه·ها';
	@override String get annotation => 'التعليقات';
	@override String get federation => 'الفديرالية';
	@override String get instances => 'مثيل الخادم';
	@override String get registeredAt => 'مسجل منذ';
	@override String get latestRequestReceivedAt => 'آخر طلب تُلقي في';
	@override String get latestStatus => 'الحالات الأخيرة';
	@override String get storageUsage => 'مساحة التخزين المستخدمة';
	@override String get charts => 'المنحنيات البيانية';
	@override String get perHour => 'في الساعة';
	@override String get perDay => 'في اليوم';
	@override String get stopActivityDelivery => 'وقف إرسال النشاط';
	@override String get blockThisInstance => 'احجب مثيل الخادم هذا';
	@override String get operations => 'الإجراءات';
	@override String get software => 'البرمجية';
	@override String get version => 'الإصدار';
	@override String get metadata => 'البيانات الوصفية';
	@override String withNFiles({required Object n}) => '${n} ملف (ملفات)';
	@override String get monitor => 'شاشة التحكم';
	@override String get jobQueue => 'قائمة الانتظار';
	@override String get cpuAndMemory => 'وحدة المعالجة المركزية والذاكرة';
	@override String get network => 'الشبكة';
	@override String get disk => 'قرص التخزين';
	@override String get instanceInfo => 'معلومات مثيل الخادم';
	@override String get statistics => 'الإحصائيات';
	@override String get clearQueue => 'تفريغ قائمة الإنتظار';
	@override String get clearQueueConfirmTitle => 'أتريد مسح الطابور؟';
	@override String get clearCachedFiles => 'امسح التخزين المؤقت';
	@override String get clearCachedFilesConfirm => 'أتريد حذف التخزين المؤقت للملفات البعيدة؟';
	@override String get blockedInstances => 'المثلاء المحجوبون';
	@override String get blockedInstancesDescription => 'قائمة بالمثلاء التي تريد حظرها بحيث كل نطاق في سطر لوحده. بعد إدراجهم لن يتمكنوا من التفاعل مع هذا المثيل.';
	@override String get muteAndBlock => 'المكتومون والمحجوبون';
	@override String get mutedUsers => 'الحسابات المكتومة';
	@override String get blockedUsers => 'الحسابات المحجوبة';
	@override String get noUsers => 'ليس هناك مستخدمون';
	@override String get editProfile => 'تعديل الملف التعريفي';
	@override String get noteDeleteConfirm => 'هل تريد حذف هذه الملاحظة؟';
	@override String get pinLimitExceeded => 'لا يمكنك تثبيت الملاحظات بعد الآن.';
	@override String get done => 'تمّ';
	@override String get processing => 'المعالجة جارية';
	@override String get preview => 'معاينة';
	@override String get default_ => 'افتراضي';
	@override String defaultValueIs({required Object value}) => 'الافتراضي: ${value}';
	@override String get noCustomEmojis => 'ليس هناك إيموجي';
	@override String get noJobs => 'لا توجد مهام';
	@override String get federating => 'الفديرالية جارية';
	@override String get blocked => 'محجوب';
	@override String get suspended => 'مُعلّق';
	@override String get all => 'الكل';
	@override String get notResponding => 'لا يستجيب';
	@override String get instanceFollowing => 'المثلاء المتابَعون';
	@override String get instanceFollowers => 'المثلاء المتابِعون';
	@override String get instanceUsers => 'مستخدمو المثيل';
	@override String get changePassword => 'تغيير الكلمة السرية';
	@override String get security => 'الأمان';
	@override String get retypedNotMatch => 'المدخلات لا تتطابق';
	@override String get currentPassword => 'كلمة المرور الحالية';
	@override String get newPassword => 'كلمة المرور الجديدة';
	@override String get newPasswordRetype => 'كرّر كلمة المرور الجديدة:';
	@override String get attachFile => 'أرفق ملفات';
	@override String get more => 'المزيد!';
	@override String get featured => 'المتداولة';
	@override String get usernameOrUserId => 'اسم المستخدم أو معرّفه';
	@override String get noSuchUser => 'لم يُعثَر على المستخدم';
	@override String get lookup => 'البحث';
	@override String get announcements => 'الإعلانات';
	@override String get imageUrl => 'رابط الصورة';
	@override String get remove => 'حذف';
	@override String get removed => 'حُذف بنجاح';
	@override String removeAreYouSure({required Object x}) => 'متأكد من أنك تريد حذف ${x}؟';
	@override String deleteAreYouSure({required Object x}) => 'متأكد من أنك تريد حذف ${x}؟';
	@override String get resetAreYouSure => 'هل تريد إعادة التعيين؟';
	@override String get saved => 'حُفظ';
	@override String get upload => 'ارفع';
	@override String get keepOriginalUploading => 'ابق الصورة الأصلية';
	@override String get keepOriginalUploadingDescription => 'يحفظ الصور المرفوعة على حالتها الأصلية، وان عطّل ستولد نسخة مخصصة من الصورة.';
	@override String get fromDrive => 'من المخزن';
	@override String get fromUrl => 'عبر رابط';
	@override String get uploadFromUrl => 'ارفع عبر رابط';
	@override String get uploadFromUrlDescription => 'رابط الملف المراد رفعه';
	@override String get uploadFromUrlRequested => 'الرفع مطلوب';
	@override String get uploadFromUrlMayTakeTime => 'سيستغرق بعض الوقت لاتمام الرفع ';
	@override String get explore => 'استكشاف';
	@override String get messageRead => 'مقروءة';
	@override String get noMoreHistory => 'لا يوجد المزيد من التاريخ';
	@override String nUsersRead({required Object n}) => 'قرأه ${n}';
	@override String agreeTo({required Object x0}) => 'اوافق على ${x0}';
	@override String get agree => 'أقبل';
	@override String get agreeBelow => 'أقبل ما يلي';
	@override String get basicNotesBeforeCreateAccount => 'ملاحظات مهمة';
	@override String get termsOfService => 'شروط الخدمة';
	@override String get start => 'البداية';
	@override String get home => 'الرئيسي';
	@override String get remoteUserCaution => 'هذه المعلومات قد لا تكون مكتملة بما أن المستخدم من مثيل بعيد.';
	@override String get activity => 'النشاط';
	@override String get images => 'صور';
	@override String get image => 'صور';
	@override String get birthday => 'تاريخ الميلاد';
	@override String yearsOld({required Object age}) => '${age} سنة';
	@override String get registeredDate => 'انضم في';
	@override String get location => 'الموقع الجغرافي';
	@override String get theme => 'المظهر';
	@override String get themeForLightMode => 'الحلة في الوضع الفاتح';
	@override String get themeForDarkMode => 'الحلة في الوضع الداكن';
	@override String get light => 'فاتح';
	@override String get dark => 'داكن';
	@override String get lightThemes => 'الحلة الفاتحة';
	@override String get darkThemes => 'الحلة الداكنة';
	@override String get syncDeviceDarkMode => 'مطابقة الوضع المضلمومع اعدادات الجهاز';
	@override String get drive => 'قرص التخرين';
	@override String get fileName => 'اسم الملف';
	@override String get selectFile => 'اختر ملفًا';
	@override String get selectFiles => 'اختر ملفات';
	@override String get selectFolder => 'اختر مجلدًا';
	@override String get selectFolders => 'اختر مجلدات';
	@override String get renameFile => 'إعادة تسمية الملف';
	@override String get folderName => 'اسم المجلد';
	@override String get createFolder => 'أنشئ مجلدًا';
	@override String get renameFolder => 'إعادة تسمية المجلد';
	@override String get deleteFolder => 'احذف هذا المجلد';
	@override String get addFile => 'إضافة ملف';
	@override String get emptyDrive => 'قرص التخزين فارغ';
	@override String get emptyFolder => 'هذا المجلد فارغ';
	@override String get unableToDelete => 'لا يمكن حذفه';
	@override String get inputNewFileName => 'ادخل الإسم الجديد للملف';
	@override String get inputNewDescription => 'أدخل تعليقًا توضيحيًا';
	@override String get inputNewFolderName => 'ادخل الإسم الجديد للمجلد';
	@override String get circularReferenceFolder => 'المجلد المستهدف ينتمي للمجلد الذي تريد حذفه';
	@override String get hasChildFilesOrFolders => 'الان الملف غير فارغ. لا يمكن حذفه';
	@override String get copyUrl => 'انسخ الرابط';
	@override String get rename => 'إعادة التسمية';
	@override String get avatar => 'الصورة الرمزية';
	@override String get banner => 'الصورة الرأسية';
	@override String get displayOfSensitiveMedia => 'عرض المحتوى الحساس';
	@override String get whenServerDisconnected => 'عند فقدان الاتصال بالخادم';
	@override String get disconnectedFromServer => 'قُطِع الإتصال بالخادم';
	@override String get reload => 'انعش';
	@override String get doNothing => 'تجاهل';
	@override String get reloadConfirm => 'هل ترغب في تحديث الجدول الزمني؟';
	@override String get watch => 'راقب';
	@override String get unwatch => 'إلغاء المراقبة';
	@override String get accept => 'السماح';
	@override String get reject => 'رفض';
	@override String get normal => 'عادي';
	@override String get instanceName => 'اسم مثيل الخادم';
	@override String get instanceDescription => 'وصف مثيل الخادم';
	@override String get maintainerName => 'المدير';
	@override String get maintainerEmail => 'عنوان بريد المدير الإلكتروني';
	@override String get tosUrl => 'رابط صفحة شروط الخدمة';
	@override String get thisYear => 'هذا العام';
	@override String get thisMonth => 'هذا الشهر';
	@override String get today => 'اليوم';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => '${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'الصفحات';
	@override String get integration => 'التكامل';
	@override String get connectService => 'اتصل';
	@override String get disconnectService => 'اقطع الاتصال';
	@override String get enableLocalTimeline => 'تفعيل الخيط المحلي';
	@override String get enableGlobalTimeline => 'تفعيل الخيط الزمني الشامل';
	@override String get disablingTimelinesInfo => 'سيتمكن المديرون والمشرفون من الوصول إلى كل الخيوط الزمنية حتى وإن لم تفعّل.';
	@override String get registration => 'إنشاء حساب';
	@override String get invite => 'دعوة';
	@override String get driveCapacityPerLocalAccount => 'حصة التخزين لكل مستخدم محلي';
	@override String get driveCapacityPerRemoteAccount => 'حصة التخزين لكل مستخدم بعيد';
	@override String get inMb => 'بالميغابايت';
	@override String get bannerUrl => 'رابط صورة اللافتة';
	@override String get backgroundImageUrl => 'رابط صورة الخلفية';
	@override String get basicInfo => 'المعلومات الأساسية ';
	@override String get pinnedUsers => 'المستخدمون المثبتون';
	@override String get pinnedUsersDescription => 'قائمة المستخدمين المثبتين في لسان "استكشف" ، اجعل كل اسم مستخدم في سطر لوحده.';
	@override String get pinnedPages => 'الصفحات المثبتة';
	@override String get pinnedPagesDescription => 'أدخل مسار الصفحات التي تريد تثبيتها في أعلى هذا الموقع، اجعل كل مسار في سطر لوحده.';
	@override String get pinnedClipId => 'معرّف المشبك المثبت';
	@override String get pinnedNotes => 'ملاحظة مثبتة';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'فعّل hCaptcha';
	@override String get hcaptchaSiteKey => 'مفتاح الموقع';
	@override String get hcaptchaSecretKey => 'المفتاح السري';
	@override String get mcaptchaSiteKey => 'مفتاح الموقع';
	@override String get mcaptchaSecretKey => 'المفتاح السري';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'تمكين reCAPTCHA';
	@override String get recaptchaSiteKey => 'مفتاح الموقع';
	@override String get recaptchaSecretKey => 'المفتاح السري';
	@override String get turnstileSiteKey => 'مفتاح الموقع';
	@override String get turnstileSecretKey => 'المفتاح السري';
	@override String get avoidMultiCaptchaConfirm => 'يمكن أن يتسبب استخدام عدة خدمات لكلمات التحقق في حدوث تداخل. هل ترغب في إلغاء تنشيط الخدمات الأخرى؟ يمكنك ترك هذه الخدمات نشطة بالضغط على "ألغ".';
	@override String get antennas => 'الهوائيات';
	@override String get manageAntennas => 'إدارة الهوائيات';
	@override String get name => 'الإسم';
	@override String get antennaSource => 'مصدر الهوائي';
	@override String get antennaKeywords => 'الكلمات المفتاحية للإستقبال';
	@override String get antennaExcludeKeywords => 'الكلمات المفتاحية المستثناة';
	@override String get antennaKeywordsDescription => 'افصل بينهم بمسافة لاستخدام معامل "و" أو بسطر لاستخدام معامل "أو"';
	@override String get notifyAntenna => 'نبهني بصول ملاحظات جديدة';
	@override String get withFileAntenna => 'ملاحظات تحوي ملفات فقط';
	@override String get enableServiceworker => 'فعّل إرسال الإشعارات للمتصفح';
	@override String get antennaUsersDescription => 'اكتب اسم مستخدم لكل سطر';
	@override String get caseSensitive => 'حساسية حالة الأحرف';
	@override String get withReplies => 'بالردود';
	@override String get connectedTo => 'الحسابات التالية متصلة';
	@override String get notesAndReplies => 'الملاحظات والردود';
	@override String get withFiles => 'ذات مرفقات';
	@override String get silence => 'اكتم';
	@override String get silenceConfirm => 'أمتأكد من كتم هذا المستخدم؟';
	@override String get unsilence => 'إلغاء الكتم';
	@override String get unsilenceConfirm => 'أمتأكد من إلغاء كتم هذا المستخدم؟';
	@override String get popularUsers => 'المستخدمون الرائدون';
	@override String get recentlyUpdatedUsers => 'أصحاب النشاطات الأخيرة';
	@override String get recentlyRegisteredUsers => 'المستخدمون المنضمون حديثًا';
	@override String get recentlyDiscoveredUsers => 'المستخدمون المكتشفون حديثًا';
	@override String exploreUsersCount({required Object count}) => 'يوجد ${count} مستخدم(ا)';
	@override String get exploreFediverse => 'استكشف الفديفرس';
	@override String get popularTags => 'الوسوم الرائجة';
	@override String get userList => 'القوائم';
	@override String get about => 'عن';
	@override String get aboutMisskey => 'عن Misskey';
	@override String get administrator => 'المدير';
	@override String get token => 'الرمز المميز';
	@override String get x2fa => 'الاستيثاق بعاملَيْن';
	@override String get totp => 'تطبيق استيثاق';
	@override String get moderator => 'مشرِف';
	@override String get moderation => 'الإشراف';
	@override String nUsersMentioned({required Object n}) => '${n} مستخدمين أُشير إليهم';
	@override String get securityKeyAndPasskey => 'الأمن ومفاتيح الأمان';
	@override String get securityKey => 'مفتاح الأمان';
	@override String get lastUsed => 'آخر استخدام';
	@override String lastUsedAt({required Object t}) => 'آخر استخدام: ${t}';
	@override String get unregister => 'إلغاء التسجيل';
	@override String get passwordLessLogin => 'لِج مِن دون كلمة سرية';
	@override String get resetPassword => 'أعد تعيين كلمتك السرية';
	@override String newPasswordIs({required Object password}) => 'كلمتك السرية الجديدة هي ${password}';
	@override String get reduceUiAnimation => 'قلص تأثيرات الواجهة';
	@override String get share => 'شارِك';
	@override String get notFound => 'غير موجود';
	@override String get notFoundDescription => 'تعذر العثور على صفحة يقود إليها هذا الرابط.';
	@override String get uploadFolder => 'المجلد الافتراضي للرفع';
	@override String get markAsReadAllNotifications => 'وضع جميع الإشعارات كأنها مقروءة';
	@override String get markAsReadAllUnreadNotes => 'علّم جميع الملاحظات كمقروءة';
	@override String get markAsReadAllTalkMessages => 'علّم جميع الرسائل كمقروءة';
	@override String get help => 'المساعدة';
	@override String get inputMessageHere => 'اكتب رسالتك هنا';
	@override String get close => 'اغلق';
	@override String get invites => 'دعوة';
	@override String get members => 'الأعضاء';
	@override String get transfer => 'نقل';
	@override String get title => 'العنوان';
	@override String get text => 'النص';
	@override String get enable => 'تشغيل';
	@override String get next => 'التالية';
	@override String get retype => 'أعد الكتابة';
	@override String noteOf({required Object user}) => 'ملاحظات ${user}';
	@override String get quoteAttached => 'اِقتُبسَ';
	@override String get quoteQuestion => 'أتريد تضمينها كاقتباس';
	@override String get onlyOneFileCanBeAttached => 'يمكنك إرفاق ملف واحد بالرسالة';
	@override String get signinRequired => 'رجاءً لِج';
	@override String get invitations => 'دعوة';
	@override String get invitationCode => 'رمز الدعوة';
	@override String get checking => 'التحقق جارٍ';
	@override String get available => 'متوفر';
	@override String get unavailable => 'غير متوفر';
	@override String get usernameInvalidFormat => 'يمكنك استخدام A-z، a-z، 0-9، _';
	@override String get tooShort => 'قصير جدًا';
	@override String get tooLong => 'طويل جدًا';
	@override String get weakPassword => 'الكلمة السرية ضعيفة';
	@override String get normalPassword => 'الكلمة السرية جيدة';
	@override String get strongPassword => 'الكلمة السرية قوية';
	@override String get passwordMatched => 'التطابق صحيح!';
	@override String get passwordNotMatched => 'غير متطابقتان';
	@override String signinWith({required Object x}) => 'الولوج عبر ${x}';
	@override String get signinFailed => 'فشل الولوج، خطأ في اسم المستخدم أو كلمة المرور.';
	@override String get or => 'أو';
	@override String get language => 'اللغة';
	@override String get uiLanguage => 'لغة واجهة المستخدم';
	@override String aboutX({required Object x}) => 'عن ${x}';
	@override String get emojiStyle => 'نمط الوجوه التعبيرية';
	@override String get showNoteActionsOnlyHover => 'أظهر الإجراءات عند التمرير فوق الملاحظة';
	@override String get noHistory => 'السجل فارغ';
	@override String get signinHistory => 'تاريخ تسجيل الدخول';
	@override String get doing => 'انتظر لحظة';
	@override String get category => 'الفئات';
	@override String get tags => 'الوسوم';
	@override String get docSource => 'مصدر هذا المستند';
	@override String get createAccount => 'أنشئ حسابًا';
	@override String get existingAccount => 'الحسابات الموجودة';
	@override String get regenerate => 'أعِد التوليد';
	@override String get fontSize => 'حجم الخط';
	@override String limitTo({required Object x}) => 'سقفهُ لـ${x}';
	@override String get noFollowRequests => 'ليس لديك طلبات متابعة معلقة';
	@override String get openImageInNewTab => 'إفتح الصورة بصفحة جديدة';
	@override String get dashboard => 'لوحة التحكم';
	@override String get local => 'المحلي';
	@override String get remote => 'بُعدي';
	@override String get total => 'المجموع';
	@override String get weekOverWeekChanges => 'أسبوعيا';
	@override String get dayOverDayChanges => 'يوميا';
	@override String get appearance => 'المظهر';
	@override String get clientSettings => 'إعدادات العميل';
	@override String get accountSettings => 'إعدادات الحساب';
	@override String get promotion => 'ترقية';
	@override String get promote => 'روِّج';
	@override String get numberOfDays => 'عدد الأيام';
	@override String get hideThisNote => 'إخفاء هذه الملاحظة';
	@override String get showFeaturedNotesInTimeline => 'أظهر الملاحظات الشائعة في الخيط الزمني';
	@override String get objectStorageBaseUrl => 'الرابط الأساسي';
	@override String get objectStoragePrefix => 'البادئة';
	@override String get objectStoragePrefixDesc => 'ستُحفظ الملفات في مجلدات تحوي اسماءها هذه البادئة.';
	@override String get objectStorageEndpoint => 'نقطة النهاية';
	@override String get objectStorageRegion => 'المنطقة';
	@override String get objectStorageRegionDesc => 'حدد منطقة مثل "xx-east-1". إذا كانت خدمتك لا تميز بين المناطق استخدم "us-east-1" أو اتركها فارغة إذا كنت تستخدم متغيرات البيئة أو ملفات ضبط AWS.';
	@override String get objectStorageUseSSL => 'استخدم SSL';
	@override String get objectStorageUseSSLDesc => 'عطل هذا الخيار إذا لم ترد استخدام API عبر HTTPS';
	@override String get objectStorageUseProxy => 'اتصل عبر وكيل';
	@override String get objectStorageUseProxyDesc => 'عطل هذا الخيار إذا لم ترد استخدام API عبر وكيل';
	@override String get objectStorageSetPublicRead => 'عينها ك"علنية" عند الرفع';
	@override String get serverLogs => 'سجلات الخادم';
	@override String get deleteAll => 'حذف الكل';
	@override String get showFixedPostForm => 'أظهر نموذج الكتابة في أعلى الصفحة';
	@override String get showFixedPostFormInChannel => 'أظهر نموذج الكتابة في أعلى الخط الزمني (قنوات)';
	@override String get newNoteRecived => 'هناك ملاحظات جديدة';
	@override String get sounds => 'الرنات';
	@override String get sound => 'الرنات';
	@override String get listen => 'استمع';
	@override String get none => 'لا شيء';
	@override String get showInPage => 'اعرض في الصفحة';
	@override String get popout => 'منبثقة';
	@override String get volume => 'مستوى الصوت';
	@override String get masterVolume => 'حجم الصوت الرئيس';
	@override String get details => 'التفاصيل';
	@override String get chooseEmoji => 'اختر إيموجي';
	@override String get unableToProcess => 'يتعذر إكمال العملية';
	@override String get recentUsed => 'المستخدمة مؤخرا';
	@override String get install => 'ثبّت';
	@override String get uninstall => 'إلغاء التثبيت';
	@override String get installedApps => 'التطبيقات المُخوّلة';
	@override String get nothing => 'لا يوجد شيء هنا';
	@override String get installedDate => 'تاريخ التثبيت';
	@override String get lastUsedDate => 'آخر استخدام';
	@override String get state => 'الحالة';
	@override String get sort => 'ترتيب حسب';
	@override String get ascendingOrder => 'تصاعدي';
	@override String get descendingOrder => 'تنازلي';
	@override String get output => 'الخارجة';
	@override String get disablePagesScript => 'عطّل AiScript في الصفحات';
	@override String get updateRemoteUser => 'تحديث المعلومات عن المستخدم البعيد';
	@override String get deleteAllFiles => 'حذف كافة الملفات';
	@override String get deleteAllFilesConfirm => 'أتريد حذف كل الملفات؟';
	@override String get removeAllFollowing => 'ألغ متابعة كل المتابَعين';
	@override String removeAllFollowingDescription({required Object host}) => 'تنفيذه سيلغي متابعة المستخدمين المتواجدين على ${host}. يمكنك استخدامه إذا فُقد الخادم.';
	@override String get userSuspended => 'عُلق هذا المستخدم.';
	@override String get userSilenced => 'كُتم هذا المستخدم.';
	@override String get yourAccountSuspendedTitle => 'هذا الحساب معلق';
	@override String get yourAccountSuspendedDescription => 'عُلق الحساب بسبب انتهاك شروط خدمة المثيل و ما شابه. إذا أردت معرفة التفصيل تواصل مع مدير المثيل. رجاءً لا تنشئ حساب جديد.';
	@override String get accountDeleted => 'حُذف الحساب';
	@override String get accountDeletedDescription => 'حُذف هذا الحساب.';
	@override String get menu => 'القائمة';
	@override String get divider => 'فاصل';
	@override String get addItem => 'إضافة عنصر';
	@override String get rearrange => 'أعد الترتيب';
	@override String get relays => 'المُرَحلات';
	@override String get addRelay => 'إضافة مُرحّل';
	@override String get inboxUrl => 'رابط صندوق الوارد';
	@override String get addedRelays => 'المرحلات المضافة';
	@override String get serviceworkerInfo => 'يجب أن يفعل لإرسال الإشعارات.';
	@override String get deletedNote => 'ملاحظة محذوفة';
	@override String get invisibleNote => 'ملاحظة مخفية';
	@override String get enableInfiniteScroll => 'فعّل التمرير المتواصل';
	@override String get visibility => 'الظهور';
	@override String get poll => 'استطلاع رأي';
	@override String get useCw => 'إخفاء المحتوى';
	@override String get enablePlayer => 'افتح مشغل الفيديو';
	@override String get disablePlayer => 'أغلق مشغل الفيديو';
	@override String get expandTweet => 'وسّع التغريدة';
	@override String get themeEditor => 'مصمم القوالب';
	@override String get description => 'الوصف';
	@override String get describeFile => 'أضف تعليقًا توضيحيًا';
	@override String get enterFileDescription => 'أدخل تعليقًا توضيحيًا';
	@override String get author => 'الكاتب';
	@override String get leaveConfirm => 'لديك تغييرات غير محفوظة. أتريد المتابعة دون حفظها؟';
	@override String get manage => 'إدارة ';
	@override String get plugins => 'الإضافات';
	@override String get preferencesBackups => 'النُسخ الاحتياطية للإعدادات';
	@override String get useBlurEffectForModal => 'استخدم تأثير الطمس في المشروط';
	@override String get useFullReactionPicker => 'استخدم الحجم الكامل لمنتقي التفاعلات';
	@override String get width => 'العرض';
	@override String get height => 'الإرتفاع';
	@override String get large => 'كبير';
	@override String get medium => 'متوسط';
	@override String get small => 'صغير';
	@override String get generateAccessToken => 'ولّد رمز الوصول';
	@override String get permission => 'أذونات';
	@override String get enableAll => 'تشغيل الكل';
	@override String get disableAll => 'تعطيل الكل';
	@override String get tokenRequested => 'منح حق الوصول إلى الحساب';
	@override String get pluginTokenRequestedDescription => 'ستتمكن الإضافة من استخدام هذه الأذونات.';
	@override String get notificationType => 'أنواع الإشعارات';
	@override String get edit => 'التعديل';
	@override String get emailServer => 'خادم البريد الإلكتروني';
	@override String get emailConfigInfo => 'يستخدم لتأكيد عنوان بريدك الإلكتروني ولإعادة تعيين كلمة المرور إن نسيتها.';
	@override String get email => 'البريد الإلكتروني ';
	@override String get emailAddress => 'عنوان البريد الالكتروني';
	@override String get smtpConfig => 'إعدادات خادم SMTP';
	@override String get smtpHost => 'المضيف';
	@override String get smtpPort => 'المنفذ';
	@override String get smtpUser => 'اسم المستخدم';
	@override String get smtpPass => 'الكلمة السرية';
	@override String get emptyToDisableSmtpAuth => 'اترك اسم المستخدم وكلمة المرور فارغين لتعطيل التحقق من SMTP';
	@override String get smtpSecureInfo => 'عطل هذا الخيار عند استخدام STARTTLS';
	@override String get wordMute => 'حظر الكلمات';
	@override String get regexpError => 'خطأ في التعبير النمطي';
	@override String get instanceMute => 'المثلاء المكتومون';
	@override String userSaysSomething({required Object name}) => 'كتب ${name} شيءً';
	@override String get makeActive => 'تفعيل';
	@override String get display => 'المظهر';
	@override String get copy => 'نسخ';
	@override String get metrics => 'المقاييس';
	@override String get overview => 'ملخص عام';
	@override String get logs => 'السِجلّات';
	@override String get delayed => 'متأخر';
	@override String get database => 'قاعدة البيانات';
	@override String get channel => 'القنوات';
	@override String get create => 'أنشئ';
	@override String get notificationSetting => 'إعدادات التنبيهات';
	@override String get notificationSettingDesc => 'اختر نوع التنبيهات المراد عرضها';
	@override String get useGlobalSetting => 'استخدم الإعدادات العامة';
	@override String get useGlobalSettingDesc => 'اذا فعّل ستطبق إعدادات إشعارات حسابك. إذا عطّل يمكن إجراء تكوينات مخصصة.';
	@override String get other => 'منوعات';
	@override String get regenerateLoginToken => 'أعد توليد الرمز';
	@override String get regenerateLoginTokenDescription => 'ينشئ رمز استيثاق جديد في العادة هذا ليس ضروريًا ؛ عند إنشاء رمز جديد ستُخرج جميع الأجهزة.';
	@override String get setMultipleBySeparatingWithSpace => 'يمكنك ادخال أكثر من مدخل واحد وذلك بفصلها بمسافات.';
	@override String get fileIdOrUrl => 'معرف الملف أو رابط';
	@override String get behavior => 'السلوك';
	@override String get sample => 'مثال';
	@override String get abuseReports => 'البلاغات';
	@override String get reportAbuse => 'أبلغ';
	@override String reportAbuseOf({required Object name}) => 'أبلغ عن ${name}';
	@override String get fillAbuseReportDescription => 'أكتب بالتفصيل سبب البلاغ، إذا كنت تبلغ عن ملاحظة أرفق رابط لها.';
	@override String get abuseReported => 'أُرسل البلاغ، شكرًا لك';
	@override String get reporter => 'المُبلّغ';
	@override String get reporteeOrigin => 'أصل البلاغ';
	@override String get reporterOrigin => 'أصل المُبلّغ';
	@override String get send => 'أرسل';
	@override String get openInNewTab => 'افتح في لسان جديد';
	@override String get defaultNavigationBehaviour => 'سلوك الملاحة الافتراضي';
	@override String get editTheseSettingsMayBreakAccount => 'تعديل هذه الإعدادات قد يسبب عطبًا لحسابك';
	@override String get instanceTicker => 'معلومات المثيل الأصلي للملاحظات';
	@override String waitingFor({required Object x}) => 'في انتظار ${x}';
	@override String get random => 'عشوائي';
	@override String get system => 'النظام';
	@override String get switchUi => 'بدّل واجهة المستخدم';
	@override String get desktop => 'سطح المكتب';
	@override String get clip => 'مِشبك';
	@override String get createNew => 'أنشِئ جديد';
	@override String get optional => 'اختياري';
	@override String get createNewClip => 'أنشئ مِشبكَا جديدًا';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'هذه الملاحظة تنتمي للمشبك ${name} سلفًا، أتريد حذفها منه⸮';
	@override String get public => 'علني';
	@override String get private => 'خاص';
	@override String i18nInfo({required Object link}) => 'يترجم متطوعون ميسكي إلى عدة لغات، يمكنك المساعدة عبر ${link}';
	@override String get manageAccessTokens => 'إدارة رموز الوصول';
	@override String get accountInfo => 'معلومات الحساب';
	@override String get notesCount => 'عدد الملاحظات';
	@override String get repliesCount => 'عدد الردود المرسلة';
	@override String get renotesCount => 'عدد الملاحظات المعاد نشرها (المرسلة)';
	@override String get repliedCount => 'عدد الردود المتلقاة';
	@override String get renotedCount => 'عدد الملاحظات المعاد نشرها (المتلقاة)';
	@override String get followingCount => 'عدد الحسابات المتابَعة';
	@override String get followersCount => 'عدد المتابِعين';
	@override String get sentReactionsCount => 'عدد الانفعالات المرسلة';
	@override String get receivedReactionsCount => 'عدد الانفعالات المتلقاة';
	@override String get pollVotesCount => 'عدد الاستطلاعات المرسلة';
	@override String get pollVotedCount => 'عدد الاستطلاعات المتلقاة';
	@override String get yes => 'نعم';
	@override String get no => 'لا';
	@override String get driveFilesCount => 'عدد الملفات في قرص التخزين';
	@override String get driveUsage => 'المستغل من قرص التخزين';
	@override String get noCrawle => 'ارفض فهرسة زاحف الويب';
	@override String get noCrawleDescription => 'يطلب من محركات البحث ألّا يُفهرسوا ملفك الشخصي وملاحظات وصفحاتك وما شابه.';
	@override String get lockedAccountInfo => 'ستكون هذه الملاحظة مرئية للجميع مالم تحدد مرئتيها إلى "للمتابعين فقط"';
	@override String get alwaysMarkSensitive => 'علّم افتراضيًا جميع ملاحظاتي كذات محتوى حساس';
	@override String get loadRawImages => 'حمّل الصور الأصلية بدلًا من المصغرات';
	@override String get disableShowingAnimatedImages => 'لا تشغّل الصور المتحركة';
	@override String get verificationEmailSent => 'أُرسل بريد التحقق. أنقر على الرابط المضمن لإكمال التحقق.';
	@override String get notSet => 'لم يعيّن';
	@override String get emailVerified => 'تُحقّق من بريدك الإلكتروني';
	@override String get noteFavoritesCount => 'عدد الملاحظات المفضلة';
	@override String get pageLikesCount => 'عدد الصفحات التي أعجبت بها';
	@override String get pageLikedCount => 'عدد صفحاتك المُعجب بها';
	@override String get contact => 'التواصل';
	@override String get useSystemFont => 'استخدم الخط الافتراضية للنظام';
	@override String get clips => 'مشابك';
	@override String get experimentalFeatures => 'ميّزات اختبارية';
	@override String get experimental => 'اختباري';
	@override String get developer => 'المطور';
	@override String get makeExplorable => 'أظهر الحساب في صفحة "استكشاف"';
	@override String get makeExplorableDescription => 'بتعطيل هذا الخيار لن يظهر حسابك في صفحة "استكشاف"';
	@override String get left => 'يسار';
	@override String get center => 'وسط';
	@override String get wide => 'عريض';
	@override String get narrow => 'رفيع';
	@override String get reloadToApplySetting => 'سيُطبق هذا الإعداد بعد إعادة تحميل الصفحة، أتريد إعادة تحميلها الآن؟';
	@override String get needReloadToApply => 'سيطبق هذا بعد إعادة التحميل.';
	@override String get showTitlebar => 'اعرض شريط العنوان';
	@override String get clearCache => 'امسح التخزين المؤقت';
	@override String onlineUsersCount({required Object n}) => '${n} مستخدم متصل';
	@override String nUsers({required Object n}) => '${n} مستخدم';
	@override String nNotes({required Object n}) => '${n} ملاحظة';
	@override String get sendErrorReports => 'أرسل تقارير الأخطاء';
	@override String get sendErrorReportsDescription => 'إذا فعّلته ستساعد في تحسين ميسكي وذلك عبر مشاركة معلومات تفصيلية عن الخطأ.\nومما تحتويه التقارير: نسخة نظام التشغيل ونوع المتصفح وسجل نشاطك إلخ.';
	@override String get myTheme => 'سماتي';
	@override String get backgroundColor => 'لون الخلفية';
	@override String get accentColor => 'طابع لوني';
	@override String get textColor => 'لون النص';
	@override String get saveAs => 'احفظ كـ...';
	@override String get advanced => 'متقدم';
	@override String get advancedSettings => 'إعدادات متقدمة';
	@override String get value => 'القيمة';
	@override String get createdAt => 'أُنشئ في';
	@override String get updatedAt => 'حُدّث في';
	@override String get saveConfirm => 'أتريد خفظ التغييرات؟';
	@override String get deleteConfirm => 'أمتأكد من الحذف؟';
	@override String get invalidValue => 'قيمة غير صالحة.';
	@override String get registry => 'السجل';
	@override String get closeAccount => 'اختر حسبًا';
	@override String get currentVersion => 'الإصدار الحالي';
	@override String get latestVersion => 'آخر نسخة مستقرة';
	@override String get youAreRunningUpToDateClient => 'أنت تستخدم أحدث نسخة من العميل.';
	@override String get newVersionOfClientAvailable => 'تتوفر نسخة أحدث للعميل';
	@override String get usageAmount => 'الإستخدام';
	@override String get capacity => 'السعة';
	@override String get inUse => 'مستخدم';
	@override String get editCode => 'حرر الشفرة';
	@override String get apply => 'تطبيق';
	@override String get receiveAnnouncementFromInstance => 'استلم إشعارات من هذا المثيل';
	@override String get emailNotification => 'إشعارات البريد الكتروني';
	@override String get publish => 'علني';
	@override String get inChannelSearch => 'ابحث عن قناة';
	@override String get useReactionPickerForContextMenu => 'افتح منتقي التفاعلات عند النقر بالزر الأيمن';
	@override String typingUsers({required Object users}) => '${users} يكتب(ون)...';
	@override String get jumpToSpecifiedDate => 'انتقل إلى تاريخ محدد';
	@override String get showingPastTimeline => 'أنت تستعرض حاليًا خيطًا زمنيًا قديمًا';
	@override String get clear => 'عودة';
	@override String get markAllAsRead => 'علّم الكل كمقروء';
	@override String get goBack => 'رجوع';
	@override String get unlikeConfirm => 'أتريد إلغاء إعجابك؟';
	@override String get fullView => 'ملء الشاشة';
	@override String get quitFullView => 'اخرج من وضع ملء للشاشة';
	@override String get addDescription => 'أضف وصفًا';
	@override String get userPagePinTip => 'لعرض ملاحظة هنا اختر "ثبتها على الصفحة الشخصية" من قائمة تلك الملاحظة.';
	@override String get notSpecifiedMentionWarning => 'في الملاحظة ذكر لمستخدمين لن يستلموها.';
	@override String get info => 'عن';
	@override String get userInfo => 'معلومات المستخدم';
	@override String get unknown => 'مجهول';
	@override String get onlineStatus => 'الحالة';
	@override String get hideOnlineStatus => 'اخف الحالة';
	@override String get hideOnlineStatusDescription => 'قد يؤدي جعل اخفاء حالتك إلى تعطيل أداء بعض الميزات ، مثل البحث.';
	@override String get online => 'متصل';
	@override String get active => 'نشط';
	@override String get offline => 'غير متصل';
	@override String get notRecommended => 'غير مستحسن';
	@override String get botProtection => 'الحماية من الحسابات الآلية';
	@override String get instanceBlocking => 'المثيلات المحجوبة';
	@override String get selectAccount => 'اختر حسابًا';
	@override String get switchAccount => 'تغيير الحساب';
	@override String get enabled => 'مفعّل';
	@override String get disabled => 'معطّل';
	@override String get quickAction => 'الإجراءات السّريعة';
	@override String get user => 'المستخدمون';
	@override String get administration => 'إدارة ';
	@override String get accounts => 'الحسابات';
	@override String get switch_ => 'بدّل';
	@override String get noMaintainerInformationWarning => 'لم تُضبط معلومات المدير';
	@override String get noBotProtectionWarning => 'لم تضبط الحماية من الحسابات الآلية';
	@override String get configure => 'اضبط';
	@override String get postToGallery => 'انشر في المعرض';
	@override String get postToHashtag => 'انشر بهذا الوسم';
	@override String get gallery => 'المعرض';
	@override String get recentPosts => 'المشاركات الحديثة';
	@override String get popularPosts => 'المشاركات المتداولة';
	@override String get shareWithNote => 'شاركه في ملاحظة';
	@override String get ads => 'الإعلانات';
	@override String get expiration => 'ينتهي استطلاع الرأي في';
	@override String get startingperiod => 'ابدأ';
	@override String get memo => 'تذكير';
	@override String get priority => 'الأولوية';
	@override String get high => 'عالية';
	@override String get middle => 'متوسط';
	@override String get low => 'منخفضة';
	@override String get emailNotConfiguredWarning => 'لم تعيّن بريدًا إلكترونيًا';
	@override String get ratio => 'النسبة';
	@override String get previewNoteText => 'اعرض معاينة';
	@override String get customCss => 'CSS مخصصة';
	@override String get customCssWarn => 'استخدم هذه الإعداد فقط إن كان لك علم بماهيّته. إدخال قيمة غير مناسبة سيسسب ضررًا للعميل.';
	@override String get global => 'الشامل';
	@override String get squareAvatars => 'اعرض شكل الصور الرمزية كمربعات';
	@override String get sent => 'أرسل';
	@override String get received => 'اُستلم';
	@override String get searchResult => 'نتائج البحث';
	@override String get hashtags => 'الوسوم';
	@override String get troubleshooting => 'استكشاف الأخطاء وإصلاحها';
	@override String get useBlurEffect => 'استخدم تأثير الطمس في الواجهة';
	@override String get learnMore => 'راجع المزيد';
	@override String get misskeyUpdated => 'حُدث ميسكي!';
	@override String get whatIsNew => 'اعرض التغييرات';
	@override String get translate => 'ترجم';
	@override String translatedFrom({required Object x}) => 'تُرجم من ${x}';
	@override String get accountDeletionInProgress => 'حذف الحساب جارٍ';
	@override String get usernameInfo => 'الاسم الذي يميزك عن بافي مستخدمي هذا الخادم، يمكنك استخدام الحروف اللاتينية (a~z, A~Z) والأرقام (0~9) والشرطة السفلية (_). لا يمكنك تغييره بعد تسجيله.';
	@override String get devMode => 'وضع المُطوّر';
	@override String get keepCw => 'أبقِ على تحذيرات المحتوى';
	@override String get pubSub => 'حسابات Pub/Sub';
	@override String get lastCommunication => 'آخر تواصل';
	@override String get resolved => 'عولج';
	@override String get unresolved => 'لم يعالج';
	@override String get breakFollow => 'إلغاء الاشتراك';
	@override String get breakFollowConfirm => 'أمتأكد من إزالة المتابِع ؟';
	@override String get itsOn => 'مفعّل';
	@override String get itsOff => 'معطّل';
	@override String get on => 'مفعل';
	@override String get off => 'معطل';
	@override String get emailRequiredForSignup => 'عنوان البريد الإلكتروني إلزامي للتسجيل';
	@override String get unread => 'غير مقروءة';
	@override String get filter => 'رشّح';
	@override String get controlPanel => 'لوحة التحكم';
	@override String get manageAccounts => 'إدارة الحسابات';
	@override String get makeReactionsPublic => 'اجعل سجل التفاعلات علنيًا';
	@override String get makeReactionsPublicDescription => 'هذا سيجعل قائمة تفاعلاتك مرئية للعلن.';
	@override String get classic => 'تقليدي';
	@override String get muteThread => 'اكتم النقاش';
	@override String get unmuteThread => 'ارفع الكتم عن النقاش';
	@override String get continueThread => 'اعرض بقية النقاش';
	@override String get deleteAccountConfirm => 'سيحذف حسابك نهائيًا، أتريد المتابعة؟';
	@override String get incorrectPassword => 'كلمة السر خاطئة.';
	@override String voteConfirm({required Object choice}) => 'متيقِّن من تصويتك لـ ${choice}؟';
	@override String get hide => 'إخفاء';
	@override String welcomeBackWithName({required Object name}) => 'مرحبًا بك مجددًا ${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => 'انقر [${ok}] لاستيثاق بريدك الإلكتروني.';
	@override String get overridedDeviceKind => 'نوع الجهاز';
	@override String get smartphone => 'هاتف ذكي';
	@override String get tablet => 'جهاز لوحي';
	@override String get auto => 'تلقائي';
	@override String get themeColor => 'لون السمة';
	@override String get size => 'الحجم';
	@override String get numberOfColumn => 'عدد الأعمدة';
	@override String get searchByGoogle => 'غوغل';
	@override String get mutePeriod => 'مدة الكتم';
	@override String get period => 'ينتهي استطلاع الرأي في';
	@override String get indefinitely => 'أبدًا';
	@override String get tenMinutes => '10 دقائق';
	@override String get oneHour => 'ساعة';
	@override String get oneDay => 'يوم';
	@override String get oneWeek => 'أسبوع';
	@override String get oneMonth => 'شهر';
	@override String get failedToFetchAccountInformation => 'تعذر جلب معلومات الحساب';
	@override String get cropImage => 'اقتصاص الصورة';
	@override String get cropImageAsk => 'أتريد اقتصاص هذه الصورة';
	@override String get cropYes => 'اقتص';
	@override String get cropNo => 'استخدمها كما هي';
	@override String get file => 'الملفات';
	@override String recentNHours({required Object n}) => 'آخر ${n} ساعة';
	@override String recentNDays({required Object n}) => 'آخر ${n} أيام';
	@override String get noEmailServerWarning => 'خادم البريد غير مضبوط.';
	@override String get thereIsUnresolvedAbuseReportWarning => 'توجد بلاغات غير معالجة.';
	@override String get recommended => 'مقترح';
	@override String get check => 'التحقق';
	@override String get driveCapOverrideLabel => 'غيّر حجم قرص التخزين لهذا المستخدم';
	@override String get driveCapOverrideCaption => 'أعد الحجم إلى القيمة الافتراضية بإدخال 0 أو أقل.';
	@override String get requireAdminForView => 'لاستعراض هذه الصفحة وجب عليك الولوج كمدير.';
	@override String get isSystemAccount => 'حساب أنشأه النظام ويُدار من قِبله.';
	@override String typeToConfirm({required Object x}) => 'أدخل ${x} للتأكيد';
	@override String get deleteAccount => 'احذف الحساب';
	@override String get document => 'التوثيق';
	@override String get numberOfPageCache => 'عدد الصفحات المخزنة مؤقتًا';
	@override String get numberOfPageCacheDescription => 'رفع الرقم سيسحن تجربة المستخدم لكن سيرفع استهلاك الذاكرة.';
	@override String get logoutConfirm => 'أتريد الخروج؟';
	@override String get lastActiveDate => 'آخر استخدام';
	@override String get statusbar => 'شريط الحالة';
	@override String get pleaseSelect => 'حدد خيارًا';
	@override String get reverse => 'اقلب';
	@override String get colored => 'ملوّن';
	@override String get refreshInterval => 'مهلة التحديث';
	@override String get label => 'التسمية';
	@override String get type => 'نوع';
	@override String get speed => 'سرعة';
	@override String get slow => 'بطيء';
	@override String get fast => 'سريع';
	@override String get sensitiveMediaDetection => 'التعرف على المحتوى الحساس';
	@override String get localOnly => 'المحلي فقط';
	@override String get remoteOnly => 'بُعدي فقط';
	@override String get failedToUpload => 'فشل الرفع';
	@override String get cannotUploadBecauseInappropriate => 'تعذر رفع الملف لوجود محتوى حساس فيه.';
	@override String get cannotUploadBecauseNoFreeSpace => 'تعذر رفع الملف لنقص مساحة التخزين.';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'تعذر رفع الملف بسبب تجاوز حجمه للحد المسموح';
	@override String get beta => 'بيتا';
	@override String get enableAutoSensitive => 'تعيين تلقائي كمحتوى حساس NSFW';
	@override String get enableAutoSensitiveDescription => 'عند الاستطاعة يسمح باكتشاف المحتوى حساس NSFW تلقائيًا في الوسائط باستخدام تعلم الآلة ووسمها تبعًا لذلك. قد يكون هذا الخيار مفعلا من جهة الخادم وسيعمل حتى وان عُطل.';
	@override String get activeEmailValidationDescription => 'يتحقق من صحة عنوان البريد الإلكتروني بشكل أكثر حزمًا وذلك عبر تحديد ما إذا كان عنوان بريد إلكتروني مؤقت وإمكانية التواصل معه. إذا لم يحدد هذا الخيار فسيتحقق من نسق عنوان البريد الإلكتروني.';
	@override String get navbar => 'شريط التنقل';
	@override String get shuffle => 'خلط';
	@override String get account => 'الحسابات';
	@override String get move => 'أنقل';
	@override String get pushNotification => 'إرسال الإشعارات';
	@override String get subscribePushNotification => 'فعّل إرسال الإشعارات';
	@override String get unsubscribePushNotification => 'عطل إرسال الإشعارات';
	@override String get pushNotificationAlreadySubscribed => 'إرسال الإشعارات مفعل سلفًا';
	@override String get pushNotificationNotSupported => 'متصفحك لا يدعم إرسال الإشعارات أو المثيل لا يدعمها.';
	@override String get sendPushNotificationReadMessage => 'احذف الإشعارات فور قراءتها';
	@override String get sendPushNotificationReadMessageCaption => 'هذا قد يزيد من معدل استهلاك الطاقة لجهازك.';
	@override String get windowMaximize => 'املأ الشاشة';
	@override String get windowRestore => 'استرجاع';
	@override String get caption => 'التعليق التوضيحي';
	@override String get loggedInAsBot => 'والج كآلي';
	@override String get tools => 'أدوات';
	@override String get cannotLoad => 'تعذر التحميل';
	@override String get numberOfProfileView => 'مشاهدات الملف الشخصي';
	@override String get like => 'أعجبني';
	@override String get unlike => 'ألغِ الإعجاب';
	@override String get numberOfLikes => 'الإعجابات';
	@override String get show => 'المظهر';
	@override String get neverShow => 'لا تظهره مجددًا';
	@override String get remindMeLater => 'ربما لاحقا';
	@override String get didYouLikeMisskey => 'هل أعجبك ميسكي؟';
	@override String pleaseDonate({required Object host}) => 'يستخدم ${host} البرمجية الحرة ميسكي. نتمنى أن تتبرعوا للمشروع مما سيسمح لنا متابعة تطويره!';
	@override String get roles => 'الأدوار';
	@override String get role => 'الدور';
	@override String get noRole => 'لم يُعثر على دور';
	@override String get normalUser => 'مستخدم عادي';
	@override String get undefined => 'غير معرّف';
	@override String get assign => 'أسند';
	@override String get unassign => 'ألغ الإسناد';
	@override String get color => 'اللون';
	@override String get manageCustomEmojis => 'إدارة الإيموجي المخصصة';
	@override String get youCannotCreateAnymore => 'وصلت لسقف الإنشاء.';
	@override String get cannotPerformTemporary => 'غير متاح مؤقتاً';
	@override String get invalidParamError => 'معاملات غير صالحة';
	@override String get permissionDeniedError => 'رُفضة العملية';
	@override String get preset => 'إعدادات مسبقة';
	@override String get selectFromPresets => 'اختر من الإعدادات المسبقة';
	@override String get achievements => 'الإنجازات';
	@override String get gotInvalidResponseError => 'استجابة غير متوقعة من الخادم';
	@override String get gotInvalidResponseErrorDescription => 'يتعذر الوصول إلى الخادم أوأنه يُصان، رجاءً حاول لاحقًا.';
	@override String get thisPostMayBeAnnoying => 'هذا قد يزعج الآخرين.';
	@override String get thisPostMayBeAnnoyingHome => 'أنشر في الخط الزمني الرئيس';
	@override String get thisPostMayBeAnnoyingCancel => 'ألغِ';
	@override String get internalServerError => 'خطأ داخلي في الخادم';
	@override String get internalServerErrorDescription => 'واجه الخادم خطأ غي متوقع.';
	@override String get copyErrorInfo => 'انسخ تفاصيل الخطأ';
	@override String get joinThisServer => 'سجل في هذا المثيل';
	@override String get exploreOtherServers => 'اعثر على مثيل آخر';
	@override String get disableFederationOk => 'عطّل';
	@override String get invitationRequiredToRegister => 'هذا المثيل للمدعوين فقط. لتسجيل فيه تحتاج رمزًا صالحًا.';
	@override String get postToTheChannel => 'انشر في قناة';
	@override String get cannotBeChangedLater => 'لا يمكن تغييره لاحقًا.';
	@override String get reactionAcceptance => 'قبول التفاعلات';
	@override String get rolesAssignedToMe => 'الأدوار المسندة إلي';
	@override String get resetPasswordConfirm => 'هل تريد إعادة تعيين كلمة السر؟';
	@override String get license => 'الرخصة';
	@override String get unfavoriteConfirm => 'أتريد إزالتها من المفضلة؟';
	@override String get reactionsDisplaySize => 'حجم التفاعلات';
	@override String get limitWidthOfReaction => 'تصغير حجم التفاعلات';
	@override String get noteIdOrUrl => 'معرف الملاحظة أو رابطها';
	@override String get video => 'فيديو';
	@override String get videos => 'فيديوهات';
	@override String get dataSaver => 'موفر البيانات';
	@override String get accountMigration => 'ترحيل الحساب';
	@override String get accountMoved => 'نقل هذا المستخدم حسابه:';
	@override String get accountMovedShort => 'رُحل هذا الحساب.';
	@override String get operationForbidden => 'عملية ممنوعة';
	@override String get forceShowAds => 'أظهر الإعلانات التجارية دائما';
	@override String get reactionsList => 'التفاعلات';
	@override String get renotesList => 'إعادات النشر';
	@override String get notificationDisplay => 'إشعارات';
	@override String get leftTop => 'أعلى اليسار';
	@override String get rightTop => 'أعلى اليمين';
	@override String get leftBottom => 'أسفل اليسار';
	@override String get rightBottom => 'أسفل اليمين';
	@override String get stackAxis => 'اتجاه التكديس';
	@override String get vertical => 'عمودي';
	@override String get horizontal => 'جانبي';
	@override String get position => 'الموضع';
	@override String get serverRules => 'قوانين الخادم';
	@override String get pleaseConfirmBelowBeforeSignup => 'رجاءً وافق على ما يلي قبل التسجيل.';
	@override String get pleaseAgreeAllToContinue => 'للمتابعة وافق على الحقول أعلاه.';
	@override String get continue_ => 'متابعة';
	@override String get preservedUsernames => 'أسماء المستخدمين المحجوزة';
	@override String get preservedUsernamesDescription => 'قائمة بأسماء المستخدمين المحجوزة كلٌ في سطر. لن يُقبل التسجيل بهذه الأسماء وستبقى محصورة على التسجيل اليدوي بواسطة المديرين. لن يتأثر المستخدمون الذين يملكون هذه الأسماء سلفًا.';
	@override String get createNoteFromTheFile => 'أنشئ ملاحظة من هذا الملف';
	@override String get archive => 'الأرشيف';
	@override String channelArchiveConfirmTitle({required Object name}) => 'أتريد أرشفت ${name}؟';
	@override String get channelArchiveConfirmDescription => 'لن يمكنك نشر ملاحظات في القناة المأرشفة ولن تظهر في قائمة القنوات ولا في نتائج البحث.';
	@override String get thisChannelArchived => 'أُرشفت هذه القناة.';
	@override String get displayOfNote => 'عرض الملاحظة';
	@override String get initialAccountSetting => 'إعداد الملف الشخصي';
	@override String get youFollowing => 'متابَع';
	@override String get preventAiLearning => 'منع استخدام البيانات في تعليم الآلة';
	@override String get options => 'خيارات';
	@override String get specifyUser => 'مستخدم محدد';
	@override String get failedToPreviewUrl => 'تتعذر المعاينة';
	@override String get update => 'حدِّث';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'الأدوار التي يُسمح لأصحابها استخدام هذا اإيموجي في اللتفاعل';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'إذا لم تحدد دورًا يمكن للجميع استخدام هذا الإيموجي في التفاعل.';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'يجب أن تكون الأدوار علنية.';
	@override String get cancelReactionConfirm => 'أتريد حذف تفاعلك؟';
	@override String get changeReactionConfirm => 'أتريد تعديل تفاعلك؟';
	@override String get later => 'لاحقاً';
	@override String get goToMisskey => 'لميسكي';
	@override String get additionalEmojiDictionary => 'قواميس إيموجي إضافية';
	@override String get installed => 'مُثبت';
	@override String get enableServerMachineStats => 'نشر إحصائيات عتاد الخادم';
	@override String get turnOffToImprovePerformance => 'تفعيله قد يزيد الأداء.';
	@override String get createInviteCode => 'ولِّد دعوة';
	@override String get inviteCodeCreated => 'ولِّدت دعوة';
	@override String get inviteLimitExceeded => 'وصلتَ لحد عدد الدعوات المسموح لك توليدها.';
	@override String createLimitRemaining({required Object limit}) => 'حد عدد الدعوات: ${limit} دعوة';
	@override String get expirationDate => 'تاريخ انتهاء الصلاحية';
	@override String get noExpirationDate => 'لا نهاية لصلاحيتها';
	@override String get inviteCodeUsedAt => 'اُستخدم رمز الدعوة في';
	@override String get registeredUserUsingInviteCode => 'اِستخدم رمز الدعوة';
	@override String get unused => 'غير مستعمَل';
	@override String get expired => 'منتهية صلاحيته';
	@override String get icon => 'الصورة الرمزية';
	@override String get replies => 'رد';
	@override String get renotes => 'أعد النشر';
	@override String get sourceCode => 'الشفرة المصدرية';
	@override String get flip => 'اقلب';
	@override String lastNDays({required Object n}) => 'آخر ${n} أيام';
	@override String get surrender => 'ألغِ';
	@override String get postForm => 'أنشئ ملاحظة';
	@override String get information => 'عن';
	@override String get inMinutes => 'د';
	@override String get inDays => 'ي';
	@override String get widgets => 'التطبيقات المُصغّرة';
	@override String get presets => 'إعدادات مسبقة';
	@override late final _TranslationsMisskeyImageEditingArSa imageEditing_ = _TranslationsMisskeyImageEditingArSa._(_root);
	@override late final _TranslationsMisskeyImageFrameEditorArSa imageFrameEditor_ = _TranslationsMisskeyImageFrameEditorArSa._(_root);
	@override late final _TranslationsMisskeyChatArSa chat_ = _TranslationsMisskeyChatArSa._(_root);
	@override late final _TranslationsMisskeyDeliveryArSa delivery_ = _TranslationsMisskeyDeliveryArSa._(_root);
	@override late final _TranslationsMisskeyInitialAccountSettingArSa initialAccountSetting_ = _TranslationsMisskeyInitialAccountSettingArSa._(_root);
	@override late final _TranslationsMisskeyServerRulesArSa serverRules_ = _TranslationsMisskeyServerRulesArSa._(_root);
	@override late final _TranslationsMisskeyAccountMigrationArSa accountMigration_ = _TranslationsMisskeyAccountMigrationArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsArSa achievements_ = _TranslationsMisskeyAchievementsArSa._(_root);
	@override late final _TranslationsMisskeyRoleArSa role_ = _TranslationsMisskeyRoleArSa._(_root);
	@override late final _TranslationsMisskeyEmailUnavailableArSa emailUnavailable_ = _TranslationsMisskeyEmailUnavailableArSa._(_root);
	@override late final _TranslationsMisskeyFfVisibilityArSa ffVisibility_ = _TranslationsMisskeyFfVisibilityArSa._(_root);
	@override late final _TranslationsMisskeySignupArSa signup_ = _TranslationsMisskeySignupArSa._(_root);
	@override late final _TranslationsMisskeyAccountDeleteArSa accountDelete_ = _TranslationsMisskeyAccountDeleteArSa._(_root);
	@override late final _TranslationsMisskeyAdArSa ad_ = _TranslationsMisskeyAdArSa._(_root);
	@override late final _TranslationsMisskeyForgotPasswordArSa forgotPassword_ = _TranslationsMisskeyForgotPasswordArSa._(_root);
	@override late final _TranslationsMisskeyGalleryArSa gallery_ = _TranslationsMisskeyGalleryArSa._(_root);
	@override late final _TranslationsMisskeyEmailArSa email_ = _TranslationsMisskeyEmailArSa._(_root);
	@override late final _TranslationsMisskeyPluginArSa plugin_ = _TranslationsMisskeyPluginArSa._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupsArSa preferencesBackups_ = _TranslationsMisskeyPreferencesBackupsArSa._(_root);
	@override late final _TranslationsMisskeyRegistryArSa registry_ = _TranslationsMisskeyRegistryArSa._(_root);
	@override late final _TranslationsMisskeyAboutMisskeyArSa aboutMisskey_ = _TranslationsMisskeyAboutMisskeyArSa._(_root);
	@override late final _TranslationsMisskeyInstanceTickerArSa instanceTicker_ = _TranslationsMisskeyInstanceTickerArSa._(_root);
	@override late final _TranslationsMisskeyServerDisconnectedBehaviorArSa serverDisconnectedBehavior_ = _TranslationsMisskeyServerDisconnectedBehaviorArSa._(_root);
	@override late final _TranslationsMisskeyChannelArSa channel_ = _TranslationsMisskeyChannelArSa._(_root);
	@override late final _TranslationsMisskeyMenuDisplayArSa menuDisplay_ = _TranslationsMisskeyMenuDisplayArSa._(_root);
	@override late final _TranslationsMisskeyWordMuteArSa wordMute_ = _TranslationsMisskeyWordMuteArSa._(_root);
	@override late final _TranslationsMisskeyInstanceMuteArSa instanceMute_ = _TranslationsMisskeyInstanceMuteArSa._(_root);
	@override late final _TranslationsMisskeyThemeArSa theme_ = _TranslationsMisskeyThemeArSa._(_root);
	@override late final _TranslationsMisskeySfxArSa sfx_ = _TranslationsMisskeySfxArSa._(_root);
	@override late final _TranslationsMisskeyAgoArSa ago_ = _TranslationsMisskeyAgoArSa._(_root);
	@override late final _TranslationsMisskeyTimeArSa time_ = _TranslationsMisskeyTimeArSa._(_root);
	@override late final _TranslationsMisskeyX2faArSa x2fa_ = _TranslationsMisskeyX2faArSa._(_root);
	@override late final _TranslationsMisskeyPermissionsArSa permissions_ = _TranslationsMisskeyPermissionsArSa._(_root);
	@override late final _TranslationsMisskeyAuthArSa auth_ = _TranslationsMisskeyAuthArSa._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesArSa antennaSources_ = _TranslationsMisskeyAntennaSourcesArSa._(_root);
	@override late final _TranslationsMisskeyWeekdayArSa weekday_ = _TranslationsMisskeyWeekdayArSa._(_root);
	@override late final _TranslationsMisskeyWidgetsArSa widgets_ = _TranslationsMisskeyWidgetsArSa._(_root);
	@override late final _TranslationsMisskeyCwArSa cw_ = _TranslationsMisskeyCwArSa._(_root);
	@override late final _TranslationsMisskeyPollArSa poll_ = _TranslationsMisskeyPollArSa._(_root);
	@override late final _TranslationsMisskeyVisibilityArSa visibility_ = _TranslationsMisskeyVisibilityArSa._(_root);
	@override late final _TranslationsMisskeyPostFormArSa postForm_ = _TranslationsMisskeyPostFormArSa._(_root);
	@override late final _TranslationsMisskeyProfileArSa profile_ = _TranslationsMisskeyProfileArSa._(_root);
	@override late final _TranslationsMisskeyExportOrImportArSa exportOrImport_ = _TranslationsMisskeyExportOrImportArSa._(_root);
	@override late final _TranslationsMisskeyChartsArSa charts_ = _TranslationsMisskeyChartsArSa._(_root);
	@override late final _TranslationsMisskeyInstanceChartsArSa instanceCharts_ = _TranslationsMisskeyInstanceChartsArSa._(_root);
	@override late final _TranslationsMisskeyTimelinesArSa timelines_ = _TranslationsMisskeyTimelinesArSa._(_root);
	@override late final _TranslationsMisskeyPlayArSa play_ = _TranslationsMisskeyPlayArSa._(_root);
	@override late final _TranslationsMisskeyPagesArSa pages_ = _TranslationsMisskeyPagesArSa._(_root);
	@override late final _TranslationsMisskeyRelayStatusArSa relayStatus_ = _TranslationsMisskeyRelayStatusArSa._(_root);
	@override late final _TranslationsMisskeyNotificationArSa notification_ = _TranslationsMisskeyNotificationArSa._(_root);
	@override late final _TranslationsMisskeyDeckArSa deck_ = _TranslationsMisskeyDeckArSa._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsArSa webhookSettings_ = _TranslationsMisskeyWebhookSettingsArSa._(_root);
	@override late final _TranslationsMisskeyAbuseReportArSa abuseReport_ = _TranslationsMisskeyAbuseReportArSa._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesArSa moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesArSa._(_root);
	@override late final _TranslationsMisskeyReversiArSa reversi_ = _TranslationsMisskeyReversiArSa._(_root);
	@override late final _TranslationsMisskeyOfflineScreenArSa offlineScreen_ = _TranslationsMisskeyOfflineScreenArSa._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsArSa remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsArSa._(_root);
	@override late final _TranslationsMisskeySearchArSa search_ = _TranslationsMisskeySearchArSa._(_root);
	@override late final _TranslationsMisskeyWatermarkEditorArSa watermarkEditor_ = _TranslationsMisskeyWatermarkEditorArSa._(_root);
	@override late final _TranslationsMisskeyImageEffectorArSa imageEffector_ = _TranslationsMisskeyImageEffectorArSa._(_root);
	@override late final _TranslationsMisskeyQrArSa qr_ = _TranslationsMisskeyQrArSa._(_root);
}

// Path: misskey.imageEditing_
class _TranslationsMisskeyImageEditingArSa extends TranslationsMisskeyImageEditingEnUs {
	_TranslationsMisskeyImageEditingArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyImageEditingVarsArSa vars_ = _TranslationsMisskeyImageEditingVarsArSa._(_root);
}

// Path: misskey.imageFrameEditor_
class _TranslationsMisskeyImageFrameEditorArSa extends TranslationsMisskeyImageFrameEditorEnUs {
	_TranslationsMisskeyImageFrameEditorArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get font => 'الخط';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
}

// Path: misskey.chat_
class _TranslationsMisskeyChatArSa extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get invitations => 'دعوة';
	@override String get noHistory => 'السجل فارغ';
	@override String get members => 'الأعضاء';
	@override String get home => 'الرئيسي';
	@override String get send => 'أرسل';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryArSa extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get stop => 'مُعلّق';
}

// Path: misskey.initialAccountSetting_
class _TranslationsMisskeyInitialAccountSettingArSa extends TranslationsMisskeyInitialAccountSettingEnUs {
	_TranslationsMisskeyInitialAccountSettingArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => 'نجح إنشاء حسابك!';
	@override String get letsStartAccountSetup => 'إذا كنت جديدًا لنعدّ حسابك الشخصي.';
	@override String get letsFillYourProfile => 'أولًا لنعد ملفك الشخصي.';
	@override String get profileSetting => 'إعدادات الملف الشخصي';
	@override String get privacySetting => 'إعدادات الخصوصية';
	@override String get theseSettingsCanEditLater => 'يمكنك تغيير هذه الإعدادات لاحقًا.';
	@override String get skipAreYouSure => 'أتريد تخطي إعداد الملف الشخصي؟';
	@override String get laterAreYouSure => 'أتريد إعداد الملف الشخصي لاحقًا؟';
}

// Path: misskey.serverRules_
class _TranslationsMisskeyServerRulesArSa extends TranslationsMisskeyServerRulesEnUs {
	_TranslationsMisskeyServerRulesArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get description => 'مجموعة من القواعد لعرضها عند التسجيل، من المستحسن كتابة ملخصٍ للشروط الخدمة.';
}

// Path: misskey.accountMigration_
class _TranslationsMisskeyAccountMigrationArSa extends TranslationsMisskeyAccountMigrationEnUs {
	_TranslationsMisskeyAccountMigrationArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => 'انقل حسابًا آخر لهذا الحساب';
	@override String moveFromLabel({required Object n}) => 'الحساب الأصلي #${n}';
	@override String get moveTo => 'انقل هذا الحساب لحساب آخر';
	@override String get moveToLabel => 'الحساب الوجهة:';
	@override String get moveCannotBeUndone => 'لا يمكن التراجع عن نقل الحساب.';
	@override String get movedTo => 'الحساب الوجهة:';
}

// Path: misskey.achievements_
class _TranslationsMisskeyAchievementsArSa extends TranslationsMisskeyAchievementsEnUs {
	_TranslationsMisskeyAchievementsArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesArSa types_ = _TranslationsMisskeyAchievementsTypesArSa._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRoleArSa extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRoleArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'دور جديد';
	@override String get edit => 'حرر الأدوار';
	@override String get name => 'اسم الدور';
	@override String get description => 'وصف الدور';
	@override String get permission => 'أذونات الدور';
	@override String get assignTarget => 'نوع الإسناد';
	@override String get condition => 'الشرط';
	@override String get options => 'خيارات';
	@override String get policies => 'السياسة العامة';
	@override String get priority => 'الأولوية';
	@override late final _TranslationsMisskeyRolePriorityArSa priority_ = _TranslationsMisskeyRolePriorityArSa._(_root);
	@override late final _TranslationsMisskeyRoleOptionsArSa options_ = _TranslationsMisskeyRoleOptionsArSa._(_root);
	@override late final _TranslationsMisskeyRoleConditionArSa condition_ = _TranslationsMisskeyRoleConditionArSa._(_root);
}

// Path: misskey.emailUnavailable_
class _TranslationsMisskeyEmailUnavailableArSa extends TranslationsMisskeyEmailUnavailableEnUs {
	_TranslationsMisskeyEmailUnavailableArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get used => 'هذا البريد الإلكتروني مستخدم';
	@override String get format => 'صيغة البريد الإلكتروني غير صالحة';
	@override String get mx => 'خادم البريد الإلكتروني غير صالح';
	@override String get smtp => 'خادم البريد الإلكتروتي لا يستجيب';
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilityArSa extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilityArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get public => 'علني';
	@override String get followers => 'مرئية لمتابِعيك فقط';
	@override String get private => 'خاص';
}

// Path: misskey.signup_
class _TranslationsMisskeySignupArSa extends TranslationsMisskeySignupEnUs {
	_TranslationsMisskeySignupArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'كدت تنتهي';
	@override String get emailAddressInfo => 'رجاءً أدخل بريدك الإلكتروني.';
	@override String emailSent({required Object email}) => 'أرسلت رسالة تأكيد إلى بريدك الإلكتروني (${email})، أنقر على الرابط الموجود فيها لإكمال التسجيل.';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeleteArSa extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeleteArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'احذف الحساب';
	@override String get mayTakeTime => 'نظرًا لأن حذف الحساب يحتاج موارد كثيرة فقد يستغرق وقتًا طويلاً ليكتمل وذلك بناءً على كمية المحتوى الموجود في الحساب وعدد الملفات المرفوعة.';
	@override String get sendEmail => 'عند إنتهاء الحذف سترسل رسالة إلى البريد الإلكتروني المرتبط بهذا الحساب.';
	@override String get requestAccountDelete => 'أرسل طلبًا لحذف الحساب';
	@override String get started => 'بدأت عملية الحذف.';
	@override String get inProgress => 'عملية الحذف جارية';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdArSa extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get back => 'رجوع';
	@override String get reduceFrequencyOfThisAd => 'قلل عرض هذا الإعلان';
	@override String get hide => 'لا تظهره بتاتًا';
}

// Path: misskey.forgotPassword_
class _TranslationsMisskeyForgotPasswordArSa extends TranslationsMisskeyForgotPasswordEnUs {
	_TranslationsMisskeyForgotPasswordArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'أدخل البريد الإلكتروني المرتبط بحسابك لكي يرسل إليك رابط لإعادة تعيين كلمة المرور.';
	@override String get ifNoEmail => 'إذا لم تربط حسابك ببريد إلكتروني سيتوجب عليك التواصل مع مدير الموقع.';
	@override String get contactAdmin => 'هذا المثيل لا يدعم استخدام البريد الإلكتروني، إن أردت إعادة تعيين كلمة المرور تواصل مع المدير.';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryArSa extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get my => 'معرضي';
	@override String get liked => 'المشاركات المُعجب بها';
	@override String get like => 'أعجبني';
	@override String get unlike => 'أزل الإعجاب';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailArSa extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowArSa follow_ = _TranslationsMisskeyEmailFollowArSa._(_root);
	@override late final _TranslationsMisskeyEmailReceiveFollowRequestArSa receiveFollowRequest_ = _TranslationsMisskeyEmailReceiveFollowRequestArSa._(_root);
}

// Path: misskey.plugin_
class _TranslationsMisskeyPluginArSa extends TranslationsMisskeyPluginEnUs {
	_TranslationsMisskeyPluginArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get install => 'ثبّت إضافات';
	@override String get installWarn => 'رجاءً لا تثبت إضافات غير موثوقة.';
	@override String get manage => 'إدارة الإضافات';
	@override String get viewSource => 'اظهر المصدر';
}

// Path: misskey.preferencesBackups_
class _TranslationsMisskeyPreferencesBackupsArSa extends TranslationsMisskeyPreferencesBackupsEnUs {
	_TranslationsMisskeyPreferencesBackupsArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String createdAt({required Object date, required Object time}) => 'تم إنشاؤه: ${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => 'آخر تحديث: ${date} ${time}';
}

// Path: misskey.registry_
class _TranslationsMisskeyRegistryArSa extends TranslationsMisskeyRegistryEnUs {
	_TranslationsMisskeyRegistryArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get scope => 'الحيّز';
	@override String get key => 'مفتاح';
	@override String get keys => 'المفاتيح';
	@override String get domain => 'النّطاق';
	@override String get createKey => 'أنشئ مفتاحًا';
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeyArSa extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeyArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get about => 'ميسكي هو برمجية مفتوحة المصدر يطورها syuilo منذ 2014.';
	@override String get contributors => 'المساهمون الرئيسيون';
	@override String get allContributors => 'كل المساهمين';
	@override String get source => 'الشفرة المصدرية';
	@override String get translation => 'ترجم ميسكي';
	@override String get donate => 'تبرع لميسكي';
	@override String get morePatrons => 'نحن نقدر الدعم الذي قدمه العديد من الأشخاص الذين لم نذكرهم. شكرًا لكم 🥰';
	@override String get patrons => 'الداعمون';
}

// Path: misskey.instanceTicker_
class _TranslationsMisskeyInstanceTickerArSa extends TranslationsMisskeyInstanceTickerEnUs {
	_TranslationsMisskeyInstanceTickerArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get none => 'لا تظهره بتاتًا';
	@override String get remote => 'أظهر للمستخدمين البِعاد';
	@override String get always => 'أظهره دائمًا';
}

// Path: misskey.serverDisconnectedBehavior_
class _TranslationsMisskeyServerDisconnectedBehaviorArSa extends TranslationsMisskeyServerDisconnectedBehaviorEnUs {
	_TranslationsMisskeyServerDisconnectedBehaviorArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get reload => 'إعادة تحميل تلقائية';
	@override String get dialog => 'أظهر مربع حوار التحذيرات';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelArSa extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get create => 'أنشئ قناة';
	@override String get edit => 'عدّل قناة';
	@override String get setBanner => 'عيّن اللافتة';
	@override String get removeBanner => 'أزل اللافتة';
	@override String get featured => 'المتداوَلة';
	@override String get owned => 'قنواتي';
	@override String get following => 'متابَع';
	@override String usersCount({required Object n}) => '${n} منتسب';
	@override String notesCount({required Object n}) => '${n} ملاحظة';
}

// Path: misskey.menuDisplay_
class _TranslationsMisskeyMenuDisplayArSa extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplayArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'جانبي';
	@override String get top => 'الأعلى';
	@override String get hide => 'إخفاء';
}

// Path: misskey.wordMute_
class _TranslationsMisskeyWordMuteArSa extends TranslationsMisskeyWordMuteEnUs {
	_TranslationsMisskeyWordMuteArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'الكلمات المحظورة';
	@override String get muteWordsDescription => 'افصل بينهم بمسافة لاستخدام معامل "و" أو بسطر لاستخدام معامل "أو".';
	@override String get muteWordsDescription2 => 'احصر الكلمات المفتاحية بين بين شرطتين مائلتين لاستخدامها كتعابير نمطية';
}

// Path: misskey.instanceMute_
class _TranslationsMisskeyInstanceMuteArSa extends TranslationsMisskeyInstanceMuteEnUs {
	_TranslationsMisskeyInstanceMuteArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'هذه سيحجب كل ملاحظات الخوادم المحجوبة ومشاركاتها والردود على تلك الملاحظات حتى وإن كانت من خادم غير محجوب.';
	@override String get instanceMuteDescription2 => 'مدخلة لكل سطر';
	@override String get title => 'يخفي ملاحظات الخوادم المسرودة.';
	@override String get heading => 'قائمة الخوادم المحجوبة';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeArSa extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get explore => 'استكشف قوالب المظهر';
	@override String get install => 'تنصيب قالب';
	@override String get manage => 'إدارة القوالب';
	@override String get code => 'شيفرة القالب';
	@override String get description => 'الوصف';
	@override String installed({required Object name}) => 'تم تنصيب ${name}';
	@override String get installedThemes => 'السمات المثبتة';
	@override String get builtinThemes => 'السمات المدمجة';
	@override String get alreadyInstalled => 'هذه السمة مثبتة سلفًا';
	@override String get invalid => 'تنسيق السمة غير صالح';
	@override String get make => 'إنشاء قالب';
	@override String get addConstant => 'أضف ثابتًا';
	@override String get constant => 'ثابت';
	@override String get defaultValue => 'القيمة الافتراضية';
	@override String get color => 'اللون';
	@override String get key => 'مفتاح';
	@override String get func => 'دوال';
	@override String get funcKind => 'نوع الدالة';
	@override String get argument => 'معامل';
	@override String get alpha => 'الشفافية';
	@override String get inputConstantName => 'أدخل اسمًا للثابت';
	@override String deleteConstantConfirm({required Object const_}) => 'أمتأكد من حذف الثابت ${const_}؟';
	@override late final _TranslationsMisskeyThemeKeysArSa keys = _TranslationsMisskeyThemeKeysArSa._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxArSa extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get note => 'الملاحظات';
	@override String get noteMy => 'ملاحظتي';
	@override String get notification => 'الإشعارات';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoArSa extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get future => 'المستقبَل';
	@override String get justNow => 'اللحظة';
	@override String secondsAgo({required Object n}) => 'منذ ${n} ثوانٍ';
	@override String minutesAgo({required Object n}) => 'منذ ${n} دقائق';
	@override String hoursAgo({required Object n}) => 'منذ ${n} ساعة';
	@override String daysAgo({required Object n}) => 'منذ ${n} أيام';
	@override String weeksAgo({required Object n}) => 'منذ ${n} أسابيع';
	@override String monthsAgo({required Object n}) => 'منذ ${n} أشهر';
	@override String yearsAgo({required Object n}) => 'منذ ${n} سنوات';
	@override String get invalid => 'لا يوجد شيء هنا';
}

// Path: misskey.time_
class _TranslationsMisskeyTimeArSa extends TranslationsMisskeyTimeEnUs {
	_TranslationsMisskeyTimeArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get second => 'ثا';
	@override String get minute => 'د';
	@override String get hour => 'سا';
	@override String get day => 'ي';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faArSa extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'سجلت سلفًا جهازًا للاستيثاق بعاملين.';
	@override String step1({required Object a, required Object b}) => 'أولًا ثبّت تطبيق استيثاق على جهازك (مثل ${a} و${b}).';
	@override String get step2 => 'امسح رمز الاستجابة السريعة الموجد على الشاشة.';
	@override String get step3 => 'أدخل الرمز الموجود في تطبيقك لإكمال التثبيت.';
	@override String get step4 => 'من هذه اللحظة أثناء ولوجك سيُطلب منك الرمز.';
	@override String get renewTOTPCancel => 'ليس اﻵن';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsArSa extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'اعرض معلومات حسابك';
	@override String get writeAccount => 'تعديل معلومات حسابك';
	@override String get readBlocks => 'اعرض قائمة المستخدمين المحجوبين';
	@override String get writeBlocks => 'عدّل قائمة المستخدمين المحجوبين';
	@override String get readDrive => 'تصفح قرص التخزين';
	@override String get writeDrive => 'احذف أو عدّل محتويات قرص التخزين';
	@override String get readFavorites => 'اعرض المفضلة';
	@override String get writeFavorites => 'عدّل المفضلة';
	@override String get readFollowing => 'اعرض معلومات متابَعيك';
	@override String get writeFollowing => 'تابع أو ألغ متابعة حسابات';
	@override String get readMessaging => 'اعرض المحادثات';
	@override String get writeMessaging => 'اكتب أو احذف رسائل محادثة';
	@override String get readMutes => 'اعرض قائمة المستخدمين المكتومين';
	@override String get writeMutes => 'عدّل قائمة المستخدمين المكتومين';
	@override String get writeNotes => 'أنشئ أو احذف ملاحظات';
	@override String get readNotifications => 'اظهر الإشعارات';
	@override String get writeNotifications => 'إدارة الإشعارات';
	@override String get readReactions => 'اعرض تفاعلاتك';
	@override String get writeReactions => 'عدّل تفاعلاتك';
	@override String get writeVotes => 'صوّت';
	@override String get readPages => 'اعرض صفحاتك';
	@override String get writePages => 'عدّل أو احذف صفحاتك';
	@override String get readPageLikes => 'يعرض ما أعجبك من ملاحظات في صفحات';
	@override String get readUserGroups => 'اعرض فِرق المستخدمين';
	@override String get writeUserGroups => 'عدّل أو احذف فِرق المستخدمين';
	@override String get readChannels => 'طالع قنواتك';
	@override String get writeChannels => 'عدّل القنوات';
	@override String get readGallery => 'اعرض المعرض';
	@override String get writeGallery => 'عدّل المعرض';
	@override String get readGalleryLikes => 'يعرض ما أعجبك من مشاركات المعرض';
	@override String get writeChat => 'اكتب أو احذف رسائل محادثة';
}

// Path: misskey.auth_
class _TranslationsMisskeyAuthArSa extends TranslationsMisskeyAuthEnUs {
	_TranslationsMisskeyAuthArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String shareAccess({required Object name}) => 'أتريد التفويض لـ "${name}" بالوصول لحسابك؟';
	@override String get shareAccessAsk => 'هل تخول لهذا التطبيق الوصول لحسابك؟';
	@override String get permissionAsk => 'يطلب التطبيق الأذون التالية';
	@override String get pleaseGoBack => 'رجاءً عد للتطبيق';
	@override String get callback => 'العودة للتطبيق';
	@override String get denied => 'رُفض الوصول';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesArSa extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get all => 'كل الملاحظات';
	@override String get homeTimeline => 'ملاحظات المستخدمين المتابَعين';
	@override String get users => 'ملاحظات مستخدمين محددين';
}

// Path: misskey.weekday_
class _TranslationsMisskeyWeekdayArSa extends TranslationsMisskeyWeekdayEnUs {
	_TranslationsMisskeyWeekdayArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get sunday => 'الأحد';
	@override String get monday => 'الإثنين';
	@override String get tuesday => 'الثلاثاء';
	@override String get wednesday => 'الأربعاء';
	@override String get thursday => 'الخميس';
	@override String get friday => 'الجمعة';
	@override String get saturday => 'السبت';
}

// Path: misskey.widgets_
class _TranslationsMisskeyWidgetsArSa extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'الملف التعريفي';
	@override String get instanceInfo => 'معلومات مثيل الخادم';
	@override String get memo => 'ملاحظة لاصقة';
	@override String get notifications => 'الإشعارات';
	@override String get timeline => 'الخيط الزمني';
	@override String get calendar => 'التقويم';
	@override String get trends => 'المتداوَلة';
	@override String get clock => 'الساعة';
	@override String get rss => 'تدفق RSS';
	@override String get activity => 'النشاط';
	@override String get photos => 'الصور';
	@override String get digitalClock => 'ساعة رقمية';
	@override String get federation => 'الفديرالية';
	@override String get postForm => 'أنشئ ملاحظة';
	@override String get slideshow => 'عرض الشرائح';
	@override String get button => 'زر';
	@override String get onlineUsers => 'المتّصلون';
	@override String get jobQueue => 'قائمة الانتظار';
	@override String get serverMetric => 'إحصائيات الخادم';
	@override String get userList => 'قائمة المستخدمين';
	@override late final _TranslationsMisskeyWidgetsUserListArSa userList_ = _TranslationsMisskeyWidgetsUserListArSa._(_root);
}

// Path: misskey.cw_
class _TranslationsMisskeyCwArSa extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get hide => 'إخفاء';
	@override String get show => 'عرض المزيد';
	@override String chars({required Object count}) => '${count} أحرف';
	@override String files({required Object count}) => '${count} ملفات';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollArSa extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'تحتاج إلى خيارَين على الأقل';
	@override String choiceN({required Object n}) => 'الخيار ${n}';
	@override String get noMore => 'لا يمكنك إضافة خيارات أخرى';
	@override String get canMultipleVote => 'السماح بالإجابات المتعددة';
	@override String get expiration => 'ينتهي استطلاع الرأي في';
	@override String get infinite => 'أبدًا';
	@override String get at => 'تاريخ الإنتهاء';
	@override String get after => 'ينتهي بعد…';
	@override String get deadlineDate => 'تاريخ الانتهاء';
	@override String get deadlineTime => 'سا';
	@override String get duration => 'المدة';
	@override String votesCount({required Object n}) => '${n} أصوات';
	@override String totalVotes({required Object n}) => 'المجموع ${n} أصوات';
	@override String get vote => 'قم بالتصويت';
	@override String get showResult => 'اعرض النتائج';
	@override String get voted => 'تم التصويت';
	@override String get closed => 'انتهى';
	@override String remainingDays({required Object d, required Object h}) => '${d} أيام و ${h} ساعات متبقية';
	@override String remainingHours({required Object h, required Object m}) => '${h} ساعات و ${m} دقائق متبقية';
	@override String remainingMinutes({required Object m, required Object s}) => '${m} دقائق و ${s} ثوانٍ متبقية';
	@override String remainingSeconds({required Object s}) => '${s} ثوانٍ متبقية';
}

// Path: misskey.visibility_
class _TranslationsMisskeyVisibilityArSa extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get public => 'علني';
	@override String get publicDescription => 'ستكون ملاحظتك مرئية لكل المستخدمين';
	@override String get home => 'الرئيسي';
	@override String get homeDescription => 'انشر في الخيط الزمني الرئيسي فقط';
	@override String get followers => 'المتابِعون';
	@override String get followersDescription => 'اجعلها مرئية لمتابِعيك فقط';
	@override String get specified => 'مباشرة';
	@override String get specifiedDescription => 'اجعلها مرئية لمستخدمين محددين';
}

// Path: misskey.postForm_
class _TranslationsMisskeyPostFormArSa extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'رد على هذه الملاحظة…';
	@override String get quotePlaceholder => 'اقتبس هذه الملاحظة…';
	@override String get channelPlaceholder => 'انشر في قناة...';
	@override late final _TranslationsMisskeyPostFormHowToUseArSa howToUse_ = _TranslationsMisskeyPostFormHowToUseArSa._(_root);
	@override late final _TranslationsMisskeyPostFormPlaceholdersArSa placeholders_ = _TranslationsMisskeyPostFormPlaceholdersArSa._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileArSa extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get name => 'الإسم';
	@override String get username => 'اسم المستخدم';
	@override String get description => 'السيرة';
	@override String get youCanIncludeHashtags => 'يمكنك أيضًا إضافة وسوم إلى سيرتك التعريفية.';
	@override String get metadata => 'معلومات إضافية';
	@override String get metadataEdit => 'عدّل المعلومات الإضافية';
	@override String get metadataDescription => 'يُمكنك عرض 4 حقول معلومات في ملفك الشخصي';
	@override String get metadataLabel => 'التسمية';
	@override String get metadataContent => 'المحتوى';
	@override String get changeAvatar => 'غيّر الصورة الرمزية';
	@override String get changeBanner => 'غيّر اللافتة';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportArSa extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'كل الملاحظات';
	@override String get favoritedNotes => ' الملاحظات المفضلة';
	@override String get clips => 'مِشبك';
	@override String get followingList => 'المتابَعون';
	@override String get muteList => 'المستخدمون المكتومون';
	@override String get blockingList => 'المستخدمون المحجوبون';
	@override String get userLists => 'القوائم';
	@override String get excludeMutingUsers => 'استثن الحسابات المكتومة';
	@override String get excludeInactiveUsers => 'استثن المستخدمين الخاملين';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsArSa extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get federation => 'الفديرالية';
	@override String get apRequest => 'الطلبات';
	@override String get usersIncDec => 'تباين عدد المستخدمين';
	@override String get usersTotal => 'مجموع عدد المستخدمين والمستخدمات';
	@override String get activeUsers => 'المستخدمون النشطون';
	@override String get notesIncDec => 'تباين عدد الملاحظات';
	@override String get localNotesIncDec => 'تباين عدد الملاحظات المحلية';
	@override String get remoteNotesIncDec => 'تباين عدد الملاحظات البعيدة';
	@override String get notesTotal => 'إجمالي الملاحظات';
	@override String get filesIncDec => 'تباين عدد الملفات';
	@override String get filesTotal => 'العدد الإجمالي للملفات';
	@override String get storageUsageIncDec => 'التباين في استغلال مساحة التخزين';
	@override String get storageUsageTotal => 'اجمالي مساحة التخزين المستغلة';
}

// Path: misskey.instanceCharts_
class _TranslationsMisskeyInstanceChartsArSa extends TranslationsMisskeyInstanceChartsEnUs {
	_TranslationsMisskeyInstanceChartsArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get requests => 'الطلبات';
	@override String get users => 'تباين عدد المستخدمين';
	@override String get usersTotal => 'تباين عدد المستخدمين';
	@override String get notes => 'تباين عدد الملاحظات';
	@override String get notesTotal => 'تباين عدد الملاحظات';
	@override String get ff => 'تباين عدد حسابات المتابَعة/المتابِعة';
	@override String get ffTotal => 'تباين عدد حسابات المتابَعة/المتابِعة';
	@override String get files => 'تباين عدد الملفات';
	@override String get filesTotal => 'تباين عدد الملفات';
}

// Path: misskey.timelines_
class _TranslationsMisskeyTimelinesArSa extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get home => 'الرئيسي';
	@override String get local => 'المحلي';
	@override String get social => 'الاجتماعي';
	@override String get global => 'الشامل';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayArSa extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get viewSource => 'اظهر المصدر';
	@override String get featured => 'الأكثر شعبية';
	@override String get title => 'العنوان';
	@override String get summary => 'الوصف';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesArSa extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'أنشئ صفحة جديدة';
	@override String get editPage => 'عدّل الصفحة';
	@override String get readPage => 'نُشّط عرض المصدر';
	@override String get pageSetting => 'إعدادات الصفحة';
	@override String get nameAlreadyExists => 'رابط الصفحة موجود مسبقًا';
	@override String get invalidNameTitle => 'رابط الصفحة ليس صالحًا';
	@override String get invalidNameText => 'تأكد أن عنوان الصفحة ليس فارغًا';
	@override String get editThisPage => 'عدّل هذه الصفحة';
	@override String get viewSource => 'اظهر المصدر';
	@override String get viewPage => 'اعرض صفحاتك';
	@override String get like => 'أعجبني';
	@override String get unlike => 'أزل الإعجاب';
	@override String get my => 'صفحاتي';
	@override String get liked => 'الصفحات المُعجب بها';
	@override String get featured => 'الأكثر شعبية';
	@override String get contents => 'المحتوى';
	@override String get variables => 'متغيّرات';
	@override String get title => 'العنوان';
	@override String get url => 'رابط الصفحة';
	@override String get summary => 'ملخص الصفحة';
	@override String get alignCenter => 'توسيط العناصر';
	@override String get hideTitleWhenPinned => 'اخف عنوان الصفحة عند تثبيتها في ملف الشخصي';
	@override String get font => 'الخط';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
	@override String get eyeCatchingImageSet => 'عيّن صورة مصغّرة';
	@override String get eyeCatchingImageRemove => 'احذف صورة مصغّرة';
	@override String get chooseBlock => 'إضافة كتلة';
	@override String get selectType => 'اختر النوع';
	@override String get contentBlocks => 'المحتوى';
	@override String get inputBlocks => 'مُدخل';
	@override String get specialBlocks => 'خاص';
	@override late final _TranslationsMisskeyPagesBlocksArSa blocks = _TranslationsMisskeyPagesBlocksArSa._(_root);
}

// Path: misskey.relayStatus_
class _TranslationsMisskeyRelayStatusArSa extends TranslationsMisskeyRelayStatusEnUs {
	_TranslationsMisskeyRelayStatusArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'مُعلّق';
	@override String get accepted => 'مقبول';
	@override String get rejected => 'مرفوض';
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationArSa extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'نجح رفع الملف';
	@override String youGotMention({required Object name}) => '${name} أشار إليك';
	@override String youGotReply({required Object name}) => 'ردّ عليك ${name}';
	@override String youGotQuote({required Object name}) => 'اقتبس ${name} منشورك';
	@override String youRenoted({required Object name}) => 'أعاد ${name} نشر منشورك';
	@override String get youWereFollowed => 'يتابعك';
	@override String get youReceivedFollowRequest => 'تلقيتَ طلب متابعة';
	@override String get yourFollowRequestAccepted => 'قُبل طلب المتابعة';
	@override String get pollEnded => 'انتهى الاستطلاع';
	@override String unreadAntennaNote({required Object name}) => 'هوائي ${name}';
	@override late final _TranslationsMisskeyNotificationTypesArSa types_ = _TranslationsMisskeyNotificationTypesArSa._(_root);
	@override late final _TranslationsMisskeyNotificationActionsArSa actions_ = _TranslationsMisskeyNotificationActionsArSa._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckArSa extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'أظهر العمود الأساسي دائمًا';
	@override String get columnAlign => 'محاذاة الأعمدة';
	@override String get addColumn => 'إضافة عمود';
	@override String get swapLeft => 'التحريك إلى اليسار';
	@override String get swapRight => 'التحريك إلى اليمين';
	@override String get swapUp => 'التحريك إلى الأعلى';
	@override String get swapDown => 'التحريك إلى الأسفل';
	@override String get profile => 'حسابي الشخصي';
	@override String get newProfile => 'ملف تعريفي جديد';
	@override String get deleteProfile => 'حذف الملف التعريفي';
	@override late final _TranslationsMisskeyDeckColumnsArSa columns_ = _TranslationsMisskeyDeckColumnsArSa._(_root);
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsArSa extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get name => 'الاسم';
	@override String get active => 'مُفعّل';
	@override late final _TranslationsMisskeyWebhookSettingsEventsArSa events_ = _TranslationsMisskeyWebhookSettingsEventsArSa._(_root);
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportArSa extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientArSa notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientArSa._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesArSa extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'علِق';
	@override String get deleteDriveFile => 'حُذف الملف';
	@override String get deleteNote => 'حُذفت الملاحظة';
	@override String get createGlobalAnnouncement => 'أُنشئ إعلان عام';
	@override String get createUserAnnouncement => 'أُنشئ إعلان مستخدم';
	@override String get updateGlobalAnnouncement => 'حُدث إعلان عام';
	@override String get updateUserAnnouncement => 'حُدث إعلان مستخدم';
	@override String get resetPassword => 'أعد تعيين كلمتك السرية';
	@override String get createInvitation => 'ولِّد دعوة';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiArSa extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get total => 'المجموع';
	@override String get lookingForPlayer => 'يبحث عن خصم...';
	@override String get gameCanceled => 'أُلغيت اللعبة.';
	@override String get opponentHasSettingsChanged => 'غيَر الخصم إعدادته.';
	@override String get showBoardLabels => 'اعرض ترقيم الصفوف والأعمدة على اللوح';
	@override String get useAvatarAsStone => 'حوَل الحجارة إلى صور مستخدمين';
}

// Path: misskey.offlineScreen_
class _TranslationsMisskeyOfflineScreenArSa extends TranslationsMisskeyOfflineScreenEnUs {
	_TranslationsMisskeyOfflineScreenArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'غير متصل - يتعذر الاتصال بالخادم';
	@override String get header => 'يتعذر الاتصال بالخادم';
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsArSa extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectArSa noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectArSa._(_root);
}

// Path: misskey.search_
class _TranslationsMisskeySearchArSa extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'الكل';
	@override String get searchScopeLocal => 'المحلي';
	@override String get searchScopeUser => 'مستخدم محدد';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorArSa extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get opacity => 'الشفافية';
	@override String get scale => 'الحجم';
	@override String get text => 'نص';
	@override String get position => 'الموضع';
	@override String get type => 'نوع';
	@override String get image => 'صور';
	@override String get advanced => 'متقدم';
}

// Path: misskey.imageEffector_
class _TranslationsMisskeyImageEffectorArSa extends TranslationsMisskeyImageEffectorEnUs {
	_TranslationsMisskeyImageEffectorArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyImageEffectorFxPropsArSa fxProps_ = _TranslationsMisskeyImageEffectorFxPropsArSa._(_root);
}

// Path: misskey.qr_
class _TranslationsMisskeyQrArSa extends TranslationsMisskeyQrEnUs {
	_TranslationsMisskeyQrArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get showTabTitle => 'المظهر';
	@override String get raw => 'نص';
}

// Path: misskey.imageEditing_.vars_
class _TranslationsMisskeyImageEditingVarsArSa extends TranslationsMisskeyImageEditingVarsEnUs {
	_TranslationsMisskeyImageEditingVarsArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get filename => 'اسم الملف';
}

// Path: misskey.achievements_.types_
class _TranslationsMisskeyAchievementsTypesArSa extends TranslationsMisskeyAchievementsTypesEnUs {
	_TranslationsMisskeyAchievementsTypesArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesNotes1ArSa notes1_ = _TranslationsMisskeyAchievementsTypesNotes1ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10ArSa notes10_ = _TranslationsMisskeyAchievementsTypesNotes10ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100ArSa notes100_ = _TranslationsMisskeyAchievementsTypesNotes100ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes500ArSa notes500_ = _TranslationsMisskeyAchievementsTypesNotes500ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes1000ArSa notes1000_ = _TranslationsMisskeyAchievementsTypesNotes1000ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes5000ArSa notes5000_ = _TranslationsMisskeyAchievementsTypesNotes5000ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10000ArSa notes10000_ = _TranslationsMisskeyAchievementsTypesNotes10000ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes20000ArSa notes20000_ = _TranslationsMisskeyAchievementsTypesNotes20000ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes30000ArSa notes30000_ = _TranslationsMisskeyAchievementsTypesNotes30000ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes40000ArSa notes40000_ = _TranslationsMisskeyAchievementsTypesNotes40000ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes50000ArSa notes50000_ = _TranslationsMisskeyAchievementsTypesNotes50000ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes60000ArSa notes60000_ = _TranslationsMisskeyAchievementsTypesNotes60000ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes70000ArSa notes70000_ = _TranslationsMisskeyAchievementsTypesNotes70000ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes80000ArSa notes80000_ = _TranslationsMisskeyAchievementsTypesNotes80000ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes90000ArSa notes90000_ = _TranslationsMisskeyAchievementsTypesNotes90000ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100000ArSa notes100000_ = _TranslationsMisskeyAchievementsTypesNotes100000ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin3ArSa login3_ = _TranslationsMisskeyAchievementsTypesLogin3ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteFavorited1ArSa noteFavorited1_ = _TranslationsMisskeyAchievementsTypesNoteFavorited1ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMyNoteFavorited1ArSa myNoteFavorited1_ = _TranslationsMisskeyAchievementsTypesMyNoteFavorited1ArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesProfileFilledArSa profileFilled_ = _TranslationsMisskeyAchievementsTypesProfileFilledArSa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMarkedAsCatArSa markedAsCat_ = _TranslationsMisskeyAchievementsTypesMarkedAsCatArSa._(_root);
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityArSa extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get low => 'منخفضة';
	@override String get middle => 'متوسط';
	@override String get high => 'عالية';
}

// Path: misskey.role_.options_
class _TranslationsMisskeyRoleOptionsArSa extends TranslationsMisskeyRoleOptionsEnUs {
	_TranslationsMisskeyRoleOptionsArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get canManageCustomEmojis => 'إدارة الإيموجي المخصصة';
	@override String get pinMax => 'حد عدد الملاحظات المثبتة';
}

// Path: misskey.role_.condition_
class _TranslationsMisskeyRoleConditionArSa extends TranslationsMisskeyRoleConditionEnUs {
	_TranslationsMisskeyRoleConditionArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get isLocal => 'مستخدم محلي';
	@override String get isRemote => 'مستخدم بعيد';
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowArSa extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'يتابعك';
}

// Path: misskey.email_.receiveFollowRequest_
class _TranslationsMisskeyEmailReceiveFollowRequestArSa extends TranslationsMisskeyEmailReceiveFollowRequestEnUs {
	_TranslationsMisskeyEmailReceiveFollowRequestArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'استلمت طلب متابعة';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysArSa extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get accent => 'طابع لوني';
	@override String get bg => 'الخلفية';
	@override String get fg => 'النص';
	@override String get indicator => 'المؤشر';
	@override String get panel => 'اللوحة';
	@override String get shadow => 'الظل';
	@override String get navBg => 'خلفية الشريط الجانبي';
	@override String get navFg => 'نص الشريط الجانبي';
	@override String get link => 'رابط';
	@override String get hashtag => 'وسم';
	@override String get mention => 'أشر الى';
	@override String get renote => 'أعد النشر';
	@override String get divider => 'فاصل';
	@override String get scrollbarHandle => 'مقبض شريط التمرير';
	@override String get scrollbarHandleHover => 'مقبض شريط التمرير (عند التمرير فوقه)';
	@override String get infoWarnBg => 'خلفية التحذير';
	@override String get infoWarnFg => 'نص التحذير';
	@override String get toastBg => 'خلفية الإشعارات';
	@override String get toastFg => 'نص الإشعارات';
	@override String get buttonBg => 'خلفية الأزرار';
	@override String get buttonHoverBg => 'خلفية الأزرار (عند التمرير فوقها)';
	@override String get inputBorder => 'حواف حقل الإدخال';
	@override String get messageBg => 'خلفية المحادثة';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListArSa extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'اختر قائمة';
}

// Path: misskey.postForm_.howToUse_
class _TranslationsMisskeyPostFormHowToUseArSa extends TranslationsMisskeyPostFormHowToUseEnUs {
	_TranslationsMisskeyPostFormHowToUseArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get visibility_title => 'الظهور';
	@override String get menu_title => 'القائمة';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersArSa extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get a => 'ما الذي تنوي فعله؟';
	@override String get b => 'ماذا يحدث حولك ؟';
	@override String get c => 'ما الذي تفكر فيه؟';
	@override String get d => 'ما الذي تريد قوله؟';
	@override String get e => 'أكتب...';
	@override String get f => 'بانتظارك لتكتب...';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksArSa extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get text => 'نص';
	@override String get textarea => 'حقل نصي';
	@override String get section => 'قسم';
	@override String get image => 'صور';
	@override String get button => 'زرّ';
	@override String get note => 'ملاحظة مضمّنة';
	@override late final _TranslationsMisskeyPagesBlocksNoteArSa note_ = _TranslationsMisskeyPagesBlocksNoteArSa._(_root);
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesArSa extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get all => 'الكل';
	@override String get follow => 'متابِعون جدد';
	@override String get mention => 'الإشارات';
	@override String get reply => 'الردود';
	@override String get renote => 'أعاد النشر';
	@override String get quote => 'الاقتباسات';
	@override String get reaction => 'التفاعل';
	@override String get receiveFollowRequest => 'طلبات المتابعة';
	@override String get followRequestAccepted => 'طلبات المتابعة المقبولة';
	@override String get login => 'لِج';
	@override String get app => 'إشعارات التطبيقات المرتبطة';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsArSa extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'تابعك بالمثل';
	@override String get reply => 'رد';
	@override String get renote => 'أعد النشر';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsArSa extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get main => 'الرئيسية';
	@override String get widgets => 'التطبيقات المُصغّرة';
	@override String get notifications => 'الإشعارات';
	@override String get tl => 'الخط الزمني';
	@override String get antenna => 'الهوائيات';
	@override String get list => 'القوائم';
	@override String get channel => 'القنوات';
	@override String get mentions => 'الإشارات';
	@override String get direct => 'مباشرة';
}

// Path: misskey.webhookSettings_.events_
class _TranslationsMisskeyWebhookSettingsEventsArSa extends TranslationsMisskeyWebhookSettingsEventsEnUs {
	_TranslationsMisskeyWebhookSettingsEventsArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get reaction => 'عند التفاعل';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientArSa extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeArSa recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeArSa._(_root);
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectArSa extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'غير موجود';
}

// Path: misskey.imageEffector_.fxProps_
class _TranslationsMisskeyImageEffectorFxPropsArSa extends TranslationsMisskeyImageEffectorFxPropsEnUs {
	_TranslationsMisskeyImageEffectorFxPropsArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get scale => 'الحجم';
	@override String get size => 'الحجم';
	@override String get offset => 'الموضع';
	@override String get color => 'اللون';
	@override String get opacity => 'الشفافية';
}

// Path: misskey.achievements_.types_.notes1_
class _TranslationsMisskeyAchievementsTypesNotes1ArSa extends TranslationsMisskeyAchievementsTypesNotes1EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get description => 'انشر ملاحظتك الأولى';
	@override String get flavor => 'تمتع باستخدام ميسكي!';
}

// Path: misskey.achievements_.types_.notes10_
class _TranslationsMisskeyAchievementsTypesNotes10ArSa extends TranslationsMisskeyAchievementsTypesNotes10EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'بعض الملاحظات';
	@override String get description => 'انشر 10 ملاحظات';
}

// Path: misskey.achievements_.types_.notes100_
class _TranslationsMisskeyAchievementsTypesNotes100ArSa extends TranslationsMisskeyAchievementsTypesNotes100EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'كثير من الملاحظات';
	@override String get description => 'انشر 100 ملاحظة';
}

// Path: misskey.achievements_.types_.notes500_
class _TranslationsMisskeyAchievementsTypesNotes500ArSa extends TranslationsMisskeyAchievementsTypesNotes500EnUs {
	_TranslationsMisskeyAchievementsTypesNotes500ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get description => 'انشر 500 ملاحظة';
}

// Path: misskey.achievements_.types_.notes1000_
class _TranslationsMisskeyAchievementsTypesNotes1000ArSa extends TranslationsMisskeyAchievementsTypesNotes1000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1000ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'جبل ملاحظات';
	@override String get description => 'انشر 1000 ملاحظة';
}

// Path: misskey.achievements_.types_.notes5000_
class _TranslationsMisskeyAchievementsTypesNotes5000ArSa extends TranslationsMisskeyAchievementsTypesNotes5000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes5000ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get description => 'انشر 5000 ملاحظة';
}

// Path: misskey.achievements_.types_.notes10000_
class _TranslationsMisskeyAchievementsTypesNotes10000ArSa extends TranslationsMisskeyAchievementsTypesNotes10000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10000ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get description => 'انشر 10000 ملاحظة';
}

// Path: misskey.achievements_.types_.notes20000_
class _TranslationsMisskeyAchievementsTypesNotes20000ArSa extends TranslationsMisskeyAchievementsTypesNotes20000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes20000ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'أريد...ملاحظات...أكثر';
	@override String get description => 'انشر 20000 ملاحظة';
}

// Path: misskey.achievements_.types_.notes30000_
class _TranslationsMisskeyAchievementsTypesNotes30000ArSa extends TranslationsMisskeyAchievementsTypesNotes30000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes30000ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ملاحظات وملاحظات وملاحظات';
	@override String get description => 'انشر 30000 ملاحظة';
}

// Path: misskey.achievements_.types_.notes40000_
class _TranslationsMisskeyAchievementsTypesNotes40000ArSa extends TranslationsMisskeyAchievementsTypesNotes40000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes40000ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'مصنع ملاحظات';
	@override String get description => 'انشر 40000 ملاحظة';
}

// Path: misskey.achievements_.types_.notes50000_
class _TranslationsMisskeyAchievementsTypesNotes50000ArSa extends TranslationsMisskeyAchievementsTypesNotes50000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes50000ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'كوكب ملاحظات';
	@override String get description => 'انشر 50000 ملاحظة';
}

// Path: misskey.achievements_.types_.notes60000_
class _TranslationsMisskeyAchievementsTypesNotes60000ArSa extends TranslationsMisskeyAchievementsTypesNotes60000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes60000ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'نجم ملاحظات';
	@override String get description => 'انشر 60000 ملاحظة';
}

// Path: misskey.achievements_.types_.notes70000_
class _TranslationsMisskeyAchievementsTypesNotes70000ArSa extends TranslationsMisskeyAchievementsTypesNotes70000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes70000ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ثقب أسود للملاحظات';
	@override String get description => 'انشر 70000 ملاحظة';
}

// Path: misskey.achievements_.types_.notes80000_
class _TranslationsMisskeyAchievementsTypesNotes80000ArSa extends TranslationsMisskeyAchievementsTypesNotes80000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes80000ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'مجرة ملاحظات';
	@override String get description => 'انشر 80000 ملاحظة';
}

// Path: misskey.achievements_.types_.notes90000_
class _TranslationsMisskeyAchievementsTypesNotes90000ArSa extends TranslationsMisskeyAchievementsTypesNotes90000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes90000ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'كوْن ملاحظات';
	@override String get description => 'انشر 90000 ملاحظة';
}

// Path: misskey.achievements_.types_.notes100000_
class _TranslationsMisskeyAchievementsTypesNotes100000ArSa extends TranslationsMisskeyAchievementsTypesNotes100000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100000ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'كل ملاحظاتك لنا';
	@override String get description => 'انشر 100000 ملاحظة';
	@override String get flavor => 'حقًا لديك الكثير من القصص';
}

// Path: misskey.achievements_.types_.login3_
class _TranslationsMisskeyAchievementsTypesLogin3ArSa extends TranslationsMisskeyAchievementsTypesLogin3EnUs {
	_TranslationsMisskeyAchievementsTypesLogin3ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'مبتدأ I';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _TranslationsMisskeyAchievementsTypesNoteFavorited1ArSa extends TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteFavorited1ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get description => 'فضًِل ملاحظتك الأولى';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _TranslationsMisskeyAchievementsTypesMyNoteFavorited1ArSa extends TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesMyNoteFavorited1ArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ساعٍ للنجوم';
	@override String get description => 'أعجب شخص آخر بإحدى ملاحظاتك';
}

// Path: misskey.achievements_.types_.profileFilled_
class _TranslationsMisskeyAchievementsTypesProfileFilledArSa extends TranslationsMisskeyAchievementsTypesProfileFilledEnUs {
	_TranslationsMisskeyAchievementsTypesProfileFilledArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'مستعد';
	@override String get description => 'أعدّ حسابك';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _TranslationsMisskeyAchievementsTypesMarkedAsCatArSa extends TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_TranslationsMisskeyAchievementsTypesMarkedAsCatArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get title => 'أنا قط';
}

// Path: misskey.pages_.blocks.note_
class _TranslationsMisskeyPagesBlocksNoteArSa extends TranslationsMisskeyPagesBlocksNoteEnUs {
	_TranslationsMisskeyPagesBlocksNoteArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get id => 'معرّف الملاحظة';
	@override String get idDescription => 'كبديل يمكنك إدخال رابك الملاحظة هنا';
	@override String get detailed => 'عرض مفصّل';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeArSa extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeArSa._(TranslationsArSa root) : this._root = root, super.internal(root);

	final TranslationsArSa _root; // ignore: unused_field

	// Translations
	@override String get mail => 'البريد الإلكتروني ';
}
