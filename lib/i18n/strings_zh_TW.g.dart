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
class TranslationsZhTw extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZhTw({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.zhTw,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <zh-TW>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsZhTw _root = this; // ignore: unused_field

	@override 
	TranslationsZhTw $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsZhTw(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAriaZhTw aria = _TranslationsAriaZhTw._(_root);
	@override late final _TranslationsMisskeyZhTw misskey = _TranslationsMisskeyZhTw._(_root);
}

// Path: aria
class _TranslationsAriaZhTw extends TranslationsAriaEnUs {
	_TranslationsAriaZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: '你真的要追隨'),
		name,
		const TextSpan(text: '嗎？'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria 已被志願者們翻譯成各種語言版本。您可以瀏覽 '),
		link,
		const TextSpan(text: ' 幫助翻譯。'),
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' 人上線'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: ' 轉發了'),
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: '確定要取消追隨'),
		name,
		const TextSpan(text: '嗎？'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: '說了什麼'),
	]);
	@override TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: '包含 '),
		name,
		const TextSpan(text: ' 敏感檔案的貼文'),
	]);
}

// Path: misskey
class _TranslationsMisskeyZhTw extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get lang__ => '繁體中文（台灣）';
	@override String get headlineMisskey => '貼文連繫網路';
	@override String get introMisskey => '歡迎！Misskey 是一個開放原始碼且去中心化的社群網路服務。\n發布「貼文」向身邊的人分享您的想法！📡\n利用「反應」表達您對貼文的感覺！👍\n讓我們一起探索新的世界吧！🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name}是開放原始碼平臺 <b>Misskey</b> 的伺服器之一。';
	@override String monthAndDay({required Object month, required Object day}) => '${month} 月 ${day} 日';
	@override String get search => '搜尋';
	@override String get reset => '重設';
	@override String get notifications => '通知';
	@override String get username => '使用者名稱';
	@override String get password => '密碼';
	@override String get initialPasswordForSetup => '啟動初始設定的密碼';
	@override String get initialPasswordIsIncorrect => '啟動初始設定的密碼錯誤。';
	@override String get initialPasswordForSetupDescription => '如果您自己安裝了 Misskey，請使用您在設定檔中輸入的密碼。\n如果您使用 Misskey 的託管服務之類的服務，請使用提供的密碼。\n如果您尚未設定密碼，請將其留空並繼續。';
	@override String get forgotPassword => '忘記密碼';
	@override String get fetchingAsApObject => '從聯邦宇宙取得中...';
	@override String get ok => 'OK';
	@override String get gotIt => '知道了';
	@override String get cancel => '取消';
	@override String get noThankYou => '現在不要';
	@override String get enterUsername => '輸入使用者名稱';
	@override String renotedBy({required Object user}) => '${user} 轉發了';
	@override String get noNotes => '無貼文';
	@override String get noNotifications => '沒有通知';
	@override String get instance => '伺服器';
	@override String get settings => '設定';
	@override String get notificationSettings => '通知選項';
	@override String get basicSettings => '基本設定';
	@override String get otherSettings => '其他設定';
	@override String get openInWindow => '在新視窗開啟';
	@override String get profile => '個人檔案';
	@override String get timeline => '時間軸';
	@override String get noAccountDescription => '此使用者尚未自我介紹';
	@override String get login => '登入';
	@override String get loggingIn => '登入中';
	@override String get logout => '登出';
	@override String get signup => '註冊';
	@override String get uploading => '上傳中';
	@override String get save => '儲存';
	@override String get users => '使用者';
	@override String get addUser => '新增使用者';
	@override String get favorite => '我的最愛';
	@override String get favorites => '我的最愛';
	@override String get unfavorite => '從我的最愛中移除';
	@override String get favorited => '已添加至我的最愛';
	@override String get alreadyFavorited => '我的最愛中已存在。';
	@override String get cantFavorite => '無法加入至我的最愛。';
	@override String get pin => '置頂';
	@override String get unpin => '取消置頂';
	@override String get copyContent => '複製內容';
	@override String get copyLink => '複製連結';
	@override String get copyRemoteLink => '複製遠端的連結';
	@override String get copyLinkRenote => '複製轉發的連結';
	@override String get delete => '刪除';
	@override String get deleteAndEdit => '刪除並編輯';
	@override String get deleteAndEditConfirm => '要刪除並再次編輯嗎？此貼文的所有反應、轉發和回覆也將會消失。';
	@override String get addToList => '加入至清單';
	@override String get addToAntenna => '新增至天線';
	@override String get sendMessage => '發送訊息';
	@override String get copyRSS => '複製RSS';
	@override String get copyUsername => '複製使用者名稱';
	@override String get copyUserId => '複製使用者 ID';
	@override String get copyNoteId => '複製貼文 ID';
	@override String get copyFileId => '複製檔案 ID';
	@override String get copyFolderId => '複製資料夾ID';
	@override String get copyProfileUrl => '複製個人資料網址';
	@override String get searchUser => '搜尋使用者';
	@override String get searchThisUsersNotes => '搜尋這個使用者的貼文';
	@override String get reply => '回覆';
	@override String get loadMore => '載入更多';
	@override String get showMore => '載入更多';
	@override String get showLess => '關閉';
	@override String get youGotNewFollower => '您有新的追隨者';
	@override String get receiveFollowRequest => '您有新的追隨請求';
	@override String get followRequestAccepted => '追隨請求已被接受';
	@override String get mention => '提及';
	@override String get mentions => '提及';
	@override String get directNotes => '私訊';
	@override String get importAndExport => '匯入與匯出';
	@override String get import => '匯入';
	@override String get export => '匯出';
	@override String get files => '檔案';
	@override String get download => '下載';
	@override String driveFileDeleteConfirm({required Object name}) => '確定要刪除檔案「${name}」嗎？使用此檔案的貼文也會跟著被刪除。';
	@override String unfollowConfirm({required Object name}) => '確定要取消追隨${name}嗎？';
	@override String get exportRequested => '已請求匯出。這可能會花一點時間。匯出的檔案將會被放到雲端硬碟裡。';
	@override String get importRequested => '已請求匯入。這可能會花一點時間。';
	@override String get lists => '清單';
	@override String get noLists => '你沒有任何清單';
	@override String get note => '貼文';
	@override String get notes => '貼文';
	@override String get following => '追隨中';
	@override String get followers => '追隨者';
	@override String get followsYou => '追隨你的人';
	@override String get createList => '建立清單';
	@override String get manageLists => '管理清單';
	@override String get error => '錯誤';
	@override String get somethingHappened => '發生錯誤';
	@override String get retry => '重試';
	@override String get pageLoadError => '無法載入頁面。';
	@override String get pageLoadErrorDescription => '這通常是網路錯誤或瀏覽器快取殘留而引起的。請先清除瀏覽器快取，稍後再重試。';
	@override String get serverIsDead => '伺服器沒有回應。請稍等片刻再試。';
	@override String get youShouldUpgradeClient => '請重新載入以使用新版客戶端顯示此頁面。';
	@override String get enterListName => '輸入清單名稱';
	@override String get privacy => '隱私';
	@override String get makeFollowManuallyApprove => '追隨需要核准';
	@override String get defaultNoteVisibility => '預設可見性';
	@override String get follow => '追隨';
	@override String get followRequest => '追隨請求';
	@override String get followRequests => '追隨請求';
	@override String get unfollow => '取消追隨';
	@override String get followRequestPending => '追隨許可待批准';
	@override String get enterEmoji => '輸入表情符號';
	@override String get renote => '轉發';
	@override String get unrenote => '取消轉發';
	@override String get renoted => '轉發成功。';
	@override String renotedToX({required Object name}) => '轉發給 ${name} 了。';
	@override String get cantRenote => '無法轉發此貼文。';
	@override String get cantReRenote => '無法轉發之前已經轉發過的內容。';
	@override String get quote => '引用';
	@override String get inChannelRenote => '在頻道內轉發';
	@override String get inChannelQuote => '在頻道內引用';
	@override String get renoteToChannel => '轉發至頻道';
	@override String get renoteToOtherChannel => '轉發至其他頻道';
	@override String get pinnedNote => '已置頂的貼文';
	@override String get pinned => '置頂';
	@override String get you => '您';
	@override String get clickToShow => '點擊查看';
	@override String get sensitive => '敏感內容';
	@override String get add => '新增';
	@override String get reaction => '反應';
	@override String get reactions => '反應';
	@override String get emojiPicker => '表情符號選擇器';
	@override String get pinnedEmojisForReactionSettingDescription => '選擇反應時可以設定要固定顯示在頂端的表情符號';
	@override String get pinnedEmojisSettingDescription => '輸入表情符號時可以設定要固定顯示在頂端的表情符號';
	@override String get emojiPickerDisplay => '顯示表情符號選擇器';
	@override String get overwriteFromPinnedEmojisForReaction => '從反應複寫設定';
	@override String get overwriteFromPinnedEmojis => '從一般複寫設定';
	@override String get reactionSettingDescription2 => '拖動以交換，點擊以刪除，按下「+」以新增。';
	@override String get rememberNoteVisibility => '記住貼文可見性';
	@override String get attachCancel => '移除附件';
	@override String get deleteFile => '刪除檔案';
	@override String get markAsSensitive => '標記為敏感內容';
	@override String get unmarkAsSensitive => '取消標記為敏感內容';
	@override String get enterFileName => '請輸入檔案名稱';
	@override String get mute => '靜音';
	@override String get unmute => '解除靜音';
	@override String get renoteMute => '將轉發貼文靜音';
	@override String get renoteUnmute => '解除轉發貼文的靜音';
	@override String get block => '封鎖';
	@override String get unblock => '解除封鎖';
	@override String get suspend => '凍結';
	@override String get unsuspend => '解除凍結';
	@override String get blockConfirm => '確定要封鎖此使用者嗎？';
	@override String get unblockConfirm => '確定要解除封鎖此使用者嗎？';
	@override String get suspendConfirm => '確定凍結此使用者？';
	@override String get unsuspendConfirm => '確定解凍此使用者？';
	@override String get selectList => '選擇清單';
	@override String get editList => '編輯清單';
	@override String get selectChannel => '選擇頻道';
	@override String get selectAntenna => '選擇天線';
	@override String get editAntenna => '編輯天線';
	@override String get createAntenna => '建立天線';
	@override String get selectWidget => '選擇小工具';
	@override String get editWidgets => '編輯小工具';
	@override String get editWidgetsExit => '完成';
	@override String get customEmojis => '自訂表情符號';
	@override String get emoji => '表情符號';
	@override String get emojis => '表情符號';
	@override String get emojiName => '表情符號名稱';
	@override String get emojiUrl => '表情符號 URL';
	@override String get addEmoji => '新增表情符號';
	@override String get settingGuide => '推薦設定';
	@override String get cacheRemoteFiles => '快取遠端檔案';
	@override String get cacheRemoteFilesDescription => '啟用此設定後，遠端檔案會被快取在本伺服器的儲存空間中。雖然顯示圖片會變快，但會消耗較多伺服器的儲存空間。至於要快取遠端使用者到什麼程度，是依照角色的雲端硬碟容量而定。當超過這個限制時，從較舊的檔案開始自快取中刪除並改為連結。關閉這個設定時，遠端檔案從一開始就維持連結的方式，但建議將 default.yml 的 proxyRemoteFiles 設為 true，以便產生圖片的縮圖並保護使用者的隱私。';
	@override String get youCanCleanRemoteFilesCache => '按檔案管理的🗑️按鈕，可將快取全部刪除。';
	@override String get cacheRemoteSensitiveFiles => '快取遠端的敏感檔案';
	@override String get cacheRemoteSensitiveFilesDescription => '若停用這個設定，則不會快取遠端的敏感檔案，而是直接連結。';
	@override String get flagAsBot => '此使用者是機器人';
	@override String get flagAsBotDescription => '如果本帳戶是由程式控制，請啟用此選項。啟用後，會作為標示幫助其他開發者防止機器人之間產生無限互動的行為，並會調整 Misskey 內部系統將本帳戶識別為機器人。';
	@override String get flagAsCat => '此帳戶是一隻貓，喵～～～！！！';
	@override String get flagAsCatDescription => '喵喵喵？？';
	@override String get flagShowTimelineReplies => '在時間軸上顯示貼文的回覆';
	@override String get flagShowTimelineRepliesDescription => '啟用後，時間軸除了顯示使用者的貼文以外，還會顯示使用者對其他貼文的回覆。';
	@override String get autoAcceptFollowed => '自動允許來自追隨中使用者的追隨請求';
	@override String get addAccount => '新增帳戶';
	@override String get reloadAccountsList => '更新帳戶清單的資訊';
	@override String get loginFailed => '登入失敗';
	@override String get showOnRemote => '轉到所在實例顯示';
	@override String get continueOnRemote => '在遠端伺服器繼續';
	@override String get chooseServerOnMisskeyHub => '從 Misskey Hub 選擇伺服器';
	@override String get specifyServerHost => '直接指定伺服器網域';
	@override String get inputHostName => '請輸入域名';
	@override String get general => '一般';
	@override String get wallpaper => '桌布';
	@override String get setWallpaper => '設定桌布';
	@override String get removeWallpaper => '移除桌布';
	@override String searchWith({required Object q}) => '搜尋: ${q}';
	@override String get youHaveNoLists => '你沒有任何清單';
	@override String followConfirm({required Object name}) => '你真的要追隨${name}嗎？';
	@override String get proxyAccount => '代理帳戶';
	@override String get proxyAccountDescription => '代理帳戶是在特定條件下充當遠端追隨者的帳戶。例如，當使用者新增遠端使用者至其列表時，若沒有本地使用者追隨該遠端使用者，則其活動將不會傳送至伺服器，此時便會由代理帳戶代為追隨以解決問題。';
	@override String get host => '主機';
	@override String get selectSelf => '選擇自己';
	@override String get selectUser => '選取使用者';
	@override String get recipient => '收件人';
	@override String get annotation => '註解';
	@override String get federation => '站台聯邦';
	@override String get instances => '伺服器';
	@override String get registeredAt => '初次觀測';
	@override String get latestRequestReceivedAt => '上次收到的請求';
	@override String get latestStatus => '最後狀態';
	@override String get storageUsage => '已使用容量';
	@override String get charts => '圖表';
	@override String get perHour => '每小時';
	@override String get perDay => '每日';
	@override String get stopActivityDelivery => '停止發送活動';
	@override String get blockThisInstance => '封鎖此伺服器';
	@override String get silenceThisInstance => '禁言此伺服器';
	@override String get mediaSilenceThisInstance => '將這個伺服器的媒體設為禁言';
	@override String get operations => '操作';
	@override String get software => '軟體';
	@override String get softwareName => '軟體名稱';
	@override String get version => '版本';
	@override String get metadata => '詮釋資料';
	@override String withNFiles({required Object n}) => '${n} 個檔案';
	@override String get monitor => '監視器';
	@override String get jobQueue => '佇列';
	@override String get cpuAndMemory => 'CPU 及記憶體';
	@override String get network => '網路';
	@override String get disk => '硬碟';
	@override String get instanceInfo => '伺服器資訊';
	@override String get statistics => '統計';
	@override String get clearQueue => '清除佇列';
	@override String get clearQueueConfirmTitle => '確定要清除佇列嗎？';
	@override String get clearQueueConfirmText => '未成功發佈的貼文將不會再嘗試發佈。通常不需要進行這項操作。';
	@override String get clearCachedFiles => '清除快取資料';
	@override String get clearCachedFilesConfirm => '確定要清除所有遠端暫存資料嗎？';
	@override String get blockedInstances => '已封鎖的伺服器';
	@override String get blockedInstancesDescription => '請逐行輸入需要封鎖的伺服器。已封鎖的伺服器將無法與本伺服器進行通訊。';
	@override String get silencedInstances => '被禁言的伺服器';
	@override String get silencedInstancesDescription => '設定要禁言的伺服器主機名稱，以換行分隔。隸屬於禁言伺服器的所有帳戶都將被視為「禁言帳戶」，只能發出「追隨請求」，而且無法提及未追隨的本地帳戶。這不會影響已封鎖的實例。';
	@override String get mediaSilencedInstances => '媒體被禁言的伺服器';
	@override String get mediaSilencedInstancesDescription => '設定您想要對媒體設定禁言的伺服器，以換行符號區隔。來自被媒體禁言的伺服器所屬帳戶的所有檔案都會被視為敏感檔案，且自訂表情符號不能使用。被封鎖的伺服器不受影響。';
	@override String get federationAllowedHosts => '允許聯邦通訊的伺服器';
	@override String get federationAllowedHostsDescription => '設定允許聯邦通訊的伺服器主機，以換行符號分隔。';
	@override String get muteAndBlock => '靜音和封鎖';
	@override String get mutedUsers => '被靜音的使用者';
	@override String get blockedUsers => '被封鎖的使用者';
	@override String get noUsers => '沒有任何使用者';
	@override String get editProfile => '編輯個人檔案';
	@override String get noteDeleteConfirm => '確定刪除此貼文嗎？';
	@override String get pinLimitExceeded => '不能置頂更多貼文了';
	@override String get done => '完成';
	@override String get processing => '處理中';
	@override String get preview => '預覽';
	@override String get default_ => '預設';
	@override String defaultValueIs({required Object value}) => '預設值：${value}';
	@override String get noCustomEmojis => '沒有自訂的表情符號';
	@override String get noJobs => '沒有任務';
	@override String get federating => '聯邦運作中';
	@override String get blocked => '已封鎖';
	@override String get suspended => '停止發送';
	@override String get all => '全部';
	@override String get subscribing => '訂閱中';
	@override String get publishing => '發送中';
	@override String get notResponding => '沒有回應';
	@override String get instanceFollowing => '追隨的伺服器';
	@override String get instanceFollowers => '伺服器的追隨者';
	@override String get instanceUsers => '伺服器使用者';
	@override String get changePassword => '修改密碼';
	@override String get security => '安全性';
	@override String get retypedNotMatch => '兩次輸入不一致。';
	@override String get currentPassword => '目前密碼';
	@override String get newPassword => '新密碼';
	@override String get newPasswordRetype => '確認密碼';
	@override String get attachFile => '上傳附件';
	@override String get more => '更多！';
	@override String get featured => '精選';
	@override String get usernameOrUserId => '使用者名稱或使用者 ID';
	@override String get noSuchUser => '使用者不存在';
	@override String get lookup => '查詢';
	@override String get announcements => '公告';
	@override String get imageUrl => '圖片URL';
	@override String get remove => '刪除';
	@override String get removed => '已刪除';
	@override String removeAreYouSure({required Object x}) => '確定要刪掉「${x}」嗎？';
	@override String deleteAreYouSure({required Object x}) => '確定要刪掉「${x}」嗎？';
	@override String get resetAreYouSure => '確定要重設嗎？';
	@override String get areYouSure => '是否確定？';
	@override String get saved => '已儲存';
	@override String get upload => '上傳';
	@override String get keepOriginalUploading => '保留原圖';
	@override String get keepOriginalUploadingDescription => '上傳圖片時保留原始圖片。關閉時，瀏覽器會在上傳時生成適用於網路傳送的版本。';
	@override String get fromDrive => '從雲端空間中選擇';
	@override String get fromUrl => '從 URL 上傳';
	@override String get uploadFromUrl => '從網址上傳';
	@override String get uploadFromUrlDescription => '您要上傳的檔案網址';
	@override String get uploadFromUrlRequested => '已請求上傳';
	@override String get uploadFromUrlMayTakeTime => '還需要一些時間才能完成上傳。';
	@override String uploadNFiles({required Object n}) => '上傳了 ${n} 個檔案';
	@override String get explore => '探索';
	@override String get messageRead => '已讀';
	@override String get noMoreHistory => '沒有更多歷史紀錄';
	@override String get startChat => '開始聊天';
	@override String nUsersRead({required Object n}) => '${n} 人已讀';
	@override String agreeTo({required Object x0}) => '我同意${x0}';
	@override String get agree => '同意';
	@override String get agreeBelow => '同意以下內容';
	@override String get basicNotesBeforeCreateAccount => '基本注意事項';
	@override String get termsOfService => '服務條款';
	@override String get start => '開始';
	@override String get home => '首頁';
	@override String get remoteUserCaution => '由於該使用者來自其他實例，因此其資訊可能不完整。';
	@override String get activity => '動態';
	@override String get images => '圖片';
	@override String get image => '圖片';
	@override String get birthday => '生日';
	@override String yearsOld({required Object age}) => '${age} 歲';
	@override String get registeredDate => '註冊日期';
	@override String get location => '位置';
	@override String get theme => '佈景主題';
	@override String get themeForLightMode => '在淺色模式下使用的佈景主題';
	@override String get themeForDarkMode => '在深色模式下使用的佈景主題';
	@override String get light => '淺色';
	@override String get dark => '深色';
	@override String get lightThemes => '淺色佈景主題';
	@override String get darkThemes => '深色佈景主題';
	@override String get syncDeviceDarkMode => '與裝置的深色模式同步';
	@override String switchDarkModeManuallyWhenSyncEnabledConfirm({required Object x}) => '「${x}」已開啟。要關閉同步並手動切換模式嗎？\n';
	@override String get drive => '雲端硬碟';
	@override String get fileName => '檔案名稱';
	@override String get selectFile => '選擇檔案';
	@override String get selectFiles => '選擇檔案';
	@override String get selectFolder => '選擇資料夾';
	@override String get selectFolders => '選擇資料夾';
	@override String get fileNotSelected => '尚未選擇檔案';
	@override String get renameFile => '重新命名檔案';
	@override String get folderName => '資料夾名稱';
	@override String get createFolder => '新增資料夾';
	@override String get renameFolder => '重新命名資料夾';
	@override String get deleteFolder => '刪除資料夾';
	@override String get folder => '資料夾';
	@override String get addFile => '加入附件';
	@override String get showFile => '瀏覽文件';
	@override String get emptyDrive => '雲端硬碟為空';
	@override String get emptyFolder => '資料夾為空';
	@override String get unableToDelete => '無法刪除';
	@override String get inputNewFileName => '輸入檔案名稱';
	@override String get inputNewDescription => '請輸入新標題 ';
	@override String get inputNewFolderName => '輸入新資料夾的名稱';
	@override String get circularReferenceFolder => '目標文件夾是您要移動的文件夾的子文件夾。';
	@override String get hasChildFilesOrFolders => '此文件夾不是空的，無法刪除。';
	@override String get copyUrl => '複製URL';
	@override String get rename => '重新命名';
	@override String get avatar => '大頭貼';
	@override String get banner => '橫幅';
	@override String get displayOfSensitiveMedia => '敏感檔案的顯示';
	@override String get whenServerDisconnected => '與伺服器的連接中斷時';
	@override String get disconnectedFromServer => '與伺服器中斷連線';
	@override String get reload => '重新整理';
	@override String get doNothing => '無視';
	@override String get reloadConfirm => '確定要重新整理嗎？';
	@override String get watch => '關注';
	@override String get unwatch => '取消關注';
	@override String get accept => '接受';
	@override String get reject => '拒絕';
	@override String get normal => '正常';
	@override String get instanceName => '伺服器名稱';
	@override String get instanceDescription => '伺服器介紹';
	@override String get maintainerName => '管理員名稱';
	@override String get maintainerEmail => '管理員信箱';
	@override String get tosUrl => '服務條款 URL';
	@override String get thisYear => '本年';
	@override String get thisMonth => '本月';
	@override String get today => '本日';
	@override String dayX({required Object day}) => '${day} 日';
	@override String monthX({required Object month}) => '${month} 月';
	@override String yearX({required Object year}) => '${year} 年';
	@override String get pages => '頁面';
	@override String get integration => '整合';
	@override String get connectService => '已連結';
	@override String get disconnectService => '已斷開 ';
	@override String get enableLocalTimeline => '啟用本地時間軸';
	@override String get enableGlobalTimeline => '啟用全域時間軸';
	@override String get disablingTimelinesInfo => '為了方便，即使您關閉了時間軸功能，管理員和審查員仍可以繼續使用。';
	@override String get registration => '註冊';
	@override String get invite => '邀請';
	@override String get driveCapacityPerLocalAccount => '每個本地使用者的雲端硬碟容量';
	@override String get driveCapacityPerRemoteAccount => '每個非本地用戶的雲端空間大小';
	@override String get inMb => '以 MB 為單位';
	@override String get bannerUrl => '橫幅圖片URL';
	@override String get backgroundImageUrl => '背景圖片的來源網址 ';
	@override String get basicInfo => '基本資訊';
	@override String get pinnedUsers => '置頂使用者';
	@override String get pinnedUsersDescription => '在「探索」頁面中使用換行標記想要置頂的使用者。';
	@override String get pinnedPages => '釘選頁面';
	@override String get pinnedPagesDescription => '輸入要固定至實例首頁的頁面路徑，以換行符分隔。';
	@override String get pinnedClipId => '置頂的摘錄ID';
	@override String get pinnedNotes => '已置頂的貼文';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => '啟用 hCaptcha';
	@override String get hcaptchaSiteKey => 'hcaptchaSiteKey';
	@override String get hcaptchaSecretKey => 'hcaptchaSecretKey';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => '啟用 mCaptcha';
	@override String get mcaptchaSiteKey => '網站金鑰';
	@override String get mcaptchaSecretKey => '私密金鑰';
	@override String get mcaptchaInstanceUrl => 'mCaptcha 的實例網址';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => '啟用 reCAPTCHA';
	@override String get recaptchaSiteKey => '網站金鑰';
	@override String get recaptchaSecretKey => '金鑰';
	@override String get turnstile => 'Turnstile';
	@override String get enableTurnstile => '啟用 Turnstile';
	@override String get turnstileSiteKey => 'turnstileSiteKey';
	@override String get turnstileSecretKey => 'turnstileSecretKey';
	@override String get avoidMultiCaptchaConfirm => '使用多種驗證方式可能會造成干擾，您要關閉其他驗證方式嗎？您可以按「取消」保留多種驗證方式。';
	@override String get antennas => '天線';
	@override String get manageAntennas => '管理天線';
	@override String get name => '名稱';
	@override String get antennaSource => '接收來源';
	@override String get antennaKeywords => '包含關鍵字';
	@override String get antennaExcludeKeywords => '排除關鍵字';
	@override String get antennaExcludeBots => '排除機器人帳戶';
	@override String get antennaKeywordsDescription => '空格代表「以及」（AND），換行代表「或者」（OR）';
	@override String get notifyAntenna => '通知有新貼文';
	@override String get withFileAntenna => '僅帶有附件的貼文';
	@override String get excludeNotesInSensitiveChannel => '排除敏感頻道的貼文';
	@override String get enableServiceworker => '啟用瀏覽器的推播通知';
	@override String get antennaUsersDescription => '填寫使用者名稱，以換行分隔';
	@override String get caseSensitive => '區分大小寫';
	@override String get withReplies => '包含回覆';
	@override String get connectedTo => '您的帳戶已連接到以下社交帳戶';
	@override String get notesAndReplies => '貼文與回覆';
	@override String get withFiles => '附件';
	@override String get silence => '禁言';
	@override String get silenceConfirm => '確定要禁言此使用者嗎？';
	@override String get unsilence => '解除禁言';
	@override String get unsilenceConfirm => '確定要解除禁言嗎？';
	@override String get popularUsers => '熱門使用者';
	@override String get recentlyUpdatedUsers => '最近發文的使用者';
	@override String get recentlyRegisteredUsers => '新加入使用者';
	@override String get recentlyDiscoveredUsers => '最近發現的使用者';
	@override String exploreUsersCount({required Object count}) => '有${count}個使用者';
	@override String get exploreFediverse => '探索聯邦宇宙';
	@override String get popularTags => '熱門標籤';
	@override String get userList => '使用者清單';
	@override String get about => '關於';
	@override String get aboutMisskey => '關於 Misskey';
	@override String get administrator => '管理員';
	@override String get token => '權杖';
	@override String get x2fa => '雙重驗證';
	@override String get setupOf2fa => '設定雙重驗證';
	@override String get totp => '驗證應用程式';
	@override String get totpDescription => '以驗證應用程式輸入一次性密碼';
	@override String get moderator => '審查員';
	@override String get moderation => '審查';
	@override String get moderationNote => '管理筆記';
	@override String get moderationNoteDescription => '您可以編寫僅在審查員之間共用的註解。';
	@override String get addModerationNote => '新增管理筆記';
	@override String get moderationLogs => '管理日誌';
	@override String nUsersMentioned({required Object n}) => '被 ${n} 個人提及';
	@override String get securityKeyAndPasskey => '安全金鑰、通行金鑰';
	@override String get securityKey => '安全金鑰';
	@override String get lastUsed => '上次使用';
	@override String lastUsedAt({required Object t}) => '上次使用：${t}';
	@override String get unregister => '註銷';
	@override String get passwordLessLogin => '無密碼登入';
	@override String get passwordLessLoginDescription => '不使用密碼，以安全金鑰或通行金鑰登入';
	@override String get resetPassword => '重設密碼';
	@override String newPasswordIs({required Object password}) => '新密碼為「${password}」';
	@override String get reduceUiAnimation => '減少介面的動態視覺';
	@override String get share => '分享';
	@override String get notFound => '查無項目';
	@override String get notFoundDescription => '查無此頁';
	@override String get uploadFolder => '預設上傳資料夾';
	@override String get markAsReadAllNotifications => '標記所有通知為已讀';
	@override String get markAsReadAllUnreadNotes => '標記所有貼文為已讀';
	@override String get markAsReadAllTalkMessages => '標記所有訊息為已讀';
	@override String get help => '幫助';
	@override String get inputMessageHere => '在此輸入訊息';
	@override String get close => '關閉';
	@override String get invites => '邀請';
	@override String get members => '成員';
	@override String get transfer => '轉讓';
	@override String get title => '標題';
	@override String get text => '文字';
	@override String get enable => '啟用';
	@override String get next => '下一步';
	@override String get retype => '重新輸入';
	@override String noteOf({required Object user}) => '${user}的貼文';
	@override String get quoteAttached => '引用';
	@override String get quoteQuestion => '是否要引用？';
	@override String get attachAsFileQuestion => '剪貼簿的文字較長。請問是否要將其以文字檔的方式附加呢？';
	@override String get onlyOneFileCanBeAttached => '只能加入一個附件';
	@override String get signinRequired => '請先登入';
	@override String get signinOrContinueOnRemote => '若要繼續，需前往您所在的伺服器，或者註冊並登入此伺服器';
	@override String get invitations => '邀請';
	@override String get invitationCode => '邀請碼';
	@override String get checking => '確認中';
	@override String get available => '可用的';
	@override String get unavailable => '不可用的';
	@override String get usernameInvalidFormat => '可使用大小寫英文字母、數字和底線';
	@override String get tooShort => '過短';
	@override String get tooLong => '過長';
	@override String get weakPassword => '密碼強度過弱';
	@override String get normalPassword => '密碼強度普通';
	@override String get strongPassword => '密碼強度高';
	@override String get passwordMatched => '密碼一致';
	@override String get passwordNotMatched => '密碼不一致';
	@override String signinWith({required Object x}) => '以${x}登錄';
	@override String get signinFailed => '登入失敗。 請檢查使用者名稱和密碼。';
	@override String get or => '或者';
	@override String get language => '語言';
	@override String get uiLanguage => '介面語言';
	@override String aboutX({required Object x}) => '關於${x}';
	@override String get emojiStyle => '表情符號的風格';
	@override String get native => '原生';
	@override String get menuStyle => '選單風格';
	@override String get style => '風格';
	@override String get drawer => '側邊欄';
	@override String get popup => '彈出式視窗';
	@override String get showNoteActionsOnlyHover => '僅於游標懸停時顯示貼文選項';
	@override String get showReactionsCount => '顯示貼文的反應數目';
	@override String get noHistory => '沒有歷史紀錄';
	@override String get signinHistory => '登入歷史';
	@override String get enableAdvancedMfm => '啟用進階 MFM';
	@override String get enableAnimatedMfm => '啟用 MFM 動畫';
	@override String get doing => '正在進行';
	@override String get category => '類別';
	@override String get tags => '標籤';
	@override String get docSource => '文件來源';
	@override String get createAccount => '建立帳戶';
	@override String get existingAccount => '現有帳戶';
	@override String get regenerate => '再次生成';
	@override String get fontSize => '字體大小';
	@override String get mediaListWithOneImageAppearance => '只有一張圖片時的檔案列表高度';
	@override String limitTo({required Object x}) => '上限為 ${x}';
	@override String get noFollowRequests => '沒有追隨您的請求';
	@override String get openImageInNewTab => '於新分頁中開啟圖片';
	@override String get dashboard => '儀表板';
	@override String get local => '本地';
	@override String get remote => '遠端';
	@override String get total => '合計';
	@override String get weekOverWeekChanges => '與上週相比';
	@override String get dayOverDayChanges => '與昨日相比';
	@override String get appearance => '外觀';
	@override String get clientSettings => '客戶端設定';
	@override String get accountSettings => '帳戶設定';
	@override String get promotion => '推廣';
	@override String get promote => '推廣';
	@override String get numberOfDays => '有效天數';
	@override String get hideThisNote => '隱藏此貼文';
	@override String get showFeaturedNotesInTimeline => '在時間軸上顯示熱門推薦';
	@override String get objectStorage => '物件儲存';
	@override String get useObjectStorage => '使用物件儲存';
	@override String get objectStorageBaseUrl => 'Base URL';
	@override String get objectStorageBaseUrlDesc => '用於引用的 URL。如果您使用的是 CDN 或反向代理，請指定其 URL，例如 S3（https://<bucket>.s3.amazonaws.com）、GCS（https://storage.googleapis.com/<bucket>）。';
	@override String get objectStorageBucket => '儲存空間（Bucket）';
	@override String get objectStorageBucketDesc => '請填寫所用服務的儲存桶（Bucket）名稱。 ';
	@override String get objectStoragePrefix => '前綴';
	@override String get objectStoragePrefixDesc => '它儲存在此前綴目錄下。';
	@override String get objectStorageEndpoint => '端點（Endpoint）';
	@override String get objectStorageEndpointDesc => '如使用 AWS S3，請留空。如使用其他服務，請按照其說明文件以「<host>」或「<host>:<port>」的形式設定端點（Endpoint）。';
	@override String get objectStorageRegion => '區域（Region）';
	@override String get objectStorageRegionDesc => '請填寫一個分區，例如「xx-east-1」。 如果您使用的服務不設分區，請留空或填寫「us-east-1」。';
	@override String get objectStorageUseSSL => '使用 SSL';
	@override String get objectStorageUseSSLDesc => '請在不使用 https 連接 API 時關閉';
	@override String get objectStorageUseProxy => '使用網路代理';
	@override String get objectStorageUseProxyDesc => '請在不使用網路代理連接 API 時關閉';
	@override String get objectStorageSetPublicRead => '上傳時設定為「public-read」';
	@override String get s3ForcePathStyleDesc => '啟用 s3ForcePathStyle 將強制填寫儲存空間（Bucket）名稱至 URL 路徑內，而非寫入主機名。 使用如 Minio 等自行託管服務時可能需要啟用。';
	@override String get serverLogs => '伺服器日誌';
	@override String get deleteAll => '刪除所有記錄';
	@override String get showFixedPostForm => '於時間軸頁頂顯示「發送貼文」方框';
	@override String get showFixedPostFormInChannel => '於時間軸頁頂顯示「發送貼文」方框（頻道）';
	@override String get withRepliesByDefaultForNewlyFollowed => '在追隨其他人後，預設在時間軸納入回覆的貼文';
	@override String get newNoteRecived => '發現新貼文';
	@override String get newNote => '新的貼文';
	@override String get sounds => '音效';
	@override String get sound => '音效';
	@override String get notificationSoundSettings => '設定通知音效';
	@override String get listen => '聆聽';
	@override String get none => '無';
	@override String get showInPage => '在頁面中顯示';
	@override String get popout => '彈出式視窗';
	@override String get volume => '音量';
	@override String get masterVolume => '主音量';
	@override String get notUseSound => '關閉音效';
	@override String get useSoundOnlyWhenActive => '僅在 Misskey 於前景運作時發出音效';
	@override String get details => '詳細資訊';
	@override String get renoteDetails => '轉發貼文的細節';
	@override String get chooseEmoji => '選擇您的表情符號';
	@override String get unableToProcess => '操作無法完成';
	@override String get recentUsed => '最近使用';
	@override String get install => '安裝';
	@override String get uninstall => '解除安裝';
	@override String get installedApps => '已授權的應用程式';
	@override String get nothing => '查無項目';
	@override String get installedDate => '安裝時間';
	@override String get lastUsedDate => '最後上線日期';
	@override String get state => '狀態';
	@override String get sort => '排序';
	@override String get ascendingOrder => '昇冪';
	@override String get descendingOrder => '降冪';
	@override String get scratchpad => '暫存記憶體';
	@override String get scratchpadDescription => 'AiScript 控制臺為 AiScript 的實驗環境。您可以在此編寫、執行和確認程式碼與 Misskey 互動的結果。';
	@override String get uiInspector => 'UI 檢查';
	@override String get uiInspectorDescription => '您可以看到記憶體中存在的 UI 元件實例的清單。  UI 元件由 Ui:C: 系列函數產生。';
	@override String get output => '輸出';
	@override String get script => '腳本';
	@override String get disablePagesScript => '停用頁面的 AiScript 腳本';
	@override String get updateRemoteUser => '更新遠端使用者資訊';
	@override String get unsetUserAvatar => '移除使用者的大頭貼';
	@override String get unsetUserAvatarConfirm => '確定要移除使用者的大頭貼嗎？';
	@override String get unsetUserBanner => '移除使用者的橫幅圖像';
	@override String get unsetUserBannerConfirm => '確定要移除使用者的橫幅圖像嗎？';
	@override String get deleteAllFiles => '刪除所有檔案';
	@override String get deleteAllFilesConfirm => '要刪除所有檔案嗎？';
	@override String get removeAllFollowing => '解除所有追隨';
	@override String removeAllFollowingDescription({required Object host}) => '解除${host}所有的追隨。在伺服器不再存在時執行。';
	@override String get userSuspended => '該使用者已被停用。';
	@override String get userSilenced => '該使用者已被禁言。';
	@override String get yourAccountSuspendedTitle => '帳戶已被凍結';
	@override String get yourAccountSuspendedDescription => '該帳戶已因違反伺服器服務條款或其他原因而被凍結。您可以向管理員查詢更多資訊。請不要建立新帳戶。';
	@override String get tokenRevoked => '權杖無效';
	@override String get tokenRevokedDescription => '登入權杖失效，請重新登入。';
	@override String get accountDeleted => '帳戶已被刪除';
	@override String get accountDeletedDescription => '這個帳戶已被刪除。';
	@override String get menu => '選單';
	@override String get divider => '分隔線';
	@override String get addItem => '新增項目';
	@override String get rearrange => '排序方式';
	@override String get relays => '中繼器';
	@override String get addRelay => '新增中繼器';
	@override String get inboxUrl => '收件夾 URL';
	@override String get addedRelays => '已加入的中繼器';
	@override String get serviceworkerInfo => '如要使用推播通知，需要啟用此選項並設定金鑰。';
	@override String get deletedNote => '已刪除的貼文';
	@override String get invisibleNote => '私人貼文';
	@override String get enableInfiniteScroll => '啟用自動滾動頁面模式';
	@override String get visibility => '可見性';
	@override String get poll => '票選活動';
	@override String get useCw => '隱藏內容';
	@override String get enablePlayer => '開啟播放器';
	@override String get disablePlayer => '關閉播放器';
	@override String get expandTweet => '展開推文';
	@override String get themeEditor => '佈景主題編輯器';
	@override String get description => '描述';
	@override String get describeFile => '新增標題';
	@override String get enterFileDescription => '輸入標題';
	@override String get author => '作者';
	@override String get leaveConfirm => '尚未儲存修改。要放棄嗎？';
	@override String get manage => '管理';
	@override String get plugins => '外掛';
	@override String get preferencesBackups => '備份設定檔';
	@override String get deck => '多欄模式';
	@override String get undeck => '取消多欄模式';
	@override String get useBlurEffectForModal => '在對話框使用模糊效果';
	@override String get useFullReactionPicker => '使用全尺寸的反應選擇器';
	@override String get width => '寬度';
	@override String get height => '高度';
	@override String get large => '大';
	@override String get medium => '中';
	@override String get small => '小';
	@override String get generateAccessToken => '發行存取權杖';
	@override String get permission => '權限';
	@override String get adminPermission => '管理員權限';
	@override String get enableAll => '啟用全部';
	@override String get disableAll => '停用全部';
	@override String get tokenRequested => '允許存取帳戶';
	@override String get pluginTokenRequestedDescription => '此外掛將擁有在此設定的權限。';
	@override String get notificationType => '通知形式';
	@override String get edit => '編輯';
	@override String get emailServer => '電子郵件伺服器';
	@override String get enableEmail => '啟用發送電子郵件功能';
	@override String get emailConfigInfo => '用於確認電子郵件地址及密碼重置';
	@override String get email => '電子郵件';
	@override String get emailAddress => '電子郵件位址';
	@override String get smtpConfig => 'SMTP 伺服器設定';
	@override String get smtpHost => '主機';
	@override String get smtpPort => '埠';
	@override String get smtpUser => '使用者名稱';
	@override String get smtpPass => '密碼';
	@override String get emptyToDisableSmtpAuth => '將使用者名稱和密碼留空以關閉 SMTP 驗證。';
	@override String get smtpSecure => '在 SMTP 連接中使用隱式 SSL/TLS';
	@override String get smtpSecureInfo => '使用 STARTTLS 時關閉。';
	@override String get testEmail => '測試郵件發送';
	@override String get wordMute => '被靜音的文字';
	@override String get wordMuteDescription => '將包含指定語句的貼文最小化。 點擊最小化的貼文即可顯示。';
	@override String get hardWordMute => '硬文字靜音';
	@override String get showMutedWord => '顯示靜音字';
	@override String get hardWordMuteDescription => '隱藏含有指定語句的貼文。 與詞彙靜音不同的是，貼文將完全隱藏不見。';
	@override String get regexpError => '正規表達式錯誤';
	@override String regexpErrorDescription({required Object tab, required Object line}) => '${tab} 靜音文字的第 ${line} 行的正規表達式有錯誤：';
	@override String get instanceMute => '被靜音的實例';
	@override String userSaysSomething({required Object name}) => '${name}說了什麼';
	@override String userSaysSomethingAbout({required Object name, required Object word}) => '${name} 說了一些關於「${word}」的話';
	@override String get makeActive => '啟用';
	@override String get display => '檢視';
	@override String get copy => '複製';
	@override String get copiedToClipboard => '已複製到剪貼簿';
	@override String get metrics => '指標';
	@override String get overview => '概覽';
	@override String get logs => '日誌';
	@override String get delayed => '延遲';
	@override String get database => '資料庫';
	@override String get channel => '頻道';
	@override String get create => '新增';
	@override String get notificationSetting => '通知設定';
	@override String get notificationSettingDesc => '選擇顯示通知的類型';
	@override String get useGlobalSetting => '使用全域設定';
	@override String get useGlobalSettingDesc => '啟用時，將使用帳戶通知設定。停用時，則可以單獨設定。';
	@override String get other => '其他';
	@override String get regenerateLoginToken => '重新產生登入權杖';
	@override String get regenerateLoginTokenDescription => '重新產生用於登入的內部權杖。通常不需要使用此功能。重新產生後，所有裝置都將被登出。';
	@override String get theKeywordWhenSearchingForCustomEmoji => '這是搜尋自訂表情符號時的關鍵字';
	@override String get setMultipleBySeparatingWithSpace => '您可以使用空格分隔多個項目。';
	@override String get fileIdOrUrl => '檔案 ID 或 URL';
	@override String get behavior => '行為';
	@override String get sample => '範例';
	@override String get abuseReports => '檢舉';
	@override String get reportAbuse => '檢舉';
	@override String get reportAbuseRenote => '檢舉轉發貼文';
	@override String reportAbuseOf({required Object name}) => '檢舉${name}';
	@override String get fillAbuseReportDescription => '請填寫檢舉的詳細理由。如有需要，請附上相關 URL。';
	@override String get abuseReported => '檢舉完成。感謝您的報告。';
	@override String get reporter => '檢舉者';
	@override String get reporteeOrigin => '檢舉來源';
	@override String get reporterOrigin => '檢舉者來源';
	@override String get send => '發送';
	@override String get openInNewTab => '在新分頁中開啟';
	@override String get openInSideView => '在側欄中開啟';
	@override String get defaultNavigationBehaviour => '預設導航';
	@override String get editTheseSettingsMayBreakAccount => '修改這些設定可能會毀損您的帳戶';
	@override String get instanceTicker => '貼文的伺服器資訊';
	@override String waitingFor({required Object x}) => '等待${x}';
	@override String get random => '隨機';
	@override String get system => '系統';
	@override String get switchUi => '切換介面';
	@override String get desktop => '桌面';
	@override String get clip => '摘錄';
	@override String get createNew => '新建';
	@override String get optional => '可選';
	@override String get createNewClip => '建立新摘錄';
	@override String get unclip => '解除摘錄';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => '此貼文已包含在摘錄「${name}」中。 你想將貼文從這個摘錄中排除嗎？';
	@override String get public => '公開';
	@override String get private => '私密';
	@override String i18nInfo({required Object link}) => 'Misskey 已被志願者們翻譯成各種語言版本。您可以前往 ${link} 以協助翻譯。';
	@override String get manageAccessTokens => '管理存取權杖';
	@override String get accountInfo => '帳戶資訊';
	@override String get notesCount => '貼文數量';
	@override String get repliesCount => '回覆數量';
	@override String get renotesCount => '轉發數量';
	@override String get repliedCount => '回覆數量';
	@override String get renotedCount => '轉發次數';
	@override String get followingCount => '正在追隨的使用者數量';
	@override String get followersCount => '追隨者數量';
	@override String get sentReactionsCount => '反應發送次數';
	@override String get receivedReactionsCount => '收到反應次數';
	@override String get pollVotesCount => '已統計的投票數';
	@override String get pollVotedCount => '已投票數';
	@override String get yes => '是';
	@override String get no => '否';
	@override String get driveFilesCount => '雲端硬碟檔案數量';
	@override String get driveUsage => '雲端硬碟使用量';
	@override String get noCrawle => '拒絕搜尋引擎索引';
	@override String get noCrawleDescription => '要求網路搜尋引擎不要索引你的個人資料頁、貼文及頁面等。';
	@override String get lockedAccountInfo => '即使追隨需要核准，除非你將貼文的可見性設定為 「追隨者」，否則任何人都能看見你的貼文。';
	@override String get alwaysMarkSensitive => '預設標記檔案為敏感內容';
	@override String get loadRawImages => '以原始圖檔顯示附件圖檔的縮圖';
	@override String get disableShowingAnimatedImages => '不播放動態圖檔';
	@override String get highlightSensitiveMedia => '強調敏感標記';
	@override String get verificationEmailSent => '已發送驗證電子郵件。請點擊進入電子郵件中的連結以完成驗證。';
	@override String get notSet => '未設定';
	@override String get emailVerified => '已成功驗證您的電子郵件地址';
	@override String get noteFavoritesCount => '我的最愛貼文的數目';
	@override String get pageLikesCount => '頁面被按讚次數';
	@override String get pageLikedCount => '頁面被按讚次數';
	@override String get contact => '聯絡人';
	@override String get useSystemFont => '使用系統預設的字型';
	@override String get clips => '摘錄';
	@override String get experimentalFeatures => '實驗中的功能';
	@override String get experimental => '實驗性';
	@override String get thisIsExperimentalFeature => '這是一項實驗性功能，其行為會隨需要進行調整，也可能無法正常運作。';
	@override String get developer => '開發者';
	@override String get makeExplorable => '使自己的帳戶更容易被找到';
	@override String get makeExplorableDescription => '如果關閉，帳戶將不會被顯示在「探索」頁面中。';
	@override String get duplicate => '複製';
	@override String get left => '左';
	@override String get center => '置中';
	@override String get wide => '寬';
	@override String get narrow => '窄';
	@override String get reloadToApplySetting => '設定將會在頁面重新載入之後生效。要現在就重載頁面嗎？';
	@override String get needReloadToApply => '必須重新載入才會生效。';
	@override String get needToRestartServerToApply => '必須重新啟動伺服器才會使變更生效。';
	@override String get showTitlebar => '顯示標題列';
	@override String get clearCache => '清除快取資料';
	@override String onlineUsersCount({required Object n}) => '${n} 人上線';
	@override String nUsers({required Object n}) => '${n} 使用者';
	@override String nNotes({required Object n}) => '${n} 貼文';
	@override String get sendErrorReports => '傳送錯誤報告';
	@override String get sendErrorReportsDescription => '傳送問題報告至開發者以提升軟體品質。問題報告可能包括作業系統版本，瀏覽器類型，行為歷史記錄等。';
	@override String get myTheme => '我的佈景主題';
	@override String get backgroundColor => '背景';
	@override String get accentColor => '重點色彩';
	@override String get textColor => '文字';
	@override String get saveAs => '另存新檔';
	@override String get advanced => '進階';
	@override String get advancedSettings => '進階設定';
	@override String get value => '數值';
	@override String get createdAt => '建立於';
	@override String get updatedAt => '最後更新';
	@override String get saveConfirm => '您要儲存變更嗎？';
	@override String get deleteConfirm => '你確定要刪除嗎？';
	@override String get invalidValue => '輸入值無效。';
	@override String get registry => '登錄表';
	@override String get closeAccount => '停用帳戶';
	@override String get currentVersion => '目前版本';
	@override String get latestVersion => '最新版本';
	@override String get youAreRunningUpToDateClient => '您所使用的客戶端已經是最新的。';
	@override String get newVersionOfClientAvailable => '新版本的客戶端可用。';
	@override String get usageAmount => '使用量';
	@override String get capacity => '容量';
	@override String get inUse => '已使用';
	@override String get editCode => '編輯程式碼';
	@override String get apply => '套用';
	@override String get receiveAnnouncementFromInstance => '接收來自伺服器的通知';
	@override String get emailNotification => '郵件通知';
	@override String get publish => '發布';
	@override String get inChannelSearch => '頻道內搜尋';
	@override String get useReactionPickerForContextMenu => '點擊右鍵開啟反應選擇器';
	@override String typingUsers({required Object users}) => '${users}輸入中';
	@override String get jumpToSpecifiedDate => '跳轉到特定日期';
	@override String get showingPastTimeline => '顯示過往的時間軸';
	@override String get clear => '清除';
	@override String get markAllAsRead => '全部標示為已讀';
	@override String get goBack => '返回';
	@override String get unlikeConfirm => '要取消按讚嗎？';
	@override String get fullView => '全螢幕顯示';
	@override String get quitFullView => '退出全螢幕顯示';
	@override String get addDescription => '新增描述';
	@override String get userPagePinTip => '在貼文的選單中選擇「置頂」，即可置頂該貼文至您的個人檔案頁面。';
	@override String get notSpecifiedMentionWarning => '此貼文有未指定的提及';
	@override String get info => '資訊';
	@override String get userInfo => '使用者資訊';
	@override String get unknown => '未知';
	@override String get onlineStatus => '上線狀態';
	@override String get hideOnlineStatus => '隱藏上線狀態';
	@override String get hideOnlineStatusDescription => '隱藏上線狀態後，可能會降低搜尋等功能的便利性。';
	@override String get online => '線上';
	@override String get active => '最近活躍';
	@override String get offline => '離線';
	@override String get notRecommended => '不推薦';
	@override String get botProtection => 'Bot 防護';
	@override String get instanceBlocking => '已封鎖或禁言的伺服器';
	@override String get selectAccount => '選擇帳戶';
	@override String get switchAccount => '切換帳戶';
	@override String get enabled => '已啟用';
	@override String get disabled => '已停用';
	@override String get quickAction => '快捷操作';
	@override String get user => '使用者';
	@override String get administration => '管理';
	@override String get accounts => '帳戶';
	@override String get switch_ => '切換';
	@override String get noMaintainerInformationWarning => '尚未設定管理員訊息。';
	@override String get noInquiryUrlWarning => '尚未設定聯絡表單網址。';
	@override String get noBotProtectionWarning => '尚未設定 Bot 防護。';
	@override String get configure => '設定';
	@override String get postToGallery => '發佈到相簿';
	@override String get postToHashtag => '以此主題標籤發佈';
	@override String get gallery => '相簿';
	@override String get recentPosts => '最新貼文';
	@override String get popularPosts => '熱門的貼文';
	@override String get shareWithNote => '在貼文中分享';
	@override String get ads => '廣告';
	@override String get expiration => '期限';
	@override String get startingperiod => '開始期間';
	@override String get memo => '備忘錄';
	@override String get priority => '優先級';
	@override String get high => '高';
	@override String get middle => '中';
	@override String get low => '低';
	@override String get emailNotConfiguredWarning => '沒有設定電子郵件地址';
	@override String get ratio => '%';
	@override String get previewNoteText => '預覽文本';
	@override String get customCss => '自定義 CSS';
	@override String get customCssWarn => '這個設定必須由具備相關知識的人員操作，不當的設定可能導致客戶端無法正常使用。';
	@override String get global => '全域';
	@override String get squareAvatars => '大頭貼以方形顯示';
	@override String get sent => '發送';
	@override String get received => '收取';
	@override String get searchResult => '搜尋結果';
	@override String get hashtags => '標籤';
	@override String get troubleshooting => '故障排除';
	@override String get useBlurEffect => '在 UI 上使用模糊效果';
	@override String get learnMore => '更多資訊';
	@override String get misskeyUpdated => 'Misskey 更新完成！';
	@override String get whatIsNew => '顯示更新資訊';
	@override String get translate => '翻譯';
	@override String translatedFrom({required Object x}) => '從 ${x} 翻譯';
	@override String get accountDeletionInProgress => '正在刪除帳戶';
	@override String get usernameInfo => '在伺服器上您的帳戶是唯一的識別名稱。您可以使用字母 (a ~ z, A ~ Z)、數字 (0 ~ 9) 和下底線 (_)。之後帳戶名是不能更改的。';
	@override String get aiChanMode => '小藍模式';
	@override String get devMode => '開發者模式';
	@override String get keepCw => '保持隱藏內容';
	@override String get pubSub => 'Pub/Sub 帳戶';
	@override String get lastCommunication => '最近的通信';
	@override String get resolved => '已解決';
	@override String get unresolved => '未解決';
	@override String get breakFollow => '解除追隨者';
	@override String get breakFollowConfirm => '確定要取消被追隨嗎？';
	@override String get itsOn => '已開啟';
	@override String get itsOff => '已關閉';
	@override String get on => '開啟';
	@override String get off => '關閉';
	@override String get emailRequiredForSignup => '註冊帳戶需要電子郵件地址';
	@override String get unread => '未讀';
	@override String get filter => '篩選';
	@override String get controlPanel => '控制臺';
	@override String get manageAccounts => '管理帳戶';
	@override String get makeReactionsPublic => '將反應設為公開';
	@override String get makeReactionsPublicDescription => '將您做過的反應設為公開可見。';
	@override String get classic => '經典';
	@override String get muteThread => '將貼文串設為靜音';
	@override String get unmuteThread => '將貼文串的靜音解除';
	@override String get followingVisibility => '追隨中的可見性';
	@override String get followersVisibility => '追隨者的可見性';
	@override String get continueThread => '查看更多貼文';
	@override String get deleteAccountConfirm => '將要刪除帳戶。是否確定？';
	@override String get incorrectPassword => '密碼錯誤。';
	@override String get incorrectTotp => '一次性密碼錯誤，或者已過期。';
	@override String voteConfirm({required Object choice}) => '確定投給「${choice}」？';
	@override String get hide => '隱藏';
	@override String get useDrawerReactionPickerForMobile => '在行動裝置上使用抽屜顯示';
	@override String welcomeBackWithName({required Object name}) => '歡迎回來，${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => '點擊 [${ok}] 完成電子郵件地址認證。';
	@override String get overridedDeviceKind => '裝置類型';
	@override String get smartphone => '智慧型手機';
	@override String get tablet => '平板';
	@override String get auto => '自動';
	@override String get themeColor => '佈景主題顏色';
	@override String get size => '大小';
	@override String get numberOfColumn => '列數';
	@override String get searchByGoogle => '搜尋';
	@override String get instanceDefaultLightTheme => '實例預設的淺色佈景主題';
	@override String get instanceDefaultDarkTheme => '實例預設的深色佈景主題';
	@override String get instanceDefaultThemeDescription => '輸入物件形式的佈景主題代碼';
	@override String get mutePeriod => '靜音的期限';
	@override String get period => '期限';
	@override String get indefinitely => '無期限';
	@override String get tenMinutes => '十分鐘';
	@override String get oneHour => '一小時';
	@override String get oneDay => '一天';
	@override String get oneWeek => '一週';
	@override String get oneMonth => '一個月';
	@override String get threeMonths => '3 個月';
	@override String get oneYear => '1 年';
	@override String get threeDays => '3 日';
	@override String get reflectMayTakeTime => '可能需要一些時間才會出現效果。';
	@override String get failedToFetchAccountInformation => '取得帳戶資訊失敗';
	@override String get rateLimitExceeded => '已超過速率限制';
	@override String get cropImage => '圖片裁剪';
	@override String get cropImageAsk => '要剪裁圖片嗎？';
	@override String get cropYes => '裁剪';
	@override String get cropNo => '使用原圖';
	@override String get file => '檔案';
	@override String recentNHours({required Object n}) => '過去 ${n} 小時';
	@override String recentNDays({required Object n}) => '過去 ${n} 天';
	@override String get noEmailServerWarning => '尚未設定電子郵件伺服器。';
	@override String get thereIsUnresolvedAbuseReportWarning => '有尚未處理的檢舉。';
	@override String get recommended => '推薦';
	@override String get check => '檢查';
	@override String get driveCapOverrideLabel => '更改這個使用者的雲端硬碟容量上限';
	@override String get driveCapOverrideCaption => '如果指定 0 以下的值，就會被取消。';
	@override String get requireAdminForView => '必須以管理員帳戶登入才可以檢視。';
	@override String get isSystemAccount => '由系統自動建立與管理的帳戶。';
	@override String typeToConfirm({required Object x}) => '要執行這項操作，請輸入 ${x} ';
	@override String get deleteAccount => '刪除帳戶';
	@override String get document => '文件';
	@override String get numberOfPageCache => '快取頁面數';
	@override String get numberOfPageCacheDescription => '增加數量會提高便利性，但也會增加負荷與記憶體使用量。';
	@override String get logoutConfirm => '確定要登出嗎？';
	@override String get logoutWillClearClientData => '當您登出時，客戶端的設定資訊將從瀏覽器中清除。為了能夠在重新登入時恢復您的設定資訊，請啟用設定內的自動備份選項。';
	@override String get lastActiveDate => '上次使用日期及時間';
	@override String get statusbar => '狀態列';
	@override String get pleaseSelect => '請選擇';
	@override String get reverse => '翻轉';
	@override String get colored => '彩色';
	@override String get refreshInterval => '更新間隔';
	@override String get label => '標籤';
	@override String get type => '類型';
	@override String get speed => '速度';
	@override String get slow => '慢';
	@override String get fast => '快';
	@override String get sensitiveMediaDetection => '敏感檔案的檢測';
	@override String get localOnly => '僅限本地';
	@override String get remoteOnly => '僅限遠端';
	@override String get failedToUpload => '上傳失敗';
	@override String get cannotUploadBecauseInappropriate => '由於判定可能包含不適當的內容，因此無法上傳。';
	@override String get cannotUploadBecauseNoFreeSpace => '由於雲端硬碟沒有可用空間，因此無法上傳。';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => '由於超過了檔案大小的限制，無法上傳。';
	@override String get cannotUploadBecauseUnallowedFileType => '由於檔案類型不被允許，無法上傳。\n';
	@override String get beta => '測試版';
	@override String get enableAutoSensitive => '自動 NSFW 判定';
	@override String get enableAutoSensitiveDescription => '如果可行，它將使用機器學習技術判斷檔案是否需要標記為敏感。即使關閉此功能，也可能會依伺服器規則而自動啟用。';
	@override String get activeEmailValidationDescription => '主動地驗證使用者的電子郵件地址，以確定是否是一次性地址以及是否可以真正與其進行通訊。關閉時，僅檢查格式是否正確。';
	@override String get navbar => '導覽列';
	@override String get shuffle => '隨機';
	@override String get account => '帳戶';
	@override String get move => '移動 ';
	@override String get pushNotification => '推播通知';
	@override String get subscribePushNotification => '啟用推播通知';
	@override String get unsubscribePushNotification => '停用推播通知';
	@override String get pushNotificationAlreadySubscribed => '推播通知啟用中';
	@override String get pushNotificationNotSupported => '瀏覽器或伺服器不支援推播通知';
	@override String get sendPushNotificationReadMessage => '如果已閱讀通知與訊息，就刪除推播通知';
	@override String get sendPushNotificationReadMessageCaption => '可能會導致裝置的電池消耗量增加。';
	@override String get windowMaximize => '最大化';
	@override String get windowMinimize => '最小化';
	@override String get windowRestore => '復原';
	@override String get caption => '標題';
	@override String get loggedInAsBot => '以機器人帳戶登入中';
	@override String get tools => '工具';
	@override String get cannotLoad => '無法載入';
	@override String get numberOfProfileView => '個人檔案檢視次數';
	@override String get like => '讚';
	@override String get unlike => '收回讚';
	@override String get numberOfLikes => '讚數';
	@override String get show => '檢視';
	@override String get neverShow => '不再顯示';
	@override String get remindMeLater => '以後再說';
	@override String get didYouLikeMisskey => '您喜歡 Misskey 嗎？';
	@override String pleaseDonate({required Object host}) => 'Misskey是由${host}使用的免費軟體。請贊助我們，讓開發的工作能夠持續！';
	@override String correspondingSourceIsAvailable({required Object anchor}) => '對應的原始碼可以在 ${anchor} 處找到。';
	@override String get roles => '角色';
	@override String get role => '角色';
	@override String get noRole => '沒有角色';
	@override String get normalUser => '一般使用者';
	@override String get undefined => '未定義';
	@override String get assign => '指派';
	@override String get unassign => '取消指派';
	@override String get color => '顏色';
	@override String get manageCustomEmojis => '管理自訂表情符號';
	@override String get manageAvatarDecorations => '管理頭像裝飾';
	@override String get youCannotCreateAnymore => '您無法再建立更多了。';
	@override String get cannotPerformTemporary => '暫時無法進行';
	@override String get cannotPerformTemporaryDescription => '由於超過操作次數限制，因此暫時無法進行。請稍後再嘗試。';
	@override String get invalidParamError => '參數錯誤';
	@override String get invalidParamErrorDescription => '請求參數有問題。這可能是漏洞或輸入過多字元所致。';
	@override String get permissionDeniedError => '操作被拒絕';
	@override String get permissionDeniedErrorDescription => '此帳戶沒有執行這個操作的權限。';
	@override String get preset => '預設值';
	@override String get selectFromPresets => '從預設值中選擇';
	@override String get achievements => '成就';
	@override String get gotInvalidResponseError => '伺服器的回應無效';
	@override String get gotInvalidResponseErrorDescription => '伺服器可能已關閉或者在維護中，請稍後再試。';
	@override String get thisPostMayBeAnnoying => '這篇貼文可能會造成別人的困擾。';
	@override String get thisPostMayBeAnnoyingHome => '發佈到首頁';
	@override String get thisPostMayBeAnnoyingCancel => '退出';
	@override String get thisPostMayBeAnnoyingIgnore => '直接發佈貼文';
	@override String get collapseRenotes => '省略顯示已看過的轉發貼文';
	@override String get collapseRenotesDescription => '將已做過反應和轉發的貼文折疊顯示。';
	@override String get internalServerError => '內部伺服器錯誤';
	@override String get internalServerErrorDescription => '內部伺服器出現意外錯誤。';
	@override String get copyErrorInfo => '複製錯誤資訊';
	@override String get joinThisServer => '在此伺服器上註冊';
	@override String get exploreOtherServers => '探索其他伺服器';
	@override String get letsLookAtTimeline => '看看時間軸';
	@override String get disableFederationConfirm => '要停止聯邦功能嗎？';
	@override String get disableFederationConfirmWarn => '即使停止了聯邦功能，貼文也不會變成私密的。在大部分的情況下，沒有必要停止聯邦功能。';
	@override String get disableFederationOk => '停止聯邦功能';
	@override String get invitationRequiredToRegister => '目前這個伺服器為邀請制，必須擁有邀請碼才能註冊。';
	@override String get emailNotSupported => '這個伺服器不支援寄送郵件';
	@override String get postToTheChannel => '發佈到頻道';
	@override String get cannotBeChangedLater => '之後不能變更。';
	@override String get reactionAcceptance => '接受表情反應';
	@override String get likeOnly => '僅限讚';
	@override String get likeOnlyForRemote => '遠端僅限讚';
	@override String get nonSensitiveOnly => '僅限非敏感';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => '僅限非敏感（遠端僅限按讚）';
	@override String get rolesAssignedToMe => '指派給自己的角色';
	@override String get resetPasswordConfirm => '重設密碼？';
	@override String get sensitiveWords => '敏感詞';
	@override String get sensitiveWordsDescription => '將含有設定詞彙的貼文可見性設為發送至首頁。可以用換行來進行複數的設定。';
	@override String get sensitiveWordsDescription2 => '空格代表「以及」（AND），斜線包圍關鍵字代表使用正規表達式。';
	@override String get prohibitedWords => '禁語';
	@override String get prohibitedWordsDescription => '當要發布包含禁語的貼文時，會出現錯誤。可以用換行分隔來設定多個禁語。';
	@override String get prohibitedWordsDescription2 => '空格代表「以及」（AND），斜線包圍關鍵字代表使用正規表達式。';
	@override String get hiddenTags => '隱藏標籤';
	@override String get hiddenTagsDescription => '設定的標籤不會在趨勢中顯示，換行可以設定多個標籤。';
	@override String get notesSearchNotAvailable => '無法使用搜尋貼文功能。';
	@override String get license => '授權';
	@override String get unfavoriteConfirm => '要取消收錄我的最愛嗎？';
	@override String get myClips => '我的摘錄';
	@override String get drivecleaner => '雲端硬碟清掃器';
	@override String get retryAllQueuesNow => '立刻重試所有佇列';
	@override String get retryAllQueuesConfirmTitle => '要現在重試嗎？';
	@override String get retryAllQueuesConfirmText => '伺服器的負荷可能會暫時增加。';
	@override String get enableChartsForRemoteUser => '生成遠端使用者的圖表';
	@override String get enableChartsForFederatedInstances => '生成遠端伺服器的圖表';
	@override String get enableStatsForFederatedInstances => '取得遠端伺服器資訊';
	@override String get showClipButtonInNoteFooter => '新增摘錄按鈕至貼文';
	@override String get reactionsDisplaySize => '反應的顯示尺寸';
	@override String get limitWidthOfReaction => '限制反應的最大寬度，並縮小顯示尺寸。';
	@override String get noteIdOrUrl => '貼文 ID 或 URL';
	@override String get video => '影片';
	@override String get videos => '影片';
	@override String get audio => '音效';
	@override String get audioFiles => '音效檔案';
	@override String get dataSaver => '數據節省模式';
	@override String get accountMigration => '遷移帳戶';
	@override String get accountMoved => '這個使用者已遷移至新的帳戶：';
	@override String get accountMovedShort => '此帳戶已遷移';
	@override String get operationForbidden => '不允許此操作';
	@override String get forceShowAds => '總是顯示廣告';
	@override String get addMemo => '新增備註';
	@override String get editMemo => '編輯備註';
	@override String get reactionsList => '反應列表';
	@override String get renotesList => '轉發貼文列表';
	@override String get notificationDisplay => '通知';
	@override String get leftTop => '左上';
	@override String get rightTop => '右上';
	@override String get leftBottom => '左下';
	@override String get rightBottom => '右下';
	@override String get stackAxis => '堆疊方向';
	@override String get vertical => '直向';
	@override String get horizontal => '橫向';
	@override String get position => '位置';
	@override String get serverRules => '伺服器規則';
	@override String get pleaseConfirmBelowBeforeSignup => '在本伺服器註冊之前，必須確認並同意以下內容。';
	@override String get pleaseAgreeAllToContinue => '必須全部勾選「同意」才能繼續。';
	@override String get continue_ => '繼續';
	@override String get preservedUsernames => '保留的使用者名稱';
	@override String get preservedUsernamesDescription => '換行列舉要保留的使用者名稱。此處出現的名稱將在註冊時禁用，但由管理者建立帳戶則不受此限。此外，既有的帳戶也不受影響。';
	@override String get createNoteFromTheFile => '由此檔案建立貼文';
	@override String get archive => '封存';
	@override String get archived => '已封存';
	@override String get unarchive => '取消封存';
	@override String channelArchiveConfirmTitle({required Object name}) => '要封存${name}嗎？';
	@override String get channelArchiveConfirmDescription => '封存後，將不會在頻道列表與搜尋結果中顯示，也無法發佈新貼文。';
	@override String get thisChannelArchived => '這個頻道已被封存。';
	@override String get displayOfNote => '顯示貼文';
	@override String get initialAccountSetting => '初始設定';
	@override String get youFollowing => '追隨中';
	@override String get preventAiLearning => '拒絕接受生成式AI的訓練';
	@override String get preventAiLearningDescription => '要求站外生成式 AI 不使用您發佈的內容訓練模型。此功能會使伺服器於 HTML 回應新增「noai」標籤，而因為要視乎 AI 會否遵守該標籤，所以此功能無法完全阻止所有 AI 使用您的內容。';
	@override String get options => '選項';
	@override String get specifyUser => '指定使用者';
	@override String get lookupConfirm => '要查詢嗎？';
	@override String get openTagPageConfirm => '要開啟標籤的頁面嗎？';
	@override String get specifyHost => '指定主機';
	@override String get failedToPreviewUrl => '無法預覽';
	@override String get update => '更新';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => '可以使用此表情符號為反應的角色';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => '如沒有指定角色，任何人都可使用此表情回應。';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => '必須為公開角色。';
	@override String get cancelReactionConfirm => '要取消此反應嗎？';
	@override String get changeReactionConfirm => '要更改反應嗎？';
	@override String get later => '稍後再說';
	@override String get goToMisskey => '往 Misskey';
	@override String get additionalEmojiDictionary => '表情符號的附加辭典';
	@override String get installed => '已安裝';
	@override String get branding => '品牌宣傳';
	@override String get enableServerMachineStats => '公佈伺服器的機器資訊';
	@override String get enableIdenticonGeneration => '啟用生成使用者的 Identicon ';
	@override String get turnOffToImprovePerformance => '關閉時會提高性能。';
	@override String get createInviteCode => '建立邀請碼';
	@override String get createWithOptions => '使用選項建立';
	@override String get createCount => '建立數';
	@override String get inviteCodeCreated => '已建立邀請碼';
	@override String get inviteLimitExceeded => '可建立的邀請碼已達上限。';
	@override String createLimitRemaining({required Object limit}) => '可建立的邀請碼：剩餘 ${limit} 個';
	@override String inviteLimitResetCycle({required Object time, required Object limit}) => '可以在 ${time} 內建立最多 ${limit} 個邀請碼。';
	@override String get expirationDate => '有效日期';
	@override String get noExpirationDate => '不設有效日期';
	@override String get inviteCodeUsedAt => '使用邀請碼的日期和時間';
	@override String get registeredUserUsingInviteCode => '用了邀請碼的使用者';
	@override String get waitingForMailAuth => '等待電子郵件認證';
	@override String get inviteCodeCreator => '建立了邀請碼的使用者';
	@override String get usedAt => '使用的日期和時間';
	@override String get unused => '未使用';
	@override String get used => '已使用';
	@override String get expired => '過期';
	@override String get doYouAgree => '你同意嗎？';
	@override String get beSureToReadThisAsItIsImportant => '重要，請務必閱讀。';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => '我已仔細閱讀並同意「${x}」的內容。';
	@override String get dialog => '對話方塊';
	@override String get icon => '圖示';
	@override String get forYou => '給您';
	@override String get currentAnnouncements => '最新公告';
	@override String get pastAnnouncements => '歷史公告';
	@override String get youHaveUnreadAnnouncements => '有未讀的公告。';
	@override String get useSecurityKey => '請按照瀏覽器或裝置上的說明來使用安全金鑰或通行金鑰。';
	@override String get replies => '回覆';
	@override String get renotes => '轉發';
	@override String get loadReplies => '閱覽回覆';
	@override String get loadConversation => '閱覽對話';
	@override String get pinnedList => '已置頂的清單';
	@override String get keepScreenOn => '保持裝置螢幕開啟';
	@override String get verifiedLink => '已驗證連結';
	@override String get notifyNotes => '開啟貼文通知';
	@override String get unnotifyNotes => '關閉貼文通知';
	@override String get authentication => '驗證';
	@override String get authenticationRequiredToContinue => '請於繼續前完成驗證';
	@override String get dateAndTime => '日期與時間';
	@override String get showRenotes => '顯示其他人的轉發貼文';
	@override String get edited => '已編輯';
	@override String get notificationRecieveConfig => '接受通知的設定';
	@override String get mutualFollow => '互相追隨';
	@override String get followingOrFollower => '追隨中或追隨者';
	@override String get fileAttachedOnly => '只顯示包含附件的貼文';
	@override String get showRepliesToOthersInTimeline => '在時間軸上顯示給其他人的回覆';
	@override String get hideRepliesToOthersInTimeline => '在時間軸上隱藏給其他人的回覆';
	@override String get showRepliesToOthersInTimelineAll => '在時間軸包含追隨中所有人的回覆';
	@override String get hideRepliesToOthersInTimelineAll => '在時間軸不包含追隨中所有人的回覆';
	@override String get confirmShowRepliesAll => '進行此操作後無法復原。您真的希望時間軸「包含」您目前追隨的所有人的回覆嗎？';
	@override String get confirmHideRepliesAll => '進行此操作後無法復原。您真的希望時間軸「不包含」您目前追隨的所有人的回覆嗎？';
	@override String get externalServices => '外部服務';
	@override String get sourceCode => '原始碼';
	@override String get sourceCodeIsNotYetProvided => '尚未提供原始碼，請洽詢管理員解決這個問題。';
	@override String get repositoryUrl => '儲存庫 URL';
	@override String get repositoryUrlDescription => '如果存在可公開取得原始碼的儲存庫，請輸入其 URL。 如果您按原樣使用 Misskey（不對原始碼進行任何更改），請輸入 https://github.com/misskey-dev/misskey。';
	@override String get repositoryUrlOrTarballRequired => '如果儲存庫不是公開的，則必須提供 tarball。 詳細資訊請參閱 .config/example.yml。';
	@override String get feedback => '意見回饋';
	@override String get feedbackUrl => '意見回饋 URL';
	@override String get impressum => '營運者資訊';
	@override String get impressumUrl => '營運者資訊 URL';
	@override String get impressumDescription => '在德國與部份地區必須要明確顯示營運者資訊。';
	@override String get privacyPolicy => '隱私政策';
	@override String get privacyPolicyUrl => '隱私政策 URL';
	@override String get tosAndPrivacyPolicy => '服務條款和隱私政策';
	@override String get avatarDecorations => '頭像裝飾';
	@override String get attach => '裝上';
	@override String get detach => '取下';
	@override String get detachAll => '全部移除';
	@override String get angle => '角度';
	@override String get flip => '翻轉';
	@override String get showAvatarDecorations => '顯示頭像裝飾';
	@override String get releaseToRefresh => '放開以更新內容';
	@override String get refreshing => '載入更新中';
	@override String get pullDownToRefresh => '往下拉來更新內容';
	@override String get useGroupedNotifications => '分組顯示通知訊息';
	@override String get signupPendingError => '驗證您的電子郵件地址時出現問題。連結可能已過期。';
	@override String get cwNotationRequired => '如果開啟「隱藏內容」，則需要註解說明。';
	@override String get doReaction => '做出反應';
	@override String get code => '程式碼';
	@override String get reloadRequiredToApplySettings => '需要重新載入頁面設定才能生效。';
	@override String remainingN({required Object n}) => '剩餘：${n}';
	@override String get overwriteContentConfirm => '確定要覆蓋目前的內容嗎？';
	@override String get seasonalScreenEffect => '隨季節變換畫面的呈現';
	@override String get decorate => '裝飾';
	@override String get addMfmFunction => '插入 MFM 功能語法';
	@override String get enableQuickAddMfmFunction => '顯示進階 MFM 選擇器';
	@override String get bubbleGame => '氣泡遊戲';
	@override String get sfx => '音效';
	@override String get soundWillBePlayed => '將播放音效';
	@override String get showReplay => '觀看重播';
	@override String get replay => '重播';
	@override String get replaying => '重播中';
	@override String get endReplay => '退出重播';
	@override String get copyReplayData => '複製重播資料';
	@override String get ranking => '排行榜';
	@override String lastNDays({required Object n}) => '過去 ${n} 天';
	@override String get backToTitle => '回到遊戲標題頁';
	@override String get hemisphere => '您居住的地區';
	@override String get withSensitive => '顯示包含敏感檔案的貼文';
	@override String userSaysSomethingSensitive({required Object name}) => '包含 ${name} 敏感檔案的貼文';
	@override String get enableHorizontalSwipe => '滑動切換時間軸';
	@override String get loading => '載入中';
	@override String get surrender => '退出';
	@override String get gameRetry => '再試一次';
	@override String get notUsePleaseLeaveBlank => '如果不使用的話請留白';
	@override String get useTotp => '使用一次性密碼';
	@override String get useBackupCode => '使用備用驗證碼';
	@override String get launchApp => '啟動 APP';
	@override String get useNativeUIForVideoAudioPlayer => '使用瀏覽器的 UI 播放影片與音訊';
	@override String get keepOriginalFilename => '保留原始檔名';
	@override String get keepOriginalFilenameDescription => '如果關閉此設定，上傳時檔案名稱會自動替換為隨機字串。';
	@override String get noDescription => '沒有說明文字';
	@override String get alwaysConfirmFollow => '追隨時總是確認';
	@override String get inquiry => '聯絡我們';
	@override String get tryAgain => '請再試一次。';
	@override String get confirmWhenRevealingSensitiveMedia => '要顯示敏感媒體時需確認';
	@override String get sensitiveMediaRevealConfirm => '這是敏感媒體。確定要顯示嗎？';
	@override String get createdLists => '已建立的清單';
	@override String get createdAntennas => '已建立的天線';
	@override String fromX({required Object x}) => '自 ${x}';
	@override String get genEmbedCode => '產生嵌入程式碼';
	@override String get noteOfThisUser => '這個使用者的貼文列表';
	@override String get clipNoteLimitExceeded => '沒辦法在這個摘錄中增加更多貼文了。';
	@override String get performance => '性能';
	@override String get modified => '已變更';
	@override String get discard => '取消';
	@override String thereAreNChanges({required Object n}) => '有 ${n} 處的變更';
	@override String get signinWithPasskey => '使用通行金鑰登入';
	@override String get unknownWebAuthnKey => '未註冊的通行金鑰。';
	@override String get passkeyVerificationFailed => '驗證通行金鑰失敗。';
	@override String get passkeyVerificationSucceededButPasswordlessLoginDisabled => '雖然驗證通行金鑰成功，但是無密碼登入的方式是停用的。';
	@override String get messageToFollower => '給追隨者的訊息';
	@override String get target => '目標 ';
	@override String get testCaptchaWarning => '此功能用於 CAPTCHA 的測試。<strong>請勿在正式環境中使用。</strong>';
	@override String get prohibitedWordsForNameOfUser => '禁止使用的字詞（使用者名稱）';
	@override String get prohibitedWordsForNameOfUserDescription => '如果使用者名稱包含此清單中的任何字串，則拒絕重新命名使用者。 具有審查員權限的使用者不受此限制的影響。';
	@override String get yourNameContainsProhibitedWords => '您嘗試更改的名稱包含禁止的字串';
	@override String get yourNameContainsProhibitedWordsDescription => '名稱中包含禁止使用的字串。 如果您想使用此名稱，請聯絡您的伺服器管理員。';
	@override String get thisContentsAreMarkedAsSigninRequiredByAuthor => '作者將其設定為需要登入才能顯示。';
	@override String get lockdown => '鎖定';
	@override String get pleaseSelectAccount => '請選擇帳戶';
	@override String get availableRoles => '可用角色';
	@override String get acknowledgeNotesAndEnable => '了解注意事項後再開啟。';
	@override String get federationSpecified => '此伺服器以白名單聯邦的方式運作。除了管理員指定的伺服器外，它無法與其他伺服器互動。';
	@override String get federationDisabled => '此伺服器未開啟站台聯邦。無法與其他伺服器上的使用者互動。';
	@override String get confirmOnReact => '在做出反應前先確認';
	@override String reactAreYouSure({required Object emoji}) => '用「 ${emoji} 」反應嗎？';
	@override String get markAsSensitiveConfirm => '要將這個媒體設定為敏感嗎？';
	@override String get unmarkAsSensitiveConfirm => '要解除這個媒體的敏感設定嗎？';
	@override String get preferences => '環境設定';
	@override String get accessibility => '輔助工具';
	@override String get preferencesProfile => '設定檔案';
	@override String get copyPreferenceId => '複製設定 ID';
	@override String get resetToDefaultValue => '還原成預設值';
	@override String get overrideByAccount => '覆寫帳號';
	@override String get untitled => '無標題';
	@override String get noName => '沒有名稱';
	@override String get skip => '跳過';
	@override String get restore => '還原';
	@override String get syncBetweenDevices => '裝置之間的同步化';
	@override String get preferenceSyncConflictTitle => '伺服器上存在設定值';
	@override String get preferenceSyncConflictText => '已啟用同步的設定項目會將設定值儲存至伺服器，並已找到該設定項目在伺服器上儲存的設定值。請選擇要使用哪個設定值進行覆寫。';
	@override String get preferenceSyncConflictChoiceMerge => '合併至';
	@override String get preferenceSyncConflictChoiceServer => '伺服器設定值';
	@override String get preferenceSyncConflictChoiceDevice => '裝置的設定值';
	@override String get preferenceSyncConflictChoiceCancel => '取消啟用同步';
	@override String get paste => '貼上';
	@override String get emojiPalette => '表情符號調色盤';
	@override String get postForm => '發文視窗';
	@override String get textCount => '字數';
	@override String get information => '關於';
	@override String get chat => '聊天';
	@override String get migrateOldSettings => '遷移舊設定資訊';
	@override String get migrateOldSettings_description => '通常情況下，這會自動進行，但若因某些原因未能順利遷移，您可以手動觸發遷移處理。請注意，當前的設定資訊將會被覆寫。';
	@override String get compress => '壓縮';
	@override String get right => '右';
	@override String get bottom => '下';
	@override String get top => '上';
	@override String get embed => '嵌入';
	@override String get settingsMigrating => '正在移轉設定。請稍候……（之後也可以到「設定 → 其他 → 舊設定資訊移轉」中手動進行移轉）';
	@override String get readonly => '唯讀';
	@override String get goToDeck => '回去甲板';
	@override String get federationJobs => '聯邦通訊作業';
	@override String get driveAboutTip => '在「雲端硬碟」中，會顯示過去上傳的檔案列表。<br>\n可以在附加到貼文時重新利用，或者事先上傳之後再用於發布。<br>\n<b>請注意，刪除檔案後，之前使用過該檔案的所有地方（貼文、頁面、大頭貼、橫幅等）也會一併無法顯示。</b><br>\n也可以建立資料夾來整理檔案。';
	@override String get scrollToClose => '用滾輪關閉';
	@override String get advice => '建議';
	@override String get realtimeMode => '即時模式';
	@override String get turnItOn => '開啟';
	@override String get turnItOff => '關閉';
	@override String get emojiMute => '表情符號靜音';
	@override String get emojiUnmute => '表情符號解除靜音';
	@override String muteX({required Object x}) => '將 ${x} 靜音';
	@override String unmuteX({required Object x}) => '將 ${x} 解除靜音';
	@override String get abort => '取消';
	@override String get tip => '提示與技巧';
	@override String get redisplayAllTips => '重新顯示所有「提示與技巧」';
	@override String get hideAllTips => '隱藏所有「提示與技巧」';
	@override String get defaultImageCompressionLevel => '預設的影像壓縮程度';
	@override String get defaultImageCompressionLevel_description => '低的話可以保留畫質，但是會增加檔案的大小。<br>高的話可以減少檔案大小，但是會降低畫質。';
	@override late final _TranslationsMisskeyChatZhTw chat_ = _TranslationsMisskeyChatZhTw._(_root);
	@override late final _TranslationsMisskeyEmojiPaletteZhTw emojiPalette_ = _TranslationsMisskeyEmojiPaletteZhTw._(_root);
	@override late final _TranslationsMisskeySettingsZhTw settings_ = _TranslationsMisskeySettingsZhTw._(_root);
	@override late final _TranslationsMisskeyPreferencesProfileZhTw preferencesProfile_ = _TranslationsMisskeyPreferencesProfileZhTw._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupZhTw preferencesBackup_ = _TranslationsMisskeyPreferencesBackupZhTw._(_root);
	@override late final _TranslationsMisskeyAccountSettingsZhTw accountSettings_ = _TranslationsMisskeyAccountSettingsZhTw._(_root);
	@override late final _TranslationsMisskeyAbuseUserReportZhTw abuseUserReport_ = _TranslationsMisskeyAbuseUserReportZhTw._(_root);
	@override late final _TranslationsMisskeyDeliveryZhTw delivery_ = _TranslationsMisskeyDeliveryZhTw._(_root);
	@override late final _TranslationsMisskeyBubbleGameZhTw bubbleGame_ = _TranslationsMisskeyBubbleGameZhTw._(_root);
	@override late final _TranslationsMisskeyAnnouncementZhTw announcement_ = _TranslationsMisskeyAnnouncementZhTw._(_root);
	@override late final _TranslationsMisskeyInitialAccountSettingZhTw initialAccountSetting_ = _TranslationsMisskeyInitialAccountSettingZhTw._(_root);
	@override late final _TranslationsMisskeyInitialTutorialZhTw initialTutorial_ = _TranslationsMisskeyInitialTutorialZhTw._(_root);
	@override late final _TranslationsMisskeyTimelineDescriptionZhTw timelineDescription_ = _TranslationsMisskeyTimelineDescriptionZhTw._(_root);
	@override late final _TranslationsMisskeyServerRulesZhTw serverRules_ = _TranslationsMisskeyServerRulesZhTw._(_root);
	@override late final _TranslationsMisskeyServerSettingsZhTw serverSettings_ = _TranslationsMisskeyServerSettingsZhTw._(_root);
	@override late final _TranslationsMisskeyAccountMigrationZhTw accountMigration_ = _TranslationsMisskeyAccountMigrationZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsZhTw achievements_ = _TranslationsMisskeyAchievementsZhTw._(_root);
	@override late final _TranslationsMisskeyRoleZhTw role_ = _TranslationsMisskeyRoleZhTw._(_root);
	@override late final _TranslationsMisskeySensitiveMediaDetectionZhTw sensitiveMediaDetection_ = _TranslationsMisskeySensitiveMediaDetectionZhTw._(_root);
	@override late final _TranslationsMisskeyEmailUnavailableZhTw emailUnavailable_ = _TranslationsMisskeyEmailUnavailableZhTw._(_root);
	@override late final _TranslationsMisskeyFfVisibilityZhTw ffVisibility_ = _TranslationsMisskeyFfVisibilityZhTw._(_root);
	@override late final _TranslationsMisskeySignupZhTw signup_ = _TranslationsMisskeySignupZhTw._(_root);
	@override late final _TranslationsMisskeyAccountDeleteZhTw accountDelete_ = _TranslationsMisskeyAccountDeleteZhTw._(_root);
	@override late final _TranslationsMisskeyAdZhTw ad_ = _TranslationsMisskeyAdZhTw._(_root);
	@override late final _TranslationsMisskeyForgotPasswordZhTw forgotPassword_ = _TranslationsMisskeyForgotPasswordZhTw._(_root);
	@override late final _TranslationsMisskeyGalleryZhTw gallery_ = _TranslationsMisskeyGalleryZhTw._(_root);
	@override late final _TranslationsMisskeyEmailZhTw email_ = _TranslationsMisskeyEmailZhTw._(_root);
	@override late final _TranslationsMisskeyPluginZhTw plugin_ = _TranslationsMisskeyPluginZhTw._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupsZhTw preferencesBackups_ = _TranslationsMisskeyPreferencesBackupsZhTw._(_root);
	@override late final _TranslationsMisskeyRegistryZhTw registry_ = _TranslationsMisskeyRegistryZhTw._(_root);
	@override late final _TranslationsMisskeyAboutMisskeyZhTw aboutMisskey_ = _TranslationsMisskeyAboutMisskeyZhTw._(_root);
	@override late final _TranslationsMisskeyDisplayOfSensitiveMediaZhTw displayOfSensitiveMedia_ = _TranslationsMisskeyDisplayOfSensitiveMediaZhTw._(_root);
	@override late final _TranslationsMisskeyInstanceTickerZhTw instanceTicker_ = _TranslationsMisskeyInstanceTickerZhTw._(_root);
	@override late final _TranslationsMisskeyServerDisconnectedBehaviorZhTw serverDisconnectedBehavior_ = _TranslationsMisskeyServerDisconnectedBehaviorZhTw._(_root);
	@override late final _TranslationsMisskeyChannelZhTw channel_ = _TranslationsMisskeyChannelZhTw._(_root);
	@override late final _TranslationsMisskeyMenuDisplayZhTw menuDisplay_ = _TranslationsMisskeyMenuDisplayZhTw._(_root);
	@override late final _TranslationsMisskeyWordMuteZhTw wordMute_ = _TranslationsMisskeyWordMuteZhTw._(_root);
	@override late final _TranslationsMisskeyInstanceMuteZhTw instanceMute_ = _TranslationsMisskeyInstanceMuteZhTw._(_root);
	@override late final _TranslationsMisskeyThemeZhTw theme_ = _TranslationsMisskeyThemeZhTw._(_root);
	@override late final _TranslationsMisskeySfxZhTw sfx_ = _TranslationsMisskeySfxZhTw._(_root);
	@override late final _TranslationsMisskeySoundSettingsZhTw soundSettings_ = _TranslationsMisskeySoundSettingsZhTw._(_root);
	@override late final _TranslationsMisskeyAgoZhTw ago_ = _TranslationsMisskeyAgoZhTw._(_root);
	@override late final _TranslationsMisskeyTimeInZhTw timeIn_ = _TranslationsMisskeyTimeInZhTw._(_root);
	@override late final _TranslationsMisskeyTimeZhTw time_ = _TranslationsMisskeyTimeZhTw._(_root);
	@override late final _TranslationsMisskeyX2faZhTw x2fa_ = _TranslationsMisskeyX2faZhTw._(_root);
	@override late final _TranslationsMisskeyPermissionsZhTw permissions_ = _TranslationsMisskeyPermissionsZhTw._(_root);
	@override late final _TranslationsMisskeyAuthZhTw auth_ = _TranslationsMisskeyAuthZhTw._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesZhTw antennaSources_ = _TranslationsMisskeyAntennaSourcesZhTw._(_root);
	@override late final _TranslationsMisskeyWeekdayZhTw weekday_ = _TranslationsMisskeyWeekdayZhTw._(_root);
	@override late final _TranslationsMisskeyWidgetsZhTw widgets_ = _TranslationsMisskeyWidgetsZhTw._(_root);
	@override late final _TranslationsMisskeyCwZhTw cw_ = _TranslationsMisskeyCwZhTw._(_root);
	@override late final _TranslationsMisskeyPollZhTw poll_ = _TranslationsMisskeyPollZhTw._(_root);
	@override late final _TranslationsMisskeyVisibilityZhTw visibility_ = _TranslationsMisskeyVisibilityZhTw._(_root);
	@override late final _TranslationsMisskeyPostFormZhTw postForm_ = _TranslationsMisskeyPostFormZhTw._(_root);
	@override late final _TranslationsMisskeyProfileZhTw profile_ = _TranslationsMisskeyProfileZhTw._(_root);
	@override late final _TranslationsMisskeyExportOrImportZhTw exportOrImport_ = _TranslationsMisskeyExportOrImportZhTw._(_root);
	@override late final _TranslationsMisskeyChartsZhTw charts_ = _TranslationsMisskeyChartsZhTw._(_root);
	@override late final _TranslationsMisskeyInstanceChartsZhTw instanceCharts_ = _TranslationsMisskeyInstanceChartsZhTw._(_root);
	@override late final _TranslationsMisskeyTimelinesZhTw timelines_ = _TranslationsMisskeyTimelinesZhTw._(_root);
	@override late final _TranslationsMisskeyPlayZhTw play_ = _TranslationsMisskeyPlayZhTw._(_root);
	@override late final _TranslationsMisskeyPagesZhTw pages_ = _TranslationsMisskeyPagesZhTw._(_root);
	@override late final _TranslationsMisskeyRelayStatusZhTw relayStatus_ = _TranslationsMisskeyRelayStatusZhTw._(_root);
	@override late final _TranslationsMisskeyNotificationZhTw notification_ = _TranslationsMisskeyNotificationZhTw._(_root);
	@override late final _TranslationsMisskeyDeckZhTw deck_ = _TranslationsMisskeyDeckZhTw._(_root);
	@override late final _TranslationsMisskeyDialogZhTw dialog_ = _TranslationsMisskeyDialogZhTw._(_root);
	@override late final _TranslationsMisskeyDisabledTimelineZhTw disabledTimeline_ = _TranslationsMisskeyDisabledTimelineZhTw._(_root);
	@override late final _TranslationsMisskeyDrivecleanerZhTw drivecleaner_ = _TranslationsMisskeyDrivecleanerZhTw._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsZhTw webhookSettings_ = _TranslationsMisskeyWebhookSettingsZhTw._(_root);
	@override late final _TranslationsMisskeyAbuseReportZhTw abuseReport_ = _TranslationsMisskeyAbuseReportZhTw._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesZhTw moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesZhTw._(_root);
	@override late final _TranslationsMisskeyFileViewerZhTw fileViewer_ = _TranslationsMisskeyFileViewerZhTw._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerZhTw externalResourceInstaller_ = _TranslationsMisskeyExternalResourceInstallerZhTw._(_root);
	@override late final _TranslationsMisskeyDataSaverZhTw dataSaver_ = _TranslationsMisskeyDataSaverZhTw._(_root);
	@override late final _TranslationsMisskeyHemisphereZhTw hemisphere_ = _TranslationsMisskeyHemisphereZhTw._(_root);
	@override late final _TranslationsMisskeyReversiZhTw reversi_ = _TranslationsMisskeyReversiZhTw._(_root);
	@override late final _TranslationsMisskeyOfflineScreenZhTw offlineScreen_ = _TranslationsMisskeyOfflineScreenZhTw._(_root);
	@override late final _TranslationsMisskeyUrlPreviewSettingZhTw urlPreviewSetting_ = _TranslationsMisskeyUrlPreviewSettingZhTw._(_root);
	@override late final _TranslationsMisskeyMediaControlsZhTw mediaControls_ = _TranslationsMisskeyMediaControlsZhTw._(_root);
	@override late final _TranslationsMisskeyContextMenuZhTw contextMenu_ = _TranslationsMisskeyContextMenuZhTw._(_root);
	@override late final _TranslationsMisskeyGridComponentZhTw gridComponent_ = _TranslationsMisskeyGridComponentZhTw._(_root);
	@override late final _TranslationsMisskeyRoleSelectDialogZhTw roleSelectDialog_ = _TranslationsMisskeyRoleSelectDialogZhTw._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerZhTw customEmojisManager_ = _TranslationsMisskeyCustomEmojisManagerZhTw._(_root);
	@override late final _TranslationsMisskeyEmbedCodeGenZhTw embedCodeGen_ = _TranslationsMisskeyEmbedCodeGenZhTw._(_root);
	@override late final _TranslationsMisskeySelfXssPreventionZhTw selfXssPrevention_ = _TranslationsMisskeySelfXssPreventionZhTw._(_root);
	@override late final _TranslationsMisskeyFollowRequestZhTw followRequest_ = _TranslationsMisskeyFollowRequestZhTw._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsZhTw remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsZhTw._(_root);
	@override late final _TranslationsMisskeyCaptchaZhTw captcha_ = _TranslationsMisskeyCaptchaZhTw._(_root);
	@override late final _TranslationsMisskeyBootErrorsZhTw bootErrors_ = _TranslationsMisskeyBootErrorsZhTw._(_root);
	@override late final _TranslationsMisskeySearchZhTw search_ = _TranslationsMisskeySearchZhTw._(_root);
	@override late final _TranslationsMisskeyServerSetupWizardZhTw serverSetupWizard_ = _TranslationsMisskeyServerSetupWizardZhTw._(_root);
	@override late final _TranslationsMisskeyUploaderZhTw uploader_ = _TranslationsMisskeyUploaderZhTw._(_root);
	@override late final _TranslationsMisskeyClientPerformanceIssueTipZhTw clientPerformanceIssueTip_ = _TranslationsMisskeyClientPerformanceIssueTipZhTw._(_root);
	@override late final _TranslationsMisskeyClipZhTw clip_ = _TranslationsMisskeyClipZhTw._(_root);
	@override late final _TranslationsMisskeyUserListsZhTw userLists_ = _TranslationsMisskeyUserListsZhTw._(_root);
	@override String get watermark => '浮水印';
	@override String get defaultPreset => '預設值';
	@override late final _TranslationsMisskeyWatermarkEditorZhTw watermarkEditor_ = _TranslationsMisskeyWatermarkEditorZhTw._(_root);
	@override late final _TranslationsMisskeyImageEffectorZhTw imageEffector_ = _TranslationsMisskeyImageEffectorZhTw._(_root);
}

// Path: misskey.chat_
class _TranslationsMisskeyChatZhTw extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get noMessagesYet => '尚無訊息';
	@override String get newMessage => '新訊息';
	@override String get individualChat => 'ㄧ對一聊天室';
	@override String get individualChat_description => '可以與特定使用者進行一對一的聊天。';
	@override String get roomChat => '多人聊天室';
	@override String get roomChat_description => '可以進行多人聊天。\n此外，即使是未允許個人聊天的使用者，只要對方接受，也可以進行聊天。';
	@override String get createRoom => '建立聊天室';
	@override String get inviteUserToChat => '邀請使用者開始聊天';
	@override String get yourRooms => '已建立的聊天室';
	@override String get joiningRooms => '已加入的聊天室';
	@override String get invitations => '邀請';
	@override String get noInvitations => '沒有邀請';
	@override String get history => '歷史紀錄';
	@override String get noHistory => '沒有歷史紀錄';
	@override String get noRooms => '沒有可用的聊天室';
	@override String get inviteUser => '邀請使用者';
	@override String get sentInvitations => '已傳送的邀請';
	@override String get join => '加入';
	@override String get ignore => '忽視';
	@override String get leave => '退出聊天室';
	@override String get members => '成員';
	@override String get searchMessages => '搜尋聊天訊息';
	@override String get home => '首頁';
	@override String get send => '發送';
	@override String get newline => '換行';
	@override String get muteThisRoom => '此聊天室已靜音';
	@override String get deleteRoom => '刪除聊天室';
	@override String get chatNotAvailableForThisAccountOrServer => '這個伺服器或這個帳號的聊天功能尚未啟用。';
	@override String get chatIsReadOnlyForThisAccountOrServer => '在此伺服器或此帳戶上的聊天是唯讀的。您無法發布新訊息、建立或加入聊天室。';
	@override String get chatNotAvailableInOtherAccount => '對方的帳號無法使用聊天功能。';
	@override String get cannotChatWithTheUser => '無法與此使用者聊天';
	@override String get cannotChatWithTheUser_description => '聊天功能目前無法使用，或對方尚未開放聊天功能。';
	@override String get youAreNotAMemberOfThisRoomButInvited => '您不是此聊天室的參與者，但已收到邀請。若要加入，請先接受邀請。\n';
	@override String get doYouAcceptInvitation => '您要接受這個邀請嗎？\n';
	@override String get chatWithThisUser => '聊天';
	@override String get thisUserAllowsChatOnlyFromFollowers => '此使用者僅接受來自追隨者的聊天訊息。';
	@override String get thisUserAllowsChatOnlyFromFollowing => '此使用者僅接受自己追隨的使用者傳送聊天訊息。';
	@override String get thisUserAllowsChatOnlyFromMutualFollowing => '此使用者只接受互相追隨的使用者傳送聊天訊息。';
	@override String get thisUserNotAllowedChatAnyone => '此使用者不接受來自任何人的聊天訊息。';
	@override String get chatAllowedUsers => '允許聊天的對象';
	@override String get chatAllowedUsers_note => '無論此設定為何，您仍可與自己曾發送過聊天訊息的對象進行聊天。';
	@override late final _TranslationsMisskeyChatChatAllowedUsersZhTw chatAllowedUsers_ = _TranslationsMisskeyChatChatAllowedUsersZhTw._(_root);
}

// Path: misskey.emojiPalette_
class _TranslationsMisskeyEmojiPaletteZhTw extends TranslationsMisskeyEmojiPaletteEnUs {
	_TranslationsMisskeyEmojiPaletteZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get palettes => '調色盤';
	@override String get enableSyncBetweenDevicesForPalettes => '啟用裝置與裝置之間的調色盤同步化';
	@override String get paletteForMain => '主要使用的調色盤';
	@override String get paletteForReaction => '反應用的調色盤';
}

// Path: misskey.settings_
class _TranslationsMisskeySettingsZhTw extends TranslationsMisskeySettingsEnUs {
	_TranslationsMisskeySettingsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get driveBanner => '您可以管理和設定雲端硬碟、確認使用量，以及調整上傳檔案時的設定。';
	@override String get pluginBanner => '可使用外掛擴充用戶端的功能。您可以安裝外掛，實施個別的設定與管理。';
	@override String get notificationsBanner => '您可以設定從伺服器接收通知的類型和範圍，以及推送通知。';
	@override String get api => 'API';
	@override String get webhook => 'Webhook';
	@override String get serviceConnection => '服務整合';
	@override String get serviceConnectionBanner => '您可以管理和設定存取權杖與 Webhooks，以便與外部應用程式和服務整合。';
	@override String get accountData => '帳戶資料';
	@override String get accountDataBanner => '您可以管理帳戶資料的匯出 / 匯入。';
	@override String get muteAndBlockBanner => '您可以設定和管理要隱藏的內容，並限制特定使用者的行動。';
	@override String get accessibilityBanner => '可針對客戶端的視覺和行為進行個人化設定，以達到更佳的使用效果。';
	@override String get privacyBanner => '您可以調整帳戶的隱私設定，例如內容的可見性、尋找內容的容易程度，以及追隨是否需要核准。';
	@override String get securityBanner => '您可以設定與帳戶安全性相關的設定，例如密碼、登入方式、驗證應用程式和通行金鑰。';
	@override String get preferencesBanner => '您可以根據喜好設定用戶端的整體行為。';
	@override String get appearanceBanner => '您可以根據喜好設定與用戶端外觀和顯示方式相關的設定。';
	@override String get soundsBanner => '您可以調整用戶端播放的聲音設定。';
	@override String get timelineAndNote => '時間軸及貼文';
	@override String get makeEveryTextElementsSelectable => '允許選取所有文字';
	@override String get makeEveryTextElementsSelectable_description => '啟用此功能後，可能會在某些情境下降低可用性。';
	@override String get useStickyIcons => '使大頭貼跟隨捲動';
	@override String get enableHighQualityImagePlaceholders => '顯示高品質的圖片預覽圖';
	@override String get uiAnimations => '使用者介面的動畫效果\n';
	@override String get showNavbarSubButtons => '在導覽列顯示輔助按鈕';
	@override String get ifOn => '開啟時';
	@override String get ifOff => '關閉時';
	@override String get enableSyncThemesBetweenDevices => '在裝置之間同步已安裝的主題';
	@override String get enablePullToRefresh => '下拉更新';
	@override String get enablePullToRefresh_description => '使用滑鼠，按下並拖曳滾輪。';
	@override String get realtimeMode_description => '已與伺服器建立連線，將即時更新內容。這可能會增加資料傳輸量與電池消耗。\n';
	@override String get contentsUpdateFrequency => '內容取得頻率';
	@override String get contentsUpdateFrequency_description => '頻率越高，內容更新越即時，但可能會降低效能，並增加資料傳輸量與電池消耗。\n';
	@override String get contentsUpdateFrequency_description2 => '當即時模式開啟時，不論此設定為何，內容都會即時更新。';
	@override String get showUrlPreview => '顯示網址預覽';
	@override String get showAvailableReactionsFirstInNote => '將可用的反應顯示在頂部';
	@override late final _TranslationsMisskeySettingsChatZhTw chat_ = _TranslationsMisskeySettingsChatZhTw._(_root);
}

// Path: misskey.preferencesProfile_
class _TranslationsMisskeyPreferencesProfileZhTw extends TranslationsMisskeyPreferencesProfileEnUs {
	_TranslationsMisskeyPreferencesProfileZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get profileName => '設定檔案名稱';
	@override String get profileNameDescription => '設定一個名稱來識別此裝置。';
	@override String get profileNameDescription2 => '例如：「主要個人電腦」、「智慧型手機」等';
	@override String get manageProfiles => '管理個人檔案';
}

// Path: misskey.preferencesBackup_
class _TranslationsMisskeyPreferencesBackupZhTw extends TranslationsMisskeyPreferencesBackupEnUs {
	_TranslationsMisskeyPreferencesBackupZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get autoBackup => '自動備份';
	@override String get restoreFromBackup => '從備份還原';
	@override String get noBackupsFoundTitle => '找不到備份檔';
	@override String get noBackupsFoundDescription => '沒有找到自動建立的備份，但如果您手動儲存了備份檔案，則可以匯入並還原。';
	@override String get selectBackupToRestore => '選擇要還原的備份';
	@override String get youNeedToNameYourProfileToEnableAutoBackup => '要啟用自動備份，必須設定檔案名稱。';
	@override String get autoPreferencesBackupIsNotEnabledForThisDevice => '此裝置未啟用自動備份設定。';
	@override String get backupFound => '找到設定的備份';
}

// Path: misskey.accountSettings_
class _TranslationsMisskeyAccountSettingsZhTw extends TranslationsMisskeyAccountSettingsEnUs {
	_TranslationsMisskeyAccountSettingsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get requireSigninToViewContents => '須登入以顯示內容';
	@override String get requireSigninToViewContentsDescription1 => '必須登入才會顯示您建立的貼文等內容。可望有效防止資訊被爬蟲蒐集。';
	@override String get requireSigninToViewContentsDescription2 => '針對您貼文的 URL 預覽 (OGP) 與網頁嵌入功能將會無法使用。而不支援引用貼文的伺服器，也將停止顯示。';
	@override String get requireSigninToViewContentsDescription3 => '這些限制可能不適用於被聯邦發送至遠端伺服器的內容。';
	@override String get makeNotesFollowersOnlyBefore => '讓過去的貼文僅對追隨者顯示';
	@override String get makeNotesFollowersOnlyBeforeDescription => '啟用此功能後，超過設定的日期和時間或超過設定時間的貼文將僅對追隨者顯示。 如果您再次停用它，貼文的公開狀態也會恢復原狀。';
	@override String get makeNotesHiddenBefore => '隱藏過去的貼文';
	@override String get makeNotesHiddenBeforeDescription => '啟用此功能後，超過設定的日期和時間或超過設定時間的貼文將僅對自己顯示（私密化）。 如果您再次停用它，貼文的公開狀態也會恢復原狀。';
	@override String get mayNotEffectForFederatedNotes => '聯邦發送至遠端伺服器的貼文可能會不受影響。';
	@override String get mayNotEffectSomeSituations => '這些限制僅是簡化版本。在某些情況下，例如在遠端伺服器上瀏覽或進行審核時，可能不會套用這些限制。';
	@override String get notesHavePassedSpecifiedPeriod => '早於指定時間的貼文';
	@override String get notesOlderThanSpecifiedDateAndTime => '指定時間和日期之前的貼文';
}

// Path: misskey.abuseUserReport_
class _TranslationsMisskeyAbuseUserReportZhTw extends TranslationsMisskeyAbuseUserReportEnUs {
	_TranslationsMisskeyAbuseUserReportZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get forward => '轉發';
	@override String get forwardDescription => '以匿名系統帳戶將檢舉轉發至遠端伺服器。';
	@override String get resolve => '解決';
	@override String get accept => '接受';
	@override String get reject => '拒絕';
	@override String get resolveTutorial => '如果您已回覆正當的檢舉，請選擇「接受」以將案件標記為已解決。\n 如果檢舉的內容不正當，請選擇「拒絕」將案件標記為已解決。';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryZhTw extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get status => '傳送狀態';
	@override String get stop => '停止發送';
	@override String get resume => '恢復發送';
	@override late final _TranslationsMisskeyDeliveryTypeZhTw type_ = _TranslationsMisskeyDeliveryTypeZhTw._(_root);
}

// Path: misskey.bubbleGame_
class _TranslationsMisskeyBubbleGameZhTw extends TranslationsMisskeyBubbleGameEnUs {
	_TranslationsMisskeyBubbleGameZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => '玩法說明';
	@override String get hold => '保留';
	@override late final _TranslationsMisskeyBubbleGameScoreZhTw score_ = _TranslationsMisskeyBubbleGameScoreZhTw._(_root);
	@override late final _TranslationsMisskeyBubbleGameHowToPlayZhTw howToPlay_ = _TranslationsMisskeyBubbleGameHowToPlayZhTw._(_root);
}

// Path: misskey.announcement_
class _TranslationsMisskeyAnnouncementZhTw extends TranslationsMisskeyAnnouncementEnUs {
	_TranslationsMisskeyAnnouncementZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => '僅限既有的使用者';
	@override String get forExistingUsersDescription => '啟用代表僅向現存使用者顯示；停用代表張貼後註冊的新使用者也會看到。';
	@override String get needConfirmationToRead => '必須確認才能標記為已讀';
	@override String get needConfirmationToReadDescription => '啟用代表此公告將顯示對話方塊以確認是否標記為已讀，同時不會受「標記所有公告為已讀」功能影響。';
	@override String get end => '結束公告';
	@override String get tooManyActiveAnnouncementDescription => '有過多公告可能會影響使用者體驗。請考慮歸檔已結束的公告。';
	@override String get readConfirmTitle => '標記為已讀嗎？';
	@override String readConfirmText({required Object title}) => '閱讀「${title}」的內容並標記為已讀。';
	@override String get shouldNotBeUsedToPresentPermanentInfo => '為了避免損害新用戶的使用體驗，建議使用公告來發布即時性的訊息，而不是用於固定不變的資訊。';
	@override String get dialogAnnouncementUxWarn => '如果同時有 2 個以上對話方塊形式的公告存在，對於使用者體驗很可能會有不良的影響，因此建議謹慎使用。';
	@override String get silence => '不發送通知';
	@override String get silenceDescription => '啟用此選項後，將不會發送此公告的通知，並且無需將其標記為已讀。';
}

// Path: misskey.initialAccountSetting_
class _TranslationsMisskeyInitialAccountSettingZhTw extends TranslationsMisskeyInitialAccountSettingEnUs {
	_TranslationsMisskeyInitialAccountSettingZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => '帳戶已建立完成！';
	@override String get letsStartAccountSetup => '來進行帳戶的初始設定吧。';
	@override String get letsFillYourProfile => '首先，來設定您的個人檔案吧。';
	@override String get profileSetting => '個人檔案設定';
	@override String get privacySetting => '隱私設定';
	@override String get theseSettingsCanEditLater => '這裡的設定可以在之後變更。';
	@override String get youCanEditMoreSettingsInSettingsPageLater => '除此之外，還可以在「設定」頁面進行各種設定。之後請確認看看。';
	@override String get followUsers => '為了構築時間軸，試著追隨您感興趣的使用者吧。';
	@override String pushNotificationDescription({required Object name}) => '啟用推送通知後，就可以在裝置上接收來自${name}的通知了。';
	@override String get initialAccountSettingCompleted => '初始設定完成了！';
	@override String haveFun({required Object name}) => '盡情享受${name}吧！';
	@override String youCanContinueTutorial({required Object name}) => '您可以繼續學習如何使用${name}(Misskey)，也可以就此打住，立即開始使用。';
	@override String get startTutorial => '開始教學課程';
	@override String get skipAreYouSure => '要略過初始設定嗎？';
	@override String get laterAreYouSure => '稍後再重新進行初始設定嗎？';
}

// Path: misskey.initialTutorial_
class _TranslationsMisskeyInitialTutorialZhTw extends TranslationsMisskeyInitialTutorialEnUs {
	_TranslationsMisskeyInitialTutorialZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => '觀看教學課程';
	@override String get title => '新手教學';
	@override String get wellDone => '做得好';
	@override String get skipAreYouSure => '結束教學模式？';
	@override late final _TranslationsMisskeyInitialTutorialLandingZhTw landing_ = _TranslationsMisskeyInitialTutorialLandingZhTw._(_root);
	@override late final _TranslationsMisskeyInitialTutorialNoteZhTw note_ = _TranslationsMisskeyInitialTutorialNoteZhTw._(_root);
	@override late final _TranslationsMisskeyInitialTutorialReactionZhTw reaction_ = _TranslationsMisskeyInitialTutorialReactionZhTw._(_root);
	@override late final _TranslationsMisskeyInitialTutorialTimelineZhTw timeline_ = _TranslationsMisskeyInitialTutorialTimelineZhTw._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteZhTw postNote_ = _TranslationsMisskeyInitialTutorialPostNoteZhTw._(_root);
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveZhTw howToMakeAttachmentsSensitive_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveZhTw._(_root);
	@override late final _TranslationsMisskeyInitialTutorialDoneZhTw done_ = _TranslationsMisskeyInitialTutorialDoneZhTw._(_root);
}

// Path: misskey.timelineDescription_
class _TranslationsMisskeyTimelineDescriptionZhTw extends TranslationsMisskeyTimelineDescriptionEnUs {
	_TranslationsMisskeyTimelineDescriptionZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get home => '在首頁時間軸上，可以看到您追隨的使用者的貼文。';
	@override String get local => '在本地時間軸上，可以看到此伺服器所有使用者的貼文。';
	@override String get social => '在社交時間軸上，可以看到首頁與本地時間軸的貼文。';
	@override String get global => '在公開時間軸上，可以看到其他已連接伺服器的貼文。\n';
}

// Path: misskey.serverRules_
class _TranslationsMisskeyServerRulesZhTw extends TranslationsMisskeyServerRulesEnUs {
	_TranslationsMisskeyServerRulesZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get description => '設定在註冊頁面顯示的伺服器簡要規則。建議是服務條款的摘要。';
}

// Path: misskey.serverSettings_
class _TranslationsMisskeyServerSettingsZhTw extends TranslationsMisskeyServerSettingsEnUs {
	_TranslationsMisskeyServerSettingsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get iconUrl => '圖示的 URL';
	@override String appIconDescription({required Object host}) => '指定顯示 ${host} 為應用程式時的圖示。';
	@override String get appIconUsageExample => '例如：PWA 或是在手機桌面作為書籤等';
	@override String get appIconStyleRecommendation => '因為可能會裁剪成圓形或圓角，所以建議用單色填滿邊框及背景。';
	@override String appIconResolutionMustBe({required Object resolution}) => '解析度必須為 ${resolution}。';
	@override String get manifestJsonOverride => '覆寫 manifest.json';
	@override String get shortName => '簡稱';
	@override String get shortNameDescription => '如果伺服器的正式名稱很長，可用簡稱或通稱代替。';
	@override String get fanoutTimelineDescription => '如果啟用的話，檢索各個時間軸的性能會顯著提昇，資料庫的負荷也會減少。不過，Redis 的記憶體使用量會增加。如果伺服器的記憶體容量比較少或者運行不穩定，可以停用。';
	@override String get fanoutTimelineDbFallback => '資料庫的回退';
	@override String get fanoutTimelineDbFallbackDescription => '若啟用，在時間軸沒有快取的情況下將執行回退處理以額外查詢資料庫。若停用，可以透過不執行回退處理來進一步減少伺服器的負荷，但會限制可取得的時間軸範圍。';
	@override String get reactionsBufferingDescription => '啟用時，可以顯著提高建立反應時的效能並減少資料庫的負載。 但是，Redis 記憶體使用量會增加。';
	@override String get inquiryUrl => '聯絡表單網址';
	@override String get inquiryUrlDescription => '指定伺服器運營者的聯絡表單網址，或包含運營者聯絡資訊網頁的網址。';
	@override String get openRegistration => '允許建立帳戶';
	@override String get openRegistrationWarning => '開放註冊伴隨著風險。 建議只有在伺服器受到持續監控，並準備好在出現問題時能立即處理的情況下才開放註冊。';
	@override String get thisSettingWillAutomaticallyOffWhenModeratorsInactive => '如果在一段期間內沒有偵測到任何審查員活動，此設定將自動關閉，以防止垃圾內容。';
	@override String get deliverSuspendedSoftware => '已停止發佈的軟體';
	@override String get deliverSuspendedSoftwareDescription => '由於脆弱性等原因，可以指定伺服器軟體的名稱與版本範圍來停止其發佈。這些版本資訊是由伺服器所提供，其可靠性無法保證。版本的指定可以使用 semver（語意化版本控制） 的範圍語法，但如果指定為 >= 2024.3.1，則像 2024.3.1-custom.0 這樣的自訂版本將不會被包含在內，因此建議使用 >= 2024.3.1-0 的方式來同時包含預發佈版本。';
	@override String get singleUserMode => '單人模式';
	@override String get singleUserMode_description => '如果只有自己使用此伺服器的話，啟用此模式將使效能最佳化。';
	@override String get signToActivityPubGet => '簽署 GET 請求';
	@override String get signToActivityPubGet_description => '通常應該啟用此功能。停用可能會改善聯邦通訊的問題，但反過來也可能會使某些伺服器無法通訊。';
	@override String get proxyRemoteFiles => '代理提供遠端檔案';
	@override String get proxyRemoteFiles_description => '啟用時，它會代理並提供遠端檔案。 這有助於產生影像縮圖和保護使用者隱私。';
	@override String get allowExternalApRedirect => '允許透過 ActivityPub 查詢時進行重新導向';
	@override String get allowExternalApRedirect_description => '啟用後，其他伺服器可以透過此伺服器查詢第三方的內容，但也可能導致內容遭到冒充的風險。';
	@override String get userGeneratedContentsVisibilityForVisitor => '使用者建立的內容對訪客的公開範圍';
	@override String get userGeneratedContentsVisibilityForVisitor_description => '這有助於防止一些問題的發生，例如未經適當審核的不適當遠端內容無意中透過您自己的伺服器發佈到網際網路上。';
	@override String get userGeneratedContentsVisibilityForVisitor_description2 => '包括伺服器接收到的遠端內容在內，無條件地將伺服器內所有內容公開到網際網路上是具有風險的。特別是對於不了解分散式架構特性的瀏覽者來說，他們可能會誤以為這些遠端內容是由該伺服器所創建的，因此需要特別留意。';
	@override late final _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorZhTw userGeneratedContentsVisibilityForVisitor_ = _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorZhTw._(_root);
}

// Path: misskey.accountMigration_
class _TranslationsMisskeyAccountMigrationZhTw extends TranslationsMisskeyAccountMigrationEnUs {
	_TranslationsMisskeyAccountMigrationZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => '從其他帳戶遷移到這個帳戶';
	@override String get moveFromSub => '為另一個帳戶建立別名';
	@override String moveFromLabel({required Object n}) => '要遷移過來的帳戶 #${n}';
	@override String get moveFromDescription => '如果你想把追隨者從別的帳戶遷移過來，必須先在這裡建立別名。請務必在執行遷移之前建立別名！請像這樣輸入要遷移的帳戶：@person@instance.com';
	@override String get moveTo => '將這個帳戶遷移至新的帳戶';
	@override String get moveToLabel => '要遷移到的帳戶：';
	@override String get moveCannotBeUndone => '一旦遷移帳戶，就無法取消。';
	@override String get moveAccountDescription => '遷移至新帳戶。\n　・此帳戶的追隨者將自動追隨新帳戶；\n　・此帳戶的所有追隨者將被取消追隨；\n　・此帳戶不能再發文。\n\n雖然會自動遷移您的追隨者，但必須手動遷移您追隨的帳戶。請在遷移前匯出此帳戶的「追隨中」名單，並在遷移後自行匯入。\n列表名單、靜音名單及封鎖名單也必須如此處理。\n\n（此說明適用於本伺服器，以及運行 Misskey v13.12.0 或更新版本的其他伺服器；如 Mastodon 等使用 ActivityPub 協定的其他軟體或有不同的處理方式。）';
	@override String get moveAccountHowTo => '要遷移帳戶，首先要在目標帳戶中為此帳戶建立一個別名。\n 建立別名後，像這樣輸入目標帳戶：@username@server.example.com';
	@override String get startMigration => '遷移';
	@override String migrationConfirm({required Object account}) => '確定要將這個帳戶遷移至 ${account} 嗎？一旦遷移就無法撤銷，也就無法以原來的狀態使用這個帳戶。\n另外，請確認在要遷移到的帳戶已經建立了一個別名。';
	@override String get movedAndCannotBeUndone => '帳戶已遷移。\n遷移無法撤消。';
	@override String get postMigrationNote => '將在完成遷移的 24 小時後取消追隨所有帳號。\n此帳戶的追隨中/追隨者人數將歸零。由於不會解除粉絲對您的追隨，因此他們仍然可以繼續閱覽此帳戶內僅對追隨者公開的貼文。';
	@override String get movedTo => '要遷移到的帳戶：';
}

// Path: misskey.achievements_
class _TranslationsMisskeyAchievementsZhTw extends TranslationsMisskeyAchievementsEnUs {
	_TranslationsMisskeyAchievementsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => '獲得日期';
	@override late final _TranslationsMisskeyAchievementsTypesZhTw types_ = _TranslationsMisskeyAchievementsTypesZhTw._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRoleZhTw extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRoleZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get new_ => '建立角色';
	@override String get edit => '編輯角色';
	@override String get name => '角色名稱';
	@override String get description => '角色描述 ';
	@override String get permission => '角色的權限';
	@override String get descriptionOfPermission => '<b>審查員</b>執行與審查相關的基本操作。\n<b>管理員</b>能變更伺服器的全部設定。';
	@override String get assignTarget => '指派目標';
	@override String get descriptionOfAssignTarget => '<b>手動</b>是以手動管理這個角色包含的人員。\n<b>符合條件</b>是設定條件以自動包含符合條件的使用者。';
	@override String get manual => '手動';
	@override String get manualRoles => '手動角色';
	@override String get conditional => '符合條件';
	@override String get conditionalRoles => '有條件的角色';
	@override String get condition => '條件';
	@override String get isConditionalRole => '這是條件角色。';
	@override String get isPublic => '角色為公開';
	@override String get descriptionOfIsPublic => '任何人都可以看到被指派了角色的使用者。此外，使用者的個人檔案將顯示這個角色。';
	@override String get options => '選項';
	@override String get policies => '政策';
	@override String get baseRole => '基本角色';
	@override String get useBaseValue => '使用基本角色的值';
	@override String get chooseRoleToAssign => '選擇要指派的角色';
	@override String get iconUrl => '圖示的 URL';
	@override String get asBadge => '顯示為徽章';
	@override String get descriptionOfAsBadge => '開啟的話，角色圖示會顯示在使用者名稱旁邊。';
	@override String get isExplorable => '讓使用者更容易找到您';
	@override String get descriptionOfIsExplorable => '若開啟則公開角色時間軸。若角色不是公開的，則無法公開時間軸。';
	@override String get displayOrder => '顯示順序';
	@override String get descriptionOfDisplayOrder => '數字越大，顯示在UI上的越上面。';
	@override String get preserveAssignmentOnMoveAccount => '將指派狀態承接至轉移後的帳戶';
	@override String get preserveAssignmentOnMoveAccount_description => '開啟此選項後，當具備此角色的帳戶被移轉時，該角色也會承接至轉移後的帳戶。';
	@override String get canEditMembersByModerator => '允許編輯審查員的成員';
	@override String get descriptionOfCanEditMembersByModerator => '如果開啟，管理員與審查員都可以為使用者指派/解除指派該角色。如果關閉，則只有管理員可以執行。';
	@override String get priority => '優先級';
	@override late final _TranslationsMisskeyRolePriorityZhTw priority_ = _TranslationsMisskeyRolePriorityZhTw._(_root);
	@override late final _TranslationsMisskeyRoleOptionsZhTw options_ = _TranslationsMisskeyRoleOptionsZhTw._(_root);
	@override late final _TranslationsMisskeyRoleConditionZhTw condition_ = _TranslationsMisskeyRoleConditionZhTw._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _TranslationsMisskeySensitiveMediaDetectionZhTw extends TranslationsMisskeySensitiveMediaDetectionEnUs {
	_TranslationsMisskeySensitiveMediaDetectionZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get description => '您可以使用機器學習自動檢測敏感檔案以便審查。這會稍微增加伺服器負荷。';
	@override String get sensitivity => '檢測敏感度';
	@override String get sensitivityDescription => '敏感度低時，誤檢測（偽陽性）會減少。敏感度高時，漏檢（偽陰性）會減少。';
	@override String get setSensitiveFlagAutomatically => '設定 NSFW 標籤';
	@override String get setSensitiveFlagAutomaticallyDescription => '即使將此設定關閉，判定結果也會保留在內部。';
	@override String get analyzeVideos => '啟用影片分析';
	@override String get analyzeVideosDescription => '除了靜止影像以外，也分析影片。伺服器的負荷會稍微增加。';
}

// Path: misskey.emailUnavailable_
class _TranslationsMisskeyEmailUnavailableZhTw extends TranslationsMisskeyEmailUnavailableEnUs {
	_TranslationsMisskeyEmailUnavailableZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get used => '已被使用';
	@override String get format => '格式無效';
	@override String get disposable => '不是永久可用的地址';
	@override String get mx => '郵件伺服器不正確';
	@override String get smtp => '郵件伺服器沒有應答';
	@override String get banned => '無法使用此電子郵件地址註冊';
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilityZhTw extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilityZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get public => '公開';
	@override String get followers => '只有關注您的使用者能看到';
	@override String get private => '私密';
}

// Path: misskey.signup_
class _TranslationsMisskeySignupZhTw extends TranslationsMisskeySignupEnUs {
	_TranslationsMisskeySignupZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get almostThere => '即將完成';
	@override String get emailAddressInfo => '請輸入您所使用的電子郵件地址。電子郵件地址不會被公開。';
	@override String emailSent({required Object email}) => '已發送確認郵件至您輸入的電子郵件地址（${email}）。請開啟電子郵件中的連結完成註冊。';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeleteZhTw extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeleteZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => '刪除帳戶';
	@override String get mayTakeTime => '刪除帳戶的處理負荷較大，如果帳戶發佈的內容以及上傳的檔案數量較多，則需要一段時間才能完成。';
	@override String get sendEmail => '帳戶刪除完成後，將向其電子郵件地址發送通知。';
	@override String get requestAccountDelete => '刪除帳戶請求';
	@override String get started => '已開始刪除作業。';
	@override String get inProgress => '正在刪除';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdZhTw extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get back => '返回';
	@override String get reduceFrequencyOfThisAd => '降低此廣告的頻率 ';
	@override String get hide => '隱藏';
	@override String get timezoneinfo => '星期幾是由伺服器的時區指定的。';
	@override String get adsSettings => '廣告投放設定';
	@override String get notesPerOneAd => '即時更新中投放廣告的間隔（貼文數）';
	@override String get setZeroToDisable => '設為 0 則在即時更新時不投放廣告';
	@override String get adsTooClose => '由於廣告投放的間隔極短，可能會嚴重影響使用者體驗。';
}

// Path: misskey.forgotPassword_
class _TranslationsMisskeyForgotPasswordZhTw extends TranslationsMisskeyForgotPasswordEnUs {
	_TranslationsMisskeyForgotPasswordZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => '請輸入您的帳戶註冊的電子郵件地址。 密碼重置連結將被發送到該電子郵件地址。';
	@override String get ifNoEmail => '如果您還沒有註冊您的電子郵件地址，請聯繫管理員。 ';
	@override String get contactAdmin => '本伺服器不支援電子郵件，請聯繫您的管理員重置您的密碼。 ';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryZhTw extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get my => '我的貼文';
	@override String get liked => '喜歡的貼文';
	@override String get like => '讚好';
	@override String get unlike => '收回讚好';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailZhTw extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowZhTw follow_ = _TranslationsMisskeyEmailFollowZhTw._(_root);
	@override late final _TranslationsMisskeyEmailReceiveFollowRequestZhTw receiveFollowRequest_ = _TranslationsMisskeyEmailReceiveFollowRequestZhTw._(_root);
}

// Path: misskey.plugin_
class _TranslationsMisskeyPluginZhTw extends TranslationsMisskeyPluginEnUs {
	_TranslationsMisskeyPluginZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get install => '安裝外掛組件';
	@override String get installWarn => '請不要安裝來源不明的外掛。';
	@override String get manage => '管理外掛';
	@override String get viewSource => '檢視原始碼';
	@override String get viewLog => '顯示記錄 ';
}

// Path: misskey.preferencesBackups_
class _TranslationsMisskeyPreferencesBackupsZhTw extends TranslationsMisskeyPreferencesBackupsEnUs {
	_TranslationsMisskeyPreferencesBackupsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get list => '已備份的設定檔';
	@override String get saveNew => '另存新檔';
	@override String get loadFile => '讀取檔案';
	@override String get apply => '套用在此裝置';
	@override String get save => '覆蓋存檔';
	@override String get inputName => '輸入備份檔名稱';
	@override String get cannotSave => '無法儲存';
	@override String nameAlreadyExists({required Object name}) => '備份檔名稱「${name}」已經存在。請填寫其他名稱。';
	@override String applyConfirm({required Object name}) => '將備份檔「${name}」套用在現在的裝置嗎？現在的裝置設定將會消失。';
	@override String saveConfirm({required Object name}) => '要覆蓋存檔${name}嗎？';
	@override String deleteConfirm({required Object name}) => '要刪除${name}嗎？';
	@override String renameConfirm({required Object old, required Object new_}) => '要將「${old}」變更為「${new_}」嗎？';
	@override String get noBackups => '沒有備份檔。您可以用「另存新檔」將現在的客戶端設定儲存在伺服器上。';
	@override String createdAt({required Object date, required Object time}) => '建立日期：${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => '更新日期：${date} ${time}';
	@override String get cannotLoad => '無法讀取';
	@override String get invalidFile => '檔案形式錯誤。';
}

// Path: misskey.registry_
class _TranslationsMisskeyRegistryZhTw extends TranslationsMisskeyRegistryEnUs {
	_TranslationsMisskeyRegistryZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get scope => '範圍';
	@override String get key => '機碼';
	@override String get keys => '機碼';
	@override String get domain => '域';
	@override String get createKey => '新增機碼';
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeyZhTw extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeyZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey 是由 syuilo 自 2014 年起開發的開放原始碼軟體。';
	@override String get contributors => '主要貢獻者';
	@override String get allContributors => '全體貢獻人員';
	@override String get source => '原始碼';
	@override String get original => '原始';
	@override String thisIsModifiedVersion({required Object name}) => '${name} 使用原始 Misskey 的修改版本。';
	@override String get translation => '翻譯 Misskey';
	@override String get donate => '贊助 Misskey';
	@override String get morePatrons => '還有許許多多幫助我們的其他人，非常感謝你們。 🥰';
	@override String get patrons => '贊助者';
	@override String get projectMembers => '專案成員';
}

// Path: misskey.displayOfSensitiveMedia_
class _TranslationsMisskeyDisplayOfSensitiveMediaZhTw extends TranslationsMisskeyDisplayOfSensitiveMediaEnUs {
	_TranslationsMisskeyDisplayOfSensitiveMediaZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get respect => '隱藏敏感檔案';
	@override String get ignore => '顯示敏感檔案';
	@override String get force => '隱藏所有檔案';
}

// Path: misskey.instanceTicker_
class _TranslationsMisskeyInstanceTickerZhTw extends TranslationsMisskeyInstanceTickerEnUs {
	_TranslationsMisskeyInstanceTickerZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get none => '隱藏';
	@override String get remote => '只顯示遠端使用者';
	@override String get always => '一律顯示';
}

// Path: misskey.serverDisconnectedBehavior_
class _TranslationsMisskeyServerDisconnectedBehaviorZhTw extends TranslationsMisskeyServerDisconnectedBehaviorEnUs {
	_TranslationsMisskeyServerDisconnectedBehaviorZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get reload => '自動重載';
	@override String get dialog => '彈出式警告';
	@override String get quiet => '非侵入式警告';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelZhTw extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get create => '建立頻道';
	@override String get edit => '編輯頻道';
	@override String get setBanner => '設定橫幅圖像';
	@override String get removeBanner => '移除橫幅圖像';
	@override String get featured => '熱門貼文';
	@override String get owned => '管理中';
	@override String get following => '追隨中';
	@override String usersCount({required Object n}) => '有 ${n} 人參與';
	@override String notesCount({required Object n}) => '有 ${n} 篇貼文';
	@override String get nameAndDescription => '名稱';
	@override String get nameOnly => '僅名稱';
	@override String get allowRenoteToExternal => '允許在頻道外轉發和引用';
}

// Path: misskey.menuDisplay_
class _TranslationsMisskeyMenuDisplayZhTw extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplayZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get sideFull => '橫向';
	@override String get sideIcon => '橫向（圖示）';
	@override String get top => '頂部';
	@override String get hide => '隱藏';
}

// Path: misskey.wordMute_
class _TranslationsMisskeyWordMuteZhTw extends TranslationsMisskeyWordMuteEnUs {
	_TranslationsMisskeyWordMuteZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get muteWords => '加入靜音文字';
	@override String get muteWordsDescription => '空格代表「以及」（AND），換行代表「或者」（OR）。';
	@override String get muteWordsDescription2 => '用斜線包圍關鍵字代表正規表達式。';
}

// Path: misskey.instanceMute_
class _TranslationsMisskeyInstanceMuteZhTw extends TranslationsMisskeyInstanceMuteEnUs {
	_TranslationsMisskeyInstanceMuteZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => '包括對被靜音伺服器上的使用者的回覆，被設定的伺服器上所有貼文及轉發都會被靜音。';
	@override String get instanceMuteDescription2 => '設定時以換行進行分隔';
	@override String get title => '將隱藏被設定的伺服器貼文。';
	@override String get heading => '要靜音的伺服器';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeZhTw extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get explore => '探索佈景主題';
	@override String get install => '安裝佈景主題';
	@override String get manage => '管理佈景主題';
	@override String get code => '佈景主題代碼';
	@override String get description => '描述';
	@override String installed({required Object name}) => '${name}已安裝';
	@override String get installedThemes => '已經安裝的佈景主題';
	@override String get builtinThemes => '標準佈景主題';
	@override String get instanceTheme => '伺服器的主題';
	@override String get alreadyInstalled => '已安裝此佈景主題';
	@override String get invalid => '佈景主題格式錯誤';
	@override String get make => '製作佈景主題';
	@override String get base => '基於';
	@override String get addConstant => '新增常數';
	@override String get constant => '常數';
	@override String get defaultValue => '預設值';
	@override String get color => '顏色';
	@override String get refProp => '查看屬性 ';
	@override String get refConst => '查看常數';
	@override String get key => '按鍵';
	@override String get func => '函数';
	@override String get funcKind => '功能類型';
	@override String get argument => '參數';
	@override String get basedProp => '基於的屬性名稱 ';
	@override String get alpha => '透明度';
	@override String get darken => '暗度';
	@override String get lighten => '亮度';
	@override String get inputConstantName => '請輸入常數名稱';
	@override String get importInfo => '您可以在此貼上佈景主題代碼，將其匯入編輯器中';
	@override String deleteConstantConfirm({required Object const_}) => '確定要刪除常數${const_}嗎？';
	@override late final _TranslationsMisskeyThemeKeysZhTw keys = _TranslationsMisskeyThemeKeysZhTw._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxZhTw extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get note => '貼文';
	@override String get noteMy => '我的貼文';
	@override String get notification => '通知';
	@override String get reaction => '選擇反應時';
	@override String get chatMessage => '聊天訊息';
}

// Path: misskey.soundSettings_
class _TranslationsMisskeySoundSettingsZhTw extends TranslationsMisskeySoundSettingsEnUs {
	_TranslationsMisskeySoundSettingsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get driveFile => '使用雲端硬碟的音效檔案';
	@override String get driveFileWarn => '請選擇雲端硬碟中的檔案';
	@override String get driveFileTypeWarn => '不支援此檔案';
	@override String get driveFileTypeWarnDescription => '請選擇音效檔案';
	@override String get driveFileDurationWarn => '音效太長了';
	@override String get driveFileDurationWarnDescription => '使用長音效檔可能會影響 Misskey 的使用體驗。仍要使用此檔案嗎？';
	@override String get driveFileError => '無法載入語音。請變更設定';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoZhTw extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get future => '未來';
	@override String get justNow => '剛剛';
	@override String secondsAgo({required Object n}) => '${n}秒前';
	@override String minutesAgo({required Object n}) => '${n}分鐘前';
	@override String hoursAgo({required Object n}) => '${n}小時前';
	@override String daysAgo({required Object n}) => '${n}天前';
	@override String weeksAgo({required Object n}) => '${n}周前';
	@override String monthsAgo({required Object n}) => '${n}個月前';
	@override String yearsAgo({required Object n}) => '${n}年前';
	@override String get invalid => '無';
}

// Path: misskey.timeIn_
class _TranslationsMisskeyTimeInZhTw extends TranslationsMisskeyTimeInEnUs {
	_TranslationsMisskeyTimeInZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String seconds({required Object n}) => '${n}秒後';
	@override String minutes({required Object n}) => '${n}分鐘後';
	@override String hours({required Object n}) => '${n}小時後';
	@override String days({required Object n}) => '${n}天後';
	@override String weeks({required Object n}) => '${n}周後';
	@override String months({required Object n}) => '${n}個月後';
	@override String years({required Object n}) => '${n}年後';
}

// Path: misskey.time_
class _TranslationsMisskeyTimeZhTw extends TranslationsMisskeyTimeEnUs {
	_TranslationsMisskeyTimeZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get second => '秒';
	@override String get minute => '分鐘';
	@override String get hour => '小時';
	@override String get day => '日';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faZhTw extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => '此裝置已被註冊過了';
	@override String get registerTOTP => '開始設定驗證應用程式';
	@override String step1({required Object a, required Object b}) => '首先，在您的裝置上安裝驗證程式，例如 ${a} 或 ${b}。';
	@override String get step2 => '然後，掃描螢幕上的 QR 碼。';
	@override String get step2Uri => '使用桌面版應用程式時，請輸入以下的 URI';
	@override String get step3Title => '輸入驗證碼';
	@override String get step3 => '輸入應用程式所提供的權杖以完成設定。';
	@override String get setupCompleted => '設定完成';
	@override String get step4 => '從現在開始，任何登入操作都將要求您提供權杖。';
	@override String get securityKeyNotSupported => '您的瀏覽器不支援安全金鑰。';
	@override String get registerTOTPBeforeKey => '如要註冊安全金鑰或通行金鑰，請先設定驗證應用程式。';
	@override String get securityKeyInfo => '註冊 WebAuthn 衍生的金鑰，例如支援 FIDO2 的硬體安全金鑰、裝置生物識別、PIN 鎖和通行金鑰。';
	@override String get registerSecurityKey => '註冊安全金鑰或通行金鑰';
	@override String get securityKeyName => '輸入金鑰名稱';
	@override String get tapSecurityKey => '按照瀏覽器的說明註冊安全金鑰或通行金鑰。';
	@override String get removeKey => '刪除安全金鑰';
	@override String removeKeyConfirm({required Object name}) => '要刪除${name}嗎？';
	@override String get whyTOTPOnlyRenew => '如果註冊了安全金鑰，則無法解除驗證應用程式的設定。';
	@override String get renewTOTP => '重設驗證應用程式';
	@override String get renewTOTPConfirm => '目前驗證應用程式的驗證碼將無法使用。';
	@override String get renewTOTPOk => '重設';
	@override String get renewTOTPCancel => '現在不要';
	@override String get checkBackupCodesBeforeCloseThisWizard => '請先確認下列備用驗證碼，再關閉此精靈視窗。';
	@override String get backupCodes => '備用驗證碼';
	@override String get backupCodesDescription => '如果驗證應用程式不能用了，可以使用以下的備用驗證碼存取您的帳戶。請務必妥善保管這個驗證碼。每個驗證碼只能使用一次。';
	@override String get backupCodeUsedWarning => '已使用備用驗證碼。如果無法使用驗證應用程式，請盡快重新設定。';
	@override String get backupCodesExhaustedWarning => '已使用所有備用驗證碼。如果無法使用驗證應用程式，則將無法再存取您的帳戶。請重新設定您的驗證應用程式。';
	@override String get moreDetailedGuideHere => '請點擊此處查看詳細說明。';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsZhTw extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get readAccount => '查看我的帳戶資訊';
	@override String get writeAccount => '更改我的帳戶資訊';
	@override String get readBlocks => '查看封鎖名單';
	@override String get writeBlocks => '編輯封鎖名單';
	@override String get readDrive => '存取雲端硬碟';
	@override String get writeDrive => '編輯雲端硬碟的檔案';
	@override String get readFavorites => '瀏覽我的最愛';
	@override String get writeFavorites => '編輯我的最愛列表';
	@override String get readFollowing => '查看追隨中的使用者資訊';
	@override String get writeFollowing => '追隨／解除追隨';
	@override String get readMessaging => '顯示訊息';
	@override String get writeMessaging => '撰寫或刪除訊息';
	@override String get readMutes => '顯示已靜音列表';
	@override String get writeMutes => '編輯已靜音列表';
	@override String get writeNotes => '撰寫或刪除貼文';
	@override String get readNotifications => '查看通知';
	@override String get writeNotifications => '編輯通知';
	@override String get readReactions => '查看反應';
	@override String get writeReactions => '編輯反應';
	@override String get writeVotes => '投票';
	@override String get readPages => '顯示頁面';
	@override String get writePages => '編輯頁面';
	@override String get readPageLikes => '顯示已按讚的頁面';
	@override String get writePageLikes => '編輯頁面上喜歡';
	@override String get readUserGroups => '顯示使用者群組';
	@override String get writeUserGroups => '編輯使用者群組';
	@override String get readChannels => '已查看的頻道';
	@override String get writeChannels => '編輯頻道';
	@override String get readGallery => '瀏覽相簿';
	@override String get writeGallery => '編輯相簿';
	@override String get readGalleryLikes => '瀏覽相簿的讚';
	@override String get writeGalleryLikes => '編輯相簿的讚';
	@override String get readFlash => '檢視 Play';
	@override String get writeFlash => '編輯 Play';
	@override String get readFlashLikes => '檢視 Play 的讚';
	@override String get writeFlashLikes => '編輯 Play 的讚';
	@override String get readAdminAbuseUserReports => '查看來自使用者的檢舉';
	@override String get writeAdminDeleteAccount => '刪除使用者帳戶';
	@override String get writeAdminDeleteAllFilesOfAUser => '刪除使用者的所有檔案';
	@override String get readAdminIndexStats => '查看資料庫索引的相關資訊';
	@override String get readAdminTableStats => '查看資料庫表格的相關資訊';
	@override String get readAdminUserIps => '查看使用者的 IP 位址';
	@override String get readAdminMeta => '查看實例的詮釋資料';
	@override String get writeAdminResetPassword => '重設使用者的密碼';
	@override String get writeAdminResolveAbuseUserReport => '解決來自使用者的檢舉';
	@override String get writeAdminSendEmail => '發送郵件';
	@override String get readAdminServerInfo => '查看伺服器的資訊';
	@override String get readAdminShowModerationLog => '查看審查紀錄';
	@override String get readAdminShowUser => '查看使用者的私密資訊';
	@override String get writeAdminSuspendUser => '凍結使用者';
	@override String get writeAdminUnsetUserAvatar => '刪除使用者的頭像';
	@override String get writeAdminUnsetUserBanner => '刪除使用者的橫幅';
	@override String get writeAdminUnsuspendUser => '解除凍結使用者';
	@override String get writeAdminMeta => '編輯實例的詮釋資料';
	@override String get writeAdminUserNote => '編輯審查筆記';
	@override String get writeAdminRoles => '編輯角色';
	@override String get readAdminRoles => '查看角色';
	@override String get writeAdminRelays => '編輯中繼器';
	@override String get readAdminRelays => '查看中繼器';
	@override String get writeAdminInviteCodes => '編輯邀請碼';
	@override String get readAdminInviteCodes => '查看邀請碼';
	@override String get writeAdminAnnouncements => '編輯公告';
	@override String get readAdminAnnouncements => '查看公告';
	@override String get writeAdminAvatarDecorations => '編輯頭像裝飾';
	@override String get readAdminAvatarDecorations => '查看頭像裝飾';
	@override String get writeAdminFederation => '編輯站台聯邦的相關資訊';
	@override String get writeAdminAccount => '編輯使用者帳戶';
	@override String get readAdminAccount => '查看使用者的相關資訊';
	@override String get writeAdminEmoji => '編輯表情符號';
	@override String get readAdminEmoji => '查看表情符號';
	@override String get writeAdminQueue => '編輯工作佇列';
	@override String get readAdminQueue => '查看工作佇列的相關資訊';
	@override String get writeAdminPromo => '編輯推廣貼文';
	@override String get writeAdminDrive => '編輯使用者的雲端硬碟';
	@override String get readAdminDrive => '查看使用者雲端硬碟的相關資訊';
	@override String get readAdminStream => '使用管理員的 Websocket API';
	@override String get writeAdminAd => '編輯廣告';
	@override String get readAdminAd => '查看廣告';
	@override String get writeInviteCodes => '建立邀請碼';
	@override String get readInviteCodes => '取得邀請碼';
	@override String get writeClipFavorite => '編輯摘錄的讚';
	@override String get readClipFavorite => '查看摘錄的讚';
	@override String get readFederation => '查看站台聯邦的相關資訊';
	@override String get writeReportAbuse => '檢舉違規行為';
	@override String get writeChat => '撰寫或刪除訊息';
	@override String get readChat => '查看聊天訊息';
}

// Path: misskey.auth_
class _TranslationsMisskeyAuthZhTw extends TranslationsMisskeyAuthEnUs {
	_TranslationsMisskeyAuthZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => '應用程式的存取權限';
	@override String shareAccess({required Object name}) => '要授權「“${name}”」存取您的帳戶嗎？';
	@override String get shareAccessAsk => '您確定要授權這個應用程式存取您的帳戶嗎？';
	@override String permission({required Object name}) => '${name}要求以下的權限';
	@override String get permissionAsk => '此應用程式需要以下權限';
	@override String get pleaseGoBack => '請返回至應用程式';
	@override String get callback => '回到應用程式';
	@override String get accepted => '已授予存取權限';
	@override String get denied => '拒絕訪問';
	@override String get scopeUser => '以下列使用者身分操作';
	@override String get pleaseLogin => '必須登入以提供應用程式的存取權限。';
	@override String get byClickingYouWillBeRedirectedToThisUrl => '如果授予存取權限，就會自動導向到以下的網址';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesZhTw extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get all => '全部貼文';
	@override String get homeTimeline => '來自已追隨使用者的貼文';
	@override String get users => '來自特定使用者的貼文';
	@override String get userList => '來自特定清單中的貼文';
	@override String get userBlacklist => '除指定使用者外的所有貼文';
}

// Path: misskey.weekday_
class _TranslationsMisskeyWeekdayZhTw extends TranslationsMisskeyWeekdayEnUs {
	_TranslationsMisskeyWeekdayZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get sunday => '星期天';
	@override String get monday => '星期一';
	@override String get tuesday => '星期二';
	@override String get wednesday => '星期三';
	@override String get thursday => '星期四';
	@override String get friday => '星期五';
	@override String get saturday => '星期六';
}

// Path: misskey.widgets_
class _TranslationsMisskeyWidgetsZhTw extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get profile => '個人檔案';
	@override String get instanceInfo => '伺服器資訊';
	@override String get memo => '備忘錄';
	@override String get notifications => '通知';
	@override String get timeline => '時間軸';
	@override String get calendar => '行事曆';
	@override String get trends => '熱門貼文';
	@override String get clock => '時鐘';
	@override String get rss => 'RSS 閱讀器';
	@override String get rssTicker => 'RSS 跑馬燈';
	@override String get activity => '動態';
	@override String get photos => '照片';
	@override String get digitalClock => '電子時鐘';
	@override String get unixClock => 'UNIX 時間';
	@override String get federation => '聯邦宇宙';
	@override String get instanceCloud => '伺服器雲';
	@override String get postForm => '發文視窗';
	@override String get slideshow => '幻燈片';
	@override String get button => '按鈕';
	@override String get onlineUsers => '上線使用者';
	@override String get jobQueue => '佇列';
	@override String get serverMetric => '伺服器指標 ';
	@override String get aiscript => 'AiScript 控制臺';
	@override String get aiscriptApp => 'AiScript App';
	@override String get aichan => '小藍';
	@override String get userList => '使用者列表';
	@override late final _TranslationsMisskeyWidgetsUserListZhTw userList_ = _TranslationsMisskeyWidgetsUserListZhTw._(_root);
	@override String get clicker => '點擊器';
	@override String get birthdayFollowings => '今天生日的使用者';
	@override String get chat => '聊天';
}

// Path: misskey.cw_
class _TranslationsMisskeyCwZhTw extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get hide => '隱藏';
	@override String get show => '顯示內容';
	@override String chars({required Object count}) => '${count} 個字元';
	@override String files({required Object count}) => '${count} 個檔案';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollZhTw extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => '需要至少兩個選項。';
	@override String choiceN({required Object n}) => '選項 ${n}';
	@override String get noMore => '沒辦法再添加選項了';
	@override String get canMultipleVote => '允許複選';
	@override String get expiration => '期限';
	@override String get infinite => '無期限';
	@override String get at => '結束時間';
	@override String get after => '指定時效';
	@override String get deadlineDate => '截止日期';
	@override String get deadlineTime => '小時';
	@override String get duration => '時長';
	@override String votesCount({required Object n}) => '${n}票';
	@override String totalVotes({required Object n}) => '合計 ${n} 票';
	@override String get vote => '投票';
	@override String get showResult => '顯示結果';
	@override String get voted => '已投票';
	@override String get closed => '已結束';
	@override String remainingDays({required Object d, required Object h}) => '${d} 天 ${h} 小時後結束';
	@override String remainingHours({required Object h, required Object m}) => '${h} 小時 ${m} 分後結束';
	@override String remainingMinutes({required Object m, required Object s}) => '${m} 分 ${s} 秒後結束';
	@override String remainingSeconds({required Object s}) => '${s} 秒後截止';
}

// Path: misskey.visibility_
class _TranslationsMisskeyVisibilityZhTw extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get public => '公開';
	@override String get publicDescription => '發佈給所有使用者';
	@override String get home => '首頁';
	@override String get homeDescription => '僅發布至首頁的時間軸';
	@override String get followers => '追隨者';
	@override String get followersDescription => '僅發布至關注者';
	@override String get specified => '指定使用者';
	@override String get specifiedDescription => '僅發布至指定使用者';
	@override String get disableFederation => '停用聯邦';
	@override String get disableFederationDescription => '不發送到其他伺服器';
}

// Path: misskey.postForm_
class _TranslationsMisskeyPostFormZhTw extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get quitInspiteOfThereAreUnuploadedFilesConfirm => '尚有未上傳的檔案，確定要放棄並關閉表單嗎？';
	@override String get uploaderTip => '檔案尚未上傳。您可以從檔案選單中設定重新命名、裁切圖片、加上浮水印、是否壓縮等選項。檔案會在發布貼文時自動上傳。\n';
	@override String get replyPlaceholder => '回覆此貼文...';
	@override String get quotePlaceholder => '引用此貼文...';
	@override String get channelPlaceholder => '發佈到頻道';
	@override late final _TranslationsMisskeyPostFormPlaceholdersZhTw placeholders_ = _TranslationsMisskeyPostFormPlaceholdersZhTw._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileZhTw extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => '名字';
	@override String get username => '使用者名稱';
	@override String get description => '關於我';
	@override String get youCanIncludeHashtags => '你也可以在「關於我」中加上 #tag';
	@override String get metadata => '附加資訊';
	@override String get metadataEdit => '編輯附加資訊';
	@override String get metadataDescription => '可以在個人資料中以表格形式顯示其他資訊。';
	@override String get metadataLabel => '標籤';
	@override String get metadataContent => '內容';
	@override String get changeAvatar => '更換大頭貼';
	@override String get changeBanner => '變更橫幅圖像';
	@override String get verifiedLinkDescription => '如果輸入包含您個人資料的網站 URL，欄位旁邊將出現驗證圖示。';
	@override String avatarDecorationMax({required Object max}) => '最多可以設置 ${max} 個裝飾。';
	@override String get followedMessage => '被追隨時的訊息';
	@override String get followedMessageDescription => '可以設定被追隨時顯示給對方的訊息。';
	@override String get followedMessageDescriptionForLockedAccount => '如果追隨需要核准的話，將在通過追隨請求之後顯示。';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportZhTw extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get allNotes => '所有貼文';
	@override String get favoritedNotes => '「我的最愛」貼文';
	@override String get clips => '摘錄';
	@override String get followingList => '追隨中';
	@override String get muteList => '靜音';
	@override String get blockingList => '封鎖';
	@override String get userLists => '清單';
	@override String get excludeMutingUsers => '排除被靜音的使用者';
	@override String get excludeInactiveUsers => '排除不活躍帳戶';
	@override String get withReplies => '將被匯入的追隨中清單的貼文回覆包含在時間軸';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsZhTw extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get federation => '聯邦宇宙';
	@override String get apRequest => '請求';
	@override String get usersIncDec => '使用者增減';
	@override String get usersTotal => '使用者合計';
	@override String get activeUsers => '活躍使用者';
	@override String get notesIncDec => '貼文増減';
	@override String get localNotesIncDec => '本地貼文増減';
	@override String get remoteNotesIncDec => '遠端貼文數目增减';
	@override String get notesTotal => '貼文總數';
	@override String get filesIncDec => '檔案增減';
	@override String get filesTotal => '檔案總數';
	@override String get storageUsageIncDec => '儲存空間增減';
	@override String get storageUsageTotal => '儲存空間用量';
}

// Path: misskey.instanceCharts_
class _TranslationsMisskeyInstanceChartsZhTw extends TranslationsMisskeyInstanceChartsEnUs {
	_TranslationsMisskeyInstanceChartsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get requests => '請求';
	@override String get users => '使用者增減';
	@override String get usersTotal => '使用者總數';
	@override String get notes => '貼文增減';
	@override String get notesTotal => '累計貼文';
	@override String get ff => '追隨／追隨者增減';
	@override String get ffTotal => '追隨／追隨者總數';
	@override String get cacheSize => '快取用量增減';
	@override String get cacheSizeTotal => '快取用量總數';
	@override String get files => '檔案總數增減';
	@override String get filesTotal => '檔案總數累計';
}

// Path: misskey.timelines_
class _TranslationsMisskeyTimelinesZhTw extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get home => '首頁';
	@override String get local => '本地';
	@override String get social => '社交';
	@override String get global => '公開';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayZhTw extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get new_ => '新增 Play';
	@override String get edit => '編輯 Play';
	@override String get created => '已新增 Play ';
	@override String get updated => '已更新 Play ';
	@override String get deleted => '已刪除 Play';
	@override String get pageSetting => 'Play 設定';
	@override String get editThisPage => '編輯此 Play';
	@override String get viewSource => '檢視原始碼';
	@override String get my => '自己的 Play';
	@override String get liked => '按讚的 Play';
	@override String get featured => '熱門';
	@override String get title => '標題';
	@override String get script => '腳本';
	@override String get summary => '描述';
	@override String get visibilityDescription => '如果您將其設為私密，它將不再顯示在您的個人資料中，但知道該 URL 的人仍然可以存取它。';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesZhTw extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get newPage => '建立頁面';
	@override String get editPage => '編輯頁面';
	@override String get readPage => '正在檢視原始碼';
	@override String get pageSetting => '頁面設定';
	@override String get nameAlreadyExists => '該頁面 URL 已存在';
	@override String get invalidNameTitle => '無效的頁面 URL';
	@override String get invalidNameText => '請確定是否為非空白';
	@override String get editThisPage => '編輯此頁面';
	@override String get viewSource => '檢視原始碼';
	@override String get viewPage => '顯示頁面';
	@override String get like => '讚好';
	@override String get unlike => '收回讚好';
	@override String get my => '我的頁面';
	@override String get liked => '已讚好的頁面';
	@override String get featured => '熱門';
	@override String get inspector => '面板檢查';
	@override String get contents => '內容';
	@override String get content => '頁面方塊';
	@override String get variables => '變數';
	@override String get title => '標題';
	@override String get url => '頁面網址';
	@override String get summary => '頁面摘要';
	@override String get alignCenter => '置中';
	@override String get hideTitleWhenPinned => '被置頂於個人資料時隱藏頁面標題';
	@override String get font => '字型';
	@override String get fontSerif => '襯線體';
	@override String get fontSansSerif => '黑體';
	@override String get eyeCatchingImageSet => '設定封面影像';
	@override String get eyeCatchingImageRemove => '刪除封面影像';
	@override String get chooseBlock => '新增方塊';
	@override String get enterSectionTitle => '輸入區段的標題';
	@override String get selectType => '選擇類型';
	@override String get contentBlocks => '內容';
	@override String get inputBlocks => '輸入';
	@override String get specialBlocks => '特殊';
	@override late final _TranslationsMisskeyPagesBlocksZhTw blocks = _TranslationsMisskeyPagesBlocksZhTw._(_root);
}

// Path: misskey.relayStatus_
class _TranslationsMisskeyRelayStatusZhTw extends TranslationsMisskeyRelayStatusEnUs {
	_TranslationsMisskeyRelayStatusZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get requesting => '等待核准';
	@override String get accepted => '已通過核准';
	@override String get rejected => '已拒絕';
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationZhTw extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => '上傳檔案成功。';
	@override String youGotMention({required Object name}) => '${name}提及到您';
	@override String youGotReply({required Object name}) => '${name}回覆了您';
	@override String youGotQuote({required Object name}) => '${name}引用了您';
	@override String youRenoted({required Object name}) => '${name} 轉發了你的貼文';
	@override String get youWereFollowed => '您有新的追隨者';
	@override String get youReceivedFollowRequest => '您有新的追隨請求';
	@override String get yourFollowRequestAccepted => '您的追隨請求已被核准';
	@override String get pollEnded => '問卷調查已產生結果';
	@override String get newNote => '新的貼文';
	@override String unreadAntennaNote({required Object name}) => '天線 ${name}';
	@override String get roleAssigned => '已授予角色';
	@override String get chatRoomInvitationReceived => '您被邀請加入聊天室';
	@override String get emptyPushNotificationMessage => '推送通知已更新';
	@override String get achievementEarned => '獲得成就';
	@override String get testNotification => '通知測試';
	@override String get checkNotificationBehavior => '確認通知的顯示行為';
	@override String get sendTestNotification => '發送測試通知';
	@override String get notificationWillBeDisplayedLikeThis => '通知會以這樣的方式顯示';
	@override String reactedBySomeUsers({required Object n}) => '${n}人做出了反應';
	@override String likedBySomeUsers({required Object n}) => '${n} 人按了讚';
	@override String renotedBySomeUsers({required Object n}) => '${n}人做了轉發';
	@override String followedBySomeUsers({required Object n}) => '被${n}人追隨了';
	@override String get flushNotification => '重置通知歷史紀錄';
	@override String exportOfXCompleted({required Object x}) => '${x} 的匯出已完成。';
	@override String get login => '已登入';
	@override String get createToken => '已產生存取權杖';
	@override String createTokenDescription({required Object text}) => '如果您不知道，請透過「${text}」刪除存取權杖。';
	@override late final _TranslationsMisskeyNotificationTypesZhTw types_ = _TranslationsMisskeyNotificationTypesZhTw._(_root);
	@override late final _TranslationsMisskeyNotificationActionsZhTw actions_ = _TranslationsMisskeyNotificationActionsZhTw._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckZhTw extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => '總是顯示主欄';
	@override String get columnAlign => '對齊欄位';
	@override String get columnGap => '欄與欄之間的邊距';
	@override String get deckMenuPosition => '多欄模式的選單位置';
	@override String get navbarPosition => '導覽列位置';
	@override String get addColumn => '新增欄位';
	@override String get newNoteNotificationSettings => '新貼文通知的設定';
	@override String get configureColumn => '欄位的設定';
	@override String get swapLeft => '向左移動';
	@override String get swapRight => '向右移動';
	@override String get swapUp => '往上移動';
	@override String get swapDown => '往下移動';
	@override String get stackLeft => '向左折疊';
	@override String get popRight => '向右彈出';
	@override String get profile => '個人檔案';
	@override String get newProfile => '新建個人檔案';
	@override String get deleteProfile => '刪除個人檔案';
	@override String get introduction => '組合多個欄位，製作屬於自己的介面吧！';
	@override String get introduction2 => '您可以隨時按畫面右方的「+」新增欄位。';
	@override String get widgetsIntroduction => '請從欄位選單中選擇「編輯小工具」新增小工具。';
	@override String get useSimpleUiForNonRootPages => '用簡易介面顯示非根頁面';
	@override String get usedAsMinWidthWhenFlexible => '如果啟用「自動調整寬度」，此為最小寬度';
	@override String get flexible => '自動調整寬度';
	@override String get enableSyncBetweenDevicesForProfiles => '啟用裝置與裝置之間的設定檔資料同步化';
	@override late final _TranslationsMisskeyDeckColumnsZhTw columns_ = _TranslationsMisskeyDeckColumnsZhTw._(_root);
}

// Path: misskey.dialog_
class _TranslationsMisskeyDialogZhTw extends TranslationsMisskeyDialogEnUs {
	_TranslationsMisskeyDialogZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => '您的貼文太長了！現時字數 ${current}／限制字數 ${max}';
	@override String charactersBelow({required Object current, required Object min}) => '您的貼文太短了！現時字數 ${current}／限制字數 ${min}';
}

// Path: misskey.disabledTimeline_
class _TranslationsMisskeyDisabledTimelineZhTw extends TranslationsMisskeyDisabledTimelineEnUs {
	_TranslationsMisskeyDisabledTimelineZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '時間軸已停用';
	@override String get description => '目前角色無法使用這個時間軸。';
}

// Path: misskey.drivecleaner_
class _TranslationsMisskeyDrivecleanerZhTw extends TranslationsMisskeyDrivecleanerEnUs {
	_TranslationsMisskeyDrivecleanerZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => '按大小降序排列';
	@override String get orderByCreatedAtAsc => '按新增日期降序排列';
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsZhTw extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => '建立 Webhook';
	@override String get modifyWebhook => '編輯 Webhook';
	@override String get name => '名字';
	@override String get secret => '密鑰';
	@override String get trigger => '觸發器';
	@override String get active => '已啟用';
	@override late final _TranslationsMisskeyWebhookSettingsEventsZhTw events_ = _TranslationsMisskeyWebhookSettingsEventsZhTw._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsSystemEventsZhTw systemEvents_ = _TranslationsMisskeyWebhookSettingsSystemEventsZhTw._(_root);
	@override String get deleteConfirm => '請問是否要刪除 Webhook？';
	@override String get testRemarks => '按下切換開關右側的按鈕，就會將假資料發送至 Webhook。';
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportZhTw extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientZhTw notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientZhTw._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesZhTw extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get createRole => '新增角色';
	@override String get deleteRole => '刪除角色 ';
	@override String get updateRole => '更新角色設定';
	@override String get assignRole => '指派角色';
	@override String get unassignRole => '撤銷角色';
	@override String get suspend => '凍結';
	@override String get unsuspend => '解除凍結';
	@override String get addCustomEmoji => '新增自訂表情符號';
	@override String get updateCustomEmoji => '更新自訂表情符號';
	@override String get deleteCustomEmoji => '刪除自訂表情符號';
	@override String get updateServerSettings => '更新伺服器設定';
	@override String get updateUserNote => '更新了使用者的管理筆記';
	@override String get deleteDriveFile => '刪除檔案';
	@override String get deleteNote => '刪除貼文';
	@override String get createGlobalAnnouncement => '建立全網通知';
	@override String get createUserAnnouncement => '建立使用者通知';
	@override String get updateGlobalAnnouncement => '更新全部的公告';
	@override String get updateUserAnnouncement => '更新使用者的公告';
	@override String get deleteGlobalAnnouncement => '刪除全部的公告';
	@override String get deleteUserAnnouncement => '刪除使用者的公告';
	@override String get resetPassword => '重設密碼';
	@override String get suspendRemoteInstance => '封鎖遠端伺服器';
	@override String get unsuspendRemoteInstance => '解除封鎖遠端伺服器';
	@override String get updateRemoteInstanceNote => '更新了遠端伺服器的管理筆記';
	@override String get markSensitiveDriveFile => '標記為敏感檔案';
	@override String get unmarkSensitiveDriveFile => '撤銷標記為敏感檔案';
	@override String get resolveAbuseReport => '解決檢舉';
	@override String get forwardAbuseReport => '轉發檢舉';
	@override String get updateAbuseReportNote => '更新檢舉的審查備註';
	@override String get createInvitation => '建立邀請碼';
	@override String get createAd => '建立廣告';
	@override String get deleteAd => '刪除廣告';
	@override String get updateAd => '更新廣告';
	@override String get createAvatarDecoration => '建立頭像裝飾';
	@override String get updateAvatarDecoration => '更新頭像裝飾';
	@override String get deleteAvatarDecoration => '刪除頭像裝飾';
	@override String get unsetUserAvatar => '移除使用者的大頭貼';
	@override String get unsetUserBanner => '移除使用者的橫幅圖像';
	@override String get createSystemWebhook => '建立 SystemWebhook';
	@override String get updateSystemWebhook => '更新 SystemWebhook';
	@override String get deleteSystemWebhook => '刪除 SystemWebhook';
	@override String get createAbuseReportNotificationRecipient => '建立接收檢舉的通知對象';
	@override String get updateAbuseReportNotificationRecipient => '更新接收檢舉的通知對象';
	@override String get deleteAbuseReportNotificationRecipient => '刪除接收檢舉的通知對象';
	@override String get deleteAccount => '刪除帳戶';
	@override String get deletePage => '刪除頁面';
	@override String get deleteFlash => '刪除 Play';
	@override String get deleteGalleryPost => '刪除相簿的貼文';
	@override String get deleteChatRoom => '刪除聊天室';
	@override String get updateProxyAccountDescription => '更新代理帳戶的說明';
}

// Path: misskey.fileViewer_
class _TranslationsMisskeyFileViewerZhTw extends TranslationsMisskeyFileViewerEnUs {
	_TranslationsMisskeyFileViewerZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '檔案詳細資訊';
	@override String get type => '檔案類型 ';
	@override String get size => '檔案大小';
	@override String get url => 'URL';
	@override String get uploadedAt => '加入日期';
	@override String get attachedNotes => '含有附件的貼文';
	@override String get thisPageCanBeSeenFromTheAuthor => '本頁面僅限上傳了這個檔案的使用者可以檢視。';
}

// Path: misskey.externalResourceInstaller_
class _TranslationsMisskeyExternalResourceInstallerZhTw extends TranslationsMisskeyExternalResourceInstallerEnUs {
	_TranslationsMisskeyExternalResourceInstallerZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '從外部網站安裝';
	@override String get checkVendorBeforeInstall => '安裝前請確認提供者是可信賴的。';
	@override late final _TranslationsMisskeyExternalResourceInstallerPluginZhTw plugin_ = _TranslationsMisskeyExternalResourceInstallerPluginZhTw._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerThemeZhTw theme_ = _TranslationsMisskeyExternalResourceInstallerThemeZhTw._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerMetaZhTw meta_ = _TranslationsMisskeyExternalResourceInstallerMetaZhTw._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerVendorInfoZhTw vendorInfo_ = _TranslationsMisskeyExternalResourceInstallerVendorInfoZhTw._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsZhTw errors_ = _TranslationsMisskeyExternalResourceInstallerErrorsZhTw._(_root);
}

// Path: misskey.dataSaver_
class _TranslationsMisskeyDataSaverZhTw extends TranslationsMisskeyDataSaverEnUs {
	_TranslationsMisskeyDataSaverZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyDataSaverMediaZhTw media_ = _TranslationsMisskeyDataSaverMediaZhTw._(_root);
	@override late final _TranslationsMisskeyDataSaverAvatarZhTw avatar_ = _TranslationsMisskeyDataSaverAvatarZhTw._(_root);
	@override late final _TranslationsMisskeyDataSaverUrlPreviewThumbnailZhTw urlPreviewThumbnail_ = _TranslationsMisskeyDataSaverUrlPreviewThumbnailZhTw._(_root);
	@override late final _TranslationsMisskeyDataSaverDisableUrlPreviewZhTw disableUrlPreview_ = _TranslationsMisskeyDataSaverDisableUrlPreviewZhTw._(_root);
	@override late final _TranslationsMisskeyDataSaverCodeZhTw code_ = _TranslationsMisskeyDataSaverCodeZhTw._(_root);
}

// Path: misskey.hemisphere_
class _TranslationsMisskeyHemisphereZhTw extends TranslationsMisskeyHemisphereEnUs {
	_TranslationsMisskeyHemisphereZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get N => '北半球';
	@override String get S => '南半球';
	@override String get caption => '某些客戶端的設定會用此來判斷季節。';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiZhTw extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get reversi => '黑白棋';
	@override String get gameSettings => '對弈設定';
	@override String get chooseBoard => '選擇棋盤';
	@override String get blackOrWhite => '先手/後手';
	@override String blackIs({required Object name}) => '${name} 為黑棋（先攻）';
	@override String get rules => '規則';
	@override String get thisGameIsStartedSoon => '對弈即將開始';
	@override String get waitingForOther => '等待對手準備就緒';
	@override String get waitingForMe => '等待您準備就緒';
	@override String get waitingBoth => '請準備';
	@override String get ready => '準備就緒';
	@override String get cancelReady => '重新準備';
	@override String get opponentTurn => '對手的回合';
	@override String get myTurn => '您的回合';
	@override String turnOf({required Object name}) => '${name} 的回合';
	@override String pastTurnOf({required Object name}) => '${name} 的回合';
	@override String get surrender => '認輸';
	@override String get surrendered => '對手認輸';
	@override String get timeout => '時間到';
	@override String get drawn => '平手';
	@override String won({required Object name}) => '${name} 獲勝';
	@override String get black => '黑';
	@override String get white => '白';
	@override String get total => '合計';
	@override String turnCount({required Object count}) => '${count} 回合';
	@override String get myGames => '我的對弈';
	@override String get allGames => '所有對弈';
	@override String get ended => '已結束';
	@override String get playing => '正在對弈';
	@override String get isLlotheo => '子較少的一方為勝（顛倒規則）';
	@override String get loopedMap => '循環棋盤';
	@override String get canPutEverywhere => '隨意置放模式';
	@override String get timeLimitForEachTurn => '每回合的時間限制';
	@override String get freeMatch => '自由對戰';
	@override String get lookingForPlayer => '正在搜尋對手';
	@override String get gameCanceled => '對弈已被取消';
	@override String get shareToTlTheGameWhenStart => '在遊戲開始時將對弈資訊發布到時間軸';
	@override String get iStartedAGame => '對弈開始了！ #MisskeyReversi';
	@override String get opponentHasSettingsChanged => '對手更改了設定';
	@override String get allowIrregularRules => '允許異常規則（完全自由）';
	@override String get disallowIrregularRules => '不允許異常規則';
	@override String get showBoardLabels => '在棋盤上顯示行、列號';
	@override String get useAvatarAsStone => '用大頭貼當作棋子';
}

// Path: misskey.offlineScreen_
class _TranslationsMisskeyOfflineScreenZhTw extends TranslationsMisskeyOfflineScreenEnUs {
	_TranslationsMisskeyOfflineScreenZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '離線－無法連接伺服器';
	@override String get header => '無法連接伺服器';
}

// Path: misskey.urlPreviewSetting_
class _TranslationsMisskeyUrlPreviewSettingZhTw extends TranslationsMisskeyUrlPreviewSettingEnUs {
	_TranslationsMisskeyUrlPreviewSettingZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL 預覽設定';
	@override String get enable => '啟用 URL 預覽';
	@override String get allowRedirect => '允許預覽目標的重新導向';
	@override String get allowRedirectDescription => '設定當輸入的 URL 發生重新導向時，是否追蹤該重新導向並顯示預覽。若停用此功能，雖可節省伺服器資源，但將無法顯示重新導向後的內容。\n';
	@override String get timeout => '取得預覽的逾時時間 (ms)';
	@override String get timeoutDescription => '若取得預覽所需的時間超過這個值，則不會產生預覽。';
	@override String get maximumContentLength => 'Content-Length 的最大値 (byte)';
	@override String get maximumContentLengthDescription => '若 Content-Length 超過這個值，則不會產生預覽。';
	@override String get requireContentLength => '僅在能夠取得 Content-Length 時，才產生預覽。';
	@override String get requireContentLengthDescription => '若對方的伺服器未回傳 Content -Length，則不會產生預覽。';
	@override String get userAgent => 'User-Agent';
	@override String get userAgentDescription => '設定獲取預覽時使用的 User-Agent 。如果留空，將使用預設的 User-Agent 。';
	@override String get summaryProxy => '產生預覽的代理端點';
	@override String get summaryProxyDescription => '使用摘要代理程式而不是 Misskey 本身產生預覽。';
	@override String get summaryProxyDescription2 => '以下參數會作為查詢字串連結到代理。如果代理端不支援，這些設定將被忽略。';
}

// Path: misskey.mediaControls_
class _TranslationsMisskeyMediaControlsZhTw extends TranslationsMisskeyMediaControlsEnUs {
	_TranslationsMisskeyMediaControlsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get pip => '畫中畫';
	@override String get playbackRate => '播放速度';
	@override String get loop => '循環播放';
}

// Path: misskey.contextMenu_
class _TranslationsMisskeyContextMenuZhTw extends TranslationsMisskeyContextMenuEnUs {
	_TranslationsMisskeyContextMenuZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '內容功能表';
	@override String get app => '應用程式';
	@override String get appWithShift => 'Shift 鍵應用程式';
	@override String get native => '瀏覽器的使用者介面';
}

// Path: misskey.gridComponent_
class _TranslationsMisskeyGridComponentZhTw extends TranslationsMisskeyGridComponentEnUs {
	_TranslationsMisskeyGridComponentZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyGridComponentErrorZhTw error_ = _TranslationsMisskeyGridComponentErrorZhTw._(_root);
}

// Path: misskey.roleSelectDialog_
class _TranslationsMisskeyRoleSelectDialogZhTw extends TranslationsMisskeyRoleSelectDialogEnUs {
	_TranslationsMisskeyRoleSelectDialogZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get notSelected => '未選擇';
}

// Path: misskey.customEmojisManager_
class _TranslationsMisskeyCustomEmojisManagerZhTw extends TranslationsMisskeyCustomEmojisManagerEnUs {
	_TranslationsMisskeyCustomEmojisManagerZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCustomEmojisManagerGridCommonZhTw gridCommon_ = _TranslationsMisskeyCustomEmojisManagerGridCommonZhTw._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLogsZhTw logs_ = _TranslationsMisskeyCustomEmojisManagerLogsZhTw._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerRemoteZhTw remote_ = _TranslationsMisskeyCustomEmojisManagerRemoteZhTw._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalZhTw local_ = _TranslationsMisskeyCustomEmojisManagerLocalZhTw._(_root);
}

// Path: misskey.embedCodeGen_
class _TranslationsMisskeyEmbedCodeGenZhTw extends TranslationsMisskeyEmbedCodeGenEnUs {
	_TranslationsMisskeyEmbedCodeGenZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '自訂嵌入程式碼';
	@override String get header => '檢視標頭 ';
	@override String get autoload => '自動繼續載入（不建議）';
	@override String get maxHeight => '最大高度';
	@override String get maxHeightDescription => '設定為 0 時代表沒有最大值。請指定某個值以避免小工具持續在縱向延伸。';
	@override String get maxHeightWarn => '最大高度限制已停用（0）。如果這個變更不是您想要的，請將最大高度設定為某個值。';
	@override String get previewIsNotActual => '由於超出了預覽畫面可顯示的範圍，因此顯示內容會與實際嵌入時有所不同。';
	@override String get rounded => '圓角';
	@override String get border => '給外框加上邊框';
	@override String get applyToPreview => '反映在預覽中';
	@override String get generateCode => '建立嵌入程式碼';
	@override String get codeGenerated => '已產生程式碼';
	@override String get codeGeneratedDescription => '請將產生的程式碼貼到您的網站上。';
}

// Path: misskey.selfXssPrevention_
class _TranslationsMisskeySelfXssPreventionZhTw extends TranslationsMisskeySelfXssPreventionEnUs {
	_TranslationsMisskeySelfXssPreventionZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get warning => '警告';
	@override String get title => '「在此畫面貼上一些內容」完全是個騙局。';
	@override String get description1 => '如果您在此處貼上任何內容，惡意使用者可能會接管您的帳戶或竊取您的個人資訊。';
	@override String get description2 => '如果您不確切知道要貼上的內容，%c 請立即停止工作並關閉此視窗。';
	@override String description3({required Object link}) => '細節請看這裡。${link}';
}

// Path: misskey.followRequest_
class _TranslationsMisskeyFollowRequestZhTw extends TranslationsMisskeyFollowRequestEnUs {
	_TranslationsMisskeyFollowRequestZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get recieved => '收到的請求';
	@override String get sent => '送出的請求';
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsZhTw extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedZhTw federationNotAllowed_ = _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedZhTw._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsUriInvalidZhTw uriInvalid_ = _TranslationsMisskeyRemoteLookupErrorsUriInvalidZhTw._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsRequestFailedZhTw requestFailed_ = _TranslationsMisskeyRemoteLookupErrorsRequestFailedZhTw._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsResponseInvalidZhTw responseInvalid_ = _TranslationsMisskeyRemoteLookupErrorsResponseInvalidZhTw._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectZhTw noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectZhTw._(_root);
}

// Path: misskey.captcha_
class _TranslationsMisskeyCaptchaZhTw extends TranslationsMisskeyCaptchaEnUs {
	_TranslationsMisskeyCaptchaZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get verify => '請通過 CAPTCHA 驗證';
	@override String get testSiteKeyMessage => '可以輸入網站金鑰和秘密金鑰的測試值來檢查預覽。\n詳細資訊請參閱以下頁面。';
	@override late final _TranslationsMisskeyCaptchaErrorZhTw error_ = _TranslationsMisskeyCaptchaErrorZhTw._(_root);
}

// Path: misskey.bootErrors_
class _TranslationsMisskeyBootErrorsZhTw extends TranslationsMisskeyBootErrorsEnUs {
	_TranslationsMisskeyBootErrorsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '載入失敗';
	@override String get serverError => '如果稍等片刻並重新載入後問題仍然存在，請聯絡您的伺服器管理員並提供以下的錯誤 ID。';
	@override String get solution => '執行以下操作或許可以解決問題。';
	@override String get solution1 => '將瀏覽器和作業系統更新至最新版本';
	@override String get solution2 => '停用廣告攔截器';
	@override String get solution3 => '清除瀏覽器的快取';
	@override String get solution4 => '（Tor 瀏覽器）將 dom.webaudio.enabled 設為 true';
	@override String get otherOption => '其他選項';
	@override String get otherOption1 => '刪除用戶端設定和快取';
	@override String get otherOption2 => '啟動簡易用戶端';
	@override String get otherOption3 => '啟動修復工具';
}

// Path: misskey.search_
class _TranslationsMisskeySearchZhTw extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => '全部';
	@override String get searchScopeLocal => '本地';
	@override String get searchScopeServer => '指定伺服器';
	@override String get searchScopeUser => '指定使用者';
	@override String get pleaseEnterServerHost => '請輸入伺服器的主機名稱';
	@override String get pleaseSelectUser => '請選擇使用者';
	@override String get serverHostPlaceholder => '例：misskey.example.com';
}

// Path: misskey.serverSetupWizard_
class _TranslationsMisskeyServerSetupWizardZhTw extends TranslationsMisskeyServerSetupWizardEnUs {
	_TranslationsMisskeyServerSetupWizardZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get installCompleted => 'Misskey 的安裝已經完成了！';
	@override String get firstCreateAccount => '首先，請建立管理者帳戶。';
	@override String get accountCreated => '已建立管理者帳戶！';
	@override String get serverSetting => '伺服器設定';
	@override String get youCanEasilyConfigureOptimalServerSettingsWithThisWizard => '利用這個精靈，可以簡單地最佳化伺服器的設定。';
	@override String get settingsYouMakeHereCanBeChangedLater => '這裡的設定之後也可以進行更改。\n';
	@override String get howWillYouUseMisskey => '您打算如何使用 Misskey？\n';
	@override late final _TranslationsMisskeyServerSetupWizardUseZhTw use_ = _TranslationsMisskeyServerSetupWizardUseZhTw._(_root);
	@override String get openServerAdvice => '接納不特定多數使用者會帶來風險。為了能夠有效處理問題，建議建立完善的審查機制來進行運營。\n';
	@override String get openServerAntiSpamAdvice => '為了防止自家伺服器成為垃圾郵件的跳板，必須啟用如 reCAPTCHA 等反機器人功能，並對安全性保持高度警覺。\n';
	@override String get howManyUsersDoYouExpect => '您預計有多少人使用呢？\n';
	@override late final _TranslationsMisskeyServerSetupWizardScaleZhTw scale_ = _TranslationsMisskeyServerSetupWizardScaleZhTw._(_root);
	@override String get largeScaleServerAdvice => '在大規模伺服器中，可能需要具備高階基礎設施知識，如負載平衡和資料庫複寫等。\n';
	@override String get doYouConnectToFediverse => '您要連接到聯邦宇宙（Fediverse）嗎？\n';
	@override String get doYouConnectToFediverse_description1 => '連接到由分散型伺服器構成的網絡（聯邦宇宙）後，您可以與其他伺服器進行內容的互相交流。\n';
	@override String get doYouConnectToFediverse_description2 => '連接到聯邦宇宙被稱為「聯邦」。\n';
	@override String get youCanConfigureMoreFederationSettingsLater => '您可以在稍後進行更高級的設定，例如指定可以聯繫的伺服器等。\n';
	@override String get adminInfo => '管理員資訊';
	@override String get adminInfo_description => '設定用於接收查詢的管理者資訊。\n';
	@override String get adminInfo_mustBeFilled => '當設置為開放伺服器或啟用聯邦時，必須填寫此資訊。\n';
	@override String get followingSettingsAreRecommended => '建議使用下列設定';
	@override String get applyTheseSettings => '套用此設定';
	@override String get skipSettings => '跳過設定';
	@override String get settingsCompleted => '設定完成！';
	@override String get settingsCompleted_description => '辛苦了！準備已經完成，您可以立即開始使用伺服器了。\n';
	@override String get settingsCompleted_description2 => '詳細的伺服器設定可透過「控制臺」進行。';
	@override String get donationRequest => '請求捐款';
	@override late final _TranslationsMisskeyServerSetupWizardDonationRequestZhTw donationRequest_ = _TranslationsMisskeyServerSetupWizardDonationRequestZhTw._(_root);
}

// Path: misskey.uploader_
class _TranslationsMisskeyUploaderZhTw extends TranslationsMisskeyUploaderEnUs {
	_TranslationsMisskeyUploaderZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String compressedToX({required Object x}) => '壓縮為 ${x}';
	@override String savedXPercent({required Object x}) => '節省了 ${x}%';
	@override String get abortConfirm => '有些檔案尚未上傳，您要中止嗎？';
	@override String get doneConfirm => '有些檔案尚未上傳，是否要完成上傳？';
	@override String maxFileSizeIsX({required Object x}) => '可上傳的最大檔案大小為 ${x}。';
	@override String get allowedTypes => '可上傳的檔案類型';
	@override String get tip => '檔案尚未上傳。您可以在此對話框中進行上傳前的確認、重新命名、壓縮、裁切等操作。準備完成後，請點選「上傳」按鈕開始上傳。\n';
}

// Path: misskey.clientPerformanceIssueTip_
class _TranslationsMisskeyClientPerformanceIssueTipZhTw extends TranslationsMisskeyClientPerformanceIssueTipEnUs {
	_TranslationsMisskeyClientPerformanceIssueTipZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '如果覺得電池消耗過快的話';
	@override String get makeSureDisabledAdBlocker => '請將廣告阻擋器停用';
	@override String get makeSureDisabledAdBlocker_description => '廣告阻擋器可能會影響效能。請確認作業系統功能、瀏覽器設定或擴充功能中是否啟用了廣告阻擋器。\n';
	@override String get makeSureDisabledCustomCss => '請停用自訂 CSS';
	@override String get makeSureDisabledCustomCss_description => '覆蓋樣式可能會影響效能。請確認是否啟用了自訂 CSS 或其他會覆蓋樣式的擴充功能。\n';
	@override String get makeSureDisabledAddons => '請停用擴充功能';
	@override String get makeSureDisabledAddons_description => '部分擴充功能可能會干擾用戶端的運作並影響效能。請嘗試停用瀏覽器的擴充功能，以確認是否能改善情況';
}

// Path: misskey.clip_
class _TranslationsMisskeyClipZhTw extends TranslationsMisskeyClipEnUs {
	_TranslationsMisskeyClipZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get tip => '摘錄是一項可以用來整理貼文的功能。';
}

// Path: misskey.userLists_
class _TranslationsMisskeyUserListsZhTw extends TranslationsMisskeyUserListsEnUs {
	_TranslationsMisskeyUserListsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get tip => '您可以建立包含任意使用者的清單。建立後的清單可以作為時間軸顯示。\n';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorZhTw extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get tip => '可以在圖片中以浮水印加上出處等資訊。';
	@override String get quitWithoutSaveConfirm => '不儲存就退出嗎？';
	@override String get driveFileTypeWarn => '不支援此檔案';
	@override String get driveFileTypeWarnDescription => '請選擇圖片檔案';
	@override String get title => '編輯浮水印';
	@override String get cover => '覆蓋整體';
	@override String get repeat => '佈局';
	@override String get opacity => '透明度';
	@override String get scale => '大小';
	@override String get text => '文字';
	@override String get position => '位置';
	@override String get type => '類型';
	@override String get image => '圖片';
	@override String get advanced => '進階';
	@override String get stripe => '條紋';
	@override String get stripeWidth => '線條寬度';
	@override String get stripeFrequency => '線條數量';
	@override String get angle => '角度';
	@override String get polkadot => '波卡圓點';
	@override String get checker => '棋盤格';
	@override String get polkadotMainDotOpacity => '主圓點的不透明度';
	@override String get polkadotMainDotRadius => '主圓點的尺寸';
	@override String get polkadotSubDotOpacity => '子圓點的不透明度';
	@override String get polkadotSubDotRadius => '子圓點的尺寸';
	@override String get polkadotSubDotDivisions => '子圓點的數量';
}

// Path: misskey.imageEffector_
class _TranslationsMisskeyImageEffectorZhTw extends TranslationsMisskeyImageEffectorEnUs {
	_TranslationsMisskeyImageEffectorZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '特效';
	@override String get addEffect => '新增特效';
	@override String get discardChangesConfirm => '捨棄更改並退出嗎？';
	@override late final _TranslationsMisskeyImageEffectorFxsZhTw fxs_ = _TranslationsMisskeyImageEffectorFxsZhTw._(_root);
}

// Path: misskey.chat_.chatAllowedUsers_
class _TranslationsMisskeyChatChatAllowedUsersZhTw extends TranslationsMisskeyChatChatAllowedUsersEnUs {
	_TranslationsMisskeyChatChatAllowedUsersZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get everyone => '任何人';
	@override String get followers => '追隨自己的使用者';
	@override String get following => '只有您追隨的使用者';
	@override String get mutual => '互相追隨';
	@override String get none => '無';
}

// Path: misskey.settings_.chat_
class _TranslationsMisskeySettingsChatZhTw extends TranslationsMisskeySettingsChatEnUs {
	_TranslationsMisskeySettingsChatZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get showSenderName => '顯示發送者的名稱';
	@override String get sendOnEnter => '按下 Enter 發送訊息';
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypeZhTw extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypeZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get none => '發送中';
	@override String get manuallySuspended => '手動暫停中';
	@override String get goneSuspended => '因為伺服器刪除所以暫停中';
	@override String get autoSuspendedForNotResponding => '因為伺服器沒有回應所以暫停中';
	@override String get softwareSuspended => '此軟體因已停止發佈，目前無法使用';
}

// Path: misskey.bubbleGame_.score_
class _TranslationsMisskeyBubbleGameScoreZhTw extends TranslationsMisskeyBubbleGameScoreEnUs {
	_TranslationsMisskeyBubbleGameScoreZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get score => '分數';
	@override String get scoreYen => '賺取的金額';
	@override String get highScore => '最高分';
	@override String get maxChain => '最大結合數';
	@override String yen({required Object yen}) => '${yen}円';
	@override String estimatedQty({required Object qty}) => '${qty}個';
	@override String scoreSweets({required Object onigiriQtyWithUnit}) => '飯糰 ${onigiriQtyWithUnit}';
}

// Path: misskey.bubbleGame_.howToPlay_
class _TranslationsMisskeyBubbleGameHowToPlayZhTw extends TranslationsMisskeyBubbleGameHowToPlayEnUs {
	_TranslationsMisskeyBubbleGameHowToPlayZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get section1 => '調整位置並將物體放入盒子中。';
	@override String get section2 => '當相同類型的物體黏在一起時，它們會變成不同的物體，您就會得到分數。';
	@override String get section3 => '如果物體從盒子裡溢出，遊戲就結束了。透過融合物體而不溢出盒子來獲得高分！';
}

// Path: misskey.initialTutorial_.landing_
class _TranslationsMisskeyInitialTutorialLandingZhTw extends TranslationsMisskeyInitialTutorialLandingEnUs {
	_TranslationsMisskeyInitialTutorialLandingZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '歡迎使用本教學課程';
	@override String get description => '在這裡您可以查看 Misskey 的基本使用方法和功能。';
}

// Path: misskey.initialTutorial_.note_
class _TranslationsMisskeyInitialTutorialNoteZhTw extends TranslationsMisskeyInitialTutorialNoteEnUs {
	_TranslationsMisskeyInitialTutorialNoteZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '什麼是貼文？';
	@override String get description => '在Misskey上發布的內容稱為「貼文」。貼文在時間軸上按時間順序排列，並即時更新。';
	@override String get reply => '您可以回覆貼文，並像討論串一樣繼續對話。';
	@override String get renote => '您可以將此貼文分享到自己的時間軸。您也可以在引用時添加文字。';
	@override String get reaction => '您可以加入反應。詳細資訊將在下一頁進行說明。';
	@override String get menu => '可執行各種操作，如查看貼文詳細資訊和複製連結。';
}

// Path: misskey.initialTutorial_.reaction_
class _TranslationsMisskeyInitialTutorialReactionZhTw extends TranslationsMisskeyInitialTutorialReactionEnUs {
	_TranslationsMisskeyInitialTutorialReactionZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '什麼是反應？';
	@override String get description => '您可以在貼文中加上「反應」。有些用「最愛/大心」無法傳達的感想，可以用反應輕鬆地表達出來。';
	@override String get letsTryReacting => '按一下貼文上的「+」按鈕即可加入反應。試著對此範例貼文加上反應！';
	@override String get reactToContinue => '添加反應以繼續教學課程。';
	@override String get reactNotification => '當有人對您的貼文做出反應時會即時接收到通知。';
	@override String get reactDone => '按下「-」按鈕可以取消反應。';
}

// Path: misskey.initialTutorial_.timeline_
class _TranslationsMisskeyInitialTutorialTimelineZhTw extends TranslationsMisskeyInitialTutorialTimelineEnUs {
	_TranslationsMisskeyInitialTutorialTimelineZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '時間軸如何運作';
	@override String get description1 => 'Misskey根據使用方式提供了多個時間軸（伺服器可能會將部份時間軸停用）。';
	@override String get home => '您可以查看您追隨的使用者的貼文。';
	@override String get local => '您可以看到此伺服器上所有使用者的貼文。';
	@override String get social => '來自首頁時間軸和本地時間軸的貼文都會顯示。';
	@override String get global => '可以看到其他已連接伺服器的貼文。';
	@override String get description2 => '您可以隨時在螢幕上方切換對應的時間軸。';
	@override String description3({required Object link}) => '除此之外還有清單時間軸、頻道時間軸等。請參閱${link}以了解更多詳情。';
}

// Path: misskey.initialTutorial_.postNote_
class _TranslationsMisskeyInitialTutorialPostNoteZhTw extends TranslationsMisskeyInitialTutorialPostNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '貼文的發布設定';
	@override String get description1 => '在Misskey上發布貼文時，可以設定各種選項。發布表單如下所示。';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteVisibilityZhTw visibility_ = _TranslationsMisskeyInitialTutorialPostNoteVisibilityZhTw._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwZhTw cw_ = _TranslationsMisskeyInitialTutorialPostNoteCwZhTw._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveZhTw extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '如何標記上傳附件為敏感內容？';
	@override String get description => '如果伺服器的服務條款有規範，又或者不適合直接展示的附件，請記得加上「敏感」標記。';
	@override String get tryThisFile => '試試看！把附加在發文表單的圖像檔案標記為敏感內容。';
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteZhTw exampleNote_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteZhTw._(_root);
	@override String get method => '若要使上傳附件標記為敏感內容，請按一下該檔案以開啟選單，然後點擊「標記為敏感內容」。';
	@override String get sensitiveSucceeded => '上傳附件時，請務必根據伺服器的服務條款適當設定敏感內容。';
	@override String get doItToContinue => '把圖像標記為敏感內容以繼續教學課程。';
}

// Path: misskey.initialTutorial_.done_
class _TranslationsMisskeyInitialTutorialDoneZhTw extends TranslationsMisskeyInitialTutorialDoneEnUs {
	_TranslationsMisskeyInitialTutorialDoneZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '教學課程已結束';
	@override String description({required Object link}) => '這裡介紹的功能只是其中的一小部分。要了解更多有關如何使用Misskey的資訊，請瀏覽${link}。';
}

// Path: misskey.serverSettings_.userGeneratedContentsVisibilityForVisitor_
class _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorZhTw extends TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorEnUs {
	_TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get all => '全部公開\n';
	@override String get localOnly => '僅公開本地內容，遠端內容則不公開\n';
	@override String get none => '全部不公開';
}

// Path: misskey.achievements_.types_
class _TranslationsMisskeyAchievementsTypesZhTw extends TranslationsMisskeyAchievementsTypesEnUs {
	_TranslationsMisskeyAchievementsTypesZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesNotes1ZhTw notes1_ = _TranslationsMisskeyAchievementsTypesNotes1ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10ZhTw notes10_ = _TranslationsMisskeyAchievementsTypesNotes10ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100ZhTw notes100_ = _TranslationsMisskeyAchievementsTypesNotes100ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes500ZhTw notes500_ = _TranslationsMisskeyAchievementsTypesNotes500ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes1000ZhTw notes1000_ = _TranslationsMisskeyAchievementsTypesNotes1000ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes5000ZhTw notes5000_ = _TranslationsMisskeyAchievementsTypesNotes5000ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10000ZhTw notes10000_ = _TranslationsMisskeyAchievementsTypesNotes10000ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes20000ZhTw notes20000_ = _TranslationsMisskeyAchievementsTypesNotes20000ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes30000ZhTw notes30000_ = _TranslationsMisskeyAchievementsTypesNotes30000ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes40000ZhTw notes40000_ = _TranslationsMisskeyAchievementsTypesNotes40000ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes50000ZhTw notes50000_ = _TranslationsMisskeyAchievementsTypesNotes50000ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes60000ZhTw notes60000_ = _TranslationsMisskeyAchievementsTypesNotes60000ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes70000ZhTw notes70000_ = _TranslationsMisskeyAchievementsTypesNotes70000ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes80000ZhTw notes80000_ = _TranslationsMisskeyAchievementsTypesNotes80000ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes90000ZhTw notes90000_ = _TranslationsMisskeyAchievementsTypesNotes90000ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100000ZhTw notes100000_ = _TranslationsMisskeyAchievementsTypesNotes100000ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin3ZhTw login3_ = _TranslationsMisskeyAchievementsTypesLogin3ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin7ZhTw login7_ = _TranslationsMisskeyAchievementsTypesLogin7ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin15ZhTw login15_ = _TranslationsMisskeyAchievementsTypesLogin15ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin30ZhTw login30_ = _TranslationsMisskeyAchievementsTypesLogin30ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin60ZhTw login60_ = _TranslationsMisskeyAchievementsTypesLogin60ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin100ZhTw login100_ = _TranslationsMisskeyAchievementsTypesLogin100ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin200ZhTw login200_ = _TranslationsMisskeyAchievementsTypesLogin200ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin300ZhTw login300_ = _TranslationsMisskeyAchievementsTypesLogin300ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin400ZhTw login400_ = _TranslationsMisskeyAchievementsTypesLogin400ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin500ZhTw login500_ = _TranslationsMisskeyAchievementsTypesLogin500ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin600ZhTw login600_ = _TranslationsMisskeyAchievementsTypesLogin600ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin700ZhTw login700_ = _TranslationsMisskeyAchievementsTypesLogin700ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin800ZhTw login800_ = _TranslationsMisskeyAchievementsTypesLogin800ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin900ZhTw login900_ = _TranslationsMisskeyAchievementsTypesLogin900ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin1000ZhTw login1000_ = _TranslationsMisskeyAchievementsTypesLogin1000ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteClipped1ZhTw noteClipped1_ = _TranslationsMisskeyAchievementsTypesNoteClipped1ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteFavorited1ZhTw noteFavorited1_ = _TranslationsMisskeyAchievementsTypesNoteFavorited1ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMyNoteFavorited1ZhTw myNoteFavorited1_ = _TranslationsMisskeyAchievementsTypesMyNoteFavorited1ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesProfileFilledZhTw profileFilled_ = _TranslationsMisskeyAchievementsTypesProfileFilledZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMarkedAsCatZhTw markedAsCat_ = _TranslationsMisskeyAchievementsTypesMarkedAsCatZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing1ZhTw following1_ = _TranslationsMisskeyAchievementsTypesFollowing1ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing10ZhTw following10_ = _TranslationsMisskeyAchievementsTypesFollowing10ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing50ZhTw following50_ = _TranslationsMisskeyAchievementsTypesFollowing50ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing100ZhTw following100_ = _TranslationsMisskeyAchievementsTypesFollowing100ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing300ZhTw following300_ = _TranslationsMisskeyAchievementsTypesFollowing300ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1ZhTw followers1_ = _TranslationsMisskeyAchievementsTypesFollowers1ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers10ZhTw followers10_ = _TranslationsMisskeyAchievementsTypesFollowers10ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers50ZhTw followers50_ = _TranslationsMisskeyAchievementsTypesFollowers50ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers100ZhTw followers100_ = _TranslationsMisskeyAchievementsTypesFollowers100ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers300ZhTw followers300_ = _TranslationsMisskeyAchievementsTypesFollowers300ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers500ZhTw followers500_ = _TranslationsMisskeyAchievementsTypesFollowers500ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1000ZhTw followers1000_ = _TranslationsMisskeyAchievementsTypesFollowers1000ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCollectAchievements30ZhTw collectAchievements30_ = _TranslationsMisskeyAchievementsTypesCollectAchievements30ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewAchievements3minZhTw viewAchievements3min_ = _TranslationsMisskeyAchievementsTypesViewAchievements3minZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesILoveMisskeyZhTw iLoveMisskey_ = _TranslationsMisskeyAchievementsTypesILoveMisskeyZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFoundTreasureZhTw foundTreasure_ = _TranslationsMisskeyAchievementsTypesFoundTreasureZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient30minZhTw client30min_ = _TranslationsMisskeyAchievementsTypesClient30minZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient60minZhTw client60min_ = _TranslationsMisskeyAchievementsTypesClient60minZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minZhTw noteDeletedWithin1min_ = _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAtLateNightZhTw postedAtLateNight_ = _TranslationsMisskeyAchievementsTypesPostedAtLateNightZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAt0min0secZhTw postedAt0min0sec_ = _TranslationsMisskeyAchievementsTypesPostedAt0min0secZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSelfQuoteZhTw selfQuote_ = _TranslationsMisskeyAchievementsTypesSelfQuoteZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesHtl20npmZhTw htl20npm_ = _TranslationsMisskeyAchievementsTypesHtl20npmZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewInstanceChartZhTw viewInstanceChart_ = _TranslationsMisskeyAchievementsTypesViewInstanceChartZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadZhTw outputHelloWorldOnScratchpad_ = _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOpen3windowsZhTw open3windows_ = _TranslationsMisskeyAchievementsTypesOpen3windowsZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceZhTw driveFolderCircularReference_ = _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesReactWithoutReadZhTw reactWithoutRead_ = _TranslationsMisskeyAchievementsTypesReactWithoutReadZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClickedClickHereZhTw clickedClickHere_ = _TranslationsMisskeyAchievementsTypesClickedClickHereZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesJustPlainLuckyZhTw justPlainLucky_ = _TranslationsMisskeyAchievementsTypesJustPlainLuckyZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSetNameToSyuiloZhTw setNameToSyuilo_ = _TranslationsMisskeyAchievementsTypesSetNameToSyuiloZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1ZhTw passedSinceAccountCreated1_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2ZhTw passedSinceAccountCreated2_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3ZhTw passedSinceAccountCreated3_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3ZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayZhTw loggedInOnBirthday_ = _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayZhTw loggedInOnNewYearsDay_ = _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCookieClickedZhTw cookieClicked_ = _TranslationsMisskeyAchievementsTypesCookieClickedZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBrainDiverZhTw brainDiver_ = _TranslationsMisskeyAchievementsTypesBrainDiverZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonZhTw smashTestNotificationButton_ = _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesTutorialCompletedZhTw tutorialCompleted_ = _TranslationsMisskeyAchievementsTypesTutorialCompletedZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadZhTw bubbleGameExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadZhTw._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadZhTw bubbleGameDoubleExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadZhTw._(_root);
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityZhTw extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get low => '低';
	@override String get middle => '中';
	@override String get high => '高';
}

// Path: misskey.role_.options_
class _TranslationsMisskeyRoleOptionsZhTw extends TranslationsMisskeyRoleOptionsEnUs {
	_TranslationsMisskeyRoleOptionsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => '瀏覽全域時間軸';
	@override String get ltlAvailable => '瀏覽本地時間軸';
	@override String get canPublicNote => '允許公開貼文';
	@override String get mentionMax => '貼文內的最大提及數';
	@override String get canInvite => '發行伺服器邀請碼';
	@override String get inviteLimit => '可建立邀請碼的數量';
	@override String get inviteLimitCycle => '邀請碼的發放間隔';
	@override String get inviteExpirationTime => '邀請碼的有效日期';
	@override String get canManageCustomEmojis => '管理自訂表情符號';
	@override String get canManageAvatarDecorations => '管理頭像裝飾';
	@override String get driveCapacity => '雲端硬碟容量';
	@override String get maxFileSize => '可上傳的最大檔案大小';
	@override String get alwaysMarkNsfw => '總是將檔案標記為NSFW';
	@override String get canUpdateBioMedia => '允許更新大頭貼和橫幅';
	@override String get pinMax => '置頂貼文的最大數量';
	@override String get antennaMax => '可建立的天線數量';
	@override String get wordMuteMax => '靜音文字的最大字數';
	@override String get webhookMax => '可建立的 Webhook 數量';
	@override String get clipMax => '可建立的摘錄數量';
	@override String get noteEachClipsMax => '摘錄內貼文的最大數量';
	@override String get userListMax => '可建立的使用者清單數量';
	@override String get userEachUserListsMax => '使用者清單內使用者的最大數量';
	@override String get rateLimitFactor => '速率限制';
	@override String get descriptionOfRateLimitFactor => '值越小限制越少，值越大限制越多。';
	@override String get canHideAds => '不顯示廣告';
	@override String get canSearchNotes => '可否搜尋貼文';
	@override String get canUseTranslator => '使用翻譯功能';
	@override String get avatarDecorationLimit => '頭像可掛上的最大裝飾數量';
	@override String get canImportAntennas => '允許匯入天線';
	@override String get canImportBlocking => '允許匯入封鎖名單';
	@override String get canImportFollowing => '允許匯入追隨名單';
	@override String get canImportMuting => '允許匯入靜音名單';
	@override String get canImportUserLists => '允許匯入清單';
	@override String get chatAvailability => '允許聊天';
	@override String get uploadableFileTypes => '可上傳的檔案類型';
	@override String get uploadableFileTypes_caption => '請指定 MIME 類型。可以用換行區隔多個類型，也可以使用星號（*）作為萬用字元進行指定。（例如：image/*）\n';
	@override String uploadableFileTypes_caption2({required Object x}) => '有些檔案可能無法判斷其類型。若要允許這類檔案，請在指定中加入 ${x}。';
}

// Path: misskey.role_.condition_
class _TranslationsMisskeyRoleConditionZhTw extends TranslationsMisskeyRoleConditionEnUs {
	_TranslationsMisskeyRoleConditionZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get roleAssignedTo => '手動指派角色完成';
	@override String get isLocal => '本地使用者';
	@override String get isRemote => '遠端使用者';
	@override String get isCat => '貓使用者';
	@override String get isBot => '機器人使用者';
	@override String get isSuspended => '被停權的使用者';
	@override String get isLocked => '上鎖的使用者';
	@override String get isExplorable => '開啟了「使您的帳戶更容易被找到」功能的使用者';
	@override String get createdLessThan => '帳戶加入時間不超過';
	@override String get createdMoreThan => '帳戶加入時間已超過';
	@override String get followersLessThanOrEq => '追隨者人數在～以下';
	@override String get followersMoreThanOrEq => '追隨者人數在～以上';
	@override String get followingLessThanOrEq => '追隨人數在～以下';
	@override String get followingMoreThanOrEq => '追隨人數在～以上';
	@override String get notesLessThanOrEq => '貼文數在～以下';
	@override String get notesMoreThanOrEq => '貼文數在～以上';
	@override String get and => '～及～';
	@override String get or => '～或～';
	@override String get not => '～否';
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowZhTw extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '您有新的追隨者';
}

// Path: misskey.email_.receiveFollowRequest_
class _TranslationsMisskeyEmailReceiveFollowRequestZhTw extends TranslationsMisskeyEmailReceiveFollowRequestEnUs {
	_TranslationsMisskeyEmailReceiveFollowRequestZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '收到追隨請求';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysZhTw extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get accent => '重點色彩';
	@override String get bg => '背景';
	@override String get fg => '文本';
	@override String get focus => '聚焦';
	@override String get indicator => '指標';
	@override String get panel => '面板';
	@override String get shadow => '影子';
	@override String get header => '標題';
	@override String get navBg => '側邊欄的背景 ';
	@override String get navFg => '側邊欄的文字';
	@override String get navActive => '側邊欄文字（活動）';
	@override String get navIndicator => '側邊欄指示符';
	@override String get link => '連結';
	@override String get hashtag => '標籤';
	@override String get mention => '提到';
	@override String get mentionMe => '提到了我';
	@override String get renote => '轉發貼文';
	@override String get modalBg => '對話框背景';
	@override String get divider => '分隔線';
	@override String get scrollbarHandle => '捲動條';
	@override String get scrollbarHandleHover => '捲動條（懸浮）';
	@override String get dateLabelFg => '日期標籤文字';
	@override String get infoBg => '資訊背景';
	@override String get infoFg => '資訊內容';
	@override String get infoWarnBg => '警告背景';
	@override String get infoWarnFg => '警告文字';
	@override String get toastBg => '通知背景';
	@override String get toastFg => '通知文本';
	@override String get buttonBg => '按鈕背景';
	@override String get buttonHoverBg => '按鈕背景 (漂浮)';
	@override String get inputBorder => '輸入框邊框';
	@override String get badge => '徽章';
	@override String get messageBg => '私訊背景';
	@override String get fgHighlighted => '突顯文字';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListZhTw extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get chooseList => '選擇清單';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersZhTw extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get a => '今天過得如何？';
	@override String get b => '有什麼新鮮事嗎？';
	@override String get c => '有什麼新鮮想法嗎？';
	@override String get d => '想要發佈些什麼嗎？';
	@override String get e => '寫些什麼吧……';
	@override String get f => '靜待發文……';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksZhTw extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get text => '文字';
	@override String get textarea => '字串區域';
	@override String get section => '區段';
	@override String get image => '圖片';
	@override String get button => '按鈕';
	@override String get dynamic => '動態方塊';
	@override String dynamicDescription({required Object play}) => '這個方塊已經廢止，現在開始請使用 ${play}。';
	@override String get note => '嵌式貼文';
	@override late final _TranslationsMisskeyPagesBlocksNoteZhTw note_ = _TranslationsMisskeyPagesBlocksNoteZhTw._(_root);
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesZhTw extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get all => '全部 ';
	@override String get note => '使用者的最新貼文';
	@override String get follow => '追隨中';
	@override String get mention => '提及';
	@override String get reply => '回覆';
	@override String get renote => '轉發';
	@override String get quote => '引用';
	@override String get reaction => '反應';
	@override String get pollEnded => '問卷調查結束';
	@override String get receiveFollowRequest => '已收到追隨請求';
	@override String get followRequestAccepted => '追隨請求已接受';
	@override String get roleAssigned => '已授予角色';
	@override String get chatRoomInvitationReceived => '已被邀請加入聊天室';
	@override String get achievementEarned => '獲得成就';
	@override String get exportCompleted => '已完成匯出。';
	@override String get login => '登入';
	@override String get createToken => '建立存取權杖';
	@override String get test => '通知測試';
	@override String get app => '應用程式通知';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsZhTw extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get followBack => '追隨回去';
	@override String get reply => '回覆';
	@override String get renote => '轉發';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsZhTw extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get main => '主列';
	@override String get widgets => '小工具';
	@override String get notifications => '通知';
	@override String get tl => '時間軸';
	@override String get antenna => '天線';
	@override String get list => '清單';
	@override String get channel => '頻道';
	@override String get mentions => '提及';
	@override String get direct => '指定使用者';
	@override String get roleTimeline => '角色時間軸';
	@override String get chat => '聊天';
}

// Path: misskey.webhookSettings_.events_
class _TranslationsMisskeyWebhookSettingsEventsZhTw extends TranslationsMisskeyWebhookSettingsEventsEnUs {
	_TranslationsMisskeyWebhookSettingsEventsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get follow => '當你追隨時';
	@override String get followed => '當被追隨時';
	@override String get note => '當發佈貼文時';
	@override String get reply => '當收到回覆時';
	@override String get renote => '當被轉發時';
	@override String get reaction => '當獲得反應時';
	@override String get mention => '當被提到時';
}

// Path: misskey.webhookSettings_.systemEvents_
class _TranslationsMisskeyWebhookSettingsSystemEventsZhTw extends TranslationsMisskeyWebhookSettingsSystemEventsEnUs {
	_TranslationsMisskeyWebhookSettingsSystemEventsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get abuseReport => '當使用者檢舉時';
	@override String get abuseReportResolved => '當處理了使用者的檢舉時';
	@override String get userCreated => '使用者被新增時';
	@override String get inactiveModeratorsWarning => '當審查員在一段時間內沒有活動時';
	@override String get inactiveModeratorsInvitationOnlyChanged => '當審查員在一段時間內不活動時，系統會將模式變更為邀請制';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientZhTw extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get createRecipient => '新增接收檢舉的通知對象';
	@override String get modifyRecipient => '編輯接收檢舉的通知對象';
	@override String get recipientType => '通知對象的種類';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeZhTw recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeZhTw._(_root);
	@override String get keywords => '關鍵字';
	@override String get notifiedUser => '通知的使用者';
	@override String get notifiedWebhook => '使用的 Webhook';
	@override String get deleteConfirm => '確定要刪除通知對象嗎？';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _TranslationsMisskeyExternalResourceInstallerPluginZhTw extends TranslationsMisskeyExternalResourceInstallerPluginEnUs {
	_TranslationsMisskeyExternalResourceInstallerPluginZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '要安裝此外掛嘛？';
}

// Path: misskey.externalResourceInstaller_.theme_
class _TranslationsMisskeyExternalResourceInstallerThemeZhTw extends TranslationsMisskeyExternalResourceInstallerThemeEnUs {
	_TranslationsMisskeyExternalResourceInstallerThemeZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '要安裝此佈景主題嗎？';
}

// Path: misskey.externalResourceInstaller_.meta_
class _TranslationsMisskeyExternalResourceInstallerMetaZhTw extends TranslationsMisskeyExternalResourceInstallerMetaEnUs {
	_TranslationsMisskeyExternalResourceInstallerMetaZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get base => '基本配色方案';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _TranslationsMisskeyExternalResourceInstallerVendorInfoZhTw extends TranslationsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_TranslationsMisskeyExternalResourceInstallerVendorInfoZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '提供者資訊';
	@override String get endpoint => '引用端點';
	@override String get hashVerify => '確認檔案的完整性';
}

// Path: misskey.externalResourceInstaller_.errors_
class _TranslationsMisskeyExternalResourceInstallerErrorsZhTw extends TranslationsMisskeyExternalResourceInstallerErrorsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsZhTw invalidParams_ = _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsZhTw._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedZhTw resourceTypeNotSupported_ = _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedZhTw._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchZhTw failedToFetch_ = _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchZhTw._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedZhTw hashUnmatched_ = _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedZhTw._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedZhTw pluginParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedZhTw._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedZhTw pluginInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedZhTw._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedZhTw themeParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedZhTw._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedZhTw themeInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedZhTw._(_root);
}

// Path: misskey.dataSaver_.media_
class _TranslationsMisskeyDataSaverMediaZhTw extends TranslationsMisskeyDataSaverMediaEnUs {
	_TranslationsMisskeyDataSaverMediaZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '載入媒體檔案';
	@override String get description => '防止自動載入圖片和影片。點擊隱藏的圖片/影片即可載入。';
}

// Path: misskey.dataSaver_.avatar_
class _TranslationsMisskeyDataSaverAvatarZhTw extends TranslationsMisskeyDataSaverAvatarEnUs {
	_TranslationsMisskeyDataSaverAvatarZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '大頭貼';
	@override String get description => '停止顯示大頭貼的動畫。由於動畫圖片的檔案大小可能比普通圖片大，這可以進一步減少資料流量。';
}

// Path: misskey.dataSaver_.urlPreviewThumbnail_
class _TranslationsMisskeyDataSaverUrlPreviewThumbnailZhTw extends TranslationsMisskeyDataSaverUrlPreviewThumbnailEnUs {
	_TranslationsMisskeyDataSaverUrlPreviewThumbnailZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '不顯示網址預覽縮圖';
	@override String get description => '將不再自動載入網址預覽縮圖。';
}

// Path: misskey.dataSaver_.disableUrlPreview_
class _TranslationsMisskeyDataSaverDisableUrlPreviewZhTw extends TranslationsMisskeyDataSaverDisableUrlPreviewEnUs {
	_TranslationsMisskeyDataSaverDisableUrlPreviewZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '停用網址預覽';
	@override String get description => '停用網址預覽功能。與單獨使用縮圖不同，這樣可以減少載入連結資訊本身。';
}

// Path: misskey.dataSaver_.code_
class _TranslationsMisskeyDataSaverCodeZhTw extends TranslationsMisskeyDataSaverCodeEnUs {
	_TranslationsMisskeyDataSaverCodeZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '程式碼突出顯示';
	@override String get description => '如果使用了程式碼突顯語法（如 MFM），則在點擊之前不會被載入。由於需要為對應的程式語言下載突顯定義檔案，因此關閉自動載入有助於減少資料流量。';
}

// Path: misskey.gridComponent_.error_
class _TranslationsMisskeyGridComponentErrorZhTw extends TranslationsMisskeyGridComponentErrorEnUs {
	_TranslationsMisskeyGridComponentErrorZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get requiredValue => '此值為必填欄位';
	@override String get columnTypeNotSupport => '正規表達式驗證僅支援 type:text 的欄位。';
	@override String patternNotMatch({required Object pattern}) => '此值不符合 ${pattern} 中的樣式。';
	@override String get notUnique => '此值必須是唯一的';
}

// Path: misskey.customEmojisManager_.gridCommon_
class _TranslationsMisskeyCustomEmojisManagerGridCommonZhTw extends TranslationsMisskeyCustomEmojisManagerGridCommonEnUs {
	_TranslationsMisskeyCustomEmojisManagerGridCommonZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get copySelectionRows => '複製選取的行';
	@override String get copySelectionRanges => '複製選取的範圍';
	@override String get deleteSelectionRows => '刪除所選的行';
	@override String get deleteSelectionRanges => '刪除選取範圍的行';
	@override String get searchSettings => '搜尋設定';
	@override String get searchSettingCaption => '詳細設定搜尋條件。';
	@override String get searchLimit => '顯示的數量';
	@override String get sortOrder => '排序';
	@override String get registrationLogs => '登錄日誌';
	@override String get registrationLogsCaption => '會顯示更新或刪除表情符號時的日誌。進行更新或刪除操作，或切換頁面、重新載入後，日誌將會消失。';
	@override String get alertEmojisRegisterFailedDescription => '更新或刪除表情符號失敗。詳情請查看登錄日誌。';
}

// Path: misskey.customEmojisManager_.logs_
class _TranslationsMisskeyCustomEmojisManagerLogsZhTw extends TranslationsMisskeyCustomEmojisManagerLogsEnUs {
	_TranslationsMisskeyCustomEmojisManagerLogsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get showSuccessLogSwitch => '顯示成功日誌';
	@override String get failureLogNothing => '沒有失敗的日誌。';
	@override String get logNothing => '沒有日誌。';
}

// Path: misskey.customEmojisManager_.remote_
class _TranslationsMisskeyCustomEmojisManagerRemoteZhTw extends TranslationsMisskeyCustomEmojisManagerRemoteEnUs {
	_TranslationsMisskeyCustomEmojisManagerRemoteZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get selectionRowDetail => '選取行的詳細資訊';
	@override String get importSelectionRows => '匯入選取的行';
	@override String get importSelectionRangesRows => '匯入選取範圍的行';
	@override String get importEmojisButton => '匯入勾選的表情符號';
	@override String get confirmImportEmojisTitle => '匯入表情符號';
	@override String confirmImportEmojisDescription({required Object count}) => '將從遠端接收的${count}個表情符號進行匯入。請務必注意表情符號的授權。是否執行此操作？';
}

// Path: misskey.customEmojisManager_.local_
class _TranslationsMisskeyCustomEmojisManagerLocalZhTw extends TranslationsMisskeyCustomEmojisManagerLocalEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get tabTitleList => '已登錄的表情符號列表';
	@override String get tabTitleRegister => '登錄表情符號';
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalListZhTw list_ = _TranslationsMisskeyCustomEmojisManagerLocalListZhTw._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalRegisterZhTw register_ = _TranslationsMisskeyCustomEmojisManagerLocalRegisterZhTw._(_root);
}

// Path: misskey.remoteLookupErrors_.federationNotAllowed_
class _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedZhTw extends TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '無法與這個伺服器通訊';
	@override String get description => '與此伺服器的通訊可能被停用、或封鎖了該伺服器，或被該伺服器封鎖。\n請聯繫您的伺服器管理員。';
}

// Path: misskey.remoteLookupErrors_.uriInvalid_
class _TranslationsMisskeyRemoteLookupErrorsUriInvalidZhTw extends TranslationsMisskeyRemoteLookupErrorsUriInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsUriInvalidZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'URI 不正確';
	@override String get description => '輸入的 URI 有問題。請檢查是否輸入了 URI 中不能使用的字元。';
}

// Path: misskey.remoteLookupErrors_.requestFailed_
class _TranslationsMisskeyRemoteLookupErrorsRequestFailedZhTw extends TranslationsMisskeyRemoteLookupErrorsRequestFailedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsRequestFailedZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '請求失敗';
	@override String get description => '與此伺服器的通訊失敗。可能是對方伺服器斷線。 此外，請檢查是否輸入了不正確或不存在的 URI。';
}

// Path: misskey.remoteLookupErrors_.responseInvalid_
class _TranslationsMisskeyRemoteLookupErrorsResponseInvalidZhTw extends TranslationsMisskeyRemoteLookupErrorsResponseInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsResponseInvalidZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '回應不正確';
	@override String get description => '雖然能夠與這個伺服器通訊，但是取得的資料不正確。';
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectZhTw extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '查無項目';
	@override String get description => '無法找到所要求的資源，請再次檢查 URI。';
}

// Path: misskey.captcha_.error_
class _TranslationsMisskeyCaptchaErrorZhTw extends TranslationsMisskeyCaptchaErrorEnUs {
	_TranslationsMisskeyCaptchaErrorZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCaptchaErrorRequestFailedZhTw requestFailed_ = _TranslationsMisskeyCaptchaErrorRequestFailedZhTw._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorVerificationFailedZhTw verificationFailed_ = _TranslationsMisskeyCaptchaErrorVerificationFailedZhTw._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorUnknownZhTw unknown_ = _TranslationsMisskeyCaptchaErrorUnknownZhTw._(_root);
}

// Path: misskey.serverSetupWizard_.use_
class _TranslationsMisskeyServerSetupWizardUseZhTw extends TranslationsMisskeyServerSetupWizardUseEnUs {
	_TranslationsMisskeyServerSetupWizardUseZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get single => '單人伺服器';
	@override String get single_description => '作為自己專用的伺服器，單獨使用。\n';
	@override String get single_youCanCreateMultipleAccounts => '即使作為單人伺服器運行，根據需要也可以創建多個帳戶。\n';
	@override String get group => '群組伺服器\n';
	@override String get group_description => '邀請可信賴的其他使用者，共同使用伺服器。\n';
	@override String get open => '開放式伺服器';
	@override String get open_description => '運營時接納不特定多數的使用者。';
}

// Path: misskey.serverSetupWizard_.scale_
class _TranslationsMisskeyServerSetupWizardScaleZhTw extends TranslationsMisskeyServerSetupWizardScaleEnUs {
	_TranslationsMisskeyServerSetupWizardScaleZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get small => '100人以下（小規模）\n';
	@override String get medium => '100人以上1000人以下（中規模）\n';
	@override String get large => '1000人以上（大規模）\n';
}

// Path: misskey.serverSetupWizard_.donationRequest_
class _TranslationsMisskeyServerSetupWizardDonationRequestZhTw extends TranslationsMisskeyServerSetupWizardDonationRequestEnUs {
	_TranslationsMisskeyServerSetupWizardDonationRequestZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Misskey 是由志願者開發的免費軟體。';
	@override String get text2 => '為了能夠繼續開發，若您願意的話，請考慮進行捐款。\n';
	@override String get text3 => '也有提供支援者專屬的特典！\n';
}

// Path: misskey.imageEffector_.fxs_
class _TranslationsMisskeyImageEffectorFxsZhTw extends TranslationsMisskeyImageEffectorFxsEnUs {
	_TranslationsMisskeyImageEffectorFxsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get chromaticAberration => '色差';
	@override String get glitch => '異常雜訊效果';
	@override String get mirror => '鏡像';
	@override String get invert => '反轉色彩';
	@override String get grayscale => '黑白';
	@override String get colorAdjust => '色彩校正';
	@override String get colorClamp => '壓縮色彩';
	@override String get colorClampAdvanced => '壓縮色彩（進階）';
	@override String get distort => '變形';
	@override String get threshold => '閾值';
	@override String get zoomLines => '速度線';
	@override String get stripe => '條紋';
	@override String get polkadot => '波卡圓點';
	@override String get checker => '棋盤格';
	@override String get blockNoise => '阻擋雜訊';
	@override String get tearing => '撕裂';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _TranslationsMisskeyInitialTutorialPostNoteVisibilityZhTw extends TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteVisibilityZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get description => '可以限制誰可以看到您的貼文。';
	@override String get public => '所有人都可以看見。';
	@override String get home => '僅在首頁時間軸上發布。其他使用者只在下列情況可看見該貼文：追隨者、觀看使用者的個人資料頁面，以及貼文被轉發時。';
	@override String get followers => '僅追隨者可見。只有發文者本人可轉發，未追隨發文者的使用者無法看見。';
	@override String get direct => '僅指定的使用者可見，對方也會收到通知。可代替直接訊息使用。';
	@override String get doNotSendConfidencialOnDirect1 => '發送機密訊息時請務必注意。';
	@override String get doNotSendConfidencialOnDirect2 => '目標伺服器的管理員可以看到發布的內容，因此如果您向不受信任的伺服器上的使用者發送直接訊息，必須小心處理機密訊息。';
	@override String get localOnly => '不將貼文發布到聯邦上的其他伺服器。不論上述發布範圍，使用此設定後，其他伺服器上的使用者將無法直接查看此貼文。';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _TranslationsMisskeyInitialTutorialPostNoteCwZhTw extends TranslationsMisskeyInitialTutorialPostNoteCwEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '隱藏內容（CW）';
	@override String get description => '將顯示「註釋」中寫入的內容而不是本文。按一下「顯示內容」以顯示本文。';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteZhTw exampleNote_ = _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteZhTw._(_root);
	@override String get useCases => '伺服器的服務條款可能會規範特定的貼文需要使用隱藏內容，除此之外也會用在隱藏劇情洩漏與敏感內容的貼文。';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteZhTw extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get note => '打開納豆的包裝失敗了…';
}

// Path: misskey.achievements_.types_.notes1_
class _TranslationsMisskeyAchievementsTypesNotes1ZhTw extends TranslationsMisskeyAchievementsTypesNotes1EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '歡迎！';
	@override String get description => '發出了第一則貼文';
	@override String get flavor => '祝您的 Misskey 生活愉快！';
}

// Path: misskey.achievements_.types_.notes10_
class _TranslationsMisskeyAchievementsTypesNotes10ZhTw extends TranslationsMisskeyAchievementsTypesNotes10EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '若干貼文';
	@override String get description => '發佈了十篇貼文';
}

// Path: misskey.achievements_.types_.notes100_
class _TranslationsMisskeyAchievementsTypesNotes100ZhTw extends TranslationsMisskeyAchievementsTypesNotes100EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '許多貼文';
	@override String get description => '發佈了一百篇貼文';
}

// Path: misskey.achievements_.types_.notes500_
class _TranslationsMisskeyAchievementsTypesNotes500ZhTw extends TranslationsMisskeyAchievementsTypesNotes500EnUs {
	_TranslationsMisskeyAchievementsTypesNotes500ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '滿滿的貼文';
	@override String get description => '發佈了五百篇貼文';
}

// Path: misskey.achievements_.types_.notes1000_
class _TranslationsMisskeyAchievementsTypesNotes1000ZhTw extends TranslationsMisskeyAchievementsTypesNotes1000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1000ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '堆積如山的貼文';
	@override String get description => '發佈了一千篇貼文';
}

// Path: misskey.achievements_.types_.notes5000_
class _TranslationsMisskeyAchievementsTypesNotes5000ZhTw extends TranslationsMisskeyAchievementsTypesNotes5000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes5000ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '滔滔不絕的貼文';
	@override String get description => '發佈了五千篇貼文';
}

// Path: misskey.achievements_.types_.notes10000_
class _TranslationsMisskeyAchievementsTypesNotes10000ZhTw extends TranslationsMisskeyAchievementsTypesNotes10000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10000ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '超級貼文';
	@override String get description => '發佈了一萬篇貼文';
}

// Path: misskey.achievements_.types_.notes20000_
class _TranslationsMisskeyAchievementsTypesNotes20000ZhTw extends TranslationsMisskeyAchievementsTypesNotes20000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes20000ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '需要更多貼文';
	@override String get description => '發佈了兩萬篇貼文';
}

// Path: misskey.achievements_.types_.notes30000_
class _TranslationsMisskeyAchievementsTypesNotes30000ZhTw extends TranslationsMisskeyAchievementsTypesNotes30000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes30000ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '貼文貼文貼文';
	@override String get description => '發佈了三萬篇貼文';
}

// Path: misskey.achievements_.types_.notes40000_
class _TranslationsMisskeyAchievementsTypesNotes40000ZhTw extends TranslationsMisskeyAchievementsTypesNotes40000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes40000ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '貼文工廠';
	@override String get description => '發佈了四萬篇貼文';
}

// Path: misskey.achievements_.types_.notes50000_
class _TranslationsMisskeyAchievementsTypesNotes50000ZhTw extends TranslationsMisskeyAchievementsTypesNotes50000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes50000ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '貼文星球';
	@override String get description => '發佈了五萬篇貼文';
}

// Path: misskey.achievements_.types_.notes60000_
class _TranslationsMisskeyAchievementsTypesNotes60000ZhTw extends TranslationsMisskeyAchievementsTypesNotes60000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes60000ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '貼文類星體';
	@override String get description => '發佈了六萬篇貼文';
}

// Path: misskey.achievements_.types_.notes70000_
class _TranslationsMisskeyAchievementsTypesNotes70000ZhTw extends TranslationsMisskeyAchievementsTypesNotes70000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes70000ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '貼文黑洞';
	@override String get description => '發佈了七萬篇貼文';
}

// Path: misskey.achievements_.types_.notes80000_
class _TranslationsMisskeyAchievementsTypesNotes80000ZhTw extends TranslationsMisskeyAchievementsTypesNotes80000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes80000ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '貼文銀河';
	@override String get description => '發佈了八萬篇貼文';
}

// Path: misskey.achievements_.types_.notes90000_
class _TranslationsMisskeyAchievementsTypesNotes90000ZhTw extends TranslationsMisskeyAchievementsTypesNotes90000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes90000ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '貼文宇宙';
	@override String get description => '發佈了九萬篇貼文';
}

// Path: misskey.achievements_.types_.notes100000_
class _TranslationsMisskeyAchievementsTypesNotes100000ZhTw extends TranslationsMisskeyAchievementsTypesNotes100000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100000ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => '發佈了十萬篇貼文';
	@override String get flavor => '有這麼多東西要寫嗎？';
}

// Path: misskey.achievements_.types_.login3_
class _TranslationsMisskeyAchievementsTypesLogin3ZhTw extends TranslationsMisskeyAchievementsTypesLogin3EnUs {
	_TranslationsMisskeyAchievementsTypesLogin3ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '初學者Ⅰ';
	@override String get description => '總登入天數為三天';
	@override String get flavor => '從今天開始，我就是 Misskist';
}

// Path: misskey.achievements_.types_.login7_
class _TranslationsMisskeyAchievementsTypesLogin7ZhTw extends TranslationsMisskeyAchievementsTypesLogin7EnUs {
	_TranslationsMisskeyAchievementsTypesLogin7ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '初學者ⅠⅠ';
	@override String get description => '總登入天數為七天';
	@override String get flavor => '您開始習慣了嗎？';
}

// Path: misskey.achievements_.types_.login15_
class _TranslationsMisskeyAchievementsTypesLogin15ZhTw extends TranslationsMisskeyAchievementsTypesLogin15EnUs {
	_TranslationsMisskeyAchievementsTypesLogin15ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '初學者ⅠⅠⅠ';
	@override String get description => '總登入天數為十五天';
}

// Path: misskey.achievements_.types_.login30_
class _TranslationsMisskeyAchievementsTypesLogin30ZhTw extends TranslationsMisskeyAchievementsTypesLogin30EnUs {
	_TranslationsMisskeyAchievementsTypesLogin30ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist Ⅰ';
	@override String get description => '總登入天數為三十天';
}

// Path: misskey.achievements_.types_.login60_
class _TranslationsMisskeyAchievementsTypesLogin60ZhTw extends TranslationsMisskeyAchievementsTypesLogin60EnUs {
	_TranslationsMisskeyAchievementsTypesLogin60ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist ⅠⅠ';
	@override String get description => '總登入天數為六十天';
}

// Path: misskey.achievements_.types_.login100_
class _TranslationsMisskeyAchievementsTypesLogin100ZhTw extends TranslationsMisskeyAchievementsTypesLogin100EnUs {
	_TranslationsMisskeyAchievementsTypesLogin100ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist ⅠⅠⅠ';
	@override String get description => '總登入天數為一百天';
	@override String get flavor => '凶暴的 Misskist';
}

// Path: misskey.achievements_.types_.login200_
class _TranslationsMisskeyAchievementsTypesLogin200ZhTw extends TranslationsMisskeyAchievementsTypesLogin200EnUs {
	_TranslationsMisskeyAchievementsTypesLogin200ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '普通Ⅰ';
	@override String get description => '總登入天數為兩百天';
}

// Path: misskey.achievements_.types_.login300_
class _TranslationsMisskeyAchievementsTypesLogin300ZhTw extends TranslationsMisskeyAchievementsTypesLogin300EnUs {
	_TranslationsMisskeyAchievementsTypesLogin300ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '普通ⅠⅠ';
	@override String get description => '總登入天數為三百天';
}

// Path: misskey.achievements_.types_.login400_
class _TranslationsMisskeyAchievementsTypesLogin400ZhTw extends TranslationsMisskeyAchievementsTypesLogin400EnUs {
	_TranslationsMisskeyAchievementsTypesLogin400ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '普通ⅠⅠⅠ';
	@override String get description => '總登入天數為四百天';
}

// Path: misskey.achievements_.types_.login500_
class _TranslationsMisskeyAchievementsTypesLogin500ZhTw extends TranslationsMisskeyAchievementsTypesLogin500EnUs {
	_TranslationsMisskeyAchievementsTypesLogin500ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '老兵Ⅰ';
	@override String get description => '總登入天數為五百天';
	@override String get flavor => '諸君，我喜歡貼文';
}

// Path: misskey.achievements_.types_.login600_
class _TranslationsMisskeyAchievementsTypesLogin600ZhTw extends TranslationsMisskeyAchievementsTypesLogin600EnUs {
	_TranslationsMisskeyAchievementsTypesLogin600ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '老兵ⅠⅠ';
	@override String get description => '總登入天數為六百天';
}

// Path: misskey.achievements_.types_.login700_
class _TranslationsMisskeyAchievementsTypesLogin700ZhTw extends TranslationsMisskeyAchievementsTypesLogin700EnUs {
	_TranslationsMisskeyAchievementsTypesLogin700ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '老兵ⅠⅠⅠ';
	@override String get description => '總登入天數為七百天';
}

// Path: misskey.achievements_.types_.login800_
class _TranslationsMisskeyAchievementsTypesLogin800ZhTw extends TranslationsMisskeyAchievementsTypesLogin800EnUs {
	_TranslationsMisskeyAchievementsTypesLogin800ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '貼文大師Ⅰ';
	@override String get description => '總登入天數為八百天';
}

// Path: misskey.achievements_.types_.login900_
class _TranslationsMisskeyAchievementsTypesLogin900ZhTw extends TranslationsMisskeyAchievementsTypesLogin900EnUs {
	_TranslationsMisskeyAchievementsTypesLogin900ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '貼文大師ⅠⅠ';
	@override String get description => '總登入天數為九百天';
}

// Path: misskey.achievements_.types_.login1000_
class _TranslationsMisskeyAchievementsTypesLogin1000ZhTw extends TranslationsMisskeyAchievementsTypesLogin1000EnUs {
	_TranslationsMisskeyAchievementsTypesLogin1000ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '貼文大師ⅠⅠⅠ';
	@override String get description => '總登入天數為一千天';
	@override String get flavor => '感謝您使用 Misskey！';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _TranslationsMisskeyAchievementsTypesNoteClipped1ZhTw extends TranslationsMisskeyAchievementsTypesNoteClipped1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteClipped1ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '忍不住要收進摘錄裡';
	@override String get description => '第一次將貼文收進摘錄';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _TranslationsMisskeyAchievementsTypesNoteFavorited1ZhTw extends TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteFavorited1ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '觀星者';
	@override String get description => '第一次將貼文收藏至我的最愛';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _TranslationsMisskeyAchievementsTypesMyNoteFavorited1ZhTw extends TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesMyNoteFavorited1ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '想要星星';
	@override String get description => '自己的貼文被他人收藏至「我的最愛」了';
}

// Path: misskey.achievements_.types_.profileFilled_
class _TranslationsMisskeyAchievementsTypesProfileFilledZhTw extends TranslationsMisskeyAchievementsTypesProfileFilledEnUs {
	_TranslationsMisskeyAchievementsTypesProfileFilledZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '有備而來';
	@override String get description => '設定了個人檔案';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _TranslationsMisskeyAchievementsTypesMarkedAsCatZhTw extends TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_TranslationsMisskeyAchievementsTypesMarkedAsCatZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '我是貓';
	@override String get description => '已將帳戶設定為貓';
	@override String get flavor => '沒有名字。';
}

// Path: misskey.achievements_.types_.following1_
class _TranslationsMisskeyAchievementsTypesFollowing1ZhTw extends TranslationsMisskeyAchievementsTypesFollowing1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing1ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '首次追隨';
	@override String get description => '首次追隨了';
}

// Path: misskey.achievements_.types_.following10_
class _TranslationsMisskeyAchievementsTypesFollowing10ZhTw extends TranslationsMisskeyAchievementsTypesFollowing10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing10ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '跟著跟著';
	@override String get description => '追隨超過10人了';
}

// Path: misskey.achievements_.types_.following50_
class _TranslationsMisskeyAchievementsTypesFollowing50ZhTw extends TranslationsMisskeyAchievementsTypesFollowing50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing50ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '朋友很多';
	@override String get description => '追隨超過50人了';
}

// Path: misskey.achievements_.types_.following100_
class _TranslationsMisskeyAchievementsTypesFollowing100ZhTw extends TranslationsMisskeyAchievementsTypesFollowing100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing100ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '一百位朋友';
	@override String get description => '追隨超過100人了';
}

// Path: misskey.achievements_.types_.following300_
class _TranslationsMisskeyAchievementsTypesFollowing300ZhTw extends TranslationsMisskeyAchievementsTypesFollowing300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing300ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '朋友太多';
	@override String get description => '追隨超過300人了';
}

// Path: misskey.achievements_.types_.followers1_
class _TranslationsMisskeyAchievementsTypesFollowers1ZhTw extends TranslationsMisskeyAchievementsTypesFollowers1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '第一個追隨者';
	@override String get description => '第一次被追隨';
}

// Path: misskey.achievements_.types_.followers10_
class _TranslationsMisskeyAchievementsTypesFollowers10ZhTw extends TranslationsMisskeyAchievementsTypesFollowers10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers10ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '追隨我吧！';
	@override String get description => '追隨者超過10人了';
}

// Path: misskey.achievements_.types_.followers50_
class _TranslationsMisskeyAchievementsTypesFollowers50ZhTw extends TranslationsMisskeyAchievementsTypesFollowers50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers50ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '成群結隊';
	@override String get description => '追隨者超過50人了';
}

// Path: misskey.achievements_.types_.followers100_
class _TranslationsMisskeyAchievementsTypesFollowers100ZhTw extends TranslationsMisskeyAchievementsTypesFollowers100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers100ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '熱門人物';
	@override String get description => '追隨者超過100人了';
}

// Path: misskey.achievements_.types_.followers300_
class _TranslationsMisskeyAchievementsTypesFollowers300ZhTw extends TranslationsMisskeyAchievementsTypesFollowers300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers300ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '請排隊';
	@override String get description => '追隨者超過300人了';
}

// Path: misskey.achievements_.types_.followers500_
class _TranslationsMisskeyAchievementsTypesFollowers500ZhTw extends TranslationsMisskeyAchievementsTypesFollowers500EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers500ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '基地臺';
	@override String get description => '超過五百名追隨者了';
}

// Path: misskey.achievements_.types_.followers1000_
class _TranslationsMisskeyAchievementsTypesFollowers1000ZhTw extends TranslationsMisskeyAchievementsTypesFollowers1000EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1000ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '星光熠熠';
	@override String get description => '超過一千名追隨者了';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _TranslationsMisskeyAchievementsTypesCollectAchievements30ZhTw extends TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_TranslationsMisskeyAchievementsTypesCollectAchievements30ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '成就收藏家';
	@override String get description => '獲得三十個以上的成就';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _TranslationsMisskeyAchievementsTypesViewAchievements3minZhTw extends TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_TranslationsMisskeyAchievementsTypesViewAchievements3minZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '成就發燒友';
	@override String get description => '看著成就列表超過三分鐘';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _TranslationsMisskeyAchievementsTypesILoveMisskeyZhTw extends TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_TranslationsMisskeyAchievementsTypesILoveMisskeyZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'I Love Misskey';
	@override String get description => '發佈「I ❤ #Misskey」';
	@override String get flavor => '感謝您使用 Misskey！by 開發團隊';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _TranslationsMisskeyAchievementsTypesFoundTreasureZhTw extends TranslationsMisskeyAchievementsTypesFoundTreasureEnUs {
	_TranslationsMisskeyAchievementsTypesFoundTreasureZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '尋寶';
	@override String get description => '發現了隱藏的寶藏';
}

// Path: misskey.achievements_.types_.client30min_
class _TranslationsMisskeyAchievementsTypesClient30minZhTw extends TranslationsMisskeyAchievementsTypesClient30minEnUs {
	_TranslationsMisskeyAchievementsTypesClient30minZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '休息一下';
	@override String get description => '客戶端啟動已超過30分鐘';
}

// Path: misskey.achievements_.types_.client60min_
class _TranslationsMisskeyAchievementsTypesClient60minZhTw extends TranslationsMisskeyAchievementsTypesClient60minEnUs {
	_TranslationsMisskeyAchievementsTypesClient60minZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskey 看太多';
	@override String get description => '客戶端啟動已超過60分鐘';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minZhTw extends TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '欲言又止';
	@override String get description => '發文後一分鐘內刪文';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _TranslationsMisskeyAchievementsTypesPostedAtLateNightZhTw extends TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAtLateNightZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '夜貓子';
	@override String get description => '在深夜發佈貼文';
	@override String get flavor => '該去睡覺了。';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _TranslationsMisskeyAchievementsTypesPostedAt0min0secZhTw extends TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAt0min0secZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '報時';
	@override String get description => '在零分零秒發佈貼文';
	@override String get flavor => '啵．啵．啵．嗶ー';
}

// Path: misskey.achievements_.types_.selfQuote_
class _TranslationsMisskeyAchievementsTypesSelfQuoteZhTw extends TranslationsMisskeyAchievementsTypesSelfQuoteEnUs {
	_TranslationsMisskeyAchievementsTypesSelfQuoteZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '自我引用';
	@override String get description => '引用了自己的貼文';
}

// Path: misskey.achievements_.types_.htl20npm_
class _TranslationsMisskeyAchievementsTypesHtl20npmZhTw extends TranslationsMisskeyAchievementsTypesHtl20npmEnUs {
	_TranslationsMisskeyAchievementsTypesHtl20npmZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '源源不絕';
	@override String get description => '首頁時間軸在一分鐘內出現超過二十篇貼文';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _TranslationsMisskeyAchievementsTypesViewInstanceChartZhTw extends TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_TranslationsMisskeyAchievementsTypesViewInstanceChartZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '分析師';
	@override String get description => '顯示了伺服器的圖表';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadZhTw extends TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hello, world!';
	@override String get description => '在 AiScript 控制臺輸出了「hello world」';
}

// Path: misskey.achievements_.types_.open3windows_
class _TranslationsMisskeyAchievementsTypesOpen3windowsZhTw extends TranslationsMisskeyAchievementsTypesOpen3windowsEnUs {
	_TranslationsMisskeyAchievementsTypesOpen3windowsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '多重視窗';
	@override String get description => '開啟過三個以上的視窗';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceZhTw extends TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '循環引用';
	@override String get description => '試圖遞迴套入雲端硬碟資料夾';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _TranslationsMisskeyAchievementsTypesReactWithoutReadZhTw extends TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_TranslationsMisskeyAchievementsTypesReactWithoutReadZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '有好好讀過嗎？';
	@override String get description => '對包含100字以上內容的貼文在3秒以內做出反應';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _TranslationsMisskeyAchievementsTypesClickedClickHereZhTw extends TranslationsMisskeyAchievementsTypesClickedClickHereEnUs {
	_TranslationsMisskeyAchievementsTypesClickedClickHereZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '點擊這裡';
	@override String get description => '已點擊這裡了';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _TranslationsMisskeyAchievementsTypesJustPlainLuckyZhTw extends TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_TranslationsMisskeyAchievementsTypesJustPlainLuckyZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '只是運氣好';
	@override String get description => '每十秒有二萬分之一（0.005%）的機率獲得';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _TranslationsMisskeyAchievementsTypesSetNameToSyuiloZhTw extends TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_TranslationsMisskeyAchievementsTypesSetNameToSyuiloZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '神與您同在';
	@override String get description => '將名稱設定為 syuilo';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1ZhTw extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '一週年';
	@override String get description => '帳戶加入時間已超過一年';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2ZhTw extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '二週年';
	@override String get description => '帳戶加入時間已超過兩年';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3ZhTw extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3ZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '三週年';
	@override String get description => '帳戶加入時間已超過三年';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayZhTw extends TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '生日快樂';
	@override String get description => '在生日當天登入了';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayZhTw extends TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '新年快樂';
	@override String get description => '在元旦當天登入了';
	@override String get flavor => '今年也請您多多指教！';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _TranslationsMisskeyAchievementsTypesCookieClickedZhTw extends TranslationsMisskeyAchievementsTypesCookieClickedEnUs {
	_TranslationsMisskeyAchievementsTypesCookieClickedZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '點擊餅乾的遊戲';
	@override String get description => '點擊了餅乾';
	@override String get flavor => '是不是軟體有問題？';
}

// Path: misskey.achievements_.types_.brainDiver_
class _TranslationsMisskeyAchievementsTypesBrainDiverZhTw extends TranslationsMisskeyAchievementsTypesBrainDiverEnUs {
	_TranslationsMisskeyAchievementsTypesBrainDiverZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Driver';
	@override String get description => '發佈一篇含歌曲《Brain Driver》連結的貼文';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonZhTw extends TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '過度測試';
	@override String get description => '極短時間內連續測試通知';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _TranslationsMisskeyAchievementsTypesTutorialCompletedZhTw extends TranslationsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_TranslationsMisskeyAchievementsTypesTutorialCompletedZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskey新手講座 結業證書';
	@override String get description => '已完成教學課程';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadZhTw extends TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => '氣泡遊戲中最大的物體出現了';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadZhTw extends TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '雙重🤯';
	@override String get description => '氣泡遊戲中最大的物體同時出現了兩個';
	@override String get flavor => '這樣大小的便當盒，用　🤯　🤯　稍微裝滿一些吧';
}

// Path: misskey.pages_.blocks.note_
class _TranslationsMisskeyPagesBlocksNoteZhTw extends TranslationsMisskeyPagesBlocksNoteEnUs {
	_TranslationsMisskeyPagesBlocksNoteZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get id => '貼文ID';
	@override String get idDescription => '您也可以貼上貼文 URL 來進行設定。 ';
	@override String get detailed => '顯示詳細內容';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeZhTw extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get mail => '電子郵件';
	@override String get webhook => 'Webhook';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsZhTw captions_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsZhTw._(_root);
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsZhTw extends TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '缺少參數';
	@override String get description => '缺少從外部網站取得資料的必要資訊。請檢查 URL 是否正確。';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedZhTw extends TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '不支援此外部資源。';
	@override String get description => '不支援從此外部網站取得的資源類型。請聯絡網站管理員。';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchZhTw extends TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '無法取得資料';
	@override String get fetchErrorDescription => '與外部站點的通訊失敗。如果重試後問題仍然存在，請聯絡網站管理員。';
	@override String get parseErrorDescription => '無法讀取從外部站點取得的資料。請聯絡網站管理員。';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedZhTw extends TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '無法取得正確資料';
	@override String get description => '所提供資料的完整性驗證失敗。出於安全原因，安裝無法繼續。請聯絡網站管理員。';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedZhTw extends TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'AiScript 錯誤';
	@override String get description => '已取得資料但解析 AiScript 時發生錯誤，導致無法載入。請聯絡外掛作者。請檢查 Javascript 控制台以取得錯誤詳細資訊。';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedZhTw extends TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '外掛安裝失敗';
	@override String get description => '安裝外掛時出現問題。請再試一次。可參閱 Javascript 控制台以取得錯誤詳細資訊。';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedZhTw extends TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '佈景主題解析錯誤';
	@override String get description => '已取得資料但解析佈景主題時發生錯誤，導致無法載入。請聯絡佈景主題的作者。請檢查 Javascript 控制台以取得錯誤詳細資訊。';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedZhTw extends TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '無法安裝佈景主題';
	@override String get description => '安裝佈景主題時出現問題。請再試一次。請參閱 Javascript 控制台以取得錯誤詳細資訊。';
}

// Path: misskey.customEmojisManager_.local_.list_
class _TranslationsMisskeyCustomEmojisManagerLocalListZhTw extends TranslationsMisskeyCustomEmojisManagerLocalListEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalListZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get emojisNothing => '沒有登錄的表情符號。';
	@override String get markAsDeleteTargetRows => '將選取的行設為刪除對象';
	@override String get markAsDeleteTargetRanges => '將選取範圍的行設為刪除對象\n';
	@override String get alertUpdateEmojisNothingDescription => '沒有選取需要變更的表情符號。';
	@override String get alertDeleteEmojisNothingDescription => '沒有選取需要刪除的表情符號。';
	@override String get confirmMovePage => '要移動到其他頁面嗎？';
	@override String get confirmChangeView => '要更改顯示方式嗎？';
	@override String confirmUpdateEmojisDescription({required Object count}) => '將更新${count}個表情符號。是否執行此操作？';
	@override String confirmDeleteEmojisDescription({required Object count}) => '將刪除勾選的${count}個表情符號。是否執行此操作？';
	@override String get confirmResetDescription => '目前所做的所有變更都會重設。';
	@override String get confirmMovePageDesciption => '此頁面的表情符號已被更改。  \n若未儲存就直接離開此頁面，則在此頁面進行的所有更改將會被捨棄。';
	@override String get dialogSelectRoleTitle => '根據表情符號設定的角色進行搜尋';
}

// Path: misskey.customEmojisManager_.local_.register_
class _TranslationsMisskeyCustomEmojisManagerLocalRegisterZhTw extends TranslationsMisskeyCustomEmojisManagerLocalRegisterEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalRegisterZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get uploadSettingTitle => '上傳設定';
	@override String get uploadSettingDescription => '您可以在此畫面設定表情符號上傳時的操作。';
	@override String get directoryToCategoryLabel => '在「類別」欄位中輸入目錄名稱';
	@override String get directoryToCategoryCaption => '拖放目錄時，請在「類別」欄位中輸入目錄名稱。';
	@override String confirmRegisterEmojisDescription({required Object count}) => '將列表中顯示的表情符號登錄為新的自定表情符號。是否確定？（為避免過高負荷，每次操作最多可登錄${count}個表情符號）';
	@override String get confirmClearEmojisDescription => '放棄編輯內容並清除列表中顯示的表情符號。是否確定？';
	@override String confirmUploadEmojisDescription({required Object count}) => '將拖放的${count}個檔案上傳到雲端硬碟。是否執行此操作？';
}

// Path: misskey.captcha_.error_.requestFailed_
class _TranslationsMisskeyCaptchaErrorRequestFailedZhTw extends TranslationsMisskeyCaptchaErrorRequestFailedEnUs {
	_TranslationsMisskeyCaptchaErrorRequestFailedZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'CAPTCHA 請求失敗';
	@override String get text => '請過一段時間後再執行，或再次檢查設定。';
}

// Path: misskey.captcha_.error_.verificationFailed_
class _TranslationsMisskeyCaptchaErrorVerificationFailedZhTw extends TranslationsMisskeyCaptchaErrorVerificationFailedEnUs {
	_TranslationsMisskeyCaptchaErrorVerificationFailedZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'CAPTCHA 驗證失敗';
	@override String get text => '請再次檢查設定是否正確。';
}

// Path: misskey.captcha_.error_.unknown_
class _TranslationsMisskeyCaptchaErrorUnknownZhTw extends TranslationsMisskeyCaptchaErrorUnknownEnUs {
	_TranslationsMisskeyCaptchaErrorUnknownZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'CAPTCHA 錯誤';
	@override String get text => '發生了意外的錯誤。';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteZhTw extends TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get cw => '注意消夜文';
	@override String get note => '我吃了一個巧克力甜甜圈🍩😋';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_.captions_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsZhTw extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get mail => '寄送到擁有監察員權限的使用者電子郵件地址（僅在收到檢舉時）';
	@override String get webhook => '向指定的 SystemWebhook 發送通知（在收到檢舉和解決檢舉時發送）';
}
