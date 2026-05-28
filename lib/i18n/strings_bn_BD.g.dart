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
class TranslationsBnBd extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsBnBd({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.bnBd,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <bn-BD>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsBnBd _root = this; // ignore: unused_field

	@override 
	TranslationsBnBd $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsBnBd(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$aria$bn_BD aria = _Translations$aria$bn_BD._(_root);
	@override late final _Translations$misskey$bn_BD misskey = _Translations$misskey$bn_BD._(_root);
}

// Path: aria
class _Translations$aria$bn_BD extends Translations$aria$en_US {
	_Translations$aria$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' কে ফলোও করার ব্যাপারে নিশ্চিত?'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria স্বেচ্ছাসেবকদের দ্বারা বিভিন্ন ভাষায় অনুবাদ করা হচ্ছে। আপনি '),
		link,
		const TextSpan(text: ' এ গিয়ে অনুবাদে সহযোগিতা করতে পারেন।'),
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' জন ব্যাবহারকারী অনলাইন'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: ' রিনোট করেছেন'),
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' কে আনফলোও করার ব্যাপারে নিশ্চিত?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' কিছু বলেছে'),
	]);
}

// Path: misskey
class _Translations$misskey$bn_BD extends Translations$misskey$en_US {
	_Translations$misskey$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'বাংলা';
	@override String get headlineMisskey => 'নোট ব্যাবহার করে সংযুক্ত নেটওয়ার্ক';
	@override String get introMisskey => 'স্বাগতম! মিসকি একটি ওপেন সোর্স, ডিসেন্ট্রালাইজড মাইক্রোব্লগিং পরিষেবা। \n"নোট" তৈরির মাধ্যমে যা ঘটছে তা সবার সাথে শেয়ার করুন 📡\n"রিঅ্যাকশন" গুলির মাধ্যমে যেকোনো নোট সম্পর্কে আপনার অনুভূতি ব্যাক্ত করতে পারেন 👍\nএকটি নতুন দুনিয়া ঘুরে দেখুন 🚀\n';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} হল ওপেন সোর্স প্ল্যাটফর্ম <b>Misskey</b>-এর সার্ভারগুলির একটি৷';
	@override String monthAndDay({required Object day, required Object month}) => '${day}/${month}';
	@override String get search => 'খুঁজুন';
	@override String get notifications => 'বিজ্ঞপ্তি';
	@override String get username => 'ব্যবহারকারীর নাম';
	@override String get password => 'পাসওয়ার্ড';
	@override String get forgotPassword => 'পাসওয়ার্ড ভুলে গেছেন';
	@override String get fetchingAsApObject => 'ফেডিভার্স থেকে খবর আনা হচ্ছে...';
	@override String get ok => 'ঠিক';
	@override String get gotIt => 'বুঝেছি';
	@override String get cancel => 'বাতিল';
	@override String get noThankYou => 'না, ধন্যবাদ';
	@override String get enterUsername => 'ইউজারনেম লিখুন';
	@override String renotedBy({required Object user}) => '${user} রিনোট করেছেন';
	@override String get noNotes => 'কোন নোট নেই';
	@override String get noNotifications => 'কোনো বিজ্ঞপ্তি নেই';
	@override String get instance => 'ইন্সট্যান্স';
	@override String get settings => 'সেটিংস';
	@override String get notificationSettings => 'বিজ্ঞপ্তির সেটিংস';
	@override String get basicSettings => 'সাধারণ সেটিংস';
	@override String get otherSettings => 'অন্যান্য সেটিংস';
	@override String get openInWindow => 'নতুন উইন্ডোতে খুলা';
	@override String get profile => 'প্রোফাইল';
	@override String get timeline => 'টাইমলাইন';
	@override String get noAccountDescription => 'এই ব্যাবহারকারীর কোন বায়ো নেই';
	@override String get login => 'প্রবেশ করুন';
	@override String get loggingIn => 'প্রবেশ করা হচ্ছে...';
	@override String get logout => 'লগআউট';
	@override String get signup => 'নিবন্ধন করুন';
	@override String get uploading => 'আপলোড হচ্ছ …';
	@override String get save => 'সংরক্ষণ';
	@override String get users => 'ব্যবহারকারীগণ';
	@override String get addUser => 'ব্যবহারকারী যোগ করুন';
	@override String get favorite => 'পছন্দ';
	@override String get favorites => 'পছন্দগুলি';
	@override String get unfavorite => 'পছন্দ না';
	@override String get favorited => 'পছন্দ করা হয়েছে';
	@override String get alreadyFavorited => 'ইতিমধ্যে পছন্দ করা হয়েছে';
	@override String get cantFavorite => 'পছন্দ করা যায়নি';
	@override String get pin => 'পিন করা';
	@override String get unpin => 'পিন সরান';
	@override String get copyContent => 'বিষয়বস্তু কপি করুন';
	@override String get copyLink => 'লিঙ্ক কপি করুন';
	@override String get copyLinkRenote => 'রিনোট লিঙ্ক কপি করুন';
	@override String get delete => 'মুছুন';
	@override String get deleteAndEdit => 'মুছুন এবং সম্পাদনা করুন';
	@override String get deleteAndEditConfirm => 'আপনি কি এই নোটটি মুছে এটি সম্পাদনা করার বিষয়ে নিশ্চিত? আপনি এটির সমস্ত রিঅ্যাকশন, রিনোট এবং জবাব হারাবেন।';
	@override String get addToList => 'লিস্ট এ যোগ করুন';
	@override String get addToAntenna => 'অ্যান্টেনা এ যোগ করুন';
	@override String get sendMessage => 'একটি বার্তা পাঠান';
	@override String get copyRSS => 'RSS কপি করুন';
	@override String get copyUsername => 'ব্যবহারকারীর নাম কপি করুন';
	@override String get copyUserId => 'ব্যবহারকারীর ID কপি করুন';
	@override String get copyNoteId => 'নোটের ID কপি করুন';
	@override String get copyFileId => 'ফাইল ID কপি করুন';
	@override String get copyFolderId => 'ফোল্ডার ID কপি করুন';
	@override String get copyProfileUrl => 'প্রোফাইল URL কপি করুন';
	@override String get searchUser => 'ব্যবহারকারী খুঁজুন...';
	@override String get reply => 'জবাব';
	@override String get loadMore => 'আরও দেখুন';
	@override String get showMore => 'আরও দেখুন';
	@override String get showLess => 'বন্ধ';
	@override String get youGotNewFollower => 'আপনাকে অনুসরণ করছে';
	@override String get receiveFollowRequest => 'অনুসরণ করার জন্য অনুরোধ পাওয়া গেছে';
	@override String get followRequestAccepted => 'অনুসরণ করার অনুরোধ গৃহীত হয়েছে';
	@override String get mention => 'উল্লেখ';
	@override String get mentions => 'উল্লেখসমূহ';
	@override String get directNotes => 'ডাইরেক্ট নোটগুলি';
	@override String get importAndExport => 'আমদানি এবং রপ্তানি';
	@override String get import => 'আমদানি করুণ';
	@override String get export => 'রপ্তানি';
	@override String get files => 'ফাইলগুলি';
	@override String get download => 'ডাউনলোড';
	@override String driveFileDeleteConfirm({required Object name}) => 'আপনি কি নিশ্চিত যে আপনি "${name}" ডিলিট করতে চান? যে সকল নোটের সাথে এই ফাইলটি সংযুক্ত সেগুলোও ডিলিট করা হবে।';
	@override String unfollowConfirm({required Object name}) => '${name} কে আনফলোও করার ব্যাপারে নিশ্চিত?';
	@override String get exportRequested => 'আপনার তথ্যসমূহ রপ্তানির জন্য অনুরোধ করেছেন। এতে কিছু সময় লাগতে পারে। রপ্তানি সম্পন্ন হলে তা আপনার ড্রাইভে সংরক্ষিত হবে।';
	@override String get importRequested => 'আপনার তথ্যসমূহ আমদানির জন্য অনুরোধ করেছেন। এতে কিছু সময় লাগতে পারে। ';
	@override String get lists => 'লিস্ট';
	@override String get noLists => 'কোন লিস্ট নেই';
	@override String get note => 'নোট';
	@override String get notes => 'নোটগুলি';
	@override String get following => 'অনুসরণ করা হচ্ছে';
	@override String get followers => 'অনুসরণকারী';
	@override String get followsYou => 'আপনাকে অনুসরণ করে';
	@override String get createList => 'লিস্ট তৈরি করুন';
	@override String get manageLists => 'লিস্ট ব্যাবস্থাপনা';
	@override String get error => 'সমস্যা';
	@override String get somethingHappened => 'একটি ত্রুটি হয়েছে';
	@override String get retry => 'আবার চেষ্টা করুন';
	@override String get pageLoadError => 'পেজ লোড করা যায়নি';
	@override String get pageLoadErrorDescription => 'এটি সাধারনত নেটওয়ার্কের সমস্যার বা ব্রাউজার ক্যাশের কারণে ঘটে থাকে। ব্রাউজার এর ক্যাশ পরিষ্কার করুন এবং একটু পর আবার চেষ্টা করুন। ';
	@override String get serverIsDead => 'এই সার্ভার বর্তমানে সাড়া দিচ্ছে না। একটু পরে আবার চেষ্টা করুন।';
	@override String get youShouldUpgradeClient => 'এই পেজ দেখার জন্য আপনার ব্রাউজার রিফ্রেশ করে ক্লায়েন্ট আপডেট করুন। ';
	@override String get enterListName => 'লিস্টের নাম লিখুন';
	@override String get privacy => 'গোপনীয়তা';
	@override String get makeFollowManuallyApprove => 'অনুসরণ করার অনুরোধগুলি গৃহীত হওয়ার জন্য আপনার অনুমতি লাগবে';
	@override String get defaultNoteVisibility => 'ডিফল্ট দৃশ্যমান্যতা';
	@override String get follow => 'অনুসরণ';
	@override String get followRequest => 'অনুসরণ করার অনুরোধ';
	@override String get followRequests => 'অনুসরণ করার অনুরোধসমূহ';
	@override String get unfollow => 'অনুসরণ বাতিল';
	@override String get followRequestPending => 'অনুসরণ করার অনুরোধ বিচারাধীন';
	@override String get enterEmoji => 'ইমোজি প্রবেশ করান';
	@override String get renote => 'রিনোট';
	@override String get unrenote => 'রিনোট সরান ';
	@override String get renoted => 'রিনোট করা হয়েছে';
	@override String get cantRenote => 'এই নোটটি রিনোট করা যাবে না।';
	@override String get cantReRenote => 'রিনোটকে রিনোট করা যাবে না।';
	@override String get quote => 'উদ্ধৃতি';
	@override String get inChannelRenote => 'চ্যানেলে রিনোট';
	@override String get inChannelQuote => 'চ্যানেলে উদ্ধৃতি';
	@override String get pinnedNote => 'পিন করা নোট';
	@override String get pinned => 'পিন করা';
	@override String get you => 'আপনি';
	@override String get clickToShow => 'দেখার জন্য ক্লিক করুন';
	@override String get sensitive => 'সংবেদনশীল বিষয়বস্তু';
	@override String get add => 'যুক্ত করুন';
	@override String get reaction => 'প্রতিক্রিয়া';
	@override String get reactions => 'প্রতিক্রিয়া';
	@override String get emojiPicker => 'ইমোজি পিকার';
	@override String get pinnedEmojisForReactionSettingDescription => 'রিঅ্যাকশন দেয়ার সময় আপনি ইমোজিটিকে পিন করা এবং প্রদর্শিত হওয়ার জন্য সেট করতে পারেন।';
	@override String get pinnedEmojisSettingDescription => 'ইমোজি ইনপুট দেয়ার সময় আপনি ইমোজিটিকে পিন করা এবং প্রদর্শিত হওয়ার জন্য সেট করতে পারেন।';
	@override String get emojiPickerDisplay => 'পিকার ডিসপ্লে';
	@override String get reactionSettingDescription2 => 'পুনরায় সাজাতে টেনে আনুন, মুছতে ক্লিক করুন, যোগ করতে + টিপুন।';
	@override String get rememberNoteVisibility => 'নোটের দৃশ্যমান্যতার সেটিংস মনে রাখুন';
	@override String get attachCancel => 'অ্যাটাচমেন্ট সরান ';
	@override String get markAsSensitive => 'সংবেদনশীল হিসাবে চিহ্নিত করুন';
	@override String get unmarkAsSensitive => 'সংবেদনশীল চিহ্ন সরান';
	@override String get enterFileName => 'ফাইলের নাম লিখুন';
	@override String get mute => 'মিউট';
	@override String get unmute => 'আনমিউট';
	@override String get block => 'ব্লক';
	@override String get unblock => 'ব্লক সরান';
	@override String get suspend => 'স্থগিত করা';
	@override String get unsuspend => 'অস্থগিত করা';
	@override String get blockConfirm => 'ব্লক করতে চান?';
	@override String get unblockConfirm => 'ব্লক সরাতে চান?';
	@override String get suspendConfirm => 'স্থগিত করতে চান?';
	@override String get unsuspendConfirm => 'অস্থগিত করতে চান?';
	@override String get selectList => 'লিস্ট নির্বাচন করুন';
	@override String get selectAntenna => 'অ্যান্টেনা নির্বাচন করুন';
	@override String get selectWidget => 'উইজেট নির্বাচন করুন';
	@override String get editWidgets => 'উইজেট সম্পাদনা করুন';
	@override String get editWidgetsExit => 'সম্পাদনা শেষ করুন';
	@override String get customEmojis => 'স্বনির্ধারিত ইমোজিগুলি';
	@override String get emoji => 'ইমোজি';
	@override String get emojis => 'ইমোজিগুলি';
	@override String get emojiName => 'ইমোজির নাম';
	@override String get emojiUrl => 'ইমোজির URL';
	@override String get addEmoji => 'ইমোজি যুক্ত করুন';
	@override String get settingGuide => 'সুপারিশকৃত সেটিংস';
	@override String get cacheRemoteFiles => 'রিমোট ফাইলসমুহ ক্যাশ করুন';
	@override String get cacheRemoteFilesDescription => 'যখন এই অপশনটি বন্ধ থাকে তখন রিমোট ফাইল সমূহ সরাসরি রিমোট ইন্সট্যান্স থেকে লোড করা হয়। এই অপশনটি বন্ধ করলে স্টোরেজ এর ব্যাবহার কমবে তবে থাম্বনেইল তৈরি না করার কারণে নেটওয়ার্ক ব্যান্ডউইথ বেশী লাগবে।  ';
	@override String get flagAsBot => 'বট হিসাবে চিহ্নিত করুন';
	@override String get flagAsBotDescription => 'এই অ্যাকাউন্টটি যদি একটি প্রোগ্রাম দ্বারা পরিচালিত হয়, তাহলে এই অপশনটি চালু করুন। ইন্টারঅ্যাকশান চেইনিং রোধ করতে, মিস্কির সিস্টেম পরিচালনাকে বট-বান্ধব করতে এবং অন্যান্য ডেভেলপারদের সাহায্য করতে আপনার বট এ এই অপশনটি চালু করুন৷';
	@override String get flagAsCat => 'বিড়াল হিসাবে চিহ্নিত করুন';
	@override String get flagAsCatDescription => 'অ্যাকাউন্টটিকে বিড়াল হিসাবে চিহ্নিত করার জন্য অপশনটি চালু করুন।';
	@override String get flagShowTimelineReplies => 'টাইমলাইনে নোটগুলির রিপ্লাই দেখান';
	@override String get flagShowTimelineRepliesDescription => 'চালু করলে, টাইমলাইন ব্যবহারকারীর নোট ছাড়াও ব্যবহারকারীর অন্যান্য নোটের জবাবগুলো দেখায়।';
	@override String get autoAcceptFollowed => 'আপনি যেসব অ্যাকাউন্ট অনুসরণ করেন, স্বয়ংক্রিয়ভাবে তাদের অনুসরণের অনুরধ স্বীকার করুন';
	@override String get addAccount => 'অ্যাকাউন্ট যোগ করুন';
	@override String get loginFailed => 'প্রবেশ করা যায়নি';
	@override String get showOnRemote => 'রিমোট সার্ভারে দেখুন';
	@override String get general => 'সাধারণ';
	@override String get wallpaper => 'ওয়ালপেপার';
	@override String get setWallpaper => 'ওয়ালপেপার সেট করুন';
	@override String get removeWallpaper => 'ওয়ালপেপার সরান';
	@override String searchWith({required Object q}) => 'খুঁজুন: ${q}';
	@override String get youHaveNoLists => 'আপনার কোন লিস্ট নেই';
	@override String followConfirm({required Object name}) => '${name} কে ফলোও করার ব্যাপারে নিশ্চিত?';
	@override String get proxyAccount => 'প্রক্সি অ্যাকাউন্ট';
	@override String get proxyAccountDescription => 'একটি প্রক্সি অ্যাকাউন্ট এমন একটি অ্যাকাউন্ট যা নির্দিষ্ট শর্তে ব্যবহারকারীদের জন্য রিমোট অনুসরণকারী হিসাবে কাজ করে। উদাহরণস্বরূপ, যখন একজন ব্যবহারকারী একটি রিমোট ব্যবহারকারীকে তালিকাভুক্ত করে, তখন ক্রিয়াকলাপের দৃষ্টান্তে বিতরণ করা হবে না যদি না কেউ তালিকাভুক্ত ব্যবহারকারীকে অনুসরণ করে, তাই প্রক্সি অ্যাকাউন্ট দ্বারা তাকে অনুসরণ করা হবে।';
	@override String get host => 'হোস্ট';
	@override String get selectUser => 'ব্যবহারকারী নির্বাচন করুন';
	@override String get recipient => 'প্রতি';
	@override String get annotation => 'মন্তব্য';
	@override String get federation => 'ফেডিভার্স';
	@override String get instances => 'ইন্সট্যান্স';
	@override String get registeredAt => 'যোগ দিয়েছেন';
	@override String get latestRequestReceivedAt => 'শেষ রিকুয়েস্ট গৃহীত হয়েছে';
	@override String get latestStatus => 'সর্বশেষ অবস্থা';
	@override String get storageUsage => 'স্টোরেজের ব্যাবহার';
	@override String get charts => 'চার্ট';
	@override String get perHour => 'ঘন্টা প্রতি';
	@override String get perDay => 'দৈনিক';
	@override String get stopActivityDelivery => 'অ্যাক্টিভিটি পাঠানো বন্ধ করুন';
	@override String get blockThisInstance => 'ইন্সট্যান্স ব্লক করুন';
	@override String get operations => 'ক্রিয়াকলাপ';
	@override String get software => 'সফটওয়্যার';
	@override String get version => 'সংস্করণ';
	@override String get metadata => 'মেটাডাটা';
	@override String withNFiles({required Object n}) => '${n} টি ফাইল';
	@override String get monitor => 'মনিটর';
	@override String get jobQueue => 'জব কিউ';
	@override String get cpuAndMemory => 'সিপিউ এবং মেমরি';
	@override String get network => 'নেটওয়ার্ক';
	@override String get disk => 'ডিস্ক';
	@override String get instanceInfo => 'ইন্সট্যান্সের তথ্য';
	@override String get statistics => 'পরিসংখ্যান';
	@override String get clearQueue => 'কিউ পরিষ্কার করুন';
	@override String get clearQueueConfirmTitle => 'আপনি কি কিউ পরিষ্কার করার ব্যাপারে নিশ্চিত?';
	@override String get clearQueueConfirmText => 'বিতরণ না করা নোট আর বিতরণ করা হবে না। সাধারণত আপনার এটি করার দরকার নেই।';
	@override String get clearCachedFiles => 'ক্যাশ পরিষ্কার করুন';
	@override String get clearCachedFilesConfirm => 'আপনি কি ক্যাশ পরিষ্কার করার ব্যাপারে নিশ্চিত?';
	@override String get blockedInstances => 'ব্লককৃত ইন্সট্যান্সসমুহ';
	@override String get blockedInstancesDescription => 'আপনি যে ইন্সট্যান্সগুলি ব্লক করতে চান তার হোস্টনেমগুলি প্রত্যেকটি আলাদা লাইনে লিখুন।  ব্লককৃত ইন্সট্যান্সগুলি এই ইন্সট্যান্সের সাথে যোগাযোগ করতে পারবেনা৷';
	@override String get muteAndBlock => 'মিউট এবং ব্লকগুলি';
	@override String get mutedUsers => 'নিঃশব্দকৃত ব্যবহারকারী';
	@override String get blockedUsers => 'যাদের ব্লক করা হয়েছে';
	@override String get noUsers => 'কোন ব্যাবহারকারী নেই';
	@override String get editProfile => 'প্রোফাইল সম্পাদনা করুন';
	@override String get noteDeleteConfirm => 'আপনি কি নোট ডিলিট করার ব্যাপারে নিশ্চিত?';
	@override String get pinLimitExceeded => 'আপনি আর কোন নোট পিন করতে পারবেন না';
	@override String get done => 'সম্পন্ন';
	@override String get processing => 'প্রক্রিয়াধীন...';
	@override String get preview => 'পূর্বরূপ দেখুন';
	@override String get default_ => 'পূর্বনির্ধারিত';
	@override String get noCustomEmojis => 'কোন ইমোজি নাই';
	@override String get noJobs => 'কোন জব নাই';
	@override String get federating => 'ফেডারেট করা হচ্ছে';
	@override String get blocked => 'ব্লক করা হয়েছে';
	@override String get suspended => 'স্থগিত করা হয়েছে';
	@override String get all => 'সবগুলো';
	@override String get subscribing => 'সদস্যতা নেয়া হচ্ছে';
	@override String get publishing => 'প্রকাশ করা হচ্ছে';
	@override String get notResponding => 'সাড়া নেই';
	@override String get instanceFollowing => 'ইন্সট্যান্স অনুসরণ করা হচ্ছে';
	@override String get instanceFollowers => 'ইন্সট্যান্স অনুসরণকারী';
	@override String get instanceUsers => 'ইন্সট্যান্স ব্যাবহারকারী';
	@override String get changePassword => 'পাসওয়ার্ড পরিবর্তন করুন';
	@override String get security => 'নিরাপত্তা';
	@override String get retypedNotMatch => 'ইনপুট মেলে না।';
	@override String get currentPassword => 'বর্তমান পাসওয়ার্ড';
	@override String get newPassword => 'নতুন পাসওয়ার্ড';
	@override String get newPasswordRetype => 'নতুন পাসওয়ার্ড (পুনরায় লিখুন)';
	@override String get attachFile => 'ফাইল সংযুক্ত করুন';
	@override String get more => 'আরও!';
	@override String get featured => 'হাইলাইট';
	@override String get usernameOrUserId => 'ব্যাবহারকারীর নাম বা ব্যাবহারকারী ID';
	@override String get noSuchUser => 'কোন ব্যবহারকারী খুঁজে পাওয়া যায়নি';
	@override String get lookup => 'খুঁজে দেখো';
	@override String get announcements => 'ঘোষণা';
	@override String get imageUrl => 'চিত্রের URL';
	@override String get remove => 'মুছুন';
	@override String get removed => 'সরানো হয়েছে';
	@override String removeAreYouSure({required Object x}) => 'আপনি কি "${x}" সরানোর ব্যাপারে নিশ্চিত?';
	@override String deleteAreYouSure({required Object x}) => 'আপনি কি "${x}" সরানোর ব্যাপারে নিশ্চিত?';
	@override String get resetAreYouSure => 'রিসেট করার ব্যাপারে নিশ্চিত?';
	@override String get saved => 'সংরক্ষিত হয়েছে';
	@override String get upload => 'আপলোড';
	@override String get keepOriginalUploading => 'আসল ছবি রাখুন';
	@override String get keepOriginalUploadingDescription => 'ছবিটি আপলোড করার সময় আসল সংস্করণটি রাখুন। অপশনটি বন্ধ থাকলে, আপলোডের সময় ওয়েব প্রকাশনার জন্য ছবি ব্রাউজারে তৈরি করা হবে।';
	@override String get fromDrive => 'ড্রাইভ হতে';
	@override String get fromUrl => 'URL হতে';
	@override String get uploadFromUrl => 'URL হতে আপলোড';
	@override String get uploadFromUrlDescription => 'যে ফাইলটি আপলোড করতে চান, সেটির URL';
	@override String get uploadFromUrlRequested => 'আপলোড অনুরোধ করা হয়েছে';
	@override String get uploadFromUrlMayTakeTime => 'URL হতে আপলোড হতে কিছু সময় লাগতে পারে।';
	@override String get explore => 'ঘুরে দেখুন';
	@override String get messageRead => 'পড়া';
	@override String get noMoreHistory => 'আর কোন ইতিহাস নেই';
	@override String nUsersRead({required Object n}) => '${n} জন পড়েছেন';
	@override String agreeTo({required Object x0}) => '${x0} এর প্রতি আমি সম্মত';
	@override String get start => 'শুরু করুন';
	@override String get home => 'মূল পাতা';
	@override String get remoteUserCaution => 'এই ব্যাবহারকারী রিমোট ইন্সট্যান্সের, নিম্নক্ত তথ্য অসম্পূর্ণ হতে পারে।';
	@override String get activity => 'কার্যকলাপ';
	@override String get images => 'ছবি';
	@override String get image => 'ছবি';
	@override String get birthday => 'জন্মদিন';
	@override String yearsOld({required Object age}) => '${age} বছর';
	@override String get registeredDate => 'যোগদানের তারিখ';
	@override String get location => 'অবস্থান';
	@override String get theme => 'থিম';
	@override String get themeForLightMode => 'লাইট মোডের থিম';
	@override String get themeForDarkMode => 'ডার্ক মোডের থিম';
	@override String get light => 'আলোকিত';
	@override String get dark => 'অন্ধকার';
	@override String get lightThemes => 'আলোকিত থিম';
	@override String get darkThemes => 'অন্ধকার থিম';
	@override String get syncDeviceDarkMode => 'ডিভাইসের সেটিং অনুযায়ী ডার্ক মোড সেট করুন';
	@override String get drive => 'ড্রাইভ';
	@override String get fileName => 'ফাইলের নাম';
	@override String get selectFile => 'ফাইল নির্বাচন করুন';
	@override String get selectFiles => 'ফাইল নির্বাচন করুন';
	@override String get selectFolder => 'ফোল্ডার নির্বাচন করুন';
	@override String get selectFolders => 'ফোল্ডার নির্বাচন করুন';
	@override String get renameFile => 'ফাইল পুনঃনামকরন';
	@override String get folderName => 'ফোল্ডারের নাম';
	@override String get createFolder => 'ফোল্ডার তৈরি করুন';
	@override String get renameFolder => 'ফোল্ডার পুনঃনামকরন';
	@override String get deleteFolder => 'ফোল্ডার মুছুন';
	@override String get addFile => 'ফাইল যোগ করুন';
	@override String get emptyDrive => 'আপনার ড্রাইভ খালি';
	@override String get emptyFolder => 'এই ফোল্ডার খালি';
	@override String get unableToDelete => 'মুছে ফেলা যায়নি';
	@override String get inputNewFileName => 'ফাইলের নতুন নাম লিখুন';
	@override String get inputNewDescription => 'নতুন ক্যাপশন লিখুন';
	@override String get inputNewFolderName => 'ফোল্ডারের নতুন নাম লিখুন';
	@override String get circularReferenceFolder => 'গন্তব্য ফোল্ডারটি আপনি যে ফোল্ডারটি সরাতে চান তার একটি সাবফোল্ডার।';
	@override String get hasChildFilesOrFolders => 'এই ফোল্ডারটি খালি না হওয়ায় ডিলিট করা যায়নি।';
	@override String get copyUrl => 'URL কপি করুন';
	@override String get rename => 'পুনঃনামকরণ';
	@override String get avatar => 'প্রোফাইল ছবি';
	@override String get banner => 'ব্যানার';
	@override String get whenServerDisconnected => 'সার্ভারের সাথে সংযোগ বিচ্ছিন্ন হয়ে গেলে';
	@override String get disconnectedFromServer => 'সার্ভার থেকে সংযোগ বিচ্ছিন্ন হয়েছে';
	@override String get reload => 'আবার লোড করুন';
	@override String get doNothing => 'কিছু করবেন না';
	@override String get reloadConfirm => 'আপনি কি রিলোড করতে চান?';
	@override String get watch => 'বিজ্ঞপ্তি পান';
	@override String get unwatch => 'বিজ্ঞপ্তি পাওয়া বন্ধ করুন ';
	@override String get accept => 'অনুমোদন';
	@override String get reject => 'প্রত্যাখ্যান';
	@override String get normal => 'স্বাভাবিক';
	@override String get instanceName => 'ইন্সট্যান্সের নাম';
	@override String get instanceDescription => 'ইন্সট্যান্সের বর্ণনা';
	@override String get maintainerName => 'মেইনটেইনার';
	@override String get maintainerEmail => 'মেইনটেইনারের ইমেইল';
	@override String get tosUrl => 'ব্যবহারের শর্তাবলীর URL';
	@override String get thisYear => 'বছর';
	@override String get thisMonth => 'মাস';
	@override String get today => 'আজ';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => '${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'পৃষ্ঠা';
	@override String get integration => 'ইন্টিগ্রেশন';
	@override String get connectService => 'সংযুক্ত করুন';
	@override String get disconnectService => 'সংযোগ বিচ্ছিন্ন করুন';
	@override String get enableLocalTimeline => 'স্থানীয় টাইমলাইন চালু করুন';
	@override String get enableGlobalTimeline => 'গ্লোবাল টাইমলাইন চালু করুন';
	@override String get disablingTimelinesInfo => 'আপনি এই টাইমলাইনগুলি বন্ধ করলেও প্রশাসক এবং মডারেটররা এই টাইমলাইনগুলি ব্যাবহার করতে পারবে';
	@override String get registration => 'নিবন্ধন';
	@override String get invite => 'আমন্ত্রণ';
	@override String get driveCapacityPerLocalAccount => 'প্রত্যেক স্থানীয় ব্যাবহারকারীর জন্য ড্রাইভের জায়গা';
	@override String get driveCapacityPerRemoteAccount => 'প্রত্যেক রিমোট ব্যাবহারকারীর জন্য ড্রাইভের জায়গা';
	@override String get inMb => 'মেগাবাইটে লিখুন';
	@override String get bannerUrl => 'ব্যানার ছবির URL';
	@override String get backgroundImageUrl => 'পটভূমির চিত্রের URL';
	@override String get basicInfo => 'আপনার ব্যক্তিগত তথ্য';
	@override String get pinnedUsers => 'পিন করা ব্যাবহারকারীগণ';
	@override String get pinnedUsersDescription => 'আপনি যেসব ব্যবহারকারীদের "ঘুরে দেখুন" পৃষ্ঠায় পিন করতে চান তাদের বর্ণনা করুন, প্রত্যেকের বর্ণনা আলাদা লাইনে লিখুন';
	@override String get pinnedPages => 'পিন করা পৃষ্ঠাসুমহ';
	@override String get pinnedPagesDescription => 'আপনি যেসকল পৃষ্ঠাসমূহকে "ঘুরে দেখুন" পৃষ্ঠায় পিন করতে চান তাদের বর্ণনা করুন, প্রত্যেকের বর্ণনা আলাদা লাইনে লিখুন';
	@override String get pinnedClipId => 'পিনকৃত ক্লিপের ID';
	@override String get pinnedNotes => 'পিন করা নোট';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'hCaptcha চালু করুন';
	@override String get hcaptchaSiteKey => 'সাইট কী';
	@override String get hcaptchaSecretKey => 'সিক্রেট কী';
	@override String get mcaptchaSiteKey => 'সাইট কী';
	@override String get mcaptchaSecretKey => 'সিক্রেট কী';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'reCAPTCHA চালু করুন';
	@override String get recaptchaSiteKey => 'সাইট কী';
	@override String get recaptchaSecretKey => 'সিক্রেট কী';
	@override String get turnstileSiteKey => 'সাইট কী';
	@override String get turnstileSecretKey => 'সিক্রেট কী';
	@override String get avoidMultiCaptchaConfirm => 'একাধিক Captcha ব্যবহার করলে তারা পরস্পরের কাজে বাধা দিতে পারে। আপনি কি অন্যান্য Captcha নিষ্ক্রিয় করতে চান? আপনি \'বাতিল\' ক্লিক করার মাধ্যমে একাধিক Captcha চালু রাখতে পারেন।';
	@override String get antennas => 'অ্যান্টেনা';
	@override String get manageAntennas => 'অ্যান্টেনা ব্যবস্থাপনা';
	@override String get name => 'নাম';
	@override String get antennaSource => 'অ্যান্টেনার উৎস';
	@override String get antennaKeywords => 'যেসব কীওয়ার্ড দেখা হবে';
	@override String get antennaExcludeKeywords => 'যেসব কীওয়ার্ড দেখা হবে না';
	@override String get antennaKeywordsDescription => 'স্পেস দিয়ে আলাদা করলে AND শর্ত তৈরি হবে এবং আলাদা লাইনে লিখলে OR শর্ত তৈরি হবে।';
	@override String get notifyAntenna => 'নতুন নোট সম্পর্কে অবহিত করুন';
	@override String get withFileAntenna => 'শুধুমাত্র ফাইলযুক্ত নোট';
	@override String get enableServiceworker => 'ServiceWorker চালু করুন';
	@override String get antennaUsersDescription => 'প্রত্যেক লাইনে একজন ব্যবহারকারীর নাম লিখুন';
	@override String get caseSensitive => 'ছোট হাতের এবং বড় হাতের অক্ষর নির্দিষ্ট করুন';
	@override String get withReplies => 'জবাবসমুহ যুক্ত করুন';
	@override String get connectedTo => 'আপনি নিম্নলিখিত অ্যাকাউন্টের সাথে সংযুক্ত';
	@override String get notesAndReplies => 'নোটসমূহ এবং জবাবগুলি';
	@override String get withFiles => 'ফাইলগুলি যুক্ত করুন';
	@override String get silence => 'নীরব';
	@override String get silenceConfirm => 'আপনি কি এই ব্যাবহারকারীকের নীরব করতে চান?';
	@override String get unsilence => 'সরব';
	@override String get unsilenceConfirm => 'আপনি কি এই ব্যাবহারকারীকের সরব করতে চান?';
	@override String get popularUsers => 'জনপ্রিয় ব্যবহারকারীগন';
	@override String get recentlyUpdatedUsers => 'সম্প্রতি পোস্ট করা ব্যবহারকারীগন';
	@override String get recentlyRegisteredUsers => 'নতুন যোগ দেওয়া ব্যবহারকারীগন';
	@override String get recentlyDiscoveredUsers => 'নতুন খুঁজে পাওয়া ব্যবহারকারীগন';
	@override String exploreUsersCount({required Object count}) => '${count} জন ব্যাবহারকারী';
	@override String get exploreFediverse => 'Fediverse ঘুরে দেখুন';
	@override String get popularTags => 'জনপ্রিয় ট্যাগগুলি';
	@override String get userList => 'লিস্ট';
	@override String get about => 'আপনার সম্পর্কে';
	@override String get aboutMisskey => 'Misskey সম্পর্কে';
	@override String get administrator => 'প্রশাসক';
	@override String get token => 'টোকেন';
	@override String get moderator => 'মডারেটর';
	@override String nUsersMentioned({required Object n}) => '${n} জনকে উল্লেখ করা হয়েছে';
	@override String get securityKey => 'সিকিউরিটি কী';
	@override String get lastUsed => 'শেষ ব্যাবহার করা হয়েছে';
	@override String get unregister => 'নিবন্ধনমুক্ত হন';
	@override String get passwordLessLogin => 'পাসওয়ার্ড-বিহীন লগইন সেট আপ করুন';
	@override String get resetPassword => 'পাসওয়ার্ড রিসেট করুন';
	@override String newPasswordIs({required Object password}) => 'নতুন পাসওয়ার্ড হচ্ছে "${password}"';
	@override String get reduceUiAnimation => 'UI অ্যানিমেশন কমান';
	@override String get share => 'শেয়ার';
	@override String get notFound => 'পাওয়া যায়নি';
	@override String get notFoundDescription => 'এই URL-এর সাথে সম্পর্কিত কোনো পৃষ্ঠা নেই।';
	@override String get uploadFolder => 'আপলোডের জন্য ডিফল্ট ফোল্ডার';
	@override String get markAsReadAllNotifications => 'সমস্ত বিজ্ঞপ্তিগুলি পঠিত হিসাবে চিহ্নিত করুন';
	@override String get markAsReadAllUnreadNotes => 'সমস্ত নোটগুলি পঠিত হিসাবে চিহ্নিত করুন';
	@override String get markAsReadAllTalkMessages => 'সমস্ত মেসেজ পঠিত হিসাবে চিহ্নিত করুন';
	@override String get help => 'সহায়তা';
	@override String get inputMessageHere => 'এখানে মেসেজ লিখুন';
	@override String get close => 'বন্ধ';
	@override String get invites => 'আমন্ত্রণ';
	@override String get members => 'সদস্যবৃন্দ';
	@override String get transfer => 'হস্তান্তর';
	@override String get title => 'শিরোনাম';
	@override String get text => 'পাঠ্য';
	@override String get enable => 'সক্রিয়';
	@override String get next => 'পরবর্তী';
	@override String get retype => 'পুনঃ প্রবেশ';
	@override String noteOf({required Object user}) => '${user} এর নোট';
	@override String get quoteAttached => 'উদ্ধৃত';
	@override String get quoteQuestion => 'উদ্ধৃতি হিসাবে সংযুক্ত করবেন?';
	@override String get onlyOneFileCanBeAttached => 'আপনি মেসেজের সাথে সর্বোচ্চ একটি ফাইল যুক্ত করতে পারবেন';
	@override String get signinRequired => 'দয়া করে লগ ইন করুন';
	@override String get invitations => 'আমন্ত্রণ';
	@override String get invitationCode => 'ইনভাইট কোড';
	@override String get checking => 'পরীক্ষা করা হচ্ছে...';
	@override String get available => 'উপলব্ধ';
	@override String get unavailable => 'অনুপলব্ধ';
	@override String get usernameInvalidFormat => 'আপনি কেবলমাত্র a-z, A-Z, 0-9, _ ব্যবহার করতে পারেন';
	@override String get tooShort => 'খুব ছোট';
	@override String get tooLong => 'খুব বড়';
	@override String get weakPassword => 'দুর্বল পাসওয়ার্ড';
	@override String get normalPassword => 'সাধারণ পাসওয়ার্ড';
	@override String get strongPassword => 'শক্তিশালী পাসওয়ার্ড';
	@override String get passwordMatched => 'মিলেছে';
	@override String get passwordNotMatched => 'মিলেনি';
	@override String signinWith({required Object x}) => '${x} এর সাহায্যে সাইন ইন করুন';
	@override String get signinFailed => 'লগ ইন করা যায়নি। আপনার ব্যবহারকারীর নাম এবং পাসওয়ার্ড চেক করুন.';
	@override String get or => 'অথবা';
	@override String get language => 'ভাষা';
	@override String get uiLanguage => 'UI এর ভাষা';
	@override String aboutX({required Object x}) => '${x} সম্পর্কে';
	@override String get noHistory => 'কোনো ইতিহাস নেই';
	@override String get signinHistory => 'প্রবেশ করার ইতিহাস';
	@override String get doing => 'প্রক্রিয়া করছে...';
	@override String get category => 'বিভাগ';
	@override String get tags => 'ট‍্যাগসমূহ';
	@override String get docSource => 'ডকুমেন্টের উৎস';
	@override String get createAccount => 'অ্যাকাউন্ট তৈরি করুন';
	@override String get existingAccount => 'বিদ্যমান অ্যাকাউন্ট';
	@override String get regenerate => 'আবারও তৈরি করুন';
	@override String get fontSize => 'ফন্টের আকার';
	@override String get noFollowRequests => 'আপনার কোন ফলোও রিকুয়েস্ট নেই';
	@override String get openImageInNewTab => 'ছবি নতুন ট্যাবে খুলুন';
	@override String get dashboard => 'ড্যাশবোর্ড';
	@override String get local => 'স্থানীয়';
	@override String get remote => 'রিমোট';
	@override String get total => 'মোট';
	@override String get weekOverWeekChanges => 'গত সপ্তাহে';
	@override String get dayOverDayChanges => 'গতকাল';
	@override String get appearance => 'অবয়ব';
	@override String get clientSettings => 'ক্লায়েন্ট সেটিংস';
	@override String get accountSettings => 'অ্যাকাউন্ট সেটিংস';
	@override String get promotion => 'প্রমোশন';
	@override String get promote => 'প্রচার করুন';
	@override String get numberOfDays => 'দিনের সংখ্যা';
	@override String get hideThisNote => 'নোটটি লুকান';
	@override String get showFeaturedNotesInTimeline => 'টাইমলাইনে সুপারিশকৃত নোটগুলি দেখান';
	@override String get objectStorage => 'অবজেক্ট স্টোরেজ';
	@override String get useObjectStorage => 'অবজেক্ট স্টোরেজ ব্যাবহার করুন';
	@override String get objectStorageBaseUrl => 'Base URL';
	@override String get objectStorageBaseUrlDesc => 'রেফারেন্স হিসাবে ব্যবহৃত URL। আপনি একটি CDN বা প্রক্সি ব্যবহার করলে URL, S3: \'https://<bucket>.s3.amazonaws.com\', GCS: \'https://storage.googleapis.com/<bucket>\'।';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => 'ব্যবহার করা পরিষেবার bucket এর নাম লিখুন। ';
	@override String get objectStoragePrefix => 'Prefix';
	@override String get objectStoragePrefixDesc => 'ফাইলসমূহ এই prefix যুক্ত ফোল্ডারের অধীনে সংরক্ষণ করা হবে।';
	@override String get objectStorageEndpoint => 'এন্ডপয়েন্ট';
	@override String get objectStorageEndpointDesc => 'S3 এর জন্য ফাঁকা রাখুন, অন্যথায় প্রতিটি পরিষেবার এন্ডপয়েন্ট নির্দিষ্ট করুন। \'<host>\'বা\'<host>: <port>\' হিসেবে লিখুন।';
	@override String get objectStorageRegion => 'Region';
	@override String get objectStorageRegionDesc => '\'xx-east-1\'-এর মতো একটি region নির্দিষ্ট করুন। যদি আপনার পরিষেবাতে region এর ধারণা না থাকে, তাহলে এটি খালি বা \'us-east-1\' হওয়া উচিত।';
	@override String get objectStorageUseSSL => 'SSL ব্যাবহার করুন';
	@override String get objectStorageUseSSLDesc => 'API কানেকশনগুলির জন্য যদি https ব্যাবহার না করেন, তাহলে এই অপশনটি বন্ধ করুন';
	@override String get objectStorageUseProxy => 'Proxy ব্যাবহার করুন';
	@override String get objectStorageUseProxyDesc => 'আপনি API সংযোগের জন্য proxy ব্যবহার না করলে, এটি বন্ধ করুন।';
	@override String get objectStorageSetPublicRead => 'আপলোডের উপর \'\'public-read\' সেট করুন';
	@override String get serverLogs => 'সার্ভার লগ';
	@override String get deleteAll => 'সব মুছুন';
	@override String get showFixedPostForm => 'টাইমলাইনের শীর্ষে পোস্ট করার ফর্মটি দেখান';
	@override String get newNoteRecived => 'নতুন নোট আছে';
	@override String get sounds => 'শব্দ';
	@override String get sound => 'শব্দ';
	@override String get listen => 'শুনুন';
	@override String get none => 'কিছুই না';
	@override String get showInPage => 'পেজে দেখান';
	@override String get popout => 'পপ-আউট';
	@override String get volume => 'আওয়াজের মাত্রা';
	@override String get masterVolume => 'মাস্টার আওয়াজের মাত্রা';
	@override String get details => 'আরও জানুন';
	@override String get chooseEmoji => 'ইমোজি নির্বাচন করুন';
	@override String get unableToProcess => 'কাজটি সম্পন্ন করা যায়নি';
	@override String get recentUsed => 'সম্প্রতি ব্যবহৃত';
	@override String get install => 'ইন্সটল';
	@override String get uninstall => 'আনইন্সটল';
	@override String get installedApps => 'ইন্সটল করা অ্যাপসমূহ';
	@override String get nothing => 'এখানে কিছুই নাই';
	@override String get installedDate => 'ইন্সটল করার তারিখ';
	@override String get lastUsedDate => 'সর্বশেষ ব্যাবহৃত';
	@override String get state => 'অবস্থা';
	@override String get sort => 'সাজান';
	@override String get ascendingOrder => 'ঊর্ধ্বক্রমে';
	@override String get descendingOrder => 'নিম্নক্রমে';
	@override String get scratchpad => 'স্ক্র্যাচপ্যাড';
	@override String get scratchpadDescription => 'স্ক্র্যাচপ্যাড AiScript-এর জন্য একটি পরীক্ষামূলক পরিবেশ প্রদান করে। আপনি মিস্কির সাথে ইন্টারঅ্যাক্ট করে এমন কোড লিখতে, চালাতে এবং তার ফলাফল দেখতে পারেন।';
	@override String get output => 'আউটপুট';
	@override String get script => 'স্ক্রিপ্ট';
	@override String get disablePagesScript => 'পেজগুলোতে AiScript অক্ষম করুন';
	@override String get updateRemoteUser => 'রিমোট ব্যবহারকারীর তথ্য আপডেট করুন';
	@override String get deleteAllFiles => 'সকল ফাইল ডিলিট করুন';
	@override String get deleteAllFilesConfirm => 'সকল ফাইল ডিলিট করতে চান?';
	@override String get removeAllFollowing => 'সকল অনুসরণ বাতিল করুন';
	@override String removeAllFollowingDescription({required Object host}) => '${host} এর সকল ব্যাবহারকারীকে আর ফলোও করবেন না । যদি ইন্সত্যান্সটির কোন সমস্যা (যেমনঃ ইন্সত্যান্সটি আর নেই) হয়ে থাকে তবে এটি ব্যাবহার করুন । ';
	@override String get userSuspended => 'এই ব্যাবহারকারির অ্যাকাউন্ট স্থগিত করা হয়েছে';
	@override String get userSilenced => 'এই ব্যাবহারকারিকে মিউট করা হয়েছে';
	@override String get yourAccountSuspendedTitle => 'এই অ্যাকাউন্টটি স্থগিত করা হয়েছে';
	@override String get yourAccountSuspendedDescription => 'সার্ভারের ব্যবহারের শর্তাবলী লঙ্ঘনের মতো কারণে এই অ্যাকাউন্টটি স্থগিত করা হয়েছে৷ বিস্তারিত জানার জন্য প্রশাসকের সাথে যোগাযোগ করুন । একটি নতুন অ্যাকাউন্ট তৈরি করবেন না দয়া করে ।';
	@override String get menu => 'মেনু';
	@override String get divider => 'খন্ডক';
	@override String get addItem => 'আইটেম যোগ করুন';
	@override String get relays => 'রিলেগুলি';
	@override String get addRelay => 'রিলে যোগ করুন';
	@override String get inboxUrl => 'inbox এর URL';
	@override String get addedRelays => 'যোগকৃত রিলেগুলি';
	@override String get serviceworkerInfo => 'পুশ বিজ্ঞপ্তির জন্য চালু করা লাগবে।';
	@override String get deletedNote => 'ডিলিট করা নোট';
	@override String get invisibleNote => 'অদৃশ্য নোট';
	@override String get enableInfiniteScroll => 'ইনফিনিট স্ক্রল চালু করুন';
	@override String get visibility => 'দৃশ্যমানতা';
	@override String get poll => 'জরিপ';
	@override String get useCw => 'কন্টেন্ট লুকান';
	@override String get enablePlayer => 'ভিডিও প্লেয়ার খুলুন';
	@override String get disablePlayer => 'ভিডিও প্লেয়ার বন্ধ করুন';
	@override String get expandTweet => 'টুইট বিস্তারিত করুন';
	@override String get themeEditor => 'থিম সম্পাদক';
	@override String get description => 'বর্ণনা';
	@override String get describeFile => 'ক্যাপশন যোগ করুন';
	@override String get enterFileDescription => 'ক্যাপশন যোগ করুন';
	@override String get author => 'লেখক';
	@override String get leaveConfirm => 'কিছু পরিবর্তন সেভ করা হয়নি। আপনি কি চলে যেতে চান?';
	@override String get manage => 'পরিচালনা';
	@override String get plugins => 'প্লাগইনসমূহ';
	@override String get deck => 'ডেক';
	@override String get undeck => 'ডেকমুক্ত করুন';
	@override String get useBlurEffectForModal => 'মোডালের জন্য ব্লার ইফেক্ট ব্যবহার করুন';
	@override String get useFullReactionPicker => 'সম্পূর্ণ বৈশিষ্ট্যযুক্ত রিঅ্যাকশন পিকার ব্যবহার করুন';
	@override String get width => 'প্রস্থ';
	@override String get height => 'উচ্চতা';
	@override String get large => 'বড়';
	@override String get medium => 'মাঝারি';
	@override String get small => 'ছোট';
	@override String get generateAccessToken => 'অ্যাক্সেস টোকেন তৈরি করুন';
	@override String get permission => 'অনুমতি';
	@override String get enableAll => 'সবগুলি সক্রিয় করুন';
	@override String get disableAll => 'সবগুলি নিষ্ক্রিয় করুন';
	@override String get tokenRequested => 'অ্যাকাউন্টে অ্যাক্সেস প্রদান করবেন';
	@override String get pluginTokenRequestedDescription => 'এই প্লাগইনটি এখানে দেওয়া অনুমুতিসমূহ ব্যাবহার করবে';
	@override String get notificationType => 'বিজ্ঞপ্তির ধরন';
	@override String get edit => 'সম্পাদনা';
	@override String get emailServer => 'ইমেইল সার্ভার';
	@override String get enableEmail => 'ইমেইল বিতরণ চালু করুন';
	@override String get emailConfigInfo => 'আপনার ইমেল ঠিকানা নিশ্চিত করতে এবং আপনার পাসওয়ার্ড পুনরায় সেট করতে ব্যবহৃত হয়';
	@override String get email => 'ইমেইল';
	@override String get emailAddress => 'ইমেইল ঠিকানা';
	@override String get smtpConfig => 'SMTP সার্ভার কনফিগারেশন';
	@override String get smtpHost => 'হোস্ট';
	@override String get smtpPort => 'পোর্ট';
	@override String get smtpUser => 'ব্যবহারকারীর নাম';
	@override String get smtpPass => 'পাসওয়ার্ড';
	@override String get emptyToDisableSmtpAuth => 'আপনি ব্যবহারকারীর নাম এবং পাসওয়ার্ড ফাঁকা রেখে SMTP প্রমাণীকরণ নিষ্ক্রিয় করতে পারেন।';
	@override String get smtpSecure => 'SMTP সংযোগের জন্য SSL/TLS ব্যবহার করুন';
	@override String get smtpSecureInfo => 'STARTTLS ব্যবহার করার সময় এটি বন্ধ করুন।';
	@override String get testEmail => 'ইমেল বিতরণ পরীক্ষা করুন';
	@override String get wordMute => 'বিশেষ কোন শব্দকে মিউট করুন';
	@override String get regexpError => 'রেগুলার এক্সপ্রেশন ত্রুটি';
	@override String regexpErrorDescription({required Object tab, required Object line}) => '${tab} ওয়ার্ড মিউটের ${line} লাইনে রেগুলার এক্সপ্রেশনে একটি ত্রুটি ছিল:';
	@override String get instanceMute => 'মিউট করা ইন্সত্যান্সগুলি';
	@override String userSaysSomething({required Object name}) => '${name} কিছু বলেছে';
	@override String get makeActive => 'সক্রিয় করা';
	@override String get display => 'প্রদর্শন';
	@override String get copy => 'অনুলিপি';
	@override String get metrics => 'মেট্রিক্স';
	@override String get overview => 'সারাংশ';
	@override String get logs => 'লগ';
	@override String get delayed => 'দেরি করুন';
	@override String get database => 'ডেটাবেজ';
	@override String get channel => 'চ্যানেলগুলি';
	@override String get create => 'তৈরি করুন';
	@override String get notificationSetting => 'বিজ্ঞপ্তির সেটিংস';
	@override String get notificationSettingDesc => 'কি ধরনের বিজ্ঞপ্তি পাবেন তা নির্ধারণ করুন';
	@override String get useGlobalSetting => 'গ্লোবাল সেটিংস ব্যাবহার করুন';
	@override String get useGlobalSettingDesc => 'চালু করলে, আপনার অ্যাকাউন্টের বিজ্ঞপ্তি সেটিংস ব্যবহার করা হবে। বন্ধ করলে, এটি পৃথকভাবে সেট করা যেতে পারে।';
	@override String get other => 'অন্যান্য';
	@override String get regenerateLoginToken => 'লগইন টোকেন আবার বানান';
	@override String get regenerateLoginTokenDescription => 'লগ ইন করার জন্য ব্যবহৃত অভ্যন্তরীণ টোকেন পুনরায় তৈরি করে। সাধারণত আপনার এটি করার দরকার নেই। এটি করলে, আপনি সমস্ত ডিভাইসে লগ আউট হয়ে যাবেন৷';
	@override String get setMultipleBySeparatingWithSpace => 'আপনি একটি স্পেস দিয়ে আলাদা করে একাধিক এন্ট্রি দিতে পারেন।';
	@override String get fileIdOrUrl => 'ফাইল ID অথবা URL';
	@override String get behavior => 'আচরণ';
	@override String get sample => 'উদাহরণ';
	@override String get abuseReports => 'অভিযোগ';
	@override String get reportAbuse => 'অভিযোগ';
	@override String reportAbuseOf({required Object name}) => '${name} এ অভিযোগ করুন';
	@override String get fillAbuseReportDescription => 'রিপোর্টের কারণ বর্ণনা করুন. একটি বিশেষ নোট এর জন্য রিপোর্টটি হয়ে থাকে তবে তার URL টি অন্তর্ভুক্ত করুন। ';
	@override String get abuseReported => 'আপনার অভিযোগটি দাখিল করা হয়েছে। আপনাকে ধন্যবাদ।';
	@override String get reporter => 'অভিযোগকারী';
	@override String get reporteeOrigin => 'অভিযোগটির উৎস';
	@override String get reporterOrigin => 'অভিযোগকারীর উৎস';
	@override String get send => 'পাঠান';
	@override String get openInNewTab => 'নতুন ট্যাবে খুলুন';
	@override String get openInSideView => 'সাইড ভিউতে খুলুন';
	@override String get defaultNavigationBehaviour => 'ডিফল্ট নেভিগেশন';
	@override String get editTheseSettingsMayBreakAccount => 'এসব সেটিংস সম্পাদনা করলে আপনার অ্যাকাউন্টের ক্ষতি হতে পারে। ';
	@override String get instanceTicker => 'ইন্সত্যান্সে নোটের তথ্য';
	@override String waitingFor({required Object x}) => '${x} এর জন্য অপেক্ষা করা হচ্ছে';
	@override String get random => 'র‍্যান্ডম';
	@override String get system => 'সিস্টেম';
	@override String get switchUi => 'UI পরিবর্তন করুন';
	@override String get desktop => 'ডেস্কটপ';
	@override String get clip => 'ক্লিপ';
	@override String get createNew => 'নতুন';
	@override String get optional => 'প্রয়োজনীয় নয়';
	@override String get createNewClip => 'নতুন ক্লিপ তৈরি করুন';
	@override String get public => 'সর্বজনীন';
	@override String get private => 'ব্যাক্তিগত';
	@override String i18nInfo({required Object link}) => 'Misskey স্বেচ্ছাসেবকদের দ্বারা বিভিন্ন ভাষায় অনুবাদ করা হচ্ছে। আপনি ${link} এ গিয়ে অনুবাদে সহযোগিতা করতে পারেন।';
	@override String get manageAccessTokens => 'অ্যাক্সেস টোকেন পরিচালনা করুন';
	@override String get accountInfo => 'অ্যাকাউন্টের তথ্য';
	@override String get notesCount => 'নোটের সংখ্যা';
	@override String get repliesCount => 'জবাবের সংখ্যা';
	@override String get renotesCount => 'রিনোটের সংখ্যা';
	@override String get repliedCount => 'জবাব গ্রহন করা হয়েছে';
	@override String get renotedCount => 'রিনোট পেয়েছেন';
	@override String get followingCount => 'যাদেরকে অনুসরণ করেন, তাদের সংখ্যা';
	@override String get followersCount => 'অনুসরণকারীদের সংখ্যা';
	@override String get sentReactionsCount => 'রিঅ্যাকশন পাঠানো হয়েছে';
	@override String get receivedReactionsCount => 'রিঅ্যাকশন পেয়েছেন';
	@override String get pollVotesCount => 'পোল ভোট দিয়েছেন';
	@override String get pollVotedCount => 'পোল ভোট পেয়েছেন';
	@override String get yes => 'হ্যাঁ';
	@override String get no => 'না';
	@override String get driveFilesCount => 'ড্রাইভে ফাইল এর সংখ্যা';
	@override String get driveUsage => 'ড্রাইভ এর ব্যাবহার';
	@override String get noCrawle => 'ক্রলার ইন্ডেক্সিং বন্ধ করুন';
	@override String get noCrawleDescription => 'সার্চ ইঞ্জিনগুলিকে আপনার প্রোফাইল, নোট, পেজ ইত্যাদি ইনডেক্স করতে নিষেধ করুন। ';
	@override String get lockedAccountInfo => 'এমনকি আপনি আপনার অনুসরণকারীদের বেছে বেছে অনুমোদন করলেও, যে কেউ আপনার নোটগুলি দেখতে পাবে, যতক্ষণ না আপনি আপনার নোটগুলিকে "অনুসারীদের জন্য" হিসাবে সেট না করেন৷';
	@override String get alwaysMarkSensitive => 'সর্বদা স্পর্শকাতর হিসাবে চিহ্নিত করুন';
	@override String get loadRawImages => 'সংযুক্ত ছবির থাম্বনেইলটি দেখানর পরিবর্তে আসল ছবি দেখান';
	@override String get disableShowingAnimatedImages => 'অ্যানিমেটেড চিত্র দেখানো বন্ধ করুন';
	@override String get verificationEmailSent => 'নিশ্চিতকরণ ইমেল পাঠানো হয়েছে। সেটআপ সম্পূর্ণ করতে ইমেল এর লিঙ্ক অনুসরণ করুন।';
	@override String get notSet => 'সেট করা হয়নি';
	@override String get emailVerified => 'ইমেইল নিশ্চিত করা হয়েছে';
	@override String get noteFavoritesCount => 'পছন্দ করা নোটের সংখ্যা';
	@override String get pageLikesCount => 'পেজ লাইক করেছেন';
	@override String get pageLikedCount => 'পেজ লাইক পেয়েছেন';
	@override String get contact => 'পরিচিতি সমূহ';
	@override String get useSystemFont => 'সিস্টেম ফন্ট ব্যাবহার করুন';
	@override String get clips => 'ক্লিপগুলি ';
	@override String get experimentalFeatures => 'পরীক্ষামূলক বৈশিষ্ট্যগুলি';
	@override String get developer => 'ডেভেলপার';
	@override String get makeExplorable => 'অ্যাকাউন্ট "ঘুরে দেখুন" পৃষ্ঠায় দেখান';
	@override String get makeExplorableDescription => 'আপনি এটি বন্ধ করলে, আপনার অ্যাকাউন্ট "ঘুরে দেখুন" পৃষ্ঠায় প্রদর্শিত হবে না।';
	@override String get duplicate => 'প্রতিরূপ';
	@override String get left => 'বাম';
	@override String get center => 'মাঝখান';
	@override String get wide => 'চওড়া';
	@override String get narrow => 'সংকীর্ণ';
	@override String get reloadToApplySetting => 'পৃষ্ঠাটি রিলোড করার পর সেটিংসটি প্রয়োগ করা হবে। আপনি কি এখন রিলোড করতে চান?';
	@override String get needReloadToApply => 'পৃষ্ঠাটি রিলোড করার পর সেটিংসটি প্রয়োগ করা হবে।';
	@override String get showTitlebar => 'টাইটেল বার দেখান';
	@override String get clearCache => 'ক্যাশ পরিষ্কার করুন';
	@override String onlineUsersCount({required Object n}) => '${n} জন ব্যাবহারকারী অনলাইন';
	@override String nUsers({required Object n}) => '${n} জন ব্যাবহারকারী';
	@override String nNotes({required Object n}) => '${n} টি নোট';
	@override String get sendErrorReports => 'ক্রুটি প্রতিবেদন পাঠান';
	@override String get sendErrorReportsDescription => 'চালু থাকলে, বিস্তারিত ত্রুটির তথ্য Misskey-এর সাথে শেয়ার করা হয়। যা সফ্টওয়্যারটির গুণমান উন্নত করতে সাহায্য করে। ত্রুটির তথ্যের মধ্যে রয়েছে OS সংস্করণ, ব্রাউজারের ধরন, কর্মের ইতিহাস ইত্যাদি।';
	@override String get myTheme => 'আমার থিম';
	@override String get backgroundColor => 'পটভূমির রং';
	@override String get accentColor => 'এক্সেন্টের রং';
	@override String get textColor => 'লেখার রং';
	@override String get saveAs => 'এইরূপে সংরক্ষণ করুন';
	@override String get advanced => 'উন্নত';
	@override String get value => 'মান';
	@override String get createdAt => 'তৈরি হয়েছে';
	@override String get updatedAt => 'শেষ হালনাগাদ হয়েছে';
	@override String get saveConfirm => 'পরিবর্তনগুলি সংরক্ষণ করতে চান?';
	@override String get deleteConfirm => 'আসলেই মুছে ফেলতে চান?';
	@override String get invalidValue => 'অগ্রহণযোগ্য মান';
	@override String get registry => 'রেজিস্ট্রি';
	@override String get closeAccount => 'অ্যাকাউন্ট বন্ধ করুন';
	@override String get currentVersion => 'বর্তমান সংস্করণ';
	@override String get latestVersion => 'সর্বশেষ সংস্করণ';
	@override String get youAreRunningUpToDateClient => 'আপনি সবচেয়ে নতুন ক্লায়েন্ট ব্যাবহার করছেন';
	@override String get newVersionOfClientAvailable => 'আপনার ক্লায়েন্টের একটি নতুন ভার্সন চলে এসেছে';
	@override String get usageAmount => 'ব্যাবহার';
	@override String get capacity => 'ধারণক্ষমতা';
	@override String get inUse => 'ব্যবহৃত';
	@override String get editCode => 'কোড সম্পাদনা করুন';
	@override String get apply => 'প্রয়োগ করুন';
	@override String get receiveAnnouncementFromInstance => 'এই ইন্সট্যান্স থেকে বিজ্ঞপ্তি পান';
	@override String get emailNotification => 'ইমেইল বিজ্ঞপ্তি';
	@override String get publish => 'প্রকাশ';
	@override String get inChannelSearch => 'চ্যানেলে খুঁজুন';
	@override String get useReactionPickerForContextMenu => 'রাইট ক্লিকের মাধ্যমে রিঅ্যাকশন পিকার খুলুন';
	@override String typingUsers({required Object users}) => '${users} লেখছে';
	@override String get jumpToSpecifiedDate => 'একটি নির্দিষ্ট তারিখে যান';
	@override String get showingPastTimeline => 'অতীতের টাইমলাইন দেখানো হচ্ছে';
	@override String get clear => 'পরিষ্কার';
	@override String get markAllAsRead => 'সব পঠিত হিসেবে চিহ্নিত করুন';
	@override String get goBack => 'পিছনে';
	@override String get unlikeConfirm => 'আসলেই লাইক সরিয়ে নিবেন?';
	@override String get fullView => 'ফুল ভিউ';
	@override String get quitFullView => 'ফুল ভিউ বন্ধ করুন';
	@override String get addDescription => 'বর্ণনা যোগ করুন';
	@override String get userPagePinTip => 'আপনি প্রতিটি নোটের জন্য মেনু থেকে "প্রোফাইলে পিন করুন" নির্বাচন করে আপনার নোটগুলি এখানে প্রদর্শন করতে পারেন।';
	@override String get notSpecifiedMentionWarning => 'প্রাপক ছাড়াও এই নোটে অন্য ব্যাবহারকারীদের উল্লেখ্য করা হয়েছে';
	@override String get info => 'আপনার সম্পর্কে';
	@override String get userInfo => 'ব্যবহারকারীর তথ্য';
	@override String get unknown => 'অজানা';
	@override String get onlineStatus => 'অনলাইন স্ট্যাটাস';
	@override String get hideOnlineStatus => 'অনলাইন স্ট্যাটাস লুকান';
	@override String get hideOnlineStatusDescription => 'অনলাইন স্ট্যাটাস লুকিয়ে রাখলে সার্চের মতো কিছু ফাংশনের সুবিধা কমে যায়।';
	@override String get online => 'অনলাইন';
	@override String get active => 'অ্যাকটিভ';
	@override String get offline => 'অফলাইন';
	@override String get notRecommended => 'সুপারিশ করা হয় না';
	@override String get botProtection => 'বট প্রোটেকশন';
	@override String get instanceBlocking => 'ব্লক করা ইন্সট্যান্সগুলি';
	@override String get selectAccount => 'অ্যাকাউন্ট নির্বাচন';
	@override String get switchAccount => 'অ্যাকাউন্ট পাল্টান';
	@override String get enabled => 'চালু';
	@override String get disabled => 'বন্ধ';
	@override String get quickAction => 'কুইক অ্যাকশন';
	@override String get user => 'ব্যবহারকারীগণ';
	@override String get administration => 'পরিচালনা';
	@override String get accounts => 'অ্যাকাউন্টগুলি';
	@override String get switch_ => 'পাল্টান';
	@override String get noMaintainerInformationWarning => 'প্রশাসকের তথ্য সেট করা হয়নি।';
	@override String get noBotProtectionWarning => 'বট প্রোটেকশন সেট করা হয়নি।';
	@override String get configure => 'কনফিগার করুন';
	@override String get postToGallery => 'গ্যালারী পোস্ট তৈরি করুন';
	@override String get gallery => 'গ্যালারী';
	@override String get recentPosts => 'নতুন পোস্ট';
	@override String get popularPosts => 'জনপ্রিয় পোস্ট';
	@override String get shareWithNote => 'নোটের মাধ্যমে শেয়ার করুন';
	@override String get ads => 'বিজ্ঞাপন';
	@override String get expiration => 'নির্দিষ্ট সময়সীমা';
	@override String get memo => 'মেমো';
	@override String get priority => 'অগ্রাধিকার';
	@override String get high => 'উচ্চ';
	@override String get middle => 'মাঝারি';
	@override String get low => 'নিম্ন';
	@override String get emailNotConfiguredWarning => 'ইমেইল অ্যাড্রেস সেট করা হয়নি।';
	@override String get ratio => 'অনুপাত';
	@override String get previewNoteText => 'প্রিভিউ দেখান';
	@override String get customCss => 'কাস্টম CSS';
	@override String get customCssWarn => 'এই ব্যাপারে অভিজ্ঞতা না থাকলে এই সেটিংটি ব্যাবহার করবেন না। অনুপযুক্ত সেটিংস ক্লায়েন্টকে স্বাভাবিকভাবে ব্যবহার করতে বাধা দিতে পারে।';
	@override String get global => 'গ্লোবাল';
	@override String get squareAvatars => 'চারকোনা প্রোফাইল পিকচার দেখান ';
	@override String get sent => 'পাঠান';
	@override String get received => 'প্রাপ্ত';
	@override String get searchResult => 'অনুসন্ধানের ফলাফল';
	@override String get hashtags => 'হ্যাশট্যাগ';
	@override String get troubleshooting => 'ট্রাবলশুটিং';
	@override String get useBlurEffect => 'UI তে ব্লার ইফেক্ট ব্যাবহার করুন';
	@override String get learnMore => 'আরও জানুন';
	@override String get misskeyUpdated => 'Misskey আপডেট করা হয়েছে！';
	@override String get whatIsNew => 'পরিবর্তনগুলি দেখান';
	@override String get translate => 'অনুবাদ';
	@override String translatedFrom({required Object x}) => '${x} হতে অনুবাদ করা';
	@override String get accountDeletionInProgress => 'অ্যাকাউন্ট মুছে ফেলা হচ্ছে';
	@override String get usernameInfo => 'একটি নাম যা সার্ভারে আপনার অ্যাকাউন্টটিকে অনন্যভাবে সনাক্ত করে। আপনি বর্ণমালা (a ~ z, A ~ Z), সংখ্যা (0 ~ 9), এবং আন্ডারস্কোর (_) ব্যবহার করতে পারেন। ব্যবহারকারীর নাম পরে পরিবর্তন করা যাবে না।';
	@override String get aiChanMode => 'Ai মোড';
	@override String get keepCw => 'CW রাখুন';
	@override String get pubSub => 'Pub/Sub অ্যাকাউন্টগুলো';
	@override String get lastCommunication => 'শেষ যোগাযোগ';
	@override String get resolved => 'সমাধান হয়েছে';
	@override String get unresolved => 'সমাধান হয়নি';
	@override String get breakFollow => 'অনুসরণ করা বন্ধ';
	@override String get itsOn => 'চালু';
	@override String get itsOff => 'বন্ধ';
	@override String get emailRequiredForSignup => 'অ্যাকাউন্ট তৈরির জন্য ইমেইল এর দরকার পড়বে';
	@override String get unread => 'অপঠিত';
	@override String get filter => 'ফিল্টার';
	@override String get controlPanel => 'নিয়ন্ত্রন কেন্দ্র';
	@override String get manageAccounts => 'অ্যাকাউন্টগুলি পরিচালনা করুন';
	@override String get makeReactionsPublic => 'রিঅ্যাকশনের ইতিহাস উন্মুক্ত করুন';
	@override String get makeReactionsPublicDescription => 'আপনার পূর্ববর্তী রিঅ্যাকশনগুলির তালিকা যে কারও কাছে দৃশ্যমান হবে।';
	@override String get classic => 'ক্লাসিক';
	@override String get muteThread => 'থ্রেড মিউট করুন';
	@override String get unmuteThread => 'থ্রেড আনমিউট করুন';
	@override String get continueThread => 'আরো থ্রেড দেখুন';
	@override String get deleteAccountConfirm => 'আপনার অ্যাকাউন্ট মুছে ফেলা হবে। ঠিক আছে?';
	@override String get incorrectPassword => 'আপনার দেওয়া পাসওয়ার্ডটি ভুল।';
	@override String voteConfirm({required Object choice}) => '"${choice}" এ ভোট দিতে চান？';
	@override String get hide => 'লুকান';
	@override String get useDrawerReactionPickerForMobile => 'মোবাইলে রিঅ্যাকশন পিকারকে ড্রয়ারে প্রদর্শন করুন';
	@override String welcomeBackWithName({required Object name}) => 'আবার স্বাগতম, ${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => ' [${ok}] ক্লিক করার মাধ্যমে আপনার ইমেল ঠিকানা নিশ্চিত করুন।';
	@override String get overridedDeviceKind => 'ডিভাইসের ধরন';
	@override String get smartphone => 'স্মার্টফোন';
	@override String get tablet => 'ট্যাবলেট';
	@override String get auto => 'স্বয়ংক্রিয়';
	@override String get themeColor => 'থিমের রং';
	@override String get size => 'আকার';
	@override String get numberOfColumn => 'কলামের সংখ্যা';
	@override String get searchByGoogle => 'গুগল';
	@override String get instanceDefaultLightTheme => 'ইন্সট্যান্সের ডিফল্ট লাইট থিম';
	@override String get instanceDefaultDarkTheme => 'ইন্সট্যান্সের ডিফল্ট ডার্ক থিম';
	@override String get instanceDefaultThemeDescription => 'অবজেক্ট ফরম্যাটে থিম কোড লিখুন';
	@override String get mutePeriod => 'মিউটের সময়কাল';
	@override String get period => 'পোলের সময়সীমা';
	@override String get indefinitely => 'অনির্দিষ্ট';
	@override String get tenMinutes => '১০ মিনিট';
	@override String get oneHour => '১ ঘণ্টা';
	@override String get oneDay => 'একদিন';
	@override String get oneWeek => 'এক সপ্তাহ';
	@override String get reflectMayTakeTime => 'এটির কাজ দেখা যেতে কিছুটা সময় লাগতে পারে।';
	@override String get failedToFetchAccountInformation => 'অ্যাকাউন্টের তথ্য উদ্ধার করা যায়নি';
	@override String get rateLimitExceeded => 'রেট লিমিট ছাড়িয়ে গেছে ';
	@override String get file => 'ফাইলগুলি';
	@override String get reverse => 'উল্টান';
	@override String get colored => 'রঙ্গিন';
	@override String get label => 'লেবেল';
	@override String get localOnly => 'শুধুমাত্র লোকাল';
	@override String get account => 'অ্যাকাউন্টগুলি';
	@override String get like => 'পছন্দ করা';
	@override String get show => 'প্রদর্শন';
	@override String get color => 'রং';
	@override String get horizontal => 'পাশে';
	@override String get youFollowing => 'অনুসরণ করা হচ্ছে';
	@override String get icon => 'প্রোফাইল ছবি';
	@override String get replies => 'জবাব';
	@override String get renotes => 'রিনোট';
	@override String get sourceCode => 'সোর্স কোড';
	@override String get flip => 'উল্টান';
	@override String get postForm => 'নোট লিখুন';
	@override String get information => 'আপনার সম্পর্কে';
	@override String get inMinutes => 'মিনিট';
	@override String get inDays => 'দিন';
	@override String get widgets => 'উইজেটগুলি';
	@override late final _Translations$misskey$imageEditing_$bn_BD imageEditing_ = _Translations$misskey$imageEditing_$bn_BD._(_root);
	@override late final _Translations$misskey$imageFrameEditor_$bn_BD imageFrameEditor_ = _Translations$misskey$imageFrameEditor_$bn_BD._(_root);
	@override late final _Translations$misskey$chat_$bn_BD chat_ = _Translations$misskey$chat_$bn_BD._(_root);
	@override late final _Translations$misskey$delivery_$bn_BD delivery_ = _Translations$misskey$delivery_$bn_BD._(_root);
	@override late final _Translations$misskey$role_$bn_BD role_ = _Translations$misskey$role_$bn_BD._(_root);
	@override late final _Translations$misskey$emailUnavailable_$bn_BD emailUnavailable_ = _Translations$misskey$emailUnavailable_$bn_BD._(_root);
	@override late final _Translations$misskey$ffVisibility_$bn_BD ffVisibility_ = _Translations$misskey$ffVisibility_$bn_BD._(_root);
	@override late final _Translations$misskey$signup_$bn_BD signup_ = _Translations$misskey$signup_$bn_BD._(_root);
	@override late final _Translations$misskey$accountDelete_$bn_BD accountDelete_ = _Translations$misskey$accountDelete_$bn_BD._(_root);
	@override late final _Translations$misskey$ad_$bn_BD ad_ = _Translations$misskey$ad_$bn_BD._(_root);
	@override late final _Translations$misskey$forgotPassword_$bn_BD forgotPassword_ = _Translations$misskey$forgotPassword_$bn_BD._(_root);
	@override late final _Translations$misskey$gallery_$bn_BD gallery_ = _Translations$misskey$gallery_$bn_BD._(_root);
	@override late final _Translations$misskey$email_$bn_BD email_ = _Translations$misskey$email_$bn_BD._(_root);
	@override late final _Translations$misskey$plugin_$bn_BD plugin_ = _Translations$misskey$plugin_$bn_BD._(_root);
	@override late final _Translations$misskey$registry_$bn_BD registry_ = _Translations$misskey$registry_$bn_BD._(_root);
	@override late final _Translations$misskey$aboutMisskey_$bn_BD aboutMisskey_ = _Translations$misskey$aboutMisskey_$bn_BD._(_root);
	@override late final _Translations$misskey$instanceTicker_$bn_BD instanceTicker_ = _Translations$misskey$instanceTicker_$bn_BD._(_root);
	@override late final _Translations$misskey$serverDisconnectedBehavior_$bn_BD serverDisconnectedBehavior_ = _Translations$misskey$serverDisconnectedBehavior_$bn_BD._(_root);
	@override late final _Translations$misskey$channel_$bn_BD channel_ = _Translations$misskey$channel_$bn_BD._(_root);
	@override late final _Translations$misskey$menuDisplay_$bn_BD menuDisplay_ = _Translations$misskey$menuDisplay_$bn_BD._(_root);
	@override late final _Translations$misskey$wordMute_$bn_BD wordMute_ = _Translations$misskey$wordMute_$bn_BD._(_root);
	@override late final _Translations$misskey$instanceMute_$bn_BD instanceMute_ = _Translations$misskey$instanceMute_$bn_BD._(_root);
	@override late final _Translations$misskey$theme_$bn_BD theme_ = _Translations$misskey$theme_$bn_BD._(_root);
	@override late final _Translations$misskey$sfx_$bn_BD sfx_ = _Translations$misskey$sfx_$bn_BD._(_root);
	@override late final _Translations$misskey$ago_$bn_BD ago_ = _Translations$misskey$ago_$bn_BD._(_root);
	@override late final _Translations$misskey$time_$bn_BD time_ = _Translations$misskey$time_$bn_BD._(_root);
	@override late final _Translations$misskey$x2fa_$bn_BD x2fa_ = _Translations$misskey$x2fa_$bn_BD._(_root);
	@override late final _Translations$misskey$permissions_$bn_BD permissions_ = _Translations$misskey$permissions_$bn_BD._(_root);
	@override late final _Translations$misskey$auth_$bn_BD auth_ = _Translations$misskey$auth_$bn_BD._(_root);
	@override late final _Translations$misskey$antennaSources_$bn_BD antennaSources_ = _Translations$misskey$antennaSources_$bn_BD._(_root);
	@override late final _Translations$misskey$weekday_$bn_BD weekday_ = _Translations$misskey$weekday_$bn_BD._(_root);
	@override late final _Translations$misskey$widgets_$bn_BD widgets_ = _Translations$misskey$widgets_$bn_BD._(_root);
	@override late final _Translations$misskey$widgetOptions_$bn_BD widgetOptions_ = _Translations$misskey$widgetOptions_$bn_BD._(_root);
	@override late final _Translations$misskey$cw_$bn_BD cw_ = _Translations$misskey$cw_$bn_BD._(_root);
	@override late final _Translations$misskey$poll_$bn_BD poll_ = _Translations$misskey$poll_$bn_BD._(_root);
	@override late final _Translations$misskey$visibility_$bn_BD visibility_ = _Translations$misskey$visibility_$bn_BD._(_root);
	@override late final _Translations$misskey$postForm_$bn_BD postForm_ = _Translations$misskey$postForm_$bn_BD._(_root);
	@override late final _Translations$misskey$profile_$bn_BD profile_ = _Translations$misskey$profile_$bn_BD._(_root);
	@override late final _Translations$misskey$exportOrImport_$bn_BD exportOrImport_ = _Translations$misskey$exportOrImport_$bn_BD._(_root);
	@override late final _Translations$misskey$charts_$bn_BD charts_ = _Translations$misskey$charts_$bn_BD._(_root);
	@override late final _Translations$misskey$instanceCharts_$bn_BD instanceCharts_ = _Translations$misskey$instanceCharts_$bn_BD._(_root);
	@override late final _Translations$misskey$timelines_$bn_BD timelines_ = _Translations$misskey$timelines_$bn_BD._(_root);
	@override late final _Translations$misskey$play_$bn_BD play_ = _Translations$misskey$play_$bn_BD._(_root);
	@override late final _Translations$misskey$pages_$bn_BD pages_ = _Translations$misskey$pages_$bn_BD._(_root);
	@override late final _Translations$misskey$relayStatus_$bn_BD relayStatus_ = _Translations$misskey$relayStatus_$bn_BD._(_root);
	@override late final _Translations$misskey$notification_$bn_BD notification_ = _Translations$misskey$notification_$bn_BD._(_root);
	@override late final _Translations$misskey$deck_$bn_BD deck_ = _Translations$misskey$deck_$bn_BD._(_root);
	@override late final _Translations$misskey$webhookSettings_$bn_BD webhookSettings_ = _Translations$misskey$webhookSettings_$bn_BD._(_root);
	@override late final _Translations$misskey$abuseReport_$bn_BD abuseReport_ = _Translations$misskey$abuseReport_$bn_BD._(_root);
	@override late final _Translations$misskey$moderationLogTypes_$bn_BD moderationLogTypes_ = _Translations$misskey$moderationLogTypes_$bn_BD._(_root);
	@override late final _Translations$misskey$reversi_$bn_BD reversi_ = _Translations$misskey$reversi_$bn_BD._(_root);
	@override late final _Translations$misskey$remoteLookupErrors_$bn_BD remoteLookupErrors_ = _Translations$misskey$remoteLookupErrors_$bn_BD._(_root);
	@override late final _Translations$misskey$search_$bn_BD search_ = _Translations$misskey$search_$bn_BD._(_root);
	@override late final _Translations$misskey$watermarkEditor_$bn_BD watermarkEditor_ = _Translations$misskey$watermarkEditor_$bn_BD._(_root);
	@override late final _Translations$misskey$imageEffector_$bn_BD imageEffector_ = _Translations$misskey$imageEffector_$bn_BD._(_root);
	@override late final _Translations$misskey$qr_$bn_BD qr_ = _Translations$misskey$qr_$bn_BD._(_root);
}

// Path: misskey.imageEditing_
class _Translations$misskey$imageEditing_$bn_BD extends Translations$misskey$imageEditing_$en_US {
	_Translations$misskey$imageEditing_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$imageEditing_$vars_$bn_BD vars_ = _Translations$misskey$imageEditing_$vars_$bn_BD._(_root);
}

// Path: misskey.imageFrameEditor_
class _Translations$misskey$imageFrameEditor_$bn_BD extends Translations$misskey$imageFrameEditor_$en_US {
	_Translations$misskey$imageFrameEditor_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get header => 'হেডার';
	@override String get font => 'ফন্ট';
	@override String get fontSerif => 'সেরিফ';
	@override String get fontSansSerif => 'স্যান্স সেরিফ';
}

// Path: misskey.chat_
class _Translations$misskey$chat_$bn_BD extends Translations$misskey$chat_$en_US {
	_Translations$misskey$chat_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get invitations => 'আমন্ত্রণ';
	@override String get noHistory => 'কোনো ইতিহাস নেই';
	@override String get members => 'সদস্যবৃন্দ';
	@override String get home => 'মূল পাতা';
	@override String get send => 'পাঠান';
}

// Path: misskey.delivery_
class _Translations$misskey$delivery_$bn_BD extends Translations$misskey$delivery_$en_US {
	_Translations$misskey$delivery_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get stop => 'স্থগিত করা হয়েছে';
	@override late final _Translations$misskey$delivery_$type_$bn_BD type_ = _Translations$misskey$delivery_$type_$bn_BD._(_root);
}

// Path: misskey.role_
class _Translations$misskey$role_$bn_BD extends Translations$misskey$role_$en_US {
	_Translations$misskey$role_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get priority => 'অগ্রাধিকার';
	@override late final _Translations$misskey$role_$priority_$bn_BD priority_ = _Translations$misskey$role_$priority_$bn_BD._(_root);
}

// Path: misskey.emailUnavailable_
class _Translations$misskey$emailUnavailable_$bn_BD extends Translations$misskey$emailUnavailable_$en_US {
	_Translations$misskey$emailUnavailable_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get used => 'এই ইমেইল ঠিকানাটি ইতোমধ্যে ব্যবহৃত হয়েছে';
	@override String get format => 'এই ইমেল ঠিকানাটি সঠিকভাবে লিখা হয়নি';
	@override String get disposable => 'অস্থায়ী ইমেইল ঠিকানা ব্যাবহার করা যাবে না';
	@override String get mx => 'ইমেইল ​​সার্ভারটি ঠিক নাই';
	@override String get smtp => 'ইমেইল সার্ভারটি সাড়া দিচ্ছে না';
}

// Path: misskey.ffVisibility_
class _Translations$misskey$ffVisibility_$bn_BD extends Translations$misskey$ffVisibility_$en_US {
	_Translations$misskey$ffVisibility_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get public => 'প্রকাশ';
	@override String get followers => 'শুধুমাত্র অনুসরণকারীদের কাছে দৃশ্যমান';
	@override String get private => 'ব্যাক্তিগত';
}

// Path: misskey.signup_
class _Translations$misskey$signup_$bn_BD extends Translations$misskey$signup_$en_US {
	_Translations$misskey$signup_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'প্রায় শেষ';
	@override String get emailAddressInfo => 'আপনি যে ইমেল ঠিকানাটি ব্যবহার করবেন সেটি লিখুন। আপনার ইমেইল ঠিকানা প্রকাশ করা হবে না।';
	@override String emailSent({required Object email}) => 'আপনার দেওয়া ইমেল ঠিকানায় (${email}) একটি নিশ্চিতকরণ ইমেল পাঠানো হয়েছে। অ্যাকাউন্ট তৈরি সম্পূর্ণ করতে ইমেলের লিঙ্কটি অ্যাক্সেস করুন।';
}

// Path: misskey.accountDelete_
class _Translations$misskey$accountDelete_$bn_BD extends Translations$misskey$accountDelete_$en_US {
	_Translations$misskey$accountDelete_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'অ্যাকাউন্ট মুছে ফেলুন';
	@override String get mayTakeTime => 'একটি অ্যাকাউন্ট মুছে ফেলা একটি দীর্ঘ প্রক্রিয়া এবং আপনি যদি প্রচুর পরিমাণে সামগ্রী তৈরি করে থাকেন বা ফাইল আপলোড করেন তবে এটি সম্পূর্ণ হতে দীর্ঘ সময় নিতে পারে।';
	@override String get sendEmail => 'অ্যাকাউন্ট মুছে ফেলা সম্পূর্ণ হলে, নিবন্ধিত ইমেল ঠিকানায় একটি বিজ্ঞপ্তি পাঠানো হবে।';
	@override String get requestAccountDelete => 'অ্যাকাউন্ট মুছে ফেলার অনুরোধ করুন';
	@override String get started => 'মুছে ফেলার প্রক্রিয়া শুরু হয়েছে।';
	@override String get inProgress => 'মুছে ফেলার কাজ চলছে';
}

// Path: misskey.ad_
class _Translations$misskey$ad_$bn_BD extends Translations$misskey$ad_$en_US {
	_Translations$misskey$ad_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get back => 'পিছনে';
	@override String get reduceFrequencyOfThisAd => 'এই বিজ্ঞাপনটি কম দেখান';
	@override String get hide => 'দেখাবেন না';
}

// Path: misskey.forgotPassword_
class _Translations$misskey$forgotPassword_$bn_BD extends Translations$misskey$forgotPassword_$en_US {
	_Translations$misskey$forgotPassword_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'আপনি আপনার অ্যাকাউন্টের জন্য নিবন্ধিত ইমেল ঠিকানা লিখুন. সেই ঠিকানায় একটি পাসওয়ার্ড রিসেট লিঙ্ক পাঠানো হবে।';
	@override String get ifNoEmail => 'আপনি যদি নিবন্ধনের সময় ই-মেইল ঠিকানা না দিয়ে থাকেন, তাহলে অনুগ্রহ করে প্রশাসকের সাথে যোগাযোগ করুন।';
	@override String get contactAdmin => 'এই ইন্সট্যান্সটি ইমেইল ব্যাবহার করে না, তাই আপনার পাসওয়ার্ড পুনরায় সেট করতে প্রশাসকের সাথে যোগাযোগ করুন৷';
}

// Path: misskey.gallery_
class _Translations$misskey$gallery_$bn_BD extends Translations$misskey$gallery_$en_US {
	_Translations$misskey$gallery_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get my => 'আমার গ্যালারী';
	@override String get liked => 'পছন্দ করা পোস্ট';
	@override String get like => 'পছন্দ করা';
	@override String get unlike => 'পছন্দ সরান';
}

// Path: misskey.email_
class _Translations$misskey$email_$bn_BD extends Translations$misskey$email_$en_US {
	_Translations$misskey$email_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$email_$follow_$bn_BD follow_ = _Translations$misskey$email_$follow_$bn_BD._(_root);
	@override late final _Translations$misskey$email_$receiveFollowRequest_$bn_BD receiveFollowRequest_ = _Translations$misskey$email_$receiveFollowRequest_$bn_BD._(_root);
}

// Path: misskey.plugin_
class _Translations$misskey$plugin_$bn_BD extends Translations$misskey$plugin_$en_US {
	_Translations$misskey$plugin_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get install => 'প্লাগইন ইন্সটল করুন';
	@override String get installWarn => 'অবিশ্বস্ত প্লাগইন ইনস্টল করবেন না।';
	@override String get manage => 'প্লাগইন ম্যানেজ করুন';
	@override String get viewSource => 'উৎস দেখুন';
}

// Path: misskey.registry_
class _Translations$misskey$registry_$bn_BD extends Translations$misskey$registry_$en_US {
	_Translations$misskey$registry_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get scope => 'স্কোপ';
	@override String get key => 'কী';
	@override String get keys => 'কী - সমূহ';
	@override String get domain => 'ডোমেন';
	@override String get createKey => 'কী বানান';
}

// Path: misskey.aboutMisskey_
class _Translations$misskey$aboutMisskey_$bn_BD extends Translations$misskey$aboutMisskey_$en_US {
	_Translations$misskey$aboutMisskey_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey, একটি ওপেন সোর্স সফ্টওয়্যার যা 2014 সাল থেকে syuilo তৈরি করছেন।';
	@override String get contributors => 'প্রধান কন্ট্রিবিউটারগণ';
	@override String get allContributors => 'সকল কন্ট্রিবিউটারগণ';
	@override String get source => 'সোর্স কোড';
	@override String get translation => 'Misskey অনুবাদ করুন';
	@override String get donate => 'Misskey তে দান করুন';
	@override String get morePatrons => 'আরও অনেকে আমাদের সাহায্য করছেন। তাদের সবাইকে ধন্যবাদ 🥰';
	@override String get patrons => 'সমর্থনকারী';
}

// Path: misskey.instanceTicker_
class _Translations$misskey$instanceTicker_$bn_BD extends Translations$misskey$instanceTicker_$en_US {
	_Translations$misskey$instanceTicker_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get none => 'দেখাবেন না';
	@override String get remote => 'রিমোট ব্যাবহারকারীদের জন্য দেখান';
	@override String get always => 'সর্বদা দেখান';
}

// Path: misskey.serverDisconnectedBehavior_
class _Translations$misskey$serverDisconnectedBehavior_$bn_BD extends Translations$misskey$serverDisconnectedBehavior_$en_US {
	_Translations$misskey$serverDisconnectedBehavior_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get reload => 'স্বয়ংক্রিয়ভাবে রিলোড';
	@override String get dialog => 'সতর্কতা ডায়ালগ দেখান';
	@override String get quiet => 'অগচরী সতর্কতা দেখান';
}

// Path: misskey.channel_
class _Translations$misskey$channel_$bn_BD extends Translations$misskey$channel_$en_US {
	_Translations$misskey$channel_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get create => 'চ্যানেল বানান';
	@override String get edit => 'চ্যানেল সম্পাদনা করুন';
	@override String get setBanner => 'ব্যানার সেট করুন';
	@override String get removeBanner => 'ব্যানার সরান';
	@override String get featured => 'বর্তমানে জনপ্রিয়';
	@override String get owned => 'নিজের';
	@override String get following => 'অনুসরণ করা হচ্ছে';
	@override String usersCount({required Object n}) => '${n} জন অংশগ্রহণকারী';
	@override String notesCount({required Object n}) => '${n} টি নোট';
}

// Path: misskey.menuDisplay_
class _Translations$misskey$menuDisplay_$bn_BD extends Translations$misskey$menuDisplay_$en_US {
	_Translations$misskey$menuDisplay_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'পাশে';
	@override String get sideIcon => 'পাশে (আইকন)';
	@override String get top => 'শীর্ষে';
	@override String get hide => 'লুকান';
}

// Path: misskey.wordMute_
class _Translations$misskey$wordMute_$bn_BD extends Translations$misskey$wordMute_$en_US {
	_Translations$misskey$wordMute_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'নিঃশব্দ করা শব্দগুলি';
	@override String get muteWordsDescription => 'স্পেস দিয়ে আলাদা করলে AND শর্ত তৈরি হবে এবং আলাদা লাইনে লিখলে OR শর্ত তৈরি হবে।';
	@override String get muteWordsDescription2 => 'রেগুলার এক্সপ্রেশন ব্যবহার করতে স্ল্যাশ দিয়ে কীওয়ার্ডকে ঘিরে রাখুন।';
}

// Path: misskey.instanceMute_
class _Translations$misskey$instanceMute_$bn_BD extends Translations$misskey$instanceMute_$en_US {
	_Translations$misskey$instanceMute_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'কনফিগার করা ইন্সট্যান্সের সব নোট এবং রিনোট মিউট করুন, মিউট করা ইন্সট্যান্সের ব্যবহারকারীদের উত্তর সহ।';
	@override String get instanceMuteDescription2 => 'প্রতিটিকে আলাদা লাইনে লিখুন';
	@override String get title => 'কনফিগার করা ইন্সট্যান্সের নোটগুলিকে লুকিয়ে রাখে।';
	@override String get heading => 'মিউট করা ইন্সত্যান্সের তালিকা';
}

// Path: misskey.theme_
class _Translations$misskey$theme_$bn_BD extends Translations$misskey$theme_$en_US {
	_Translations$misskey$theme_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get explore => 'থিমগুলি ঘুরে দেখুন';
	@override String get install => 'থিম ইনস্টল করুন';
	@override String get manage => 'থিম ব্যাবস্থাপনা';
	@override String get code => 'থিম কোড';
	@override String get description => 'বর্ণনা';
	@override String installed({required Object name}) => '${name} ইন্সটল করা হয়েছে';
	@override String get installedThemes => 'ইন্সটল করা থিমসমূহ';
	@override String get builtinThemes => 'বিল্ট-ইন থিমসমূহ';
	@override String get alreadyInstalled => 'এই থিমটি ইতিমধ্যে ইন্সটল করা হয়েছে';
	@override String get invalid => 'থিমটির ফরম্যাট সঠিক নয়';
	@override String get make => 'থিম বানান';
	@override String get base => 'বেস';
	@override String get addConstant => 'ধ্রুবক যোগ করুন';
	@override String get constant => 'ধ্রুবক';
	@override String get defaultValue => 'ডিফল্ট মান';
	@override String get color => 'রং';
	@override String get refProp => 'প্রোপার্টি রেফারেন্স করুন';
	@override String get refConst => 'ধ্রুবক রেফারেন্স করুন';
	@override String get key => 'কী';
	@override String get func => 'ফাংশন';
	@override String get funcKind => 'ফাংশনের ধরন';
	@override String get argument => 'আর্গুমেন্ট';
	@override String get basedProp => 'রেফারেন্স করা প্রোপার্টি';
	@override String get alpha => 'অস্বচ্ছতা';
	@override String get darken => 'অন্ধকার করুন';
	@override String get lighten => 'উজ্জ্বল করুন';
	@override String get inputConstantName => 'ধ্রুবকটির নাম লিখুন';
	@override String get importInfo => 'আপনি এখানে থিম কোড পেস্ট করতে পারেন এবং সেটিকে এডিটরে ইম্পোর্ট করতে পারেন';
	@override String deleteConstantConfirm({required Object const_}) => 'আপনি কি ধ্রুবক ${const_} মুছে ফেলতে চান？';
	@override late final _Translations$misskey$theme_$keys$bn_BD keys = _Translations$misskey$theme_$keys$bn_BD._(_root);
}

// Path: misskey.sfx_
class _Translations$misskey$sfx_$bn_BD extends Translations$misskey$sfx_$en_US {
	_Translations$misskey$sfx_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get note => 'নোটগুলি';
	@override String get noteMy => 'নোট (আপনার)';
	@override String get notification => 'বিজ্ঞপ্তি';
}

// Path: misskey.ago_
class _Translations$misskey$ago_$bn_BD extends Translations$misskey$ago_$en_US {
	_Translations$misskey$ago_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get future => 'ভবিষ্যৎ';
	@override String get justNow => 'এইমাত্র';
	@override String secondsAgo({required Object n}) => '${n} সেকেন্ড আগে';
	@override String minutesAgo({required Object n}) => '${n} মিনিট আগে';
	@override String hoursAgo({required Object n}) => '${n} ঘণ্টা আগে';
	@override String daysAgo({required Object n}) => '${n} দিন আগে';
	@override String weeksAgo({required Object n}) => '${n} সপ্তাহ আগে';
	@override String monthsAgo({required Object n}) => '${n} মাস আগে';
	@override String yearsAgo({required Object n}) => '${n} বছর আগে';
	@override String get invalid => 'এখানে কিছুই নাই';
}

// Path: misskey.time_
class _Translations$misskey$time_$bn_BD extends Translations$misskey$time_$en_US {
	_Translations$misskey$time_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get second => 'সেকেন্ড';
	@override String get minute => 'মিনিট';
	@override String get hour => 'ঘণ্টা';
	@override String get day => 'দিন';
}

// Path: misskey.x2fa_
class _Translations$misskey$x2fa_$bn_BD extends Translations$misskey$x2fa_$en_US {
	_Translations$misskey$x2fa_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'আপনি ইতিমধ্যে একটি 2-ফ্যাক্টর অথেনটিকেশন ডিভাইস নিবন্ধন করেছেন৷';
	@override String step1({required Object a, required Object b}) => 'প্রথমে, আপনার ডিভাইসে ${a} বা ${b} এর মতো একটি অথেনটিকেশন অ্যাপ ইনস্টল করুন৷';
	@override String get step2 => 'এরপরে, অ্যাপের সাহায্যে প্রদর্শিত QR কোডটি স্ক্যান করুন।';
	@override String get step3 => 'অ্যাপে প্রদর্শিত টোকেনটি লিখুন এবং আপনার কাজ শেষ।';
	@override String get step4 => 'আপনাকে এখন থেকে লগ ইন করার সময়, এইভাবে টোকেন লিখতে হবে।';
	@override String get securityKeyInfo => 'আপনি একটি হার্ডওয়্যার সিকিউরিটি কী ব্যবহার করে লগ ইন করতে পারেন যা FIDO2 বা ডিভাইসের ফিঙ্গারপ্রিন্ট সেন্সর বা পিন সমর্থন করে৷';
	@override String get renewTOTPCancel => 'না, ধন্যবাদ';
}

// Path: misskey.permissions_
class _Translations$misskey$permissions_$bn_BD extends Translations$misskey$permissions_$en_US {
	_Translations$misskey$permissions_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'অ্যাকাউন্টের তথ্য দেখুন';
	@override String get writeAccount => 'অ্যাকাউন্টের তথ্য সম্পাদন করুন';
	@override String get readBlocks => 'ব্লক করা ব্যাবহারকারীদের তালিকা দেখুন';
	@override String get writeBlocks => 'ব্লক করা ব্যাবহারকারীদের তালিকা সম্পাদনা করুন';
	@override String get readDrive => 'ড্রাইভের ফাইল এবং ফোল্ডারসমূহ পড়া';
	@override String get writeDrive => 'ড্রাইভের ফাইল এবং ফোল্ডারসমূহ সম্পাদনা করা';
	@override String get readFavorites => 'পছন্দের তালিকা পড়া';
	@override String get writeFavorites => 'পছন্দের তালিকা সম্পাদনা করা';
	@override String get readFollowing => 'অনুসরণ তথ্য দেখুন';
	@override String get writeFollowing => 'অনুসরণ তথ্য সম্পাদনা করা';
	@override String get readMessaging => 'চ্যাটগুলি দেখুন';
	@override String get writeMessaging => 'চ্যাটগুলি সম্পাদনা করুন';
	@override String get readMutes => 'মিউটের লিস্ট দেখুন';
	@override String get writeMutes => 'মিউটের লিস্ট সম্পাদনা করুন';
	@override String get writeNotes => 'নোট লিখা';
	@override String get readNotifications => 'বিজ্ঞপ্তিগুলি দেখুন';
	@override String get writeNotifications => 'বিজ্ঞপ্তি নিয়ে কাজ করে';
	@override String get readReactions => 'রিঅ্যাকশনগুলি দেখুন';
	@override String get writeReactions => 'রিঅ্যাকশনগুলি সম্পাদনা করুন';
	@override String get writeVotes => 'ভোট দিন';
	@override String get readPages => 'আপনার পেজগুলি দেখুন';
	@override String get writePages => 'পেজগুলি সম্পাদনা বা ডিলিট করুন';
	@override String get readPageLikes => 'পৃষ্ঠায় দেয়া পছন্দগুলি দেখুন';
	@override String get writePageLikes => 'পৃষ্ঠায় দেয়া পছন্দগুলি সম্পাদনা করুন';
	@override String get readUserGroups => 'ব্যাবহারকারী গ্রুপগুলি দেখুন';
	@override String get writeUserGroups => 'ব্যাবহারকারী গ্রুপগুলি সম্পাদনা করুন';
	@override String get readChannels => 'চ্যানেলগুলি দেখুন';
	@override String get writeChannels => 'চ্যানেলগুলি সম্পাদনা করুন';
	@override String get readGallery => 'গ্যালারী দেখুন';
	@override String get writeGallery => 'গ্যালারী সম্পাদনা করুন';
	@override String get readGalleryLikes => 'গ্যালারীর পছন্দগুলি দেখুন';
	@override String get writeGalleryLikes => 'গ্যালারীর পছন্দগুলি সম্পাদনা করুন';
	@override String get writeChat => 'চ্যাটগুলি সম্পাদনা করুন';
}

// Path: misskey.auth_
class _Translations$misskey$auth_$bn_BD extends Translations$misskey$auth_$en_US {
	_Translations$misskey$auth_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String shareAccess({required Object name}) => '"${name}" কে অ্যাকাউন্টের অ্যাক্সেস দিবেন?';
	@override String get shareAccessAsk => 'অ্যাপ্লিকেশনটিকে অ্যাকাউন্টের অ্যাক্সেস দিবেন?';
	@override String get permissionAsk => 'এই অ্যাপ্লিকেশনটি নিম্নলিখিত অনুমতি চাই';
	@override String get pleaseGoBack => 'দয়া করে অ্যাপ্লিকেশনে ফিরে যান';
	@override String get callback => 'অ্যাপ্লিকেশনে ফিরে যাচ্ছি';
	@override String get denied => 'প্রবেশ নিষেধ';
}

// Path: misskey.antennaSources_
class _Translations$misskey$antennaSources_$bn_BD extends Translations$misskey$antennaSources_$en_US {
	_Translations$misskey$antennaSources_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get all => 'সকল নোট';
	@override String get homeTimeline => 'আপনি অনুসরণ করছেন, এমন ব্যবহারকারীদের নোট';
	@override String get users => 'এক বা একাধিক নির্দিষ্ট ব্যবহারকারীর নোট';
	@override String get userList => 'নির্দিষ্ট তালিকায় নাম থাকা ব্যবহারকারীদের নোট';
}

// Path: misskey.weekday_
class _Translations$misskey$weekday_$bn_BD extends Translations$misskey$weekday_$en_US {
	_Translations$misskey$weekday_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get sunday => 'রবিবার';
	@override String get monday => 'সোমবার';
	@override String get tuesday => 'মঙ্গলবার';
	@override String get wednesday => 'বুধবার';
	@override String get thursday => 'বৃহস্পতিবার';
	@override String get friday => 'শুক্রবার';
	@override String get saturday => 'শনিবার';
}

// Path: misskey.widgets_
class _Translations$misskey$widgets_$bn_BD extends Translations$misskey$widgets_$en_US {
	_Translations$misskey$widgets_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get profile => 'প্রোফাইল';
	@override String get instanceInfo => 'ইন্সট্যান্সের তথ্য';
	@override String get memo => 'স্টিকি নোট';
	@override String get notifications => 'বিজ্ঞপ্তি';
	@override String get timeline => 'টাইমলাইন';
	@override String get calendar => 'ক্যালেন্ডার';
	@override String get trends => 'বর্তমানে জনপ্রিয়';
	@override String get clock => 'ঘড়ি';
	@override String get rss => 'RSS রিডার';
	@override String get activity => 'কার্যকলাপ';
	@override String get photos => 'ফটোগুলি';
	@override String get digitalClock => 'ডিজিটাল ঘড়ি';
	@override String get federation => 'ফেডিভার্স';
	@override String get postForm => 'নোট লিখুন';
	@override String get slideshow => 'স্লাইডশো';
	@override String get button => 'বাটন';
	@override String get onlineUsers => 'অনলাইনে থাকা ব্যবহারকারীগণ';
	@override String get jobQueue => 'জব কিউ';
	@override String get serverMetric => 'সার্ভার মেট্রিক্স';
	@override String get aiscript => 'AiScript কনসোল';
	@override String get aichan => 'আই চান';
	@override late final _Translations$misskey$widgets_$userList_$bn_BD userList_ = _Translations$misskey$widgets_$userList_$bn_BD._(_root);
}

// Path: misskey.widgetOptions_
class _Translations$misskey$widgetOptions_$bn_BD extends Translations$misskey$widgetOptions_$en_US {
	_Translations$misskey$widgetOptions_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get height => 'উচ্চতা';
	@override late final _Translations$misskey$widgetOptions_$button_$bn_BD button_ = _Translations$misskey$widgetOptions_$button_$bn_BD._(_root);
	@override late final _Translations$misskey$widgetOptions_$clock_$bn_BD clock_ = _Translations$misskey$widgetOptions_$clock_$bn_BD._(_root);
	@override late final _Translations$misskey$widgetOptions_$birthdayFollowings_$bn_BD birthdayFollowings_ = _Translations$misskey$widgetOptions_$birthdayFollowings_$bn_BD._(_root);
}

// Path: misskey.cw_
class _Translations$misskey$cw_$bn_BD extends Translations$misskey$cw_$en_US {
	_Translations$misskey$cw_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get hide => 'লুকান';
	@override String get show => 'আরও দেখুন';
	@override String chars({required Object count}) => '${count} টি অক্ষর';
	@override String files({required Object count}) => '${count} টি ফাইল';
}

// Path: misskey.poll_
class _Translations$misskey$poll_$bn_BD extends Translations$misskey$poll_$en_US {
	_Translations$misskey$poll_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'সর্বনিম্ন 2 টি অপশন বেছে নিতে হবে';
	@override String choiceN({required Object n}) => 'বিকল্পগুলি ${n}';
	@override String get noMore => 'আপনি আর কোন বিকল্প যোগ করতে পারবেন না';
	@override String get canMultipleVote => 'একাধিক বিকল্প বাছাই করা যাবে';
	@override String get expiration => 'পোলের সময়সীমা';
	@override String get infinite => 'অনির্দিষ্ট';
	@override String get at => 'শেষ হবে';
	@override String get after => 'শেষ হবে';
	@override String get deadlineDate => 'শেষ হওয়ার তারিখ';
	@override String get deadlineTime => 'ঘণ্টা';
	@override String get duration => 'ব্যাপ্তিকাল';
	@override String votesCount({required Object n}) => '${n} টি ভোট';
	@override String totalVotes({required Object n}) => 'সর্বমোট ${n} টি ভোট';
	@override String get vote => 'ভোট দিন';
	@override String get showResult => 'রেজাল্ট দেখান';
	@override String get voted => 'ভোট দিয়েছেন';
	@override String get closed => 'শেষ হয়ে গেছে';
	@override String remainingDays({required Object d, required Object h}) => 'আর ${d} দিন ${h} ঘণ্টা বাকি আছে';
	@override String remainingHours({required Object h, required Object m}) => 'আর ${h} ঘণ্টা ${m} মিনিট বাকি আছে';
	@override String remainingMinutes({required Object m, required Object s}) => 'আর বাকি আছে ${m} মিনিট ${s} সেকেন্ড';
	@override String remainingSeconds({required Object s}) => 'আর বাকি আছে ${s} সেকেন্ড';
}

// Path: misskey.visibility_
class _Translations$misskey$visibility_$bn_BD extends Translations$misskey$visibility_$en_US {
	_Translations$misskey$visibility_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get public => 'সর্বজনীন';
	@override String get publicDescription => 'সবাই আপনার নোটগুলি দেখতে পাবে';
	@override String get home => 'মূল পাতা';
	@override String get homeDescription => 'শুধুমাত্র হোম টাইমলাইনে আপনার নোটগুলি পোস্ট করুন';
	@override String get followers => 'অনুসরণকারী';
	@override String get followersDescription => 'শুধুমাত্র আপনার অনুসরণকারীদের নিকট পোস্ট করুন';
	@override String get specified => 'ডাইরেক্ট নোট';
	@override String get specifiedDescription => 'শুধুমাত্র নির্দিষ্ট ব্যাবহারকারীর নিকট পাঠান';
}

// Path: misskey.postForm_
class _Translations$misskey$postForm_$bn_BD extends Translations$misskey$postForm_$en_US {
	_Translations$misskey$postForm_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'নোটটির জবাব দিন...';
	@override String get quotePlaceholder => 'নোটটিকে উদ্ধৃত করুন...';
	@override String get channelPlaceholder => 'চ্যানেলে পোস্ট করুন...';
	@override late final _Translations$misskey$postForm_$howToUse_$bn_BD howToUse_ = _Translations$misskey$postForm_$howToUse_$bn_BD._(_root);
	@override late final _Translations$misskey$postForm_$placeholders_$bn_BD placeholders_ = _Translations$misskey$postForm_$placeholders_$bn_BD._(_root);
}

// Path: misskey.profile_
class _Translations$misskey$profile_$bn_BD extends Translations$misskey$profile_$en_US {
	_Translations$misskey$profile_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get name => 'নাম';
	@override String get username => 'ব্যবহারকারীর নাম';
	@override String get description => 'আপনার সম্পর্কে';
	@override String get youCanIncludeHashtags => 'হ্যাশট্যাগ অন্তর্ভুক্ত করা যেতে পারে।';
	@override String get metadata => 'অতিরিক্ত তথ্য';
	@override String get metadataEdit => 'অতিরিক্ত তথ্য সম্পাদনা করুন';
	@override String get metadataDescription => 'আপনি আপনার প্রোফাইলে একটি টেবিল হিসাবে চারটি অতিরিক্ত তথ্য দেখাতে পারেন।';
	@override String get metadataLabel => 'লেবেল';
	@override String get metadataContent => 'বিষয়বস্তু';
	@override String get changeAvatar => 'অ্যাভাটার পরিবর্তন করুন';
	@override String get changeBanner => 'ব্যানার পরিবর্তন করুন';
}

// Path: misskey.exportOrImport_
class _Translations$misskey$exportOrImport_$bn_BD extends Translations$misskey$exportOrImport_$en_US {
	_Translations$misskey$exportOrImport_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'সকল নোট';
	@override String get clips => 'ক্লিপ';
	@override String get followingList => 'অনুসরণ করা হচ্ছে';
	@override String get muteList => 'মিউট';
	@override String get blockingList => 'ব্লক';
	@override String get userLists => 'লিস্ট';
	@override String get excludeMutingUsers => 'মিউটকৃত ব্যবহারকারীদের বাদ দিন';
	@override String get excludeInactiveUsers => 'অব্যাবহৃত অ্যাকাউন্ট বাদ দিন';
}

// Path: misskey.charts_
class _Translations$misskey$charts_$bn_BD extends Translations$misskey$charts_$en_US {
	_Translations$misskey$charts_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get federation => 'ফেডিভার্স';
	@override String get apRequest => 'অনুরোধসমূহ';
	@override String get usersIncDec => 'ব্যবহারকারীদের সংখ্যার পরিবর্তন';
	@override String get usersTotal => 'ব্যবহারকারীদের সংখ্যা';
	@override String get activeUsers => 'সক্রিয় ব্যাবহারকারী';
	@override String get notesIncDec => 'নোটের সংখ্যার পরিবর্তন';
	@override String get localNotesIncDec => 'লোকাল নোটের সংখ্যার পরিবর্তন';
	@override String get remoteNotesIncDec => 'রিমোট নোটের সংখ্যার পরিবর্তন';
	@override String get notesTotal => 'নোটের সংখ্যা';
	@override String get filesIncDec => 'ফাইলের সংখ্যার পরিবর্তন';
	@override String get filesTotal => 'ফাইলের সংখ্যা';
	@override String get storageUsageIncDec => 'স্টোরেজের ব্যাবহারের পরিবর্তন';
	@override String get storageUsageTotal => 'মোট স্টোরেজের ব্যাবহার';
}

// Path: misskey.instanceCharts_
class _Translations$misskey$instanceCharts_$bn_BD extends Translations$misskey$instanceCharts_$en_US {
	_Translations$misskey$instanceCharts_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get requests => 'অনুরোধসমূহ';
	@override String get users => 'ব্যবহারকারীদের সংখ্যার পরিবর্তন';
	@override String get usersTotal => 'ক্রমবর্ধমান ব্যবহারকারীদের সংখ্যা';
	@override String get notes => 'নোটের সংখ্যার পরিবর্তন';
	@override String get notesTotal => 'ক্রমবর্ধমান নোটের সংখ্যা';
	@override String get ff => 'অনুসরণকারী / অনুসরণ করা ব্যাবহারকারীদের সংখ্যার পরিবর্তন';
	@override String get ffTotal => 'অনুসরণকারী / অনুসরণ করা ব্যাবহারকারীদের ক্রমবর্ধমান সংখ্যা';
	@override String get cacheSize => 'ক্যাশ সাইজের পরিবর্তন';
	@override String get cacheSizeTotal => 'ক্রমবর্ধমান ক্যাশ সাইজ';
	@override String get files => 'ফাইলের সংখ্যার পরিবর্তন';
	@override String get filesTotal => 'ক্রমবর্ধমান ফাইলের সংখ্যা';
}

// Path: misskey.timelines_
class _Translations$misskey$timelines_$bn_BD extends Translations$misskey$timelines_$en_US {
	_Translations$misskey$timelines_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get home => 'মূল পাতা';
	@override String get local => 'স্থানীয়';
	@override String get social => 'সামাজিক';
	@override String get global => 'গ্লোবাল';
}

// Path: misskey.play_
class _Translations$misskey$play_$bn_BD extends Translations$misskey$play_$en_US {
	_Translations$misskey$play_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get viewSource => 'উৎস দেখুন';
	@override String get featured => 'জনপ্রিয়';
	@override String get title => 'শিরোনাম';
	@override String get script => 'স্ক্রিপ্ট';
	@override String get summary => 'বর্ণনা';
}

// Path: misskey.pages_
class _Translations$misskey$pages_$bn_BD extends Translations$misskey$pages_$en_US {
	_Translations$misskey$pages_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'নতুন পৃষ্ঠা বানান';
	@override String get editPage => 'পৃষ্ঠাটি সম্পাদনা করুন';
	@override String get readPage => 'উৎস দেখছেন';
	@override String get pageSetting => 'পৃষ্ঠার সেটিংস';
	@override String get nameAlreadyExists => 'পৃষ্ঠার URLটি ইতিমধ্যেই ব্যাবহার করা হয়েছে';
	@override String get invalidNameTitle => 'পৃষ্ঠার URL অবৈধ';
	@override String get invalidNameText => 'নিশ্চিত করুন যে এটি ফাঁকা নয়';
	@override String get editThisPage => 'পৃষ্ঠাটি সম্পাদনা করুন';
	@override String get viewSource => 'উৎস দেখুন';
	@override String get viewPage => 'আপনার পেজগুলি দেখুন';
	@override String get like => 'পছন্দ';
	@override String get unlike => 'পছন্দ সরান';
	@override String get my => 'আমার পৃষ্ঠাগুলি';
	@override String get liked => 'পছন্দ করা পৃষ্ঠাগুলি';
	@override String get featured => 'জনপ্রিয়';
	@override String get inspector => 'ইনিস্পেক্টর';
	@override String get contents => 'বিষয়বস্তু';
	@override String get content => 'পৃষ্ঠার ব্লক';
	@override String get variables => 'চলকগুলি';
	@override String get title => 'শিরোনাম';
	@override String get url => 'পৃষ্ঠার URL';
	@override String get summary => 'পৃষ্ঠার বর্ণনা';
	@override String get alignCenter => 'সেন্টার';
	@override String get hideTitleWhenPinned => 'পিন করা হলে টাইটেল লুকান';
	@override String get font => 'ফন্ট';
	@override String get fontSerif => 'সেরিফ';
	@override String get fontSansSerif => 'স্যান্স সেরিফ';
	@override String get eyeCatchingImageSet => 'থাম্বনেইল সেট করুন';
	@override String get eyeCatchingImageRemove => 'থাম্বনেইল সরান';
	@override String get chooseBlock => 'ব্লক যোগ করুন';
	@override String get selectType => 'ধরন নির্বাচন করুন';
	@override String get contentBlocks => 'বিষয়বস্তু';
	@override String get inputBlocks => 'ইনপুট';
	@override String get specialBlocks => 'বিশেষ';
	@override late final _Translations$misskey$pages_$blocks$bn_BD blocks = _Translations$misskey$pages_$blocks$bn_BD._(_root);
}

// Path: misskey.relayStatus_
class _Translations$misskey$relayStatus_$bn_BD extends Translations$misskey$relayStatus_$en_US {
	_Translations$misskey$relayStatus_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'অপেক্ষমান';
	@override String get accepted => 'অনুমোদিত';
	@override String get rejected => 'প্রত্যাখিত';
}

// Path: misskey.notification_
class _Translations$misskey$notification_$bn_BD extends Translations$misskey$notification_$en_US {
	_Translations$misskey$notification_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'ফাইল সফলভাবে আপলোড করা হয়েছে';
	@override String youGotMention({required Object name}) => '${name} আপনাকে উল্লেখ্য করেছে';
	@override String youGotReply({required Object name}) => '${name} আপনাকে জবাব দিয়েছে';
	@override String youGotQuote({required Object name}) => '${name} আপনাকে উদ্ধৃত করেছে';
	@override String youRenoted({required Object name}) => '${name} এর Renote';
	@override String get youWereFollowed => 'আপনাকে অনুসরণ করছে';
	@override String get youReceivedFollowRequest => 'অনুসরণ করার জন্য অনুরোধ পাওয়া গেছে';
	@override String get yourFollowRequestAccepted => 'আপনার অনুসরণ করার অনুরোধ গৃহীত হয়েছে';
	@override String get pollEnded => 'পোলের ফলাফল দেখা যাবে';
	@override String get emptyPushNotificationMessage => 'আপডেট করা পুশ বিজ্ঞপ্তি';
	@override late final _Translations$misskey$notification_$types_$bn_BD types_ = _Translations$misskey$notification_$types_$bn_BD._(_root);
	@override late final _Translations$misskey$notification_$actions_$bn_BD actions_ = _Translations$misskey$notification_$actions_$bn_BD._(_root);
}

// Path: misskey.deck_
class _Translations$misskey$deck_$bn_BD extends Translations$misskey$deck_$en_US {
	_Translations$misskey$deck_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'সর্বদা মেইন কলাম দেখান';
	@override String get columnAlign => 'কলাম সাজান';
	@override String get addColumn => 'কলাম যুক্ত করুন';
	@override String get configureColumn => 'কলাম সেটিংস';
	@override String get swapLeft => 'বামে সরান';
	@override String get swapRight => 'ডানে সরান';
	@override String get swapUp => 'উপরে উঠান';
	@override String get swapDown => 'নিচে নামান';
	@override String get stackLeft => 'বাম কলামে সাজান';
	@override String get popRight => 'ডানদিকে রাখুন';
	@override String get profile => 'প্রোফাইল';
	@override late final _Translations$misskey$deck_$columns_$bn_BD columns_ = _Translations$misskey$deck_$columns_$bn_BD._(_root);
}

// Path: misskey.webhookSettings_
class _Translations$misskey$webhookSettings_$bn_BD extends Translations$misskey$webhookSettings_$en_US {
	_Translations$misskey$webhookSettings_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get name => 'নাম';
	@override String get active => 'চালু';
}

// Path: misskey.abuseReport_
class _Translations$misskey$abuseReport_$bn_BD extends Translations$misskey$abuseReport_$en_US {
	_Translations$misskey$abuseReport_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$abuseReport_$notificationRecipient_$bn_BD notificationRecipient_ = _Translations$misskey$abuseReport_$notificationRecipient_$bn_BD._(_root);
}

// Path: misskey.moderationLogTypes_
class _Translations$misskey$moderationLogTypes_$bn_BD extends Translations$misskey$moderationLogTypes_$en_US {
	_Translations$misskey$moderationLogTypes_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'স্থগিত করা';
	@override String get resetPassword => 'পাসওয়ার্ড রিসেট করুন';
}

// Path: misskey.reversi_
class _Translations$misskey$reversi_$bn_BD extends Translations$misskey$reversi_$en_US {
	_Translations$misskey$reversi_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get total => 'মোট';
}

// Path: misskey.remoteLookupErrors_
class _Translations$misskey$remoteLookupErrors_$bn_BD extends Translations$misskey$remoteLookupErrors_$en_US {
	_Translations$misskey$remoteLookupErrors_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$remoteLookupErrors_$noSuchObject_$bn_BD noSuchObject_ = _Translations$misskey$remoteLookupErrors_$noSuchObject_$bn_BD._(_root);
}

// Path: misskey.search_
class _Translations$misskey$search_$bn_BD extends Translations$misskey$search_$en_US {
	_Translations$misskey$search_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'সবগুলো';
	@override String get searchScopeLocal => 'স্থানীয়';
}

// Path: misskey.watermarkEditor_
class _Translations$misskey$watermarkEditor_$bn_BD extends Translations$misskey$watermarkEditor_$en_US {
	_Translations$misskey$watermarkEditor_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get opacity => 'অস্বচ্ছতা';
	@override String get scale => 'আকার';
	@override String get text => 'লেখা';
	@override String get image => 'ছবি';
	@override String get advanced => 'উন্নত';
}

// Path: misskey.imageEffector_
class _Translations$misskey$imageEffector_$bn_BD extends Translations$misskey$imageEffector_$en_US {
	_Translations$misskey$imageEffector_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$imageEffector_$fxProps_$bn_BD fxProps_ = _Translations$misskey$imageEffector_$fxProps_$bn_BD._(_root);
}

// Path: misskey.qr_
class _Translations$misskey$qr_$bn_BD extends Translations$misskey$qr_$en_US {
	_Translations$misskey$qr_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get showTabTitle => 'প্রদর্শন';
	@override String get raw => 'লেখা';
}

// Path: misskey.imageEditing_.vars_
class _Translations$misskey$imageEditing_$vars_$bn_BD extends Translations$misskey$imageEditing_$vars_$en_US {
	_Translations$misskey$imageEditing_$vars_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get filename => 'ফাইলের নাম';
}

// Path: misskey.delivery_.type_
class _Translations$misskey$delivery_$type_$bn_BD extends Translations$misskey$delivery_$type_$en_US {
	_Translations$misskey$delivery_$type_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get none => 'প্রকাশ করা হচ্ছে';
}

// Path: misskey.role_.priority_
class _Translations$misskey$role_$priority_$bn_BD extends Translations$misskey$role_$priority_$en_US {
	_Translations$misskey$role_$priority_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get low => 'নিম্ন';
	@override String get middle => 'মাঝারি';
	@override String get high => 'উচ্চ';
}

// Path: misskey.email_.follow_
class _Translations$misskey$email_$follow_$bn_BD extends Translations$misskey$email_$follow_$en_US {
	_Translations$misskey$email_$follow_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনাকে অনুসরণ করছে';
}

// Path: misskey.email_.receiveFollowRequest_
class _Translations$misskey$email_$receiveFollowRequest_$bn_BD extends Translations$misskey$email_$receiveFollowRequest_$en_US {
	_Translations$misskey$email_$receiveFollowRequest_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get title => 'অনুসরণ করার অনুরোধ পেয়েছেন';
}

// Path: misskey.theme_.keys
class _Translations$misskey$theme_$keys$bn_BD extends Translations$misskey$theme_$keys$en_US {
	_Translations$misskey$theme_$keys$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get accent => 'অ্যাকসেন্ট';
	@override String get bg => 'পটভূমি';
	@override String get fg => 'লেখা';
	@override String get focus => 'ফোকাস';
	@override String get indicator => 'ইনডিকেটর';
	@override String get panel => 'প্যানেল';
	@override String get shadow => 'ছায়া';
	@override String get header => 'হেডার';
	@override String get navBg => 'সাইডবারের পটভূমি';
	@override String get navFg => 'সাইডবারের পাঠ্য';
	@override String get navActive => 'সাইডবারের পাঠ্য (অ্যাকটিভ)';
	@override String get navIndicator => 'সাইডবারের ইনডিকেটর';
	@override String get link => 'লিংক';
	@override String get hashtag => 'হ্যাশট্যাগ';
	@override String get mention => 'উল্লেখ';
	@override String get mentionMe => 'আপনাকে উল্লেখ্য করা';
	@override String get renote => 'রিনোট';
	@override String get modalBg => 'মোডালের পটভূমি';
	@override String get divider => 'খন্ডক';
	@override String get scrollbarHandle => 'স্ক্রলবার হ্যান্ডেল';
	@override String get scrollbarHandleHover => 'স্ক্রলবার হ্যান্ডেল (হভার)';
	@override String get dateLabelFg => 'তারিখ লেবেলের পাঠ্য';
	@override String get infoBg => 'তথ্যের পটভূমি';
	@override String get infoFg => 'তথ্যের পাঠ্য';
	@override String get infoWarnBg => 'ওয়ার্নিং এর পটভূমি';
	@override String get infoWarnFg => 'ওয়ার্নিং এর পাঠ্য';
	@override String get toastBg => 'বিজ্ঞপ্তির পটভূমি';
	@override String get toastFg => 'বিজ্ঞপ্তির পাঠ্য';
	@override String get buttonBg => 'বাটনের পটভূমি';
	@override String get buttonHoverBg => 'বাটনের পটভূমি (হভার)';
	@override String get inputBorder => 'ইনপুট ফিল্ডের বর্ডার';
	@override String get badge => 'ব্যাজ';
	@override String get messageBg => 'চ্যাটের পটভূমি';
	@override String get fgHighlighted => 'হাইলাইট করা পাঠ্য';
}

// Path: misskey.widgets_.userList_
class _Translations$misskey$widgets_$userList_$bn_BD extends Translations$misskey$widgets_$userList_$en_US {
	_Translations$misskey$widgets_$userList_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'লিস্ট নির্বাচন করুন';
}

// Path: misskey.widgetOptions_.button_
class _Translations$misskey$widgetOptions_$button_$bn_BD extends Translations$misskey$widgetOptions_$button_$en_US {
	_Translations$misskey$widgetOptions_$button_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get colored => 'রঙ্গিন';
}

// Path: misskey.widgetOptions_.clock_
class _Translations$misskey$widgetOptions_$clock_$bn_BD extends Translations$misskey$widgetOptions_$clock_$en_US {
	_Translations$misskey$widgetOptions_$clock_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get size => 'আকার';
}

// Path: misskey.widgetOptions_.birthdayFollowings_
class _Translations$misskey$widgetOptions_$birthdayFollowings_$bn_BD extends Translations$misskey$widgetOptions_$birthdayFollowings_$en_US {
	_Translations$misskey$widgetOptions_$birthdayFollowings_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get period => 'ব্যাপ্তিকাল';
}

// Path: misskey.postForm_.howToUse_
class _Translations$misskey$postForm_$howToUse_$bn_BD extends Translations$misskey$postForm_$howToUse_$en_US {
	_Translations$misskey$postForm_$howToUse_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get visibility_title => 'দৃশ্যমানতা';
	@override String get menu_title => 'মেনু';
}

// Path: misskey.postForm_.placeholders_
class _Translations$misskey$postForm_$placeholders_$bn_BD extends Translations$misskey$postForm_$placeholders_$en_US {
	_Translations$misskey$postForm_$placeholders_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get a => 'আপনি এখন কি করছেন?';
	@override String get b => 'আপনার আশে পাশে কি হচ্ছে?';
	@override String get c => 'আপনি কি ভাবছেন?';
	@override String get d => 'আপনি কি বলতে চান?';
	@override String get e => 'লেখা শুরু করুন...';
	@override String get f => 'আপনার লেখার জন্য অপেক্ষা করছি...';
}

// Path: misskey.pages_.blocks
class _Translations$misskey$pages_$blocks$bn_BD extends Translations$misskey$pages_$blocks$en_US {
	_Translations$misskey$pages_$blocks$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get text => 'লেখা';
	@override String get textarea => 'টেক্সট এরিয়া';
	@override String get section => 'বিভাগ';
	@override String get image => 'ছবি';
	@override String get button => 'বাটন';
	@override String get note => 'এম্বেড নোট';
	@override late final _Translations$misskey$pages_$blocks$note_$bn_BD note_ = _Translations$misskey$pages_$blocks$note_$bn_BD._(_root);
}

// Path: misskey.notification_.types_
class _Translations$misskey$notification_$types_$bn_BD extends Translations$misskey$notification_$types_$en_US {
	_Translations$misskey$notification_$types_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get all => 'সকল';
	@override String get follow => 'অনুসরণ করা হচ্ছে';
	@override String get mention => 'উল্লেখ';
	@override String get reply => 'উত্তর দিন';
	@override String get renote => 'রিনোট';
	@override String get quote => 'উদ্ধৃতি';
	@override String get reaction => 'প্রতিক্রিয়া';
	@override String get pollEnded => 'পোল শেষ';
	@override String get receiveFollowRequest => 'প্রাপ্ত অনুসরণের অনুরোধসমূহ';
	@override String get followRequestAccepted => 'গৃহীত অনুসরণের অনুরোধসমূহ';
	@override String get login => 'প্রবেশ করুন';
	@override String get app => 'লিঙ্ক করা অ্যাপ থেকে বিজ্ঞপ্তি';
}

// Path: misskey.notification_.actions_
class _Translations$misskey$notification_$actions_$bn_BD extends Translations$misskey$notification_$actions_$en_US {
	_Translations$misskey$notification_$actions_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'ফলো ব্যাক করেছে';
	@override String get reply => 'জবাব';
	@override String get renote => 'রিনোট';
}

// Path: misskey.deck_.columns_
class _Translations$misskey$deck_$columns_$bn_BD extends Translations$misskey$deck_$columns_$en_US {
	_Translations$misskey$deck_$columns_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get main => 'প্রধান';
	@override String get widgets => 'উইজেটগুলি';
	@override String get notifications => 'বিজ্ঞপ্তি';
	@override String get tl => 'টাইমলাইন';
	@override String get antenna => 'অ্যান্টেনা';
	@override String get list => 'লিস্ট';
	@override String get channel => 'চ্যানেলগুলি';
	@override String get mentions => 'উল্লেখসমূহ';
	@override String get direct => 'ডাইরেক্ট নোটগুলি';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _Translations$misskey$abuseReport_$notificationRecipient_$bn_BD extends Translations$misskey$abuseReport_$notificationRecipient_$en_US {
	_Translations$misskey$abuseReport_$notificationRecipient_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$bn_BD recipientType_ = _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$bn_BD._(_root);
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _Translations$misskey$remoteLookupErrors_$noSuchObject_$bn_BD extends Translations$misskey$remoteLookupErrors_$noSuchObject_$en_US {
	_Translations$misskey$remoteLookupErrors_$noSuchObject_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get title => 'পাওয়া যায়নি';
}

// Path: misskey.imageEffector_.fxProps_
class _Translations$misskey$imageEffector_$fxProps_$bn_BD extends Translations$misskey$imageEffector_$fxProps_$en_US {
	_Translations$misskey$imageEffector_$fxProps_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get scale => 'আকার';
	@override String get size => 'আকার';
	@override String get color => 'রং';
	@override String get opacity => 'অস্বচ্ছতা';
	@override String get lightness => 'উজ্জ্বল করুন';
}

// Path: misskey.pages_.blocks.note_
class _Translations$misskey$pages_$blocks$note_$bn_BD extends Translations$misskey$pages_$blocks$note_$en_US {
	_Translations$misskey$pages_$blocks$note_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get id => 'নোট ID';
	@override String get idDescription => 'আপনি এর বদলে নোটের URL পেস্ট করতে পারেন.';
	@override String get detailed => 'বিস্তারিত দেখুন';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$bn_BD extends Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$en_US {
	_Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$bn_BD._(TranslationsBnBd root) : this._root = root, super.internal(root);

	final TranslationsBnBd _root; // ignore: unused_field

	// Translations
	@override String get mail => 'ইমেইল';
}
