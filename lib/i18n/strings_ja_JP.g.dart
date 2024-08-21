///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint

part of 'strings.g.dart';

// Path: <root>
class _StringsJaJp extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsJaJp.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.jaJp,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <ja-JP>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	@override late final _StringsJaJp _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAriaJaJp aria = _StringsAriaJaJp._(_root);
	@override late final _StringsMisskeyJaJp misskey = _StringsMisskeyJaJp._(_root);
	@override late final _StringsMisskeyIOJaJp misskeyIO = _StringsMisskeyIOJaJp._(_root);
}

// Path: aria
class _StringsAriaJaJp extends _StringsAriaEnUs {
	_StringsAriaJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get aboutAria => 'Ariaについて';
	@override String get accessToken => 'アクセストークン';
	@override TextSpan acknowledgements({required InlineSpan miria, required InlineSpan misskey}) => TextSpan(children: [
		const TextSpan(text: 'Ariaは'),
		miria,
		const TextSpan(text: 'のフォークです。\nAriaのローカライゼーションは'),
		misskey,
		const TextSpan(text: 'のローカライゼーションファイルを基にしています。\n両プロジェクトのコントリビューターの皆様に感謝いたします。'),
	]);
	@override String get addTab => 'タブを追加';
	@override String get alwaysExpandCw => 'CWを常に展開する';
	@override String get alwaysExpandLongNote => '長いノートを常に展開する';
	@override String get alwaysExpandMediaInSubNote => 'サブノート中のメディアを常に展開する';
	@override String get alwaysShowTabHeader => 'タブの情報を常に表示する';
	@override String get authenticate => '認証';
	@override String get authenticated => '認証してきた';
	@override String get avatarSize => 'アイコンのサイズ';
	@override String get background => '背景';
	@override String get confirmBeforeFollow => 'フォローする前に確認する';
	@override String get confirmBeforePost => '投稿する前に確認する';
	@override String get confirmBeforeReact => 'リアクションする前に確認する';
	@override String get copied => 'クリップボードにコピーしました';
	@override String get copyName => '名前をコピー';
	@override String get crop => 'クロップ';
	@override String get custom => 'カスタム';
	@override String get defaultReaction => 'デフォルトのリアクション';
	@override String deleteAccountTabsConfirm({required Object n}) => 'このアカウントのタブが${n}個あります。削除しますか？';
	@override String deleteFilesConfirm({required Object n}) => '${n}個のファイルを削除しますか？';
	@override String get deleteTabConfirm => 'このタブを削除しますか？';
	@override String get disableDataSaverWhenOnWifi => 'Wi-Fi接続中はデータセーバーを無効にする';
	@override String get disableSubscribingNotes => 'リアクションのリアルタイム更新を無効にする';
	@override String get discardChangesConfirm => '変更せずに戻りますか？';
	@override String get doubleTapToShow => 'ダブルタップして表示';
	@override String get downloaded => 'ダウンロードしました';
	@override String get draw => '手描き';
	@override String get editImage => '画像を編集';
	@override String get emojiPickerAutofocus => '絵文字ピッカーでキーボードを自動で開く';
	@override String get emojiPickerScale => '絵文字ピッカーのサイズ';
	@override String get emojiPickerUseDialog => '絵文字ピッカーをダイアログにする';
	@override String get enableEmojiFadeIn => 'カスタム絵文字のフェードインを有効にする';
	@override String get enableFederation => '連合ありにする';
	@override String get endpoint => 'エンドポイント';
	@override String get expandNote => 'ノートを開く';
	@override String get extraMentionsWarning => '返信元のノートには含まれていないメンションがあります';
	@override String get fileNotFound => 'ファイルが見つかりません';
	@override String get findServer => 'Misskeyサーバーを見つける';
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: 'をフォローしますか？'),
	]);
	@override String get font => 'フォント';
	@override String get fromDevice => '端末から';
	@override String get guest => 'ゲスト';
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Ariaは有志によって様々な言語に翻訳されています。'),
		link,
		const TextSpan(text: 'で翻訳に協力できます。'),
	]);
	@override TextSpan iconAttribution({required InlineSpan sevenc_nanashi, required InlineSpan cc_by}) => TextSpan(children: [
		const TextSpan(text: 'Ariaのアイコンは'),
		sevenc_nanashi,
		const TextSpan(text: 'によって作成され、'),
		cc_by,
		const TextSpan(text: 'の下で提供されています。'),
	]);
	@override String get importCompleted => 'インポートが完了しました';
	@override String get importConfirm => '設定をインポートしますか？現在の設定は上書きされます。';
	@override String get invalidListFormat => 'リストの形式が正しくありません';
	@override String jumpTo({required Object x}) => '${x}にジャンプ';
	@override String get keepOpen => '開いたままにする';
	@override String get keepTimelinePosition => 'タイムラインの位置を保持する';
	@override String get lineHeight => '行間';
	@override String get loginWithAccessToken => 'アクセストークンでログイン';
	@override String get margin => '余白';
	@override String get media => 'メディア';
	@override String get mentionToRemoteWarning => 'リモートユーザーへのメンションが含まれています';
	@override String get moved => '移動しました';
	@override String get muted => 'ミュート中';
	@override String nFiles({required Object n}) => '${n}個のファイル';
	@override String get newFollowRequestReceived => '新しいフォロー申請があります';
	@override String get newNotes => '新しいノート';
	@override String get newNotificationReceived => '新しい通知があります';
	@override String get newNotifications => '新しい通知';
	@override String get noAccounts => 'アカウントがありません';
	@override String get noTabs => 'タブがありません';
	@override String get noThemes => 'テーマがありません';
	@override String get noteDoubleTapAction => 'ノートをダブルタップしたときの動作';
	@override String get noteFooterSize => 'アクションボタンのサイズ';
	@override String get noteLongPressAction => 'ノートを長押ししたときの動作';
	@override String get noteTapAction => 'ノートをタップしたときの動作';
	@override String get notesAfterRenotes => 'リノート直後のノート';
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: '人がオンライン'),
	]);
	@override String get opacity => '不透明度';
	@override String get openAsGuest => 'ゲストとして開く';
	@override String get openInAnotherAccount => '別のアカウントで開く';
	@override String get openInBrowser => 'ブラウザで開く';
	@override String get openInExternalBrowser => '外部ブラウザで開く';
	@override String get openInInternalBrowser => '内部ブラウザで開く';
	@override String get openMenu => 'メニューを開く';
	@override String get openSensitiveMediaOnDoubleTap => 'ダブルタップしてセンシティブなメディアを開く';
	@override String get paste => '貼り付け';
	@override TextSpan pastePinnedEmojisDescription({required InlineSpan url}) => TextSpan(children: [
		const TextSpan(text: 'JSON形式で表記された絵文字のリストを貼り付けて一括でピン止めします。\nMisskey Webでピン止めした絵文字のリストは'),
		url,
		const TextSpan(text: 'からコピーすることができます。'),
	]);
	@override String get pinToEmojiPicker => '絵文字ピッカーにピン留め';
	@override String get playAudio => '音声を再生';
	@override String get playVideo => '動画を再生';
	@override String get postConfirm => 'このノートを投稿しますか？';
	@override String get reactionConfirm => 'リアクションしますか？';
	@override String get renoteConfirm => 'このノートをリノートしますか？';
	@override String get renoteToChannel => 'チャンネルにリノート';
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: 'がリノート'),
	]);
	@override String get rotate => '回転';
	@override String get scale => '拡大';
	@override String get selectIcon => 'アイコンを選択';
	@override TextSpan selfRenotedBy({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: 'がセルフリノート'),
	]);
	@override String get serverUrl => 'サーバーのURL';
	@override String get settingsFileForAria => 'Ariaの設定ファイル';
	@override TextSpan settingsForUser({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: 'の設定'),
	]);
	@override String get showAvatarsInNote => 'ノートにユーザーのアイコンを表示する';
	@override String get showAvatarsInSubNote => 'サブノートにユーザーのアイコンを表示する';
	@override String get showHomeFAB => 'ホームボタンを表示する';
	@override String get showImage => '画像を表示';
	@override String get showLikeButtonInNoteFooter => 'ノートのアクションにいいねを追加';
	@override String get showMenuButtonInTabBar => 'タイムラインのタブバーにメニューボタンを追加';
	@override String get showNoteCreatedAt => 'ノートの作成日時を表示する';
	@override String get showNoteFooter => 'ノートにアクションボタンを表示する';
	@override String get showNoteReactionsViewer => 'ノートにリアクションを表示する';
	@override String get showNotificationsFAB => '通知ボタンを表示する';
	@override String get showPopupOnNewNote => 'ノートを受信したときにポップアップを表示する';
	@override String get showPostForm => '投稿フォームを表示';
	@override String get showQuoteButtonInNoteFooter => 'ノートのアクションに引用を追加';
	@override String get showSelfRenotes => 'セルフリノートを表示する';
	@override String get showShowPostFormFAB => '投稿フォームボタンを表示する';
	@override String get showStackTrace => 'スタックトレースを表示';
	@override String get showSubNoteFooter => 'サブノートにアクションボタンを表示する';
	@override String get showSubNoteReactionsViewer => 'サブノートにリアクションを表示する';
	@override String get showTimelineLastViewedAt => 'タイムラインを最後に見た日時を表示する';
	@override String get showTimelineTabBarAtBottom => 'タイムラインのタブバーを下に表示する';
	@override String get showTranslateButtonInNoteFooter => 'ノートのアクションに翻訳を追加';
	@override String get sinceDate => 'この日から';
	@override String get stackTrace => 'スタックトレース';
	@override String get streamingChannel => 'ストリーミングチャンネル';
	@override String get tabName => 'タブの名前';
	@override String get tabType => 'タブの種類';
	@override String get tabs => 'タブ';
	@override String get tapToShow => 'タップして表示';
	@override String get timeMachine => 'タイムマシン';
	@override String get unfavorited => 'お気に入りを解除しました';
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: 'のフォローを解除しますか？'),
	]);
	@override String get untilDate => 'この日まで';
	@override String get uploaded => 'アップロードしました';
	@override String get useThisEmoji => 'この絵文字を使う';
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: 'が何かを言いました'),
	]);
	@override TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: 'のセンシティブなファイルを含む投稿'),
	]);
	@override String get vibrateNote => 'ノートを受信したときに振動する';
	@override String get vibrateNotification => '通知を受信したときに振動する';
	@override String get webBrowser => 'ウェブブラウザ';
}

// Path: misskey
class _StringsMisskeyJaJp extends _StringsMisskeyEnUs {
	_StringsMisskeyJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get lang__ => '日本語';
	@override String get headlineMisskey => 'ノートでつながるネットワーク';
	@override String get introMisskey => 'ようこそ！Misskeyは、オープンソースの分散型マイクロブログサービスです。\n「ノート」を作成して、いま起こっていることを共有したり、あなたについて皆に発信しよう📡\n「リアクション」機能で、皆のノートに素早く反応を追加することもできます👍\n新しい世界を探検しよう🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name}は、オープンソースのプラットフォーム<b>Misskey</b>のサーバーのひとつです。';
	@override String monthAndDay({required Object month, required Object day}) => '${month}月 ${day}日';
	@override String get search => '検索';
	@override String get notifications => '通知';
	@override String get username => 'ユーザー名';
	@override String get password => 'パスワード';
	@override String get forgotPassword => 'パスワードを忘れた';
	@override String get fetchingAsApObject => '連合に照会中';
	@override String get ok => 'OK';
	@override String get gotIt => 'わかった';
	@override String get cancel => 'キャンセル';
	@override String get noThankYou => 'やめておく';
	@override String get enterUsername => 'ユーザー名を入力';
	@override String renotedBy({required Object user}) => '${user}がリノート';
	@override String get noNotes => 'ノートはありません';
	@override String get noNotifications => '通知はありません';
	@override String get instance => 'サーバー';
	@override String get settings => '設定';
	@override String get notificationSettings => '通知の設定';
	@override String get basicSettings => '基本設定';
	@override String get otherSettings => 'その他の設定';
	@override String get openInWindow => 'ウィンドウで開く';
	@override String get profile => 'プロフィール';
	@override String get timeline => 'タイムライン';
	@override String get noAccountDescription => '自己紹介はありません';
	@override String get login => 'ログイン';
	@override String get loggingIn => 'ログイン中';
	@override String get logout => 'ログアウト';
	@override String get signup => '新規登録';
	@override String get uploading => 'アップロード中';
	@override String get save => '保存';
	@override String get users => 'ユーザー';
	@override String get addUser => 'ユーザーを追加';
	@override String get favorite => 'お気に入り';
	@override String get favorites => 'お気に入り';
	@override String get unfavorite => 'お気に入り解除';
	@override String get favorited => 'お気に入りに登録しました。';
	@override String get alreadyFavorited => '既にお気に入りに登録されています。';
	@override String get cantFavorite => 'お気に入りに登録できませんでした。';
	@override String get pin => 'ピン留め';
	@override String get unpin => 'ピン留め解除';
	@override String get copyContent => '内容をコピー';
	@override String get copyLink => 'リンクをコピー';
	@override String get copyLinkRenote => 'リノートのリンクをコピー';
	@override String get delete => '削除';
	@override String get deleteAndEdit => '削除して編集';
	@override String get deleteAndEditConfirm => 'このノートを削除してもう一度編集しますか？このノートへのリアクション、リノート、返信も全て削除されます。';
	@override String get addToList => 'リストに追加';
	@override String get addToAntenna => 'アンテナに追加';
	@override String get sendMessage => 'メッセージを送信';
	@override String get copyRSS => 'RSSをコピー';
	@override String get copyUsername => 'ユーザー名をコピー';
	@override String get copyUserId => 'ユーザーIDをコピー';
	@override String get copyNoteId => 'ノートIDをコピー';
	@override String get copyFileId => 'ファイルIDをコピー';
	@override String get copyFolderId => 'フォルダーIDをコピー';
	@override String get copyProfileUrl => 'プロフィールURLをコピー';
	@override String get searchUser => 'ユーザーを検索';
	@override String get searchThisUsersNotes => 'ユーザーのノートを検索';
	@override String get reply => '返信';
	@override String get loadMore => 'もっと見る';
	@override String get showMore => 'もっと見る';
	@override String get showLess => '閉じる';
	@override String get youGotNewFollower => 'フォローされました';
	@override String get receiveFollowRequest => 'フォローリクエストされました';
	@override String get followRequestAccepted => 'フォローが承認されました';
	@override String get mention => 'メンション';
	@override String get mentions => 'あなた宛て';
	@override String get directNotes => 'ダイレクト投稿';
	@override String get importAndExport => 'インポートとエクスポート';
	@override String get import => 'インポート';
	@override String get export => 'エクスポート';
	@override String get files => 'ファイル';
	@override String get download => 'ダウンロード';
	@override String driveFileDeleteConfirm({required Object name}) => 'ファイル「${name}」を削除しますか？このファイルを使用した一部のコンテンツも削除されます。';
	@override String unfollowConfirm({required Object name}) => '${name}のフォローを解除しますか？';
	@override String get exportRequested => 'エクスポートをリクエストしました。これには時間がかかる場合があります。エクスポートが終わると、「ドライブ」に追加されます。';
	@override String get importRequested => 'インポートをリクエストしました。これには時間がかかる場合があります。';
	@override String get lists => 'リスト';
	@override String get noLists => 'リストはありません';
	@override String get note => 'ノート';
	@override String get notes => 'ノート';
	@override String get following => 'フォロー';
	@override String get followers => 'フォロワー';
	@override String get followsYou => 'フォローされています';
	@override String get createList => 'リスト作成';
	@override String get manageLists => 'リストの管理';
	@override String get error => 'エラー';
	@override String get somethingHappened => '問題が発生しました';
	@override String get retry => '再試行';
	@override String get pageLoadError => 'ページの読み込みに失敗しました。';
	@override String get pageLoadErrorDescription => 'これは通常、ネットワークまたはブラウザキャッシュが原因です。キャッシュをクリアするか、しばらく待ってから再度試してください。';
	@override String get serverIsDead => 'サーバーの応答がありません。しばらく待ってから再度試してください。';
	@override String get youShouldUpgradeClient => 'このページを表示するためには、リロードして新しいバージョンのクライアントをご利用ください。';
	@override String get enterListName => 'リスト名を入力';
	@override String get privacy => 'プライバシー';
	@override String get makeFollowManuallyApprove => 'フォローを承認制にする';
	@override String get defaultNoteVisibility => 'デフォルトの公開範囲';
	@override String get follow => 'フォロー';
	@override String get followRequest => 'フォロー申請';
	@override String get followRequests => 'フォロー申請';
	@override String get unfollow => 'フォロー解除';
	@override String get followRequestPending => 'フォロー許可待ち';
	@override String get enterEmoji => '絵文字を入力';
	@override String get renote => 'リノート';
	@override String get unrenote => 'リノート解除';
	@override String get renoted => 'リノートしました。';
	@override String renotedToX({required Object name}) => '${name} にリノートしました。';
	@override String get cantRenote => 'この投稿はリノートできません。';
	@override String get cantReRenote => 'リノートをリノートすることはできません。';
	@override String get quote => '引用';
	@override String get inChannelRenote => 'チャンネル内リノート';
	@override String get inChannelQuote => 'チャンネル内引用';
	@override String get renoteToChannel => 'チャンネルにリノート';
	@override String get renoteToOtherChannel => '他のチャンネルにリノート';
	@override String get pinnedNote => 'ピン留めされたノート';
	@override String get pinned => 'ピン留め';
	@override String get you => 'あなた';
	@override String get clickToShow => 'クリックして表示';
	@override String get sensitive => 'センシティブ';
	@override String get add => '追加';
	@override String get reaction => 'リアクション';
	@override String get reactions => 'リアクション';
	@override String get emojiPicker => '絵文字ピッカー';
	@override String get pinnedEmojisForReactionSettingDescription => 'リアクション時にピン留め表示する絵文字を設定できます';
	@override String get pinnedEmojisSettingDescription => '絵文字入力時にピン留め表示する絵文字を設定できます';
	@override String get emojiPickerDisplay => 'ピッカーの表示';
	@override String get overwriteFromPinnedEmojisForReaction => 'リアクション設定から上書きする';
	@override String get overwriteFromPinnedEmojis => '全般設定から上書きする';
	@override String get reactionSettingDescription2 => 'ドラッグして並び替え、クリックして削除、＋を押して追加します。';
	@override String get rememberNoteVisibility => '公開範囲を記憶する';
	@override String get attachCancel => '添付取り消し';
	@override String get deleteFile => 'ファイルを削除';
	@override String get markAsSensitive => 'センシティブとして設定';
	@override String get unmarkAsSensitive => 'センシティブを解除する';
	@override String get enterFileName => 'ファイル名を入力';
	@override String get mute => 'ミュート';
	@override String get unmute => 'ミュート解除';
	@override String get renoteMute => 'リノートをミュート';
	@override String get renoteUnmute => 'リノートのミュートを解除';
	@override String get block => 'ブロック';
	@override String get unblock => 'ブロック解除';
	@override String get suspend => '凍結';
	@override String get unsuspend => '解凍';
	@override String get blockConfirm => 'ブロックしますか？';
	@override String get unblockConfirm => 'ブロック解除しますか？';
	@override String get suspendConfirm => '凍結しますか？';
	@override String get unsuspendConfirm => '解凍しますか？';
	@override String get selectList => 'リストを選択';
	@override String get editList => 'リストを編集';
	@override String get selectChannel => 'チャンネルを選択';
	@override String get selectAntenna => 'アンテナを選択';
	@override String get editAntenna => 'アンテナを編集';
	@override String get createAntenna => 'アンテナを作成';
	@override String get selectWidget => 'ウィジェットを選択';
	@override String get editWidgets => 'ウィジェットを編集';
	@override String get editWidgetsExit => '編集を終了';
	@override String get customEmojis => 'カスタム絵文字';
	@override String get emoji => '絵文字';
	@override String get emojis => '絵文字';
	@override String get emojiName => '絵文字名';
	@override String get emojiUrl => '絵文字画像URL';
	@override String get addEmoji => '絵文字を追加';
	@override String get settingGuide => 'おすすめ設定';
	@override String get cacheRemoteFiles => 'リモートのファイルをキャッシュする';
	@override String get cacheRemoteFilesDescription => 'この設定を有効にすると、リモートファイルをこのサーバーのストレージにキャッシュするようになります。画像の表示が高速になりますが、サーバーのストレージを多く消費します。リモートユーザーがどれほどキャッシュを保持するかは、ロールによるドライブ容量制限によって決定されます。この制限を超えた場合、古いファイルからキャッシュが削除されリンクになります。この設定が無効の場合、リモートのファイルを最初からリンクとして保持しますが、画像のサムネイル生成やユーザーのプライバシー保護のために、default.ymlでproxyRemoteFilesをtrueにすることをお勧めします。';
	@override String get youCanCleanRemoteFilesCache => 'ファイル管理の🗑️ボタンで全てのキャッシュを削除できます。';
	@override String get cacheRemoteSensitiveFiles => 'リモートのセンシティブなファイルをキャッシュする';
	@override String get cacheRemoteSensitiveFilesDescription => 'この設定を無効にすると、リモートのセンシティブなファイルはキャッシュせず直リンクするようになります。';
	@override String get flagAsBot => 'Botとして設定';
	@override String get flagAsBotDescription => 'このアカウントがプログラムによって運用される場合は、このフラグをオンにします。オンにすると、反応の連鎖を防ぐためのフラグとして他の開発者に役立ったり、Misskeyのシステム上での扱いがBotに合ったものになります。';
	@override String get flagAsCat => 'にゃああああああああああああああ！！！！！！！！！！！！';
	@override String get flagAsCatDescription => 'にゃにゃにゃ？？';
	@override String get flagShowTimelineReplies => 'タイムラインにノートへの返信を表示する';
	@override String get flagShowTimelineRepliesDescription => 'オンにすると、タイムラインにユーザーのノート以外にもそのユーザーの他のノートへの返信を表示します。';
	@override String get autoAcceptFollowed => 'フォロー中ユーザーからのフォロリクを自動承認';
	@override String get addAccount => 'アカウントを追加';
	@override String get reloadAccountsList => 'アカウントリストの情報を更新';
	@override String get loginFailed => 'ログインに失敗しました';
	@override String get showOnRemote => 'リモートで表示';
	@override String get continueOnRemote => 'リモートで続行';
	@override String get chooseServerOnMisskeyHub => 'Misskey Hubからサーバーを選択';
	@override String get specifyServerHost => 'サーバーのドメインを直接指定';
	@override String get inputHostName => 'ドメインを入力してください';
	@override String get general => '全般';
	@override String get wallpaper => '壁紙';
	@override String get setWallpaper => '壁紙を設定';
	@override String get removeWallpaper => '壁紙を削除';
	@override String searchWith({required Object q}) => '検索: ${q}';
	@override String get youHaveNoLists => 'リストがありません';
	@override String followConfirm({required Object name}) => '${name}をフォローしますか？';
	@override String get proxyAccount => 'プロキシアカウント';
	@override String get proxyAccountDescription => 'プロキシアカウントは、特定の条件下でユーザーのリモートフォローを代行するアカウントです。例えば、ユーザーがリモートユーザーをリストに入れたとき、リストに入れられたユーザーを誰もフォローしていないとアクティビティがサーバーに配達されないため、代わりにプロキシアカウントがフォローするようにします。';
	@override String get host => 'ホスト';
	@override String get selectSelf => '自分を選択';
	@override String get selectUser => 'ユーザーを選択';
	@override String get recipient => '宛先';
	@override String get annotation => '注釈';
	@override String get federation => '連合';
	@override String get instances => 'サーバー';
	@override String get registeredAt => '初観測';
	@override String get latestRequestReceivedAt => '直近のリクエスト受信';
	@override String get latestStatus => '直近のステータス';
	@override String get storageUsage => 'ストレージ使用量';
	@override String get charts => 'チャート';
	@override String get perHour => '1時間ごと';
	@override String get perDay => '1日ごと';
	@override String get stopActivityDelivery => 'アクティビティの配送を停止';
	@override String get blockThisInstance => 'このサーバーをブロック';
	@override String get silenceThisInstance => 'サーバーをサイレンス';
	@override String get mediaSilenceThisInstance => 'サーバーをメディアサイレンス';
	@override String get operations => '操作';
	@override String get software => 'ソフトウェア';
	@override String get version => 'バージョン';
	@override String get metadata => 'メタデータ';
	@override String withNFiles({required Object n}) => '${n}つのファイル';
	@override String get monitor => 'モニター';
	@override String get jobQueue => 'ジョブキュー';
	@override String get cpuAndMemory => 'CPUとメモリ';
	@override String get network => 'ネットワーク';
	@override String get disk => 'ディスク';
	@override String get instanceInfo => 'サーバー情報';
	@override String get statistics => '統計';
	@override String get clearQueue => 'キューをクリア';
	@override String get clearQueueConfirmTitle => 'キューをクリアしますか？';
	@override String get clearQueueConfirmText => '未配達の投稿は配送されなくなります。通常この操作を行う必要はありません。';
	@override String get clearCachedFiles => 'キャッシュをクリア';
	@override String get clearCachedFilesConfirm => 'キャッシュされたリモートファイルをすべて削除しますか？';
	@override String get blockedInstances => 'ブロックしたサーバー';
	@override String get blockedInstancesDescription => 'ブロックしたいサーバーのホストを改行で区切って設定します。ブロックされたサーバーは、このインスタンスとやり取りできなくなります。';
	@override String get silencedInstances => 'サイレンスしたサーバー';
	@override String get silencedInstancesDescription => 'サイレンスしたいサーバーのホストを改行で区切って設定します。サイレンスされたサーバーに所属するアカウントはすべて「サイレンス」として扱われ、フォローがすべてリクエストになります。ブロックしたインスタンスには影響しません。';
	@override String get mediaSilencedInstances => 'メディアサイレンスしたサーバー';
	@override String get mediaSilencedInstancesDescription => 'メディアサイレンスしたいサーバーのホストを改行で区切って設定します。メディアサイレンスされたサーバーに所属するアカウントによるファイルはすべてセンシティブとして扱われ、カスタム絵文字が使用できないようになります。ブロックしたインスタンスには影響しません。';
	@override String get muteAndBlock => 'ミュートとブロック';
	@override String get mutedUsers => 'ミュートしたユーザー';
	@override String get blockedUsers => 'ブロックしたユーザー';
	@override String get noUsers => 'ユーザーはいません';
	@override String get editProfile => 'プロフィールを編集';
	@override String get noteDeleteConfirm => 'このノートを削除しますか？';
	@override String get pinLimitExceeded => 'これ以上ピン留めできません';
	@override String get intro => 'Misskeyのインストールが完了しました！管理者アカウントを作成しましょう。';
	@override String get done => '完了';
	@override String get processing => '処理中';
	@override String get preview => 'プレビュー';
	@override String get default_ => 'デフォルト';
	@override String defaultValueIs({required Object value}) => 'デフォルト: ${value}';
	@override String get noCustomEmojis => '絵文字はありません';
	@override String get noJobs => 'ジョブはありません';
	@override String get federating => '連合中';
	@override String get blocked => 'ブロック中';
	@override String get suspended => '配信停止';
	@override String get all => '全て';
	@override String get subscribing => '購読中';
	@override String get publishing => '配信中';
	@override String get notResponding => '応答なし';
	@override String get instanceFollowing => 'サーバーのフォロー';
	@override String get instanceFollowers => 'サーバーのフォロワー';
	@override String get instanceUsers => 'サーバーのユーザー';
	@override String get changePassword => 'パスワードを変更';
	@override String get security => 'セキュリティ';
	@override String get retypedNotMatch => '入力が一致しません。';
	@override String get currentPassword => '現在のパスワード';
	@override String get newPassword => '新しいパスワード';
	@override String get newPasswordRetype => '新しいパスワード(再入力)';
	@override String get attachFile => 'ファイルを添付';
	@override String get more => 'もっと！';
	@override String get featured => 'ハイライト';
	@override String get usernameOrUserId => 'ユーザー名かユーザーID';
	@override String get noSuchUser => 'ユーザーが見つかりません';
	@override String get lookup => '照会';
	@override String get announcements => 'お知らせ';
	@override String get imageUrl => '画像URL';
	@override String get remove => '削除';
	@override String get removed => '削除しました';
	@override String removeAreYouSure({required Object x}) => '「${x}」を削除しますか？';
	@override String deleteAreYouSure({required Object x}) => '「${x}」を削除しますか？';
	@override String get resetAreYouSure => 'リセットしますか？';
	@override String get areYouSure => 'よろしいですか？';
	@override String get saved => '保存しました';
	@override String get messaging => 'チャット';
	@override String get upload => 'アップロード';
	@override String get keepOriginalUploading => 'オリジナル画像を保持';
	@override String get keepOriginalUploadingDescription => '画像をアップロードする時にオリジナル版を保持します。オフにするとアップロード時にブラウザでWeb公開用画像を生成します。';
	@override String get fromDrive => 'ドライブから';
	@override String get fromUrl => 'URLから';
	@override String get uploadFromUrl => 'URLアップロード';
	@override String get uploadFromUrlDescription => 'アップロードしたいファイルのURL';
	@override String get uploadFromUrlRequested => 'アップロードをリクエストしました';
	@override String get uploadFromUrlMayTakeTime => 'アップロードが完了するまで時間がかかる場合があります。';
	@override String get explore => 'みつける';
	@override String get messageRead => '既読';
	@override String get noMoreHistory => 'これより過去の履歴はありません';
	@override String get startMessaging => 'チャットを開始';
	@override String nUsersRead({required Object n}) => '${n}人が読みました';
	@override String agreeTo({required Object x0}) => '${x0}に同意';
	@override String get agree => '同意する';
	@override String get agreeBelow => '下記に同意する';
	@override String get basicNotesBeforeCreateAccount => '基本的な注意事項';
	@override String get termsOfService => '利用規約';
	@override String get start => '始める';
	@override String get home => 'ホーム';
	@override String get remoteUserCaution => 'リモートユーザーのため、情報が不完全です。';
	@override String get activity => 'アクティビティ';
	@override String get images => '画像';
	@override String get image => '画像';
	@override String get birthday => '誕生日';
	@override String yearsOld({required Object age}) => '${age}歳';
	@override String get registeredDate => '登録日';
	@override String get location => '場所';
	@override String get theme => 'テーマ';
	@override String get themeForLightMode => 'ライトモードで使うテーマ';
	@override String get themeForDarkMode => 'ダークモードで使うテーマ';
	@override String get light => 'ライト';
	@override String get dark => 'ダーク';
	@override String get lightThemes => '明るいテーマ';
	@override String get darkThemes => '暗いテーマ';
	@override String get syncDeviceDarkMode => 'デバイスのダークモードと同期する';
	@override String get drive => 'ドライブ';
	@override String get fileName => 'ファイル名';
	@override String get selectFile => 'ファイルを選択';
	@override String get selectFiles => 'ファイルを選択';
	@override String get selectFolder => 'フォルダーを選択';
	@override String get selectFolders => 'フォルダーを選択';
	@override String get fileNotSelected => 'ファイルが選択されていません';
	@override String get renameFile => 'ファイル名を変更';
	@override String get folderName => 'フォルダー名';
	@override String get createFolder => 'フォルダーを作成';
	@override String get renameFolder => 'フォルダー名を変更';
	@override String get deleteFolder => 'フォルダーを削除';
	@override String get folder => 'フォルダー';
	@override String get addFile => 'ファイルを追加';
	@override String get emptyDrive => 'ドライブは空です';
	@override String get emptyFolder => 'フォルダーは空です';
	@override String get unableToDelete => '削除できません';
	@override String get inputNewFileName => '新しいファイル名を入力してください';
	@override String get inputNewDescription => '新しいキャプションを入力してください';
	@override String get inputNewFolderName => '新しいフォルダ名を入力してください';
	@override String get circularReferenceFolder => '移動先のフォルダーは、移動するフォルダーのサブフォルダーです。';
	@override String get hasChildFilesOrFolders => 'このフォルダは空でないため、削除できません。';
	@override String get copyUrl => 'URLをコピー';
	@override String get rename => '名前を変更';
	@override String get avatar => 'アイコン';
	@override String get banner => 'バナー';
	@override String get displayOfSensitiveMedia => 'センシティブなメディアの表示';
	@override String get whenServerDisconnected => 'サーバーとの接続が失われたとき';
	@override String get disconnectedFromServer => 'サーバーから切断されました';
	@override String get reload => 'リロード';
	@override String get doNothing => 'なにもしない';
	@override String get reloadConfirm => 'リロードしますか？';
	@override String get watch => 'ウォッチ';
	@override String get unwatch => 'ウォッチ解除';
	@override String get accept => '許可';
	@override String get reject => '拒否';
	@override String get normal => '通常';
	@override String get instanceName => 'サーバー名';
	@override String get instanceDescription => 'サーバーの紹介';
	@override String get maintainerName => '管理者の名前';
	@override String get maintainerEmail => '管理者のメールアドレス';
	@override String get tosUrl => '利用規約URL';
	@override String get thisYear => '今年';
	@override String get thisMonth => '今月';
	@override String get today => '今日';
	@override String dayX({required Object day}) => '${day}日';
	@override String monthX({required Object month}) => '${month}月';
	@override String yearX({required Object year}) => '${year}年';
	@override String get pages => 'ページ';
	@override String get integration => '連携';
	@override String get connectService => '接続する';
	@override String get disconnectService => '切断する';
	@override String get enableLocalTimeline => 'ローカルタイムラインを有効にする';
	@override String get enableGlobalTimeline => 'グローバルタイムラインを有効にする';
	@override String get disablingTimelinesInfo => 'これらのタイムラインを無効化しても、利便性のため管理者およびモデレーターは引き続き利用することができます。';
	@override String get registration => '登録';
	@override String get enableRegistration => '誰でも新規登録できるようにする';
	@override String get invite => '招待';
	@override String get driveCapacityPerLocalAccount => 'ローカルユーザーひとりあたりのドライブ容量';
	@override String get driveCapacityPerRemoteAccount => 'リモートユーザーひとりあたりのドライブ容量';
	@override String get inMb => 'メガバイト単位';
	@override String get bannerUrl => 'バナー画像のURL';
	@override String get backgroundImageUrl => '背景画像のURL';
	@override String get basicInfo => '基本情報';
	@override String get pinnedUsers => 'ピン留めユーザー';
	@override String get pinnedUsersDescription => '「みつける」ページなどにピン留めしたいユーザーを改行で区切って記述します。';
	@override String get pinnedPages => 'ピン留めページ';
	@override String get pinnedPagesDescription => 'サーバーのトップページにピン留めしたいページのパスを改行で区切って記述します。';
	@override String get pinnedClipId => 'ピン留めするクリップのID';
	@override String get pinnedNotes => 'ピン留めされたノート';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'hCaptchaを有効にする';
	@override String get hcaptchaSiteKey => 'サイトキー';
	@override String get hcaptchaSecretKey => 'シークレットキー';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => 'mCaptchaを有効にする';
	@override String get mcaptchaSiteKey => 'サイトキー';
	@override String get mcaptchaSecretKey => 'シークレットキー';
	@override String get mcaptchaInstanceUrl => 'mCaptchaのインスタンスのURL';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'reCAPTCHAを有効にする';
	@override String get recaptchaSiteKey => 'サイトキー';
	@override String get recaptchaSecretKey => 'シークレットキー';
	@override String get turnstile => 'Turnstile';
	@override String get enableTurnstile => 'Turnstileを有効にする';
	@override String get turnstileSiteKey => 'サイトキー';
	@override String get turnstileSecretKey => 'シークレットキー';
	@override String get avoidMultiCaptchaConfirm => '複数のCaptchaを使用すると干渉を起こす可能性があります。他のCaptchaを無効にしますか？キャンセルして複数のCaptchaを有効化したままにすることも可能です。';
	@override String get antennas => 'アンテナ';
	@override String get manageAntennas => 'アンテナの管理';
	@override String get name => '名前';
	@override String get antennaSource => '受信ソース';
	@override String get antennaKeywords => '受信キーワード';
	@override String get antennaExcludeKeywords => '除外キーワード';
	@override String get antennaExcludeBots => 'Botアカウントを除外';
	@override String get antennaKeywordsDescription => 'スペースで区切るとAND指定になり、改行で区切るとOR指定になります';
	@override String get notifyAntenna => '新しいノートを通知する';
	@override String get withFileAntenna => 'ファイルが添付されたノートのみ';
	@override String get enableServiceworker => 'ブラウザへのプッシュ通知を有効にする';
	@override String get antennaUsersDescription => 'ユーザー名を改行で区切って指定します';
	@override String get caseSensitive => '大文字小文字を区別する';
	@override String get withReplies => '返信を含む';
	@override String get connectedTo => '次のアカウントに接続されています';
	@override String get notesAndReplies => '投稿と返信';
	@override String get withFiles => 'ファイル付き';
	@override String get silence => 'サイレンス';
	@override String get silenceConfirm => 'サイレンスしますか？';
	@override String get unsilence => 'サイレンス解除';
	@override String get unsilenceConfirm => 'サイレンス解除しますか？';
	@override String get popularUsers => '人気のユーザー';
	@override String get recentlyUpdatedUsers => '最近投稿したユーザー';
	@override String get recentlyRegisteredUsers => '最近登録したユーザー';
	@override String get recentlyDiscoveredUsers => '最近発見されたユーザー';
	@override String exploreUsersCount({required Object count}) => '${count}のユーザーがいます';
	@override String get exploreFediverse => 'Fediverseを探索';
	@override String get popularTags => '人気のタグ';
	@override String get userList => 'リスト';
	@override String get about => '情報';
	@override String get aboutMisskey => 'Misskeyについて';
	@override String get administrator => '管理者';
	@override String get token => '確認コード';
	@override String get x2fa => '二要素認証';
	@override String get setupOf2fa => '二要素認証のセットアップ';
	@override String get totp => '認証アプリ';
	@override String get totpDescription => '認証アプリを使ってワンタイムパスワードを入力';
	@override String get moderator => 'モデレーター';
	@override String get moderation => 'モデレーション';
	@override String get moderationNote => 'モデレーションノート';
	@override String get addModerationNote => 'モデレーションノートを追加する';
	@override String get moderationLogs => 'モデログ';
	@override String nUsersMentioned({required Object n}) => '${n}人が投稿';
	@override String get securityKeyAndPasskey => 'セキュリティキー・パスキー';
	@override String get securityKey => 'セキュリティキー';
	@override String get lastUsed => '最後の使用';
	@override String lastUsedAt({required Object t}) => '最後の使用: ${t}';
	@override String get unregister => '登録を解除';
	@override String get passwordLessLogin => 'パスワードレスログイン';
	@override String get passwordLessLoginDescription => 'パスワードを使用せず、セキュリティキーやパスキーなどのみでログインします';
	@override String get resetPassword => 'パスワードをリセット';
	@override String newPasswordIs({required Object password}) => '新しいパスワードは「${password}」です';
	@override String get reduceUiAnimation => 'UIのアニメーションを減らす';
	@override String get share => '共有';
	@override String get notFound => '見つかりません';
	@override String get notFoundDescription => '指定されたURLに該当するページはありませんでした。';
	@override String get uploadFolder => '既定アップロード先';
	@override String get markAsReadAllNotifications => 'すべての通知を既読にする';
	@override String get markAsReadAllUnreadNotes => 'すべての投稿を既読にする';
	@override String get markAsReadAllTalkMessages => 'すべてのチャットを既読にする';
	@override String get help => 'ヘルプ';
	@override String get inputMessageHere => 'ここにメッセージを入力';
	@override String get close => '閉じる';
	@override String get invites => '招待';
	@override String get members => 'メンバー';
	@override String get transfer => '譲渡';
	@override String get title => 'タイトル';
	@override String get text => 'テキスト';
	@override String get enable => '有効にする';
	@override String get next => '次';
	@override String get retype => '再入力';
	@override String noteOf({required Object user}) => '${user}のノート';
	@override String get quoteAttached => '引用付き';
	@override String get quoteQuestion => '引用として添付しますか？';
	@override String get attachAsFileQuestion => 'クリップボードのテキストが長いです。テキストファイルとして添付しますか？';
	@override String get noMessagesYet => 'まだチャットはありません';
	@override String get newMessageExists => '新しいメッセージがあります';
	@override String get onlyOneFileCanBeAttached => 'メッセージに添付できるファイルはひとつです';
	@override String get signinRequired => '続行する前に、登録またはログインが必要です';
	@override String get signinOrContinueOnRemote => '続行するには、お使いのサーバーに移動するか、このサーバーに登録・ログインする必要があります';
	@override String get invitations => '招待';
	@override String get invitationCode => '招待コード';
	@override String get checking => '確認しています';
	@override String get available => '利用できます';
	@override String get unavailable => '利用できません';
	@override String get usernameInvalidFormat => 'a~z、A~Z、0~9、_が使えます';
	@override String get tooShort => '短すぎます';
	@override String get tooLong => '長すぎます';
	@override String get weakPassword => '弱いパスワード';
	@override String get normalPassword => '普通のパスワード';
	@override String get strongPassword => '強いパスワード';
	@override String get passwordMatched => '一致しました';
	@override String get passwordNotMatched => '一致していません';
	@override String signinWith({required Object x}) => '${x}でログイン';
	@override String get signinFailed => 'ログインできませんでした。ユーザー名とパスワードを確認してください。';
	@override String get or => 'もしくは';
	@override String get language => '言語';
	@override String get uiLanguage => 'UIの表示言語';
	@override String aboutX({required Object x}) => '${x}について';
	@override String get emojiStyle => '絵文字のスタイル';
	@override String get native => 'ネイティブ';
	@override String get disableDrawer => 'メニューをドロワーで表示しない';
	@override String get showNoteActionsOnlyHover => 'ノートのアクションをホバー時のみ表示する';
	@override String get showReactionsCount => 'ノートのリアクション数を表示する';
	@override String get noHistory => '履歴はありません';
	@override String get signinHistory => 'ログイン履歴';
	@override String get enableAdvancedMfm => '高度なMFMを有効にする';
	@override String get enableAnimatedMfm => '動きのあるMFMを有効にする';
	@override String get doing => 'やっています';
	@override String get category => 'カテゴリ';
	@override String get tags => 'タグ';
	@override String get docSource => 'このドキュメントのソース';
	@override String get createAccount => 'アカウントを作成';
	@override String get existingAccount => '既存のアカウント';
	@override String get regenerate => '再生成';
	@override String get fontSize => 'フォントサイズ';
	@override String get mediaListWithOneImageAppearance => '画像が1枚のみのメディアリストの高さ';
	@override String limitTo({required Object x}) => '${x}を上限に';
	@override String get noFollowRequests => 'フォロー申請はありません';
	@override String get openImageInNewTab => '画像を新しいタブで開く';
	@override String get dashboard => 'ダッシュボード';
	@override String get local => 'ローカル';
	@override String get remote => 'リモート';
	@override String get total => '合計';
	@override String get weekOverWeekChanges => '前週比';
	@override String get dayOverDayChanges => '前日比';
	@override String get appearance => 'アピアランス';
	@override String get clientSettings => 'クライアント設定';
	@override String get accountSettings => 'アカウント設定';
	@override String get promotion => 'プロモーション';
	@override String get promote => 'プロモート';
	@override String get numberOfDays => '日数';
	@override String get hideThisNote => 'このノートを非表示';
	@override String get showFeaturedNotesInTimeline => 'タイムラインにおすすめのノートを表示する';
	@override String get objectStorage => 'オブジェクトストレージ';
	@override String get useObjectStorage => 'オブジェクトストレージを使用';
	@override String get objectStorageBaseUrl => 'Base URL';
	@override String get objectStorageBaseUrlDesc => '参照に使用するURL。CDNやProxyを使用している場合はそのURL、S3: \'https://<bucket>.s3.amazonaws.com\'、GCS等: \'https://storage.googleapis.com/<bucket>\'。';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => '使用サービスのbucket名を指定してください。';
	@override String get objectStoragePrefix => 'Prefix';
	@override String get objectStoragePrefixDesc => 'このprefixのディレクトリ下に格納されます。';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageEndpointDesc => 'S3の場合は空、それ以外の場合は各サービスのendpointを指定してください。\'<host>\'または\'<host>:<port>\'のように指定します。';
	@override String get objectStorageRegion => 'Region';
	@override String get objectStorageRegionDesc => '\'xx-east-1\'のようなregionを指定してください。使用サービスにregionの概念がない場合は\'us-east-1\'にしてください。AWS設定ファイルまたは環境変数を参照する場合は空にしてください。';
	@override String get objectStorageUseSSL => 'SSLを使用する';
	@override String get objectStorageUseSSLDesc => 'API接続にhttpsを使用しない場合はオフにしてください';
	@override String get objectStorageUseProxy => 'Proxyを利用する';
	@override String get objectStorageUseProxyDesc => 'API接続にproxyを利用しない場合はオフにしてください';
	@override String get objectStorageSetPublicRead => 'アップロード時に\'public-read\'を設定する';
	@override String get s3ForcePathStyleDesc => 's3ForcePathStyleを有効にすると、バケット名をURLのホスト名ではなくパスの一部として指定することを強制します。セルフホストされたMinioなどの使用時に有効にする必要がある場合があります。';
	@override String get serverLogs => 'サーバーログ';
	@override String get deleteAll => '全て削除';
	@override String get showFixedPostForm => 'タイムライン上部に投稿フォームを表示する';
	@override String get showFixedPostFormInChannel => 'タイムライン上部に投稿フォームを表示する(チャンネル)';
	@override String get withRepliesByDefaultForNewlyFollowed => 'フォローする際、デフォルトで返信をTLに含むようにする';
	@override String get newNoteRecived => '新しいノートがあります';
	@override String get sounds => 'サウンド';
	@override String get sound => 'サウンド';
	@override String get listen => '聴く';
	@override String get none => 'なし';
	@override String get showInPage => 'ページで表示';
	@override String get popout => 'ポップアウト';
	@override String get volume => '音量';
	@override String get masterVolume => 'マスター音量';
	@override String get notUseSound => 'サウンドを出力しない';
	@override String get useSoundOnlyWhenActive => 'Misskeyがアクティブな時のみサウンドを出力する';
	@override String get details => '詳細';
	@override String get chooseEmoji => '絵文字を選択';
	@override String get unableToProcess => '操作を完了できません';
	@override String get recentUsed => '最近使用';
	@override String get install => 'インストール';
	@override String get uninstall => 'アンインストール';
	@override String get installedApps => 'インストールされたアプリ';
	@override String get nothing => 'ありません';
	@override String get installedDate => 'インストール日時';
	@override String get lastUsedDate => '最終使用日時';
	@override String get state => '状態';
	@override String get sort => 'ソート';
	@override String get ascendingOrder => '昇順';
	@override String get descendingOrder => '降順';
	@override String get scratchpad => 'スクラッチパッド';
	@override String get scratchpadDescription => 'スクラッチパッドは、AiScriptの実験環境を提供します。Misskeyと対話するコードの記述、実行、結果の確認ができます。';
	@override String get output => '出力';
	@override String get script => 'スクリプト';
	@override String get disablePagesScript => 'Pagesのスクリプトを無効にする';
	@override String get updateRemoteUser => 'リモートユーザー情報の更新';
	@override String get unsetUserAvatar => 'アイコンを解除';
	@override String get unsetUserAvatarConfirm => 'アイコンを解除しますか？';
	@override String get unsetUserBanner => 'バナーを解除';
	@override String get unsetUserBannerConfirm => 'バナーを解除しますか？';
	@override String get deleteAllFiles => 'すべてのファイルを削除';
	@override String get deleteAllFilesConfirm => 'すべてのファイルを削除しますか？';
	@override String get removeAllFollowing => 'フォローを全解除';
	@override String removeAllFollowingDescription({required Object host}) => '${host}からのフォローをすべて解除します。そのサーバーがもう存在しなくなった場合などに実行してください。';
	@override String get userSuspended => 'このユーザーは凍結されています。';
	@override String get userSilenced => 'このユーザーはサイレンスされています。';
	@override String get yourAccountSuspendedTitle => 'アカウントが凍結されています';
	@override String get yourAccountSuspendedDescription => 'このアカウントは、サーバーの利用規約に違反したなどの理由により、凍結されています。詳細については管理者までお問い合わせください。新しいアカウントを作らないでください。';
	@override String get tokenRevoked => 'トークンが無効です';
	@override String get tokenRevokedDescription => 'ログイントークンが失効しています。ログインし直してください。';
	@override String get accountDeleted => 'アカウントは削除されています';
	@override String get accountDeletedDescription => 'このアカウントは削除されています。';
	@override String get menu => 'メニュー';
	@override String get divider => '分割線';
	@override String get addItem => '項目を追加';
	@override String get rearrange => '並び替え';
	@override String get relays => 'リレー';
	@override String get addRelay => 'リレーの追加';
	@override String get inboxUrl => 'inboxのURL';
	@override String get addedRelays => '追加済みのリレー';
	@override String get serviceworkerInfo => 'プッシュ通知を行うには有効にする必要があります。';
	@override String get deletedNote => '削除された投稿';
	@override String get invisibleNote => '非公開の投稿';
	@override String get enableInfiniteScroll => '自動でもっと見る';
	@override String get visibility => '公開範囲';
	@override String get poll => 'アンケート';
	@override String get useCw => '内容を隠す';
	@override String get enablePlayer => 'プレイヤーを開く';
	@override String get disablePlayer => 'プレイヤーを閉じる';
	@override String get expandTweet => 'ポストを展開する';
	@override String get themeEditor => 'テーマエディター';
	@override String get description => '説明';
	@override String get describeFile => 'キャプションを付ける';
	@override String get enterFileDescription => 'キャプションを入力';
	@override String get author => '作者';
	@override String get leaveConfirm => '未保存の変更があります。破棄しますか？';
	@override String get manage => '管理';
	@override String get plugins => 'プラグイン';
	@override String get preferencesBackups => '設定のバックアップ';
	@override String get deck => 'デッキ';
	@override String get undeck => 'デッキ解除';
	@override String get useBlurEffectForModal => 'モーダルにぼかし効果を使用';
	@override String get useFullReactionPicker => 'フル機能リアクションピッカーを使用';
	@override String get width => '幅';
	@override String get height => '高さ';
	@override String get large => '大';
	@override String get medium => '中';
	@override String get small => '小';
	@override String get generateAccessToken => 'アクセストークンの発行';
	@override String get permission => '権限';
	@override String get adminPermission => '管理者権限';
	@override String get enableAll => '全て有効にする';
	@override String get disableAll => '全て無効にする';
	@override String get tokenRequested => 'アカウントへのアクセス許可';
	@override String get pluginTokenRequestedDescription => 'このプラグインはここで設定した権限を行使できるようになります。';
	@override String get notificationType => '通知の種類';
	@override String get edit => '編集';
	@override String get emailServer => 'メールサーバー';
	@override String get enableEmail => 'メール配信機能を有効化する';
	@override String get emailConfigInfo => 'メールアドレスの確認やパスワードリセットの際に使います';
	@override String get email => 'メール';
	@override String get emailAddress => 'メールアドレス';
	@override String get smtpConfig => 'SMTP サーバーの設定';
	@override String get smtpHost => 'ホスト';
	@override String get smtpPort => 'ポート';
	@override String get smtpUser => 'ユーザー名';
	@override String get smtpPass => 'パスワード';
	@override String get emptyToDisableSmtpAuth => 'ユーザー名とパスワードを空欄にすることで、SMTP認証を無効化出来ます';
	@override String get smtpSecure => 'SMTP 接続に暗黙的なSSL/TLSを使用する';
	@override String get smtpSecureInfo => 'STARTTLS使用時はオフにします。';
	@override String get testEmail => '配信テスト';
	@override String get wordMute => 'ワードミュート';
	@override String get hardWordMute => 'ハードワードミュート';
	@override String get regexpError => '正規表現エラー';
	@override String regexpErrorDescription({required Object tab, required Object line}) => '${tab}ワードミュートの${line}行目の正規表現にエラーが発生しました:';
	@override String get instanceMute => 'サーバーミュート';
	@override String userSaysSomething({required Object name}) => '${name}が何かを言いました';
	@override String get makeActive => 'アクティブにする';
	@override String get display => '表示';
	@override String get copy => 'コピー';
	@override String get metrics => 'メトリクス';
	@override String get overview => '概要';
	@override String get logs => 'ログ';
	@override String get delayed => '遅延';
	@override String get database => 'データベース';
	@override String get channel => 'チャンネル';
	@override String get create => '作成';
	@override String get notificationSetting => '通知設定';
	@override String get notificationSettingDesc => '表示する通知の種別を選択してください。';
	@override String get useGlobalSetting => 'グローバル設定を使う';
	@override String get useGlobalSettingDesc => 'オンにすると、アカウントの通知設定が使用されます。オフにすると、個別に設定できるようになります。';
	@override String get other => 'その他';
	@override String get regenerateLoginToken => 'ログイントークンを再生成';
	@override String get regenerateLoginTokenDescription => 'ログインに使用される内部トークンを再生成します。通常この操作を行う必要はありません。再生成すると、全てのデバイスでログアウトされます。';
	@override String get theKeywordWhenSearchingForCustomEmoji => 'カスタム絵文字を検索する時のキーワードになります。';
	@override String get setMultipleBySeparatingWithSpace => 'スペースで区切って複数設定できます。';
	@override String get fileIdOrUrl => 'ファイルIDまたはURL';
	@override String get behavior => '動作';
	@override String get sample => 'サンプル';
	@override String get abuseReports => '通報';
	@override String get reportAbuse => '通報';
	@override String get reportAbuseRenote => 'リノートを通報';
	@override String reportAbuseOf({required Object name}) => '${name}を通報する';
	@override String get fillAbuseReportDescription => '通報理由の詳細を記入してください。対象のノートやページなどがある場合はそのURLも記入してください。';
	@override String get abuseReported => '内容が送信されました。ご報告ありがとうございました。';
	@override String get reporter => '通報者';
	@override String get reporteeOrigin => '通報先';
	@override String get reporterOrigin => '通報元';
	@override String get forwardReport => 'リモートサーバーに通報を転送する';
	@override String get forwardReportIsAnonymous => 'リモートサーバーからはあなたの情報は見れず、匿名のシステムアカウントとして表示されます。';
	@override String get send => '送信';
	@override String get abuseMarkAsResolved => '対応済みにする';
	@override String get openInNewTab => '新しいタブで開く';
	@override String get openInSideView => 'サイドビューで開く';
	@override String get defaultNavigationBehaviour => 'デフォルトのナビゲーション';
	@override String get editTheseSettingsMayBreakAccount => 'これらの設定を編集するとアカウントが破損する可能性があります。';
	@override String get instanceTicker => 'ノートのサーバー情報';
	@override String waitingFor({required Object x}) => '${x}を待っています';
	@override String get random => 'ランダム';
	@override String get system => 'システム';
	@override String get switchUi => 'UI切り替え';
	@override String get desktop => 'デスクトップ';
	@override String get clip => 'クリップ';
	@override String get createNew => '新規作成';
	@override String get optional => '任意';
	@override String get createNewClip => '新しいクリップを作成';
	@override String get unclip => 'クリップ解除';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'このノートはすでにクリップ「${name}」に含まれています。ノートをこのクリップから除外しますか？';
	@override String get public => 'パブリック';
	@override String get private => '非公開';
	@override String i18nInfo({required Object link}) => 'Misskeyは有志によって様々な言語に翻訳されています。${link}で翻訳に協力できます。';
	@override String get manageAccessTokens => 'アクセストークンの管理';
	@override String get accountInfo => 'アカウント情報';
	@override String get notesCount => 'ノートの数';
	@override String get repliesCount => '返信した数';
	@override String get renotesCount => 'リノートした数';
	@override String get repliedCount => '返信された数';
	@override String get renotedCount => 'リノートされた数';
	@override String get followingCount => 'フォロー数';
	@override String get followersCount => 'フォロワー数';
	@override String get sentReactionsCount => 'リアクションした数';
	@override String get receivedReactionsCount => 'リアクションされた数';
	@override String get pollVotesCount => 'アンケートに投票した数';
	@override String get pollVotedCount => 'アンケートに投票された数';
	@override String get yes => 'はい';
	@override String get no => 'いいえ';
	@override String get driveFilesCount => 'ドライブのファイル数';
	@override String get driveUsage => 'ドライブ使用量';
	@override String get noCrawle => 'クローラーによるインデックスを拒否';
	@override String get noCrawleDescription => '外部の検索エンジンにあなたのユーザーページ、ノート、Pagesなどのコンテンツを登録(インデックス)しないよう要求します。';
	@override String get lockedAccountInfo => 'フォローを承認制にしても、ノートの公開範囲を「フォロワー」にしない限り、誰でもあなたのノートを見ることができます。';
	@override String get alwaysMarkSensitive => 'デフォルトでメディアをセンシティブ設定にする';
	@override String get loadRawImages => '添付画像のサムネイルをオリジナル画質にする';
	@override String get disableShowingAnimatedImages => 'アニメーション画像を再生しない';
	@override String get highlightSensitiveMedia => 'メディアがセンシティブであることを分かりやすく表示';
	@override String get verificationEmailSent => '確認のメールを送信しました。メールに記載されたリンクにアクセスして、設定を完了してください。';
	@override String get notSet => '未設定';
	@override String get emailVerified => 'メールアドレスが確認されました';
	@override String get noteFavoritesCount => 'お気に入りノートの数';
	@override String get pageLikesCount => 'Pageにいいねした数';
	@override String get pageLikedCount => 'Pageにいいねされた数';
	@override String get contact => '連絡先';
	@override String get useSystemFont => 'システムのデフォルトのフォントを使う';
	@override String get clips => 'クリップ';
	@override String get experimentalFeatures => '実験的機能';
	@override String get experimental => '実験的';
	@override String get thisIsExperimentalFeature => 'これは実験的な機能です。仕様が変更されたり、正常に動作しなかったりする可能性があります。';
	@override String get developer => '開発者';
	@override String get makeExplorable => 'アカウントを見つけやすくする';
	@override String get makeExplorableDescription => 'オフにすると、「みつける」にアカウントが載らなくなります。';
	@override String get showGapBetweenNotesInTimeline => 'タイムラインのノートを離して表示';
	@override String get duplicate => '複製';
	@override String get left => '左';
	@override String get center => '中央';
	@override String get wide => '広い';
	@override String get narrow => '狭い';
	@override String get reloadToApplySetting => '設定はページリロード後に反映されます。今すぐリロードしますか？';
	@override String get needReloadToApply => '反映には再起動が必要です。';
	@override String get showTitlebar => 'タイトルバーを表示する';
	@override String get clearCache => 'キャッシュをクリア';
	@override String onlineUsersCount({required Object n}) => '${n}人がオンライン';
	@override String nUsers({required Object n}) => '${n}ユーザー';
	@override String nNotes({required Object n}) => '${n}ノート';
	@override String get sendErrorReports => 'エラーリポートを送信';
	@override String get sendErrorReportsDescription => 'オンにすると、問題が発生したときにエラーの詳細情報がMisskeyに共有され、ソフトウェアの品質向上に役立てることができます。エラー情報には、OSのバージョン、ブラウザの種類、行動履歴などが含まれます。';
	@override String get myTheme => 'マイテーマ';
	@override String get backgroundColor => '背景';
	@override String get accentColor => 'アクセント';
	@override String get textColor => '文字';
	@override String get saveAs => '名前を付けて保存';
	@override String get advanced => '高度';
	@override String get advancedSettings => '高度な設定';
	@override String get value => '値';
	@override String get createdAt => '作成日時';
	@override String get updatedAt => '更新日時';
	@override String get saveConfirm => '保存しますか？';
	@override String get deleteConfirm => '削除しますか？';
	@override String get invalidValue => '有効な値ではありません。';
	@override String get registry => 'レジストリ';
	@override String get closeAccount => 'アカウントを閉鎖する';
	@override String get currentVersion => '現在のバージョン';
	@override String get latestVersion => '最新のバージョン';
	@override String get youAreRunningUpToDateClient => 'お使いのクライアントは最新です。';
	@override String get newVersionOfClientAvailable => '新しいバージョンのクライアントが利用可能です。';
	@override String get usageAmount => '使用量';
	@override String get capacity => '容量';
	@override String get inUse => '使用中';
	@override String get editCode => 'コードを編集';
	@override String get apply => '適用';
	@override String get receiveAnnouncementFromInstance => 'サーバーからのお知らせを受け取る';
	@override String get emailNotification => 'メール通知';
	@override String get publish => '公開';
	@override String get inChannelSearch => 'チャンネル内検索';
	@override String get useReactionPickerForContextMenu => '右クリックでリアクションピッカーを開く';
	@override String typingUsers({required Object users}) => '${users}が入力中';
	@override String get jumpToSpecifiedDate => '特定の日付にジャンプ';
	@override String get showingPastTimeline => '過去のタイムラインを表示しています';
	@override String get clear => 'クリア';
	@override String get markAllAsRead => '全て既読にする';
	@override String get goBack => '戻る';
	@override String get unlikeConfirm => 'いいね解除しますか？';
	@override String get fullView => 'フルビュー';
	@override String get quitFullView => 'フルビュー解除';
	@override String get addDescription => '説明を追加';
	@override String get userPagePinTip => '個々のノートのメニューから「ピン留め」を選択することで、ここにノートを表示しておくことができます。';
	@override String get notSpecifiedMentionWarning => '宛先に含まれていないメンションがあります';
	@override String get info => '情報';
	@override String get userInfo => 'ユーザー情報';
	@override String get unknown => '不明';
	@override String get onlineStatus => 'オンライン状態';
	@override String get hideOnlineStatus => 'オンライン状態を隠す';
	@override String get hideOnlineStatusDescription => 'オンライン状態を隠すと、検索などの一部機能において利便性が低下することがあります。';
	@override String get online => 'オンライン';
	@override String get active => 'アクティブ';
	@override String get offline => 'オフライン';
	@override String get notRecommended => '非推奨';
	@override String get botProtection => 'Botプロテクション';
	@override String get instanceBlocking => 'サーバーブロック・サイレンス';
	@override String get selectAccount => 'アカウントを選択';
	@override String get switchAccount => 'アカウントを切り替え';
	@override String get enabled => '有効';
	@override String get disabled => '無効';
	@override String get quickAction => 'クイックアクション';
	@override String get user => 'ユーザー';
	@override String get administration => '管理';
	@override String get accounts => 'アカウント';
	@override String get switch_ => '切り替え';
	@override String get noMaintainerInformationWarning => '管理者情報が設定されていません。';
	@override String get noInquiryUrlWarning => '問い合わせ先URLが設定されていません。';
	@override String get noBotProtectionWarning => 'Botプロテクションが設定されていません。';
	@override String get configure => '設定する';
	@override String get postToGallery => 'ギャラリーへ投稿';
	@override String get postToHashtag => 'このハッシュタグで投稿';
	@override String get gallery => 'ギャラリー';
	@override String get recentPosts => '最近の投稿';
	@override String get popularPosts => '人気の投稿';
	@override String get shareWithNote => 'ノートで共有';
	@override String get ads => '広告';
	@override String get expiration => '期限';
	@override String get startingperiod => '開始期間';
	@override String get memo => 'メモ';
	@override String get priority => '優先度';
	@override String get high => '高';
	@override String get middle => '中';
	@override String get low => '低';
	@override String get emailNotConfiguredWarning => 'メールアドレスの設定がされていません。';
	@override String get ratio => '比率';
	@override String get previewNoteText => '本文をプレビュー';
	@override String get customCss => 'カスタムCSS';
	@override String get customCssWarn => 'この設定は必ず知識のある方が行ってください。不適切な設定を行うとクライアントが正常に使用できなくなる恐れがあります。';
	@override String get global => 'グローバル';
	@override String get squareAvatars => 'アイコンを四角形で表示';
	@override String get sent => '送信';
	@override String get received => '受信';
	@override String get searchResult => '検索結果';
	@override String get hashtags => 'ハッシュタグ';
	@override String get troubleshooting => 'トラブルシューティング';
	@override String get useBlurEffect => 'UIにぼかし効果を使用';
	@override String get learnMore => '詳しく';
	@override String get misskeyUpdated => 'Misskeyが更新されました！';
	@override String get whatIsNew => '更新情報を見る';
	@override String get translate => '翻訳';
	@override String translatedFrom({required Object x}) => '${x}から翻訳';
	@override String get accountDeletionInProgress => 'アカウントの削除が進行中です';
	@override String get usernameInfo => 'サーバー上であなたのアカウントを一意に識別するための名前。アルファベット(a~z, A~Z)、数字(0~9)、およびアンダーバー(_)が使用できます。ユーザー名は後から変更することは出来ません。';
	@override String get aiChanMode => '藍モード';
	@override String get devMode => '開発者モード';
	@override String get keepCw => 'CWを維持する';
	@override String get pubSub => 'Pub/Subのアカウント';
	@override String get lastCommunication => '直近の通信';
	@override String get resolved => '解決済み';
	@override String get unresolved => '未解決';
	@override String get breakFollow => 'フォロワーを解除';
	@override String get breakFollowConfirm => 'フォロワー解除しますか？';
	@override String get itsOn => 'オンになっています';
	@override String get itsOff => 'オフになっています';
	@override String get on => 'オン';
	@override String get off => 'オフ';
	@override String get emailRequiredForSignup => 'アカウント登録にメールアドレスを必須にする';
	@override String get unread => '未読';
	@override String get filter => 'フィルタ';
	@override String get controlPanel => 'コントロールパネル';
	@override String get manageAccounts => 'アカウントを管理';
	@override String get makeReactionsPublic => 'リアクション一覧を公開する';
	@override String get makeReactionsPublicDescription => 'あなたがしたリアクション一覧を誰でも見れるようにします。';
	@override String get classic => 'クラシック';
	@override String get muteThread => 'スレッドをミュート';
	@override String get unmuteThread => 'スレッドのミュートを解除';
	@override String get followingVisibility => 'フォローの公開範囲';
	@override String get followersVisibility => 'フォロワーの公開範囲';
	@override String get continueThread => 'さらにスレッドを見る';
	@override String get deleteAccountConfirm => 'アカウントが削除されます。よろしいですか？';
	@override String get incorrectPassword => 'パスワードが間違っています。';
	@override String voteConfirm({required Object choice}) => '「${choice}」に投票しますか？';
	@override String get hide => '隠す';
	@override String get useDrawerReactionPickerForMobile => 'モバイルデバイスのときドロワーで表示';
	@override String welcomeBackWithName({required Object name}) => 'おかえりなさい、${name}さん';
	@override String clickToFinishEmailVerification({required Object ok}) => '[${ok}]を押して、メールアドレスの確認を完了してください。';
	@override String get overridedDeviceKind => 'デバイスタイプ';
	@override String get smartphone => 'スマートフォン';
	@override String get tablet => 'タブレット';
	@override String get auto => '自動';
	@override String get themeColor => 'テーマカラー';
	@override String get size => 'サイズ';
	@override String get numberOfColumn => '列の数';
	@override String get searchByGoogle => '検索';
	@override String get instanceDefaultLightTheme => 'サーバーデフォルトのライトテーマ';
	@override String get instanceDefaultDarkTheme => 'サーバーデフォルトのダークテーマ';
	@override String get instanceDefaultThemeDescription => 'オブジェクト形式のテーマコードを記入します。';
	@override String get mutePeriod => 'ミュートする期限';
	@override String get period => '期限';
	@override String get indefinitely => '無期限';
	@override String get tenMinutes => '10分';
	@override String get oneHour => '1時間';
	@override String get oneDay => '1日';
	@override String get oneWeek => '1週間';
	@override String get oneMonth => '1ヶ月';
	@override String get reflectMayTakeTime => '反映されるまで時間がかかる場合があります。';
	@override String get failedToFetchAccountInformation => 'アカウント情報の取得に失敗しました';
	@override String get rateLimitExceeded => 'レート制限を超えました';
	@override String get cropImage => '画像のクロップ';
	@override String get cropImageAsk => '画像をクロップしますか？';
	@override String get cropYes => 'クロップする';
	@override String get cropNo => 'そのまま使う';
	@override String get file => 'ファイル';
	@override String recentNHours({required Object n}) => '直近${n}時間';
	@override String recentNDays({required Object n}) => '直近${n}日';
	@override String get noEmailServerWarning => 'メールサーバーの設定がされていません。';
	@override String get thereIsUnresolvedAbuseReportWarning => '未対応の通報があります。';
	@override String get recommended => '推奨';
	@override String get check => 'チェック';
	@override String get driveCapOverrideLabel => 'このユーザーのドライブ容量上限を変更';
	@override String get driveCapOverrideCaption => '0以下を指定すると解除されます。';
	@override String get requireAdminForView => '閲覧するには管理者アカウントでログインしている必要があります。';
	@override String get isSystemAccount => 'システムにより自動で作成・管理されているアカウントです。';
	@override String typeToConfirm({required Object x}) => 'この操作を行うには ${x} と入力してください';
	@override String get deleteAccount => 'アカウント削除';
	@override String get document => 'ドキュメント';
	@override String get numberOfPageCache => 'ページキャッシュ数';
	@override String get numberOfPageCacheDescription => '多くすると利便性が向上しますが、負荷とメモリ使用量が増えます。';
	@override String get logoutConfirm => 'ログアウトしますか？';
	@override String get lastActiveDate => '最終利用日時';
	@override String get statusbar => 'ステータスバー';
	@override String get pleaseSelect => '選択してください';
	@override String get reverse => '反転';
	@override String get colored => '色付き';
	@override String get refreshInterval => '更新間隔';
	@override String get label => 'ラベル';
	@override String get type => 'タイプ';
	@override String get speed => '速度';
	@override String get slow => '遅い';
	@override String get fast => '速い';
	@override String get sensitiveMediaDetection => 'センシティブなメディアの検出';
	@override String get localOnly => 'ローカルのみ';
	@override String get remoteOnly => 'リモートのみ';
	@override String get failedToUpload => 'アップロード失敗';
	@override String get cannotUploadBecauseInappropriate => '不適切な内容を含む可能性があると判定されたためアップロードできません。';
	@override String get cannotUploadBecauseNoFreeSpace => 'ドライブの空き容量が無いためアップロードできません。';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'ファイルサイズの制限を超えているためアップロードできません。';
	@override String get beta => 'ベータ';
	@override String get enableAutoSensitive => '自動センシティブ判定';
	@override String get enableAutoSensitiveDescription => '利用可能な場合は、機械学習を利用して自動でメディアにセンシティブフラグを設定します。この機能をオフにしても、サーバーによっては自動で設定されることがあります。';
	@override String get activeEmailValidationDescription => 'ユーザーのメールアドレスのバリデーションを、捨てアドかどうかや実際に通信可能かどうかなどを判定しより積極的に行います。オフにすると単に文字列として正しいかどうかのみチェックされます。';
	@override String get navbar => 'ナビゲーションバー';
	@override String get shuffle => 'シャッフル';
	@override String get account => 'アカウント';
	@override String get move => '移動';
	@override String get pushNotification => 'プッシュ通知';
	@override String get subscribePushNotification => 'プッシュ通知を有効化';
	@override String get unsubscribePushNotification => 'プッシュ通知を停止する';
	@override String get pushNotificationAlreadySubscribed => 'プッシュ通知は有効です';
	@override String get pushNotificationNotSupported => 'ブラウザかサーバーがプッシュ通知に非対応';
	@override String get sendPushNotificationReadMessage => '通知が既読になったらプッシュ通知を削除する';
	@override String get sendPushNotificationReadMessageCaption => '端末の電池消費量が増加する可能性があります。';
	@override String get windowMaximize => '最大化';
	@override String get windowMinimize => '最小化';
	@override String get windowRestore => '元に戻す';
	@override String get caption => 'キャプション';
	@override String get loggedInAsBot => 'Botアカウントでログイン中';
	@override String get tools => 'ツール';
	@override String get cannotLoad => '読み込めません';
	@override String get numberOfProfileView => 'プロフィール表示回数';
	@override String get like => 'いいね！';
	@override String get unlike => 'いいねを解除';
	@override String get numberOfLikes => 'いいね数';
	@override String get show => '表示';
	@override String get neverShow => '今後表示しない';
	@override String get remindMeLater => 'また後で';
	@override String get didYouLikeMisskey => 'Misskeyを気に入っていただけましたか？';
	@override String pleaseDonate({required Object host}) => 'Misskeyは${host}が使用している無料のソフトウェアです。これからも開発を続けられるように、ぜひ寄付をお願いします！';
	@override String correspondingSourceIsAvailable({required Object anchor}) => '対応するソースコードは${anchor}から利用可能です。';
	@override String get roles => 'ロール';
	@override String get role => 'ロール';
	@override String get noRole => 'ロールはありません';
	@override String get normalUser => '一般ユーザー';
	@override String get undefined => '未定義';
	@override String get assign => 'アサイン';
	@override String get unassign => 'アサインを解除';
	@override String get color => '色';
	@override String get manageCustomEmojis => 'カスタム絵文字の管理';
	@override String get manageAvatarDecorations => 'アバターデコレーションの管理';
	@override String get youCannotCreateAnymore => 'これ以上作成することはできません。';
	@override String get cannotPerformTemporary => '一時的に利用できません';
	@override String get cannotPerformTemporaryDescription => '操作回数が制限を超過するため一時的に利用できません。しばらく時間を置いてから再度お試しください。';
	@override String get invalidParamError => 'パラメータエラー';
	@override String get invalidParamErrorDescription => 'リクエストパラメータに問題があります。通常これはバグですが、入力した文字数が多すぎる等の可能性もあります。';
	@override String get permissionDeniedError => '操作が拒否されました';
	@override String get permissionDeniedErrorDescription => 'このアカウントにはこの操作を行うための権限がありません。';
	@override String get preset => 'プリセット';
	@override String get selectFromPresets => 'プリセットから選択';
	@override String get achievements => '実績';
	@override String get gotInvalidResponseError => 'サーバーの応答が無効です';
	@override String get gotInvalidResponseErrorDescription => 'サーバーがダウンまたはメンテナンスしている可能性があります。しばらくしてから再度お試しください。';
	@override String get thisPostMayBeAnnoying => 'この投稿は迷惑になる可能性があります。';
	@override String get thisPostMayBeAnnoyingHome => 'ホームに投稿';
	@override String get thisPostMayBeAnnoyingCancel => 'やめる';
	@override String get thisPostMayBeAnnoyingIgnore => 'このまま投稿';
	@override String get collapseRenotes => 'リノートのスマート省略';
	@override String get collapseRenotesDescription => 'リアクションやリノートをしたことがあるノートをたたんで表示します。';
	@override String get internalServerError => 'サーバー内部エラー';
	@override String get internalServerErrorDescription => 'サーバー内部で予期しないエラーが発生しました。';
	@override String get copyErrorInfo => 'エラー情報をコピー';
	@override String get joinThisServer => 'このサーバーに登録する';
	@override String get exploreOtherServers => '他のサーバーを探す';
	@override String get letsLookAtTimeline => 'タイムラインを見てみる';
	@override String get disableFederationConfirm => '連合なしにしますか？';
	@override String get disableFederationConfirmWarn => '連合なしにしても投稿は非公開になりません。ほとんどの場合、連合なしにする必要はありません。';
	@override String get disableFederationOk => '連合なしにする';
	@override String get invitationRequiredToRegister => '現在このサーバーは招待制です。招待コードをお持ちの方のみ登録できます。';
	@override String get emailNotSupported => 'このサーバーではメール配信はサポートされていません';
	@override String get postToTheChannel => 'チャンネルに投稿';
	@override String get cannotBeChangedLater => '後から変更できません。';
	@override String get reactionAcceptance => 'リアクションの受け入れ';
	@override String get likeOnly => 'いいねのみ';
	@override String get likeOnlyForRemote => '全て (リモートはいいねのみ)';
	@override String get nonSensitiveOnly => '非センシティブのみ';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => '非センシティブのみ (リモートはいいねのみ)';
	@override String get rolesAssignedToMe => '自分に割り当てられたロール';
	@override String get resetPasswordConfirm => 'パスワードリセットしますか？';
	@override String get sensitiveWords => 'センシティブワード';
	@override String get sensitiveWordsDescription => '設定したワードが含まれるノートの公開範囲をホームにします。改行で区切って複数設定できます。';
	@override String get sensitiveWordsDescription2 => 'スペースで区切るとAND指定になり、キーワードをスラッシュで囲むと正規表現になります。';
	@override String get prohibitedWords => '禁止ワード';
	@override String get prohibitedWordsDescription => '設定したワードが含まれるノートを投稿しようとした際、エラーとなるようにします。改行で区切って複数設定できます。';
	@override String get prohibitedWordsDescription2 => 'スペースで区切るとAND指定になり、キーワードをスラッシュで囲むと正規表現になります。';
	@override String get hiddenTags => '非表示ハッシュタグ';
	@override String get hiddenTagsDescription => '設定したタグをトレンドに表示させないようにします。改行で区切って複数設定できます。';
	@override String get notesSearchNotAvailable => 'ノート検索は利用できません。';
	@override String get license => 'ライセンス';
	@override String get unfavoriteConfirm => 'お気に入り解除しますか？';
	@override String get myClips => '自分のクリップ';
	@override String get drivecleaner => 'ドライブクリーナー';
	@override String get retryAllQueuesNow => 'すべてのキューを今すぐ再試行';
	@override String get retryAllQueuesConfirmTitle => '今すぐ再試行しますか？';
	@override String get retryAllQueuesConfirmText => '一時的にサーバーの負荷が増大することがあります。';
	@override String get enableChartsForRemoteUser => 'リモートユーザーのチャートを生成';
	@override String get enableChartsForFederatedInstances => 'リモートサーバーのチャートを生成';
	@override String get showClipButtonInNoteFooter => 'ノートのアクションにクリップを追加';
	@override String get reactionsDisplaySize => 'リアクションの表示サイズ';
	@override String get limitWidthOfReaction => 'リアクションの最大横幅を制限し、縮小して表示する';
	@override String get noteIdOrUrl => 'ノートIDまたはURL';
	@override String get video => '動画';
	@override String get videos => '動画';
	@override String get audio => '音声';
	@override String get audioFiles => '音声';
	@override String get dataSaver => 'データセーバー';
	@override String get accountMigration => 'アカウントの移行';
	@override String get accountMoved => 'このユーザーは新しいアカウントに移行しました：';
	@override String get accountMovedShort => 'このアカウントは移行されています';
	@override String get operationForbidden => 'この操作はできません';
	@override String get forceShowAds => '常に広告を表示する';
	@override String get addMemo => 'メモを追加';
	@override String get editMemo => 'メモを編集';
	@override String get reactionsList => 'リアクション一覧';
	@override String get renotesList => 'リノート一覧';
	@override String get notificationDisplay => '通知の表示';
	@override String get leftTop => '左上';
	@override String get rightTop => '右上';
	@override String get leftBottom => '左下';
	@override String get rightBottom => '右下';
	@override String get stackAxis => 'スタック方向';
	@override String get vertical => '縦';
	@override String get horizontal => '横';
	@override String get position => '位置';
	@override String get serverRules => 'サーバールール';
	@override String get pleaseConfirmBelowBeforeSignup => 'このサーバーに登録するには、以下の内容を確認し同意する必要があります。';
	@override String get pleaseAgreeAllToContinue => '続けるには、全ての「同意する」にチェックが入っている必要があります。';
	@override String get continue_ => '続ける';
	@override String get preservedUsernames => '予約ユーザー名';
	@override String get preservedUsernamesDescription => '予約するユーザー名を改行で列挙します。ここで指定されたユーザー名はアカウント作成時に使えなくなりますが、管理者によるアカウント作成時はこの制限を受けません。また、既に存在するアカウントも影響を受けません。';
	@override String get createNoteFromTheFile => 'このファイルからノートを作成';
	@override String get archive => 'アーカイブ';
	@override String get archived => 'アーカイブ済み';
	@override String get unarchive => 'アーカイブ解除';
	@override String channelArchiveConfirmTitle({required Object name}) => '${name}をアーカイブしますか？';
	@override String get channelArchiveConfirmDescription => 'アーカイブすると、チャンネル一覧や検索結果に表示されなくなり、新たな書き込みもできなくなります。';
	@override String get thisChannelArchived => 'このチャンネルはアーカイブされています。';
	@override String get displayOfNote => 'ノートの表示';
	@override String get initialAccountSetting => '初期設定';
	@override String get youFollowing => 'フォロー中';
	@override String get preventAiLearning => '生成AIによる学習を拒否';
	@override String get preventAiLearningDescription => '外部の文章生成AIや画像生成AIに対して、投稿したノートや画像などのコンテンツを学習の対象にしないように要求します。これはnoaiフラグをHTMLレスポンスに含めることによって実現されますが、この要求に従うかはそのAI次第であるため、学習を完全に防止するものではありません。';
	@override String get options => 'オプション';
	@override String get specifyUser => 'ユーザー指定';
	@override String get lookupConfirm => '照会しますか？';
	@override String get openTagPageConfirm => 'ハッシュタグのページを開きますか？';
	@override String get specifyHost => 'ホスト指定';
	@override String get failedToPreviewUrl => 'プレビューできません';
	@override String get update => '更新';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'リアクションとして使えるロール';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'ロールの指定が一つもない場合、誰でもリアクションとして使えます。';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'ロールは公開ロールである必要があります。';
	@override String get cancelReactionConfirm => 'リアクションを取り消しますか？';
	@override String get changeReactionConfirm => 'リアクションを変更しますか？';
	@override String get later => 'あとで';
	@override String get goToMisskey => 'Misskeyへ';
	@override String get additionalEmojiDictionary => '絵文字の追加辞書';
	@override String get installed => 'インストール済み';
	@override String get branding => 'ブランディング';
	@override String get enableServerMachineStats => 'サーバーのマシン情報を公開する';
	@override String get enableIdenticonGeneration => 'ユーザーごとのIdenticon生成を有効にする';
	@override String get turnOffToImprovePerformance => 'オフにするとパフォーマンスが向上します。';
	@override String get createInviteCode => '招待コードを作成';
	@override String get createWithOptions => 'オプションを指定して作成';
	@override String get createCount => '作成数';
	@override String get inviteCodeCreated => '招待コードを作成しました';
	@override String get inviteLimitExceeded => '作成できる招待コードの数が上限に達しています。';
	@override String createLimitRemaining({required Object limit}) => '作成できる招待コード: 残り ${limit} 個';
	@override String inviteLimitResetCycle({required Object time, required Object limit}) => '${time}で最大 ${limit} 個の招待コードを作成できます。';
	@override String get expirationDate => '有効期限';
	@override String get noExpirationDate => '有効期限を設けない';
	@override String get inviteCodeUsedAt => '招待コードが使用された日時';
	@override String get registeredUserUsingInviteCode => '招待コードを使用したユーザー';
	@override String get waitingForMailAuth => 'メール認証待ち';
	@override String get inviteCodeCreator => '招待コードを作成したユーザー';
	@override String get usedAt => '使用日時';
	@override String get unused => '未使用';
	@override String get used => '使用済み';
	@override String get expired => '期限切れ';
	@override String get doYouAgree => '同意しますか？';
	@override String get beSureToReadThisAsItIsImportant => '重要ですので必ずお読みください。';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => '「${x}」の内容をよく読み、同意します。';
	@override String get dialog => 'ダイアログ';
	@override String get icon => 'アイコン';
	@override String get forYou => 'あなたへ';
	@override String get currentAnnouncements => '現在のお知らせ';
	@override String get pastAnnouncements => '過去のお知らせ';
	@override String get youHaveUnreadAnnouncements => '未読のお知らせがあります。';
	@override String get useSecurityKey => 'ブラウザまたはデバイスの指示に従って、セキュリティキーまたはパスキーを使用してください。';
	@override String get replies => '返信';
	@override String get renotes => 'リノート';
	@override String get loadReplies => '返信を見る';
	@override String get loadConversation => '会話を見る';
	@override String get pinnedList => 'ピン留めされたリスト';
	@override String get keepScreenOn => 'デバイスの画面を常にオンにする';
	@override String get verifiedLink => 'このリンク先の所有者であることが確認されました';
	@override String get notifyNotes => '投稿を通知';
	@override String get unnotifyNotes => '投稿の通知を解除';
	@override String get authentication => '認証';
	@override String get authenticationRequiredToContinue => '続けるには認証を行ってください';
	@override String get dateAndTime => '日時';
	@override String get showRenotes => 'リノートを表示';
	@override String get edited => '編集済み';
	@override String get notificationRecieveConfig => '通知の受信設定';
	@override String get mutualFollow => '相互フォロー';
	@override String get followingOrFollower => 'フォロー中またはフォロワー';
	@override String get fileAttachedOnly => 'ファイル付きのみ';
	@override String get showRepliesToOthersInTimeline => 'TLに他の人への返信を含める';
	@override String get hideRepliesToOthersInTimeline => 'TLに他の人への返信を含めない';
	@override String get showRepliesToOthersInTimelineAll => 'TLに現在フォロー中の人全員の返信を含めるようにする';
	@override String get hideRepliesToOthersInTimelineAll => 'TLに現在フォロー中の人全員の返信を含めないようにする';
	@override String get confirmShowRepliesAll => 'この操作は元に戻せません。本当にTLに現在フォロー中の人全員の返信を含めるようにしますか？';
	@override String get confirmHideRepliesAll => 'この操作は元に戻せません。本当にTLに現在フォロー中の人全員の返信を含めないようにしますか？';
	@override String get externalServices => '外部サービス';
	@override String get sourceCode => 'ソースコード';
	@override String get sourceCodeIsNotYetProvided => 'ソースコードはまだ提供されていません。この問題の修正について管理者に問い合わせてください。';
	@override String get repositoryUrl => 'リポジトリURL';
	@override String get repositoryUrlDescription => 'ソースコードが公開されているリポジトリがある場合、そのURLを記入します。Misskeyを現状のまま（ソースコードにいかなる変更も加えずに）使用している場合は https://github.com/misskey-dev/misskey と記入します。';
	@override String get repositoryUrlOrTarballRequired => 'リポジトリを公開していない場合、代わりにtarballを提供する必要があります。詳細は.config/example.ymlを参照してください。';
	@override String get feedback => 'フィードバック';
	@override String get feedbackUrl => 'フィードバックURL';
	@override String get impressum => '運営者情報';
	@override String get impressumUrl => '運営者情報URL';
	@override String get impressumDescription => 'ドイツなどの一部の国と地域では表示が義務付けられています(Impressum)。';
	@override String get privacyPolicy => 'プライバシーポリシー';
	@override String get privacyPolicyUrl => 'プライバシーポリシーURL';
	@override String get tosAndPrivacyPolicy => '利用規約・プライバシーポリシー';
	@override String get avatarDecorations => 'アイコンデコレーション';
	@override String get attach => '付ける';
	@override String get detach => '外す';
	@override String get detachAll => '全て外す';
	@override String get angle => '角度';
	@override String get flip => '反転';
	@override String get showAvatarDecorations => 'アイコンのデコレーションを表示';
	@override String get releaseToRefresh => '離してリロード';
	@override String get refreshing => 'リロード中';
	@override String get pullDownToRefresh => '引っ張ってリロード';
	@override String get disableStreamingTimeline => 'タイムラインのリアルタイム更新を無効にする';
	@override String get useGroupedNotifications => '通知をグルーピングして表示する';
	@override String get signupPendingError => 'メールアドレスの確認中に問題が発生しました。リンクの有効期限が切れている可能性があります。';
	@override String get cwNotationRequired => '「内容を隠す」がオンの場合は注釈の記述が必要です。';
	@override String get doReaction => 'リアクションする';
	@override String get code => 'コード';
	@override String get reloadRequiredToApplySettings => '設定の反映にはリロードが必要です。';
	@override String remainingN({required Object n}) => '残り: ${n}';
	@override String get overwriteContentConfirm => '現在の内容に上書きされますがよろしいですか？';
	@override String get seasonalScreenEffect => '季節に応じた画面の演出';
	@override String get decorate => 'デコる';
	@override String get addMfmFunction => '装飾を追加';
	@override String get enableQuickAddMfmFunction => '高度なMFMのピッカーを表示する';
	@override String get bubbleGame => 'バブルゲーム';
	@override String get sfx => '効果音';
	@override String get soundWillBePlayed => 'サウンドが再生されます';
	@override String get showReplay => 'リプレイを見る';
	@override String get replay => 'リプレイ';
	@override String get replaying => 'リプレイ中';
	@override String get endReplay => 'リプレイを終了';
	@override String get copyReplayData => 'リプレイデータをコピー';
	@override String get ranking => 'ランキング';
	@override String lastNDays({required Object n}) => '直近${n}日';
	@override String get backToTitle => 'タイトルへ';
	@override String get hemisphere => 'お住まいの地域';
	@override String get withSensitive => 'センシティブなファイルを含むノートを表示';
	@override String userSaysSomethingSensitive({required Object name}) => '${name}のセンシティブなファイルを含む投稿';
	@override String get enableHorizontalSwipe => 'スワイプしてタブを切り替える';
	@override String get loading => '読み込み中';
	@override String get surrender => 'やめる';
	@override String get gameRetry => 'リトライ';
	@override String get notUsePleaseLeaveBlank => '使用しない場合は空欄にしてください';
	@override String get useTotp => 'ワンタイムパスワードを使う';
	@override String get useBackupCode => 'バックアップコードを使う';
	@override String get launchApp => 'アプリを起動';
	@override String get useNativeUIForVideoAudioPlayer => '動画・音声の再生にブラウザのUIを使用する';
	@override String get keepOriginalFilename => 'オリジナルのファイル名を保持';
	@override String get keepOriginalFilenameDescription => 'この設定をオフにすると、アップロード時にファイル名が自動でランダム文字列に置き換えられます。';
	@override String get noDescription => '説明文はありません';
	@override String get alwaysConfirmFollow => 'フォローの際常に確認する';
	@override String get inquiry => 'お問い合わせ';
	@override String get tryAgain => 'もう一度お試しください。';
	@override String get confirmWhenRevealingSensitiveMedia => 'センシティブなメディアを表示するとき確認する';
	@override String get sensitiveMediaRevealConfirm => 'センシティブなメディアです。表示しますか？';
	@override String get createdLists => '作成したリスト';
	@override String get createdAntennas => '作成したアンテナ';
	@override late final _StringsMisskeyDeliveryJaJp delivery_ = _StringsMisskeyDeliveryJaJp._(_root);
	@override late final _StringsMisskeyBubbleGameJaJp bubbleGame_ = _StringsMisskeyBubbleGameJaJp._(_root);
	@override late final _StringsMisskeyAnnouncementJaJp announcement_ = _StringsMisskeyAnnouncementJaJp._(_root);
	@override late final _StringsMisskeyInitialAccountSettingJaJp initialAccountSetting_ = _StringsMisskeyInitialAccountSettingJaJp._(_root);
	@override late final _StringsMisskeyInitialTutorialJaJp initialTutorial_ = _StringsMisskeyInitialTutorialJaJp._(_root);
	@override late final _StringsMisskeyTimelineDescriptionJaJp timelineDescription_ = _StringsMisskeyTimelineDescriptionJaJp._(_root);
	@override late final _StringsMisskeyServerRulesJaJp serverRules_ = _StringsMisskeyServerRulesJaJp._(_root);
	@override late final _StringsMisskeyServerSettingsJaJp serverSettings_ = _StringsMisskeyServerSettingsJaJp._(_root);
	@override late final _StringsMisskeyAccountMigrationJaJp accountMigration_ = _StringsMisskeyAccountMigrationJaJp._(_root);
	@override late final _StringsMisskeyAchievementsJaJp achievements_ = _StringsMisskeyAchievementsJaJp._(_root);
	@override late final _StringsMisskeyRoleJaJp role_ = _StringsMisskeyRoleJaJp._(_root);
	@override late final _StringsMisskeySensitiveMediaDetectionJaJp sensitiveMediaDetection_ = _StringsMisskeySensitiveMediaDetectionJaJp._(_root);
	@override late final _StringsMisskeyEmailUnavailableJaJp emailUnavailable_ = _StringsMisskeyEmailUnavailableJaJp._(_root);
	@override late final _StringsMisskeyFfVisibilityJaJp ffVisibility_ = _StringsMisskeyFfVisibilityJaJp._(_root);
	@override late final _StringsMisskeySignupJaJp signup_ = _StringsMisskeySignupJaJp._(_root);
	@override late final _StringsMisskeyAccountDeleteJaJp accountDelete_ = _StringsMisskeyAccountDeleteJaJp._(_root);
	@override late final _StringsMisskeyAdJaJp ad_ = _StringsMisskeyAdJaJp._(_root);
	@override late final _StringsMisskeyForgotPasswordJaJp forgotPassword_ = _StringsMisskeyForgotPasswordJaJp._(_root);
	@override late final _StringsMisskeyGalleryJaJp gallery_ = _StringsMisskeyGalleryJaJp._(_root);
	@override late final _StringsMisskeyEmailJaJp email_ = _StringsMisskeyEmailJaJp._(_root);
	@override late final _StringsMisskeyPluginJaJp plugin_ = _StringsMisskeyPluginJaJp._(_root);
	@override late final _StringsMisskeyPreferencesBackupsJaJp preferencesBackups_ = _StringsMisskeyPreferencesBackupsJaJp._(_root);
	@override late final _StringsMisskeyRegistryJaJp registry_ = _StringsMisskeyRegistryJaJp._(_root);
	@override late final _StringsMisskeyAboutMisskeyJaJp aboutMisskey_ = _StringsMisskeyAboutMisskeyJaJp._(_root);
	@override late final _StringsMisskeyDisplayOfSensitiveMediaJaJp displayOfSensitiveMedia_ = _StringsMisskeyDisplayOfSensitiveMediaJaJp._(_root);
	@override late final _StringsMisskeyInstanceTickerJaJp instanceTicker_ = _StringsMisskeyInstanceTickerJaJp._(_root);
	@override late final _StringsMisskeyServerDisconnectedBehaviorJaJp serverDisconnectedBehavior_ = _StringsMisskeyServerDisconnectedBehaviorJaJp._(_root);
	@override late final _StringsMisskeyChannelJaJp channel_ = _StringsMisskeyChannelJaJp._(_root);
	@override late final _StringsMisskeyMenuDisplayJaJp menuDisplay_ = _StringsMisskeyMenuDisplayJaJp._(_root);
	@override late final _StringsMisskeyWordMuteJaJp wordMute_ = _StringsMisskeyWordMuteJaJp._(_root);
	@override late final _StringsMisskeyInstanceMuteJaJp instanceMute_ = _StringsMisskeyInstanceMuteJaJp._(_root);
	@override late final _StringsMisskeyThemeJaJp theme_ = _StringsMisskeyThemeJaJp._(_root);
	@override late final _StringsMisskeySfxJaJp sfx_ = _StringsMisskeySfxJaJp._(_root);
	@override late final _StringsMisskeySoundSettingsJaJp soundSettings_ = _StringsMisskeySoundSettingsJaJp._(_root);
	@override late final _StringsMisskeyAgoJaJp ago_ = _StringsMisskeyAgoJaJp._(_root);
	@override late final _StringsMisskeyTimeInJaJp timeIn_ = _StringsMisskeyTimeInJaJp._(_root);
	@override late final _StringsMisskeyTimeJaJp time_ = _StringsMisskeyTimeJaJp._(_root);
	@override late final _StringsMisskeyX2faJaJp x2fa_ = _StringsMisskeyX2faJaJp._(_root);
	@override late final _StringsMisskeyPermissionsJaJp permissions_ = _StringsMisskeyPermissionsJaJp._(_root);
	@override late final _StringsMisskeyAuthJaJp auth_ = _StringsMisskeyAuthJaJp._(_root);
	@override late final _StringsMisskeyAntennaSourcesJaJp antennaSources_ = _StringsMisskeyAntennaSourcesJaJp._(_root);
	@override late final _StringsMisskeyWeekdayJaJp weekday_ = _StringsMisskeyWeekdayJaJp._(_root);
	@override late final _StringsMisskeyWidgetsJaJp widgets_ = _StringsMisskeyWidgetsJaJp._(_root);
	@override late final _StringsMisskeyCwJaJp cw_ = _StringsMisskeyCwJaJp._(_root);
	@override late final _StringsMisskeyPollJaJp poll_ = _StringsMisskeyPollJaJp._(_root);
	@override late final _StringsMisskeyVisibilityJaJp visibility_ = _StringsMisskeyVisibilityJaJp._(_root);
	@override late final _StringsMisskeyPostFormJaJp postForm_ = _StringsMisskeyPostFormJaJp._(_root);
	@override late final _StringsMisskeyProfileJaJp profile_ = _StringsMisskeyProfileJaJp._(_root);
	@override late final _StringsMisskeyExportOrImportJaJp exportOrImport_ = _StringsMisskeyExportOrImportJaJp._(_root);
	@override late final _StringsMisskeyChartsJaJp charts_ = _StringsMisskeyChartsJaJp._(_root);
	@override late final _StringsMisskeyInstanceChartsJaJp instanceCharts_ = _StringsMisskeyInstanceChartsJaJp._(_root);
	@override late final _StringsMisskeyTimelinesJaJp timelines_ = _StringsMisskeyTimelinesJaJp._(_root);
	@override late final _StringsMisskeyPlayJaJp play_ = _StringsMisskeyPlayJaJp._(_root);
	@override late final _StringsMisskeyPagesJaJp pages_ = _StringsMisskeyPagesJaJp._(_root);
	@override late final _StringsMisskeyRelayStatusJaJp relayStatus_ = _StringsMisskeyRelayStatusJaJp._(_root);
	@override late final _StringsMisskeyNotificationJaJp notification_ = _StringsMisskeyNotificationJaJp._(_root);
	@override late final _StringsMisskeyDeckJaJp deck_ = _StringsMisskeyDeckJaJp._(_root);
	@override late final _StringsMisskeyDialogJaJp dialog_ = _StringsMisskeyDialogJaJp._(_root);
	@override late final _StringsMisskeyDisabledTimelineJaJp disabledTimeline_ = _StringsMisskeyDisabledTimelineJaJp._(_root);
	@override late final _StringsMisskeyDrivecleanerJaJp drivecleaner_ = _StringsMisskeyDrivecleanerJaJp._(_root);
	@override late final _StringsMisskeyWebhookSettingsJaJp webhookSettings_ = _StringsMisskeyWebhookSettingsJaJp._(_root);
	@override late final _StringsMisskeyAbuseReportJaJp abuseReport_ = _StringsMisskeyAbuseReportJaJp._(_root);
	@override late final _StringsMisskeyModerationLogTypesJaJp moderationLogTypes_ = _StringsMisskeyModerationLogTypesJaJp._(_root);
	@override late final _StringsMisskeyFileViewerJaJp fileViewer_ = _StringsMisskeyFileViewerJaJp._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerJaJp externalResourceInstaller_ = _StringsMisskeyExternalResourceInstallerJaJp._(_root);
	@override late final _StringsMisskeyDataSaverJaJp dataSaver_ = _StringsMisskeyDataSaverJaJp._(_root);
	@override late final _StringsMisskeyHemisphereJaJp hemisphere_ = _StringsMisskeyHemisphereJaJp._(_root);
	@override late final _StringsMisskeyReversiJaJp reversi_ = _StringsMisskeyReversiJaJp._(_root);
	@override late final _StringsMisskeyOfflineScreenJaJp offlineScreen_ = _StringsMisskeyOfflineScreenJaJp._(_root);
	@override late final _StringsMisskeyUrlPreviewSettingJaJp urlPreviewSetting_ = _StringsMisskeyUrlPreviewSettingJaJp._(_root);
	@override late final _StringsMisskeyMediaControlsJaJp mediaControls_ = _StringsMisskeyMediaControlsJaJp._(_root);
	@override late final _StringsMisskeyContextMenuJaJp contextMenu_ = _StringsMisskeyContextMenuJaJp._(_root);
}

// Path: misskeyIO
class _StringsMisskeyIOJaJp extends _StringsMisskeyIOEnUs {
	_StringsMisskeyIOJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyIOSkebStatusJaJp skebStatus_ = _StringsMisskeyIOSkebStatusJaJp._(_root);
}

// Path: misskey.delivery_
class _StringsMisskeyDeliveryJaJp extends _StringsMisskeyDeliveryEnUs {
	_StringsMisskeyDeliveryJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get status => '配信状態';
	@override String get stop => '配信停止';
	@override String get resume => '配信再開';
	@override late final _StringsMisskeyDeliveryTypeJaJp type_ = _StringsMisskeyDeliveryTypeJaJp._(_root);
}

// Path: misskey.bubbleGame_
class _StringsMisskeyBubbleGameJaJp extends _StringsMisskeyBubbleGameEnUs {
	_StringsMisskeyBubbleGameJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => '遊び方';
	@override String get hold => 'ホールド';
	@override late final _StringsMisskeyBubbleGameScoreJaJp score_ = _StringsMisskeyBubbleGameScoreJaJp._(_root);
	@override late final _StringsMisskeyBubbleGameHowToPlayJaJp howToPlay_ = _StringsMisskeyBubbleGameHowToPlayJaJp._(_root);
}

// Path: misskey.announcement_
class _StringsMisskeyAnnouncementJaJp extends _StringsMisskeyAnnouncementEnUs {
	_StringsMisskeyAnnouncementJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => '既存ユーザーのみ';
	@override String get forExistingUsersDescription => '有効にすると、このお知らせ作成時点で存在するユーザーにのみお知らせが表示されます。無効にすると、このお知らせ作成後にアカウントを作成したユーザーにもお知らせが表示されます。';
	@override String get needConfirmationToRead => '既読にするのに確認が必要';
	@override String get needConfirmationToReadDescription => '有効にすると、このお知らせを既読にする際に確認ダイアログが表示されます。また、一括既読操作の対象になりません。';
	@override String get end => 'お知らせを終了';
	@override String get tooManyActiveAnnouncementDescription => 'アクティブなお知らせが多いため、UXが低下する可能性があります。終了したお知らせはアーカイブすることを検討してください。';
	@override String get readConfirmTitle => '既読にしますか？';
	@override String readConfirmText({required Object title}) => '「${title}」の内容を読み、既読にします。';
	@override String get shouldNotBeUsedToPresentPermanentInfo => '特に新規ユーザーのUXを損ねる可能性が高いため、常時掲示するための情報ではなく、即時性が求められる情報の掲示のためにお知らせを使用することを推奨します。';
	@override String get dialogAnnouncementUxWarn => 'ダイアログ形式のお知らせが同時に2つ以上ある場合、UXに悪影響を及ぼす可能性が非常に高いため、使用は慎重に行うことを推奨します。';
	@override String get silence => '非通知';
	@override String get silenceDescription => 'オンにすると、このお知らせは通知されず、既読にする必要もなくなります。';
}

// Path: misskey.initialAccountSetting_
class _StringsMisskeyInitialAccountSettingJaJp extends _StringsMisskeyInitialAccountSettingEnUs {
	_StringsMisskeyInitialAccountSettingJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => 'アカウントの作成が完了しました！';
	@override String get letsStartAccountSetup => 'さっそくアカウントの初期設定を行いましょう。';
	@override String get letsFillYourProfile => 'まずはあなたのプロフィールを設定しましょう。';
	@override String get profileSetting => 'プロフィール設定';
	@override String get privacySetting => 'プライバシー設定';
	@override String get theseSettingsCanEditLater => 'これらの設定は後から変更できます。';
	@override String get youCanEditMoreSettingsInSettingsPageLater => 'この他にも様々な設定を「設定」ページから行えます。ぜひ後で確認してみてください。';
	@override String get followUsers => 'タイムラインを構築するため、気になるユーザーをフォローしてみましょう。';
	@override String pushNotificationDescription({required Object name}) => 'プッシュ通知を有効にすると${name}の通知をお使いのデバイスで受け取ることができます。';
	@override String get initialAccountSettingCompleted => '初期設定が完了しました！';
	@override String haveFun({required Object name}) => '${name}をお楽しみください！';
	@override String youCanContinueTutorial({required Object name}) => 'このまま${name}(Misskey)の使い方についてのチュートリアルに進むこともできますが、ここで中断してすぐに使い始めることもできます。';
	@override String get startTutorial => 'チュートリアルを開始';
	@override String get skipAreYouSure => '初期設定をスキップしますか？';
	@override String get laterAreYouSure => '初期設定をあとでやり直しますか？';
}

// Path: misskey.initialTutorial_
class _StringsMisskeyInitialTutorialJaJp extends _StringsMisskeyInitialTutorialEnUs {
	_StringsMisskeyInitialTutorialJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'チュートリアルを見る';
	@override String get title => 'チュートリアル';
	@override String get wellDone => 'よくできました';
	@override String get skipAreYouSure => 'チュートリアルを終了しますか？';
	@override late final _StringsMisskeyInitialTutorialLandingJaJp landing_ = _StringsMisskeyInitialTutorialLandingJaJp._(_root);
	@override late final _StringsMisskeyInitialTutorialNoteJaJp note_ = _StringsMisskeyInitialTutorialNoteJaJp._(_root);
	@override late final _StringsMisskeyInitialTutorialReactionJaJp reaction_ = _StringsMisskeyInitialTutorialReactionJaJp._(_root);
	@override late final _StringsMisskeyInitialTutorialTimelineJaJp timeline_ = _StringsMisskeyInitialTutorialTimelineJaJp._(_root);
	@override late final _StringsMisskeyInitialTutorialPostNoteJaJp postNote_ = _StringsMisskeyInitialTutorialPostNoteJaJp._(_root);
	@override late final _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveJaJp howToMakeAttachmentsSensitive_ = _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveJaJp._(_root);
	@override late final _StringsMisskeyInitialTutorialDoneJaJp done_ = _StringsMisskeyInitialTutorialDoneJaJp._(_root);
}

// Path: misskey.timelineDescription_
class _StringsMisskeyTimelineDescriptionJaJp extends _StringsMisskeyTimelineDescriptionEnUs {
	_StringsMisskeyTimelineDescriptionJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get home => 'ホームタイムラインでは、あなたがフォローしているアカウントの投稿を見られます。';
	@override String get local => 'ローカルタイムラインでは、このサーバーにいるユーザー全員の投稿を見られます。';
	@override String get social => 'ソーシャルタイムラインには、ホームタイムラインとローカルタイムラインの投稿が両方表示されます。';
	@override String get global => 'グローバルタイムラインでは、接続している他のすべてのサーバーからの投稿を見られます。';
}

// Path: misskey.serverRules_
class _StringsMisskeyServerRulesJaJp extends _StringsMisskeyServerRulesEnUs {
	_StringsMisskeyServerRulesJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get description => '新規登録前に表示する、サーバーの簡潔なルールを設定します。内容は利用規約の要約とすることを推奨します。';
}

// Path: misskey.serverSettings_
class _StringsMisskeyServerSettingsJaJp extends _StringsMisskeyServerSettingsEnUs {
	_StringsMisskeyServerSettingsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get iconUrl => 'アイコン画像のURL';
	@override String appIconDescription({required Object host}) => '${host}がアプリとして表示される際のアイコンを指定します。';
	@override String get appIconUsageExample => '例: PWAや、スマートフォンのホーム画面にブックマークとして追加された時など';
	@override String get appIconStyleRecommendation => '円形もしくは角丸にクロップされる場合があるため、塗り潰された余白のある背景を持つことが推奨されます。';
	@override String appIconResolutionMustBe({required Object resolution}) => '解像度は必ず${resolution}である必要があります。';
	@override String get manifestJsonOverride => 'manifest.jsonのオーバーライド';
	@override String get shortName => '略称';
	@override String get shortNameDescription => 'サーバーの正式名称が長い場合に、代わりに表示することのできる略称や通称。';
	@override String get fanoutTimelineDescription => '有効にすると、各種タイムラインを取得する際のパフォーマンスが大幅に向上し、データベースへの負荷を軽減することが可能です。ただし、Redisのメモリ使用量は増加します。サーバーのメモリ容量が少ない場合、または動作が不安定な場合は無効にすることができます。';
	@override String get fanoutTimelineDbFallback => 'データベースへのフォールバック';
	@override String get fanoutTimelineDbFallbackDescription => '有効にすると、タイムラインがキャッシュされていない場合にDBへ追加で問い合わせを行うフォールバック処理を行います。無効にすると、フォールバック処理を行わないことでさらにサーバーの負荷を軽減することができますが、タイムラインが取得できる範囲に制限が生じます。';
	@override String get inquiryUrl => '問い合わせ先URL';
	@override String get inquiryUrlDescription => 'サーバー運営者へのお問い合わせフォームのURLや、運営者の連絡先等が記載されたWebページのURLを指定します。';
}

// Path: misskey.accountMigration_
class _StringsMisskeyAccountMigrationJaJp extends _StringsMisskeyAccountMigrationEnUs {
	_StringsMisskeyAccountMigrationJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => '別のアカウントからこのアカウントに移行';
	@override String get moveFromSub => '別のアカウントへエイリアスを作成';
	@override String moveFromLabel({required Object n}) => '移行元のアカウント #${n}';
	@override String get moveFromDescription => '別のアカウントからこのアカウントに移行したい場合、ここでエイリアスを作成しておく必要があります。\n移行元のアカウントをこのように入力してください: @username@server.example.com\n削除するには、入力欄を空にして保存します（非推奨）。';
	@override String get moveTo => 'このアカウントを新しいアカウントへ移行';
	@override String get moveToLabel => '移行先のアカウント:';
	@override String get moveCannotBeUndone => 'アカウントを移行すると、取り消すことはできません。';
	@override String get moveAccountDescription => '新しいアカウントへ移行します。\n　・フォロワーが新しいアカウントを自動でフォローします\n　・このアカウントからのフォローは全て解除されます\n　・このアカウントではノートの作成などができなくなります\n\nフォロワーの移行は自動ですが、フォローの移行は手動で行う必要があります。移行前にこのアカウントでフォローエクスポートし、移行後すぐに移行先アカウントでインポートを行なってください。\nリスト・ミュート・ブロックについても同様ですので、手動で移行する必要があります。\n\n（この説明はこのサーバー（Misskey v13.12.0以降）の仕様です。Mastodonなどの他のActivityPubソフトウェアでは挙動が異なる場合があります。）';
	@override String get moveAccountHowTo => 'アカウントの移行には、まずは移行先のアカウントでこのアカウントに対しエイリアスを作成します。\nエイリアス作成後、移行先のアカウントを次のように入力してください: @username@server.example.com';
	@override String get startMigration => '移行する';
	@override String migrationConfirm({required Object account}) => '本当にこのアカウントを ${account} に移行しますか？一度移行すると取り消せず、二度とこのアカウントを元の状態で使用できなくなります。';
	@override String get movedAndCannotBeUndone => '\nアカウントは移行されています。\n移行を取り消すことはできません。';
	@override String get postMigrationNote => 'このアカウントからのフォロー解除は移行操作から24時間後に実行されます。\nこのアカウントのフォロー・フォロワー数は0になっています。フォロワーの解除はされないため、あなたのフォロワーはこのアカウントのフォロワー向け投稿を引き続き閲覧できます。';
	@override String get movedTo => '移行先のアカウント:';
}

// Path: misskey.achievements_
class _StringsMisskeyAchievementsJaJp extends _StringsMisskeyAchievementsEnUs {
	_StringsMisskeyAchievementsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => '獲得日時';
	@override late final _StringsMisskeyAchievementsTypesJaJp types_ = _StringsMisskeyAchievementsTypesJaJp._(_root);
}

// Path: misskey.role_
class _StringsMisskeyRoleJaJp extends _StringsMisskeyRoleEnUs {
	_StringsMisskeyRoleJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'ロールの作成';
	@override String get edit => 'ロールの編集';
	@override String get name => 'ロール名';
	@override String get description => 'ロールの説明';
	@override String get permission => 'ロールの権限';
	@override String get descriptionOfPermission => '<b>モデレーター</b>は基本的なモデレーションに関する操作を行えます。\n<b>管理者</b>はサーバーの全ての設定を変更できます。';
	@override String get assignTarget => 'アサイン';
	@override String get descriptionOfAssignTarget => '<b>マニュアル</b>は誰がこのロールに含まれるかを手動で管理します。\n<b>コンディショナル</b>は条件を設定し、それに合致するユーザーが自動で含まれるようになります。';
	@override String get manual => 'マニュアル';
	@override String get manualRoles => 'マニュアルロール';
	@override String get conditional => 'コンディショナル';
	@override String get conditionalRoles => 'コンディショナルロール';
	@override String get condition => '条件';
	@override String get isConditionalRole => 'これはコンディショナルロールです。';
	@override String get isPublic => '公開ロール';
	@override String get descriptionOfIsPublic => 'ユーザーのプロフィールでこのロールが表示されます。';
	@override String get options => 'オプション';
	@override String get policies => 'ポリシー';
	@override String get baseRole => 'ベースロール';
	@override String get useBaseValue => 'ベースロールの値を使用';
	@override String get chooseRoleToAssign => 'アサインするロールを選択';
	@override String get iconUrl => 'アイコン画像のURL';
	@override String get asBadge => 'バッジとして表示';
	@override String get descriptionOfAsBadge => 'オンにすると、ユーザー名の横にロールのアイコンが表示されます。';
	@override String get isExplorable => 'ユーザーを見つけやすくする';
	@override String get descriptionOfIsExplorable => 'オンにすると、「みつける」でメンバー一覧が公開されるほか、ロールのタイムラインが利用可能になります。';
	@override String get displayOrder => '表示順';
	@override String get descriptionOfDisplayOrder => '数値が大きいほどUI上で先頭に表示されます。';
	@override String get canEditMembersByModerator => 'モデレーターのメンバー編集を許可';
	@override String get descriptionOfCanEditMembersByModerator => 'オンにすると、管理者に加えてモデレーターもこのロールへユーザーをアサイン/アサイン解除できるようになります。オフにすると管理者のみが行えます。';
	@override String get priority => '優先度';
	@override late final _StringsMisskeyRolePriorityJaJp priority_ = _StringsMisskeyRolePriorityJaJp._(_root);
	@override late final _StringsMisskeyRoleOptionsJaJp options_ = _StringsMisskeyRoleOptionsJaJp._(_root);
	@override late final _StringsMisskeyRoleConditionJaJp condition_ = _StringsMisskeyRoleConditionJaJp._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _StringsMisskeySensitiveMediaDetectionJaJp extends _StringsMisskeySensitiveMediaDetectionEnUs {
	_StringsMisskeySensitiveMediaDetectionJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get description => '機械学習を使って自動でセンシティブなメディアを検出し、モデレーションに役立てることができます。サーバーの負荷が少し増えます。';
	@override String get sensitivity => '検出感度';
	@override String get sensitivityDescription => '感度を低くすると、誤検知(偽陽性)が減ります。感度を高くすると、検知漏れ(偽陰性)が減ります。';
	@override String get setSensitiveFlagAutomatically => 'センシティブフラグを設定する';
	@override String get setSensitiveFlagAutomaticallyDescription => 'この設定をオフにしても内部的に判定結果は保持されます。';
	@override String get analyzeVideos => '動画の解析を有効化';
	@override String get analyzeVideosDescription => '静止画に加えて動画も解析するようにします。サーバーの負荷が少し増えます。';
}

// Path: misskey.emailUnavailable_
class _StringsMisskeyEmailUnavailableJaJp extends _StringsMisskeyEmailUnavailableEnUs {
	_StringsMisskeyEmailUnavailableJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get used => '既に使用されています';
	@override String get format => '形式が正しくありません';
	@override String get disposable => '恒久的に使用可能なアドレスではありません';
	@override String get mx => '正しいメールサーバーではありません';
	@override String get smtp => 'メールサーバーが応答しません';
	@override String get banned => 'このメールアドレスでは登録できません';
}

// Path: misskey.ffVisibility_
class _StringsMisskeyFfVisibilityJaJp extends _StringsMisskeyFfVisibilityEnUs {
	_StringsMisskeyFfVisibilityJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get public => '公開';
	@override String get followers => 'フォロワーだけに公開';
	@override String get private => '非公開';
}

// Path: misskey.signup_
class _StringsMisskeySignupJaJp extends _StringsMisskeySignupEnUs {
	_StringsMisskeySignupJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'ほとんど完了です';
	@override String get emailAddressInfo => 'あなたが使っているメールアドレスを入力してください。メールアドレスが公開されることはありません。';
	@override String emailSent({required Object email}) => '入力されたメールアドレス(${email})宛に確認のメールが送信されました。メールに記載されたリンクにアクセスすると、アカウントの作成が完了します。メールに記載されているリンクの有効期限は30分です。';
}

// Path: misskey.accountDelete_
class _StringsMisskeyAccountDeleteJaJp extends _StringsMisskeyAccountDeleteEnUs {
	_StringsMisskeyAccountDeleteJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'アカウントの削除';
	@override String get mayTakeTime => 'アカウントの削除は負荷のかかる処理であるため、作成したコンテンツの数やアップロードしたファイルの数が多いと完了までに時間がかかることがあります。';
	@override String get sendEmail => 'アカウントの削除が完了する際は、登録してあったメールアドレス宛に通知を送信します。';
	@override String get requestAccountDelete => 'アカウント削除をリクエスト';
	@override String get started => '削除処理が開始されました。';
	@override String get inProgress => '削除が進行中';
}

// Path: misskey.ad_
class _StringsMisskeyAdJaJp extends _StringsMisskeyAdEnUs {
	_StringsMisskeyAdJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get back => '戻る';
	@override String get reduceFrequencyOfThisAd => 'この広告の表示頻度を下げる';
	@override String get hide => '表示しない';
	@override String get timezoneinfo => '曜日はサーバーのタイムゾーンを元に指定されます。';
	@override String get adsSettings => '広告配信設定';
	@override String get notesPerOneAd => 'リアルタイム更新中に広告を配信する間隔（ノートの個数）';
	@override String get setZeroToDisable => '0でリアルタイム更新時の広告配信を無効';
	@override String get adsTooClose => '広告の配信間隔が極めて短いため、ユーザー体験が著しく損われる可能性があります。';
}

// Path: misskey.forgotPassword_
class _StringsMisskeyForgotPasswordJaJp extends _StringsMisskeyForgotPasswordEnUs {
	_StringsMisskeyForgotPasswordJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'アカウントに登録したメールアドレスを入力してください。そのアドレス宛てに、パスワードリセット用のリンクが送信されます。';
	@override String get ifNoEmail => 'メールアドレスを登録していない場合は、管理者までお問い合わせください。';
	@override String get contactAdmin => 'このサーバーではメールがサポートされていないため、パスワードリセットを行う場合は管理者までお問い合わせください。';
}

// Path: misskey.gallery_
class _StringsMisskeyGalleryJaJp extends _StringsMisskeyGalleryEnUs {
	_StringsMisskeyGalleryJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get my => '自分の投稿';
	@override String get liked => 'いいねした投稿';
	@override String get like => 'いいね！';
	@override String get unlike => 'いいね解除';
}

// Path: misskey.email_
class _StringsMisskeyEmailJaJp extends _StringsMisskeyEmailEnUs {
	_StringsMisskeyEmailJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyEmailFollowJaJp follow_ = _StringsMisskeyEmailFollowJaJp._(_root);
	@override late final _StringsMisskeyEmailReceiveFollowRequestJaJp receiveFollowRequest_ = _StringsMisskeyEmailReceiveFollowRequestJaJp._(_root);
}

// Path: misskey.plugin_
class _StringsMisskeyPluginJaJp extends _StringsMisskeyPluginEnUs {
	_StringsMisskeyPluginJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get install => 'プラグインのインストール';
	@override String get installWarn => '信頼できないプラグインはインストールしないでください。';
	@override String get manage => 'プラグインの管理';
	@override String get viewSource => 'ソースを表示';
	@override String get viewLog => 'ログを表示';
}

// Path: misskey.preferencesBackups_
class _StringsMisskeyPreferencesBackupsJaJp extends _StringsMisskeyPreferencesBackupsEnUs {
	_StringsMisskeyPreferencesBackupsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get list => '作成したバックアップ';
	@override String get saveNew => '新規保存';
	@override String get loadFile => 'ファイルを読み込み';
	@override String get apply => 'このデバイスに適用';
	@override String get save => '上書き保存';
	@override String get inputName => 'バックアップ名を入力';
	@override String get cannotSave => '保存できません';
	@override String nameAlreadyExists({required Object name}) => 'バックアップ名「${name}」は既に存在します。違う名前を指定してください。';
	@override String applyConfirm({required Object name}) => 'バックアップ「${name}」を現在のデバイスに適用しますか？現在のデバイス設定は失われます。';
	@override String saveConfirm({required Object name}) => '${name}に上書き保存しますか？';
	@override String deleteConfirm({required Object name}) => '${name}を削除しますか？';
	@override String renameConfirm({required Object old, required Object new_}) => '「${old}」を「${new_}」に変更しますか？';
	@override String get noBackups => 'バックアップはありません。「新規保存」で現在のクライアント設定をサーバーに保存できます。';
	@override String createdAt({required Object date, required Object time}) => '作成日時: ${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => '更新日時: ${date} ${time}';
	@override String get cannotLoad => '読み込みできません';
	@override String get invalidFile => 'ファイル形式が違います。';
}

// Path: misskey.registry_
class _StringsMisskeyRegistryJaJp extends _StringsMisskeyRegistryEnUs {
	_StringsMisskeyRegistryJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get scope => 'スコープ';
	@override String get key => 'キー';
	@override String get keys => 'キー';
	@override String get domain => 'ドメイン';
	@override String get createKey => 'キーを作成';
}

// Path: misskey.aboutMisskey_
class _StringsMisskeyAboutMisskeyJaJp extends _StringsMisskeyAboutMisskeyEnUs {
	_StringsMisskeyAboutMisskeyJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskeyはsyuiloによって2014年から開発されている、オープンソースのソフトウェアです。';
	@override String get contributors => 'コントリビューター';
	@override String get allContributors => '全てのコントリビューター';
	@override String get source => 'ソースコード';
	@override String get original => 'オリジナル';
	@override String thisIsModifiedVersion({required Object name}) => '${name}はオリジナルのMisskeyを改変したバージョンを使用しています。';
	@override String get translation => 'Misskeyを翻訳';
	@override String get donate => 'Misskeyに寄付';
	@override String get morePatrons => '他にも多くの方が支援してくれています。ありがとうございます🥰';
	@override String get patrons => '支援者';
	@override String get projectMembers => 'プロジェクトメンバー';
}

// Path: misskey.displayOfSensitiveMedia_
class _StringsMisskeyDisplayOfSensitiveMediaJaJp extends _StringsMisskeyDisplayOfSensitiveMediaEnUs {
	_StringsMisskeyDisplayOfSensitiveMediaJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get respect => 'センシティブ設定されたメディアを隠す';
	@override String get ignore => 'センシティブ設定されたメディアを隠さない';
	@override String get force => '常にメディアを隠す';
}

// Path: misskey.instanceTicker_
class _StringsMisskeyInstanceTickerJaJp extends _StringsMisskeyInstanceTickerEnUs {
	_StringsMisskeyInstanceTickerJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get none => '表示しない';
	@override String get remote => 'リモートユーザーに表示';
	@override String get always => '常に表示';
}

// Path: misskey.serverDisconnectedBehavior_
class _StringsMisskeyServerDisconnectedBehaviorJaJp extends _StringsMisskeyServerDisconnectedBehaviorEnUs {
	_StringsMisskeyServerDisconnectedBehaviorJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get reload => '自動でリロード';
	@override String get dialog => 'ダイアログで警告';
	@override String get quiet => '控えめに警告';
}

// Path: misskey.channel_
class _StringsMisskeyChannelJaJp extends _StringsMisskeyChannelEnUs {
	_StringsMisskeyChannelJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get create => 'チャンネルを作成';
	@override String get edit => 'チャンネルを編集';
	@override String get setBanner => 'バナーを設定';
	@override String get removeBanner => 'バナーを削除';
	@override String get featured => 'トレンド';
	@override String get owned => '管理中';
	@override String get following => 'フォロー中';
	@override String usersCount({required Object n}) => '${n}人が参加中';
	@override String notesCount({required Object n}) => '${n}投稿があります';
	@override String get nameAndDescription => '名前と説明';
	@override String get nameOnly => '名前のみ';
	@override String get allowRenoteToExternal => 'チャンネル外へのリノートと引用リノートを許可する';
}

// Path: misskey.menuDisplay_
class _StringsMisskeyMenuDisplayJaJp extends _StringsMisskeyMenuDisplayEnUs {
	_StringsMisskeyMenuDisplayJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get sideFull => '横';
	@override String get sideIcon => '横(アイコン)';
	@override String get top => '上部';
	@override String get hide => '隠す';
}

// Path: misskey.wordMute_
class _StringsMisskeyWordMuteJaJp extends _StringsMisskeyWordMuteEnUs {
	_StringsMisskeyWordMuteJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'ミュートするワード';
	@override String get muteWordsDescription => 'スペースで区切るとAND指定になり、改行で区切るとOR指定になります。';
	@override String get muteWordsDescription2 => 'キーワードをスラッシュで囲むと正規表現になります。';
}

// Path: misskey.instanceMute_
class _StringsMisskeyInstanceMuteJaJp extends _StringsMisskeyInstanceMuteEnUs {
	_StringsMisskeyInstanceMuteJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'ミュートしたサーバーのユーザーへの返信を含めて、設定したサーバーの全てのノートとRenoteをミュートします。';
	@override String get instanceMuteDescription2 => '改行で区切って設定します';
	@override String get title => '設定したサーバーのノートを隠します。';
	@override String get heading => 'ミュートするサーバー';
}

// Path: misskey.theme_
class _StringsMisskeyThemeJaJp extends _StringsMisskeyThemeEnUs {
	_StringsMisskeyThemeJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get explore => 'テーマを探す';
	@override String get install => 'テーマのインストール';
	@override String get manage => 'テーマの管理';
	@override String get code => 'テーマコード';
	@override String get description => '説明';
	@override String installed({required Object name}) => '${name}をインストールしました';
	@override String get installedThemes => 'インストールされたテーマ';
	@override String get builtinThemes => '標準のテーマ';
	@override String get alreadyInstalled => 'そのテーマは既にインストールされています';
	@override String get invalid => 'テーマの形式が間違っています';
	@override String get make => 'テーマを作る';
	@override String get base => 'ベース';
	@override String get addConstant => '定数を追加';
	@override String get constant => '定数';
	@override String get defaultValue => 'デフォルト値';
	@override String get color => '色';
	@override String get refProp => 'プロパティを参照';
	@override String get refConst => '定数を参照';
	@override String get key => 'キー';
	@override String get func => '関数';
	@override String get funcKind => '関数の種類';
	@override String get argument => '引数';
	@override String get basedProp => '元にするプロパティの名前';
	@override String get alpha => '不透明度';
	@override String get darken => '暗さ';
	@override String get lighten => '明るさ';
	@override String get inputConstantName => '定数名を入力してください';
	@override String get importInfo => 'ここにテーマコードを貼り付けて、エディターにインポートできます';
	@override String deleteConstantConfirm({required Object const_}) => '定数 ${const_} を削除しても良いですか？';
	@override late final _StringsMisskeyThemeKeysJaJp keys = _StringsMisskeyThemeKeysJaJp._(_root);
}

// Path: misskey.sfx_
class _StringsMisskeySfxJaJp extends _StringsMisskeySfxEnUs {
	_StringsMisskeySfxJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get note => 'ノート';
	@override String get noteMy => 'ノート(自分)';
	@override String get notification => '通知';
	@override String get reaction => 'リアクション選択時';
}

// Path: misskey.soundSettings_
class _StringsMisskeySoundSettingsJaJp extends _StringsMisskeySoundSettingsEnUs {
	_StringsMisskeySoundSettingsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get driveFile => 'ドライブの音声を使用';
	@override String get driveFileWarn => 'ドライブのファイルを選択してください';
	@override String get driveFileTypeWarn => 'このファイルは対応していません';
	@override String get driveFileTypeWarnDescription => '音声ファイルを選択してください';
	@override String get driveFileDurationWarn => '音声が長すぎます';
	@override String get driveFileDurationWarnDescription => '長い音声を使用するとMisskeyの使用に支障をきたす可能性があります。それでも続行しますか？';
	@override String get driveFileError => '音声が読み込めませんでした。設定を変更してください';
}

// Path: misskey.ago_
class _StringsMisskeyAgoJaJp extends _StringsMisskeyAgoEnUs {
	_StringsMisskeyAgoJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get future => '未来';
	@override String get justNow => 'たった今';
	@override String secondsAgo({required Object n}) => '${n}秒前';
	@override String minutesAgo({required Object n}) => '${n}分前';
	@override String hoursAgo({required Object n}) => '${n}時間前';
	@override String daysAgo({required Object n}) => '${n}日前';
	@override String weeksAgo({required Object n}) => '${n}週間前';
	@override String monthsAgo({required Object n}) => '${n}ヶ月前';
	@override String yearsAgo({required Object n}) => '${n}年前';
	@override String get invalid => '日時の解析に失敗';
}

// Path: misskey.timeIn_
class _StringsMisskeyTimeInJaJp extends _StringsMisskeyTimeInEnUs {
	_StringsMisskeyTimeInJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String seconds({required Object n}) => '${n}秒後';
	@override String minutes({required Object n}) => '${n}分後';
	@override String hours({required Object n}) => '${n}時間後';
	@override String days({required Object n}) => '${n}日後';
	@override String weeks({required Object n}) => '${n}週間後';
	@override String months({required Object n}) => '${n}ヶ月後';
	@override String years({required Object n}) => '${n}年後';
}

// Path: misskey.time_
class _StringsMisskeyTimeJaJp extends _StringsMisskeyTimeEnUs {
	_StringsMisskeyTimeJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get second => '秒';
	@override String get minute => '分';
	@override String get hour => '時間';
	@override String get day => '日';
}

// Path: misskey.x2fa_
class _StringsMisskeyX2faJaJp extends _StringsMisskeyX2faEnUs {
	_StringsMisskeyX2faJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => '既に設定は完了しています。';
	@override String get registerTOTP => '認証アプリの設定を開始';
	@override String step1({required Object a, required Object b}) => 'まず、${a}や${b}などの認証アプリをお使いのデバイスにインストールします。';
	@override String get step2 => '次に、表示されているQRコードをアプリでスキャンするか、ボタンをクリックして端末上でアプリを開きます。';
	@override String get step2Uri => 'デスクトップアプリを使用する場合は次のURIを入力します';
	@override String get step3Title => '確認コードを入力';
	@override String get step3 => 'アプリに表示されている確認コード（トークン）を入力します。';
	@override String get setupCompleted => '設定が完了しました';
	@override String get step4 => 'これからログインするときも、同じようにコードを入力します。';
	@override String get securityKeyNotSupported => 'お使いのブラウザはセキュリティキーに対応していません。';
	@override String get registerTOTPBeforeKey => 'セキュリティキー・パスキーを登録するには、まず認証アプリの設定を行なってください。';
	@override String get securityKeyInfo => 'FIDO2をサポートするハードウェアセキュリティキー、端末の生体認証やPINロック、パスキーといった、WebAuthn由来の鍵を登録します。';
	@override String get registerSecurityKey => 'セキュリティキー・パスキーを登録する';
	@override String get securityKeyName => 'キーの名前を入力';
	@override String get tapSecurityKey => 'ブラウザの指示に従い、セキュリティキーやパスキーを登録してください';
	@override String get removeKey => 'セキュリティキーを削除';
	@override String removeKeyConfirm({required Object name}) => '${name}を削除しますか？';
	@override String get whyTOTPOnlyRenew => 'セキュリティキーが登録されている場合、認証アプリの設定は解除できません。';
	@override String get renewTOTP => '認証アプリを再設定';
	@override String get renewTOTPConfirm => '今までの認証アプリの確認コードおよびバックアップコードは使用できなくなります';
	@override String get renewTOTPOk => '再設定する';
	@override String get renewTOTPCancel => 'やめておく';
	@override String get checkBackupCodesBeforeCloseThisWizard => 'このウィザードを閉じる前に、以下のバックアップコードを確認してください。';
	@override String get backupCodes => 'バックアップコード';
	@override String get backupCodesDescription => '認証アプリが使用できなくなった場合、以下のバックアップコードを使ってアカウントにアクセスできます。これらのコードは必ず安全な場所に保管してください。各コードは一回だけ使用できます。';
	@override String get backupCodeUsedWarning => 'バックアップコードが使用されました。認証アプリが使えなくなっている場合、なるべく早く認証アプリを再設定してください。';
	@override String get backupCodesExhaustedWarning => 'バックアップコードが全て使用されました。認証アプリを利用できない場合、これ以上アカウントにアクセスできなくなります。認証アプリを再登録してください。';
	@override String get moreDetailedGuideHere => '詳細なガイドはこちら';
}

// Path: misskey.permissions_
class _StringsMisskeyPermissionsJaJp extends _StringsMisskeyPermissionsEnUs {
	_StringsMisskeyPermissionsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'アカウントの情報を見る';
	@override String get writeAccount => 'アカウントの情報を変更する';
	@override String get readBlocks => 'ブロックを見る';
	@override String get writeBlocks => 'ブロックを操作する';
	@override String get readDrive => 'ドライブを見る';
	@override String get writeDrive => 'ドライブを操作する';
	@override String get readFavorites => 'お気に入りを見る';
	@override String get writeFavorites => 'お気に入りを操作する';
	@override String get readFollowing => 'フォローの情報を見る';
	@override String get writeFollowing => 'フォロー・フォロー解除する';
	@override String get readMessaging => 'チャットを見る';
	@override String get writeMessaging => 'チャットを操作する';
	@override String get readMutes => 'ミュートを見る';
	@override String get writeMutes => 'ミュートを操作する';
	@override String get writeNotes => 'ノートを作成・削除する';
	@override String get readNotifications => '通知を見る';
	@override String get writeNotifications => '通知を操作する';
	@override String get readReactions => 'リアクションを見る';
	@override String get writeReactions => 'リアクションを操作する';
	@override String get writeVotes => '投票する';
	@override String get readPages => 'ページを見る';
	@override String get writePages => 'ページを操作する';
	@override String get readPageLikes => 'ページのいいねを見る';
	@override String get writePageLikes => 'ページのいいねを操作する';
	@override String get readUserGroups => 'ユーザーグループを見る';
	@override String get writeUserGroups => 'ユーザーグループを操作する';
	@override String get readChannels => 'チャンネルを見る';
	@override String get writeChannels => 'チャンネルを操作する';
	@override String get readGallery => 'ギャラリーを見る';
	@override String get writeGallery => 'ギャラリーを操作する';
	@override String get readGalleryLikes => 'ギャラリーのいいねを見る';
	@override String get writeGalleryLikes => 'ギャラリーのいいねを操作する';
	@override String get readFlash => 'Playを見る';
	@override String get writeFlash => 'Playを操作する';
	@override String get readFlashLikes => 'Playのいいねを見る';
	@override String get writeFlashLikes => 'Playのいいねを操作する';
	@override String get readAdminAbuseUserReports => 'ユーザーからの通報を見る';
	@override String get writeAdminDeleteAccount => 'ユーザーアカウントを削除する';
	@override String get writeAdminDeleteAllFilesOfAUser => 'ユーザーのすべてのファイルを削除する';
	@override String get readAdminIndexStats => 'データベースインデックスに関する情報を見る';
	@override String get readAdminTableStats => 'データベーステーブルに関する情報を見る';
	@override String get readAdminUserIps => 'ユーザーのIPアドレスを見る';
	@override String get readAdminMeta => 'インスタンスのメタデータを見る';
	@override String get writeAdminResetPassword => 'ユーザーのパスワードをリセットする';
	@override String get writeAdminResolveAbuseUserReport => 'ユーザーからの通報を解決する';
	@override String get writeAdminSendEmail => 'メールを送る';
	@override String get readAdminServerInfo => 'サーバーの情報を見る';
	@override String get readAdminShowModerationLog => 'モデレーションログを見る';
	@override String get readAdminShowUser => 'ユーザーのプライベートな情報を見る';
	@override String get writeAdminSuspendUser => 'ユーザーを凍結する';
	@override String get writeAdminUnsetUserAvatar => 'ユーザーのアバターを削除する';
	@override String get writeAdminUnsetUserBanner => 'ユーザーのバーナーを削除する';
	@override String get writeAdminUnsuspendUser => 'ユーザーの凍結を解除する';
	@override String get writeAdminMeta => 'インスタンスのメタデータを操作する';
	@override String get writeAdminUserNote => 'モデレーションノートを操作する';
	@override String get writeAdminRoles => 'ロールを操作する';
	@override String get readAdminRoles => 'ロールを見る';
	@override String get writeAdminRelays => 'リレーを操作する';
	@override String get readAdminRelays => 'リレーを見る';
	@override String get writeAdminInviteCodes => '招待コードを操作する';
	@override String get readAdminInviteCodes => '招待コードを見る';
	@override String get writeAdminAnnouncements => 'お知らせを操作する';
	@override String get readAdminAnnouncements => 'お知らせを見る';
	@override String get writeAdminAvatarDecorations => 'アバターデコレーションを操作する';
	@override String get readAdminAvatarDecorations => 'アバターデコレーションを見る';
	@override String get writeAdminFederation => '連合に関する情報を操作する';
	@override String get writeAdminAccount => 'ユーザーアカウントを操作する';
	@override String get readAdminAccount => 'ユーザーに関する情報を見る';
	@override String get writeAdminEmoji => '絵文字を操作する';
	@override String get readAdminEmoji => '絵文字を見る';
	@override String get writeAdminQueue => 'ジョブキューを操作する';
	@override String get readAdminQueue => 'ジョブキューに関する情報を見る';
	@override String get writeAdminPromo => 'プロモーションノートを操作する';
	@override String get writeAdminDrive => 'ユーザーのドライブを操作する';
	@override String get readAdminDrive => 'ユーザーのドライブの関する情報を見る';
	@override String get readAdminStream => '管理者用のWebsocket APIを使う';
	@override String get writeAdminAd => '広告を操作する';
	@override String get readAdminAd => '広告を見る';
	@override String get writeInviteCodes => '招待コードを作成する';
	@override String get readInviteCodes => '招待コードを取得する';
	@override String get writeClipFavorite => 'クリップのいいねを操作する';
	@override String get readClipFavorite => 'クリップのいいねを見る';
	@override String get readFederation => '連合に関する情報を取得する';
	@override String get writeReportAbuse => '違反を報告する';
}

// Path: misskey.auth_
class _StringsMisskeyAuthJaJp extends _StringsMisskeyAuthEnUs {
	_StringsMisskeyAuthJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'アプリへのアクセス許可';
	@override String shareAccess({required Object name}) => '「${name}」がアカウントにアクセスすることを許可しますか？';
	@override String get shareAccessAsk => 'アカウントへのアクセスを許可しますか？';
	@override String permission({required Object name}) => '${name}は次の権限を要求しています';
	@override String get permissionAsk => 'このアプリは次の権限を要求しています';
	@override String get pleaseGoBack => 'アプリケーションに戻ってやっていってください';
	@override String get callback => 'アプリケーションに戻っています';
	@override String get denied => 'アクセスを拒否しました';
	@override String get pleaseLogin => 'アプリケーションにアクセス許可を与えるには、ログインが必要です。';
}

// Path: misskey.antennaSources_
class _StringsMisskeyAntennaSourcesJaJp extends _StringsMisskeyAntennaSourcesEnUs {
	_StringsMisskeyAntennaSourcesJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get all => '全てのノート';
	@override String get homeTimeline => 'フォローしているユーザーのノート';
	@override String get users => '指定した一人または複数のユーザーのノート';
	@override String get userList => '指定したリストのユーザーのノート';
	@override String get userBlacklist => '指定した一人または複数のユーザーを除いた全てのノート';
}

// Path: misskey.weekday_
class _StringsMisskeyWeekdayJaJp extends _StringsMisskeyWeekdayEnUs {
	_StringsMisskeyWeekdayJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get sunday => '日曜日';
	@override String get monday => '月曜日';
	@override String get tuesday => '火曜日';
	@override String get wednesday => '水曜日';
	@override String get thursday => '木曜日';
	@override String get friday => '金曜日';
	@override String get saturday => '土曜日';
}

// Path: misskey.widgets_
class _StringsMisskeyWidgetsJaJp extends _StringsMisskeyWidgetsEnUs {
	_StringsMisskeyWidgetsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get profile => 'プロフィール';
	@override String get instanceInfo => 'サーバー情報';
	@override String get memo => '付箋';
	@override String get notifications => '通知';
	@override String get timeline => 'タイムライン';
	@override String get calendar => 'カレンダー';
	@override String get trends => 'トレンド';
	@override String get clock => '時計';
	@override String get rss => 'RSSリーダー';
	@override String get rssTicker => 'RSSティッカー';
	@override String get activity => 'アクティビティ';
	@override String get photos => 'フォト';
	@override String get digitalClock => 'デジタル時計';
	@override String get unixClock => 'UNIX時計';
	@override String get federation => '連合';
	@override String get instanceCloud => 'サーバークラウド';
	@override String get postForm => '投稿フォーム';
	@override String get slideshow => 'スライドショー';
	@override String get button => 'ボタン';
	@override String get onlineUsers => 'オンラインユーザー';
	@override String get jobQueue => 'ジョブキュー';
	@override String get serverMetric => 'サーバーメトリクス';
	@override String get aiscript => 'AiScriptコンソール';
	@override String get aiscriptApp => 'AiScript App';
	@override String get aichan => '藍';
	@override String get userList => 'ユーザーリスト';
	@override late final _StringsMisskeyWidgetsUserListJaJp userList_ = _StringsMisskeyWidgetsUserListJaJp._(_root);
	@override String get clicker => 'クリッカー';
	@override String get birthdayFollowings => '今日誕生日のユーザー';
}

// Path: misskey.cw_
class _StringsMisskeyCwJaJp extends _StringsMisskeyCwEnUs {
	_StringsMisskeyCwJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get hide => '隠す';
	@override String get show => 'もっと見る';
	@override String chars({required Object count}) => '${count}文字';
	@override String files({required Object count}) => '${count}ファイル';
}

// Path: misskey.poll_
class _StringsMisskeyPollJaJp extends _StringsMisskeyPollEnUs {
	_StringsMisskeyPollJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => '選択肢は最低2つ必要です';
	@override String choiceN({required Object n}) => '選択肢${n}';
	@override String get noMore => 'これ以上追加できません';
	@override String get canMultipleVote => '複数回答可';
	@override String get expiration => '期限';
	@override String get infinite => '無期限';
	@override String get at => '日時指定';
	@override String get after => '経過指定';
	@override String get deadlineDate => '期日';
	@override String get deadlineTime => '時間';
	@override String get duration => '期間';
	@override String votesCount({required Object n}) => '${n}票';
	@override String totalVotes({required Object n}) => '計${n}票';
	@override String get vote => '投票する';
	@override String get showResult => '結果を見る';
	@override String get voted => '投票済み';
	@override String get closed => '終了済み';
	@override String remainingDays({required Object d, required Object h}) => '終了まであと${d}日${h}時間';
	@override String remainingHours({required Object h, required Object m}) => '終了まであと${h}時間${m}分';
	@override String remainingMinutes({required Object m, required Object s}) => '終了まであと${m}分${s}秒';
	@override String remainingSeconds({required Object s}) => '終了まであと${s}秒';
}

// Path: misskey.visibility_
class _StringsMisskeyVisibilityJaJp extends _StringsMisskeyVisibilityEnUs {
	_StringsMisskeyVisibilityJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get public => 'パブリック';
	@override String get publicDescription => '全てのユーザーに公開';
	@override String get home => 'ホーム';
	@override String get homeDescription => 'ホームタイムラインのみに公開';
	@override String get followers => 'フォロワー';
	@override String get followersDescription => '自分のフォロワーのみに公開';
	@override String get specified => 'ダイレクト';
	@override String get specifiedDescription => '指定したユーザーのみに公開';
	@override String get disableFederation => '連合なし';
	@override String get disableFederationDescription => '他サーバーへの配信を行いません';
}

// Path: misskey.postForm_
class _StringsMisskeyPostFormJaJp extends _StringsMisskeyPostFormEnUs {
	_StringsMisskeyPostFormJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'このノートに返信...';
	@override String get quotePlaceholder => 'このノートを引用...';
	@override String get channelPlaceholder => 'チャンネルに投稿...';
	@override late final _StringsMisskeyPostFormPlaceholdersJaJp placeholders_ = _StringsMisskeyPostFormPlaceholdersJaJp._(_root);
}

// Path: misskey.profile_
class _StringsMisskeyProfileJaJp extends _StringsMisskeyProfileEnUs {
	_StringsMisskeyProfileJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get name => '名前';
	@override String get username => 'ユーザー名';
	@override String get description => '自己紹介';
	@override String get youCanIncludeHashtags => 'ハッシュタグを含めることができます。';
	@override String get metadata => '追加情報';
	@override String get metadataEdit => '追加情報を編集';
	@override String get metadataDescription => 'プロフィールに表として追加情報を表示することができます。';
	@override String get metadataLabel => 'ラベル';
	@override String get metadataContent => '内容';
	@override String get changeAvatar => 'アイコン画像を変更';
	@override String get changeBanner => 'バナー画像を変更';
	@override String get verifiedLinkDescription => '内容にURLを設定すると、リンク先のWebサイトに自分のプロフィールへのリンクが含まれている場合に所有者確認済みアイコンを表示させることができます。';
	@override String avatarDecorationMax({required Object max}) => '最大${max}つまでデコレーションを付けられます。';
}

// Path: misskey.exportOrImport_
class _StringsMisskeyExportOrImportJaJp extends _StringsMisskeyExportOrImportEnUs {
	_StringsMisskeyExportOrImportJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get allNotes => '全てのノート';
	@override String get favoritedNotes => 'お気に入りにしたノート';
	@override String get clips => 'クリップ';
	@override String get followingList => 'フォロー';
	@override String get muteList => 'ミュート';
	@override String get blockingList => 'ブロック';
	@override String get userLists => 'リスト';
	@override String get excludeMutingUsers => 'ミュートしているユーザーを除外';
	@override String get excludeInactiveUsers => '使われていないアカウントを除外';
	@override String get withReplies => 'インポートした人による返信をTLに含むようにする';
}

// Path: misskey.charts_
class _StringsMisskeyChartsJaJp extends _StringsMisskeyChartsEnUs {
	_StringsMisskeyChartsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get federation => '連合';
	@override String get apRequest => 'リクエスト';
	@override String get usersIncDec => 'ユーザーの増減';
	@override String get usersTotal => 'ユーザーの合計';
	@override String get activeUsers => 'アクティブユーザー数';
	@override String get notesIncDec => 'ノートの増減';
	@override String get localNotesIncDec => 'ローカルのノートの増減';
	@override String get remoteNotesIncDec => 'リモートのノートの増減';
	@override String get notesTotal => 'ノートの合計';
	@override String get filesIncDec => 'ファイルの増減';
	@override String get filesTotal => 'ファイルの合計';
	@override String get storageUsageIncDec => 'ストレージ使用量の増減';
	@override String get storageUsageTotal => 'ストレージ使用量の合計';
}

// Path: misskey.instanceCharts_
class _StringsMisskeyInstanceChartsJaJp extends _StringsMisskeyInstanceChartsEnUs {
	_StringsMisskeyInstanceChartsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get requests => 'リクエスト';
	@override String get users => 'ユーザーの増減';
	@override String get usersTotal => 'ユーザーの累積';
	@override String get notes => 'ノートの増減';
	@override String get notesTotal => 'ノートの累積';
	@override String get ff => 'フォロー/フォロワーの増減';
	@override String get ffTotal => 'フォロー/フォロワーの累積';
	@override String get cacheSize => 'キャッシュサイズの増減';
	@override String get cacheSizeTotal => 'キャッシュサイズの累積';
	@override String get files => 'ファイル数の増減';
	@override String get filesTotal => 'ファイル数の累積';
}

// Path: misskey.timelines_
class _StringsMisskeyTimelinesJaJp extends _StringsMisskeyTimelinesEnUs {
	_StringsMisskeyTimelinesJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get home => 'ホーム';
	@override String get local => 'ローカル';
	@override String get social => 'ソーシャル';
	@override String get global => 'グローバル';
}

// Path: misskey.play_
class _StringsMisskeyPlayJaJp extends _StringsMisskeyPlayEnUs {
	_StringsMisskeyPlayJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Playの作成';
	@override String get edit => 'Playの編集';
	@override String get created => 'Playを作成しました';
	@override String get updated => 'Playを更新しました';
	@override String get deleted => 'Playを削除しました';
	@override String get pageSetting => 'Play設定';
	@override String get editThisPage => 'このPlayを編集';
	@override String get viewSource => 'ソースを表示';
	@override String get my => '自分のPlay';
	@override String get liked => 'いいねしたPlay';
	@override String get featured => '人気';
	@override String get title => 'タイトル';
	@override String get script => 'スクリプト';
	@override String get summary => '説明';
	@override String get visibilityDescription => '非公開に設定するとプロフィールに表示されなくなりますが、URLを知っている人は引き続きアクセスできます。';
}

// Path: misskey.pages_
class _StringsMisskeyPagesJaJp extends _StringsMisskeyPagesEnUs {
	_StringsMisskeyPagesJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'ページの作成';
	@override String get editPage => 'ページの編集';
	@override String get readPage => 'ソースを表示中';
	@override String get created => 'ページを作成しました';
	@override String get updated => 'ページを更新しました';
	@override String get deleted => 'ページを削除しました';
	@override String get pageSetting => 'ページ設定';
	@override String get nameAlreadyExists => '指定されたページURLは既に存在しています';
	@override String get invalidNameTitle => '不正なページURLです';
	@override String get invalidNameText => '空白でないか確認してください';
	@override String get editThisPage => 'このページを編集';
	@override String get viewSource => 'ソースを表示';
	@override String get viewPage => 'ページを見る';
	@override String get like => 'いいね';
	@override String get unlike => 'いいね解除';
	@override String get my => '自分のページ';
	@override String get liked => 'いいねしたページ';
	@override String get featured => '人気';
	@override String get inspector => 'インスペクター';
	@override String get contents => 'コンテンツ';
	@override String get content => 'ページブロック';
	@override String get variables => '変数';
	@override String get title => 'タイトル';
	@override String get url => 'ページURL';
	@override String get summary => 'ページの要約';
	@override String get alignCenter => '中央寄せ';
	@override String get hideTitleWhenPinned => 'ピン留めされているときにタイトルを非表示';
	@override String get font => 'フォント';
	@override String get fontSerif => 'セリフ';
	@override String get fontSansSerif => 'サンセリフ';
	@override String get eyeCatchingImageSet => 'アイキャッチ画像を設定';
	@override String get eyeCatchingImageRemove => 'アイキャッチ画像を削除';
	@override String get chooseBlock => 'ブロックを追加';
	@override String get selectType => '種類を選択';
	@override String get contentBlocks => 'コンテンツ';
	@override String get inputBlocks => '入力';
	@override String get specialBlocks => '特殊';
	@override late final _StringsMisskeyPagesBlocksJaJp blocks = _StringsMisskeyPagesBlocksJaJp._(_root);
}

// Path: misskey.relayStatus_
class _StringsMisskeyRelayStatusJaJp extends _StringsMisskeyRelayStatusEnUs {
	_StringsMisskeyRelayStatusJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get requesting => '承認待ち';
	@override String get accepted => '承認済み';
	@override String get rejected => '拒否済み';
}

// Path: misskey.notification_
class _StringsMisskeyNotificationJaJp extends _StringsMisskeyNotificationEnUs {
	_StringsMisskeyNotificationJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'ファイルがアップロードされました';
	@override String youGotMention({required Object name}) => '${name}からのメンション';
	@override String youGotReply({required Object name}) => '${name}からのリプライ';
	@override String youGotQuote({required Object name}) => '${name}による引用';
	@override String youRenoted({required Object name}) => '${name}がRenoteしました';
	@override String get youWereFollowed => 'フォローされました';
	@override String get youReceivedFollowRequest => 'フォローリクエストが来ました';
	@override String get yourFollowRequestAccepted => 'フォローリクエストが承認されました';
	@override String get pollEnded => 'アンケートの結果が出ました';
	@override String get newNote => '新しい投稿';
	@override String unreadAntennaNote({required Object name}) => 'アンテナ ${name}';
	@override String get roleAssigned => 'ロールが付与されました';
	@override String get emptyPushNotificationMessage => 'プッシュ通知の更新をしました';
	@override String get achievementEarned => '実績を獲得';
	@override String get testNotification => '通知テスト';
	@override String get checkNotificationBehavior => '通知の表示を確かめる';
	@override String get sendTestNotification => 'テスト通知を送信する';
	@override String get notificationWillBeDisplayedLikeThis => '通知はこのように表示されます';
	@override String reactedBySomeUsers({required Object n}) => '${n}人がリアクションしました';
	@override String likedBySomeUsers({required Object n}) => '${n}人がいいねしました';
	@override String renotedBySomeUsers({required Object n}) => '${n}人がリノートしました';
	@override String followedBySomeUsers({required Object n}) => '${n}人にフォローされました';
	@override String get flushNotification => '通知の履歴をリセットする';
	@override late final _StringsMisskeyNotificationTypesJaJp types_ = _StringsMisskeyNotificationTypesJaJp._(_root);
	@override late final _StringsMisskeyNotificationActionsJaJp actions_ = _StringsMisskeyNotificationActionsJaJp._(_root);
}

// Path: misskey.deck_
class _StringsMisskeyDeckJaJp extends _StringsMisskeyDeckEnUs {
	_StringsMisskeyDeckJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => '常にメインカラムを表示';
	@override String get columnAlign => 'カラムの寄せ';
	@override String get addColumn => 'カラムを追加';
	@override String get newNoteNotificationSettings => '新着ノート通知の設定';
	@override String get configureColumn => 'カラムの設定';
	@override String get swapLeft => '左に移動';
	@override String get swapRight => '右に移動';
	@override String get swapUp => '上に移動';
	@override String get swapDown => '下に移動';
	@override String get stackLeft => '左にスタック';
	@override String get popRight => '右に出す';
	@override String get profile => 'プロファイル';
	@override String get newProfile => '新規プロファイル';
	@override String get deleteProfile => 'プロファイルを削除';
	@override String get introduction => 'カラムを組み合わせて自分だけのインターフェイスを作りましょう！';
	@override String get introduction2 => '画面の右にある + を押して、いつでもカラムを追加できます。';
	@override String get widgetsIntroduction => 'カラムのメニューから、「ウィジェットの編集」を選択してウィジェットを追加してください';
	@override String get useSimpleUiForNonRootPages => '非ルートページは簡易UIで表示';
	@override String get usedAsMinWidthWhenFlexible => '「幅を自動調整」が有効の場合、これが幅の最小値となります';
	@override String get flexible => '幅を自動調整';
	@override late final _StringsMisskeyDeckColumnsJaJp columns_ = _StringsMisskeyDeckColumnsJaJp._(_root);
}

// Path: misskey.dialog_
class _StringsMisskeyDialogJaJp extends _StringsMisskeyDialogEnUs {
	_StringsMisskeyDialogJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => '最大文字数を超えています！ 現在 ${current} / 制限 ${max}';
	@override String charactersBelow({required Object current, required Object min}) => '最小文字数を下回っています！ 現在 ${current} / 制限 ${min}';
}

// Path: misskey.disabledTimeline_
class _StringsMisskeyDisabledTimelineJaJp extends _StringsMisskeyDisabledTimelineEnUs {
	_StringsMisskeyDisabledTimelineJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '無効化されたタイムライン';
	@override String get description => '現在のロールでは、このタイムラインを使用することはできません。';
}

// Path: misskey.drivecleaner_
class _StringsMisskeyDrivecleanerJaJp extends _StringsMisskeyDrivecleanerEnUs {
	_StringsMisskeyDrivecleanerJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'サイズが大きい順';
	@override String get orderByCreatedAtAsc => '追加日が古い順';
}

// Path: misskey.webhookSettings_
class _StringsMisskeyWebhookSettingsJaJp extends _StringsMisskeyWebhookSettingsEnUs {
	_StringsMisskeyWebhookSettingsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Webhookを作成';
	@override String get modifyWebhook => 'Webhookを編集';
	@override String get name => '名前';
	@override String get secret => 'シークレット';
	@override String get trigger => 'トリガー';
	@override String get active => '有効';
	@override late final _StringsMisskeyWebhookSettingsEventsJaJp events_ = _StringsMisskeyWebhookSettingsEventsJaJp._(_root);
	@override late final _StringsMisskeyWebhookSettingsSystemEventsJaJp systemEvents_ = _StringsMisskeyWebhookSettingsSystemEventsJaJp._(_root);
	@override String get deleteConfirm => 'Webhookを削除しますか？';
}

// Path: misskey.abuseReport_
class _StringsMisskeyAbuseReportJaJp extends _StringsMisskeyAbuseReportEnUs {
	_StringsMisskeyAbuseReportJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAbuseReportNotificationRecipientJaJp notificationRecipient_ = _StringsMisskeyAbuseReportNotificationRecipientJaJp._(_root);
}

// Path: misskey.moderationLogTypes_
class _StringsMisskeyModerationLogTypesJaJp extends _StringsMisskeyModerationLogTypesEnUs {
	_StringsMisskeyModerationLogTypesJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get createRole => 'ロールを作成';
	@override String get deleteRole => 'ロールを削除';
	@override String get updateRole => 'ロールを更新';
	@override String get assignRole => 'ロールへアサイン';
	@override String get unassignRole => 'ロールのアサイン解除';
	@override String get suspend => '凍結';
	@override String get unsuspend => '凍結解除';
	@override String get addCustomEmoji => 'カスタム絵文字追加';
	@override String get updateCustomEmoji => 'カスタム絵文字更新';
	@override String get deleteCustomEmoji => 'カスタム絵文字削除';
	@override String get updateServerSettings => 'サーバー設定更新';
	@override String get updateUserNote => 'ユーザーのモデレーションノート更新';
	@override String get deleteDriveFile => 'ファイルを削除';
	@override String get deleteNote => 'ノートを削除';
	@override String get createGlobalAnnouncement => '全体のお知らせを作成';
	@override String get createUserAnnouncement => 'ユーザーへお知らせを作成';
	@override String get updateGlobalAnnouncement => '全体のお知らせを更新';
	@override String get updateUserAnnouncement => 'ユーザーのお知らせを更新';
	@override String get deleteGlobalAnnouncement => '全体のお知らせを削除';
	@override String get deleteUserAnnouncement => 'ユーザーのお知らせを削除';
	@override String get resetPassword => 'パスワードをリセット';
	@override String get suspendRemoteInstance => 'リモートサーバーを停止';
	@override String get unsuspendRemoteInstance => 'リモートサーバーを再開';
	@override String get updateRemoteInstanceNote => 'リモートサーバーのモデレーションノート更新';
	@override String get markSensitiveDriveFile => 'ファイルをセンシティブ付与';
	@override String get unmarkSensitiveDriveFile => 'ファイルをセンシティブ解除';
	@override String get resolveAbuseReport => '通報を解決';
	@override String get createInvitation => '招待コードを作成';
	@override String get createAd => '広告を作成';
	@override String get deleteAd => '広告を削除';
	@override String get updateAd => '広告を更新';
	@override String get createAvatarDecoration => 'アイコンデコレーションを作成';
	@override String get updateAvatarDecoration => 'アイコンデコレーションを更新';
	@override String get deleteAvatarDecoration => 'アイコンデコレーションを削除';
	@override String get unsetUserAvatar => 'ユーザーのアイコンを解除';
	@override String get unsetUserBanner => 'ユーザーのバナーを解除';
	@override String get createSystemWebhook => 'SystemWebhookを作成';
	@override String get updateSystemWebhook => 'SystemWebhookを更新';
	@override String get deleteSystemWebhook => 'SystemWebhookを削除';
	@override String get createAbuseReportNotificationRecipient => '通報の通知先を作成';
	@override String get updateAbuseReportNotificationRecipient => '通報の通知先を更新';
	@override String get deleteAbuseReportNotificationRecipient => '通報の通知先を削除';
	@override String get deleteFlash => 'Playを削除';
}

// Path: misskey.fileViewer_
class _StringsMisskeyFileViewerJaJp extends _StringsMisskeyFileViewerEnUs {
	_StringsMisskeyFileViewerJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ファイルの詳細';
	@override String get type => 'ファイルタイプ';
	@override String get size => 'ファイルサイズ';
	@override String get url => 'URL';
	@override String get uploadedAt => '追加日';
	@override String get attachedNotes => '添付されているノート';
	@override String get thisPageCanBeSeenFromTheAuthor => 'このページは、このファイルをアップロードしたユーザーしか閲覧できません。';
}

// Path: misskey.externalResourceInstaller_
class _StringsMisskeyExternalResourceInstallerJaJp extends _StringsMisskeyExternalResourceInstallerEnUs {
	_StringsMisskeyExternalResourceInstallerJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '外部サイトからインストール';
	@override String get checkVendorBeforeInstall => '配布元が信頼できるかを確認した上でインストールしてください。';
	@override late final _StringsMisskeyExternalResourceInstallerPluginJaJp plugin_ = _StringsMisskeyExternalResourceInstallerPluginJaJp._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerThemeJaJp theme_ = _StringsMisskeyExternalResourceInstallerThemeJaJp._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerMetaJaJp meta_ = _StringsMisskeyExternalResourceInstallerMetaJaJp._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerVendorInfoJaJp vendorInfo_ = _StringsMisskeyExternalResourceInstallerVendorInfoJaJp._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsJaJp errors_ = _StringsMisskeyExternalResourceInstallerErrorsJaJp._(_root);
}

// Path: misskey.dataSaver_
class _StringsMisskeyDataSaverJaJp extends _StringsMisskeyDataSaverEnUs {
	_StringsMisskeyDataSaverJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyDataSaverMediaJaJp media_ = _StringsMisskeyDataSaverMediaJaJp._(_root);
	@override late final _StringsMisskeyDataSaverAvatarJaJp avatar_ = _StringsMisskeyDataSaverAvatarJaJp._(_root);
	@override late final _StringsMisskeyDataSaverUrlPreviewJaJp urlPreview_ = _StringsMisskeyDataSaverUrlPreviewJaJp._(_root);
	@override late final _StringsMisskeyDataSaverCodeJaJp code_ = _StringsMisskeyDataSaverCodeJaJp._(_root);
}

// Path: misskey.hemisphere_
class _StringsMisskeyHemisphereJaJp extends _StringsMisskeyHemisphereEnUs {
	_StringsMisskeyHemisphereJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get N => '北半球';
	@override String get S => '南半球';
	@override String get caption => '一部のクライアント設定で、季節を判定するために使用します。';
}

// Path: misskey.reversi_
class _StringsMisskeyReversiJaJp extends _StringsMisskeyReversiEnUs {
	_StringsMisskeyReversiJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get reversi => 'リバーシ';
	@override String get gameSettings => '対局の設定';
	@override String get chooseBoard => 'ボードを選択';
	@override String get blackOrWhite => '先行/後攻';
	@override String blackIs({required Object name}) => '${name}が黒(先行)';
	@override String get rules => 'ルール';
	@override String get thisGameIsStartedSoon => '対局はまもなく開始されます';
	@override String get waitingForOther => '相手の準備が完了するのを待っています';
	@override String get waitingForMe => 'あなたの準備が完了するのを待っています';
	@override String get waitingBoth => '準備してください';
	@override String get ready => '準備完了';
	@override String get cancelReady => '準備を再開';
	@override String get opponentTurn => '相手のターンです';
	@override String get myTurn => 'あなたのターンです';
	@override String turnOf({required Object name}) => '${name}のターンです';
	@override String pastTurnOf({required Object name}) => '${name}のターン';
	@override String get surrender => '投了';
	@override String get surrendered => '投了により';
	@override String get timeout => '時間切れ';
	@override String get drawn => '引き分け';
	@override String won({required Object name}) => '${name}の勝ち';
	@override String get black => '黒';
	@override String get white => '白';
	@override String get total => '合計';
	@override String turnCount({required Object count}) => '${count}ターン目';
	@override String get myGames => '自分の対局';
	@override String get allGames => 'みんなの対局';
	@override String get ended => '終了';
	@override String get playing => '対局中';
	@override String get isLlotheo => '石の少ない方が勝ち(ロセオ)';
	@override String get loopedMap => 'ループマップ';
	@override String get canPutEverywhere => 'どこでも置けるモード';
	@override String get timeLimitForEachTurn => '1ターンの時間制限';
	@override String get freeMatch => 'フリーマッチ';
	@override String get lookingForPlayer => '対戦相手を探しています';
	@override String get gameCanceled => '対局がキャンセルされました';
	@override String get shareToTlTheGameWhenStart => '開始時に対局をタイムラインに投稿';
	@override String get iStartedAGame => '対局を開始しました！ #MisskeyReversi';
	@override String get opponentHasSettingsChanged => '相手が設定を変更しました';
	@override String get allowIrregularRules => '変則許可 (完全フリー)';
	@override String get disallowIrregularRules => '変則なし';
	@override String get showBoardLabels => '盤面に行・列番号を表示';
	@override String get useAvatarAsStone => '石をアイコンにする';
}

// Path: misskey.offlineScreen_
class _StringsMisskeyOfflineScreenJaJp extends _StringsMisskeyOfflineScreenEnUs {
	_StringsMisskeyOfflineScreenJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'オフライン - サーバーに接続できません';
	@override String get header => 'サーバーに接続できません';
}

// Path: misskey.urlPreviewSetting_
class _StringsMisskeyUrlPreviewSettingJaJp extends _StringsMisskeyUrlPreviewSettingEnUs {
	_StringsMisskeyUrlPreviewSettingJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'URLプレビューの設定';
	@override String get enable => 'URLプレビューを有効にする';
	@override String get timeout => 'プレビュー取得時のタイムアウト(ms)';
	@override String get timeoutDescription => 'プレビュー取得の所要時間がこの値を超えた場合、プレビューは生成されません。';
	@override String get maximumContentLength => 'Content-Lengthの最大値(byte)';
	@override String get maximumContentLengthDescription => 'Content-Lengthがこの値を超えた場合、プレビューは生成されません。';
	@override String get requireContentLength => 'Content-Lengthが取得できた場合のみプレビューを生成';
	@override String get requireContentLengthDescription => '相手サーバがContent-Lengthを返さない場合、プレビューは生成されません。';
	@override String get userAgent => 'User-Agent';
	@override String get userAgentDescription => 'プレビュー取得時に使用されるUser-Agentを設定します。空欄の場合、デフォルトのUser-Agentが使用されます。';
	@override String get summaryProxy => 'プレビューを生成するプロキシのエンドポイント';
	@override String get summaryProxyDescription => 'Misskey本体ではなく、サマリープロキシを使用してプレビューを生成します。';
	@override String get summaryProxyDescription2 => 'プロキシには下記パラメータがクエリ文字列として連携されます。プロキシ側がこれらをサポートしない場合、設定値は無視されます。';
}

// Path: misskey.mediaControls_
class _StringsMisskeyMediaControlsJaJp extends _StringsMisskeyMediaControlsEnUs {
	_StringsMisskeyMediaControlsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get pip => 'ピクチャインピクチャ';
	@override String get playbackRate => '再生速度';
	@override String get loop => 'ループ再生';
}

// Path: misskey.contextMenu_
class _StringsMisskeyContextMenuJaJp extends _StringsMisskeyContextMenuEnUs {
	_StringsMisskeyContextMenuJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'コンテキストメニュー';
	@override String get app => 'アプリケーション';
	@override String get appWithShift => 'Shiftキーでアプリケーション';
	@override String get native => 'ブラウザのUI';
}

// Path: misskeyIO.skebStatus_
class _StringsMisskeyIOSkebStatusJaJp extends _StringsMisskeyIOSkebStatusEnUs {
	_StringsMisskeyIOSkebStatusJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyIOSkebStatusGenresJaJp genres_ = _StringsMisskeyIOSkebStatusGenresJaJp._(_root);
	@override String get seeking => '募集中';
	@override String get stopped => '停止中';
	@override String get client => 'クライアント';
	@override String yenX({required Object x}) => '${x}円';
	@override String nWorks({required Object n}) => '納品実績 ${n}件';
	@override String nRequests({required Object n}) => '取引実績 ${n}件';
}

// Path: misskey.delivery_.type_
class _StringsMisskeyDeliveryTypeJaJp extends _StringsMisskeyDeliveryTypeEnUs {
	_StringsMisskeyDeliveryTypeJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get none => '配信中';
	@override String get manuallySuspended => '手動停止中';
	@override String get goneSuspended => 'サーバー削除のため停止中';
	@override String get autoSuspendedForNotResponding => 'サーバー応答なしのため停止中';
}

// Path: misskey.bubbleGame_.score_
class _StringsMisskeyBubbleGameScoreJaJp extends _StringsMisskeyBubbleGameScoreEnUs {
	_StringsMisskeyBubbleGameScoreJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get score => 'スコア';
	@override String get scoreYen => '稼いだ金額';
	@override String get highScore => 'ハイスコア';
	@override String get maxChain => '最大チェーン数';
	@override String yen({required Object yen}) => '${yen}円';
	@override String estimatedQty({required Object qty}) => '${qty}個分';
	@override String scoreSweets({required Object onigiriQtyWithUnit}) => 'おにぎり ${onigiriQtyWithUnit}';
}

// Path: misskey.bubbleGame_.howToPlay_
class _StringsMisskeyBubbleGameHowToPlayJaJp extends _StringsMisskeyBubbleGameHowToPlayEnUs {
	_StringsMisskeyBubbleGameHowToPlayJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get section1 => '位置を調整してハコにモノを落とします。';
	@override String get section2 => '同じ種類のモノがくっつくと別のモノに変化して、スコアが得られます。';
	@override String get section3 => 'モノがハコからあふれるとゲームオーバーです。ハコからあふれないようにしつつモノを融合させてハイスコアを目指そう！';
}

// Path: misskey.initialTutorial_.landing_
class _StringsMisskeyInitialTutorialLandingJaJp extends _StringsMisskeyInitialTutorialLandingEnUs {
	_StringsMisskeyInitialTutorialLandingJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'チュートリアルへようこそ';
	@override String get description => 'ここでは、Misskeyの基本的な使い方や機能を確認できます。';
}

// Path: misskey.initialTutorial_.note_
class _StringsMisskeyInitialTutorialNoteJaJp extends _StringsMisskeyInitialTutorialNoteEnUs {
	_StringsMisskeyInitialTutorialNoteJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートって何？';
	@override String get description => 'Misskeyでの投稿は「ノート」と呼びます。ノートはタイムラインに時系列で並んでいて、リアルタイムで更新されていきます。';
	@override String get reply => '返信することができます。返信に対しての返信も可能で、スレッドのように会話を続けることもできます。';
	@override String get renote => 'そのノートを自分のタイムラインに流して共有することができます。テキストを追加して引用することも可能です。';
	@override String get reaction => 'リアクションをつけることができます。詳しくは次のページで解説します。';
	@override String get menu => 'ノートの詳細を表示したり、リンクをコピーしたりなどの様々な操作が行えます。';
}

// Path: misskey.initialTutorial_.reaction_
class _StringsMisskeyInitialTutorialReactionJaJp extends _StringsMisskeyInitialTutorialReactionEnUs {
	_StringsMisskeyInitialTutorialReactionJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'リアクションって何？';
	@override String get description => 'ノートには「リアクション」をつけることができます。「いいね」では伝わらないニュアンスも、リアクションで簡単・気軽に表現できます。';
	@override String get letsTryReacting => 'リアクションは、ノートの「＋」ボタンをクリックするとつけられます。試しにこのサンプルのノートにリアクションをつけてみてください！';
	@override String get reactToContinue => 'リアクションをつけると先に進めるようになります。';
	@override String get reactNotification => 'あなたのノートが誰かにリアクションされると、リアルタイムで通知を受け取ります。';
	@override String get reactDone => '「ー」ボタンを押すとリアクションを取り消すことができます。';
}

// Path: misskey.initialTutorial_.timeline_
class _StringsMisskeyInitialTutorialTimelineJaJp extends _StringsMisskeyInitialTutorialTimelineEnUs {
	_StringsMisskeyInitialTutorialTimelineJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'タイムラインのしくみ';
	@override String get description1 => 'Misskeyには、使い方に応じて複数のタイムラインが用意されています（サーバーによってはいずれかが無効になっていることがあります）。';
	@override String get home => 'あなたがフォローしているアカウントの投稿を見られます。';
	@override String get local => 'このサーバーにいるユーザー全員の投稿を見られます。';
	@override String get social => 'ホームタイムラインとローカルタイムラインの投稿が両方表示されます。';
	@override String get global => '接続している他のすべてのサーバーからの投稿を見られます。';
	@override String get description2 => 'それぞれのタイムラインは、画面上部でいつでも切り替えられます。';
	@override String description3({required Object link}) => 'その他にも、リストタイムラインやチャンネルタイムラインなどがあります。詳しくは${link}をご覧ください。';
}

// Path: misskey.initialTutorial_.postNote_
class _StringsMisskeyInitialTutorialPostNoteJaJp extends _StringsMisskeyInitialTutorialPostNoteEnUs {
	_StringsMisskeyInitialTutorialPostNoteJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの投稿設定';
	@override String get description1 => 'Misskeyにノートを投稿する際には、様々なオプションの設定が可能です。投稿フォームはこのようになっています。';
	@override late final _StringsMisskeyInitialTutorialPostNoteVisibilityJaJp visibility_ = _StringsMisskeyInitialTutorialPostNoteVisibilityJaJp._(_root);
	@override late final _StringsMisskeyInitialTutorialPostNoteCwJaJp cw_ = _StringsMisskeyInitialTutorialPostNoteCwJaJp._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveJaJp extends _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '添付ファイルをセンシティブにするには？';
	@override String get description => 'サーバーのガイドラインにより必要とされる際や、そのまま見れる状態にしておくべきではない添付ファイルには、「センシティブ」設定を付けます。';
	@override String get tryThisFile => '試しに、このフォームに添付された画像をセンシティブにしてみてください！';
	@override late final _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteJaJp exampleNote_ = _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteJaJp._(_root);
	@override String get method => '添付ファイルをセンシティブにする際は、そのファイルをクリックしてメニューを開き、「センシティブとして設定」をクリックします。';
	@override String get sensitiveSucceeded => 'ファイルを添付する際は、サーバーのガイドラインに従ってセンシティブを適切に設定してください。';
	@override String get doItToContinue => '画像をセンシティブに設定すると先に進めるようになります。';
}

// Path: misskey.initialTutorial_.done_
class _StringsMisskeyInitialTutorialDoneJaJp extends _StringsMisskeyInitialTutorialDoneEnUs {
	_StringsMisskeyInitialTutorialDoneJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'チュートリアルは終了です🎉';
	@override String description({required Object link}) => 'ここで紹介した機能はほんの一部にすぎません。Misskeyの使い方をより詳しく知るには、${link}をご覧ください。';
}

// Path: misskey.achievements_.types_
class _StringsMisskeyAchievementsTypesJaJp extends _StringsMisskeyAchievementsTypesEnUs {
	_StringsMisskeyAchievementsTypesJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyAchievementsTypesNotes1JaJp notes1_ = _StringsMisskeyAchievementsTypesNotes1JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10JaJp notes10_ = _StringsMisskeyAchievementsTypesNotes10JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100JaJp notes100_ = _StringsMisskeyAchievementsTypesNotes100JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes500JaJp notes500_ = _StringsMisskeyAchievementsTypesNotes500JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes1000JaJp notes1000_ = _StringsMisskeyAchievementsTypesNotes1000JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes5000JaJp notes5000_ = _StringsMisskeyAchievementsTypesNotes5000JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes10000JaJp notes10000_ = _StringsMisskeyAchievementsTypesNotes10000JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes20000JaJp notes20000_ = _StringsMisskeyAchievementsTypesNotes20000JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes30000JaJp notes30000_ = _StringsMisskeyAchievementsTypesNotes30000JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes40000JaJp notes40000_ = _StringsMisskeyAchievementsTypesNotes40000JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes50000JaJp notes50000_ = _StringsMisskeyAchievementsTypesNotes50000JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes60000JaJp notes60000_ = _StringsMisskeyAchievementsTypesNotes60000JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes70000JaJp notes70000_ = _StringsMisskeyAchievementsTypesNotes70000JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes80000JaJp notes80000_ = _StringsMisskeyAchievementsTypesNotes80000JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes90000JaJp notes90000_ = _StringsMisskeyAchievementsTypesNotes90000JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesNotes100000JaJp notes100000_ = _StringsMisskeyAchievementsTypesNotes100000JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin3JaJp login3_ = _StringsMisskeyAchievementsTypesLogin3JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin7JaJp login7_ = _StringsMisskeyAchievementsTypesLogin7JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin15JaJp login15_ = _StringsMisskeyAchievementsTypesLogin15JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin30JaJp login30_ = _StringsMisskeyAchievementsTypesLogin30JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin60JaJp login60_ = _StringsMisskeyAchievementsTypesLogin60JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin100JaJp login100_ = _StringsMisskeyAchievementsTypesLogin100JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin200JaJp login200_ = _StringsMisskeyAchievementsTypesLogin200JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin300JaJp login300_ = _StringsMisskeyAchievementsTypesLogin300JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin400JaJp login400_ = _StringsMisskeyAchievementsTypesLogin400JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin500JaJp login500_ = _StringsMisskeyAchievementsTypesLogin500JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin600JaJp login600_ = _StringsMisskeyAchievementsTypesLogin600JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin700JaJp login700_ = _StringsMisskeyAchievementsTypesLogin700JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin800JaJp login800_ = _StringsMisskeyAchievementsTypesLogin800JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin900JaJp login900_ = _StringsMisskeyAchievementsTypesLogin900JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesLogin1000JaJp login1000_ = _StringsMisskeyAchievementsTypesLogin1000JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteClipped1JaJp noteClipped1_ = _StringsMisskeyAchievementsTypesNoteClipped1JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteFavorited1JaJp noteFavorited1_ = _StringsMisskeyAchievementsTypesNoteFavorited1JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesMyNoteFavorited1JaJp myNoteFavorited1_ = _StringsMisskeyAchievementsTypesMyNoteFavorited1JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesProfileFilledJaJp profileFilled_ = _StringsMisskeyAchievementsTypesProfileFilledJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesMarkedAsCatJaJp markedAsCat_ = _StringsMisskeyAchievementsTypesMarkedAsCatJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing1JaJp following1_ = _StringsMisskeyAchievementsTypesFollowing1JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing10JaJp following10_ = _StringsMisskeyAchievementsTypesFollowing10JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing50JaJp following50_ = _StringsMisskeyAchievementsTypesFollowing50JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing100JaJp following100_ = _StringsMisskeyAchievementsTypesFollowing100JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowing300JaJp following300_ = _StringsMisskeyAchievementsTypesFollowing300JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers1JaJp followers1_ = _StringsMisskeyAchievementsTypesFollowers1JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers10JaJp followers10_ = _StringsMisskeyAchievementsTypesFollowers10JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers50JaJp followers50_ = _StringsMisskeyAchievementsTypesFollowers50JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers100JaJp followers100_ = _StringsMisskeyAchievementsTypesFollowers100JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers300JaJp followers300_ = _StringsMisskeyAchievementsTypesFollowers300JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers500JaJp followers500_ = _StringsMisskeyAchievementsTypesFollowers500JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesFollowers1000JaJp followers1000_ = _StringsMisskeyAchievementsTypesFollowers1000JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesCollectAchievements30JaJp collectAchievements30_ = _StringsMisskeyAchievementsTypesCollectAchievements30JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesViewAchievements3minJaJp viewAchievements3min_ = _StringsMisskeyAchievementsTypesViewAchievements3minJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesILoveMisskeyJaJp iLoveMisskey_ = _StringsMisskeyAchievementsTypesILoveMisskeyJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesFoundTreasureJaJp foundTreasure_ = _StringsMisskeyAchievementsTypesFoundTreasureJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesClient30minJaJp client30min_ = _StringsMisskeyAchievementsTypesClient30minJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesClient60minJaJp client60min_ = _StringsMisskeyAchievementsTypesClient60minJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesNoteDeletedWithin1minJaJp noteDeletedWithin1min_ = _StringsMisskeyAchievementsTypesNoteDeletedWithin1minJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesPostedAtLateNightJaJp postedAtLateNight_ = _StringsMisskeyAchievementsTypesPostedAtLateNightJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesPostedAt0min0secJaJp postedAt0min0sec_ = _StringsMisskeyAchievementsTypesPostedAt0min0secJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesSelfQuoteJaJp selfQuote_ = _StringsMisskeyAchievementsTypesSelfQuoteJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesHtl20npmJaJp htl20npm_ = _StringsMisskeyAchievementsTypesHtl20npmJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesViewInstanceChartJaJp viewInstanceChart_ = _StringsMisskeyAchievementsTypesViewInstanceChartJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadJaJp outputHelloWorldOnScratchpad_ = _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesOpen3windowsJaJp open3windows_ = _StringsMisskeyAchievementsTypesOpen3windowsJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceJaJp driveFolderCircularReference_ = _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesReactWithoutReadJaJp reactWithoutRead_ = _StringsMisskeyAchievementsTypesReactWithoutReadJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesClickedClickHereJaJp clickedClickHere_ = _StringsMisskeyAchievementsTypesClickedClickHereJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesJustPlainLuckyJaJp justPlainLucky_ = _StringsMisskeyAchievementsTypesJustPlainLuckyJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesSetNameToSyuiloJaJp setNameToSyuilo_ = _StringsMisskeyAchievementsTypesSetNameToSyuiloJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1JaJp passedSinceAccountCreated1_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2JaJp passedSinceAccountCreated2_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3JaJp passedSinceAccountCreated3_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3JaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesLoggedInOnBirthdayJaJp loggedInOnBirthday_ = _StringsMisskeyAchievementsTypesLoggedInOnBirthdayJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayJaJp loggedInOnNewYearsDay_ = _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesCookieClickedJaJp cookieClicked_ = _StringsMisskeyAchievementsTypesCookieClickedJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesBrainDiverJaJp brainDiver_ = _StringsMisskeyAchievementsTypesBrainDiverJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesSmashTestNotificationButtonJaJp smashTestNotificationButton_ = _StringsMisskeyAchievementsTypesSmashTestNotificationButtonJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesTutorialCompletedJaJp tutorialCompleted_ = _StringsMisskeyAchievementsTypesTutorialCompletedJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadJaJp bubbleGameExplodingHead_ = _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadJaJp._(_root);
	@override late final _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadJaJp bubbleGameDoubleExplodingHead_ = _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadJaJp._(_root);
}

// Path: misskey.role_.priority_
class _StringsMisskeyRolePriorityJaJp extends _StringsMisskeyRolePriorityEnUs {
	_StringsMisskeyRolePriorityJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get low => '低';
	@override String get middle => '中';
	@override String get high => '高';
}

// Path: misskey.role_.options_
class _StringsMisskeyRoleOptionsJaJp extends _StringsMisskeyRoleOptionsEnUs {
	_StringsMisskeyRoleOptionsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'グローバルタイムラインの閲覧';
	@override String get ltlAvailable => 'ローカルタイムラインの閲覧';
	@override String get canPublicNote => 'パブリック投稿の許可';
	@override String get mentionMax => 'ノート内の最大メンション数';
	@override String get canInvite => 'サーバー招待コードの発行';
	@override String get inviteLimit => '招待コードの作成可能数';
	@override String get inviteLimitCycle => '招待コードの発行間隔';
	@override String get inviteExpirationTime => '招待コードの有効期限';
	@override String get canManageCustomEmojis => 'カスタム絵文字の管理';
	@override String get canManageAvatarDecorations => 'アバターデコレーションの管理';
	@override String get driveCapacity => 'ドライブ容量';
	@override String get alwaysMarkNsfw => 'ファイルにNSFWを常に付与';
	@override String get canUpdateBioMedia => 'アイコンとバナーの更新を許可';
	@override String get pinMax => 'ノートのピン留めの最大数';
	@override String get antennaMax => 'アンテナの作成可能数';
	@override String get wordMuteMax => 'ワードミュートの最大文字数';
	@override String get webhookMax => 'Webhookの作成可能数';
	@override String get clipMax => 'クリップの作成可能数';
	@override String get noteEachClipsMax => 'クリップ内のノートの最大数';
	@override String get userListMax => 'ユーザーリストの作成可能数';
	@override String get userEachUserListsMax => 'ユーザーリスト内のユーザーの最大数';
	@override String get rateLimitFactor => 'レートリミット';
	@override String get descriptionOfRateLimitFactor => '小さいほど制限が緩和され、大きいほど制限が強化されます。';
	@override String get canHideAds => '広告の非表示';
	@override String get canSearchNotes => 'ノート検索の利用';
	@override String get canUseTranslator => '翻訳機能の利用';
	@override String get avatarDecorationLimit => 'アイコンデコレーションの最大取付個数';
}

// Path: misskey.role_.condition_
class _StringsMisskeyRoleConditionJaJp extends _StringsMisskeyRoleConditionEnUs {
	_StringsMisskeyRoleConditionJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get roleAssignedTo => 'マニュアルロールにアサイン済み';
	@override String get isLocal => 'ローカルユーザー';
	@override String get isRemote => 'リモートユーザー';
	@override String get isCat => '猫ユーザー';
	@override String get isBot => 'botユーザー';
	@override String get isSuspended => 'サスペンド済みユーザー';
	@override String get isLocked => '鍵アカウントユーザー';
	@override String get isExplorable => '「アカウントを見つけやすくする」が有効なユーザー';
	@override String get createdLessThan => 'アカウント作成から～以内';
	@override String get createdMoreThan => 'アカウント作成から～経過';
	@override String get followersLessThanOrEq => 'フォロワー数が～以下';
	@override String get followersMoreThanOrEq => 'フォロワー数が～以上';
	@override String get followingLessThanOrEq => 'フォロー数が～以下';
	@override String get followingMoreThanOrEq => 'フォロー数が～以上';
	@override String get notesLessThanOrEq => '投稿数が～以下';
	@override String get notesMoreThanOrEq => '投稿数が～以上';
	@override String get and => '～かつ～';
	@override String get or => '～または～';
	@override String get not => '～ではない';
}

// Path: misskey.email_.follow_
class _StringsMisskeyEmailFollowJaJp extends _StringsMisskeyEmailFollowEnUs {
	_StringsMisskeyEmailFollowJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'フォローされました';
}

// Path: misskey.email_.receiveFollowRequest_
class _StringsMisskeyEmailReceiveFollowRequestJaJp extends _StringsMisskeyEmailReceiveFollowRequestEnUs {
	_StringsMisskeyEmailReceiveFollowRequestJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'フォローリクエストを受け取りました';
}

// Path: misskey.theme_.keys
class _StringsMisskeyThemeKeysJaJp extends _StringsMisskeyThemeKeysEnUs {
	_StringsMisskeyThemeKeysJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get accent => 'アクセント';
	@override String get bg => '背景';
	@override String get fg => '文字';
	@override String get focus => 'フォーカス';
	@override String get indicator => 'インジケーター';
	@override String get panel => 'パネル';
	@override String get shadow => '影';
	@override String get header => 'ヘッダー';
	@override String get navBg => 'サイドバーの背景';
	@override String get navFg => 'サイドバーの文字';
	@override String get navHoverFg => 'サイドバー文字(ホバー)';
	@override String get navActive => 'サイドバー文字(アクティブ)';
	@override String get navIndicator => 'サイドバーのインジケーター';
	@override String get link => 'リンク';
	@override String get hashtag => 'ハッシュタグ';
	@override String get mention => 'メンション';
	@override String get mentionMe => 'あなた宛てメンション';
	@override String get renote => 'Renote';
	@override String get modalBg => 'モーダルの背景';
	@override String get divider => '分割線';
	@override String get scrollbarHandle => 'スクロールバーの取っ手';
	@override String get scrollbarHandleHover => 'スクロールバーの取っ手（ホバー)';
	@override String get dateLabelFg => '日付ラベルの文字';
	@override String get infoBg => '情報の背景';
	@override String get infoFg => '情報の文字';
	@override String get infoWarnBg => '警告の背景';
	@override String get infoWarnFg => '警告の文字';
	@override String get toastBg => '通知トーストの背景';
	@override String get toastFg => '通知トーストの文字';
	@override String get buttonBg => 'ボタンの背景';
	@override String get buttonHoverBg => 'ボタンの背景 (ホバー)';
	@override String get inputBorder => '入力ボックスの縁取り';
	@override String get listItemHoverBg => 'リスト項目の背景 (ホバー)';
	@override String get driveFolderBg => 'ドライブフォルダーの背景';
	@override String get wallpaperOverlay => '壁紙のオーバーレイ';
	@override String get badge => 'バッジ';
	@override String get messageBg => 'チャットの背景';
	@override String get accentDarken => 'アクセント (暗め)';
	@override String get accentLighten => 'アクセント (明るめ)';
	@override String get fgHighlighted => '強調された文字';
}

// Path: misskey.widgets_.userList_
class _StringsMisskeyWidgetsUserListJaJp extends _StringsMisskeyWidgetsUserListEnUs {
	_StringsMisskeyWidgetsUserListJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'リストを選択';
}

// Path: misskey.postForm_.placeholders_
class _StringsMisskeyPostFormPlaceholdersJaJp extends _StringsMisskeyPostFormPlaceholdersEnUs {
	_StringsMisskeyPostFormPlaceholdersJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get a => 'いまどうしてる？';
	@override String get b => '何かありましたか？';
	@override String get c => '何をお考えですか？';
	@override String get d => '言いたいことは？';
	@override String get e => 'ここに書いてください';
	@override String get f => 'あなたが書くのを待っています...';
}

// Path: misskey.pages_.blocks
class _StringsMisskeyPagesBlocksJaJp extends _StringsMisskeyPagesBlocksEnUs {
	_StringsMisskeyPagesBlocksJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get text => 'テキスト';
	@override String get textarea => 'テキストエリア';
	@override String get section => 'セクション';
	@override String get image => '画像';
	@override String get button => 'ボタン';
	@override String get dynamic => '動的ブロック';
	@override String dynamicDescription({required Object play}) => 'このブロックは廃止されています。今後は${play}を利用してください。';
	@override String get note => 'ノート埋め込み';
	@override late final _StringsMisskeyPagesBlocksNoteJaJp note_ = _StringsMisskeyPagesBlocksNoteJaJp._(_root);
}

// Path: misskey.notification_.types_
class _StringsMisskeyNotificationTypesJaJp extends _StringsMisskeyNotificationTypesEnUs {
	_StringsMisskeyNotificationTypesJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get all => 'すべて';
	@override String get note => 'ユーザーの新規投稿';
	@override String get follow => 'フォロー';
	@override String get mention => 'メンション';
	@override String get reply => 'リプライ';
	@override String get renote => 'Renote';
	@override String get quote => '引用';
	@override String get reaction => 'リアクション';
	@override String get pollEnded => 'アンケートが終了';
	@override String get receiveFollowRequest => 'フォロー申請を受け取った';
	@override String get followRequestAccepted => 'フォローが受理された';
	@override String get roleAssigned => 'ロールが付与された';
	@override String get achievementEarned => '実績の獲得';
	@override String get app => '連携アプリからの通知';
}

// Path: misskey.notification_.actions_
class _StringsMisskeyNotificationActionsJaJp extends _StringsMisskeyNotificationActionsEnUs {
	_StringsMisskeyNotificationActionsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'フォローバック';
	@override String get reply => '返信';
	@override String get renote => 'Renote';
}

// Path: misskey.deck_.columns_
class _StringsMisskeyDeckColumnsJaJp extends _StringsMisskeyDeckColumnsEnUs {
	_StringsMisskeyDeckColumnsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get main => 'メイン';
	@override String get widgets => 'ウィジェット';
	@override String get notifications => '通知';
	@override String get tl => 'タイムライン';
	@override String get antenna => 'アンテナ';
	@override String get list => 'リスト';
	@override String get channel => 'チャンネル';
	@override String get mentions => 'あなた宛て';
	@override String get direct => 'ダイレクト';
	@override String get roleTimeline => 'ロールタイムライン';
}

// Path: misskey.webhookSettings_.events_
class _StringsMisskeyWebhookSettingsEventsJaJp extends _StringsMisskeyWebhookSettingsEventsEnUs {
	_StringsMisskeyWebhookSettingsEventsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get follow => 'フォローしたとき';
	@override String get followed => 'フォローされたとき';
	@override String get note => 'ノートを投稿したとき';
	@override String get reply => '返信されたとき';
	@override String get renote => 'Renoteされたとき';
	@override String get reaction => 'リアクションがあったとき';
	@override String get mention => 'メンションされたとき';
}

// Path: misskey.webhookSettings_.systemEvents_
class _StringsMisskeyWebhookSettingsSystemEventsJaJp extends _StringsMisskeyWebhookSettingsSystemEventsEnUs {
	_StringsMisskeyWebhookSettingsSystemEventsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get abuseReport => 'ユーザーから通報があったとき';
	@override String get abuseReportResolved => 'ユーザーからの通報を処理したとき';
	@override String get userCreated => 'ユーザーが作成されたとき';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _StringsMisskeyAbuseReportNotificationRecipientJaJp extends _StringsMisskeyAbuseReportNotificationRecipientEnUs {
	_StringsMisskeyAbuseReportNotificationRecipientJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get createRecipient => '通報の通知先を追加';
	@override String get modifyRecipient => '通報の通知先を編集';
	@override String get recipientType => '通知先の種類';
	@override late final _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeJaJp recipientType_ = _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeJaJp._(_root);
	@override String get keywords => 'キーワード';
	@override String get notifiedUser => '通知先ユーザー';
	@override String get notifiedWebhook => '使用するWebhook';
	@override String get deleteConfirm => '通知先を削除しますか？';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _StringsMisskeyExternalResourceInstallerPluginJaJp extends _StringsMisskeyExternalResourceInstallerPluginEnUs {
	_StringsMisskeyExternalResourceInstallerPluginJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'このプラグインをインストールしますか？';
	@override String get metaTitle => 'プラグイン情報';
}

// Path: misskey.externalResourceInstaller_.theme_
class _StringsMisskeyExternalResourceInstallerThemeJaJp extends _StringsMisskeyExternalResourceInstallerThemeEnUs {
	_StringsMisskeyExternalResourceInstallerThemeJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'このテーマをインストールしますか？';
	@override String get metaTitle => 'テーマ情報';
}

// Path: misskey.externalResourceInstaller_.meta_
class _StringsMisskeyExternalResourceInstallerMetaJaJp extends _StringsMisskeyExternalResourceInstallerMetaEnUs {
	_StringsMisskeyExternalResourceInstallerMetaJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get base => '基本のカラースキーム';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _StringsMisskeyExternalResourceInstallerVendorInfoJaJp extends _StringsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_StringsMisskeyExternalResourceInstallerVendorInfoJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '配布元情報';
	@override String get endpoint => '参照したエンドポイント';
	@override String get hashVerify => 'ファイル整合性の確認';
}

// Path: misskey.externalResourceInstaller_.errors_
class _StringsMisskeyExternalResourceInstallerErrorsJaJp extends _StringsMisskeyExternalResourceInstallerErrorsEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsJaJp invalidParams_ = _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsJaJp._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedJaJp resourceTypeNotSupported_ = _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedJaJp._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchJaJp failedToFetch_ = _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchJaJp._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedJaJp hashUnmatched_ = _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedJaJp._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedJaJp pluginParseFailed_ = _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedJaJp._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedJaJp pluginInstallFailed_ = _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedJaJp._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedJaJp themeParseFailed_ = _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedJaJp._(_root);
	@override late final _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedJaJp themeInstallFailed_ = _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedJaJp._(_root);
}

// Path: misskey.dataSaver_.media_
class _StringsMisskeyDataSaverMediaJaJp extends _StringsMisskeyDataSaverMediaEnUs {
	_StringsMisskeyDataSaverMediaJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'メディアの読み込みを無効化';
	@override String get description => '画像・動画が自動で読み込まれるのを防止します。隠れている画像・動画はタップすると読み込まれます。';
}

// Path: misskey.dataSaver_.avatar_
class _StringsMisskeyDataSaverAvatarJaJp extends _StringsMisskeyDataSaverAvatarEnUs {
	_StringsMisskeyDataSaverAvatarJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'アイコン画像のアニメーションを無効化';
	@override String get description => 'アイコン画像のアニメーションが停止します。アニメーション画像は通常の画像よりファイルサイズが大きいことがあるので、データ通信量をさらに削減できます。';
}

// Path: misskey.dataSaver_.urlPreview_
class _StringsMisskeyDataSaverUrlPreviewJaJp extends _StringsMisskeyDataSaverUrlPreviewEnUs {
	_StringsMisskeyDataSaverUrlPreviewJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'URLプレビューのサムネイルを非表示';
	@override String get description => 'URLプレビューのサムネイル画像が読み込まれなくなります。';
}

// Path: misskey.dataSaver_.code_
class _StringsMisskeyDataSaverCodeJaJp extends _StringsMisskeyDataSaverCodeEnUs {
	_StringsMisskeyDataSaverCodeJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'コードハイライトを非表示';
	@override String get description => 'MFMなどでコードハイライト記法が使われている場合、タップするまで読み込まれなくなります。コードハイライトではハイライトする言語ごとにその定義ファイルを読み込む必要がありますが、それらが自動で読み込まれなくなるため、通信量の削減が見込めます。';
}

// Path: misskeyIO.skebStatus_.genres_
class _StringsMisskeyIOSkebStatusGenresJaJp extends _StringsMisskeyIOSkebStatusGenresEnUs {
	_StringsMisskeyIOSkebStatusGenresJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get art => 'イラスト';
	@override String get comic => 'コミック';
	@override String get voice => 'ボイス';
	@override String get novel => 'テキスト';
	@override String get video => 'ムービー';
	@override String get music => 'ミュージック';
	@override String get correction => 'アドバイス';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _StringsMisskeyInitialTutorialPostNoteVisibilityJaJp extends _StringsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_StringsMisskeyInitialTutorialPostNoteVisibilityJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get description => 'ノートを表示できる相手を制限できます。';
	@override String get public => 'すべてのユーザーに公開。';
	@override String get home => 'ホームタイムラインのみに公開。フォロワー・プロフィールを見に来た人・リノートから、他のユーザーも見ることができます。';
	@override String get followers => 'フォロワーにのみ公開。本人以外がリノートすることはできず、またフォロワー以外は閲覧できません。';
	@override String get direct => '指定したユーザーにのみ公開され、また相手に通知が入ります。ダイレクトメッセージのかわりにお使いいただけます。';
	@override String get doNotSendConfidencialOnDirect1 => '機密情報は送信する際は注意してください。';
	@override String get doNotSendConfidencialOnDirect2 => '送信先のサーバーの管理者は投稿内容を見ることが可能なので、信頼できないサーバーのユーザーにダイレクト投稿を送信する場合は、機密情報の扱いに注意が必要です。';
	@override String get localOnly => '他のサーバーに投稿を連合しません。上記の公開範囲に関わらず、他のサーバーのユーザーは、この設定がついたノートを直接閲覧することができなくなります。';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _StringsMisskeyInitialTutorialPostNoteCwJaJp extends _StringsMisskeyInitialTutorialPostNoteCwEnUs {
	_StringsMisskeyInitialTutorialPostNoteCwJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '内容を隠す（CW）';
	@override String get description => '本文のかわりに「注釈」に書いた内容が表示されます。「もっと見る」を押すと本文が表示されます。';
	@override late final _StringsMisskeyInitialTutorialPostNoteCwExampleNoteJaJp exampleNote_ = _StringsMisskeyInitialTutorialPostNoteCwExampleNoteJaJp._(_root);
	@override String get useCases => 'サーバーのガイドラインにより必要とされるノートに指定したり、ネタバレ投稿やセンシティブな文章を自主規制したりするときに使います。';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteJaJp extends _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get note => '納豆のフタ開けるのミスったわね…';
}

// Path: misskey.achievements_.types_.notes1_
class _StringsMisskeyAchievementsTypesNotes1JaJp extends _StringsMisskeyAchievementsTypesNotes1EnUs {
	_StringsMisskeyAchievementsTypesNotes1JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'just setting up my msky';
	@override String get description => '初めてノートを投稿した';
	@override String get flavor => '良いMisskeyライフを！';
}

// Path: misskey.achievements_.types_.notes10_
class _StringsMisskeyAchievementsTypesNotes10JaJp extends _StringsMisskeyAchievementsTypesNotes10EnUs {
	_StringsMisskeyAchievementsTypesNotes10JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'いくつかのノート';
	@override String get description => 'ノートを10回投稿した';
}

// Path: misskey.achievements_.types_.notes100_
class _StringsMisskeyAchievementsTypesNotes100JaJp extends _StringsMisskeyAchievementsTypesNotes100EnUs {
	_StringsMisskeyAchievementsTypesNotes100JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'たくさんのノート';
	@override String get description => 'ノートを100回投稿した';
}

// Path: misskey.achievements_.types_.notes500_
class _StringsMisskeyAchievementsTypesNotes500JaJp extends _StringsMisskeyAchievementsTypesNotes500EnUs {
	_StringsMisskeyAchievementsTypesNotes500JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートまみれ';
	@override String get description => 'ノートを500回投稿した';
}

// Path: misskey.achievements_.types_.notes1000_
class _StringsMisskeyAchievementsTypesNotes1000JaJp extends _StringsMisskeyAchievementsTypesNotes1000EnUs {
	_StringsMisskeyAchievementsTypesNotes1000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの山';
	@override String get description => 'ノートを1,000回投稿した';
}

// Path: misskey.achievements_.types_.notes5000_
class _StringsMisskeyAchievementsTypesNotes5000JaJp extends _StringsMisskeyAchievementsTypesNotes5000EnUs {
	_StringsMisskeyAchievementsTypesNotes5000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '湧き出るノート';
	@override String get description => 'ノートを5,000回投稿した';
}

// Path: misskey.achievements_.types_.notes10000_
class _StringsMisskeyAchievementsTypesNotes10000JaJp extends _StringsMisskeyAchievementsTypesNotes10000EnUs {
	_StringsMisskeyAchievementsTypesNotes10000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'スーパーノート';
	@override String get description => 'ノートを10,000回投稿した';
}

// Path: misskey.achievements_.types_.notes20000_
class _StringsMisskeyAchievementsTypesNotes20000JaJp extends _StringsMisskeyAchievementsTypesNotes20000EnUs {
	_StringsMisskeyAchievementsTypesNotes20000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ニードモアノート';
	@override String get description => 'ノートを20,000回投稿した';
}

// Path: misskey.achievements_.types_.notes30000_
class _StringsMisskeyAchievementsTypesNotes30000JaJp extends _StringsMisskeyAchievementsTypesNotes30000EnUs {
	_StringsMisskeyAchievementsTypesNotes30000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートノートノート';
	@override String get description => 'ノートを30,000回投稿した';
}

// Path: misskey.achievements_.types_.notes40000_
class _StringsMisskeyAchievementsTypesNotes40000JaJp extends _StringsMisskeyAchievementsTypesNotes40000EnUs {
	_StringsMisskeyAchievementsTypesNotes40000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノート工場';
	@override String get description => 'ノートを40,000回投稿した';
}

// Path: misskey.achievements_.types_.notes50000_
class _StringsMisskeyAchievementsTypesNotes50000JaJp extends _StringsMisskeyAchievementsTypesNotes50000EnUs {
	_StringsMisskeyAchievementsTypesNotes50000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの惑星';
	@override String get description => 'ノートを50,000回投稿した';
}

// Path: misskey.achievements_.types_.notes60000_
class _StringsMisskeyAchievementsTypesNotes60000JaJp extends _StringsMisskeyAchievementsTypesNotes60000EnUs {
	_StringsMisskeyAchievementsTypesNotes60000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートクエーサー';
	@override String get description => 'ノートを60,000回投稿した';
}

// Path: misskey.achievements_.types_.notes70000_
class _StringsMisskeyAchievementsTypesNotes70000JaJp extends _StringsMisskeyAchievementsTypesNotes70000EnUs {
	_StringsMisskeyAchievementsTypesNotes70000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ブラックノートホール';
	@override String get description => 'ノートを70,000回投稿した';
}

// Path: misskey.achievements_.types_.notes80000_
class _StringsMisskeyAchievementsTypesNotes80000JaJp extends _StringsMisskeyAchievementsTypesNotes80000EnUs {
	_StringsMisskeyAchievementsTypesNotes80000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートギャラクシー';
	@override String get description => 'ノートを80,000回投稿した';
}

// Path: misskey.achievements_.types_.notes90000_
class _StringsMisskeyAchievementsTypesNotes90000JaJp extends _StringsMisskeyAchievementsTypesNotes90000EnUs {
	_StringsMisskeyAchievementsTypesNotes90000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートバース';
	@override String get description => 'ノートを90,000回投稿した';
}

// Path: misskey.achievements_.types_.notes100000_
class _StringsMisskeyAchievementsTypesNotes100000JaJp extends _StringsMisskeyAchievementsTypesNotes100000EnUs {
	_StringsMisskeyAchievementsTypesNotes100000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => 'ノートを100,000回投稿した';
	@override String get flavor => 'そんなに書くことある？';
}

// Path: misskey.achievements_.types_.login3_
class _StringsMisskeyAchievementsTypesLogin3JaJp extends _StringsMisskeyAchievementsTypesLogin3EnUs {
	_StringsMisskeyAchievementsTypesLogin3JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ビギナーⅠ';
	@override String get description => '通算ログイン日数が3日';
	@override String get flavor => '今日からね僕は ミスキストってことで';
}

// Path: misskey.achievements_.types_.login7_
class _StringsMisskeyAchievementsTypesLogin7JaJp extends _StringsMisskeyAchievementsTypesLogin7EnUs {
	_StringsMisskeyAchievementsTypesLogin7JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ビギナーⅡ';
	@override String get description => '通算ログイン日数が7日';
	@override String get flavor => '慣れてきましたか？';
}

// Path: misskey.achievements_.types_.login15_
class _StringsMisskeyAchievementsTypesLogin15JaJp extends _StringsMisskeyAchievementsTypesLogin15EnUs {
	_StringsMisskeyAchievementsTypesLogin15JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ビギナーⅢ';
	@override String get description => '通算ログイン日数が15日';
}

// Path: misskey.achievements_.types_.login30_
class _StringsMisskeyAchievementsTypesLogin30JaJp extends _StringsMisskeyAchievementsTypesLogin30EnUs {
	_StringsMisskeyAchievementsTypesLogin30JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ミスキストⅠ';
	@override String get description => '通算ログイン日数が30日';
}

// Path: misskey.achievements_.types_.login60_
class _StringsMisskeyAchievementsTypesLogin60JaJp extends _StringsMisskeyAchievementsTypesLogin60EnUs {
	_StringsMisskeyAchievementsTypesLogin60JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ミスキストⅡ';
	@override String get description => '通算ログイン日数が60日';
}

// Path: misskey.achievements_.types_.login100_
class _StringsMisskeyAchievementsTypesLogin100JaJp extends _StringsMisskeyAchievementsTypesLogin100EnUs {
	_StringsMisskeyAchievementsTypesLogin100JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ミスキストⅢ';
	@override String get description => '通算ログイン日数が100日';
	@override String get flavor => 'そのユーザー、ミスキストにつき';
}

// Path: misskey.achievements_.types_.login200_
class _StringsMisskeyAchievementsTypesLogin200JaJp extends _StringsMisskeyAchievementsTypesLogin200EnUs {
	_StringsMisskeyAchievementsTypesLogin200JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '常連Ⅰ';
	@override String get description => '通算ログイン日数が200日';
}

// Path: misskey.achievements_.types_.login300_
class _StringsMisskeyAchievementsTypesLogin300JaJp extends _StringsMisskeyAchievementsTypesLogin300EnUs {
	_StringsMisskeyAchievementsTypesLogin300JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '常連Ⅱ';
	@override String get description => '通算ログイン日数が300日';
}

// Path: misskey.achievements_.types_.login400_
class _StringsMisskeyAchievementsTypesLogin400JaJp extends _StringsMisskeyAchievementsTypesLogin400EnUs {
	_StringsMisskeyAchievementsTypesLogin400JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '常連Ⅲ';
	@override String get description => '通算ログイン日数が400日';
}

// Path: misskey.achievements_.types_.login500_
class _StringsMisskeyAchievementsTypesLogin500JaJp extends _StringsMisskeyAchievementsTypesLogin500EnUs {
	_StringsMisskeyAchievementsTypesLogin500JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ベテランⅠ';
	@override String get description => '通算ログイン日数が500日';
	@override String get flavor => '諸君、私はノートが好きだ';
}

// Path: misskey.achievements_.types_.login600_
class _StringsMisskeyAchievementsTypesLogin600JaJp extends _StringsMisskeyAchievementsTypesLogin600EnUs {
	_StringsMisskeyAchievementsTypesLogin600JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ベテランⅡ';
	@override String get description => '通算ログイン日数が600日';
}

// Path: misskey.achievements_.types_.login700_
class _StringsMisskeyAchievementsTypesLogin700JaJp extends _StringsMisskeyAchievementsTypesLogin700EnUs {
	_StringsMisskeyAchievementsTypesLogin700JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ベテランⅢ';
	@override String get description => '通算ログイン日数が700日';
}

// Path: misskey.achievements_.types_.login800_
class _StringsMisskeyAchievementsTypesLogin800JaJp extends _StringsMisskeyAchievementsTypesLogin800EnUs {
	_StringsMisskeyAchievementsTypesLogin800JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートマスターⅠ';
	@override String get description => '通算ログイン日数が800日';
}

// Path: misskey.achievements_.types_.login900_
class _StringsMisskeyAchievementsTypesLogin900JaJp extends _StringsMisskeyAchievementsTypesLogin900EnUs {
	_StringsMisskeyAchievementsTypesLogin900JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートマスターⅡ';
	@override String get description => '通算ログイン日数が900日';
}

// Path: misskey.achievements_.types_.login1000_
class _StringsMisskeyAchievementsTypesLogin1000JaJp extends _StringsMisskeyAchievementsTypesLogin1000EnUs {
	_StringsMisskeyAchievementsTypesLogin1000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートマスターⅢ';
	@override String get description => '通算ログイン日数が1,000日';
	@override String get flavor => 'Misskeyを使ってくれてありがとう！';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _StringsMisskeyAchievementsTypesNoteClipped1JaJp extends _StringsMisskeyAchievementsTypesNoteClipped1EnUs {
	_StringsMisskeyAchievementsTypesNoteClipped1JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'クリップせずにはいられないな';
	@override String get description => '初めてノートをクリップした';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _StringsMisskeyAchievementsTypesNoteFavorited1JaJp extends _StringsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesNoteFavorited1JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '星をみるひと';
	@override String get description => '初めてノートをお気に入りに登録した';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _StringsMisskeyAchievementsTypesMyNoteFavorited1JaJp extends _StringsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesMyNoteFavorited1JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '星が欲しい';
	@override String get description => '自分のノートが他の人からお気に入りに登録された';
}

// Path: misskey.achievements_.types_.profileFilled_
class _StringsMisskeyAchievementsTypesProfileFilledJaJp extends _StringsMisskeyAchievementsTypesProfileFilledEnUs {
	_StringsMisskeyAchievementsTypesProfileFilledJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '準備万端';
	@override String get description => 'プロフィール設定を行った';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _StringsMisskeyAchievementsTypesMarkedAsCatJaJp extends _StringsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_StringsMisskeyAchievementsTypesMarkedAsCatJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '吾輩は猫である';
	@override String get description => 'アカウントをCatとして設定した';
	@override String get flavor => '名前はまだない。';
}

// Path: misskey.achievements_.types_.following1_
class _StringsMisskeyAchievementsTypesFollowing1JaJp extends _StringsMisskeyAchievementsTypesFollowing1EnUs {
	_StringsMisskeyAchievementsTypesFollowing1JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'はじめてのフォロー';
	@override String get description => '初めてフォローした';
}

// Path: misskey.achievements_.types_.following10_
class _StringsMisskeyAchievementsTypesFollowing10JaJp extends _StringsMisskeyAchievementsTypesFollowing10EnUs {
	_StringsMisskeyAchievementsTypesFollowing10JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ついてく、ついてく';
	@override String get description => 'フォローが10人を超した';
}

// Path: misskey.achievements_.types_.following50_
class _StringsMisskeyAchievementsTypesFollowing50JaJp extends _StringsMisskeyAchievementsTypesFollowing50EnUs {
	_StringsMisskeyAchievementsTypesFollowing50JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '友達たくさん';
	@override String get description => 'フォローが50人を超した';
}

// Path: misskey.achievements_.types_.following100_
class _StringsMisskeyAchievementsTypesFollowing100JaJp extends _StringsMisskeyAchievementsTypesFollowing100EnUs {
	_StringsMisskeyAchievementsTypesFollowing100JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '友達100人';
	@override String get description => 'フォローが100人を超した';
}

// Path: misskey.achievements_.types_.following300_
class _StringsMisskeyAchievementsTypesFollowing300JaJp extends _StringsMisskeyAchievementsTypesFollowing300EnUs {
	_StringsMisskeyAchievementsTypesFollowing300JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '友達過多';
	@override String get description => 'フォローが300人を超した';
}

// Path: misskey.achievements_.types_.followers1_
class _StringsMisskeyAchievementsTypesFollowers1JaJp extends _StringsMisskeyAchievementsTypesFollowers1EnUs {
	_StringsMisskeyAchievementsTypesFollowers1JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'はじめてのフォロワー';
	@override String get description => '初めてフォローされた';
}

// Path: misskey.achievements_.types_.followers10_
class _StringsMisskeyAchievementsTypesFollowers10JaJp extends _StringsMisskeyAchievementsTypesFollowers10EnUs {
	_StringsMisskeyAchievementsTypesFollowers10JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'フォローミー！';
	@override String get description => 'フォロワーが10人を超した';
}

// Path: misskey.achievements_.types_.followers50_
class _StringsMisskeyAchievementsTypesFollowers50JaJp extends _StringsMisskeyAchievementsTypesFollowers50EnUs {
	_StringsMisskeyAchievementsTypesFollowers50JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ぞろぞろ';
	@override String get description => 'フォロワーが50人を超した';
}

// Path: misskey.achievements_.types_.followers100_
class _StringsMisskeyAchievementsTypesFollowers100JaJp extends _StringsMisskeyAchievementsTypesFollowers100EnUs {
	_StringsMisskeyAchievementsTypesFollowers100JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '人気者';
	@override String get description => 'フォロワーが100人を超した';
}

// Path: misskey.achievements_.types_.followers300_
class _StringsMisskeyAchievementsTypesFollowers300JaJp extends _StringsMisskeyAchievementsTypesFollowers300EnUs {
	_StringsMisskeyAchievementsTypesFollowers300JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '一列でお並びください';
	@override String get description => 'フォロワーが300人を超した';
}

// Path: misskey.achievements_.types_.followers500_
class _StringsMisskeyAchievementsTypesFollowers500JaJp extends _StringsMisskeyAchievementsTypesFollowers500EnUs {
	_StringsMisskeyAchievementsTypesFollowers500JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '基地局';
	@override String get description => 'フォロワーが500人を超した';
}

// Path: misskey.achievements_.types_.followers1000_
class _StringsMisskeyAchievementsTypesFollowers1000JaJp extends _StringsMisskeyAchievementsTypesFollowers1000EnUs {
	_StringsMisskeyAchievementsTypesFollowers1000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'インフルエンサー';
	@override String get description => 'フォロワーが1,000人を超した';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _StringsMisskeyAchievementsTypesCollectAchievements30JaJp extends _StringsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_StringsMisskeyAchievementsTypesCollectAchievements30JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '実績コレクター';
	@override String get description => '実績を30個以上獲得した';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _StringsMisskeyAchievementsTypesViewAchievements3minJaJp extends _StringsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_StringsMisskeyAchievementsTypesViewAchievements3minJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '実績好き';
	@override String get description => '実績一覧を3分以上眺め続けた';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _StringsMisskeyAchievementsTypesILoveMisskeyJaJp extends _StringsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_StringsMisskeyAchievementsTypesILoveMisskeyJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'I Love Misskey';
	@override String get description => '"I ❤ #Misskey"を投稿した';
	@override String get flavor => 'Misskeyを使ってくださりありがとうございます！ by 開発チーム';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _StringsMisskeyAchievementsTypesFoundTreasureJaJp extends _StringsMisskeyAchievementsTypesFoundTreasureEnUs {
	_StringsMisskeyAchievementsTypesFoundTreasureJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '宝探し';
	@override String get description => '隠されたお宝を発見した';
}

// Path: misskey.achievements_.types_.client30min_
class _StringsMisskeyAchievementsTypesClient30minJaJp extends _StringsMisskeyAchievementsTypesClient30minEnUs {
	_StringsMisskeyAchievementsTypesClient30minJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ひとやすみ';
	@override String get description => 'クライアントを起動してから30分以上経過した';
}

// Path: misskey.achievements_.types_.client60min_
class _StringsMisskeyAchievementsTypesClient60minJaJp extends _StringsMisskeyAchievementsTypesClient60minEnUs {
	_StringsMisskeyAchievementsTypesClient60minJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskeyの見すぎ';
	@override String get description => 'クライアントを起動してから60分以上経過した';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _StringsMisskeyAchievementsTypesNoteDeletedWithin1minJaJp extends _StringsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_StringsMisskeyAchievementsTypesNoteDeletedWithin1minJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'いまのなし';
	@override String get description => '投稿してから1分以内にその投稿を削除した';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _StringsMisskeyAchievementsTypesPostedAtLateNightJaJp extends _StringsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_StringsMisskeyAchievementsTypesPostedAtLateNightJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '夜行性';
	@override String get description => '深夜にノートを投稿した';
	@override String get flavor => 'そろそろ寝よう。';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _StringsMisskeyAchievementsTypesPostedAt0min0secJaJp extends _StringsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_StringsMisskeyAchievementsTypesPostedAt0min0secJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '時報';
	@override String get description => '0分0秒にノートを投稿した';
	@override String get flavor => 'ポッ ポッ ポッ ピーン';
}

// Path: misskey.achievements_.types_.selfQuote_
class _StringsMisskeyAchievementsTypesSelfQuoteJaJp extends _StringsMisskeyAchievementsTypesSelfQuoteEnUs {
	_StringsMisskeyAchievementsTypesSelfQuoteJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '自己言及';
	@override String get description => '自分のノートを引用した';
}

// Path: misskey.achievements_.types_.htl20npm_
class _StringsMisskeyAchievementsTypesHtl20npmJaJp extends _StringsMisskeyAchievementsTypesHtl20npmEnUs {
	_StringsMisskeyAchievementsTypesHtl20npmJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '流れるTL';
	@override String get description => 'ホームタイムラインの流速が20npmを越す';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _StringsMisskeyAchievementsTypesViewInstanceChartJaJp extends _StringsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_StringsMisskeyAchievementsTypesViewInstanceChartJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'アナリスト';
	@override String get description => 'サーバーのチャートを表示した';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadJaJp extends _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hello, world!';
	@override String get description => 'スクラッチパッドで hello world を出力した';
}

// Path: misskey.achievements_.types_.open3windows_
class _StringsMisskeyAchievementsTypesOpen3windowsJaJp extends _StringsMisskeyAchievementsTypesOpen3windowsEnUs {
	_StringsMisskeyAchievementsTypesOpen3windowsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'マルチウィンドウ';
	@override String get description => 'ウィンドウを3つ以上開いた状態にした';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceJaJp extends _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_StringsMisskeyAchievementsTypesDriveFolderCircularReferenceJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '循環参照';
	@override String get description => 'ドライブのフォルダを再帰的な入れ子にしようとした';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _StringsMisskeyAchievementsTypesReactWithoutReadJaJp extends _StringsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_StringsMisskeyAchievementsTypesReactWithoutReadJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ちゃんと読んだ？';
	@override String get description => '100文字以上のテキストを含むノートに投稿されてから3秒以内にリアクションした';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _StringsMisskeyAchievementsTypesClickedClickHereJaJp extends _StringsMisskeyAchievementsTypesClickedClickHereEnUs {
	_StringsMisskeyAchievementsTypesClickedClickHereJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ここをクリック';
	@override String get description => 'ここをクリックした';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _StringsMisskeyAchievementsTypesJustPlainLuckyJaJp extends _StringsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_StringsMisskeyAchievementsTypesJustPlainLuckyJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '単なるラッキー';
	@override String get description => '10秒ごとに0.005%の確率で獲得';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _StringsMisskeyAchievementsTypesSetNameToSyuiloJaJp extends _StringsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_StringsMisskeyAchievementsTypesSetNameToSyuiloJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '神様コンプレックス';
	@override String get description => '名前を syuilo に設定した';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1JaJp extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated1JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '一周年';
	@override String get description => 'アカウント作成から1年経過した';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2JaJp extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated2JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '二周年';
	@override String get description => 'アカウント作成から2年経過した';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3JaJp extends _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated3JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '三周年';
	@override String get description => 'アカウント作成から3年経過した';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _StringsMisskeyAchievementsTypesLoggedInOnBirthdayJaJp extends _StringsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnBirthdayJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ハッピーバースデー';
	@override String get description => '誕生日にログインした';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayJaJp extends _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'あけましておめでとうございます';
	@override String get description => '元日にログインした';
	@override String get flavor => '今年も弊サーバーをよろしくお願いします';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _StringsMisskeyAchievementsTypesCookieClickedJaJp extends _StringsMisskeyAchievementsTypesCookieClickedEnUs {
	_StringsMisskeyAchievementsTypesCookieClickedJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'クッキーをクリックするゲーム';
	@override String get description => 'クッキーをクリックした';
	@override String get flavor => 'ソフト間違ってない？';
}

// Path: misskey.achievements_.types_.brainDiver_
class _StringsMisskeyAchievementsTypesBrainDiverJaJp extends _StringsMisskeyAchievementsTypesBrainDiverEnUs {
	_StringsMisskeyAchievementsTypesBrainDiverJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Brain Diverへのリンクを投稿した';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _StringsMisskeyAchievementsTypesSmashTestNotificationButtonJaJp extends _StringsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_StringsMisskeyAchievementsTypesSmashTestNotificationButtonJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'テスト過剰';
	@override String get description => '通知のテストをごく短時間のうちに連続して行った';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _StringsMisskeyAchievementsTypesTutorialCompletedJaJp extends _StringsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_StringsMisskeyAchievementsTypesTutorialCompletedJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskey初心者講座 修了証';
	@override String get description => 'チュートリアルを完了した';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadJaJp extends _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_StringsMisskeyAchievementsTypesBubbleGameExplodingHeadJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => 'バブルゲームで最も大きいモノを出した';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadJaJp extends _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ダブル🤯';
	@override String get description => 'バブルゲームで最も大きいモノを2つ同時に出した';
	@override String get flavor => 'これくらいの　おべんとばこに　🤯　🤯　ちょっとつめて';
}

// Path: misskey.pages_.blocks.note_
class _StringsMisskeyPagesBlocksNoteJaJp extends _StringsMisskeyPagesBlocksNoteEnUs {
	_StringsMisskeyPagesBlocksNoteJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get id => 'ノートID';
	@override String get idDescription => 'ノートURLをペーストして設定することもできます。';
	@override String get detailed => '詳細な表示';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeJaJp extends _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_StringsMisskeyAbuseReportNotificationRecipientRecipientTypeJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get mail => 'メール';
	@override String get webhook => 'Webhook';
	@override late final _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsJaJp captions_ = _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsJaJp._(_root);
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsJaJp extends _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsInvalidParamsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'パラメータが不足しています';
	@override String get description => '外部サイトからデータを取得するために必要な情報が不足しています。URLをお確かめください。';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedJaJp extends _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'この外部リソースには対応していません';
	@override String get description => 'この外部サイトから取得したリソースの種別には対応していません。サイト管理者にお問い合わせください。';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchJaJp extends _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsFailedToFetchJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'データの取得に失敗しました';
	@override String get fetchErrorDescription => '外部サイトとの通信に失敗しました。もう一度試しても改善しない場合、サイト管理者にお問い合わせください。';
	@override String get parseErrorDescription => '外部サイトから取得したデータが読み取れませんでした。サイト管理者にお問い合わせください。';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedJaJp extends _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '正しいデータが取得できませんでした';
	@override String get description => '提供されたデータの整合性の確認に失敗しました。セキュリティ上、インストールは続行できません。サイト管理者にお問い合わせください。';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedJaJp extends _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'AiScript エラー';
	@override String get description => 'データは取得できたものの、AiScriptの解析時にエラーがあったため読み込めませんでした。プラグインの作者にお問い合わせください。エラーの詳細はJavascriptコンソールをご確認ください。';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedJaJp extends _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'プラグインのインストールに失敗しました';
	@override String get description => 'プラグインのインストール中に問題が発生しました。もう一度お試しください。エラーの詳細はJavascriptコンソールをご覧ください。';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedJaJp extends _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'テーマ解析エラー';
	@override String get description => 'データは取得できたものの、テーマファイルの解析時にエラーがあったため読み込めませんでした。テーマの作者にお問い合わせください。エラーの詳細はJavascriptコンソールをご確認ください。';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedJaJp extends _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'テーマのインストールに失敗しました';
	@override String get description => 'テーマのインストール中に問題が発生しました。もう一度お試しください。エラーの詳細はJavascriptコンソールをご覧ください。';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _StringsMisskeyInitialTutorialPostNoteCwExampleNoteJaJp extends _StringsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_StringsMisskeyInitialTutorialPostNoteCwExampleNoteJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get cw => '飯テロ注意';
	@override String get note => 'チョコのかかったドーナツを食べました🍩😋';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_.captions_
class _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsJaJp extends _StringsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEnUs {
	_StringsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get mail => 'モデレーター権限を持つユーザーのメールアドレスに通知を送ります(通報を受けた時のみ)';
	@override String get webhook => '指定したSystemWebhookに通知を送ります(通報を受けた時と通報を解決した時にそれぞれ発信)';
}
