///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint

part of 'strings.g.dart';

// Path: <root>
class _StringsThTh extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsThTh.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.thTh,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <th-TH>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	@override late final _StringsThTh _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAriaThTh aria = _StringsAriaThTh._(_root);
	@override late final _StringsMisskeyThTh misskey = _StringsMisskeyThTh._(_root);
}

// Path: aria
class _StringsAriaThTh extends _StringsAriaEnUs {
	_StringsAriaThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'ต้องการติดตาม '),
		name,
		const TextSpan(text: ' ใช่ไหม?'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria กำลังได้รับการแปลเป็นภาษาต่างๆ โดยอาสาสมัคร คุณสามารถช่วยเหลือได้ที่ '),
		link,
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' ผู้ใช้คนนี้กำลังออนไลน์'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'รีโน้ตโดย '),
		user,
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'ต้องการเลิกติดตาม '),
		name,
		const TextSpan(text: ' ใช่ไหม?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'โพสต์ที่มีไฟล์เนื้อหาละเอียดอ่อนของ '),
		name,
	]);
	@override TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'โพสต์ที่มีไฟล์เนื้อหาละเอียดอ่อนของ '),
		name,
	]);
}

// Path: misskey
class _StringsMisskeyThTh extends _StringsMisskeyEnUs {
	_StringsMisskeyThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'ภาษาไทย';
	@override String get headlineMisskey => 'เชื่อมต่อเครือข่ายโดยโน้ต';
	@override String get introMisskey => 'ยินดีต้อนรับทุกคนจ้า! Misskey คือ ซอฟต์แวร์โอเพนซอร์สสำหรับบริการไมโครบล็อกกิ้ง (MicroBlogging) แบบกระจายศูนย์อำนาจ (Decentralized) \n\nเขียน “โน้ต (Note)” เพื่อส่งต่อเรื่องราวของคุณให้ทั้งโลกได้รับรู้📡\nและอย่าลืมที่จะ “รีแอคชั่น” กับเรื่องราวของคนอื่น ๆ ด้วยนะ! 👍\n\nท่องสำรวจโลกใบใหม่กันเถอะ🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} เป็นส่วนหนึ่งในบริการที่ถูกขับเคลื่อนโดยแพลตฟอร์มโอเพ่นซอร์ส <b>Misskey</b> (เรียกว่า "อินสแตนซ์ Misskey")';
	@override String monthAndDay({required Object month, required Object day}) => '${month}/${day}';
	@override String get search => 'ค้นหา';
	@override String get notifications => 'การเเจ้งเตือน';
	@override String get username => 'ชื่อผู้ใช้';
	@override String get password => 'รหัสผ่าน';
	@override String get forgotPassword => 'ลืมรหัสผ่าน';
	@override String get fetchingAsApObject => 'กำลังดึงข้อมูลจากสหพันธ์...';
	@override String get ok => 'ตกลง';
	@override String get gotIt => 'เข้าใจแล้ว !';
	@override String get cancel => 'ยกเลิก';
	@override String get noThankYou => 'ไม่เอาดีกว่า';
	@override String get enterUsername => 'กรอกชื่อผู้ใช้';
	@override String renotedBy({required Object user}) => 'รีโน้ตโดย ${user}';
	@override String get noNotes => 'ไม่มีโน้ต';
	@override String get noNotifications => 'ไม่มีการแจ้งเตือน';
	@override String get instance => 'อินสแตนซ์';
	@override String get settings => 'การตั้งค่า';
	@override String get notificationSettings => 'ตั้งค่าการแจ้งเตือน';
	@override String get basicSettings => 'การตั้งค่าพื้นฐาน';
	@override String get otherSettings => 'การตั้งค่าอื่นๆ';
	@override String get openInWindow => 'เปิดในหน้าต่าง';
	@override String get profile => 'โปรไฟล์';
	@override String get timeline => 'ไทม์ไลน์';
	@override String get noAccountDescription => 'ผู้ใช้รายนี้ยังไม่ได้เขียนคำแนะนำตัว';
	@override String get login => 'เข้าสู่ระบบ';
	@override String get loggingIn => 'กำลังเข้าสู่ระบบ';
	@override String get logout => 'ออกจากระบบ';
	@override String get signup => 'สร้างบัญชีผู้ใช้';
	@override String get uploading => 'กำลังอัปโหลด';
	@override String get save => 'บันทึก';
	@override String get users => 'ผู้ใช้';
	@override String get addUser => 'เพิ่มผู้ใช้';
	@override String get favorite => 'รายการโปรด';
	@override String get favorites => 'รายการโปรด';
	@override String get unfavorite => 'ลบออกจากรายการโปรด';
	@override String get favorited => 'เพิ่มลงรายการโปรดแล้ว';
	@override String get alreadyFavorited => 'เพิ่มลงรายการโปรดอยู่แล้ว';
	@override String get cantFavorite => 'ไม่สามารถเพิ่มลงรายการโปรดได้';
	@override String get pin => 'ปักหมุด';
	@override String get unpin => 'เลิกปักหมุด';
	@override String get copyContent => 'คัดลอกเนื้อหา';
	@override String get copyLink => 'คัดลอกลิงก์';
	@override String get copyLinkRenote => 'คัดลอกลิงก์รีโน้ต';
	@override String get delete => 'ลบ';
	@override String get deleteAndEdit => 'ลบและแก้ไข';
	@override String get deleteAndEditConfirm => 'คุณต้องการลบโน้ตนี้และแก้ไขใหม่ใช่ไหม? รีแอคชั่น รีโน้ต และการตอบกลับต่อโน้ตนี้ทั้งหมดจะถูกลบออกด้วย';
	@override String get addToList => 'เพิ่มลงรายชื่อ';
	@override String get addToAntenna => 'เพิ่มไปยังเสาอากาศ';
	@override String get sendMessage => 'ส่งข้อความ';
	@override String get copyRSS => 'คัดลอก RSS';
	@override String get copyUsername => 'คัดลอกชื่อผู้ใช้';
	@override String get copyUserId => 'คัดลอก ID ผู้ใช้';
	@override String get copyNoteId => 'คัดลอก ID โน้ต ';
	@override String get copyFileId => 'คัดลอกไฟล์ ID';
	@override String get copyFolderId => 'คัดลอกโฟลเดอร์ ID';
	@override String get copyProfileUrl => 'คัดลอกโปรไฟล์ URL';
	@override String get searchUser => 'ค้นหาผู้ใช้';
	@override String get reply => 'ตอบกลับ';
	@override String get loadMore => 'แสดงเพิ่มเติม';
	@override String get showMore => 'แสดงเพิ่มเติม';
	@override String get showLess => 'ปิด';
	@override String get youGotNewFollower => 'ได้ติดตามคุณ';
	@override String get receiveFollowRequest => 'มีคำขอติดตามส่งมาหา';
	@override String get followRequestAccepted => 'การติดตามได้รับการอนุมัติแล้ว';
	@override String get mention => 'กล่าวถึง';
	@override String get mentions => 'พูดถึง';
	@override String get directNotes => 'โพสต์แบบไดเร็กต์';
	@override String get importAndExport => 'นำเข้า / ส่งออก';
	@override String get import => 'นำเข้า';
	@override String get export => 'ส่งออก';
	@override String get files => 'ไฟล์';
	@override String get download => 'ดาวน์โหลด';
	@override String driveFileDeleteConfirm({required Object name}) => 'ต้องการลบไฟล์ “${name}” ใช่ไหม? โน้ตที่แนบมากับไฟล์นี้ก็จะถูกลบไปด้วย';
	@override String unfollowConfirm({required Object name}) => 'ต้องการเลิกติดตาม ${name} ใช่ไหม?';
	@override String get exportRequested => 'คุณได้ร้องขอการส่งออก อาจใช้เวลาสักครู่ และจะถูกเพิ่มในไดรฟ์ของคุณเมื่อเสร็จสิ้นแล้ว';
	@override String get importRequested => 'คุณได้ร้องขอการนำเข้า การดำเนินการนี้อาจใช้เวลาสักครู่';
	@override String get lists => 'รายชื่อ';
	@override String get noLists => 'คุณไม่มีรายชื่อใดๆ';
	@override String get note => ' โน้ต';
	@override String get notes => ' โน้ต';
	@override String get following => 'กำลังติดตาม';
	@override String get followers => 'ผู้ติดตาม';
	@override String get followsYou => 'ติดตามคุณ';
	@override String get createList => 'สร้างรายชื่อ';
	@override String get manageLists => 'จัดการรายชื่อ';
	@override String get error => 'ผิดพลาด!';
	@override String get somethingHappened => 'อุ๊ย ! มีอะไรบางอย่างผิดพลาด';
	@override String get retry => 'ลองใหม่อีกครั้ง';
	@override String get pageLoadError => 'เกิดข้อผิดพลาดในการโหลดหน้านี้';
	@override String get pageLoadErrorDescription => 'โดยปกติแล้วมักจะเกิดจากข้อผิดพลาดของเครือข่ายหรือแคชของเบราว์เซอร์ ลองล้างแคชแล้วลองใหม่อีกครั้งหลังจากรอสักครู่ ';
	@override String get serverIsDead => 'เซิร์ฟเวอร์นี้ไม่มีการตอบสนอง โปรดกรุณารอสักครู่แล้วลองใหม่อีกครั้ง';
	@override String get youShouldUpgradeClient => 'หากต้องการดูหน้านี้ กรุณาโหลดหน้าใหม่เพื่ออัปเดตไคลเอ็นต์ของคุณ';
	@override String get enterListName => 'ป้อนนามเรียกของรายชื่อชุดนี้';
	@override String get privacy => 'ความเป็นส่วนตัว';
	@override String get makeFollowManuallyApprove => 'อนุมัติคำขอติดตามด้วยตนเอง';
	@override String get defaultNoteVisibility => 'การมองเห็นที่เป็นค่าเริ่มต้น';
	@override String get follow => 'ติดตาม';
	@override String get followRequest => 'ส่งคำขอติดตาม';
	@override String get followRequests => 'ส่งคำขอติดตาม';
	@override String get unfollow => 'เลิกติดตาม';
	@override String get followRequestPending => 'รออนุมัติคำขอติดตาม';
	@override String get enterEmoji => 'พิมพ์เอโมจิ';
	@override String get renote => 'รีโน้ต';
	@override String get unrenote => 'เลิกรีโน้ต';
	@override String get renoted => 'รีโน้ตแล้ว';
	@override String get cantRenote => 'โพสต์นี้ไม่สามารถรีโน้ตใหม่ได้';
	@override String get cantReRenote => 'รีโน้ตไม่สามารถรีโน้ตซ้ำได้';
	@override String get quote => 'อ้างอิง';
	@override String get inChannelRenote => 'รีโน้ตในช่องเท่านั้น';
	@override String get inChannelQuote => 'อ้างอิงในช่องเท่านั้น';
	@override String get pinnedNote => 'โน้ตที่ปักหมุดไว้';
	@override String get pinned => 'ปักหมุด';
	@override String get you => 'คุณ';
	@override String get clickToShow => 'คลิกเพื่อแสดง';
	@override String get sensitive => 'เนื้อหาที่ละเอียดอ่อน';
	@override String get add => 'เพิ่ม';
	@override String get reaction => 'รีแอคชั่น';
	@override String get reactions => 'รีแอคชั่น';
	@override String get emojiPicker => 'ตัวจิ้มเอโมจิ';
	@override String get pinnedEmojisForReactionSettingDescription => 'ตรึงเอโมจิไว้ด้านบนสำหรับรีแอคชั่นอย่างเร่งด่วน';
	@override String get pinnedEmojisSettingDescription => 'ตรึงเอโมจิไว้ด้านบนสำหรับพิมพ์เอโมจิอย่างเร่งด่วน';
	@override String get emojiPickerDisplay => 'แสดงตัวจิ้มเอโมจิ';
	@override String get overwriteFromPinnedEmojisForReaction => 'เขียนทับการตั้งค่ารีแอคชั่น';
	@override String get overwriteFromPinnedEmojis => 'เขียนทับการตั้งค่าทั่วไป';
	@override String get reactionSettingDescription2 => 'ลากเพื่อจัดลำดับใหม่ คลิกที่เอโมจินั้นเพื่อลบ กด “+” เพื่อเพิ่ม';
	@override String get rememberNoteVisibility => 'จำการตั้งค่าการมองเห็นโน้ต';
	@override String get attachCancel => 'ยกเลิกแนบไฟล์';
	@override String get deleteFile => 'ลบไฟล์ออก';
	@override String get markAsSensitive => 'ทำเครื่องหมายว่ามีเนื้อหาละเอียดอ่อน';
	@override String get unmarkAsSensitive => 'ยกเลิกทำเครื่องหมายว่ามีเนื้อหาละเอียดอ่อน';
	@override String get enterFileName => 'พิมพ์ชื่อไฟล์';
	@override String get mute => 'ปิดเสียง';
	@override String get unmute => 'ยกเลิกการปิดเสียง';
	@override String get renoteMute => 'ปิดเสียงรีโน้ต';
	@override String get renoteUnmute => 'เปิดเสียง รีโน้ต';
	@override String get block => 'บล็อก';
	@override String get unblock => 'เลิกบล็อก';
	@override String get suspend => 'ระงับ';
	@override String get unsuspend => 'เลิกระงับ';
	@override String get blockConfirm => 'ต้องการบล็อกบัญชีนี้ใช่ไหม?';
	@override String get unblockConfirm => 'ต้องการเลิกบล็อกบัญชีนี้ใช่ไหม?';
	@override String get suspendConfirm => 'ต้องการระงับบัญชีนี้ใช่ไหม?';
	@override String get unsuspendConfirm => 'ต้องการยกเลิกการระงับบัญชีนี้ใช่ไหม?';
	@override String get selectList => 'เลือกรายชื่อ';
	@override String get editList => 'แก้ไขรายชื่อ';
	@override String get selectChannel => 'เลือกช่อง';
	@override String get selectAntenna => 'เลือกเสาอากาศ';
	@override String get editAntenna => 'แก้ไขเสาอากาศ';
	@override String get selectWidget => 'เลือกวิดเจ็ต';
	@override String get editWidgets => 'แก้ไขวิดเจ็ต';
	@override String get editWidgetsExit => 'เรียบร้อย';
	@override String get customEmojis => 'เอโมจิที่กำหนดเอง';
	@override String get emoji => 'เอโมจิ';
	@override String get emojis => 'อีโมจิ';
	@override String get emojiName => 'ชื่อเอโมจิ';
	@override String get emojiUrl => 'URL ของเอโมจิ';
	@override String get addEmoji => 'แทรกเอโมจิ';
	@override String get settingGuide => 'การตั้งค่าที่แนะนำ';
	@override String get cacheRemoteFiles => 'แคชไฟล์ระยะไกล';
	@override String get cacheRemoteFilesDescription => 'หากเปิดใช้งาน ไฟล์ระยะไกลจะถูกแคชไว้ ทำให้แสดงภาพเร็วขึ้น แต่ก็ใช้พื้นที่เก็บข้อมูลของเซิร์ฟเวอร์มากขึ้นเช่นกัน สำหรับขีดจำกัดที่ผู้ใช้ระยะไกลถูกแคชไว้จะขึ้นอยู่กับความจุไดรฟ์ตามบทบาทของเขา เมื่อเกินแล้วไฟล์เก่าจะถูกลบออกและเก็บเป็นลิงก์แทน หากปิดใช้งาน ไฟล์ระยะไกลจะถูกเก็บเป็นลิงก์ตั้งแต่ต้น เราแนะนำให้ตั้งค่า proxyRemoteFiles ใน default.yml เป็น true เพื่อสร้างธัมบ์เนลและปกป้องความเป็นส่วนตัวของผู้ใช้';
	@override String get youCanCleanRemoteFilesCache => 'คุณสามารถล้างแคชได้โดยคลิกที่ปุ่ม 🗑️ ในมุมมองการจัดการไฟล์';
	@override String get cacheRemoteSensitiveFiles => 'แคชไฟล์ระยะไกลที่มีเนื้อหาละเอียดอ่อน';
	@override String get cacheRemoteSensitiveFilesDescription => 'เมื่อปิดการใช้งานการตั้งค่านี้ ไฟล์ระยะไกลที่มีเครื่องหมายว่ามีเนื้อหาละเอียดอ่อนนั้นจะถูกโหลดโดยตรงจากอินสแตนซ์ระยะไกลโดยที่ไม่มีการแคช';
	@override String get flagAsBot => 'ทำเครื่องหมายบอกว่าบัญชีนี้เป็นบอต';
	@override String get flagAsBotDescription => 'การเปิดใช้งานตัวเลือกนี้หากบัญชีนี้ถูกควบคุมโดยนักเขียนโปรแกรม หรือ ถ้าหากเปิดใช้งาน มันจะทำหน้าที่เป็นแฟล็กสำหรับนักพัฒนารายอื่นๆ และเพื่อป้องกันการโต้ตอบแบบไม่มีที่สิ้นสุดกับบอทตัวอื่นๆ และยังสามารถปรับเปลี่ยนระบบภายในของ Misskey เพื่อปฏิบัติต่อบัญชีนี้เป็นบอท';
	@override String get flagAsCat => 'เมี้ยววววววววววววววว!!!!!!!!!!!';
	@override String get flagAsCatDescription => 'เหมียวเหมียวเมี้ยว??';
	@override String get flagShowTimelineReplies => 'แสดงตอบกลับ ในไทม์ไลน์';
	@override String get flagShowTimelineRepliesDescription => 'แสดงการตอบกลับของผู้ใช้งานไปยังโน้ตของผู้ใช้งานรายอื่นๆในไทม์ไลน์หากได้เปิดเอาไว้';
	@override String get autoAcceptFollowed => 'อนุมัติคำขอติดตามโดยอัตโนมัติทันที จากผู้ใช้งานที่คุณกำลังติดตาม';
	@override String get addAccount => 'เพิ่มบัญชี';
	@override String get reloadAccountsList => 'รีโหลดรายการบัญชีใหม่';
	@override String get loginFailed => 'การเข้าสู่ระบบไม่สำเร็จ';
	@override String get showOnRemote => 'ดูบนอินสแตนซ์ระยะไกล';
	@override String get general => 'ทั่วไป';
	@override String get wallpaper => 'ภาพพื้นหลัง';
	@override String get setWallpaper => 'ตั้งค่าภาพพื้นหลัง';
	@override String get removeWallpaper => 'นำภาพพื้นหลังออก';
	@override String searchWith({required Object q}) => 'ค้นหา: ${q}';
	@override String get youHaveNoLists => 'คุณไม่มีรายชื่อใดๆ ';
	@override String followConfirm({required Object name}) => 'ต้องการติดตาม ${name} ใช่ไหม?';
	@override String get proxyAccount => 'บัญชีพร็อกซี่';
	@override String get proxyAccountDescription => 'บัญชีพร็อกซี่ คือ บัญชีที่จะทำหน้าที่เป็นผู้ติดตามระยะไกลสำหรับผู้ใช้งานที่อยู่ภายใต้ด้วยเงื่อนไขบางอย่าง ยกตัวอย่าง เช่น เมื่อมีผู้ใช้งานนั้นได้เพิ่มผู้ใช้งานจากระยะไกลลงในรายการ แต่กิจกรรมของผู้ใช้ในระยะไกลนั้นจะไม่ถูกส่งไปยังอินสแตนซ์หากไม่มีผู้ใช้งานในพื้นที่ติดตามผู้ใช้รายนั้น ดังนั้นบัญชีพร็อกซีนี้จะติดตามแทน';
	@override String get host => 'โฮสต์';
	@override String get selectUser => 'เลือกผู้ใช้งาน';
	@override String get recipient => 'ผู้รับ';
	@override String get annotation => 'หมายเหตุประกอบ';
	@override String get federation => 'สหพันธ์';
	@override String get instances => 'อินสแตนซ์';
	@override String get registeredAt => 'วันที่ลงทะเบียน';
	@override String get latestRequestReceivedAt => 'คำขอล่าสุดที่ได้รับ';
	@override String get latestStatus => 'สถานะล่าสุด';
	@override String get storageUsage => 'พื้นที่จัดเก็บข้อมูลที่ใช้ไป';
	@override String get charts => 'โดดเด่น';
	@override String get perHour => 'ทุกชั่วโมง';
	@override String get perDay => 'ต่อวัน';
	@override String get stopActivityDelivery => 'หยุดส่งกิจกรรม';
	@override String get blockThisInstance => 'บล็อกอินสแตนซ์นี้';
	@override String get silenceThisInstance => 'ปิดปากอินสแตนซ์นี้';
	@override String get operations => 'ดำเนินการ';
	@override String get software => 'ซอฟต์แวร์';
	@override String get version => 'เวอร์ชั่น';
	@override String get metadata => 'Metadata';
	@override String withNFiles({required Object n}) => '${n} ไฟล์';
	@override String get monitor => 'มอนิเตอร์';
	@override String get jobQueue => 'คิวงาน';
	@override String get cpuAndMemory => 'ซีพียู และ หน่วยความจำ';
	@override String get network => 'เครือข่าย';
	@override String get disk => 'ดิสก์';
	@override String get instanceInfo => 'ข้อมูลอินสแตนซ์';
	@override String get statistics => 'สถิติการใช้งาน';
	@override String get clearQueue => 'ล้างคิว';
	@override String get clearQueueConfirmTitle => 'ต้องการล้างคิวใช่ไหม?';
	@override String get clearQueueConfirmText => 'โพสต์ที่ยังค้างในคิวจะไม่ถูกจัดส่งอีกต่อไป โดยปกติแล้วการดำเนินการนี้ไม่จำเป็น';
	@override String get clearCachedFiles => 'ล้างแคช';
	@override String get clearCachedFilesConfirm => 'ต้องการลบไฟล์ระยะไกลที่แคชไว้ทั้งหมดใช่ไหม?';
	@override String get blockedInstances => 'อินสแตนซ์ที่ถูกบล็อก';
	@override String get blockedInstancesDescription => 'ระบุชื่อโฮสต์ของอินสแตนซ์ที่คุณต้องการบล็อก อินสแตนซ์ที่อยู่ในรายการนั้นจะไม่สามารถพูดคุยกับอินสแตนซ์นี้ได้อีกต่อไป';
	@override String get silencedInstances => 'ปิดปากอินสแตนซ์นี้แล้ว';
	@override String get silencedInstancesDescription => 'ตั้งค่ารายชื่อโฮสต์ของอินสแตนซ์ที่คุณต้องการปิดปาก บัญชีทั้งหมดของอินสแตนซ์ที่อยู่ในรายชื่อนั้นๆ จะถือว่าถูกปิดปากเช่นกัน ทำได้เฉพาะคำขอติดตามเท่านั้น และไม่สามารถกล่าวถึงบัญชีในพื้นที่ได้หากไม่ได้ติดตาม | สิ่งนี้ไม่มีผลต่ออินสแตนซ์ที่ถูกบล็อก';
	@override String get muteAndBlock => 'ปิดเสียงและบล็อก';
	@override String get mutedUsers => 'ผู้ใช้ที่ถูกปิดเสียง';
	@override String get blockedUsers => 'ผู้ใช้ที่ถูกบล็อก';
	@override String get noUsers => 'ไม่พบผู้ใช้งาน';
	@override String get editProfile => 'แก้ไขโปรไฟล์';
	@override String get noteDeleteConfirm => 'ต้องการลบโน้ตนี้ใช่ไหม?';
	@override String get pinLimitExceeded => 'คุณไม่สามารถปักหมุดโน้ตเพิ่มเติมใดๆได้อีก';
	@override String get intro => 'การติดตั้ง Misskey เสร็จสิ้นแล้วนะ! โปรดสร้างผู้ใช้งานที่เป็นผู้ดูแลระบบ';
	@override String get done => 'เสร็จสิ้น';
	@override String get processing => 'กำลังประมวลผล...';
	@override String get preview => 'แสดงตัวอย่าง';
	@override String get default_ => 'ค่าเริ่มต้น';
	@override String defaultValueIs({required Object value}) => 'ค่าเริ่มต้น: ${value}';
	@override String get noCustomEmojis => 'ไม่มีเอโมจิ';
	@override String get noJobs => 'ไม่มีงาน';
	@override String get federating => 'สหพันธ์';
	@override String get blocked => 'ถูกบล็อก';
	@override String get suspended => 'ถูกระงับ';
	@override String get all => 'ทั้งหมด';
	@override String get subscribing => 'สมัครแล้ว';
	@override String get publishing => 'กำลังเผยแพร่';
	@override String get notResponding => 'ไม่มีการตอบสนอง';
	@override String get instanceFollowing => 'กำลังติดตามบนอินสแตนซ์';
	@override String get instanceFollowers => 'ผู้ติดตามของอินสแตนซ์';
	@override String get instanceUsers => 'ผู้ใช้งานของอินสแตนซ์นี้';
	@override String get changePassword => 'เปลี่ยนรหัสผ่าน';
	@override String get security => 'ความปลอดภัย';
	@override String get retypedNotMatch => 'ทั้งสองป้อนข้อมูลไม่สอดคล้องกัน';
	@override String get currentPassword => 'รหัสผ่านปัจจุบัน';
	@override String get newPassword => 'รหัสผ่านใหม่';
	@override String get newPasswordRetype => 'ใส่รหัสผ่านใหม่อีกครั้ง';
	@override String get attachFile => 'แนบไฟล์';
	@override String get more => 'เพิ่มเติม!';
	@override String get featured => 'ไฮไลท์';
	@override String get usernameOrUserId => 'ชื่อผู้ใช้หรือรหัสผู้ใช้งาน';
	@override String get noSuchUser => 'ไม่พบผู้ใช้';
	@override String get lookup => 'การค้นหา';
	@override String get announcements => 'ประกาศ';
	@override String get imageUrl => 'URL รูปภาพ';
	@override String get remove => 'ลบ';
	@override String get removed => 'ถูกลบไปแล้ว';
	@override String removeAreYouSure({required Object x}) => 'ต้องการลบ “${x}” ใช่ไหม?';
	@override String deleteAreYouSure({required Object x}) => 'ต้องการลบ “${x}” ใช่ไหม?';
	@override String get resetAreYouSure => 'รีเซ็ตเลยไหม?';
	@override String get areYouSure => 'แน่ใจแล้วใช่ไหมคะ?';
	@override String get saved => 'บันทึกแล้ว';
	@override String get messaging => 'แชท';
	@override String get upload => 'อัปโหลด';
	@override String get keepOriginalUploading => 'เก็บภาพต้นฉบับ';
	@override String get keepOriginalUploadingDescription => 'เก็บภาพต้นฉบับไว้เมื่ออัปโหลดภาพ หากปิด รูปภาพสำหรับการเผยแพร่ทางเว็บจะถูกสร้างขึ้นในเบราว์เซอร์เมื่อทำการอัปโหลด';
	@override String get fromDrive => 'จากไดรฟ์';
	@override String get fromUrl => 'จาก URL';
	@override String get uploadFromUrl => 'อัปโหลดจาก URL';
	@override String get uploadFromUrlDescription => 'URL ของไฟล์ที่คุณต้องการอัปโหลด';
	@override String get uploadFromUrlRequested => 'ร้องขอการอัปโหลดแล้ว';
	@override String get uploadFromUrlMayTakeTime => 'การอัปโหลดอาจใช้เวลาสักครู่จึงจะเสร็จสมบูรณ์';
	@override String get explore => 'สำรวจ';
	@override String get messageRead => 'อ่านแล้ว';
	@override String get noMoreHistory => 'ไม่มีประวัติเพิ่มเติม';
	@override String get startMessaging => 'เริ่มการสนทนา';
	@override String nUsersRead({required Object n}) => 'อ่านโดย ${n}';
	@override String agreeTo({required Object x0}) => 'ฉันยอมรับที่จะ ${x0}';
	@override String get agree => 'ยอมรับ';
	@override String get agreeBelow => 'ฉันยอมรับถึงด้านล่าง';
	@override String get basicNotesBeforeCreateAccount => 'หมายเหตุสำคัญ';
	@override String get termsOfService => 'เงื่อนไขการให้บริการ';
	@override String get start => 'เริ่ม';
	@override String get home => 'หน้าแรก';
	@override String get remoteUserCaution => 'ข้อมูลอาจไม่สมบูรณ์เนื่องจากผู้ใช้รายนี้มาจากอินสแตนซ์ระยะไกล';
	@override String get activity => 'กิจกรรม';
	@override String get images => 'รูปภาพ';
	@override String get image => 'รูปภาพ';
	@override String get birthday => 'วันเกิด';
	@override String yearsOld({required Object age}) => '${age} ปี';
	@override String get registeredDate => 'วันที่สมัครสมาชิก';
	@override String get location => 'ตำแหน่งที่ตั้ง';
	@override String get theme => 'ธีม';
	@override String get themeForLightMode => 'ธีมที่จะใช้ในโหมดสว่าง';
	@override String get themeForDarkMode => 'ธีมที่จะใช้ในโหมดมืด';
	@override String get light => 'สว่าง';
	@override String get dark => 'มืด';
	@override String get lightThemes => 'ธีมสว่าง';
	@override String get darkThemes => 'ธีมมืด';
	@override String get syncDeviceDarkMode => 'ซิงค์โหมดมืดกับการตั้งค่าอุปกรณ์ของคุณ';
	@override String get drive => 'ไดรฟ์';
	@override String get fileName => 'ชื่อไฟล์';
	@override String get selectFile => 'เลือกไฟล์';
	@override String get selectFiles => 'เลือกไฟล์';
	@override String get selectFolder => 'เลือกโฟลเดอร์';
	@override String get selectFolders => 'เลือกโฟลเดอร์';
	@override String get renameFile => 'เปลี่ยนชื่อไฟล์';
	@override String get folderName => 'ชื่อโฟลเดอร์';
	@override String get createFolder => 'สร้างโฟลเดอร์';
	@override String get renameFolder => 'เปลี่ยนชื่อโฟลเดอร์';
	@override String get deleteFolder => 'ลบโฟลเดอร์';
	@override String get folder => 'โฟลเดอร์';
	@override String get addFile => 'เพิ่มไฟล์';
	@override String get emptyDrive => 'ไดรฟ์ของคุณว่างเปล่านะ';
	@override String get emptyFolder => 'โฟลเดอร์นี้ว่างเปล่า';
	@override String get unableToDelete => 'ไม่สามารถลบออกได้';
	@override String get inputNewFileName => 'ป้อนชื่อไฟล์ใหม่';
	@override String get inputNewDescription => 'กรุณาใส่แคปชั่นใหม่';
	@override String get inputNewFolderName => 'กรุณาใส่ชื่อโฟลเดอร์ใหม่';
	@override String get circularReferenceFolder => 'โฟลเดอร์ปลายทางคือโฟลเดอร์ย่อยของโฟลเดอร์ที่คุณกำลังย้าย';
	@override String get hasChildFilesOrFolders => 'เนื่องจากโฟลเดอร์นี้ไม่ว่างเปล่า จึงไม่สามารถลบ';
	@override String get copyUrl => 'คัดลอก URL';
	@override String get rename => 'เปลี่ยนชื่อ';
	@override String get avatar => 'ไอคอน';
	@override String get banner => 'แบนเนอร์';
	@override String get displayOfSensitiveMedia => 'แสดงสื่อที่มีเนื้อหาละเอียดอ่อน';
	@override String get whenServerDisconnected => 'เมื่อสูญเสียการเชื่อมต่อกับเซิร์ฟเวอร์';
	@override String get disconnectedFromServer => 'การเชื่อมต่อเซิร์ฟเวอร์ถูกตัด';
	@override String get reload => 'รีโหลด';
	@override String get doNothing => 'เมิน';
	@override String get reloadConfirm => 'รีโหลดเลยไหม?';
	@override String get watch => 'ดู';
	@override String get unwatch => 'หยุดดู';
	@override String get accept => 'ยอมรับ';
	@override String get reject => 'ปฏิเสธ';
	@override String get normal => 'ปกติ';
	@override String get instanceName => 'ชื่ออินสแตนซ์';
	@override String get instanceDescription => 'คำอธิบายอินสแตนซ์';
	@override String get maintainerName => 'ผู้ดูแล';
	@override String get maintainerEmail => 'อีเมลผู้ดูแลระบบ';
	@override String get tosUrl => 'URL เงื่อนไขการให้บริการ';
	@override String get thisYear => 'ปีนี้';
	@override String get thisMonth => 'เดือนนี้';
	@override String get today => 'วันนี้';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => 'เดือน ${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'หน้าเพจ';
	@override String get integration => 'รวบรวม';
	@override String get connectService => 'เชื่อมต่อ';
	@override String get disconnectService => 'ตัดการเชื่อมต่อ';
	@override String get enableLocalTimeline => 'เปิดใช้งานไทม์ไลน์ในพื้นที่';
	@override String get enableGlobalTimeline => 'เปิดใช้งานไทม์ไลน์ทั่วโลก';
	@override String get disablingTimelinesInfo => 'ผู้ดูแลระบบและผู้ควบคุมจะสามารถเข้าถึงไทม์ไลน์ทั้งหมด ถึงแม้ว่าจะไม่ได้เปิดใช้งานก็ตาม';
	@override String get registration => 'ลงทะเบียน';
	@override String get enableRegistration => 'เปิดใช้งานการลงทะเบียนผู้ใช้ใหม่';
	@override String get invite => 'คำเชิญ';
	@override String get driveCapacityPerLocalAccount => 'ความจุของไดรฟ์ต่อผู้ใช้ภายในเครื่อง';
	@override String get driveCapacityPerRemoteAccount => 'ความจุของไดรฟ์ต่อผู้ใช้ระยะไกล';
	@override String get inMb => 'เป็นเมกะไบต์';
	@override String get bannerUrl => 'URL รูปภาพแบนเนอร์';
	@override String get backgroundImageUrl => 'URL ภาพพื้นหลัง';
	@override String get basicInfo => 'ข้อมูลเบื้องต้น';
	@override String get pinnedUsers => 'ผู้ใช้ที่ถูกปักหมุด';
	@override String get pinnedUsersDescription => 'ป้อนชื่อผู้ใช้ที่คุณต้องการปักหมุดในหน้า “ค้นพบ” ฯลฯ คั่นด้วยการขึ้นบรรทัดใหม่';
	@override String get pinnedPages => 'หน้าเพจที่ปักหมุด';
	@override String get pinnedPagesDescription => 'ป้อนเส้นทางของหน้าเพจที่คุณต้องการปักหมุดไว้ที่หน้าแรกของอินสแตนซ์นี้ คั่นด้วยขึ้นบรรทัดใหม่';
	@override String get pinnedClipId => 'ID ของคลิปที่จะปักหมุด';
	@override String get pinnedNotes => 'โน้ตที่ปักหมุดไว้';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'เปิดใช้ hCaptcha';
	@override String get hcaptchaSiteKey => 'คีย์ไซต์';
	@override String get hcaptchaSecretKey => 'คีย์ลับ';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => 'เปิดใช้ mCaptcha';
	@override String get mcaptchaSiteKey => 'คีย์ไซต์';
	@override String get mcaptchaSecretKey => 'คีย์ลับ';
	@override String get mcaptchaInstanceUrl => 'URL ของอินสแตนซ์ของ mCaptcha';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'เปิดใช้ reCAPTCHA';
	@override String get recaptchaSiteKey => 'คีย์ไซต์';
	@override String get recaptchaSecretKey => 'คีย์ลับ';
	@override String get turnstile => 'เทิร์น\'สไทล';
	@override String get enableTurnstile => 'เปิดใช้งาน เทิร์น\'สไทล';
	@override String get turnstileSiteKey => 'คีย์ไซต์';
	@override String get turnstileSecretKey => 'คีย์ลับ';
	@override String get avoidMultiCaptchaConfirm => 'การใช้ระบบ Captcha หลายระบบอาจทำให้เกิดการรบกวนหรืออาจจะเกิดข้อผิดพลาดได้ หากต้องการที่จะปิดการใช้งานระบบ Captcha อื่น ๆ แนะนำให้ปิดตัวอื่นๆก่อน ถ้าหากคุณต้องการให้เปิดใช้งานต่อไป ให้ กด ยกเลิก';
	@override String get antennas => 'เสาอากาศ';
	@override String get manageAntennas => 'จัดการเสาอากาศ';
	@override String get name => 'ชื่อ';
	@override String get antennaSource => 'แหล่งเสาอากาศ';
	@override String get antennaKeywords => 'คีย์เวิร์ดที่ควรฟัง';
	@override String get antennaExcludeKeywords => 'คีย์เวิร์ดที่จะยกเว้น';
	@override String get antennaExcludeBots => 'ยกเว้นบัญชีบอต';
	@override String get antennaKeywordsDescription => 'คั่นด้วยช่องว่างสำหรับเงื่อนไข AND หรือด้วยการขึ้นบรรทัดใหม่สำหรับเงื่อนไข OR';
	@override String get notifyAntenna => 'แจ้งเตือนเกี่ยวกับโน้ตใหม่';
	@override String get withFileAntenna => 'เฉพาะโน้ตที่มีไฟล์';
	@override String get enableServiceworker => 'เปิดใช้งานการแจ้งเตือนแบบพุชไปยังเบราว์เซอร์ของคุณ';
	@override String get antennaUsersDescription => 'ระบุหนึ่งชื่อผู้ใช้ต่อบรรทัด';
	@override String get caseSensitive => 'อักษรพิมพ์ใหญ่-พิมพ์เล็กความหมายต่างกัน';
	@override String get withReplies => 'รวมตอบกลับ';
	@override String get connectedTo => 'บัญชีดังต่อไปนี้มีการเชื่อมต่อกัน';
	@override String get notesAndReplies => 'โพสต์และการตอบกลับ';
	@override String get withFiles => 'มีไฟล์';
	@override String get silence => 'ถูกปิดปาก';
	@override String get silenceConfirm => 'ต้องการปิดปากผู้ใช้รายนี้ใช่ไหม?';
	@override String get unsilence => 'ยกเลิกการปิดปาก';
	@override String get unsilenceConfirm => 'ต้องการเลิกปิดปากผู้ใช้รายนี้ใช่ไหม?';
	@override String get popularUsers => 'ผู้ใช้ที่เป็นที่นิยม';
	@override String get recentlyUpdatedUsers => 'ผู้ใช้ที่เพิ่งใช้งานล่าสุด';
	@override String get recentlyRegisteredUsers => 'ผู้ใช้ที่เข้าร่วมใหม่';
	@override String get recentlyDiscoveredUsers => 'ผู้ใช้ที่เพิ่งค้นพบใหม่';
	@override String exploreUsersCount({required Object count}) => 'มีผู้ใช้ ${count} ราย';
	@override String get exploreFediverse => 'สำรวจสหพันธ์';
	@override String get popularTags => 'แท็กยอดนิยม';
	@override String get userList => 'ลิสต์';
	@override String get about => 'เกี่ยวกับ';
	@override String get aboutMisskey => 'เกี่ยวกับ Misskey';
	@override String get administrator => 'ผู้ดูแลระบบ';
	@override String get token => 'โทเค็น';
	@override String get x2fa => 'การยืนยันตัวตนแบบสองชั้น';
	@override String get setupOf2fa => 'ตั้งค่าการยืนยันตัวตนแบบสองชั้น';
	@override String get totp => 'แอป Authenticator';
	@override String get totpDescription => 'ใช้แอปยืนยันตัวตนเพื่อป้อนรหัสผ่านแบบใช้ครั้งเดียว';
	@override String get moderator => 'ผู้ควบคุม';
	@override String get moderation => 'การกลั่นกรอง';
	@override String get moderationNote => 'โน้ตการกลั่นกรอง';
	@override String get addModerationNote => 'เพิ่มโน้ตการกลั่นกรอง';
	@override String get moderationLogs => 'ปูมการแก้ไข';
	@override String nUsersMentioned({required Object n}) => 'กล่าวถึงโดยผู้ใช้ ${n} ราย';
	@override String get securityKeyAndPasskey => 'ความปลอดภัยและรหัสผ่าน';
	@override String get securityKey => 'กุญแจความปลอดภัย';
	@override String get lastUsed => 'ใช้ล่าสุด';
	@override String lastUsedAt({required Object t}) => 'ใช้งานครั้งล่าสุด: ${t}';
	@override String get unregister => 'เลิกติดตาม';
	@override String get passwordLessLogin => 'เข้าสู่ระบบแบบไม่ใช้รหัสผ่าน';
	@override String get passwordLessLoginDescription => 'อนุญาตให้เข้าสู่ระบบโดยไม่ต้องใช้รหัสผ่านโดยใช้รหัสรักษาความปลอดภัยหรือรหัสผ่านเท่านั้น';
	@override String get resetPassword => 'รีเซ็ตรหัสผ่าน';
	@override String newPasswordIs({required Object password}) => 'รหัสผ่านใหม่คือ “${password}”';
	@override String get reduceUiAnimation => 'ลดภาพเคลื่อนไหว UI';
	@override String get share => 'แบ่งปัน';
	@override String get notFound => 'ไม่พบหน้าที่ต้องการ';
	@override String get notFoundDescription => 'ไม่พบหน้าตาม URL ที่ระบุ';
	@override String get uploadFolder => 'โฟลเดอร์เริ่มต้นสำหรับอัปโหลด';
	@override String get markAsReadAllNotifications => 'ทำเครื่องหมายการแจ้งเตือนทั้งหมดว่าอ่านแล้ว';
	@override String get markAsReadAllUnreadNotes => 'ทำเครื่องหมายโน้ตทั้งหมดว่าอ่านแล้ว';
	@override String get markAsReadAllTalkMessages => 'ทำเครื่องหมายข้อความทั้งหมดว่าอ่านแล้ว';
	@override String get help => 'ช่วยเหลือ';
	@override String get inputMessageHere => 'พิมพ์ข้อความที่นี่';
	@override String get close => 'ปิด';
	@override String get invites => 'คำเชิญ';
	@override String get members => 'สมาชิก';
	@override String get transfer => 'ถ่ายโอน';
	@override String get title => 'หัวข้อ';
	@override String get text => 'ข้อความ';
	@override String get enable => 'เปิดใช้งาน';
	@override String get next => 'ถัด​ไป';
	@override String get retype => 'พิมพ์รหัสอีกครั้ง';
	@override String noteOf({required Object user}) => 'โน้ตของ ${user}';
	@override String get quoteAttached => 'อ้างอิง';
	@override String get quoteQuestion => 'ต้องการที่จะแนบมันเพื่ออ้างอิงใช่ไหม?';
	@override String get noMessagesYet => 'ยังไม่มีข้อความ';
	@override String get newMessageExists => 'คุณมีข้อความใหม่';
	@override String get onlyOneFileCanBeAttached => 'สามารถแนบไฟล์ได้เพียงไฟล์เดียวต่อ 1 ข้อความ';
	@override String get signinRequired => 'กรุณาลงทะเบียนหรือลงชื่อเข้าใช้ก่อนดำเนินการต่อ';
	@override String get invitations => 'คำเชิญ';
	@override String get invitationCode => 'รหัสเชิญ';
	@override String get checking => 'Checking';
	@override String get available => 'พร้อมใช้งาน';
	@override String get unavailable => 'ไม่พร้อมใช้';
	@override String get usernameInvalidFormat => 'คุณสามารถใช้อักษรตัวพิมพ์ใหญ่และตัวพิมพ์เล็ก ตัวเลข และขีดล่างได้นะ ( a-z , A-Z , 0-9 , รวมไปถึงอักษรพิเศษเช่น + * / , . - อื่นๆเป็นต้น )';
	@override String get tooShort => 'สั้นเกินไปนะ';
	@override String get tooLong => 'ยาวเกินไปนะ';
	@override String get weakPassword => 'รหัสผ่าน แย่มาก';
	@override String get normalPassword => 'รหัสผ่านปกติ';
	@override String get strongPassword => 'รหัสผ่านรัดกุมมาก';
	@override String get passwordMatched => 'ถูกต้อง!';
	@override String get passwordNotMatched => 'ไม่ถูกต้อง';
	@override String signinWith({required Object x}) => 'ลงชื่อเข้าใช้ด้วย ${x}';
	@override String get signinFailed => 'ไม่สามารถลงชื่อผู้เข้าใช้ได้ เนื่องจาก ชื่อผู้ใช้หรือรหัสผ่านที่คุณป้อนนั้นไม่ถูกต้องนะ';
	@override String get or => 'หรือ';
	@override String get language => 'ภาษา';
	@override String get uiLanguage => 'ภาษาอินเทอร์เฟซผู้ใช้งาน';
	@override String aboutX({required Object x}) => 'เกี่ยวกับ ${x}';
	@override String get emojiStyle => 'สไตล์เอโมจิ';
	@override String get native => 'ภาษาแม่';
	@override String get disableDrawer => 'อย่าใช้ลิ้นชักสไตล์เมนู';
	@override String get showNoteActionsOnlyHover => 'แสดงการดำเนินการเฉพาะโน้ตเมื่อโฮเวอร์';
	@override String get showReactionsCount => 'แสดงจำนวนรีแอกชั่นในโน้ต';
	@override String get noHistory => 'ไม่มีประวัติ';
	@override String get signinHistory => 'ประวัติการเข้าสู่ระบบ';
	@override String get enableAdvancedMfm => 'เปิดใช้งาน MFM ขั้นสูง';
	@override String get enableAnimatedMfm => 'เปิดการใช้งาน MFM ด้วยแอนิเมชั่น';
	@override String get doing => 'กำลังประมวลผล......';
	@override String get category => 'หมวดหมู่';
	@override String get tags => 'นามแฝง';
	@override String get docSource => 'ที่มาของเอกสารนี้';
	@override String get createAccount => 'สร้างบัญชี';
	@override String get existingAccount => 'บัญชีที่มีอยู่';
	@override String get regenerate => 'สร้างอีกครั้ง';
	@override String get fontSize => 'ขนาดตัวอักษร';
	@override String get mediaListWithOneImageAppearance => 'ความสูงของรายการสื่อที่มีเพียงรูปเดียว';
	@override String limitTo({required Object x}) => 'จำกัดไว้ที่ ${x}';
	@override String get noFollowRequests => 'คุณไม่มีคำขอติดตามที่รอดำเนินการ';
	@override String get openImageInNewTab => 'เปิดรูปภาพในแท็บใหม่';
	@override String get dashboard => 'หน้ากระดานหลัก';
	@override String get local => 'ในพื้นที่';
	@override String get remote => 'ระยะไกล';
	@override String get total => 'รวมทั้งหมด';
	@override String get weekOverWeekChanges => 'เปลี่ยนแปลงไปเมื่อสัปดาห์ที่แล้ว';
	@override String get dayOverDayChanges => 'เปลี่ยนแปลงไปเมื่อวานนี้';
	@override String get appearance => 'ภาพลักษณ์';
	@override String get clientSettings => 'การตั้งค่าไคลเอนต์';
	@override String get accountSettings => 'ตั้งค่าบัญชี';
	@override String get promotion => 'โฆษณา';
	@override String get promote => 'โปรโมท';
	@override String get numberOfDays => 'จำนวนวัน';
	@override String get hideThisNote => 'ซ่อนโน้ตนี้';
	@override String get showFeaturedNotesInTimeline => 'แสดงโน้ตเด่นในไทม์ไลน์';
	@override String get objectStorage => 'การจัดเก็บในรูปแบบอ็อบเจกต์';
	@override String get useObjectStorage => 'ใช้การจัดเก็บในรูปแบบอ็อบเจกต์';
	@override String get objectStorageBaseUrl => 'Base URL';
	@override String get objectStorageBaseUrlDesc => 'URL ที่ใช้เป็นข้อมูลอ้างอิง ระบุ URL ของ CDN หรือ Proxy ถ้าหากคุณใช้อย่างใดอย่างหนึ่ง\n สำหรับการใช้งาน S3 \'https://<bucket>.s3.amazonaws.com\' และสำหรับ GCS หรือบริการที่เทียบเท่าใช้ \'https://storage.googleapis.com/<bucket>\', เป็นต้น';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => 'โปรดระบุชื่อที่เก็บข้อมูลที่ใช้กับผู้ให้บริการของคุณ';
	@override String get objectStoragePrefix => 'คำนำหน้า';
	@override String get objectStoragePrefixDesc => 'ไฟล์ทั้งหมดจะถูกเก็บไว้ภายใต้ไดเร็กทอรีที่มีคำนำหน้านี้';
	@override String get objectStorageEndpoint => 'ปลายทาง';
	@override String get objectStorageEndpointDesc => 'เว้นว่างไว้หากคุณใช้ AWS S3 หรือระบุปลายทางเป็น \'<host>\' หรือ \'<host>:<port>\' ทั้งนี้ขึ้นอยู่กับผู้ให้บริการที่คุณใช้อยู่ด้วย';
	@override String get objectStorageRegion => 'ภูมิภาค';
	@override String get objectStorageRegionDesc => 'ระบุภูมิภาค เช่น \'xx-east-1\' ถ้าหากบริการของคุณไม่ได้แยกความแตกต่างระหว่างภูมิภาคก็ให้ เว้นว่างไว้หรือป้อน \'us-east-1\'';
	@override String get objectStorageUseSSL => 'ใช้ SSL';
	@override String get objectStorageUseSSLDesc => 'ปิดการทำงานนี้ไว้ ถ้าหากคุณจะไม่ใช้ HTTPS สำหรับการเชื่อมต่อ API';
	@override String get objectStorageUseProxy => 'เชื่อมต่อผ่านพร็อกซี';
	@override String get objectStorageUseProxyDesc => 'ปิดสิ่งนี้ไว้ถ้าหากคุณจะไม่ใช้ Proxy สำหรับการเชื่อมต่อ API';
	@override String get objectStorageSetPublicRead => 'ตั้งค่าเป็น “public-read” เมื่ออัปโหลด';
	@override String get s3ForcePathStyleDesc => 'ถ้าหากเปิดใช้งาน s3ForcePathStyle ชื่อบัคเก็ตนั้นอาจจะต้องรวมอยู่ในเส้นทางของ URL ซึ่งตรงข้ามกับชื่อโฮสต์ของ URL คุณอาจจะต้องเปิดใช้งานการตั้งค่านี้เมื่อใช้บริการต่างๆ เช่น อินสแตนซ์ Minio ที่โฮสต์เองนะ';
	@override String get serverLogs => 'ปูมของเซิร์ฟเวอร์';
	@override String get deleteAll => 'ลบทั้งหมด';
	@override String get showFixedPostForm => 'แสดงแบบฟอร์มการโพสต์ที่ด้านบนสุดของไทม์ไลน์';
	@override String get showFixedPostFormInChannel => 'แสดงแบบฟอร์มการโพสต์ที่ด้านบนของไทม์ไลน์ (ช่อง)';
	@override String get withRepliesByDefaultForNewlyFollowed => 'แสดงการตอบกลับจากผู้ใช้ที่คุณเพิ่งติดตามลงไทม์ไลน์ตามค่าเริ่มต้น';
	@override String get newNoteRecived => 'มีโน้ตใหม่';
	@override String get sounds => 'เสียง';
	@override String get sound => 'เสียง';
	@override String get listen => 'ฟัง';
	@override String get none => 'ไม่มี';
	@override String get showInPage => 'แสดงในเพจ';
	@override String get popout => 'ป๊อปเอาต์';
	@override String get volume => 'ระดับเสียง';
	@override String get masterVolume => 'ระดับเสียงหลัก';
	@override String get notUseSound => 'ไม่ใช้เสียง';
	@override String get useSoundOnlyWhenActive => 'มีเสียงออกเฉพาะตอนกำลังใช้ Misskey อยู่เท่านั้น';
	@override String get details => 'รายละเอียด';
	@override String get chooseEmoji => 'เลือกเอโมจิ';
	@override String get unableToProcess => 'ไม่สามารถดำเนินการให้เสร็จสิ้นได้';
	@override String get recentUsed => 'ใช้ล่าสุด';
	@override String get install => 'ติดตั้ง';
	@override String get uninstall => 'ถอนการติดตั้ง';
	@override String get installedApps => 'แอปที่ติดตั้งแล้ว';
	@override String get nothing => 'ไม่พบผลลัพธ์';
	@override String get installedDate => 'วันที่ติดตั้ง';
	@override String get lastUsedDate => 'ใช้งานครั้งล่าสุด';
	@override String get state => 'สถานะ';
	@override String get sort => 'เรียงลำดับ';
	@override String get ascendingOrder => 'เรียงลำดับขึ้น';
	@override String get descendingOrder => 'เรียงลำดับลง';
	@override String get scratchpad => 'Scratchpad';
	@override String get scratchpadDescription => 'Scratchpad เป็นการจัดเตรียมสภาพแวดล้อมสำหรับการทดลอง AiScript แต่คุณสามารถเขียน ดำเนินการ และตรวจสอบผลลัพธ์ของการโต้ตอบกับ Misskey มันได้ด้วยนะ';
	@override String get output => 'เอาท์พุต';
	@override String get script => 'สคริปต์';
	@override String get disablePagesScript => 'ปิดการใช้งาน AiScript บนเพจ';
	@override String get updateRemoteUser => 'อัปเดตข้อมูลผู้ใช้งานระยะไกล';
	@override String get unsetUserAvatar => 'เลิกตั้งอวตาร';
	@override String get unsetUserAvatarConfirm => 'ต้องการเลิกตั้งอวตารใข่ไหม?';
	@override String get unsetUserBanner => 'เลิกตั้งแบนเนอร์';
	@override String get unsetUserBannerConfirm => 'ต้องการเลิกตั้งแบนเนอร์?';
	@override String get deleteAllFiles => 'ลบไฟล์ทั้งหมด';
	@override String get deleteAllFilesConfirm => 'ต้องการลบไฟล์ทั้งหมดใช่ไหม?';
	@override String get removeAllFollowing => 'เลิกติดตามผู้ใช้ที่ติดตามทั้งหมด';
	@override String removeAllFollowingDescription({required Object host}) => 'เลิกติดตามทั้งหมดจาก ${host} โปรดเรียกใช้สิ่งนี้เมื่ออินสแตนซ์ดังกล่าวได้สูญหายตายจากไปแล้ว';
	@override String get userSuspended => 'ผู้ใช้รายนี้ถูกระงับการใช้งาน';
	@override String get userSilenced => 'ผู้ใช้รายนี้ถูกปิดปากอยู่';
	@override String get yourAccountSuspendedTitle => 'บัญชีนี้นั้นถูกระงับ';
	@override String get yourAccountSuspendedDescription => 'บัญชีนี้ถูกระงับ เนื่องจากละเมิดข้อกำหนดในการให้บริการของเซิร์ฟเวอร์หรืออาจจะละเมิดหลักเกณฑ์ชุมชน หรือ อาจจะโดนร้องเรียนเรื่องการละเมิดลิขสิทธิ์และอื่นๆอย่างต่อเนื่องซ้ำๆ หากคุณคิดว่าไม่ได้ทำผิดจริงๆหรือตัดสินผิดพลาด ได้โปรดกรุณาติดต่อผู้ดูแลระบบหากคุณต้องการทราบเหตุผลโดยละเอียดเพิ่มเติม และขอความกรุณาอย่าสร้างบัญชีใหม่';
	@override String get tokenRevoked => 'โทเค็นไม่ถูกต้อง';
	@override String get tokenRevokedDescription => 'โทเค็นนี้หมดอายุแล้วนะค่ะกรุณาเข้าสู่ระบบอีกครั้งนะ';
	@override String get accountDeleted => 'ลบบัญชีแล้ว';
	@override String get accountDeletedDescription => 'บัญชีนี้ถูกลบไปแล้วนะ';
	@override String get menu => 'เมนู';
	@override String get divider => 'ตัวแบ่ง';
	@override String get addItem => 'เพิ่มรายการ';
	@override String get rearrange => 'จัดใหม่';
	@override String get relays => 'รีเลย์';
	@override String get addRelay => 'เพิ่มรีเลย์';
	@override String get inboxUrl => 'URL ของอินบ็อกซ์';
	@override String get addedRelays => 'เพิ่มรีเลย์แล้ว';
	@override String get serviceworkerInfo => 'ต้องเปิดใช้งานสำหรับการแจ้งเตือนแบบพุช';
	@override String get deletedNote => 'โน้ตที่ถูกลบ';
	@override String get invisibleNote => 'โน้ตที่มองไม่เห็น';
	@override String get enableInfiniteScroll => 'โหลดเพิ่มเติมโดยอัตโนมัติ';
	@override String get visibility => 'การมองเห็น';
	@override String get poll => 'โพล';
	@override String get useCw => 'ซ่อนเนื้อหา';
	@override String get enablePlayer => 'เปิดเครื่องเล่นวิดีโอ';
	@override String get disablePlayer => 'ปิดเครื่องเล่นวิดีโอ';
	@override String get expandTweet => 'ขยายทวีต';
	@override String get themeEditor => 'ตัวแก้ไขธีม';
	@override String get description => 'รายละเอียด';
	@override String get describeFile => 'เพิ่มแคปชั่น';
	@override String get enterFileDescription => 'ใส่แคปชั่น';
	@override String get author => 'ผู้เขียน';
	@override String get leaveConfirm => 'มีการเปลี่ยนแปลงที่ยังไม่ได้บันทึก ต้องการละทิ้งมันใช่ไหม?';
	@override String get manage => 'การจัดการ';
	@override String get plugins => 'ปลั๊กอิน';
	@override String get preferencesBackups => 'ตั้งค่าการสำรองข้อมูล';
	@override String get deck => 'เด็ค';
	@override String get undeck => 'ออกจากเด็ค';
	@override String get useBlurEffectForModal => 'ใช้เอฟเฟกต์เบลอสำหรับโมดอล';
	@override String get useFullReactionPicker => 'ใช้ตัวจิ้มรีแอคชั่นอย่างเต็มรูปแบบ';
	@override String get width => 'ความกว้าง';
	@override String get height => 'ความสูง';
	@override String get large => 'ใหญ่';
	@override String get medium => 'ปานกลาง';
	@override String get small => 'เล็ก';
	@override String get generateAccessToken => 'สร้างการเข้าถึงโทเค็น';
	@override String get permission => 'การอนุญาต';
	@override String get adminPermission => 'สิทธิ์ของผู้ดูแลระบบ';
	@override String get enableAll => 'เปิดใช้งานทั้งหมด';
	@override String get disableAll => 'ปิดการใช้งานทั้งหมด';
	@override String get tokenRequested => 'ให้สิทธิ์การเข้าถึงบัญชี';
	@override String get pluginTokenRequestedDescription => 'ปลั๊กอินนี้จะสามารถใช้การอนุญาตที่ตั้งค่าไว้ที่นี่นะ';
	@override String get notificationType => 'ประเภทการแจ้งเตือน';
	@override String get edit => 'แก้ไข';
	@override String get emailServer => 'อีเมลเซิร์ฟเวอร์';
	@override String get enableEmail => 'เปิดใช้งานการกระจายอีเมล';
	@override String get emailConfigInfo => 'ใช้เพื่อยืนยันอีเมลของคุณระหว่างการสมัครหรือถ้าหากคุณลืมรหัสผ่าน';
	@override String get email => 'อีเมล';
	@override String get emailAddress => 'ที่อยู่อีเมล';
	@override String get smtpConfig => 'กำหนดค่าเซิร์ฟเวอร์ SMTP';
	@override String get smtpHost => 'โฮสต์';
	@override String get smtpPort => 'พอร์ต';
	@override String get smtpUser => 'ชื่อผู้ใช้';
	@override String get smtpPass => 'รหัสผ่าน';
	@override String get emptyToDisableSmtpAuth => 'ปล่อยชื่อผู้ใช้และรหัสผ่านว่างไว้เพื่อปิดใช้งานการยืนยัน SMTP';
	@override String get smtpSecure => 'ใช้โดยนัย SSL/TLS สำหรับการเชื่อมต่อ SMTP';
	@override String get smtpSecureInfo => 'ปิดสิ่งนี้เมื่อใช้ STARTTLS';
	@override String get testEmail => 'ทดสอบการส่งอีเมล';
	@override String get wordMute => 'ปิดเสียงคำ';
	@override String get hardWordMute => 'ปิดเสียงคำยาก';
	@override String get regexpError => 'ข้อผิดพลาดของนิพจน์ทั่วไป';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'เกิดข้อผิดพลาดในนิพจน์ทั่วไปในบรรทัดที่ ${line} ของการปิดเสียงคำ ${tab} ของคุณ:';
	@override String get instanceMute => 'ปิดเสียง อินสแตนซ์';
	@override String userSaysSomething({required Object name}) => '${name} พูดอะไรบางอย่าง';
	@override String get makeActive => 'เปิดใช้งาน';
	@override String get display => 'แสดงผล';
	@override String get copy => 'คัดลอก';
	@override String get metrics => 'เมตริก';
	@override String get overview => 'ภาพรวม';
	@override String get logs => 'ปูม';
	@override String get delayed => 'ดีเลย์';
	@override String get database => 'ฐานข้อมูล';
	@override String get channel => 'ช่อง';
	@override String get create => 'สร้าง';
	@override String get notificationSetting => 'ตั้งค่าการแจ้งเตือน';
	@override String get notificationSettingDesc => 'เลือกประเภทการแจ้งเตือนที่ต้องการจะแสดง';
	@override String get useGlobalSetting => 'ใช้การตั้งค่าส่วนกลาง';
	@override String get useGlobalSettingDesc => 'เมื่อเปิดใช้งาน ใช้การตั้งค่าการแจ้งเตือนจากบัญชีคุณ เมื่อปิดใช้งาน สามารถตั้งค่าได้อย่างอิสระ';
	@override String get other => 'อื่น ๆ';
	@override String get regenerateLoginToken => 'สร้างโทเค็นการเข้าสู่ระบบอีกครั้ง';
	@override String get regenerateLoginTokenDescription => 'สร้างโทเค็นใหม่ที่ใช้ภายในระหว่างการเข้าสู่ระบบ โดยตามหลักปกติแล้วการดำเนินการนี้ไม่จำเป็น หากสร้างใหม่ อุปกรณ์ทั้งหมดจะถูกออกจากระบบนะ';
	@override String get theKeywordWhenSearchingForCustomEmoji => 'คีย์เวิร์ดสำหรับใช้ค้นหาเอโมจิที่กำหนดเอง';
	@override String get setMultipleBySeparatingWithSpace => 'คั่นหลายรายการด้วยช่องว่าง';
	@override String get fileIdOrUrl => 'ID ของไฟล์ หรือ URL';
	@override String get behavior => 'พฤติกรรม';
	@override String get sample => 'ตัวอย่าง';
	@override String get abuseReports => 'รายงาน';
	@override String get reportAbuse => 'รายงาน';
	@override String get reportAbuseRenote => 'รายงานรีโน้ต';
	@override String reportAbuseOf({required Object name}) => 'รายงาน ${name}';
	@override String get fillAbuseReportDescription => 'กรุณากรอกรายละเอียดเกี่ยวกับรายงานนี้ หากเป็นเรื่องเกี่ยวกับโน้ตโดยเฉพาะ ได้โปรดระบุ URL';
	@override String get abuseReported => 'เราได้ส่งรายงานของคุณไปแล้ว ขอบคุณมากๆนะ';
	@override String get reporter => 'ผู้รายงาน';
	@override String get reporteeOrigin => 'รายงานต้นทาง';
	@override String get reporterOrigin => 'แหล่งผู้รายงาน';
	@override String get forwardReport => 'ส่งต่อรายงานไปยังอินสแตนซ์ระยะไกล';
	@override String get forwardReportIsAnonymous => 'ข้อมูลของคุณจะไม่ปรากฏบนอินสแตนซ์ระยะไกลและปรากฏเป็นบัญชีระบบที่ไม่ระบุชื่อ';
	@override String get send => 'ส่ง';
	@override String get abuseMarkAsResolved => 'ทำเครื่องหมายรายงานว่าแก้ไขแล้ว';
	@override String get openInNewTab => 'เปิดในแท็บใหม่';
	@override String get openInSideView => 'เปิดในมุมมองด้านข้าง';
	@override String get defaultNavigationBehaviour => 'พฤติกรรมการนำทางที่เป็นค่าเริ่มต้น';
	@override String get editTheseSettingsMayBreakAccount => 'การแก้ไขการตั้งค่าเหล่านี้อาจทำให้บัญชีของคุณเสียหายนะ';
	@override String get instanceTicker => 'ข้อมูลอินสแตนซ์ของโน้ต';
	@override String waitingFor({required Object x}) => 'กำลังรอ ${x}';
	@override String get random => 'สุ่มค่า';
	@override String get system => 'ระบบ';
	@override String get switchUi => 'สลับ UI';
	@override String get desktop => 'เดสก์ท็อป';
	@override String get clip => 'คลิป';
	@override String get createNew => 'สร้างใหม่';
	@override String get optional => 'ไม่บังคับ';
	@override String get createNewClip => 'สร้างคลิปใหม่';
	@override String get unclip => 'ลบคลิป';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'โน้ตนี้เป็นส่วนหนึ่งของคลิป “${name}” อยู่แล้ว ต้องการนำมันออกจากคลิปใช่ไหม?';
	@override String get public => 'สาธารณะ';
	@override String get private => 'ส่วนตัว';
	@override String i18nInfo({required Object link}) => 'Misskey กำลังได้รับการแปลเป็นภาษาต่างๆ โดยอาสาสมัคร คุณสามารถช่วยเหลือได้ที่ ${link}';
	@override String get manageAccessTokens => 'การจัดการโทเค็นการเข้าถึง';
	@override String get accountInfo => 'ข้อมูลบัญชี';
	@override String get notesCount => 'จำนวนของโน้ต';
	@override String get repliesCount => 'จำนวนการตอบกลับที่ส่ง';
	@override String get renotesCount => 'จำนวนรีโน้ตที่ส่ง';
	@override String get repliedCount => 'จำนวนของการตอบกลับที่ได้รับ';
	@override String get renotedCount => 'จำนวนรีโน้ตที่ได้รับแล้ว';
	@override String get followingCount => 'จำนวนบัญชีที่ติดตาม';
	@override String get followersCount => 'จำนวนผู้ติดตาม';
	@override String get sentReactionsCount => 'จำนวนรีแอคชั่นที่ส่ง';
	@override String get receivedReactionsCount => 'จำนวนรีแอคชั่นที่ได้รับ';
	@override String get pollVotesCount => 'จำนวนโหวตที่ส่งไป';
	@override String get pollVotedCount => 'จำนวนโหวตที่ได้รับ';
	@override String get yes => 'ใช่';
	@override String get no => 'ไม่';
	@override String get driveFilesCount => 'จำนวนไฟล์ไดรฟ์';
	@override String get driveUsage => 'การใช้พื้นที่ไดรฟ์';
	@override String get noCrawle => 'ปฏิเสธการจัดทำดัชนีของโปรแกรมรวบรวมข้อมูล';
	@override String get noCrawleDescription => 'ขอให้เครื่องมือค้นหาไม่จัดทำดัชนีหน้าโปรไฟล์ โน้ต หน้าเพจ ฯลฯ';
	@override String get lockedAccountInfo => 'แม้ว่าการอนุมัติการติดตามถูกเปิดใช้งานอยู่ทุกคนก็ยังคงสามารถเห็นโน้ตของคุณได้ เว้นแต่ว่าคุณจะเปลี่ยนการเปิดเผยโน้ตของคุณเป็น  “เฉพาะผู้ติดตาม”';
	@override String get alwaysMarkSensitive => 'ทำเครื่องหมายว่ามีเนื้อหาละเอียดอ่อนเป็นค่าเริ่มต้น';
	@override String get loadRawImages => 'โหลดภาพต้นฉบับแทนการแสดงภาพขนาดย่อ';
	@override String get disableShowingAnimatedImages => 'ไม่ต้องเล่นภาพเคลื่อนไหว';
	@override String get highlightSensitiveMedia => 'ไฮไลท์สื่อที่มีเนื้อหาละเอียดอ่อน';
	@override String get verificationEmailSent => 'ส่งอีเมลยืนยันแล้วนะ ได้โปรดกรุณาไปที่ลิงก์ที่รวมไว้เพื่อทำการตรวจสอบให้เสร็จสิ้น';
	@override String get notSet => 'ไม่ได้ตั้งค่า';
	@override String get emailVerified => 'อีเมลได้รับการยืนยันแล้ว';
	@override String get noteFavoritesCount => 'จำนวนโน้ตที่ชื่นชอบ';
	@override String get pageLikesCount => 'จำนวนเพจที่ถูกใจ';
	@override String get pageLikedCount => 'จำนวนการกดถูกใจเพจที่ได้รับแล้ว';
	@override String get contact => 'ติดต่อ';
	@override String get useSystemFont => 'ใช้ฟอนต์เริ่มต้นของระบบ';
	@override String get clips => 'คลิป';
	@override String get experimentalFeatures => 'ฟังก์ชั่นทดสอบ';
	@override String get experimental => 'ทดลอง';
	@override String get thisIsExperimentalFeature => 'นี่คือฟีเจอร์ทดลองนะค่ะ ฟังก์ชันการทำงานบางอย่างอาจเปลี่ยนแปลงได้ และอาจไม่ทำงานหรือไม่เสถียรตามที่ตั้งใจไว้นะ';
	@override String get developer => 'สำหรับนักพัฒนา';
	@override String get makeExplorable => 'ทำให้บัญชีมองเห็นใน “สำรวจ”';
	@override String get makeExplorableDescription => 'ถ้าหากคุณปิดการทำงานนี้ บัญชีของคุณนั้นจะไม่แสดงในส่วน “สำรวจ”';
	@override String get showGapBetweenNotesInTimeline => 'แสดงช่องว่างระหว่างโพสต์บนไทม์ไลน์';
	@override String get duplicate => 'ทำซ้ำ';
	@override String get left => 'ซ้าย';
	@override String get center => 'กึ่งกลาง';
	@override String get wide => 'กว้าง';
	@override String get narrow => 'ชิด';
	@override String get reloadToApplySetting => 'การตั้งค่านี้จะมีผลหลังจากโหลดหน้าซ้ำเท่านั้น ต้องการที่จะโหลดใหม่เลยไหม?';
	@override String get needReloadToApply => 'จำเป็นต้องโหลดซ้ำถึงจะมีผลนะ';
	@override String get showTitlebar => 'แสดงแถบชื่อ';
	@override String get clearCache => 'ล้างแคช';
	@override String onlineUsersCount({required Object n}) => '${n} ผู้ใช้คนนี้กำลังออนไลน์';
	@override String nUsers({required Object n}) => '${n} ผู้ใช้งาน';
	@override String nNotes({required Object n}) => '${n} โน้ต';
	@override String get sendErrorReports => 'ส่งรายงานว่าข้อผิดพลาด';
	@override String get sendErrorReportsDescription => 'เมื่อเปิดใช้งาน ข้อมูลข้อผิดพลาดโดยรายละเอียดนั้นจะถูกแชร์ให้กับ Misskey เมื่อเกิดปัญหา ซึ่งช่วยปรับปรุงคุณภาพของ Misskey\nซึ่งจะรวมถึงข้อมูล เช่น เวอร์ชั่นของระบบปฏิบัติการ เบราว์เซอร์ที่คุณใช้ กิจกรรมของคุณใน Misskey เป็นต้น';
	@override String get myTheme => 'ธีมของฉัน';
	@override String get backgroundColor => 'สีพื้นหลัง';
	@override String get accentColor => 'สีหลัก';
	@override String get textColor => 'สีข้อความ';
	@override String get saveAs => 'บันทึกเป็น...';
	@override String get advanced => 'ขั้นสูง';
	@override String get advancedSettings => 'การตั้งค่าขั้นสูง';
	@override String get value => 'ค่า';
	@override String get createdAt => 'สร้างเมื่อ';
	@override String get updatedAt => 'อัปเดตล่าสุด';
	@override String get saveConfirm => 'บันทึกเปลี่ยนแปลงมั้ย?';
	@override String get deleteConfirm => 'ลบจริงๆเหรอ?';
	@override String get invalidValue => 'ค่านี้ไม่ถูกต้อง';
	@override String get registry => 'ทะเบียน';
	@override String get closeAccount => 'ปิด บัญชี';
	@override String get currentVersion => 'เวอร์ชั่นปัจจุบัน';
	@override String get latestVersion => 'เวอร์ชั่นล่าสุด';
	@override String get youAreRunningUpToDateClient => 'คุณกำลังใช้ไคลเอ็นต์เวอร์ชันใหม่ล่าสุดนะ';
	@override String get newVersionOfClientAvailable => 'มีไคลเอ็นต์เวอร์ชันใหม่กว่าของคุณพร้อมใช้งานนะ';
	@override String get usageAmount => 'การใช้งาน';
	@override String get capacity => 'ความจุ';
	@override String get inUse => 'ใช้แล้ว';
	@override String get editCode => 'แก้ไขโค้ด';
	@override String get apply => 'นำไปใช้';
	@override String get receiveAnnouncementFromInstance => 'รับการแจ้งเตือนจากอินสแตนซ์นี้';
	@override String get emailNotification => 'การแจ้งเตือนทางอีเมล';
	@override String get publish => 'เผยแพร่';
	@override String get inChannelSearch => 'ค้นหาในช่อง';
	@override String get useReactionPickerForContextMenu => 'คลิกขวาเพื่อเปิดตัวจิ้มรีแอคชั่น';
	@override String typingUsers({required Object users}) => '${users} กำลังพิมพ์...';
	@override String get jumpToSpecifiedDate => 'ข้ามไปยังวันที่เฉพาะเจาะจง';
	@override String get showingPastTimeline => 'กำลังแสดงผลไทม์ไลน์เก่า';
	@override String get clear => 'ล้าง';
	@override String get markAllAsRead => 'ทำเครื่องหมายทั้งหมดว่าอ่านแล้ว';
	@override String get goBack => 'ย้อนกลับ';
	@override String get unlikeConfirm => 'ต้องการเลิกถูกใจใช่ไหม?';
	@override String get fullView => 'มุมมองแบบเต็ม';
	@override String get quitFullView => 'ออกจากมุมมองแบบเต็ม';
	@override String get addDescription => 'เพิ่มคำอธิบาย';
	@override String get userPagePinTip => 'ปักหมุดโน้ตให้แสดงที่นี่ได้โดยเลือกเมนู “ปักหมุด” ของโน้ตนั้นๆ';
	@override String get notSpecifiedMentionWarning => 'โน้ตนี้มีการกล่าวถึงผู้ใช้งานที่ไม่รวมอยู่ในผู้รับ';
	@override String get info => 'เกี่ยวกับ';
	@override String get userInfo => 'ข้อมูลผู้ใช้';
	@override String get unknown => 'ไม่ทราบสถานะ';
	@override String get onlineStatus => 'สถานะออนไลน์';
	@override String get hideOnlineStatus => 'ซ่อนสถานะออนไลน์';
	@override String get hideOnlineStatusDescription => 'การซ่อนสถานะออนไลน์อาจทำให้ฟังก์ชันบางอย่าง เช่น การค้นหา สะดวกน้อยลง';
	@override String get online => 'ออนไลน์';
	@override String get active => 'ใช้งานอยู่';
	@override String get offline => 'ออฟไลน์';
	@override String get notRecommended => 'ไม่แนะนำ';
	@override String get botProtection => 'การป้องกัน Bot';
	@override String get instanceBlocking => 'อินสแตนซ์ที่ถูกบล็อก';
	@override String get selectAccount => 'เลือกบัญชี';
	@override String get switchAccount => 'สลับบัญชีผู้ใช้';
	@override String get enabled => 'เปิดใช้งาน';
	@override String get disabled => 'ปิดการใช้งาน';
	@override String get quickAction => 'ปุ่มลัด';
	@override String get user => 'ผู้ใช้';
	@override String get administration => 'การจัดการ';
	@override String get accounts => 'บัญชีผู้ใช้';
	@override String get switch_ => 'สลับ';
	@override String get noMaintainerInformationWarning => 'ข้อมูลผู้ดูแลไม่ได้รับการกำหนดค่านะ';
	@override String get noBotProtectionWarning => 'ไม่ได้กำหนดค่าการป้องกันบอทนะ';
	@override String get configure => 'กำหนดค่า';
	@override String get postToGallery => 'สร้างโพสต์แกลเลอรี่ใหม่';
	@override String get postToHashtag => 'โพสต์ไปที่แฮชแท็กนี้';
	@override String get gallery => 'แกลเลอรี่';
	@override String get recentPosts => 'โพสต์ล่าสุด';
	@override String get popularPosts => 'โพสต์ติดอันดับ';
	@override String get shareWithNote => 'แบ่งปันด้วยโน้ต';
	@override String get ads => 'โฆษณา';
	@override String get expiration => 'กำหนดเวลา';
	@override String get startingperiod => 'เริ่มเมื่อ';
	@override String get memo => 'เมโม';
	@override String get priority => 'ลำดับความสำคัญ';
	@override String get high => 'สูง';
	@override String get middle => 'ปานกลาง';
	@override String get low => 'ต่ำ';
	@override String get emailNotConfiguredWarning => 'ยังไม่ได้ตั้งค่าที่อยู่อีเมล';
	@override String get ratio => 'อัตราส่วน';
	@override String get previewNoteText => 'แสดงตัวอย่าง';
	@override String get customCss => 'CSS ที่กำหนดเอง';
	@override String get customCssWarn => 'ควรใช้การตั้งค่านี้เฉพาะต่อเมื่อคุณรู้มันใช้ทำอะไร การตั้งค่าที่ไม่เหมาะสมอาจทำให้ไคลเอ็นต์ไม่สามารถใช้งานได้อย่างถูกต้อง';
	@override String get global => 'ทั่วโลก';
	@override String get squareAvatars => 'แสดงผลอวตารเป็นสี่เหลี่ยม';
	@override String get sent => 'ส่ง';
	@override String get received => 'ได้รับแล้ว';
	@override String get searchResult => 'ผลการค้นหา';
	@override String get hashtags => 'แฮชแท็ก';
	@override String get troubleshooting => 'แก้ปัญหา';
	@override String get useBlurEffect => 'ใช้เอฟเฟกต์เบลอใน UI';
	@override String get learnMore => 'แสดงให้ดูหน่อย';
	@override String get misskeyUpdated => 'Misskey ได้รับการอัปเดตแล้ว!';
	@override String get whatIsNew => 'แสดงการเปลี่ยนแปลง';
	@override String get translate => 'แปลภาษา';
	@override String translatedFrom({required Object x}) => 'แปลมาจาก ${x}';
	@override String get accountDeletionInProgress => 'กำลังดำเนินการลบบัญชีอยู่';
	@override String get usernameInfo => 'ชื่อที่ระบุบัญชีของคุณจากผู้อื่นในเซิร์ฟเวอร์นี้ คุณสามารถใช้ตัวอักษร (a~z, A~Z), ตัวเลข (0~9) หรือขีดล่าง (_) ชื่อผู้ใช้ไม่สามารถเปลี่ยนแปลงได้ในภายหลัง';
	@override String get aiChanMode => 'โหมด Ai ';
	@override String get devMode => 'โหมดนักพัฒนา';
	@override String get keepCw => 'เก็บคำเตือนเนื้อหา';
	@override String get pubSub => 'บัญชี Pub/Sub';
	@override String get lastCommunication => 'การสื่อสารครั้งสุดท้ายล่าสุด';
	@override String get resolved => 'คลี่คลายแล้ว';
	@override String get unresolved => 'ยังไม่ได้รับการแก้ไข';
	@override String get breakFollow => 'ลบผู้ติดตาม';
	@override String get breakFollowConfirm => 'ลบผู้ติดตามนี้ออกจริงหรอ?';
	@override String get itsOn => 'เปิดใช้งาน';
	@override String get itsOff => 'ปิดใช้งาน';
	@override String get on => 'เปิด';
	@override String get off => 'ปิด';
	@override String get emailRequiredForSignup => 'จำเป็นต้องการใช้ที่อยู่อีเมลสำหรับการสมัคร';
	@override String get unread => 'ยังไม่ได้อ่าน';
	@override String get filter => 'กรอง';
	@override String get controlPanel => 'แผงควบคุม';
	@override String get manageAccounts => 'จัดการบัญชี';
	@override String get makeReactionsPublic => 'ตั้งค่าประวัติการรีแอคชั่นเป็นสาธารณะ';
	@override String get makeReactionsPublicDescription => 'การทำเช่นนี้จะทำให้รายการรีแอคชั่นของคุณที่ผ่านมาทั้งหมดปรากฏต่อสาธารณะ';
	@override String get classic => 'คลาสสิค';
	@override String get muteThread => 'ปิดเสียงเธรด';
	@override String get unmuteThread => 'เลิกปิดเสียงเธรด';
	@override String get followingVisibility => 'การมองเห็นที่เรากำลังติดตาม';
	@override String get followersVisibility => 'การมองเห็นผู้ที่กำลังติดตามเรา';
	@override String get continueThread => 'ดูความต่อเนื่องเธรด';
	@override String get deleteAccountConfirm => 'การดำเนินการนี้จะลบบัญชีของคุณอย่างถาวรเลยนะ แน่ใจหรอดำเนินการ?';
	@override String get incorrectPassword => 'รหัสผ่านไม่ถูกต้อง';
	@override String voteConfirm({required Object choice}) => 'ต้องการโหวต “${choice}” ใช่ไหม?';
	@override String get hide => 'ซ่อน';
	@override String get useDrawerReactionPickerForMobile => 'แสดง ตัวจิ้มรีแอคชั่น เป็นแบบลิ้นชัก เมื่อใช้บนมือถือ';
	@override String welcomeBackWithName({required Object name}) => 'ยินดีต้อนรับการกลับมานะคะ, คุณ${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => 'กรุณาคลิก [${ok}] เพื่อดำเนินการยืนยันอีเมลให้เสร็จสมบูรณ์';
	@override String get overridedDeviceKind => 'ประเภทอุปกรณ์';
	@override String get smartphone => 'สมาร์ทโฟน';
	@override String get tablet => 'แท็บเล็ต';
	@override String get auto => 'อัตโนมัติ';
	@override String get themeColor => 'สีธีม';
	@override String get size => 'ขนาด';
	@override String get numberOfColumn => 'จำนวนคอลัมน์';
	@override String get searchByGoogle => 'ค้นหา';
	@override String get instanceDefaultLightTheme => 'ธีมสว่างตามค่าเริ่มต้นของอินสแตนซ์';
	@override String get instanceDefaultDarkTheme => 'ธีมมืดตามค่าเริ่มต้นของอินสแตนซ์';
	@override String get instanceDefaultThemeDescription => 'ป้อนรหัสธีมในรูปแบบออบเจ็กต์';
	@override String get mutePeriod => 'ระยะเวลาปิดเสียง';
	@override String get period => 'ระยะเวลา';
	@override String get indefinitely => 'ตลอดไป';
	@override String get tenMinutes => '10 นาที';
	@override String get oneHour => '1 ชั่วโมง';
	@override String get oneDay => '1 วัน';
	@override String get oneWeek => '1 สัปดาห์';
	@override String get oneMonth => 'หนึ่งเดือน';
	@override String get reflectMayTakeTime => 'อาจจำเป็นต้องใช้เวลาสักระยะหนึ่งจึงจะเห็นแสดงผลได้นะ';
	@override String get failedToFetchAccountInformation => 'ไม่สามารถเรียกดึงข้อมูลบัญชีได้';
	@override String get rateLimitExceeded => 'เกินขีดจำกัดอัตรา';
	@override String get cropImage => 'ครอบตัดรูปภาพ';
	@override String get cropImageAsk => 'คุณต้องการครอบตัดรูปภาพนี้อย่างงั้นหรือ?';
	@override String get cropYes => 'ครอบตัด';
	@override String get cropNo => 'ใช้ตามที่เป็นอยู่';
	@override String get file => 'ไฟล์';
	@override String recentNHours({required Object n}) => 'ล่าสุด ${n} ชั่วโมงที่แล้ว';
	@override String recentNDays({required Object n}) => 'ล่าสุด ${n} วันที่แล้ว';
	@override String get noEmailServerWarning => 'ไม่ได้กำหนดค่าเซิร์ฟเวอร์อีเมลนี้';
	@override String get thereIsUnresolvedAbuseReportWarning => 'มีรายงานที่ยังไม่ได้แก้ไข';
	@override String get recommended => 'แนะนำ';
	@override String get check => 'ตรวจสอบ';
	@override String get driveCapOverrideLabel => 'เปลี่ยนความจุของไดรฟ์สำหรับผู้ใช้รายนี้';
	@override String get driveCapOverrideCaption => 'รีเซ็ตความจุเป็นค่าเริ่มต้นโดยการป้อนค่าเป็น 0 หรือ ต่ำกว่า';
	@override String get requireAdminForView => 'คุณจำเป็นต้องเข้าสู่ระบบด้วยบัญชีผู้ดูแลระบบเพื่อเข้าดูสิ่งนี้';
	@override String get isSystemAccount => 'บัญชีที่ถูกสร้างมานั้น และถูกดำเนินการโดยอัตโนมัติด้วยระบบ';
	@override String typeToConfirm({required Object x}) => 'โปรดป้อน ${x} เพื่อยืนยัน';
	@override String get deleteAccount => 'ลบบัญชี';
	@override String get document => 'เอกสาร';
	@override String get numberOfPageCache => 'จำนวนหน้าเพจที่แคช';
	@override String get numberOfPageCacheDescription => 'การเพิ่มจำนวนนี้จะช่วยเพิ่มความสะดวกให้กับผู้ใช้งาน แต่จะทำให้เซิร์ฟเวอร์โหลดมากขึ้นและต้องใช้หน่วยความจำมากขึ้นอีกด้วย';
	@override String get logoutConfirm => 'ต้องการออกจากระบบใช่ไหม?';
	@override String get lastActiveDate => 'ใช้งานล่าสุดเมื่อ';
	@override String get statusbar => 'แถบสถานะ';
	@override String get pleaseSelect => 'ตัวเลือก';
	@override String get reverse => 'พลิก';
	@override String get colored => 'สี';
	@override String get refreshInterval => 'ความถี่ในการอัปเดต';
	@override String get label => 'ป้ายชื่อ';
	@override String get type => 'รูปแบบ';
	@override String get speed => 'ความเร็ว';
	@override String get slow => 'ช้า';
	@override String get fast => 'เร็ว';
	@override String get sensitiveMediaDetection => 'การตรวจจับสื่อที่มีเนื้อหาละเอียดอ่อน';
	@override String get localOnly => 'เฉพาะท้องถิ่น';
	@override String get remoteOnly => 'ระยะไกลเท่านั้น';
	@override String get failedToUpload => 'การอัปโหลดล้มเหลว';
	@override String get cannotUploadBecauseInappropriate => 'ไม่สามารถอัปโหลดไฟล์นี้ได้เนื่องจากระบบตรวจพบบางส่วนของไฟล์ว่านี้อาจจะเป็น NSFW';
	@override String get cannotUploadBecauseNoFreeSpace => 'ไม่สามารถอัปโหลดได้เนื่องจากไม่มีพื้นที่ว่างในไดรฟ์เหลือแล้ว';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'ไม่สามารถอัปโหลดไฟล์นี้ได้แล้วเนื่องจากเกินขีดจำกัดของขนาดไฟล์แล้ว';
	@override String get beta => 'เบต้า';
	@override String get enableAutoSensitive => 'ทำเครื่องหมายว่ามีเนื้อหาที่ละเอียดอ่อนโดยอัตโนมัติ';
	@override String get enableAutoSensitiveDescription => 'อนุญาตให้ตรวจหาและทำเครื่องหมายสื่อว่ามีเนื้อหาโดยละเอียดอ่อนโดยอัตโนมัติ ผ่าน Machine Learning หากเป็นไปได้ แม้ว่าคุณจะปิดคุณสมบัตินี้ ก็อาจถูกตั้งค่าโดยอัตโนมัติ ทั้งนี้ขึ้นอยู่กับเซิร์ฟเวอร์';
	@override String get activeEmailValidationDescription => 'เปิดใช้งานการตรวจสอบที่อยู่อีเมลให้มีความเข้มงวดยิ่งขึ้น ซึ่งอาจจะรวมไปถึงการตรวจสอบที่อยู่อีเมล์ที่ใช้แล้วทิ้งและโดยให้พิจารณาว่าสามารถสื่อสารด้วยได้หรือไม่ เมื่อไม่เลือกระบบจะตรวจสอบเฉพาะรูปแบบของอีเมลเท่านั้น';
	@override String get navbar => 'แถบนำทาง';
	@override String get shuffle => 'สลับ';
	@override String get account => 'บัญชีผู้ใช้';
	@override String get move => 'ย้าย';
	@override String get pushNotification => 'การแจ้งเตือนแบบพุช';
	@override String get subscribePushNotification => 'เปิดการแจ้งเตือนแบบพุช';
	@override String get unsubscribePushNotification => 'ปิดการแจ้งเตือนแบบพุช';
	@override String get pushNotificationAlreadySubscribed => 'การแจ้งเตือนแบบพุชได้เปิดใช้งานแล้ว';
	@override String get pushNotificationNotSupported => 'เบราว์เซอร์หรืออินสแตนซ์ของคุณนั้นไม่รองรับการแจ้งเตือนแบบพุช';
	@override String get sendPushNotificationReadMessage => 'ลบการแจ้งเตือนแบบพุชเมื่ออ่านการแจ้งเตือนหรือข้อความที่เกี่ยวข้องแล้ว';
	@override String get sendPushNotificationReadMessageCaption => 'อาจทำให้อุปกรณ์ของคุณใช้พลังงานมากขึ้น';
	@override String get windowMaximize => 'ขยายใหญ่สุด';
	@override String get windowMinimize => 'ย่อเล็กที่สุด';
	@override String get windowRestore => 'เลิกทำ';
	@override String get caption => 'คำอธิบาย';
	@override String get loggedInAsBot => 'ล็อกอินเป็นบอตอยู่ในขณะนี้';
	@override String get tools => 'เครื่องมือ';
	@override String get cannotLoad => 'ไม่สามารถโหลดได้';
	@override String get numberOfProfileView => 'มุมมองโปรไฟล์';
	@override String get like => 'ถูกใจ!';
	@override String get unlike => 'เลิกถูกใจ';
	@override String get numberOfLikes => 'จำนวนยอดถูกใจ';
	@override String get show => 'แสดงผล';
	@override String get neverShow => 'ไม่ต้องแสดงข้อความนี้อีก';
	@override String get remindMeLater => 'ไว้ครั้งหน้าแล้วกัน';
	@override String get didYouLikeMisskey => 'คุณชอบ Misskey ไหม?';
	@override String pleaseDonate({required Object host}) => 'Misskey เป็นซอฟต์แวร์ฟรีที่ใช้งานโดย ${host} เราขอขอบคุณการสนับสนุนของคุณอย่างสูงเพื่อให้การพัฒนา Misskey สามารถดำเนินต่อไปได้!';
	@override String correspondingSourceIsAvailable({required Object anchor}) => 'ซอร์สโค้ดที่เกี่ยวข้องมีอยู่ที่ ${anchor}';
	@override String get roles => 'บทบาท';
	@override String get role => 'บทบาท';
	@override String get noRole => 'ไม่พบบทบาท';
	@override String get normalUser => 'ผู้ใช้มาตรฐาน';
	@override String get undefined => 'ไม่ได้กำหนด';
	@override String get assign => 'มอบหมาย';
	@override String get unassign => 'เลิกมอบหมาย';
	@override String get color => 'สี';
	@override String get manageCustomEmojis => 'จัดการเอโมจิที่กำหนดเอง';
	@override String get manageAvatarDecorations => 'จัดการตกแต่งอวตาร';
	@override String get youCannotCreateAnymore => 'คุณถึงขีดจํากัดการสร้างแล้วนะ';
	@override String get cannotPerformTemporary => 'ไม่สามารถใช้การได้ชั่วคราว';
	@override String get cannotPerformTemporaryDescription => 'ไม่สามารถดําเนินการได้ชั่วคราว เนื่องจากเกินขีดจํากัดการดําเนินการ กรุณารอสักครู่แล้วลองใหม่อีกครั้ง';
	@override String get invalidParamError => 'ข้อผิดพลาดพารามิเตอร์';
	@override String get invalidParamErrorDescription => 'คำขอพารามิเตอร์ไม่ถูกต้อง สิ่งนี้มักจะเกิดจากข้อผิดพลาด แต่อาจเกิดจากอินพุตเกินขีดจำกัดของขนาดหรือที่คล้ายกัน';
	@override String get permissionDeniedError => 'การดำเนินถูกปฏิเสธ';
	@override String get permissionDeniedErrorDescription => 'บัญชีนี้ไม่มีสิทธิ์อนุญาตในการดำเนินการนี้';
	@override String get preset => 'พรีเซ็ต';
	@override String get selectFromPresets => 'เลือกจากการพรีเซ็ต';
	@override String get achievements => 'ความสำเร็จ';
	@override String get gotInvalidResponseError => 'การตอบสนองเซิร์ฟเวอร์ไม่ถูกต้อง';
	@override String get gotInvalidResponseErrorDescription => 'เซิร์ฟเวอร์อาจไม่สามารถเข้าถึงได้หรืออาจจะกำลังอยู่ในระหว่างปรับปรุง กรุณาลองใหม่อีกครั้งในภายหลังนะคะ';
	@override String get thisPostMayBeAnnoying => 'โน้ตนี้อาจจะเป็นการรบกวนผู้อื่นนะคะ';
	@override String get thisPostMayBeAnnoyingHome => 'โพสต์ไปยังไทม์ไลน์หน้าแรก';
	@override String get thisPostMayBeAnnoyingCancel => 'เลิก';
	@override String get thisPostMayBeAnnoyingIgnore => 'โพสต์ยังไงก็แล้วแต่';
	@override String get collapseRenotes => 'ยุบรีโน้ตที่คุณเคยเห็นแล้ว';
	@override String get internalServerError => 'เซิร์ฟเวอร์ภายในเกิดข้อผิดพลาด';
	@override String get internalServerErrorDescription => 'เซิร์ฟเวอร์รันค้นพบข้อผิดพลาดที่ไม่คาดคิด';
	@override String get copyErrorInfo => 'คัดลอกรายละเอียดข้อผิดพลาด';
	@override String get joinThisServer => 'ลงชื่อสมัครใช้ในอินสแตนซ์นี้';
	@override String get exploreOtherServers => 'มองหาอินสแตนซ์อื่น';
	@override String get letsLookAtTimeline => 'มาดูไทม์ไลน์กัน';
	@override String get disableFederationConfirm => 'ปิดใช้งานสหพันธ์จริงๆหรอแน่ใจแล้วนะ?';
	@override String get disableFederationConfirmWarn => 'โพสต์จะยังคงเป็นสาธารณะต่อไป เว้นแต่จะตั้งค่าเป็นอย่างอื่น';
	@override String get disableFederationOk => 'ปิดการใช้งาน';
	@override String get invitationRequiredToRegister => 'อินสแตนซ์นี้เป็นแบบรับเชิญ เฉพาะผู้ที่มีรหัสเชิญเท่านั้นที่สามารถลงทะเบียนได้';
	@override String get emailNotSupported => 'อินสแตนซ์นี้ไม่รองรับการส่งอีเมล';
	@override String get postToTheChannel => 'โพสต์ลงช่อง';
	@override String get cannotBeChangedLater => 'สิ่งนี้ไม่สามารถเปลี่ยนแปลงได้ในภายหลังนะ';
	@override String get reactionAcceptance => 'การยอมรับรีแอคชั่น';
	@override String get likeOnly => 'ที่ถูกใจเท่านั้น';
	@override String get likeOnlyForRemote => 'ทั้งหมด (เฉพาะการถูกใจจากอินสแตนซ์ระยะไกล)';
	@override String get nonSensitiveOnly => 'เฉพาะไม่มีเนื้อหาละเอียดอ่อน';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'เฉพาะไม่มีเนื้อหาละเอียดอ่อน (เฉพาะการถูกใจจากระยะไกลเท่านั้น)';
	@override String get rolesAssignedToMe => 'บทบาทที่ได้รับมอบหมายให้ฉัน';
	@override String get resetPasswordConfirm => 'รีเซ็ตรหัสผ่านของคุณจริงๆหรอ?';
	@override String get sensitiveWords => 'คำที่มีเนื้อหาละเอียดอ่อน';
	@override String get sensitiveWordsDescription => 'การเปิดเผยโน้ตทั้งหมดที่มีคำที่กำหนดค่าไว้จะถูกตั้งค่าเป็น "หน้าแรก" โดยอัตโนมัติ คุณยังสามารถแสดงหลายรายการได้โดยแยกรายการโดยใช้ตัวแบ่งบรรทัดได้นะ';
	@override String get sensitiveWordsDescription2 => 'การใช้ช่องว่างนั้นอาจจะสร้างนิพจน์ AND และคำหลักที่มีเครื่องหมายทับล้อมรอบจะเปลี่ยนเป็นนิพจน์ทั่วไปนะ';
	@override String get prohibitedWords => 'คำต้องห้าม';
	@override String get prohibitedWordsDescription => 'จะแจ้งเตือนว่าเกิดข้อผิดพลาดเมื่อพยายามโพสต์โน้ตที่มีคำที่กำหนดไว้ สามารถตั้งได้หลายคำด้วยการขึ้นบรรทัดใหม่';
	@override String get prohibitedWordsDescription2 => 'การใช้ช่องว่างนั้นอาจจะสร้างนิพจน์ AND และคำหลักที่มีเครื่องหมายทับล้อมรอบจะเปลี่ยนเป็นนิพจน์ทั่วไปนะ';
	@override String get hiddenTags => 'แฮชแท็กที่ซ่อนอยู่';
	@override String get hiddenTagsDescription => 'เลือกแท็กที่จะไม่แสดงในรายการเทรนด์ สามารถลงทะเบียนหลายแท็กได้โดยขึ้นบรรทัดใหม่';
	@override String get notesSearchNotAvailable => 'การค้นหาโน้ตไม่พร้อมใช้งาน';
	@override String get license => 'ใบอนุญาต';
	@override String get unfavoriteConfirm => 'ลบออกจากรายการโปรดแน่ใจหรอ?';
	@override String get myClips => 'คลิปของฉัน';
	@override String get drivecleaner => 'ทำความสะอาดไดรฟ์';
	@override String get retryAllQueuesNow => 'ลองเรียกใช้คิวทั้งหมดอีกครั้ง';
	@override String get retryAllQueuesConfirmTitle => 'ลองใหม่ทั้งหมดจริงๆหรอแน่ใจนะ?';
	@override String get retryAllQueuesConfirmText => 'สิ่งนี้จะเพิ่มการโหลดเซิร์ฟเวอร์ชั่วคราวนะ';
	@override String get enableChartsForRemoteUser => 'สร้างแผนภูมิข้อมูลผู้ใช้ระยะไกล';
	@override String get enableChartsForFederatedInstances => 'สร้างแผนภูมิข้อมูลอินสแตนซ์ระยะไกล';
	@override String get showClipButtonInNoteFooter => 'เพิ่ม “คลิป” ไปยังเมนูสั่งการของโน้ต';
	@override String get reactionsDisplaySize => 'ขนาดของรีแอคชั่น';
	@override String get limitWidthOfReaction => 'จำกัดความกว้างสูงสุดของรีแอคชั่นและแสดงให้เล็กลง';
	@override String get noteIdOrUrl => 'ID ของโน้ต หรือ URL';
	@override String get video => 'วีดีโอ';
	@override String get videos => 'วีดีโอ';
	@override String get audio => 'เสียง';
	@override String get audioFiles => 'เสียง';
	@override String get dataSaver => 'ประหยัดข้อมูล';
	@override String get accountMigration => 'โยกย้ายบัญชี';
	@override String get accountMoved => 'ผู้ใช้รายนี้ได้ย้ายไปยังบัญชีใหม่แล้ว:';
	@override String get accountMovedShort => 'บัญชีนี้ถูกโอนย้ายไปแล้วค่ะ';
	@override String get operationForbidden => 'การดำเนินการถูกห้าม';
	@override String get forceShowAds => 'แสดงโฆษณาเสมอ';
	@override String get addMemo => 'เพิ่มเมโม';
	@override String get editMemo => 'แก้ไขเมโม';
	@override String get reactionsList => 'รายการรีแอคชั่น';
	@override String get renotesList => 'รายการรีโน้ต';
	@override String get notificationDisplay => 'การแจ้งเตือน';
	@override String get leftTop => 'บนซ้าย';
	@override String get rightTop => 'บนขวา';
	@override String get leftBottom => 'ล่างซ้าย';
	@override String get rightBottom => 'ล่างขวา';
	@override String get stackAxis => 'ทิศทางการซ้อน';
	@override String get vertical => 'แนวตั้ง';
	@override String get horizontal => 'แนวนอน';
	@override String get position => 'ตำแหน่ง';
	@override String get serverRules => 'กฎของเซิร์ฟเวอร์';
	@override String get pleaseConfirmBelowBeforeSignup => 'โปรดยืนยันที่ด้านล่างก่อนสมัครใช้งาน';
	@override String get pleaseAgreeAllToContinue => 'คุณต้องยอมรับทุกช่องตรงด้านบนเพื่อดำเนินการต่อค่ะ';
	@override String get continue_ => 'ดำเนินการต่อ';
	@override String get preservedUsernames => 'ชื่อผู้ใช้ที่สงวนไว้';
	@override String get preservedUsernamesDescription => 'ระบุชื่อผู้ใช้ที่จะสงวนชื่อไว้ คั่นด้วยการขึ้นบรรทัดใหม่ ชื่อผู้ใช้ที่ระบุที่นี่จะไม่สามารถใช้งานได้อีกต่อไปเมื่อสร้างบัญชีใหม่ ยกเว้นเมื่อผู้ดูแลระบบสร้างบัญชี นอกจากนี้ บัญชีที่มีอยู่แล้วจะไม่ได้รับผลกระทบ';
	@override String get createNoteFromTheFile => 'เรียบเรียงโน้ตจากไฟล์นี้';
	@override String get archive => 'เก็บถาวร';
	@override String channelArchiveConfirmTitle({required Object name}) => 'ต้องการเก็บถาวรเจ้า ${name} ใช่ไหม?';
	@override String get channelArchiveConfirmDescription => 'เมื่อเก็บถาวรแล้ว จะไม่ปรากฏในรายการช่องหรือผลการค้นหาอีกต่อไป และจะไม่สามารถโพสต์ใหม่ได้อีกต่อไป';
	@override String get thisChannelArchived => 'ช่องนี้ถูกเก็บถาวรแล้วนะ';
	@override String get displayOfNote => 'การแสดงโน้ต';
	@override String get initialAccountSetting => 'ตั้งค่าโปรไฟล์';
	@override String get youFollowing => 'ติดตามแล้ว';
	@override String get preventAiLearning => 'ปฏิเสธการเรียนรู้ด้วย generative AI';
	@override String get preventAiLearningDescription => 'ส่งคำร้องขอไม่ให้ใช้ ข้อความในโน้ตที่โพสต์, หรือเนื้อหารูปภาพ ฯลฯ ในการเรียนรู้ของเครื่อง(machine learning) / Predictive AI / Generative AI โดยการเพิ่มแฟล็ก “noai” ลง HTML-Response ให้กับเนื้อหาที่เกี่ยวข้อง แต่ทั้งนี้ ไม่ได้ป้องกัน AI จากการเรียนรู้ได้อย่างสมบูรณ์ เนื่องจากมี AI บางตัวเท่านั้นที่จะเคารพคำขอดังกล่าว';
	@override String get options => 'ตัวเลือกบทบาท';
	@override String get specifyUser => 'ผู้ใช้เฉพาะ';
	@override String get failedToPreviewUrl => 'ไม่สามารถดูตัวอย่างได้';
	@override String get update => 'อัปเดต';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'บทบาทที่สามารถใช้เอโมจินี้เป็นรีแอคชั่นได้';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'ถ้าหากไม่ได้ระบุบทบาท ใคร ๆ ก็สามารถใช้เอโมจินี้เพื่อรีแอคชั่นได้';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'บทบาทเหล่านี้ต้องเป็นสาธารณะ';
	@override String get cancelReactionConfirm => 'ต้องการลบรีแอคชั่นใช่ไหม?';
	@override String get changeReactionConfirm => 'ต้องการเปลี่ยนรีแอคชั่นใช่ไหม?';
	@override String get later => 'ไว้ทีหลัง';
	@override String get goToMisskey => 'ถึง Misskey';
	@override String get additionalEmojiDictionary => 'พจนานุกรมเอโมจิเพิ่มเติม';
	@override String get installed => 'ติดตั้งแล้ว';
	@override String get branding => 'แบรนดิ้ง';
	@override String get enableServerMachineStats => 'เผยแพร่สถานะฮาร์ดแวร์ของเซิร์ฟเวอร์';
	@override String get enableIdenticonGeneration => 'เปิดใช้งานผู้ใช้สร้างตัวระบุ';
	@override String get turnOffToImprovePerformance => 'การปิดส่วนนี้สามารถเพิ่มประสิทธิภาพได้';
	@override String get createInviteCode => 'สร้างรหัสเชิญ';
	@override String get createWithOptions => 'สร้างด้วยตัวเลือก';
	@override String get createCount => 'จำนวนรหัสเชิญ';
	@override String get inviteCodeCreated => 'สร้างรหัสเชิญแล้ว';
	@override String get inviteLimitExceeded => 'จำนวนรหัสเชิญที่สามารถสร้างได้ถึงขีดจำกัดแล้ว';
	@override String createLimitRemaining({required Object limit}) => 'รหัสเชิญที่สามารถสร้างได้: เหลืออยู่ ${limit} รหัส';
	@override String inviteLimitResetCycle({required Object limit, required Object time}) => 'สามารถสร้างรหัสเชิญได้อีกสูงสุด ${limit} รหัส ภายใน ${time}';
	@override String get expirationDate => 'วันที่หมดอายุ';
	@override String get noExpirationDate => 'ไม่มีหมดอายุ';
	@override String get inviteCodeUsedAt => 'วันเวลาที่ใช้รหัสเชิญ';
	@override String get registeredUserUsingInviteCode => 'ผู้ใช้ที่ใช้รหัสเชิญ';
	@override String get waitingForMailAuth => 'กำลังรอการยืนยันอีเมล';
	@override String get inviteCodeCreator => 'ผู้ใช้ที่สร้างรหัสเชิญ';
	@override String get usedAt => 'วันเวลาที่ถูกใช้';
	@override String get unused => 'ยังไม่ได้ใช้';
	@override String get used => 'ถูกใช้แล้ว';
	@override String get expired => 'หมดอายุแล้ว';
	@override String get doYouAgree => 'ยอมรับไหม?';
	@override String get beSureToReadThisAsItIsImportant => 'กรุณาอ่านข้อมูลที่สำคัญอันนี้';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => 'ฉันได้อ่านและยินยอมเนื้อหาของ “${x}”';
	@override String get dialog => 'ไดอะล็อก';
	@override String get icon => 'ไอคอน';
	@override String get forYou => 'สำหรับคุณ';
	@override String get currentAnnouncements => 'ประกาศในปัจจุบัน';
	@override String get pastAnnouncements => 'ประกาศที่ผ่านมา';
	@override String get youHaveUnreadAnnouncements => 'มีการประกาศที่ยังไม่ได้อ่าน';
	@override String get useSecurityKey => 'โปรดปฏิบัติตามคำแนะนำของเบราว์เซอร์หรืออุปกรณ์ของคุณเพื่อใช้ security key หรือ passkey';
	@override String get replies => 'ตอบกลับ';
	@override String get renotes => 'รีโน้ต';
	@override String get loadReplies => 'แสดงการตอบกลับ';
	@override String get loadConversation => 'แสดงบทสนทนา';
	@override String get pinnedList => 'รายชื่อที่ปักหมุดไว้';
	@override String get keepScreenOn => 'เปิดหน้าจออุปกรณ์ค้างไว้';
	@override String get verifiedLink => 'ความเป็นเจ้าของลิงก์ได้รับการยืนยันแล้ว';
	@override String get notifyNotes => 'แจ้งเตือนเกี่ยวกับโพสต์ใหม่';
	@override String get unnotifyNotes => 'หยุดการแจ้งเตือนเกี่ยวกับโน้ตใหม่';
	@override String get authentication => 'การตรวจสอบสิทธิ์';
	@override String get authenticationRequiredToContinue => 'กรุณายืนยันตัวตนทางอิเล็กทรอนิกส์เพื่อดำเนินการต่อ';
	@override String get dateAndTime => 'เวลาประทับ';
	@override String get showRenotes => 'แสดงรีโน้ต';
	@override String get edited => 'แก้ไขแล้ว';
	@override String get notificationRecieveConfig => 'การตั้งค่าการแจ้งเตือน';
	@override String get mutualFollow => 'ติดตามซึ่งกันและกัน';
	@override String get followingOrFollower => 'กำลังติดตามหรือผู้ติดตาม';
	@override String get fileAttachedOnly => 'เฉพาะโน้ตที่มีไฟล์เท่านั้น';
	@override String get showRepliesToOthersInTimeline => 'แสดงการตอบกลับผู้อื่นลงในไทม์ไลน์';
	@override String get hideRepliesToOthersInTimeline => 'ไม่แสดงการตอบกลับผู้อื่นลงในไทม์ไลน์';
	@override String get showRepliesToOthersInTimelineAll => 'รวมตอบกลับจากทุกคนที่คุณติดตามไว้ในไทม์ไลน์ของคุณ';
	@override String get hideRepliesToOthersInTimelineAll => 'ซ่อนตอบกลับจากทุกคนที่คุณติดตามไปจากไทม์ไลน์ของคุณ';
	@override String get confirmShowRepliesAll => 'การดำเนินการนี้ไม่สามารถย้อนกลับได้ คุณต้องการแสดงการตอบกลับผู้อื่นจากผู้ใช้ทุกคนที่คุณติดตามอยู่ในไทม์ไลน์ของคุณหรือไม่?';
	@override String get confirmHideRepliesAll => 'การดำเนินการนี้ไม่สามารถย้อนกลับได้ คุณต้องการซ่อนการตอบกลับผู้อื่นจากผู้ใช้ทุกคนที่คุณติดตามอยู่ในไทม์ไลน์ของคุณหรือไม่?';
	@override String get externalServices => 'บริการภายนอก';
	@override String get sourceCode => 'ซอร์สโค้ด';
	@override String get sourceCodeIsNotYetProvided => 'ซอร์สโค้ดยังไม่พร้อมใช้งาน โปรดติดต่อผู้ดูแลระบบของคุณเพื่อแก้ไขปัญหานี้';
	@override String get repositoryUrl => 'URL ของ repository';
	@override String get repositoryUrlDescription => 'หากมีที่เก็บซอร์สโค้ดที่เปิดเผยต่อสาธารณะ ให้ป้อน URL ที่เก็บซอร์สโค้ดนั้น แต่หากคุณใช้ Misskey ตามต้นฉบับ (ไม่มีการเปลี่ยนแปลงซอร์สโค้ด) ให้ป้อน https://github.com/misskey-dev/misskey';
	@override String get repositoryUrlOrTarballRequired => 'หากคุณไม่มี repository สาธารณะ คุณจะต้องจัดเตรียม tarball แทน ดู .config/example.yml สำหรับรายละเอียด';
	@override String get feedback => 'ฟีดแบ็ก';
	@override String get feedbackUrl => 'URLของฟีดแบ็ก';
	@override String get impressum => 'อิมเพรสชั่น';
	@override String get impressumUrl => 'URL อิมเพรสชั่น';
	@override String get impressumDescription => 'การติดป้ายกำกับ (Impressum) มีผลบังคับใช้ในบางประเทศและภูมิภาค เช่น ประเทศเยอรมนี';
	@override String get privacyPolicy => 'นโยบายความเป็นส่วนตัว';
	@override String get privacyPolicyUrl => 'URL นโยบายความเป็นส่วนตัว';
	@override String get tosAndPrivacyPolicy => 'เงื่อนไขในการให้บริการและนโยบายความเป็นส่วนตัว';
	@override String get avatarDecorations => 'การตกแต่งอวตาร';
	@override String get attach => 'แนบ';
	@override String get detach => 'นำออก';
	@override String get detachAll => 'เอาออกทั้งหมด';
	@override String get angle => 'แองเกิล';
	@override String get flip => 'พลิก';
	@override String get showAvatarDecorations => 'แสดงตกแต่งอวตาร';
	@override String get releaseToRefresh => 'ปล่อยเพื่อรีเฟรช';
	@override String get refreshing => 'กำลังรีเฟรช...';
	@override String get pullDownToRefresh => 'ดึงลงเพื่อรีเฟรช';
	@override String get disableStreamingTimeline => 'ปิดใช้งานอัปเดตไทม์ไลน์แบบเรียลไทม์';
	@override String get useGroupedNotifications => 'แสดงผลการแจ้งเตือนแบบกลุ่มแล้ว';
	@override String get signupPendingError => 'มีปัญหาในการตรวจสอบที่อยู่อีเมลลิงก์อาจหมดอายุแล้ว';
	@override String get cwNotationRequired => 'หากเปิดใช้งาน “ซ่อนเนื้อหา” จะต้องระบุคำอธิบาย';
	@override String get doReaction => 'เพิ่มรีแอคชั่น';
	@override String get code => 'โค้ด';
	@override String get reloadRequiredToApplySettings => 'จำเป็นต้องมีการโหลดซ้ำเพื่อให้การตั้งค่ามีผล';
	@override String remainingN({required Object n}) => 'เหลือ : ${n}';
	@override String get overwriteContentConfirm => 'แน่ใจหรือไม่ว่าต้องการเขียนทับเนื้อหาปัจจุบัน?';
	@override String get seasonalScreenEffect => 'เอฟเฟกต์หน้าจอตามฤดูกาล';
	@override String get decorate => 'ตกแต่ง';
	@override String get addMfmFunction => 'เพิ่มการตกแต่ง';
	@override String get enableQuickAddMfmFunction => 'แสดงตัวจิ้มเลือก MFM ขั้นสูง';
	@override String get bubbleGame => 'เกมบับเบิ้ล';
	@override String get sfx => 'เสียงเอฟเฟ็กต์';
	@override String get soundWillBePlayed => 'จะมีการเล่นเอฟเฟกต์เสียง';
	@override String get showReplay => 'ดูรีเพลย์';
	@override String get replay => 'รีเพลย์';
	@override String get replaying => 'กำลังรีเพลย์';
	@override String get endReplay => 'ออกจากรีเพลย์';
	@override String get copyReplayData => 'คัดลอกข้อมูลรีเพลย์';
	@override String get ranking => 'อันดับ';
	@override String lastNDays({required Object n}) => 'ล่าสุด ${n} วันที่แล้ว';
	@override String get backToTitle => 'กลับไปหน้าไตเติ้ล';
	@override String get hemisphere => 'พื้นที่ที่อาศัยอยู่';
	@override String get withSensitive => 'แสดงโน้ตที่มีไฟล์เนื้อหาละเอียดอ่อน';
	@override String userSaysSomethingSensitive({required Object name}) => 'โพสต์ที่มีไฟล์เนื้อหาละเอียดอ่อนของ ${name}';
	@override String get enableHorizontalSwipe => 'ปัดเพื่อสลับแท็บ';
	@override String get loading => 'กำลังโหลด';
	@override String get surrender => 'ยอมแพ้';
	@override String get gameRetry => 'เริ่มเกมใหม่';
	@override String get notUsePleaseLeaveBlank => 'หากไม่ได้ใช้กรุณาเว้นว่างไว้';
	@override String get useTotp => 'ใช้รหัสผ่านแบบใช้ครั้งเดียว (TOTP)';
	@override String get useBackupCode => 'ใช้รหัสสำรอง';
	@override String get launchApp => 'เริ่มแอป';
	@override String get useNativeUIForVideoAudioPlayer => 'ใช้ UI ของเบราว์เซอร์เพื่อเล่นวิดีโอ/เสียง';
	@override String get keepOriginalFilename => 'คงชื่อไฟล์เดิมไว้';
	@override String get keepOriginalFilenameDescription => 'หากปิดการตั้งค่านี้ ในระหว่างการอัปโหลดชื่อไฟล์จะถูกแทนที่ด้วยสตริงแบบสุ่มโดยอัตโนมัติ';
	@override String get noDescription => 'ไม่มีข้อความอธิบาย';
	@override String get alwaysConfirmFollow => 'แสดงข้อความยืนยันเมื่อกดติดตาม';
	@override String get inquiry => 'ติดต่อเรา';
	@override late final _StringsMisskeyBubbleGameThTh bubbleGame_ = _StringsMisskeyBubbleGameThTh._(_root);
	@override late final _StringsMisskeyAnnouncementThTh announcement_ = _StringsMisskeyAnnouncementThTh._(_root);
	@override late final _StringsMisskeyInitialAccountSettingThTh initialAccountSetting_ = _StringsMisskeyInitialAccountSettingThTh._(_root);
	@override late final _StringsMisskeyInitialTutorialThTh initialTutorial_ = _StringsMisskeyInitialTutorialThTh._(_root);
	@override late final _StringsMisskeyTimelineDescriptionThTh timelineDescription_ = _StringsMisskeyTimelineDescriptionThTh._(_root);
	@override late final _StringsMisskeyServerRulesThTh serverRules_ = _StringsMisskeyServerRulesThTh._(_root);
	@override late final _StringsMisskeyServerSettingsThTh serverSettings_ = _StringsMisskeyServerSettingsThTh._(_root);
	@override late final _StringsMisskeyAccountMigrationThTh accountMigration_ = _StringsMisskeyAccountMigrationThTh._(_root);
	@override late final _StringsMisskeyAchievementsThTh achievements_ = _StringsMisskeyAchievementsThTh._(_root);
	@override late final _StringsMisskeyRoleThTh role_ = _StringsMisskeyRoleThTh._(_root);
	@override late final _StringsMisskeySensitiveMediaDetectionThTh sensitiveMediaDetection_ = _StringsMisskeySensitiveMediaDetectionThTh._(_root);
	@override late final _StringsMisskeyEmailUnavailableThTh emailUnavailable_ = _StringsMisskeyEmailUnavailableThTh._(_root);
	@override late final _StringsMisskeyFfVisibilityThTh ffVisibility_ = _StringsMisskeyFfVisibilityThTh._(_root);
	@override late final _StringsMisskeySignupThTh signup_ = _StringsMisskeySignupThTh._(_root);
	@override late final _StringsMisskeyAccountDeleteThTh accountDelete_ = _StringsMisskeyAccountDeleteThTh._(_root);
	@override late final _StringsMisskeyAdThTh ad_ = _StringsMisskeyAdThTh._(_root);
	@override late final _StringsMisskeyForgotPasswordThTh forgotPassword_ = _StringsMisskeyForgotPasswordThTh._(_root);
	@override late final _StringsMisskeyGalleryThTh gallery_ = _StringsMisskeyGalleryThTh._(_root);
	@override late final _StringsMisskeyEmailThTh email_ = _StringsMisskeyEmailThTh._(_root);
	@override late final _StringsMisskeyPluginThTh plugin_ = _StringsMisskeyPluginThTh._(_root);
	@override late final _StringsMisskeyPreferencesBackupsThTh preferencesBackups_ = _StringsMisskeyPreferencesBackupsThTh._(_root);
	@override late final _StringsMisskeyRegistryThTh registry_ = _StringsMisskeyRegistryThTh._(_root);
	@override late final _StringsMisskeyAboutMisskeyThTh aboutMisskey_ = _StringsMisskeyAboutMisskeyThTh._(_root);
	@override late final _StringsMisskeyDisplayOfSensitiveMediaThTh displayOfSensitiveMedia_ = _StringsMisskeyDisplayOfSensitiveMediaThTh._(_root);
	@override late final _StringsMisskeyInstanceTickerThTh instanceTicker_ = _StringsMisskeyInstanceTickerThTh._(_root);
	@override late final _StringsMisskeyServerDisconnectedBehaviorThTh serverDisconnectedBehavior_ = _StringsMisskeyServerDisconnectedBehaviorThTh._(_root);
	@override late final _StringsMisskeyChannelThTh channel_ = _StringsMisskeyChannelThTh._(_root);
	@override late final _StringsMisskeyMenuDisplayThTh menuDisplay_ = _StringsMisskeyMenuDisplayThTh._(_root);
	@override late final _StringsMisskeyWordMuteThTh wordMute_ = _StringsMisskeyWordMuteThTh._(_root);
	@override late final _StringsMisskeyInstanceMuteThTh instanceMute_ = _StringsMisskeyInstanceMuteThTh._(_root);
	@override late final _StringsMisskeyThemeThTh theme_ = _StringsMisskeyThemeThTh._(_root);
	@override late final _StringsMisskeySfxThTh sfx_ = _StringsMisskeySfxThTh._(_root);
	@override late final _StringsMisskeySoundSettingsThTh soundSettings_ = _StringsMisskeySoundSettingsThTh._(_root);
	@override late final _StringsMisskeyAgoThTh ago_ = _StringsMisskeyAgoThTh._(_root);
	@override late final _StringsMisskeyTimeInThTh timeIn_ = _StringsMisskeyTimeInThTh._(_root);
	@override late final _StringsMisskeyTimeThTh time_ = _StringsMisskeyTimeThTh._(_root);
	@override late final _StringsMisskeyX2faThTh x2fa_ = _StringsMisskeyX2faThTh._(_root);
	@override late final _StringsMisskeyPermissionsThTh permissions_ = _StringsMisskeyPermissionsThTh._(_root);
	@override late final _StringsMisskeyAuthThTh auth_ = _StringsMisskeyAuthThTh._(_root);
	@override late final _StringsMisskeyAntennaSourcesThTh antennaSources_ = _StringsMisskeyAntennaSourcesThTh._(_root);
	@override late final _StringsMisskeyWeekdayThTh weekday_ = _StringsMisskeyWeekdayThTh._(_root);
	@override late final _StringsMisskeyWidgetsThTh widgets_ = _StringsMisskeyWidgetsThTh._(_root);
	@override late final _StringsMisskeyCwThTh cw_ = _StringsMisskeyCwThTh._(_root);
	@override late final _StringsMisskeyPollThTh poll_ = _StringsMisskeyPollThTh._(_root);
	@override late final _StringsMisskeyVisibilityThTh visibility_ = _StringsMisskeyVisibilityThTh._(_root);
	@override late final _StringsMisskeyPostFormThTh postForm_ = _StringsMisskeyPostFormThTh._(_root);
	@override late final _StringsMisskeyProfileThTh profile_ = _StringsMisskeyProfileThTh._(_root);
	@override late final _StringsMisskeyExportOrImportThTh exportOrImport_ = _StringsMisskeyExportOrImportThTh._(_root);
	@override late final _StringsMisskeyChartsThTh charts_ = _StringsMisskeyChartsThTh._(_root);
	@override late final _StringsMisskeyInstanceChartsThTh instanceCharts_ = _StringsMisskeyInstanceChartsThTh._(_root);
	@override late final _StringsMisskeyTimelinesThTh timelines_ = _StringsMisskeyTimelinesThTh._(_root);
	@override late final _StringsMisskeyPlayThTh play_ = _StringsMisskeyPlayThTh._(_root);
	@override late final _StringsMisskeyPagesThTh pages_ = _StringsMisskeyPagesThTh._(_root);
	@override late final _StringsMisskeyRelayStatusThTh relayStatus_ = _StringsMisskeyRelayStatusThTh._(_root);
	@override late final _StringsMisskeyNotificationThTh notification_ = _StringsMisskeyNotificationThTh._(_root);
	@override late final _StringsMisskeyDeckThTh deck_ = _StringsMisskeyDeckThTh._(_root);
	@override late final _StringsMisskeyDialogThTh dialog_ = _StringsMisskeyDialogThTh._(_root);
	@override late final _StringsMisskeyDisabledTimelineThTh disabledTimeline_ = _StringsMisskeyDisabledTimelineThTh._(_root);
	@override late final _StringsMisskeyDrivecleanerThTh drivecleaner_ = _StringsMisskeyDrivecleanerThTh._(_root);
	@override late final _StringsMisskeyWebhookSettingsThTh webhookSettings_ = _StringsMisskeyWebhookSettingsThTh._(_root);
	@override late final _StringsMisskeyModerationLogTypesThTh moderationLogTypes_ = _StringsMisskeyModerationLogTypesThTh._(_root);
	@override late final _StringsMisskeyFileViewerThTh fileViewer_ = _StringsMisskeyFileViewerThTh._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerThTh externalResourceInstaller_ = _StringsMisskeyExternalResourceInstallerThTh._(_root);
	@override late final _StringsMisskeyDataSaverThTh dataSaver_ = _StringsMisskeyDataSaverThTh._(_root);
	@override late final _StringsMisskeyHemisphereThTh hemisphere_ = _StringsMisskeyHemisphereThTh._(_root);
	@override late final _StringsMisskeyReversiThTh reversi_ = _StringsMisskeyReversiThTh._(_root);
	@override late final _StringsMisskeyOfflineScreenThTh offlineScreen_ = _StringsMisskeyOfflineScreenThTh._(_root);
	@override late final _StringsMisskeyUrlPreviewSettingThTh urlPreviewSetting_ = _StringsMisskeyUrlPreviewSettingThTh._(_root);
	@override late final _StringsMisskeyMediaControlsThTh mediaControls_ = _StringsMisskeyMediaControlsThTh._(_root);
}

// Path: misskey.bubbleGame_
class _StringsMisskeyBubbleGameThTh extends _StringsMisskeyBubbleGameEnUs {
	_StringsMisskeyBubbleGameThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => 'วิธีเล่น';
	@override String get hold => 'หยุดชั่วคราว';
	@override late final _StringsMisskeyBubbleGameScoreThTh score_ = _StringsMisskeyBubbleGameScoreThTh._(_root);
	@override late final _StringsMisskeyBubbleGameHowToPlayThTh howToPlay_ = _StringsMisskeyBubbleGameHowToPlayThTh._(_root);
}

// Path: misskey.announcement_
class _StringsMisskeyAnnouncementThTh extends _StringsMisskeyAnnouncementEnUs {
	_StringsMisskeyAnnouncementThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => 'ผู้ใช้งานที่มีอยู่เท่านั้น';
	@override String get forExistingUsersDescription => 'การประกาศนี้จะแสดงต่อผู้ใช้ที่มีอยู่ ณ จุดที่เผยแพร่นั้นๆถ้าหากเปิดใช้งาน ถ้าหากปิดใช้งานผู้ที่กำลังสมัครใหม่หลังจากโพสต์แล้วนั้นก็จะเห็นเช่นกัน';
	@override String get needConfirmationToRead => 'จำเป็นต้องยืนยันว่าอ่านแล้ว';
	@override String get needConfirmationToReadDescription => 'กล่องโต้ตอบการยืนยันจะปรากฏขึ้นเมื่อจะทำเครื่องหมายว่าอ่านแล้ว นอกจากนี้ยังทำให้ประกาศนี้ยังไม่ถูกอ่านเมื่อใช้ฟังก์ชั่น “ทำเครื่องหมายฯ ทั้งหมดว่าอ่านแล้ว”';
	@override String get end => 'เก็บประกาศ';
	@override String get tooManyActiveAnnouncementDescription => 'การมีประกาศที่ใช้งานมากเกินไปนั้นอาจจะทำให้ประสบการณ์ของผู้ใช้งานนั้นดูแย่ลง โปรดกรุณาพิจารณาการเก็บประกาศที่ล้าสมัยด้วยนะค่ะ';
	@override String get readConfirmTitle => 'ทำเครื่องหมายว่าอ่านแล้วเลยไหม?';
	@override String readConfirmText({required Object title}) => 'จะทำเครื่องหมายใส่ “${title}” ว่าอ่านแล้ว';
	@override String get shouldNotBeUsedToPresentPermanentInfo => 'เราขอแนะนำให้ใช้ประกาศเพื่อโพสต์ข้อมูลแบบ flow มากกว่าข้อมูลแบบ stock เนื่องจากมีแนวโน้มที่จะส่งผลเสียต่อ UX โดยเฉพาะสำหรับผู้ใช้ใหม่';
	@override String get dialogAnnouncementUxWarn => 'เราขอแนะนำให้ใช้ด้วยความระมัดระวัง เนื่องจากการแจ้งเตือนแบบกล่องโต้ตอบตั้งแต่ 2 รายการขึ้นไปพร้อมกันอาจส่งผลเสียต่อ UX ได้อย่างมาก';
	@override String get silence => 'ไม่มีการแจ้งเตือน';
	@override String get silenceDescription => 'หากเปิดใช้งาน จะไม่มีการแจ้งเตือนประกาศนี้ และผู้ใช้จะไม่จำเป็นต้องทำเครื่องหมายว่าอ่านแล้ว';
}

// Path: misskey.initialAccountSetting_
class _StringsMisskeyInitialAccountSettingThTh extends _StringsMisskeyInitialAccountSettingEnUs {
	_StringsMisskeyInitialAccountSettingThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => 'คุณได้สร้างบัญชีของคุณสำเร็จเรียบร้อยแล้ว!';
	@override String get letsStartAccountSetup => 'สำหรับผู้เริ่มต้นมาตั้งค่าโปรไฟล์ของคุณกันเถอะ';
	@override String get letsFillYourProfile => 'ก่อนอื่นมาตั้งค่าโปรไฟล์ของคุณ';
	@override String get profileSetting => 'ตั้งค่าโปรไฟล์';
	@override String get privacySetting => 'ตั้งค่าความเป็นส่วนตัว';
	@override String get theseSettingsCanEditLater => 'คุณสามารถเปลี่ยนการตั้งค่าเหล่านี้ได้ในภายหลังได้ตลอดเวลานะ';
	@override String get youCanEditMoreSettingsInSettingsPageLater => 'ยังมีการตั้งค่าอื่นๆ อีกมากมายที่คุณนั้นสามารถกำหนดค่าได้จาก "การตั้งค่า" เพื่อให้แน่ใจว่าได้เยี่ยมชมมันได้ภายหลังนะ';
	@override String get followUsers => 'ลองติดตามผู้ใช้บางคนที่คุณอาจจะสนใจเพื่อสร้างไทม์ไลน์ของคุณสิ !';
	@override String pushNotificationDescription({required Object name}) => 'กำลังเปิดใช้งานการแจ้งเตือนแบบพุชจะช่วยให้คุณได้รับการแจ้งเตือนจาก ${name} โดยตรงบนอุปกรณ์ของคุณนะ';
	@override String get initialAccountSettingCompleted => 'ตั้งค่าโปรไฟล์เสร็จสมบูรณ์แล้ว!';
	@override String haveFun({required Object name}) => 'ขอให้สนุกกับ ${name}!';
	@override String youCanContinueTutorial({required Object name}) => 'คุณสามารถดำเนินการต่อด้วยบทช่วยสอนเกี่ยวกับวิธีใช้ ${name} (Misskey) หรือออกจากบทช่วยสอนแล้วเริ่มใช้งานได้ทันที';
	@override String get startTutorial => 'เริ่มการฝึกสอน';
	@override String get skipAreYouSure => 'ต้องการข้ามการตั้งค่าโปรไฟล์จริงๆแบบนั้นหรอ?';
	@override String get laterAreYouSure => 'ต้องการตั้งค่าโปรไฟล์ในภายหลังจริงๆอย่างงั้นหรอ?';
}

// Path: misskey.initialTutorial_
class _StringsMisskeyInitialTutorialThTh extends _StringsMisskeyInitialTutorialEnUs {
	_StringsMisskeyInitialTutorialThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'เริ่มบทช่วยสอน';
	@override String get title => 'บทช่วยสอน';
	@override String get wellDone => 'ทำได้ดีมาก!';
	@override String get skipAreYouSure => 'ต้องการออกจากบทช่วยสอนใช่ไหม?';
	@override late final _StringsMisskeyInitialTutorialLandingThTh landing_ = _StringsMisskeyInitialTutorialLandingThTh._(_root);
	@override late final _StringsMisskeyInitialTutorialNoteThTh note_ = _StringsMisskeyInitialTutorialNoteThTh._(_root);
	@override late final _StringsMisskeyInitialTutorialReactionThTh reaction_ = _StringsMisskeyInitialTutorialReactionThTh._(_root);
	@override late final _StringsMisskeyInitialTutorialTimelineThTh timeline_ = _StringsMisskeyInitialTutorialTimelineThTh._(_root);
	@override late final _StringsMisskeyInitialTutorialPostNoteThTh postNote_ = _StringsMisskeyInitialTutorialPostNoteThTh._(_root);
	@override late final _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveThTh howToMakeAttachmentsSensitive_ = _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveThTh._(_root);
	@override late final _StringsMisskeyInitialTutorialDoneThTh done_ = _StringsMisskeyInitialTutorialDoneThTh._(_root);
}

// Path: misskey.timelineDescription_
class _StringsMisskeyTimelineDescriptionThTh extends _StringsMisskeyTimelineDescriptionEnUs {
	_StringsMisskeyTimelineDescriptionThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get home => 'บนไทม์ไลน์หน้าแรก คุณสามารถดูโพสต์จากบัญชีที่คุณติดตามได้';
	@override String get local => 'ไทม์ไลน์ในพื้นที่ช่วยให้คุณเห็นโพสต์จากผู้ใช้ทั้งหมดบนเซิร์ฟเวอร์นี้';
	@override String get social => 'ไทม์ไลน์โซเชียลจะแสดงโพสต์จากทั้งไทม์ไลน์หน้าแรกและไทม์ไลน์ในพื้นที่';
	@override String get global => 'ในไทม์ไลน์ทั่วโลก คุณสามารถดูโน้ตจากเซิร์ฟเวอร์ที่เชื่อมต่อทั้งหมดได้';
}

// Path: misskey.serverRules_
class _StringsMisskeyServerRulesThTh extends _StringsMisskeyServerRulesEnUs {
	_StringsMisskeyServerRulesThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get description => 'ชุดของกฎที่จะแสดงก่อนการลงทะเบียนเราขอแนะนำให้ตั้งค่าสรุปข้อกำหนดในการให้บริการ';
}

// Path: misskey.serverSettings_
class _StringsMisskeyServerSettingsThTh extends _StringsMisskeyServerSettingsEnUs {
	_StringsMisskeyServerSettingsThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get iconUrl => 'URL ไอคอน';
	@override String appIconDescription({required Object host}) => 'ระบุไอคอนที่จะใช้เมื่อ ${host} แสดงเป็นแอป';
	@override String get appIconUsageExample => 'E.g. เป็น PWA หรือเมื่อแสดงผลเป็นบุ๊กมาร์กหน้าจอหลักบนโทรศัพท์';
	@override String get appIconStyleRecommendation => 'เนื่องจากไอคอนอาจถูกครอบตัดเป็นสี่เหลี่ยมจัตุรัสหรือวงกลม จึงแนะนำให้ใช้ไอคอนที่มีขอบสีรอบๆ เนื้อหา';
	@override String appIconResolutionMustBe({required Object resolution}) => 'ความละเอียดขั้นต่ำไว้คือ ${resolution}.';
	@override String get manifestJsonOverride => 'เขียนทับ manifest.json';
	@override String get shortName => 'ชื่อย่อ';
	@override String get shortNameDescription => 'ตัวย่อหรือชื่อทั่วไปที่สามารถแสดงแทนชื่ออย่างเป็นทางการแบบยาวของเซิร์ฟเวอร์';
	@override String get fanoutTimelineDescription => 'เพิ่มประสิทธิภาพการดึงข้อมูลไทม์ไลน์อย่างมาก และลดภาระในฐานข้อมูลเมื่อเปิดใช้งาน ในทางกลับกัน การใช้หน่วยความจำของ Redis จะเพิ่มขึ้น ลองปิดการใช้งานนี้ในกรณีที่หน่วยความจำเซิร์ฟเวอร์เหลือน้อยหรือเซิร์ฟเวอร์ไม่เสถียร';
	@override String get fanoutTimelineDbFallback => 'ฟอลแบ๊กกลับฐานข้อมูล';
	@override String get fanoutTimelineDbFallbackDescription => 'เมื่อเปิดใช้งาน หากไม่ได้แคชไทม์ไลน์ ไทม์ไลน์จะฟอลแบ๊กไปยังฐานข้อมูลสำหรับการ query เพิ่มเติม การปิดใช้งานจะช่วยลดภาระของเซิร์ฟเวอร์ด้วยการกำจัดกระบวนฟอลแบ๊ก แต่มันก็จะจำกัดช่วงเวลาไทม์ไลน์ที่สามารถดึงข้อมูลได้';
}

// Path: misskey.accountMigration_
class _StringsMisskeyAccountMigrationThTh extends _StringsMisskeyAccountMigrationEnUs {
	_StringsMisskeyAccountMigrationThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => 'ย้ายข้อมูลบัญชีอื่นไปยังอีกบัญชีนี้หนึ่ง';
	@override String get moveFromSub => 'สร้างนามแฝงไปยังบัญชีอื่น';
	@override String moveFromLabel({required Object n}) => 'บัญชีที่จะย้ายจาก #${n}';
	@override String get moveFromDescription => 'ถ้าหากคุณต้องการโอนข้อมูล คุณจำเป็นต้องสร้างบัญชีสำรองสำหรับการย้ายบัญชี  หลังจากนั้นป้อนบัญชีที่จะย้ายไปในรูปแบบต่อไปนี้: @person@instance.com';
	@override String get moveTo => 'ย้ายข้อมูลบัญชีนี้ไปยังบัญชีอีกหนึ่ง';
	@override String get moveToLabel => 'บัญชีที่จะย้ายไปที่:';
	@override String get moveCannotBeUndone => 'ไม่สามารถยกเลิกการโอนย้ายบัญชีได้';
	@override String get moveAccountDescription => 'การดำเนินการนี้จะย้ายบัญชีของคุณไปยังบัญชีอื่น\n・ผู้ที่กำลังติดตามคุณจากบัญชีนี้จะถูกย้ายไปยังบัญชีใหม่โดยอัตโนมัติ\n・บัญชีนี้จะเลิกติดตามผู้ใช้ทั้งหมดที่กำลังติดตามอยู่\n・คุณจะไม่สามารถสร้างโน้ต ฯลฯ ในบัญชีนี้ได้\n\nแม้ว่าการย้ายผู้ที่ติดตามคุณจะเป็นไปโดยอัตโนมัติ แต่คุณต้องเตรียมขั้นตอนบางอย่างด้วยตนเอง เพื่อย้ายรายชื่อผู้ใช้ที่คุณกำลังติดตาม โดยดำเนินการส่งออกรายชื่อแล้วค่อยนำเข้ามาภายหลังในเมนูการตั้งค่าของบัญชีใหม่ ใช้ขั้นตอนเดียวกันนี้ใช้รายชื่อผู้ใช้ที่ถูกปิดเสียงและถูกบล็อก\n\n(คำอธิบายนี้ใช้กับ Misskey v13.12.0 ขึ้นไป, ซอฟต์แวร์ ActivityPub อื่นๆ เช่น Mastodon อาจทำงานแตกต่างออกไป)';
	@override String get moveAccountHowTo => 'หากต้องการย้ายข้อมูลก่อนอื่นให้สร้างชื่อแทนสำหรับบัญชีนี้ ในบัญชีที่จะต้องการย้ายไป\nหลังจากที่คุณสร้างนามแฝงนั้นแล้ว ให้ป้อนบัญชีที่ต้องการจะย้ายไปในรูปแบบดังต่อไปนี้: @username@server.example.com';
	@override String get startMigration => 'โอนย้าย';
	@override String migrationConfirm({required Object account}) => 'ยืนยันการย้ายข้อมูลบัญชีนี้ไปที่ ${account} เมื่อเริ่มแล้วจะไม่สามารถหยุดหรือนำกลับคืนมาได้ และคุณจะไม่สามารถใช้บัญชีนี้ในสถานะดั้งเดิมได้อีกต่อไป\n\nนอกจากนี้ คุณจำเป็นต้องสร้างบัญชีสำรองสำหรับการย้ายบัญชี';
	@override String get movedAndCannotBeUndone => '\nบัญชีนี้ถูกโอนย้ายไปแล้ว\nไม่สามารถย้อนกลับโอนย้ายข้อมูลได้';
	@override String get postMigrationNote => 'บัญชีนี้จะถูกเลิกติดตามบัญชีทั้งหมดที่กำลังติดตามภายใน 24 ชั่วโมงหลังจากการย้ายข้อมูลนั้นเสร็จสิ้น ทั้งจำนวนผู้ติดตามและผู้ติดตามนั้นจะกลายเป็นศูนย์ เพื่อหลีกเลี่ยงป้องกันไม่ให้ผู้ติดตามของคุณนั้นไม่สามารถเห็นโพสต์เฉพาะผู้ติดตามของบัญชีนี้ได้ แต่อย่างไรก็ตามแล้วพวกเขาจะยังคงติดตามบัญชีนี้ต่อไป';
	@override String get movedTo => 'บัญชีที่จะย้ายไปที่:';
}

// Path: misskey.achievements_
class _StringsMisskeyAchievementsThTh extends _StringsMisskeyAchievementsEnUs {
	_StringsMisskeyAchievementsThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'ได้รับเมื่อ';
	@override late final _StringsMisskeyAchievementsTypesThTh types_ = _StringsMisskeyAchievementsTypesThTh._(_root);
}

// Path: misskey.role_
class _StringsMisskeyRoleThTh extends _StringsMisskeyRoleEnUs {
	_StringsMisskeyRoleThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'บทบาทใหม่';
	@override String get edit => 'แก้ไขบทบาท';
	@override String get name => 'ชื่อบทบาท';
	@override String get description => 'คำอธิบายบทบาท';
	@override String get permission => 'สิทธิ์ตามบทบาท';
	@override String get descriptionOfPermission => '<b>ผู้ควบคุม</b> สามารถดำเนินการดูแลขั้นพื้นฐานได้\n<b>ผู้ดูแลระบบ</b> สามารถเปลี่ยนการตั้งค่าทั้งหมดของอินสแตนซ์ได้';
	@override String get assignTarget => 'มอบหมาย';
	@override String get descriptionOfAssignTarget => 'แบบ<b>ปรับเอง</b> เพิ่มถอนบทบาทนี้แก่ผู้ใช้ด้วยตัวเอง\nแบบ<b>มีเงื่อนไข</b> เพิ่มถอนบทบาทนี้แก่ผู้ใช้โดยอัตโนมัติหากเข้าเงื่อนไขใดต่อไปนี้';
	@override String get manual => 'ปรับเอง';
	@override String get manualRoles => 'บทบาทแบบทำมือ';
	@override String get conditional => 'มีเงื่อนไข';
	@override String get conditionalRoles => 'บทบาทแบบมีเงื่อนไข';
	@override String get condition => 'เงื่อนไข';
	@override String get isConditionalRole => 'นี่คือบทบาทที่มีเงื่อนไข';
	@override String get isPublic => 'ทำให้บทบาทเปิดเผยต่อสาธารณะ';
	@override String get descriptionOfIsPublic => 'บทบาทจะปรากฏบนโปรไฟล์ของผู้ใช้และเปิดเผยต่อสาธารณะ (ทุกคนสามารถเห็นได้ว่าผู้ใช้รายนี้มีบทบาทนี้)';
	@override String get options => 'ตัวเลือกบทบาท';
	@override String get policies => 'นโยบาย';
	@override String get baseRole => 'เทมเพลตบทบาท';
	@override String get useBaseValue => 'ใช้ตามเทมเพลตบทบาท';
	@override String get chooseRoleToAssign => 'เลือกบทบาทที่ต้องการกำหนด';
	@override String get iconUrl => 'URL ไอคอน';
	@override String get asBadge => 'แสดงเป็นตรา';
	@override String get descriptionOfAsBadge => 'เมื่อเปิดใช้งาน ไอคอนบทบาทจะปรากฏถัดจากชื่อผู้ใช้';
	@override String get isExplorable => 'ค้นหาผู้ใช้ได้ง่ายขึ้นโดยดูจากบทบาท';
	@override String get descriptionOfIsExplorable => 'เมื่อเปิดใช้งาน ไทมไลน์บทบาทนี้และสมาชิกที่มีบทบาทนี้จะเปิดเผยเป็นสาธารณะ';
	@override String get displayOrder => 'ลำดับการแสดงผล';
	@override String get descriptionOfDisplayOrder => 'เลขที่สูงกว่าจะแสดงบน UI ก่อน';
	@override String get canEditMembersByModerator => 'อนุญาตให้ผู้ควบคุมแก้ไขสมาชิก';
	@override String get descriptionOfCanEditMembersByModerator => 'เมื่อเปิดใช้ นอกเหนือจากผู้ควบคุมและผู้ดูแลระบบแล้ว จะสามารถเพิ่มถอนบทบาทนี้แก่ผู้ใช้ได้ แต่เมื่อปิดใช้ จะมีเฉพาะผู้ดูแลระบบเท่านั้นที่จะสามารถดำเนินการได้';
	@override String get priority => 'ลำดับความสำคัญ';
	@override late final _StringsMisskeyRolePriorityThTh priority_ = _StringsMisskeyRolePriorityThTh._(_root);
	@override late final _StringsMisskeyRoleOptionsThTh options_ = _StringsMisskeyRoleOptionsThTh._(_root);
	@override late final _StringsMisskeyRoleConditionThTh condition_ = _StringsMisskeyRoleConditionThTh._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _StringsMisskeySensitiveMediaDetectionThTh extends _StringsMisskeySensitiveMediaDetectionEnUs {
	_StringsMisskeySensitiveMediaDetectionThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get description => 'ใช้ Machine Learning เพื่อตรวจจับสื่อที่มีเนื้อหาละเอียดอ่อนโดยอัตโนมัติและใช้เพื่อการกลั่นกรอง ภาระของเซิร์ฟเวอร์จะเพิ่มขึ้นเล็กน้อย';
	@override String get sensitivity => 'ความไวในการตรวจจับ';
	@override String get sensitivityDescription => 'เมื่อความไวต่ำ Misdetection (ผลบวกลวง) จะลดลง, เมื่อความไวสูง Missed detection (ผลลบลวง) จะลดลง';
	@override String get setSensitiveFlagAutomatically => 'ทำเครื่องหมายว่ามีเนื้อหาละเอียดอ่อน';
	@override String get setSensitiveFlagAutomaticallyDescription => 'ผลลัพธ์ของการตรวจจับภายในนั้นจะยังคงอยู่ ถึงแม้ว่าจะปิดตัวเลือกนี้';
	@override String get analyzeVideos => 'เปิดใช้งานวิเคราะห์ของวิดีโอ';
	@override String get analyzeVideosDescription => 'การวิเคราะห์วิดีโอนอกเหนือจากรูปภาพนั้น การทำสิ่งนี้จะทำให้เพิ่มภาระบนเซิร์ฟเวอร์เล็กน้อย';
}

// Path: misskey.emailUnavailable_
class _StringsMisskeyEmailUnavailableThTh extends _StringsMisskeyEmailUnavailableEnUs {
	_StringsMisskeyEmailUnavailableThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get used => 'ที่อยู่อีเมลนี้ได้ถูกใช้ไปแล้ว';
	@override String get format => 'รูปแบบของที่อยู่อีเมลนี้ไม่ถูกต้อง';
	@override String get disposable => 'ไม่สามารถใช้อีเมลชั่วคราวได้';
	@override String get mx => 'เซิร์ฟเวอร์อีเมลนี้ไม่ถูกต้อง';
	@override String get smtp => 'เซิร์ฟเวอร์อีเมลนี้ไม่มีการตอบสนอง';
	@override String get banned => 'คุณไม่สามารถลงทะเบียนด้วยที่อยู่อีเมลนี้ได้';
}

// Path: misskey.ffVisibility_
class _StringsMisskeyFfVisibilityThTh extends _StringsMisskeyFfVisibilityEnUs {
	_StringsMisskeyFfVisibilityThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get public => 'สาธารณะ';
	@override String get followers => 'ปรากฏให้แก่ผู้ติดตามเท่านั้น';
	@override String get private => 'ส่วนตัว';
}

// Path: misskey.signup_
class _StringsMisskeySignupThTh extends _StringsMisskeySignupEnUs {
	_StringsMisskeySignupThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'เกือบจะเสร็จแล้ว';
	@override String get emailAddressInfo => 'กรุณากรอกที่อยู่อีเมลที่คุณใช้ ที่อยู่อีเมลของคุณจะไม่ถูกเผยแพร่สู่สาธารณชน';
	@override String emailSent({required Object email}) => 'อีเมลยืนยันได้ถูกส่งไปยังที่อยู่อีเมลที่คุณป้อน (${email}) แล้ว กรุณาติดตามลิงก์ในอีเมลเพื่อสร้างบัญชีให้เสร็จสมบูรณ์ ลิงก์ที่ให้ไว้จะหมดอายุใน 30 นาที';
}

// Path: misskey.accountDelete_
class _StringsMisskeyAccountDeleteThTh extends _StringsMisskeyAccountDeleteEnUs {
	_StringsMisskeyAccountDeleteThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'ลบบัญชีผู้ใช้';
	@override String get mayTakeTime => 'เนื่องจากการลบบัญชีนี้จะเป็นกระบวนการที่ต้องใช้ทรัพยากรมาก จึงอาจจะต้องใช้เวลาสักครู่ถึงจะเสร็จสมบูรณ์ ทั้งนี้ขึ้นอยู่กับจำนวนเนื้อหาที่คุณสร้างและจำนวนไฟล์ที่คุณอัปโหลดนะ';
	@override String get sendEmail => 'เมื่อการลบบัญชีเสร็จสิ้น การแจ้งเตือนจะถูกส่งไปยังที่อยู่อีเมลที่ลงทะเบียนไว้';
	@override String get requestAccountDelete => 'ร้องขอให้ลบบัญชี';
	@override String get started => 'การลบได้เริ่มต้นขึ้น';
	@override String get inProgress => 'ปัจจุบันกำลังดำเนินการลบอยู่';
}

// Path: misskey.ad_
class _StringsMisskeyAdThTh extends _StringsMisskeyAdEnUs {
	_StringsMisskeyAdThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get back => 'ย้อนกลับ';
	@override String get reduceFrequencyOfThisAd => 'แสดงโฆษณานี้ให้น้อยลง';
	@override String get hide => 'ไม่ต้องแสดง';
	@override String get timezoneinfo => 'วันในสัปดาห์นี้จะถูกกำหนดจากโซนเวลาของเซิร์ฟเวอร์';
	@override String get adsSettings => 'ตั้งค่าการโฆษณา';
	@override String get notesPerOneAd => 'อัปเดตช่วงเวลาตำแหน่งโฆษณาแบบเรียลไทม์ (จำนวนโน้ตต่อโฆษณา)';
	@override String get setZeroToDisable => 'ตั้งค่านี้ให้เป็น 0 เพื่อปิดใช้งานโฆษณาอัปเดตแบบเรียลไทม์';
	@override String get adsTooClose => 'เนื่องจากช่วงเวลาการแสดงโฆษณาสั้นมาก ประสบการณ์ผู้ใช้จึงอาจลดลงอย่างมาก';
}

// Path: misskey.forgotPassword_
class _StringsMisskeyForgotPasswordThTh extends _StringsMisskeyForgotPasswordEnUs {
	_StringsMisskeyForgotPasswordThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'ป้อนที่อยู่อีเมลที่คุณเคยใช้ในการลงทะเบียนไว้ ลิงก์ที่คุณสามารถรีเซ็ตรหัสผ่านได้นั้นจะถูกส่งไปนะ';
	@override String get ifNoEmail => 'ถ้าหากคุณไม่ได้ใช้อีเมลระหว่างการลงทะเบียน กรุณาติดต่อผู้ดูแลระบบอินสแตนซ์แทนนะ';
	@override String get contactAdmin => 'อินสแตนซ์นี้ไม่รองรับการใช้งานที่อยู่อีเมลนี้ กรุณาติดต่อผู้ดูแลระบบอินสแตนซ์เพื่อรีเซ็ตรหัสผ่านของคุณแทน';
}

// Path: misskey.gallery_
class _StringsMisskeyGalleryThTh extends _StringsMisskeyGalleryEnUs {
	_StringsMisskeyGalleryThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get my => 'แกลลอรี่ของฉัน';
	@override String get liked => 'โพสต์ที่ถูกใจ';
	@override String get like => 'ถูกใจ!';
	@override String get unlike => 'เลิกถูกใจ';
}

// Path: misskey.email_
class _StringsMisskeyEmailThTh extends _StringsMisskeyEmailEnUs {
	_StringsMisskeyEmailThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyEmailFollowThTh follow_ = _StringsMisskeyEmailFollowThTh._(_root);
	@override late final _StringsMisskeyEmailReceiveFollowRequestThTh receiveFollowRequest_ = _StringsMisskeyEmailReceiveFollowRequestThTh._(_root);
}

// Path: misskey.plugin_
class _StringsMisskeyPluginThTh extends _StringsMisskeyPluginEnUs {
	_StringsMisskeyPluginThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get install => 'ติดตั้งปลั๊กอิน';
	@override String get installWarn => 'กรุณาอย่าติดตั้งปลั๊กอินที่ไม่น่าเชื่อถือนะคะ';
	@override String get manage => 'จัดการปลั๊กอิน';
	@override String get viewSource => 'ดูต้นฉบับ';
	@override String get viewLog => 'แสดงปูม';
}

// Path: misskey.preferencesBackups_
class _StringsMisskeyPreferencesBackupsThTh extends _StringsMisskeyPreferencesBackupsEnUs {
	_StringsMisskeyPreferencesBackupsThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get list => 'สร้างการสำรองข้อมูล';
	@override String get saveNew => 'บันทึกข้อมูลสำรองใหม่';
	@override String get loadFile => 'โหลดจากไฟล์';
	@override String get apply => 'นำไปใช้กับอุปกรณ์นี้';
	@override String get save => 'บันทึก';
	@override String get inputName => 'กรุณาป้อนชื่อสำหรับข้อมูลสำรองนี้';
	@override String get cannotSave => 'การบันทึกล้มเหลว';
	@override String nameAlreadyExists({required Object name}) => 'มีข้อมูลสำรองชื่อ "${name}" นี้อยู่แล้ว กรุณาป้อนชื่ออื่นนะ';
	@override String applyConfirm({required Object name}) => 'คุณต้องการใช้ข้อมูลสำรอง "${name}" กับอุปกรณ์นี้อย่างงั้นจริงหรอ การตั้งค่าที่มีอยู่ของอุปกรณ์นี้จะถูกเขียนทับนะ';
	@override String saveConfirm({required Object name}) => 'บันทึกข้อมูลสำรองเป็น ${name} มั้ย?';
	@override String deleteConfirm({required Object name}) => 'ลบข้อมูลสำรอง ${name} มั้ย?';
	@override String renameConfirm({required Object old, required Object new_}) => 'ต้องการเปลี่ยนชื่อข้อมูลสำรองจาก “${old}” เป็น “${new_}” ใช่ไหม?';
	@override String get noBackups => 'ไม่มีข้อมูลสำรอง สามารถบันทึกการตั้งค่าไคลเอนต์ปัจจุบันไปยังเซิร์ฟเวอร์ด้วย “บันทึกข้อมูลสำรองใหม่”';
	@override String createdAt({required Object date, required Object time}) => 'สร้างเมื่อ: ${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => 'อัปเดตเมื่อ: ${date} ${time}';
	@override String get cannotLoad => 'การโหลดล้มเหลว';
	@override String get invalidFile => 'รูปแบบไฟล์ไม่ถูกต้องนะ';
}

// Path: misskey.registry_
class _StringsMisskeyRegistryThTh extends _StringsMisskeyRegistryEnUs {
	_StringsMisskeyRegistryThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get scope => 'สโคป';
	@override String get key => 'คีย์';
	@override String get keys => 'คีย์';
	@override String get domain => 'โดเมน';
	@override String get createKey => 'สร้างคีย์';
}

// Path: misskey.aboutMisskey_
class _StringsMisskeyAboutMisskeyThTh extends _StringsMisskeyAboutMisskeyEnUs {
	_StringsMisskeyAboutMisskeyThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey เป็นซอฟต์แวร์โอเพ่นซอร์สที่ถูกพัฒนาโดย Syuilo ตั้งแต่ปี 2014';
	@override String get contributors => 'ผู้สนับสนุนหลัก';
	@override String get allContributors => 'ผู้มีส่วนร่วมทั้งหมด';
	@override String get source => 'ซอร์สโค้ด';
	@override String get original => 'ต้นฉบับ';
	@override String thisIsModifiedVersion({required Object name}) => '${name} ใช้ Misskey เวอร์ชันดัดแปลง';
	@override String get translation => 'แปลภาษา Misskey';
	@override String get donate => 'บริจาคให้กับ Misskey';
	@override String get morePatrons => 'และอีกหลายท่านที่ไม่ได้เอ่ยนาม ขอบคุณที่ร่วมช่วยเหลือตลอดมานะคะ 🥰';
	@override String get patrons => 'ผู้อุปถัมภ์';
	@override String get projectMembers => 'สมาชิกในโครงการ';
}

// Path: misskey.displayOfSensitiveMedia_
class _StringsMisskeyDisplayOfSensitiveMediaThTh extends _StringsMisskeyDisplayOfSensitiveMediaEnUs {
	_StringsMisskeyDisplayOfSensitiveMediaThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get respect => 'ซ่อนสื่อที่มีเนื้อหาละเอียดอ่อน';
	@override String get ignore => 'แสดงสื่อที่มีเนื้อหาละเอียดอ่อน';
	@override String get force => 'ซ่อนสื่อทั้งหมด';
}

// Path: misskey.instanceTicker_
class _StringsMisskeyInstanceTickerThTh extends _StringsMisskeyInstanceTickerEnUs {
	_StringsMisskeyInstanceTickerThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get none => 'ไม่ต้องแสดง';
	@override String get remote => 'แสดงสำหรับผู้ใช้ระยะไกล';
	@override String get always => 'แสดงเสมอ';
}

// Path: misskey.serverDisconnectedBehavior_
class _StringsMisskeyServerDisconnectedBehaviorThTh extends _StringsMisskeyServerDisconnectedBehaviorEnUs {
	_StringsMisskeyServerDisconnectedBehaviorThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get reload => 'โหลดใหม่โดยอัตโนมัติ';
	@override String get dialog => 'แสดงกล่องโต้ตอบคำเตือน';
	@override String get quiet => 'แสดงคำเตือนที่ไม่เป็นการรบกวน';
}

// Path: misskey.channel_
class _StringsMisskeyChannelThTh extends _StringsMisskeyChannelEnUs {
	_StringsMisskeyChannelThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get create => 'สร้างช่องใหม่';
	@override String get edit => 'แก้ไขช่อง';
	@override String get setBanner => 'เซตแบนเนอร์';
	@override String get removeBanner => 'ลบแบนเนอร์';
	@override String get featured => 'เทรนด์';
	@override String get owned => 'เจ้าของ';
	@override String get following => 'ติดตามแล้ว';
	@override String usersCount({required Object n}) => '${n} ผู้เข้าร่วม';
	@override String notesCount({required Object n}) => 'มี ${n} โน้ต';
	@override String get nameAndDescription => 'ชื่อและคำอธิบาย';
	@override String get nameOnly => 'ชื่อเท่านั้น';
	@override String get allowRenoteToExternal => 'อนุญาตให้รีโน้ตและอ้างอิงนอกช่องได้';
}

// Path: misskey.menuDisplay_
class _StringsMisskeyMenuDisplayThTh extends _StringsMisskeyMenuDisplayEnUs {
	_StringsMisskeyMenuDisplayThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'ด้านข้าง';
	@override String get sideIcon => 'ด้านข้าง (ไอคอน)';
	@override String get top => 'ท็อป';
	@override String get hide => 'ซ่อน';
}

// Path: misskey.wordMute_
class _StringsMisskeyWordMuteThTh extends _StringsMisskeyWordMuteEnUs {
	_StringsMisskeyWordMuteThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'ปิดเสียงคำ';
	@override String get muteWordsDescription => 'คั่นด้วยช่องว่างสำหรับเงื่อนไข AND หรือด้วยการขึ้นบรรทัดใหม่สำหรับเงื่อนไข OR นะ';
	@override String get muteWordsDescription2 => 'ล้อมรอบคีย์เวิร์ดด้วยเครื่องหมายทับเพื่อใช้นิพจน์ทั่วไป';
}

// Path: misskey.instanceMute_
class _StringsMisskeyInstanceMuteThTh extends _StringsMisskeyInstanceMuteEnUs {
	_StringsMisskeyInstanceMuteThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'การดำเนินการนี้จะปิดเสียง"โน้ต/รีโน้ต"จากอินสแตนซ์ที่อยู่ในรายการ รวมถึงบันทึกของผู้ใช้ที่ตอบกลับผู้ใช้จากอินสแตนซ์ที่ปิดเสียง';
	@override String get instanceMuteDescription2 => 'คั่นด้วยการขึ้นบรรทัดใหม่';
	@override String get title => 'ซ่อนโน้ตจากอินสแตนซ์ที่มีอยู่ในรายชื่อ';
	@override String get heading => 'รายชื่ออินสแตนซ์ที่ถูกปิดเสียง';
}

// Path: misskey.theme_
class _StringsMisskeyThemeThTh extends _StringsMisskeyThemeEnUs {
	_StringsMisskeyThemeThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get explore => 'สำรวจธีม';
	@override String get install => 'ติดตั้งธีม';
	@override String get manage => 'จัดการธีม';
	@override String get code => 'โค้ดธีม';
	@override String get description => 'รายละเอียด';
	@override String installed({required Object name}) => '${name} ได้รับการติดตั้ง';
	@override String get installedThemes => 'ธีมที่ติดตั้ง';
	@override String get builtinThemes => 'ธีมในตัว';
	@override String get alreadyInstalled => 'ธีมนี้ได้รับการติดตั้งแล้ว';
	@override String get invalid => 'รูปแบบของธีมนี้ไม่ถูกต้องนะ';
	@override String get make => 'ทำธีม';
	@override String get base => 'ฐาน';
	@override String get addConstant => 'เพิ่มค่าคงที่';
	@override String get constant => 'ตัวแปร';
	@override String get defaultValue => 'ค่าเริ่มต้น';
	@override String get color => 'สี';
	@override String get refProp => 'อ้างอิงคุณสมบัติ';
	@override String get refConst => 'อ้างอิงค่าคงที่';
	@override String get key => 'คีย์';
	@override String get func => 'ฟังก์ชัน';
	@override String get funcKind => 'ประเภทฟังก์ชัน';
	@override String get argument => 'อากิวเม้นต์';
	@override String get basedProp => 'ทรัพย์สินอ้างอิง';
	@override String get alpha => 'ความทึบแสง';
	@override String get darken => 'มืดลง';
	@override String get lighten => 'สว่าง';
	@override String get inputConstantName => 'ป้อนชื่อสำหรับค่าคงที่นี้';
	@override String get importInfo => 'ถ้าหากต้องการป้อนโค้ดที่นี่ คุณยังสามารถนำเข้าไปยังโปรแกรมแก้ไขธีมได้';
	@override String deleteConstantConfirm({required Object const_}) => 'คุณต้องการลบค่าคงที่ ${const_} หรือป่าว?';
	@override late final _StringsMisskeyThemeKeysThTh keys = _StringsMisskeyThemeKeysThTh._(_root);
}

// Path: misskey.sfx_
class _StringsMisskeySfxThTh extends _StringsMisskeySfxEnUs {
	_StringsMisskeySfxThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get note => 'โน้ต';
	@override String get noteMy => 'โน้ตของตัวเอง';
	@override String get notification => 'การเเจ้งเตือน';
	@override String get antenna => 'เสาอากาศ';
	@override String get channel => 'การแจ้งเตือนช่อง';
	@override String get reaction => 'เมื่อเลือกรีแอคชั่น';
}

// Path: misskey.soundSettings_
class _StringsMisskeySoundSettingsThTh extends _StringsMisskeySoundSettingsEnUs {
	_StringsMisskeySoundSettingsThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get driveFile => 'ใช้เสียงจากไดรฟ์';
	@override String get driveFileWarn => 'เลือกไฟล์ในไดรฟ์ของคุณ';
	@override String get driveFileTypeWarn => 'ไม่รองรับไฟล์นี้';
	@override String get driveFileTypeWarnDescription => 'กรุณาเลือกไฟล์เสียง';
	@override String get driveFileDurationWarn => 'เสียงยาวเกินไป';
	@override String get driveFileDurationWarnDescription => 'การใช้เสียงที่ยาวอาจรบกวนการใช้งาน Misskey, ต้องการดำเนินการต่อหรือไม่?';
}

// Path: misskey.ago_
class _StringsMisskeyAgoThTh extends _StringsMisskeyAgoEnUs {
	_StringsMisskeyAgoThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get future => 'อนาคต';
	@override String get justNow => 'เมื่อกี๊นี้';
	@override String secondsAgo({required Object n}) => '${n} วินาทีที่แล้ว';
	@override String minutesAgo({required Object n}) => '${n} นาทีที่แล้ว';
	@override String hoursAgo({required Object n}) => '${n} ชั่วโมงที่แล้ว';
	@override String daysAgo({required Object n}) => '${n} วันที่ผ่านมา';
	@override String weeksAgo({required Object n}) => '${n} สัปดาห์ที่แล้ว';
	@override String monthsAgo({required Object n}) => '${n} เดือนที่แล้ว';
	@override String yearsAgo({required Object n}) => '${n} ปีที่ผ่านมา';
	@override String get invalid => 'ไม่พบผลลัพธ์';
}

// Path: misskey.timeIn_
class _StringsMisskeyTimeInThTh extends _StringsMisskeyTimeInEnUs {
	_StringsMisskeyTimeInThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String seconds({required Object n}) => 'ใน ${n} วินาที';
	@override String minutes({required Object n}) => 'ใน ${n} นาที';
	@override String hours({required Object n}) => 'ใน ${n} ชั่วโมง';
	@override String days({required Object n}) => 'ใน ${n} วัน';
	@override String weeks({required Object n}) => 'ใน ${n} สัปดาห์';
	@override String months({required Object n}) => 'ใน ${n} เดือน';
	@override String years({required Object n}) => 'ใน ${n} ปี';
}

// Path: misskey.time_
class _StringsMisskeyTimeThTh extends _StringsMisskeyTimeEnUs {
	_StringsMisskeyTimeThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get second => 'วินาที';
	@override String get minute => 'นาที';
	@override String get hour => 'ชั่วโมง';
	@override String get day => 'วัน';
}

// Path: misskey.x2fa_
class _StringsMisskeyX2faThTh extends _StringsMisskeyX2faEnUs {
	_StringsMisskeyX2faThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'คุณได้ลงทะเบียนอุปกรณ์ยืนยันตัวตนแบบ 2 ชั้นแล้ว';
	@override String get registerTOTP => 'ลงทะเบียนแอพตัวตรวจสอบสิทธิ์';
	@override String step1({required Object a, required Object b}) => 'ขั้นตอนแรก ติดตั้งแอปยืนยันตัวตน (เช่น ${a} หรือ ${b}) บนอุปกรณ์ของคุณ';
	@override String get step2 => 'จากนั้นสแกนรหัส QR ที่แสดงบนหน้าจอนี้';
	@override String get step2Uri => 'ป้อนใส่ URL ดังต่อไปนี้ถ้าหากคุณใช้โปรแกรมเดสก์ท็อป';
	@override String get step3Title => 'ป้อนรหัสยืนยัน';
	@override String get step3 => 'ป้อนโทเค็นที่แอปของคุณให้มาเพื่อเสร็จสิ้นการตั้งค่า';
	@override String get setupCompleted => 'ตั้งค่าสำเร็จแล้ว';
	@override String get step4 => 'นับจากนี้เป็นต้นไปการพยายามเข้าสู่ระบบในอนาคตนั้น อาจจะต้องขอโทเค็นในการเข้าสู่ระบบดังกล่าว';
	@override String get securityKeyNotSupported => 'เบราว์เซอร์ของคุณไม่รองรับคีย์ความปลอดภัยนะ';
	@override String get registerTOTPBeforeKey => 'กรุณาตั้งค่าแอปยืนยันตัวตนเพื่อลงทะเบียนรหัสความปลอดภัยหรือรหัสผ่าน';
	@override String get securityKeyInfo => 'นอกจากนี้การตรวจสอบความถูกต้องด้วยลายนิ้วมือหรือ PIN แล้ว คุณยังสามารถตั้งค่าการตรวจสอบสิทธิ์ผ่านคีย์ความปลอดภัยของฮาร์ดแวร์ที่รองรับ FIDO2 เพื่อเพิ่มความปลอดภัยให้กับบัญชีของคุณ';
	@override String get registerSecurityKey => 'ลงทะเบียนรหัสความปลอดภัยหรือรหัสผ่าน';
	@override String get securityKeyName => 'ป้อนชื่อคีย์';
	@override String get tapSecurityKey => 'กรุณาทำตามเบราว์เซอร์ของคุณเพื่อลงทะเบียนรหัสความปลอดภัยหรือรหัสผ่าน';
	@override String get removeKey => 'ลบคีย์ความปลอดภัยออก';
	@override String removeKeyConfirm({required Object name}) => 'ลบข้อมูลสำรอง ${name} มั้ย?';
	@override String get whyTOTPOnlyRenew => 'ไม่สามารถลบแอปตัวรับรองความถูกต้องได้ตราบใดที่มีการลงทะเบียนคีย์ความปลอดภัยไว้แล้ว';
	@override String get renewTOTP => 'กำหนดค่าแอพตัวตรวจสอบสิทธิ์ใหม่';
	@override String get renewTOTPConfirm => 'วิธีการแบบนี้จะทําให้รหัสยืนยันจากแอพก่อนหน้าของคุณหยุดทํางานเลยนะ';
	@override String get renewTOTPOk => 'ตั้งค่าคอนฟิกใหม่';
	@override String get renewTOTPCancel => 'ไม่เป็นไร';
	@override String get checkBackupCodesBeforeCloseThisWizard => 'โปรดตรวจสอบรหัสสำรองด้านล่างก่อนที่จะปิดวิซาร์ดนี้';
	@override String get backupCodes => 'รหัสสำรองข้อมูล';
	@override String get backupCodesDescription => 'หากแอปยืนยันตัวตนของคุณไม่พร้อมใช้งาน คุณสามารถใช้รหัสสำรองด้านล่างเพื่อเข้าถึงบัญชีของคุณได้ อย่าลืมเก็บรหัสเหล่านี้ไว้ในที่ปลอดภัย แต่ละรหัสสามารถใช้ได้เพียงครั้งเดียวเท่านั้น';
	@override String get backupCodeUsedWarning => 'มีการใช้รหัสสำรองแล้ว โปรดกรุณากำหนดค่าการตรวจสอบสิทธิ์แบบสองปัจจัยโดยเร็วที่สุดถ้าหากคุณยังไม่สามารถใช้งานได้อีก';
	@override String get backupCodesExhaustedWarning => 'รหัสสำรองทั้งหมดถูกใช้แล้ว ถ้าหากคุณยังสูญเสียการเข้าถึงแอปการตรวจสอบสิทธิ์แบบสองปัจจัยคุณจะยังไม่สามารถเข้าถึงบัญชีนี้ได้ กรุณากำหนดค่าการรับรองความถูกต้องด้วยการยืนยันสองชั้น';
	@override String get moreDetailedGuideHere => 'คลิกที่นี่เพื่อดูคำแนะนำโดยละเอียด';
}

// Path: misskey.permissions_
class _StringsMisskeyPermissionsThTh extends _StringsMisskeyPermissionsEnUs {
	_StringsMisskeyPermissionsThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'ดูข้อมูลบัญชีของคุณ';
	@override String get writeAccount => 'แก้ไขข้อมูลบัญชีของคุณ';
	@override String get readBlocks => 'ดูรายชื่อผู้ใช้ที่ถูกบล็อกของคุณ';
	@override String get writeBlocks => 'แก้ไขรายชื่อผู้ใช้ที่ถูกบล็อกของคุณ';
	@override String get readDrive => 'เข้าถึงไฟล์และโฟลเดอร์ในไดรฟ์ของคุณ';
	@override String get writeDrive => 'แก้ไขหรือลบไฟล์และโฟลเดอร์ในไดรฟ์ของคุณ';
	@override String get readFavorites => 'ดูรายการโปรด';
	@override String get writeFavorites => 'แก้ไขรายการโปรด';
	@override String get readFollowing => 'ดูข้อมูลว่าใครที่คุณติดตาม';
	@override String get writeFollowing => 'ติดตามหรือเลิกติดตามบัญชีอื่น';
	@override String get readMessaging => 'ดูแชทของคุณ';
	@override String get writeMessaging => 'เขียนหรือลบข้อความแชท';
	@override String get readMutes => 'ดูรายชื่อผู้ใช้ที่ปิดเสียงของคุณ';
	@override String get writeMutes => 'แก้ไขรายชื่อผู้ใช้ที่ถูกปิดเสียง';
	@override String get writeNotes => 'เขียนหรือลบโน้ต';
	@override String get readNotifications => 'ดูการแจ้งเตือนของคุณ';
	@override String get writeNotifications => 'จัดการแจ้งเตือนของคุณ';
	@override String get readReactions => 'ดูรีแอคชั่นของคุณ';
	@override String get writeReactions => 'แก้ไขรีแอคชั่นของคุณ';
	@override String get writeVotes => 'โหวตบนสำรวจความคิดเห็น';
	@override String get readPages => 'ดูหน้าเพจ';
	@override String get writePages => 'แก้ไขหรือลบเพจของคุณ';
	@override String get readPageLikes => 'ดูรายการเพจที่ถูกใจไว้';
	@override String get writePageLikes => 'แก้ไขรายการเพจที่ถูกใจ';
	@override String get readUserGroups => 'ดูกลุ่มผู้ใช้ของคุณ';
	@override String get writeUserGroups => 'แก้ไขหรือลบกลุ่มผู้ใช้ของคุณ';
	@override String get readChannels => 'ดูแชนแนลของคุณ';
	@override String get writeChannels => 'แก้ไขแชนแนลของคุณ';
	@override String get readGallery => 'ดูแกลเลอรี่';
	@override String get writeGallery => 'แก้ไขแกลเลอรี่ของคุณ';
	@override String get readGalleryLikes => 'ดูรายการโพสต์แกลเลอรีที่ถูกใจไว้';
	@override String get writeGalleryLikes => 'แก้ไขรายการโพสต์แกลเลอรีที่ถูกใจไว้';
	@override String get readFlash => 'ดู Play';
	@override String get writeFlash => 'แก้ไข Play';
	@override String get readFlashLikes => 'ดูรายการ  play ที่ถูกใจไว้';
	@override String get writeFlashLikes => 'แก้ไขรายการ play ที่ถูกใจไว้';
	@override String get readAdminAbuseUserReports => 'ดูรายงานจากผู้ใช้';
	@override String get writeAdminDeleteAccount => 'ลบบัญชีผู้ใช้';
	@override String get writeAdminDeleteAllFilesOfAUser => 'ลบไฟล์ทั้งหมดของผู้ใช้';
	@override String get readAdminIndexStats => 'ดูข้อมูลเกี่ยวกับดัชนีฐานข้อมูล';
	@override String get readAdminTableStats => 'ดูข้อมูลเกี่ยวกับตารางฐานข้อมูล';
	@override String get readAdminUserIps => 'ดูที่อยู่ IP ของผู้ใช้';
	@override String get readAdminMeta => 'ดูข้อมูลเมตาของอินสแตนซ์';
	@override String get writeAdminResetPassword => 'รีเซ็ตรหัสผ่านของผู้ใช้';
	@override String get writeAdminResolveAbuseUserReport => 'แก้ไขรายงานจากผู้ใช้';
	@override String get writeAdminSendEmail => 'ส่งอีเมล';
	@override String get readAdminServerInfo => 'ดูข้อมูลเซิร์ฟเวอร์';
	@override String get readAdminShowModerationLog => 'ดูปูมการแก้ไข';
	@override String get readAdminShowUser => 'ดูข้อมูลส่วนตัวของผู้ใช้';
	@override String get readAdminShowUsers => 'ดูข้อมูลส่วนตัวของผู้ใช้';
	@override String get writeAdminSuspendUser => 'ระงับผู้ใช้';
	@override String get writeAdminUnsetUserAvatar => 'ลบอวตารผู้ใช้';
	@override String get writeAdminUnsetUserBanner => 'ลบแบนเนอร์ผู้ใช้';
	@override String get writeAdminUnsuspendUser => 'ยกเลิกการระงับผู้ใช้';
	@override String get writeAdminMeta => 'จัดการข้อมูลเมตาของอินสแตนซ์';
	@override String get writeAdminUserNote => 'จัดการโน้ตการกลั่นกรอง';
	@override String get writeAdminRoles => 'จัดการบทบาท';
	@override String get readAdminRoles => 'ดูบทบาท';
	@override String get writeAdminRelays => 'จัดการรีเลย์';
	@override String get readAdminRelays => 'ดูรีเลย์';
	@override String get writeAdminInviteCodes => 'จัดการรหัสเชิญ';
	@override String get readAdminInviteCodes => 'ดูรหัสเชิญ';
	@override String get writeAdminAnnouncements => 'จัดการประกาศ';
	@override String get readAdminAnnouncements => 'ดูประกาศ';
	@override String get writeAdminAvatarDecorations => 'จัดการการตกแต่งอวตาร';
	@override String get readAdminAvatarDecorations => 'ดูการตกแต่งอวตาร';
	@override String get writeAdminFederation => 'จัดการข้อมูลเกี่ยวกับสหพันธ์';
	@override String get writeAdminAccount => 'จัดการบัญชีผู้ใช้';
	@override String get readAdminAccount => 'ดูข้อมูลเกี่ยวกับผู้ใช้';
	@override String get writeAdminEmoji => 'จัดการเอโมจิ';
	@override String get readAdminEmoji => 'ดูเอโมจิ';
	@override String get writeAdminQueue => 'จัดการคิวงาน';
	@override String get readAdminQueue => 'ดูข้อมูลเกี่ยวกับคิวงาน';
	@override String get writeAdminPromo => 'จัดการโน้ตโปรโมชั่น';
	@override String get writeAdminDrive => 'จัดการไดรฟ์ของผู้ใช้';
	@override String get readAdminDrive => 'ดูข้อมูลเกี่ยวกับไดรฟ์ของผู้ใช้';
	@override String get readAdminStream => 'ใช้ Websocket API สำหรับผู้ดูแลระบบ';
	@override String get writeAdminAd => 'จัดการโฆษณา';
	@override String get readAdminAd => 'ดูโฆษณา';
	@override String get writeInviteCodes => 'สร้างรหัสเชิญ';
	@override String get readInviteCodes => 'รับรหัสเชิญ';
	@override String get writeClipFavorite => 'ควบคุมการถูกใจของคลิป';
	@override String get readClipFavorite => 'ดูการถูกใจของคลิป';
	@override String get readFederation => 'รับข้อมูลเกี่ยวกับสหพันธ์';
	@override String get writeReportAbuse => 'รายงานการละเมิด';
}

// Path: misskey.auth_
class _StringsMisskeyAuthThTh extends _StringsMisskeyAuthEnUs {
	_StringsMisskeyAuthThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'การให้สิทธิ์แอปพลิเคชัน';
	@override String shareAccess({required Object name}) => 'คุณต้องการอนุญาตให้ "${name}" เข้าถึงบัญชีนี้เลยมั้ย?';
	@override String get shareAccessAsk => 'ต้องการอนุญาตให้แอปพลิเคชันนี้เข้าถึงบัญชีของคุณหรือไม่?';
	@override String permission({required Object name}) => '${name} ได้ขอสิทธิ์การเข้าถึงดังต่อไปนี้';
	@override String get permissionAsk => 'แอปพลิเคชันนี้ขอสิทธิ์ดังต่อไปนี้';
	@override String get pleaseGoBack => 'กรุณากลับไปที่แอปพลิเคชัน';
	@override String get callback => 'กำลังกลับไปที่แอปพลิเคชัน';
	@override String get denied => 'ปฏิเสธการเข้าใช้';
	@override String get pleaseLogin => 'กรุณาเข้าสู่ระบบเพื่ออนุมัติแอปพลิเคชัน';
}

// Path: misskey.antennaSources_
class _StringsMisskeyAntennaSourcesThTh extends _StringsMisskeyAntennaSourcesEnUs {
	_StringsMisskeyAntennaSourcesThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get all => 'โน้ตทั้งหมด';
	@override String get homeTimeline => 'โน้ตจากผู้ใช้ที่ติดตาม';
	@override String get users => 'โน้ตจากผู้ใช้ที่เฉพาะเจาะจง';
	@override String get userList => 'โน้ตจากรายชื่อผู้ใช้ที่ระบุ';
	@override String get userBlacklist => 'โน้ตทั้งหมดยกเว้นโน้ตของผู้ใช้ที่ต้องระบุเจาะจงตั้งแต่หนึ่งรายขึ้นไป';
}

// Path: misskey.weekday_
class _StringsMisskeyWeekdayThTh extends _StringsMisskeyWeekdayEnUs {
	_StringsMisskeyWeekdayThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get sunday => 'วันอาทิตย์';
	@override String get monday => 'วันจันทร์';
	@override String get tuesday => 'วันอังคาร';
	@override String get wednesday => 'วันพุธ';
	@override String get thursday => 'วันพฤหัสบดี';
	@override String get friday => 'วันศุกร์';
	@override String get saturday => 'วันเสาร์';
}

// Path: misskey.widgets_
class _StringsMisskeyWidgetsThTh extends _StringsMisskeyWidgetsEnUs {
	_StringsMisskeyWidgetsThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get profile => 'โปรไฟล์';
	@override String get instanceInfo => 'ข้อมูล อินสแตนซ์';
	@override String get memo => 'โน้ตแปะ';
	@override String get notifications => 'การเเจ้งเตือน';
	@override String get timeline => 'ไทม์ไลน์';
	@override String get calendar => 'ปฏิทิน';
	@override String get trends => 'กำลังมาแรง';
	@override String get clock => 'นาฬิกา';
	@override String get rss => 'โปรแกรมอ่าน RSS';
	@override String get rssTicker => 'RSS-ทิกเกอร์';
	@override String get activity => 'กิจกรรม';
	@override String get photos => 'รูปภาพ';
	@override String get digitalClock => 'นาฬิกาดิจิตอล';
	@override String get unixClock => 'นาฬิกา UNIX';
	@override String get federation => 'สหพันธ์';
	@override String get instanceCloud => 'อินสแตนซ์คลาวด์';
	@override String get postForm => 'แบบฟอร์มการโพสต์';
	@override String get slideshow => 'แสดงภาพนิ่ง';
	@override String get button => 'ปุ่ม';
	@override String get onlineUsers => 'ผู้ใช้ที่ออนไลน์';
	@override String get jobQueue => 'คิวงาน';
	@override String get serverMetric => 'ตัวชี้วัดเซิร์ฟเวอร์';
	@override String get aiscript => ' คอนโซล AiScript';
	@override String get aiscriptApp => 'แอป AiScript';
	@override String get aichan => 'ไอ';
	@override String get userList => 'รายชื่อผู้ใช้';
	@override late final _StringsMisskeyWidgetsUserListThTh userList_ = _StringsMisskeyWidgetsUserListThTh._(_root);
	@override String get clicker => 'คลิกเกอร์';
	@override String get birthdayFollowings => 'วันเกิดผู้ใช้ในวันนี้';
}

// Path: misskey.cw_
class _StringsMisskeyCwThTh extends _StringsMisskeyCwEnUs {
	_StringsMisskeyCwThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get hide => 'ซ่อน';
	@override String get show => 'โหลดเพิ่มเติม';
	@override String chars({required Object count}) => '${count} ตัวอักษร';
	@override String files({required Object count}) => '${count} ไฟล์';
}

// Path: misskey.poll_
class _StringsMisskeyPollThTh extends _StringsMisskeyPollEnUs {
	_StringsMisskeyPollThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'จำเป็นต้องมีอย่างน้อยสองตัวเลือก';
	@override String choiceN({required Object n}) => 'ตัวเลือกที่ ${n}';
	@override String get noMore => 'เพิ่มตัวเลือกอีกไม่ได้แล้ว';
	@override String get canMultipleVote => 'สามารถตอบได้หลายคำตอบ';
	@override String get expiration => 'สิ้นสุดโพล';
	@override String get infinite => 'ไม่กำหนดระยะเวลา';
	@override String get at => 'ระบุวันเวลา';
	@override String get after => 'ระบุระยะเวลา';
	@override String get deadlineDate => 'วันสิ้นสุด';
	@override String get deadlineTime => 'เวลา';
	@override String get duration => 'ระยะเวลา';
	@override String votesCount({required Object n}) => '${n} คะแนนเสียง';
	@override String totalVotes({required Object n}) => '${n} คะแนนเสียงทั้งหมด';
	@override String get vote => 'โหวต';
	@override String get showResult => 'ดูผลลัพธ์';
	@override String get voted => 'โหวตแล้ว';
	@override String get closed => 'สิ้นสุดแล้ว';
	@override String remainingDays({required Object d, required Object h}) => 'เหลืออีก ${d} วัน ${h} ชั่วโมง';
	@override String remainingHours({required Object h, required Object m}) => 'เหลืออีก ${h} ชั่วโมง ${m} นาที';
	@override String remainingMinutes({required Object m, required Object s}) => 'เหลืออีก ${m} นาที ${s} วินาที';
	@override String remainingSeconds({required Object s}) => 'เหลืออีก ${s} วินาที';
}

// Path: misskey.visibility_
class _StringsMisskeyVisibilityThTh extends _StringsMisskeyVisibilityEnUs {
	_StringsMisskeyVisibilityThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get public => 'สาธารณะ';
	@override String get publicDescription => 'โน้ตของคุณจะปรากฏแก่ผู้ใช้ทุกคน';
	@override String get home => 'หน้าแรก';
	@override String get homeDescription => 'โพสลงไทม์ไลน์ที่บ้านเท่านั้น';
	@override String get followers => 'ผู้ติดตาม';
	@override String get followersDescription => 'เฉพาะผู้ติดตามเท่านั้นที่มองเห็นได้';
	@override String get specified => 'ไดเร็ค';
	@override String get specifiedDescription => 'ทำให้มองเห็นได้เฉพาะผู้ใช้ที่ระบุเท่านั้น';
	@override String get disableFederation => 'ไม่มีสหพันธ์';
	@override String get disableFederationDescription => 'อย่าส่งไปยังอินสแตนซ์อื่น';
}

// Path: misskey.postForm_
class _StringsMisskeyPostFormThTh extends _StringsMisskeyPostFormEnUs {
	_StringsMisskeyPostFormThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'ตอบกลับโน้ตนี้...';
	@override String get quotePlaceholder => 'อ้างโน้ตนี้...';
	@override String get channelPlaceholder => 'โพสต์ลงช่อง...';
	@override late final _StringsMisskeyPostFormPlaceholdersThTh placeholders_ = _StringsMisskeyPostFormPlaceholdersThTh._(_root);
}

// Path: misskey.profile_
class _StringsMisskeyProfileThTh extends _StringsMisskeyProfileEnUs {
	_StringsMisskeyProfileThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'ชื่อ';
	@override String get username => 'ชื่อผู้ใช้';
	@override String get description => 'แนะนำตัว';
	@override String get youCanIncludeHashtags => 'คุณสามารถใส่แฮชแท็กในส่วนแนะนำตัวของคุณได้';
	@override String get metadata => 'ข้อมูลเพิ่มเติม';
	@override String get metadataEdit => 'แก้ไขข้อมูลเพิ่มเติม';
	@override String get metadataDescription => 'ใช้สิ่งเหล่านี้ คุณสามารถแสดงฟิลด์ข้อมูลเพิ่มเติมในโปรไฟล์ของคุณ';
	@override String get metadataLabel => 'ป้ายชื่อ';
	@override String get metadataContent => 'เนื้อหา';
	@override String get changeAvatar => 'เปลี่ยนอวาตาร์';
	@override String get changeBanner => 'เปลี่ยนแบนเนอร์';
	@override String get verifiedLinkDescription => 'หากป้อน URL ที่มีลิงก์ไปยังโปรไฟล์ของคุณ ไอคอนการยืนยันความเป็นเจ้าของจะแสดงถัดจากฟิลด์นั้น ๆ';
	@override String avatarDecorationMax({required Object max}) => 'คุณสามารถเพิ่มการตกแต่งได้สูงสุด ${max}';
}

// Path: misskey.exportOrImport_
class _StringsMisskeyExportOrImportThTh extends _StringsMisskeyExportOrImportEnUs {
	_StringsMisskeyExportOrImportThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'โน้ตทั้งหมด';
	@override String get favoritedNotes => 'โน้ตที่ถูกใจไว้';
	@override String get clips => 'คลิป';
	@override String get followingList => 'กำลังติดตาม';
	@override String get muteList => 'ปิดเสียง';
	@override String get blockingList => 'บล็อค';
	@override String get userLists => 'รายชื่อ';
	@override String get excludeMutingUsers => 'ยกเว้นผู้ใช้ที่ปิดเสียง';
	@override String get excludeInactiveUsers => 'ยกเว้นผู้ใช้ที่ไม่ได้ใช้งาน';
	@override String get withReplies => 'รวมการตอบกลับจากผู้ใช้ที่นำเข้าไว้ในไทม์ไลน์';
}

// Path: misskey.charts_
class _StringsMisskeyChartsThTh extends _StringsMisskeyChartsEnUs {
	_StringsMisskeyChartsThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get federation => 'สหพันธ์';
	@override String get apRequest => 'คำขอ';
	@override String get usersIncDec => 'ความแตกต่างของจำนวนผู้ใช้งาน';
	@override String get usersTotal => 'จำนวนผู้ใช้งานทั้งหมด';
	@override String get activeUsers => 'จำนวนผู้ใช้งานที่ยังมีความเคลื่อนไหวอยู่';
	@override String get notesIncDec => 'ความแตกต่างของจำนวนโน้ต';
	@override String get localNotesIncDec => 'ความแตกต่างของจำนวนโน้ตท้องถิ่น';
	@override String get remoteNotesIncDec => 'ความแตกต่างของจำนวนโน้ตระยะไกล';
	@override String get notesTotal => 'จำนวนโน้ตทั้งหมด';
	@override String get filesIncDec => 'ความแตกต่างของจำนวนไฟล์';
	@override String get filesTotal => 'จำนวนไฟล์ทั้งหมด';
	@override String get storageUsageIncDec => 'ความแตกต่างในการใช้พื้นที่เก็บข้อมูล';
	@override String get storageUsageTotal => 'การใช้พื้นที่เก็บข้อมูลทั้งหมด';
}

// Path: misskey.instanceCharts_
class _StringsMisskeyInstanceChartsThTh extends _StringsMisskeyInstanceChartsEnUs {
	_StringsMisskeyInstanceChartsThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get requests => 'คำขอ';
	@override String get users => 'ความแตกต่างของจำนวนผู้ใช้งาน';
	@override String get usersTotal => 'จำนวนผู้ใช้งานสะสม';
	@override String get notes => 'ความแตกต่างของจำนวนโน้ต';
	@override String get notesTotal => 'จำนวนโน้ตสะสม';
	@override String get ff => 'ความแตกต่างของจำนวนผู้ใช้ที่ติดตาม / ผู้ติดตาม';
	@override String get ffTotal => 'จำนวนผู้ใช้งานที่ติดตามสะสม / ผู้ติดตาม';
	@override String get cacheSize => 'ความแตกต่างในขนาดของแคช';
	@override String get cacheSizeTotal => 'ขนาดแคชรวมที่สะสม';
	@override String get files => 'ความแตกต่างของจำนวนไฟล์';
	@override String get filesTotal => 'จำนวนไฟล์สะสม';
}

// Path: misskey.timelines_
class _StringsMisskeyTimelinesThTh extends _StringsMisskeyTimelinesEnUs {
	_StringsMisskeyTimelinesThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get home => 'หน้าแรก';
	@override String get local => 'ในพื้นที่';
	@override String get social => 'โซเชี่ยล';
	@override String get global => 'ทั่วโลก';
}

// Path: misskey.play_
class _StringsMisskeyPlayThTh extends _StringsMisskeyPlayEnUs {
	_StringsMisskeyPlayThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'สร้าง Play';
	@override String get edit => 'แก้ไข Play';
	@override String get created => 'สร้าง Play แล้ว';
	@override String get updated => 'แก้ไข Play แล้ว';
	@override String get deleted => 'ลบ Play แล้ว';
	@override String get pageSetting => 'ตั้งค่า Play';
	@override String get editThisPage => 'แก้ไข Play นี้';
	@override String get viewSource => 'ดูต้นฉบับ';
	@override String get my => 'Play ของฉัน';
	@override String get liked => 'Play ที่ถูกใจไว้';
	@override String get featured => 'เป็นที่นิยม';
	@override String get title => 'หัวข้อ';
	@override String get script => 'สคริปต์';
	@override String get summary => 'รายละเอียด';
	@override String get visibilityDescription => 'หากตั้งค่าเป็นส่วนตัว มันจะไม่ปรากฏในโปรไฟล์อีกต่อไป แต่ผู้ที่ทราบ URL ของมันจะยังสามารถเข้าถึงได้';
}

// Path: misskey.pages_
class _StringsMisskeyPagesThTh extends _StringsMisskeyPagesEnUs {
	_StringsMisskeyPagesThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'สร้างหน้าเพจใหม่';
	@override String get editPage => 'แก้ไขหน้าเพจ';
	@override String get readPage => 'กำลังดูแหล่งที่มาของเพจนี้';
	@override String get created => 'สร้างหน้าเพจสำเร็จเรียบร้อยแล้ว';
	@override String get updated => 'แก้ไขหน้าเพจสำเร็จเรียบร้อยแล้ว';
	@override String get deleted => 'ลบหน้าเพจสำเร็จเรียบร้อยแล้ว';
	@override String get pageSetting => 'การตั้งค่าหน้าเพจ';
	@override String get nameAlreadyExists => 'URL ของหน้าที่ระบุนั้นมีอยู่แล้ว';
	@override String get invalidNameTitle => 'URL ของหน้าที่ระบุนั้นไม่ถูกต้อง';
	@override String get invalidNameText => 'ตรวจสอบให้แน่ใจนะว่าชื่อหน้าไม่ว่างเปล่า';
	@override String get editThisPage => 'แก้ไขเพจนี้';
	@override String get viewSource => 'ดูต้นฉบับ';
	@override String get viewPage => 'ดูหน้าเพจ';
	@override String get like => 'ถูกใจ';
	@override String get unlike => 'เลิกถูกใจ';
	@override String get my => 'หน้าเพจของฉัน';
	@override String get liked => 'หน้าเพจที่ถูกใจ';
	@override String get featured => 'เป็นที่นิยม';
	@override String get inspector => 'ตัวตรวจสอบ';
	@override String get contents => 'เนื้อหา';
	@override String get content => 'บล็อคหน้าเพจ';
	@override String get variables => 'ตัวแปร';
	@override String get title => 'หัวข้อ';
	@override String get url => 'URL ของหน้า';
	@override String get summary => 'สรุปเพจ';
	@override String get alignCenter => 'เซ็นเตอร์';
	@override String get hideTitleWhenPinned => 'ซ่อนชื่อหน้าเพจเมื่อปักหมุดไว้ที่โปรไฟล์';
	@override String get font => 'แบบอักษร';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
	@override String get eyeCatchingImageSet => 'ตั้งค่าภาพขนาดย่อ';
	@override String get eyeCatchingImageRemove => 'ลบภาพขนาดย่อ';
	@override String get chooseBlock => 'เพิ่มบล็อค';
	@override String get selectType => 'เลือกชนิด';
	@override String get contentBlocks => 'เนื้อหา';
	@override String get inputBlocks => 'ป้อนข้อมูล';
	@override String get specialBlocks => 'พิเศษ';
	@override late final _StringsMisskeyPagesBlocksThTh blocks = _StringsMisskeyPagesBlocksThTh._(_root);
}

// Path: misskey.relayStatus_
class _StringsMisskeyRelayStatusThTh extends _StringsMisskeyRelayStatusEnUs {
	_StringsMisskeyRelayStatusThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'กำลังรอการยืนยัน';
	@override String get accepted => 'ได้รับการอนุมัติ';
	@override String get rejected => 'ถูกปฏิเสธ';
}

// Path: misskey.notification_
class _StringsMisskeyNotificationThTh extends _StringsMisskeyNotificationEnUs {
	_StringsMisskeyNotificationThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'ไฟล์ถูกอัปโหลดแล้ว';
	@override String youGotMention({required Object name}) => '${name} กล่าวถึงคุณ';
	@override String youGotReply({required Object name}) => '${name} ตอบกลับถึงคุณ';
	@override String youGotQuote({required Object name}) => '${name} อ้างอิงคุณ';
	@override String youRenoted({required Object name}) => 'รีโน้ตจาก ${name}';
	@override String get youWereFollowed => 'ได้ติดตามคุณ';
	@override String get youReceivedFollowRequest => 'ได้รับคำขอติดตาม';
	@override String get yourFollowRequestAccepted => 'คำขอติดตามได้รับการอนุมัติแล้ว';
	@override String get pollEnded => 'ผลโพลออกมาแล้ว';
	@override String get newNote => 'โพสต์ใหม่';
	@override String unreadAntennaNote({required Object name}) => 'เสาอากาศ ${name}';
	@override String get roleAssigned => 'ได้รับบทบาท';
	@override String get emptyPushNotificationMessage => 'อัปเดตการแจ้งเตือนแบบพุชแล้ว';
	@override String get achievementEarned => 'รับความสำเร็จ';
	@override String get testNotification => 'ทดสอบการแจ้งเตือน';
	@override String get checkNotificationBehavior => 'กดเพื่อดูลักษณะการแจ้งเตือน';
	@override String get sendTestNotification => 'ส่งทดสอบการแจ้งเตือน';
	@override String get notificationWillBeDisplayedLikeThis => 'การแจ้งเตือนมีลักษณะแบบนี้';
	@override String reactedBySomeUsers({required Object n}) => 'ถูกรีแอคชั่นโดยผู้ใช้ ${n} ราย';
	@override String likedBySomeUsers({required Object n}) => '${n} คนถูกใจ';
	@override String renotedBySomeUsers({required Object n}) => 'รีโน้ตจากผู้ใช้ ${n} ราย';
	@override String followedBySomeUsers({required Object n}) => 'มีผู้ติดตาม ${n} ราย';
	@override String get flushNotification => 'ล้างประวัติการแจ้งเตือน';
	@override late final _StringsMisskeyNotificationTypesThTh types_ = _StringsMisskeyNotificationTypesThTh._(_root);
	@override late final _StringsMisskeyNotificationActionsThTh actions_ = _StringsMisskeyNotificationActionsThTh._(_root);
}

// Path: misskey.deck_
class _StringsMisskeyDeckThTh extends _StringsMisskeyDeckEnUs {
	_StringsMisskeyDeckThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'แสดงคอลัมน์หลักเสมอ';
	@override String get columnAlign => 'จัดแนวคอลัมน์';
	@override String get addColumn => 'เพิ่มคอลัมน์';
	@override String get configureColumn => 'ตั้งค่าคอลัมน์';
	@override String get swapLeft => 'ขยับไปทางซ้าย';
	@override String get swapRight => 'ขยับไปทางขวา';
	@override String get swapUp => 'เลื่อนขึ้น';
	@override String get swapDown => 'เลื่อนลง';
	@override String get stackLeft => 'กองกับคอลัมน์ด้านซ้าย';
	@override String get popRight => 'ป๊อปคอลัมน์ไปทางขวา';
	@override String get profile => 'โปรไฟล์';
	@override String get newProfile => 'โปรไฟล์ใหม่';
	@override String get deleteProfile => 'ลบโปรไฟล์';
	@override String get introduction => 'สร้างอินเทอร์เฟซที่สมบูรณ์แบบสำหรับคุณโดยจัดเรียงคอลัมน์ได้อย่างอิสระ!';
	@override String get introduction2 => 'คลิกที่เครื่องหมาย + ทางขวาของหน้าจอเพื่อเพิ่มคอลัมน์ใหม่ทุกครั้งที่คุณต้องการ';
	@override String get widgetsIntroduction => 'กรุณาเลือก "แก้ไขวิดเจ็ต" ในเมนูคอลัมน์และเพิ่มวิดเจ็ต';
	@override String get useSimpleUiForNonRootPages => 'แสดง UI ของ Root Page อย่างง่าย ';
	@override String get usedAsMinWidthWhenFlexible => 'ความกว้างขั้นต่ำนั้นจะถูกใช้งานสำหรับสิ่งนี้เมื่อเปิดใช้งานตัวเลือก "ปรับความกว้างอัตโนมัติ" หากเลือกเปิดใช้งานแล้ว';
	@override String get flexible => 'ปรับความกว้างอัตโนมัติ';
	@override late final _StringsMisskeyDeckColumnsThTh columns_ = _StringsMisskeyDeckColumnsThTh._(_root);
}

// Path: misskey.dialog_
class _StringsMisskeyDialogThTh extends _StringsMisskeyDialogEnUs {
	_StringsMisskeyDialogThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => 'คุณกำลังมีตัวอักขระเกินขีดจำกัดสูงสุดแล้วนะ! ปัจจุบันอยู่ที่ ${current} จาก ${max}';
	@override String charactersBelow({required Object current, required Object min}) => 'คุณกำลังใช้อักขระต่ำกว่าขีดจำกัดขั้นต่ำเลยนะ! ปัจจุบันอยู่ที่ ${current} จาก ${min}';
}

// Path: misskey.disabledTimeline_
class _StringsMisskeyDisabledTimelineThTh extends _StringsMisskeyDisabledTimelineEnUs {
	_StringsMisskeyDisabledTimelineThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ปิดใช้งานไทม์ไลน์';
	@override String get description => 'คุณไม่สามารถใช้ไทม์ไลน์นี้ภายใต้บทบาทปัจจุบันของคุณได้';
}

// Path: misskey.drivecleaner_
class _StringsMisskeyDrivecleanerThTh extends _StringsMisskeyDrivecleanerEnUs {
	_StringsMisskeyDrivecleanerThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'ขนาดไฟล์จากมากไปหาน้อย';
	@override String get orderByCreatedAtAsc => 'วันที่จากน้อยไปหามาก';
}

// Path: misskey.webhookSettings_
class _StringsMisskeyWebhookSettingsThTh extends _StringsMisskeyWebhookSettingsEnUs {
	_StringsMisskeyWebhookSettingsThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'สร้าง Webhook';
	@override String get name => 'ชื่อ';
	@override String get secret => 'ความลับ';
	@override String get events => 'อีเว้นท์ Webhook';
	@override String get active => 'เปิดใช้งาน';
	@override late final _StringsMisskeyWebhookSettingsEventsThTh events_ = _StringsMisskeyWebhookSettingsEventsThTh._(_root);
}

// Path: misskey.moderationLogTypes_
class _StringsMisskeyModerationLogTypesThTh extends _StringsMisskeyModerationLogTypesEnUs {
	_StringsMisskeyModerationLogTypesThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get createRole => 'สร้างบทบาทแล้ว';
	@override String get deleteRole => 'ลบบทบาทแล้ว';
	@override String get updateRole => 'อัปเดตบทบาทแล้ว';
	@override String get assignRole => 'ได้รับมอบหมายบทบาท';
	@override String get unassignRole => 'ถอดออกจากบทบาทแล้ว';
	@override String get suspend => 'ระงับ';
	@override String get unsuspend => 'เลิกระงับ';
	@override String get addCustomEmoji => 'เพิ่มเอโมจิที่กำหนดเองแล้ว';
	@override String get updateCustomEmoji => 'อัปเดตเอโมจิที่กำหนดเองแล้ว';
	@override String get deleteCustomEmoji => 'ลบเอโมจิที่กำหนดเองออกแล้ว';
	@override String get updateServerSettings => 'อัปเดตการตั้งค่าเซิร์ฟเวอร์แล้ว';
	@override String get updateUserNote => 'อัปเดตโน้ตการกลั่นกรองแล้ว';
	@override String get deleteDriveFile => 'ลบไฟล์ออกแล้ว';
	@override String get deleteNote => 'ลบโน้ตออกแล้ว';
	@override String get createGlobalAnnouncement => 'สร้างประกาศทั่วโลกแล้ว';
	@override String get createUserAnnouncement => 'สร้างประกาศผู้ใช้แล้ว';
	@override String get updateGlobalAnnouncement => 'อัปเดตประกาศทั่วโลกแล้ว';
	@override String get updateUserAnnouncement => 'อัปเดตประกาศผู้ใช้แล้ว';
	@override String get deleteGlobalAnnouncement => 'ลบประกาศทั่วโลกออกแล้ว';
	@override String get deleteUserAnnouncement => 'ลบประกาศผู้ใช้ออกแล้ว';
	@override String get resetPassword => 'รีเซ็ตรหัสผ่าน';
	@override String get suspendRemoteInstance => 'ระงับอินสแตนซ์ระยะไกล';
	@override String get unsuspendRemoteInstance => 'เลิกระงับอินสแตนซ์ระยะไกล';
	@override String get updateRemoteInstanceNote => 'อัปเดตโน้ตการกลั่นกรองของอินสแตนซ์ระยะไกลแล้ว';
	@override String get markSensitiveDriveFile => 'ทำเครื่องหมายไฟล์ว่ามีเนื้อหาละเอียดอ่อน';
	@override String get unmarkSensitiveDriveFile => 'ยกเลิกทำเครื่องหมายไฟล์ว่ามีเนื้อหาละเอียดอ่อน';
	@override String get resolveAbuseReport => 'รายงานได้รับการแก้ไขแล้ว';
	@override String get createInvitation => 'สร้างรหัสเชิญ';
	@override String get createAd => 'สร้างโฆษณาแล้ว';
	@override String get deleteAd => 'ลบโฆษณาออกแล้ว';
	@override String get updateAd => 'อัปเดตโฆษณาแล้ว';
	@override String get createAvatarDecoration => 'สร้างการตกแต่งไอคอนแล้ว';
	@override String get updateAvatarDecoration => 'อัปเดตการตกแต่งไอคอนแล้ว';
	@override String get deleteAvatarDecoration => 'ลบการตกแต่งไอคอนแล้ว';
	@override String get unsetUserAvatar => 'ลบไอคอนผู้ใช้';
	@override String get unsetUserBanner => 'ลบแบนเนอร์ผู้ใช้';
}

// Path: misskey.fileViewer_
class _StringsMisskeyFileViewerThTh extends _StringsMisskeyFileViewerEnUs {
	_StringsMisskeyFileViewerThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'รายละเอียดไฟล์';
	@override String get type => 'ประเภทไฟล์';
	@override String get size => 'ขนาดไฟล์';
	@override String get url => 'URL';
	@override String get uploadedAt => 'วันที่เข้าร่วม';
	@override String get attachedNotes => 'โน้ตที่แนบมาด้วย';
	@override String get thisPageCanBeSeenFromTheAuthor => 'หน้าเพจนี้จะสามารถปรากฏได้โดยผู้ใช้ที่อัปโหลดไฟล์นี้เท่านั้น';
}

// Path: misskey.externalResourceInstaller_
class _StringsMisskeyExternalResourceInstallerThTh extends _StringsMisskeyExternalResourceInstallerEnUs {
	_StringsMisskeyExternalResourceInstallerThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ติดตั้งจากไซต์ภายนอก';
	@override String get checkVendorBeforeInstall => 'โปรดตรวจสอบให้แน่ใจว่าแหล่งแจกหน่ายมีความน่าเชื่อถือก่อนทำการติดตั้ง';
	@override late final _StringsMisskeyExternalResourceInstallerPluginThTh plugin_ = _StringsMisskeyExternalResourceInstallerPluginThTh._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerThemeThTh theme_ = _StringsMisskeyExternalResourceInstallerThemeThTh._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerMetaThTh meta_ = _StringsMisskeyExternalResourceInstallerMetaThTh._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerVendorInfoThTh vendorInfo_ = _StringsMisskeyExternalResourceInstallerVendorInfoThTh._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsThTh errors_ = _StringsMisskeyExternalResourceInstallerErrorsThTh._(_root);
}

// Path: misskey.dataSaver_
class _StringsMisskeyDataSaverThTh extends _StringsMisskeyDataSaverEnUs {
	_StringsMisskeyDataSaverThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyDataSaverMediaThTh media_ = _StringsMisskeyDataSaverMediaThTh._(_root);
	@override late final _StringsMisskeyDataSaverAvatarThTh avatar_ = _StringsMisskeyDataSaverAvatarThTh._(_root);
	@override late final _StringsMisskeyDataSaverUrlPreviewThTh urlPreview_ = _StringsMisskeyDataSaverUrlPreviewThTh._(_root);
	@override late final _StringsMisskeyDataSaverCodeThTh code_ = _StringsMisskeyDataSaverCodeThTh._(_root);
}

// Path: misskey.hemisphere_
class _StringsMisskeyHemisphereThTh extends _StringsMisskeyHemisphereEnUs {
	_StringsMisskeyHemisphereThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get N => 'ซีกโลกเหนือ';
	@override String get S => 'ซีกโลกใต้';
	@override String get caption => 'ใช้เพื่อกำหนดฤดูกาลของไคลเอ็นต์';
}

// Path: misskey.reversi_
class _StringsMisskeyReversiThTh extends _StringsMisskeyReversiEnUs {
	_StringsMisskeyReversiThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get reversi => 'รีเวอร์ซี';
	@override String get gameSettings => 'ตั้งค่าการเล่น';
	@override String get chooseBoard => 'เลือกกระดาน';
	@override String get blackOrWhite => 'ดำ/ขาว';
	@override String blackIs({required Object name}) => '${name}เป็นสีดำ';
	@override String get rules => 'กฎ';
	@override String get thisGameIsStartedSoon => 'การเล่นจะเริ่มแล้ว';
	@override String get waitingForOther => 'กำลังรออีกฝ่ายเตรียมตัวให้เสร็จ';
	@override String get waitingForMe => 'กำลังรอฝ่ายคุณเตรียมตัวให้เสร็จ';
	@override String get waitingBoth => 'กรุณาเตรียมตัว';
	@override String get ready => 'เตรียมตัวพร้อมแล้ว';
	@override String get cancelReady => 'ยกเลิกการเตรียมตัวพร้อม';
	@override String get opponentTurn => 'ตาอีกฝ่าย';
	@override String get myTurn => 'ตาของคุณ';
	@override String turnOf({required Object name}) => 'ตาของ${name}';
	@override String pastTurnOf({required Object name}) => 'ตาของ${name}';
	@override String get surrender => 'ยอมแพ้';
	@override String get surrendered => 'ยอมแพ้แล้ว';
	@override String get timeout => 'หมดเวลาแล้ว';
	@override String get drawn => 'เสมอ';
	@override String won({required Object name}) => '${name}ชนะ';
	@override String get black => 'ดำ';
	@override String get white => 'ขาว';
	@override String get total => 'รวมทั้งหมด';
	@override String turnCount({required Object count}) => 'ตาที่${count}';
	@override String get myGames => 'การเล่นของตัวเอง';
	@override String get allGames => 'การเล่นของทุกคน';
	@override String get ended => 'จบ';
	@override String get playing => 'กำลังเล่น';
	@override String get isLlotheo => 'คนที่มีตัวหมากน้อยกว่าชนะ (Roseo)';
	@override String get loopedMap => 'ลูปแมป';
	@override String get canPutEverywhere => 'โหมดที่สามารถวางได้ทุกที่';
	@override String get timeLimitForEachTurn => 'จำกัดเวลาต่อแต่ละตา';
	@override String get freeMatch => 'ฟรีแมตช์';
	@override String get lookingForPlayer => 'กำลังมองหาคู่ต่อสู้อยู่';
	@override String get gameCanceled => 'ยกเลิกการเล่นแล้ว';
	@override String get shareToTlTheGameWhenStart => 'โพสต์ลงไทม์ไลน์เมื่อเริ่มการเล่น';
	@override String get iStartedAGame => 'เริ่มเล่นหมากรีเวอร์ซีแล้ว! #MisskeyReversi';
	@override String get opponentHasSettingsChanged => 'อีกฝ่ายเปลี่ยนการตั้งค่า';
	@override String get allowIrregularRules => 'อนุญาตกฎที่ไม่ปรกติ (โหมดฟรีทุกอย่าง)';
	@override String get disallowIrregularRules => 'ไม่อนุญาตกฎที่ไม่ปรกติ';
	@override String get showBoardLabels => 'แสดงหมายเลขแถว/คอลัมน์บนกระดาน';
	@override String get useAvatarAsStone => 'ใช้รูปอวตารเป็นหมาก';
}

// Path: misskey.offlineScreen_
class _StringsMisskeyOfflineScreenThTh extends _StringsMisskeyOfflineScreenEnUs {
	_StringsMisskeyOfflineScreenThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ออฟไลน์ - ไม่สามารถเชื่อมต่อกับเซิร์ฟเวอร์ได้';
	@override String get header => 'ไม่สามารถเชื่อมต่อกับเซิร์ฟเวอร์ได้';
}

// Path: misskey.urlPreviewSetting_
class _StringsMisskeyUrlPreviewSettingThTh extends _StringsMisskeyUrlPreviewSettingEnUs {
	_StringsMisskeyUrlPreviewSettingThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การตั้งค่าการแสดงตัวอย่าง URL';
	@override String get enable => 'เปิดใช้งานการแสดงตัวอย่าง URL';
	@override String get timeout => 'เวลาจำกัดในการโหลดตัวอย่าง URL (ms)';
	@override String get timeoutDescription => 'หากเวลาที่ใช้ในการโหลดเกินค่านี้ จะไม่มีการสร้างการแสดงตัวอย่าง';
	@override String get maximumContentLength => 'ค่าสูงสุดของ Content-Length (byte)';
	@override String get maximumContentLengthDescription => 'หาก Content-Length เกินค่านี้ จะไม่มีการสร้างการแสดงตัวอย่าง';
	@override String get requireContentLength => 'สร้างการแสดงตัวอย่างเฉพาะในกรณีที่รับ Content-Length ไหว';
	@override String get requireContentLengthDescription => 'หากเซิร์ฟเวอร์อื่นไม่ส่งคืน Content-Length จะไม่มีการสร้างการแสดงตัวอย่าง';
	@override String get userAgent => 'User-Agent';
	@override String get userAgentDescription => 'ตั้งค่า User-Agent ที่ใช้ในการรับการแสดงตัวอย่าง หากเว้นว่างไว้ ระบบจะใช้ User-Agent เริ่มต้น';
	@override String get summaryProxy => 'endpoint ของพร็อกซีที่สร้างการแสดงตัวอย่าง';
	@override String get summaryProxyDescription => 'สร้างการแสดงตัวอย่างด้วย summary Proxy แทนที่จะใช้เนื้อหา Misskey';
	@override String get summaryProxyDescription2 => 'พารามิเตอร์ต่อไปนี้จะถูกใช้เป็นสตริงการสืบค้นเพื่อเชื่อมต่อกับพร็อกซี หากฝั่งพร็อกซีไม่รองรับการตั้งค่าเหล่านี้จะถูกละเว้น';
}

// Path: misskey.mediaControls_
class _StringsMisskeyMediaControlsThTh extends _StringsMisskeyMediaControlsEnUs {
	_StringsMisskeyMediaControlsThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get pip => 'รูปภาพในรูปภาม';
	@override String get playbackRate => 'ความเร็วในการเล่น';
	@override String get loop => 'เล่นวนซ้ำ';
}

// Path: misskey.bubbleGame_.score_
class _StringsMisskeyBubbleGameScoreThTh extends _StringsMisskeyBubbleGameScoreEnUs {
	_StringsMisskeyBubbleGameScoreThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get score => 'คะแนน';
	@override String get scoreYen => 'จำนวนเงินที่ได้รับ';
	@override String get highScore => 'คะแนนสูงสุด';
	@override String get maxChain => 'จำนวน chain สูงสุด';
	@override String yen({required Object yen}) => '${yen} เยน';
	@override String estimatedQty({required Object qty}) => '${qty} อัน';
	@override String scoreSweets({required Object onigiriQtyWithUnit}) => 'โอนิงิริ ${onigiriQtyWithUnit}';
}

// Path: misskey.bubbleGame_.howToPlay_
class _StringsMisskeyBubbleGameHowToPlayThTh extends _StringsMisskeyBubbleGameHowToPlayEnUs {
	_StringsMisskeyBubbleGameHowToPlayThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get section1 => 'ขยับตำแหน่งและวางวัตถุลงในกล่อง';
	@override String get section2 => 'เมื่อวัตถุประเภทเดียวกันมารวมกัน พวกมันจะกลายเป็นวัตถุใหม่และคุณจะได้รับคะแนน';
	@override String get section3 => 'หากวัตถุล้นออกมาจากกล่อง เกมก็จะจบลง ตั้งเป้าทำคะแนนให้สูงด้วยการหลอมวัตถุต่าง ๆ โดยไม่ทำให้ล้นกล่อง!';
}

// Path: misskey.initialTutorial_.landing_
class _StringsMisskeyInitialTutorialLandingThTh extends _StringsMisskeyInitialTutorialLandingEnUs {
	_StringsMisskeyInitialTutorialLandingThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ยินดีต้อนรับสู่บทช่วยสอน';
	@override String get description => 'คุณสามารถตรวจสอบการใช้งานและฟังก์ชั่นพื้นฐานของ Misskey ได้ที่นี่';
}

// Path: misskey.initialTutorial_.note_
class _StringsMisskeyInitialTutorialNoteThTh extends _StringsMisskeyInitialTutorialNoteEnUs {
	_StringsMisskeyInitialTutorialNoteThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'โน้ตคืออะไร?';
	@override String get description => 'โพสต์ใน Misskey เรียกว่า “โน้ต” ซึ่งจะจัดเรียงตามลำดับเวลาบนไทม์ไลน์และอัปเดตแบบเรียลไทม์';
	@override String get reply => 'คุณสามารถตอบกลับได้ และคุณยังสามารถตอบกลับใส่การตอบกลับเพื่อสนทนาต่อได้เสมือนดั่งเธรด';
	@override String get renote => 'คุณสามารถแชร์โน้ตไปยังไทม์ไลน์ของคุณเอง คุณยังสามารถเพิ่มข้อความและเครื่องหมายคำพูดได้';
	@override String get reaction => 'คุณสามารถเพิ่มรีแอคชั่นได้ รายละเอียดจะอธิบายอยู่ในหน้าถัดไป';
	@override String get menu => 'คุณสามารถดูรายละเอียดโน้ต คัดลอกลิงก์ และดำเนินการอื่นๆ ได้';
}

// Path: misskey.initialTutorial_.reaction_
class _StringsMisskeyInitialTutorialReactionThTh extends _StringsMisskeyInitialTutorialReactionEnUs {
	_StringsMisskeyInitialTutorialReactionThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'รีแอคชั่นคืออะไร?';
	@override String get description => 'โน้ตสามารถ“รีแอคชั่น”ด้วยเอโมจิต่างๆ ซึ่งทำให้สามารถแสดงความแตกต่างเล็กๆ น้อยๆ ที่อาจไม่สามารถสื่อออกมาได้ด้วยการแค่การกด “ถูกใจ”';
	@override String get letsTryReacting => 'คุณสามารถเพิ่มรีแอคชั่นได้ด้วยการคลิกปุ่ม “+” บนโน้ต ลองรีแอคชั่นโน้ตตัวอย่างนี้ดูสิ!';
	@override String get reactToContinue => 'เพิ่มรีแอคชั่นเพื่อดำเนินการต่อ';
	@override String get reactNotification => 'คุณจะได้รับการแจ้งเตือนแบบเรียลไทม์เมื่อมีคนตอบรีแอคชั่นโน้ตของคุณ';
	@override String get reactDone => 'คุณสามารถยกเลิกรีแอคชั่นได้โดยการกดปุ่ม “-”';
}

// Path: misskey.initialTutorial_.timeline_
class _StringsMisskeyInitialTutorialTimelineThTh extends _StringsMisskeyInitialTutorialTimelineEnUs {
	_StringsMisskeyInitialTutorialTimelineThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'แนวคิดเรื่องของไทม์ไลน์';
	@override String get description1 => 'Misskey มีหลายไทม์ไลน์ขึ้นอยู่กับวิธีการใช้งานของคุณ (บางไทม์ไลน์อาจไม่สามารถใช้ได้ขึ้นอยู่กับนโยบายของเซิร์ฟเวอร์)';
	@override String get home => 'คุณสามารถดูโพสต์จากบัญชีที่คุณติดตามได้';
	@override String get local => 'คุณสามารถดูโพสต์จากผู้ใช้ทั้งหมดบนเซิร์ฟเวอร์นี้';
	@override String get social => 'โพสต์จากทั้งไทม์ไลน์หน้าแรกและไทม์ไลน์ในพื้นที่ของคุณจะปรากฏขึ้น';
	@override String get global => 'คุณสามารถดูโพสต์จากเซิร์ฟเวอร์ที่เชื่อมต่ออื่นๆ ทั้งหมดได้';
	@override String get description2 => 'คุณสามารถสลับระหว่างแต่ละไทม์ไลน์ได้ตลอดเวลาได้ที่บริเวณด้านบนของหน้าจอ';
	@override String description3({required Object link}) => 'นอกจากนี้ยังมีรายการไทม์ไลน์ ไทม์ไลน์ของช่อง ฯลฯ โปรดดู ${link} สำหรับรายละเอียดเพิ่มเติม';
}

// Path: misskey.initialTutorial_.postNote_
class _StringsMisskeyInitialTutorialPostNoteThTh extends _StringsMisskeyInitialTutorialPostNoteEnUs {
	_StringsMisskeyInitialTutorialPostNoteThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ตั้งค่าการโพสต์โน้ต';
	@override String get description1 => 'เมื่อโพสต์โน้ตบน Misskey คุณสามารถตั้งค่าตัวเลือกต่างๆ ได้ แบบฟอร์มการส่งมีลักษณะดังนี้';
	@override late final _StringsMisskeyInitialTutorialPostNoteVisibilityThTh visibility_ = _StringsMisskeyInitialTutorialPostNoteVisibilityThTh._(_root);
	@override late final _StringsMisskeyInitialTutorialPostNoteCwThTh cw_ = _StringsMisskeyInitialTutorialPostNoteCwThTh._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveThTh extends _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'จะทำเครื่องหมายไฟล์แนบว่ามีเนื้อหาละเอียดอ่อนได้อย่างไร?';
	@override String get description => 'ทำเครื่องหมายไฟล์แนบว่า “มีเนื้อหาละเอียดอ่อน” เมื่อจำเป็นตามแนวทางของเซิร์ฟเวอร์ หรือเมื่อไฟล์แนบไม่ควรปรากฏให้เห็น';
	@override String get tryThisFile => 'ลองทำให้รูปภาพที่แนบมากับแบบฟอร์มนี้มีเนื้อหาละเอียดอ่อน!';
	@override late final _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteThTh exampleNote_ = _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteThTh._(_root);
	@override String get method => 'หากต้องการทำให้ไฟล์แนบมีเนื้อหาละเอียดอ่อน ให้คลิกไฟล์เพื่อเปิดเมนูแล้วคลิก “ทำเครื่องหมายว่ามีเนื้อหาละเอียดอ่อน”';
	@override String get sensitiveSucceeded => 'เมื่อแนบไฟล์ โปรดตั้งค่าเครื่องหมายว่ามีเนื้อหาละเอียดอ่อนตามแนวทางของเซิร์ฟเวอร์';
	@override String get doItToContinue => 'ทำเครื่องหมายกับรูปภาพว่ามีเนื้อหาละเอียดอ่อน เพื่อดำเนินการต่อ';
}

// Path: misskey.initialTutorial_.done_
class _StringsMisskeyInitialTutorialDoneThTh extends _StringsMisskeyInitialTutorialDoneEnUs {
	_StringsMisskeyInitialTutorialDoneThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'บทเรียนจบลงแล้วจ้า เย่เย่เย่  🎉';
	@override String description({required Object link}) => 'คุณสมบัติที่แนะนำในที่นี่เป็นเพียงบางส่วนเท่านั้น หากต้องการเรียนรู้เพิ่มเติมเกี่ยวกับวิธีใช้ Misskey โปรดไปที่ ${link}';
}

// Path: misskey.achievements_.types_
class _StringsMisskeyAchievementsTypesThTh extends _StringsMisskeyAchievementsTypesEnUs {
	_StringsMisskeyAchievementsTypesThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAchievementsTypesNotes1ThTh notes1_ = _StringsMisskeyAchievementsTypesNotes1ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10ThTh notes10_ = _StringsMisskeyAchievementsTypesNotes10ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100ThTh notes100_ = _StringsMisskeyAchievementsTypesNotes100ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes500ThTh notes500_ = _StringsMisskeyAchievementsTypesNotes500ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes1000ThTh notes1000_ = _StringsMisskeyAchievementsTypesNotes1000ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes5000ThTh notes5000_ = _StringsMisskeyAchievementsTypesNotes5000ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10000ThTh notes10000_ = _StringsMisskeyAchievementsTypesNotes10000ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes20000ThTh notes20000_ = _StringsMisskeyAchievementsTypesNotes20000ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes30000ThTh notes30000_ = _StringsMisskeyAchievementsTypesNotes30000ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes40000ThTh notes40000_ = _StringsMisskeyAchievementsTypesNotes40000ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes50000ThTh notes50000_ = _StringsMisskeyAchievementsTypesNotes50000ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes60000ThTh notes60000_ = _StringsMisskeyAchievementsTypesNotes60000ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes70000ThTh notes70000_ = _StringsMisskeyAchievementsTypesNotes70000ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes80000ThTh notes80000_ = _StringsMisskeyAchievementsTypesNotes80000ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes90000ThTh notes90000_ = _StringsMisskeyAchievementsTypesNotes90000ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100000ThTh notes100000_ = _StringsMisskeyAchievementsTypesNotes100000ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin3ThTh login3_ = _StringsMisskeyAchievementsTypesLogin3ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin7ThTh login7_ = _StringsMisskeyAchievementsTypesLogin7ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin15ThTh login15_ = _StringsMisskeyAchievementsTypesLogin15ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin30ThTh login30_ = _StringsMisskeyAchievementsTypesLogin30ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin60ThTh login60_ = _StringsMisskeyAchievementsTypesLogin60ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin100ThTh login100_ = _StringsMisskeyAchievementsTypesLogin100ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin200ThTh login200_ = _StringsMisskeyAchievementsTypesLogin200ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin300ThTh login300_ = _StringsMisskeyAchievementsTypesLogin300ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin400ThTh login400_ = _StringsMisskeyAchievementsTypesLogin400ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin500ThTh login500_ = _StringsMisskeyAchievementsTypesLogin500ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin600ThTh login600_ = _StringsMisskeyAchievementsTypesLogin600ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin700ThTh login700_ = _StringsMisskeyAchievementsTypesLogin700ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin800ThTh login800_ = _StringsMisskeyAchievementsTypesLogin800ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin900ThTh login900_ = _StringsMisskeyAchievementsTypesLogin900ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin1000ThTh login1000_ = _StringsMisskeyAchievementsTypesLogin1000ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteClipped1ThTh noteClipped1_ = _StringsMisskeyAchievementsTypesNoteClipped1ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteFavorited1ThTh noteFavorited1_ = _StringsMisskeyAchievementsTypesNoteFavorited1ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesMyNoteFavorited1ThTh myNoteFavorited1_ = _StringsMisskeyAchievementsTypesMyNoteFavorited1ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesProfileFilledThTh profileFilled_ = _StringsMisskeyAchievementsTypesProfileFilledThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesMarkedAsCatThTh markedAsCat_ = _StringsMisskeyAchievementsTypesMarkedAsCatThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing1ThTh following1_ = _StringsMisskeyAchievementsTypesFollowing1ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing10ThTh following10_ = _StringsMisskeyAchievementsTypesFollowing10ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing50ThTh following50_ = _StringsMisskeyAchievementsTypesFollowing50ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing100ThTh following100_ = _StringsMisskeyAchievementsTypesFollowing100ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing300ThTh following300_ = _StringsMisskeyAchievementsTypesFollowing300ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers1ThTh followers1_ = _StringsMisskeyAchievementsTypesFollowers1ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers10ThTh followers10_ = _StringsMisskeyAchievementsTypesFollowers10ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers50ThTh followers50_ = _StringsMisskeyAchievementsTypesFollowers50ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers100ThTh followers100_ = _StringsMisskeyAchievementsTypesFollowers100ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers300ThTh followers300_ = _StringsMisskeyAchievementsTypesFollowers300ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers500ThTh followers500_ = _StringsMisskeyAchievementsTypesFollowers500ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers1000ThTh followers1000_ = _StringsMisskeyAchievementsTypesFollowers1000ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesCollectAchievements30ThTh collectAchievements30_ = _StringsMisskeyAchievementsTypesCollectAchievements30ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesViewAchievements3minThTh viewAchievements3min_ = _StringsMisskeyAchievementsTypesViewAchievements3minThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesILoveMisskeyThTh iLoveMisskey_ = _StringsMisskeyAchievementsTypesILoveMisskeyThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesFoundTreasureThTh foundTreasure_ = _StringsMisskeyAchievementsTypesFoundTreasureThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesClient30minThTh client30min_ = _StringsMisskeyAchievementsTypesClient30minThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesClient60minThTh client60min_ = _StringsMisskeyAchievementsTypesClient60minThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteDeletedWithin1minThTh noteDeletedWithin1min_ = _StringsMisskeyAchievementsTypesNoteDeletedWithin1minThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesPostedAtLateNightThTh postedAtLateNight_ = _StringsMisskeyAchievementsTypesPostedAtLateNightThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesPostedAt0min0secThTh postedAt0min0sec_ = _StringsMisskeyAchievementsTypesPostedAt0min0secThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesSelfQuoteThTh selfQuote_ = _StringsMisskeyAchievementsTypesSelfQuoteThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesHtl20npmThTh htl20npm_ = _StringsMisskeyAchievementsTypesHtl20npmThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesViewInstanceChartThTh viewInstanceChart_ = _StringsMisskeyAchievementsTypesViewInstanceChartThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadThTh outputHelloWorldOnScratchpad_ = _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesOpen3windowsThTh open3windows_ = _StringsMisskeyAchievementsTypesOpen3windowsThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceThTh driveFolderCircularReference_ = _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesReactWithoutReadThTh reactWithoutRead_ = _StringsMisskeyAchievementsTypesReactWithoutReadThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesClickedClickHereThTh clickedClickHere_ = _StringsMisskeyAchievementsTypesClickedClickHereThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesJustPlainLuckyThTh justPlainLucky_ = _StringsMisskeyAchievementsTypesJustPlainLuckyThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesSetNameToSyuiloThTh setNameToSyuilo_ = _StringsMisskeyAchievementsTypesSetNameToSyuiloThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1ThTh passedSinceAccountCreated1_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2ThTh passedSinceAccountCreated2_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3ThTh passedSinceAccountCreated3_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3ThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesLoggedInOnBirthdayThTh loggedInOnBirthday_ = _StringsMisskeyAchievementsTypesLoggedInOnBirthdayThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayThTh loggedInOnNewYearsDay_ = _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesCookieClickedThTh cookieClicked_ = _StringsMisskeyAchievementsTypesCookieClickedThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesBrainDiverThTh brainDiver_ = _StringsMisskeyAchievementsTypesBrainDiverThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesSmashTestNotificationButtonThTh smashTestNotificationButton_ = _StringsMisskeyAchievementsTypesSmashTestNotificationButtonThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesTutorialCompletedThTh tutorialCompleted_ = _StringsMisskeyAchievementsTypesTutorialCompletedThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadThTh bubbleGameExplodingHead_ = _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadThTh._(_root);
	@override late final _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadThTh bubbleGameDoubleExplodingHead_ = _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadThTh._(_root);
}

// Path: misskey.role_.priority_
class _StringsMisskeyRolePriorityThTh extends _StringsMisskeyRolePriorityEnUs {
	_StringsMisskeyRolePriorityThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get low => 'ต่ำ';
	@override String get middle => 'ปานกลาง';
	@override String get high => 'สูง';
}

// Path: misskey.role_.options_
class _StringsMisskeyRoleOptionsThTh extends _StringsMisskeyRoleOptionsEnUs {
	_StringsMisskeyRoleOptionsThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'การดูไทม์ไลน์ทั่วโลก';
	@override String get ltlAvailable => 'การดูไทม์ไลน์ในท้องถิ่น';
	@override String get canPublicNote => 'สามารถโพสต์แบบสาธารณะ';
	@override String get mentionMax => 'จำนวนการกล่าวถึงสูงสุดต่อโน้ต';
	@override String get canInvite => 'สร้างรหัสเชิญอินสแตนซ์';
	@override String get inviteLimit => 'จำกัดการเชิญ';
	@override String get inviteLimitCycle => 'คูลดาวน์ในการเชิญ';
	@override String get inviteExpirationTime => 'วันหมดอายุของรหัสการเชิญ';
	@override String get canManageCustomEmojis => 'จัดการเอโมจิที่กำหนดเอง';
	@override String get canManageAvatarDecorations => 'จัดการตกแต่งอวตาร';
	@override String get driveCapacity => 'ความจุของไดรฟ์';
	@override String get alwaysMarkNsfw => 'ทำเครื่องหมายไฟล์ว่าเป็น NSFW เสมอ';
	@override String get pinMax => 'จํานวนสูงสุดของโน้ตที่ปักหมุดไว้';
	@override String get antennaMax => 'จำนวนสูงสุดของเสาอากาศ';
	@override String get wordMuteMax => 'จำนวนอักขระสูงสุดที่อนุญาตในการปิดเสียงคำ';
	@override String get webhookMax => 'จำนวนเว็บฮุคสูงสุด';
	@override String get clipMax => 'จำนวนคลิปสูงสุด';
	@override String get noteEachClipsMax => 'จำนวนโน้ตสูงสุดภายในคลิป';
	@override String get userListMax => 'จำนวนรายชื่อผู้ใช้สูงสุด';
	@override String get userEachUserListsMax => 'จำนวนผู้ใช้สูงสุดภายในรายการผู้ใช้';
	@override String get rateLimitFactor => 'อัตราการจำกัด';
	@override String get descriptionOfRateLimitFactor => 'ยิ่งตัวเลขน้อยก็ยิ่งจำกัดน้อย ยิ่งมากก็ยิ่งเข้มงวดมากขึ้น';
	@override String get canHideAds => 'ซ่อนโฆษณา';
	@override String get canSearchNotes => 'การใช้การค้นหาโน้ต';
	@override String get canUseTranslator => 'การใช้งานแปล';
	@override String get avatarDecorationLimit => 'จำนวนการตกแต่งไอคอนสูงสุดที่สามารถติดตั้งได้';
}

// Path: misskey.role_.condition_
class _StringsMisskeyRoleConditionThTh extends _StringsMisskeyRoleConditionEnUs {
	_StringsMisskeyRoleConditionThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get roleAssignedTo => 'มอบหมายให้มีบทบาทแบบทำมือ';
	@override String get isLocal => 'ผู้ใช้ในพื้นที่';
	@override String get isRemote => 'ผู้ใช้ระยะไกล';
	@override String get isCat => 'ผู้ใช้ที่เป็นแมว';
	@override String get isBot => 'ผู้ใช้ที่เป็นบอต';
	@override String get isSuspended => 'ผู้ใช้ที่ถูกระงับ';
	@override String get isLocked => 'ผู้ใช้บัญชีไม่เปิดเผยสาธารณะ';
	@override String get isExplorable => 'ผู้ใช้ที่เปิดใช้งาน “ทำให้บัญชีของฉันค้นหาได้ง่ายขึ้น”';
	@override String get createdLessThan => 'สร้างน้อยกว่า';
	@override String get createdMoreThan => 'สร้างมากกว่า';
	@override String get followersLessThanOrEq => 'จำนวนผู้ติดตามน้อยกว่าหรือเท่ากับ\n';
	@override String get followersMoreThanOrEq => 'จำนวนผู้ติดตามมากกว่าหรือเท่ากับ\n';
	@override String get followingLessThanOrEq => 'จำนวนบัญชีต่อไปนี้คือ น้อยกว่าหรือเท่ากับ';
	@override String get followingMoreThanOrEq => 'จำนวนบัญชีต่อไปนี้คือ มากกว่าหรือเท่ากับ';
	@override String get notesLessThanOrEq => 'จำนวนโพสต์น้อยกว่าเท่ากับ';
	@override String get notesMoreThanOrEq => 'จำนวนโพสต์มากกว่าเท่ากับ';
	@override String get and => 'และ';
	@override String get or => 'หรือ';
	@override String get not => 'ไม่';
}

// Path: misskey.email_.follow_
class _StringsMisskeyEmailFollowThTh extends _StringsMisskeyEmailFollowEnUs {
	_StringsMisskeyEmailFollowThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ได้ติดตามคุณ';
}

// Path: misskey.email_.receiveFollowRequest_
class _StringsMisskeyEmailReceiveFollowRequestThTh extends _StringsMisskeyEmailReceiveFollowRequestEnUs {
	_StringsMisskeyEmailReceiveFollowRequestThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คุณได้รับคำขอติดตาม';
}

// Path: misskey.theme_.keys
class _StringsMisskeyThemeKeysThTh extends _StringsMisskeyThemeKeysEnUs {
	_StringsMisskeyThemeKeysThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get accent => 'สีหลัก';
	@override String get bg => 'พื้นหลัง';
	@override String get fg => 'ข้อความ';
	@override String get focus => 'โฟกัส';
	@override String get indicator => 'ตัวบ่งชี้';
	@override String get panel => 'แผงควบคุม';
	@override String get shadow => 'เงา';
	@override String get header => 'ส่วนหัว';
	@override String get navBg => 'พื้นหลังแถบด้านข้าง';
	@override String get navFg => 'ข้อความแถบด้านข้าง';
	@override String get navHoverFg => 'ข้อความแถบด้านข้าง (โฮเวอร์)';
	@override String get navActive => 'ข้อความแถบด้านข้าง (ใช้งานอยู่)';
	@override String get navIndicator => 'ตัวระบุแถบด้านข้าง';
	@override String get link => 'ลิงก์';
	@override String get hashtag => 'แฮชแท็ก';
	@override String get mention => 'กล่าวถึง';
	@override String get mentionMe => 'ได้กล่าวถึง (ฉัน)';
	@override String get renote => 'รีโน้ต';
	@override String get modalBg => 'พื้นหลังโมดอล';
	@override String get divider => 'ตัวแบ่ง';
	@override String get scrollbarHandle => 'ที่จับแถบเลื่อน';
	@override String get scrollbarHandleHover => 'ที่จับแถบเลื่อน (โฮเวอร์)';
	@override String get dateLabelFg => 'ข้อความกำกับป้ายวันที่';
	@override String get infoBg => 'ข้อมูลพื้นหลัง';
	@override String get infoFg => 'ข้อความข้อมูล';
	@override String get infoWarnBg => 'คำเตือนพื้นหลัง';
	@override String get infoWarnFg => 'คำเตือนข้อความ';
	@override String get toastBg => 'ประวัติการแจ้งเตือน';
	@override String get toastFg => 'ข้อความแจ้งเตือน';
	@override String get buttonBg => 'ปุ่มพื้นหลัง';
	@override String get buttonHoverBg => 'ปุ่มพื้นหลัง (โฮเวอร์)';
	@override String get inputBorder => 'เส้นขอบของช่องป้อนข้อมูล';
	@override String get listItemHoverBg => 'รายการไอเทมพื้นหลัง (โฮเวอร์)';
	@override String get driveFolderBg => 'พื้นหลังโฟลเดอร์ไดรฟ์';
	@override String get wallpaperOverlay => 'วอลล์เปเปอร์ซ้อนทับ';
	@override String get badge => 'ตรา';
	@override String get messageBg => 'พื้นหลังแชท';
	@override String get accentDarken => 'สีหลัก (มืด)';
	@override String get accentLighten => 'สีหลัก (สว่าง)';
	@override String get fgHighlighted => 'ข้อความที่ไฮไลต์';
}

// Path: misskey.widgets_.userList_
class _StringsMisskeyWidgetsUserListThTh extends _StringsMisskeyWidgetsUserListEnUs {
	_StringsMisskeyWidgetsUserListThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'เลือกรายชื่อ';
}

// Path: misskey.postForm_.placeholders_
class _StringsMisskeyPostFormPlaceholdersThTh extends _StringsMisskeyPostFormPlaceholdersEnUs {
	_StringsMisskeyPostFormPlaceholdersThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get a => 'ตอนนี้เป็นยังไงบ้าง?';
	@override String get b => 'มีอะไรเกิดขึ้นหรือเปล่า?';
	@override String get c => 'กำลังคิดอะไรอยู่?';
	@override String get d => 'ต้องการจะพูดอะไรไหม?';
	@override String get e => 'มาเขียนกันเถอะ';
	@override String get f => 'กำลังรอให้คุณเขียน...';
}

// Path: misskey.pages_.blocks
class _StringsMisskeyPagesBlocksThTh extends _StringsMisskeyPagesBlocksEnUs {
	_StringsMisskeyPagesBlocksThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get text => 'ข้อความ';
	@override String get textarea => 'พื้นที่ข้อความ';
	@override String get section => 'ประเภท';
	@override String get image => 'รูปภาพ';
	@override String get button => 'ปุ่ม';
	@override String get dynamic => 'บล็อกแบบไดนามิก';
	@override String dynamicDescription({required Object play}) => 'บล็อกนี้ล้าสมัยแล้ว โปรดใช้ ${play} แทน นับจากนี้เป็นต้นไป';
	@override String get note => 'โน้ตที่ฝังตัว';
	@override late final _StringsMisskeyPagesBlocksNoteThTh note_ = _StringsMisskeyPagesBlocksNoteThTh._(_root);
}

// Path: misskey.notification_.types_
class _StringsMisskeyNotificationTypesThTh extends _StringsMisskeyNotificationTypesEnUs {
	_StringsMisskeyNotificationTypesThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get all => 'ทั้งหมด';
	@override String get note => 'โน้ตใหม่';
	@override String get follow => 'กำลังติดตาม';
	@override String get mention => 'กล่าวถึง';
	@override String get reply => 'ตอบกลับ';
	@override String get renote => 'รีโน้ต';
	@override String get quote => 'อ้างคำพูด';
	@override String get reaction => 'รีแอคชั่น';
	@override String get pollEnded => 'โพลสิ้นสุดแล้ว';
	@override String get receiveFollowRequest => 'ได้รับคำร้องขอติดตาม';
	@override String get followRequestAccepted => 'อนุมัติให้ติดตามแล้ว';
	@override String get roleAssigned => 'ให้บทบาท';
	@override String get achievementEarned => 'ปลดล็อกความสำเร็จแล้ว';
	@override String get app => 'การแจ้งเตือนจากแอปที่มีลิงก์';
}

// Path: misskey.notification_.actions_
class _StringsMisskeyNotificationActionsThTh extends _StringsMisskeyNotificationActionsEnUs {
	_StringsMisskeyNotificationActionsThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'ติดตามกลับด้วย';
	@override String get reply => 'ตอบกลับ';
	@override String get renote => 'รีโน้ต';
}

// Path: misskey.deck_.columns_
class _StringsMisskeyDeckColumnsThTh extends _StringsMisskeyDeckColumnsEnUs {
	_StringsMisskeyDeckColumnsThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get main => 'หลัก';
	@override String get widgets => 'วิดเจ็ต';
	@override String get notifications => 'การเเจ้งเตือน';
	@override String get tl => 'ไทม์ไลน์';
	@override String get antenna => 'เสาอากาศ';
	@override String get list => 'รายการ';
	@override String get channel => 'ช่อง';
	@override String get mentions => 'พูดถึง';
	@override String get direct => 'ไดเร็กต์';
	@override String get roleTimeline => 'บทบาทไทม์ไลน์';
}

// Path: misskey.webhookSettings_.events_
class _StringsMisskeyWebhookSettingsEventsThTh extends _StringsMisskeyWebhookSettingsEventsEnUs {
	_StringsMisskeyWebhookSettingsEventsThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get follow => 'เมื่อกำลังติดตามผู้ใช้';
	@override String get followed => 'เมื่อกำลังติดตามแล้ว';
	@override String get note => 'เมื่อกำลังโพสต์โน้ต';
	@override String get reply => 'เมื่อได้รับการตอบกลับ';
	@override String get renote => 'รีโน้ตแล้วเมื่อ';
	@override String get reaction => 'เมื่อได้รับรีแอคชั่น';
	@override String get mention => 'เมื่อกำลังถูกกล่าวถึง';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _StringsMisskeyExternalResourceInstallerPluginThTh extends _StringsMisskeyExternalResourceInstallerPluginEnUs {
	_StringsMisskeyExternalResourceInstallerPluginThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ต้องการติดตั้งปลั๊กอินนี้หรือไม่?';
	@override String get metaTitle => 'ข้อมูลส่วนเสริม';
}

// Path: misskey.externalResourceInstaller_.theme_
class _StringsMisskeyExternalResourceInstallerThemeThTh extends _StringsMisskeyExternalResourceInstallerThemeEnUs {
	_StringsMisskeyExternalResourceInstallerThemeThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ต้องการติดตั้งธีมนี้หรือไม่?';
	@override String get metaTitle => 'ข้อมูลธีม';
}

// Path: misskey.externalResourceInstaller_.meta_
class _StringsMisskeyExternalResourceInstallerMetaThTh extends _StringsMisskeyExternalResourceInstallerMetaEnUs {
	_StringsMisskeyExternalResourceInstallerMetaThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get base => 'โทนสีพื้นฐาน';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _StringsMisskeyExternalResourceInstallerVendorInfoThTh extends _StringsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_StringsMisskeyExternalResourceInstallerVendorInfoThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ข้อมูลผู้จัดจำหน่าย';
	@override String get endpoint => 'จุดอ้างอิงปลายทาง (Referenced endpoint)';
	@override String get hashVerify => 'การตรวจสอบแฮช (ความสมบูรณ์ของไฟล์)';
}

// Path: misskey.externalResourceInstaller_.errors_
class _StringsMisskeyExternalResourceInstallerErrorsThTh extends _StringsMisskeyExternalResourceInstallerErrorsEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsThTh invalidParams_ = _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsThTh._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedThTh resourceTypeNotSupported_ = _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedThTh._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchThTh failedToFetch_ = _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchThTh._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedThTh hashUnmatched_ = _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedThTh._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedThTh pluginParseFailed_ = _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedThTh._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedThTh pluginInstallFailed_ = _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedThTh._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedThTh themeParseFailed_ = _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedThTh._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedThTh themeInstallFailed_ = _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedThTh._(_root);
}

// Path: misskey.dataSaver_.media_
class _StringsMisskeyDataSaverMediaThTh extends _StringsMisskeyDataSaverMediaEnUs {
	_StringsMisskeyDataSaverMediaThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'โหลดมีเดีย';
	@override String get description => 'กันไม่ให้ภาพและวิดีโอโหลดโดยอัตโนมัติ แตะรูปภาพ/วิดีโอที่ซ่อนอยู่เพื่อโหลด';
}

// Path: misskey.dataSaver_.avatar_
class _StringsMisskeyDataSaverAvatarThTh extends _StringsMisskeyDataSaverAvatarEnUs {
	_StringsMisskeyDataSaverAvatarThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'รูปไอคอน';
	@override String get description => 'ระงับการเคลื่อนไหวของภาพไอคอน ภาพเคลื่อนไหวอาจมีขนาดไฟล์ใหญ่กว่าภาพปกติ ดังนั้นจึงสามารถช่วยในการลดการใช้ข้อมูล';
}

// Path: misskey.dataSaver_.urlPreview_
class _StringsMisskeyDataSaverUrlPreviewThTh extends _StringsMisskeyDataSaverUrlPreviewEnUs {
	_StringsMisskeyDataSaverUrlPreviewThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ธัมบ์เนลแสดงตัวอย่าง URL';
	@override String get description => 'ธัมบ์เนลแสดงตัวอย่าง URL จะไม่โหลดโดยอัตโนมัติ';
}

// Path: misskey.dataSaver_.code_
class _StringsMisskeyDataSaverCodeThTh extends _StringsMisskeyDataSaverCodeEnUs {
	_StringsMisskeyDataSaverCodeThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ไฮไลต์โค้ด';
	@override String get description => 'หากใช้สัญลักษณ์ไฮไลต์โค้ดใน MFM ฯลฯ สัญลักษณ์เหล่านั้นจะไม่โหลดจนกว่าจะแตะ การไฮไลต์ไวยากรณ์(syntax)จำเป็นต้องดาวน์โหลดไฟล์คำจำกัดความของไฮไลต์สำหรับแต่ละภาษา ดังนั้นการปิดใช้งานการโหลดไฟล์เหล่านี้โดยอัตโนมัติจึงคาดว่าจะช่วยลดปริมาณข้อมูลการสื่อสารได้';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _StringsMisskeyInitialTutorialPostNoteVisibilityThTh extends _StringsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_StringsMisskeyInitialTutorialPostNoteVisibilityThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get description => 'คุณสามารถจำกัดผู้ที่สามารถดูโน้ตของคุณได้นะ';
	@override String get public => 'โน้ตของคุณนั้นจะปรากฏแก่ผู้ใช้งานทุกคน';
	@override String get home => 'เผยแพร่บนไทม์ไลน์หน้าแรกเท่านั้น ผู้คนที่เข้าชมโปรไฟล์ของคุณ ผ่านผู้ติดตาม และผ่านการรีโน้ตสามารถเห็นได้';
	@override String get followers => 'มองเห็นได้เฉพาะผู้ติดตามเท่านั้น ไม่มีใครอื่นนอกจากตัวคุณเองที่สามารถรีโน้ตได้ และมีเพียงผู้ติดตามของคุณเท่านั้นที่สามารถดูได้';
	@override String get direct => 'เปิดให้เห็นเฉพาะผู้ใช้ที่ระบุเท่านั้น และพวกเขาจะได้รับแจ้งเตือนด้วย คุณสามารถใช้มันแทนข้อความโดยตรง (dm)';
	@override String get doNotSendConfidencialOnDirect1 => 'โปรดใช้ความระมัดระวังในการส่งข้อมูลที่ละเอียดอ่อน';
	@override String get doNotSendConfidencialOnDirect2 => 'ผู้ดูแลระบบเซิร์ฟเวอร์ปลายทางสามารถดูเนื้อหาที่โพสต์ได้ ดังนั้นหากคุณส่งโพสต์โดยตรงไปยังผู้ใช้บนเซิร์ฟเวอร์ที่ไม่น่าเชื่อถือ คุณจะต้องใช้ความระมัดระวังในการจัดการข้อมูลที่เป็นความลับ';
	@override String get localOnly => 'การโพสต์ด้วย flag นี้จะไม่รวมโน้ตไปยังเซิร์ฟเวอร์อื่น ผู้ใช้บนเซิร์ฟเวอร์อื่นจะไม่สามารถดูโน้ตเหล่านี้ได้โดยตรง โดยไม่คำนึงถึงการตั้งค่าการแสดงผลข้างต้น';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _StringsMisskeyInitialTutorialPostNoteCwThTh extends _StringsMisskeyInitialTutorialPostNoteCwEnUs {
	_StringsMisskeyInitialTutorialPostNoteCwThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คำเตือนเกี่ยวกับเนื้อหา';
	@override String get description => 'เนื้อหาที่เขียนด้วย “คำอธิบายประกอบ” จะแสดงแทนข้อความหลัก คลิก “ดูเพิ่มเติม” เพื่อแสดงข้อความเต็ม';
	@override late final _StringsMisskeyInitialTutorialPostNoteCwExampleNoteThTh exampleNote_ = _StringsMisskeyInitialTutorialPostNoteCwExampleNoteThTh._(_root);
	@override String get useCases => 'ใช้สิ่งนี้เพื่อระบุโน้ตที่ต้องตามแนวทางปฏิบัติของเซิร์ฟเวอร์ หรือเพื่อควบคุมการสปอยล์และข้อความที่ละเอียดอ่อนด้วยตนเอง';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteThTh extends _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get note => 'อุ้ย นัตโตะ ฝาเปิดเละเทะ...';
}

// Path: misskey.achievements_.types_.notes1_
class _StringsMisskeyAchievementsTypesNotes1ThTh extends _StringsMisskeyAchievementsTypesNotes1EnUs {
	_StringsMisskeyAchievementsTypesNotes1ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'just setting up my msky';
	@override String get description => 'โพสต์โน้ตแรกของคุณ';
	@override String get flavor => 'ขอให้มีช่วงเวลาที่ดีกับ Misskey นะคะ!';
}

// Path: misskey.achievements_.types_.notes10_
class _StringsMisskeyAchievementsTypesNotes10ThTh extends _StringsMisskeyAchievementsTypesNotes10EnUs {
	_StringsMisskeyAchievementsTypesNotes10ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'โน้ตไม่กี่ชิ้น';
	@override String get description => 'โพสต์ 10 โน้ต';
}

// Path: misskey.achievements_.types_.notes100_
class _StringsMisskeyAchievementsTypesNotes100ThTh extends _StringsMisskeyAchievementsTypesNotes100EnUs {
	_StringsMisskeyAchievementsTypesNotes100ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'โน้ตเยอะอยู่';
	@override String get description => 'โพสต์ 100 โน้ต';
}

// Path: misskey.achievements_.types_.notes500_
class _StringsMisskeyAchievementsTypesNotes500ThTh extends _StringsMisskeyAchievementsTypesNotes500EnUs {
	_StringsMisskeyAchievementsTypesNotes500ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'จมคากองโน้ต';
	@override String get description => 'โพสต์ 500 โน้ต';
}

// Path: misskey.achievements_.types_.notes1000_
class _StringsMisskeyAchievementsTypesNotes1000ThTh extends _StringsMisskeyAchievementsTypesNotes1000EnUs {
	_StringsMisskeyAchievementsTypesNotes1000ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ภูเขาแห่งโน้ต';
	@override String get description => 'โพสต์ 1,000 โน้ต';
}

// Path: misskey.achievements_.types_.notes5000_
class _StringsMisskeyAchievementsTypesNotes5000ThTh extends _StringsMisskeyAchievementsTypesNotes5000EnUs {
	_StringsMisskeyAchievementsTypesNotes5000ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'โน้ตล้นไปแล้ว';
	@override String get description => 'โพสต์ 5,000 โน้ต';
}

// Path: misskey.achievements_.types_.notes10000_
class _StringsMisskeyAchievementsTypesNotes10000ThTh extends _StringsMisskeyAchievementsTypesNotes10000EnUs {
	_StringsMisskeyAchievementsTypesNotes10000ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ซุปเปอร์โน้ต';
	@override String get description => 'โพสต์ 10,000 โน้ต';
}

// Path: misskey.achievements_.types_.notes20000_
class _StringsMisskeyAchievementsTypesNotes20000ThTh extends _StringsMisskeyAchievementsTypesNotes20000EnUs {
	_StringsMisskeyAchievementsTypesNotes20000ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ต้ อ ง ก า ร โ น้ ต เ พิ่ ม อี ก !';
	@override String get description => 'โพสต์ 20,000 โน้ต';
}

// Path: misskey.achievements_.types_.notes30000_
class _StringsMisskeyAchievementsTypesNotes30000ThTh extends _StringsMisskeyAchievementsTypesNotes30000EnUs {
	_StringsMisskeyAchievementsTypesNotes30000ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'โน้ต โน้ต โน้ต!';
	@override String get description => 'โพสต์ 30,000 โน้ต';
}

// Path: misskey.achievements_.types_.notes40000_
class _StringsMisskeyAchievementsTypesNotes40000ThTh extends _StringsMisskeyAchievementsTypesNotes40000EnUs {
	_StringsMisskeyAchievementsTypesNotes40000ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'โรงงานผลิตโน้ต';
	@override String get description => 'โพสต์ 40,000 โน้ต';
}

// Path: misskey.achievements_.types_.notes50000_
class _StringsMisskeyAchievementsTypesNotes50000ThTh extends _StringsMisskeyAchievementsTypesNotes50000EnUs {
	_StringsMisskeyAchievementsTypesNotes50000ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ดาวเคราะห์แห่งโน้ต';
	@override String get description => 'โพสต์ 50,000 โน้ต';
}

// Path: misskey.achievements_.types_.notes60000_
class _StringsMisskeyAchievementsTypesNotes60000ThTh extends _StringsMisskeyAchievementsTypesNotes60000EnUs {
	_StringsMisskeyAchievementsTypesNotes60000ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'โน้ตควอซาร์';
	@override String get description => 'โพสต์ 60,000 โน้ต';
}

// Path: misskey.achievements_.types_.notes70000_
class _StringsMisskeyAchievementsTypesNotes70000ThTh extends _StringsMisskeyAchievementsTypesNotes70000EnUs {
	_StringsMisskeyAchievementsTypesNotes70000ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'หลุม-โน้ต-ดำ';
	@override String get description => 'โพสต์ 70,000 โน้ต';
}

// Path: misskey.achievements_.types_.notes80000_
class _StringsMisskeyAchievementsTypesNotes80000ThTh extends _StringsMisskeyAchievementsTypesNotes80000EnUs {
	_StringsMisskeyAchievementsTypesNotes80000ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ดาราจักรโน้ต';
	@override String get description => 'โพสต์ 80,000 โน้ต';
}

// Path: misskey.achievements_.types_.notes90000_
class _StringsMisskeyAchievementsTypesNotes90000ThTh extends _StringsMisskeyAchievementsTypesNotes90000EnUs {
	_StringsMisskeyAchievementsTypesNotes90000ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'จักรวาลโน้ต';
	@override String get description => 'โพสต์ 90,000 โน้ต';
}

// Path: misskey.achievements_.types_.notes100000_
class _StringsMisskeyAchievementsTypesNotes100000ThTh extends _StringsMisskeyAchievementsTypesNotes100000EnUs {
	_StringsMisskeyAchievementsTypesNotes100000ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => 'โพสต์ 100,000 โน้ต';
	@override String get flavor => 'มีเรื่องจะเขียนมากขนาดนั้นเลยเหรอนั่น?';
}

// Path: misskey.achievements_.types_.login3_
class _StringsMisskeyAchievementsTypesLogin3ThTh extends _StringsMisskeyAchievementsTypesLogin3EnUs {
	_StringsMisskeyAchievementsTypesLogin3ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มือใหม่ I';
	@override String get description => 'เข้าสู่ระบบเป็นเวลารวม 3 วัน';
	@override String get flavor => 'ตั้งแต่วันนี้เป็นต้นไป ฉันคือมิสคิสต์';
}

// Path: misskey.achievements_.types_.login7_
class _StringsMisskeyAchievementsTypesLogin7ThTh extends _StringsMisskeyAchievementsTypesLogin7EnUs {
	_StringsMisskeyAchievementsTypesLogin7ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มือใหม่ II';
	@override String get description => 'เข้าสู่ระบบเป็นเวลารวม 7 วัน';
	@override String get flavor => 'ชินกับมันแล้วหรือยัง?';
}

// Path: misskey.achievements_.types_.login15_
class _StringsMisskeyAchievementsTypesLogin15ThTh extends _StringsMisskeyAchievementsTypesLogin15EnUs {
	_StringsMisskeyAchievementsTypesLogin15ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มือใหม่ III';
	@override String get description => 'เข้าสู่ระบบเป็นเวลารวม 15 วัน';
}

// Path: misskey.achievements_.types_.login30_
class _StringsMisskeyAchievementsTypesLogin30ThTh extends _StringsMisskeyAchievementsTypesLogin30EnUs {
	_StringsMisskeyAchievementsTypesLogin30ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มิสคิสท์ I';
	@override String get description => 'เข้าสู่ระบบเป็นเวลารวม 30 วัน';
}

// Path: misskey.achievements_.types_.login60_
class _StringsMisskeyAchievementsTypesLogin60ThTh extends _StringsMisskeyAchievementsTypesLogin60EnUs {
	_StringsMisskeyAchievementsTypesLogin60ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มิสคิสท์ II';
	@override String get description => 'เข้าสู่ระบบเป็นเวลารวม 60 วัน';
}

// Path: misskey.achievements_.types_.login100_
class _StringsMisskeyAchievementsTypesLogin100ThTh extends _StringsMisskeyAchievementsTypesLogin100EnUs {
	_StringsMisskeyAchievementsTypesLogin100ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มิสคิสท์ III';
	@override String get description => 'เข้าสู่ระบบเป็นเวลารวม 100 วัน';
	@override String get flavor => 'มิสคิสต์หัวรุนแรง';
}

// Path: misskey.achievements_.types_.login200_
class _StringsMisskeyAchievementsTypesLogin200ThTh extends _StringsMisskeyAchievementsTypesLogin200EnUs {
	_StringsMisskeyAchievementsTypesLogin200ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ลูกค้าประจำ I';
	@override String get description => 'เข้าสู่ระบบเป็นเวลารวม 200 วัน';
}

// Path: misskey.achievements_.types_.login300_
class _StringsMisskeyAchievementsTypesLogin300ThTh extends _StringsMisskeyAchievementsTypesLogin300EnUs {
	_StringsMisskeyAchievementsTypesLogin300ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ลูกค้าประจำ II';
	@override String get description => 'เข้าสู่ระบบเป็นเวลารวม 300 วัน';
}

// Path: misskey.achievements_.types_.login400_
class _StringsMisskeyAchievementsTypesLogin400ThTh extends _StringsMisskeyAchievementsTypesLogin400EnUs {
	_StringsMisskeyAchievementsTypesLogin400ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ลูกค้าประจำ III';
	@override String get description => 'เข้าสู่ระบบเป็นเวลารวม 400 วัน';
}

// Path: misskey.achievements_.types_.login500_
class _StringsMisskeyAchievementsTypesLogin500ThTh extends _StringsMisskeyAchievementsTypesLogin500EnUs {
	_StringsMisskeyAchievementsTypesLogin500ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ผู้เชี่ยวชาญ I';
	@override String get description => 'เข้าสู่ระบบเป็นเวลารวม 500 วัน';
	@override String get flavor => 'ทุกท่าน ผมชอบโน้ต (กล่าวโดย เดอะ เ_เ_อร์)';
}

// Path: misskey.achievements_.types_.login600_
class _StringsMisskeyAchievementsTypesLogin600ThTh extends _StringsMisskeyAchievementsTypesLogin600EnUs {
	_StringsMisskeyAchievementsTypesLogin600ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ผู้เชี่ยวชาญ II';
	@override String get description => 'เข้าสู่ระบบเป็นเวลารวม 600 วัน';
}

// Path: misskey.achievements_.types_.login700_
class _StringsMisskeyAchievementsTypesLogin700ThTh extends _StringsMisskeyAchievementsTypesLogin700EnUs {
	_StringsMisskeyAchievementsTypesLogin700ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ผู้เชี่ยวชาญ III';
	@override String get description => 'เข้าสู่ระบบเป็นเวลารวม 700 วัน';
}

// Path: misskey.achievements_.types_.login800_
class _StringsMisskeyAchievementsTypesLogin800ThTh extends _StringsMisskeyAchievementsTypesLogin800EnUs {
	_StringsMisskeyAchievementsTypesLogin800ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ปรมาจารย์ด้านโน้ต I';
	@override String get description => 'เข้าสู่ระบบเป็นเวลารวม 800 วัน';
}

// Path: misskey.achievements_.types_.login900_
class _StringsMisskeyAchievementsTypesLogin900ThTh extends _StringsMisskeyAchievementsTypesLogin900EnUs {
	_StringsMisskeyAchievementsTypesLogin900ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ปรมาจารย์ด้านโน้ต II';
	@override String get description => 'เข้าสู่ระบบเป็นเวลารวม 900 วัน';
}

// Path: misskey.achievements_.types_.login1000_
class _StringsMisskeyAchievementsTypesLogin1000ThTh extends _StringsMisskeyAchievementsTypesLogin1000EnUs {
	_StringsMisskeyAchievementsTypesLogin1000ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ปรมาจารย์ด้านโน้ต III';
	@override String get description => 'เข้าสู่ระบบเป็นเวลารวม 1,000 วัน';
	@override String get flavor => 'ขอบคุณที่ใช้ Misskey นะ !';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _StringsMisskeyAchievementsTypesNoteClipped1ThTh extends _StringsMisskeyAchievementsTypesNoteClipped1EnUs {
	_StringsMisskeyAchievementsTypesNoteClipped1ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'อดไม่ได้ที่จะต้องคลิปมันเอาไว้';
	@override String get description => 'คลิปโน้ตตัวแรกของคุณ';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _StringsMisskeyAchievementsTypesNoteFavorited1ThTh extends _StringsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesNoteFavorited1ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'สตาร์เกเซอร์';
	@override String get description => 'ชื่นชอบโน้ตแรกของคุณ';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _StringsMisskeyAchievementsTypesMyNoteFavorited1ThTh extends _StringsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesMyNoteFavorited1ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'แสวงหาดวงดาว';
	@override String get description => 'มีคนอื่นๆที่ชื่นชอบหนึ่งในโน้ตของคุณ';
}

// Path: misskey.achievements_.types_.profileFilled_
class _StringsMisskeyAchievementsTypesProfileFilledThTh extends _StringsMisskeyAchievementsTypesProfileFilledEnUs {
	_StringsMisskeyAchievementsTypesProfileFilledThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เตรียมตัวอย่างดี';
	@override String get description => 'ตั้งค่าโปรไฟล์ของคุณ';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _StringsMisskeyAchievementsTypesMarkedAsCatThTh extends _StringsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_StringsMisskeyAchievementsTypesMarkedAsCatThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ฉันเป็นแมว';
	@override String get description => 'ทำเครื่องหมายบัญชีของคุณว่าเป็นแมว';
	@override String get flavor => 'แมวน้อยไร้ชื่อ';
}

// Path: misskey.achievements_.types_.following1_
class _StringsMisskeyAchievementsTypesFollowing1ThTh extends _StringsMisskeyAchievementsTypesFollowing1EnUs {
	_StringsMisskeyAchievementsTypesFollowing1ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ก้าวแรกสู่...กดติดตาม';
	@override String get description => 'กดติดตามชาวบ้านครั้งแรก';
}

// Path: misskey.achievements_.types_.following10_
class _StringsMisskeyAchievementsTypesFollowing10ThTh extends _StringsMisskeyAchievementsTypesFollowing10EnUs {
	_StringsMisskeyAchievementsTypesFollowing10ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ทำต่อไป... ทำต่อไป...';
	@override String get description => 'ติดตาม 10 บัญชีผู้ใช้';
}

// Path: misskey.achievements_.types_.following50_
class _StringsMisskeyAchievementsTypesFollowing50ThTh extends _StringsMisskeyAchievementsTypesFollowing50EnUs {
	_StringsMisskeyAchievementsTypesFollowing50ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มีเพื่อนมากมาย';
	@override String get description => 'ติดตาม 50 บัญชี';
}

// Path: misskey.achievements_.types_.following100_
class _StringsMisskeyAchievementsTypesFollowing100ThTh extends _StringsMisskeyAchievementsTypesFollowing100EnUs {
	_StringsMisskeyAchievementsTypesFollowing100ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เพื่อน 100 คน';
	@override String get description => 'ติดตาม 100 บัญชี';
}

// Path: misskey.achievements_.types_.following300_
class _StringsMisskeyAchievementsTypesFollowing300ThTh extends _StringsMisskeyAchievementsTypesFollowing300EnUs {
	_StringsMisskeyAchievementsTypesFollowing300ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มีเพื่อนมากเกินไปละ';
	@override String get description => 'ติดตาม 300 บัญชี';
}

// Path: misskey.achievements_.types_.followers1_
class _StringsMisskeyAchievementsTypesFollowers1ThTh extends _StringsMisskeyAchievementsTypesFollowers1EnUs {
	_StringsMisskeyAchievementsTypesFollowers1ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ผู้ติดตามคนแรก';
	@override String get description => 'ได้รับ 1 ผู้ติดตาม';
}

// Path: misskey.achievements_.types_.followers10_
class _StringsMisskeyAchievementsTypesFollowers10ThTh extends _StringsMisskeyAchievementsTypesFollowers10EnUs {
	_StringsMisskeyAchievementsTypesFollowers10ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ติดตามฉัน!';
	@override String get description => 'ได้รับ 10 คนผู้ติดตาม';
}

// Path: misskey.achievements_.types_.followers50_
class _StringsMisskeyAchievementsTypesFollowers50ThTh extends _StringsMisskeyAchievementsTypesFollowers50EnUs {
	_StringsMisskeyAchievementsTypesFollowers50ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มากันเป็นฝูง';
	@override String get description => 'ได้รับ 50 ผู้ติดตาม';
}

// Path: misskey.achievements_.types_.followers100_
class _StringsMisskeyAchievementsTypesFollowers100ThTh extends _StringsMisskeyAchievementsTypesFollowers100EnUs {
	_StringsMisskeyAchievementsTypesFollowers100ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'บุคคลที่เป็นที่นิยม';
	@override String get description => 'ได้รับ 100 ผู้ติดตาม';
}

// Path: misskey.achievements_.types_.followers300_
class _StringsMisskeyAchievementsTypesFollowers300ThTh extends _StringsMisskeyAchievementsTypesFollowers300EnUs {
	_StringsMisskeyAchievementsTypesFollowers300ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'กรุณาสร้างบรรทัดเดียวนะคะ';
	@override String get description => 'ได้รับ 300 คนผู้ติดตาม';
}

// Path: misskey.achievements_.types_.followers500_
class _StringsMisskeyAchievementsTypesFollowers500ThTh extends _StringsMisskeyAchievementsTypesFollowers500EnUs {
	_StringsMisskeyAchievementsTypesFollowers500ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เสาสัญญาณ';
	@override String get description => 'ได้รับ 500 คนผู้ติดตาม';
}

// Path: misskey.achievements_.types_.followers1000_
class _StringsMisskeyAchievementsTypesFollowers1000ThTh extends _StringsMisskeyAchievementsTypesFollowers1000EnUs {
	_StringsMisskeyAchievementsTypesFollowers1000ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ผู้ทรงอิทธิพล';
	@override String get description => 'ได้รับ 1,000 ผู้ติดตาม';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _StringsMisskeyAchievementsTypesCollectAchievements30ThTh extends _StringsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_StringsMisskeyAchievementsTypesCollectAchievements30ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'นักสะสมความสำเร็จ';
	@override String get description => 'ได้รับความสำเร็จ 30 ครั้ง';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _StringsMisskeyAchievementsTypesViewAchievements3minThTh extends _StringsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_StringsMisskeyAchievementsTypesViewAchievements3minThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ชอบบรรลุความสําเร็จ';
	@override String get description => 'มองดูรายการความสำเร็จของคุณเป็นเวลาอย่างน้อย 3 นาที';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _StringsMisskeyAchievementsTypesILoveMisskeyThTh extends _StringsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_StringsMisskeyAchievementsTypesILoveMisskeyThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ฉันรัก Misskey';
	@override String get description => 'โพสต์ “I ❤ #Misskey”';
	@override String get flavor => 'ขอบคุณพระคุณเป็นอย่างสูงที่ท่านใช้ Misskey นะคะ ! by ทีมผู้พัฒนา';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _StringsMisskeyAchievementsTypesFoundTreasureThTh extends _StringsMisskeyAchievementsTypesFoundTreasureEnUs {
	_StringsMisskeyAchievementsTypesFoundTreasureThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ล่าสมบัติ';
	@override String get description => 'คุณพบสมบัติที่ซ่อนอยู่';
}

// Path: misskey.achievements_.types_.client30min_
class _StringsMisskeyAchievementsTypesClient30minThTh extends _StringsMisskeyAchievementsTypesClient30minEnUs {
	_StringsMisskeyAchievementsTypesClient30minThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'พักผ่อนสักหน่อย';
	@override String get description => 'ใช้เวลา 30 นาทีบน Misskey';
}

// Path: misskey.achievements_.types_.client60min_
class _StringsMisskeyAchievementsTypesClient60minThTh extends _StringsMisskeyAchievementsTypesClient60minEnUs {
	_StringsMisskeyAchievementsTypesClient60minThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskey ต้องไม่มีสิ่งใด “Miss”';
	@override String get description => 'เปิด Misskey ค้างไว้แล้วอย่างน้อย 60 นาที';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _StringsMisskeyAchievementsTypesNoteDeletedWithin1minThTh extends _StringsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_StringsMisskeyAchievementsTypesNoteDeletedWithin1minThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ไม่เป็นไร';
	@override String get description => 'ลบโน้ตภายในหนึ่งนาทีหลังจากที่โพสต์';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _StringsMisskeyAchievementsTypesPostedAtLateNightThTh extends _StringsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_StringsMisskeyAchievementsTypesPostedAtLateNightThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ออกหากินยามดึกดื่น';
	@override String get description => 'โพสต์โน้ตตอนดึกๆ';
	@override String get flavor => 'ได้เวลาเข้านอนแล้วนะ';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _StringsMisskeyAchievementsTypesPostedAt0min0secThTh extends _StringsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_StringsMisskeyAchievementsTypesPostedAt0min0secThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'นาฬิกาเทียบเวลา';
	@override String get description => 'โพสต์โน้ตเมื่อเวลา 00:00 น.';
	@override String get flavor => 'โป๊ะ โป๊ะ โป๊ะ ปิ้งงงงง';
}

// Path: misskey.achievements_.types_.selfQuote_
class _StringsMisskeyAchievementsTypesSelfQuoteThTh extends _StringsMisskeyAchievementsTypesSelfQuoteEnUs {
	_StringsMisskeyAchievementsTypesSelfQuoteThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'อ้างอิงตนเอง';
	@override String get description => 'อ้างโน้ตของคุณเอง';
}

// Path: misskey.achievements_.types_.htl20npm_
class _StringsMisskeyAchievementsTypesHtl20npmThTh extends _StringsMisskeyAchievementsTypesHtl20npmEnUs {
	_StringsMisskeyAchievementsTypesHtl20npmThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ไทม์ไลน์ไหล';
	@override String get description => 'มีการทำความเร็วของไทม์ไลน์หน้าแรกเกิน 20 npm (โน้ตต่อนาที)';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _StringsMisskeyAchievementsTypesViewInstanceChartThTh extends _StringsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_StringsMisskeyAchievementsTypesViewInstanceChartThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'วิเคราะห์';
	@override String get description => 'ดูแผนภูมิอินสแตนซ์ของคุณ';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadThTh extends _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'หวัดดีชาวโลก!';
	@override String get description => 'เอาพุต "hello world" ใน Scratchpad';
}

// Path: misskey.achievements_.types_.open3windows_
class _StringsMisskeyAchievementsTypesOpen3windowsThTh extends _StringsMisskeyAchievementsTypesOpen3windowsEnUs {
	_StringsMisskeyAchievementsTypesOpen3windowsThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มัลติวินโดว์';
	@override String get description => 'มีการเปิดหน้าต่างอย่างน้อย 3 หน้าต่างพร้อมกัน';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceThTh extends _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_StringsMisskeyAchievementsTypesDriveFolderCircularReferenceThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'อ้างอิงวงจร';
	@override String get description => 'พยายามสร้างโฟลเดอร์ที่ซ้อนกันแบบวนซ้ำในไดรฟ์';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _StringsMisskeyAchievementsTypesReactWithoutReadThTh extends _StringsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_StringsMisskeyAchievementsTypesReactWithoutReadThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คุณอ่านมันจริงๆหรือเปล่า?';
	@override String get description => 'มีการโต้ตอบกับโน้ตที่มีความยาวมากกว่า 100 ตัวอักษรภายใน 3 วินาทีหลังจากที่โพสต์';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _StringsMisskeyAchievementsTypesClickedClickHereThTh extends _StringsMisskeyAchievementsTypesClickedClickHereEnUs {
	_StringsMisskeyAchievementsTypesClickedClickHereThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คลิกที่นี่';
	@override String get description => 'คุณได้คลิกที่นี่';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _StringsMisskeyAchievementsTypesJustPlainLuckyThTh extends _StringsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_StringsMisskeyAchievementsTypesJustPlainLuckyThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'แค่ลัคกี้ธรรมดา';
	@override String get description => 'มีโอกาสที่จะได้รับด้วยความน่าจะเป็นไปได้ 0.005% ทุก ๆ 10 วินาที';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _StringsMisskeyAchievementsTypesSetNameToSyuiloThTh extends _StringsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_StringsMisskeyAchievementsTypesSetNameToSyuiloThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คอมเพล็กซ์ของพระเจ้า';
	@override String get description => 'ตั้งชื่อของคุณเป็น “syuilo”';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1ThTh extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated1ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ครบรอบหนึ่งปี';
	@override String get description => 'ผ่านไปหนึ่งปีแล้วนะตั้งแต่บัญชีของคุณถูกสร้างขึ้นมาน่ะ';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2ThTh extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated2ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ครบรอบสองปี';
	@override String get description => 'ผ่านไปสองปีแล้วนะตั้งแต่บัญชีของคุณถูกสร้างขึ้นมาน่ะ';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3ThTh extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated3ThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ครบรอบสามปี';
	@override String get description => 'ผ่านไปสามปีแล้วนะตั้งแต่บัญชีของคุณถูกสร้างขึ้นมาน่ะ';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _StringsMisskeyAchievementsTypesLoggedInOnBirthdayThTh extends _StringsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnBirthdayThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'สุขสันต์วันเกิด';
	@override String get description => 'เข้าสู่ระบบในวันเกิดของคุณ';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayThTh extends _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'สวัสดีปีใหม่!';
	@override String get description => 'เข้าสู่ระบบในวันแรกของปี';
	@override String get flavor => 'อีกปีที่ยอดเยี่ยมในโอกาสนี้เลย';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _StringsMisskeyAchievementsTypesCookieClickedThTh extends _StringsMisskeyAchievementsTypesCookieClickedEnUs {
	_StringsMisskeyAchievementsTypesCookieClickedThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เกมที่คุณคลิกที่คุกกี้';
	@override String get description => 'คลิกคุกกี้';
	@override String get flavor => 'ใช่หรอ? แน่ใจว่าซอฟต์แวร์ทำงานถูกต้องนะ?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _StringsMisskeyAchievementsTypesBrainDiverThTh extends _StringsMisskeyAchievementsTypesBrainDiverEnUs {
	_StringsMisskeyAchievementsTypesBrainDiverThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'โพสต์ลิงก์ไปยัง Brain Diver';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _StringsMisskeyAchievementsTypesSmashTestNotificationButtonThTh extends _StringsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_StringsMisskeyAchievementsTypesSmashTestNotificationButtonThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ทดสอบโอเวอร์โฟลว์';
	@override String get description => 'ทดสอบการแจ้งเตือนทริกเกอร์ซ้ำๆ ภายในระยะเวลาอันสั้นๆ';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _StringsMisskeyAchievementsTypesTutorialCompletedThTh extends _StringsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_StringsMisskeyAchievementsTypesTutorialCompletedThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ใบรับรองการสำเร็จหลักสูตร Misskey มือใหม่';
	@override String get description => 'เสร็จสิ้นการสอนแล้ว';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadThTh extends _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_StringsMisskeyAchievementsTypesBubbleGameExplodingHeadThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => 'สร้างวัตถุที่ใหญ่ที่สุดในเกมบับเบิ้ล';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadThTh extends _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ดับเบิ้ล';
	@override String get description => 'สร้างวัตถุที่ใหญ่ที่สุดในเกมบับเบิ้ลสองชิ้นในเวลาเดียวกัน';
	@override String get flavor => 'ปิ่นโตขนาดนี้ น่าจะเพิ่ม　🤯　🤯　เข้าไปนิดหน่อย';
}

// Path: misskey.pages_.blocks.note_
class _StringsMisskeyPagesBlocksNoteThTh extends _StringsMisskeyPagesBlocksNoteEnUs {
	_StringsMisskeyPagesBlocksNoteThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get id => 'โน้ต ID';
	@override String get idDescription => 'คุณสามารถจะวาง URL ของโน้ตที่นี่ก็ได้นะ';
	@override String get detailed => 'มุมมองโดยละเอียด';
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsThTh extends _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsInvalidParamsThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'พารามิเตอร์ไม่ถูกต้อง';
	@override String get description => 'มีสารสนเทศไม่เพียงพอที่จะโหลดข้อมูลจากไซต์ภายนอก โปรดยืนยัน URL ที่ป้อน';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedThTh extends _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ไม่รองรับทรัพยากรภายนอกนี้';
	@override String get description => 'ไม่รองรับประเภทของทรัพยากรภายนอกนี้ โปรดติดต่อผู้ดูแลเว็บไซต์';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchThTh extends _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsFailedToFetchThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'รับข้อมูลล้มเหลว';
	@override String get fetchErrorDescription => 'เกิดข้อผิดพลาดในการสื่อสารกับไซต์ภายนอก หากการลองอีกครั้งไม่สามารถแก้ไขปัญหานี้ได้ โปรดติดต่อผู้ดูแลไซต์';
	@override String get parseErrorDescription => 'เกิดข้อผิดพลาดในการประมวลผลข้อมูลที่โหลดจากไซต์ภายนอก โปรดติดต่อผู้ดูแลเว็บไซต์';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedThTh extends _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การยืนยัน/ตรวจสอบข้อมูลล้มเหลว';
	@override String get description => 'เกิดข้อผิดพลาดในการตรวจสอบความสมบูรณ์ของข้อมูลที่ดึงมา เพื่อเป็นมาตรการรักษาความปลอดภัย การติดตั้งไม่สามารถดำเนินการต่อได้ โปรดติดต่อผู้ดูแลเว็บไซต์';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedThTh extends _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ข้อผิดพลาด AiScript';
	@override String get description => 'ดึงข้อมูลที่ร้องขอสำเร็จแล้ว แต่มีข้อผิดพลาดเกิดขึ้นระหว่างการแยกวิเคราะห์ AiScript โปรดติดต่อผู้เขียนปลั๊กอิน รายละเอียดข้อผิดพลาดสามารถดูได้ในคอนโซล Javascript';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedThTh extends _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ติดตั้งปลั๊กอินล้มเหลว';
	@override String get description => 'เกิดปัญหาขณะติดตั้งปลั๊กอิน กรุณาลองอีกครั้ง. โปรดดูคอนโซล Javascript สำหรับรายละเอียดข้อผิดพลาด';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedThTh extends _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การแยกวิเคราะห์ธีมล้มเหลว';
	@override String get description => 'ดึงข้อมูลที่ร้องขอสำเร็จแล้ว แต่มีข้อผิดพลาดเกิดขึ้นระหว่างการแยกวิเคราะห์ธีม โปรดติดต่อผู้เขียนธีม รายละเอียดข้อผิดพลาดสามารถดูได้ในคอนโซล Javascript';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedThTh extends _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ติดตั้งธีมล้มเหลว';
	@override String get description => 'เกิดปัญหาระหว่างการติดตั้งธีม กรุณาลองอีกครั้ง. รายละเอียดข้อผิดพลาดสามารถดูได้ในคอนโซล Javascript';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _StringsMisskeyInitialTutorialPostNoteCwExampleNoteThTh extends _StringsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_StringsMisskeyInitialTutorialPostNoteCwExampleNoteThTh._(_StringsThTh root) : this._root = root, super._(root);

	@override final _StringsThTh _root; // ignore: unused_field

	// Translations
	@override String get cw => 'นี่อาจจะทำให้คุณหิวอย่างแน่นอน!';
	@override String get note => 'เพิ่งไปกินโดนัทเคลือบช็อคโกแลตมา 🍩😋';
}
