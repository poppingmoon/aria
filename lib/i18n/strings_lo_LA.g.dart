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
class TranslationsLoLa extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsLoLa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.loLa,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <lo-LA>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsLoLa _root = this; // ignore: unused_field

	@override 
	TranslationsLoLa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsLoLa(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$aria$lo_LA aria = _Translations$aria$lo_LA._(_root);
	@override late final _Translations$misskey$lo_LA misskey = _Translations$misskey$lo_LA._(_root);
}

// Path: aria
class _Translations$aria$lo_LA extends Translations$aria$en_US {
	_Translations$aria$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Renoted ໂດຍ '),
		user,
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'ຕ້ອງການເລີກຕິດຕາມ '),
		name,
		const TextSpan(text: ' ແມ່ນບໍ່?'),
	]);
}

// Path: misskey
class _Translations$misskey$lo_LA extends Translations$misskey$en_US {
	_Translations$misskey$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'ພາສາລາວ';
	@override String get headlineMisskey => 'ເຊື່ອມຕໍ່ເຄືອຂ່າຍໂດຍ note';
	@override String get introMisskey => 'ຍິນດີຕ້ອນຮັບ! Misskey ເປັນຊອຟແວopensource, ສຳລັບບໍລິການ microblogging ແບບ decentralized\nສ້າງ “note” ເພື່ອແບ່ງປັນຄວາມຄິດຂອງທ່ານກັບທຸກໆ ຄົນທີ່ຢູ່ອ້ອມຮອບທ່ານ 📡\nຢ່າລືມ “reaction” ໂນຕຂອງລາວເພື່ອສະແດງຄວາມຮູ້ສຶກ 👍\nມາສຳຫຼວດໂລກໃໝ່ແນ! 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} ແມ່ນສ່ວນໜຶ່ງຂອງການບໍລິການທີ່ຂັບເຄື່ອນໂດຍແພລດຟອມ open source. <b>Misskey</b> (ເອີ້ນວ່າ "Misskey instance")';
	@override String monthAndDay({required Object month, required Object day}) => 'ເດືອນ${month} / ວັນ${day}';
	@override String get search => 'ຄົ້ນຫາ';
	@override String get reset => 'ຣີເຊັດ';
	@override String get notifications => 'ການແຈ້ງເຕືອນ';
	@override String get username => 'ຊື່ຜູ້ໃຊ້';
	@override String get password => 'ລະຫັດຜ່ານ';
	@override String get forgotPassword => 'ລືມລະຫັດຜ່ານ';
	@override String get fetchingAsApObject => 'ກຳລັງດຶງຂໍ້ມູນຈາກ fediverse...';
	@override String get ok => 'ຕົກ​ລົງ';
	@override String get gotIt => 'ເຂົ້າໃຈແລ້ວ!';
	@override String get cancel => 'ຍົກເລີກ';
	@override String get noThankYou => 'ບໍ່​ແມ່ນ​ຕອນ​ນີ້';
	@override String get enterUsername => 'ປ້ອນຊື່ຜູ້ໃຊ້';
	@override String renotedBy({required Object user}) => 'Renoted ໂດຍ ${user}';
	@override String get noNotes => 'ບໍ່ມີ note';
	@override String get noNotifications => 'ບໍ່ມີການແຈ້ງເຕືອນ';
	@override String get instance => 'ເຊີຟເວີຣ໌';
	@override String get settings => 'ຕັ້ງຄ່າ';
	@override String get notificationSettings => 'ຕັ້ງຄ່າການແຈ້ງເຕືອນ';
	@override String get basicSettings => 'ການຕັ້ງຄ່າພື້ນຖານ';
	@override String get otherSettings => 'ການຕັ້ງຄ່າອື່ນໆ';
	@override String get openInWindow => 'ເປີດໃນ window';
	@override String get profile => 'ໂປຣໄຟລ໌';
	@override String get timeline => 'ໄທມ໌ໄລນ໌';
	@override String get noAccountDescription => 'ຜູ້ໃຊ້ຄົນນີ້ຍັງບໍ່ໄດ້ຂຽນຄຳແນະນຳໂຕ';
	@override String get login => 'ເຂົ້າ​ສູ່​ລະ​ບົບ';
	@override String get loggingIn => 'ກຳລັງເຂົ້າສູ່ລະບົບ...';
	@override String get logout => 'ອອກ​ຈາກ​ລະ​ບົບ';
	@override String get signup => 'ລົງ​ທະ​ບຽນ';
	@override String get uploading => 'ກຳລັງອັບໂຫຼດ...';
	@override String get save => 'ບັນທຶກ';
	@override String get users => 'ຜູ້ໃຊ້';
	@override String get addUser => 'ເພີ່ມຜູ້ໃຊ້';
	@override String get favorite => 'ເພີ່ມໃສ່ລາຍການທີ່ມັກ';
	@override String get favorites => 'ລາຍການທີ່ມັກ';
	@override String get unfavorite => 'ເອົາອອກຈາກລາຍການທີ່ມັກ';
	@override String get favorited => 'ເພີ່ມໃສ່ລາຍການທີ່ມັກແລ້ວ';
	@override String get alreadyFavorited => 'ເພີ່ມເຂົ້າໃນລາຍການທີ່ມັກແລ້ວ.';
	@override String get cantFavorite => 'ບໍ່ສາມາດເພີ່ມໃສ່ລາຍການທີ່ມັກໄດ້.';
	@override String get pin => 'ປັກໝຸດ';
	@override String get unpin => 'ຖອດປັກໝຸດອອກ';
	@override String get copyContent => 'ຄັດລອກເນື້ອຫາ';
	@override String get copyLink => 'ຄັດລອກລິ້ງ';
	@override String get copyLinkRenote => 'ຄັດລອກລິ້ງຂອງ renote';
	@override String get delete => 'ລຶບ';
	@override String get deleteAndEdit => 'ລຶບ​ແລະ​ແກ້​ໄຂ​';
	@override String get deleteAndEditConfirm => 'ຕ້ອງການລຶບ note ນີ້ແລະແກ້ໄຂໃໝ່ແມ່ນບໍ່? reaction, renote ແລະການຕອບກັບຕໍ່ note ນີ້ ທັງເບິດຈະຖືກລຶບອອກ';
	@override String get addToList => 'ເພີ່ມໃສ່ລາຍຊື່';
	@override String get addToAntenna => 'ເພີ່ມໃສ່ເສົາອາກາດ';
	@override String get sendMessage => 'ສົ່ງຂໍ້ຄວາມ';
	@override String get copyRSS => 'ຄັດລອກ RSS';
	@override String get copyUsername => 'ຄັດລອກຊື່ຜູ້ໃຊ້';
	@override String get copyUserId => 'ຄັດລອກ ID ຜູ້ໃຊ້';
	@override String get copyNoteId => 'ຄັດລອກ ID ຂອງ note';
	@override String get copyFileId => 'ຄັດລອກ ID ໄຟລ໌';
	@override String get copyFolderId => 'ຄັດລອກ ID ໂຟລ໌ເດີຣ໌';
	@override String get copyProfileUrl => 'ຄັດລອກ URL ໂປຣໄຟລ໌';
	@override String get searchUser => 'ຄົ້ນຫາຜູ້ໃຊ້';
	@override String get reply => 'ຕອບ​ກັບ';
	@override String get loadMore => 'ໂຫຼດເພີ່ມເຕີມ';
	@override String get showMore => 'ໂຫຼດເພີ່ມເຕີມ';
	@override String get showLess => 'ປິດ';
	@override String get youGotNewFollower => 'ໄດ້ຕິດຕາມເຈົ້າ';
	@override String get receiveFollowRequest => 'ມີຄຳຂໍຕິດຕາມສົ່ງມາ';
	@override String get followRequestAccepted => 'ການຕິດຕາມໄດ້ຮັບອນຸຍາດແລ້ວ';
	@override String get mention => 'ເວົ້າເຖີງ';
	@override String get mentions => 'ເວົ້າເຖີງເຈົ້າ';
	@override String get directNotes => 'ໂພສ Direct note';
	@override String get importAndExport => 'ນໍາເຂົ້າ / ສົ່ງອອກ';
	@override String get import => 'ນຳເຂົ້າ';
	@override String get export => 'ສົ່ງອອກ';
	@override String get files => 'ໄຟລ໌';
	@override String get download => 'ດາວໂຫລດ';
	@override String driveFileDeleteConfirm({required Object name}) => 'ຕ້ອງການລຶບໄຟລ໌ “${name}” ແມ່ນບໍ່? Note ທີ່ແນບມາກັບໄຟລ໌ນີ້ຈະຖືກລຶບອອກ';
	@override String unfollowConfirm({required Object name}) => 'ຕ້ອງການເລີກຕິດຕາມ ${name} ແມ່ນບໍ່?';
	@override String get exportRequested => 'ເຈົ້າໄດ້ຮ້ອງຂໍການສົ່ງອອກ ອາດໃຊ້ເວລາຈັກໜ່ອຍ ເມື່ອແລ້ວຈະຖືກເພີ່ມໃສ່ drive';
	@override String get importRequested => 'ເຈົ້າໄດ້ຮ້ອງຂໍການນຳເຂົ້າ ການດຳເນິນການນີ້ອາດໃຊ້ເວລາຈັກໜ່ອຍ';
	@override String get lists => 'ລາຍການ';
	@override String get noLists => 'ບໍ່​ມີ​ລາຍ​ການ​ໃດໆ​';
	@override String get note => 'Note';
	@override String get notes => 'Note';
	@override String get following => 'ກຳລັງຕິດຕາມ';
	@override String get followers => 'ຜູ້ຕິດຕາມ';
	@override String get followsYou => 'ຕິດ​ຕາມ​ເຈົ້າ';
	@override String get createList => 'ສ້າງລາຍຊື່';
	@override String get manageLists => 'ຈັດການລາຍຊື່';
	@override String get error => 'ຂໍ້ຜິດພາດ';
	@override String get somethingHappened => '​ອຸຍ, ມີ​ບາງ​ຢ່າງ​ຜິ​ດ​ພາດ';
	@override String get retry => 'ລອງໃຫມ່';
	@override String get pageLoadError => 'ເກີດຄວາມຜິດພາດໃນການໂຫລດໜ້ານີ້';
	@override String get pageLoadErrorDescription => 'ປົກກະຕິແລ້ວມັນເກີດຈາກຄວາມຜິດພາດເຄືອຂ່າຍ ຫຼື cache ຂອງຕົວທ່ອງເວັບ ລອງລຶບລ້າງແຄດແລ້ວລອງໃໝ່ພາຍຫຼັງສອງສາມນາທີ';
	@override String get serverIsDead => 'ເຊີບເວີນີ້ບໍ່ຕອບສະໜອງ ກະລຸນາລໍຖ້າຈັກໜ່ອຍແລ້ວລອງໃໝ່ອີກຄັ້ງ';
	@override String get youShouldUpgradeClient => 'ເພື່ອເບິ່ງໜ້ານີ້, ກະລຸນາໂຫຼດຂໍ້ມູນຄືນໃໝ່ເພື່ອອັບເດດລູກຄ້າຂອງທ່ານ';
	@override String get enterListName => 'ໃສ່ຊື່ສຳລັບລາຍຊື່';
	@override String get privacy => 'ຄວາມເປັນສ່ວນຕົວ';
	@override String get makeFollowManuallyApprove => 'ຕິດຕາມຄຳຂໍທີ່ຕ້ອງໄດ້ຮັບການອະນຸມັດ';
	@override String get defaultNoteVisibility => 'ການເບິ່ງເຫັນທີ່ເປັນຄ່າເລີ່ມຕົ້ນ';
	@override String get follow => 'ກຳລັງຕິດຕາມ';
	@override String get followRequest => 'ສົ່ງ​ຄຳຂໍ​ຕິ​ດ​ຕາມ​';
	@override String get followRequests => 'ສົ່ງ​ຄຳຂໍ​ຕິ​ດ​ຕາມ​';
	@override String get unfollow => 'ເຊົາຕິດຕາມ';
	@override String get followRequestPending => 'ລໍຖ້າການອະນຸມັດໃຫ້ຕິດຕາມ';
	@override String get enterEmoji => 'ປ້ອນເອໂມຈິ';
	@override String get renote => 'Renote';
	@override String get unrenote => 'ເລີກ Renote';
	@override String get renoted => 'renote ແລ້ວ';
	@override String get cantRenote => 'ໂພສນີ້ບໍ່ສາມາດ renote ໃໝ່ໄດ້';
	@override String get cantReRenote => 'ບໍ່ສາມາດບັນທຶກຄືນໃໝ່ໄດ້';
	@override String get quote => 'ອ້າງອີງ';
	@override String get inChannelRenote => 'Renote ໃນ channel ເທົ່ານັ້ນ';
	@override String get inChannelQuote => 'ອ້າງອິງໃນ channel ເທົ່ານັ້ນ';
	@override String get pinnedNote => 'note ທີ່ປັກໝຸດໄວ້';
	@override String get pinned => 'ປັກໝຸດ';
	@override String get you => 'ເຈົ້າ';
	@override String get clickToShow => 'ກົດເພື່ອສະແດງໃຫ້ເຫັນ';
	@override String get sensitive => 'NSFW';
	@override String get add => 'ເພີ່ມ';
	@override String get reaction => 'reaction';
	@override String get reactions => 'reaction';
	@override String get attachCancel => 'ເອົາໄຟລ໌ແນບ';
	@override String get mute => 'ປີດສຽງ';
	@override String get unmute => 'ເປີດສຽງ';
	@override String get block => 'ບລັອກ';
	@override String get unblock => 'ເລີກບລັອກ';
	@override String get suspend => 'ລະງັບ';
	@override String get unsuspend => 'ເຊົາ​ລະ​ງັບ';
	@override String get selectList => 'ເລືອກລາຍຊື່';
	@override String get editList => 'ແກ້ໄຂລາຍຊື່';
	@override String get selectChannel => 'ເລືອກຊ່ອງ';
	@override String get selectAntenna => 'ເລືອກເສົາອາກາດ';
	@override String get editAntenna => 'ແກ້ໄຂເສົາອາກາດ';
	@override String get selectWidget => 'ເລືອກວິກເຈັດ';
	@override String get editWidgets => 'ແກ້ໄຂ Widget';
	@override String get editWidgetsExit => 'ສຳເລັດແລ້ວ';
	@override String get customEmojis => 'ອີໂມຈິແບບກຳນົດເອງ';
	@override String get emoji => 'ອີໂມຈິ';
	@override String get emojis => 'ອີໂມຈິ';
	@override String get emojiName => 'ຊື່ Emoji';
	@override String get emojiUrl => 'URL ອີໂມຈິ';
	@override String get addEmoji => 'ຕື່ມອີໂມຈິ';
	@override String get settingGuide => 'ການຕັ້ງຄ່າທີ່ແນະນໍາ';
	@override String get flagAsBot => 'ໝາຍບັນຊີນີ້ເປັນບັອດ';
	@override String get flagAsCat => 'ໝາຍບັນຊີນີ້ເປັນແມວ';
	@override String get flagAsCatDescription => 'ເປີດໃຊ້ຕົວເລືອກນີ້ເພື່ອໝາຍບັນຊີນີ້ເປັນແມວ';
	@override String get flagShowTimelineReplies => 'ສະແດງການຕອບກັບໃນທາມລາຍ';
	@override String get flagShowTimelineRepliesDescription => 'ສະແດງການຕອບກັບຂອງຜູ້ໃຊ້ຕໍ່ກັບບັນທຶກຂອງຜູ້ໃຊ້ອື່ນໃນທາມລາຍຖ້າເປີດໃຊ້ງານ';
	@override String get autoAcceptFollowed => 'ອະນຸມັດອັດຕະໂນມັດຕາມຄຳຮ້ອງຂໍຈາກຜູ້ໃຊ້ທີ່ທ່ານກຳລັງຕິດຕາມຢູ່';
	@override String get addAccount => 'ເພີ່ມບັນຊີ';
	@override String get loginFailed => 'ການເຂົ້າສູ່ລະບົບບໍ່ສຳເລັດ';
	@override String get showOnRemote => 'ເບິ່ງໃນເຊີຟເວີຣ໌ໄລຍະໄກ';
	@override String get general => 'ທົ່ວໄປ';
	@override String get wallpaper => 'ພາບພື້ນຫລັງ';
	@override String get setWallpaper => 'ຕັ້ງເປັນພາບພື້ນຫຼັງ';
	@override String get removeWallpaper => 'ລຶບຮູບວໍເປເປີອອກ';
	@override String searchWith({required Object q}) => 'ຊອກຫາ: ${q}';
	@override String get youHaveNoLists => 'ເຈົ້າບໍ່ມີລາຍຊື່ໃດໆ';
	@override String get proxyAccount => 'ບັນຊີພຣັອກຊີ';
	@override String get host => 'ໂຮສຕ໌';
	@override String get selectUser => 'ເລືອກຜູ້ໃຊ້';
	@override String get recipient => 'ເຖິງ';
	@override String get annotation => 'ຄຳເຫັນ';
	@override String get federation => 'ສະຫະພັນ';
	@override String get instances => 'ເຊີຟເວີຣ໌';
	@override String get registeredAt => 'ລົງທະບຽນຢູ່';
	@override String get storageUsage => 'ບ່ອນ​ຈັດ​ເກັບ​ຂໍ້​ມູນທີ່ໃຊ້';
	@override String get charts => 'ແຜນພູມ';
	@override String get perHour => 'ຕໍ່ຊົ່ວໂມງ';
	@override String get perDay => 'ຕໍ່​ມື້';
	@override String get stopActivityDelivery => 'ຢຸດເຊົາການສົ່ງກິດຈະກໍາ';
	@override String get blockThisInstance => 'ຂັດຂວາງຕົວຢ່າງນີ້';
	@override String get operations => 'ການດຳເນີນງານ';
	@override String get software => 'ຊອບແວ';
	@override String get version => 'ເວີຣ໌ຊັນ';
	@override String get metadata => 'Metadata';
	@override String withNFiles({required Object n}) => '${n} ໄຟລ໌(s)';
	@override String get monitor => 'ຈໍພາບ';
	@override String get jobQueue => 'ຄິວວຽກ';
	@override String get cpuAndMemory => 'CPU ແລະ ຫນ່ວຍຄວາມຈໍາ';
	@override String get network => 'ເຄືອຂ່າຍ';
	@override String get disk => 'ດິສກ໌';
	@override String get instanceInfo => 'ອີນສະແຕນ';
	@override String get statistics => 'ສະຖິຕິ';
	@override String get clearQueue => 'ລ້າງຄິວ';
	@override String get clearCachedFiles => 'ລຶບລ້າງແຄສ';
	@override String get noUsers => 'ບໍ່ພົບຜູ້ໃຊ້';
	@override String get editProfile => 'ແກ້ໄຂໂປຣໄຟລ໌';
	@override String get done => 'ສຳເລັດ';
	@override String get processing => 'ກຳລັງປະມວນຜົນ';
	@override String get preview => 'ສະແດງເປັນຕົວຢ່າງ';
	@override String get default_ => 'ຄ່າເລີ່ມຕົ້ນ';
	@override String defaultValueIs({required Object value}) => 'ຄ່າເລີ່ມຕົ້ນ: ${value}';
	@override String get noCustomEmojis => 'ບໍ່ມີອີໂມຈິ';
	@override String get noJobs => 'ບໍ່ມີຊິ້ນວຽກ';
	@override String get federating => 'ສະຫະພັນ';
	@override String get blocked => 'ບລັອກແລ້ວ ';
	@override String get suspended => 'ໂຈະ';
	@override String get all => 'ທັງໝົດ';
	@override String get subscribing => 'ກຳລັງສະມັກສະມາຊິກ';
	@override String get publishing => 'ກຳລັງ​ເຜີຍ​ແພ່';
	@override String get notResponding => 'ບໍ່ຕອບສະໜອງ';
	@override String get instanceFollowing => 'ກຳລັງຕິດຕາມບົນເຊີຟເວີຣ໌';
	@override String get instanceFollowers => 'ຜູ້ຕິດຕາມຂອງເຊີຟເວີຣ໌';
	@override String get instanceUsers => 'ຜູ້​ໃຊ້​ຂອງ​ເຊີຟເວີຣ໌ນີ້';
	@override String get changePassword => 'ປ່ຽນ​ລະ​ຫັດ​ຜ່ານ';
	@override String get security => 'ຄວາມປອດໄພ';
	@override String get retypedNotMatch => 'ປ້ອນຂໍ້ມູນບໍ່ກົງກັນ';
	@override String get currentPassword => 'ລະຫັດຜ່ານປະຈຸບັນ';
	@override String get newPassword => 'ລະຫັດຜ່ານໃໝ່';
	@override String get newPasswordRetype => 'ໃສ່ລະຫັດຜ່ານໃໝ່ອີກເທື່ອໜຶ່ງ';
	@override String get attachFile => 'ແນບໄຟລ໌';
	@override String get more => 'ເພີ່ມເຕີມ!';
	@override String get featured => 'ໄຮໄລທ໌';
	@override String get usernameOrUserId => 'ຊື່ຜູ້ໃຊ້ ຫຼື id ຜູ້ໃຊ້';
	@override String get noSuchUser => 'ບໍ່ພົບຜູ້ໃຊ້';
	@override String get lookup => 'ຄົ້ນ​ຫາ';
	@override String get announcements => 'ປະກາດ';
	@override String get imageUrl => 'URL ຮູບພາບ';
	@override String get remove => 'ລຶບ';
	@override String get removed => 'ລຶບແລ້ວ';
	@override String get resetAreYouSure => 'ຣີ​ເຊັດບໍ?';
	@override String get saved => 'ບັນທຶກແລ້ວ';
	@override String get upload => 'ອັບໂຫຼດ';
	@override String get keepOriginalUploading => 'ຮັກສາຮູບພາບຕົ້ນສະບັບ';
	@override String get fromDrive => 'ຈາກ Drive';
	@override String get fromUrl => 'ຈາກ URL';
	@override String get uploadFromUrl => 'ອັບໂຫຼດຈາກ URL';
	@override String get uploadFromUrlDescription => 'URL ຂອງໄຟລ໌ທີ່ທ່ານຕ້ອງການອັບໂຫລດ';
	@override String get uploadFromUrlRequested => 'ຮ້ອງຂໍການອັບໂຫລດແລ້ວ';
	@override String get explore => 'ສຳຫຼວດ';
	@override String get messageRead => 'ອ່ານແລ້ວ';
	@override String nUsersRead({required Object n}) => 'ອ່ານໂດຍ ${n}';
	@override String get agree => 'ຍອມຮັບ';
	@override String get termsOfService => 'ເງື່ອນໄຂການບໍລິການ';
	@override String get start => 'ເລີ່ມຕົ້ນນຳໃຊ້ເລີຍ';
	@override String get home => 'ໜ້າຫຼັກ';
	@override String get activity => 'ກິດຈະກຳ';
	@override String get images => 'ຮູບພາບ';
	@override String get image => 'ຮູບພາບ';
	@override String get birthday => 'ວັນເກີດ';
	@override String yearsOld({required Object age}) => '${age} ປີ';
	@override String get registeredDate => 'ວັນທີ່ລົງທະບຽນ';
	@override String get location => 'ທີ່ຕັ້ງ';
	@override String get theme => 'Theme';
	@override String get themeForLightMode => 'Theme ໃຊ້ໃນໂໝດສະຫວ່າງ';
	@override String get themeForDarkMode => 'Theme ໃຊ້ໃນໂໝດມືດ';
	@override String get light => 'ສະຫວ່າງ';
	@override String get dark => 'ມືດ';
	@override String get lightThemes => 'ຊຸດຮູບແບບສະຫວ່າງ';
	@override String get darkThemes => 'ຮູບແບບສີສັນມືດ';
	@override String get syncDeviceDarkMode => 'ຊິງຄ໌ໂໝດມືດກັບການຕັ້ງຄ່າທົ່ວອຸປະກອນ';
	@override String get drive => 'Drive';
	@override String get fileName => 'ຊື່ໄຟລ໌';
	@override String get selectFile => 'ເລືອກໄຟລ໌';
	@override String get selectFiles => 'ເລືອກໄຟລ໌';
	@override String get selectFolder => 'ເລືອກໂຟລເດີ';
	@override String get selectFolders => 'ເລືອກໂຟລເດີ';
	@override String get renameFile => 'ປ່ຽນຊື່ໄຟລ໌';
	@override String get folderName => 'ຊື່ໂຟລເດີຣ໌';
	@override String get createFolder => '​ສ້າງ​ໂຟ​ລ​ເດີ';
	@override String get renameFolder => 'ປ່ຽນຊື່ໂຟນເດີນີ້';
	@override String get deleteFolder => 'ລົບໂຟ​ລ​ເດີ​';
	@override String get addFile => 'ເພີ່ມໄຟລ໌';
	@override String get emptyDrive => 'Drive ຂອງທ່ານຫວ່າງເປົ່າ';
	@override String get emptyFolder => 'ໂຟລເດີຣ໌ນີ້ວ່າງເປົ່າ';
	@override String get unableToDelete => 'ບໍ່​ສາ​ມາດລົບໄດ້';
	@override String get inputNewFileName => 'ໃສ່ຊື່ໄຟລ໌ໃໝ່';
	@override String get inputNewDescription => 'ໃສ່ຄຳບັນຍາຍໃໝ່';
	@override String get inputNewFolderName => 'ໃສ່ຊື່ໂຟນເດີໃໝ່';
	@override String get circularReferenceFolder => 'ໂຟນເດີປາຍທາງແມ່ນໂຟນເດີຍ່ອຍຂອງໂຟນເດີທີ່ທ່ານຕ້ອງການຍ້າຍ';
	@override String get rename => 'ປ່ຽນຊື່';
	@override String get doNothing => 'ຢ່າມັນ';
	@override String get watch => 'ເພັ່ງເລັງ';
	@override String get unwatch => 'ຢຸດເພັ່ງເລັງ';
	@override String get accept => 'ອະນຸຍາດ';
	@override String get reject => 'ປະຕິເສດ';
	@override String get normal => 'ປົກກະຕິ';
	@override String get instanceName => 'ຊື່ເຊີເວີ້';
	@override String get instanceDescription => 'ຄຳອະທິບາຍແນະນຳເຊີຟເວີຣ໌';
	@override String get maintainerName => 'ຜູ້ດູແລ';
	@override String get maintainerEmail => 'ອີເມລຜູ້ດູແລ';
	@override String get tosUrl => ' URL ເງື່ອນໄຂການໃຫ້ບໍລິການ';
	@override String get thisYear => 'ປີນີ້';
	@override String get thisMonth => 'ເດືອນນີ້';
	@override String get today => 'ມື້ນີ້';
	@override String dayX({required Object day}) => 'ວັນ ${day}';
	@override String monthX({required Object month}) => 'ເດືອນ ${month}';
	@override String yearX({required Object year}) => 'ປີ ${year}';
	@override String get pages => 'ໜ້າ';
	@override String get integration => 'ເຊື່ອມໂຍງ';
	@override String get connectService => 'ເຊື່ອມຕໍ່';
	@override String get disconnectService => 'ຕັດການເຊື່ອມຕໍ່';
	@override String get enableLocalTimeline => 'ເປີດໃຊ້ທາມລາຍທ້ອງຖິ່ນ';
	@override String get enableGlobalTimeline => 'ເປີດໃຊ້ທາມລາຍທົ່ວໂລກ';
	@override String get disablingTimelinesInfo => 'ຜູ້ດູແລລະບບແລະຜູ້ຄວບຄຸມຈະສາມາດເຂົ້າເຖີງໄທມ໌ໄລນ໌ທັ້ງເບີດ ເຖີງວ່າຈະບໍ່ໄດ້ເປີດໃຊ້ງານກໍ່ຕາມ';
	@override String get registration => 'ລົງທະບຽນ';
	@override String get invite => 'ເຊີນ';
	@override String get driveCapacityPerLocalAccount => 'ຄວາມຈຸຂອງ drive ຕໍ່ຜູ້ໃຊ້ທ້ອງຖິ່ນ';
	@override String get driveCapacityPerRemoteAccount => 'ຄວາມຈຸຂອງ drive ຕໍ່ຜູ້ໃຊ້ໄລຍະໄກ';
	@override String get basicInfo => 'ຂໍ້ມຸນເບື້ອງຕົ້ນ';
	@override String get pinnedNotes => 'Note ທີ່ປັກໝຸດໄວ້';
	@override String get hcaptchaSiteKey => 'Site key';
	@override String get hcaptchaSecretKey => 'Secret key';
	@override String get mcaptchaSiteKey => 'Site key';
	@override String get mcaptchaSecretKey => 'Secret Key';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'ເປີດໃຊ້ງານ reCAPTCHA';
	@override String get recaptchaSiteKey => 'Site key';
	@override String get recaptchaSecretKey => 'Secret key';
	@override String get turnstileSiteKey => 'Site key';
	@override String get turnstileSecretKey => 'Secret key';
	@override String get name => 'ຊື່';
	@override String get userList => 'ລາຍການ';
	@override String get about => 'ກ່ຽວກັບ';
	@override String get aboutMisskey => 'ກ່ຽວກັບ Misskey';
	@override String get administrator => 'ຜູ້ດູແລ';
	@override String get token => 'ໂທເຄັນ';
	@override String get share => 'ແບ່ງປັນ';
	@override String get notFound => 'ບໍ່ພົບ';
	@override String get help => 'ຊ່ວຍເຫຼືອ';
	@override String get close => 'ປິດ';
	@override String get invites => 'ເຊີນ';
	@override String get members => 'ສະມາຊິກ';
	@override String get transfer => 'ໂອນຍ້າຍ';
	@override String get title => 'ຫົວຂໍ້';
	@override String get text => 'ຂໍ້ຄວາມ';
	@override String get enable => 'ເປີດໃຊ້';
	@override String get next => 'ຕໍ່ໄປ';
	@override String get retype => 'ລອງພິມລະຫັດອີກເທື່ອໜຶ່ງ';
	@override String get quoteAttached => 'ອ້າງອິງ';
	@override String get invitations => 'ເຊີນ';
	@override String get unavailable => 'ບໍ່​ສາ​ມາດ​ໃຊ້​ໄດ້';
	@override String get language => 'ພາສາ';
	@override String aboutX({required Object x}) => 'ກ່ຽວກັບ ${x}';
	@override String get emojiStyle => 'ຮູບແບບອີໂມຈິ';
	@override String get native => 'ພາ​ສາ​ແມ່';
	@override String get noHistory => '​ບໍ່​ມີປະຫວັດ';
	@override String get doing => 'ກຳລັງປະມວນຜົນ...';
	@override String get category => 'ຫມວດຫມູ່';
	@override String get tags => 'Aliases';
	@override String get createAccount => 'ສ້າງບັນຊີ';
	@override String get existingAccount => 'ບັນຊີທີ່ມີຢູ່ແລ້ວ';
	@override String get dashboard => 'Dashboard';
	@override String get local => 'ທ້ອງຖິ່ນ';
	@override String get numberOfDays => 'ຈຳນວນມື້';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStoragePrefix => 'Prefix';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageRegion => 'ພູມິພາກ';
	@override String get deleteAll => 'ລຶບທັງໝົດ';
	@override String get sounds => 'ສຽງ';
	@override String get sound => 'ສຽງ';
	@override String get none => 'ບໍ່ມີ';
	@override String get volume => 'ລະດັບສຽງ';
	@override String get details => 'ລາຍລະອຽດ';
	@override String get install => 'ຕິດຕັ້ງ';
	@override String get uninstall => 'ຖອນການຕິດຕັ້ງ';
	@override String get state => 'ສະຖານະ';
	@override String get sort => 'ຈັດຮຽງໂດຍ';
	@override String get ascendingOrder => 'ນ້ອຍໄປຫາໃຫຍ່';
	@override String get descendingOrder => 'ໃຫຍ່ຫານ້ອຍ';
	@override String get output => 'Output';
	@override String get script => 'Script';
	@override String get menu => 'ເມນູ';
	@override String get rearrange => 'ຈັດລຽງໃໝ່';
	@override String get poll => 'Poll';
	@override String get description => 'ລາຍລະອຽດ';
	@override String get author => 'ຜູ້ຂຽນ';
	@override String get manage => 'ການຈັດການ';
	@override String get plugins => 'ປລັ໋ກອີນ';
	@override String get width => 'ກວ້າງ';
	@override String get height => 'ຄວາມສູງ';
	@override String get large => 'ໃຫຍ່.';
	@override String get medium => 'ປານກາງ';
	@override String get small => 'ເລັກ';
	@override String get permission => 'ການອະນຸຍາດ';
	@override String get notificationType => '​ປະເພດການ​ແຈ້ງ​ເຕືອນ';
	@override String get edit => 'ແກ້ໄຂ';
	@override String get email => 'ອີເມວ';
	@override String get smtpHost => 'ໂຮສຕ໌';
	@override String get smtpUser => 'ຊື່ຜູ້ໃຊ້';
	@override String get smtpPass => 'ລະຫັດຜ່ານ';
	@override String get clearCache => 'ລຶບລ້າງແຄສ';
	@override String get info => 'ກ່ຽວກັບ';
	@override String get user => 'ຜູ້ໃຊ້ຕ່າງໆ';
	@override String get administration => 'ການຈັດການ';
	@override String get middle => 'ປານກາງ';
	@override String get searchByGoogle => 'ຄົ້ນຫາ';
	@override String get file => 'ໄຟລ໌';
	@override String get replies => 'ຕອບ​ກັບ';
	@override String get renotes => 'Renote';
	@override String get information => 'ກ່ຽວກັບ';
	@override late final _Translations$misskey$imageEditing_$lo_LA imageEditing_ = _Translations$misskey$imageEditing_$lo_LA._(_root);
	@override late final _Translations$misskey$chat_$lo_LA chat_ = _Translations$misskey$chat_$lo_LA._(_root);
	@override late final _Translations$misskey$delivery_$lo_LA delivery_ = _Translations$misskey$delivery_$lo_LA._(_root);
	@override late final _Translations$misskey$role_$lo_LA role_ = _Translations$misskey$role_$lo_LA._(_root);
	@override late final _Translations$misskey$email_$lo_LA email_ = _Translations$misskey$email_$lo_LA._(_root);
	@override late final _Translations$misskey$theme_$lo_LA theme_ = _Translations$misskey$theme_$lo_LA._(_root);
	@override late final _Translations$misskey$sfx_$lo_LA sfx_ = _Translations$misskey$sfx_$lo_LA._(_root);
	@override late final _Translations$misskey$x2fa_$lo_LA x2fa_ = _Translations$misskey$x2fa_$lo_LA._(_root);
	@override late final _Translations$misskey$widgets_$lo_LA widgets_ = _Translations$misskey$widgets_$lo_LA._(_root);
	@override late final _Translations$misskey$widgetOptions_$lo_LA widgetOptions_ = _Translations$misskey$widgetOptions_$lo_LA._(_root);
	@override late final _Translations$misskey$cw_$lo_LA cw_ = _Translations$misskey$cw_$lo_LA._(_root);
	@override late final _Translations$misskey$visibility_$lo_LA visibility_ = _Translations$misskey$visibility_$lo_LA._(_root);
	@override late final _Translations$misskey$postForm_$lo_LA postForm_ = _Translations$misskey$postForm_$lo_LA._(_root);
	@override late final _Translations$misskey$profile_$lo_LA profile_ = _Translations$misskey$profile_$lo_LA._(_root);
	@override late final _Translations$misskey$exportOrImport_$lo_LA exportOrImport_ = _Translations$misskey$exportOrImport_$lo_LA._(_root);
	@override late final _Translations$misskey$charts_$lo_LA charts_ = _Translations$misskey$charts_$lo_LA._(_root);
	@override late final _Translations$misskey$timelines_$lo_LA timelines_ = _Translations$misskey$timelines_$lo_LA._(_root);
	@override late final _Translations$misskey$play_$lo_LA play_ = _Translations$misskey$play_$lo_LA._(_root);
	@override late final _Translations$misskey$pages_$lo_LA pages_ = _Translations$misskey$pages_$lo_LA._(_root);
	@override late final _Translations$misskey$notification_$lo_LA notification_ = _Translations$misskey$notification_$lo_LA._(_root);
	@override late final _Translations$misskey$deck_$lo_LA deck_ = _Translations$misskey$deck_$lo_LA._(_root);
	@override late final _Translations$misskey$webhookSettings_$lo_LA webhookSettings_ = _Translations$misskey$webhookSettings_$lo_LA._(_root);
	@override late final _Translations$misskey$abuseReport_$lo_LA abuseReport_ = _Translations$misskey$abuseReport_$lo_LA._(_root);
	@override late final _Translations$misskey$moderationLogTypes_$lo_LA moderationLogTypes_ = _Translations$misskey$moderationLogTypes_$lo_LA._(_root);
	@override late final _Translations$misskey$remoteLookupErrors_$lo_LA remoteLookupErrors_ = _Translations$misskey$remoteLookupErrors_$lo_LA._(_root);
	@override late final _Translations$misskey$search_$lo_LA search_ = _Translations$misskey$search_$lo_LA._(_root);
	@override late final _Translations$misskey$watermarkEditor_$lo_LA watermarkEditor_ = _Translations$misskey$watermarkEditor_$lo_LA._(_root);
}

// Path: misskey.imageEditing_
class _Translations$misskey$imageEditing_$lo_LA extends Translations$misskey$imageEditing_$en_US {
	_Translations$misskey$imageEditing_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$imageEditing_$vars_$lo_LA vars_ = _Translations$misskey$imageEditing_$vars_$lo_LA._(_root);
}

// Path: misskey.chat_
class _Translations$misskey$chat_$lo_LA extends Translations$misskey$chat_$en_US {
	_Translations$misskey$chat_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get invitations => 'ເຊີນ';
	@override String get noHistory => '​ບໍ່​ມີປະຫວັດ';
	@override String get members => 'ສະມາຊິກ';
	@override String get home => 'ໜ້າຫຼັກ';
}

// Path: misskey.delivery_
class _Translations$misskey$delivery_$lo_LA extends Translations$misskey$delivery_$en_US {
	_Translations$misskey$delivery_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get stop => 'ໂຈະ';
	@override late final _Translations$misskey$delivery_$type_$lo_LA type_ = _Translations$misskey$delivery_$type_$lo_LA._(_root);
}

// Path: misskey.role_
class _Translations$misskey$role_$lo_LA extends Translations$misskey$role_$en_US {
	_Translations$misskey$role_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$role_$priority_$lo_LA priority_ = _Translations$misskey$role_$priority_$lo_LA._(_root);
}

// Path: misskey.email_
class _Translations$misskey$email_$lo_LA extends Translations$misskey$email_$en_US {
	_Translations$misskey$email_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$email_$follow_$lo_LA follow_ = _Translations$misskey$email_$follow_$lo_LA._(_root);
}

// Path: misskey.theme_
class _Translations$misskey$theme_$lo_LA extends Translations$misskey$theme_$en_US {
	_Translations$misskey$theme_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get description => 'ລາຍລະອຽດ';
	@override late final _Translations$misskey$theme_$keys$lo_LA keys = _Translations$misskey$theme_$keys$lo_LA._(_root);
}

// Path: misskey.sfx_
class _Translations$misskey$sfx_$lo_LA extends Translations$misskey$sfx_$en_US {
	_Translations$misskey$sfx_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get note => 'ບັນທຶກ';
	@override String get notification => 'ການແຈ້ງເຕືອນ';
}

// Path: misskey.x2fa_
class _Translations$misskey$x2fa_$lo_LA extends Translations$misskey$x2fa_$en_US {
	_Translations$misskey$x2fa_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get renewTOTPCancel => 'ບໍ່​ແມ່ນ​ຕອນ​ນີ້';
}

// Path: misskey.widgets_
class _Translations$misskey$widgets_$lo_LA extends Translations$misskey$widgets_$en_US {
	_Translations$misskey$widgets_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ໂປຣໄຟລ໌';
	@override String get instanceInfo => 'ຂໍ້ມູລເຊີຟເວີຣ໌';
	@override String get notifications => 'ການແຈ້ງເຕືອນ';
	@override String get timeline => '​ເສັ້ນກຳ​ນົດ​ເວ​ລາ​';
	@override String get activity => 'ກິດຈະກຳ';
	@override String get federation => 'ສະຫະພັນ';
	@override String get jobQueue => 'ຄິວວຽກ';
	@override late final _Translations$misskey$widgets_$userList_$lo_LA userList_ = _Translations$misskey$widgets_$userList_$lo_LA._(_root);
}

// Path: misskey.widgetOptions_
class _Translations$misskey$widgetOptions_$lo_LA extends Translations$misskey$widgetOptions_$en_US {
	_Translations$misskey$widgetOptions_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get height => 'ຄວາມສູງ';
}

// Path: misskey.cw_
class _Translations$misskey$cw_$lo_LA extends Translations$misskey$cw_$en_US {
	_Translations$misskey$cw_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get show => 'ໂຫຼດເພີ່ມເຕີມ';
}

// Path: misskey.visibility_
class _Translations$misskey$visibility_$lo_LA extends Translations$misskey$visibility_$en_US {
	_Translations$misskey$visibility_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get home => 'ໜ້າຫຼັກ';
	@override String get followers => 'ຜູ້ຕິດຕາມ';
	@override String get specified => 'ໂພສ Direct note';
}

// Path: misskey.postForm_
class _Translations$misskey$postForm_$lo_LA extends Translations$misskey$postForm_$en_US {
	_Translations$misskey$postForm_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$postForm_$howToUse_$lo_LA howToUse_ = _Translations$misskey$postForm_$howToUse_$lo_LA._(_root);
}

// Path: misskey.profile_
class _Translations$misskey$profile_$lo_LA extends Translations$misskey$profile_$en_US {
	_Translations$misskey$profile_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get name => 'ຊື່';
	@override String get username => 'ຊື່ຜູ້ໃຊ້';
}

// Path: misskey.exportOrImport_
class _Translations$misskey$exportOrImport_$lo_LA extends Translations$misskey$exportOrImport_$en_US {
	_Translations$misskey$exportOrImport_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get followingList => 'ກຳລັງຕິດຕາມ';
	@override String get muteList => 'ປີດສຽງ';
	@override String get blockingList => 'ບລັອກ';
	@override String get userLists => 'ລາຍການ';
}

// Path: misskey.charts_
class _Translations$misskey$charts_$lo_LA extends Translations$misskey$charts_$en_US {
	_Translations$misskey$charts_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get federation => 'ສະຫະພັນ';
}

// Path: misskey.timelines_
class _Translations$misskey$timelines_$lo_LA extends Translations$misskey$timelines_$en_US {
	_Translations$misskey$timelines_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get home => 'ໜ້າຫຼັກ';
}

// Path: misskey.play_
class _Translations$misskey$play_$lo_LA extends Translations$misskey$play_$en_US {
	_Translations$misskey$play_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get script => 'Script';
	@override String get summary => 'ລາຍລະອຽດ';
}

// Path: misskey.pages_
class _Translations$misskey$pages_$lo_LA extends Translations$misskey$pages_$en_US {
	_Translations$misskey$pages_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$pages_$blocks$lo_LA blocks = _Translations$misskey$pages_$blocks$lo_LA._(_root);
}

// Path: misskey.notification_
class _Translations$misskey$notification_$lo_LA extends Translations$misskey$notification_$en_US {
	_Translations$misskey$notification_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get youWereFollowed => 'ໄດ້ຕິດຕາມເຈົ້າ';
	@override late final _Translations$misskey$notification_$types_$lo_LA types_ = _Translations$misskey$notification_$types_$lo_LA._(_root);
	@override late final _Translations$misskey$notification_$actions_$lo_LA actions_ = _Translations$misskey$notification_$actions_$lo_LA._(_root);
}

// Path: misskey.deck_
class _Translations$misskey$deck_$lo_LA extends Translations$misskey$deck_$en_US {
	_Translations$misskey$deck_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$deck_$columns_$lo_LA columns_ = _Translations$misskey$deck_$columns_$lo_LA._(_root);
}

// Path: misskey.webhookSettings_
class _Translations$misskey$webhookSettings_$lo_LA extends Translations$misskey$webhookSettings_$en_US {
	_Translations$misskey$webhookSettings_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get name => 'ຊື່';
}

// Path: misskey.abuseReport_
class _Translations$misskey$abuseReport_$lo_LA extends Translations$misskey$abuseReport_$en_US {
	_Translations$misskey$abuseReport_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$abuseReport_$notificationRecipient_$lo_LA notificationRecipient_ = _Translations$misskey$abuseReport_$notificationRecipient_$lo_LA._(_root);
}

// Path: misskey.moderationLogTypes_
class _Translations$misskey$moderationLogTypes_$lo_LA extends Translations$misskey$moderationLogTypes_$en_US {
	_Translations$misskey$moderationLogTypes_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'ລະງັບ';
}

// Path: misskey.remoteLookupErrors_
class _Translations$misskey$remoteLookupErrors_$lo_LA extends Translations$misskey$remoteLookupErrors_$en_US {
	_Translations$misskey$remoteLookupErrors_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$remoteLookupErrors_$noSuchObject_$lo_LA noSuchObject_ = _Translations$misskey$remoteLookupErrors_$noSuchObject_$lo_LA._(_root);
}

// Path: misskey.search_
class _Translations$misskey$search_$lo_LA extends Translations$misskey$search_$en_US {
	_Translations$misskey$search_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'ທັງໝົດ';
}

// Path: misskey.watermarkEditor_
class _Translations$misskey$watermarkEditor_$lo_LA extends Translations$misskey$watermarkEditor_$en_US {
	_Translations$misskey$watermarkEditor_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get image => 'ຮູບພາບ';
}

// Path: misskey.imageEditing_.vars_
class _Translations$misskey$imageEditing_$vars_$lo_LA extends Translations$misskey$imageEditing_$vars_$en_US {
	_Translations$misskey$imageEditing_$vars_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get filename => 'ຊື່ໄຟລ໌';
}

// Path: misskey.delivery_.type_
class _Translations$misskey$delivery_$type_$lo_LA extends Translations$misskey$delivery_$type_$en_US {
	_Translations$misskey$delivery_$type_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get none => 'ກຳລັງ​ເຜີຍ​ແພ່';
}

// Path: misskey.role_.priority_
class _Translations$misskey$role_$priority_$lo_LA extends Translations$misskey$role_$priority_$en_US {
	_Translations$misskey$role_$priority_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get middle => 'ປານກາງ';
}

// Path: misskey.email_.follow_
class _Translations$misskey$email_$follow_$lo_LA extends Translations$misskey$email_$follow_$en_US {
	_Translations$misskey$email_$follow_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ໄດ້ຕິດຕາມທ່ານ';
}

// Path: misskey.theme_.keys
class _Translations$misskey$theme_$keys$lo_LA extends Translations$misskey$theme_$keys$en_US {
	_Translations$misskey$theme_$keys$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get mention => 'ໄດ້ກ່າວມາ';
	@override String get renote => 'Renote';
}

// Path: misskey.widgets_.userList_
class _Translations$misskey$widgets_$userList_$lo_LA extends Translations$misskey$widgets_$userList_$en_US {
	_Translations$misskey$widgets_$userList_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'ເລືອກບັນຊີລາຍການ';
}

// Path: misskey.postForm_.howToUse_
class _Translations$misskey$postForm_$howToUse_$lo_LA extends Translations$misskey$postForm_$howToUse_$en_US {
	_Translations$misskey$postForm_$howToUse_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get menu_title => 'ເມນູ';
}

// Path: misskey.pages_.blocks
class _Translations$misskey$pages_$blocks$lo_LA extends Translations$misskey$pages_$blocks$en_US {
	_Translations$misskey$pages_$blocks$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get image => 'ຮູບພາບ';
}

// Path: misskey.notification_.types_
class _Translations$misskey$notification_$types_$lo_LA extends Translations$misskey$notification_$types_$en_US {
	_Translations$misskey$notification_$types_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get follow => 'ກຳລັງຕິດຕາມ';
	@override String get mention => 'ໄດ້ກ່າວເຖິງ';
	@override String get renote => 'Renote';
	@override String get quote => 'ອ້າງອີງ';
	@override String get reaction => 'Reaction';
	@override String get login => 'ເຂົ້າ​ສູ່​ລະ​ບົບ';
}

// Path: misskey.notification_.actions_
class _Translations$misskey$notification_$actions_$lo_LA extends Translations$misskey$notification_$actions_$en_US {
	_Translations$misskey$notification_$actions_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get reply => 'ຕອບ​ກັບ';
	@override String get renote => 'Renote';
}

// Path: misskey.deck_.columns_
class _Translations$misskey$deck_$columns_$lo_LA extends Translations$misskey$deck_$columns_$en_US {
	_Translations$misskey$deck_$columns_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'ການແຈ້ງເຕືອນ';
	@override String get tl => '​ເສັ້ນກຳ​ນົດ​ເວ​ລາ​';
	@override String get list => 'ລາຍການ';
	@override String get channel => 'ຊ່ອງ';
	@override String get mentions => 'ກ່າວເຖິງເຈົ້າ';
	@override String get direct => 'ໂພສ Direct note';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _Translations$misskey$abuseReport_$notificationRecipient_$lo_LA extends Translations$misskey$abuseReport_$notificationRecipient_$en_US {
	_Translations$misskey$abuseReport_$notificationRecipient_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$lo_LA recipientType_ = _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$lo_LA._(_root);
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _Translations$misskey$remoteLookupErrors_$noSuchObject_$lo_LA extends Translations$misskey$remoteLookupErrors_$noSuchObject_$en_US {
	_Translations$misskey$remoteLookupErrors_$noSuchObject_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ບໍ່ພົບ';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$lo_LA extends Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$en_US {
	_Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$lo_LA._(TranslationsLoLa root) : this._root = root, super.internal(root);

	final TranslationsLoLa _root; // ignore: unused_field

	// Translations
	@override String get mail => 'ອີເມວ';
}
