///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint

part of 'strings.g.dart';

// Path: <root>
class _StringsZhCn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsZhCn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.zhCn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-CN>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsZhCn _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAriaZhCn aria = _StringsAriaZhCn._(_root);
	@override late final _StringsMisskeyZhCn misskey = _StringsMisskeyZhCn._(_root);
}

// Path: aria
class _StringsAriaZhCn extends _StringsAriaEnUs {
	_StringsAriaZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: '你确定要关注 '),
		name,
		const TextSpan(text: ' 吗？'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria 已经被志愿者们翻译成了各种语言。如果你也有兴趣，可以通过 '),
		link,
		const TextSpan(text: ' 帮助翻译。'),
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' 人在线'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: ' 转发了'),
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: '要取消对 '),
		name,
		const TextSpan(text: ' 的关注吗？'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: '含 '),
		name,
		const TextSpan(text: ' 敏感文件的帖子'),
	]);
	@override TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: '含 '),
		name,
		const TextSpan(text: ' 敏感文件的帖子'),
	]);
}

// Path: misskey
class _StringsMisskeyZhCn extends _StringsMisskeyEnUs {
	_StringsMisskeyZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get lang__ => '中文(简体)';
	@override String get headlineMisskey => '通过帖子连接在一起的网络';
	@override String get introMisskey => '欢迎！Misskey是一个开源的、去中心化的“微博客”服务。\n通过编写「帖文」来和大家分享你的以及你周围的事情吧！📡\n通过「回应」功能，可以让你快速地对大家的帖文表达反馈👍\n来探索新的世界吧！🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} 是开源平台 <b>Misskey</b> 的服务器之一。';
	@override String monthAndDay({required Object month, required Object day}) => '${month}月 ${day}日';
	@override String get search => '搜索';
	@override String get notifications => '通知';
	@override String get username => '用户名';
	@override String get password => '密码';
	@override String get forgotPassword => '忘记密码';
	@override String get fetchingAsApObject => '在联邦宇宙查询中...';
	@override String get ok => 'OK';
	@override String get gotIt => '好';
	@override String get cancel => '取消';
	@override String get noThankYou => '不用，谢谢';
	@override String get enterUsername => '输入用户名';
	@override String renotedBy({required Object user}) => '${user} 转发了';
	@override String get noNotes => '没有帖文';
	@override String get noNotifications => '无通知';
	@override String get instance => '服务器';
	@override String get settings => '设置';
	@override String get notificationSettings => '通知设置';
	@override String get basicSettings => '基本设置';
	@override String get otherSettings => '其他设置';
	@override String get openInWindow => '在新窗口中打开';
	@override String get profile => '个人资料';
	@override String get timeline => '时间线';
	@override String get noAccountDescription => '此用户尚无自我介绍';
	@override String get login => '登录';
	@override String get loggingIn => '正在登录...';
	@override String get logout => '登出';
	@override String get signup => '新用户注册';
	@override String get uploading => '正在上传';
	@override String get save => '保存';
	@override String get users => '用户';
	@override String get addUser => '添加用户';
	@override String get favorite => '收藏';
	@override String get favorites => '收藏';
	@override String get unfavorite => '取消收藏';
	@override String get favorited => '已加入收藏夹。';
	@override String get alreadyFavorited => '收藏夹中已存在。';
	@override String get cantFavorite => '无法添加到收藏夹。';
	@override String get pin => '置顶';
	@override String get unpin => '取消置顶';
	@override String get copyContent => '复制内容';
	@override String get copyLink => '复制链接';
	@override String get copyLinkRenote => '复制转帖链接';
	@override String get delete => '删除';
	@override String get deleteAndEdit => '删除并编辑';
	@override String get deleteAndEditConfirm => '要删除此帖并再次编辑吗？对此帖的所有回应、转发和回复也将被删除。';
	@override String get addToList => '添加至列表';
	@override String get addToAntenna => '添加到天线';
	@override String get sendMessage => '发送';
	@override String get copyRSS => '复制RSS';
	@override String get copyUsername => '复制用户名';
	@override String get copyUserId => '复制用户 ID';
	@override String get copyNoteId => '复制帖子 ID';
	@override String get copyFileId => '复制文件ID';
	@override String get copyFolderId => '复制文件夹ID';
	@override String get copyProfileUrl => '复制配置文件URL';
	@override String get searchUser => '搜索用户';
	@override String get reply => '回复';
	@override String get loadMore => '查看更多';
	@override String get showMore => '查看更多';
	@override String get showLess => '关闭';
	@override String get youGotNewFollower => '你有新的关注者';
	@override String get receiveFollowRequest => '您收到了关注请求';
	@override String get followRequestAccepted => '您的关注请求被通过了';
	@override String get mention => '提及';
	@override String get mentions => '提到我的';
	@override String get directNotes => '私信';
	@override String get importAndExport => '导入和导出';
	@override String get import => '导入';
	@override String get export => '导出';
	@override String get files => '文件';
	@override String get download => '下载';
	@override String driveFileDeleteConfirm({required Object name}) => '要删除「${name}」文件吗？附加此文件的帖子也会被删除。';
	@override String unfollowConfirm({required Object name}) => '要取消对 ${name} 的关注吗？';
	@override String get exportRequested => '导出请求已提交，这可能需要花一些时间，导出的文件将保存到网盘中。';
	@override String get importRequested => '导入请求已提交，这可能需要花一点时间。';
	@override String get lists => '列表';
	@override String get noLists => '列表为空';
	@override String get note => '帖子';
	@override String get notes => '帖子';
	@override String get following => '关注中';
	@override String get followers => '关注者';
	@override String get followsYou => '正在关注你';
	@override String get createList => '创建列表';
	@override String get manageLists => '管理列表';
	@override String get error => '错误';
	@override String get somethingHappened => '出现了一些问题！';
	@override String get retry => '重试';
	@override String get pageLoadError => '页面加载失败。';
	@override String get pageLoadErrorDescription => '这通常是由于网络或浏览器缓存的原因。请清除缓存或等待片刻后重试。';
	@override String get serverIsDead => '没有服务器响应。 请稍后再试。';
	@override String get youShouldUpgradeClient => '请重新加载并使用新版本的客户端查看此页面。';
	@override String get enterListName => '输入列表名称';
	@override String get privacy => '隐私';
	@override String get makeFollowManuallyApprove => '关注请求需要批准';
	@override String get defaultNoteVisibility => '默认可见性';
	@override String get follow => '关注';
	@override String get followRequest => '关注申请';
	@override String get followRequests => '关注申请';
	@override String get unfollow => '取消关注';
	@override String get followRequestPending => '关注请求批准中';
	@override String get enterEmoji => '输入表情符号';
	@override String get renote => '转发';
	@override String get unrenote => '取消转发';
	@override String get renoted => '已转发。';
	@override String get cantRenote => '该帖无法转发。';
	@override String get cantReRenote => '转发无法被再次转发。';
	@override String get quote => '引用';
	@override String get inChannelRenote => '在频道内转发';
	@override String get inChannelQuote => '在频道内引用';
	@override String get pinnedNote => '已置顶的帖子';
	@override String get pinned => '置顶';
	@override String get you => '您';
	@override String get clickToShow => '点击以显示';
	@override String get sensitive => '敏感内容';
	@override String get add => '添加';
	@override String get reaction => '回应';
	@override String get reactions => '回应';
	@override String get emojiPicker => '表情符号选择器';
	@override String get pinnedEmojisForReactionSettingDescription => '可以设置发表回应时置顶显示的表情符号';
	@override String get pinnedEmojisSettingDescription => '可以设置输入表情符号时置顶显示的表情符号';
	@override String get emojiPickerDisplay => '选择器显示设置';
	@override String get overwriteFromPinnedEmojisForReaction => '从「置顶（回应）」设置覆盖';
	@override String get overwriteFromPinnedEmojis => '从全局设置覆盖';
	@override String get reactionSettingDescription2 => '拖动重新排序，单击删除，点击 + 添加。';
	@override String get rememberNoteVisibility => '保存上次设置的可见性';
	@override String get attachCancel => '删除附件';
	@override String get deleteFile => '删除文件';
	@override String get markAsSensitive => '标记为敏感内容';
	@override String get unmarkAsSensitive => '取消标记为敏感内容';
	@override String get enterFileName => '输入文件名';
	@override String get mute => '屏蔽';
	@override String get unmute => '解除静音';
	@override String get renoteMute => '屏蔽转帖';
	@override String get renoteUnmute => '解除屏蔽转帖';
	@override String get block => '拉黑';
	@override String get unblock => '取消拉黑';
	@override String get suspend => '冻结';
	@override String get unsuspend => '解除冻结';
	@override String get blockConfirm => '确定要拉黑吗？';
	@override String get unblockConfirm => '确定要解除拉黑吗？';
	@override String get suspendConfirm => '要冻结吗？';
	@override String get unsuspendConfirm => '要解除冻结吗？';
	@override String get selectList => '选择列表';
	@override String get editList => '编辑列表';
	@override String get selectChannel => '选择频道';
	@override String get selectAntenna => '选择天线';
	@override String get editAntenna => '编辑天线';
	@override String get selectWidget => '选择小工具';
	@override String get editWidgets => '编辑部件';
	@override String get editWidgetsExit => '完成编辑';
	@override String get customEmojis => '自定义表情符号';
	@override String get emoji => '表情符号';
	@override String get emojis => '表情符号';
	@override String get emojiName => '表情符号名称';
	@override String get emojiUrl => 'emoji 地址';
	@override String get addEmoji => '添加表情符号';
	@override String get settingGuide => '推荐配置';
	@override String get cacheRemoteFiles => '缓存远程文件';
	@override String get cacheRemoteFilesDescription => '启用此设定时，将在此服务器上缓存远程文件。虽然可以加快图片显示的速度，但是相对的会消耗大量的服务器存储空间。用户角色内的网盘容量决定了这个远程用户能在服务器上保留保留多少缓存。当超出了这个限制时，旧的文件将从缓存中被删除，成为链接。当禁用此设定时，则是从一开始就将远程文件保留为链接。此时推荐将 default.yml 的 proxyRemoteFiles 设置为 true 以优化缩略图生成及保护用户隐私。';
	@override String get youCanCleanRemoteFilesCache => '可以使用文件管理的🗑️按钮来删除所有的缓存。';
	@override String get cacheRemoteSensitiveFiles => '缓存远程敏感媒体文件';
	@override String get cacheRemoteSensitiveFilesDescription => '如果禁用这项设定，远程服务器的敏感媒体将不会被缓存，而是直接链接。';
	@override String get flagAsBot => '这是一个机器人账号';
	@override String get flagAsBotDescription => '如果此账户由程序控制，请启用此项。启用后，此标志可以帮助其他开发人员防止机器人之间产生无限互动的行为，并让 Misskey 的内部系统将此账户识别为机器人。';
	@override String get flagAsCat => '喵！！！！！！！！！！！！';
	@override String get flagAsCatDescription => '喵喵喵？？';
	@override String get flagShowTimelineReplies => '在时间线上显示帖子的回复';
	@override String get flagShowTimelineRepliesDescription => '启用时，时间线除了显示用户的帖子外，还会显示其他用户对帖子的回复。';
	@override String get autoAcceptFollowed => '自动允许来自我关注的用户对我的关注请求';
	@override String get addAccount => '添加账户';
	@override String get reloadAccountsList => '更新账户列表';
	@override String get loginFailed => '登录失败';
	@override String get showOnRemote => '转到所在服务器显示';
	@override String get general => '常规设置';
	@override String get wallpaper => '壁纸';
	@override String get setWallpaper => '设置壁纸';
	@override String get removeWallpaper => '移除壁纸';
	@override String searchWith({required Object q}) => '搜索:${q}';
	@override String get youHaveNoLists => '列表为空';
	@override String followConfirm({required Object name}) => '你确定要关注 ${name} 吗？';
	@override String get proxyAccount => '代理账户';
	@override String get proxyAccountDescription => '代理账户是在某些情况下替代用户进行远程关注用的账户。 例如说，当用户将一位远程用户放入一个列表中时，如果本地服务器上没有任何人关注这位远程用户，则这位远程用户的账户活动将不会被送到本地服务器上。作为替代，此时将使用代理账户进行关注。';
	@override String get host => '主机名';
	@override String get selectUser => '选择用户';
	@override String get recipient => '收件人';
	@override String get annotation => '注解';
	@override String get federation => '联合';
	@override String get instances => '服务器';
	@override String get registeredAt => '初次观测';
	@override String get latestRequestReceivedAt => '上次收到的请求';
	@override String get latestStatus => '最后状态';
	@override String get storageUsage => '已用存储';
	@override String get charts => '图表';
	@override String get perHour => '每小时';
	@override String get perDay => '每天';
	@override String get stopActivityDelivery => '停止发送活动';
	@override String get blockThisInstance => '阻止此服务器向本服务器推流';
	@override String get silenceThisInstance => '使服务器静音';
	@override String get operations => '操作';
	@override String get software => '软件';
	@override String get version => '版本';
	@override String get metadata => '元数据';
	@override String withNFiles({required Object n}) => '${n} 个文件';
	@override String get monitor => '服务器状态';
	@override String get jobQueue => '作业队列';
	@override String get cpuAndMemory => 'CPU和内存';
	@override String get network => '网络';
	@override String get disk => '存储';
	@override String get instanceInfo => '服务器信息';
	@override String get statistics => '统计';
	@override String get clearQueue => '清除队列';
	@override String get clearQueueConfirmTitle => '确定清除队列？';
	@override String get clearQueueConfirmText => '未送达的帖子将不会被投递。 通常无需执行此操作。';
	@override String get clearCachedFiles => '清除缓存';
	@override String get clearCachedFilesConfirm => '确定要清除所有缓存的远程文件？';
	@override String get blockedInstances => '被封锁的服务器';
	@override String get blockedInstancesDescription => '设定要封锁的服务器，以换行来进行分割。被封锁的服务器将无法与本服务器进行交换通讯。子域名也同样会被封锁。';
	@override String get silencedInstances => '被静音的服务器';
	@override String get silencedInstancesDescription => '设置要静音的服务器，以换行符分隔。被静音的服务器内所有的账户将默认处于「静音」状态，仅能发送关注请求，并且在未关注状态下无法提及本地账户。被阻止的实例不受影响。';
	@override String get muteAndBlock => '静音/拉黑';
	@override String get mutedUsers => '已静音用户';
	@override String get blockedUsers => '已拉黑的用户';
	@override String get noUsers => '无用户';
	@override String get editProfile => '编辑资料';
	@override String get noteDeleteConfirm => '要删除该帖子吗？';
	@override String get pinLimitExceeded => '无法置顶更多了';
	@override String get intro => 'Misskey 的部署结束啦！创建管理员账号吧！';
	@override String get done => '完成';
	@override String get processing => '正在处理';
	@override String get preview => '预览';
	@override String get default_ => '默认';
	@override String defaultValueIs({required Object value}) => '默认值: ${value}';
	@override String get noCustomEmojis => '没有自定义表情符号';
	@override String get noJobs => '没有任务';
	@override String get federating => '联合中';
	@override String get blocked => '已拉黑';
	@override String get suspended => '停止推流';
	@override String get all => '全部';
	@override String get subscribing => '已订阅';
	@override String get publishing => '投递中';
	@override String get notResponding => '没有响应';
	@override String get instanceFollowing => '关注服务器';
	@override String get instanceFollowers => '关注的服务器';
	@override String get instanceUsers => '服务器用户';
	@override String get changePassword => '修改密码';
	@override String get security => '安全';
	@override String get retypedNotMatch => '两次输入不一致！';
	@override String get currentPassword => '现在的密码';
	@override String get newPassword => '新密码';
	@override String get newPasswordRetype => '重新输入密码：';
	@override String get attachFile => '插入附件';
	@override String get more => '更多！';
	@override String get featured => '热门';
	@override String get usernameOrUserId => '用户名或用户 ID';
	@override String get noSuchUser => '用户不存在';
	@override String get lookup => '查询';
	@override String get announcements => '公告';
	@override String get imageUrl => '图片 URL';
	@override String get remove => '删除';
	@override String get removed => '已删除';
	@override String removeAreYouSure({required Object x}) => '要删掉「${x}」吗？';
	@override String deleteAreYouSure({required Object x}) => '要删掉「${x}」吗？';
	@override String get resetAreYouSure => '恢复默认设置？';
	@override String get areYouSure => '你确定吗？';
	@override String get saved => '已保存';
	@override String get messaging => '聊天';
	@override String get upload => '本地上传';
	@override String get keepOriginalUploading => '保留原图';
	@override String get keepOriginalUploadingDescription => '上传图片时保留原始图片。关闭时，浏览器会在上传时生成一张用于web发布的图片。';
	@override String get fromDrive => '从网盘中';
	@override String get fromUrl => '从 URL';
	@override String get uploadFromUrl => '从网址上传';
	@override String get uploadFromUrlDescription => '输入文件的 URL';
	@override String get uploadFromUrlRequested => '请求上传';
	@override String get uploadFromUrlMayTakeTime => '上传可能需要一些时间完成。';
	@override String get explore => '发现';
	@override String get messageRead => '已读';
	@override String get noMoreHistory => '没有更多的历史记录';
	@override String get startMessaging => '添加聊天';
	@override String nUsersRead({required Object n}) => '${n} 人已读';
	@override String agreeTo({required Object x0}) => '勾选则表示已阅读并同意 ${x0}';
	@override String get agree => '同意';
	@override String get agreeBelow => '同意以下内容';
	@override String get basicNotesBeforeCreateAccount => '基本注意事项';
	@override String get termsOfService => '服务条款';
	@override String get start => '开始';
	@override String get home => '首页';
	@override String get remoteUserCaution => '由于此用户来自其它服务器，显示的信息可能不完整。';
	@override String get activity => '活动';
	@override String get images => '图片';
	@override String get image => '图片';
	@override String get birthday => '生日';
	@override String yearsOld({required Object age}) => '${age}岁';
	@override String get registeredDate => '注册于';
	@override String get location => '位置';
	@override String get theme => '主题';
	@override String get themeForLightMode => '在浅色模式下使用的主题';
	@override String get themeForDarkMode => '在深色模式下使用的主题';
	@override String get light => '浅色';
	@override String get dark => '深色';
	@override String get lightThemes => '浅色主题';
	@override String get darkThemes => '深色主题';
	@override String get syncDeviceDarkMode => '将深色模式与设备设置同步';
	@override String get drive => '网盘';
	@override String get fileName => '文件名称';
	@override String get selectFile => '选择文件';
	@override String get selectFiles => '选择文件';
	@override String get selectFolder => '选择文件夹';
	@override String get selectFolders => '选择多个文件夹';
	@override String get renameFile => '重命名文件';
	@override String get folderName => '文件夹名称';
	@override String get createFolder => '创建文件夹';
	@override String get renameFolder => '重命名文件夹';
	@override String get deleteFolder => '删除文件夹';
	@override String get folder => '文件夹';
	@override String get addFile => '添加文件';
	@override String get emptyDrive => '网盘中无文件';
	@override String get emptyFolder => '此文件夹中无文件';
	@override String get unableToDelete => '无法删除';
	@override String get inputNewFileName => '请输入新文件名';
	@override String get inputNewDescription => '请输入新标题';
	@override String get inputNewFolderName => '请输入新文件夹名';
	@override String get circularReferenceFolder => '目标文件夹是要移动的文件夹的子文件夹。';
	@override String get hasChildFilesOrFolders => '此文件夹中有文件，无法删除。';
	@override String get copyUrl => '复制链接';
	@override String get rename => '重命名';
	@override String get avatar => '头像';
	@override String get banner => '横幅';
	@override String get displayOfSensitiveMedia => '显示敏感媒体';
	@override String get whenServerDisconnected => '与服务器连接中断时';
	@override String get disconnectedFromServer => '已和服务器断开连接';
	@override String get reload => '重新加载';
	@override String get doNothing => '关闭';
	@override String get reloadConfirm => '确定要重新加载吗？';
	@override String get watch => '关注';
	@override String get unwatch => '取消关注';
	@override String get accept => '允许';
	@override String get reject => '拒绝';
	@override String get normal => '正常';
	@override String get instanceName => '服务器名称';
	@override String get instanceDescription => '服务器简介';
	@override String get maintainerName => '管理员名称';
	@override String get maintainerEmail => '管理员电子邮箱';
	@override String get tosUrl => '服务条款 URL';
	@override String get thisYear => '今年';
	@override String get thisMonth => '本月';
	@override String get today => '今天';
	@override String dayX({required Object day}) => '${day}日';
	@override String monthX({required Object month}) => '${month}月';
	@override String yearX({required Object year}) => '${year}年';
	@override String get pages => '页面';
	@override String get integration => '关联';
	@override String get connectService => '连接';
	@override String get disconnectService => '断开连接';
	@override String get enableLocalTimeline => '启用本地时间线';
	@override String get enableGlobalTimeline => '启用全局时间线';
	@override String get disablingTimelinesInfo => '即使时间线功能被禁用，出于方便，管理员和监察员也可以继续使用。';
	@override String get registration => '注册';
	@override String get enableRegistration => '允许任何人注册';
	@override String get invite => '邀请';
	@override String get driveCapacityPerLocalAccount => '每个用户的网盘容量';
	@override String get driveCapacityPerRemoteAccount => '每个远程用户的网盘容量';
	@override String get inMb => '以兆字节(MegaByte)为单位';
	@override String get bannerUrl => '横幅 URL';
	@override String get backgroundImageUrl => '背景图 URL';
	@override String get basicInfo => '基本信息';
	@override String get pinnedUsers => '置顶用户';
	@override String get pinnedUsersDescription => '输入您想要固定到“发现”页面的用户，一行一个。';
	@override String get pinnedPages => '固定页面';
	@override String get pinnedPagesDescription => '输入您要固定到服务器首页的页面路径，一行一个。';
	@override String get pinnedClipId => '置顶的便签 ID';
	@override String get pinnedNotes => '已置顶的帖子';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => '启用 hCaptcha';
	@override String get hcaptchaSiteKey => '网站密钥';
	@override String get hcaptchaSecretKey => 'hCaptcha 密钥(SecretKey)';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => '启用 mCaptcha';
	@override String get mcaptchaSiteKey => '网站密钥';
	@override String get mcaptchaSecretKey => 'mCaptcha 密钥(SecretKey)';
	@override String get mcaptchaInstanceUrl => 'mCaptcha 实例地址';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => '启用 reCAPTCHA\n(请注意, 此功能在中国大陆不可用. 如果启用, 可能导致无法正常使用登录或注册等功能)';
	@override String get recaptchaSiteKey => '网站密钥';
	@override String get recaptchaSecretKey => 'mCaptcha 密钥(SecretKey)';
	@override String get turnstile => 'Turnstile';
	@override String get enableTurnstile => '启用 Turnstile';
	@override String get turnstileSiteKey => '网站密钥';
	@override String get turnstileSecretKey => 'Turnstile 密钥(SecretKey)';
	@override String get avoidMultiCaptchaConfirm => '使用多个 Captcha 可能会互相干扰，您要禁用其它 Captcha 吗？您可以按“取消”按钮，继续保持启用多种验证方式。';
	@override String get antennas => '天线';
	@override String get manageAntennas => '天线管理';
	@override String get name => '名称';
	@override String get antennaSource => '接收来源';
	@override String get antennaKeywords => '包含关键字';
	@override String get antennaExcludeKeywords => '排除关键字';
	@override String get antennaKeywordsDescription => 'AND 条件用空格分隔，OR 条件用换行符分隔。';
	@override String get notifyAntenna => '开启通知';
	@override String get withFileAntenna => '仅带有附件的帖子';
	@override String get enableServiceworker => '启用 ServiceWorker';
	@override String get antennaUsersDescription => '指定用户名，一行一个';
	@override String get caseSensitive => '区分大小写';
	@override String get withReplies => '包括回复';
	@override String get connectedTo => '您的账号已连到接以下第三方账号';
	@override String get notesAndReplies => '帖子与回复';
	@override String get withFiles => '附件';
	@override String get silence => '禁言';
	@override String get silenceConfirm => '确认要禁言吗？';
	@override String get unsilence => '解除禁言';
	@override String get unsilenceConfirm => '要解除禁言吗？';
	@override String get popularUsers => '热门用户';
	@override String get recentlyUpdatedUsers => '最近投稿的用户';
	@override String get recentlyRegisteredUsers => '最近登录的用户';
	@override String get recentlyDiscoveredUsers => '最近发现的用户';
	@override String exploreUsersCount({required Object count}) => '有 ${count} 个用户';
	@override String get exploreFediverse => '探索联邦宇宙';
	@override String get popularTags => '热门标签';
	@override String get userList => '列表';
	@override String get about => '关于';
	@override String get aboutMisskey => '关于 Misskey';
	@override String get administrator => '管理员';
	@override String get token => 'Token (令牌)';
	@override String get x2fa => '双因素认证';
	@override String get setupOf2fa => '设置双因素认证';
	@override String get totp => '身份验证应用';
	@override String get totpDescription => '使用认证应用输入一次性密码。';
	@override String get moderator => '监察员';
	@override String get moderation => '管理';
	@override String get moderationNote => '管理笔记';
	@override String get addModerationNote => '添加管理笔记';
	@override String get moderationLogs => '管理日志';
	@override String nUsersMentioned({required Object n}) => '${n} 被提到';
	@override String get securityKeyAndPasskey => '安全密钥或 Passkey';
	@override String get securityKey => '安全密钥';
	@override String get lastUsed => '最后使用：';
	@override String lastUsedAt({required Object t}) => '最后使用: ${t}';
	@override String get unregister => '删除账户';
	@override String get passwordLessLogin => '无密码登录';
	@override String get passwordLessLoginDescription => '不使用密码，仅使用安全密钥或 Passkey 登录';
	@override String get resetPassword => '重置密码';
	@override String newPasswordIs({required Object password}) => '新的密码是「${password}」';
	@override String get reduceUiAnimation => '减少UI动画';
	@override String get share => '分享';
	@override String get notFound => '未找到';
	@override String get notFoundDescription => '没有与指定 URL 对应的页面。';
	@override String get uploadFolder => '默认上传文件夹';
	@override String get markAsReadAllNotifications => '将所有通知标为已读';
	@override String get markAsReadAllUnreadNotes => '将所有帖子标记为已读';
	@override String get markAsReadAllTalkMessages => '将所有聊天标记为已读';
	@override String get help => '帮助';
	@override String get inputMessageHere => '在此键入信息';
	@override String get close => '关闭';
	@override String get invites => '邀请';
	@override String get members => '成员';
	@override String get transfer => '转让';
	@override String get title => '标题';
	@override String get text => '文本';
	@override String get enable => '启用';
	@override String get next => '下一个';
	@override String get retype => '重新输入';
	@override String noteOf({required Object user}) => '${user} 的帖子';
	@override String get quoteAttached => '已引用';
	@override String get quoteQuestion => '是否引用此链接内容？';
	@override String get noMessagesYet => '现在没有新的聊天';
	@override String get newMessageExists => '新信息';
	@override String get onlyOneFileCanBeAttached => '只能添加一个附件';
	@override String get signinRequired => '请先登录';
	@override String get invitations => '邀请';
	@override String get invitationCode => '邀请码';
	@override String get checking => '正在确认';
	@override String get available => '可用';
	@override String get unavailable => '不可用';
	@override String get usernameInvalidFormat => '可使用大小写英文字母、数字和下划线。';
	@override String get tooShort => '过短';
	@override String get tooLong => '过长';
	@override String get weakPassword => '密码强度：弱';
	@override String get normalPassword => '密码强度：中等';
	@override String get strongPassword => '密码强度：强';
	@override String get passwordMatched => '密码一致';
	@override String get passwordNotMatched => '密码不一致';
	@override String signinWith({required Object x}) => '以${x}登录';
	@override String get signinFailed => '无法登录，请检查您的用户名和密码是否正确。';
	@override String get or => '或者';
	@override String get language => '语言';
	@override String get uiLanguage => '显示语言';
	@override String aboutX({required Object x}) => '关于 ${x}';
	@override String get emojiStyle => '表情符号的样式';
	@override String get native => '原生';
	@override String get disableDrawer => '不显示抽屉菜单';
	@override String get showNoteActionsOnlyHover => '仅在悬停时显示帖子操作';
	@override String get noHistory => '没有历史记录';
	@override String get signinHistory => '登录历史';
	@override String get enableAdvancedMfm => '启用扩展 MFM';
	@override String get enableAnimatedMfm => '启用 MFM 动画';
	@override String get doing => '正在进行';
	@override String get category => '类别';
	@override String get tags => '标签';
	@override String get docSource => '文件来源';
	@override String get createAccount => '注册账户';
	@override String get existingAccount => '现有的账户';
	@override String get regenerate => '重新生成';
	@override String get fontSize => '字体大小';
	@override String get mediaListWithOneImageAppearance => '仅一张图片的媒体列表高度';
	@override String limitTo({required Object x}) => '上限为 ${x}';
	@override String get noFollowRequests => '没有关注申请';
	@override String get openImageInNewTab => '在新标签页中打开图片';
	@override String get dashboard => '管理面板';
	@override String get local => '本地';
	@override String get remote => '远程';
	@override String get total => '总计';
	@override String get weekOverWeekChanges => '与前一周相比';
	@override String get dayOverDayChanges => '与前一日相比';
	@override String get appearance => '外观';
	@override String get clientSettings => '客户端设置';
	@override String get accountSettings => '账户设置';
	@override String get promotion => '推广';
	@override String get promote => '推广';
	@override String get numberOfDays => '天数';
	@override String get hideThisNote => '隐藏这条帖子';
	@override String get showFeaturedNotesInTimeline => '在时间线上显示热门推荐';
	@override String get objectStorage => '对象存储';
	@override String get useObjectStorage => '使用对象存储';
	@override String get objectStorageBaseUrl => 'Base URL';
	@override String get objectStorageBaseUrlDesc => '用于参考的 URL，如果您正在使用 CDN 或 Proxy，请填入服务商提供的 URL；S3：“https://<bucket>.s3.amazonaws.com”；GCS：“https://storage.googleapis.com/<bucket>”';
	@override String get objectStorageBucket => '存储桶';
	@override String get objectStorageBucketDesc => '请指定使用的对象存储服务的存储桶名称。';
	@override String get objectStoragePrefix => '前缀';
	@override String get objectStoragePrefixDesc => '文件将存储在此前缀的目录下。';
	@override String get objectStorageEndpoint => '端点';
	@override String get objectStorageEndpointDesc => '如果你使用 AWS S3 请留空。否则请根据你使用的服务商的说明来进行设置，指定端点形式为“<host>”或“<host>:<port>”。';
	@override String get objectStorageRegion => '可用区';
	@override String get objectStorageRegionDesc => '指定一个可用区，例如“xx-east-1”。 如果您的对象存储服务没有可用区概念，请将其留空或填写“us-east-1”。如果引用 AWS 的配置文件或环境变量，则留空。';
	@override String get objectStorageUseSSL => '使用 SSL';
	@override String get objectStorageUseSSLDesc => '如果不使用 https 进行 API 连接，请关闭。';
	@override String get objectStorageUseProxy => '使用代理';
	@override String get objectStorageUseProxyDesc => '如果您不使用代理进行 API 连接，请将其关闭。';
	@override String get objectStorageSetPublicRead => '上传时设置为 public-read';
	@override String get s3ForcePathStyleDesc => '启用 s3ForcePathStyle 会强制将存储桶名称指定为 URL 中路径的一部分，而不是主机名。使用自托管 Minio 等时可能需要启用。';
	@override String get serverLogs => '服务器日志';
	@override String get deleteAll => '全部删除';
	@override String get showFixedPostForm => '在时间线顶部显示发帖框';
	@override String get showFixedPostFormInChannel => '在时间线顶部显示发帖对话框（频道）';
	@override String get withRepliesByDefaultForNewlyFollowed => '在时间线中默认包含新关注用户的回复';
	@override String get newNoteRecived => '有新的帖子';
	@override String get sounds => '提示音';
	@override String get sound => '提示音';
	@override String get listen => '试听';
	@override String get none => '无';
	@override String get showInPage => '在页面中显示';
	@override String get popout => '弹窗';
	@override String get volume => '音量';
	@override String get masterVolume => '主音量';
	@override String get notUseSound => '静音';
	@override String get useSoundOnlyWhenActive => '仅在 Misskey 活跃时输出声音';
	@override String get details => '详情';
	@override String get chooseEmoji => '选择表情符号';
	@override String get unableToProcess => '操作无法完成';
	@override String get recentUsed => '最近使用';
	@override String get install => '安装';
	@override String get uninstall => '卸载';
	@override String get installedApps => '已授权的应用';
	@override String get nothing => '没有';
	@override String get installedDate => '授权日期';
	@override String get lastUsedDate => '最近使用';
	@override String get state => '状态';
	@override String get sort => '排序';
	@override String get ascendingOrder => '升序';
	@override String get descendingOrder => '降序';
	@override String get scratchpad => 'AiScript 控制台';
	@override String get scratchpadDescription => 'AiScript 控制台为 AiScript 提供了实验环境。您可以编写代码与 Misskey 交互，运行并查看结果。';
	@override String get output => '输出';
	@override String get script => '脚本';
	@override String get disablePagesScript => '禁用页面脚本';
	@override String get updateRemoteUser => '更新远程用户信息';
	@override String get unsetUserAvatar => '清除头像';
	@override String get unsetUserAvatarConfirm => '要清除头像吗？';
	@override String get unsetUserBanner => '清除横幅';
	@override String get unsetUserBannerConfirm => '要清除横幅吗？';
	@override String get deleteAllFiles => '删除所有文件';
	@override String get deleteAllFilesConfirm => '要删除所有文件吗？';
	@override String get removeAllFollowing => '取消所有关注';
	@override String removeAllFollowingDescription({required Object host}) => '取消来自 ${host} 的所有关注者。当服务器不再存在时执行。';
	@override String get userSuspended => '该用户已被冻结。';
	@override String get userSilenced => '该用户已被禁言。';
	@override String get yourAccountSuspendedTitle => '账户已被冻结';
	@override String get yourAccountSuspendedDescription => '由于违反了服务器的服务条款或其他原因，该账户已被冻结。 您可以与管理员联系以了解更多信息。 请不要创建一个新的账户。';
	@override String get tokenRevoked => '令牌无效';
	@override String get tokenRevokedDescription => '登录令牌已经失效。请重新登录。';
	@override String get accountDeleted => '帐户已删除';
	@override String get accountDeletedDescription => '此帐户已经被删除。';
	@override String get menu => '菜单';
	@override String get divider => '分割线';
	@override String get addItem => '添加项目';
	@override String get rearrange => '排序方式';
	@override String get relays => '中继';
	@override String get addRelay => '添加中继';
	@override String get inboxUrl => 'Inbox URL';
	@override String get addedRelays => '已添加的中继';
	@override String get serviceworkerInfo => '您需要启用推送通知';
	@override String get deletedNote => '已删除的帖子';
	@override String get invisibleNote => '隐藏的帖子';
	@override String get enableInfiniteScroll => '启用自动滚动页面模式';
	@override String get visibility => '可见性';
	@override String get poll => '投票';
	@override String get useCw => '隐藏内容';
	@override String get enablePlayer => '打开播放器';
	@override String get disablePlayer => '关闭播放器';
	@override String get expandTweet => '展开帖子';
	@override String get themeEditor => '主题编辑器';
	@override String get description => '描述';
	@override String get describeFile => '添加标题';
	@override String get enterFileDescription => '输入标题';
	@override String get author => '作者';
	@override String get leaveConfirm => '存在未保存的更改。要放弃更改吗？';
	@override String get manage => '管理';
	@override String get plugins => '插件';
	@override String get preferencesBackups => '备份设置';
	@override String get deck => 'Deck';
	@override String get undeck => '取消 Deck';
	@override String get useBlurEffectForModal => '对话框使用模糊效果';
	@override String get useFullReactionPicker => '使用全功能的回应工具栏';
	@override String get width => '宽度';
	@override String get height => '高度';
	@override String get large => '大';
	@override String get medium => '中';
	@override String get small => '小';
	@override String get generateAccessToken => '生成访问令牌';
	@override String get permission => '权限';
	@override String get adminPermission => '管理员权限';
	@override String get enableAll => '启用全部';
	@override String get disableAll => '禁用全部';
	@override String get tokenRequested => '允许访问账户';
	@override String get pluginTokenRequestedDescription => '此插件将能够拥有这里设置的权限';
	@override String get notificationType => '通知类型';
	@override String get edit => '编辑';
	@override String get emailServer => '邮件服务器';
	@override String get enableEmail => '启用发送邮件功能';
	@override String get emailConfigInfo => '用于确认电子邮件和密码重置';
	@override String get email => '邮箱';
	@override String get emailAddress => '电子邮件地址';
	@override String get smtpConfig => 'SMTP 服务器设置';
	@override String get smtpHost => '主机名';
	@override String get smtpPort => '端口';
	@override String get smtpUser => '用户名';
	@override String get smtpPass => '密码';
	@override String get emptyToDisableSmtpAuth => '用户名和密码留空可以禁用 SMTP 验证';
	@override String get smtpSecure => '在 SMTP 连接中使用隐式 SSL / TLS';
	@override String get smtpSecureInfo => '使用 STARTTLS 时关闭。';
	@override String get testEmail => '邮件发送测试';
	@override String get wordMute => '文字屏蔽';
	@override String get hardWordMute => '屏蔽关键词';
	@override String get regexpError => '正则表达式错误';
	@override String regexpErrorDescription({required Object tab, required Object line}) => '${tab} 屏蔽文字的第 ${line} 行的正则表达式有错误：';
	@override String get instanceMute => '被屏蔽的服务器';
	@override String userSaysSomething({required Object name}) => '${name} 说了什么,但是被屏蔽词过滤了';
	@override String get makeActive => '启用';
	@override String get display => '显示';
	@override String get copy => '复制';
	@override String get metrics => '指标';
	@override String get overview => '概览';
	@override String get logs => '日志';
	@override String get delayed => '滞后';
	@override String get database => '数据库';
	@override String get channel => '频道';
	@override String get create => '创建';
	@override String get notificationSetting => '通知设置';
	@override String get notificationSettingDesc => '选择要显示的通知类型。';
	@override String get useGlobalSetting => '使用全局设置';
	@override String get useGlobalSettingDesc => '启用时，将使用账户通知设置。关闭时，则可以单独设置。';
	@override String get other => '其他';
	@override String get regenerateLoginToken => '重新生成登录令牌';
	@override String get regenerateLoginTokenDescription => '重新生成用于登录的内部令牌。通常您不需要这样做。重新生成后，您将在所有设备上登出。';
	@override String get theKeywordWhenSearchingForCustomEmoji => '这将是搜素自定义表情符号时的关键词。';
	@override String get setMultipleBySeparatingWithSpace => '您可以使用空格分隔多个项目。';
	@override String get fileIdOrUrl => '文件 ID 或者 URL';
	@override String get behavior => '行为';
	@override String get sample => '示例';
	@override String get abuseReports => '举报';
	@override String get reportAbuse => '举报';
	@override String get reportAbuseRenote => '举报转帖';
	@override String reportAbuseOf({required Object name}) => '举报 ${name}';
	@override String get fillAbuseReportDescription => '请填写举报的详细原因。如果有对方发的帖子，请同时填写 URL 地址。';
	@override String get abuseReported => '内容已发送。感谢您提交信息。';
	@override String get reporter => '举报者';
	@override String get reporteeOrigin => '举报来源';
	@override String get reporterOrigin => '举报者来源';
	@override String get forwardReport => '将该举报信息转发给远程服务器';
	@override String get forwardReportIsAnonymous => '在远程实例上显示的报告者是匿名的系统账号，而不是您的账号。';
	@override String get send => '发送';
	@override String get abuseMarkAsResolved => '处理完毕';
	@override String get openInNewTab => '在新标签页中打开';
	@override String get openInSideView => '在侧边栏中打开';
	@override String get defaultNavigationBehaviour => '默认导航';
	@override String get editTheseSettingsMayBreakAccount => '编辑这些设置可以会损坏您的账号';
	@override String get instanceTicker => '帖子的服务器来源';
	@override String waitingFor({required Object x}) => '等待 ${x}';
	@override String get random => '随机';
	@override String get system => '系统';
	@override String get switchUi => '切换界面';
	@override String get desktop => '桌面';
	@override String get clip => '便签';
	@override String get createNew => '新建';
	@override String get optional => '可选';
	@override String get createNewClip => '新建便签';
	@override String get unclip => '移除便签';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => '本帖已包含在便签 "${name}" 里。您想要将本帖从该便签中移除吗？';
	@override String get public => '公开';
	@override String get private => '私密';
	@override String i18nInfo({required Object link}) => 'Misskey 已经被志愿者们翻译成了各种语言。如果你也有兴趣，可以通过 ${link} 帮助翻译。';
	@override String get manageAccessTokens => '管理 Access Tokens';
	@override String get accountInfo => '账户信息';
	@override String get notesCount => '帖子数量';
	@override String get repliesCount => '回复数量';
	@override String get renotesCount => '转帖数量';
	@override String get repliedCount => '回复数';
	@override String get renotedCount => '转发数';
	@override String get followingCount => '正在关注数量';
	@override String get followersCount => '关注者数量';
	@override String get sentReactionsCount => '发送回应数';
	@override String get receivedReactionsCount => '收到回应数';
	@override String get pollVotesCount => '问卷调查的投票数';
	@override String get pollVotedCount => '问卷调查的被投票数';
	@override String get yes => '是';
	@override String get no => '否';
	@override String get driveFilesCount => '网盘的文件数';
	@override String get driveUsage => '网盘的空间用量';
	@override String get noCrawle => '要求搜索引擎不索引该用户';
	@override String get noCrawleDescription => '要求搜索引擎不要收录（索引）您的用户页面，帖子，页面等。';
	@override String get lockedAccountInfo => '即使启用该功能，只要您不将帖子可见范围设置为“仅关注者”，任何人都还是可以看到您的帖子。';
	@override String get alwaysMarkSensitive => '默认将媒体文件标记为敏感内容';
	@override String get loadRawImages => '添加附件图像的缩略图时使用原始图像质量';
	@override String get disableShowingAnimatedImages => '不播放动画';
	@override String get highlightSensitiveMedia => '高亮显示敏感媒体';
	@override String get verificationEmailSent => '已发送确认电子邮件。请访问电子邮件中的链接以完成设置。';
	@override String get notSet => '未设置';
	@override String get emailVerified => '电子邮件地址已验证';
	@override String get noteFavoritesCount => '收藏的帖子数';
	@override String get pageLikesCount => '页面点赞次数';
	@override String get pageLikedCount => '页面被点赞次数';
	@override String get contact => '联系人';
	@override String get useSystemFont => '使用系统默认字体';
	@override String get clips => '便签';
	@override String get experimentalFeatures => '实验性功能';
	@override String get experimental => '实验性的';
	@override String get thisIsExperimentalFeature => '这是一项实验性功能。规范可能会变更，或者可能无法正常工作。';
	@override String get developer => '开发者';
	@override String get makeExplorable => '使账号可见。';
	@override String get makeExplorableDescription => '关闭时，账号不会显示在"发现"中。';
	@override String get showGapBetweenNotesInTimeline => '时间线上的帖子分开显示。';
	@override String get duplicate => '复制';
	@override String get left => '左';
	@override String get center => '中央';
	@override String get wide => '宽';
	@override String get narrow => '窄';
	@override String get reloadToApplySetting => '页面刷新后设置才会生效。是否现在刷新页面？';
	@override String get needReloadToApply => '重新载入后应用才会生效。';
	@override String get showTitlebar => '显示标题栏';
	@override String get clearCache => '清除缓存';
	@override String onlineUsersCount({required Object n}) => '${n} 人在线';
	@override String nUsers({required Object n}) => '${n} 用户';
	@override String nNotes({required Object n}) => '${n}  帖子';
	@override String get sendErrorReports => '发送错误报告';
	@override String get sendErrorReportsDescription => '启用后，如果出现问题，可以与 Misskey 共享详细的错误信息，从而帮助提高软件的质量。错误信息包括操作系统版本、浏览器类型、行为历史记录等。';
	@override String get myTheme => '我的主题';
	@override String get backgroundColor => '背景';
	@override String get accentColor => '强调色';
	@override String get textColor => '文本';
	@override String get saveAs => '另存为';
	@override String get advanced => '高级';
	@override String get advancedSettings => '高级设置';
	@override String get value => '值';
	@override String get createdAt => '创建日期';
	@override String get updatedAt => '更新时间';
	@override String get saveConfirm => '确定保存？';
	@override String get deleteConfirm => '确定删除?';
	@override String get invalidValue => '无效值。';
	@override String get registry => '注册表';
	@override String get closeAccount => '永久注销账户';
	@override String get currentVersion => '当前版本';
	@override String get latestVersion => '最新版本';
	@override String get youAreRunningUpToDateClient => '您所使用的客户端已经是最新的。';
	@override String get newVersionOfClientAvailable => '新版本的客户端可用。';
	@override String get usageAmount => '使用量';
	@override String get capacity => '容量';
	@override String get inUse => '已使用';
	@override String get editCode => '编辑代码';
	@override String get apply => '应用';
	@override String get receiveAnnouncementFromInstance => '从服务器接收通知';
	@override String get emailNotification => '邮件通知';
	@override String get publish => '发布';
	@override String get inChannelSearch => '频道内搜索';
	@override String get useReactionPickerForContextMenu => '单击右键打开回应工具栏';
	@override String typingUsers({required Object users}) => '${users} 正在输入';
	@override String get jumpToSpecifiedDate => '跳转到特定日期';
	@override String get showingPastTimeline => '显示过去的时间线';
	@override String get clear => '清除';
	@override String get markAllAsRead => '全部标记为已读';
	@override String get goBack => '返回';
	@override String get unlikeConfirm => '取消赞？';
	@override String get fullView => '全屏';
	@override String get quitFullView => '退出全屏';
	@override String get addDescription => '添加描述';
	@override String get userPagePinTip => '在帖子的菜单中选择“置顶”，即可显示该条帖子。';
	@override String get notSpecifiedMentionWarning => '有未指定的提及';
	@override String get info => '关于';
	@override String get userInfo => '用户信息';
	@override String get unknown => '未知';
	@override String get onlineStatus => '在线状态';
	@override String get hideOnlineStatus => '隐藏在线状态';
	@override String get hideOnlineStatusDescription => '隐藏在线状态后，可能会降低搜索等功能的便利性。';
	@override String get online => '在线';
	@override String get active => '活动';
	@override String get offline => '离线';
	@override String get notRecommended => '不推荐';
	@override String get botProtection => 'Bot防御';
	@override String get instanceBlocking => '被阻拦的服务器';
	@override String get selectAccount => '选择账户';
	@override String get switchAccount => '切换账户';
	@override String get enabled => '已启用';
	@override String get disabled => '已禁用 ';
	@override String get quickAction => '快捷操作';
	@override String get user => '用户';
	@override String get administration => '管理';
	@override String get accounts => '账户';
	@override String get switch_ => '切换';
	@override String get noMaintainerInformationWarning => '管理人员信息未设置。';
	@override String get noBotProtectionWarning => 'Bot 防御未设置。';
	@override String get configure => '设置';
	@override String get postToGallery => '发送到图库';
	@override String get postToHashtag => '投稿到这个标签';
	@override String get gallery => '图库';
	@override String get recentPosts => '最新发布';
	@override String get popularPosts => '热门投稿';
	@override String get shareWithNote => '在帖子中分享';
	@override String get ads => '广告';
	@override String get expiration => '截止时间';
	@override String get startingperiod => '开始时间';
	@override String get memo => '便笺';
	@override String get priority => '优先级';
	@override String get high => '高';
	@override String get middle => '中';
	@override String get low => '低';
	@override String get emailNotConfiguredWarning => '电子邮件地址未设置。';
	@override String get ratio => '比率';
	@override String get previewNoteText => '预览文本';
	@override String get customCss => '自定义 CSS';
	@override String get customCssWarn => '这些设置必须有相关的基础知识，不当的配置可能导致客户端无法正常使用！';
	@override String get global => '全局';
	@override String get squareAvatars => '显示方形头像图标';
	@override String get sent => '发送';
	@override String get received => '收取';
	@override String get searchResult => '搜索结果';
	@override String get hashtags => '话题标签';
	@override String get troubleshooting => '故障排除';
	@override String get useBlurEffect => '在 UI 上使用模糊效果';
	@override String get learnMore => '更多信息';
	@override String get misskeyUpdated => 'Misskey 更新完成！';
	@override String get whatIsNew => '显示更新信息';
	@override String get translate => '翻译';
	@override String translatedFrom({required Object x}) => '从 ${x} 翻译';
	@override String get accountDeletionInProgress => '正在删除账户';
	@override String get usernameInfo => '在服务器上唯一标识您的帐户的名称。您可以使用字母 (a ~ z, A ~ Z)、数字 (0 ~ 9) 和下划线 (_)。用户名以后不能更改。';
	@override String get aiChanMode => '小蓝模式';
	@override String get devMode => '开发者模式';
	@override String get keepCw => '回复时维持隐藏内容';
	@override String get pubSub => 'Pub/Sub 账户';
	@override String get lastCommunication => '最近通信';
	@override String get resolved => '已解决';
	@override String get unresolved => '未解决';
	@override String get breakFollow => '移除关注者';
	@override String get breakFollowConfirm => '你想取消关注吗？';
	@override String get itsOn => '已开启';
	@override String get itsOff => '已关闭';
	@override String get on => '开启';
	@override String get off => '关闭';
	@override String get emailRequiredForSignup => '注册账户需要电子邮件地址';
	@override String get unread => '未读';
	@override String get filter => '筛选';
	@override String get controlPanel => '控制面板';
	@override String get manageAccounts => '管理账户';
	@override String get makeReactionsPublic => '将回应设置为公开';
	@override String get makeReactionsPublicDescription => '将您发表过的回应设置成公开可见。';
	@override String get classic => '经典';
	@override String get muteThread => '屏蔽帖子列表';
	@override String get unmuteThread => '取消屏蔽帖子列表';
	@override String get followingVisibility => '关注的人的公开范围';
	@override String get followersVisibility => '关注者的公开范围';
	@override String get continueThread => '查看更多帖子';
	@override String get deleteAccountConfirm => '将要删除账户。是否确认？';
	@override String get incorrectPassword => '密码错误';
	@override String voteConfirm({required Object choice}) => '确定投给 “${choice}” ？';
	@override String get hide => '隐藏';
	@override String get useDrawerReactionPickerForMobile => '在移动设备上使用抽屉显示';
	@override String welcomeBackWithName({required Object name}) => '欢迎回来，${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => '点击 [${ok}] 完成电子邮件地址认证。';
	@override String get overridedDeviceKind => '设备类型';
	@override String get smartphone => '智能手机';
	@override String get tablet => '平板';
	@override String get auto => '自动';
	@override String get themeColor => '主题颜色';
	@override String get size => '大小';
	@override String get numberOfColumn => '列数';
	@override String get searchByGoogle => 'Google';
	@override String get instanceDefaultLightTheme => '服务器默认浅色主题';
	@override String get instanceDefaultDarkTheme => '服务器默认深色主题';
	@override String get instanceDefaultThemeDescription => '以对象格式输入主题代码';
	@override String get mutePeriod => '屏蔽期限';
	@override String get period => '截止时间';
	@override String get indefinitely => '永久';
	@override String get tenMinutes => '10 分钟';
	@override String get oneHour => '1 小时';
	@override String get oneDay => '1 天';
	@override String get oneWeek => '1 周';
	@override String get oneMonth => '1 个月';
	@override String get reflectMayTakeTime => '可能需要一些时间才能体现出效果。';
	@override String get failedToFetchAccountInformation => '获取账户信息失败';
	@override String get rateLimitExceeded => '已超过速率限制';
	@override String get cropImage => '裁剪图像';
	@override String get cropImageAsk => '是否要裁剪图像？';
	@override String get cropYes => '去裁剪';
	@override String get cropNo => '就这样吧！';
	@override String get file => '文件';
	@override String recentNHours({required Object n}) => '最近 ${n} 小时';
	@override String recentNDays({required Object n}) => '最近 ${n} 天';
	@override String get noEmailServerWarning => '电子邮件服务器未设置。';
	@override String get thereIsUnresolvedAbuseReportWarning => '有未解决的报告';
	@override String get recommended => '推荐';
	@override String get check => '检查';
	@override String get driveCapOverrideLabel => '更改此用户的网盘容量上限';
	@override String get driveCapOverrideCaption => '设定为 0 以下则会解除此限制。';
	@override String get requireAdminForView => '需要使用管理员账户登录才能查看。';
	@override String get isSystemAccount => '该账号由系统自动创建和管理。';
	@override String typeToConfirm({required Object x}) => '输入 ${x} 以确认操作。';
	@override String get deleteAccount => '删除账户';
	@override String get document => '文档';
	@override String get numberOfPageCache => '缓存页数';
	@override String get numberOfPageCacheDescription => '设置较高的值会更方便用户，但设备的负载和内存使用量会增加。';
	@override String get logoutConfirm => '是否确认登出？';
	@override String get lastActiveDate => '最后活跃时间';
	@override String get statusbar => '状态栏';
	@override String get pleaseSelect => '请选择';
	@override String get reverse => '翻转';
	@override String get colored => '彩色';
	@override String get refreshInterval => '刷新间隔';
	@override String get label => '标签';
	@override String get type => '类型';
	@override String get speed => '速度';
	@override String get slow => '慢';
	@override String get fast => '快';
	@override String get sensitiveMediaDetection => '检测到敏感媒体';
	@override String get localOnly => '仅限本地';
	@override String get remoteOnly => '仅远程';
	@override String get failedToUpload => '上传失败';
	@override String get cannotUploadBecauseInappropriate => '因为可能含有不适宜的内容，无法上传。';
	@override String get cannotUploadBecauseNoFreeSpace => '因为已无可用空间，无法上传。';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => '无法上传文件，超过文件大小限制。';
	@override String get beta => '测试';
	@override String get enableAutoSensitive => '自动 NSFW 识别';
	@override String get enableAutoSensitiveDescription => '使用机器学习在可用时自动使用 NSFW 标记来标记媒体。即使您关闭此功能，根据服务器的不同，它仍然可能会自动设置。';
	@override String get activeEmailValidationDescription => '开启用户的电子邮件地址验证，判断它是一次性的电子邮件地址，还是可以实际通信的地址。关闭时，则只检查字符串是否正确。';
	@override String get navbar => '导航栏';
	@override String get shuffle => '随机';
	@override String get account => '账户';
	@override String get move => '移动';
	@override String get pushNotification => '推送通知';
	@override String get subscribePushNotification => '启用推送通知消息';
	@override String get unsubscribePushNotification => '停用推送通知消息';
	@override String get pushNotificationAlreadySubscribed => '推送通知消息已启用';
	@override String get pushNotificationNotSupported => '浏览器或服务器不支持推送通知消息';
	@override String get sendPushNotificationReadMessage => '删除已读推送通知消息';
	@override String get sendPushNotificationReadMessageCaption => '您终端设备的电池消耗可能会增加。';
	@override String get windowMaximize => '最大化';
	@override String get windowMinimize => '最小化';
	@override String get windowRestore => '还原';
	@override String get caption => '标题';
	@override String get loggedInAsBot => '以 Bot 账户登录';
	@override String get tools => '工具';
	@override String get cannotLoad => '无法加载';
	@override String get numberOfProfileView => '个人资料展示次数';
	@override String get like => '点赞！';
	@override String get unlike => '取消赞';
	@override String get numberOfLikes => '点赞数';
	@override String get show => '显示';
	@override String get neverShow => '不再显示';
	@override String get remindMeLater => '稍后提醒我';
	@override String get didYouLikeMisskey => '您喜欢 Misskey 吗？';
	@override String pleaseDonate({required Object host}) => 'Misskey 是 ${host} 所使用的免费软件。为了今后也能够维持 Misskey 的开发，请在有余力的情况下进行捐助！';
	@override String correspondingSourceIsAvailable({required Object anchor}) => '对应的源代码可在${anchor}找到';
	@override String get roles => '角色';
	@override String get role => '角色';
	@override String get noRole => '角色不存在';
	@override String get normalUser => '普通用户';
	@override String get undefined => '未定义';
	@override String get assign => '分配';
	@override String get unassign => '取消分配';
	@override String get color => '颜色';
	@override String get manageCustomEmojis => '管理自定义表情符号';
	@override String get manageAvatarDecorations => '管理头像挂件';
	@override String get youCannotCreateAnymore => '抱歉，您无法再创建更多了。';
	@override String get cannotPerformTemporary => '暂时不可用';
	@override String get cannotPerformTemporaryDescription => '因操作过于频繁，暂时不可用，请稍后再试。';
	@override String get invalidParamError => '参数错误';
	@override String get invalidParamErrorDescription => '请求参数出现问题。通常是因为 bug 造成的，但也可能是输入文字数量过多之类的原因。';
	@override String get permissionDeniedError => '操作被拒绝';
	@override String get permissionDeniedErrorDescription => '本账户没有执行该操作的权限。';
	@override String get preset => '预设值';
	@override String get selectFromPresets => '从预设值中选择';
	@override String get achievements => '成就';
	@override String get gotInvalidResponseError => '服务器无应答';
	@override String get gotInvalidResponseErrorDescription => '您的网络连接可能出现了问题, 或是远程服务器暂时不可用. 请稍后重试。';
	@override String get thisPostMayBeAnnoying => '这个帖子可能会让其他人感到困扰。';
	@override String get thisPostMayBeAnnoyingHome => '发到首页';
	@override String get thisPostMayBeAnnoyingCancel => '取消';
	@override String get thisPostMayBeAnnoyingIgnore => '就这样发布';
	@override String get collapseRenotes => '省略显示已经看过的转发内容';
	@override String get internalServerError => '内部服务器错误';
	@override String get internalServerErrorDescription => '内部服务器发生了预期外的错误';
	@override String get copyErrorInfo => '复制错误信息';
	@override String get joinThisServer => '在本服务器上注册';
	@override String get exploreOtherServers => '探索其他服务器';
	@override String get letsLookAtTimeline => '时间线';
	@override String get disableFederationConfirm => '确定要禁用联合？';
	@override String get disableFederationConfirmWarn => '禁用联合不会将帖子设为私有。在大多数情况下，不需要禁用联合。';
	@override String get disableFederationOk => '联合禁用';
	@override String get invitationRequiredToRegister => '此服务器目前只允许拥有邀请码的人注册。';
	@override String get emailNotSupported => '此服务器不支持发送邮件';
	@override String get postToTheChannel => '发布到频道';
	@override String get cannotBeChangedLater => '之后不能再更改。';
	@override String get reactionAcceptance => '接受表情回应';
	@override String get likeOnly => '仅点赞';
	@override String get likeOnlyForRemote => '远程仅点赞';
	@override String get nonSensitiveOnly => '仅限非敏感内容';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => '仅限非敏感内容（远程仅点赞）';
	@override String get rolesAssignedToMe => '指派给自己的角色';
	@override String get resetPasswordConfirm => '确定重置密码？';
	@override String get sensitiveWords => '敏感词';
	@override String get sensitiveWordsDescription => '将包含设置词的帖子的可见范围设置为首页。可以通过用换行符分隔来设置多个。';
	@override String get sensitiveWordsDescription2 => 'AND 条件用空格分隔，正则表达式用斜线包裹。';
	@override String get prohibitedWords => '禁用词';
	@override String get prohibitedWordsDescription => '发布包含设定词汇的帖子时将出错。可用换行设定多个关键字';
	@override String get prohibitedWordsDescription2 => 'AND 条件用空格分隔，正则表达式用斜线包裹。';
	@override String get hiddenTags => '隐藏标签';
	@override String get hiddenTagsDescription => '设定的标签将不会在时间线上显示。可使用换行来设置多个标签。';
	@override String get notesSearchNotAvailable => '帖子检索不可用';
	@override String get license => '许可信息';
	@override String get unfavoriteConfirm => '确定要取消收藏吗？';
	@override String get myClips => '我的便签';
	@override String get drivecleaner => '网盘整理';
	@override String get retryAllQueuesNow => '立刻重试所有队列';
	@override String get retryAllQueuesConfirmTitle => '要再尝试一次吗？';
	@override String get retryAllQueuesConfirmText => '可能会使服务器负荷在一定时间内增加';
	@override String get enableChartsForRemoteUser => '生成远程用户的图表';
	@override String get enableChartsForFederatedInstances => '生成远程服务器的图表';
	@override String get showClipButtonInNoteFooter => '在贴文下方显示便签按钮';
	@override String get reactionsDisplaySize => '回应显示大小';
	@override String get limitWidthOfReaction => '限制回应的最大宽度，并将其缩小显示';
	@override String get noteIdOrUrl => '帖子 ID 或 URL';
	@override String get video => '视频';
	@override String get videos => '视频';
	@override String get audio => '音频';
	@override String get audioFiles => '音频';
	@override String get dataSaver => '省流量模式';
	@override String get accountMigration => '账户迁移';
	@override String get accountMoved => '此用户已迁移账户';
	@override String get accountMovedShort => '此帐户已迁移';
	@override String get operationForbidden => '不允许此操作';
	@override String get forceShowAds => '总是显示广告';
	@override String get addMemo => '添加备注';
	@override String get editMemo => '编辑备注';
	@override String get reactionsList => '回应列表';
	@override String get renotesList => '转发列表';
	@override String get notificationDisplay => '显示通知';
	@override String get leftTop => '屏幕左上方';
	@override String get rightTop => '屏幕右上方';
	@override String get leftBottom => '屏幕左下方';
	@override String get rightBottom => '屏幕右下方';
	@override String get stackAxis => '堆叠方向';
	@override String get vertical => '纵向';
	@override String get horizontal => '横向';
	@override String get position => '位置';
	@override String get serverRules => '服务器规则';
	@override String get pleaseConfirmBelowBeforeSignup => '在这个服务器上注册账号前，请确认以下信息。';
	@override String get pleaseAgreeAllToContinue => '必须全部勾选「同意」才能够继续。';
	@override String get continue_ => '继续';
	@override String get preservedUsernames => '保留的用户名';
	@override String get preservedUsernamesDescription => '列出需要保留的用户名，使用换行来作为分割。被指定的用户名在建立账户时无法使用，但由管理员所创建的账户不受该限制。此外，现有的账户也不会受到影响。';
	@override String get createNoteFromTheFile => '从文件创建帖子';
	@override String get archive => '归档';
	@override String channelArchiveConfirmTitle({required Object name}) => '要将 ${name} 归档吗？';
	@override String get channelArchiveConfirmDescription => '归档后，在频道列表与搜索结果中不会显示，也无法发布新的贴文。';
	@override String get thisChannelArchived => '该频道已被归档。';
	@override String get displayOfNote => '显示帖子';
	@override String get initialAccountSetting => '初始设置';
	@override String get youFollowing => '正在关注';
	@override String get preventAiLearning => '拒绝接受生成式 AI 的学习';
	@override String get preventAiLearningDescription => '要求文章生成 AI 或图像生成 AI 不能够以发布的帖子和图像等内容作为学习对象。这是通过在 HTML 响应中包含 noai 标志来实现的，这不能完全阻止 AI 学习你的发布内容，并不是所有 AI 都会遵守这类请求。';
	@override String get options => '选项';
	@override String get specifyUser => '用户指定';
	@override String get failedToPreviewUrl => '无法预览';
	@override String get update => '更新';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => '可以使用表情作为回应的角色';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => '在没有指定角色的情况下，任何人都可以使用表情作为回应。';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => '角色必须是公开的。';
	@override String get cancelReactionConfirm => '要取消回应吗？';
	@override String get changeReactionConfirm => '要更改回应吗？';
	@override String get later => '一会再说';
	@override String get goToMisskey => '去往 Misskey';
	@override String get additionalEmojiDictionary => '表情符号追加字典';
	@override String get installed => '已安装';
	@override String get branding => '品牌';
	@override String get enableServerMachineStats => '公开服务器硬件统计信息';
	@override String get enableIdenticonGeneration => '启用生成用户 Identicon';
	@override String get turnOffToImprovePerformance => '关闭该选项可以提高性能。';
	@override String get createInviteCode => '生成邀请码';
	@override String get createWithOptions => '使用选项来创建';
	@override String get createCount => '发行数';
	@override String get inviteCodeCreated => '已创建邀请码';
	@override String get inviteLimitExceeded => '可供发行的邀请码已达上限。';
	@override String createLimitRemaining({required Object limit}) => '可供发行的邀请码：剩余${limit}个';
	@override String inviteLimitResetCycle({required Object time, required Object limit}) => '可以在${time}内发行最多${limit}个邀请码。';
	@override String get expirationDate => '有效日期';
	@override String get noExpirationDate => '不设置有效日期';
	@override String get inviteCodeUsedAt => '邀请码被使用的日期和时间';
	@override String get registeredUserUsingInviteCode => '使用了邀请码的用户';
	@override String get waitingForMailAuth => '等待验证电子邮件';
	@override String get inviteCodeCreator => '生成邀请码的用户';
	@override String get usedAt => '使用时间';
	@override String get unused => '未使用';
	@override String get used => '已使用';
	@override String get expired => '已过期';
	@override String get doYouAgree => '你同意吗？';
	@override String get beSureToReadThisAsItIsImportant => '请好好阅读，这真的很重要。';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => '我已经仔细阅读并同意了「${x}」的内容。';
	@override String get dialog => '对话框';
	@override String get icon => '头像';
	@override String get forYou => '您的';
	@override String get currentAnnouncements => '现在的公告';
	@override String get pastAnnouncements => '过去的公告';
	@override String get youHaveUnreadAnnouncements => '您有未读的公告';
	@override String get useSecurityKey => '请根据浏览器或设备的提示，使用安全密钥或通行密钥。';
	@override String get replies => '回复';
	@override String get renotes => '转发';
	@override String get loadReplies => '查看回复';
	@override String get loadConversation => '查看对话';
	@override String get pinnedList => '已置顶的列表';
	@override String get keepScreenOn => '保持设备屏幕开启';
	@override String get verifiedLink => '已验证的链接';
	@override String get notifyNotes => '打开发帖通知';
	@override String get unnotifyNotes => '关闭发帖通知';
	@override String get authentication => '验证';
	@override String get authenticationRequiredToContinue => '要继续，请先进行验证';
	@override String get dateAndTime => '日期和时间';
	@override String get showRenotes => '显示转帖';
	@override String get edited => '已编辑';
	@override String get notificationRecieveConfig => '通知接收设置';
	@override String get mutualFollow => '互相关注';
	@override String get followingOrFollower => '关注中或关注者';
	@override String get fileAttachedOnly => '仅限媒体';
	@override String get showRepliesToOthersInTimeline => '在时间线中包含给别人的回复';
	@override String get hideRepliesToOthersInTimeline => '在时间线中隐藏给别人的回复';
	@override String get showRepliesToOthersInTimelineAll => '在时间线中包含现在关注的所有人的回复';
	@override String get hideRepliesToOthersInTimelineAll => '在时间线中隐藏现在关注的所有人的回复';
	@override String get confirmShowRepliesAll => '此操作不可撤销。确认要在时间线中包含现在关注的所有人的回复吗？';
	@override String get confirmHideRepliesAll => '此操作不可撤销。确认要在时间线中隐藏现在关注的所有人的回复吗？';
	@override String get externalServices => '外部服务';
	@override String get sourceCode => '源代码';
	@override String get sourceCodeIsNotYetProvided => '还未提供源代码。要解决此问题请联系管理员。';
	@override String get repositoryUrl => '仓库地址';
	@override String get repositoryUrlDescription => '若源代码所在的仓库是公开的，请填入对应的 URL。若是按原样使用 Misskey（并未追加或者修改代码）的情况请填入 https://github.com/misskey-dev/misskey。';
	@override String get repositoryUrlOrTarballRequired => '若仓库并未公开，则需要提供 tarball 作为替代。详情请看 .config/example.yml。';
	@override String get feedback => '反馈';
	@override String get feedbackUrl => '反馈地址';
	@override String get impressum => '运营商信息';
	@override String get impressumUrl => '运营商信息地址';
	@override String get impressumDescription => '德国等国家和地区有义务展示此类信息（Impressum）。';
	@override String get privacyPolicy => '隐私政策';
	@override String get privacyPolicyUrl => '隐私政策地址';
	@override String get tosAndPrivacyPolicy => '服务条款及隐私政策';
	@override String get avatarDecorations => '头像挂件';
	@override String get attach => '佩戴';
	@override String get detach => '卸下';
	@override String get detachAll => '全部卸下';
	@override String get angle => '角度';
	@override String get flip => '翻转';
	@override String get showAvatarDecorations => '显示头像挂件';
	@override String get releaseToRefresh => '松开以刷新';
	@override String get refreshing => '刷新中';
	@override String get pullDownToRefresh => '下拉以刷新';
	@override String get disableStreamingTimeline => '禁止实时更新时间线';
	@override String get useGroupedNotifications => '分组显示通知';
	@override String get signupPendingError => '确认电子邮件时出现错误。链接可能已过期。';
	@override String get cwNotationRequired => '在启用「隐藏内容」时必须输入注释';
	@override String get doReaction => '回应';
	@override String get code => '代码';
	@override String get reloadRequiredToApplySettings => '需要重新载入来使设置生效';
	@override String remainingN({required Object n}) => '剩余：${n}';
	@override String get overwriteContentConfirm => '将覆盖现有内容。确定吗？';
	@override String get seasonalScreenEffect => '应景的画面效果';
	@override String get decorate => '装饰';
	@override String get addMfmFunction => '添加装饰';
	@override String get enableQuickAddMfmFunction => '显示高级 MFM 选择器';
	@override String get bubbleGame => '泡泡游戏';
	@override String get sfx => '音效';
	@override String get soundWillBePlayed => '声音将会播放';
	@override String get showReplay => '观看回放';
	@override String get replay => '重播';
	@override String get replaying => '重播中';
	@override String get endReplay => '结束回放';
	@override String get copyReplayData => '复制回放数据';
	@override String get ranking => '排行榜';
	@override String lastNDays({required Object n}) => '最近 ${n} 天';
	@override String get backToTitle => '返回标题';
	@override String get hemisphere => '居住地区';
	@override String get withSensitive => '显示包含敏感媒体的帖子';
	@override String userSaysSomethingSensitive({required Object name}) => '含 ${name} 敏感文件的帖子';
	@override String get enableHorizontalSwipe => '滑动切换标签页';
	@override String get loading => '读取中';
	@override String get surrender => '取消';
	@override String get gameRetry => '重试';
	@override late final _StringsMisskeyBubbleGameZhCn bubbleGame_ = _StringsMisskeyBubbleGameZhCn._(_root);
	@override late final _StringsMisskeyAnnouncementZhCn announcement_ = _StringsMisskeyAnnouncementZhCn._(_root);
	@override late final _StringsMisskeyInitialAccountSettingZhCn initialAccountSetting_ = _StringsMisskeyInitialAccountSettingZhCn._(_root);
	@override late final _StringsMisskeyInitialTutorialZhCn initialTutorial_ = _StringsMisskeyInitialTutorialZhCn._(_root);
	@override late final _StringsMisskeyTimelineDescriptionZhCn timelineDescription_ = _StringsMisskeyTimelineDescriptionZhCn._(_root);
	@override late final _StringsMisskeyServerRulesZhCn serverRules_ = _StringsMisskeyServerRulesZhCn._(_root);
	@override late final _StringsMisskeyServerSettingsZhCn serverSettings_ = _StringsMisskeyServerSettingsZhCn._(_root);
	@override late final _StringsMisskeyAccountMigrationZhCn accountMigration_ = _StringsMisskeyAccountMigrationZhCn._(_root);
	@override late final _StringsMisskeyAchievementsZhCn achievements_ = _StringsMisskeyAchievementsZhCn._(_root);
	@override late final _StringsMisskeyRoleZhCn role_ = _StringsMisskeyRoleZhCn._(_root);
	@override late final _StringsMisskeySensitiveMediaDetectionZhCn sensitiveMediaDetection_ = _StringsMisskeySensitiveMediaDetectionZhCn._(_root);
	@override late final _StringsMisskeyEmailUnavailableZhCn emailUnavailable_ = _StringsMisskeyEmailUnavailableZhCn._(_root);
	@override late final _StringsMisskeyFfVisibilityZhCn ffVisibility_ = _StringsMisskeyFfVisibilityZhCn._(_root);
	@override late final _StringsMisskeySignupZhCn signup_ = _StringsMisskeySignupZhCn._(_root);
	@override late final _StringsMisskeyAccountDeleteZhCn accountDelete_ = _StringsMisskeyAccountDeleteZhCn._(_root);
	@override late final _StringsMisskeyAdZhCn ad_ = _StringsMisskeyAdZhCn._(_root);
	@override late final _StringsMisskeyForgotPasswordZhCn forgotPassword_ = _StringsMisskeyForgotPasswordZhCn._(_root);
	@override late final _StringsMisskeyGalleryZhCn gallery_ = _StringsMisskeyGalleryZhCn._(_root);
	@override late final _StringsMisskeyEmailZhCn email_ = _StringsMisskeyEmailZhCn._(_root);
	@override late final _StringsMisskeyPluginZhCn plugin_ = _StringsMisskeyPluginZhCn._(_root);
	@override late final _StringsMisskeyPreferencesBackupsZhCn preferencesBackups_ = _StringsMisskeyPreferencesBackupsZhCn._(_root);
	@override late final _StringsMisskeyRegistryZhCn registry_ = _StringsMisskeyRegistryZhCn._(_root);
	@override late final _StringsMisskeyAboutMisskeyZhCn aboutMisskey_ = _StringsMisskeyAboutMisskeyZhCn._(_root);
	@override late final _StringsMisskeyDisplayOfSensitiveMediaZhCn displayOfSensitiveMedia_ = _StringsMisskeyDisplayOfSensitiveMediaZhCn._(_root);
	@override late final _StringsMisskeyInstanceTickerZhCn instanceTicker_ = _StringsMisskeyInstanceTickerZhCn._(_root);
	@override late final _StringsMisskeyServerDisconnectedBehaviorZhCn serverDisconnectedBehavior_ = _StringsMisskeyServerDisconnectedBehaviorZhCn._(_root);
	@override late final _StringsMisskeyChannelZhCn channel_ = _StringsMisskeyChannelZhCn._(_root);
	@override late final _StringsMisskeyMenuDisplayZhCn menuDisplay_ = _StringsMisskeyMenuDisplayZhCn._(_root);
	@override late final _StringsMisskeyWordMuteZhCn wordMute_ = _StringsMisskeyWordMuteZhCn._(_root);
	@override late final _StringsMisskeyInstanceMuteZhCn instanceMute_ = _StringsMisskeyInstanceMuteZhCn._(_root);
	@override late final _StringsMisskeyThemeZhCn theme_ = _StringsMisskeyThemeZhCn._(_root);
	@override late final _StringsMisskeySfxZhCn sfx_ = _StringsMisskeySfxZhCn._(_root);
	@override late final _StringsMisskeySoundSettingsZhCn soundSettings_ = _StringsMisskeySoundSettingsZhCn._(_root);
	@override late final _StringsMisskeyAgoZhCn ago_ = _StringsMisskeyAgoZhCn._(_root);
	@override late final _StringsMisskeyTimeInZhCn timeIn_ = _StringsMisskeyTimeInZhCn._(_root);
	@override late final _StringsMisskeyTimeZhCn time_ = _StringsMisskeyTimeZhCn._(_root);
	@override late final _StringsMisskeyX2faZhCn x2fa_ = _StringsMisskeyX2faZhCn._(_root);
	@override late final _StringsMisskeyPermissionsZhCn permissions_ = _StringsMisskeyPermissionsZhCn._(_root);
	@override late final _StringsMisskeyAuthZhCn auth_ = _StringsMisskeyAuthZhCn._(_root);
	@override late final _StringsMisskeyAntennaSourcesZhCn antennaSources_ = _StringsMisskeyAntennaSourcesZhCn._(_root);
	@override late final _StringsMisskeyWeekdayZhCn weekday_ = _StringsMisskeyWeekdayZhCn._(_root);
	@override late final _StringsMisskeyWidgetsZhCn widgets_ = _StringsMisskeyWidgetsZhCn._(_root);
	@override late final _StringsMisskeyCwZhCn cw_ = _StringsMisskeyCwZhCn._(_root);
	@override late final _StringsMisskeyPollZhCn poll_ = _StringsMisskeyPollZhCn._(_root);
	@override late final _StringsMisskeyVisibilityZhCn visibility_ = _StringsMisskeyVisibilityZhCn._(_root);
	@override late final _StringsMisskeyPostFormZhCn postForm_ = _StringsMisskeyPostFormZhCn._(_root);
	@override late final _StringsMisskeyProfileZhCn profile_ = _StringsMisskeyProfileZhCn._(_root);
	@override late final _StringsMisskeyExportOrImportZhCn exportOrImport_ = _StringsMisskeyExportOrImportZhCn._(_root);
	@override late final _StringsMisskeyChartsZhCn charts_ = _StringsMisskeyChartsZhCn._(_root);
	@override late final _StringsMisskeyInstanceChartsZhCn instanceCharts_ = _StringsMisskeyInstanceChartsZhCn._(_root);
	@override late final _StringsMisskeyTimelinesZhCn timelines_ = _StringsMisskeyTimelinesZhCn._(_root);
	@override late final _StringsMisskeyPlayZhCn play_ = _StringsMisskeyPlayZhCn._(_root);
	@override late final _StringsMisskeyPagesZhCn pages_ = _StringsMisskeyPagesZhCn._(_root);
	@override late final _StringsMisskeyRelayStatusZhCn relayStatus_ = _StringsMisskeyRelayStatusZhCn._(_root);
	@override late final _StringsMisskeyNotificationZhCn notification_ = _StringsMisskeyNotificationZhCn._(_root);
	@override late final _StringsMisskeyDeckZhCn deck_ = _StringsMisskeyDeckZhCn._(_root);
	@override late final _StringsMisskeyDialogZhCn dialog_ = _StringsMisskeyDialogZhCn._(_root);
	@override late final _StringsMisskeyDisabledTimelineZhCn disabledTimeline_ = _StringsMisskeyDisabledTimelineZhCn._(_root);
	@override late final _StringsMisskeyDrivecleanerZhCn drivecleaner_ = _StringsMisskeyDrivecleanerZhCn._(_root);
	@override late final _StringsMisskeyWebhookSettingsZhCn webhookSettings_ = _StringsMisskeyWebhookSettingsZhCn._(_root);
	@override late final _StringsMisskeyModerationLogTypesZhCn moderationLogTypes_ = _StringsMisskeyModerationLogTypesZhCn._(_root);
	@override late final _StringsMisskeyFileViewerZhCn fileViewer_ = _StringsMisskeyFileViewerZhCn._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerZhCn externalResourceInstaller_ = _StringsMisskeyExternalResourceInstallerZhCn._(_root);
	@override late final _StringsMisskeyDataSaverZhCn dataSaver_ = _StringsMisskeyDataSaverZhCn._(_root);
	@override late final _StringsMisskeyHemisphereZhCn hemisphere_ = _StringsMisskeyHemisphereZhCn._(_root);
	@override late final _StringsMisskeyReversiZhCn reversi_ = _StringsMisskeyReversiZhCn._(_root);
	@override late final _StringsMisskeyOfflineScreenZhCn offlineScreen_ = _StringsMisskeyOfflineScreenZhCn._(_root);
}

// Path: misskey.bubbleGame_
class _StringsMisskeyBubbleGameZhCn extends _StringsMisskeyBubbleGameEnUs {
	_StringsMisskeyBubbleGameZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => '游戏说明';
	@override String get hold => '抓住';
	@override late final _StringsMisskeyBubbleGameScoreZhCn score_ = _StringsMisskeyBubbleGameScoreZhCn._(_root);
	@override late final _StringsMisskeyBubbleGameHowToPlayZhCn howToPlay_ = _StringsMisskeyBubbleGameHowToPlayZhCn._(_root);
}

// Path: misskey.announcement_
class _StringsMisskeyAnnouncementZhCn extends _StringsMisskeyAnnouncementEnUs {
	_StringsMisskeyAnnouncementZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => '仅限现有用户';
	@override String get forExistingUsersDescription => '若启用，该公告将仅对创建此公告时存在的用户可见。 如果禁用，则在创建此公告后注册的用户也可以看到该公告。';
	@override String get needConfirmationToRead => '需要确认才能标记为已读';
	@override String get needConfirmationToReadDescription => '若启用，则会在标记已读时会显示确认对话框。此外，它也会不受批量已读操作的影响。';
	@override String get end => '结束公告';
	@override String get tooManyActiveAnnouncementDescription => '若有大量活动公告，可能会造成用户体验下降。请考虑归档已完成的公告。';
	@override String get readConfirmTitle => '标记为已读？';
	@override String readConfirmText({required Object title}) => '阅读“${title}”的内容并将其标记为已读。';
	@override String get shouldNotBeUsedToPresentPermanentInfo => '我们建议使用公告来发布临时性的流动信息而不是固定的常规信息，因为这可能损害用户体验，尤其是对于新用户而言。';
	@override String get dialogAnnouncementUxWarn => '同时存在 2 个或以上的对话框公告极有可能对用户体验产生负面的影响，建议谨慎使用。';
	@override String get silence => '不发送通知';
	@override String get silenceDescription => '开启后，此条公告将不会发送通知，也不强制用户阅读。';
}

// Path: misskey.initialAccountSetting_
class _StringsMisskeyInitialAccountSettingZhCn extends _StringsMisskeyInitialAccountSettingEnUs {
	_StringsMisskeyInitialAccountSettingZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => '账户创建完成了！';
	@override String get letsStartAccountSetup => '来进行帐户的初始设置吧。';
	@override String get letsFillYourProfile => '首先，来设定你的个人档案吧！';
	@override String get profileSetting => '个人资料设置';
	@override String get privacySetting => '隐私设置';
	@override String get theseSettingsCanEditLater => '也可以在稍后修改这里的设置。';
	@override String get youCanEditMoreSettingsInSettingsPageLater => '还可以在「设置」页面进行其它各种设置，稍后就来确认一下看看吧。';
	@override String get followUsers => '为了建立属于你自己的时间线，试着去关注你感兴趣的用户吧。';
	@override String pushNotificationDescription({required Object name}) => '启用推送通知的话，就可以在设备上接收来自 ${name} 的通知了。';
	@override String get initialAccountSettingCompleted => '初始设定已经完成了！';
	@override String haveFun({required Object name}) => '希望 ${name} 在这里玩得开心！';
	@override String youCanContinueTutorial({required Object name}) => '您可以继续了解 ${name}(Misskey) 的使用教程，也可以在此停止教程并立即开始使用它。\n';
	@override String get startTutorial => '开始教学';
	@override String get skipAreYouSure => '要跳过初始设置吗？';
	@override String get laterAreYouSure => '要稍后再进行初始设定吗？';
}

// Path: misskey.initialTutorial_
class _StringsMisskeyInitialTutorialZhCn extends _StringsMisskeyInitialTutorialEnUs {
	_StringsMisskeyInitialTutorialZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => '观看教学';
	@override String get title => '教学';
	@override String get wellDone => '做得好';
	@override String get skipAreYouSure => '是否退出教学？';
	@override late final _StringsMisskeyInitialTutorialLandingZhCn landing_ = _StringsMisskeyInitialTutorialLandingZhCn._(_root);
	@override late final _StringsMisskeyInitialTutorialNoteZhCn note_ = _StringsMisskeyInitialTutorialNoteZhCn._(_root);
	@override late final _StringsMisskeyInitialTutorialReactionZhCn reaction_ = _StringsMisskeyInitialTutorialReactionZhCn._(_root);
	@override late final _StringsMisskeyInitialTutorialTimelineZhCn timeline_ = _StringsMisskeyInitialTutorialTimelineZhCn._(_root);
	@override late final _StringsMisskeyInitialTutorialPostNoteZhCn postNote_ = _StringsMisskeyInitialTutorialPostNoteZhCn._(_root);
	@override late final _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveZhCn howToMakeAttachmentsSensitive_ = _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveZhCn._(_root);
	@override late final _StringsMisskeyInitialTutorialDoneZhCn done_ = _StringsMisskeyInitialTutorialDoneZhCn._(_root);
}

// Path: misskey.timelineDescription_
class _StringsMisskeyTimelineDescriptionZhCn extends _StringsMisskeyTimelineDescriptionEnUs {
	_StringsMisskeyTimelineDescriptionZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get home => '首页时间线可以查看您关注的账户的帖子。';
	@override String get local => '本地时间线可以查看这个服务器上所有用户发表的帖子。';
	@override String get social => '社交时间线将同时显示首页时间线和本地时间线的内容。';
	@override String get global => '全局时间线可以查看所有已联合的服务器上的帖子。';
}

// Path: misskey.serverRules_
class _StringsMisskeyServerRulesZhCn extends _StringsMisskeyServerRulesEnUs {
	_StringsMisskeyServerRulesZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get description => '在新用户注册前显示服务器的简单规则。推荐显示服务条款的主要内容。';
}

// Path: misskey.serverSettings_
class _StringsMisskeyServerSettingsZhCn extends _StringsMisskeyServerSettingsEnUs {
	_StringsMisskeyServerSettingsZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get iconUrl => '图标 URL';
	@override String appIconDescription({required Object host}) => '指定当 ${host} 显示为 app 时的图标。';
	@override String get appIconUsageExample => '如作为书签添加到 PWA 或手机主屏幕时';
	@override String get appIconStyleRecommendation => '因为有可能会被裁切为圆形或者圆角矩形，建议使用边缘带有留白背景的图标。';
	@override String appIconResolutionMustBe({required Object resolution}) => '分辨率必须为 ${resolution}。';
	@override String get manifestJsonOverride => '覆盖 manifest.json';
	@override String get shortName => '简称';
	@override String get shortNameDescription => '如果服务器的正式名称很长，可以用简称或者別名来替代。';
	@override String get fanoutTimelineDescription => '当启用时，可显著提高获取各种时间线时的性能，并减轻数据库的负荷。但是相对的 Redis 的内存使用量将会增加。如果服务器的内存不是很大，又或者运行不稳定的话可以把它关掉。';
	@override String get fanoutTimelineDbFallback => '回退到数据库';
	@override String get fanoutTimelineDbFallbackDescription => '当启用时，若时间线未被缓存，则将额外查询数据库。禁用该功能可通过不执行回退处理进一步减少服务器负载，但会限制可检索的时间线范围。';
}

// Path: misskey.accountMigration_
class _StringsMisskeyAccountMigrationZhCn extends _StringsMisskeyAccountMigrationEnUs {
	_StringsMisskeyAccountMigrationZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => '从别的账号迁移到此账户';
	@override String get moveFromSub => '为另一个账户建立别名';
	@override String moveFromLabel({required Object n}) => '迁移前的账户 ${n}';
	@override String get moveFromDescription => '如果迁移时需要继承其他账户的关注者，你需要创建一个别名。此操作需要在迁移前完成！\n请像这样输入要迁移的账户：@username@server.example.com\n如果要删除，请将输入字段留空，并保存（不推荐）。';
	@override String get moveTo => '把这个账户迁移到新的账户';
	@override String get moveToLabel => '迁移后的账户';
	@override String get moveCannotBeUndone => '一旦迁移账户，就无法撤销。';
	@override String get moveAccountDescription => '\n迁移到新帐户。\n　・现有的关注者自动关注新帐户\n　・此帐户的所有关注者都将被删除\n　・您将无法再使用此帐户发帖。\n关注者迁移是自动的，但关注中迁移必须手动完成。请在迁移前在此帐户上导出关注列表，并在迁移后立即在目标帐户上执行导入。\n屏蔽列表也是如此，因此您必须手动迁移它。\n（此描述适用于该服务器（Misskey v13.12.0 或更高版本）。其他 ActivityPub 软件（例如 Mastodon）的行为可能有所不同。）';
	@override String get moveAccountHowTo => '要进行账户迁移，请现在目标账户中为此账户建立一个别名。\n建立别名后，请像这样输入目标账户：@username@server.example.com';
	@override String get startMigration => '迁移';
	@override String migrationConfirm({required Object account}) => '确定要把此账户迁移到 ${account} 吗？一旦确定后，此操作无法取消，此账户也无法以原来的状态使用。\n同时，请确认迁移后的账户，已创造别名。';
	@override String get movedAndCannotBeUndone => '该账户已被迁移。\n迁移操作无法撤销。';
	@override String get postMigrationNote => '这个账户的关注会在迁移操作后的 24 小时后解除。该账户的「关注中」和「关注者」皆会变为 0。由于不会解除关注关系，你的关注者仍然可以继续查看该账户发补给关注者的帖子。';
	@override String get movedTo => '迁移后的账户';
}

// Path: misskey.achievements_
class _StringsMisskeyAchievementsZhCn extends _StringsMisskeyAchievementsEnUs {
	_StringsMisskeyAchievementsZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => '达成时间';
	@override late final _StringsMisskeyAchievementsTypesZhCn types_ = _StringsMisskeyAchievementsTypesZhCn._(_root);
}

// Path: misskey.role_
class _StringsMisskeyRoleZhCn extends _StringsMisskeyRoleEnUs {
	_StringsMisskeyRoleZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get new_ => '创建角色';
	@override String get edit => '编辑角色';
	@override String get name => '角色名称';
	@override String get description => '角色描述';
	@override String get permission => '角色权限';
	@override String get descriptionOfPermission => '<b>监察员</b>可以执行基本地审核操作。\n<b>管理员</b>可以更改服务器的所有设置。';
	@override String get assignTarget => '授权对象';
	@override String get descriptionOfAssignTarget => '<b>手动</b>指手动选择谁被包括在这个角色中。\n<b>符合条件</b>指设置条件以自动包括符合条件的用户。';
	@override String get manual => '手动';
	@override String get manualRoles => '手动角色';
	@override String get conditional => '符合条件';
	@override String get conditionalRoles => '条件角色';
	@override String get condition => '条件';
	@override String get isConditionalRole => '这是一个条件控制的角色。';
	@override String get isPublic => '角色公开';
	@override String get descriptionOfIsPublic => '任何人都可以看到分配该角色的用户。而用户的个人资料也将显示该角色。';
	@override String get options => '选项';
	@override String get policies => '策略';
	@override String get baseRole => '基本角色';
	@override String get useBaseValue => '使用基本角色的值';
	@override String get chooseRoleToAssign => '选择要分配的角色';
	@override String get iconUrl => '图标 URL';
	@override String get asBadge => '作为徽章显示';
	@override String get descriptionOfAsBadge => '开启后，用户名旁边将会出现角色图标。';
	@override String get isExplorable => '公开角色时间线';
	@override String get descriptionOfIsExplorable => '打开后将公开角色时间线。如果角色不是公开的，就无法公开时间线。';
	@override String get displayOrder => '显示顺序';
	@override String get descriptionOfDisplayOrder => '数字越大，显示位置越靠前。';
	@override String get canEditMembersByModerator => '允许监察者编辑成员';
	@override String get descriptionOfCanEditMembersByModerator => '如果选中，监察者和管理员都能够为用户分配/取消分配角色。如果未选中，则只有管理员可以执行此操作。';
	@override String get priority => '优先级';
	@override late final _StringsMisskeyRolePriorityZhCn priority_ = _StringsMisskeyRolePriorityZhCn._(_root);
	@override late final _StringsMisskeyRoleOptionsZhCn options_ = _StringsMisskeyRoleOptionsZhCn._(_root);
	@override late final _StringsMisskeyRoleConditionZhCn condition_ = _StringsMisskeyRoleConditionZhCn._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _StringsMisskeySensitiveMediaDetectionZhCn extends _StringsMisskeySensitiveMediaDetectionEnUs {
	_StringsMisskeySensitiveMediaDetectionZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get description => '使用机器学习技术自动检测敏感媒体，以便进行审核。服务器负载将略微增加。';
	@override String get sensitivity => '检测敏感度';
	@override String get sensitivityDescription => '敏感度较低，则误检（假阳性）会减少；敏感度较高，则漏检（假阴性）会减少。';
	@override String get setSensitiveFlagAutomatically => '自动设置 NSFW 标签';
	@override String get setSensitiveFlagAutomaticallyDescription => '即使关闭此配置，识别结果也会在内部保存。';
	@override String get analyzeVideos => '启用对视频的检测';
	@override String get analyzeVideosDescription => '除了静止图像之外，还对视频进行分析。服务器负载会略微增加。';
}

// Path: misskey.emailUnavailable_
class _StringsMisskeyEmailUnavailableZhCn extends _StringsMisskeyEmailUnavailableEnUs {
	_StringsMisskeyEmailUnavailableZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get used => '已经被使用过';
	@override String get format => '无效的格式';
	@override String get disposable => '不是永久可用的地址';
	@override String get mx => '邮件服务器不正确';
	@override String get smtp => '邮件服务器没有响应';
	@override String get banned => '无法使用此邮件地址注册';
}

// Path: misskey.ffVisibility_
class _StringsMisskeyFfVisibilityZhCn extends _StringsMisskeyFfVisibilityEnUs {
	_StringsMisskeyFfVisibilityZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get public => '公开';
	@override String get followers => '只有关注你的用户能看到';
	@override String get private => '私密';
}

// Path: misskey.signup_
class _StringsMisskeySignupZhCn extends _StringsMisskeySignupEnUs {
	_StringsMisskeySignupZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get almostThere => '即将完成';
	@override String get emailAddressInfo => '请输入您所使用的电子邮件地址';
	@override String emailSent({required Object email}) => '已将确认邮件发送至您输入的电子邮件地址 (${email})。请访问电子邮件中的链接以完成帐户创建。';
}

// Path: misskey.accountDelete_
class _StringsMisskeyAccountDeleteZhCn extends _StringsMisskeyAccountDeleteEnUs {
	_StringsMisskeyAccountDeleteZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => '删除帐户';
	@override String get mayTakeTime => '删除账号是一个性能损耗较大的处理，如果账号持有的内容数量和上传的文件数量较多的话，完成需要花费一段时间。';
	@override String get sendEmail => '账户删除完成后，将向注册的电子邮件地址发送通知。';
	@override String get requestAccountDelete => '请求删除账户';
	@override String get started => '账户删除过程已开始。';
	@override String get inProgress => '正在删除';
}

// Path: misskey.ad_
class _StringsMisskeyAdZhCn extends _StringsMisskeyAdEnUs {
	_StringsMisskeyAdZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get back => '返回';
	@override String get reduceFrequencyOfThisAd => '减少此广告的频率';
	@override String get hide => '不显示';
	@override String get timezoneinfo => '星期几是由服务器的时区所指定的。';
	@override String get adsSettings => '广告设置';
	@override String get notesPerOneAd => '在实时更新时间线中插入广告的间隔（帖子个数）';
	@override String get setZeroToDisable => '设为 0 将不在实时更新时间线中投放广告';
	@override String get adsTooClose => '广告投放时间间隔过短将可能显著损害用户体验。';
}

// Path: misskey.forgotPassword_
class _StringsMisskeyForgotPasswordZhCn extends _StringsMisskeyForgotPasswordEnUs {
	_StringsMisskeyForgotPasswordZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => '请输入您设置的电子邮箱地址，密码重置链接将发送至该邮箱上。';
	@override String get ifNoEmail => '如果您没有设置电子邮件地址，请联系管理员。';
	@override String get contactAdmin => '该服务器不支持发送电子邮件。如果您想重设密码，请联系管理员。';
}

// Path: misskey.gallery_
class _StringsMisskeyGalleryZhCn extends _StringsMisskeyGalleryEnUs {
	_StringsMisskeyGalleryZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get my => '我的图库';
	@override String get liked => '喜欢的图片';
	@override String get like => '喜欢';
	@override String get unlike => '取消喜欢';
}

// Path: misskey.email_
class _StringsMisskeyEmailZhCn extends _StringsMisskeyEmailEnUs {
	_StringsMisskeyEmailZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyEmailFollowZhCn follow_ = _StringsMisskeyEmailFollowZhCn._(_root);
	@override late final _StringsMisskeyEmailReceiveFollowRequestZhCn receiveFollowRequest_ = _StringsMisskeyEmailReceiveFollowRequestZhCn._(_root);
}

// Path: misskey.plugin_
class _StringsMisskeyPluginZhCn extends _StringsMisskeyPluginEnUs {
	_StringsMisskeyPluginZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get install => '安装插件';
	@override String get installWarn => '请不要安装不可信的插件。';
	@override String get manage => '管理插件...';
	@override String get viewSource => '查看源代码';
}

// Path: misskey.preferencesBackups_
class _StringsMisskeyPreferencesBackupsZhCn extends _StringsMisskeyPreferencesBackupsEnUs {
	_StringsMisskeyPreferencesBackupsZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get list => '已创建的备份';
	@override String get saveNew => '另存为';
	@override String get loadFile => '导入文件';
	@override String get apply => '应用于本设备';
	@override String get save => '覆盖存档';
	@override String get inputName => '请输入备份的名称';
	@override String get cannotSave => '无法保存';
	@override String nameAlreadyExists({required Object name}) => '备份名称 "${name}" 已经存在，请指定其他名称。';
	@override String applyConfirm({required Object name}) => '您是否要将备份 "${name}" 应用到当前设备上？当前设备现有配置将被丢弃。';
	@override String saveConfirm({required Object name}) => '您确定要覆盖保存 ${name} 吗？';
	@override String deleteConfirm({required Object name}) => '您确定要删除 ${name} 吗？';
	@override String renameConfirm({required Object old, required Object new_}) => '您确定要把“${old}”改为“${new_}”吗？';
	@override String get noBackups => '当前没有备份，“另存为”允许您在服务器上保存当前客户端的配置。';
	@override String createdAt({required Object date, required Object time}) => '创建日期：${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => '更新日期：${date} ${time}';
	@override String get cannotLoad => '无法加载';
	@override String get invalidFile => '无效的的文件格式。';
}

// Path: misskey.registry_
class _StringsMisskeyRegistryZhCn extends _StringsMisskeyRegistryEnUs {
	_StringsMisskeyRegistryZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get scope => '范围';
	@override String get key => '键';
	@override String get keys => '键';
	@override String get domain => '域';
	@override String get createKey => '创建键';
}

// Path: misskey.aboutMisskey_
class _StringsMisskeyAboutMisskeyZhCn extends _StringsMisskeyAboutMisskeyEnUs {
	_StringsMisskeyAboutMisskeyZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey 是由 syuilo 于 2014 年开发的开源软件。';
	@override String get contributors => '主要贡献者';
	@override String get allContributors => '全体贡献者';
	@override String get source => '源代码';
	@override String get original => '原版';
	@override String thisIsModifiedVersion({required Object name}) => '${name}正在使用修改后的 Misskey。';
	@override String get translation => '翻译 Misskey';
	@override String get donate => '赞助 Misskey';
	@override String get morePatrons => '还有很多其它的人也在支持我们，非常感谢🥰';
	@override String get patrons => '支持者';
	@override String get projectMembers => '项目成员';
}

// Path: misskey.displayOfSensitiveMedia_
class _StringsMisskeyDisplayOfSensitiveMediaZhCn extends _StringsMisskeyDisplayOfSensitiveMediaEnUs {
	_StringsMisskeyDisplayOfSensitiveMediaZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get respect => '隐藏敏感媒体';
	@override String get ignore => '显示敏感媒体';
	@override String get force => '隐藏所有内容';
}

// Path: misskey.instanceTicker_
class _StringsMisskeyInstanceTickerZhCn extends _StringsMisskeyInstanceTickerEnUs {
	_StringsMisskeyInstanceTickerZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get none => '不显示';
	@override String get remote => '仅远程用户';
	@override String get always => '始终显示';
}

// Path: misskey.serverDisconnectedBehavior_
class _StringsMisskeyServerDisconnectedBehaviorZhCn extends _StringsMisskeyServerDisconnectedBehaviorEnUs {
	_StringsMisskeyServerDisconnectedBehaviorZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get reload => '自动重载';
	@override String get dialog => '对话框警告';
	@override String get quiet => '安静警告';
}

// Path: misskey.channel_
class _StringsMisskeyChannelZhCn extends _StringsMisskeyChannelEnUs {
	_StringsMisskeyChannelZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get create => '创建频道';
	@override String get edit => '编辑频道';
	@override String get setBanner => '设置横幅';
	@override String get removeBanner => '删除横幅';
	@override String get featured => '热点';
	@override String get owned => '管理中';
	@override String get following => '正在关注';
	@override String usersCount({required Object n}) => '有 ${n} 人参与';
	@override String notesCount({required Object n}) => '有 ${n} 个帖子';
	@override String get nameAndDescription => '名称与描述';
	@override String get nameOnly => '仅名称';
	@override String get allowRenoteToExternal => '允许在频道外转帖及引用';
}

// Path: misskey.menuDisplay_
class _StringsMisskeyMenuDisplayZhCn extends _StringsMisskeyMenuDisplayEnUs {
	_StringsMisskeyMenuDisplayZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get sideFull => '横向';
	@override String get sideIcon => '横向(图标)';
	@override String get top => '顶部';
	@override String get hide => '隐藏';
}

// Path: misskey.wordMute_
class _StringsMisskeyWordMuteZhCn extends _StringsMisskeyWordMuteEnUs {
	_StringsMisskeyWordMuteZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get muteWords => '禁用词';
	@override String get muteWordsDescription => 'AND 条件用空格分隔，OR 条件用换行符分隔。';
	@override String get muteWordsDescription2 => '正则表达式用斜线包裹';
}

// Path: misskey.instanceMute_
class _StringsMisskeyInstanceMuteZhCn extends _StringsMisskeyInstanceMuteEnUs {
	_StringsMisskeyInstanceMuteZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => '屏蔽服务器中的所有帖子和转帖，包括这些服务器上的用户回复。';
	@override String get instanceMuteDescription2 => '一行一个';
	@override String get title => '隐藏服务器已设置的帖子。';
	@override String get heading => '屏蔽服务器';
}

// Path: misskey.theme_
class _StringsMisskeyThemeZhCn extends _StringsMisskeyThemeEnUs {
	_StringsMisskeyThemeZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get explore => '寻找主题';
	@override String get install => '安装主题';
	@override String get manage => '主题管理';
	@override String get code => '主题代码';
	@override String get description => '描述';
	@override String installed({required Object name}) => '${name} 已安装';
	@override String get installedThemes => '已安装的主题';
	@override String get builtinThemes => '标准主题';
	@override String get alreadyInstalled => '此主题已经安装';
	@override String get invalid => '主题格式错误';
	@override String get make => '制作主题';
	@override String get base => '基于';
	@override String get addConstant => '添加常量';
	@override String get constant => '常量';
	@override String get defaultValue => '默认值';
	@override String get color => '颜色';
	@override String get refProp => '查看属性';
	@override String get refConst => '查看常量';
	@override String get key => '主要';
	@override String get func => '函数';
	@override String get funcKind => '功能类型';
	@override String get argument => '参数';
	@override String get basedProp => '基于的属性名称';
	@override String get alpha => '不透明度';
	@override String get darken => '深色';
	@override String get lighten => '浅色';
	@override String get inputConstantName => '请输入常量名称';
	@override String get importInfo => '您可以在此处粘贴主题代码，将其导入到编辑器中';
	@override String deleteConstantConfirm({required Object const_}) => '确定要删除常量 ${const_} 吗?';
	@override late final _StringsMisskeyThemeKeysZhCn keys = _StringsMisskeyThemeKeysZhCn._(_root);
}

// Path: misskey.sfx_
class _StringsMisskeySfxZhCn extends _StringsMisskeySfxEnUs {
	_StringsMisskeySfxZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get note => '帖子';
	@override String get noteMy => '我的帖子';
	@override String get notification => '通知';
	@override String get antenna => '天线接收';
	@override String get channel => '频道通知';
	@override String get reaction => '选择回应时';
}

// Path: misskey.soundSettings_
class _StringsMisskeySoundSettingsZhCn extends _StringsMisskeySoundSettingsEnUs {
	_StringsMisskeySoundSettingsZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get driveFile => '使用网盘内的音频';
	@override String get driveFileWarn => '选择网盘上的文件';
	@override String get driveFileTypeWarn => '不支持此文件';
	@override String get driveFileTypeWarnDescription => '请选择音频文件';
	@override String get driveFileDurationWarn => '音频过长';
	@override String get driveFileDurationWarnDescription => '使用长音频可能会影响 Misskey 的使用。即使这样也要继续吗？';
}

// Path: misskey.ago_
class _StringsMisskeyAgoZhCn extends _StringsMisskeyAgoEnUs {
	_StringsMisskeyAgoZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get future => '未来';
	@override String get justNow => '最近';
	@override String secondsAgo({required Object n}) => '${n} 秒前';
	@override String minutesAgo({required Object n}) => '${n} 分前';
	@override String hoursAgo({required Object n}) => '${n} 小时前';
	@override String daysAgo({required Object n}) => '${n} 日前';
	@override String weeksAgo({required Object n}) => '${n} 周前';
	@override String monthsAgo({required Object n}) => '${n} 月前';
	@override String yearsAgo({required Object n}) => '${n} 年前';
	@override String get invalid => '没有';
}

// Path: misskey.timeIn_
class _StringsMisskeyTimeInZhCn extends _StringsMisskeyTimeInEnUs {
	_StringsMisskeyTimeInZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String seconds({required Object n}) => '${n}秒后';
	@override String minutes({required Object n}) => '${n} 分后';
	@override String hours({required Object n}) => '${n} 小时后';
	@override String days({required Object n}) => '${n}天后';
	@override String weeks({required Object n}) => '${n} 周后';
	@override String months({required Object n}) => '${n} 月后';
	@override String years({required Object n}) => '${n} 年后';
}

// Path: misskey.time_
class _StringsMisskeyTimeZhCn extends _StringsMisskeyTimeEnUs {
	_StringsMisskeyTimeZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get second => '秒';
	@override String get minute => '分';
	@override String get hour => '小时';
	@override String get day => '日';
}

// Path: misskey.x2fa_
class _StringsMisskeyX2faZhCn extends _StringsMisskeyX2faEnUs {
	_StringsMisskeyX2faZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => '此设备已被注册';
	@override String get registerTOTP => '开始设置认证应用';
	@override String step1({required Object a, required Object b}) => '首先，在您的设备上安装验证应用，例如 ${a} 或 ${b}。';
	@override String get step2 => '然后，扫描屏幕上显示的二维码。';
	@override String get step2Click => '通过点击二维码，您可以使用设备上安装的身份验证器应用程序或密钥环进行注册';
	@override String get step2Uri => '如果使用桌面应用程序的话，请输入下面的 URI';
	@override String get step3Title => '输入验证码';
	@override String get step3 => '输入您的应用提供的动态口令以完成设置。';
	@override String get setupCompleted => '设置完成';
	@override String get step4 => '从现在开始，任何登录操作都将要求您提供动态口令。';
	@override String get securityKeyNotSupported => '您的浏览器不支持安全密钥。';
	@override String get registerTOTPBeforeKey => '要注册安全密钥或 Passkey，请先设置验证器应用程序。';
	@override String get securityKeyInfo => '注册兼容 WebAuthn 的密钥，例如支持 FIDO2 的硬件安全密钥、设备上的生物识别功能、PIN 码以及 Passkey 等。';
	@override String get registerSecurityKey => '注册安全密钥或 Passkey';
	@override String get securityKeyName => '输入密钥名称';
	@override String get tapSecurityKey => '请按照浏览器说明操作来注册安全密钥或 Passkey。';
	@override String get removeKey => '删除安全密钥';
	@override String removeKeyConfirm({required Object name}) => '您确定要删除 ${name} 吗？';
	@override String get whyTOTPOnlyRenew => '如果注册了安全密钥，则无法取消验证器应用程序上的设置。';
	@override String get renewTOTP => '重置验证器应用程序';
	@override String get renewTOTPConfirm => '当前验证器应用程序的验证码将不再有效';
	@override String get renewTOTPOk => '重新配置';
	@override String get renewTOTPCancel => '不用，谢谢';
	@override String get checkBackupCodesBeforeCloseThisWizard => '在关闭此窗口前，请确认下面的备用代码';
	@override String get backupCodes => '备用代码';
	@override String get backupCodesDescription => '如果无法使用认证应用，可以使用以下的备用代码来访问账户。请务必将这些代码保存在安全的地方。每个代码仅可使用一次。';
	@override String get backupCodeUsedWarning => '已使用备用代码。如果无法使用认证应用，请尽快重新设定。';
	@override String get backupCodesExhaustedWarning => '已使用完所有的备用代码。如果无法使用认证应用，将无法再访问您的账户。请再次设定认证应用。';
}

// Path: misskey.permissions_
class _StringsMisskeyPermissionsZhCn extends _StringsMisskeyPermissionsEnUs {
	_StringsMisskeyPermissionsZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get readAccount => '查看账户信息';
	@override String get writeAccount => '更改帐户信息';
	@override String get readBlocks => '查看黑名单';
	@override String get writeBlocks => '编辑黑名单';
	@override String get readDrive => '查看网盘';
	@override String get writeDrive => '管理网盘文件';
	@override String get readFavorites => '查看收藏夹';
	@override String get writeFavorites => '编辑收藏夹';
	@override String get readFollowing => '查看关注信息';
	@override String get writeFollowing => '关注/取消关注';
	@override String get readMessaging => '查看消息';
	@override String get writeMessaging => '撰写或删除消息';
	@override String get readMutes => '查看屏蔽列表';
	@override String get writeMutes => '编辑屏蔽列表';
	@override String get writeNotes => '撰写或删除帖子';
	@override String get readNotifications => '查看通知';
	@override String get writeNotifications => '管理通知';
	@override String get readReactions => '查看回应';
	@override String get writeReactions => '回应操作';
	@override String get writeVotes => '投票';
	@override String get readPages => '查看页面';
	@override String get writePages => '操作页面';
	@override String get readPageLikes => '查看喜欢的页面';
	@override String get writePageLikes => '操作喜欢的页面';
	@override String get readUserGroups => '查看用户组';
	@override String get writeUserGroups => '操作用户组';
	@override String get readChannels => '查看频道';
	@override String get writeChannels => '管理频道';
	@override String get readGallery => '浏览图库';
	@override String get writeGallery => '操作图库';
	@override String get readGalleryLikes => '读取喜欢的图片';
	@override String get writeGalleryLikes => '操作喜欢的图片';
	@override String get readFlash => '查看 Play';
	@override String get writeFlash => '编辑 Play';
	@override String get readFlashLikes => '查看 Play 的点赞';
	@override String get writeFlashLikes => '编辑 Play 的点赞列表';
	@override String get readAdminAbuseUserReports => '查看来自用户的举报';
	@override String get writeAdminDeleteAccount => '删除用户账户';
	@override String get writeAdminDeleteAllFilesOfAUser => '删除用户所有的文件';
	@override String get readAdminIndexStats => '查看数据库索引相关的信息';
	@override String get readAdminTableStats => '查看数据库表相关的信息';
	@override String get readAdminUserIps => '查看用户 IP 地址';
	@override String get readAdminMeta => '查看实例的元数据';
	@override String get writeAdminResetPassword => '重置用户密码';
	@override String get writeAdminResolveAbuseUserReport => '将来自用户的报告标记为「已解决」';
	@override String get writeAdminSendEmail => '发送邮件';
	@override String get readAdminServerInfo => '查看服务器信息';
	@override String get readAdminShowModerationLog => '查看管理日志';
	@override String get readAdminShowUser => '查看用户的非公开信息';
	@override String get readAdminShowUsers => '查看用户的非公开信息';
	@override String get writeAdminSuspendUser => '冻结用户';
	@override String get writeAdminUnsetUserAvatar => '删除用户头像';
	@override String get writeAdminUnsetUserBanner => '删除用户横幅';
	@override String get writeAdminUnsuspendUser => '解除用户冻结';
	@override String get writeAdminMeta => '编辑实例元数据';
	@override String get writeAdminUserNote => '编辑管理笔记';
	@override String get writeAdminRoles => '编辑角色';
	@override String get readAdminRoles => '查看角色';
	@override String get writeAdminRelays => '编辑中继';
	@override String get readAdminRelays => '查看中继';
	@override String get writeAdminInviteCodes => '编辑邀请码';
	@override String get readAdminInviteCodes => '查看邀请码';
	@override String get writeAdminAnnouncements => '编辑公告';
	@override String get readAdminAnnouncements => '查看公告';
	@override String get writeAdminAvatarDecorations => '编辑头像挂件';
	@override String get readAdminAvatarDecorations => '查看头像挂件';
	@override String get writeAdminFederation => '编辑联合相关信息';
	@override String get writeAdminAccount => '编辑用户账户';
	@override String get readAdminAccount => '查看用户相关情报';
	@override String get writeAdminEmoji => '编辑表情文字';
	@override String get readAdminEmoji => '查看表情文字';
	@override String get writeAdminQueue => '编辑作业队列';
	@override String get readAdminQueue => '查看作业队列相关情报';
	@override String get writeAdminPromo => '运营推广说明';
	@override String get writeAdminDrive => '编辑用户网盘';
	@override String get readAdminDrive => '查看用户网盘相关情报';
	@override String get readAdminStream => '使用管理员用的 Websocket API';
	@override String get writeAdminAd => '编辑广告';
	@override String get readAdminAd => '查看广告';
	@override String get writeInviteCodes => '生成邀请码';
	@override String get readInviteCodes => '获取已发行的邀请码';
	@override String get writeClipFavorite => '编辑便签的点赞';
	@override String get readClipFavorite => '查看便签的点赞';
	@override String get readFederation => '查看联合相关信息';
	@override String get writeReportAbuse => '举报用户';
}

// Path: misskey.auth_
class _StringsMisskeyAuthZhCn extends _StringsMisskeyAuthEnUs {
	_StringsMisskeyAuthZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => '应用程序授权许可';
	@override String shareAccess({required Object name}) => '您要授权允许 “${name}” 访问您的帐户吗？';
	@override String get shareAccessAsk => '您确定要授权此应用程序访问您的帐户吗？';
	@override String permission({required Object name}) => '${name} 需要以下权限';
	@override String get permissionAsk => '这个应用程序需要以下权限';
	@override String get pleaseGoBack => '请返回到应用程序';
	@override String get callback => '回到应用程序';
	@override String get denied => '拒绝访问';
	@override String get pleaseLogin => '在对应用进行授权许可之前，请先登录';
}

// Path: misskey.antennaSources_
class _StringsMisskeyAntennaSourcesZhCn extends _StringsMisskeyAntennaSourcesEnUs {
	_StringsMisskeyAntennaSourcesZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get all => '所有帖子';
	@override String get homeTimeline => '已关注用户的帖子';
	@override String get users => '来自指定用户的帖子';
	@override String get userList => '来自指定列表中的帖子';
	@override String get userBlacklist => '除掉已选择用户后所有的帖子';
}

// Path: misskey.weekday_
class _StringsMisskeyWeekdayZhCn extends _StringsMisskeyWeekdayEnUs {
	_StringsMisskeyWeekdayZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get sunday => '星期日';
	@override String get monday => '星期一';
	@override String get tuesday => '星期二';
	@override String get wednesday => '星期三';
	@override String get thursday => '星期四';
	@override String get friday => '星期五';
	@override String get saturday => '星期六';
}

// Path: misskey.widgets_
class _StringsMisskeyWidgetsZhCn extends _StringsMisskeyWidgetsEnUs {
	_StringsMisskeyWidgetsZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get profile => '个人资料';
	@override String get instanceInfo => '服务器信息';
	@override String get memo => '便签';
	@override String get notifications => '通知';
	@override String get timeline => '时间线';
	@override String get calendar => '日历';
	@override String get trends => '趋势';
	@override String get clock => '时钟';
	@override String get rss => 'RSS 阅读器';
	@override String get rssTicker => 'RSS Ticker';
	@override String get activity => '活动';
	@override String get photos => '照片';
	@override String get digitalClock => '数字时钟';
	@override String get unixClock => 'UNIX 时钟';
	@override String get federation => '联合';
	@override String get instanceCloud => '服务器云';
	@override String get postForm => '投稿窗口';
	@override String get slideshow => '幻灯片展示';
	@override String get button => '按钮';
	@override String get onlineUsers => '在线用户';
	@override String get jobQueue => '作业队列';
	@override String get serverMetric => '服务器指标';
	@override String get aiscript => 'AiScript 控制台';
	@override String get aiscriptApp => 'AiScript App';
	@override String get aichan => '小蓝';
	@override String get userList => '用户列表';
	@override late final _StringsMisskeyWidgetsUserListZhCn userList_ = _StringsMisskeyWidgetsUserListZhCn._(_root);
	@override String get clicker => '点击器';
	@override String get birthdayFollowings => '今天是他们的生日';
}

// Path: misskey.cw_
class _StringsMisskeyCwZhCn extends _StringsMisskeyCwEnUs {
	_StringsMisskeyCwZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get hide => '隐藏';
	@override String get show => '查看更多';
	@override String chars({required Object count}) => '${count} 个字符';
	@override String files({required Object count}) => '${count} 个文件';
}

// Path: misskey.poll_
class _StringsMisskeyPollZhCn extends _StringsMisskeyPollEnUs {
	_StringsMisskeyPollZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => '需要至少两个选项';
	@override String choiceN({required Object n}) => '选择 ${n}';
	@override String get noMore => '无法再添加更多了';
	@override String get canMultipleVote => '允许多个投票';
	@override String get expiration => '截止时间';
	@override String get infinite => '永久';
	@override String get at => '指定日期';
	@override String get after => '指定时间';
	@override String get deadlineDate => '截止日期';
	@override String get deadlineTime => '小时';
	@override String get duration => '时长';
	@override String votesCount({required Object n}) => '${n} 票';
	@override String totalVotes({required Object n}) => '总票数 ${n}';
	@override String get vote => '投票';
	@override String get showResult => '显示结果';
	@override String get voted => '已投票';
	@override String get closed => '已截止';
	@override String remainingDays({required Object d, required Object h}) => '${d} 天 ${h} 小时后截止';
	@override String remainingHours({required Object h, required Object m}) => '${h} 小时 ${m} 分后截止';
	@override String remainingMinutes({required Object m, required Object s}) => '${m} 分 ${s} 秒后截止';
	@override String remainingSeconds({required Object s}) => '${s} 秒后截止';
}

// Path: misskey.visibility_
class _StringsMisskeyVisibilityZhCn extends _StringsMisskeyVisibilityEnUs {
	_StringsMisskeyVisibilityZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get public => '公开';
	@override String get publicDescription => '您的帖子将出现在全局时间线上';
	@override String get home => '首页';
	@override String get homeDescription => '仅发送至首页的时间线';
	@override String get followers => '仅关注者';
	@override String get followersDescription => '仅发送至关注者';
	@override String get specified => '指定用户';
	@override String get specifiedDescription => '仅发送至指定用户';
	@override String get disableFederation => '不参与联合';
	@override String get disableFederationDescription => '不发送到其他服务器';
}

// Path: misskey.postForm_
class _StringsMisskeyPostFormZhCn extends _StringsMisskeyPostFormEnUs {
	_StringsMisskeyPostFormZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => '回复这个帖子...';
	@override String get quotePlaceholder => '引用这个帖子...';
	@override String get channelPlaceholder => '发布到频道…';
	@override late final _StringsMisskeyPostFormPlaceholdersZhCn placeholders_ = _StringsMisskeyPostFormPlaceholdersZhCn._(_root);
}

// Path: misskey.profile_
class _StringsMisskeyProfileZhCn extends _StringsMisskeyProfileEnUs {
	_StringsMisskeyProfileZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '昵称';
	@override String get username => '用户名';
	@override String get description => '个人简介';
	@override String get youCanIncludeHashtags => '你可以在个人简介中包含一些#标签。';
	@override String get metadata => '附加信息';
	@override String get metadataEdit => '附加信息编辑';
	@override String get metadataDescription => '最多可以在个人资料中以表格形式显示四条其他信息。';
	@override String get metadataLabel => '标签';
	@override String get metadataContent => '内容';
	@override String get changeAvatar => '修改头像';
	@override String get changeBanner => '修改横幅';
	@override String get verifiedLinkDescription => '如果将内容设置为 URL，当链接所指向的网页内包含自己的个人资料链接时，可以显示一个已验证图标。';
	@override String avatarDecorationMax({required Object max}) => '最多可添加 ${max} 个挂件';
}

// Path: misskey.exportOrImport_
class _StringsMisskeyExportOrImportZhCn extends _StringsMisskeyExportOrImportEnUs {
	_StringsMisskeyExportOrImportZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get allNotes => '所有帖子';
	@override String get favoritedNotes => '收藏的帖子';
	@override String get clips => '便签';
	@override String get followingList => '关注中';
	@override String get muteList => '屏蔽';
	@override String get blockingList => '拉黑';
	@override String get userLists => '列表';
	@override String get excludeMutingUsers => '排除屏蔽用户';
	@override String get excludeInactiveUsers => '排除不活跃用户';
	@override String get withReplies => '在时间线中包含导入用户的回复';
}

// Path: misskey.charts_
class _StringsMisskeyChartsZhCn extends _StringsMisskeyChartsEnUs {
	_StringsMisskeyChartsZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get federation => '联合';
	@override String get apRequest => '请求';
	@override String get usersIncDec => '用户数量：增加/减少';
	@override String get usersTotal => '用户总数';
	@override String get activeUsers => '活跃用户数';
	@override String get notesIncDec => '帖子：增加/减少';
	@override String get localNotesIncDec => '本地帖子量增减';
	@override String get remoteNotesIncDec => '远程帖子量增减';
	@override String get notesTotal => '帖子总数';
	@override String get filesIncDec => '文件总数增减';
	@override String get filesTotal => '合计文件总数';
	@override String get storageUsageIncDec => '存储空间用量增减';
	@override String get storageUsageTotal => '合计存储空间用量';
}

// Path: misskey.instanceCharts_
class _StringsMisskeyInstanceChartsZhCn extends _StringsMisskeyInstanceChartsEnUs {
	_StringsMisskeyInstanceChartsZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get requests => '请求';
	@override String get users => '用户数量：增加/减少';
	@override String get usersTotal => '用户总计';
	@override String get notes => '帖子：增加/减少';
	@override String get notesTotal => '帖子总计';
	@override String get ff => '关注/被关注：数量变化';
	@override String get ffTotal => '关注/被关注者总计';
	@override String get cacheSize => '缓存大小：增加/减少';
	@override String get cacheSizeTotal => '缓存大小总计';
	@override String get files => '文件总数增减';
	@override String get filesTotal => '文件数总计';
}

// Path: misskey.timelines_
class _StringsMisskeyTimelinesZhCn extends _StringsMisskeyTimelinesEnUs {
	_StringsMisskeyTimelinesZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get home => '首页';
	@override String get local => '本地';
	@override String get social => '社交';
	@override String get global => '全局';
}

// Path: misskey.play_
class _StringsMisskeyPlayZhCn extends _StringsMisskeyPlayEnUs {
	_StringsMisskeyPlayZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get new_ => '创建 Play';
	@override String get edit => '编辑 Play';
	@override String get created => '创建了一个 Play';
	@override String get updated => '更新了 Play';
	@override String get deleted => '删除了 Play';
	@override String get pageSetting => 'Play 设置';
	@override String get editThisPage => '编辑此 Play';
	@override String get viewSource => '查看源代码';
	@override String get my => '我的 Play';
	@override String get liked => '点赞的 Play';
	@override String get featured => '热门';
	@override String get title => '标题';
	@override String get script => '脚本';
	@override String get summary => '描述';
}

// Path: misskey.pages_
class _StringsMisskeyPagesZhCn extends _StringsMisskeyPagesEnUs {
	_StringsMisskeyPagesZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get newPage => '创建页面';
	@override String get editPage => '编辑页面';
	@override String get readPage => '查看页面';
	@override String get created => '页面已创建';
	@override String get updated => '页面已更新';
	@override String get deleted => '该页面已被删除';
	@override String get pageSetting => '页面设置';
	@override String get nameAlreadyExists => '该页面 URL 已存在';
	@override String get invalidNameTitle => '无效的页面 URL';
	@override String get invalidNameText => '请确认该项不为空';
	@override String get editThisPage => '编辑此页面';
	@override String get viewSource => '查看源代码';
	@override String get viewPage => '查看页面';
	@override String get like => '赞';
	@override String get unlike => '取消喜欢';
	@override String get my => '我的页面';
	@override String get liked => '喜欢的页面';
	@override String get featured => '热门';
	@override String get inspector => '检查器';
	@override String get contents => '内容';
	@override String get content => '页面内容';
	@override String get variables => '变量';
	@override String get title => '标题';
	@override String get url => '页面 URL';
	@override String get summary => '页面摘要';
	@override String get alignCenter => '居中';
	@override String get hideTitleWhenPinned => '置顶时隐藏标题';
	@override String get font => '字体';
	@override String get fontSerif => '衬线字体';
	@override String get fontSansSerif => '无衬线字体';
	@override String get eyeCatchingImageSet => '设置封面图片';
	@override String get eyeCatchingImageRemove => '删除封面图片';
	@override String get chooseBlock => '添加块';
	@override String get selectType => '选择类型';
	@override String get contentBlocks => '内容';
	@override String get inputBlocks => '输入';
	@override String get specialBlocks => '特殊';
	@override late final _StringsMisskeyPagesBlocksZhCn blocks = _StringsMisskeyPagesBlocksZhCn._(_root);
}

// Path: misskey.relayStatus_
class _StringsMisskeyRelayStatusZhCn extends _StringsMisskeyRelayStatusEnUs {
	_StringsMisskeyRelayStatusZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get requesting => '待批准';
	@override String get accepted => '已批准';
	@override String get rejected => '已拒绝';
}

// Path: misskey.notification_
class _StringsMisskeyNotificationZhCn extends _StringsMisskeyNotificationEnUs {
	_StringsMisskeyNotificationZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => '文件已上传';
	@override String youGotMention({required Object name}) => '来自${name}的提及';
	@override String youGotReply({required Object name}) => '来自${name}的回复';
	@override String youGotQuote({required Object name}) => '来自${name}的引用';
	@override String youRenoted({required Object name}) => '来自${name}的转发';
	@override String get youWereFollowed => '关注了你。';
	@override String get youReceivedFollowRequest => '您有新的关注请求';
	@override String get yourFollowRequestAccepted => '您的关注请求已通过';
	@override String get pollEnded => '问卷调查结果已生成。';
	@override String get newNote => '新的帖子';
	@override String unreadAntennaNote({required Object name}) => '天线 ${name}';
	@override String get roleAssigned => '授予的角色';
	@override String get emptyPushNotificationMessage => '推送通知已更新';
	@override String get achievementEarned => '获得成就';
	@override String get testNotification => '测试通知';
	@override String get checkNotificationBehavior => '检查通知显示';
	@override String get sendTestNotification => '发送测试通知';
	@override String get notificationWillBeDisplayedLikeThis => '通知将会这样表示';
	@override String reactedBySomeUsers({required Object n}) => '${n} 人回应了';
	@override String renotedBySomeUsers({required Object n}) => '${n} 人转发了';
	@override String followedBySomeUsers({required Object n}) => '被 ${n} 人关注';
	@override String get flushNotification => '重置通知历史';
	@override late final _StringsMisskeyNotificationTypesZhCn types_ = _StringsMisskeyNotificationTypesZhCn._(_root);
	@override late final _StringsMisskeyNotificationActionsZhCn actions_ = _StringsMisskeyNotificationActionsZhCn._(_root);
}

// Path: misskey.deck_
class _StringsMisskeyDeckZhCn extends _StringsMisskeyDeckEnUs {
	_StringsMisskeyDeckZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => '总是显示主列';
	@override String get columnAlign => '列对齐';
	@override String get addColumn => '添加列';
	@override String get configureColumn => '列设置';
	@override String get swapLeft => '向左移动';
	@override String get swapRight => '向右移动';
	@override String get swapUp => '向上移动';
	@override String get swapDown => '向下移动';
	@override String get stackLeft => '向左折叠';
	@override String get popRight => '向右弹出';
	@override String get profile => '配置文件';
	@override String get newProfile => '新建配置文件';
	@override String get deleteProfile => '删除配置文件';
	@override String get introduction => '将各列进行组合以创建您自己的界面！';
	@override String get introduction2 => '您可以随时通过屏幕右侧的 + 来添加列';
	@override String get widgetsIntroduction => '从列菜单中，选择“小工具编辑”来添加小工具';
	@override String get useSimpleUiForNonRootPages => '用简易UI表示非根页面';
	@override String get usedAsMinWidthWhenFlexible => '「自适应宽度」被启用的时候，这就是最小的宽度';
	@override String get flexible => '自适应宽度';
	@override late final _StringsMisskeyDeckColumnsZhCn columns_ = _StringsMisskeyDeckColumnsZhCn._(_root);
}

// Path: misskey.dialog_
class _StringsMisskeyDialogZhCn extends _StringsMisskeyDialogEnUs {
	_StringsMisskeyDialogZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => '已经超过了最大字符数! 当前字符数 ${current} / 限制字符数 ${max}';
	@override String charactersBelow({required Object current, required Object min}) => '低于最小字符数！当前字符数 ${current} / 限制字符数 ${min}';
}

// Path: misskey.disabledTimeline_
class _StringsMisskeyDisabledTimelineZhCn extends _StringsMisskeyDisabledTimelineEnUs {
	_StringsMisskeyDisabledTimelineZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '时间线已禁用';
	@override String get description => '您不能在当前角色使用时间线。';
}

// Path: misskey.drivecleaner_
class _StringsMisskeyDrivecleanerZhCn extends _StringsMisskeyDrivecleanerEnUs {
	_StringsMisskeyDrivecleanerZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => '按大小降序排列';
	@override String get orderByCreatedAtAsc => '按添加日期降序排列';
}

// Path: misskey.webhookSettings_
class _StringsMisskeyWebhookSettingsZhCn extends _StringsMisskeyWebhookSettingsEnUs {
	_StringsMisskeyWebhookSettingsZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => '创建 Webhook';
	@override String get name => '名称';
	@override String get secret => '密钥';
	@override String get events => '何时运行 Webhook';
	@override String get active => '已启用';
	@override late final _StringsMisskeyWebhookSettingsEventsZhCn events_ = _StringsMisskeyWebhookSettingsEventsZhCn._(_root);
}

// Path: misskey.moderationLogTypes_
class _StringsMisskeyModerationLogTypesZhCn extends _StringsMisskeyModerationLogTypesEnUs {
	_StringsMisskeyModerationLogTypesZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get createRole => '创建角色';
	@override String get deleteRole => '删除角色';
	@override String get updateRole => '更新角色';
	@override String get assignRole => '分配角色';
	@override String get unassignRole => '取消分配角色';
	@override String get suspend => '冻结';
	@override String get unsuspend => '解除冻结';
	@override String get addCustomEmoji => '添加自定义表情符号';
	@override String get updateCustomEmoji => '更新自定义表情符号';
	@override String get deleteCustomEmoji => '删除自定义表情符号';
	@override String get updateServerSettings => '更新服务器设置';
	@override String get updateUserNote => '更新管理笔记';
	@override String get deleteDriveFile => '删除文件';
	@override String get deleteNote => '删除帖子';
	@override String get createGlobalAnnouncement => '创建全体通知';
	@override String get createUserAnnouncement => '创建用户通知';
	@override String get updateGlobalAnnouncement => '更新全体通知';
	@override String get updateUserAnnouncement => '更新用户通知';
	@override String get deleteGlobalAnnouncement => '删除全体通知';
	@override String get deleteUserAnnouncement => '删除用户通知';
	@override String get resetPassword => '重置密码';
	@override String get suspendRemoteInstance => '停止远程服务器';
	@override String get unsuspendRemoteInstance => '恢复远程服务器';
	@override String get updateRemoteInstanceNote => '更新远程服务器的管理笔记';
	@override String get markSensitiveDriveFile => '标记网盘文件为敏感媒体';
	@override String get unmarkSensitiveDriveFile => '取消标记网盘文件为敏感媒体';
	@override String get resolveAbuseReport => '处理举报';
	@override String get createInvitation => '生成邀请码';
	@override String get createAd => '创建了广告';
	@override String get deleteAd => '删除了广告';
	@override String get updateAd => '更新了广告';
	@override String get createAvatarDecoration => '新建头像挂件';
	@override String get updateAvatarDecoration => '更新头像挂件';
	@override String get deleteAvatarDecoration => '删除头像挂件';
	@override String get unsetUserAvatar => '清除用户头像';
	@override String get unsetUserBanner => '清除用户横幅';
}

// Path: misskey.fileViewer_
class _StringsMisskeyFileViewerZhCn extends _StringsMisskeyFileViewerEnUs {
	_StringsMisskeyFileViewerZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '文件信息';
	@override String get type => '文件类型';
	@override String get size => '文件大小';
	@override String get url => 'URL';
	@override String get uploadedAt => '添加日期';
	@override String get attachedNotes => '附加到的帖子';
	@override String get thisPageCanBeSeenFromTheAuthor => '此页只能被该文件的上传者查看。';
}

// Path: misskey.externalResourceInstaller_
class _StringsMisskeyExternalResourceInstallerZhCn extends _StringsMisskeyExternalResourceInstallerEnUs {
	_StringsMisskeyExternalResourceInstallerZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '从外部站点安装';
	@override String get checkVendorBeforeInstall => '请在安装前确保来源可靠';
	@override late final _StringsMisskeyExternalResourceInstallerPluginZhCn plugin_ = _StringsMisskeyExternalResourceInstallerPluginZhCn._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerThemeZhCn theme_ = _StringsMisskeyExternalResourceInstallerThemeZhCn._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerMetaZhCn meta_ = _StringsMisskeyExternalResourceInstallerMetaZhCn._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerVendorInfoZhCn vendorInfo_ = _StringsMisskeyExternalResourceInstallerVendorInfoZhCn._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsZhCn errors_ = _StringsMisskeyExternalResourceInstallerErrorsZhCn._(_root);
}

// Path: misskey.dataSaver_
class _StringsMisskeyDataSaverZhCn extends _StringsMisskeyDataSaverEnUs {
	_StringsMisskeyDataSaverZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyDataSaverMediaZhCn media_ = _StringsMisskeyDataSaverMediaZhCn._(_root);
	@override late final _StringsMisskeyDataSaverAvatarZhCn avatar_ = _StringsMisskeyDataSaverAvatarZhCn._(_root);
	@override late final _StringsMisskeyDataSaverUrlPreviewZhCn urlPreview_ = _StringsMisskeyDataSaverUrlPreviewZhCn._(_root);
	@override late final _StringsMisskeyDataSaverCodeZhCn code_ = _StringsMisskeyDataSaverCodeZhCn._(_root);
}

// Path: misskey.hemisphere_
class _StringsMisskeyHemisphereZhCn extends _StringsMisskeyHemisphereEnUs {
	_StringsMisskeyHemisphereZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get N => '北半球';
	@override String get S => '南半球';
	@override String get caption => '在某些客户端设置中用来确定季节';
}

// Path: misskey.reversi_
class _StringsMisskeyReversiZhCn extends _StringsMisskeyReversiEnUs {
	_StringsMisskeyReversiZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get reversi => '黑白棋';
	@override String get gameSettings => '对局设置';
	@override String get blackOrWhite => '先手/后手';
	@override String blackIs({required Object name}) => '${name}执黑(先手)';
	@override String get rules => '规则';
	@override String get thisGameIsStartedSoon => '对局即将开始';
	@override String get waitingForOther => '等待对手准备';
	@override String get waitingForMe => '等待你的准备';
	@override String get waitingBoth => '请准备';
	@override String get ready => '准备就绪';
	@override String get cancelReady => '重新准备';
	@override String get opponentTurn => '对手的回合';
	@override String get myTurn => '你的回合';
	@override String turnOf({required Object name}) => '${name}的回合';
	@override String pastTurnOf({required Object name}) => '${name}的回合';
	@override String get surrender => '认输';
	@override String get surrendered => '已认输';
	@override String get timeout => '超时';
	@override String get drawn => '平局';
	@override String won({required Object name}) => '${name}获胜';
	@override String get black => '黑';
	@override String get white => '白';
	@override String get total => '总计';
	@override String turnCount({required Object count}) => '第${count}回合';
	@override String get myGames => '我的对局';
	@override String get allGames => '所有对局';
	@override String get ended => '结束';
	@override String get playing => '对局中';
	@override String get canPutEverywhere => '无限制放置模式';
	@override String get timeLimitForEachTurn => '1回合的时间限制';
	@override String get freeMatch => '自由匹配';
	@override String get lookingForPlayer => '正在寻找对手';
	@override String get gameCanceled => '对局被取消了';
	@override String get shareToTlTheGameWhenStart => '开始时在时间线发布对局';
	@override String get iStartedAGame => '对局开始！#MisskeyReversi';
	@override String get opponentHasSettingsChanged => '对手更改了设定';
	@override String get allowIrregularRules => '允许非常规规则（完全自由）';
	@override String get disallowIrregularRules => '禁止非常规规则';
	@override String get showBoardLabels => '显示行号和列号';
	@override String get useAvatarAsStone => '用头像作为棋子';
}

// Path: misskey.offlineScreen_
class _StringsMisskeyOfflineScreenZhCn extends _StringsMisskeyOfflineScreenEnUs {
	_StringsMisskeyOfflineScreenZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '离线——无法连接到服务器';
	@override String get header => '无法连接到服务器';
}

// Path: misskey.bubbleGame_.score_
class _StringsMisskeyBubbleGameScoreZhCn extends _StringsMisskeyBubbleGameScoreEnUs {
	_StringsMisskeyBubbleGameScoreZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get score => '得分';
	@override String get scoreYen => '赚到的钱';
	@override String get highScore => '最高分';
	@override String get maxChain => '最高连击数';
	@override String yen({required Object yen}) => '${yen} 日元';
	@override String estimatedQty({required Object qty}) => '约 ${qty} 个';
}

// Path: misskey.bubbleGame_.howToPlay_
class _StringsMisskeyBubbleGameHowToPlayZhCn extends _StringsMisskeyBubbleGameHowToPlayEnUs {
	_StringsMisskeyBubbleGameHowToPlayZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get section1 => '对准位置将Emoji投入盒子。';
	@override String get section2 => '相同的Emoji相互接触合成后会得到新的Emoji，以此获得分数。';
	@override String get section3 => '如果Emoji从箱子中溢出游戏将会结束。在防止Emoji溢出的同时，不断合成新的Emoji，来获取更高的分数吧！';
}

// Path: misskey.initialTutorial_.landing_
class _StringsMisskeyInitialTutorialLandingZhCn extends _StringsMisskeyInitialTutorialLandingEnUs {
	_StringsMisskeyInitialTutorialLandingZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '欢迎来到教学';
	@override String get description => '在这里，您可以查看 Misskey 的基本使用方法和功能。';
}

// Path: misskey.initialTutorial_.note_
class _StringsMisskeyInitialTutorialNoteZhCn extends _StringsMisskeyInitialTutorialNoteEnUs {
	_StringsMisskeyInitialTutorialNoteZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '什么是帖子？';
	@override String get description => '在 Misskey 上发表的文章称为「帖子」。帖子在时间线上按照时间顺序排列，并实时更新。';
	@override String get reply => '用来回复帖子。可以对回复进行回复，从而形成一串对话。';
	@override String get renote => '用来将帖子共享到自己的时间线上。也可以加上自己的文字然后引用它。';
	@override String get reaction => '用来添加回应。详细信息将在下一页进行说明。';
	@override String get menu => '用来进行例如显示帖子详情、复制链接等各种各样的操作。';
}

// Path: misskey.initialTutorial_.reaction_
class _StringsMisskeyInitialTutorialReactionZhCn extends _StringsMisskeyInitialTutorialReactionEnUs {
	_StringsMisskeyInitialTutorialReactionZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '什么是回应？';
	@override String get description => '您可以在帖子中添加“回应”。 您可以使用反应轻松地表达点“赞”所无法传达的细微差别。';
	@override String get letsTryReacting => '回应可以通过点击帖子中的「+」按钮来添加。试着给这个示例帖子添加一个回应！';
	@override String get reactToContinue => '添加一个回应来继续';
	@override String get reactNotification => '当您的帖子被某人添加了回应时，将实时收到通知。';
	@override String get reactDone => '通过按下「ー」按钮，可以取消已经添加的回应';
}

// Path: misskey.initialTutorial_.timeline_
class _StringsMisskeyInitialTutorialTimelineZhCn extends _StringsMisskeyInitialTutorialTimelineEnUs {
	_StringsMisskeyInitialTutorialTimelineZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '时间线的运作方式';
	@override String get description1 => 'Misskey 根据使用方式提供了多个时间线（根据服务器的设定，可能有一些被禁用）。';
	@override String get home => '可以查看您关注的账户的帖子。';
	@override String get local => '可以查看这个服务器上所有用户发表的帖子。';
	@override String get social => '将同时显示首页时间线和本地时间线的内容。';
	@override String get global => '可以查看所有已联合的服务器上的帖子。';
	@override String get description2 => '可以随时在屏幕顶部在每个时间线之间切换。';
	@override String description3({required Object link}) => '另外，还有列表时间线和频道时间线。请参阅${link}了解更多详细信息。';
}

// Path: misskey.initialTutorial_.postNote_
class _StringsMisskeyInitialTutorialPostNoteZhCn extends _StringsMisskeyInitialTutorialPostNoteEnUs {
	_StringsMisskeyInitialTutorialPostNoteZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '帖子发布设置';
	@override String get description1 => '在 Misskey 发布帖子时，您可以设置各种选项。发帖窗口看起来是这样的。\n';
	@override late final _StringsMisskeyInitialTutorialPostNoteVisibilityZhCn visibility_ = _StringsMisskeyInitialTutorialPostNoteVisibilityZhCn._(_root);
	@override late final _StringsMisskeyInitialTutorialPostNoteCwZhCn cw_ = _StringsMisskeyInitialTutorialPostNoteCwZhCn._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveZhCn extends _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '如何将附件标注为敏感内容？';
	@override String get description => '对于服务器方针所要求要求的，又或者不适合直接展示的附件，请添加「敏感」标记。\n';
	@override String get tryThisFile => '试试看，将附加到此窗口的图像标注为敏感！';
	@override late final _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteZhCn exampleNote_ = _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteZhCn._(_root);
	@override String get method => '要标注附件为敏感内容，请单击该文件以打开菜单，然后单击“标记为敏感内容”。';
	@override String get sensitiveSucceeded => '附加文件时，请遵循服务器的条款来设置正确敏感设定。\n';
	@override String get doItToContinue => '将图像标记为敏感后才能够继续';
}

// Path: misskey.initialTutorial_.done_
class _StringsMisskeyInitialTutorialDoneZhCn extends _StringsMisskeyInitialTutorialDoneEnUs {
	_StringsMisskeyInitialTutorialDoneZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '恭喜您，已经完成了教程🎉\n';
	@override String description({required Object link}) => '这里介绍的只是其中一小部分的功能。 要了解更多有关如何使用 Misskey 的更多信息，请访问 ${link}。';
}

// Path: misskey.achievements_.types_
class _StringsMisskeyAchievementsTypesZhCn extends _StringsMisskeyAchievementsTypesEnUs {
	_StringsMisskeyAchievementsTypesZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAchievementsTypesNotes1ZhCn notes1_ = _StringsMisskeyAchievementsTypesNotes1ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10ZhCn notes10_ = _StringsMisskeyAchievementsTypesNotes10ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100ZhCn notes100_ = _StringsMisskeyAchievementsTypesNotes100ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes500ZhCn notes500_ = _StringsMisskeyAchievementsTypesNotes500ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes1000ZhCn notes1000_ = _StringsMisskeyAchievementsTypesNotes1000ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes5000ZhCn notes5000_ = _StringsMisskeyAchievementsTypesNotes5000ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10000ZhCn notes10000_ = _StringsMisskeyAchievementsTypesNotes10000ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes20000ZhCn notes20000_ = _StringsMisskeyAchievementsTypesNotes20000ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes30000ZhCn notes30000_ = _StringsMisskeyAchievementsTypesNotes30000ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes40000ZhCn notes40000_ = _StringsMisskeyAchievementsTypesNotes40000ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes50000ZhCn notes50000_ = _StringsMisskeyAchievementsTypesNotes50000ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes60000ZhCn notes60000_ = _StringsMisskeyAchievementsTypesNotes60000ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes70000ZhCn notes70000_ = _StringsMisskeyAchievementsTypesNotes70000ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes80000ZhCn notes80000_ = _StringsMisskeyAchievementsTypesNotes80000ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes90000ZhCn notes90000_ = _StringsMisskeyAchievementsTypesNotes90000ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100000ZhCn notes100000_ = _StringsMisskeyAchievementsTypesNotes100000ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin3ZhCn login3_ = _StringsMisskeyAchievementsTypesLogin3ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin7ZhCn login7_ = _StringsMisskeyAchievementsTypesLogin7ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin15ZhCn login15_ = _StringsMisskeyAchievementsTypesLogin15ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin30ZhCn login30_ = _StringsMisskeyAchievementsTypesLogin30ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin60ZhCn login60_ = _StringsMisskeyAchievementsTypesLogin60ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin100ZhCn login100_ = _StringsMisskeyAchievementsTypesLogin100ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin200ZhCn login200_ = _StringsMisskeyAchievementsTypesLogin200ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin300ZhCn login300_ = _StringsMisskeyAchievementsTypesLogin300ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin400ZhCn login400_ = _StringsMisskeyAchievementsTypesLogin400ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin500ZhCn login500_ = _StringsMisskeyAchievementsTypesLogin500ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin600ZhCn login600_ = _StringsMisskeyAchievementsTypesLogin600ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin700ZhCn login700_ = _StringsMisskeyAchievementsTypesLogin700ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin800ZhCn login800_ = _StringsMisskeyAchievementsTypesLogin800ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin900ZhCn login900_ = _StringsMisskeyAchievementsTypesLogin900ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin1000ZhCn login1000_ = _StringsMisskeyAchievementsTypesLogin1000ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteClipped1ZhCn noteClipped1_ = _StringsMisskeyAchievementsTypesNoteClipped1ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteFavorited1ZhCn noteFavorited1_ = _StringsMisskeyAchievementsTypesNoteFavorited1ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesMyNoteFavorited1ZhCn myNoteFavorited1_ = _StringsMisskeyAchievementsTypesMyNoteFavorited1ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesProfileFilledZhCn profileFilled_ = _StringsMisskeyAchievementsTypesProfileFilledZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesMarkedAsCatZhCn markedAsCat_ = _StringsMisskeyAchievementsTypesMarkedAsCatZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing1ZhCn following1_ = _StringsMisskeyAchievementsTypesFollowing1ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing10ZhCn following10_ = _StringsMisskeyAchievementsTypesFollowing10ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing50ZhCn following50_ = _StringsMisskeyAchievementsTypesFollowing50ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing100ZhCn following100_ = _StringsMisskeyAchievementsTypesFollowing100ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing300ZhCn following300_ = _StringsMisskeyAchievementsTypesFollowing300ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers1ZhCn followers1_ = _StringsMisskeyAchievementsTypesFollowers1ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers10ZhCn followers10_ = _StringsMisskeyAchievementsTypesFollowers10ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers50ZhCn followers50_ = _StringsMisskeyAchievementsTypesFollowers50ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers100ZhCn followers100_ = _StringsMisskeyAchievementsTypesFollowers100ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers300ZhCn followers300_ = _StringsMisskeyAchievementsTypesFollowers300ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers500ZhCn followers500_ = _StringsMisskeyAchievementsTypesFollowers500ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers1000ZhCn followers1000_ = _StringsMisskeyAchievementsTypesFollowers1000ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesCollectAchievements30ZhCn collectAchievements30_ = _StringsMisskeyAchievementsTypesCollectAchievements30ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesViewAchievements3minZhCn viewAchievements3min_ = _StringsMisskeyAchievementsTypesViewAchievements3minZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesILoveMisskeyZhCn iLoveMisskey_ = _StringsMisskeyAchievementsTypesILoveMisskeyZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesFoundTreasureZhCn foundTreasure_ = _StringsMisskeyAchievementsTypesFoundTreasureZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesClient30minZhCn client30min_ = _StringsMisskeyAchievementsTypesClient30minZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesClient60minZhCn client60min_ = _StringsMisskeyAchievementsTypesClient60minZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteDeletedWithin1minZhCn noteDeletedWithin1min_ = _StringsMisskeyAchievementsTypesNoteDeletedWithin1minZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesPostedAtLateNightZhCn postedAtLateNight_ = _StringsMisskeyAchievementsTypesPostedAtLateNightZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesPostedAt0min0secZhCn postedAt0min0sec_ = _StringsMisskeyAchievementsTypesPostedAt0min0secZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesSelfQuoteZhCn selfQuote_ = _StringsMisskeyAchievementsTypesSelfQuoteZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesHtl20npmZhCn htl20npm_ = _StringsMisskeyAchievementsTypesHtl20npmZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesViewInstanceChartZhCn viewInstanceChart_ = _StringsMisskeyAchievementsTypesViewInstanceChartZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadZhCn outputHelloWorldOnScratchpad_ = _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesOpen3windowsZhCn open3windows_ = _StringsMisskeyAchievementsTypesOpen3windowsZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceZhCn driveFolderCircularReference_ = _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesReactWithoutReadZhCn reactWithoutRead_ = _StringsMisskeyAchievementsTypesReactWithoutReadZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesClickedClickHereZhCn clickedClickHere_ = _StringsMisskeyAchievementsTypesClickedClickHereZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesJustPlainLuckyZhCn justPlainLucky_ = _StringsMisskeyAchievementsTypesJustPlainLuckyZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesSetNameToSyuiloZhCn setNameToSyuilo_ = _StringsMisskeyAchievementsTypesSetNameToSyuiloZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1ZhCn passedSinceAccountCreated1_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2ZhCn passedSinceAccountCreated2_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3ZhCn passedSinceAccountCreated3_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3ZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesLoggedInOnBirthdayZhCn loggedInOnBirthday_ = _StringsMisskeyAchievementsTypesLoggedInOnBirthdayZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayZhCn loggedInOnNewYearsDay_ = _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesCookieClickedZhCn cookieClicked_ = _StringsMisskeyAchievementsTypesCookieClickedZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesBrainDiverZhCn brainDiver_ = _StringsMisskeyAchievementsTypesBrainDiverZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesSmashTestNotificationButtonZhCn smashTestNotificationButton_ = _StringsMisskeyAchievementsTypesSmashTestNotificationButtonZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesTutorialCompletedZhCn tutorialCompleted_ = _StringsMisskeyAchievementsTypesTutorialCompletedZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadZhCn bubbleGameExplodingHead_ = _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadZhCn._(_root);
	@override late final _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadZhCn bubbleGameDoubleExplodingHead_ = _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadZhCn._(_root);
}

// Path: misskey.role_.priority_
class _StringsMisskeyRolePriorityZhCn extends _StringsMisskeyRolePriorityEnUs {
	_StringsMisskeyRolePriorityZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get low => '低';
	@override String get middle => '中';
	@override String get high => '高';
}

// Path: misskey.role_.options_
class _StringsMisskeyRoleOptionsZhCn extends _StringsMisskeyRoleOptionsEnUs {
	_StringsMisskeyRoleOptionsZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => '查看全局时间线';
	@override String get ltlAvailable => '查看本地时间线';
	@override String get canPublicNote => '允许公开发帖';
	@override String get mentionMax => '帖子内最多提及数';
	@override String get canInvite => '发放服务器邀请码';
	@override String get inviteLimit => '可生成邀请码的数量';
	@override String get inviteLimitCycle => '邀请码的发行间隔';
	@override String get inviteExpirationTime => '邀请码的有效日期';
	@override String get canManageCustomEmojis => '管理自定义表情符号';
	@override String get canManageAvatarDecorations => '管理头像挂件';
	@override String get driveCapacity => '网盘容量';
	@override String get alwaysMarkNsfw => '总是将文件标记为 NSFW';
	@override String get pinMax => '帖子置顶数量限制';
	@override String get antennaMax => '可创建的最大天线数量';
	@override String get wordMuteMax => '屏蔽词的字数限制';
	@override String get webhookMax => 'Webhook 创建数量限制';
	@override String get clipMax => '便签创建数量限制';
	@override String get noteEachClipsMax => '单个便签内的贴文数量限制';
	@override String get userListMax => '用户列表创建数量限制';
	@override String get userEachUserListsMax => '单个用户列表内用户数量限制';
	@override String get rateLimitFactor => '速率限制';
	@override String get descriptionOfRateLimitFactor => '值越小限制越少，值越大限制越多。';
	@override String get canHideAds => '可以隐藏广告';
	@override String get canSearchNotes => '是否可以搜索帖子';
	@override String get canUseTranslator => '使用翻译功能';
	@override String get avatarDecorationLimit => '可添加头像挂件的最大个数';
}

// Path: misskey.role_.condition_
class _StringsMisskeyRoleConditionZhCn extends _StringsMisskeyRoleConditionEnUs {
	_StringsMisskeyRoleConditionZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get roleAssignedTo => '已分配给手动角色';
	@override String get isLocal => '是本地用户';
	@override String get isRemote => '是远程用户';
	@override String get createdLessThan => '账户创建时间少于';
	@override String get createdMoreThan => '账户创建时间超过';
	@override String get followersLessThanOrEq => '关注者不多于';
	@override String get followersMoreThanOrEq => '关注者不少于';
	@override String get followingLessThanOrEq => '关注中不多于';
	@override String get followingMoreThanOrEq => '关注中不少于';
	@override String get notesLessThanOrEq => '帖子数在～以下';
	@override String get notesMoreThanOrEq => '帖子数在～以上';
	@override String get and => '符合以下全部条件';
	@override String get or => '符合以下任一条件';
	@override String get not => '不符合以下任何条件';
}

// Path: misskey.email_.follow_
class _StringsMisskeyEmailFollowZhCn extends _StringsMisskeyEmailFollowEnUs {
	_StringsMisskeyEmailFollowZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你有新的关注者';
}

// Path: misskey.email_.receiveFollowRequest_
class _StringsMisskeyEmailReceiveFollowRequestZhCn extends _StringsMisskeyEmailReceiveFollowRequestEnUs {
	_StringsMisskeyEmailReceiveFollowRequestZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '收到了关注请求';
}

// Path: misskey.theme_.keys
class _StringsMisskeyThemeKeysZhCn extends _StringsMisskeyThemeKeysEnUs {
	_StringsMisskeyThemeKeysZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get accent => '强调色';
	@override String get bg => '背景';
	@override String get fg => '文本';
	@override String get focus => '聚焦';
	@override String get indicator => '标记';
	@override String get panel => '面板';
	@override String get shadow => '阴影';
	@override String get header => '顶栏';
	@override String get navBg => '侧边栏背景';
	@override String get navFg => '侧栏文本';
	@override String get navHoverFg => '侧栏文本（悬停）';
	@override String get navActive => '侧栏文本（活动）';
	@override String get navIndicator => '侧栏标记';
	@override String get link => '链接';
	@override String get hashtag => '话题标签';
	@override String get mention => '提及';
	@override String get mentionMe => '提及';
	@override String get renote => '转发';
	@override String get modalBg => '对话框背景';
	@override String get divider => '分割线';
	@override String get scrollbarHandle => '滚动条';
	@override String get scrollbarHandleHover => '滚动条（悬停）';
	@override String get dateLabelFg => '日期标签文字';
	@override String get infoBg => '信息背景';
	@override String get infoFg => '信息文本';
	@override String get infoWarnBg => '警告背景';
	@override String get infoWarnFg => '警告文本';
	@override String get toastBg => 'Toast 通知背景';
	@override String get toastFg => 'Toast 通知文本';
	@override String get buttonBg => '按钮背景';
	@override String get buttonHoverBg => '按钮背景（悬停）';
	@override String get inputBorder => '输入框边框';
	@override String get listItemHoverBg => '下拉列表项目背景（悬停）';
	@override String get driveFolderBg => '网盘的文件夹背景';
	@override String get wallpaperOverlay => '壁纸叠加层';
	@override String get badge => '徽章';
	@override String get messageBg => '聊天背景';
	@override String get accentDarken => '强调色(深)';
	@override String get accentLighten => '强调色(浅)';
	@override String get fgHighlighted => '高亮显示文本';
}

// Path: misskey.widgets_.userList_
class _StringsMisskeyWidgetsUserListZhCn extends _StringsMisskeyWidgetsUserListEnUs {
	_StringsMisskeyWidgetsUserListZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get chooseList => '选择列表';
}

// Path: misskey.postForm_.placeholders_
class _StringsMisskeyPostFormPlaceholdersZhCn extends _StringsMisskeyPostFormPlaceholdersEnUs {
	_StringsMisskeyPostFormPlaceholdersZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get a => '现在如何？';
	@override String get b => '发生了什么？';
	@override String get c => '你有什么想法？';
	@override String get d => '你想要发布些什么吗？';
	@override String get e => '请写下来吧';
	@override String get f => '等待您的发布...';
}

// Path: misskey.pages_.blocks
class _StringsMisskeyPagesBlocksZhCn extends _StringsMisskeyPagesBlocksEnUs {
	_StringsMisskeyPagesBlocksZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get text => '文本';
	@override String get textarea => '文本区域';
	@override String get section => '章节';
	@override String get image => '图片';
	@override String get button => '按钮';
	@override String get note => '嵌入的帖子';
	@override late final _StringsMisskeyPagesBlocksNoteZhCn note_ = _StringsMisskeyPagesBlocksNoteZhCn._(_root);
}

// Path: misskey.notification_.types_
class _StringsMisskeyNotificationTypesZhCn extends _StringsMisskeyNotificationTypesEnUs {
	_StringsMisskeyNotificationTypesZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get all => '全部';
	@override String get note => '用户的新帖子';
	@override String get follow => '关注中';
	@override String get mention => '提及';
	@override String get reply => '回复';
	@override String get renote => '转发';
	@override String get quote => '引用';
	@override String get reaction => '回应';
	@override String get pollEnded => '问卷调查结束';
	@override String get receiveFollowRequest => '收到关注请求';
	@override String get followRequestAccepted => '关注请求已通过';
	@override String get roleAssigned => '授予的角色';
	@override String get achievementEarned => '取得的成就';
	@override String get app => '关联应用的通知';
}

// Path: misskey.notification_.actions_
class _StringsMisskeyNotificationActionsZhCn extends _StringsMisskeyNotificationActionsEnUs {
	_StringsMisskeyNotificationActionsZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get followBack => '回关';
	@override String get reply => '回复';
	@override String get renote => '转发';
}

// Path: misskey.deck_.columns_
class _StringsMisskeyDeckColumnsZhCn extends _StringsMisskeyDeckColumnsEnUs {
	_StringsMisskeyDeckColumnsZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get main => '主列';
	@override String get widgets => '小工具';
	@override String get notifications => '通知';
	@override String get tl => '时间线';
	@override String get antenna => '天线';
	@override String get list => '列表';
	@override String get channel => '频道';
	@override String get mentions => '提及';
	@override String get direct => '指定用户';
	@override String get roleTimeline => '角色时间线';
}

// Path: misskey.webhookSettings_.events_
class _StringsMisskeyWebhookSettingsEventsZhCn extends _StringsMisskeyWebhookSettingsEventsEnUs {
	_StringsMisskeyWebhookSettingsEventsZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get follow => '关注时';
	@override String get followed => '被关注时';
	@override String get note => '发布贴文时';
	@override String get reply => '收到回复时';
	@override String get renote => '被转发时';
	@override String get reaction => '被回应时';
	@override String get mention => '被提及时';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _StringsMisskeyExternalResourceInstallerPluginZhCn extends _StringsMisskeyExternalResourceInstallerPluginEnUs {
	_StringsMisskeyExternalResourceInstallerPluginZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '要安装此插件吗？';
	@override String get metaTitle => '插件信息';
}

// Path: misskey.externalResourceInstaller_.theme_
class _StringsMisskeyExternalResourceInstallerThemeZhCn extends _StringsMisskeyExternalResourceInstallerThemeEnUs {
	_StringsMisskeyExternalResourceInstallerThemeZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '要安装此主题吗？';
	@override String get metaTitle => '主题信息';
}

// Path: misskey.externalResourceInstaller_.meta_
class _StringsMisskeyExternalResourceInstallerMetaZhCn extends _StringsMisskeyExternalResourceInstallerMetaEnUs {
	_StringsMisskeyExternalResourceInstallerMetaZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get base => '基本配色方案';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _StringsMisskeyExternalResourceInstallerVendorInfoZhCn extends _StringsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_StringsMisskeyExternalResourceInstallerVendorInfoZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '来源信息';
	@override String get endpoint => '参考端点';
	@override String get hashVerify => '确认文件完整性';
}

// Path: misskey.externalResourceInstaller_.errors_
class _StringsMisskeyExternalResourceInstallerErrorsZhCn extends _StringsMisskeyExternalResourceInstallerErrorsEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsZhCn invalidParams_ = _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsZhCn._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedZhCn resourceTypeNotSupported_ = _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedZhCn._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchZhCn failedToFetch_ = _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchZhCn._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedZhCn hashUnmatched_ = _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedZhCn._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedZhCn pluginParseFailed_ = _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedZhCn._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedZhCn pluginInstallFailed_ = _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedZhCn._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedZhCn themeParseFailed_ = _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedZhCn._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedZhCn themeInstallFailed_ = _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedZhCn._(_root);
}

// Path: misskey.dataSaver_.media_
class _StringsMisskeyDataSaverMediaZhCn extends _StringsMisskeyDataSaverMediaEnUs {
	_StringsMisskeyDataSaverMediaZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '加载媒体';
	@override String get description => '防止自动加载图像和视频。 点击隐藏的图像/视频即可加载它们。\n';
}

// Path: misskey.dataSaver_.avatar_
class _StringsMisskeyDataSaverAvatarZhCn extends _StringsMisskeyDataSaverAvatarEnUs {
	_StringsMisskeyDataSaverAvatarZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '头像';
	@override String get description => '停止播放头像的动画。 由于动画图片的文件大小可能比普通图像大，这可以进一步减少数据流量。';
}

// Path: misskey.dataSaver_.urlPreview_
class _StringsMisskeyDataSaverUrlPreviewZhCn extends _StringsMisskeyDataSaverUrlPreviewEnUs {
	_StringsMisskeyDataSaverUrlPreviewZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL预览缩略图\n';
	@override String get description => '将不再加载 URL 预览缩略图。';
}

// Path: misskey.dataSaver_.code_
class _StringsMisskeyDataSaverCodeZhCn extends _StringsMisskeyDataSaverCodeEnUs {
	_StringsMisskeyDataSaverCodeZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '代码高亮';
	@override String get description => '如果使用了代码高亮标记，例如在 MFM 中，则在点击之前不会加载。 代码高亮要求加载每种高亮语言的定义文件，由于这些文件不再自动加载，因此有望减少数据传输量。';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _StringsMisskeyInitialTutorialPostNoteVisibilityZhCn extends _StringsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_StringsMisskeyInitialTutorialPostNoteVisibilityZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get description => '您可以限制谁可以看到您的帖子。';
	@override String get public => '向所有用户公开。\n';
	@override String get home => '仅在首页时间线上发布。 关注者、从个人资料页查看过来的用户、以及通过转帖也能被别的用户看见。';
	@override String get followers => '仅对关注者可见。 除了您自己之外，没有人可以转贴，并且只有您的关注者可以查看它。\n';
	@override String get direct => '它将仅向指定用户公开，并且他们也会收到通知。 您可以使用它来代替私信。\n';
	@override String get doNotSendConfidencialOnDirect1 => '发送敏感信息时请注意。\n';
	@override String get doNotSendConfidencialOnDirect2 => '目标服务器的管理员可以看到发布的内容，因此如果您向不受信任的服务器上的用户发送私信，则在处理敏感信息时需要小心。';
	@override String get localOnly => '不将帖子推送到其它服务器。 无论上述公开范围如何，其它服务器的用户将无法看到附加了此设定的帖子。\n';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _StringsMisskeyInitialTutorialPostNoteCwZhCn extends _StringsMisskeyInitialTutorialPostNoteCwEnUs {
	_StringsMisskeyInitialTutorialPostNoteCwZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '隐藏内容 (CW)\n';
	@override String get description => '显示「注解」里的内容而不是正文。点击「查看更多」将会把正文显示出来。';
	@override late final _StringsMisskeyInitialTutorialPostNoteCwExampleNoteZhCn exampleNote_ = _StringsMisskeyInitialTutorialPostNoteCwExampleNoteZhCn._(_root);
	@override String get useCases => '用于服务器条款所规定的帖子，或对剧透内容和敏感内容进行自主规制。';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteZhCn extends _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get note => '拆纳豆包装时出错了…';
}

// Path: misskey.achievements_.types_.notes1_
class _StringsMisskeyAchievementsTypesNotes1ZhCn extends _StringsMisskeyAchievementsTypesNotes1EnUs {
	_StringsMisskeyAchievementsTypesNotes1ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '初来乍到';
	@override String get description => '第一次发帖';
	@override String get flavor => '祝您在 Misskey 玩的愉快～';
}

// Path: misskey.achievements_.types_.notes10_
class _StringsMisskeyAchievementsTypesNotes10ZhCn extends _StringsMisskeyAchievementsTypesNotes10EnUs {
	_StringsMisskeyAchievementsTypesNotes10ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '一些帖子';
	@override String get description => '发布了 10 篇帖子';
}

// Path: misskey.achievements_.types_.notes100_
class _StringsMisskeyAchievementsTypesNotes100ZhCn extends _StringsMisskeyAchievementsTypesNotes100EnUs {
	_StringsMisskeyAchievementsTypesNotes100ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '很多帖子';
	@override String get description => '发布了 100 篇帖子';
}

// Path: misskey.achievements_.types_.notes500_
class _StringsMisskeyAchievementsTypesNotes500ZhCn extends _StringsMisskeyAchievementsTypesNotes500EnUs {
	_StringsMisskeyAchievementsTypesNotes500ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '满是帖子';
	@override String get description => '发布了 500 篇帖子';
}

// Path: misskey.achievements_.types_.notes1000_
class _StringsMisskeyAchievementsTypesNotes1000ZhCn extends _StringsMisskeyAchievementsTypesNotes1000EnUs {
	_StringsMisskeyAchievementsTypesNotes1000ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '积帖成山';
	@override String get description => '发布了 1,000 篇帖子';
}

// Path: misskey.achievements_.types_.notes5000_
class _StringsMisskeyAchievementsTypesNotes5000ZhCn extends _StringsMisskeyAchievementsTypesNotes5000EnUs {
	_StringsMisskeyAchievementsTypesNotes5000ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '帖如泉涌';
	@override String get description => '发布了 5,000 篇帖子';
}

// Path: misskey.achievements_.types_.notes10000_
class _StringsMisskeyAchievementsTypesNotes10000ZhCn extends _StringsMisskeyAchievementsTypesNotes10000EnUs {
	_StringsMisskeyAchievementsTypesNotes10000ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '超级帖';
	@override String get description => '发布了 10,000 篇帖子';
}

// Path: misskey.achievements_.types_.notes20000_
class _StringsMisskeyAchievementsTypesNotes20000ZhCn extends _StringsMisskeyAchievementsTypesNotes20000EnUs {
	_StringsMisskeyAchievementsTypesNotes20000ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '还想要更多帖子';
	@override String get description => '发布了 20,000 篇帖子';
}

// Path: misskey.achievements_.types_.notes30000_
class _StringsMisskeyAchievementsTypesNotes30000ZhCn extends _StringsMisskeyAchievementsTypesNotes30000EnUs {
	_StringsMisskeyAchievementsTypesNotes30000ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '帖子帖子帖子';
	@override String get description => '发布了 30,000 篇帖子';
}

// Path: misskey.achievements_.types_.notes40000_
class _StringsMisskeyAchievementsTypesNotes40000ZhCn extends _StringsMisskeyAchievementsTypesNotes40000EnUs {
	_StringsMisskeyAchievementsTypesNotes40000ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '帖子工厂';
	@override String get description => '发布了 40,000 篇帖子';
}

// Path: misskey.achievements_.types_.notes50000_
class _StringsMisskeyAchievementsTypesNotes50000ZhCn extends _StringsMisskeyAchievementsTypesNotes50000EnUs {
	_StringsMisskeyAchievementsTypesNotes50000ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '帖子星球';
	@override String get description => '发布了 50,000 篇帖子';
}

// Path: misskey.achievements_.types_.notes60000_
class _StringsMisskeyAchievementsTypesNotes60000ZhCn extends _StringsMisskeyAchievementsTypesNotes60000EnUs {
	_StringsMisskeyAchievementsTypesNotes60000ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '帖子类星体';
	@override String get description => '发布了 60,000 篇帖子';
}

// Path: misskey.achievements_.types_.notes70000_
class _StringsMisskeyAchievementsTypesNotes70000ZhCn extends _StringsMisskeyAchievementsTypesNotes70000EnUs {
	_StringsMisskeyAchievementsTypesNotes70000ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '帖子黑洞';
	@override String get description => '发布了 70,000 篇帖子';
}

// Path: misskey.achievements_.types_.notes80000_
class _StringsMisskeyAchievementsTypesNotes80000ZhCn extends _StringsMisskeyAchievementsTypesNotes80000EnUs {
	_StringsMisskeyAchievementsTypesNotes80000ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '帖子星系';
	@override String get description => '发布了 80,000 篇帖子';
}

// Path: misskey.achievements_.types_.notes90000_
class _StringsMisskeyAchievementsTypesNotes90000ZhCn extends _StringsMisskeyAchievementsTypesNotes90000EnUs {
	_StringsMisskeyAchievementsTypesNotes90000ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '帖子起源';
	@override String get description => '发布了 90,000 篇帖子';
}

// Path: misskey.achievements_.types_.notes100000_
class _StringsMisskeyAchievementsTypesNotes100000ZhCn extends _StringsMisskeyAchievementsTypesNotes100000EnUs {
	_StringsMisskeyAchievementsTypesNotes100000ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => '发布了 100,000 篇帖子';
	@override String get flavor => '真的有那么多可以写的东西吗？';
}

// Path: misskey.achievements_.types_.login3_
class _StringsMisskeyAchievementsTypesLogin3ZhCn extends _StringsMisskeyAchievementsTypesLogin3EnUs {
	_StringsMisskeyAchievementsTypesLogin3ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '初学者 I';
	@override String get description => '累计登录 3 天';
	@override String get flavor => '今天开始我就是 Misskist！';
}

// Path: misskey.achievements_.types_.login7_
class _StringsMisskeyAchievementsTypesLogin7ZhCn extends _StringsMisskeyAchievementsTypesLogin7EnUs {
	_StringsMisskeyAchievementsTypesLogin7ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '初学者 II';
	@override String get description => '累计登录 7 天';
	@override String get flavor => '您开始习惯了吗？';
}

// Path: misskey.achievements_.types_.login15_
class _StringsMisskeyAchievementsTypesLogin15ZhCn extends _StringsMisskeyAchievementsTypesLogin15EnUs {
	_StringsMisskeyAchievementsTypesLogin15ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '初学者 III';
	@override String get description => '累计登录 15 天';
}

// Path: misskey.achievements_.types_.login30_
class _StringsMisskeyAchievementsTypesLogin30ZhCn extends _StringsMisskeyAchievementsTypesLogin30EnUs {
	_StringsMisskeyAchievementsTypesLogin30ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist Ⅰ';
	@override String get description => '累计登录 30 天';
}

// Path: misskey.achievements_.types_.login60_
class _StringsMisskeyAchievementsTypesLogin60ZhCn extends _StringsMisskeyAchievementsTypesLogin60EnUs {
	_StringsMisskeyAchievementsTypesLogin60ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist Ⅱ';
	@override String get description => '累计登录 60 天';
}

// Path: misskey.achievements_.types_.login100_
class _StringsMisskeyAchievementsTypesLogin100ZhCn extends _StringsMisskeyAchievementsTypesLogin100EnUs {
	_StringsMisskeyAchievementsTypesLogin100ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist Ⅲ';
	@override String get description => '累计登入 100 天';
	@override String get flavor => '那个用户，是 Misskist 喔';
}

// Path: misskey.achievements_.types_.login200_
class _StringsMisskeyAchievementsTypesLogin200ZhCn extends _StringsMisskeyAchievementsTypesLogin200EnUs {
	_StringsMisskeyAchievementsTypesLogin200ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '定期联系Ⅰ';
	@override String get description => '累计登录 200 天';
}

// Path: misskey.achievements_.types_.login300_
class _StringsMisskeyAchievementsTypesLogin300ZhCn extends _StringsMisskeyAchievementsTypesLogin300EnUs {
	_StringsMisskeyAchievementsTypesLogin300ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '定期联系Ⅱ';
	@override String get description => '累计登录 300 天';
}

// Path: misskey.achievements_.types_.login400_
class _StringsMisskeyAchievementsTypesLogin400ZhCn extends _StringsMisskeyAchievementsTypesLogin400EnUs {
	_StringsMisskeyAchievementsTypesLogin400ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '定期联系Ⅲ';
	@override String get description => '累计登录 400 天';
}

// Path: misskey.achievements_.types_.login500_
class _StringsMisskeyAchievementsTypesLogin500ZhCn extends _StringsMisskeyAchievementsTypesLogin500EnUs {
	_StringsMisskeyAchievementsTypesLogin500ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '老熟人Ⅰ';
	@override String get description => '累计登录 500 天';
	@override String get flavor => '诸君，我喜欢贴文';
}

// Path: misskey.achievements_.types_.login600_
class _StringsMisskeyAchievementsTypesLogin600ZhCn extends _StringsMisskeyAchievementsTypesLogin600EnUs {
	_StringsMisskeyAchievementsTypesLogin600ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '老熟人Ⅱ';
	@override String get description => '累计登录 600 天';
}

// Path: misskey.achievements_.types_.login700_
class _StringsMisskeyAchievementsTypesLogin700ZhCn extends _StringsMisskeyAchievementsTypesLogin700EnUs {
	_StringsMisskeyAchievementsTypesLogin700ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '老熟人Ⅲ';
	@override String get description => '累计登录 700 天';
}

// Path: misskey.achievements_.types_.login800_
class _StringsMisskeyAchievementsTypesLogin800ZhCn extends _StringsMisskeyAchievementsTypesLogin800EnUs {
	_StringsMisskeyAchievementsTypesLogin800ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '帖子大师 Ⅰ';
	@override String get description => '累计登录 800 天';
}

// Path: misskey.achievements_.types_.login900_
class _StringsMisskeyAchievementsTypesLogin900ZhCn extends _StringsMisskeyAchievementsTypesLogin900EnUs {
	_StringsMisskeyAchievementsTypesLogin900ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '帖子大师 Ⅱ';
	@override String get description => '累计登录 900 天';
}

// Path: misskey.achievements_.types_.login1000_
class _StringsMisskeyAchievementsTypesLogin1000ZhCn extends _StringsMisskeyAchievementsTypesLogin1000EnUs {
	_StringsMisskeyAchievementsTypesLogin1000ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '帖子大师 Ⅲ';
	@override String get description => '累计登录 1000 天';
	@override String get flavor => '感谢您使用 Misskey！';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _StringsMisskeyAchievementsTypesNoteClipped1ZhCn extends _StringsMisskeyAchievementsTypesNoteClipped1EnUs {
	_StringsMisskeyAchievementsTypesNoteClipped1ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '忍不住要收藏到便签';
	@override String get description => '第一次将贴文贴进便签';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _StringsMisskeyAchievementsTypesNoteFavorited1ZhCn extends _StringsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesNoteFavorited1ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '观星者';
	@override String get description => '第一次将帖子加入收藏';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _StringsMisskeyAchievementsTypesMyNoteFavorited1ZhCn extends _StringsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesMyNoteFavorited1ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '想要星星';
	@override String get description => '自己的帖子被其他人加入收藏了';
}

// Path: misskey.achievements_.types_.profileFilled_
class _StringsMisskeyAchievementsTypesProfileFilledZhCn extends _StringsMisskeyAchievementsTypesProfileFilledEnUs {
	_StringsMisskeyAchievementsTypesProfileFilledZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '整装待发';
	@override String get description => '设置了个人资料';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _StringsMisskeyAchievementsTypesMarkedAsCatZhCn extends _StringsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_StringsMisskeyAchievementsTypesMarkedAsCatZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '我是猫';
	@override String get description => '将账户设定为一只猫';
	@override String get flavor => '还没有名字';
}

// Path: misskey.achievements_.types_.following1_
class _StringsMisskeyAchievementsTypesFollowing1ZhCn extends _StringsMisskeyAchievementsTypesFollowing1EnUs {
	_StringsMisskeyAchievementsTypesFollowing1ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '首次关注';
	@override String get description => '第一次关注别人';
}

// Path: misskey.achievements_.types_.following10_
class _StringsMisskeyAchievementsTypesFollowing10ZhCn extends _StringsMisskeyAchievementsTypesFollowing10EnUs {
	_StringsMisskeyAchievementsTypesFollowing10ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '关注，跟随';
	@override String get description => '关注超过 10 人';
}

// Path: misskey.achievements_.types_.following50_
class _StringsMisskeyAchievementsTypesFollowing50ZhCn extends _StringsMisskeyAchievementsTypesFollowing50EnUs {
	_StringsMisskeyAchievementsTypesFollowing50ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '我的朋友很多';
	@override String get description => '关注超过 50 人';
}

// Path: misskey.achievements_.types_.following100_
class _StringsMisskeyAchievementsTypesFollowing100ZhCn extends _StringsMisskeyAchievementsTypesFollowing100EnUs {
	_StringsMisskeyAchievementsTypesFollowing100ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '胜友如云';
	@override String get description => '关注超过 100 人';
}

// Path: misskey.achievements_.types_.following300_
class _StringsMisskeyAchievementsTypesFollowing300ZhCn extends _StringsMisskeyAchievementsTypesFollowing300EnUs {
	_StringsMisskeyAchievementsTypesFollowing300ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '朋友成群';
	@override String get description => '关注数超过 300';
}

// Path: misskey.achievements_.types_.followers1_
class _StringsMisskeyAchievementsTypesFollowers1ZhCn extends _StringsMisskeyAchievementsTypesFollowers1EnUs {
	_StringsMisskeyAchievementsTypesFollowers1ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '最初的关注者';
	@override String get description => '第一次被关注';
}

// Path: misskey.achievements_.types_.followers10_
class _StringsMisskeyAchievementsTypesFollowers10ZhCn extends _StringsMisskeyAchievementsTypesFollowers10EnUs {
	_StringsMisskeyAchievementsTypesFollowers10ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '关注我吧！';
	@override String get description => '拥有超过 10 名关注者';
}

// Path: misskey.achievements_.types_.followers50_
class _StringsMisskeyAchievementsTypesFollowers50ZhCn extends _StringsMisskeyAchievementsTypesFollowers50EnUs {
	_StringsMisskeyAchievementsTypesFollowers50ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '三五成群';
	@override String get description => '拥有超过 50 名关注者';
}

// Path: misskey.achievements_.types_.followers100_
class _StringsMisskeyAchievementsTypesFollowers100ZhCn extends _StringsMisskeyAchievementsTypesFollowers100EnUs {
	_StringsMisskeyAchievementsTypesFollowers100ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '胜友如云';
	@override String get description => '拥有超过 100 名关注者';
}

// Path: misskey.achievements_.types_.followers300_
class _StringsMisskeyAchievementsTypesFollowers300ZhCn extends _StringsMisskeyAchievementsTypesFollowers300EnUs {
	_StringsMisskeyAchievementsTypesFollowers300ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '排列成行';
	@override String get description => '拥有超过 300 名关注者';
}

// Path: misskey.achievements_.types_.followers500_
class _StringsMisskeyAchievementsTypesFollowers500ZhCn extends _StringsMisskeyAchievementsTypesFollowers500EnUs {
	_StringsMisskeyAchievementsTypesFollowers500ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '信号塔';
	@override String get description => '拥有超过 500 名关注者';
}

// Path: misskey.achievements_.types_.followers1000_
class _StringsMisskeyAchievementsTypesFollowers1000ZhCn extends _StringsMisskeyAchievementsTypesFollowers1000EnUs {
	_StringsMisskeyAchievementsTypesFollowers1000ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '大影响家';
	@override String get description => '拥有超过 1000 名关注者';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _StringsMisskeyAchievementsTypesCollectAchievements30ZhCn extends _StringsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_StringsMisskeyAchievementsTypesCollectAchievements30ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '成就收藏家';
	@override String get description => '获得超过 30 个成就';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _StringsMisskeyAchievementsTypesViewAchievements3minZhCn extends _StringsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_StringsMisskeyAchievementsTypesViewAchievements3minZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '成就爱好者';
	@override String get description => '盯着成就看三分钟';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _StringsMisskeyAchievementsTypesILoveMisskeyZhCn extends _StringsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_StringsMisskeyAchievementsTypesILoveMisskeyZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'I Love Misskey';
	@override String get description => '发布 "I ❤ #Misskey" 帖子';
	@override String get flavor => '感谢您使用 Misskey ！ by 开发团队';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _StringsMisskeyAchievementsTypesFoundTreasureZhCn extends _StringsMisskeyAchievementsTypesFoundTreasureEnUs {
	_StringsMisskeyAchievementsTypesFoundTreasureZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '寻宝';
	@override String get description => '发现了隐藏的宝藏';
}

// Path: misskey.achievements_.types_.client30min_
class _StringsMisskeyAchievementsTypesClient30minZhCn extends _StringsMisskeyAchievementsTypesClient30minEnUs {
	_StringsMisskeyAchievementsTypesClient30minZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '休息一下！';
	@override String get description => '启动客户端超过 30 分钟';
}

// Path: misskey.achievements_.types_.client60min_
class _StringsMisskeyAchievementsTypesClient60minZhCn extends _StringsMisskeyAchievementsTypesClient60minEnUs {
	_StringsMisskeyAchievementsTypesClient60minZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskey 重度依赖';
	@override String get description => '启动客户端超过 60 分钟';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _StringsMisskeyAchievementsTypesNoteDeletedWithin1minZhCn extends _StringsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_StringsMisskeyAchievementsTypesNoteDeletedWithin1minZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '欲言又止';
	@override String get description => '发帖后一分钟内就将其删除';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _StringsMisskeyAchievementsTypesPostedAtLateNightZhCn extends _StringsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_StringsMisskeyAchievementsTypesPostedAtLateNightZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '夜猫子';
	@override String get description => '深夜发布帖子';
	@override String get flavor => '差不多该去睡了喔。';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _StringsMisskeyAchievementsTypesPostedAt0min0secZhCn extends _StringsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_StringsMisskeyAchievementsTypesPostedAt0min0secZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '报时';
	@override String get description => '在 0 点发布一篇帖子';
	@override String get flavor => '嘣 嘣 嘣 Biu——！';
}

// Path: misskey.achievements_.types_.selfQuote_
class _StringsMisskeyAchievementsTypesSelfQuoteZhCn extends _StringsMisskeyAchievementsTypesSelfQuoteEnUs {
	_StringsMisskeyAchievementsTypesSelfQuoteZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '自我引用';
	@override String get description => '引用了自己的帖子';
}

// Path: misskey.achievements_.types_.htl20npm_
class _StringsMisskeyAchievementsTypesHtl20npmZhCn extends _StringsMisskeyAchievementsTypesHtl20npmEnUs {
	_StringsMisskeyAchievementsTypesHtl20npmZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '流动的时间线';
	@override String get description => '在首页时间线的流速超过 20npm';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _StringsMisskeyAchievementsTypesViewInstanceChartZhCn extends _StringsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_StringsMisskeyAchievementsTypesViewInstanceChartZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '分析师';
	@override String get description => '查看了服务器信息中的图表';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadZhCn extends _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hello, world!';
	@override String get description => '在 AiScript 控制台中输出 hello world';
}

// Path: misskey.achievements_.types_.open3windows_
class _StringsMisskeyAchievementsTypesOpen3windowsZhCn extends _StringsMisskeyAchievementsTypesOpen3windowsEnUs {
	_StringsMisskeyAchievementsTypesOpen3windowsZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '多窗口';
	@override String get description => '打开了三个或更多的窗口';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceZhCn extends _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_StringsMisskeyAchievementsTypesDriveFolderCircularReferenceZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '循环引用';
	@override String get description => '试图对网盘中的文件夹进行循环嵌套';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _StringsMisskeyAchievementsTypesReactWithoutReadZhCn extends _StringsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_StringsMisskeyAchievementsTypesReactWithoutReadZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '有好好读过吗？';
	@override String get description => '在含有 100 字以上的帖子被发出三秒内做出回应';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _StringsMisskeyAchievementsTypesClickedClickHereZhCn extends _StringsMisskeyAchievementsTypesClickedClickHereEnUs {
	_StringsMisskeyAchievementsTypesClickedClickHereZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '点这里';
	@override String get description => '点了这里';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _StringsMisskeyAchievementsTypesJustPlainLuckyZhCn extends _StringsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_StringsMisskeyAchievementsTypesJustPlainLuckyZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '超高校级的幸运';
	@override String get description => '每 10 秒有 0.005% 的概率自动获得';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _StringsMisskeyAchievementsTypesSetNameToSyuiloZhCn extends _StringsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_StringsMisskeyAchievementsTypesSetNameToSyuiloZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '像神一样呐';
	@override String get description => '将名称设定为 syuilo';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1ZhCn extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated1ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '一周年';
	@override String get description => '账户创建时间超过 1 年';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2ZhCn extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated2ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '二周年';
	@override String get description => '账户创建时间超过 2 年';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3ZhCn extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated3ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '三周年';
	@override String get description => '账户创建时间超过 3 年';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _StringsMisskeyAchievementsTypesLoggedInOnBirthdayZhCn extends _StringsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnBirthdayZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '生日快乐';
	@override String get description => '在生日当天登录';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayZhCn extends _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '恭贺新禧';
	@override String get description => '在元旦登入';
	@override String get flavor => '今年也请对本服务器多多指教！';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _StringsMisskeyAchievementsTypesCookieClickedZhCn extends _StringsMisskeyAchievementsTypesCookieClickedEnUs {
	_StringsMisskeyAchievementsTypesCookieClickedZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '点击饼干小游戏';
	@override String get description => '点击了可疑的饼干';
	@override String get flavor => '是不是软件有问题？';
}

// Path: misskey.achievements_.types_.brainDiver_
class _StringsMisskeyAchievementsTypesBrainDiverZhCn extends _StringsMisskeyAchievementsTypesBrainDiverEnUs {
	_StringsMisskeyAchievementsTypesBrainDiverZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => '发布了包含 Brain Diver 链接的帖子';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _StringsMisskeyAchievementsTypesSmashTestNotificationButtonZhCn extends _StringsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_StringsMisskeyAchievementsTypesSmashTestNotificationButtonZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '过度测试';
	@override String get description => '短时间内连续测试通知';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _StringsMisskeyAchievementsTypesTutorialCompletedZhCn extends _StringsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_StringsMisskeyAchievementsTypesTutorialCompletedZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskey 初学者课程 结业证书';
	@override String get description => '完成了教学';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadZhCn extends _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_StringsMisskeyAchievementsTypesBubbleGameExplodingHeadZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => '你合成出了游戏里最大的Emoji';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadZhCn extends _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '两个🤯';
	@override String get description => '你合成出了2个游戏里最大的Emoji';
}

// Path: misskey.pages_.blocks.note_
class _StringsMisskeyPagesBlocksNoteZhCn extends _StringsMisskeyPagesBlocksNoteEnUs {
	_StringsMisskeyPagesBlocksNoteZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get id => '帖子 ID';
	@override String get idDescription => '您也可以通过粘贴帖子的URL来进行设置。';
	@override String get detailed => '显示详细信息';
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsZhCn extends _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsInvalidParamsZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '缺少参数';
	@override String get description => '缺少从外部站点获取数据所需的信息。请检查 URL。';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedZhCn extends _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '不支持此外部资源';
	@override String get description => '不支持从此外部站点获取的资源类型。请联系站点管理员。';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchZhCn extends _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsFailedToFetchZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '获取数据失败';
	@override String get fetchErrorDescription => '与外部站点的通信失败。 如果重试后问题仍然存在，请联系站点管理员。';
	@override String get parseErrorDescription => '无法读取从外部站点取得的数据。请联系站点管理员。';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedZhCn extends _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '无法获取正确数据';
	@override String get description => '无法验证数据的完整性。安全起见，无法继续安装。请联系站点管理员。';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedZhCn extends _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'AiScript 错误';
	@override String get description => '虽然取得了数据，但是由于 AiScript 解析时出现错误，无法读取数据。请联系插件的作者。可在 Javascript 控制台查看错误详情。';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedZhCn extends _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '插件安装失败';
	@override String get description => '安装插件时出现错误。请再试一次。可在 Javascript 控制台查看错误详情。';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedZhCn extends _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '主题解析错误';
	@override String get description => '虽然取得了主题文件，但是由于解析时出现错误，无法加载主题。请联系主题的作者。可在 Javascript 控制台查看错误详情。';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedZhCn extends _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '安装主题失败';
	@override String get description => '安装主题时出错。请再试一次。可在 Javascript 控制台查看错误详情。';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _StringsMisskeyInitialTutorialPostNoteCwExampleNoteZhCn extends _StringsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_StringsMisskeyInitialTutorialPostNoteCwExampleNoteZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get cw => '深夜报复社会';
	@override String get note => '茨了带巧克力的甜甜圈🍩😋';
}
