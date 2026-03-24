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
class TranslationsViVn extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsViVn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.viVn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <vi-VN>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsViVn _root = this; // ignore: unused_field

	@override 
	TranslationsViVn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsViVn(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAriaViVn aria = _TranslationsAriaViVn._(_root);
	@override late final _TranslationsMisskeyViVn misskey = _TranslationsMisskeyViVn._(_root);
}

// Path: aria
class _TranslationsAriaViVn extends TranslationsAriaEnUs {
	_TranslationsAriaViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Bạn theo dõi '),
		name,
		const TextSpan(text: '？'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria đang được các tình nguyện viên dịch sang nhiều thứ tiếng khác nhau. Bạn có thể hỗ trợ tại '),
		link,
		const TextSpan(text: '.'),
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' người đang online'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Chia sẻ bởi '),
		user,
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Bạn ngừng theo dõi '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' nói gì đó'),
	]);
}

// Path: misskey
class _TranslationsMisskeyViVn extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Tiếng Việt';
	@override String get headlineMisskey => 'Mạng xã hội liên hợp';
	@override String get introMisskey => 'Xin chào! Misskey là một nền tảng tiểu blog phi tập trung mã nguồn mở.\nViết "tút" để chia sẻ những suy nghĩ của bạn 📡\nBằng "biểu cảm", bạn có thể bày tỏ nhanh chóng cảm xúc của bạn với các tút 👍\nHãy khám phá một thế giới mới! 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} là một trong những chủ máy của <b>Misskey</b> là nền tảng mã nguồn mở';
	@override String monthAndDay({required Object day, required Object month}) => '${day} tháng ${month}';
	@override String get search => 'Tìm kiếm';
	@override String get reset => 'cài lại';
	@override String get notifications => 'Thông báo';
	@override String get username => 'Tên người dùng';
	@override String get password => 'Mật khẩu';
	@override String get initialPasswordForSetup => 'Mật khẩu ban đầu để thiết lập';
	@override String get initialPasswordIsIncorrect => 'Mật khẩu ban đầu đã nhập sai';
	@override String get initialPasswordForSetupDescription => 'Nếu bạn tự cài đặt Misskey, hãy sử dụng mật khẩu ban đầu của bạn đã nhập trong tệp cấu hình.\nNếu bạn đang sử dụng dịch vụ nào đó giống như dịch vụ lưu trữ của Misskey, hãy sử dụng mật khẩu ban đầu được cung cấp.\nNếu bạn chưa đặt mật khẩu ban đầu, vui lòng để trống và tiếp tục.';
	@override String get forgotPassword => 'Quên mật khẩu';
	@override String get fetchingAsApObject => 'Đang nạp dữ liệu từ Fediverse...';
	@override String get ok => 'Đồng ý';
	@override String get gotIt => 'Hiểu rồi!';
	@override String get cancel => 'Hủy';
	@override String get noThankYou => 'Không, cảm ơn';
	@override String get enterUsername => 'Nhập tên người dùng';
	@override String renotedBy({required Object user}) => 'Chia sẻ bởi ${user}';
	@override String get noNotes => 'Chưa có bài viết nào.';
	@override String get noNotifications => 'Chưa có thông báo';
	@override String get instance => 'Máy chủ';
	@override String get settings => 'Cài đặt';
	@override String get notificationSettings => 'Cài đặt thông báo';
	@override String get basicSettings => 'Thiết lập chung';
	@override String get otherSettings => 'Thiết lập khác';
	@override String get openInWindow => 'Mở trong cửa sổ mới';
	@override String get profile => 'Trang cá nhân';
	@override String get timeline => 'Bảng tin';
	@override String get noAccountDescription => 'Người này chưa viết mô tả.';
	@override String get login => 'Đăng nhập';
	@override String get loggingIn => 'Đang đăng nhập...';
	@override String get logout => 'Đăng xuất';
	@override String get signup => 'Đăng ký';
	@override String get uploading => 'Đang tải lên…';
	@override String get save => 'Lưu';
	@override String get users => 'Người dùng';
	@override String get addUser => 'Thêm người dùng';
	@override String get favorite => 'Thêm vào yêu thích';
	@override String get favorites => 'Lượt thích';
	@override String get unfavorite => 'Bỏ thích';
	@override String get favorited => 'Đã thêm vào yêu thích.';
	@override String get alreadyFavorited => 'Đã thêm vào yêu thích rồi.';
	@override String get cantFavorite => 'Không thể thêm vào yêu thích.';
	@override String get pin => 'Ghim';
	@override String get unpin => 'Bỏ ghim';
	@override String get copyContent => 'Chép nội dung';
	@override String get copyLink => 'Chép liên kết';
	@override String get copyRemoteLink => 'Sao chép liên kết từ xa';
	@override String get copyLinkRenote => 'Sao chép liên kết ghi chú';
	@override String get delete => 'Xóa';
	@override String get deleteAndEdit => 'Xóa và soạn thảo lại';
	@override String get deleteAndEditConfirm => 'Bạn có chắc muốn sửa tút này? Những biểu cảm, lượt trả lời và đăng lại sẽ bị mất.';
	@override String get addToList => 'Thêm vào danh sách';
	@override String get addToAntenna => 'Thêm vào Ăngten';
	@override String get sendMessage => 'Gửi tin nhắn';
	@override String get copyRSS => 'Sao chép RSS';
	@override String get copyUsername => 'Chép tên người dùng';
	@override String get copyUserId => 'Sao chép ID người dùng';
	@override String get copyNoteId => 'Sao chép ID ghi chú';
	@override String get copyFileId => 'Sao chép ID tập tin';
	@override String get copyFolderId => 'Sao chép ID thư mục';
	@override String get copyProfileUrl => 'Sao chép URL hồ sơ';
	@override String get searchUser => 'Tìm kiếm người dùng';
	@override String get searchThisUsersNotes => 'Tìm kiếm ghi chú của người dùng';
	@override String get reply => 'Trả lời';
	@override String get loadMore => 'Tải thêm';
	@override String get showMore => 'Xem thêm';
	@override String get showLess => 'Đóng';
	@override String get youGotNewFollower => 'đã theo dõi bạn';
	@override String get receiveFollowRequest => 'Đã yêu cầu theo dõi';
	@override String get followRequestAccepted => 'Đã chấp nhận yêu cầu theo dõi';
	@override String get mention => 'Nhắc đến';
	@override String get mentions => 'Lượt nhắc';
	@override String get directNotes => 'Nhắn riêng';
	@override String get importAndExport => 'Nhập và xuất dữ liệu';
	@override String get import => 'Nhập dữ liệu';
	@override String get export => 'Xuất dữ liệu';
	@override String get files => 'Tập tin';
	@override String get download => 'Tải xuống';
	@override String driveFileDeleteConfirm({required Object name}) => 'Bạn có chắc muốn xóa tập tin "${name}"? Tút liên quan cũng sẽ bị xóa theo.';
	@override String unfollowConfirm({required Object name}) => 'Bạn ngừng theo dõi ${name}?';
	@override String get exportRequested => 'Đang chuẩn bị xuất tập tin. Quá trình này có thể mất ít phút. Nó sẽ được tự động thêm vào Drive sau khi hoàn thành.';
	@override String get importRequested => 'Bạn vừa yêu cầu nhập dữ liệu. Quá trình này có thể mất ít phút.';
	@override String get lists => 'Danh sách';
	@override String get noLists => 'Bạn chưa có danh sách nào';
	@override String get note => 'Bài viết';
	@override String get notes => 'Bài Viết';
	@override String get following => 'Đang theo dõi';
	@override String get followers => 'Người theo dõi';
	@override String get followsYou => 'Theo dõi bạn';
	@override String get createList => 'Tạo danh sách';
	@override String get manageLists => 'Quản lý danh sách';
	@override String get error => 'Lỗi';
	@override String get somethingHappened => 'Xảy ra lỗi';
	@override String get retry => 'Thử lại';
	@override String get pageLoadError => 'Xảy ra lỗi khi tải trang.';
	@override String get pageLoadErrorDescription => 'Có thể là do bộ nhớ đệm của trình duyệt. Hãy thử xóa bộ nhớ đệm và thử lại sau ít phút.';
	@override String get serverIsDead => 'Máy chủ không phản hồi. Vui lòng thử lại sau giây lát.';
	@override String get youShouldUpgradeClient => 'Để xem trang này, hãy làm tươi để cập nhật ứng dụng.';
	@override String get enterListName => 'Đặt tên cho danh sách';
	@override String get privacy => 'Riêng tư';
	@override String get makeFollowManuallyApprove => 'Yêu cầu theo dõi cần được duyệt';
	@override String get defaultNoteVisibility => 'Kiểu tút mặc định';
	@override String get follow => 'Theo dõi';
	@override String get followRequest => 'Gửi yêu cầu theo dõi';
	@override String get followRequests => 'Yêu cầu theo dõi';
	@override String get unfollow => 'Ngưng theo dõi';
	@override String get followRequestPending => 'Yêu cầu theo dõi đang chờ';
	@override String get enterEmoji => 'Chèn emoji';
	@override String get renote => 'Đăng lại';
	@override String get unrenote => 'Hủy đăng lại';
	@override String get renoted => 'Đã đăng lại.';
	@override String renotedToX({required Object name}) => 'Đã cho thuê lại ${name}.';
	@override String get cantRenote => 'Không thể đăng lại tút này.';
	@override String get cantReRenote => 'Không thể đăng lại một tút đăng lại.';
	@override String get quote => 'Trích dẫn';
	@override String get inChannelRenote => 'Chia sẻ trong kênh này';
	@override String get inChannelQuote => 'Trích dẫn trong kênh này';
	@override String get renoteToChannel => 'Đăng lại tới kênh';
	@override String get renoteToOtherChannel => 'Đăng lại tới kênh khác';
	@override String get pinnedNote => 'Bài viết đã ghim';
	@override String get pinned => 'Ghim';
	@override String get you => 'Bạn';
	@override String get clickToShow => 'Nhấn để xem';
	@override String get sensitive => 'Nhạy cảm';
	@override String get add => 'Thêm';
	@override String get reaction => 'Biểu cảm';
	@override String get reactions => 'Biểu cảm';
	@override String get emojiPicker => 'Bộ chọn biểu tượng cảm xúc';
	@override String get pinnedEmojisForReactionSettingDescription => 'Ghim các biểu tượng cảm xúc sẽ hiển thị khi phản hồi';
	@override String get pinnedEmojisSettingDescription => 'Ghim các biểu tượng cảm xúc sẽ hiển thị trong bảng chọn emoji';
	@override String get emojiPickerDisplay => 'Hiển thị bộ chọn';
	@override String get overwriteFromPinnedEmojisForReaction => 'Ghi đè thiết lập phản hồi';
	@override String get overwriteFromPinnedEmojis => 'Ghi đè thiết lập chung';
	@override String get reactionSettingDescription2 => 'Kéo để sắp xếp, nhấn để xóa, nhấn "+" để thêm.';
	@override String get rememberNoteVisibility => 'Lưu kiểu tút mặc định';
	@override String get attachCancel => 'Gỡ tập tin đính kèm';
	@override String get deleteFile => 'Xoá tệp tin';
	@override String get markAsSensitive => 'Đánh dấu là nhạy cảm';
	@override String get unmarkAsSensitive => 'Bỏ đánh dấu nhạy cảm';
	@override String get enterFileName => 'Nhập tên tập tin';
	@override String get mute => 'Ẩn';
	@override String get unmute => 'Bỏ ẩn';
	@override String get renoteMute => 'Mute Renotes';
	@override String get renoteUnmute => 'Unmute Renotes';
	@override String get block => 'Chặn';
	@override String get unblock => 'Bỏ chặn';
	@override String get suspend => 'Vô hiệu hóa';
	@override String get unsuspend => 'Bỏ vô hiệu hóa';
	@override String get blockConfirm => 'Bạn có chắc muốn chặn người này?';
	@override String get unblockConfirm => 'Bạn có chắc muốn bỏ chặn người này?';
	@override String get suspendConfirm => 'Bạn có chắc muốn vô hiệu hóa người này?';
	@override String get unsuspendConfirm => 'Bạn có chắc muốn bỏ vô hiệu hóa người này?';
	@override String get selectList => 'Chọn danh sách';
	@override String get editList => 'Chỉnh sửa danh sách';
	@override String get selectChannel => 'Lựa chọn kênh';
	@override String get selectAntenna => 'Chọn một antenna';
	@override String get editAntenna => 'Chỉnh sửa Ăngten';
	@override String get createAntenna => 'Tạo Ăngten ';
	@override String get selectWidget => 'Chọn tiện ích';
	@override String get editWidgets => 'Sửa tiện ích';
	@override String get editWidgetsExit => 'Xong';
	@override String get customEmojis => 'Tùy chỉnh emoji';
	@override String get emoji => 'Emoji';
	@override String get emojis => 'Emoji';
	@override String get emojiName => 'Tên emoji';
	@override String get emojiUrl => 'URL Emoji';
	@override String get addEmoji => 'Thêm emoji';
	@override String get settingGuide => 'Cài đặt đề xuất';
	@override String get cacheRemoteFiles => 'Tập tin cache từ xa';
	@override String get cacheRemoteFilesDescription => 'Khi tùy chọn này bị tắt, các tập tin từ xa sẽ được tải trực tiếp từ máy chủ khác. Điều này sẽ giúp giảm dung lượng lưu trữ nhưng lại tăng lưu lượng truy cập, vì hình thu nhỏ sẽ không được tạo.';
	@override String get youCanCleanRemoteFilesCache => 'Bạn có thể xoá bộ nhớ đệm bằng cách nhấn vào nút🗑️ở trong phần quản lý tệp.';
	@override String get cacheRemoteSensitiveFiles => 'Lưu các tập tin nhạy cảm vào bộ nhớ tạm từ xa';
	@override String get cacheRemoteSensitiveFilesDescription => 'Khi bạn tắt tính năng này, các tệp nhạy cảm sẽ được tải trực tiếp từ máy chủ và không được lưu vào bộ nhớ tạm';
	@override String get flagAsBot => 'Đánh dấu đây là tài khoản bot';
	@override String get flagAsBotDescription => 'Bật tùy chọn này nếu tài khoản này được kiểm soát bởi một chương trình. Nếu được bật, nó sẽ được đánh dấu để các nhà phát triển khác ngăn chặn chuỗi tương tác vô tận với các bot khác và điều chỉnh hệ thống nội bộ của Misskey để coi tài khoản này như một bot.';
	@override String get flagAsCat => 'Chế độ Mèeeeeeeeeeo!!';
	@override String get flagAsCatDescription => 'Nếu mà em là một con mèo thì cứ bật nó kiu mèo mèo mèeeeeeeo!! ';
	@override String get flagShowTimelineReplies => 'Hiện lượt trả lời trong bảng tin';
	@override String get flagShowTimelineRepliesDescription => 'Hiện lượt trả lời của người bạn theo dõi trên tút của những người khác.';
	@override String get autoAcceptFollowed => 'Tự động phê duyệt theo dõi từ những người mà bạn đang theo dõi';
	@override String get addAccount => 'Thêm tài khoản';
	@override String get reloadAccountsList => 'Cập nhật danh sách tài khoản';
	@override String get loginFailed => 'Đăng nhập không thành công';
	@override String get showOnRemote => 'Truy cập trang của người này';
	@override String get continueOnRemote => 'Tiếp tục trên phiên bản từ xa';
	@override String get chooseServerOnMisskeyHub => 'Chọn một máy chủ từ Misskey Hub';
	@override String get specifyServerHost => 'Thiết lập một máy chủ';
	@override String get inputHostName => 'Nhập địa chỉ máy chủ';
	@override String get general => 'Tổng quan';
	@override String get wallpaper => 'Ảnh bìa';
	@override String get setWallpaper => 'Đặt ảnh bìa';
	@override String get removeWallpaper => 'Xóa ảnh bìa';
	@override String searchWith({required Object q}) => 'Tìm kiếm: ${q}';
	@override String get youHaveNoLists => 'Bạn chưa có danh sách nào';
	@override String followConfirm({required Object name}) => 'Bạn theo dõi ${name}？';
	@override String get proxyAccount => 'Tài khoản proxy';
	@override String get proxyAccountDescription => 'Tài khoản proxy là tài khoản hoạt động như một người theo dõi từ xa cho người dùng trong những điều kiện nhất định. Ví dụ: khi người dùng thêm người dùng từ xa vào danh sách, hoạt động của người dùng từ xa sẽ không được chuyển đến phiên bản nếu không có người dùng cục bộ nào theo dõi người dùng đó, vì vậy tài khoản proxy sẽ theo dõi.';
	@override String get host => 'Host';
	@override String get selectSelf => 'Chọn chính bạn';
	@override String get selectUser => 'Chọn người dùng';
	@override String get recipient => 'Người nhận';
	@override String get annotation => 'Bình luận';
	@override String get federation => 'Liên hợp';
	@override String get instances => 'Máy chủ';
	@override String get registeredAt => 'Đăng ký vào';
	@override String get latestRequestReceivedAt => 'Yêu cầu cuối nhận lúc';
	@override String get latestStatus => 'Trạng thái cuối cùng';
	@override String get storageUsage => 'Dung lượng lưu trữ';
	@override String get charts => 'Đồ thị';
	@override String get perHour => 'Mỗi Giờ';
	@override String get perDay => 'Mỗi Ngày';
	@override String get stopActivityDelivery => 'Ngưng gửi hoạt động';
	@override String get blockThisInstance => 'Chặn máy chủ này';
	@override String get silenceThisInstance => 'Máy chủ im lặng';
	@override String get mediaSilenceThisInstance => 'Tắt nội dung đa phương tiện từ máy chủ này';
	@override String get operations => 'Vận hành';
	@override String get software => 'Phần mềm';
	@override String get softwareName => 'Tên phần mềm';
	@override String get version => 'Phiên bản';
	@override String get metadata => 'Metadata';
	@override String withNFiles({required Object n}) => '${n} tập tin';
	@override String get monitor => 'Giám sát';
	@override String get jobQueue => 'Công việc chờ xử lý';
	@override String get cpuAndMemory => 'CPU và Dung lượng';
	@override String get network => 'Mạng';
	@override String get disk => 'Ổ đĩa';
	@override String get instanceInfo => 'Thông tin máy chủ';
	@override String get statistics => 'Thống kê';
	@override String get clearQueue => 'Xóa hàng đợi';
	@override String get clearQueueConfirmTitle => 'Bạn có chắc muốn xóa hàng đợi?';
	@override String get clearQueueConfirmText => 'Mọi tút chưa được gửi còn lại trong hàng đợi sẽ không được liên hợp. Thông thường thao tác này không cần thiết.';
	@override String get clearCachedFiles => 'Xóa bộ nhớ đệm';
	@override String get clearCachedFilesConfirm => 'Bạn có chắc muốn xóa sạch bộ nhớ đệm?';
	@override String get blockedInstances => 'Máy chủ đã chặn';
	@override String get blockedInstancesDescription => 'Danh sách những máy chủ bạn muốn chặn. Chúng sẽ không thể giao tiếp với máy chủy này nữa.';
	@override String get silencedInstances => 'Máy chủ im lặng';
	@override String get silencedInstancesDescription => 'Đặt máy chủ mà bạn muốn tắt tiếng, phân tách bằng dấu xuống dòng. Tất cả tài khoản trên máy chủ bị tắt tiếng sẽ được coi là "bị tắt tiếng" và mọi hành động theo dõi sẽ được coi là yêu cầu. Không có tác dụng với những trường hợp bị chặn.';
	@override String get mediaSilencedInstances => 'Các máy chủ đã tắt nội dung đa phương tiện ';
	@override String get mediaSilencedInstancesDescription => 'Đặt máy chủ mà bạn muốn tắt nội dung đa phương tiện, phân tách bằng dấu xuống dòng. Tất cả tài khoản trên máy chủ bị tắt tiếng sẽ được coi là "nhạy cảm" và biểu tượng cảm xúc tùy chỉnh sẽ không thể được sử dụng. Không có tác dụng với những trường hợp bị chặn.';
	@override String get federationAllowedHosts => 'Các máy chủ được phép liên kết';
	@override String get federationAllowedHostsDescription => 'Điền tên các máy chủ mà bạn muốn cho phép liên kết, cách nhau bởi dấu xuống dòng';
	@override String get muteAndBlock => 'Ẩn và Chặn';
	@override String get mutedUsers => 'Người đã ẩn';
	@override String get blockedUsers => 'Người đã chặn';
	@override String get noUsers => 'Chưa có ai';
	@override String get editProfile => 'Sửa hồ sơ';
	@override String get noteDeleteConfirm => 'Bạn có chắc muốn xóa tút này?';
	@override String get pinLimitExceeded => 'Bạn không thể ghim bài viết nữa';
	@override String get done => 'Xong';
	@override String get processing => 'Đang xử lý';
	@override String get preview => 'Xem trước';
	@override String get default_ => 'Mặc định';
	@override String defaultValueIs({required Object value}) => 'Mặc định: ${value}';
	@override String get noCustomEmojis => 'Không có emoji';
	@override String get noJobs => 'Không có công việc';
	@override String get federating => 'Đang liên hợp';
	@override String get blocked => 'Đã chặn';
	@override String get suspended => 'Đã vô hiệu hóa';
	@override String get all => 'Tất cả';
	@override String get subscribing => 'Đang đăng ký';
	@override String get publishing => 'Đang đăng';
	@override String get notResponding => 'Không có phản hồi';
	@override String get instanceFollowing => 'Đang theo dõi máy chủ';
	@override String get instanceFollowers => 'Người theo dõi của máy chủ';
	@override String get instanceUsers => 'Người dùng trên máy chủ này';
	@override String get changePassword => 'Đổi mật khẩu';
	@override String get security => 'Bảo mật';
	@override String get retypedNotMatch => 'Mật khẩu không trùng khớp.';
	@override String get currentPassword => 'Mật khẩu hiện tại';
	@override String get newPassword => 'Mật khẩu mới';
	@override String get newPasswordRetype => 'Nhập lại mật khẩu mới';
	@override String get attachFile => 'Đính kèm tập tin';
	@override String get more => 'Thêm nữa!';
	@override String get featured => 'Nổi bật';
	@override String get usernameOrUserId => 'Tên người dùng hoặc ID';
	@override String get noSuchUser => 'Không tìm thấy người dùng';
	@override String get lookup => 'Tra cứu';
	@override String get announcements => 'Thông báo máy chủ';
	@override String get imageUrl => 'URL ảnh';
	@override String get remove => 'Xóa';
	@override String get removed => 'Đã xóa';
	@override String removeAreYouSure({required Object x}) => 'Bạn có chắc muốn gỡ "${x}"?';
	@override String deleteAreYouSure({required Object x}) => 'Bạn có chắc muốn xóa "${x}"?';
	@override String get resetAreYouSure => 'Bạn có chắc muốn đặt lại?';
	@override String get areYouSure => 'Bạn chắc chứ?';
	@override String get saved => 'Đã lưu';
	@override String get upload => 'Tải lên';
	@override String get keepOriginalUploading => 'Giữ hình ảnh gốc';
	@override String get keepOriginalUploadingDescription => 'Giữ nguyên như hình ảnh được tải lên ban đầu. Nếu tắt, một phiên bản để hiển thị trên web sẽ được tạo khi tải lên.';
	@override String get fromDrive => 'Từ ổ đĩa';
	@override String get fromUrl => 'Từ URL';
	@override String get uploadFromUrl => 'Tải lên bằng một URL';
	@override String get uploadFromUrlDescription => 'URL của tập tin bạn muốn tải lên';
	@override String get uploadFromUrlRequested => 'Đã yêu cầu tải lên';
	@override String get uploadFromUrlMayTakeTime => 'Sẽ mất một khoảng thời gian để tải lên xong.';
	@override String uploadNFiles({required Object n}) => 'Tải lên ${n} tập tin';
	@override String get explore => 'Khám phá';
	@override String get messageRead => 'Đã đọc';
	@override String get noMoreHistory => 'Không còn gì để đọc';
	@override String get startChat => 'Bắt đầu trò chuyện';
	@override String nUsersRead({required Object n}) => 'đọc bởi ${n}';
	@override String agreeTo({required Object x0}) => 'Tôi đồng ý ${x0}';
	@override String get agree => 'Đồng ý';
	@override String get agreeBelow => 'Đồng ý với nội dung dưới đây';
	@override String get basicNotesBeforeCreateAccount => 'Những điều cơ bản cần chú ý ';
	@override String get termsOfService => 'Điều khoản và Điều kiện';
	@override String get start => 'Bắt đầu';
	@override String get home => 'Trang chính';
	@override String get remoteUserCaution => 'Vì người dùng này ở máy chủ khác, thông tin hiển thị có thể không đầy đủ.';
	@override String get activity => 'Hoạt động';
	@override String get images => 'Hình ảnh';
	@override String get image => 'Hình ảnh';
	@override String get birthday => 'Sinh nhật';
	@override String yearsOld({required Object age}) => '${age} tuổi';
	@override String get registeredDate => 'Tham gia';
	@override String get location => 'Đến từ';
	@override String get theme => 'Chủ đề';
	@override String get themeForLightMode => 'Chủ đề dùng trong trong chế độ Sáng';
	@override String get themeForDarkMode => 'Chủ đề dùng trong chế độ Tối';
	@override String get light => 'Sáng';
	@override String get dark => 'Tối';
	@override String get lightThemes => 'Những chủ đề sáng';
	@override String get darkThemes => 'Những chủ đề tối';
	@override String get syncDeviceDarkMode => 'Đồng bộ với thiết bị';
	@override String get drive => 'Ổ đĩa';
	@override String get fileName => 'Tên tập tin';
	@override String get selectFile => 'Chọn tập tin';
	@override String get selectFiles => 'Chọn nhiều tập tin';
	@override String get selectFolder => 'Chọn thư mục';
	@override String get selectFolders => 'Chọn nhiều thư mục';
	@override String get fileNotSelected => 'Chưa chọn tệp nào';
	@override String get renameFile => 'Đổi tên tập tin';
	@override String get folderName => 'Tên thư mục';
	@override String get createFolder => 'Tạo thư mục';
	@override String get renameFolder => 'Đổi tên thư mục';
	@override String get deleteFolder => 'Xóa thư mục';
	@override String get folder => 'Thư mục';
	@override String get addFile => 'Thêm tập tin';
	@override String get showFile => 'Hiển thị tập tin';
	@override String get emptyDrive => 'Ổ đĩa của bạn trống trơn';
	@override String get emptyFolder => 'Thư mục trống';
	@override String get unableToDelete => 'Không thể xóa';
	@override String get inputNewFileName => 'Nhập tên mới cho tập tin';
	@override String get inputNewDescription => 'Nhập mô tả mới';
	@override String get inputNewFolderName => 'Nhập tên mới cho thư mục';
	@override String get circularReferenceFolder => 'Thư mục đích là một thư mục con của thư mục bạn muốn di chuyển.';
	@override String get hasChildFilesOrFolders => 'Không thể xóa cho đến khi không còn gì trong thư mục.';
	@override String get copyUrl => 'Sao chép URL';
	@override String get rename => 'Đổi tên';
	@override String get avatar => 'Ảnh đại diện';
	@override String get banner => 'Ảnh bìa';
	@override String get displayOfSensitiveMedia => 'Hiển thị nội dung nhạy cảm (NSFW)';
	@override String get whenServerDisconnected => 'Khi mất kết nối tới máy chủ';
	@override String get disconnectedFromServer => 'Mất kết nối tới máy chủ';
	@override String get reload => 'Tải lại';
	@override String get doNothing => 'Bỏ qua';
	@override String get reloadConfirm => 'Bạn có muốn thử tải lại bảng tin?';
	@override String get watch => 'Xem';
	@override String get unwatch => 'Ngừng xem';
	@override String get accept => 'Đồng ý';
	@override String get reject => 'Từ chối';
	@override String get normal => 'Bình thường';
	@override String get instanceName => 'Tên máy chủ';
	@override String get instanceDescription => 'Mô tả máy chủ';
	@override String get maintainerName => 'Đội ngũ vận hành';
	@override String get maintainerEmail => 'Email đội ngũ';
	@override String get tosUrl => 'URL Điều khoản dịch vụ';
	@override String get thisYear => 'Năm';
	@override String get thisMonth => 'Tháng';
	@override String get today => 'Hôm nay';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => '${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'Trang';
	@override String get integration => 'Tương tác';
	@override String get connectService => 'Kết nối';
	@override String get disconnectService => 'Ngắt kết nối';
	@override String get enableLocalTimeline => 'Bật bảng tin máy chủ';
	@override String get enableGlobalTimeline => 'Bật bảng tin liên hợp';
	@override String get disablingTimelinesInfo => 'Quản trị viên và Kiểm duyệt viên luôn có quyền truy cập mọi bảng tin, kể cả khi chúng không được bật.';
	@override String get registration => 'Đăng ký';
	@override String get invite => 'Mời';
	@override String get driveCapacityPerLocalAccount => 'Dung lượng ổ đĩa tối đa cho mỗi người dùng';
	@override String get driveCapacityPerRemoteAccount => 'Dung lượng ổ đĩa tối đa cho mỗi người dùng từ xa';
	@override String get inMb => 'Tính bằng MB';
	@override String get bannerUrl => 'URL Ảnh bìa';
	@override String get backgroundImageUrl => 'URL Ảnh nền';
	@override String get basicInfo => 'Thông tin cơ bản';
	@override String get pinnedUsers => 'Những người thú vị';
	@override String get pinnedUsersDescription => 'Liệt kê mỗi hàng một tên người dùng xuống dòng để ghim trên tab "Khám phá".';
	@override String get pinnedPages => 'Trang đã ghim';
	@override String get pinnedPagesDescription => 'Liệt kê các trang thú vị để ghim trên máy chủ.';
	@override String get pinnedClipId => 'ID của clip muốn ghim';
	@override String get pinnedNotes => 'Bài viết đã ghim';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'Bật hCaptcha';
	@override String get hcaptchaSiteKey => 'Khóa của trang';
	@override String get hcaptchaSecretKey => 'Khóa bí mật';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => 'Bật mCaptcha';
	@override String get mcaptchaSiteKey => 'Khóa của trang';
	@override String get mcaptchaSecretKey => 'Khóa bí mật';
	@override String get mcaptchaInstanceUrl => 'URL mCaptcha máy chủ';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'Bật reCAPTCHA';
	@override String get recaptchaSiteKey => 'Khóa của trang';
	@override String get recaptchaSecretKey => 'Khóa bí mật';
	@override String get turnstile => 'Turnstile';
	@override String get enableTurnstile => 'Áp dụng Turnstile';
	@override String get turnstileSiteKey => 'Khóa của trang';
	@override String get turnstileSecretKey => 'Khóa bí mật';
	@override String get avoidMultiCaptchaConfirm => 'Dùng nhiều hệ thống Captcha có thể gây nhiễu giữa chúng. Bạn có muốn tắt các hệ thống Captcha khác hiện đang hoạt động không? Nếu bạn muốn chúng tiếp tục được bật, hãy nhấn hủy.';
	@override String get antennas => 'Trạm phát sóng';
	@override String get manageAntennas => 'Quản lý trạm phát sóng';
	@override String get name => 'Tên';
	@override String get antennaSource => 'Nguồn trạm phát sóng';
	@override String get antennaKeywords => 'Từ khóa để nghe';
	@override String get antennaExcludeKeywords => 'Từ khóa để lọc ra';
	@override String get antennaExcludeBots => 'Loại trừ các tài khoản bot';
	@override String get antennaKeywordsDescription => 'Phân cách bằng dấu cách cho điều kiện AND hoặc bằng xuống dòng cho điều kiện OR.';
	@override String get notifyAntenna => 'Thông báo có tút mới';
	@override String get withFileAntenna => 'Chỉ những tút có media';
	@override String get excludeNotesInSensitiveChannel => 'Không hiển thị trong kênh nhạy cảm';
	@override String get enableServiceworker => 'Bật ServiceWorker';
	@override String get antennaUsersDescription => 'Liệt kê mỗi hàng một tên người dùng';
	@override String get caseSensitive => 'Trường hợp nhạy cảm';
	@override String get withReplies => 'Bao gồm lượt trả lời';
	@override String get connectedTo => 'Những tài khoản sau đã kết nối';
	@override String get notesAndReplies => 'Tút kèm trả lời';
	@override String get withFiles => 'Media';
	@override String get silence => 'Ẩn';
	@override String get silenceConfirm => 'Bạn có chắc muốn ẩn người này?';
	@override String get unsilence => 'Bỏ ẩn';
	@override String get unsilenceConfirm => 'Bạn có chắc muốn bỏ ẩn người này?';
	@override String get popularUsers => 'Những người nổi tiếng';
	@override String get recentlyUpdatedUsers => 'Hoạt động gần đây';
	@override String get recentlyRegisteredUsers => 'Mới tham gia';
	@override String get recentlyDiscoveredUsers => 'Mới khám phá';
	@override String exploreUsersCount({required Object count}) => 'Có ${count} người';
	@override String get exploreFediverse => 'Khám phá Fediverse';
	@override String get popularTags => 'Hashtag thông dụng';
	@override String get userList => 'Danh sách';
	@override String get about => 'Giới thiệu';
	@override String get aboutMisskey => 'Về Misskey';
	@override String get administrator => 'Quản trị viên';
	@override String get token => 'Token';
	@override String get x2fa => 'Xác thực 2 yếu tố';
	@override String get setupOf2fa => 'Thiết lập xác thực 2 yếu tố';
	@override String get totp => 'Ứng dụng xác thực';
	@override String get totpDescription => 'Nhắn mã OTP bằng ứng dụng xác thực';
	@override String get moderator => 'Kiểm duyệt viên';
	@override String get moderation => 'Kiểm duyệt';
	@override String get moderationNote => 'Ghi chú kiểm duyệt';
	@override String get moderationNoteDescription => 'Bạn có thể điền vào những ghi chú chỉ được chia sẻ giữa những người kiểm duyệt.';
	@override String get addModerationNote => 'Thêm ghi chú kiểm duyệt';
	@override String get moderationLogs => 'Nhật kí quản trị';
	@override String nUsersMentioned({required Object n}) => 'Dùng bởi ${n} người';
	@override String get securityKeyAndPasskey => 'Mã bảo mật・Passkey';
	@override String get securityKey => 'Khóa bảo mật';
	@override String get lastUsed => 'Dùng lần cuối';
	@override String lastUsedAt({required Object t}) => 'Lần cuối sử dụng: ${t}';
	@override String get unregister => 'Hủy đăng ký';
	@override String get passwordLessLogin => 'Đăng nhập không mật khẩu';
	@override String get passwordLessLoginDescription => 'Đăng nhập bằng chỉ mã bảo mật hoặc passkey, không sử dụng mật khẩu.';
	@override String get resetPassword => 'Đặt lại mật khẩu';
	@override String newPasswordIs({required Object password}) => 'Mật khẩu mới là "${password}"';
	@override String get reduceUiAnimation => 'Giảm chuyển động UI';
	@override String get share => 'Chia sẻ';
	@override String get notFound => 'Không tìm thấy';
	@override String get notFoundDescription => 'Không tìm thấy trang nào tương ứng với URL này.';
	@override String get uploadFolder => 'Thư mục tải lên mặc định';
	@override String get markAsReadAllNotifications => 'Đánh dấu tất cả các thông báo là đã đọc';
	@override String get markAsReadAllUnreadNotes => 'Đánh dấu tất cả các tút là đã đọc';
	@override String get markAsReadAllTalkMessages => 'Đánh dấu tất cả các tin nhắn là đã đọc';
	@override String get help => 'Trợ giúp';
	@override String get inputMessageHere => 'Nhập nội dung tin nhắn';
	@override String get close => 'Đóng';
	@override String get invites => 'Mời';
	@override String get members => 'Thành viên';
	@override String get transfer => 'Chuyển giao';
	@override String get title => 'Tựa đề';
	@override String get text => 'Nội dung';
	@override String get enable => 'Bật';
	@override String get next => 'Kế tiếp';
	@override String get retype => 'Nhập lại';
	@override String noteOf({required Object user}) => 'Tút của ${user}';
	@override String get quoteAttached => 'Trích dẫn';
	@override String get quoteQuestion => 'Trích dẫn lại?';
	@override String get attachAsFileQuestion => 'Văn bản ở trong bộ nhớ tạm rất dài. Bạn có muốn đăng nó dưới dạng một tệp văn bản không?';
	@override String get onlyOneFileCanBeAttached => 'Bạn chỉ có thể đính kèm một tập tin';
	@override String get signinRequired => 'Vui lòng đăng nhập';
	@override String get signinOrContinueOnRemote => 'Để tiếp tục, bạn cần chuyển máy chủ hoặc đăng nhập/đăng ký ở máy chủ này.';
	@override String get invitations => 'Mời';
	@override String get invitationCode => 'Mã mời';
	@override String get checking => 'Đang kiểm tra...';
	@override String get available => 'Khả dụng';
	@override String get unavailable => 'Không sử dụng được';
	@override String get usernameInvalidFormat => 'Bạn có thể dùng viết hoa/viết thường, chữ số, và dấu gạch dưới.';
	@override String get tooShort => 'Quá ngắn';
	@override String get tooLong => 'Quá dài';
	@override String get weakPassword => 'Mật khẩu yếu';
	@override String get normalPassword => 'Mật khẩu tạm được';
	@override String get strongPassword => 'Mật khẩu mạnh';
	@override String get passwordMatched => 'Trùng khớp';
	@override String get passwordNotMatched => 'Không trùng khớp';
	@override String signinWith({required Object x}) => 'Đăng nhập bằng ${x}';
	@override String get signinFailed => 'Không thể đăng nhập. Vui lòng kiểm tra tên người dùng và mật khẩu của bạn.';
	@override String get or => 'Hoặc';
	@override String get language => 'Ngôn ngữ';
	@override String get uiLanguage => 'Ngôn ngữ giao diện';
	@override String aboutX({required Object x}) => 'Giới thiệu ${x}';
	@override String get emojiStyle => 'Kiểu cách Emoji';
	@override String get native => 'Bản xứ';
	@override String get menuStyle => 'Kiểu Menu';
	@override String get style => 'Phong cách';
	@override String get drawer => 'Ngăn ứng dụng';
	@override String get popup => 'Cửa sổ bật lên';
	@override String get showNoteActionsOnlyHover => 'Chỉ hiển thị các hành động ghi chú khi di chuột';
	@override String get showReactionsCount => 'Hiển thị số reaction trong bài đăng';
	@override String get noHistory => 'Không có dữ liệu';
	@override String get signinHistory => 'Lịch sử đăng nhập';
	@override String get enableAdvancedMfm => 'Xem bài MFM chất lượng cao.';
	@override String get enableAnimatedMfm => 'Xem bài MFM có chuyển động';
	@override String get doing => 'Đang xử lý...';
	@override String get category => 'Phân loại';
	@override String get tags => 'Thẻ';
	@override String get docSource => 'Nguồn tài liệu';
	@override String get createAccount => 'Tạo tài khoản';
	@override String get existingAccount => 'Tài khoản hiện có';
	@override String get regenerate => 'Tạo lại';
	@override String get fontSize => 'Cỡ chữ';
	@override String get mediaListWithOneImageAppearance => 'Chiều cao của danh sách nội dung đã phương tiện mà chỉ có một hình ảnh';
	@override String limitTo({required Object x}) => 'Giới hạn tỷ lệ ${x}';
	@override String get noFollowRequests => 'Bạn không có yêu cầu theo dõi nào';
	@override String get openImageInNewTab => 'Mở ảnh trong tab mới';
	@override String get dashboard => 'Trang chính';
	@override String get local => 'Máy chủ này';
	@override String get remote => 'Máy chủ khác';
	@override String get total => 'Tổng cộng';
	@override String get weekOverWeekChanges => 'Thay đổi tuần rồi';
	@override String get dayOverDayChanges => 'Thay đổi hôm qua';
	@override String get appearance => 'Giao diện';
	@override String get clientSettings => 'Cài đặt Client';
	@override String get accountSettings => 'Cài đặt tài khoản';
	@override String get promotion => 'Quảng cáo';
	@override String get promote => 'Quảng cáo';
	@override String get numberOfDays => 'Số ngày';
	@override String get hideThisNote => 'Ẩn tút này';
	@override String get showFeaturedNotesInTimeline => 'Hiện tút nổi bật trong bảng tin';
	@override String get objectStorage => 'Đối tượng lưu trữ';
	@override String get useObjectStorage => 'Dùng đối tượng lưu trữ';
	@override String get objectStorageBaseUrl => 'Base URL';
	@override String get objectStorageBaseUrlDesc => 'URL được sử dụng làm tham khảo. Chỉ định URL của CDN hoặc Proxy của bạn nếu bạn đang sử dụng. Với S3 dùng \'https://<bucket>.s3.amazonaws.com\', còn GCS hoặc dịch vụ tương tự dùng \'https://storage.googleapis.com/<bucket>\', etc.';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => 'Nhập tên bucket dùng ở nhà cung cấp của bạn.';
	@override String get objectStoragePrefix => 'Tiền tố';
	@override String get objectStoragePrefixDesc => 'Các tập tin sẽ được lưu trữ trong các thư mục có tiền tố này.';
	@override String get objectStorageEndpoint => 'Đầu cuối';
	@override String get objectStorageEndpointDesc => 'Để trống nếu bạn đang dùng AWS S3, nếu không thì chỉ định đầu cuối là \'<host>\' hoặc \'<host>:<port>\', tùy thuộc vào nhà cung cấp dịch vụ.';
	@override String get objectStorageRegion => 'Khu vực';
	@override String get objectStorageRegionDesc => 'Nhập một khu vực cụ thể như \'xx-east-1\'. Nếu nhà cung cấp dịch vụ của bạn không phân biệt giữa các khu vực, hãy để trống hoặc nhập \'us-east-1\'.';
	@override String get objectStorageUseSSL => 'Dùng SSL';
	@override String get objectStorageUseSSLDesc => 'Tắt nếu bạn không dùng HTTPS để kết nối API';
	@override String get objectStorageUseProxy => 'Kết nối thông qua Proxy';
	@override String get objectStorageUseProxyDesc => 'Tắt nếu bạn không dùng Proxy để kết nối API';
	@override String get objectStorageSetPublicRead => 'Đặt "public-read" khi tải lên';
	@override String get s3ForcePathStyleDesc => 'Nếu s3ForcePathStyle được bật, tên bucket phải được thêm vào địa chỉ URL thay vì chỉ có tên miền. Bạn có thể phải sử dụng thiết lập này nếu bạn sử dụng các dịch vụ như Minio mà bạn tự cung cấp.';
	@override String get serverLogs => 'Nhật ký máy chủ';
	@override String get deleteAll => 'Xóa tất cả';
	@override String get showFixedPostForm => 'Hiện khung soạn tút ở phía trên bảng tin';
	@override String get showFixedPostFormInChannel => 'Hiển thị mẫu bài đăng ở phía trên bản tin';
	@override String get withRepliesByDefaultForNewlyFollowed => 'Mặc định hiển thị trả lời từ những người dùng mới theo dõi trong dòng thời gian';
	@override String get newNoteRecived => 'Đã nhận tút mới';
	@override String get newNote => 'Ghi chú mới';
	@override String get sounds => 'Âm thanh';
	@override String get sound => 'Âm thanh';
	@override String get notificationSoundSettings => 'Cài đặt âm thanh thông báo';
	@override String get listen => 'Nghe';
	@override String get none => 'Không';
	@override String get showInPage => 'Hiện trong trang';
	@override String get popout => 'Pop-out';
	@override String get volume => 'Âm lượng';
	@override String get masterVolume => 'Âm thanh chung';
	@override String get notUseSound => 'Tắt tiếng';
	@override String get useSoundOnlyWhenActive => 'Chỉ phát âm thanh khi Misskey đang được hiển thị';
	@override String get details => 'Chi tiết';
	@override String get renoteDetails => 'Tìm hiểu thêm về đăng lại ';
	@override String get chooseEmoji => 'Chọn emoji';
	@override String get unableToProcess => 'Không thể hoàn tất hành động';
	@override String get recentUsed => 'Sử dụng gần đây';
	@override String get install => 'Cài đặt';
	@override String get uninstall => 'Gỡ bỏ';
	@override String get installedApps => 'Ứng dụng đã cài đặt';
	@override String get nothing => 'Không có gì ở đây';
	@override String get installedDate => 'Cho phép vào';
	@override String get lastUsedDate => 'Dùng gần nhất';
	@override String get state => 'Trạng thái';
	@override String get sort => 'Sắp xếp';
	@override String get ascendingOrder => 'Tăng dần';
	@override String get descendingOrder => 'Giảm dần';
	@override String get scratchpad => 'Scratchpad';
	@override String get scratchpadDescription => 'Scratchpad cung cấp môi trường cho các thử nghiệm AiScript. Bạn có thể viết, thực thi và kiểm tra kết quả tương tác với Misskey trong đó.';
	@override String get uiInspector => 'Trình kiểm tra UI';
	@override String get output => 'Nguồn ra';
	@override String get script => 'Kịch bản';
	@override String get disablePagesScript => 'Tắt AiScript trên Trang';
	@override String get updateRemoteUser => 'Cập nhật thông tin người dùng ở máy chủ khác';
	@override String get unsetUserAvatar => 'Gỡ ảnh đại diện';
	@override String get unsetUserAvatarConfirm => 'Bạn có chắc muốn gỡ ảnh đại diện?';
	@override String get unsetUserBanner => 'Gỡ ảnh bìa';
	@override String get unsetUserBannerConfirm => 'Bạn có chắc muốn gỡ ảnh bìa?';
	@override String get deleteAllFiles => 'Xóa toàn bộ tập tin';
	@override String get deleteAllFilesConfirm => 'Bạn có chắc xóa toàn bộ tập tin?';
	@override String get removeAllFollowing => 'Ngưng theo dõi tất cả mọi người';
	@override String removeAllFollowingDescription({required Object host}) => 'Thực hiện điều này sẽ ngưng theo dõi tất cả các tài khoản khỏi ${host}. Chỉ thực hiện điều này nếu máy chủ không còn tồn tại.';
	@override String get userSuspended => 'Người này đã bị vô hiệu hóa.';
	@override String get userSilenced => 'Người này đã bị ẩn';
	@override String get yourAccountSuspendedTitle => 'Tài khoản bị vô hiệu hóa';
	@override String get yourAccountSuspendedDescription => 'Tài khoản này đã bị vô hiệu hóa do vi phạm quy tắc máy chủ hoặc điều tương tự. Liên hệ với quản trị viên nếu bạn muốn biết lý do chi tiết hơn. Vui lòng không tạo tài khoản mới.';
	@override String get tokenRevoked => 'Token đã bị từ chối';
	@override String get tokenRevokedDescription => 'Phiên đăng nhập đã hết hạn. Vui lòng đăng nhập lại.';
	@override String get accountDeleted => 'Tài khoản đã bị xóa';
	@override String get accountDeletedDescription => 'Tài khoản này đã bị xóa.';
	@override String get menu => 'Menu';
	@override String get divider => 'Phân chia';
	@override String get addItem => 'Thêm mục';
	@override String get rearrange => 'Sắp xếp lại';
	@override String get relays => 'Chuyển tiếp';
	@override String get addRelay => 'Thêm chuyển tiếp';
	@override String get inboxUrl => 'URL Hộp thư đến';
	@override String get addedRelays => 'Đã thêm các chuyển tiếp';
	@override String get serviceworkerInfo => 'Phải được bật cho thông báo đẩy.';
	@override String get deletedNote => 'Tút đã bị xóa';
	@override String get invisibleNote => 'Tút ẩn';
	@override String get enableInfiniteScroll => 'Tự động tải tút mới';
	@override String get visibility => 'Hiển thị';
	@override String get poll => 'Bình chọn';
	@override String get useCw => 'Ẩn nội dung';
	@override String get enablePlayer => 'Mở trình phát video';
	@override String get disablePlayer => 'Đóng trình phát video';
	@override String get expandTweet => 'Mở rộng tweet';
	@override String get themeEditor => 'Công cụ thiết kế theme';
	@override String get description => 'Mô tả';
	@override String get describeFile => 'Thêm mô tả';
	@override String get enterFileDescription => 'Nhập mô tả';
	@override String get author => 'Tác giả';
	@override String get leaveConfirm => 'Có những thay đổi chưa được lưu. Bạn có muốn bỏ chúng không?';
	@override String get manage => 'Quản lý';
	@override String get plugins => 'Plugin';
	@override String get preferencesBackups => 'Sao lưu thiết lập';
	@override String get deck => 'Deck';
	@override String get undeck => 'Bỏ Deck';
	@override String get useBlurEffectForModal => 'Sử dụng hiệu ứng mờ cho các hộp thoại';
	@override String get useFullReactionPicker => 'Dùng bộ chọn biểu cảm cỡ lớn';
	@override String get width => 'Chiều rộng';
	@override String get height => 'Chiều cao';
	@override String get large => 'Lớn';
	@override String get medium => 'Vừa';
	@override String get small => 'Nhỏ';
	@override String get generateAccessToken => 'Tạo mã truy cập';
	@override String get permission => 'Cho phép ';
	@override String get adminPermission => 'Quyền quản trị viên';
	@override String get enableAll => 'Bật toàn bộ';
	@override String get disableAll => 'Tắt toàn bộ';
	@override String get tokenRequested => 'Cấp quyền truy cập vào tài khoản';
	@override String get pluginTokenRequestedDescription => 'Plugin này sẽ có thể sử dụng các quyền được đặt ở đây.';
	@override String get notificationType => 'Loại thông báo';
	@override String get edit => 'Sửa';
	@override String get emailServer => 'Email máy chủ';
	@override String get enableEmail => 'Bật phân phối email';
	@override String get emailConfigInfo => 'Được dùng để xác minh email của bạn lúc đăng ký hoặc nếu bạn quên mật khẩu của mình';
	@override String get email => 'Email';
	@override String get emailAddress => 'Địa chỉ email';
	@override String get smtpConfig => 'Cấu hình máy chủ SMTP';
	@override String get smtpHost => 'Host';
	@override String get smtpPort => 'Cổng';
	@override String get smtpUser => 'Tên người dùng';
	@override String get smtpPass => 'Mật khẩu';
	@override String get emptyToDisableSmtpAuth => 'Để trống tên người dùng và mật khẩu để tắt xác thực SMTP';
	@override String get smtpSecure => 'Dùng SSL/TLS ngầm định cho các kết nối SMTP';
	@override String get smtpSecureInfo => 'Tắt cái này nếu dùng STARTTLS';
	@override String get testEmail => 'Kiểm tra vận chuyển email';
	@override String get wordMute => 'Ẩn chữ';
	@override String get wordMuteDescription => 'Thu nhỏ các bài đăng chứa các từ hoặc cụm từ nhất định. Các bài đăng này có thể được hiển thị khi click vào.';
	@override String get hardWordMute => 'Ẩn cụm từ hoàn toàn';
	@override String get showMutedWord => 'Hiển thị từ đã ẩn';
	@override String get hardWordMuteDescription => 'Ẩn hoàn toàn các bài đăng chứa từ hoặc cụm từ. Khác với mute, bài đăng sẽ bị ẩn hoàn toàn.';
	@override String get regexpError => 'Lỗi biểu thức';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'Xảy ra lỗi biểu thức ở dòng ${line} của ${tab} chữ ẩn:';
	@override String get instanceMute => 'Những máy chủ ẩn';
	@override String userSaysSomething({required Object name}) => '${name} nói gì đó';
	@override String userSaysSomethingAbout({required Object name, required Object word}) => '${name} đã nói gì đó về "${word}"';
	@override String get makeActive => 'Kích hoạt';
	@override String get display => 'Hiển thị';
	@override String get copy => 'Sao chép';
	@override String get copiedToClipboard => 'Đã sao chép vào clipboard';
	@override String get metrics => 'Số liệu';
	@override String get overview => 'Tổng quan';
	@override String get logs => 'Nhật ký';
	@override String get delayed => 'Độ trễ';
	@override String get database => 'Cơ sở dữ liệu';
	@override String get channel => 'Kênh';
	@override String get create => 'Tạo';
	@override String get notificationSetting => 'Cài đặt thông báo';
	@override String get notificationSettingDesc => 'Chọn loại thông báo bạn muốn hiển thị.';
	@override String get useGlobalSetting => 'Dùng thiết lập chung';
	@override String get useGlobalSettingDesc => 'Nếu được bật, cài đặt thông báo của bạn sẽ được áp dụng. Nếu bị tắt, có thể thực hiện các thiết lập riêng lẻ.';
	@override String get other => 'Khác';
	@override String get regenerateLoginToken => 'Tạo lại mã đăng nhập';
	@override String get regenerateLoginTokenDescription => 'Tạo lại mã nội bộ có thể dùng để đăng nhập. Thông thường hành động này là không cần thiết. Nếu được tạo lại, tất cả các thiết bị sẽ bị đăng xuất.';
	@override String get theKeywordWhenSearchingForCustomEmoji => 'Đây là từ khoá được sử dụng để tìm kiếm emoji';
	@override String get setMultipleBySeparatingWithSpace => 'Tách nhiều mục nhập bằng dấu cách.';
	@override String get fileIdOrUrl => 'ID tập tin hoặc URL';
	@override String get behavior => 'Thao tác';
	@override String get sample => 'Ví dụ';
	@override String get abuseReports => 'Lượt báo cáo';
	@override String get reportAbuse => 'Báo cáo';
	@override String get reportAbuseRenote => 'Báo cáo bài đăng lại';
	@override String reportAbuseOf({required Object name}) => 'Báo cáo ${name}';
	@override String get fillAbuseReportDescription => 'Vui lòng điền thông tin chi tiết về báo cáo này. Nếu đó là về một tút cụ thể, hãy kèm theo URL của tút.';
	@override String get abuseReported => 'Báo cáo đã được gửi. Cảm ơn bạn nhiều.';
	@override String get reporter => 'Người báo cáo';
	@override String get reporteeOrigin => 'Bị báo cáo';
	@override String get reporterOrigin => 'Máy chủ người báo cáo';
	@override String get send => 'Gửi';
	@override String get openInNewTab => 'Mở trong tab mới';
	@override String get openInSideView => 'Mở trong thanh bên';
	@override String get defaultNavigationBehaviour => 'Thao tác điều hướng mặc định';
	@override String get editTheseSettingsMayBreakAccount => 'Việc chỉnh sửa các cài đặt này có thể làm hỏng tài khoản của bạn.';
	@override String get instanceTicker => 'Thông tin máy chủ của tút';
	@override String waitingFor({required Object x}) => 'Đang đợi ${x}';
	@override String get random => 'Ngẫu nhiên';
	@override String get system => 'Hệ thống';
	@override String get switchUi => 'Chuyển đổi giao diện người dùng';
	@override String get desktop => 'Desktop';
	@override String get clip => 'Lưu bài viết';
	@override String get createNew => 'Tạo mới';
	@override String get optional => 'Không bắt buộc';
	@override String get createNewClip => 'Tạo một ghim mới';
	@override String get unclip => 'Bỏ ghim';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'Bài đăng này là một phần của "${name}" ghim. Bạn có muốn bỏ khỏi ghim?';
	@override String get public => 'Công khai';
	@override String get private => 'Riêng tư';
	@override String i18nInfo({required Object link}) => 'Misskey đang được các tình nguyện viên dịch sang nhiều thứ tiếng khác nhau. Bạn có thể hỗ trợ tại ${link}.';
	@override String get manageAccessTokens => 'Tạo mã truy cập';
	@override String get accountInfo => 'Thông tin tài khoản';
	@override String get notesCount => 'Số lượng tút';
	@override String get repliesCount => 'Số lượt trả lời đã gửi';
	@override String get renotesCount => 'Số lượt đăng lại đã gửi';
	@override String get repliedCount => 'Số lượt trả lời đã nhận';
	@override String get renotedCount => 'Lượt chia sẻ';
	@override String get followingCount => 'Số lượng người tôi theo dõi';
	@override String get followersCount => 'Số lượng người theo dõi tôi';
	@override String get sentReactionsCount => 'Số lượng biểu cảm đã gửi';
	@override String get receivedReactionsCount => 'Số lượng biểu cảm đã nhận';
	@override String get pollVotesCount => 'Số lượng bình chọn đã gửi';
	@override String get pollVotedCount => 'Số lượng bình chọn đã nhận';
	@override String get yes => 'Đồng ý';
	@override String get no => 'Từ chối';
	@override String get driveFilesCount => 'Số tập tin trong Ổ đĩa';
	@override String get driveUsage => 'Dung lượng ổ đĩa';
	@override String get noCrawle => 'Từ chối lập chỉ mục';
	@override String get noCrawleDescription => 'Không cho công cụ tìm kiếm lập chỉ mục trang hồ sơ, tút, Trang, etc.';
	@override String get lockedAccountInfo => 'Ghi chú của bạn sẽ hiển thị với bất kỳ ai, trừ khi bạn đặt chế độ hiển thị tút của mình thành "Chỉ người theo dõi".';
	@override String get alwaysMarkSensitive => 'Luôn đánh dấu NSFW';
	@override String get loadRawImages => 'Tải ảnh gốc thay vì ảnh thu nhỏ';
	@override String get disableShowingAnimatedImages => 'Không phát ảnh động';
	@override String get highlightSensitiveMedia => 'Đánh dấu nội dung nhạy cảm';
	@override String get verificationEmailSent => 'Một email xác minh đã được gửi. Vui lòng nhấn vào liên kết đính kèm để hoàn tất xác minh.';
	@override String get notSet => 'Chưa đặt';
	@override String get emailVerified => 'Email đã được xác minh';
	@override String get noteFavoritesCount => 'Số lượng tút yêu thích';
	@override String get pageLikesCount => 'Số lượng trang đã thích';
	@override String get pageLikedCount => 'Số lượng thích trang đã nhận';
	@override String get contact => 'Liên hệ';
	@override String get useSystemFont => 'Dùng phông chữ mặc định của hệ thống';
	@override String get clips => 'Lưu bài viết';
	@override String get experimentalFeatures => 'Tính năng thử nghiệm';
	@override String get experimental => 'Thử nghiệm';
	@override String get thisIsExperimentalFeature => 'Tính năng này đang trong quá trình thử nghiệm. Tính năng có thể không hoạt động, hoặc đặc tính kỹ thuật có thể bị thay đổi sau này.';
	@override String get developer => 'Nhà phát triển';
	@override String get makeExplorable => 'Không hiện tôi trong "Khám phá"';
	@override String get makeExplorableDescription => 'Nếu bạn tắt, tài khoản của bạn sẽ không hiện trong mục "Khám phá".';
	@override String get duplicate => 'Tạo bản sao';
	@override String get left => 'Bên trái';
	@override String get center => 'Giữa';
	@override String get wide => 'Rộng';
	@override String get narrow => 'Thu hẹp';
	@override String get reloadToApplySetting => 'Cài đặt này sẽ chỉ áp dụng sau khi tải lại trang. Tải lại ngay bây giờ?';
	@override String get needReloadToApply => 'Cần tải lại để điều này được áp dụng.';
	@override String get showTitlebar => 'Hiện thanh tựa đề';
	@override String get clearCache => 'Xóa bộ nhớ đệm';
	@override String onlineUsersCount({required Object n}) => '${n} người đang online';
	@override String nUsers({required Object n}) => '${n} Người';
	@override String nNotes({required Object n}) => '${n} Tút';
	@override String get sendErrorReports => 'Báo lỗi';
	@override String get sendErrorReportsDescription => 'Khi được bật, thông tin chi tiết về lỗi sẽ được chia sẻ với Misskey khi xảy ra sự cố, giúp nâng cao chất lượng của Misskey.\nBao gồm thông tin như phiên bản hệ điều hành của bạn, trình duyệt bạn đang sử dụng, hoạt động của bạn trong Misskey, v.v.';
	@override String get myTheme => 'Theme của tôi';
	@override String get backgroundColor => 'Màu nền';
	@override String get accentColor => 'Màu phụ';
	@override String get textColor => 'Màu chữ';
	@override String get saveAs => 'Lưu thành';
	@override String get advanced => 'Nâng cao';
	@override String get advancedSettings => 'Cài đặt nâng cao';
	@override String get value => 'Giá trị';
	@override String get createdAt => 'Ngày tạo';
	@override String get updatedAt => 'Cập nhật lúc';
	@override String get saveConfirm => 'Lưu thay đổi?';
	@override String get deleteConfirm => 'Bạn có muốn xóa không?';
	@override String get invalidValue => 'Giá trị không hợp lệ.';
	@override String get registry => 'Registry';
	@override String get closeAccount => 'Đóng tài khoản';
	@override String get currentVersion => 'Phiên bản hiện tại';
	@override String get latestVersion => 'Phiên bản mới nhất';
	@override String get youAreRunningUpToDateClient => 'Bạn đang sử dụng phiên bản mới nhất.';
	@override String get newVersionOfClientAvailable => 'Có phiên bản mới cho bạn cập nhật.';
	@override String get usageAmount => 'Sử dụng';
	@override String get capacity => 'Sức chứa';
	@override String get inUse => 'Đã dùng';
	@override String get editCode => 'Chỉnh sửa mã';
	@override String get apply => 'Áp dụng';
	@override String get receiveAnnouncementFromInstance => 'Nhận thông báo từ máy chủ này';
	@override String get emailNotification => 'Thông báo email';
	@override String get publish => 'Đăng';
	@override String get inChannelSearch => 'Tìm trong kênh';
	@override String get useReactionPickerForContextMenu => 'Nhấn chuột phải để mở bộ chọn biểu cảm';
	@override String typingUsers({required Object users}) => '${users} đang nhập…';
	@override String get jumpToSpecifiedDate => 'Đến một ngày cụ thể';
	@override String get showingPastTimeline => 'Hiện đang hiển thị dòng thời gian cũ';
	@override String get clear => 'Hoàn lại';
	@override String get markAllAsRead => 'Đánh dấu tất cả đã đọc';
	@override String get goBack => 'Quay lại';
	@override String get unlikeConfirm => 'Bạn có chắc muốn bỏ thích ?';
	@override String get fullView => 'Kích thước đầy đủ';
	@override String get quitFullView => 'Thoát toàn màn hình';
	@override String get addDescription => 'Thêm mô tả';
	@override String get userPagePinTip => 'Bạn có thể hiển thị các tút ở đây bằng cách chọn "Ghim vào hồ sơ" từ menu của mỗi tút.';
	@override String get notSpecifiedMentionWarning => 'Tút này có đề cập đến những người không mong muốn';
	@override String get info => 'Giới thiệu';
	@override String get userInfo => 'Thông tin người dùng';
	@override String get unknown => 'Chưa biết';
	@override String get onlineStatus => 'Trạng thái';
	@override String get hideOnlineStatus => 'Ẩn trạng thái online';
	@override String get hideOnlineStatusDescription => 'Ẩn trạng thái online của bạn làm giảm sự tiện lợi của một số tính năng như tìm kiếm.';
	@override String get online => 'Online';
	@override String get active => 'Hoạt động';
	@override String get offline => 'Ngoại tuyến';
	@override String get notRecommended => 'Không đề xuất';
	@override String get botProtection => 'Bảo vệ Bot';
	@override String get instanceBlocking => 'Máy chủ đã chặn';
	@override String get selectAccount => 'Chọn một tài khoản';
	@override String get switchAccount => 'Chuyển tài khoản';
	@override String get enabled => 'Đã bật';
	@override String get disabled => 'Đã tắt';
	@override String get quickAction => 'Thao tác nhanh';
	@override String get user => 'Người dùng';
	@override String get administration => 'Quản lý';
	@override String get accounts => 'Tài khoản của bạn';
	@override String get switch_ => 'Chuyển đổi';
	@override String get noMaintainerInformationWarning => 'Chưa thiết lập thông tin vận hành.';
	@override String get noInquiryUrlWarning => 'Địa chỉ hỏi đáp chưa được đặt';
	@override String get noBotProtectionWarning => 'Bảo vệ Bot chưa thiết lập.';
	@override String get configure => 'Thiết lập';
	@override String get postToGallery => 'Tạo tút có ảnh';
	@override String get postToHashtag => 'Đăng bài với hashtag này';
	@override String get gallery => 'Thư viện ảnh';
	@override String get recentPosts => 'Tút gần đây';
	@override String get popularPosts => 'Tút được xem nhiều nhất';
	@override String get shareWithNote => 'Chia sẻ kèm với tút';
	@override String get ads => 'Quảng cáo';
	@override String get expiration => 'Thời hạn';
	@override String get startingperiod => 'Thời gian bắt đầu\n';
	@override String get memo => 'Lưu ý';
	@override String get priority => 'Ưu tiên';
	@override String get high => 'Cao';
	@override String get middle => 'Vừa';
	@override String get low => 'Thấp';
	@override String get emailNotConfiguredWarning => 'Chưa đặt địa chỉ email.';
	@override String get ratio => 'Tỷ lệ';
	@override String get previewNoteText => 'Hiện xem trước';
	@override String get customCss => 'Tùy chỉnh CSS';
	@override String get customCssWarn => 'Chỉ sử dụng những cài đặt này nếu bạn biết rõ về nó. Việc nhập các giá trị không đúng có thể khiến máy chủ hoạt động không bình thường.';
	@override String get global => 'Toàn cầu';
	@override String get squareAvatars => 'Ảnh đại diện vuông';
	@override String get sent => 'Gửi';
	@override String get received => 'Đã nhận';
	@override String get searchResult => 'Kết quả tìm kiếm';
	@override String get hashtags => 'Hashtag';
	@override String get troubleshooting => 'Khắc phục sự cố';
	@override String get useBlurEffect => 'Dùng hiệu ứng làm mờ trong giao diện';
	@override String get learnMore => 'Tìm hiểu thêm';
	@override String get misskeyUpdated => 'Misskey vừa được cập nhật!';
	@override String get whatIsNew => 'Hiện những thay đổi';
	@override String get translate => 'Dịch';
	@override String translatedFrom({required Object x}) => 'Dịch từ ${x}';
	@override String get accountDeletionInProgress => 'Đang xử lý việc xóa tài khoản';
	@override String get usernameInfo => 'Bạn có thể sử dụng chữ cái (a ~ z, A ~ Z), chữ số (0 ~ 9) hoặc dấu gạch dưới (_). Tên người dùng không thể thay đổi sau này.';
	@override String get aiChanMode => 'Chế độ Ai';
	@override String get devMode => 'Chế độ dành cho nhà phát triển';
	@override String get keepCw => 'Giữ cảnh báo nội dung';
	@override String get pubSub => 'Tài khoản Chính/Phụ';
	@override String get lastCommunication => 'Lần giao tiếp cuối';
	@override String get resolved => 'Đã xử lý';
	@override String get unresolved => 'Chờ xử lý';
	@override String get breakFollow => 'Xóa người theo dõi';
	@override String get breakFollowConfirm => 'Bạn bỏ theo dõi tài khoản này không?';
	@override String get itsOn => 'Đã bật';
	@override String get itsOff => 'Đã tắt';
	@override String get on => 'Bật';
	@override String get off => 'Tắt';
	@override String get emailRequiredForSignup => 'Yêu cầu địa chỉ email khi đăng ký';
	@override String get unread => 'Chưa đọc';
	@override String get filter => 'Bộ lọc';
	@override String get controlPanel => 'Bảng điều khiển';
	@override String get manageAccounts => 'Quản lý tài khoản';
	@override String get makeReactionsPublic => 'Đặt lịch sử biểu cảm công khai';
	@override String get makeReactionsPublicDescription => 'Điều này sẽ hiển thị công khai danh sách tất cả các biểu cảm trước đây của bạn.';
	@override String get classic => 'Cổ điển';
	@override String get muteThread => 'Không quan tâm nữa';
	@override String get unmuteThread => 'Quan tâm tút này';
	@override String get followingVisibility => 'Hiển thị lượt theo dõi';
	@override String get followersVisibility => 'Hiển thị người theo dõi';
	@override String get continueThread => 'Tiếp tục xem chuỗi tút';
	@override String get deleteAccountConfirm => 'Điều này sẽ khiến tài khoản bị xóa vĩnh viễn. Vẫn tiếp tục?';
	@override String get incorrectPassword => 'Sai mật khẩu.';
	@override String get incorrectTotp => 'Mã OTP không đúng hoặc đã quá hạn';
	@override String voteConfirm({required Object choice}) => 'Xác nhận bình chọn "${choice}"?';
	@override String get hide => 'Ẩn';
	@override String get useDrawerReactionPickerForMobile => 'Hiện bộ chọn biểu cảm dạng xổ ra trên điện thoại';
	@override String welcomeBackWithName({required Object name}) => 'Chào mừng trở lại, ${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => 'Vui lòng nhấn [${ok}] để hoàn tất việc đăng ký.';
	@override String get overridedDeviceKind => 'Loại thiết bị';
	@override String get smartphone => 'Điện thoại';
	@override String get tablet => 'Máy tính bảng';
	@override String get auto => 'Tự động';
	@override String get themeColor => 'Màu theme';
	@override String get size => 'Kích thước';
	@override String get numberOfColumn => 'Số lượng cột';
	@override String get searchByGoogle => 'Google';
	@override String get instanceDefaultLightTheme => 'Theme máy chủ Sáng-Rộng';
	@override String get instanceDefaultDarkTheme => 'Theme máy chủ Tối-Rộng';
	@override String get instanceDefaultThemeDescription => 'Nhập mã theme trong định dạng đối tượng.';
	@override String get mutePeriod => 'Thời hạn ẩn';
	@override String get period => 'Thời hạn';
	@override String get indefinitely => 'Vĩnh viễn';
	@override String get tenMinutes => '10 phút';
	@override String get oneHour => '1 giờ';
	@override String get oneDay => '1 ngày';
	@override String get oneWeek => '1 tuần';
	@override String get oneMonth => '1 tháng';
	@override String get threeMonths => '3 tháng';
	@override String get oneYear => '1 năm';
	@override String get threeDays => '3 ngày ';
	@override String get reflectMayTakeTime => 'Có thể mất một thời gian để điều này được áp dụng.';
	@override String get failedToFetchAccountInformation => 'Không thể lấy thông tin tài khoản';
	@override String get rateLimitExceeded => 'Giới hạn quá mức';
	@override String get cropImage => 'Cắt hình ảnh';
	@override String get cropImageAsk => 'Bạn có muốn cắt ảnh này?';
	@override String get cropYes => 'Cắt';
	@override String get cropNo => 'Để nguyên';
	@override String get file => 'Tập tin';
	@override String recentNHours({required Object n}) => '${n}h trước';
	@override String recentNDays({required Object n}) => '${n} ngày trước';
	@override String get noEmailServerWarning => 'Chưa đặt máy chủ email.';
	@override String get thereIsUnresolvedAbuseReportWarning => 'Có báo cáo chưa xử lí.';
	@override String get recommended => 'Được đề xuất';
	@override String get check => 'Kiểm tra';
	@override String get driveCapOverrideLabel => 'Thay đổi dung lượng drive cho người này';
	@override String get driveCapOverrideCaption => 'Đặt dung lượng drive về mặc định bằng cách nhập 0 hoặc số âm.';
	@override String get requireAdminForView => 'Bạn phải đăng nhập như là quản trị viên mới xem được.';
	@override String get isSystemAccount => 'Đã tạo một tài khoản và tự động vận hành bởi hệ thống.';
	@override String typeToConfirm({required Object x}) => 'Nhấn ${x} để xác nhận';
	@override String get deleteAccount => 'Xóa tài khoản';
	@override String get document => 'Tài liệu';
	@override String get numberOfPageCache => 'Số lượng trang bộ nhớ đệm';
	@override String get numberOfPageCacheDescription => 'Việc tăng con số này sẽ cải thiện sự thuận tiện cho người dùng nhưng gây ra nhiều áp lực hơn cho máy chủ cũng như sử dụng nhiều bộ nhớ hơn.';
	@override String get logoutConfirm => 'Bạn có chắc muốn đăng xuất?';
	@override String get logoutWillClearClientData => 'Đăng xuất sẽ xoá các thiết lập của bạn khỏi trình duyệt. Để có thể khôi phục thiết lập khi đăng nhập lại, bạn phải bật tự động sao lưu cài đặt.';
	@override String get lastActiveDate => 'Lần cuối vào';
	@override String get statusbar => 'Thanh trạng thái';
	@override String get pleaseSelect => 'Chọn một lựa chọn';
	@override String get reverse => 'Lật';
	@override String get colored => 'Với màu';
	@override String get refreshInterval => 'Cập nhật nội bộ';
	@override String get label => 'Nhãn';
	@override String get type => 'Loại';
	@override String get speed => 'Tốc độ';
	@override String get slow => 'Chậm';
	@override String get fast => 'Nhanh';
	@override String get sensitiveMediaDetection => 'Tự động phát hiện NSFW';
	@override String get localOnly => 'Chỉ trên máy chủ';
	@override String get remoteOnly => 'Chỉ máy chủ từ xa';
	@override String get failedToUpload => 'Tải lên thất bại';
	@override String get cannotUploadBecauseInappropriate => 'Không thể tải lên tập tin này vì các phần của tập tin đã được phát hiện có khả năng là NSFW.';
	@override String get cannotUploadBecauseNoFreeSpace => 'Tải lên không thành công do thiếu dung lượng Drive.';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'Không thể tải lên tập tin vì kích thước quá lớn.';
	@override String get beta => 'Beta';
	@override String get enableAutoSensitive => 'Tự động đánh dấu NSFW';
	@override String get enableAutoSensitiveDescription => 'Cho phép tự động phát hiện và đánh dấu media NSFW thông qua học máy, nếu có thể. Ngay cả khi tùy chọn này bị tắt, nó vẫn có thể được bật trên toàn máy chủ.';
	@override String get activeEmailValidationDescription => 'Cho phép xác minh địa chỉ email chặt chẽ hơn, bao gồm việc kiểm tra các địa chỉ dùng một lần và xem nó có thực sự được giao tiếp hay không. Khi bỏ chọn, chỉ định dạng của email được xác minh.';
	@override String get navbar => 'Thanh điều hướng';
	@override String get shuffle => 'Xáo trộn';
	@override String get account => 'Tài khoản của bạn';
	@override String get move => 'Di chuyển';
	@override String get pushNotification => 'Thông báo đẩy';
	@override String get subscribePushNotification => 'Bật thông báo đẩy';
	@override String get unsubscribePushNotification => 'Tắt thông báo đẩy';
	@override String get pushNotificationAlreadySubscribed => 'Đang bật thông báo đẩy';
	@override String get pushNotificationNotSupported => 'Trình duyệt của bạn không hỗ trợ thông báo đẩy.';
	@override String get sendPushNotificationReadMessage => 'Xóa thông báo đẩy sau khi đọc thông báo hay tin nhắn';
	@override String get sendPushNotificationReadMessageCaption => 'Thông báo như  sẽ hiển thị trong giây phút. Tiêu tốn pin của máy bạn có thể tăng lên hơn nữa.';
	@override String get windowMaximize => 'Phóng to';
	@override String get windowMinimize => 'Thu nhỏ tối đa';
	@override String get windowRestore => 'Khôi phục';
	@override String get caption => 'Mô tả';
	@override String get loggedInAsBot => 'Đang đăng nhập bằng tài khoản Bot';
	@override String get tools => 'Công Cụ';
	@override String get cannotLoad => 'Không tải được';
	@override String get numberOfProfileView => 'Số lần mở hồ sơ';
	@override String get like => 'Thích';
	@override String get unlike => 'Bỏ lượt thích';
	@override String get numberOfLikes => 'Lượt thích';
	@override String get show => 'Hiển thị';
	@override String get neverShow => 'Không hiển thị nữa';
	@override String get remindMeLater => 'Để sau';
	@override String get didYouLikeMisskey => 'Bạn có ưa thích Mískey không?';
	@override String pleaseDonate({required Object host}) => 'Misskey là phần mềm miễn phí mà ${host} đang sử dụng. Xin mong bạn quyên góp cho chúng tôi để chúng tôi có thể tiếp tục phát triển dịch vụ này. Xin cảm ơn!!';
	@override String correspondingSourceIsAvailable({required Object anchor}) => 'Mã nguồn có thể được xem tại ${anchor}';
	@override String get roles => 'Vai trò';
	@override String get role => 'Vai trò';
	@override String get noRole => 'Bạn chưa được cấp quyền.';
	@override String get normalUser => 'Người dùng bình thường';
	@override String get undefined => 'Chưa xác định';
	@override String get assign => 'Phân công';
	@override String get unassign => 'Hủy phân công';
	@override String get color => 'Màu sắc';
	@override String get manageCustomEmojis => 'Quản lý CustomEmoji';
	@override String get manageAvatarDecorations => 'Quản lý trang trí ảnh đại diện';
	@override String get youCannotCreateAnymore => 'Bạn đã tới giới hạn tạo.';
	@override String get cannotPerformTemporary => 'Tạm thời không sử dụng được';
	@override String get cannotPerformTemporaryDescription => 'Tạm thời không sử dụng được vì lần số điều kiện quá giới hạn. Thử lại sau mọt lát nữa.';
	@override String get invalidParamError => 'Lỗi tham số';
	@override String get invalidParamErrorDescription => 'Có vấn đề với các tham số được request. Thông thường, đây là do bug, nhưng cũng có thể do bạn đã nhập vào quá nhiều ký tự.';
	@override String get permissionDeniedError => 'Thao tác bị từ chối';
	@override String get permissionDeniedErrorDescription => 'Tài khoản này không có đủ quyền hạn để thực hiện thao tác này.';
	@override String get preset => 'Mẫu thiết lập';
	@override String get selectFromPresets => 'Chọn từ mẫu';
	@override String get achievements => 'Thành tích';
	@override String get gotInvalidResponseError => 'Không nhận được trả lời chủ máy';
	@override String get gotInvalidResponseErrorDescription => 'Chủ máy có lẻ ngừng hoạt động hoặc bảo trí. Thử lại sau một lát nữa. ';
	@override String get thisPostMayBeAnnoying => 'Bạn đăng bài này có thể làm phiền cho người ta.';
	@override String get thisPostMayBeAnnoyingHome => 'Đăng trên trang chính';
	@override String get thisPostMayBeAnnoyingCancel => 'Từ chối';
	@override String get thisPostMayBeAnnoyingIgnore => 'Đăng bài để nguyên';
	@override String get collapseRenotes => 'Không hiển thị bài viết đã từng xem';
	@override String get collapseRenotesDescription => 'Các bài đăng bị thu gọn mà bạn đã phản hồi hoặc đăng lại trước đây.';
	@override String get internalServerError => 'Lỗi trong chủ máy';
	@override String get internalServerErrorDescription => 'Trong chủ máy lỗi bất ngờ xảy ra';
	@override String get copyErrorInfo => 'Sao chép thông tin lỗi';
	@override String get joinThisServer => 'Đăng ký trên chủ máy này';
	@override String get exploreOtherServers => 'Tìm chủ máy khác';
	@override String get letsLookAtTimeline => 'Thử xem Timeline';
	@override String get disableFederationConfirm => 'Bạn có muốn làm điều đó mà không cần liên minh không?';
	@override String get disableFederationConfirmWarn => 'Ngay cả khi bị trì hoãn, bài đăng vẫn sẽ tiếp tục là công khai trừ khi được thiết lập khác. Bạn thường không cần phải làm điều này.';
	@override String get disableFederationOk => 'Vô hiệu hoá';
	@override String get invitationRequiredToRegister => 'Phiên bản này chỉ dành cho người được mời. Bạn phải nhập mã mời hợp lệ để đăng ký.';
	@override String get emailNotSupported => 'Máy chủ này không hỗ trợ gửi email';
	@override String get postToTheChannel => 'Đăng lên kênh';
	@override String get cannotBeChangedLater => 'Không thể thay đổi sau này.';
	@override String get reactionAcceptance => 'Phản ứng chấp nhận';
	@override String get likeOnly => 'Chỉ lượt thích';
	@override String get likeOnlyForRemote => 'Tất cả (chỉ bao gồm lượt thích trên các máy chủ khác)';
	@override String get nonSensitiveOnly => 'Chỉ nội dung không nhạy cảm';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'Chỉ nội dung không nhạy cảm (chỉ bao gồm lượt thích từ máy chủ khác)';
	@override String get rolesAssignedToMe => 'Vai trò được giao cho tôi';
	@override String get resetPasswordConfirm => 'Bạn thực sự muốn đặt lại mật khẩu?';
	@override String get sensitiveWords => 'Các từ nhạy cảm';
	@override String get sensitiveWordsDescription => 'Phạm vi của tất cả bài đăng chứa các từ được cấu hình sẽ tự động được đặt về "Home". Ban có thể thêm nhiều từ trên mỗi dòng.';
	@override String get sensitiveWordsDescription2 => 'Sử dụng dấu cách sẽ tạo cấu trúc AND và thêm dấu gạch xuôi để sử dụng như một regex.';
	@override String get prohibitedWords => 'Các từ bị cấm';
	@override String get prohibitedWordsDescription => 'Hiển thị lỗi khi đăng một bài đăng chứa các từ sau. Nhiều từ có thể được thêm bằng cách viết một từ trên mỗi dòng.';
	@override String get prohibitedWordsDescription2 => 'Sử dụng dấu cách sẽ tạo cấu trúc AND và thêm dấu gạch xuôi để sử dụng như một regex.';
	@override String get hiddenTags => 'Hashtag ẩn';
	@override String get hiddenTagsDescription => 'Các hashtag này sẽ không được hiển thị trên danh sách Trending. Nhiều tag có thể được thêm bằng cách viết một tag trên mỗi dòng.';
	@override String get notesSearchNotAvailable => 'Tìm kiếm bài đăng hiện không khả dụng.';
	@override String get license => 'Giấy phép';
	@override String get unfavoriteConfirm => 'Bạn thực sự muốn xoá khỏi mục yêu thích?';
	@override String get myClips => 'Các clip của tôi';
	@override String get drivecleaner => 'Trình dọn đĩa';
	@override String get retryAllQueuesNow => 'Thử lại cho tất cả hàng chờ';
	@override String get retryAllQueuesConfirmTitle => 'Bạn có muốn thử lại?';
	@override String get retryAllQueuesConfirmText => 'Điều này sẽ tạm thời làm tăng mức độ tải của máy chủ.';
	@override String get enableChartsForRemoteUser => 'Tạo biểu đồ người dùng từ xa';
	@override String get video => 'Video';
	@override String get videos => 'Các video';
	@override String get audio => 'Âm thanh';
	@override String get audioFiles => 'Âm thanh';
	@override String get dataSaver => 'Tiết kiệm dung lượng';
	@override String get accountMigration => 'Chuyển tài khoản';
	@override String get accountMoved => 'Người dùng này đã chuyển sang một tài khoản mới:';
	@override String get accountMovedShort => 'Tài khoản này đã được chuyển';
	@override String get operationForbidden => 'Thao tác này không thể thực hiện';
	@override String get forceShowAds => 'Luôn hiện quảng cáo';
	@override String get notificationDisplay => 'Thông báo';
	@override String get leftTop => 'Phía trên bên tráí';
	@override String get rightTop => 'Phía trên bên phải';
	@override String get leftBottom => 'Phía dưới bên trái';
	@override String get rightBottom => 'Phía dưới bên phải';
	@override String get stackAxis => 'Hướng chồng';
	@override String get vertical => 'Dọc';
	@override String get horizontal => 'Thanh bên';
	@override String get position => 'Vị trí';
	@override String get serverRules => 'Luật của máy chủ';
	@override String get pleaseConfirmBelowBeforeSignup => 'Để đăng ký trên máy chủ này, bạn phải xem xét và đồng ý với những điều sau.';
	@override String get pleaseAgreeAllToContinue => 'Bạn phải đồng ý tất cả điều trên để tiếp tục.';
	@override String get continue_ => 'Tiếp tục';
	@override String get archive => 'Lưu trữ';
	@override String get thisChannelArchived => 'Kênh này đã được lưu trữ.';
	@override String get initialAccountSetting => 'Thiết lập hồ sơ';
	@override String get youFollowing => 'Đang theo dõi';
	@override String get preventAiLearning => 'Từ chối sử dụng công nghệ Máy Học (AI Sáng Tạo)';
	@override String get options => 'Tùy chọn';
	@override String get specifyUser => 'Người dùng chỉ định';
	@override String get failedToPreviewUrl => 'Không thể xem trước';
	@override String get update => 'Cập nhật';
	@override String get cancelReactionConfirm => 'Bạn có muốn hủy phản ứng của mình không?';
	@override String get changeReactionConfirm => 'Bạn có muốn thay đổi phản ứng của mình không?';
	@override String get later => 'Để sau';
	@override String get goToMisskey => 'Tới Misskey';
	@override String get installed => 'Đã tải xuống';
	@override String get branding => 'Thương hiệu';
	@override String get turnOffToImprovePerformance => 'Tắt mục này có thể cải thiện hiệu năng.';
	@override String get createInviteCode => 'Tạo lời mời';
	@override String get createWithOptions => 'Tạo cùng tùy chọn';
	@override String get createCount => 'Số lượng mời';
	@override String get inviteCodeCreated => 'Lời mời đã được tạo';
	@override String get inviteLimitExceeded => 'Bạn đã vượt quá số lượng mời mà bạn có thể tạo.';
	@override String createLimitRemaining({required Object limit}) => 'Giới hạn lượt mời: Còn lại ${limit}';
	@override String inviteLimitResetCycle({required Object limit, required Object time}) => 'Giới hạn này sẽ được đặt lại về ${limit} lúc ${time}.';
	@override String get expirationDate => 'Ngày hết hạn';
	@override String get noExpirationDate => 'Vô thời hạn';
	@override String get inviteCodeUsedAt => 'Mã mời đã được sử dụng lúc';
	@override String get registeredUserUsingInviteCode => 'Lời mời đã được sử dụng bởi';
	@override String get waitingForMailAuth => 'Đang chờ xác nhận email';
	@override String get inviteCodeCreator => 'Lời mời đã được tạo bởi';
	@override String get usedAt => 'Sử dụng vào lúc';
	@override String get unused => 'Chưa được sử dụng';
	@override String get used => 'Đã được sử dụng';
	@override String get expired => 'Đã hết hạn';
	@override String get doYouAgree => 'Đồng ý?';
	@override String get beSureToReadThisAsItIsImportant => 'Hãy đọc kỹ vì nó rất quan trọng.';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => 'Tôi đã đọc và đồng ý với "${x}".';
	@override String get dialog => 'Hộp thoại';
	@override String get icon => 'Ảnh đại diện';
	@override String get forYou => 'Dành cho bạn';
	@override String get currentAnnouncements => 'Thông báo hiện tại';
	@override String get pastAnnouncements => 'Thông báo trước đó';
	@override String get youHaveUnreadAnnouncements => 'Có thông báo chưa đọc.';
	@override String get useSecurityKey => 'Làm theo hướng dẫn trên trình duyệt hoặc thiết bị của bạn để sử dụng khóa bảo mật hoặc mật mã.';
	@override String get replies => 'Trả lời';
	@override String get renotes => 'Đăng lại';
	@override String get loadReplies => 'Hiển thị các trả lời';
	@override String get loadConversation => 'Xem cuộc trò chuyện';
	@override String get pinnedList => 'Các mục đã được ghim';
	@override String get keepScreenOn => 'Giữ màn hình luôn bật';
	@override String get verifiedLink => 'Chúng tôi đã xác nhận bạn là chủ sở hữu của đường dẫn này';
	@override String get authentication => 'Xác thực';
	@override String get authenticationRequiredToContinue => 'Vui lòng xác thực để tiếp tục';
	@override String get dateAndTime => 'Ngày và giờ';
	@override String get edited => 'Đã chỉnh sửa';
	@override String get notificationRecieveConfig => 'Cài đặt thông báo';
	@override String get mutualFollow => 'Theo dõi lẫn nhau';
	@override String get followingOrFollower => 'Đang theo dõi hoặc người theo dõi';
	@override String get externalServices => 'Các dịch vụ bên ngoài';
	@override String get sourceCode => 'Mã nguồn';
	@override String get sourceCodeIsNotYetProvided => 'Mã nguồn hiện chưa có sẵn, vui lòng liên hệ với quản trị viên để khắc phục sự cố này.';
	@override String get repositoryUrlDescription => 'Nếu bạn có kho lưu trữ mã nguồn có thể truy cập công khai, hãy nhập URL. Nếu bạn đang sử dụng Misskey theo mặc định (không thực hiện bất kỳ thay đổi nào đối với mã nguồn), hãy nhập https://github.com/misskey-dev/misskey.';
	@override String get feedback => 'Phản hồi';
	@override String get feedbackUrl => 'URL phản hồi';
	@override String get impressum => 'Thông tin nhà điều hành';
	@override String get impressumUrl => 'URL thông tin nhà điều hành';
	@override String get privacyPolicy => 'Chính sách bảo mật';
	@override String get privacyPolicyUrl => 'URL Chính sách bảo mật';
	@override String get tosAndPrivacyPolicy => 'Điều khoản sử dụng và Chính sách bảo mật';
	@override String get avatarDecorations => 'Trang trí ảnh đại diện';
	@override String get attach => 'Mặc';
	@override String get detach => 'Bỏ';
	@override String get detachAll => 'Bỏ tất cả';
	@override String get angle => 'Góc';
	@override String get flip => 'Lật';
	@override String get showAvatarDecorations => 'Hiển thị trang trí ảnh đại diện';
	@override String get releaseToRefresh => 'Thả để làm mới';
	@override String get refreshing => 'Đang làm mới';
	@override String get pullDownToRefresh => 'Kéo xuống để làm mới';
	@override String get cwNotationRequired => 'Nếu "Ẩn nội dung" được bật thì cần phải có chú thích.';
	@override String get decorate => 'Trang trí';
	@override String lastNDays({required Object n}) => '${n} ngày trước';
	@override String userSaysSomethingSensitive({required Object name}) => 'Bài đăng có chứa các tập tin nhạy cảm từ ${name}';
	@override String get surrender => 'Từ chối';
	@override String get signinWithPasskey => 'Đăng nhập bằng mật khẩu của bạn';
	@override String get passkeyVerificationFailed => 'Xác minh mật khẩu không thành công.';
	@override String get messageToFollower => 'Tin nhắn cho người theo dõi';
	@override String get yourNameContainsProhibitedWords => 'Tên bạn đang cố gắng đổi có chứa chuỗi ký tự bị cấm.';
	@override String get yourNameContainsProhibitedWordsDescription => 'Tên có chứa chuỗi ký tự bị cấm. Nếu bạn muốn sử dụng tên này, hãy liên hệ với quản trị viên máy chủ của bạn.';
	@override String get pleaseSelectAccount => 'Chọn tài khoản của bạn';
	@override String get federationDisabled => 'Liên kết bị vô hiệu hóa trên máy chủ này. Bạn không thể tương tác với người dùng trên các máy chủ khác.';
	@override String reactAreYouSure({required Object emoji}) => 'Bạn có muốn phản hồi với " ${emoji} " không?';
	@override String get preferences => 'Thiết lập môi trường';
	@override String get accessibility => 'Khả năng tiếp cận';
	@override String get preferencesProfile => 'Hồ sơ sở thích';
	@override String get preferenceSyncConflictTitle => 'Cài đặt tồn tại trên máy chủ';
	@override String get preferenceSyncConflictText => 'Các thiết lập đồng bộ hóa được bật sẽ lưu các giá trị của chúng vào máy chủ. Tuy nhiên, có những giá trị hiện có trên máy chủ. Bạn muốn ghi đè lên bộ giá trị nào?';
	@override String get paste => 'dán';
	@override String get postForm => 'Mẫu đăng';
	@override String get information => 'Giới thiệu';
	@override String get chat => 'Trò chuyện';
	@override String get migrateOldSettings => 'Di chuyển cài đặt cũ';
	@override String get migrateOldSettings_description => 'Thông thường, quá trình này diễn ra tự động, nhưng nếu vì lý do nào đó mà quá trình di chuyển không thành công, bạn có thể kích hoạt thủ công quy trình di chuyển, quá trình này sẽ ghi đè lên thông tin cấu hình hiện tại của bạn.';
	@override String get driveAboutTip => 'Trong Drive, danh sách các tệp bạn đã tải lên trước đây sẽ được hiển thị.<br>\nBạn có thể sử dụng lại chúng khi đính kèm vào ghi chú, hoặc tải lên trước các tệp để đăng sau.<br>\n<b>Lưu ý rằng nếu bạn xóa một tệp, tệp đó cũng sẽ biến mất khỏi tất cả những nơi đã sử dụng tệp đó (ghi chú, trang, ảnh đại diện, biểu ngữ, v.v.).</b><br>\nBạn cũng có thể tạo các thư mục để sắp xếp chúng.';
	@override String get inMinutes => 'phút';
	@override String get inDays => 'ngày';
	@override String get widgets => 'Tiện ích';
	@override String get presets => 'Mẫu thiết lập';
	@override late final _TranslationsMisskeyImageEditingViVn imageEditing_ = _TranslationsMisskeyImageEditingViVn._(_root);
	@override late final _TranslationsMisskeyImageFrameEditorViVn imageFrameEditor_ = _TranslationsMisskeyImageFrameEditorViVn._(_root);
	@override late final _TranslationsMisskeyChatViVn chat_ = _TranslationsMisskeyChatViVn._(_root);
	@override late final _TranslationsMisskeySettingsViVn settings_ = _TranslationsMisskeySettingsViVn._(_root);
	@override late final _TranslationsMisskeyAccountSettingsViVn accountSettings_ = _TranslationsMisskeyAccountSettingsViVn._(_root);
	@override late final _TranslationsMisskeyDeliveryViVn delivery_ = _TranslationsMisskeyDeliveryViVn._(_root);
	@override late final _TranslationsMisskeyAnnouncementViVn announcement_ = _TranslationsMisskeyAnnouncementViVn._(_root);
	@override late final _TranslationsMisskeyInitialAccountSettingViVn initialAccountSetting_ = _TranslationsMisskeyInitialAccountSettingViVn._(_root);
	@override late final _TranslationsMisskeyInitialTutorialViVn initialTutorial_ = _TranslationsMisskeyInitialTutorialViVn._(_root);
	@override late final _TranslationsMisskeyTimelineDescriptionViVn timelineDescription_ = _TranslationsMisskeyTimelineDescriptionViVn._(_root);
	@override late final _TranslationsMisskeyServerSettingsViVn serverSettings_ = _TranslationsMisskeyServerSettingsViVn._(_root);
	@override late final _TranslationsMisskeyAccountMigrationViVn accountMigration_ = _TranslationsMisskeyAccountMigrationViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsViVn achievements_ = _TranslationsMisskeyAchievementsViVn._(_root);
	@override late final _TranslationsMisskeyRoleViVn role_ = _TranslationsMisskeyRoleViVn._(_root);
	@override late final _TranslationsMisskeySensitiveMediaDetectionViVn sensitiveMediaDetection_ = _TranslationsMisskeySensitiveMediaDetectionViVn._(_root);
	@override late final _TranslationsMisskeyEmailUnavailableViVn emailUnavailable_ = _TranslationsMisskeyEmailUnavailableViVn._(_root);
	@override late final _TranslationsMisskeyFfVisibilityViVn ffVisibility_ = _TranslationsMisskeyFfVisibilityViVn._(_root);
	@override late final _TranslationsMisskeySignupViVn signup_ = _TranslationsMisskeySignupViVn._(_root);
	@override late final _TranslationsMisskeyAccountDeleteViVn accountDelete_ = _TranslationsMisskeyAccountDeleteViVn._(_root);
	@override late final _TranslationsMisskeyAdViVn ad_ = _TranslationsMisskeyAdViVn._(_root);
	@override late final _TranslationsMisskeyForgotPasswordViVn forgotPassword_ = _TranslationsMisskeyForgotPasswordViVn._(_root);
	@override late final _TranslationsMisskeyGalleryViVn gallery_ = _TranslationsMisskeyGalleryViVn._(_root);
	@override late final _TranslationsMisskeyEmailViVn email_ = _TranslationsMisskeyEmailViVn._(_root);
	@override late final _TranslationsMisskeyPluginViVn plugin_ = _TranslationsMisskeyPluginViVn._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupsViVn preferencesBackups_ = _TranslationsMisskeyPreferencesBackupsViVn._(_root);
	@override late final _TranslationsMisskeyRegistryViVn registry_ = _TranslationsMisskeyRegistryViVn._(_root);
	@override late final _TranslationsMisskeyAboutMisskeyViVn aboutMisskey_ = _TranslationsMisskeyAboutMisskeyViVn._(_root);
	@override late final _TranslationsMisskeyInstanceTickerViVn instanceTicker_ = _TranslationsMisskeyInstanceTickerViVn._(_root);
	@override late final _TranslationsMisskeyServerDisconnectedBehaviorViVn serverDisconnectedBehavior_ = _TranslationsMisskeyServerDisconnectedBehaviorViVn._(_root);
	@override late final _TranslationsMisskeyChannelViVn channel_ = _TranslationsMisskeyChannelViVn._(_root);
	@override late final _TranslationsMisskeyMenuDisplayViVn menuDisplay_ = _TranslationsMisskeyMenuDisplayViVn._(_root);
	@override late final _TranslationsMisskeyWordMuteViVn wordMute_ = _TranslationsMisskeyWordMuteViVn._(_root);
	@override late final _TranslationsMisskeyInstanceMuteViVn instanceMute_ = _TranslationsMisskeyInstanceMuteViVn._(_root);
	@override late final _TranslationsMisskeyThemeViVn theme_ = _TranslationsMisskeyThemeViVn._(_root);
	@override late final _TranslationsMisskeySfxViVn sfx_ = _TranslationsMisskeySfxViVn._(_root);
	@override late final _TranslationsMisskeyAgoViVn ago_ = _TranslationsMisskeyAgoViVn._(_root);
	@override late final _TranslationsMisskeyTimeViVn time_ = _TranslationsMisskeyTimeViVn._(_root);
	@override late final _TranslationsMisskeyX2faViVn x2fa_ = _TranslationsMisskeyX2faViVn._(_root);
	@override late final _TranslationsMisskeyPermissionsViVn permissions_ = _TranslationsMisskeyPermissionsViVn._(_root);
	@override late final _TranslationsMisskeyAuthViVn auth_ = _TranslationsMisskeyAuthViVn._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesViVn antennaSources_ = _TranslationsMisskeyAntennaSourcesViVn._(_root);
	@override late final _TranslationsMisskeyWeekdayViVn weekday_ = _TranslationsMisskeyWeekdayViVn._(_root);
	@override late final _TranslationsMisskeyWidgetsViVn widgets_ = _TranslationsMisskeyWidgetsViVn._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsViVn widgetOptions_ = _TranslationsMisskeyWidgetOptionsViVn._(_root);
	@override late final _TranslationsMisskeyCwViVn cw_ = _TranslationsMisskeyCwViVn._(_root);
	@override late final _TranslationsMisskeyPollViVn poll_ = _TranslationsMisskeyPollViVn._(_root);
	@override late final _TranslationsMisskeyVisibilityViVn visibility_ = _TranslationsMisskeyVisibilityViVn._(_root);
	@override late final _TranslationsMisskeyPostFormViVn postForm_ = _TranslationsMisskeyPostFormViVn._(_root);
	@override late final _TranslationsMisskeyProfileViVn profile_ = _TranslationsMisskeyProfileViVn._(_root);
	@override late final _TranslationsMisskeyExportOrImportViVn exportOrImport_ = _TranslationsMisskeyExportOrImportViVn._(_root);
	@override late final _TranslationsMisskeyChartsViVn charts_ = _TranslationsMisskeyChartsViVn._(_root);
	@override late final _TranslationsMisskeyInstanceChartsViVn instanceCharts_ = _TranslationsMisskeyInstanceChartsViVn._(_root);
	@override late final _TranslationsMisskeyTimelinesViVn timelines_ = _TranslationsMisskeyTimelinesViVn._(_root);
	@override late final _TranslationsMisskeyPlayViVn play_ = _TranslationsMisskeyPlayViVn._(_root);
	@override late final _TranslationsMisskeyPagesViVn pages_ = _TranslationsMisskeyPagesViVn._(_root);
	@override late final _TranslationsMisskeyRelayStatusViVn relayStatus_ = _TranslationsMisskeyRelayStatusViVn._(_root);
	@override late final _TranslationsMisskeyNotificationViVn notification_ = _TranslationsMisskeyNotificationViVn._(_root);
	@override late final _TranslationsMisskeyDeckViVn deck_ = _TranslationsMisskeyDeckViVn._(_root);
	@override late final _TranslationsMisskeyDialogViVn dialog_ = _TranslationsMisskeyDialogViVn._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsViVn webhookSettings_ = _TranslationsMisskeyWebhookSettingsViVn._(_root);
	@override late final _TranslationsMisskeyAbuseReportViVn abuseReport_ = _TranslationsMisskeyAbuseReportViVn._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesViVn moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesViVn._(_root);
	@override late final _TranslationsMisskeyReversiViVn reversi_ = _TranslationsMisskeyReversiViVn._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerViVn customEmojisManager_ = _TranslationsMisskeyCustomEmojisManagerViVn._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsViVn remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsViVn._(_root);
	@override late final _TranslationsMisskeySearchViVn search_ = _TranslationsMisskeySearchViVn._(_root);
	@override late final _TranslationsMisskeyWatermarkEditorViVn watermarkEditor_ = _TranslationsMisskeyWatermarkEditorViVn._(_root);
	@override late final _TranslationsMisskeyImageEffectorViVn imageEffector_ = _TranslationsMisskeyImageEffectorViVn._(_root);
	@override late final _TranslationsMisskeyQrViVn qr_ = _TranslationsMisskeyQrViVn._(_root);
}

// Path: misskey.imageEditing_
class _TranslationsMisskeyImageEditingViVn extends TranslationsMisskeyImageEditingEnUs {
	_TranslationsMisskeyImageEditingViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyImageEditingVarsViVn vars_ = _TranslationsMisskeyImageEditingVarsViVn._(_root);
}

// Path: misskey.imageFrameEditor_
class _TranslationsMisskeyImageFrameEditorViVn extends TranslationsMisskeyImageFrameEditorEnUs {
	_TranslationsMisskeyImageFrameEditorViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get header => 'Ảnh bìa';
	@override String get font => 'Phông chữ';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
}

// Path: misskey.chat_
class _TranslationsMisskeyChatViVn extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get invitations => 'Mời';
	@override String get noHistory => 'Không có dữ liệu';
	@override String get members => 'Thành viên';
	@override String get home => 'Trang chính';
	@override String get send => 'Gửi';
}

// Path: misskey.settings_
class _TranslationsMisskeySettingsViVn extends TranslationsMisskeySettingsEnUs {
	_TranslationsMisskeySettingsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get preferencesBanner => 'Bạn có thể cấu hình hành vi chung của máy khách theo sở thích của mình.';
}

// Path: misskey.accountSettings_
class _TranslationsMisskeyAccountSettingsViVn extends TranslationsMisskeyAccountSettingsEnUs {
	_TranslationsMisskeyAccountSettingsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get requireSigninToViewContents => 'Yêu cầu đăng nhập để xem nội dung';
	@override String get requireSigninToViewContentsDescription1 => 'Yêu cầu đăng nhập để xem tất cả ghi chú và nội dung khác mà bạn tạo. Điều này được kỳ vọng sẽ có hiệu quả trong việc ngăn chặn thông tin bị thu thập bởi các trình thu thập thông tin.';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryViVn extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get stop => 'Đã vô hiệu hóa';
	@override late final _TranslationsMisskeyDeliveryTypeViVn type_ = _TranslationsMisskeyDeliveryTypeViVn._(_root);
}

// Path: misskey.announcement_
class _TranslationsMisskeyAnnouncementViVn extends TranslationsMisskeyAnnouncementEnUs {
	_TranslationsMisskeyAnnouncementViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => 'Chỉ những người dùng đã tồn tại';
	@override String get forExistingUsersDescription => 'Nếu được bật, thông báo này sẽ chỉ hiển thị với những người dùng đã tồn tại vào lúc thông báo được tạo. Nếu tắt đi, những tài khoản mới đăng ký sau khi thông báo được đăng lên cũng sẽ thấy nó.';
	@override String get end => 'Lưu trữ thông báo';
	@override String get tooManyActiveAnnouncementDescription => 'Có quá nhiều thông báo sẽ làm trải nghiệm của người dùng tệ đi. Vui lòng lưu trữ những thông báo đã hết hiệu lực.';
	@override String get readConfirmTitle => 'Đánh dấu là đã đọc?';
	@override String readConfirmText({required Object title}) => 'Điều này sẽ đánh dấu nội dung của "${title}" là đã đọc.';
}

// Path: misskey.initialAccountSetting_
class _TranslationsMisskeyInitialAccountSettingViVn extends TranslationsMisskeyInitialAccountSettingEnUs {
	_TranslationsMisskeyInitialAccountSettingViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => 'Tài khoản của bạn đã được tạo thành công!';
	@override String get letsStartAccountSetup => 'Để bắt đầu, hãy cùng thiết lập tài khoản nhé.';
	@override String get letsFillYourProfile => 'Đầu tiên, hãy thiết lập hồ sơ của bạn.';
	@override String get profileSetting => 'Thiết lập hồ sơ';
	@override String get privacySetting => 'Cài đặt quyền riêng tư';
	@override String get theseSettingsCanEditLater => 'Bạn vẫn có thể thay đổi những cài đặt này.';
	@override String get youCanEditMoreSettingsInSettingsPageLater => 'Còn rất nhiều những cài đặt khác bạn có thể thay đổi ở trang "Cài đặt". Hãy nhớ ghé thăm trong lần sau nhé.';
	@override String get followUsers => 'Thử theo dõi một vài người mà bạn có thể thích để xây dựng dòng thời gian của mình.';
	@override String pushNotificationDescription({required Object name}) => 'Bật thông báo đẩy sẽ cho phép bạn nhận thông báo từ ${name} trực tiếp từ thiết bị của bạn.';
	@override String get initialAccountSettingCompleted => 'Thiết lập tài khoản thành công!';
	@override String haveFun({required Object name}) => 'Hãy tận hưởng ${name} nhé!';
	@override String youCanContinueTutorial({required Object name}) => 'Bạn có thể tiếp tục xem hướng dẫn về cách sử dụng ${name} (Misskey) hoặc bạn có thể thoát khỏi phần thiết lập tại đây và bắt đầu sử dụng ngay lập tức.';
	@override String get startTutorial => 'Bắt đầu hướng dẫn';
	@override String get skipAreYouSure => 'Bạn thực sự muốn bỏ qua mục thiết lập tài khoản?';
	@override String get laterAreYouSure => 'Bạn thực sự muốn thiết lập tài khoản vào lúc khác?';
}

// Path: misskey.initialTutorial_
class _TranslationsMisskeyInitialTutorialViVn extends TranslationsMisskeyInitialTutorialEnUs {
	_TranslationsMisskeyInitialTutorialViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'Bắt đầu hướng dẫn';
	@override String get title => 'Hướng dẫn';
	@override String get wellDone => 'Làm tốt!';
	@override String get skipAreYouSure => 'Thoát khỏi hướng dẫn?';
	@override late final _TranslationsMisskeyInitialTutorialLandingViVn landing_ = _TranslationsMisskeyInitialTutorialLandingViVn._(_root);
	@override late final _TranslationsMisskeyInitialTutorialNoteViVn note_ = _TranslationsMisskeyInitialTutorialNoteViVn._(_root);
	@override late final _TranslationsMisskeyInitialTutorialTimelineViVn timeline_ = _TranslationsMisskeyInitialTutorialTimelineViVn._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteViVn postNote_ = _TranslationsMisskeyInitialTutorialPostNoteViVn._(_root);
}

// Path: misskey.timelineDescription_
class _TranslationsMisskeyTimelineDescriptionViVn extends TranslationsMisskeyTimelineDescriptionEnUs {
	_TranslationsMisskeyTimelineDescriptionViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get home => 'Trong dòng thời gian Trang chính, bạn có thể xem ghi chú từ các tài khoản bạn theo dõi.';
	@override String get local => 'Trong dòng thời gian cục bộ, bạn có thể xem ghi chú từ tất cả người dùng trên máy chủ này.';
	@override String get social => 'Dòng thời gian Xã hội hiển thị các ghi chú từ cả dòng thời gian Trang chủ và Địa phương.';
}

// Path: misskey.serverSettings_
class _TranslationsMisskeyServerSettingsViVn extends TranslationsMisskeyServerSettingsEnUs {
	_TranslationsMisskeyServerSettingsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get iconUrl => 'Biểu tượng URL';
	@override String appIconResolutionMustBe({required Object resolution}) => 'Độ phân giải tối thiểu là ${resolution}.';
	@override String get manifestJsonOverride => 'Ghi đè manifest.json';
}

// Path: misskey.accountMigration_
class _TranslationsMisskeyAccountMigrationViVn extends TranslationsMisskeyAccountMigrationEnUs {
	_TranslationsMisskeyAccountMigrationViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => 'Chuyển một tài khoản khác vào tài khoản này';
	@override String moveFromLabel({required Object n}) => 'Tài khoản gốc #${n}';
	@override String get moveTo => 'Chuyển tài khoản này vào một tài khoản khác';
	@override String get moveCannotBeUndone => 'Việc chuyển tài khoản không thể huỷ.';
	@override String get moveAccountDescription => 'Điều này sẽ chuyển tài khoản này sang một tài khoản khác.\n　・Những người theo dõi sẽ tự động được chuyển sang tài khoản mới\n　・Tài khoản này sẽ tự bỏ theo dõi những người mà bạn đã theo dõi trước đây\n　・Bạn sẽ không thể đăng tút mới, v.v trên tài khoản này\n\nDù việc chuyển người theo dõi được diễn ra tự động, bạn vẫn phải tự chuẩn bị một vài bước để chuyển danh sách những người dùng bạn đang theo dõi. Để làm vậy, vui lòng thực hiện việc xuất dữ liệu những người dùng đã theo dõi mà sau này bạn sẽ dùng để nhập vào tài khoản mới ở menu Cài đặt. Hành động tương tự áp dụng với danh sách những người dùng bị chặn hoặc tắt tiếng.\n\n(Điều này áp dụng cho phiên bản Misskey v13.12.0 và sau này. Các phần mềm ActivityPub khác , ví dụ như Mastodon, sẽ có thể hoạt động khác đi.)';
	@override String get startMigration => 'Chuyển';
	@override String get movedAndCannotBeUndone => '\nTài khoản này đã được chuyển đi.\nViệc di chuyển tài khoản không thể bị huỷ bỏ.';
	@override String get movedTo => 'Tài khoản mới:';
}

// Path: misskey.achievements_
class _TranslationsMisskeyAchievementsViVn extends TranslationsMisskeyAchievementsEnUs {
	_TranslationsMisskeyAchievementsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Ngày thu nhận';
	@override late final _TranslationsMisskeyAchievementsTypesViVn types_ = _TranslationsMisskeyAchievementsTypesViVn._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRoleViVn extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRoleViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get assignTarget => 'Phân công';
	@override String get priority => 'Ưu tiên';
	@override late final _TranslationsMisskeyRolePriorityViVn priority_ = _TranslationsMisskeyRolePriorityViVn._(_root);
	@override late final _TranslationsMisskeyRoleOptionsViVn options_ = _TranslationsMisskeyRoleOptionsViVn._(_root);
	@override late final _TranslationsMisskeyRoleConditionViVn condition_ = _TranslationsMisskeyRoleConditionViVn._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _TranslationsMisskeySensitiveMediaDetectionViVn extends TranslationsMisskeySensitiveMediaDetectionEnUs {
	_TranslationsMisskeySensitiveMediaDetectionViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get description => 'Giảm nỗ lực kiểm duyệt máy chủ thông qua việc tự động nhận dạng media NSFW thông qua học máy. Điều này sẽ làm tăng một chút áp lực trên máy chủ.';
	@override String get sensitivity => 'Phát hiện nhạy cảm';
	@override String get sensitivityDescription => 'Giảm độ nhạy sẽ dẫn đến ít phát hiện sai hơn (dương tính giả), tăng nó sẽ dẫn đến ít phát hiện sai hơn (âm tính giả).';
	@override String get setSensitiveFlagAutomatically => 'Đánh dấu là NSFW';
	@override String get setSensitiveFlagAutomaticallyDescription => 'Kết quả của phát hiện nội bộ sẽ được giữ lại ngay cả khi tùy chọn này bị tắt.';
	@override String get analyzeVideos => 'Bật chuẩn đoán video';
	@override String get analyzeVideosDescription => 'Phân tích video bên cạnh hình ảnh. Điều này sẽ làm tăng một chút áp lực trên máy chủ.';
}

// Path: misskey.emailUnavailable_
class _TranslationsMisskeyEmailUnavailableViVn extends TranslationsMisskeyEmailUnavailableEnUs {
	_TranslationsMisskeyEmailUnavailableViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get used => 'Địa chỉ email đã được sử dụng';
	@override String get format => 'Địa chỉ email không hợp lệ';
	@override String get disposable => 'Cấm sử dụng địa chỉ email dùng một lần';
	@override String get mx => 'Máy chủ email không hợp lệ';
	@override String get smtp => 'Máy chủ email không phản hồi';
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilityViVn extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilityViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get public => 'Đăng';
	@override String get followers => 'Chỉ người theo dõi mới xem được';
	@override String get private => 'Riêng tư';
}

// Path: misskey.signup_
class _TranslationsMisskeySignupViVn extends TranslationsMisskeySignupEnUs {
	_TranslationsMisskeySignupViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Gần xong rồi';
	@override String get emailAddressInfo => 'Hãy điền địa chỉ email của bạn. Nó sẽ không được công khai.';
	@override String emailSent({required Object email}) => 'Một email xác minh đã được gửi đến địa chỉ email (${email}) của bạn. Vui lòng nhấn vào liên kết trong đó để hoàn tất việc tạo tài khoản.';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeleteViVn extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeleteViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Xóa tài khoản';
	@override String get mayTakeTime => 'Vì xóa tài khoản là một quá trình tốn nhiều tài nguyên nên có thể mất một khoảng thời gian để hoàn thành, tùy thuộc vào lượng nội dung bạn đã tạo và số lượng tập tin bạn đã tải lên.';
	@override String get sendEmail => 'Sau khi hoàn tất việc xóa tài khoản, một email sẽ được gửi đến địa chỉ email đã đăng ký tài khoản này.';
	@override String get requestAccountDelete => 'Yêu cầu xóa tài khoản';
	@override String get started => 'Đang bắt đầu xóa tài khoản.';
	@override String get inProgress => 'Đang xóa dần tài khoản.';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdViVn extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get back => 'Quay lại';
	@override String get reduceFrequencyOfThisAd => 'Hiện ít lại';
	@override String get hide => 'Không hiển thị';
}

// Path: misskey.forgotPassword_
class _TranslationsMisskeyForgotPasswordViVn extends TranslationsMisskeyForgotPasswordEnUs {
	_TranslationsMisskeyForgotPasswordViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Nhập địa chỉ email bạn đã sử dụng để đăng ký. Một liên kết mà bạn có thể đặt lại mật khẩu của mình sau đó sẽ được gửi đến nó.';
	@override String get ifNoEmail => 'Nếu bạn không sử dụng email lúc đăng ký, vui lòng liên hệ với quản trị viên.';
	@override String get contactAdmin => 'Máy chủ này không hỗ trợ sử dụng địa chỉ email, vui lòng liên hệ với quản trị viên để đặt lại mật khẩu của bạn.';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryViVn extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get my => 'Kho Ảnh';
	@override String get liked => 'Tút Đã Thích';
	@override String get like => 'Thích';
	@override String get unlike => 'Bỏ thích';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailViVn extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowViVn follow_ = _TranslationsMisskeyEmailFollowViVn._(_root);
	@override late final _TranslationsMisskeyEmailReceiveFollowRequestViVn receiveFollowRequest_ = _TranslationsMisskeyEmailReceiveFollowRequestViVn._(_root);
}

// Path: misskey.plugin_
class _TranslationsMisskeyPluginViVn extends TranslationsMisskeyPluginEnUs {
	_TranslationsMisskeyPluginViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get install => 'Cài đặt tiện ích';
	@override String get installWarn => 'Vui lòng không cài đặt những tiện ích đáng ngờ.';
	@override String get manage => 'Quản lý plugin';
	@override String get viewSource => 'Xem mã nguồn';
}

// Path: misskey.preferencesBackups_
class _TranslationsMisskeyPreferencesBackupsViVn extends TranslationsMisskeyPreferencesBackupsEnUs {
	_TranslationsMisskeyPreferencesBackupsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get list => 'Tạo sao lưu';
	@override String get saveNew => 'Lưu bản sao lưu';
	@override String get loadFile => 'Nhập tập tin';
	@override String get apply => 'Áp dụng lên thiết bị này';
	@override String get save => 'Lưu thay đổi';
	@override String get inputName => 'Nhập tên bản sao lưu';
	@override String get cannotSave => 'Không thể lưu';
	@override String nameAlreadyExists({required Object name}) => 'Bản sao lưu "${name}" đã tồn tại. Xin nhập tên khác.';
	@override String applyConfirm({required Object name}) => 'Bạn có chắc muốn áp dụng bản sao lưu "${name}" cho thiết bị này? Thiết lập hiện tại sẽ bị ghi đè.';
	@override String saveConfirm({required Object name}) => 'Lưu bản sao lưu ${name}?';
	@override String deleteConfirm({required Object name}) => 'Xóa bản sao lưu ${name}?';
	@override String renameConfirm({required Object old, required Object new_}) => 'Đổi tên bản sao lưu "${old}" thành "${new_}"?';
	@override String get noBackups => 'Chưa có bản sao lưu. Bạn có thể sao lưu thiết lập trên máy chủ này bằng cách sử dụng "Tạo sao lưu".';
	@override String createdAt({required Object time, required Object date}) => 'Tạo vào: ${time} ${date}';
	@override String updatedAt({required Object time, required Object date}) => 'Cập nhật: ${time} ${date}';
	@override String get cannotLoad => 'Tải thất bại';
	@override String get invalidFile => 'Sai định dạng tập tin';
}

// Path: misskey.registry_
class _TranslationsMisskeyRegistryViVn extends TranslationsMisskeyRegistryEnUs {
	_TranslationsMisskeyRegistryViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Phạm vi';
	@override String get key => 'Mã';
	@override String get keys => 'Các mã';
	@override String get domain => 'Tên miền';
	@override String get createKey => 'Tạo mã';
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeyViVn extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeyViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey là phần mềm mã nguồn mở được phát triển bởi syuilo từ năm 2014.';
	@override String get contributors => 'Những người đóng góp nổi bật';
	@override String get allContributors => 'Toàn bộ người đóng góp';
	@override String get source => 'Mã nguồn';
	@override String get translation => 'Dịch Misskey';
	@override String get donate => 'Ủng hộ Misskey';
	@override String get morePatrons => 'Chúng tôi cũng trân trọng sự hỗ trợ của nhiều người đóng góp khác không được liệt kê ở đây. Cảm ơn! 🥰';
	@override String get patrons => 'Người ủng hộ';
}

// Path: misskey.instanceTicker_
class _TranslationsMisskeyInstanceTickerViVn extends TranslationsMisskeyInstanceTickerEnUs {
	_TranslationsMisskeyInstanceTickerViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get none => 'Không hiển thị';
	@override String get remote => 'Hiện cho người dùng từ máy chủ khác';
	@override String get always => 'Luôn hiện';
}

// Path: misskey.serverDisconnectedBehavior_
class _TranslationsMisskeyServerDisconnectedBehaviorViVn extends TranslationsMisskeyServerDisconnectedBehaviorEnUs {
	_TranslationsMisskeyServerDisconnectedBehaviorViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Tự động tải lại';
	@override String get dialog => 'Hiện hộp thoại cảnh báo';
	@override String get quiet => 'Hiển thị cảnh báo không phô trương';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelViVn extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get create => 'Tạo kênh';
	@override String get edit => 'Chỉnh sửa kênh';
	@override String get setBanner => 'Đặt ảnh bìa';
	@override String get removeBanner => 'Xóa ảnh bìa';
	@override String get featured => 'Xu hướng';
	@override String get owned => 'Do tôi quản lý';
	@override String get following => 'Đang theo dõi';
	@override String usersCount({required Object n}) => '${n} Thành viên';
	@override String notesCount({required Object n}) => '${n} Tút';
}

// Path: misskey.menuDisplay_
class _TranslationsMisskeyMenuDisplayViVn extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplayViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Thanh bên';
	@override String get sideIcon => 'Thanh bên (Biểu tượng)';
	@override String get top => 'Trên cùng';
	@override String get hide => 'Ẩn';
}

// Path: misskey.wordMute_
class _TranslationsMisskeyWordMuteViVn extends TranslationsMisskeyWordMuteEnUs {
	_TranslationsMisskeyWordMuteViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Ẩn từ ngữ';
	@override String get muteWordsDescription => 'Separate with spaces for an AND condition or with line breaks for an OR condition.';
	@override String get muteWordsDescription2 => 'Bao quanh các từ khóa bằng dấu gạch chéo để sử dụng cụm từ thông dụng.';
}

// Path: misskey.instanceMute_
class _TranslationsMisskeyInstanceMuteViVn extends TranslationsMisskeyInstanceMuteEnUs {
	_TranslationsMisskeyInstanceMuteViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Thao tác này sẽ ẩn mọi tút/lượt đăng lại từ các máy chủ được liệt kê, bao gồm cả những tút  dạng trả lời từ máy chủ bị ẩn.';
	@override String get instanceMuteDescription2 => 'Tách bằng cách xuống dòng';
	@override String get title => 'Ẩn tút từ những máy chủ đã liệt kê.';
	@override String get heading => 'Danh sách những máy chủ bị ẩn';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeViVn extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get explore => 'Khám phá theme';
	@override String get install => 'Cài đặt theme';
	@override String get manage => 'Quản lý theme';
	@override String get code => 'Mã theme';
	@override String get description => 'Mô tả';
	@override String installed({required Object name}) => '${name} đã được cài đặt';
	@override String get installedThemes => 'Theme đã cài đặt';
	@override String get builtinThemes => 'Theme tích hợp sẵn';
	@override String get alreadyInstalled => 'Theme này đã được cài đặt';
	@override String get invalid => 'Định dạng của theme này không hợp lệ';
	@override String get make => 'Tạo theme';
	@override String get base => 'Dựa trên có sẵn';
	@override String get addConstant => 'Thêm hằng số';
	@override String get constant => 'Hằng số';
	@override String get defaultValue => 'Giá trị mặc định';
	@override String get color => 'Màu sắc';
	@override String get refProp => 'Tham chiếu một thuộc tính';
	@override String get refConst => 'Tham chiếu một hằng số';
	@override String get key => 'Khóa';
	@override String get func => 'Hàm';
	@override String get funcKind => 'Loại hàm';
	@override String get argument => 'Tham số';
	@override String get basedProp => 'Thuộc tính tham chiếu';
	@override String get alpha => 'Độ trong suốt';
	@override String get darken => 'Độ tối';
	@override String get lighten => 'Độ sáng';
	@override String get inputConstantName => 'Nhập tên cho hằng số này';
	@override String get importInfo => 'Nếu bạn nhập mã theme ở đây, bạn có thể nhập mã đó vào trình chỉnh sửa theme';
	@override String deleteConstantConfirm({required Object const_}) => 'Bạn có chắc muốn xóa hằng số ${const_} không?';
	@override late final _TranslationsMisskeyThemeKeysViVn keys = _TranslationsMisskeyThemeKeysViVn._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxViVn extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get note => 'Tút';
	@override String get noteMy => 'Tút của tôi';
	@override String get notification => 'Thông báo';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoViVn extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get future => 'Tương lai';
	@override String get justNow => 'Vừa xong';
	@override String secondsAgo({required Object n}) => '${n}s trước';
	@override String minutesAgo({required Object n}) => '${n} phút trước';
	@override String hoursAgo({required Object n}) => '${n} giờ trước';
	@override String daysAgo({required Object n}) => '${n} ngày trước';
	@override String weeksAgo({required Object n}) => '${n} tuần trước';
	@override String monthsAgo({required Object n}) => '${n} tháng trước';
	@override String yearsAgo({required Object n}) => '${n} năm trước';
	@override String get invalid => 'Không có gì ở đây';
}

// Path: misskey.time_
class _TranslationsMisskeyTimeViVn extends TranslationsMisskeyTimeEnUs {
	_TranslationsMisskeyTimeViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get second => 's';
	@override String get minute => 'phút';
	@override String get hour => 'giờ';
	@override String get day => 'ngày';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faViVn extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'Bạn đã đăng ký thiết bị xác minh 2 bước.';
	@override String get registerTOTP => 'Đăng ký ứng dụng xác thực';
	@override String step1({required Object a, required Object b}) => 'Trước tiên, hãy cài đặt một ứng dụng xác minh (chẳng hạn như ${a} hoặc ${b}) trên thiết bị của bạn.';
	@override String get step2 => 'Sau đó, quét mã QR hiển thị trên màn hình này.';
	@override String get step3Title => 'Nhập mã xác thực';
	@override String get step3 => 'Nhập mã token do ứng dụng của bạn cung cấp để hoàn tất thiết lập.';
	@override String get step4 => 'Kể từ bây giờ, những lần đăng nhập trong tương lai sẽ yêu cầu mã token đăng nhập đó.';
	@override String get securityKeyNotSupported => 'Trình duyệt của bạn không hỗ trợ khóa bảo mật';
	@override String get registerTOTPBeforeKey => 'Vui lòng thiết lập một ứng dụng xác thực để đăng ký khóa bảo mật hoặc mật khẩu.';
	@override String get securityKeyInfo => 'Bên cạnh xác minh bằng vân tay hoặc mã PIN, bạn cũng có thể thiết lập xác minh thông qua khóa bảo mật phần cứng hỗ trợ FIDO2 để bảo mật hơn nữa cho tài khoản của mình.';
	@override String get registerSecurityKey => 'Tạo khóa bảo mật hoặc mã bảo mật';
	@override String get securityKeyName => 'Nhập tên khóa bảo mật';
	@override String get tapSecurityKey => 'Vui lòng làm theo hướng dẫn của trình duyệt để đăng ký mã bảo mật hoặc mã khóa';
	@override String get removeKey => 'Xóa mã bảo mật';
	@override String removeKeyConfirm({required Object name}) => 'Xóa bản sao lưu ${name}?';
	@override String get renewTOTP => 'Cài đặt lại ứng dụng xác thực';
	@override String get renewTOTPConfirm => 'Mã xác nhận cũ của ứng dụng xác thực không thể sử dụng được nữa';
	@override String get renewTOTPOk => 'Cài đặt lại';
	@override String get renewTOTPCancel => 'Không, cảm ơn';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsViVn extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'Xem thông tin tài khoản của bạn';
	@override String get writeAccount => 'Sửa thông tin tài khoản của bạn';
	@override String get readBlocks => 'Xem danh sách người bạn chặn';
	@override String get writeBlocks => 'Sửa danh sách người bạn chặn';
	@override String get readDrive => 'Truy cập tập tin, thư mục trong Ổ đĩa';
	@override String get writeDrive => 'Sửa và xóa tập tin, thư mục trong Ổ đĩa';
	@override String get readFavorites => 'Xem lượt thích của tôi';
	@override String get writeFavorites => 'Sửa lượt thích của tôi';
	@override String get readFollowing => 'Xem những người bạn theo dõi';
	@override String get writeFollowing => 'Theo dõi hoặc ngưng theo dõi ai đó';
	@override String get readMessaging => 'Xem lịch sử chat';
	@override String get writeMessaging => 'Soạn hoặc xóa tin nhắn';
	@override String get readMutes => 'Xem những người bạn ẩn';
	@override String get writeMutes => 'Sửa những người bạn ẩn';
	@override String get writeNotes => 'Soạn hoặc xóa tút';
	@override String get readNotifications => 'Xem thông báo của tôi';
	@override String get writeNotifications => 'Quản lý thông báo của tôi';
	@override String get readReactions => 'Xem lượt biểu cảm của tôi';
	@override String get writeReactions => 'Sửa lượt biểu cảm của tôi';
	@override String get writeVotes => 'Bình chọn';
	@override String get readPages => 'Xem trang của tôi';
	@override String get writePages => 'Sửa hoặc xóa trang của tôi';
	@override String get readPageLikes => 'Xem lượt thích trên trang của tôi';
	@override String get writePageLikes => 'Sửa lượt thích của tôi trên trang';
	@override String get readUserGroups => 'Xem nhóm của tôi';
	@override String get writeUserGroups => 'Sửa hoặc xóa nhóm của tôi';
	@override String get readChannels => 'Xem kênh của tôi';
	@override String get writeChannels => 'Sửa kênh của tôi';
	@override String get readGallery => 'Xem kho ảnh của tôi';
	@override String get writeGallery => 'Sửa kho ảnh của tôi';
	@override String get readGalleryLikes => 'Xem danh sách các tút đã thích trong thư viện của tôi';
	@override String get writeGalleryLikes => 'Sửa danh sách các tút đã thích trong thư viện của tôi';
	@override String get writeChat => 'Soạn hoặc xóa tin nhắn';
}

// Path: misskey.auth_
class _TranslationsMisskeyAuthViVn extends TranslationsMisskeyAuthEnUs {
	_TranslationsMisskeyAuthViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'Cho phép truy cập app';
	@override String shareAccess({required Object name}) => 'Bạn có muốn cho phép "${name}" truy cập vào tài khoản này không?';
	@override String get shareAccessAsk => 'Bạn có chắc muốn cho phép ứng dụng này truy cập vào tài khoản của mình không?';
	@override String permission({required Object name}) => '${name} đang yêu cầu quyền hạn dưới đây';
	@override String get permissionAsk => 'Ứng dụng này yêu cầu các quyền sau';
	@override String get pleaseGoBack => 'Vui lòng quay lại ứng dụng';
	@override String get callback => 'Quay lại ứng dụng';
	@override String get denied => 'Truy cập bị từ chối';
	@override String get pleaseLogin => 'Bạn phải đăng nhập để cho ứng dụng phép truy cập';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesViVn extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get all => 'Toàn bộ tút';
	@override String get homeTimeline => 'Tút từ những người đã theo dõi';
	@override String get users => 'Tút từ những người cụ thể';
	@override String get userList => 'Tút từ danh sách người dùng cụ thể';
}

// Path: misskey.weekday_
class _TranslationsMisskeyWeekdayViVn extends TranslationsMisskeyWeekdayEnUs {
	_TranslationsMisskeyWeekdayViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get sunday => 'Chủ Nhật';
	@override String get monday => 'Thứ Hai';
	@override String get tuesday => 'Thứ Ba';
	@override String get wednesday => 'Thứ Tư';
	@override String get thursday => 'Thứ Năm';
	@override String get friday => 'Thứ Sáu';
	@override String get saturday => 'Thứ Bảy';
}

// Path: misskey.widgets_
class _TranslationsMisskeyWidgetsViVn extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Trang cá nhân';
	@override String get instanceInfo => 'Thông tin máy chủ';
	@override String get memo => 'Tút đã ghim';
	@override String get notifications => 'Thông báo';
	@override String get timeline => 'Bảng tin';
	@override String get calendar => 'Lịch';
	@override String get trends => 'Xu hướng';
	@override String get clock => 'Đồng hồ';
	@override String get rss => 'Trình đọc RSS';
	@override String get rssTicker => 'RSS-Ticker';
	@override String get activity => 'Hoạt động';
	@override String get photos => 'Kho ảnh';
	@override String get digitalClock => 'Đồng hồ số';
	@override String get unixClock => 'Đồng hồ UNIX';
	@override String get federation => 'Liên hợp';
	@override String get instanceCloud => 'Instance cloud';
	@override String get postForm => 'Mẫu đăng';
	@override String get slideshow => 'Trình chiếu';
	@override String get button => 'Nút';
	@override String get onlineUsers => 'Ai đang online';
	@override String get jobQueue => 'Công việc chờ xử lý';
	@override String get serverMetric => 'Thống kê máy chủ';
	@override String get aiscript => 'AiScript console';
	@override String get aiscriptApp => 'AiScript App';
	@override String get aichan => 'Ai';
	@override String get userList => 'Danh sách người dùng';
	@override late final _TranslationsMisskeyWidgetsUserListViVn userList_ = _TranslationsMisskeyWidgetsUserListViVn._(_root);
	@override String get clicker => 'clicker';
}

// Path: misskey.widgetOptions_
class _TranslationsMisskeyWidgetOptionsViVn extends TranslationsMisskeyWidgetOptionsEnUs {
	_TranslationsMisskeyWidgetOptionsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get height => 'Chiều cao';
	@override late final _TranslationsMisskeyWidgetOptionsButtonViVn button_ = _TranslationsMisskeyWidgetOptionsButtonViVn._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsClockViVn clock_ = _TranslationsMisskeyWidgetOptionsClockViVn._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsBirthdayFollowingsViVn birthdayFollowings_ = _TranslationsMisskeyWidgetOptionsBirthdayFollowingsViVn._(_root);
}

// Path: misskey.cw_
class _TranslationsMisskeyCwViVn extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Ẩn';
	@override String get show => 'Tải thêm';
	@override String chars({required Object count}) => '${count} ký tự';
	@override String files({required Object count}) => '${count} tập tin';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollViVn extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'Cần ít nhất hai lựa chọn.';
	@override String choiceN({required Object n}) => 'Lựa chọn ${n}';
	@override String get noMore => 'Bạn không thể thêm lựa chọn';
	@override String get canMultipleVote => 'Cho phép chọn nhiều lựa chọn';
	@override String get expiration => 'Thời hạn';
	@override String get infinite => 'Vĩnh viễn';
	@override String get at => 'Kết thúc vào...';
	@override String get after => 'Kết thúc sau...';
	@override String get deadlineDate => 'Ngày kết thúc';
	@override String get deadlineTime => 'giờ';
	@override String get duration => 'Thời hạn';
	@override String votesCount({required Object n}) => '${n} bình chọn';
	@override String totalVotes({required Object n}) => '${n} tổng bình chọn';
	@override String get vote => 'Bình chọn';
	@override String get showResult => 'Xem kết quả';
	@override String get voted => 'Đã bình chọn';
	@override String get closed => 'Đã kết thúc';
	@override String remainingDays({required Object d, required Object h}) => '${d} ngày ${h} giờ còn lại';
	@override String remainingHours({required Object h, required Object m}) => '${h} giờ ${m} phút còn lại';
	@override String remainingMinutes({required Object m, required Object s}) => '${m} phút ${s}s còn lại';
	@override String remainingSeconds({required Object s}) => '${s}s còn lại';
}

// Path: misskey.visibility_
class _TranslationsMisskeyVisibilityViVn extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get public => 'Công khai';
	@override String get publicDescription => 'Mọi người đều có thể đọc tút của bạn';
	@override String get home => 'Trang chính';
	@override String get homeDescription => 'Chỉ đăng lên bảng tin nhà';
	@override String get followers => 'Người theo dõi';
	@override String get followersDescription => 'Dành riêng cho người theo dõi';
	@override String get specified => 'Nhắn riêng';
	@override String get specifiedDescription => 'Chỉ người được nhắc đến mới thấy';
	@override String get disableFederation => 'Không liên hợp';
	@override String get disableFederationDescription => 'Không đưa tin cho chủ máy khác';
}

// Path: misskey.postForm_
class _TranslationsMisskeyPostFormViVn extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'Trả lời tút này';
	@override String get quotePlaceholder => 'Trích dẫn tút này';
	@override String get channelPlaceholder => 'Đăng lên một kênh';
	@override late final _TranslationsMisskeyPostFormHowToUseViVn howToUse_ = _TranslationsMisskeyPostFormHowToUseViVn._(_root);
	@override late final _TranslationsMisskeyPostFormPlaceholdersViVn placeholders_ = _TranslationsMisskeyPostFormPlaceholdersViVn._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileViVn extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tên';
	@override String get username => 'Tên người dùng';
	@override String get description => 'Tiểu sử';
	@override String get youCanIncludeHashtags => 'Bạn có thể dùng hashtag trong tiểu sử.';
	@override String get metadata => 'Thông tin bổ sung';
	@override String get metadataEdit => 'Sửa thông tin bổ sung';
	@override String get metadataDescription => 'Sử dụng phần này, bạn có thể hiển thị các mục thông tin bổ sung trong hồ sơ của mình.';
	@override String get metadataLabel => 'Nhãn';
	@override String get metadataContent => 'Nội dung';
	@override String get changeAvatar => 'Đổi ảnh đại diện';
	@override String get changeBanner => 'Đổi ảnh bìa';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportViVn extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Toàn bộ tút';
	@override String get favoritedNotes => 'Bài viết đã thích';
	@override String get clips => 'Lưu bài viết';
	@override String get followingList => 'Đang theo dõi';
	@override String get muteList => 'Ẩn';
	@override String get blockingList => 'Chặn';
	@override String get userLists => 'Danh sách';
	@override String get excludeMutingUsers => 'Loại trừ những người dùng bị ẩn';
	@override String get excludeInactiveUsers => 'Loại trừ những người dùng không hoạt động';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsViVn extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Liên hợp';
	@override String get apRequest => 'Yêu cầu';
	@override String get usersIncDec => 'Sự khác biệt về số lượng người dùng';
	@override String get usersTotal => 'Tổng số người dùng';
	@override String get activeUsers => 'Số người đang hoạt động';
	@override String get notesIncDec => 'Sự khác biệt về số lượng tút';
	@override String get localNotesIncDec => 'Sự khác biệt về số lượng tút máy chủ này';
	@override String get remoteNotesIncDec => 'Sự khác biệt về số lượng tút từ máy chủ khác';
	@override String get notesTotal => 'Tổng số sút';
	@override String get filesIncDec => 'Sự khác biệt về số lượng tập tin';
	@override String get filesTotal => 'Tổng số tập tin';
	@override String get storageUsageIncDec => 'Sự khác biệt về dung lượng lưu trữ';
	@override String get storageUsageTotal => 'Tổng dung lượng lưu trữ';
}

// Path: misskey.instanceCharts_
class _TranslationsMisskeyInstanceChartsViVn extends TranslationsMisskeyInstanceChartsEnUs {
	_TranslationsMisskeyInstanceChartsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get requests => 'Lượt yêu cầu';
	@override String get users => 'Sự khác biệt về số lượng người dùng';
	@override String get usersTotal => 'Số lượng người dùng tích lũy';
	@override String get notes => 'Sự khác biệt về số lượng tút';
	@override String get notesTotal => 'Số lượng tút tích lũy';
	@override String get ff => 'Sự khác biệt về số lượng người dùng được theo dõi/người theo dõi';
	@override String get ffTotal => 'Số lượng người dùng được theo dõi/người theo dõi tích lũy';
	@override String get cacheSize => 'Sự khác biệt về dung lượng bộ nhớ đệm';
	@override String get cacheSizeTotal => 'Dung lượng bộ nhớ đệm tích lũy';
	@override String get files => 'Sự khác biệt về số lượng tập tin';
	@override String get filesTotal => 'Số lượng tập tin tích lũy';
}

// Path: misskey.timelines_
class _TranslationsMisskeyTimelinesViVn extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get home => 'Trang chính';
	@override String get local => 'Máy chủ này';
	@override String get social => 'Xã hội';
	@override String get global => 'Liên hợp';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayViVn extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Tạo Play mới';
	@override String get edit => 'Edit play';
	@override String get created => 'Bạn vừa tạo play rồi';
	@override String get updated => 'Bạn vừa cập nhật play rồi';
	@override String get deleted => 'Bạn vừa xóa play rồi';
	@override String get pageSetting => 'Cài đặt play';
	@override String get editThisPage => 'Edit play này';
	@override String get viewSource => 'Xem mã nguồn';
	@override String get my => 'Play của mình';
	@override String get liked => 'Play đã thích';
	@override String get featured => 'Nổi tiếng';
	@override String get title => 'Tựa đề';
	@override String get script => 'Kịch bản';
	@override String get summary => 'Mô tả';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesViVn extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'Tạo Trang mới';
	@override String get editPage => 'Sửa Trang này';
	@override String get readPage => 'Xem mã nguồn Trang này';
	@override String get pageSetting => 'Cài đặt trang';
	@override String get nameAlreadyExists => 'URL Trang đã tồn tại';
	@override String get invalidNameTitle => 'URL Trang không hợp lệ';
	@override String get invalidNameText => 'Không được để trống tựa đề Trang';
	@override String get editThisPage => 'Sửa Trang này';
	@override String get viewSource => 'Xem mã nguồn';
	@override String get viewPage => 'Xem trang của tôi';
	@override String get like => 'Thích';
	@override String get unlike => 'Bỏ thích';
	@override String get my => 'Trang của tôi';
	@override String get liked => 'Trang đã thích';
	@override String get featured => 'Nổi tiếng';
	@override String get inspector => 'Thanh tra';
	@override String get contents => 'Nội dung';
	@override String get content => 'Chặn Trang';
	@override String get variables => 'Biến thể';
	@override String get title => 'Tựa đề';
	@override String get url => 'URL Trang';
	@override String get summary => 'Mô tả Trang';
	@override String get alignCenter => 'Căn giữa';
	@override String get hideTitleWhenPinned => 'Ẩn tựa đề Trang khi ghim lên hồ sơ';
	@override String get font => 'Phông chữ';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans Serif';
	@override String get eyeCatchingImageSet => 'Đặt ảnh thu nhỏ';
	@override String get eyeCatchingImageRemove => 'Xóa ảnh thu nhỏ';
	@override String get chooseBlock => 'Thêm khối';
	@override String get selectType => 'Chọn kiểu';
	@override String get contentBlocks => 'Nội dung';
	@override String get inputBlocks => 'Nhập';
	@override String get specialBlocks => 'Đặc biệt';
	@override late final _TranslationsMisskeyPagesBlocksViVn blocks = _TranslationsMisskeyPagesBlocksViVn._(_root);
}

// Path: misskey.relayStatus_
class _TranslationsMisskeyRelayStatusViVn extends TranslationsMisskeyRelayStatusEnUs {
	_TranslationsMisskeyRelayStatusViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'Đang chờ';
	@override String get accepted => 'Đã duyệt';
	@override String get rejected => 'Đã từ chối';
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationViVn extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'Đã tải lên tập tin';
	@override String youGotMention({required Object name}) => '${name} nhắc đến bạn';
	@override String youGotReply({required Object name}) => '${name} trả lời bạn';
	@override String youGotQuote({required Object name}) => '${name} trích dẫn tút của bạn';
	@override String youRenoted({required Object name}) => '${name} đăng lại tút của bạn';
	@override String get youWereFollowed => 'đã theo dõi bạn';
	@override String get youReceivedFollowRequest => 'Bạn vừa có một yêu cầu theo dõi';
	@override String get yourFollowRequestAccepted => 'Yêu cầu theo dõi của bạn đã được chấp nhận';
	@override String get pollEnded => 'Cuộc bình chọn đã kết thúc';
	@override String unreadAntennaNote({required Object name}) => 'Ăng ten ${name}';
	@override String get emptyPushNotificationMessage => 'Đã cập nhật thông báo đẩy';
	@override String get achievementEarned => 'Hoàn thành Achievement';
	@override late final _TranslationsMisskeyNotificationTypesViVn types_ = _TranslationsMisskeyNotificationTypesViVn._(_root);
	@override late final _TranslationsMisskeyNotificationActionsViVn actions_ = _TranslationsMisskeyNotificationActionsViVn._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckViVn extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Luôn hiện cột chính';
	@override String get columnAlign => 'Căn cột';
	@override String get addColumn => 'Thêm cột';
	@override String get configureColumn => 'Cài đặt cột';
	@override String get swapLeft => 'Hoán đổi với cột bên trái';
	@override String get swapRight => 'Hoán đổi với cột bên phải';
	@override String get swapUp => 'Hoán đổi với cột trên';
	@override String get swapDown => 'Hoán đổi với cột dưới';
	@override String get stackLeft => 'Xếp chồng với cột bên trái';
	@override String get popRight => 'Xếp chồng với cột bên trái';
	@override String get profile => 'Hồ sơ';
	@override String get newProfile => 'Hồ sơ mới';
	@override String get deleteProfile => 'Xóa hồ sơ';
	@override String get introduction => 'Kết hợp các cột để tạo giao diện của riêng bạn!';
	@override String get introduction2 => 'Bạn có thể thêm cột bất kỳ lúc nào bằng cách nhấn + ở bên phải màn hình.';
	@override String get widgetsIntroduction => 'Chọn "Sửa widget" trong menu cột và thêm một widget.';
	@override late final _TranslationsMisskeyDeckColumnsViVn columns_ = _TranslationsMisskeyDeckColumnsViVn._(_root);
}

// Path: misskey.dialog_
class _TranslationsMisskeyDialogViVn extends TranslationsMisskeyDialogEnUs {
	_TranslationsMisskeyDialogViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => 'Bạn nhắn quá giới hạn ký tự!! Hiện nay ${current} / giới hạn ${max}';
	@override String charactersBelow({required Object current, required Object min}) => 'Bạn nhắn quá ít tối thiểu ký tự!! Hiện nay ${current} / Tối thiểu ${min}';
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsViVn extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Tạo Webhook';
	@override String get name => 'Tên';
	@override String get secret => 'Mã bí mật';
	@override String get active => 'Đã bật';
	@override late final _TranslationsMisskeyWebhookSettingsEventsViVn events_ = _TranslationsMisskeyWebhookSettingsEventsViVn._(_root);
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportViVn extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientViVn notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientViVn._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesViVn extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get createRole => 'Tạo một vai trò';
	@override String get deleteRole => 'Xóa vai trò';
	@override String get updateRole => 'Cập nhật vai trò';
	@override String get assignRole => 'Chỉ định cho vai trò';
	@override String get unassignRole => 'Bỏ gán vai trò';
	@override String get suspend => 'Vô hiệu hóa';
	@override String get unsuspend => 'Rã đông';
	@override String get resetPassword => 'Đặt lại mật khẩu';
	@override String get createInvitation => 'Tạo lời mời';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiViVn extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get total => 'Tổng cộng';
}

// Path: misskey.customEmojisManager_
class _TranslationsMisskeyCustomEmojisManagerViVn extends TranslationsMisskeyCustomEmojisManagerEnUs {
	_TranslationsMisskeyCustomEmojisManagerViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalViVn local_ = _TranslationsMisskeyCustomEmojisManagerLocalViVn._(_root);
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsViVn extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectViVn noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectViVn._(_root);
}

// Path: misskey.search_
class _TranslationsMisskeySearchViVn extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Tất cả';
	@override String get searchScopeLocal => 'Máy chủ này';
	@override String get searchScopeUser => 'Người dùng chỉ định';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorViVn extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get opacity => 'Độ trong suốt';
	@override String get scale => 'Kích thước';
	@override String get text => 'Văn bản';
	@override String get position => 'Vị trí';
	@override String get type => 'Loại';
	@override String get image => 'Hình ảnh';
	@override String get advanced => 'Nâng cao';
	@override String get angle => 'Góc';
}

// Path: misskey.imageEffector_
class _TranslationsMisskeyImageEffectorViVn extends TranslationsMisskeyImageEffectorEnUs {
	_TranslationsMisskeyImageEffectorViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyImageEffectorFxPropsViVn fxProps_ = _TranslationsMisskeyImageEffectorFxPropsViVn._(_root);
}

// Path: misskey.qr_
class _TranslationsMisskeyQrViVn extends TranslationsMisskeyQrEnUs {
	_TranslationsMisskeyQrViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get showTabTitle => 'Hiển thị';
	@override String get raw => 'Văn bản';
}

// Path: misskey.imageEditing_.vars_
class _TranslationsMisskeyImageEditingVarsViVn extends TranslationsMisskeyImageEditingVarsEnUs {
	_TranslationsMisskeyImageEditingVarsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get filename => 'Tên tập tin';
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypeViVn extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypeViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get none => 'Đang đăng';
}

// Path: misskey.initialTutorial_.landing_
class _TranslationsMisskeyInitialTutorialLandingViVn extends TranslationsMisskeyInitialTutorialLandingEnUs {
	_TranslationsMisskeyInitialTutorialLandingViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chào mừng đến với Hướng dẫn';
	@override String get description => 'Tại đây, bạn có thể tìm hiểu những điều cơ bản về cách sử dụng Misskey và các tính năng của nó.';
}

// Path: misskey.initialTutorial_.note_
class _TranslationsMisskeyInitialTutorialNoteViVn extends TranslationsMisskeyInitialTutorialNoteEnUs {
	_TranslationsMisskeyInitialTutorialNoteViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bài Viết là gì?';
	@override String get description => 'Các bài đăng trên Misskey được gọi là \'Bài Viết\'. Ghi chú được sắp xếp theo thứ tự thời gian trên dòng thời gian và được cập nhật theo thời gian thực.';
}

// Path: misskey.initialTutorial_.timeline_
class _TranslationsMisskeyInitialTutorialTimelineViVn extends TranslationsMisskeyInitialTutorialTimelineEnUs {
	_TranslationsMisskeyInitialTutorialTimelineViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get home => 'Bạn có thể xem ghi chú từ những tài khoản bạn theo dõi.';
	@override String get local => 'Bạn có thể xem ghi chú từ tất cả người dùng trên máy chủ này.';
	@override String get social => 'Ghi chú từ dòng thời gian Trang chủ và Địa phương sẽ được hiển thị.';
	@override String get global => 'Bạn có thể xem ghi chú từ tất cả các máy chủ được kết nối.';
}

// Path: misskey.initialTutorial_.postNote_
class _TranslationsMisskeyInitialTutorialPostNoteViVn extends TranslationsMisskeyInitialTutorialPostNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyInitialTutorialPostNoteVisibilityViVn visibility_ = _TranslationsMisskeyInitialTutorialPostNoteVisibilityViVn._(_root);
}

// Path: misskey.achievements_.types_
class _TranslationsMisskeyAchievementsTypesViVn extends TranslationsMisskeyAchievementsTypesEnUs {
	_TranslationsMisskeyAchievementsTypesViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesNotes1ViVn notes1_ = _TranslationsMisskeyAchievementsTypesNotes1ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10ViVn notes10_ = _TranslationsMisskeyAchievementsTypesNotes10ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100ViVn notes100_ = _TranslationsMisskeyAchievementsTypesNotes100ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes500ViVn notes500_ = _TranslationsMisskeyAchievementsTypesNotes500ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes1000ViVn notes1000_ = _TranslationsMisskeyAchievementsTypesNotes1000ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes5000ViVn notes5000_ = _TranslationsMisskeyAchievementsTypesNotes5000ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10000ViVn notes10000_ = _TranslationsMisskeyAchievementsTypesNotes10000ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes20000ViVn notes20000_ = _TranslationsMisskeyAchievementsTypesNotes20000ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes30000ViVn notes30000_ = _TranslationsMisskeyAchievementsTypesNotes30000ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes40000ViVn notes40000_ = _TranslationsMisskeyAchievementsTypesNotes40000ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes50000ViVn notes50000_ = _TranslationsMisskeyAchievementsTypesNotes50000ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100000ViVn notes100000_ = _TranslationsMisskeyAchievementsTypesNotes100000ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin3ViVn login3_ = _TranslationsMisskeyAchievementsTypesLogin3ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin7ViVn login7_ = _TranslationsMisskeyAchievementsTypesLogin7ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin15ViVn login15_ = _TranslationsMisskeyAchievementsTypesLogin15ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin30ViVn login30_ = _TranslationsMisskeyAchievementsTypesLogin30ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin60ViVn login60_ = _TranslationsMisskeyAchievementsTypesLogin60ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin100ViVn login100_ = _TranslationsMisskeyAchievementsTypesLogin100ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin200ViVn login200_ = _TranslationsMisskeyAchievementsTypesLogin200ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin300ViVn login300_ = _TranslationsMisskeyAchievementsTypesLogin300ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin400ViVn login400_ = _TranslationsMisskeyAchievementsTypesLogin400ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin1000ViVn login1000_ = _TranslationsMisskeyAchievementsTypesLogin1000ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteFavorited1ViVn noteFavorited1_ = _TranslationsMisskeyAchievementsTypesNoteFavorited1ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMyNoteFavorited1ViVn myNoteFavorited1_ = _TranslationsMisskeyAchievementsTypesMyNoteFavorited1ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesProfileFilledViVn profileFilled_ = _TranslationsMisskeyAchievementsTypesProfileFilledViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMarkedAsCatViVn markedAsCat_ = _TranslationsMisskeyAchievementsTypesMarkedAsCatViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing1ViVn following1_ = _TranslationsMisskeyAchievementsTypesFollowing1ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing10ViVn following10_ = _TranslationsMisskeyAchievementsTypesFollowing10ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing50ViVn following50_ = _TranslationsMisskeyAchievementsTypesFollowing50ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing100ViVn following100_ = _TranslationsMisskeyAchievementsTypesFollowing100ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing300ViVn following300_ = _TranslationsMisskeyAchievementsTypesFollowing300ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1ViVn followers1_ = _TranslationsMisskeyAchievementsTypesFollowers1ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers10ViVn followers10_ = _TranslationsMisskeyAchievementsTypesFollowers10ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers50ViVn followers50_ = _TranslationsMisskeyAchievementsTypesFollowers50ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers100ViVn followers100_ = _TranslationsMisskeyAchievementsTypesFollowers100ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers300ViVn followers300_ = _TranslationsMisskeyAchievementsTypesFollowers300ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers500ViVn followers500_ = _TranslationsMisskeyAchievementsTypesFollowers500ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1000ViVn followers1000_ = _TranslationsMisskeyAchievementsTypesFollowers1000ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCollectAchievements30ViVn collectAchievements30_ = _TranslationsMisskeyAchievementsTypesCollectAchievements30ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewAchievements3minViVn viewAchievements3min_ = _TranslationsMisskeyAchievementsTypesViewAchievements3minViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesILoveMisskeyViVn iLoveMisskey_ = _TranslationsMisskeyAchievementsTypesILoveMisskeyViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFoundTreasureViVn foundTreasure_ = _TranslationsMisskeyAchievementsTypesFoundTreasureViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient30minViVn client30min_ = _TranslationsMisskeyAchievementsTypesClient30minViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient60minViVn client60min_ = _TranslationsMisskeyAchievementsTypesClient60minViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minViVn noteDeletedWithin1min_ = _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAtLateNightViVn postedAtLateNight_ = _TranslationsMisskeyAchievementsTypesPostedAtLateNightViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAt0min0secViVn postedAt0min0sec_ = _TranslationsMisskeyAchievementsTypesPostedAt0min0secViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSelfQuoteViVn selfQuote_ = _TranslationsMisskeyAchievementsTypesSelfQuoteViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesHtl20npmViVn htl20npm_ = _TranslationsMisskeyAchievementsTypesHtl20npmViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewInstanceChartViVn viewInstanceChart_ = _TranslationsMisskeyAchievementsTypesViewInstanceChartViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadViVn outputHelloWorldOnScratchpad_ = _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOpen3windowsViVn open3windows_ = _TranslationsMisskeyAchievementsTypesOpen3windowsViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesReactWithoutReadViVn reactWithoutRead_ = _TranslationsMisskeyAchievementsTypesReactWithoutReadViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClickedClickHereViVn clickedClickHere_ = _TranslationsMisskeyAchievementsTypesClickedClickHereViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesJustPlainLuckyViVn justPlainLucky_ = _TranslationsMisskeyAchievementsTypesJustPlainLuckyViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSetNameToSyuiloViVn setNameToSyuilo_ = _TranslationsMisskeyAchievementsTypesSetNameToSyuiloViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1ViVn passedSinceAccountCreated1_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1ViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayViVn loggedInOnBirthday_ = _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayViVn loggedInOnNewYearsDay_ = _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayViVn._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCookieClickedViVn cookieClicked_ = _TranslationsMisskeyAchievementsTypesCookieClickedViVn._(_root);
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityViVn extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get low => 'Thấp';
	@override String get middle => 'Vừa';
	@override String get high => 'Cao';
}

// Path: misskey.role_.options_
class _TranslationsMisskeyRoleOptionsViVn extends TranslationsMisskeyRoleOptionsEnUs {
	_TranslationsMisskeyRoleOptionsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'Xem Timeline xã hội';
	@override String get ltlAvailable => 'Xem Timeline trong máy chủ này';
	@override String get canPublicNote => 'Cho phép đăng bài công khai';
	@override String get canManageCustomEmojis => 'Quản lý CustomEmoji';
	@override String get canManageAvatarDecorations => 'Quản lý trang trí ảnh đại diện';
	@override String get driveCapacity => 'Dữ liệu Drive';
	@override String get pinMax => 'Giới hạn ghim bài viết';
	@override String get antennaMax => 'Giới hạn tạo ăng ten';
	@override String get canHideAds => 'Tắt quảng cáo';
}

// Path: misskey.role_.condition_
class _TranslationsMisskeyRoleConditionViVn extends TranslationsMisskeyRoleConditionEnUs {
	_TranslationsMisskeyRoleConditionViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get createdMoreThan => 'Trôi qua ～ sau khi lập tài khoản';
	@override String get followersLessThanOrEq => 'Người theo dõi ít hơn ～';
	@override String get followersMoreThanOrEq => 'Người theo dõi có ～ trở lên';
	@override String get followingLessThanOrEq => 'Theo dõi ít hơn ～';
	@override String get followingMoreThanOrEq => 'Theo dõi có ～ trở lên';
	@override String get and => '～ mà ～';
	@override String get or => '～ hay là ～';
	@override String get not => 'Không phải ～';
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowViVn extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'đã theo dõi bạn';
}

// Path: misskey.email_.receiveFollowRequest_
class _TranslationsMisskeyEmailReceiveFollowRequestViVn extends TranslationsMisskeyEmailReceiveFollowRequestEnUs {
	_TranslationsMisskeyEmailReceiveFollowRequestViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chấp nhận yêu cầu theo dõi';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysViVn extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get accent => 'Màu phụ';
	@override String get bg => 'Màu nền';
	@override String get fg => 'Màu chữ';
	@override String get focus => 'Trọng tâm';
	@override String get indicator => 'Chỉ báo';
	@override String get panel => 'Thanh bên';
	@override String get shadow => 'Bóng mờ';
	@override String get header => 'Ảnh bìa';
	@override String get navBg => 'Nền thanh bên';
	@override String get navFg => 'Chữ thanh bên';
	@override String get navActive => 'Chữ thanh bên (Khi chọn)';
	@override String get navIndicator => 'Chỉ báo thanh bên';
	@override String get link => 'Đường dẫn';
	@override String get hashtag => 'Hashtag';
	@override String get mention => 'Nhắc đến';
	@override String get mentionMe => 'Lượt nhắc (Tôi)';
	@override String get renote => 'Đăng lại';
	@override String get modalBg => 'Nền phương thức';
	@override String get divider => 'Phân chia';
	@override String get scrollbarHandle => 'Thanh cuộn khi giữ';
	@override String get scrollbarHandleHover => 'Thanh cuộn khi chạm';
	@override String get dateLabelFg => 'Màu ngày tháng năm';
	@override String get infoBg => 'Nền thông tin';
	@override String get infoFg => 'Chữ thông tin';
	@override String get infoWarnBg => 'Nền cảnh báo';
	@override String get infoWarnFg => 'Chữ cảnh báo';
	@override String get toastBg => 'Nền thông báo';
	@override String get toastFg => 'Chữ thông báo';
	@override String get buttonBg => 'Nền nút';
	@override String get buttonHoverBg => 'Nền nút (Chạm)';
	@override String get inputBorder => 'Đường viền khung soạn thảo';
	@override String get badge => 'Huy hiệu';
	@override String get messageBg => 'Nền chat';
	@override String get fgHighlighted => 'Chữ nổi bật';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListViVn extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Chọn danh sách';
}

// Path: misskey.widgetOptions_.button_
class _TranslationsMisskeyWidgetOptionsButtonViVn extends TranslationsMisskeyWidgetOptionsButtonEnUs {
	_TranslationsMisskeyWidgetOptionsButtonViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get colored => 'Với màu';
}

// Path: misskey.widgetOptions_.clock_
class _TranslationsMisskeyWidgetOptionsClockViVn extends TranslationsMisskeyWidgetOptionsClockEnUs {
	_TranslationsMisskeyWidgetOptionsClockViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get size => 'Kích thước';
}

// Path: misskey.widgetOptions_.birthdayFollowings_
class _TranslationsMisskeyWidgetOptionsBirthdayFollowingsViVn extends TranslationsMisskeyWidgetOptionsBirthdayFollowingsEnUs {
	_TranslationsMisskeyWidgetOptionsBirthdayFollowingsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get period => 'Thời hạn';
}

// Path: misskey.postForm_.howToUse_
class _TranslationsMisskeyPostFormHowToUseViVn extends TranslationsMisskeyPostFormHowToUseEnUs {
	_TranslationsMisskeyPostFormHowToUseViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get visibility_title => 'Hiển thị';
	@override String get menu_title => 'Menu';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersViVn extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get a => 'Bạn đang định làm gì?';
	@override String get b => 'Hôm nay bạn có gì vui?';
	@override String get c => 'Bạn đang nghĩ gì?';
	@override String get d => 'Bạn muốn nói gì?';
	@override String get e => 'Cứ viết trên đây';
	@override String get f => 'Đang chờ bạn viết...';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksViVn extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get text => 'Văn bản';
	@override String get textarea => 'Khu vực văn bản';
	@override String get section => 'Mục ';
	@override String get image => 'Hình ảnh';
	@override String get button => 'Nút';
	@override String get note => 'Tút đã nhúng';
	@override late final _TranslationsMisskeyPagesBlocksNoteViVn note_ = _TranslationsMisskeyPagesBlocksNoteViVn._(_root);
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesViVn extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get all => 'Toàn bộ';
	@override String get follow => 'Đang theo dõi';
	@override String get mention => 'Nhắc đến';
	@override String get reply => 'Lượt trả lời';
	@override String get renote => 'Đăng lại';
	@override String get quote => 'Trích dẫn';
	@override String get reaction => 'Biểu cảm';
	@override String get pollEnded => 'Bình chọn kết thúc';
	@override String get receiveFollowRequest => 'Yêu cầu theo dõi';
	@override String get followRequestAccepted => 'Yêu cầu theo dõi được chấp nhận';
	@override String get achievementEarned => 'Hoàn thành Achievement';
	@override String get login => 'Đăng nhập';
	@override String get app => 'Từ app liên kết';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsViVn extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'đã theo dõi lại bạn';
	@override String get reply => 'Trả lời';
	@override String get renote => 'Đăng lại';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsViVn extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get main => 'Chính';
	@override String get widgets => 'Tiện ích';
	@override String get notifications => 'Thông báo';
	@override String get tl => 'Bảng tin';
	@override String get antenna => 'Trạm phát sóng';
	@override String get list => 'Danh sách';
	@override String get channel => 'Kênh';
	@override String get mentions => 'Lượt nhắc';
	@override String get direct => 'Nhắn riêng';
}

// Path: misskey.webhookSettings_.events_
class _TranslationsMisskeyWebhookSettingsEventsViVn extends TranslationsMisskeyWebhookSettingsEventsEnUs {
	_TranslationsMisskeyWebhookSettingsEventsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get reaction => 'Khi nhận được sự kiện';
	@override String get mention => 'Khi có người nhắc tới bạn';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientViVn extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeViVn recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeViVn._(_root);
}

// Path: misskey.customEmojisManager_.local_
class _TranslationsMisskeyCustomEmojisManagerLocalViVn extends TranslationsMisskeyCustomEmojisManagerLocalEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalListViVn list_ = _TranslationsMisskeyCustomEmojisManagerLocalListViVn._(_root);
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectViVn extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Không tìm thấy';
}

// Path: misskey.imageEffector_.fxProps_
class _TranslationsMisskeyImageEffectorFxPropsViVn extends TranslationsMisskeyImageEffectorFxPropsEnUs {
	_TranslationsMisskeyImageEffectorFxPropsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get angle => 'Góc';
	@override String get scale => 'Kích thước';
	@override String get size => 'Kích thước';
	@override String get offset => 'Vị trí';
	@override String get color => 'Màu sắc';
	@override String get opacity => 'Độ trong suốt';
	@override String get lightness => 'Độ sáng';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _TranslationsMisskeyInitialTutorialPostNoteVisibilityViVn extends TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteVisibilityViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get home => 'Chỉ công khai trên dòng thời gian Trang chủ. Những người truy cập trang cá nhân của bạn, thông qua người theo dõi và thông qua ghi chú lại có thể thấy thông tin đó.';
}

// Path: misskey.achievements_.types_.notes1_
class _TranslationsMisskeyAchievementsTypesNotes1ViVn extends TranslationsMisskeyAchievementsTypesNotes1EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'just setting up my msky';
	@override String get description => 'Lần đầu tiên đăng bài';
	@override String get flavor => 'Chúc bạn trên Miskey vui vẻ nha!!';
}

// Path: misskey.achievements_.types_.notes10_
class _TranslationsMisskeyAchievementsTypesNotes10ViVn extends TranslationsMisskeyAchievementsTypesNotes10EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Một số bài viết';
	@override String get description => 'Đăng bài 10 lần';
}

// Path: misskey.achievements_.types_.notes100_
class _TranslationsMisskeyAchievementsTypesNotes100ViVn extends TranslationsMisskeyAchievementsTypesNotes100EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rất nhiều bài biết';
	@override String get description => 'Đăng bài 100 lần';
}

// Path: misskey.achievements_.types_.notes500_
class _TranslationsMisskeyAchievementsTypesNotes500ViVn extends TranslationsMisskeyAchievementsTypesNotes500EnUs {
	_TranslationsMisskeyAchievementsTypesNotes500ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Như đầy bài viết';
	@override String get description => 'Đăng bài 500 lần';
}

// Path: misskey.achievements_.types_.notes1000_
class _TranslationsMisskeyAchievementsTypesNotes1000ViVn extends TranslationsMisskeyAchievementsTypesNotes1000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1000ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ngọn núi bài viết';
	@override String get description => 'Đăng bài 1000 lần';
}

// Path: misskey.achievements_.types_.notes5000_
class _TranslationsMisskeyAchievementsTypesNotes5000ViVn extends TranslationsMisskeyAchievementsTypesNotes5000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes5000ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bài viết chảy như suối';
	@override String get description => 'Đăng bài 5000 lần';
}

// Path: misskey.achievements_.types_.notes10000_
class _TranslationsMisskeyAchievementsTypesNotes10000ViVn extends TranslationsMisskeyAchievementsTypesNotes10000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10000ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bài Viết siu nhìu';
	@override String get description => 'Đăng bài 10000 lần';
}

// Path: misskey.achievements_.types_.notes20000_
class _TranslationsMisskeyAchievementsTypesNotes20000ViVn extends TranslationsMisskeyAchievementsTypesNotes20000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes20000ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Need more note';
	@override String get description => 'Đã đăng bài 20,000 lần rồi';
}

// Path: misskey.achievements_.types_.notes30000_
class _TranslationsMisskeyAchievementsTypesNotes30000ViVn extends TranslationsMisskeyAchievementsTypesNotes30000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes30000ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ĐĂNG VỚI BÀI';
	@override String get description => 'Đã đăng bài 30,000 lần rồi';
}

// Path: misskey.achievements_.types_.notes40000_
class _TranslationsMisskeyAchievementsTypesNotes40000ViVn extends TranslationsMisskeyAchievementsTypesNotes40000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes40000ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nhà xưởng dăng bài';
	@override String get description => 'Đã đăng bài 40,000 lần rồi';
}

// Path: misskey.achievements_.types_.notes50000_
class _TranslationsMisskeyAchievementsTypesNotes50000ViVn extends TranslationsMisskeyAchievementsTypesNotes50000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes50000ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hàng tinh đăng bài';
	@override String get description => 'Đã đăng bài 50,000 lần rồi';
}

// Path: misskey.achievements_.types_.notes100000_
class _TranslationsMisskeyAchievementsTypesNotes100000ViVn extends TranslationsMisskeyAchievementsTypesNotes100000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100000ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => 'Đăng 100,000 tút';
	@override String get flavor => 'Liệu viết bài gì tầm này vậy? ';
}

// Path: misskey.achievements_.types_.login3_
class _TranslationsMisskeyAchievementsTypesLogin3ViVn extends TranslationsMisskeyAchievementsTypesLogin3EnUs {
	_TranslationsMisskeyAchievementsTypesLogin3ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sơ cấp I';
	@override String get description => 'Tổng số ngày đăng nhập đạt 3 ngày';
	@override String get flavor => 'Từ nay các bạn cứ xem như mình là một Misskist đó';
}

// Path: misskey.achievements_.types_.login7_
class _TranslationsMisskeyAchievementsTypesLogin7ViVn extends TranslationsMisskeyAchievementsTypesLogin7EnUs {
	_TranslationsMisskeyAchievementsTypesLogin7ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sơ cấp II';
	@override String get description => 'Tổng số ngày đăng nhập đạt 7 ngày';
	@override String get flavor => 'Bạn dần quen chưa? ';
}

// Path: misskey.achievements_.types_.login15_
class _TranslationsMisskeyAchievementsTypesLogin15ViVn extends TranslationsMisskeyAchievementsTypesLogin15EnUs {
	_TranslationsMisskeyAchievementsTypesLogin15ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sơ cấp III';
	@override String get description => 'Tổng số ngày đăng nhập đạt 7 ngày';
}

// Path: misskey.achievements_.types_.login30_
class _TranslationsMisskeyAchievementsTypesLogin30ViVn extends TranslationsMisskeyAchievementsTypesLogin30EnUs {
	_TranslationsMisskeyAchievementsTypesLogin30ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist cấp I';
	@override String get description => 'Tổng số ngày đăng nhập đạt 30 ngày';
}

// Path: misskey.achievements_.types_.login60_
class _TranslationsMisskeyAchievementsTypesLogin60ViVn extends TranslationsMisskeyAchievementsTypesLogin60EnUs {
	_TranslationsMisskeyAchievementsTypesLogin60ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist cấp II';
	@override String get description => 'Tổng số ngày đăng nhập đạt 60 ngày';
}

// Path: misskey.achievements_.types_.login100_
class _TranslationsMisskeyAchievementsTypesLogin100ViVn extends TranslationsMisskeyAchievementsTypesLogin100EnUs {
	_TranslationsMisskeyAchievementsTypesLogin100ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist cấp III';
	@override String get description => 'Tổng số ngày đăng nhập đạt 100 ngày';
	@override String get flavor => 'Người dùng này, chính vì đó là một Misskist';
}

// Path: misskey.achievements_.types_.login200_
class _TranslationsMisskeyAchievementsTypesLogin200ViVn extends TranslationsMisskeyAchievementsTypesLogin200EnUs {
	_TranslationsMisskeyAchievementsTypesLogin200ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Khách hàng thường xuyên cấp I';
	@override String get description => 'Tổng số ngày đăng nhập đạt 200 ngày';
}

// Path: misskey.achievements_.types_.login300_
class _TranslationsMisskeyAchievementsTypesLogin300ViVn extends TranslationsMisskeyAchievementsTypesLogin300EnUs {
	_TranslationsMisskeyAchievementsTypesLogin300ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Khách hàng thường xuyên cấp II';
	@override String get description => 'Tổng số ngày đăng nhập đạt 300 ngày';
}

// Path: misskey.achievements_.types_.login400_
class _TranslationsMisskeyAchievementsTypesLogin400ViVn extends TranslationsMisskeyAchievementsTypesLogin400EnUs {
	_TranslationsMisskeyAchievementsTypesLogin400ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Khách hàng thường xuyên cấp III';
	@override String get description => 'Tổng số ngày đăng nhập đạt 400 ngày';
}

// Path: misskey.achievements_.types_.login1000_
class _TranslationsMisskeyAchievementsTypesLogin1000ViVn extends TranslationsMisskeyAchievementsTypesLogin1000EnUs {
	_TranslationsMisskeyAchievementsTypesLogin1000ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get flavor => 'Cảm ơn bạn đã sử dụng Misskey!';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _TranslationsMisskeyAchievementsTypesNoteFavorited1ViVn extends TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteFavorited1ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nhà thiên văn học';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _TranslationsMisskeyAchievementsTypesMyNoteFavorited1ViVn extends TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesMyNoteFavorited1ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đi tìm những ngôi sao';
}

// Path: misskey.achievements_.types_.profileFilled_
class _TranslationsMisskeyAchievementsTypesProfileFilledViVn extends TranslationsMisskeyAchievementsTypesProfileFilledEnUs {
	_TranslationsMisskeyAchievementsTypesProfileFilledViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luôn sẵn sàng';
	@override String get description => 'Thiết lập tài khoản của bạn';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _TranslationsMisskeyAchievementsTypesMarkedAsCatViVn extends TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_TranslationsMisskeyAchievementsTypesMarkedAsCatViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tôi là một con mèo';
	@override String get description => 'Bật chế độ mèo';
	@override String get flavor => 'Mà tên chưa có';
}

// Path: misskey.achievements_.types_.following1_
class _TranslationsMisskeyAchievementsTypesFollowing1ViVn extends TranslationsMisskeyAchievementsTypesFollowing1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing1ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Theo dõi đầu tiên';
	@override String get description => 'Lần đầu tiên theo dõi ';
}

// Path: misskey.achievements_.types_.following10_
class _TranslationsMisskeyAchievementsTypesFollowing10ViVn extends TranslationsMisskeyAchievementsTypesFollowing10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing10ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cứ theo dõi và theo dõi';
	@override String get description => 'Vừa theo dõi hơn 10 người';
}

// Path: misskey.achievements_.types_.following50_
class _TranslationsMisskeyAchievementsTypesFollowing50ViVn extends TranslationsMisskeyAchievementsTypesFollowing50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing50ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bạn bè nhiều quá';
	@override String get description => 'Vừa theo dõi hơn 50 người';
}

// Path: misskey.achievements_.types_.following100_
class _TranslationsMisskeyAchievementsTypesFollowing100ViVn extends TranslationsMisskeyAchievementsTypesFollowing100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing100ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trăm bạn bè';
	@override String get description => 'Vừa theo dõi vượt lên 100 người';
}

// Path: misskey.achievements_.types_.following300_
class _TranslationsMisskeyAchievementsTypesFollowing300ViVn extends TranslationsMisskeyAchievementsTypesFollowing300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing300ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quá nhiều bạn bè';
	@override String get description => 'Vừa theo dõi vượt lên 300 người';
}

// Path: misskey.achievements_.types_.followers1_
class _TranslationsMisskeyAchievementsTypesFollowers1ViVn extends TranslationsMisskeyAchievementsTypesFollowers1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ai đầu tiên theo dõi bạn';
	@override String get description => 'Lần đầu tiên được theo dõi';
}

// Path: misskey.achievements_.types_.followers10_
class _TranslationsMisskeyAchievementsTypesFollowers10ViVn extends TranslationsMisskeyAchievementsTypesFollowers10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers10ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'FOLLOW ME!!';
	@override String get description => 'Người theo dõi bạn vượt lên 10 người';
}

// Path: misskey.achievements_.types_.followers50_
class _TranslationsMisskeyAchievementsTypesFollowers50ViVn extends TranslationsMisskeyAchievementsTypesFollowers50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers50ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Từng chút một';
	@override String get description => 'Đạt được 50 lượt theo dõi';
}

// Path: misskey.achievements_.types_.followers100_
class _TranslationsMisskeyAchievementsTypesFollowers100ViVn extends TranslationsMisskeyAchievementsTypesFollowers100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers100ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Người nổi tiếng';
	@override String get description => 'Đạt được 100 lượt theo dõi';
}

// Path: misskey.achievements_.types_.followers300_
class _TranslationsMisskeyAchievementsTypesFollowers300ViVn extends TranslationsMisskeyAchievementsTypesFollowers300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers300ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vui lòng xếp thành hàng nào';
	@override String get description => 'Đạt được 300 lượt theo dõi';
}

// Path: misskey.achievements_.types_.followers500_
class _TranslationsMisskeyAchievementsTypesFollowers500ViVn extends TranslationsMisskeyAchievementsTypesFollowers500EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers500ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trạm phát sóng';
	@override String get description => 'Đạt được 500 lượt theo dõi';
}

// Path: misskey.achievements_.types_.followers1000_
class _TranslationsMisskeyAchievementsTypesFollowers1000ViVn extends TranslationsMisskeyAchievementsTypesFollowers1000EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1000ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Người có tầm ảnh hưởng';
	@override String get description => 'Người theo dõi bạn vượt lên 1000 người';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _TranslationsMisskeyAchievementsTypesCollectAchievements30ViVn extends TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_TranslationsMisskeyAchievementsTypesCollectAchievements30ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Người sưu tập thành tích';
	@override String get description => 'Vừa lấy thành tích hơn 30 cái';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _TranslationsMisskeyAchievementsTypesViewAchievements3minViVn extends TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_TranslationsMisskeyAchievementsTypesViewAchievements3minViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yêu Thành tích';
	@override String get description => 'Ngắm danh sách thành tích đến tận hơn 3 phút';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _TranslationsMisskeyAchievementsTypesILoveMisskeyViVn extends TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_TranslationsMisskeyAchievementsTypesILoveMisskeyViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tôi Yêu Misskey';
	@override String get description => 'Đăng lời nói "I ❤ #Misskey"';
	@override String get flavor => 'Xin chân thành cảm ơn bạn đã sử dụng Misskey!!  by Đội ngũ phát triển';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _TranslationsMisskeyAchievementsTypesFoundTreasureViVn extends TranslationsMisskeyAchievementsTypesFoundTreasureEnUs {
	_TranslationsMisskeyAchievementsTypesFoundTreasureViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tìm kiếm kho báu';
	@override String get description => 'Tìm thấy được những kho báu cất giấu';
}

// Path: misskey.achievements_.types_.client30min_
class _TranslationsMisskeyAchievementsTypesClient30minViVn extends TranslationsMisskeyAchievementsTypesClient30minEnUs {
	_TranslationsMisskeyAchievementsTypesClient30minViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Giải lao xỉu';
	@override String get description => 'Giữ Misskey mở trong ít nhất 30 phút';
}

// Path: misskey.achievements_.types_.client60min_
class _TranslationsMisskeyAchievementsTypesClient60minViVn extends TranslationsMisskeyAchievementsTypesClient60minEnUs {
	_TranslationsMisskeyAchievementsTypesClient60minViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get description => 'Giữ Misskey mở trong ít nhất 60 phút';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minViVn extends TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Xem như không có gì đâu nha';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _TranslationsMisskeyAchievementsTypesPostedAtLateNightViVn extends TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAtLateNightViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Loài ăn đêm';
	@override String get description => 'Đăng bài trong đêm khuya ';
	@override String get flavor => 'Đến giờ đi ngủ rồi.';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _TranslationsMisskeyAchievementsTypesPostedAt0min0secViVn extends TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAt0min0secViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tín hiệu báo giờ';
	@override String get description => 'Đăng bài vào 0 phút 0 giây';
	@override String get flavor => 'Pin pop pop pop';
}

// Path: misskey.achievements_.types_.selfQuote_
class _TranslationsMisskeyAchievementsTypesSelfQuoteViVn extends TranslationsMisskeyAchievementsTypesSelfQuoteEnUs {
	_TranslationsMisskeyAchievementsTypesSelfQuoteViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nói đến bản thân';
	@override String get description => 'Trích dẫn bài viết của mình';
}

// Path: misskey.achievements_.types_.htl20npm_
class _TranslationsMisskeyAchievementsTypesHtl20npmViVn extends TranslationsMisskeyAchievementsTypesHtl20npmEnUs {
	_TranslationsMisskeyAchievementsTypesHtl20npmViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Timeline trôi như con sông';
	@override String get description => 'Timeline trang chính tốc độ vượt lên 20npm';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _TranslationsMisskeyAchievementsTypesViewInstanceChartViVn extends TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_TranslationsMisskeyAchievementsTypesViewInstanceChartViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nhà phân tích';
	@override String get description => 'Xem biểu đồ của chủ máy';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadViVn extends TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chào thế giới!';
}

// Path: misskey.achievements_.types_.open3windows_
class _TranslationsMisskeyAchievementsTypesOpen3windowsViVn extends TranslationsMisskeyAchievementsTypesOpen3windowsEnUs {
	_TranslationsMisskeyAchievementsTypesOpen3windowsViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nhiều cửa sổ';
	@override String get description => 'Mở cửa sổ hơn 3 cửa sổ';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _TranslationsMisskeyAchievementsTypesReactWithoutReadViVn extends TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_TranslationsMisskeyAchievementsTypesReactWithoutReadViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bài này bạn đọc kỹ chứ? ';
	@override String get description => 'Phản hồi trong vọng 3 giây sau bài viết có hơn 100 ký tự mới được đăng lên';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _TranslationsMisskeyAchievementsTypesClickedClickHereViVn extends TranslationsMisskeyAchievementsTypesClickedClickHereEnUs {
	_TranslationsMisskeyAchievementsTypesClickedClickHereViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bấm đây';
	@override String get description => 'Bấm chỗ này';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _TranslationsMisskeyAchievementsTypesJustPlainLuckyViVn extends TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_TranslationsMisskeyAchievementsTypesJustPlainLuckyViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chỉ là một cuộc máy mắn';
	@override String get description => 'Mỗi 10 giây thu nhận được với tỷ lệ  0.005%';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _TranslationsMisskeyAchievementsTypesSetNameToSyuiloViVn extends TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_TranslationsMisskeyAchievementsTypesSetNameToSyuiloViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ngưỡng mộ với vị thần';
	@override String get description => 'Đạt tên là syuilo';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1ViVn extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1ViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kỷ niệm một năm';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayViVn extends TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sinh nhật vủi vẻ';
	@override String get description => 'Đăng nhập vào ngày sinh';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayViVn extends TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chức mừng năm mới';
	@override String get description => 'Đăng nhập vào Tết Nguyên đàn dương lịch';
	@override String get flavor => 'Chúc bạn năm mới AN KHANG THỊNH VƯỢNG, VẠN SỰ NHƯ Ý!!';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _TranslationsMisskeyAchievementsTypesCookieClickedViVn extends TranslationsMisskeyAchievementsTypesCookieClickedEnUs {
	_TranslationsMisskeyAchievementsTypesCookieClickedViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get flavor => 'Bạn nhầm phầm mềm chứ?';
}

// Path: misskey.pages_.blocks.note_
class _TranslationsMisskeyPagesBlocksNoteViVn extends TranslationsMisskeyPagesBlocksNoteEnUs {
	_TranslationsMisskeyPagesBlocksNoteViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get id => 'ID tút';
	@override String get idDescription => 'Ngoài ra, bạn có thể dán URL tút vào đây.';
	@override String get detailed => 'Xem chi tiết';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeViVn extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Email';
}

// Path: misskey.customEmojisManager_.local_.list_
class _TranslationsMisskeyCustomEmojisManagerLocalListViVn extends TranslationsMisskeyCustomEmojisManagerLocalListEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalListViVn._(TranslationsViVn root) : this._root = root, super.internal(root);

	final TranslationsViVn _root; // ignore: unused_field

	// Translations
	@override String confirmDeleteEmojisDescription({required Object count}) => 'Xóa các biểu tượng cảm xúc ${count} đã chọn. Bạn có muốn chạy nó không?';
}
