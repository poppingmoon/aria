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
class TranslationsJaJp extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJaJp({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.jaJp,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <ja-JP>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsJaJp _root = this; // ignore: unused_field

	@override 
	TranslationsJaJp $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJaJp(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAriaJaJp aria = _TranslationsAriaJaJp._(_root);
	@override late final _TranslationsMisskeyJaJp misskey = _TranslationsMisskeyJaJp._(_root);
	@override late final _TranslationsMisskeyIOJaJp misskeyIO = _TranslationsMisskeyIOJaJp._(_root);
}

// Path: aria
class _TranslationsAriaJaJp extends TranslationsAriaEnUs {
	_TranslationsAriaJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get aboutAria => 'Ariaについて';
	@override TextSpan acceptFollowRequestConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: 'からのフォロー申請を許可しますか？'),
	]);
	@override String get accessToken => 'アクセストークン';
	@override String get accessTokenUpdated => 'アクセストークンを更新しました';
	@override String get accountAdded => 'アカウントを追加しました';
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
	@override String get alwaysShowAllReactions => '全てのリアクションを常に表示する';
	@override String get alwaysShowTabHeader => 'タブの情報を常に表示する';
	@override String get authenticate => '認証';
	@override String get authenticated => '認証してきた';
	@override String get avatarSize => 'アイコンのサイズ';
	@override String get background => '背景';
	@override String get buttonTypes => 'ボタンのタイプ';
	@override String get cache => 'キャッシュ';
	@override String get calculating => '計算中';
	@override TextSpan cancelFollowRequestConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: 'へのフォロー申請をキャンセルしますか？'),
	]);
	@override String get clientInfo => 'クライアント情報';
	@override String get confirmBeforeFollow => 'フォローする前に確認する';
	@override String get confirmBeforePost => '投稿する前に確認する';
	@override String get confirmBeforeReact => 'リアクションする前に確認する';
	@override String get confirmBeforeRenote => 'リノートする前に確認する';
	@override String get copied => 'クリップボードにコピーしました';
	@override String get copyName => '名前をコピー';
	@override String get crop => 'クロップ';
	@override String get custom => 'カスタム';
	@override String get defaultReaction => 'デフォルトのリアクション';
	@override String deleteAccountTabsConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: 'このアカウントのタブが${n}個あります。削除しますか？',
		other: 'このアカウントのタブが${n}個あります。削除しますか？',
	);
	@override String deleteFilesConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '${n}個のファイルを削除しますか？',
		other: '${n}個のファイルを削除しますか？',
	);
	@override String get deleteTabConfirm => 'このタブを削除しますか？';
	@override String get device => 'デバイス';
	@override String get disableDataSaverWhenOnWifi => 'Wi-Fi接続中はデータセーバーを無効にする';
	@override String get disableStreamingTimeline => 'タイムラインのリアルタイム更新を無効にする';
	@override String get disableSubscribingNotes => 'リアクションのリアルタイム更新を無効にする';
	@override String get discardChangesConfirm => '変更せずに戻りますか？';
	@override String get displayOfThumbnail => 'サムネイルの表示';
	@override String get doubleTapToShow => 'ダブルタップして表示';
	@override String get draw => '手描き';
	@override String get editImage => '画像を編集';
	@override String get emojiPickerAutofocus => '絵文字ピッカーでキーボードを自動で開く';
	@override String get emojiPickerScale => '絵文字ピッカーのサイズ';
	@override String get emojiPickerUseDialog => '絵文字ピッカーをダイアログにする';
	@override String get enableEmojiFadeIn => 'カスタム絵文字のフェードインを有効にする';
	@override String get enableFederation => '連合ありにする';
	@override String get enableHapticFeedback => '触覚フィードバックを有効にする';
	@override String get enablePredictiveBack => '予測型「戻る」アニメーションを有効にする';
	@override String get enableSpellCheck => 'スペルチェックを有効にする';
	@override String get endpoint => 'エンドポイント';
	@override String get exitPlayConfirm => 'Playを終了しますか？';
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
	@override String get invalidEndpoint => '無効なエンドポイント';
	@override String get invalidEndpointDescription => 'レスポンスに含まれるエンドポイントが正しくありません。実行したコードがアプリ内に表示されているものと一致しているか確認してください。';
	@override String get invalidListFormat => 'リストの形式が正しくありません';
	@override String jumpTo({required Object x}) => '${x}にジャンプ';
	@override String get keepOpen => '開いたままにする';
	@override String get keepTimelinePosition => 'タイムラインの位置を保持する';
	@override String get lineHeight => '行間';
	@override String get loadFromDrive => 'ドライブから読み込み';
	@override String get loginWithAccessToken => 'アクセストークンでログイン';
	@override String get margin => '余白';
	@override String get media => 'メディア';
	@override String get mentionToRemoteWarning => 'リモートユーザーへのメンションが含まれています';
	@override String get mergeReactionsByName => '同じ名前のリアクションをまとめて表示する';
	@override String get moved => '移動しました';
	@override String get muted => 'ミュート中';
	@override String get mutedEmojis => 'ミュートした絵文字';
	@override String nFiles({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '${n}個のファイル',
		other: '${n}個のファイル',
	);
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
	@override String get noteScheduled => 'ノートが予約されました';
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
	@override TextSpan openScratchpadAndRunCode({required InlineSpan scratchpad}) => TextSpan(children: [
		const TextSpan(text: 'ブラウザで'),
		scratchpad,
		const TextSpan(text: 'を開き、以下のコードを入力して実行してください。'),
	]);
	@override String get openSensitiveMediaOnDoubleTap => 'ダブルタップしてセンシティブなメディアを開く';
	@override String get owner => 'オーナー';
	@override String get parameters => 'パラメータ';
	@override String get paste => '貼り付け';
	@override TextSpan pastePinnedEmojisDescription({required InlineSpan url}) => TextSpan(children: [
		const TextSpan(text: '絵文字のリストを貼り付けて一括でピン止めします。\nMisskey Webでピン止めした絵文字のリストは'),
		url,
		const TextSpan(text: 'からコピーすることができます。'),
	]);
	@override String get pasteResponseBelow => '以下にレスポンスを貼り付けてください。';
	@override String get permissionDeniedErrorDescription => 'この操作を行うための権限がアクセストークンに付与されていません。もう一度ログインしてください。';
	@override String get pinToEmojiPicker => '絵文字ピッカーにピン留め';
	@override String get playAudio => '音声を再生';
	@override String get playVideo => '動画を再生';
	@override String get pleaseCopyResponse => '以下のレスポンスをコピーしてください';
	@override String pleaseLoginAs({required Object user}) => '${user}でログインしてください';
	@override String get postConfirm => 'このノートを投稿しますか？';
	@override String get reactionConfirm => 'リアクションしますか？';
	@override String get recentlyUsedEmojis => '最近使用した絵文字';
	@override TextSpan rejectFollowRequestConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: 'からのフォロー申請を拒否しますか？'),
	]);
	@override String get renoteConfirm => 'このノートをリノートしますか？';
	@override String get renoteToChannel => 'チャンネルにリノート';
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: 'がリノート'),
	]);
	@override String get reset => 'リセット';
	@override String get rotate => '回転';
	@override String get saveToDrive => 'ドライブに保存';
	@override String get selectIcon => 'アイコンを選択';
	@override TextSpan selfRenotedBy({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: 'がセルフリノート'),
	]);
	@override String get sendMessageConfirm => 'このメッセージを送信しますか？';
	@override String get serverUrl => 'サーバーのURL';
	@override String get settingsFileForAria => 'Ariaの設定ファイル';
	@override TextSpan settingsForUser({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: 'の設定'),
	]);
	@override String get showAvatarsInNote => 'ノートにユーザーのアイコンを表示する';
	@override String get showAvatarsInSubNote => 'サブノートにユーザーのアイコンを表示する';
	@override String get showCaption => 'キャプションを表示';
	@override String get showEntireImage => '全体を表示する';
	@override String get showExpandedImage => '拡大して表示する';
	@override String get showGapBetweenNotesInTimeline => 'タイムラインのノートを離して表示';
	@override String get showImage => '画像を表示';
	@override String get showLikeButtonInNoteFooter => 'ノートのアクションにいいねを追加';
	@override String get showMenuButtonInTabBar => 'タイムラインのタブバーにメニューボタンを追加';
	@override String get showNote => 'ノートを表示';
	@override String get showNoteCreatedAt => 'ノートの作成日時を表示する';
	@override String get showNoteFooter => 'ノートにアクションボタンを表示する';
	@override String get showNoteReactionsViewer => 'ノートにリアクションを表示する';
	@override String get showOnlineStatus => 'オンライン状態を表示する';
	@override String get showPopupOnNewNote => 'ノートを受信したときにポップアップを表示する';
	@override String get showQuoteButtonInNoteFooter => 'ノートのアクションに引用を追加';
	@override String get showReactionsCountForEachTypes => '各リアクションのリアクション数を表示する';
	@override String get showRenotesCount => 'ノートのリノート数を表示する';
	@override String get showRepliesCount => 'ノートの返信数を表示する';
	@override String get showSelfRenotes => 'セルフリノートを表示する';
	@override String get showSmallButtons => 'ボタンを小さく表示する';
	@override String get showSquaredButtons => 'ボタンを四角形で表示する';
	@override String get showStackTrace => 'スタックトレースを表示';
	@override String get showSubNoteFooter => 'サブノートにアクションボタンを表示する';
	@override String get showSubNoteReactionsViewer => 'サブノートにリアクションを表示する';
	@override String get showTabHeaderInOneLine => 'タブの情報を1行で表示する';
	@override String get showTimelineLastViewedAt => 'タイムラインを最後に見た日時を表示する';
	@override String get showTimelineTabBarAtBottom => 'タイムラインのタブバーを下に表示する';
	@override String get showTranslateButtonInNoteFooter => 'ノートのアクションに翻訳を追加';
	@override String get sinceDate => 'この日から';
	@override String get springStiffness => 'ばねの強さ';
	@override String get stackTrace => 'スタックトレース';
	@override String get streamingChannel => 'ストリーミングチャンネル';
	@override String get swapCw => '注釈と本文を入れ替える';
	@override String get swipeSensitivity => 'スワイプの感度';
	@override String get tabName => 'タブの名前';
	@override String get tabSwitching => 'タブの切り替え';
	@override String get tabType => 'タブの種類';
	@override String get tabs => 'タブ';
	@override String get tapToShow => 'タップして表示';
	@override String get timeMachine => 'タイムマシン';
	@override String get timelinesPageButtons => 'タイムラインページのボタン';
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
	@override String get vibration => 'バイブレーション';
	@override String get webBrowser => 'ウェブブラウザ';
}

// Path: misskey
class _TranslationsMisskeyJaJp extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get lang__ => '日本語';
	@override String get headlineMisskey => 'ノートでつながるネットワーク';
	@override String get introMisskey => 'ようこそ！Misskeyは、オープンソースの分散型マイクロブログサービスです。\n「ノート」を作成して、いま起こっていることを共有したり、あなたについて皆に発信しよう📡\n「リアクション」機能で、皆のノートに素早く反応を追加することもできます👍\n新しい世界を探検しよう🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name}は、オープンソースのプラットフォーム<b>Misskey</b>のサーバーのひとつです。';
	@override String monthAndDay({required Object month, required Object day}) => '${month}月 ${day}日';
	@override String get search => '検索';
	@override String get reset => 'リセット';
	@override String get notifications => '通知';
	@override String get username => 'ユーザー名';
	@override String get password => 'パスワード';
	@override String get initialPasswordForSetup => '初期設定開始用パスワード';
	@override String get initialPasswordIsIncorrect => '初期設定開始用のパスワードが違います。';
	@override String get initialPasswordForSetupDescription => 'Misskeyを自分でインストールした場合は、設定ファイルに入力したパスワードを使用してください。\nMisskeyのホスティングサービスなどを使用している場合は、提供されたパスワードを使用してください。\nパスワードを設定していない場合は、空欄にしたまま続行してください。';
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
	@override String get copyRemoteLink => 'リモートのリンクをコピー';
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
	@override String get mentions => 'メンション';
	@override String get directNotes => '指名';
	@override String get importAndExport => 'インポートとエクスポート';
	@override String get import => 'インポート';
	@override String get export => 'エクスポート';
	@override String get files => 'ファイル';
	@override String get download => 'ダウンロード';
	@override String driveFileDeleteConfirm({required Object name}) => 'ファイル「${name}」を削除しますか？このファイルを使用した一部のコンテンツも削除されます。';
	@override String unfollowConfirm({required Object name}) => '${name}のフォローを解除しますか？';
	@override String cancelFollowRequestConfirm({required Object name}) => '${name}へのフォロー申請をキャンセルしますか？';
	@override String rejectFollowRequestConfirm({required Object name}) => '${name}からのフォロー申請を拒否しますか？';
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
	@override String get cacheRemoteFilesDescription => 'この設定を有効にすると、リモートファイルをこのサーバーのストレージにキャッシュするようになります。画像の表示が高速になりますが、サーバーのストレージを多く消費します。リモートユーザーがどれほどキャッシュを保持するかは、ロールによるドライブ容量制限によって決定されます。この制限を超えた場合、古いファイルからキャッシュが削除されリンクになります。この設定が無効の場合、リモートのファイルを最初からリンクとして保持します。';
	@override String get youCanCleanRemoteFilesCache => 'ファイル管理の🗑️ボタンで全てのキャッシュを削除できます。';
	@override String get cacheRemoteSensitiveFiles => 'リモートのセンシティブなファイルをキャッシュする';
	@override String get cacheRemoteSensitiveFilesDescription => 'この設定を無効にすると、リモートのセンシティブなファイルはキャッシュせず直リンクするようになります。';
	@override String get flagAsBot => 'Botとして設定';
	@override String get flagAsBotDescription => 'このアカウントがプログラムによって運用される場合は、このフラグをオンにします。オンにすると、反応の連鎖を防ぐためのフラグとして他の開発者に役立ったり、Misskeyのシステム上での扱いがBotに合ったものになります。';
	@override String get flagAsCat => 'にゃああああああああああああああ！！！！！！！！！！！！';
	@override String get flagAsCatDescription => 'にゃにゃにゃ？？';
	@override String get flagShowTimelineReplies => 'タイムラインにノートへの返信を表示する';
	@override String get flagShowTimelineRepliesDescription => 'オンにすると、タイムラインにユーザーのノート以外にもそのユーザーの他のノートへの返信を表示します。';
	@override String get autoAcceptFollowed => 'フォロー中ユーザーからのフォロー申請を自動承認';
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
	@override String get softwareName => 'ソフトウェア名';
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
	@override String get federationAllowedHosts => '連合を許可するサーバー';
	@override String get federationAllowedHostsDescription => '連合を許可するサーバーのホストを改行で区切って設定します。';
	@override String get muteAndBlock => 'ミュートとブロック';
	@override String get mutedUsers => 'ミュートしたユーザー';
	@override String get blockedUsers => 'ブロックしたユーザー';
	@override String get noUsers => 'ユーザーはいません';
	@override String get editProfile => 'プロフィールを編集';
	@override String get noteDeleteConfirm => 'このノートを削除しますか？';
	@override String get pinLimitExceeded => 'これ以上ピン留めできません';
	@override String get done => '完了';
	@override String get processing => '処理中';
	@override String get preprocessing => '準備中';
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
	@override String get upload => 'アップロード';
	@override String get keepOriginalUploading => 'オリジナル画像を保持';
	@override String get keepOriginalUploadingDescription => '画像をアップロードする時にオリジナル版を保持します。オフにするとアップロード時にブラウザでWeb公開用画像を生成します。';
	@override String get fromDrive => 'ドライブから';
	@override String get fromUrl => 'URLから';
	@override String get uploadFromUrl => 'URLアップロード';
	@override String get uploadFromUrlDescription => 'アップロードしたいファイルのURL';
	@override String get uploadFromUrlRequested => 'アップロードをリクエストしました';
	@override String get uploadFromUrlMayTakeTime => 'アップロードが完了するまで時間がかかる場合があります。';
	@override String uploadNFiles({required Object n}) => '${n}個のファイルをアップロード';
	@override String get explore => 'みつける';
	@override String get messageRead => '既読';
	@override String get readAllChatMessages => 'すべてのメッセージを既読にする';
	@override String get noMoreHistory => 'これより過去の履歴はありません';
	@override String get startChat => 'メッセージを送る';
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
	@override String switchDarkModeManuallyWhenSyncEnabledConfirm({required Object x}) => '「${x}」がオンになっています。同期をオフにして手動でモードを切り替えますか？';
	@override String get drive => 'ドライブ';
	@override String get fileName => 'ファイル名';
	@override String get selectFile => 'ファイルを選択';
	@override String get selectFiles => 'ファイルを選択';
	@override String get selectFolder => 'フォルダーを選択';
	@override String get unselectFolder => 'フォルダーの選択を解除';
	@override String get selectFolders => 'フォルダーを選択';
	@override String get fileNotSelected => 'ファイルが選択されていません';
	@override String get renameFile => 'ファイル名を変更';
	@override String get folderName => 'フォルダー名';
	@override String get createFolder => 'フォルダーを作成';
	@override String get renameFolder => 'フォルダー名を変更';
	@override String get deleteFolder => 'フォルダーを削除';
	@override String get folder => 'フォルダー';
	@override String get addFile => 'ファイルを追加';
	@override String get showFile => 'ファイルを表示';
	@override String get emptyDrive => 'ドライブは空です';
	@override String get emptyFolder => 'フォルダーは空です';
	@override String get dropHereToUpload => 'ここにファイルをドロップしてアップロード';
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
	@override String get excludeNotesInSensitiveChannel => 'センシティブなチャンネルのノートを除外';
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
	@override String get moderationNoteDescription => 'モデレーター間でだけ共有されるメモを記入することができます。';
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
	@override String get markAsReadAllTalkMessages => 'すべてのダイレクトメッセージを既読にする';
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
	@override String get menuStyle => 'メニューのスタイル';
	@override String get style => 'スタイル';
	@override String get drawer => 'ドロワー';
	@override String get popup => 'ポップアップ';
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
	@override String get showMediaListByGridInWideArea => '画面幅が広いときはメディアリストを横並びで表示する';
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
	@override String get newNote => '新しいノート';
	@override String get sounds => 'サウンド';
	@override String get sound => 'サウンド';
	@override String get notificationSoundSettings => '通知音の設定';
	@override String get listen => '聴く';
	@override String get none => 'なし';
	@override String get showInPage => 'ページで表示';
	@override String get popout => 'ポップアウト';
	@override String get volume => '音量';
	@override String get masterVolume => 'マスター音量';
	@override String get notUseSound => 'サウンドを出力しない';
	@override String get useSoundOnlyWhenActive => 'Misskeyがアクティブな時のみサウンドを出力する';
	@override String get details => '詳細';
	@override String get renoteDetails => 'リノートの詳細';
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
	@override String get uiInspector => 'UIインスペクター';
	@override String get uiInspectorDescription => 'メモリ上に存在しているUIコンポーネントのインスタンスの一覧を見ることができます。UIコンポーネントはUi:C:系関数により生成されます。';
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
	@override String get deletedNote => '削除されたノート';
	@override String get invisibleNote => '非公開のノート';
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
	@override String get wordMuteDescription => '指定した語句を含むノートを最小化します。最小化されたノートをクリックすることで表示することができます。';
	@override String get hardWordMute => 'ハードワードミュート';
	@override String get showMutedWord => 'ミュートされたワードを表示';
	@override String get hardWordMuteDescription => '指定した語句を含むノートを隠します。ワードミュートとは異なり、ノートは完全に表示されなくなります。';
	@override String get regexpError => '正規表現エラー';
	@override String regexpErrorDescription({required Object tab, required Object line}) => '${tab}ワードミュートの${line}行目の正規表現にエラーが発生しました:';
	@override String get instanceMute => 'サーバーミュート';
	@override String userSaysSomething({required Object name}) => '${name}が何かを言いました';
	@override String userSaysSomethingAbout({required Object name, required Object word}) => '${name}が「${word}」について何かを言いました';
	@override String get makeActive => 'アクティブにする';
	@override String get display => '表示';
	@override String get copy => 'コピー';
	@override String get copiedToClipboard => 'クリップボードにコピーされました';
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
	@override String get send => '送信';
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
	@override String get disableShowingAnimatedImages_caption => 'この設定に関わらずアニメーション画像が再生されないときは、ブラウザ・OSのアクセシビリティ設定や省電力設定等が干渉している場合があります。';
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
	@override String get duplicate => '複製';
	@override String get left => '左';
	@override String get center => '中央';
	@override String get wide => '広い';
	@override String get narrow => '狭い';
	@override String get reloadToApplySetting => '設定はページリロード後に反映されます。';
	@override String get needReloadToApply => '反映には再起動が必要です。';
	@override String get needToRestartServerToApply => '反映にはサーバーの再起動が必要です。';
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
	@override String get incorrectTotp => 'ワンタイムパスワードが間違っているか、期限切れになっています。';
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
	@override String get threeMonths => '3ヶ月';
	@override String get oneYear => '1年';
	@override String get threeDays => '3日';
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
	@override String get logoutWillClearClientData => 'ログアウトするとクライアントの設定情報がブラウザから消去されます。再ログイン時に設定情報を復元できるようにするためには、設定の自動バックアップを有効にしてください。';
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
	@override String get cannotUploadBecauseUnallowedFileType => '許可されていないファイル種別のためアップロードできません。';
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
	@override String get pleaseAllowPushNotification => 'ブラウザの通知設定を許可してください';
	@override String get browserPushNotificationDisabled => '通知の送信権限の取得に失敗しました';
	@override String browserPushNotificationDisabledDescription({required Object serverName}) => '${serverName}から通知を送信する権限がありません。ブラウザの設定から通知を許可して再度お試しください。';
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
	@override String get invalidParamErrorDescription => 'リクエストパラメータに問題があります。通常これはバグですが、入力した文字数が多すぎる・許可されていない文字を入力している等の可能性もあります。';
	@override String get permissionDeniedError => '操作が拒否されました';
	@override String get permissionDeniedErrorDescription => 'このアカウントにはこの操作を行うための権限がありません。';
	@override String get preset => 'プリセット';
	@override String get selectFromPresets => 'プリセットから選択';
	@override String get custom => 'カスタム';
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
	@override String get usersSearchNotAvailable => 'ユーザー検索は利用できません。';
	@override String get license => 'ライセンス';
	@override String get unfavoriteConfirm => 'お気に入り解除しますか？';
	@override String get myClips => '自分のクリップ';
	@override String get drivecleaner => 'ドライブクリーナー';
	@override String get retryAllQueuesNow => 'すべてのキューを今すぐ再試行';
	@override String get retryAllQueuesConfirmTitle => '今すぐ再試行しますか？';
	@override String get retryAllQueuesConfirmText => '一時的にサーバーの負荷が増大することがあります。';
	@override String get enableChartsForRemoteUser => 'リモートユーザーのチャートを生成';
	@override String get enableChartsForFederatedInstances => 'リモートサーバーのチャートを生成';
	@override String get enableStatsForFederatedInstances => 'リモートサーバーの情報を取得';
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
	@override String get showRoleBadgesOfRemoteUsers => 'リモートユーザーに付与したロールバッジを表示する';
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
	@override String get useGroupedNotifications => '通知をグルーピング';
	@override String get emailVerificationFailedError => 'メールアドレスの確認中に問題が発生しました。リンクの有効期限が切れている可能性があります。';
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
	@override String fromX({required Object x}) => '${x}から';
	@override String get genEmbedCode => '埋め込みコードを生成';
	@override String get noteOfThisUser => 'このユーザーのノート一覧';
	@override String get clipNoteLimitExceeded => 'これ以上このクリップにノートを追加できません。';
	@override String get performance => 'パフォーマンス';
	@override String get modified => '変更あり';
	@override String get discard => '破棄';
	@override String thereAreNChanges({required Object n}) => '${n}件の変更があります';
	@override String get signinWithPasskey => 'パスキーでログイン';
	@override String get unknownWebAuthnKey => '登録されていないパスキーです。';
	@override String get passkeyVerificationFailed => 'パスキーの検証に失敗しました。';
	@override String get passkeyVerificationSucceededButPasswordlessLoginDisabled => 'パスキーの検証に成功しましたが、パスワードレスログインが無効になっています。';
	@override String get messageToFollower => 'フォロワーへのメッセージ';
	@override String get target => '対象';
	@override String get testCaptchaWarning => 'CAPTCHAのテストを目的とした機能です。<strong>本番環境で使用しないでください。</strong>';
	@override String get prohibitedWordsForNameOfUser => '禁止ワード（ユーザーの名前）';
	@override String get prohibitedWordsForNameOfUserDescription => 'このリストに含まれる文字列がユーザーの名前に含まれる場合、ユーザーの名前の変更を拒否します。モデレーター権限を持つユーザーはこの制限の影響を受けません。ユーザー名(username)に対しても全て小文字に置き換えて検査します。';
	@override String get yourNameContainsProhibitedWords => '変更しようとした名前に禁止された文字列が含まれています';
	@override String get yourNameContainsProhibitedWordsDescription => '名前に禁止されている文字列が含まれています。この名前を使用したい場合は、サーバー管理者にお問い合わせください。';
	@override String get thisContentsAreMarkedAsSigninRequiredByAuthor => '投稿者により、表示にはログインが必要と設定されています';
	@override String get lockdown => 'ロックダウン';
	@override String get pleaseSelectAccount => 'アカウントを選択してください';
	@override String get availableRoles => '利用可能なロール';
	@override String get acknowledgeNotesAndEnable => '注意事項を理解した上でオンにします。';
	@override String get federationSpecified => 'このサーバーはホワイトリスト連合で運用されています。管理者が指定したサーバー以外とやり取りすることはできません。';
	@override String get federationDisabled => 'このサーバーは連合が無効化されています。他のサーバーのユーザーとやり取りすることはできません。';
	@override String get draft => '下書き';
	@override String get draftsAndScheduledNotes => '下書きと予約投稿';
	@override String get confirmOnReact => 'リアクションする際に確認する';
	@override String reactAreYouSure({required Object emoji}) => '" ${emoji} " をリアクションしますか？';
	@override String get markAsSensitiveConfirm => 'このメディアをセンシティブとして設定しますか？';
	@override String get unmarkAsSensitiveConfirm => 'このメディアのセンシティブ指定を解除しますか？';
	@override String get preferences => '環境設定';
	@override String get accessibility => 'アクセシビリティ';
	@override String get preferencesProfile => '設定のプロファイル';
	@override String get copyPreferenceId => '設定IDをコピー';
	@override String get resetToDefaultValue => '初期値に戻す';
	@override String get overrideByAccount => 'アカウントで上書き';
	@override String get untitled => '無題';
	@override String get noName => '名前はありません';
	@override String get skip => 'スキップ';
	@override String get restore => '復元';
	@override String get syncBetweenDevices => 'デバイス間で同期';
	@override String get preferenceSyncConflictTitle => 'サーバーに設定値が存在します';
	@override String get preferenceSyncConflictText => '同期が有効にされた設定項目は設定値をサーバーに保存しますが、この設定項目のサーバーに保存された設定値が見つかりました。どうしますか？';
	@override String get preferenceSyncConflictChoiceMerge => '統合する';
	@override String get preferenceSyncConflictChoiceServer => 'サーバーの設定値で上書き';
	@override String get preferenceSyncConflictChoiceDevice => 'デバイスの設定値で上書き';
	@override String get preferenceSyncConflictChoiceCancel => '同期の有効化をキャンセル';
	@override String get paste => 'ペースト';
	@override String get emojiPalette => '絵文字パレット';
	@override String get postForm => '投稿フォーム';
	@override String get textCount => '文字数';
	@override String get information => '情報';
	@override String get chat => 'チャット';
	@override String get directMessage => 'ダイレクトメッセージ';
	@override String get directMessage_short => 'メッセージ';
	@override String get migrateOldSettings => '旧設定情報を移行';
	@override String get migrateOldSettings_description => '通常これは自動で行われていますが、何らかの理由により上手く移行されなかった場合は手動で移行処理をトリガーできます。現在の設定情報は上書きされます。';
	@override String get compress => '圧縮';
	@override String get right => '右';
	@override String get bottom => '下';
	@override String get top => '上';
	@override String get embed => '埋め込み';
	@override String get settingsMigrating => '設定を移行しています。しばらくお待ちください... (後ほど、設定→その他→旧設定情報を移行 で手動で移行することもできます)';
	@override String get readonly => '読み取り専用';
	@override String get goToDeck => 'デッキへ戻る';
	@override String get federationJobs => '連合ジョブ';
	@override String get driveAboutTip => 'ドライブでは、過去にアップロードしたファイルの一覧が表示されます。<br>\nノートに添付する際に再利用したり、あとで投稿するファイルを予めアップロードしておくこともできます。<br>\n<b>ファイルを削除すると、今までそのファイルを使用した全ての場所(ノート、ページ、アバター、バナー等)からも見えなくなるので注意してください。</b><br>\nフォルダを作って整理することもできます。';
	@override String get scrollToClose => 'スクロールして閉じる';
	@override String get advice => 'アドバイス';
	@override String get realtimeMode => 'リアルタイムモード';
	@override String get turnItOn => 'オンにする';
	@override String get turnItOff => 'オフにする';
	@override String get emojiMute => '絵文字ミュート';
	@override String get emojiUnmute => '絵文字ミュート解除';
	@override String muteX({required Object x}) => '${x}をミュート';
	@override String unmuteX({required Object x}) => '${x}のミュートを解除';
	@override String get abort => '中止';
	@override String get tip => 'ヒントとコツ';
	@override String get redisplayAllTips => '全ての「ヒントとコツ」を再表示';
	@override String get hideAllTips => '全ての「ヒントとコツ」を非表示';
	@override String get defaultImageCompressionLevel => 'デフォルトの画像圧縮度';
	@override String get defaultImageCompressionLevel_description => '低くすると画質を保てますが、ファイルサイズは増加します。<br>高くするとファイルサイズを減らせますが、画質は低下します。';
	@override String get defaultCompressionLevel => 'デフォルトの圧縮度';
	@override String get defaultCompressionLevel_description => '低くすると品質を保てますが、ファイルサイズは増加します。<br>高くするとファイルサイズを減らせますが、品質は低下します。';
	@override String get inMinutes => '分';
	@override String get inDays => '日';
	@override String get safeModeEnabled => 'セーフモードが有効です';
	@override String get pluginsAreDisabledBecauseSafeMode => 'セーフモードが有効なため、プラグインはすべて無効化されています。';
	@override String get customCssIsDisabledBecauseSafeMode => 'セーフモードが有効なため、カスタムCSSは適用されていません。';
	@override String get themeIsDefaultBecauseSafeMode => 'セーフモードが有効な間はデフォルトのテーマが使用されます。セーフモードをオフにすると元に戻ります。';
	@override String get thankYouForTestingBeta => 'ベータ版の検証にご協力いただきありがとうございます！';
	@override String get createUserSpecifiedNote => 'ユーザー指定ノートを作成';
	@override String get schedulePost => '投稿を予約';
	@override String scheduleToPostOnX({required Object x}) => '${x}に投稿を予約します';
	@override String scheduledToPostOnX({required Object x}) => '${x}に投稿が予約されています';
	@override String get schedule => '予約';
	@override String get scheduled => '予約';
	@override String get widgets => 'ウィジェット';
	@override String get deviceInfo => 'デバイス情報';
	@override String get deviceInfoDescription => '技術的なお問い合わせの際に、以下の情報を併記すると問題の解決に役立つことがあります。';
	@override String get youAreAdmin => 'あなたは管理者です';
	@override String get frame => 'フレーム';
	@override String get presets => 'プリセット';
	@override String get zeroPadding => 'ゼロ埋め';
	@override String get nothingToConfigure => '設定項目はありません';
	@override late final _TranslationsMisskeyImageEditingJaJp imageEditing_ = _TranslationsMisskeyImageEditingJaJp._(_root);
	@override late final _TranslationsMisskeyImageFrameEditorJaJp imageFrameEditor_ = _TranslationsMisskeyImageFrameEditorJaJp._(_root);
	@override late final _TranslationsMisskeyCompressionJaJp compression_ = _TranslationsMisskeyCompressionJaJp._(_root);
	@override late final _TranslationsMisskeyOrderJaJp order_ = _TranslationsMisskeyOrderJaJp._(_root);
	@override late final _TranslationsMisskeyChatJaJp chat_ = _TranslationsMisskeyChatJaJp._(_root);
	@override late final _TranslationsMisskeyEmojiPaletteJaJp emojiPalette_ = _TranslationsMisskeyEmojiPaletteJaJp._(_root);
	@override late final _TranslationsMisskeySettingsJaJp settings_ = _TranslationsMisskeySettingsJaJp._(_root);
	@override late final _TranslationsMisskeyPreferencesProfileJaJp preferencesProfile_ = _TranslationsMisskeyPreferencesProfileJaJp._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupJaJp preferencesBackup_ = _TranslationsMisskeyPreferencesBackupJaJp._(_root);
	@override late final _TranslationsMisskeyAccountSettingsJaJp accountSettings_ = _TranslationsMisskeyAccountSettingsJaJp._(_root);
	@override late final _TranslationsMisskeyAbuseUserReportJaJp abuseUserReport_ = _TranslationsMisskeyAbuseUserReportJaJp._(_root);
	@override late final _TranslationsMisskeyDeliveryJaJp delivery_ = _TranslationsMisskeyDeliveryJaJp._(_root);
	@override late final _TranslationsMisskeyBubbleGameJaJp bubbleGame_ = _TranslationsMisskeyBubbleGameJaJp._(_root);
	@override late final _TranslationsMisskeyAnnouncementJaJp announcement_ = _TranslationsMisskeyAnnouncementJaJp._(_root);
	@override late final _TranslationsMisskeyInitialAccountSettingJaJp initialAccountSetting_ = _TranslationsMisskeyInitialAccountSettingJaJp._(_root);
	@override late final _TranslationsMisskeyInitialTutorialJaJp initialTutorial_ = _TranslationsMisskeyInitialTutorialJaJp._(_root);
	@override late final _TranslationsMisskeyTimelineDescriptionJaJp timelineDescription_ = _TranslationsMisskeyTimelineDescriptionJaJp._(_root);
	@override late final _TranslationsMisskeyServerRulesJaJp serverRules_ = _TranslationsMisskeyServerRulesJaJp._(_root);
	@override late final _TranslationsMisskeyServerSettingsJaJp serverSettings_ = _TranslationsMisskeyServerSettingsJaJp._(_root);
	@override late final _TranslationsMisskeyAccountMigrationJaJp accountMigration_ = _TranslationsMisskeyAccountMigrationJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsJaJp achievements_ = _TranslationsMisskeyAchievementsJaJp._(_root);
	@override late final _TranslationsMisskeyRoleJaJp role_ = _TranslationsMisskeyRoleJaJp._(_root);
	@override late final _TranslationsMisskeySensitiveMediaDetectionJaJp sensitiveMediaDetection_ = _TranslationsMisskeySensitiveMediaDetectionJaJp._(_root);
	@override late final _TranslationsMisskeyEmailUnavailableJaJp emailUnavailable_ = _TranslationsMisskeyEmailUnavailableJaJp._(_root);
	@override late final _TranslationsMisskeyFfVisibilityJaJp ffVisibility_ = _TranslationsMisskeyFfVisibilityJaJp._(_root);
	@override late final _TranslationsMisskeySignupJaJp signup_ = _TranslationsMisskeySignupJaJp._(_root);
	@override late final _TranslationsMisskeyAccountDeleteJaJp accountDelete_ = _TranslationsMisskeyAccountDeleteJaJp._(_root);
	@override late final _TranslationsMisskeyAdJaJp ad_ = _TranslationsMisskeyAdJaJp._(_root);
	@override late final _TranslationsMisskeyForgotPasswordJaJp forgotPassword_ = _TranslationsMisskeyForgotPasswordJaJp._(_root);
	@override late final _TranslationsMisskeyGalleryJaJp gallery_ = _TranslationsMisskeyGalleryJaJp._(_root);
	@override late final _TranslationsMisskeyEmailJaJp email_ = _TranslationsMisskeyEmailJaJp._(_root);
	@override late final _TranslationsMisskeyPluginJaJp plugin_ = _TranslationsMisskeyPluginJaJp._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupsJaJp preferencesBackups_ = _TranslationsMisskeyPreferencesBackupsJaJp._(_root);
	@override late final _TranslationsMisskeyRegistryJaJp registry_ = _TranslationsMisskeyRegistryJaJp._(_root);
	@override late final _TranslationsMisskeyAboutMisskeyJaJp aboutMisskey_ = _TranslationsMisskeyAboutMisskeyJaJp._(_root);
	@override late final _TranslationsMisskeyDisplayOfSensitiveMediaJaJp displayOfSensitiveMedia_ = _TranslationsMisskeyDisplayOfSensitiveMediaJaJp._(_root);
	@override late final _TranslationsMisskeyInstanceTickerJaJp instanceTicker_ = _TranslationsMisskeyInstanceTickerJaJp._(_root);
	@override late final _TranslationsMisskeyServerDisconnectedBehaviorJaJp serverDisconnectedBehavior_ = _TranslationsMisskeyServerDisconnectedBehaviorJaJp._(_root);
	@override late final _TranslationsMisskeyChannelJaJp channel_ = _TranslationsMisskeyChannelJaJp._(_root);
	@override late final _TranslationsMisskeyMenuDisplayJaJp menuDisplay_ = _TranslationsMisskeyMenuDisplayJaJp._(_root);
	@override late final _TranslationsMisskeyWordMuteJaJp wordMute_ = _TranslationsMisskeyWordMuteJaJp._(_root);
	@override late final _TranslationsMisskeyInstanceMuteJaJp instanceMute_ = _TranslationsMisskeyInstanceMuteJaJp._(_root);
	@override late final _TranslationsMisskeyThemeJaJp theme_ = _TranslationsMisskeyThemeJaJp._(_root);
	@override late final _TranslationsMisskeySfxJaJp sfx_ = _TranslationsMisskeySfxJaJp._(_root);
	@override late final _TranslationsMisskeySoundSettingsJaJp soundSettings_ = _TranslationsMisskeySoundSettingsJaJp._(_root);
	@override late final _TranslationsMisskeyAgoJaJp ago_ = _TranslationsMisskeyAgoJaJp._(_root);
	@override late final _TranslationsMisskeyTimeInJaJp timeIn_ = _TranslationsMisskeyTimeInJaJp._(_root);
	@override late final _TranslationsMisskeyTimeJaJp time_ = _TranslationsMisskeyTimeJaJp._(_root);
	@override late final _TranslationsMisskeyX2faJaJp x2fa_ = _TranslationsMisskeyX2faJaJp._(_root);
	@override late final _TranslationsMisskeyPermissionsJaJp permissions_ = _TranslationsMisskeyPermissionsJaJp._(_root);
	@override late final _TranslationsMisskeyAuthJaJp auth_ = _TranslationsMisskeyAuthJaJp._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesJaJp antennaSources_ = _TranslationsMisskeyAntennaSourcesJaJp._(_root);
	@override late final _TranslationsMisskeyWeekdayJaJp weekday_ = _TranslationsMisskeyWeekdayJaJp._(_root);
	@override late final _TranslationsMisskeyWidgetsJaJp widgets_ = _TranslationsMisskeyWidgetsJaJp._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsJaJp widgetOptions_ = _TranslationsMisskeyWidgetOptionsJaJp._(_root);
	@override late final _TranslationsMisskeyCwJaJp cw_ = _TranslationsMisskeyCwJaJp._(_root);
	@override late final _TranslationsMisskeyPollJaJp poll_ = _TranslationsMisskeyPollJaJp._(_root);
	@override late final _TranslationsMisskeyVisibilityJaJp visibility_ = _TranslationsMisskeyVisibilityJaJp._(_root);
	@override late final _TranslationsMisskeyPostFormJaJp postForm_ = _TranslationsMisskeyPostFormJaJp._(_root);
	@override late final _TranslationsMisskeyProfileJaJp profile_ = _TranslationsMisskeyProfileJaJp._(_root);
	@override late final _TranslationsMisskeyExportOrImportJaJp exportOrImport_ = _TranslationsMisskeyExportOrImportJaJp._(_root);
	@override late final _TranslationsMisskeyChartsJaJp charts_ = _TranslationsMisskeyChartsJaJp._(_root);
	@override late final _TranslationsMisskeyInstanceChartsJaJp instanceCharts_ = _TranslationsMisskeyInstanceChartsJaJp._(_root);
	@override late final _TranslationsMisskeyTimelinesJaJp timelines_ = _TranslationsMisskeyTimelinesJaJp._(_root);
	@override late final _TranslationsMisskeyPlayJaJp play_ = _TranslationsMisskeyPlayJaJp._(_root);
	@override late final _TranslationsMisskeyPagesJaJp pages_ = _TranslationsMisskeyPagesJaJp._(_root);
	@override late final _TranslationsMisskeyRelayStatusJaJp relayStatus_ = _TranslationsMisskeyRelayStatusJaJp._(_root);
	@override late final _TranslationsMisskeyNotificationJaJp notification_ = _TranslationsMisskeyNotificationJaJp._(_root);
	@override late final _TranslationsMisskeyDeckJaJp deck_ = _TranslationsMisskeyDeckJaJp._(_root);
	@override late final _TranslationsMisskeyDialogJaJp dialog_ = _TranslationsMisskeyDialogJaJp._(_root);
	@override late final _TranslationsMisskeyDisabledTimelineJaJp disabledTimeline_ = _TranslationsMisskeyDisabledTimelineJaJp._(_root);
	@override late final _TranslationsMisskeyDrivecleanerJaJp drivecleaner_ = _TranslationsMisskeyDrivecleanerJaJp._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsJaJp webhookSettings_ = _TranslationsMisskeyWebhookSettingsJaJp._(_root);
	@override late final _TranslationsMisskeyAbuseReportJaJp abuseReport_ = _TranslationsMisskeyAbuseReportJaJp._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesJaJp moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesJaJp._(_root);
	@override late final _TranslationsMisskeyFileViewerJaJp fileViewer_ = _TranslationsMisskeyFileViewerJaJp._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerJaJp externalResourceInstaller_ = _TranslationsMisskeyExternalResourceInstallerJaJp._(_root);
	@override late final _TranslationsMisskeyDataSaverJaJp dataSaver_ = _TranslationsMisskeyDataSaverJaJp._(_root);
	@override late final _TranslationsMisskeyHemisphereJaJp hemisphere_ = _TranslationsMisskeyHemisphereJaJp._(_root);
	@override late final _TranslationsMisskeyReversiJaJp reversi_ = _TranslationsMisskeyReversiJaJp._(_root);
	@override late final _TranslationsMisskeyOfflineScreenJaJp offlineScreen_ = _TranslationsMisskeyOfflineScreenJaJp._(_root);
	@override late final _TranslationsMisskeyUrlPreviewSettingJaJp urlPreviewSetting_ = _TranslationsMisskeyUrlPreviewSettingJaJp._(_root);
	@override late final _TranslationsMisskeyMediaControlsJaJp mediaControls_ = _TranslationsMisskeyMediaControlsJaJp._(_root);
	@override late final _TranslationsMisskeyContextMenuJaJp contextMenu_ = _TranslationsMisskeyContextMenuJaJp._(_root);
	@override late final _TranslationsMisskeyGridComponentJaJp gridComponent_ = _TranslationsMisskeyGridComponentJaJp._(_root);
	@override late final _TranslationsMisskeyRoleSelectDialogJaJp roleSelectDialog_ = _TranslationsMisskeyRoleSelectDialogJaJp._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerJaJp customEmojisManager_ = _TranslationsMisskeyCustomEmojisManagerJaJp._(_root);
	@override late final _TranslationsMisskeyEmbedCodeGenJaJp embedCodeGen_ = _TranslationsMisskeyEmbedCodeGenJaJp._(_root);
	@override late final _TranslationsMisskeySelfXssPreventionJaJp selfXssPrevention_ = _TranslationsMisskeySelfXssPreventionJaJp._(_root);
	@override late final _TranslationsMisskeyFollowRequestJaJp followRequest_ = _TranslationsMisskeyFollowRequestJaJp._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsJaJp remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsJaJp._(_root);
	@override late final _TranslationsMisskeyCaptchaJaJp captcha_ = _TranslationsMisskeyCaptchaJaJp._(_root);
	@override late final _TranslationsMisskeyBootErrorsJaJp bootErrors_ = _TranslationsMisskeyBootErrorsJaJp._(_root);
	@override late final _TranslationsMisskeySearchJaJp search_ = _TranslationsMisskeySearchJaJp._(_root);
	@override late final _TranslationsMisskeyServerSetupWizardJaJp serverSetupWizard_ = _TranslationsMisskeyServerSetupWizardJaJp._(_root);
	@override late final _TranslationsMisskeyUploaderJaJp uploader_ = _TranslationsMisskeyUploaderJaJp._(_root);
	@override late final _TranslationsMisskeyClientPerformanceIssueTipJaJp clientPerformanceIssueTip_ = _TranslationsMisskeyClientPerformanceIssueTipJaJp._(_root);
	@override late final _TranslationsMisskeyClipJaJp clip_ = _TranslationsMisskeyClipJaJp._(_root);
	@override late final _TranslationsMisskeyUserListsJaJp userLists_ = _TranslationsMisskeyUserListsJaJp._(_root);
	@override String get watermark => 'ウォーターマーク';
	@override String get defaultPreset => 'デフォルトのプリセット';
	@override late final _TranslationsMisskeyWatermarkEditorJaJp watermarkEditor_ = _TranslationsMisskeyWatermarkEditorJaJp._(_root);
	@override late final _TranslationsMisskeyImageEffectorJaJp imageEffector_ = _TranslationsMisskeyImageEffectorJaJp._(_root);
	@override String get drafts => '下書き';
	@override late final _TranslationsMisskeyDraftsJaJp drafts_ = _TranslationsMisskeyDraftsJaJp._(_root);
	@override String get qr => '二次元コード';
	@override late final _TranslationsMisskeyQrJaJp qr_ = _TranslationsMisskeyQrJaJp._(_root);
}

// Path: misskeyIO
class _TranslationsMisskeyIOJaJp extends TranslationsMisskeyIOEnUs {
	_TranslationsMisskeyIOJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyIOSkebStatusJaJp skebStatus_ = _TranslationsMisskeyIOSkebStatusJaJp._(_root);
}

// Path: misskey.imageEditing_
class _TranslationsMisskeyImageEditingJaJp extends TranslationsMisskeyImageEditingEnUs {
	_TranslationsMisskeyImageEditingJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyImageEditingVarsJaJp vars_ = _TranslationsMisskeyImageEditingVarsJaJp._(_root);
}

// Path: misskey.imageFrameEditor_
class _TranslationsMisskeyImageFrameEditorJaJp extends TranslationsMisskeyImageFrameEditorEnUs {
	_TranslationsMisskeyImageFrameEditorJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'フレームの編集';
	@override String get tip => '画像にフレームやメタデータを含んだラベルを追加して装飾できます。';
	@override String get header => 'ヘッダー';
	@override String get footer => 'フッター';
	@override String get borderThickness => 'フチの幅';
	@override String get labelThickness => 'ラベルの幅';
	@override String get labelScale => 'ラベルのスケール';
	@override String get centered => '中央揃え';
	@override String get captionMain => 'キャプション(大)';
	@override String get captionSub => 'キャプション(小)';
	@override String get availableVariables => '利用可能な変数';
	@override String get withQrCode => '二次元コード';
	@override String get backgroundColor => '背景色';
	@override String get textColor => '文字色';
	@override String get font => 'フォント';
	@override String get fontSerif => 'セリフ';
	@override String get fontSansSerif => 'サンセリフ';
	@override String get quitWithoutSaveConfirm => '保存せずに終了しますか？';
	@override String get failedToLoadImage => '画像の読み込みに失敗しました';
}

// Path: misskey.compression_
class _TranslationsMisskeyCompressionJaJp extends TranslationsMisskeyCompressionEnUs {
	_TranslationsMisskeyCompressionJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCompressionQualityJaJp quality_ = _TranslationsMisskeyCompressionQualityJaJp._(_root);
	@override late final _TranslationsMisskeyCompressionSizeJaJp size_ = _TranslationsMisskeyCompressionSizeJaJp._(_root);
}

// Path: misskey.order_
class _TranslationsMisskeyOrderJaJp extends TranslationsMisskeyOrderEnUs {
	_TranslationsMisskeyOrderJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get newest => '新しい順';
	@override String get oldest => '古い順';
}

// Path: misskey.chat_
class _TranslationsMisskeyChatJaJp extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get messages => 'メッセージ';
	@override String get noMessagesYet => 'まだメッセージはありません';
	@override String get newMessage => '新しいメッセージ';
	@override String get individualChat => '個別';
	@override String get individualChat_description => '特定ユーザーと個別にメッセージのやりとりができます。';
	@override String get roomChat => 'グループ';
	@override String get roomChat_description => '複数人でメッセージのやりとりができます。\nまた、個別のメッセージを許可していないユーザーとでも、相手が受け入れればやりとりできます。';
	@override String get createRoom => 'グループを作成';
	@override String get inviteUserToChat => 'ユーザーを招待してメッセージを送信しましょう';
	@override String get yourRooms => '作成したグループ';
	@override String get joiningRooms => '参加中のグループ';
	@override String get invitations => '招待';
	@override String get noInvitations => '招待はありません';
	@override String get history => '履歴';
	@override String get noHistory => '履歴はありません';
	@override String get noRooms => 'グループはありません';
	@override String get inviteUser => 'ユーザーを招待';
	@override String get sentInvitations => '送信した招待';
	@override String get join => '参加';
	@override String get ignore => '無視';
	@override String get leave => 'グループから退出';
	@override String get members => 'メンバー';
	@override String get searchMessages => 'メッセージを検索';
	@override String get home => 'ホーム';
	@override String get send => '送信';
	@override String get newline => '改行';
	@override String get muteThisRoom => 'このグループをミュート';
	@override String get deleteRoom => 'グループを削除';
	@override String get chatNotAvailableForThisAccountOrServer => 'このサーバー、またはこのアカウントでダイレクトメッセージは有効化されていません。';
	@override String get chatIsReadOnlyForThisAccountOrServer => 'このサーバー、またはこのアカウントでダイレクトメッセージは読み取り専用となっています。新たに書き込んだり、グループを作成・参加したりすることはできません。';
	@override String get chatNotAvailableInOtherAccount => '相手のアカウントでダイレクトメッセージが使えない状態になっています。';
	@override String get cannotChatWithTheUser => 'このユーザーとのダイレクトメッセージを開始できません';
	@override String get cannotChatWithTheUser_description => 'ダイレクトメッセージが使えない状態になっているか、相手がダイレクトメッセージを開放していません。';
	@override String get youAreNotAMemberOfThisRoomButInvited => 'あなたはこのグループの参加者ではありませんが、招待が届いています。参加するには、招待を承認してください。';
	@override String get doYouAcceptInvitation => '招待を承認しますか？';
	@override String get chatWithThisUser => 'ダイレクトメッセージ';
	@override String get thisUserAllowsChatOnlyFromFollowers => 'このユーザーはフォロワーからのみメッセージを受け付けています。';
	@override String get thisUserAllowsChatOnlyFromFollowing => 'このユーザーは、このユーザーがフォローしているユーザーからのみメッセージを受け付けています。';
	@override String get thisUserAllowsChatOnlyFromMutualFollowing => 'このユーザーは相互フォローのユーザーからのみメッセージを受け付けています。';
	@override String get thisUserNotAllowedChatAnyone => 'このユーザーは誰からもメッセージを受け付けていません。';
	@override String get chatAllowedUsers => 'メッセージを許可する相手';
	@override String get chatAllowedUsers_note => '自分からメッセージを送った相手とはこの設定に関わらずメッセージの送受信が可能です。';
	@override late final _TranslationsMisskeyChatChatAllowedUsersJaJp chatAllowedUsers_ = _TranslationsMisskeyChatChatAllowedUsersJaJp._(_root);
}

// Path: misskey.emojiPalette_
class _TranslationsMisskeyEmojiPaletteJaJp extends TranslationsMisskeyEmojiPaletteEnUs {
	_TranslationsMisskeyEmojiPaletteJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get palettes => 'パレット';
	@override String get enableSyncBetweenDevicesForPalettes => 'パレットのデバイス間同期を有効にする';
	@override String get paletteForMain => 'メインで使用するパレット';
	@override String get paletteForReaction => 'リアクションで使用するパレット';
}

// Path: misskey.settings_
class _TranslationsMisskeySettingsJaJp extends TranslationsMisskeySettingsEnUs {
	_TranslationsMisskeySettingsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get driveBanner => 'ドライブの管理と設定、使用量の確認、ファイルをアップロードする際の設定を行えます。';
	@override String get pluginBanner => 'プラグインを利用するとクライアントの機能を拡張することができます。プラグインのインストール、個別の設定と管理が行えます。';
	@override String get notificationsBanner => 'サーバーからの受信する通知の種類と範囲や、プッシュ通知の設定が行えます。';
	@override String get api => 'API';
	@override String get webhook => 'Webhook';
	@override String get serviceConnection => 'サービス連携';
	@override String get serviceConnectionBanner => '外部のアプリ・サービスと連携するためのアクセストークンやWebhookの管理と設定が行えます。';
	@override String get accountData => 'アカウントのデータ';
	@override String get accountDataBanner => 'アカウントデータのアーカイブをエクスポート/インポートして管理できます。';
	@override String get muteAndBlockBanner => '非表示にするコンテンツの設定や、特定のユーザーからのアクションを制限する設定と管理を行えます。';
	@override String get accessibilityBanner => 'クライアントの視覚や動作に関するパーソナライズを行い、より最適に使用できるように設定できます。';
	@override String get privacyBanner => 'コンテンツの公開範囲、見つけやすさ、フォローの承認制などアカウントのプライバシーに関する設定を行えます。';
	@override String get securityBanner => 'パスワード、ログイン方法、認証アプリ、パスキーなどアカウントのセキュリティに関する設定を行えます。';
	@override String get preferencesBanner => '好みに応じた、クライアントの全体的な動作の設定が行えます。';
	@override String get appearanceBanner => '好みに応じた、クライアントの見た目・表示方法に関する設定が行えます。';
	@override String get soundsBanner => 'クライアントで再生するサウンドの設定が行えます。';
	@override String get timelineAndNote => 'タイムラインとノート';
	@override String get makeEveryTextElementsSelectable => '全てのテキスト要素を選択可能にする';
	@override String get makeEveryTextElementsSelectable_description => '有効にすると、一部のシチュエーションでのユーザビリティが低下する場合があります。';
	@override String get useStickyIcons => 'アイコンをスクロールに追従させる';
	@override String get enableHighQualityImagePlaceholders => '高品質な画像のプレースホルダを表示';
	@override String get uiAnimations => 'UIのアニメーション';
	@override String get showNavbarSubButtons => 'ナビゲーションバーに副ボタンを表示';
	@override String get ifOn => 'オンのとき';
	@override String get ifOff => 'オフのとき';
	@override String get enableSyncThemesBetweenDevices => 'デバイス間でインストールしたテーマを同期';
	@override String get enablePullToRefresh => 'ひっぱって更新';
	@override String get enablePullToRefresh_description => 'マウスでは、ホイールを押し込みながらドラッグします。';
	@override String get realtimeMode_description => 'サーバーと接続を確立し、リアルタイムでコンテンツを更新します。通信量とバッテリーの消費が多くなる場合があります。';
	@override String get contentsUpdateFrequency => 'コンテンツの取得頻度';
	@override String get contentsUpdateFrequency_description => '高いほどリアルタイムにコンテンツが更新されますが、パフォーマンスが低下し、通信量とバッテリーの消費が多くなります。';
	@override String get contentsUpdateFrequency_description2 => 'リアルタイムモードがオンのときは、この設定に関わらずリアルタイムでコンテンツが更新されます。';
	@override String get showUrlPreview => 'URLプレビューを表示する';
	@override String get showAvailableReactionsFirstInNote => '利用できるリアクションを先頭に表示';
	@override String get showPageTabBarBottom => 'ページのタブバーを下部に表示';
	@override String get emojiPaletteBanner => '絵文字ピッカーに固定表示するプリセットをパレットとして登録したり、ピッカーの表示方法をカスタマイズしたりできます。';
	@override String get enableAnimatedImages => 'アニメーション画像を有効にする';
	@override String get settingsPersistence_title => '設定の永続化';
	@override String get settingsPersistence_description1 => '設定の永続化を有効にすると、設定情報が失われるのを防止できます。';
	@override String get settingsPersistence_description2 => '環境によっては有効化できない場合があります。';
	@override late final _TranslationsMisskeySettingsChatJaJp chat_ = _TranslationsMisskeySettingsChatJaJp._(_root);
}

// Path: misskey.preferencesProfile_
class _TranslationsMisskeyPreferencesProfileJaJp extends TranslationsMisskeyPreferencesProfileEnUs {
	_TranslationsMisskeyPreferencesProfileJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get profileName => 'プロファイル名';
	@override String get profileNameDescription => 'このデバイスを識別する名前を設定してください。';
	@override String get profileNameDescription2 => '例: 「メインPC」、「スマホ」など';
	@override String get manageProfiles => 'プロファイルの管理';
	@override String get shareSameProfileBetweenDevicesIsNotRecommended => '複数のデバイスで同一のプロファイルを共有することは推奨しません。';
	@override String get useSyncBetweenDevicesOptionIfYouWantToSyncSetting => '複数のデバイスで同期したい設定項目が存在する場合は、個別に「複数のデバイスで同期」オプションを有効にしてください。';
}

// Path: misskey.preferencesBackup_
class _TranslationsMisskeyPreferencesBackupJaJp extends TranslationsMisskeyPreferencesBackupEnUs {
	_TranslationsMisskeyPreferencesBackupJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get autoBackup => '自動バックアップ';
	@override String get restoreFromBackup => 'バックアップから復元';
	@override String get noBackupsFoundTitle => 'バックアップが見つかりませんでした';
	@override String get noBackupsFoundDescription => '自動で作成されたバックアップは見つかりませんでしたが、バックアップファイルを手動で保存している場合、それをインポートして復元することはできます。';
	@override String get selectBackupToRestore => '復元するバックアップを選択してください';
	@override String get youNeedToNameYourProfileToEnableAutoBackup => '自動バックアップを有効にするにはプロファイル名の設定が必要です。';
	@override String get autoPreferencesBackupIsNotEnabledForThisDevice => 'このデバイスで設定の自動バックアップは有効になっていません。';
	@override String get backupFound => '設定のバックアップが見つかりました';
	@override String get forceBackup => '設定の強制バックアップ';
}

// Path: misskey.accountSettings_
class _TranslationsMisskeyAccountSettingsJaJp extends TranslationsMisskeyAccountSettingsEnUs {
	_TranslationsMisskeyAccountSettingsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get requireSigninToViewContents => 'コンテンツの表示にログインを必須にする';
	@override String get requireSigninToViewContentsDescription1 => 'あなたが作成した全てのノートなどのコンテンツを表示するのにログインを必須にします。クローラーに情報が収集されるのを防ぐ効果が期待できます。';
	@override String get requireSigninToViewContentsDescription2 => 'URLプレビュー(OGP)、Webページへの埋め込み、ノートの引用に対応していないサーバーからの表示も不可になります。';
	@override String get requireSigninToViewContentsDescription3 => 'リモートサーバーに連合されたコンテンツでは、これらの制限が適用されない場合があります。';
	@override String get makeNotesFollowersOnlyBefore => '過去のノートをフォロワーのみ表示可能にする';
	@override String get makeNotesFollowersOnlyBeforeDescription => 'この機能が有効になっている間、設定された日時より過去、または設定された時間を経過しているノートがフォロワーのみ表示可能になります。無効に戻すと、ノートの公開状態も元に戻ります。';
	@override String get makeNotesHiddenBefore => '過去のノートを非公開化する';
	@override String get makeNotesHiddenBeforeDescription => 'この機能が有効になっている間、設定された日時より過去、または設定された時間を経過しているノートが自分のみ表示可能(非公開化)になります。無効に戻すと、ノートの公開状態も元に戻ります。';
	@override String get mayNotEffectForFederatedNotes => 'リモートサーバーに連合されたノートには効果が及ばない場合があります。';
	@override String get mayNotEffectSomeSituations => 'これらの制限は簡易的なものです。リモートサーバーでの閲覧やモデレーション時など、一部のシチュエーションでは適用されない場合があります。';
	@override String get notesHavePassedSpecifiedPeriod => '指定した時間を経過しているノート';
	@override String get notesOlderThanSpecifiedDateAndTime => '指定した日時より前のノート';
}

// Path: misskey.abuseUserReport_
class _TranslationsMisskeyAbuseUserReportJaJp extends TranslationsMisskeyAbuseUserReportEnUs {
	_TranslationsMisskeyAbuseUserReportJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get forward => '転送';
	@override String get forwardDescription => '匿名のシステムアカウントとして、リモートサーバーに通報を転送します。';
	@override String get resolve => '解決';
	@override String get accept => '是認';
	@override String get reject => '否認';
	@override String get resolveTutorial => '内容が正当である通報に対応した場合は「是認」を選択し、肯定的にケースが解決されたことをマークします。\n内容が正当でない通報の場合は「否認」を選択し、否定的にケースが解決されたことをマークします。';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryJaJp extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get status => '配信状態';
	@override String get stop => '配信停止';
	@override String get resume => '配信再開';
	@override late final _TranslationsMisskeyDeliveryTypeJaJp type_ = _TranslationsMisskeyDeliveryTypeJaJp._(_root);
}

// Path: misskey.bubbleGame_
class _TranslationsMisskeyBubbleGameJaJp extends TranslationsMisskeyBubbleGameEnUs {
	_TranslationsMisskeyBubbleGameJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => '遊び方';
	@override String get hold => 'ホールド';
	@override late final _TranslationsMisskeyBubbleGameScoreJaJp score_ = _TranslationsMisskeyBubbleGameScoreJaJp._(_root);
	@override late final _TranslationsMisskeyBubbleGameHowToPlayJaJp howToPlay_ = _TranslationsMisskeyBubbleGameHowToPlayJaJp._(_root);
}

// Path: misskey.announcement_
class _TranslationsMisskeyAnnouncementJaJp extends TranslationsMisskeyAnnouncementEnUs {
	_TranslationsMisskeyAnnouncementJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyInitialAccountSettingJaJp extends TranslationsMisskeyInitialAccountSettingEnUs {
	_TranslationsMisskeyInitialAccountSettingJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyInitialTutorialJaJp extends TranslationsMisskeyInitialTutorialEnUs {
	_TranslationsMisskeyInitialTutorialJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'チュートリアルを見る';
	@override String get title => 'チュートリアル';
	@override String get wellDone => 'よくできました';
	@override String get skipAreYouSure => 'チュートリアルを終了しますか？';
	@override late final _TranslationsMisskeyInitialTutorialLandingJaJp landing_ = _TranslationsMisskeyInitialTutorialLandingJaJp._(_root);
	@override late final _TranslationsMisskeyInitialTutorialNoteJaJp note_ = _TranslationsMisskeyInitialTutorialNoteJaJp._(_root);
	@override late final _TranslationsMisskeyInitialTutorialReactionJaJp reaction_ = _TranslationsMisskeyInitialTutorialReactionJaJp._(_root);
	@override late final _TranslationsMisskeyInitialTutorialTimelineJaJp timeline_ = _TranslationsMisskeyInitialTutorialTimelineJaJp._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteJaJp postNote_ = _TranslationsMisskeyInitialTutorialPostNoteJaJp._(_root);
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveJaJp howToMakeAttachmentsSensitive_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveJaJp._(_root);
	@override late final _TranslationsMisskeyInitialTutorialDoneJaJp done_ = _TranslationsMisskeyInitialTutorialDoneJaJp._(_root);
}

// Path: misskey.timelineDescription_
class _TranslationsMisskeyTimelineDescriptionJaJp extends TranslationsMisskeyTimelineDescriptionEnUs {
	_TranslationsMisskeyTimelineDescriptionJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get home => 'ホームタイムラインでは、あなたがフォローしているアカウントの投稿を見られます。';
	@override String get local => 'ローカルタイムラインでは、このサーバーにいるユーザー全員の投稿を見られます。';
	@override String get social => 'ソーシャルタイムラインには、ホームタイムラインとローカルタイムラインの投稿が両方表示されます。';
	@override String get global => 'グローバルタイムラインでは、接続している他のすべてのサーバーからの投稿を見られます。';
}

// Path: misskey.serverRules_
class _TranslationsMisskeyServerRulesJaJp extends TranslationsMisskeyServerRulesEnUs {
	_TranslationsMisskeyServerRulesJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get description => '新規登録前に表示する、サーバーの簡潔なルールを設定します。内容は利用規約の要約とすることを推奨します。';
}

// Path: misskey.serverSettings_
class _TranslationsMisskeyServerSettingsJaJp extends TranslationsMisskeyServerSettingsEnUs {
	_TranslationsMisskeyServerSettingsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
	@override String get reactionsBufferingDescription => '有効にすると、リアクション作成時のパフォーマンスが大幅に向上し、データベースへの負荷を軽減することが可能です。ただし、Redisのメモリ使用量は増加します。';
	@override String get remoteNotesCleaning => 'リモート投稿の自動クリーニング';
	@override String get remoteNotesCleaning_description => '有効にすると、一定期間経過したリモートの投稿を定期的にクリーンアップしてデータベースの肥大化を抑制します。';
	@override String get remoteNotesCleaningMaxProcessingDuration => '最大クリーニング処理継続時間';
	@override String get remoteNotesCleaningExpiryDaysForEachNotes => '最低ノート保持日数';
	@override String get inquiryUrl => '問い合わせ先URL';
	@override String get inquiryUrlDescription => 'サーバー運営者へのお問い合わせフォームのURLや、運営者の連絡先等が記載されたWebページのURLを指定します。';
	@override String get openRegistration => 'アカウントの作成をオープンにする';
	@override String get openRegistrationWarning => '登録を開放することはリスクが伴います。サーバーを常に監視し、トラブルが発生した際にすぐに対応できる体制がある場合のみオンにすることを推奨します。';
	@override String get thisSettingWillAutomaticallyOffWhenModeratorsInactive => '一定期間モデレーターのアクティビティが検出されなかった場合、スパム防止のためこの設定は自動でオフになります。';
	@override String get deliverSuspendedSoftware => '配信停止中のソフトウェア';
	@override String get deliverSuspendedSoftwareDescription => '脆弱性などの理由で、サーバーのソフトウェアの名前及びバージョンの範囲を指定して配信を停止できます。このバージョン情報はサーバーが提供したものであり、信頼性は保証されません。バージョン指定には semver の範囲指定が使用できますが、>= 2024.3.1 と指定すると 2024.3.1-custom.0 のようなカスタムバージョンが含まれないため、>= 2024.3.1-0 のように prerelease の指定を行うことを推奨します。';
	@override String get singleUserMode => 'お一人様モード';
	@override String get singleUserMode_description => 'このサーバーを利用するのが自分だけの場合、このモードを有効にすることで動作が最適化されます。';
	@override String get signToActivityPubGet => 'GETリクエストに署名する';
	@override String get signToActivityPubGet_description => '通常は有効にしてください。連合の通信に関する問題がある場合に、無効にすると改善することがありますが、逆にサーバーによっては通信が不可になることがあります。';
	@override String get proxyRemoteFiles => 'リモートファイルをプロキシする';
	@override String get proxyRemoteFiles_description => '有効にすると、リモートのファイルをプロキシして提供します。画像のサムネイル生成やユーザーのプライバシー保護に役立ちます。';
	@override String get allowExternalApRedirect => 'ActivityPub経由の照会にリダイレクトを許可する';
	@override String get allowExternalApRedirect_description => '有効にすると、他のサーバーがこのサーバーを通して第三者のコンテンツを照会することが可能になりますが、コンテンツのなりすましが発生する可能性があります。';
	@override String get userGeneratedContentsVisibilityForVisitor => '非利用者に対するユーザー作成コンテンツの公開範囲';
	@override String get userGeneratedContentsVisibilityForVisitor_description => 'モデレーションが行き届きにくい不適切なリモートコンテンツなどが、自サーバー経由で図らずもインターネットに公開されてしまうことによるトラブル防止などに役立ちます。';
	@override String get userGeneratedContentsVisibilityForVisitor_description2 => 'サーバーで受信したリモートのコンテンツを含め、サーバー内の全てのコンテンツを無条件でインターネットに公開することはリスクが伴います。特に、分散型の特性を知らない閲覧者にとっては、リモートのコンテンツであってもサーバー内で作成されたコンテンツであると誤って認識してしまう可能性があるため、注意が必要です。';
	@override String get restartServerSetupWizardConfirm_title => 'サーバーの初期設定ウィザードをやり直しますか？';
	@override String get restartServerSetupWizardConfirm_text => '現在の一部の設定はリセットされます。';
	@override String get entrancePageStyle => 'エントランスページのスタイル';
	@override String get showTimelineForVisitor => 'タイムラインを表示する';
	@override String get showActivitiesForVisitor => 'アクティビティを表示する';
	@override late final _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorJaJp userGeneratedContentsVisibilityForVisitor_ = _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorJaJp._(_root);
}

// Path: misskey.accountMigration_
class _TranslationsMisskeyAccountMigrationJaJp extends TranslationsMisskeyAccountMigrationEnUs {
	_TranslationsMisskeyAccountMigrationJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyAchievementsJaJp extends TranslationsMisskeyAchievementsEnUs {
	_TranslationsMisskeyAchievementsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => '獲得日時';
	@override late final _TranslationsMisskeyAchievementsTypesJaJp types_ = _TranslationsMisskeyAchievementsTypesJaJp._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRoleJaJp extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRoleJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
	@override String get preserveAssignmentOnMoveAccount => 'アサイン状態を移行先アカウントにも引き継ぐ';
	@override String get preserveAssignmentOnMoveAccount_description => 'オンにすると、このロールが付与されたアカウントが移行された際に、移行先アカウントにもこのロールが引き継がれるようになります。';
	@override String get canEditMembersByModerator => 'モデレーターのメンバー編集を許可';
	@override String get descriptionOfCanEditMembersByModerator => 'オンにすると、管理者に加えてモデレーターもこのロールへユーザーをアサイン/アサイン解除できるようになります。オフにすると管理者のみが行えます。';
	@override String get priority => '優先度';
	@override late final _TranslationsMisskeyRolePriorityJaJp priority_ = _TranslationsMisskeyRolePriorityJaJp._(_root);
	@override late final _TranslationsMisskeyRoleOptionsJaJp options_ = _TranslationsMisskeyRoleOptionsJaJp._(_root);
	@override late final _TranslationsMisskeyRoleConditionJaJp condition_ = _TranslationsMisskeyRoleConditionJaJp._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _TranslationsMisskeySensitiveMediaDetectionJaJp extends TranslationsMisskeySensitiveMediaDetectionEnUs {
	_TranslationsMisskeySensitiveMediaDetectionJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyEmailUnavailableJaJp extends TranslationsMisskeyEmailUnavailableEnUs {
	_TranslationsMisskeyEmailUnavailableJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get used => '既に使用されています';
	@override String get format => '形式が正しくありません';
	@override String get disposable => '恒久的に使用可能なアドレスではありません';
	@override String get mx => '正しいメールサーバーではありません';
	@override String get smtp => 'メールサーバーが応答しません';
	@override String get banned => 'このメールアドレスでは登録できません';
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilityJaJp extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilityJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get public => '公開';
	@override String get followers => 'フォロワーだけに公開';
	@override String get private => '非公開';
}

// Path: misskey.signup_
class _TranslationsMisskeySignupJaJp extends TranslationsMisskeySignupEnUs {
	_TranslationsMisskeySignupJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'ほとんど完了です';
	@override String get emailAddressInfo => 'あなたが使っているメールアドレスを入力してください。メールアドレスが公開されることはありません。';
	@override String emailSent({required Object email}) => '入力されたメールアドレス(${email})宛に確認のメールが送信されました。メールに記載されたリンクにアクセスすると、アカウントの作成が完了します。メールに記載されているリンクの有効期限は30分です。';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeleteJaJp extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeleteJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'アカウントの削除';
	@override String get mayTakeTime => 'アカウントの削除は負荷のかかる処理であるため、作成したコンテンツの数やアップロードしたファイルの数が多いと完了までに時間がかかることがあります。';
	@override String get sendEmail => 'アカウントの削除が完了する際は、登録してあったメールアドレス宛に通知を送信します。';
	@override String get requestAccountDelete => 'アカウント削除をリクエスト';
	@override String get started => '削除処理が開始されました。';
	@override String get inProgress => '削除が進行中';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdJaJp extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyForgotPasswordJaJp extends TranslationsMisskeyForgotPasswordEnUs {
	_TranslationsMisskeyForgotPasswordJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'アカウントに登録したメールアドレスを入力してください。そのアドレス宛てに、パスワードリセット用のリンクが送信されます。';
	@override String get ifNoEmail => 'メールアドレスを登録していない場合は、管理者までお問い合わせください。';
	@override String get contactAdmin => 'このサーバーではメールがサポートされていないため、パスワードリセットを行う場合は管理者までお問い合わせください。';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryJaJp extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get my => '自分の投稿';
	@override String get liked => 'いいねした投稿';
	@override String get like => 'いいね！';
	@override String get unlike => 'いいね解除';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailJaJp extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowJaJp follow_ = _TranslationsMisskeyEmailFollowJaJp._(_root);
	@override late final _TranslationsMisskeyEmailReceiveFollowRequestJaJp receiveFollowRequest_ = _TranslationsMisskeyEmailReceiveFollowRequestJaJp._(_root);
}

// Path: misskey.plugin_
class _TranslationsMisskeyPluginJaJp extends TranslationsMisskeyPluginEnUs {
	_TranslationsMisskeyPluginJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get install => 'プラグインのインストール';
	@override String get installWarn => '信頼できないプラグインはインストールしないでください。';
	@override String get manage => 'プラグインの管理';
	@override String get viewSource => 'ソースを表示';
	@override String get viewLog => 'ログを表示';
}

// Path: misskey.preferencesBackups_
class _TranslationsMisskeyPreferencesBackupsJaJp extends TranslationsMisskeyPreferencesBackupsEnUs {
	_TranslationsMisskeyPreferencesBackupsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyRegistryJaJp extends TranslationsMisskeyRegistryEnUs {
	_TranslationsMisskeyRegistryJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get scope => 'スコープ';
	@override String get key => 'キー';
	@override String get keys => 'キー';
	@override String get domain => 'ドメイン';
	@override String get createKey => 'キーを作成';
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeyJaJp extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeyJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyDisplayOfSensitiveMediaJaJp extends TranslationsMisskeyDisplayOfSensitiveMediaEnUs {
	_TranslationsMisskeyDisplayOfSensitiveMediaJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get respect => 'センシティブ設定されたメディアを隠す';
	@override String get ignore => 'センシティブ設定されたメディアを隠さない';
	@override String get force => '常にメディアを隠す';
}

// Path: misskey.instanceTicker_
class _TranslationsMisskeyInstanceTickerJaJp extends TranslationsMisskeyInstanceTickerEnUs {
	_TranslationsMisskeyInstanceTickerJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get none => '表示しない';
	@override String get remote => 'リモートユーザーに表示';
	@override String get always => '常に表示';
}

// Path: misskey.serverDisconnectedBehavior_
class _TranslationsMisskeyServerDisconnectedBehaviorJaJp extends TranslationsMisskeyServerDisconnectedBehaviorEnUs {
	_TranslationsMisskeyServerDisconnectedBehaviorJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get reload => '自動でリロード';
	@override String get dialog => 'ダイアログで警告';
	@override String get quiet => '控えめに警告';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelJaJp extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyMenuDisplayJaJp extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplayJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get sideFull => '横';
	@override String get sideIcon => '横(アイコン)';
	@override String get top => '上部';
	@override String get hide => '隠す';
}

// Path: misskey.wordMute_
class _TranslationsMisskeyWordMuteJaJp extends TranslationsMisskeyWordMuteEnUs {
	_TranslationsMisskeyWordMuteJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'ミュートするワード';
	@override String get muteWordsDescription => 'スペースで区切るとAND指定になり、改行で区切るとOR指定になります。';
	@override String get muteWordsDescription2 => 'キーワードをスラッシュで囲むと正規表現になります。';
}

// Path: misskey.instanceMute_
class _TranslationsMisskeyInstanceMuteJaJp extends TranslationsMisskeyInstanceMuteEnUs {
	_TranslationsMisskeyInstanceMuteJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'ミュートしたサーバーのユーザーへの返信を含めて、設定したサーバーの全てのノートとRenoteをミュートします。';
	@override String get instanceMuteDescription2 => '改行で区切って設定します';
	@override String get title => '設定したサーバーのノートを隠します。';
	@override String get heading => 'ミュートするサーバー';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeJaJp extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get explore => 'テーマを探す';
	@override String get install => 'テーマのインストール';
	@override String get manage => 'テーマの管理';
	@override String get code => 'テーマコード';
	@override String get copyThemeCode => 'テーマコードをコピー';
	@override String get description => '説明';
	@override String installed({required Object name}) => '${name}をインストールしました';
	@override String get installedThemes => 'インストールされたテーマ';
	@override String get builtinThemes => '標準のテーマ';
	@override String get instanceTheme => 'サーバーのテーマ';
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
	@override late final _TranslationsMisskeyThemeKeysJaJp keys = _TranslationsMisskeyThemeKeysJaJp._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxJaJp extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get note => 'ノート';
	@override String get noteMy => 'ノート(自分)';
	@override String get notification => '通知';
	@override String get reaction => 'リアクション選択時';
	@override String get chatMessage => 'ダイレクトメッセージ';
}

// Path: misskey.soundSettings_
class _TranslationsMisskeySoundSettingsJaJp extends TranslationsMisskeySoundSettingsEnUs {
	_TranslationsMisskeySoundSettingsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyAgoJaJp extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyTimeInJaJp extends TranslationsMisskeyTimeInEnUs {
	_TranslationsMisskeyTimeInJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyTimeJaJp extends TranslationsMisskeyTimeEnUs {
	_TranslationsMisskeyTimeJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get second => '秒';
	@override String get minute => '分';
	@override String get hour => '時間';
	@override String get day => '日';
	@override String get month => 'ヶ月';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faJaJp extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyPermissionsJaJp extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
	@override String get readMessaging => 'ダイレクトメッセージを見る';
	@override String get writeMessaging => 'ダイレクトメッセージを操作する';
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
	@override String get writeChat => 'ダイレクトメッセージを操作する';
	@override String get readChat => 'ダイレクトメッセージを閲覧する';
}

// Path: misskey.auth_
class _TranslationsMisskeyAuthJaJp extends TranslationsMisskeyAuthEnUs {
	_TranslationsMisskeyAuthJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'アプリへのアクセス許可';
	@override String shareAccess({required Object name}) => '「${name}」がアカウントにアクセスすることを許可しますか？';
	@override String get shareAccessAsk => 'アカウントへのアクセスを許可しますか？';
	@override String permission({required Object name}) => '${name}は次の権限を要求しています';
	@override String get permissionAsk => 'このアプリは次の権限を要求しています';
	@override String get pleaseGoBack => 'アプリケーションに戻ってやっていってください';
	@override String get callback => 'アプリケーションに戻っています';
	@override String get accepted => 'アクセスを許可しました';
	@override String get denied => 'アクセスを拒否しました';
	@override String get scopeUser => '以下のユーザーとして操作しています';
	@override String get pleaseLogin => 'アプリケーションにアクセス許可を与えるには、ログインが必要です。';
	@override String get byClickingYouWillBeRedirectedToThisUrl => 'アクセスを許可すると、自動で以下のURLに遷移します';
	@override String get alreadyAuthorized => 'このアプリケーションは既にアクセスが許可されています。';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesJaJp extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get all => '全てのノート';
	@override String get homeTimeline => 'フォローしているユーザーのノート';
	@override String get users => '指定した一人または複数のユーザーのノート';
	@override String get userList => '指定したリストのユーザーのノート';
	@override String get userBlacklist => '指定した一人または複数のユーザーを除いた全てのノート';
}

// Path: misskey.weekday_
class _TranslationsMisskeyWeekdayJaJp extends TranslationsMisskeyWeekdayEnUs {
	_TranslationsMisskeyWeekdayJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyWidgetsJaJp extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
	@override late final _TranslationsMisskeyWidgetsUserListJaJp userList_ = _TranslationsMisskeyWidgetsUserListJaJp._(_root);
	@override String get clicker => 'クリッカー';
	@override String get birthdayFollowings => 'もうすぐ誕生日のユーザー';
	@override String get chat => 'ダイレクトメッセージ';
}

// Path: misskey.widgetOptions_
class _TranslationsMisskeyWidgetOptionsJaJp extends TranslationsMisskeyWidgetOptionsEnUs {
	_TranslationsMisskeyWidgetOptionsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get showHeader => 'ヘッダーを表示';
	@override String get transparent => '背景を透明にする';
	@override String get height => '高さ';
	@override late final _TranslationsMisskeyWidgetOptionsButtonJaJp button_ = _TranslationsMisskeyWidgetOptionsButtonJaJp._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsClockJaJp clock_ = _TranslationsMisskeyWidgetOptionsClockJaJp._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsJobQueueJaJp jobQueue_ = _TranslationsMisskeyWidgetOptionsJobQueueJaJp._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsRssJaJp rss_ = _TranslationsMisskeyWidgetOptionsRssJaJp._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsRssTickerJaJp rssTicker_ = _TranslationsMisskeyWidgetOptionsRssTickerJaJp._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsBirthdayFollowingsJaJp birthdayFollowings_ = _TranslationsMisskeyWidgetOptionsBirthdayFollowingsJaJp._(_root);
}

// Path: misskey.cw_
class _TranslationsMisskeyCwJaJp extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get hide => '隠す';
	@override String get show => 'もっと見る';
	@override String chars({required Object count}) => '${count}文字';
	@override String files({required Object count}) => '${count}ファイル';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollJaJp extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyVisibilityJaJp extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get public => 'パブリック';
	@override String get publicDescription => '全てのユーザーに公開';
	@override String get home => 'ホーム';
	@override String get homeDescription => 'ホームタイムラインのみに公開';
	@override String get followers => 'フォロワー';
	@override String get followersDescription => '自分のフォロワーのみに公開';
	@override String get specified => '指名';
	@override String get specifiedDescription => '指定したユーザーのみに公開';
	@override String get disableFederation => '連合なし';
	@override String get disableFederationDescription => '他サーバーへの配信を行いません';
}

// Path: misskey.postForm_
class _TranslationsMisskeyPostFormJaJp extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get quitInspiteOfThereAreUnuploadedFilesConfirm => 'アップロードされていないファイルがありますが、破棄してフォームを閉じますか？';
	@override String get uploaderTip => 'ファイルはまだアップロードされていません。ファイルのメニューから、リネームや画像のクロップ、ウォーターマークの付与、圧縮の有無などを設定できます。ファイルはノート投稿時に自動でアップロードされます。';
	@override String get replyPlaceholder => 'このノートに返信...';
	@override String get quotePlaceholder => 'このノートを引用...';
	@override String get channelPlaceholder => 'チャンネルに投稿...';
	@override String get showHowToUse => 'フォームの説明を表示';
	@override late final _TranslationsMisskeyPostFormHowToUseJaJp howToUse_ = _TranslationsMisskeyPostFormHowToUseJaJp._(_root);
	@override late final _TranslationsMisskeyPostFormPlaceholdersJaJp placeholders_ = _TranslationsMisskeyPostFormPlaceholdersJaJp._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileJaJp extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
	@override String get followedMessage => 'フォローされた時のメッセージ';
	@override String get followedMessageDescription => 'フォローされた時に相手に表示する短いメッセージを設定できます。';
	@override String get followedMessageDescriptionForLockedAccount => 'フォローを承認制にしている場合、フォローリクエストを許可した時に表示されます。';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportJaJp extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
	@override String get withReplies => '返信をTLに含むかの情報がファイルにない場合に、インポートした人による返信をTLに含むようにする';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsJaJp extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyInstanceChartsJaJp extends TranslationsMisskeyInstanceChartsEnUs {
	_TranslationsMisskeyInstanceChartsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyTimelinesJaJp extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get home => 'ホーム';
	@override String get local => 'ローカル';
	@override String get social => 'ソーシャル';
	@override String get global => 'グローバル';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayJaJp extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyPagesJaJp extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'ページの作成';
	@override String get editPage => 'ページの編集';
	@override String get readPage => 'ソースを表示中';
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
	@override String get enterSectionTitle => 'セクションタイトルを入力';
	@override String get selectType => '種類を選択';
	@override String get contentBlocks => 'コンテンツ';
	@override String get inputBlocks => '入力';
	@override String get specialBlocks => '特殊';
	@override late final _TranslationsMisskeyPagesBlocksJaJp blocks = _TranslationsMisskeyPagesBlocksJaJp._(_root);
}

// Path: misskey.relayStatus_
class _TranslationsMisskeyRelayStatusJaJp extends TranslationsMisskeyRelayStatusEnUs {
	_TranslationsMisskeyRelayStatusJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get requesting => '承認待ち';
	@override String get accepted => '承認済み';
	@override String get rejected => '拒否済み';
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationJaJp extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'ファイルがアップロードされました';
	@override String youGotMention({required Object name}) => '${name}からのメンション';
	@override String youGotReply({required Object name}) => '${name}からのリプライ';
	@override String youGotQuote({required Object name}) => '${name}による引用';
	@override String youRenoted({required Object name}) => '${name}がリノートしました';
	@override String get youWereFollowed => 'フォローされました';
	@override String get youReceivedFollowRequest => 'フォローリクエストが来ました';
	@override String get yourFollowRequestAccepted => 'フォローリクエストが承認されました';
	@override String get pollEnded => 'アンケートの結果が出ました';
	@override String get scheduledNotePosted => '予約ノートが投稿されました';
	@override String get scheduledNotePostFailed => '予約ノートの投稿に失敗しました';
	@override String get newNote => '新しい投稿';
	@override String unreadAntennaNote({required Object name}) => 'アンテナ ${name}';
	@override String get roleAssigned => 'ロールが付与されました';
	@override String get chatRoomInvitationReceived => 'ダイレクトメッセージのグループへ招待されました';
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
	@override String exportOfXCompleted({required Object x}) => '${x}のエクスポートが完了しました';
	@override String get login => 'ログインがありました';
	@override String get createToken => 'アクセストークンが作成されました';
	@override String createTokenDescription({required Object text}) => '心当たりがない場合は「${text}」を通じてアクセストークンを削除してください。';
	@override late final _TranslationsMisskeyNotificationTypesJaJp types_ = _TranslationsMisskeyNotificationTypesJaJp._(_root);
	@override late final _TranslationsMisskeyNotificationActionsJaJp actions_ = _TranslationsMisskeyNotificationActionsJaJp._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckJaJp extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => '常にメインカラムを表示';
	@override String get columnAlign => 'カラムの寄せ';
	@override String get columnGap => 'カラム間のマージン';
	@override String get deckMenuPosition => 'デッキメニューの位置';
	@override String get navbarPosition => 'ナビゲーションバーの位置';
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
	@override String get introduction2 => 'カラムを追加するには、画面の + をクリックします。';
	@override String get widgetsIntroduction => 'カラムのメニューから、「ウィジェットの編集」を選択してウィジェットを追加してください';
	@override String get useSimpleUiForNonRootPages => '非ルートページは簡易UIで表示';
	@override String get usedAsMinWidthWhenFlexible => '「幅を自動調整」が有効の場合、これが幅の最小値となります';
	@override String get flexible => '幅を自動調整';
	@override String get enableSyncBetweenDevicesForProfiles => 'プロファイル情報のデバイス間同期を有効にする';
	@override String get showHowToUse => 'UIの説明を見る';
	@override late final _TranslationsMisskeyDeckHowToUseJaJp howToUse_ = _TranslationsMisskeyDeckHowToUseJaJp._(_root);
	@override late final _TranslationsMisskeyDeckColumnsJaJp columns_ = _TranslationsMisskeyDeckColumnsJaJp._(_root);
}

// Path: misskey.dialog_
class _TranslationsMisskeyDialogJaJp extends TranslationsMisskeyDialogEnUs {
	_TranslationsMisskeyDialogJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => '最大文字数を超えています！ 現在 ${current} / 制限 ${max}';
	@override String charactersBelow({required Object current, required Object min}) => '最小文字数を下回っています！ 現在 ${current} / 制限 ${min}';
}

// Path: misskey.disabledTimeline_
class _TranslationsMisskeyDisabledTimelineJaJp extends TranslationsMisskeyDisabledTimelineEnUs {
	_TranslationsMisskeyDisabledTimelineJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '無効化されたタイムライン';
	@override String get description => '現在のロールでは、このタイムラインを使用することはできません。';
}

// Path: misskey.drivecleaner_
class _TranslationsMisskeyDrivecleanerJaJp extends TranslationsMisskeyDrivecleanerEnUs {
	_TranslationsMisskeyDrivecleanerJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'サイズが大きい順';
	@override String get orderByCreatedAtAsc => '追加日が古い順';
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsJaJp extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Webhookを作成';
	@override String get modifyWebhook => 'Webhookを編集';
	@override String get name => '名前';
	@override String get secret => 'シークレット';
	@override String get trigger => 'トリガー';
	@override String get active => '有効';
	@override late final _TranslationsMisskeyWebhookSettingsEventsJaJp events_ = _TranslationsMisskeyWebhookSettingsEventsJaJp._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsSystemEventsJaJp systemEvents_ = _TranslationsMisskeyWebhookSettingsSystemEventsJaJp._(_root);
	@override String get deleteConfirm => 'Webhookを削除しますか？';
	@override String get testRemarks => 'スイッチの右にあるボタンをクリックするとダミーのデータを使用したテスト用Webhookを送信できます。';
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportJaJp extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientJaJp notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientJaJp._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesJaJp extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get clearQueue => 'ジョブキューをクリア';
	@override String get promoteQueue => 'キューのジョブを再試行';
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
	@override String get forwardAbuseReport => '通報を転送';
	@override String get updateAbuseReportNote => '通報のモデレーションノート更新';
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
	@override String get deleteAccount => 'アカウントを削除';
	@override String get deletePage => 'ページを削除';
	@override String get deleteFlash => 'Playを削除';
	@override String get deleteGalleryPost => 'ギャラリーの投稿を削除';
	@override String get deleteChatRoom => 'ダイレクトメッセージのグループを削除';
	@override String get updateProxyAccountDescription => 'プロキシアカウントの説明を更新';
}

// Path: misskey.fileViewer_
class _TranslationsMisskeyFileViewerJaJp extends TranslationsMisskeyFileViewerEnUs {
	_TranslationsMisskeyFileViewerJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ファイルの詳細';
	@override String get type => 'ファイルタイプ';
	@override String get size => 'ファイルサイズ';
	@override String get url => 'URL';
	@override String get uploadedAt => '追加日';
	@override String get attachedNotes => '添付されているノート';
	@override String get usage => '利用';
	@override String get thisPageCanBeSeenFromTheAuthor => 'このページは、このファイルをアップロードしたユーザーしか閲覧できません。';
}

// Path: misskey.externalResourceInstaller_
class _TranslationsMisskeyExternalResourceInstallerJaJp extends TranslationsMisskeyExternalResourceInstallerEnUs {
	_TranslationsMisskeyExternalResourceInstallerJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '外部サイトからインストール';
	@override String get checkVendorBeforeInstall => '配布元が信頼できるかを確認した上でインストールしてください。';
	@override late final _TranslationsMisskeyExternalResourceInstallerPluginJaJp plugin_ = _TranslationsMisskeyExternalResourceInstallerPluginJaJp._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerThemeJaJp theme_ = _TranslationsMisskeyExternalResourceInstallerThemeJaJp._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerMetaJaJp meta_ = _TranslationsMisskeyExternalResourceInstallerMetaJaJp._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerVendorInfoJaJp vendorInfo_ = _TranslationsMisskeyExternalResourceInstallerVendorInfoJaJp._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsJaJp errors_ = _TranslationsMisskeyExternalResourceInstallerErrorsJaJp._(_root);
}

// Path: misskey.dataSaver_
class _TranslationsMisskeyDataSaverJaJp extends TranslationsMisskeyDataSaverEnUs {
	_TranslationsMisskeyDataSaverJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyDataSaverMediaJaJp media_ = _TranslationsMisskeyDataSaverMediaJaJp._(_root);
	@override late final _TranslationsMisskeyDataSaverAvatarJaJp avatar_ = _TranslationsMisskeyDataSaverAvatarJaJp._(_root);
	@override late final _TranslationsMisskeyDataSaverUrlPreviewThumbnailJaJp urlPreviewThumbnail_ = _TranslationsMisskeyDataSaverUrlPreviewThumbnailJaJp._(_root);
	@override late final _TranslationsMisskeyDataSaverDisableUrlPreviewJaJp disableUrlPreview_ = _TranslationsMisskeyDataSaverDisableUrlPreviewJaJp._(_root);
	@override late final _TranslationsMisskeyDataSaverCodeJaJp code_ = _TranslationsMisskeyDataSaverCodeJaJp._(_root);
}

// Path: misskey.hemisphere_
class _TranslationsMisskeyHemisphereJaJp extends TranslationsMisskeyHemisphereEnUs {
	_TranslationsMisskeyHemisphereJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get N => '北半球';
	@override String get S => '南半球';
	@override String get caption => '一部のクライアント設定で、季節を判定するために使用します。';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiJaJp extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyOfflineScreenJaJp extends TranslationsMisskeyOfflineScreenEnUs {
	_TranslationsMisskeyOfflineScreenJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'オフライン - サーバーに接続できません';
	@override String get header => 'サーバーに接続できません';
}

// Path: misskey.urlPreviewSetting_
class _TranslationsMisskeyUrlPreviewSettingJaJp extends TranslationsMisskeyUrlPreviewSettingEnUs {
	_TranslationsMisskeyUrlPreviewSettingJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'URLプレビューの設定';
	@override String get enable => 'URLプレビューを有効にする';
	@override String get allowRedirect => 'プレビュー先のリダイレクトを許可';
	@override String get allowRedirectDescription => '入力されたURLがリダイレクトされる場合に、そのリダイレクト先をたどってプレビューを表示するかどうかを設定します。無効にするとサーバーリソースの節約になりますが、リダイレクト先の内容は表示されなくなります。';
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
class _TranslationsMisskeyMediaControlsJaJp extends TranslationsMisskeyMediaControlsEnUs {
	_TranslationsMisskeyMediaControlsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get pip => 'ピクチャインピクチャ';
	@override String get playbackRate => '再生速度';
	@override String get loop => 'ループ再生';
}

// Path: misskey.contextMenu_
class _TranslationsMisskeyContextMenuJaJp extends TranslationsMisskeyContextMenuEnUs {
	_TranslationsMisskeyContextMenuJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'コンテキストメニュー';
	@override String get app => 'アプリケーション';
	@override String get appWithShift => 'Shiftキーでアプリケーション';
	@override String get native => 'ブラウザのUI';
}

// Path: misskey.gridComponent_
class _TranslationsMisskeyGridComponentJaJp extends TranslationsMisskeyGridComponentEnUs {
	_TranslationsMisskeyGridComponentJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyGridComponentErrorJaJp error_ = _TranslationsMisskeyGridComponentErrorJaJp._(_root);
}

// Path: misskey.roleSelectDialog_
class _TranslationsMisskeyRoleSelectDialogJaJp extends TranslationsMisskeyRoleSelectDialogEnUs {
	_TranslationsMisskeyRoleSelectDialogJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get notSelected => '選択されていません';
}

// Path: misskey.customEmojisManager_
class _TranslationsMisskeyCustomEmojisManagerJaJp extends TranslationsMisskeyCustomEmojisManagerEnUs {
	_TranslationsMisskeyCustomEmojisManagerJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCustomEmojisManagerGridCommonJaJp gridCommon_ = _TranslationsMisskeyCustomEmojisManagerGridCommonJaJp._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLogsJaJp logs_ = _TranslationsMisskeyCustomEmojisManagerLogsJaJp._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerRemoteJaJp remote_ = _TranslationsMisskeyCustomEmojisManagerRemoteJaJp._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalJaJp local_ = _TranslationsMisskeyCustomEmojisManagerLocalJaJp._(_root);
}

// Path: misskey.embedCodeGen_
class _TranslationsMisskeyEmbedCodeGenJaJp extends TranslationsMisskeyEmbedCodeGenEnUs {
	_TranslationsMisskeyEmbedCodeGenJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '埋め込みコードをカスタマイズ';
	@override String get header => 'ヘッダーを表示';
	@override String get autoload => '自動で続きを読み込む（非推奨）';
	@override String get maxHeight => '高さの最大値';
	@override String get maxHeightDescription => '0で最大値の設定が無効になります。ウィジェットが縦に伸び続けるのを防ぐために、何らかの値に指定してください。';
	@override String get maxHeightWarn => '高さの最大値制限が無効（0）になっています。これが意図した変更ではない場合は、高さの最大値を何らかの値に設定してください。';
	@override String get previewIsNotActual => 'プレビュー画面で表示可能な範囲を超えたため、実際に埋め込んだ際とは表示が異なります。';
	@override String get rounded => '角丸にする';
	@override String get border => '外枠に枠線をつける';
	@override String get applyToPreview => 'プレビューに反映';
	@override String get generateCode => '埋め込みコードを作成';
	@override String get codeGenerated => 'コードが生成されました';
	@override String get codeGeneratedDescription => '生成されたコードをウェブサイトに貼り付けてご利用ください。';
}

// Path: misskey.selfXssPrevention_
class _TranslationsMisskeySelfXssPreventionJaJp extends TranslationsMisskeySelfXssPreventionEnUs {
	_TranslationsMisskeySelfXssPreventionJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get warning => '警告';
	@override String get title => '「この画面に何か貼り付けろ」はすべて詐欺です。';
	@override String get description1 => 'ここに何かを貼り付けると、悪意のあるユーザーにアカウントを乗っ取られたり、個人情報を盗まれたりする可能性があります。';
	@override String get description2 => '貼り付けようとしているものが何なのかを正確に理解していない場合は、%c今すぐ作業を中止してこのウィンドウを閉じてください。';
	@override String description3({required Object link}) => '詳しくはこちらをご確認ください。 ${link}';
}

// Path: misskey.followRequest_
class _TranslationsMisskeyFollowRequestJaJp extends TranslationsMisskeyFollowRequestEnUs {
	_TranslationsMisskeyFollowRequestJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get recieved => '受け取った申請';
	@override String get sent => '送った申請';
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsJaJp extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedJaJp federationNotAllowed_ = _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedJaJp._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsUriInvalidJaJp uriInvalid_ = _TranslationsMisskeyRemoteLookupErrorsUriInvalidJaJp._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsRequestFailedJaJp requestFailed_ = _TranslationsMisskeyRemoteLookupErrorsRequestFailedJaJp._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsResponseInvalidJaJp responseInvalid_ = _TranslationsMisskeyRemoteLookupErrorsResponseInvalidJaJp._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectJaJp noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectJaJp._(_root);
}

// Path: misskey.captcha_
class _TranslationsMisskeyCaptchaJaJp extends TranslationsMisskeyCaptchaEnUs {
	_TranslationsMisskeyCaptchaJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get verify => 'CAPTCHAを通過してください';
	@override String get testSiteKeyMessage => 'サイトキーとシークレットキーにテスト用の値を入力することでプレビューを確認できます。\n詳細は下記ページをご確認ください。';
	@override late final _TranslationsMisskeyCaptchaErrorJaJp error_ = _TranslationsMisskeyCaptchaErrorJaJp._(_root);
}

// Path: misskey.bootErrors_
class _TranslationsMisskeyBootErrorsJaJp extends TranslationsMisskeyBootErrorsEnUs {
	_TranslationsMisskeyBootErrorsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '読み込みに失敗しました';
	@override String get serverError => '少し待ってからリロードしてもまだ問題が解決されない場合、以下のError IDを添えてサーバー管理者に連絡してください。';
	@override String get solution => '以下を行うと解決する可能性があります。';
	@override String get solution1 => 'ブラウザおよびOSを最新バージョンに更新する';
	@override String get solution2 => 'アドブロッカーを無効にする';
	@override String get solution3 => 'ブラウザのキャッシュをクリアする';
	@override String get solution4 => '(Tor Browser) dom.webaudio.enabledをtrueに設定する';
	@override String get otherOption => 'その他のオプション';
	@override String get otherOption1 => 'クライアント設定とキャッシュを削除';
	@override String get otherOption2 => '簡易クライアントを起動';
	@override String get otherOption3 => '修復ツールを起動';
	@override String get otherOption4 => 'Misskeyをセーフモードで起動';
}

// Path: misskey.search_
class _TranslationsMisskeySearchJaJp extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => '全て';
	@override String get searchScopeLocal => 'ローカル';
	@override String get searchScopeServer => 'サーバー指定';
	@override String get searchScopeUser => 'ユーザー指定';
	@override String get pleaseEnterServerHost => 'サーバーのホストを入力してください';
	@override String get pleaseSelectUser => 'ユーザーを選択してください';
	@override String get serverHostPlaceholder => '例: misskey.example.com';
}

// Path: misskey.serverSetupWizard_
class _TranslationsMisskeyServerSetupWizardJaJp extends TranslationsMisskeyServerSetupWizardEnUs {
	_TranslationsMisskeyServerSetupWizardJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get installCompleted => 'Misskeyのインストールが完了しました！';
	@override String get firstCreateAccount => 'まずは、管理者アカウントを作成しましょう。';
	@override String get accountCreated => '管理者アカウントが作成されました！';
	@override String get serverSetting => 'サーバーの設定';
	@override String get youCanEasilyConfigureOptimalServerSettingsWithThisWizard => 'このウィザードで簡単に最適なサーバーの設定が行えます。';
	@override String get settingsYouMakeHereCanBeChangedLater => 'ここでの設定は、あとからでも変更できます。';
	@override String get howWillYouUseMisskey => 'Misskeyをどのように使いますか？';
	@override late final _TranslationsMisskeyServerSetupWizardUseJaJp use_ = _TranslationsMisskeyServerSetupWizardUseJaJp._(_root);
	@override String get openServerAdvice => '不特定多数の利用者を受け入れることはリスクが伴います。トラブルに対処できるよう、確実なモデレーション体制で運営することを推奨します。';
	@override String get openServerAntiSpamAdvice => '自サーバーがスパムの踏み台にならないように、reCAPTCHAといったアンチボット機能を有効にするなど、セキュリティについても細心の注意が必要です。';
	@override String get howManyUsersDoYouExpect => 'どれくらいの人数を想定していますか？';
	@override late final _TranslationsMisskeyServerSetupWizardScaleJaJp scale_ = _TranslationsMisskeyServerSetupWizardScaleJaJp._(_root);
	@override String get largeScaleServerAdvice => '大規模なサーバーでは、ロードバランシングやデータベースのレプリケーションなど、高度なインフラストラクチャーの知識が必要になる場合があります。';
	@override String get doYouConnectToFediverse => 'Fediverseと接続しますか？';
	@override String get doYouConnectToFediverse_description1 => '分散型サーバーで構成されるネットワーク(Fediverse)に接続すると、他のサーバーと相互にコンテンツのやり取りが可能です。';
	@override String get doYouConnectToFediverse_description2 => 'Fediverseと接続することは「連合」とも呼ばれます。';
	@override String get youCanConfigureMoreFederationSettingsLater => '連合可能なサーバーの指定など、高度な設定も後ほど可能です。';
	@override String get remoteContentsCleaning => 'リモートコンテンツの自動クリーニング';
	@override String get remoteContentsCleaning_description => '連合を行うと、継続して多くのコンテンツを受信します。自動クリーニングを有効にすると、一定期間経過したリモートコンテンツを自動でサーバーから削除し、ストレージを節約できます。';
	@override String get adminInfo => '管理者情報';
	@override String get adminInfo_description => '問い合わせを受け付けるために使用される管理者情報を設定します。';
	@override String get adminInfo_mustBeFilled => 'オープンサーバー、または連合がオンの場合は必ず入力が必要です。';
	@override String get followingSettingsAreRecommended => '以下の設定が推奨されます';
	@override String get applyTheseSettings => 'この設定を適用';
	@override String get skipSettings => '設定をスキップ';
	@override String get settingsCompleted => '設定が完了しました！';
	@override String get settingsCompleted_description => 'お疲れ様でした。準備が整ったので、さっそくサーバーの使用を開始できます。';
	@override String get settingsCompleted_description2 => '詳細なサーバー設定は、「コントロールパネル」から行えます。';
	@override String get donationRequest => '寄付のお願い';
	@override late final _TranslationsMisskeyServerSetupWizardDonationRequestJaJp donationRequest_ = _TranslationsMisskeyServerSetupWizardDonationRequestJaJp._(_root);
}

// Path: misskey.uploader_
class _TranslationsMisskeyUploaderJaJp extends TranslationsMisskeyUploaderEnUs {
	_TranslationsMisskeyUploaderJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get editImage => '画像の編集';
	@override String compressedToX({required Object x}) => '${x}に圧縮';
	@override String savedXPercent({required Object x}) => '${x}%節約';
	@override String get abortConfirm => 'アップロードされていないファイルがありますが、中止しますか？';
	@override String get doneConfirm => 'アップロードされていないファイルがありますが、完了しますか？';
	@override String maxFileSizeIsX({required Object x}) => 'アップロード可能な最大ファイルサイズは${x}です。';
	@override String get allowedTypes => 'アップロード可能なファイル種別';
	@override String get tip => 'ファイルはまだアップロードされていません。このダイアログで、アップロード前の確認・リネーム・圧縮・クロッピングなどが行えます。準備が出来たら、「アップロード」ボタンを押してアップロードを開始できます。';
}

// Path: misskey.clientPerformanceIssueTip_
class _TranslationsMisskeyClientPerformanceIssueTipJaJp extends TranslationsMisskeyClientPerformanceIssueTipEnUs {
	_TranslationsMisskeyClientPerformanceIssueTipJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'バッテリー消費が多いと感じたら';
	@override String get makeSureDisabledAdBlocker => 'アドブロッカーを無効にしてください';
	@override String get makeSureDisabledAdBlocker_description => 'アドブロッカーはパフォーマンスに影響を及ぼすことがあります。OSの機能やブラウザの機能・アドオンなどでアドブロッカーが有効になっていないか確認してください。';
	@override String get makeSureDisabledCustomCss => 'カスタムCSSを無効にしてください';
	@override String get makeSureDisabledCustomCss_description => 'スタイルを上書きするとパフォーマンスに影響を及ぼすことがあります。カスタムCSSや、スタイルを上書きする拡張機能が有効になっていないか確認してください。';
	@override String get makeSureDisabledAddons => '拡張機能を無効にしてください';
	@override String get makeSureDisabledAddons_description => '一部の拡張機能はクライアントの動作に干渉しパフォーマンスに影響を及ぼすことがあります。ブラウザの拡張機能を無効にして改善するか確認してください。';
}

// Path: misskey.clip_
class _TranslationsMisskeyClipJaJp extends TranslationsMisskeyClipEnUs {
	_TranslationsMisskeyClipJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get tip => 'クリップは、ノートをまとめることができる機能です。';
}

// Path: misskey.userLists_
class _TranslationsMisskeyUserListsJaJp extends TranslationsMisskeyUserListsEnUs {
	_TranslationsMisskeyUserListsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get tip => '任意のユーザーが含まれるリストを作成できます。作成したリストはタイムラインとして表示可能です。';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorJaJp extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get tip => '画像にクレジット情報などのウォーターマークを追加できます。';
	@override String get quitWithoutSaveConfirm => '保存せずに終了しますか？';
	@override String get driveFileTypeWarn => 'このファイルは対応していません';
	@override String get driveFileTypeWarnDescription => '画像ファイルを選択してください';
	@override String get title => 'ウォーターマークの編集';
	@override String get cover => '全体に被せる';
	@override String get repeat => '敷き詰める';
	@override String get preserveBoundingRect => '回転時はみ出ないように調整する';
	@override String get opacity => '不透明度';
	@override String get scale => 'サイズ';
	@override String get text => 'テキスト';
	@override String get qr => '二次元コード';
	@override String get position => '位置';
	@override String get margin => 'マージン';
	@override String get type => 'タイプ';
	@override String get image => '画像';
	@override String get advanced => '高度';
	@override String get angle => '角度';
	@override String get stripe => 'ストライプ';
	@override String get stripeWidth => 'ラインの幅';
	@override String get stripeFrequency => 'ラインの数';
	@override String get polkadot => 'ポルカドット';
	@override String get checker => 'チェッカー';
	@override String get polkadotMainDotOpacity => 'メインドットの不透明度';
	@override String get polkadotMainDotRadius => 'メインドットの大きさ';
	@override String get polkadotSubDotOpacity => 'サブドットの不透明度';
	@override String get polkadotSubDotRadius => 'サブドットの大きさ';
	@override String get polkadotSubDotDivisions => 'サブドットの数';
	@override String get leaveBlankToAccountUrl => '空欄にするとアカウントのURLになります';
	@override String get failedToLoadImage => '画像の読み込みに失敗しました';
}

// Path: misskey.imageEffector_
class _TranslationsMisskeyImageEffectorJaJp extends TranslationsMisskeyImageEffectorEnUs {
	_TranslationsMisskeyImageEffectorJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'エフェクト';
	@override String get addEffect => 'エフェクトを追加';
	@override String get discardChangesConfirm => '変更を破棄して終了しますか？';
	@override String get failedToLoadImage => '画像の読み込みに失敗しました';
	@override late final _TranslationsMisskeyImageEffectorFxsJaJp fxs_ = _TranslationsMisskeyImageEffectorFxsJaJp._(_root);
	@override late final _TranslationsMisskeyImageEffectorFxPropsJaJp fxProps_ = _TranslationsMisskeyImageEffectorFxPropsJaJp._(_root);
}

// Path: misskey.drafts_
class _TranslationsMisskeyDraftsJaJp extends TranslationsMisskeyDraftsEnUs {
	_TranslationsMisskeyDraftsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get select => '下書きを選択';
	@override String get cannotCreateDraftAnymore => '下書きの作成可能数を超えています。';
	@override String get cannotCreateDraft => 'この内容では下書きを作成できません。';
	@override String get delete => '下書きを削除';
	@override String get deleteAreYouSure => '下書きを削除しますか？';
	@override String get noDrafts => '下書きはありません';
	@override String replyTo({required Object user}) => '${user}への返信';
	@override String quoteOf({required Object user}) => '${user}のノートへの引用';
	@override String postTo({required Object channel}) => '${channel}への投稿';
	@override String get saveToDraft => '下書きへ保存';
	@override String get restoreFromDraft => '下書きから復元';
	@override String get restore => '復元';
	@override String get listDrafts => '下書き一覧';
	@override String get schedule => '投稿予約';
	@override String get listScheduledNotes => '予約投稿一覧';
	@override String get cancelSchedule => '予約解除';
}

// Path: misskey.qr_
class _TranslationsMisskeyQrJaJp extends TranslationsMisskeyQrEnUs {
	_TranslationsMisskeyQrJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get showTabTitle => '表示';
	@override String get readTabTitle => '読み取る';
	@override String shareTitle({required Object name, required Object acct}) => '${name} ${acct}';
	@override String get shareText => 'Fediverseで私をフォローしてください！';
	@override String get chooseCamera => 'カメラを選択';
	@override String get cannotToggleFlash => 'ライト選択不可';
	@override String get turnOnFlash => 'ライトをオンにする';
	@override String get turnOffFlash => 'ライトをオフにする';
	@override String get startQr => 'コードリーダーを再開';
	@override String get stopQr => 'コードリーダーを停止';
	@override String get noQrCodeFound => 'QRコードが見つかりません';
	@override String get scanFile => '端末の画像をスキャン';
	@override String get raw => 'テキスト';
	@override String get mfm => 'MFM';
}

// Path: misskeyIO.skebStatus_
class _TranslationsMisskeyIOSkebStatusJaJp extends TranslationsMisskeyIOSkebStatusEnUs {
	_TranslationsMisskeyIOSkebStatusJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyIOSkebStatusGenresJaJp genres_ = _TranslationsMisskeyIOSkebStatusGenresJaJp._(_root);
	@override String get seeking => '募集中';
	@override String get stopped => '停止中';
	@override String get client => 'クライアント';
	@override String yenX({required Object x}) => '${x}円';
	@override String nWorks({required Object n}) => '納品実績 ${n}件';
	@override String nRequests({required Object n}) => '取引実績 ${n}件';
}

// Path: misskey.imageEditing_.vars_
class _TranslationsMisskeyImageEditingVarsJaJp extends TranslationsMisskeyImageEditingVarsEnUs {
	_TranslationsMisskeyImageEditingVarsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get caption => 'ファイルのキャプション';
	@override String get filename => 'ファイル名';
	@override String get filename_without_ext => '拡張子無しファイル名';
	@override String get year => '撮影年';
	@override String get month => '撮影月';
	@override String get day => '撮影日';
	@override String get hour => '撮影した時刻(時)';
	@override String get minute => '撮影した時刻(分)';
	@override String get second => '撮影した時刻(秒)';
	@override String get camera_model => 'カメラ名';
	@override String get camera_lens_model => 'レンズ名';
	@override String get camera_mm => '焦点距離';
	@override String get camera_mm_35 => '焦点距離(35mm判換算)';
	@override String get camera_f => '絞り';
	@override String get camera_s => 'シャッタースピード';
	@override String get camera_iso => 'ISO感度';
	@override String get gps_lat => '緯度';
	@override String get gps_long => '経度';
}

// Path: misskey.compression_.quality_
class _TranslationsMisskeyCompressionQualityJaJp extends TranslationsMisskeyCompressionQualityEnUs {
	_TranslationsMisskeyCompressionQualityJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get high => '高品質';
	@override String get medium => '中品質';
	@override String get low => '低品質';
}

// Path: misskey.compression_.size_
class _TranslationsMisskeyCompressionSizeJaJp extends TranslationsMisskeyCompressionSizeEnUs {
	_TranslationsMisskeyCompressionSizeJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get large => 'サイズ大';
	@override String get medium => 'サイズ中';
	@override String get small => 'サイズ小';
}

// Path: misskey.chat_.chatAllowedUsers_
class _TranslationsMisskeyChatChatAllowedUsersJaJp extends TranslationsMisskeyChatChatAllowedUsersEnUs {
	_TranslationsMisskeyChatChatAllowedUsersJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get everyone => '誰でも';
	@override String get followers => '自分のフォロワーのみ';
	@override String get following => '自分がフォローしているユーザーのみ';
	@override String get mutual => '相互フォローのユーザーのみ';
	@override String get none => '誰も許可しない';
}

// Path: misskey.settings_.chat_
class _TranslationsMisskeySettingsChatJaJp extends TranslationsMisskeySettingsChatEnUs {
	_TranslationsMisskeySettingsChatJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get showSenderName => '送信者の名前を表示';
	@override String get sendOnEnter => 'Enterで送信';
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypeJaJp extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypeJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get none => '配信中';
	@override String get manuallySuspended => '手動停止中';
	@override String get goneSuspended => 'サーバー削除のため停止中';
	@override String get autoSuspendedForNotResponding => 'サーバー応答なしのため停止中';
	@override String get softwareSuspended => '配信停止中のソフトウェアであるため停止中';
}

// Path: misskey.bubbleGame_.score_
class _TranslationsMisskeyBubbleGameScoreJaJp extends TranslationsMisskeyBubbleGameScoreEnUs {
	_TranslationsMisskeyBubbleGameScoreJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyBubbleGameHowToPlayJaJp extends TranslationsMisskeyBubbleGameHowToPlayEnUs {
	_TranslationsMisskeyBubbleGameHowToPlayJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get section1 => '位置を調整してハコにモノを落とします。';
	@override String get section2 => '同じ種類のモノがくっつくと別のモノに変化して、スコアが得られます。';
	@override String get section3 => 'モノがハコからあふれるとゲームオーバーです。ハコからあふれないようにしつつモノを融合させてハイスコアを目指そう！';
}

// Path: misskey.initialTutorial_.landing_
class _TranslationsMisskeyInitialTutorialLandingJaJp extends TranslationsMisskeyInitialTutorialLandingEnUs {
	_TranslationsMisskeyInitialTutorialLandingJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'チュートリアルへようこそ';
	@override String get description => 'ここでは、Misskeyの基本的な使い方や機能を確認できます。';
}

// Path: misskey.initialTutorial_.note_
class _TranslationsMisskeyInitialTutorialNoteJaJp extends TranslationsMisskeyInitialTutorialNoteEnUs {
	_TranslationsMisskeyInitialTutorialNoteJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートって何？';
	@override String get description => 'Misskeyでの投稿は「ノート」と呼びます。ノートはタイムラインに時系列で並んでいて、リアルタイムで更新されていきます。';
	@override String get reply => '返信することができます。返信に対しての返信も可能で、スレッドのように会話を続けることもできます。';
	@override String get renote => 'そのノートを自分のタイムラインに流して共有することができます。テキストを追加して引用することも可能です。';
	@override String get reaction => 'リアクションをつけることができます。詳しくは次のページで解説します。';
	@override String get menu => 'ノートの詳細を表示したり、リンクをコピーしたりなどの様々な操作が行えます。';
}

// Path: misskey.initialTutorial_.reaction_
class _TranslationsMisskeyInitialTutorialReactionJaJp extends TranslationsMisskeyInitialTutorialReactionEnUs {
	_TranslationsMisskeyInitialTutorialReactionJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'リアクションって何？';
	@override String get description => 'ノートには「リアクション」をつけることができます。「いいね」では伝わらないニュアンスも、リアクションで簡単・気軽に表現できます。';
	@override String get letsTryReacting => 'リアクションは、ノートの「＋」ボタンをクリックするとつけられます。試しにこのサンプルのノートにリアクションをつけてみてください！';
	@override String get reactToContinue => 'リアクションをつけると先に進めるようになります。';
	@override String get reactNotification => 'あなたのノートが誰かにリアクションされると、リアルタイムで通知を受け取ります。';
	@override String get reactDone => '「ー」ボタンを押すとリアクションを取り消すことができます。';
}

// Path: misskey.initialTutorial_.timeline_
class _TranslationsMisskeyInitialTutorialTimelineJaJp extends TranslationsMisskeyInitialTutorialTimelineEnUs {
	_TranslationsMisskeyInitialTutorialTimelineJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyInitialTutorialPostNoteJaJp extends TranslationsMisskeyInitialTutorialPostNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの投稿設定';
	@override String get description1 => 'Misskeyにノートを投稿する際には、様々なオプションの設定が可能です。投稿フォームはこのようになっています。';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteVisibilityJaJp visibility_ = _TranslationsMisskeyInitialTutorialPostNoteVisibilityJaJp._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwJaJp cw_ = _TranslationsMisskeyInitialTutorialPostNoteCwJaJp._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveJaJp extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '添付ファイルをセンシティブにするには？';
	@override String get description => 'サーバーのガイドラインにより必要とされる際や、そのまま見れる状態にしておくべきではない添付ファイルには、「センシティブ」設定を付けます。';
	@override String get tryThisFile => '試しに、このフォームに添付された画像をセンシティブにしてみてください！';
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteJaJp exampleNote_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteJaJp._(_root);
	@override String get method => '添付ファイルをセンシティブにする際は、そのファイルをクリックしてメニューを開き、「センシティブとして設定」をクリックします。';
	@override String get sensitiveSucceeded => 'ファイルを添付する際は、サーバーのガイドラインに従ってセンシティブを適切に設定してください。';
	@override String get doItToContinue => '画像をセンシティブに設定すると先に進めるようになります。';
}

// Path: misskey.initialTutorial_.done_
class _TranslationsMisskeyInitialTutorialDoneJaJp extends TranslationsMisskeyInitialTutorialDoneEnUs {
	_TranslationsMisskeyInitialTutorialDoneJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'チュートリアルは終了です🎉';
	@override String description({required Object link}) => 'ここで紹介した機能はほんの一部にすぎません。Misskeyの使い方をより詳しく知るには、${link}をご覧ください。';
}

// Path: misskey.serverSettings_.userGeneratedContentsVisibilityForVisitor_
class _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorJaJp extends TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorEnUs {
	_TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get all => '全て公開';
	@override String get localOnly => 'ローカルコンテンツのみ公開し、リモートコンテンツは非公開';
	@override String get none => '全て非公開';
}

// Path: misskey.achievements_.types_
class _TranslationsMisskeyAchievementsTypesJaJp extends TranslationsMisskeyAchievementsTypesEnUs {
	_TranslationsMisskeyAchievementsTypesJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesNotes1JaJp notes1_ = _TranslationsMisskeyAchievementsTypesNotes1JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10JaJp notes10_ = _TranslationsMisskeyAchievementsTypesNotes10JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100JaJp notes100_ = _TranslationsMisskeyAchievementsTypesNotes100JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes500JaJp notes500_ = _TranslationsMisskeyAchievementsTypesNotes500JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes1000JaJp notes1000_ = _TranslationsMisskeyAchievementsTypesNotes1000JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes5000JaJp notes5000_ = _TranslationsMisskeyAchievementsTypesNotes5000JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10000JaJp notes10000_ = _TranslationsMisskeyAchievementsTypesNotes10000JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes20000JaJp notes20000_ = _TranslationsMisskeyAchievementsTypesNotes20000JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes30000JaJp notes30000_ = _TranslationsMisskeyAchievementsTypesNotes30000JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes40000JaJp notes40000_ = _TranslationsMisskeyAchievementsTypesNotes40000JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes50000JaJp notes50000_ = _TranslationsMisskeyAchievementsTypesNotes50000JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes60000JaJp notes60000_ = _TranslationsMisskeyAchievementsTypesNotes60000JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes70000JaJp notes70000_ = _TranslationsMisskeyAchievementsTypesNotes70000JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes80000JaJp notes80000_ = _TranslationsMisskeyAchievementsTypesNotes80000JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes90000JaJp notes90000_ = _TranslationsMisskeyAchievementsTypesNotes90000JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100000JaJp notes100000_ = _TranslationsMisskeyAchievementsTypesNotes100000JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin3JaJp login3_ = _TranslationsMisskeyAchievementsTypesLogin3JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin7JaJp login7_ = _TranslationsMisskeyAchievementsTypesLogin7JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin15JaJp login15_ = _TranslationsMisskeyAchievementsTypesLogin15JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin30JaJp login30_ = _TranslationsMisskeyAchievementsTypesLogin30JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin60JaJp login60_ = _TranslationsMisskeyAchievementsTypesLogin60JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin100JaJp login100_ = _TranslationsMisskeyAchievementsTypesLogin100JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin200JaJp login200_ = _TranslationsMisskeyAchievementsTypesLogin200JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin300JaJp login300_ = _TranslationsMisskeyAchievementsTypesLogin300JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin400JaJp login400_ = _TranslationsMisskeyAchievementsTypesLogin400JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin500JaJp login500_ = _TranslationsMisskeyAchievementsTypesLogin500JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin600JaJp login600_ = _TranslationsMisskeyAchievementsTypesLogin600JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin700JaJp login700_ = _TranslationsMisskeyAchievementsTypesLogin700JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin800JaJp login800_ = _TranslationsMisskeyAchievementsTypesLogin800JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin900JaJp login900_ = _TranslationsMisskeyAchievementsTypesLogin900JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin1000JaJp login1000_ = _TranslationsMisskeyAchievementsTypesLogin1000JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteClipped1JaJp noteClipped1_ = _TranslationsMisskeyAchievementsTypesNoteClipped1JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteFavorited1JaJp noteFavorited1_ = _TranslationsMisskeyAchievementsTypesNoteFavorited1JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMyNoteFavorited1JaJp myNoteFavorited1_ = _TranslationsMisskeyAchievementsTypesMyNoteFavorited1JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesProfileFilledJaJp profileFilled_ = _TranslationsMisskeyAchievementsTypesProfileFilledJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMarkedAsCatJaJp markedAsCat_ = _TranslationsMisskeyAchievementsTypesMarkedAsCatJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing1JaJp following1_ = _TranslationsMisskeyAchievementsTypesFollowing1JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing10JaJp following10_ = _TranslationsMisskeyAchievementsTypesFollowing10JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing50JaJp following50_ = _TranslationsMisskeyAchievementsTypesFollowing50JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing100JaJp following100_ = _TranslationsMisskeyAchievementsTypesFollowing100JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing300JaJp following300_ = _TranslationsMisskeyAchievementsTypesFollowing300JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1JaJp followers1_ = _TranslationsMisskeyAchievementsTypesFollowers1JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers10JaJp followers10_ = _TranslationsMisskeyAchievementsTypesFollowers10JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers50JaJp followers50_ = _TranslationsMisskeyAchievementsTypesFollowers50JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers100JaJp followers100_ = _TranslationsMisskeyAchievementsTypesFollowers100JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers300JaJp followers300_ = _TranslationsMisskeyAchievementsTypesFollowers300JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers500JaJp followers500_ = _TranslationsMisskeyAchievementsTypesFollowers500JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1000JaJp followers1000_ = _TranslationsMisskeyAchievementsTypesFollowers1000JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCollectAchievements30JaJp collectAchievements30_ = _TranslationsMisskeyAchievementsTypesCollectAchievements30JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewAchievements3minJaJp viewAchievements3min_ = _TranslationsMisskeyAchievementsTypesViewAchievements3minJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesILoveMisskeyJaJp iLoveMisskey_ = _TranslationsMisskeyAchievementsTypesILoveMisskeyJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFoundTreasureJaJp foundTreasure_ = _TranslationsMisskeyAchievementsTypesFoundTreasureJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient30minJaJp client30min_ = _TranslationsMisskeyAchievementsTypesClient30minJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient60minJaJp client60min_ = _TranslationsMisskeyAchievementsTypesClient60minJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minJaJp noteDeletedWithin1min_ = _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAtLateNightJaJp postedAtLateNight_ = _TranslationsMisskeyAchievementsTypesPostedAtLateNightJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAt0min0secJaJp postedAt0min0sec_ = _TranslationsMisskeyAchievementsTypesPostedAt0min0secJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSelfQuoteJaJp selfQuote_ = _TranslationsMisskeyAchievementsTypesSelfQuoteJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesHtl20npmJaJp htl20npm_ = _TranslationsMisskeyAchievementsTypesHtl20npmJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewInstanceChartJaJp viewInstanceChart_ = _TranslationsMisskeyAchievementsTypesViewInstanceChartJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadJaJp outputHelloWorldOnScratchpad_ = _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOpen3windowsJaJp open3windows_ = _TranslationsMisskeyAchievementsTypesOpen3windowsJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceJaJp driveFolderCircularReference_ = _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesReactWithoutReadJaJp reactWithoutRead_ = _TranslationsMisskeyAchievementsTypesReactWithoutReadJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClickedClickHereJaJp clickedClickHere_ = _TranslationsMisskeyAchievementsTypesClickedClickHereJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesJustPlainLuckyJaJp justPlainLucky_ = _TranslationsMisskeyAchievementsTypesJustPlainLuckyJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSetNameToSyuiloJaJp setNameToSyuilo_ = _TranslationsMisskeyAchievementsTypesSetNameToSyuiloJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1JaJp passedSinceAccountCreated1_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2JaJp passedSinceAccountCreated2_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3JaJp passedSinceAccountCreated3_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3JaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayJaJp loggedInOnBirthday_ = _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayJaJp loggedInOnNewYearsDay_ = _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCookieClickedJaJp cookieClicked_ = _TranslationsMisskeyAchievementsTypesCookieClickedJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBrainDiverJaJp brainDiver_ = _TranslationsMisskeyAchievementsTypesBrainDiverJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonJaJp smashTestNotificationButton_ = _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesTutorialCompletedJaJp tutorialCompleted_ = _TranslationsMisskeyAchievementsTypesTutorialCompletedJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadJaJp bubbleGameExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadJaJp._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadJaJp bubbleGameDoubleExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadJaJp._(_root);
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityJaJp extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get low => '低';
	@override String get middle => '中';
	@override String get high => '高';
}

// Path: misskey.role_.options_
class _TranslationsMisskeyRoleOptionsJaJp extends TranslationsMisskeyRoleOptionsEnUs {
	_TranslationsMisskeyRoleOptionsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
	@override String get maxFileSize => 'アップロード可能な最大ファイルサイズ';
	@override String get maxFileSize_caption => 'リバースプロキシやCDNなど、前段で別の設定値が存在する場合があります。';
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
	@override String get canSearchUsers => 'ユーザー検索の利用';
	@override String get canUseTranslator => '翻訳機能の利用';
	@override String get avatarDecorationLimit => 'アイコンデコレーションの最大取付個数';
	@override String get canImportAntennas => 'アンテナのインポートを許可';
	@override String get canImportBlocking => 'ブロックのインポートを許可';
	@override String get canImportFollowing => 'フォローのインポートを許可';
	@override String get canImportMuting => 'ミュートのインポートを許可';
	@override String get canImportUserLists => 'リストのインポートを許可';
	@override String get chatAvailability => 'ダイレクトメッセージを許可';
	@override String get uploadableFileTypes => 'アップロード可能なファイル種別';
	@override String get uploadableFileTypes_caption => 'MIMEタイプを指定します。改行で区切って複数指定できるほか、アスタリスク(*)でワイルドカード指定できます。(例: image/*)';
	@override String uploadableFileTypes_caption2({required Object x}) => 'ファイルによっては種別を判定できないことがあります。そのようなファイルを許可する場合は ${x} を指定に追加してください。';
	@override String get noteDraftLimit => 'サーバーサイドのノートの下書きの作成可能数';
	@override String get scheduledNoteLimit => '予約投稿の同時作成可能数';
	@override String get watermarkAvailable => 'ウォーターマーク機能の使用可否';
}

// Path: misskey.role_.condition_
class _TranslationsMisskeyRoleConditionJaJp extends TranslationsMisskeyRoleConditionEnUs {
	_TranslationsMisskeyRoleConditionJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyEmailFollowJaJp extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'フォローされました';
}

// Path: misskey.email_.receiveFollowRequest_
class _TranslationsMisskeyEmailReceiveFollowRequestJaJp extends TranslationsMisskeyEmailReceiveFollowRequestEnUs {
	_TranslationsMisskeyEmailReceiveFollowRequestJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'フォローリクエストを受け取りました';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysJaJp extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get accent => 'アクセント';
	@override String get bg => '背景';
	@override String get fg => '文字';
	@override String get focus => 'フォーカス';
	@override String get indicator => 'インジケーター';
	@override String get panel => 'パネル';
	@override String get shadow => '影';
	@override String get header => 'ヘッダー';
	@override String get navBg => 'ナビゲーションバーの背景';
	@override String get navFg => 'ナビゲーションバーの文字';
	@override String get navActive => 'ナビゲーションバー文字(アクティブ)';
	@override String get navIndicator => 'ナビゲーションバーのインジケーター';
	@override String get link => 'リンク';
	@override String get hashtag => 'ハッシュタグ';
	@override String get mention => 'メンション';
	@override String get mentionMe => 'あなた宛てメンション';
	@override String get renote => 'リノート';
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
	@override String get badge => 'バッジ';
	@override String get messageBg => 'メッセージの背景';
	@override String get fgHighlighted => '強調された文字';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListJaJp extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'リストを選択';
}

// Path: misskey.widgetOptions_.button_
class _TranslationsMisskeyWidgetOptionsButtonJaJp extends TranslationsMisskeyWidgetOptionsButtonEnUs {
	_TranslationsMisskeyWidgetOptionsButtonJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get colored => '色付き';
}

// Path: misskey.widgetOptions_.clock_
class _TranslationsMisskeyWidgetOptionsClockJaJp extends TranslationsMisskeyWidgetOptionsClockEnUs {
	_TranslationsMisskeyWidgetOptionsClockJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get size => 'サイズ';
	@override String get thickness => '針の太さ';
	@override String get thicknessThin => '細い';
	@override String get thicknessMedium => '普通';
	@override String get thicknessThick => '太い';
	@override String get graduations => '文字盤の目盛り';
	@override String get graduationDots => 'ドット';
	@override String get graduationArabic => 'アラビア数字';
	@override String get fadeGraduations => '目盛りをフェード';
	@override String get sAnimation => '秒針のアニメーション';
	@override String get sAnimationElastic => 'リアル';
	@override String get sAnimationEaseOut => '滑らか';
	@override String get twentyFour => '24時間表示';
	@override String get labelTime => '時刻';
	@override String get labelTz => 'タイムゾーン';
	@override String get labelTimeAndTz => '時刻とタイムゾーン';
	@override String get timezone => 'タイムゾーン';
	@override String get showMs => 'ミリ秒を表示';
	@override String get showLabel => 'ラベルを表示';
}

// Path: misskey.widgetOptions_.jobQueue_
class _TranslationsMisskeyWidgetOptionsJobQueueJaJp extends TranslationsMisskeyWidgetOptionsJobQueueEnUs {
	_TranslationsMisskeyWidgetOptionsJobQueueJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get sound => '音を鳴らす';
}

// Path: misskey.widgetOptions_.rss_
class _TranslationsMisskeyWidgetOptionsRssJaJp extends TranslationsMisskeyWidgetOptionsRssEnUs {
	_TranslationsMisskeyWidgetOptionsRssJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get url => 'RSSフィードのURL';
	@override String get refreshIntervalSec => '更新間隔(秒)';
	@override String get maxEntries => '最大表示件数';
}

// Path: misskey.widgetOptions_.rssTicker_
class _TranslationsMisskeyWidgetOptionsRssTickerJaJp extends TranslationsMisskeyWidgetOptionsRssTickerEnUs {
	_TranslationsMisskeyWidgetOptionsRssTickerJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get shuffle => '表示順をシャッフル';
	@override String get duration => 'ティッカーのスクロール速度(秒)';
	@override String get reverse => '逆方向にスクロール';
}

// Path: misskey.widgetOptions_.birthdayFollowings_
class _TranslationsMisskeyWidgetOptionsBirthdayFollowingsJaJp extends TranslationsMisskeyWidgetOptionsBirthdayFollowingsEnUs {
	_TranslationsMisskeyWidgetOptionsBirthdayFollowingsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get period => '期間';
}

// Path: misskey.postForm_.howToUse_
class _TranslationsMisskeyPostFormHowToUseJaJp extends TranslationsMisskeyPostFormHowToUseEnUs {
	_TranslationsMisskeyPostFormHowToUseJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get content_title => '本文';
	@override String get content_description => '投稿する内容を入力します。';
	@override String get toolbar_title => 'ツールバー';
	@override String get toolbar_description => 'ファイルやアンケートの添付、注釈やハッシュタグの設定、絵文字やメンションの挿入などが行えます。';
	@override String get account_title => 'アカウントメニュー';
	@override String get account_description => '投稿するアカウントを切り替えたり、アカウントに保存した下書き・予約投稿を一覧できます。';
	@override String get visibility_title => '公開範囲';
	@override String get visibility_description => 'ノートを公開する範囲の設定が行えます。';
	@override String get menu_title => 'メニュー';
	@override String get menu_description => '下書きへの保存、投稿の予約、リアクションの設定など、その他のアクションが行えます。';
	@override String get submit_title => '投稿ボタン';
	@override String get submit_description => 'ノートを投稿します。Ctrl + Enter / Cmd + Enter でも投稿できます。';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersJaJp extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get a => 'いまどうしてる？';
	@override String get b => '何かありましたか？';
	@override String get c => '何をお考えですか？';
	@override String get d => '言いたいことは？';
	@override String get e => 'ここに書いてください';
	@override String get f => 'あなたが書くのを待っています...';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksJaJp extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get text => 'テキスト';
	@override String get textarea => 'テキストエリア';
	@override String get section => 'セクション';
	@override String get image => '画像';
	@override String get button => 'ボタン';
	@override String get dynamic => '動的ブロック';
	@override String dynamicDescription({required Object play}) => 'このブロックは廃止されています。今後は${play}を利用してください。';
	@override String get note => 'ノート埋め込み';
	@override late final _TranslationsMisskeyPagesBlocksNoteJaJp note_ = _TranslationsMisskeyPagesBlocksNoteJaJp._(_root);
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesJaJp extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get all => 'すべて';
	@override String get note => 'ユーザーの新規投稿';
	@override String get follow => 'フォロー';
	@override String get mention => 'メンション';
	@override String get reply => 'リプライ';
	@override String get renote => 'リノート';
	@override String get quote => '引用';
	@override String get reaction => 'リアクション';
	@override String get pollEnded => 'アンケートが終了';
	@override String get scheduledNotePosted => '予約投稿が成功した';
	@override String get scheduledNotePostFailed => '予約投稿が失敗した';
	@override String get receiveFollowRequest => 'フォロー申請を受け取った';
	@override String get followRequestAccepted => 'フォローが受理された';
	@override String get roleAssigned => 'ロールが付与された';
	@override String get chatRoomInvitationReceived => 'ダイレクトメッセージのグループへ招待された';
	@override String get achievementEarned => '実績の獲得';
	@override String get exportCompleted => 'エクスポートが完了した';
	@override String get login => 'ログイン';
	@override String get createToken => 'アクセストークンの作成';
	@override String get test => '通知のテスト';
	@override String get app => '連携アプリからの通知';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsJaJp extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'フォローバック';
	@override String get reply => '返信';
	@override String get renote => 'リノート';
}

// Path: misskey.deck_.howToUse_
class _TranslationsMisskeyDeckHowToUseJaJp extends TranslationsMisskeyDeckHowToUseEnUs {
	_TranslationsMisskeyDeckHowToUseJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get addColumn_title => 'カラム追加';
	@override String get addColumn_description => 'カラムの種類を選んで追加できます。';
	@override String get settings_title => 'UI設定';
	@override String get settings_description => 'デッキUIの詳細設定を行えます。';
	@override String get switchProfile_title => 'プロファイル切り替え';
	@override String get switchProfile_description => 'UIのレイアウトをプロファイルとして保存し、いつでも切り替えられるようにできます。';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsJaJp extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get main => 'メイン';
	@override String get widgets => 'ウィジェット';
	@override String get notifications => '通知';
	@override String get tl => 'タイムライン';
	@override String get antenna => 'アンテナ';
	@override String get list => 'リスト';
	@override String get channel => 'チャンネル';
	@override String get mentions => 'メンション';
	@override String get direct => '指名';
	@override String get roleTimeline => 'ロールタイムライン';
	@override String get chat => 'ダイレクトメッセージ';
}

// Path: misskey.webhookSettings_.events_
class _TranslationsMisskeyWebhookSettingsEventsJaJp extends TranslationsMisskeyWebhookSettingsEventsEnUs {
	_TranslationsMisskeyWebhookSettingsEventsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyWebhookSettingsSystemEventsJaJp extends TranslationsMisskeyWebhookSettingsSystemEventsEnUs {
	_TranslationsMisskeyWebhookSettingsSystemEventsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get abuseReport => 'ユーザーから通報があったとき';
	@override String get abuseReportResolved => 'ユーザーからの通報を処理したとき';
	@override String get userCreated => 'ユーザーが作成されたとき';
	@override String get inactiveModeratorsWarning => 'モデレーターが一定期間非アクティブになったとき';
	@override String get inactiveModeratorsInvitationOnlyChanged => 'モデレーターが一定期間非アクティブだったため、システムにより招待制へと変更されたとき';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientJaJp extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get createRecipient => '通報の通知先を追加';
	@override String get modifyRecipient => '通報の通知先を編集';
	@override String get recipientType => '通知先の種類';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeJaJp recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeJaJp._(_root);
	@override String get keywords => 'キーワード';
	@override String get notifiedUser => '通知先ユーザー';
	@override String get notifiedWebhook => '使用するWebhook';
	@override String get deleteConfirm => '通知先を削除しますか？';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _TranslationsMisskeyExternalResourceInstallerPluginJaJp extends TranslationsMisskeyExternalResourceInstallerPluginEnUs {
	_TranslationsMisskeyExternalResourceInstallerPluginJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'このプラグインをインストールしますか？';
}

// Path: misskey.externalResourceInstaller_.theme_
class _TranslationsMisskeyExternalResourceInstallerThemeJaJp extends TranslationsMisskeyExternalResourceInstallerThemeEnUs {
	_TranslationsMisskeyExternalResourceInstallerThemeJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'このテーマをインストールしますか？';
}

// Path: misskey.externalResourceInstaller_.meta_
class _TranslationsMisskeyExternalResourceInstallerMetaJaJp extends TranslationsMisskeyExternalResourceInstallerMetaEnUs {
	_TranslationsMisskeyExternalResourceInstallerMetaJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get base => '基本のカラースキーム';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _TranslationsMisskeyExternalResourceInstallerVendorInfoJaJp extends TranslationsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_TranslationsMisskeyExternalResourceInstallerVendorInfoJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '配布元情報';
	@override String get endpoint => '参照したエンドポイント';
	@override String get hashVerify => 'ファイル整合性の確認';
}

// Path: misskey.externalResourceInstaller_.errors_
class _TranslationsMisskeyExternalResourceInstallerErrorsJaJp extends TranslationsMisskeyExternalResourceInstallerErrorsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsJaJp invalidParams_ = _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsJaJp._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedJaJp resourceTypeNotSupported_ = _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedJaJp._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchJaJp failedToFetch_ = _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchJaJp._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedJaJp hashUnmatched_ = _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedJaJp._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedJaJp pluginParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedJaJp._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedJaJp pluginInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedJaJp._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedJaJp themeParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedJaJp._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedJaJp themeInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedJaJp._(_root);
}

// Path: misskey.dataSaver_.media_
class _TranslationsMisskeyDataSaverMediaJaJp extends TranslationsMisskeyDataSaverMediaEnUs {
	_TranslationsMisskeyDataSaverMediaJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'メディアの読み込みを無効化';
	@override String get description => '画像・動画が自動で読み込まれるのを防止します。隠れている画像・動画はタップすると読み込まれます。';
}

// Path: misskey.dataSaver_.avatar_
class _TranslationsMisskeyDataSaverAvatarJaJp extends TranslationsMisskeyDataSaverAvatarEnUs {
	_TranslationsMisskeyDataSaverAvatarJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'アイコン画像のアニメーションを無効化';
	@override String get description => 'アイコン画像のアニメーションが停止します。アニメーション画像は通常の画像よりファイルサイズが大きいことがあるので、データ通信量をさらに削減できます。';
}

// Path: misskey.dataSaver_.urlPreviewThumbnail_
class _TranslationsMisskeyDataSaverUrlPreviewThumbnailJaJp extends TranslationsMisskeyDataSaverUrlPreviewThumbnailEnUs {
	_TranslationsMisskeyDataSaverUrlPreviewThumbnailJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'URLプレビューのサムネイルを非表示';
	@override String get description => 'URLプレビューのサムネイル画像が読み込まれなくなります。';
}

// Path: misskey.dataSaver_.disableUrlPreview_
class _TranslationsMisskeyDataSaverDisableUrlPreviewJaJp extends TranslationsMisskeyDataSaverDisableUrlPreviewEnUs {
	_TranslationsMisskeyDataSaverDisableUrlPreviewJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'URLプレビューを無効化';
	@override String get description => 'URLプレビュー機能を無効化します。サムネイル画像だけと違い、リンク先の情報の読み込み自体を削減できます。';
}

// Path: misskey.dataSaver_.code_
class _TranslationsMisskeyDataSaverCodeJaJp extends TranslationsMisskeyDataSaverCodeEnUs {
	_TranslationsMisskeyDataSaverCodeJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'コードハイライトを非表示';
	@override String get description => 'MFMなどでコードハイライト記法が使われている場合、タップするまで読み込まれなくなります。コードハイライトではハイライトする言語ごとにその定義ファイルを読み込む必要がありますが、それらが自動で読み込まれなくなるため、通信量の削減が見込めます。';
}

// Path: misskey.gridComponent_.error_
class _TranslationsMisskeyGridComponentErrorJaJp extends TranslationsMisskeyGridComponentErrorEnUs {
	_TranslationsMisskeyGridComponentErrorJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get requiredValue => 'この値は必須項目です';
	@override String get columnTypeNotSupport => '正規表現によるバリデーションはtype:textのカラムのみサポートします。';
	@override String patternNotMatch({required Object pattern}) => 'この値は${pattern}のパターンに一致しません';
	@override String get notUnique => 'この値は一意である必要があります';
}

// Path: misskey.customEmojisManager_.gridCommon_
class _TranslationsMisskeyCustomEmojisManagerGridCommonJaJp extends TranslationsMisskeyCustomEmojisManagerGridCommonEnUs {
	_TranslationsMisskeyCustomEmojisManagerGridCommonJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get copySelectionRows => '選択行をコピー';
	@override String get copySelectionRanges => '選択範囲をコピー';
	@override String get deleteSelectionRows => '選択行を削除';
	@override String get deleteSelectionRanges => '選択範囲の値をクリア';
	@override String get searchSettings => '検索設定';
	@override String get searchSettingCaption => '検索条件を詳細に設定します。';
	@override String get searchLimit => '表示件数';
	@override String get sortOrder => '並び順';
	@override String get registrationLogs => '登録ログ';
	@override String get registrationLogsCaption => '絵文字更新・削除時のログが表示されます。更新・削除操作を行ったり、ページを遷移・リロードすると消えます。';
	@override String get alertEmojisRegisterFailedDescription => '絵文字の更新・削除に失敗しました。詳細は登録ログをご確認ください。';
}

// Path: misskey.customEmojisManager_.logs_
class _TranslationsMisskeyCustomEmojisManagerLogsJaJp extends TranslationsMisskeyCustomEmojisManagerLogsEnUs {
	_TranslationsMisskeyCustomEmojisManagerLogsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get showSuccessLogSwitch => '成功ログを表示';
	@override String get failureLogNothing => '失敗ログはありません。';
	@override String get logNothing => 'ログはありません。';
}

// Path: misskey.customEmojisManager_.remote_
class _TranslationsMisskeyCustomEmojisManagerRemoteJaJp extends TranslationsMisskeyCustomEmojisManagerRemoteEnUs {
	_TranslationsMisskeyCustomEmojisManagerRemoteJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get selectionRowDetail => '選択行の詳細';
	@override String get importSelectionRows => '選択行をインポート';
	@override String get importSelectionRangesRows => '選択範囲の行をインポート';
	@override String get importEmojisButton => 'チェックされた絵文字をインポート';
	@override String get confirmImportEmojisTitle => '絵文字のインポート';
	@override String confirmImportEmojisDescription({required Object count}) => 'リモートから受信した${count}個の絵文字のインポートを行います。絵文字のライセンスに十分な注意を払ってください。実行しますか？';
}

// Path: misskey.customEmojisManager_.local_
class _TranslationsMisskeyCustomEmojisManagerLocalJaJp extends TranslationsMisskeyCustomEmojisManagerLocalEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get tabTitleList => '登録済み絵文字一覧';
	@override String get tabTitleRegister => '絵文字の登録';
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalListJaJp list_ = _TranslationsMisskeyCustomEmojisManagerLocalListJaJp._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalRegisterJaJp register_ = _TranslationsMisskeyCustomEmojisManagerLocalRegisterJaJp._(_root);
}

// Path: misskey.remoteLookupErrors_.federationNotAllowed_
class _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedJaJp extends TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'このサーバーとは通信できません';
	@override String get description => 'このサーバーとの通信が無効化されているか、このサーバーをブロックしている・ブロックされている可能性があります。\nサーバー管理者にお問い合わせください。';
}

// Path: misskey.remoteLookupErrors_.uriInvalid_
class _TranslationsMisskeyRemoteLookupErrorsUriInvalidJaJp extends TranslationsMisskeyRemoteLookupErrorsUriInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsUriInvalidJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'URIが不正です';
	@override String get description => '入力されたURIに問題があります。URIに使用できない文字を入力していないか確認してください。';
}

// Path: misskey.remoteLookupErrors_.requestFailed_
class _TranslationsMisskeyRemoteLookupErrorsRequestFailedJaJp extends TranslationsMisskeyRemoteLookupErrorsRequestFailedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsRequestFailedJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'リクエストに失敗しました';
	@override String get description => 'このサーバーとの通信に失敗しました。相手サーバーがダウンしている可能性があります。また、不正なURIや存在しないURIを入力していないか確認してください。';
}

// Path: misskey.remoteLookupErrors_.responseInvalid_
class _TranslationsMisskeyRemoteLookupErrorsResponseInvalidJaJp extends TranslationsMisskeyRemoteLookupErrorsResponseInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsResponseInvalidJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'レスポンスが不正です';
	@override String get description => 'このサーバーと通信することはできましたが、得られたデータが不正なものでした。第三者のサーバーを介してリモートのコンテンツを照会している場合は、発信元のサーバーで取得できるURIを使用して照会し直してください。';
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectJaJp extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '見つかりません';
	@override String get description => '要求されたリソースは見つかりませんでした。URIをもう一度お確かめください。';
}

// Path: misskey.captcha_.error_
class _TranslationsMisskeyCaptchaErrorJaJp extends TranslationsMisskeyCaptchaErrorEnUs {
	_TranslationsMisskeyCaptchaErrorJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCaptchaErrorRequestFailedJaJp requestFailed_ = _TranslationsMisskeyCaptchaErrorRequestFailedJaJp._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorVerificationFailedJaJp verificationFailed_ = _TranslationsMisskeyCaptchaErrorVerificationFailedJaJp._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorUnknownJaJp unknown_ = _TranslationsMisskeyCaptchaErrorUnknownJaJp._(_root);
}

// Path: misskey.serverSetupWizard_.use_
class _TranslationsMisskeyServerSetupWizardUseJaJp extends TranslationsMisskeyServerSetupWizardUseEnUs {
	_TranslationsMisskeyServerSetupWizardUseJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get single => 'お一人様サーバー';
	@override String get single_description => '自分専用のサーバーとして、一人で使う';
	@override String get single_youCanCreateMultipleAccounts => 'お一人様サーバーとして運用する場合でも、アカウントは必要に応じて複数作成可能です。';
	@override String get group => 'グループサーバー';
	@override String get group_description => '信頼できる他の利用者を招待して、複数人で使う';
	@override String get open => 'オープンサーバー';
	@override String get open_description => '不特定多数の利用者を受け入れる運営を行う';
}

// Path: misskey.serverSetupWizard_.scale_
class _TranslationsMisskeyServerSetupWizardScaleJaJp extends TranslationsMisskeyServerSetupWizardScaleEnUs {
	_TranslationsMisskeyServerSetupWizardScaleJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get small => '100人以下 (小規模)';
	@override String get medium => '100人以上1000人以下 (中規模)';
	@override String get large => '1000人以上 (大規模)';
}

// Path: misskey.serverSetupWizard_.donationRequest_
class _TranslationsMisskeyServerSetupWizardDonationRequestJaJp extends TranslationsMisskeyServerSetupWizardDonationRequestEnUs {
	_TranslationsMisskeyServerSetupWizardDonationRequestJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Misskeyは有志によって開発されている無料のソフトウェアです。';
	@override String get text2 => '今後も開発を続けられるように、よろしければぜひカンパをお願いいたします。';
	@override String get text3 => '支援者向け特典もあります！';
}

// Path: misskey.imageEffector_.fxs_
class _TranslationsMisskeyImageEffectorFxsJaJp extends TranslationsMisskeyImageEffectorFxsEnUs {
	_TranslationsMisskeyImageEffectorFxsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get chromaticAberration => '色収差';
	@override String get glitch => 'グリッチ';
	@override String get mirror => 'ミラー';
	@override String get invert => '色の反転';
	@override String get grayscale => '白黒';
	@override String get blur => 'ぼかし';
	@override String get pixelate => 'モザイク';
	@override String get colorAdjust => '色調補正';
	@override String get colorClamp => '色の圧縮';
	@override String get colorClampAdvanced => '色の圧縮(高度)';
	@override String get distort => '歪み';
	@override String get threshold => '二値化';
	@override String get zoomLines => '集中線';
	@override String get stripe => 'ストライプ';
	@override String get polkadot => 'ポルカドット';
	@override String get checker => 'チェッカー';
	@override String get blockNoise => 'ブロックノイズ';
	@override String get tearing => 'ティアリング';
	@override String get fill => '塗りつぶし';
}

// Path: misskey.imageEffector_.fxProps_
class _TranslationsMisskeyImageEffectorFxPropsJaJp extends TranslationsMisskeyImageEffectorFxPropsEnUs {
	_TranslationsMisskeyImageEffectorFxPropsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get angle => '角度';
	@override String get scale => 'サイズ';
	@override String get size => 'サイズ';
	@override String get radius => '半径';
	@override String get samples => 'サンプル数';
	@override String get offset => '位置';
	@override String get color => '色';
	@override String get opacity => '不透明度';
	@override String get normalize => '正規化';
	@override String get amount => '量';
	@override String get lightness => '明るさ';
	@override String get contrast => 'コントラスト';
	@override String get hue => '色相';
	@override String get brightness => '輝度';
	@override String get saturation => '彩度';
	@override String get max => '最大値';
	@override String get min => '最小値';
	@override String get direction => '方向';
	@override String get phase => '位相';
	@override String get frequency => '頻度';
	@override String get strength => '強さ';
	@override String get glitchChannelShift => 'ズレ';
	@override String get seed => 'シード値';
	@override String get redComponent => '赤色成分';
	@override String get greenComponent => '緑色成分';
	@override String get blueComponent => '青色成分';
	@override String get threshold => 'しきい値';
	@override String get centerX => '中心X';
	@override String get centerY => '中心Y';
	@override String get zoomLinesSmoothing => 'スムージング';
	@override String get zoomLinesSmoothingDescription => 'スムージングと集中線の幅の設定は併用できません。';
	@override String get zoomLinesThreshold => '集中線の幅';
	@override String get zoomLinesMaskSize => '中心径';
	@override String get zoomLinesBlack => '黒色にする';
	@override String get circle => '円形';
}

// Path: misskeyIO.skebStatus_.genres_
class _TranslationsMisskeyIOSkebStatusGenresJaJp extends TranslationsMisskeyIOSkebStatusGenresEnUs {
	_TranslationsMisskeyIOSkebStatusGenresJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

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
class _TranslationsMisskeyInitialTutorialPostNoteVisibilityJaJp extends TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteVisibilityJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get description => 'ノートを表示できる相手を制限できます。';
	@override String get public => 'すべてのユーザーに公開。';
	@override String get home => 'ホームタイムラインのみに公開。フォロワー・プロフィールを見に来た人・リノートから、他のユーザーも見ることができます。';
	@override String get followers => 'フォロワーにのみ公開。本人以外がリノートすることはできず、またフォロワー以外は閲覧できません。';
	@override String get direct => '指定したユーザーにのみ公開され、また相手に通知が入ります。';
	@override String get doNotSendConfidencialOnDirect1 => '機密情報は送信する際は注意してください。';
	@override String get doNotSendConfidencialOnDirect2 => '送信先のサーバーの管理者は投稿内容を見ることが可能なので、信頼できないサーバーのユーザーが含まれる限定公開のノートを作成する際は、機密情報の扱いに注意が必要です。';
	@override String get localOnly => '他のサーバーに投稿を連合しません。上記の公開範囲に関わらず、他のサーバーのユーザーは、この設定がついたノートを直接閲覧することができなくなります。';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _TranslationsMisskeyInitialTutorialPostNoteCwJaJp extends TranslationsMisskeyInitialTutorialPostNoteCwEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '内容を隠す（CW）';
	@override String get description => '本文のかわりに「注釈」に書いた内容が表示されます。「もっと見る」を押すと本文が表示されます。';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteJaJp exampleNote_ = _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteJaJp._(_root);
	@override String get useCases => 'サーバーのガイドラインにより必要とされるノートに指定したり、ネタバレ投稿やセンシティブな文章を自主規制したりするときに使います。';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteJaJp extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get note => '納豆のフタ開けるのミスったわね…';
}

// Path: misskey.achievements_.types_.notes1_
class _TranslationsMisskeyAchievementsTypesNotes1JaJp extends TranslationsMisskeyAchievementsTypesNotes1EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'just setting up my msky';
	@override String get description => '初めてノートを投稿した';
	@override String get flavor => '良いMisskeyライフを！';
}

// Path: misskey.achievements_.types_.notes10_
class _TranslationsMisskeyAchievementsTypesNotes10JaJp extends TranslationsMisskeyAchievementsTypesNotes10EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'いくつかのノート';
	@override String get description => 'ノートを10回投稿した';
}

// Path: misskey.achievements_.types_.notes100_
class _TranslationsMisskeyAchievementsTypesNotes100JaJp extends TranslationsMisskeyAchievementsTypesNotes100EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'たくさんのノート';
	@override String get description => 'ノートを100回投稿した';
}

// Path: misskey.achievements_.types_.notes500_
class _TranslationsMisskeyAchievementsTypesNotes500JaJp extends TranslationsMisskeyAchievementsTypesNotes500EnUs {
	_TranslationsMisskeyAchievementsTypesNotes500JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートまみれ';
	@override String get description => 'ノートを500回投稿した';
}

// Path: misskey.achievements_.types_.notes1000_
class _TranslationsMisskeyAchievementsTypesNotes1000JaJp extends TranslationsMisskeyAchievementsTypesNotes1000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1000JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの山';
	@override String get description => 'ノートを1,000回投稿した';
}

// Path: misskey.achievements_.types_.notes5000_
class _TranslationsMisskeyAchievementsTypesNotes5000JaJp extends TranslationsMisskeyAchievementsTypesNotes5000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes5000JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '湧き出るノート';
	@override String get description => 'ノートを5,000回投稿した';
}

// Path: misskey.achievements_.types_.notes10000_
class _TranslationsMisskeyAchievementsTypesNotes10000JaJp extends TranslationsMisskeyAchievementsTypesNotes10000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10000JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'スーパーノート';
	@override String get description => 'ノートを10,000回投稿した';
}

// Path: misskey.achievements_.types_.notes20000_
class _TranslationsMisskeyAchievementsTypesNotes20000JaJp extends TranslationsMisskeyAchievementsTypesNotes20000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes20000JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ニードモアノート';
	@override String get description => 'ノートを20,000回投稿した';
}

// Path: misskey.achievements_.types_.notes30000_
class _TranslationsMisskeyAchievementsTypesNotes30000JaJp extends TranslationsMisskeyAchievementsTypesNotes30000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes30000JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートノートノート';
	@override String get description => 'ノートを30,000回投稿した';
}

// Path: misskey.achievements_.types_.notes40000_
class _TranslationsMisskeyAchievementsTypesNotes40000JaJp extends TranslationsMisskeyAchievementsTypesNotes40000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes40000JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノート工場';
	@override String get description => 'ノートを40,000回投稿した';
}

// Path: misskey.achievements_.types_.notes50000_
class _TranslationsMisskeyAchievementsTypesNotes50000JaJp extends TranslationsMisskeyAchievementsTypesNotes50000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes50000JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの惑星';
	@override String get description => 'ノートを50,000回投稿した';
}

// Path: misskey.achievements_.types_.notes60000_
class _TranslationsMisskeyAchievementsTypesNotes60000JaJp extends TranslationsMisskeyAchievementsTypesNotes60000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes60000JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートクエーサー';
	@override String get description => 'ノートを60,000回投稿した';
}

// Path: misskey.achievements_.types_.notes70000_
class _TranslationsMisskeyAchievementsTypesNotes70000JaJp extends TranslationsMisskeyAchievementsTypesNotes70000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes70000JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ブラックノートホール';
	@override String get description => 'ノートを70,000回投稿した';
}

// Path: misskey.achievements_.types_.notes80000_
class _TranslationsMisskeyAchievementsTypesNotes80000JaJp extends TranslationsMisskeyAchievementsTypesNotes80000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes80000JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートギャラクシー';
	@override String get description => 'ノートを80,000回投稿した';
}

// Path: misskey.achievements_.types_.notes90000_
class _TranslationsMisskeyAchievementsTypesNotes90000JaJp extends TranslationsMisskeyAchievementsTypesNotes90000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes90000JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートバース';
	@override String get description => 'ノートを90,000回投稿した';
}

// Path: misskey.achievements_.types_.notes100000_
class _TranslationsMisskeyAchievementsTypesNotes100000JaJp extends TranslationsMisskeyAchievementsTypesNotes100000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100000JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => 'ノートを100,000回投稿した';
	@override String get flavor => 'そんなに書くことある？';
}

// Path: misskey.achievements_.types_.login3_
class _TranslationsMisskeyAchievementsTypesLogin3JaJp extends TranslationsMisskeyAchievementsTypesLogin3EnUs {
	_TranslationsMisskeyAchievementsTypesLogin3JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ビギナーⅠ';
	@override String get description => '通算ログイン日数が3日';
	@override String get flavor => '今日からね僕は ミスキストってことで';
}

// Path: misskey.achievements_.types_.login7_
class _TranslationsMisskeyAchievementsTypesLogin7JaJp extends TranslationsMisskeyAchievementsTypesLogin7EnUs {
	_TranslationsMisskeyAchievementsTypesLogin7JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ビギナーⅡ';
	@override String get description => '通算ログイン日数が7日';
	@override String get flavor => '慣れてきましたか？';
}

// Path: misskey.achievements_.types_.login15_
class _TranslationsMisskeyAchievementsTypesLogin15JaJp extends TranslationsMisskeyAchievementsTypesLogin15EnUs {
	_TranslationsMisskeyAchievementsTypesLogin15JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ビギナーⅢ';
	@override String get description => '通算ログイン日数が15日';
}

// Path: misskey.achievements_.types_.login30_
class _TranslationsMisskeyAchievementsTypesLogin30JaJp extends TranslationsMisskeyAchievementsTypesLogin30EnUs {
	_TranslationsMisskeyAchievementsTypesLogin30JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ミスキストⅠ';
	@override String get description => '通算ログイン日数が30日';
}

// Path: misskey.achievements_.types_.login60_
class _TranslationsMisskeyAchievementsTypesLogin60JaJp extends TranslationsMisskeyAchievementsTypesLogin60EnUs {
	_TranslationsMisskeyAchievementsTypesLogin60JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ミスキストⅡ';
	@override String get description => '通算ログイン日数が60日';
}

// Path: misskey.achievements_.types_.login100_
class _TranslationsMisskeyAchievementsTypesLogin100JaJp extends TranslationsMisskeyAchievementsTypesLogin100EnUs {
	_TranslationsMisskeyAchievementsTypesLogin100JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ミスキストⅢ';
	@override String get description => '通算ログイン日数が100日';
	@override String get flavor => 'そのユーザー、ミスキストにつき';
}

// Path: misskey.achievements_.types_.login200_
class _TranslationsMisskeyAchievementsTypesLogin200JaJp extends TranslationsMisskeyAchievementsTypesLogin200EnUs {
	_TranslationsMisskeyAchievementsTypesLogin200JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '常連Ⅰ';
	@override String get description => '通算ログイン日数が200日';
}

// Path: misskey.achievements_.types_.login300_
class _TranslationsMisskeyAchievementsTypesLogin300JaJp extends TranslationsMisskeyAchievementsTypesLogin300EnUs {
	_TranslationsMisskeyAchievementsTypesLogin300JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '常連Ⅱ';
	@override String get description => '通算ログイン日数が300日';
}

// Path: misskey.achievements_.types_.login400_
class _TranslationsMisskeyAchievementsTypesLogin400JaJp extends TranslationsMisskeyAchievementsTypesLogin400EnUs {
	_TranslationsMisskeyAchievementsTypesLogin400JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '常連Ⅲ';
	@override String get description => '通算ログイン日数が400日';
}

// Path: misskey.achievements_.types_.login500_
class _TranslationsMisskeyAchievementsTypesLogin500JaJp extends TranslationsMisskeyAchievementsTypesLogin500EnUs {
	_TranslationsMisskeyAchievementsTypesLogin500JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ベテランⅠ';
	@override String get description => '通算ログイン日数が500日';
	@override String get flavor => '諸君、私はノートが好きだ';
}

// Path: misskey.achievements_.types_.login600_
class _TranslationsMisskeyAchievementsTypesLogin600JaJp extends TranslationsMisskeyAchievementsTypesLogin600EnUs {
	_TranslationsMisskeyAchievementsTypesLogin600JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ベテランⅡ';
	@override String get description => '通算ログイン日数が600日';
}

// Path: misskey.achievements_.types_.login700_
class _TranslationsMisskeyAchievementsTypesLogin700JaJp extends TranslationsMisskeyAchievementsTypesLogin700EnUs {
	_TranslationsMisskeyAchievementsTypesLogin700JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ベテランⅢ';
	@override String get description => '通算ログイン日数が700日';
}

// Path: misskey.achievements_.types_.login800_
class _TranslationsMisskeyAchievementsTypesLogin800JaJp extends TranslationsMisskeyAchievementsTypesLogin800EnUs {
	_TranslationsMisskeyAchievementsTypesLogin800JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートマスターⅠ';
	@override String get description => '通算ログイン日数が800日';
}

// Path: misskey.achievements_.types_.login900_
class _TranslationsMisskeyAchievementsTypesLogin900JaJp extends TranslationsMisskeyAchievementsTypesLogin900EnUs {
	_TranslationsMisskeyAchievementsTypesLogin900JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートマスターⅡ';
	@override String get description => '通算ログイン日数が900日';
}

// Path: misskey.achievements_.types_.login1000_
class _TranslationsMisskeyAchievementsTypesLogin1000JaJp extends TranslationsMisskeyAchievementsTypesLogin1000EnUs {
	_TranslationsMisskeyAchievementsTypesLogin1000JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートマスターⅢ';
	@override String get description => '通算ログイン日数が1,000日';
	@override String get flavor => 'Misskeyを使ってくれてありがとう！';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _TranslationsMisskeyAchievementsTypesNoteClipped1JaJp extends TranslationsMisskeyAchievementsTypesNoteClipped1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteClipped1JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'クリップせずにはいられないな';
	@override String get description => '初めてノートをクリップした';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _TranslationsMisskeyAchievementsTypesNoteFavorited1JaJp extends TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteFavorited1JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '星をみるひと';
	@override String get description => '初めてノートをお気に入りに登録した';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _TranslationsMisskeyAchievementsTypesMyNoteFavorited1JaJp extends TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesMyNoteFavorited1JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '星が欲しい';
	@override String get description => '自分のノートが他の人からお気に入りに登録された';
}

// Path: misskey.achievements_.types_.profileFilled_
class _TranslationsMisskeyAchievementsTypesProfileFilledJaJp extends TranslationsMisskeyAchievementsTypesProfileFilledEnUs {
	_TranslationsMisskeyAchievementsTypesProfileFilledJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '準備万端';
	@override String get description => 'プロフィール設定を行った';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _TranslationsMisskeyAchievementsTypesMarkedAsCatJaJp extends TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_TranslationsMisskeyAchievementsTypesMarkedAsCatJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '吾輩は猫である';
	@override String get description => 'アカウントをCatとして設定した';
	@override String get flavor => '名前はまだない。';
}

// Path: misskey.achievements_.types_.following1_
class _TranslationsMisskeyAchievementsTypesFollowing1JaJp extends TranslationsMisskeyAchievementsTypesFollowing1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing1JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'はじめてのフォロー';
	@override String get description => '初めてフォローした';
}

// Path: misskey.achievements_.types_.following10_
class _TranslationsMisskeyAchievementsTypesFollowing10JaJp extends TranslationsMisskeyAchievementsTypesFollowing10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing10JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ついてく、ついてく';
	@override String get description => 'フォローが10人を超した';
}

// Path: misskey.achievements_.types_.following50_
class _TranslationsMisskeyAchievementsTypesFollowing50JaJp extends TranslationsMisskeyAchievementsTypesFollowing50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing50JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '友達たくさん';
	@override String get description => 'フォローが50人を超した';
}

// Path: misskey.achievements_.types_.following100_
class _TranslationsMisskeyAchievementsTypesFollowing100JaJp extends TranslationsMisskeyAchievementsTypesFollowing100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing100JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '友達100人';
	@override String get description => 'フォローが100人を超した';
}

// Path: misskey.achievements_.types_.following300_
class _TranslationsMisskeyAchievementsTypesFollowing300JaJp extends TranslationsMisskeyAchievementsTypesFollowing300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing300JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '友達過多';
	@override String get description => 'フォローが300人を超した';
}

// Path: misskey.achievements_.types_.followers1_
class _TranslationsMisskeyAchievementsTypesFollowers1JaJp extends TranslationsMisskeyAchievementsTypesFollowers1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'はじめてのフォロワー';
	@override String get description => '初めてフォローされた';
}

// Path: misskey.achievements_.types_.followers10_
class _TranslationsMisskeyAchievementsTypesFollowers10JaJp extends TranslationsMisskeyAchievementsTypesFollowers10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers10JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'フォローミー！';
	@override String get description => 'フォロワーが10人を超した';
}

// Path: misskey.achievements_.types_.followers50_
class _TranslationsMisskeyAchievementsTypesFollowers50JaJp extends TranslationsMisskeyAchievementsTypesFollowers50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers50JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ぞろぞろ';
	@override String get description => 'フォロワーが50人を超した';
}

// Path: misskey.achievements_.types_.followers100_
class _TranslationsMisskeyAchievementsTypesFollowers100JaJp extends TranslationsMisskeyAchievementsTypesFollowers100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers100JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '人気者';
	@override String get description => 'フォロワーが100人を超した';
}

// Path: misskey.achievements_.types_.followers300_
class _TranslationsMisskeyAchievementsTypesFollowers300JaJp extends TranslationsMisskeyAchievementsTypesFollowers300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers300JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '一列でお並びください';
	@override String get description => 'フォロワーが300人を超した';
}

// Path: misskey.achievements_.types_.followers500_
class _TranslationsMisskeyAchievementsTypesFollowers500JaJp extends TranslationsMisskeyAchievementsTypesFollowers500EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers500JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '基地局';
	@override String get description => 'フォロワーが500人を超した';
}

// Path: misskey.achievements_.types_.followers1000_
class _TranslationsMisskeyAchievementsTypesFollowers1000JaJp extends TranslationsMisskeyAchievementsTypesFollowers1000EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1000JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'インフルエンサー';
	@override String get description => 'フォロワーが1,000人を超した';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _TranslationsMisskeyAchievementsTypesCollectAchievements30JaJp extends TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_TranslationsMisskeyAchievementsTypesCollectAchievements30JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '実績コレクター';
	@override String get description => '実績を30個以上獲得した';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _TranslationsMisskeyAchievementsTypesViewAchievements3minJaJp extends TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_TranslationsMisskeyAchievementsTypesViewAchievements3minJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '実績好き';
	@override String get description => '実績一覧を3分以上眺め続けた';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _TranslationsMisskeyAchievementsTypesILoveMisskeyJaJp extends TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_TranslationsMisskeyAchievementsTypesILoveMisskeyJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'I Love Misskey';
	@override String get description => '"I ❤ #Misskey"を投稿した';
	@override String get flavor => 'Misskeyを使ってくださりありがとうございます！ by 開発チーム';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _TranslationsMisskeyAchievementsTypesFoundTreasureJaJp extends TranslationsMisskeyAchievementsTypesFoundTreasureEnUs {
	_TranslationsMisskeyAchievementsTypesFoundTreasureJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '宝探し';
	@override String get description => '隠されたお宝を発見した';
}

// Path: misskey.achievements_.types_.client30min_
class _TranslationsMisskeyAchievementsTypesClient30minJaJp extends TranslationsMisskeyAchievementsTypesClient30minEnUs {
	_TranslationsMisskeyAchievementsTypesClient30minJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ひとやすみ';
	@override String get description => 'クライアントを起動してから30分以上経過した';
}

// Path: misskey.achievements_.types_.client60min_
class _TranslationsMisskeyAchievementsTypesClient60minJaJp extends TranslationsMisskeyAchievementsTypesClient60minEnUs {
	_TranslationsMisskeyAchievementsTypesClient60minJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskeyの見すぎ';
	@override String get description => 'クライアントを起動してから60分以上経過した';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minJaJp extends TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'いまのなし';
	@override String get description => '投稿してから1分以内にその投稿を削除した';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _TranslationsMisskeyAchievementsTypesPostedAtLateNightJaJp extends TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAtLateNightJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '夜行性';
	@override String get description => '深夜にノートを投稿した';
	@override String get flavor => 'そろそろ寝よう。';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _TranslationsMisskeyAchievementsTypesPostedAt0min0secJaJp extends TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAt0min0secJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '時報';
	@override String get description => '0分0秒にノートを投稿した';
	@override String get flavor => 'ポッ ポッ ポッ ピーン';
}

// Path: misskey.achievements_.types_.selfQuote_
class _TranslationsMisskeyAchievementsTypesSelfQuoteJaJp extends TranslationsMisskeyAchievementsTypesSelfQuoteEnUs {
	_TranslationsMisskeyAchievementsTypesSelfQuoteJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '自己言及';
	@override String get description => '自分のノートを引用した';
}

// Path: misskey.achievements_.types_.htl20npm_
class _TranslationsMisskeyAchievementsTypesHtl20npmJaJp extends TranslationsMisskeyAchievementsTypesHtl20npmEnUs {
	_TranslationsMisskeyAchievementsTypesHtl20npmJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '流れるTL';
	@override String get description => 'ホームタイムラインの流速が20npmを越す';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _TranslationsMisskeyAchievementsTypesViewInstanceChartJaJp extends TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_TranslationsMisskeyAchievementsTypesViewInstanceChartJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'アナリスト';
	@override String get description => 'サーバーのチャートを表示した';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadJaJp extends TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hello, world!';
	@override String get description => 'スクラッチパッドで hello world を出力した';
}

// Path: misskey.achievements_.types_.open3windows_
class _TranslationsMisskeyAchievementsTypesOpen3windowsJaJp extends TranslationsMisskeyAchievementsTypesOpen3windowsEnUs {
	_TranslationsMisskeyAchievementsTypesOpen3windowsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'マルチウィンドウ';
	@override String get description => 'ウィンドウを3つ以上開いた状態にした';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceJaJp extends TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '循環参照';
	@override String get description => 'ドライブのフォルダを再帰的な入れ子にしようとした';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _TranslationsMisskeyAchievementsTypesReactWithoutReadJaJp extends TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_TranslationsMisskeyAchievementsTypesReactWithoutReadJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ちゃんと読んだ？';
	@override String get description => '100文字以上のテキストを含むノートに投稿されてから3秒以内にリアクションした';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _TranslationsMisskeyAchievementsTypesClickedClickHereJaJp extends TranslationsMisskeyAchievementsTypesClickedClickHereEnUs {
	_TranslationsMisskeyAchievementsTypesClickedClickHereJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ここをクリック';
	@override String get description => 'ここをクリックした';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _TranslationsMisskeyAchievementsTypesJustPlainLuckyJaJp extends TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_TranslationsMisskeyAchievementsTypesJustPlainLuckyJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '単なるラッキー';
	@override String get description => '10秒ごとに0.005%の確率で獲得';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _TranslationsMisskeyAchievementsTypesSetNameToSyuiloJaJp extends TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_TranslationsMisskeyAchievementsTypesSetNameToSyuiloJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '神様コンプレックス';
	@override String get description => '名前を syuilo に設定した';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1JaJp extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '一周年';
	@override String get description => 'アカウント作成から1年経過した';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2JaJp extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '二周年';
	@override String get description => 'アカウント作成から2年経過した';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3JaJp extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3JaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '三周年';
	@override String get description => 'アカウント作成から3年経過した';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayJaJp extends TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ハッピーバースデー';
	@override String get description => '誕生日にログインした';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayJaJp extends TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'あけましておめでとうございます';
	@override String get description => '元日にログインした';
	@override String get flavor => '今年も弊サーバーをよろしくお願いします';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _TranslationsMisskeyAchievementsTypesCookieClickedJaJp extends TranslationsMisskeyAchievementsTypesCookieClickedEnUs {
	_TranslationsMisskeyAchievementsTypesCookieClickedJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'クッキーをクリックするゲーム';
	@override String get description => 'クッキーをクリックした';
	@override String get flavor => 'ソフト間違ってない？';
}

// Path: misskey.achievements_.types_.brainDiver_
class _TranslationsMisskeyAchievementsTypesBrainDiverJaJp extends TranslationsMisskeyAchievementsTypesBrainDiverEnUs {
	_TranslationsMisskeyAchievementsTypesBrainDiverJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Brain Diverへのリンクを投稿した';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonJaJp extends TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'テスト過剰';
	@override String get description => '通知のテストをごく短時間のうちに連続して行った';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _TranslationsMisskeyAchievementsTypesTutorialCompletedJaJp extends TranslationsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_TranslationsMisskeyAchievementsTypesTutorialCompletedJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskey初心者講座 修了証';
	@override String get description => 'チュートリアルを完了した';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadJaJp extends TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => 'バブルゲームで最も大きいモノを出した';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadJaJp extends TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ダブル🤯';
	@override String get description => 'バブルゲームで最も大きいモノを2つ同時に出した';
	@override String get flavor => 'これくらいの　おべんとばこに　🤯　🤯　ちょっとつめて';
}

// Path: misskey.pages_.blocks.note_
class _TranslationsMisskeyPagesBlocksNoteJaJp extends TranslationsMisskeyPagesBlocksNoteEnUs {
	_TranslationsMisskeyPagesBlocksNoteJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get id => 'ノートID';
	@override String get idDescription => 'ノートURLをペーストして設定することもできます。';
	@override String get detailed => '詳細な表示';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeJaJp extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get mail => 'メール';
	@override String get webhook => 'Webhook';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsJaJp captions_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsJaJp._(_root);
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsJaJp extends TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'パラメータが不足しています';
	@override String get description => '外部サイトからデータを取得するために必要な情報が不足しています。URLをお確かめください。';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedJaJp extends TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'この外部リソースには対応していません';
	@override String get description => 'この外部サイトから取得したリソースの種別には対応していません。サイト管理者にお問い合わせください。';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchJaJp extends TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'データの取得に失敗しました';
	@override String get fetchErrorDescription => '外部サイトとの通信に失敗しました。もう一度試しても改善しない場合、サイト管理者にお問い合わせください。';
	@override String get parseErrorDescription => '外部サイトから取得したデータが読み取れませんでした。サイト管理者にお問い合わせください。';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedJaJp extends TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '正しいデータが取得できませんでした';
	@override String get description => '提供されたデータの整合性の確認に失敗しました。セキュリティ上、インストールは続行できません。サイト管理者にお問い合わせください。';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedJaJp extends TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'AiScript エラー';
	@override String get description => 'データは取得できたものの、AiScriptの解析時にエラーがあったため読み込めませんでした。プラグインの作者にお問い合わせください。エラーの詳細はJavascriptコンソールをご確認ください。';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedJaJp extends TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'プラグインのインストールに失敗しました';
	@override String get description => 'プラグインのインストール中に問題が発生しました。もう一度お試しください。エラーの詳細はJavascriptコンソールをご覧ください。';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedJaJp extends TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'テーマ解析エラー';
	@override String get description => 'データは取得できたものの、テーマファイルの解析時にエラーがあったため読み込めませんでした。テーマの作者にお問い合わせください。エラーの詳細はJavascriptコンソールをご確認ください。';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedJaJp extends TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'テーマのインストールに失敗しました';
	@override String get description => 'テーマのインストール中に問題が発生しました。もう一度お試しください。エラーの詳細はJavascriptコンソールをご覧ください。';
}

// Path: misskey.customEmojisManager_.local_.list_
class _TranslationsMisskeyCustomEmojisManagerLocalListJaJp extends TranslationsMisskeyCustomEmojisManagerLocalListEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalListJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get emojisNothing => '登録された絵文字はありません。';
	@override String get markAsDeleteTargetRows => '選択行を削除対象にする';
	@override String get markAsDeleteTargetRanges => '選択範囲の行を削除対象にする';
	@override String get alertUpdateEmojisNothingDescription => '変更された絵文字はありません。';
	@override String get alertDeleteEmojisNothingDescription => '削除対象の絵文字はありません。';
	@override String get confirmMovePage => 'ページを移動しますか？';
	@override String get confirmChangeView => '表示を変更しますか？';
	@override String confirmUpdateEmojisDescription({required Object count}) => '${count}個の絵文字を更新します。実行しますか？';
	@override String confirmDeleteEmojisDescription({required Object count}) => 'チェックがつけられた${count}個の絵文字を削除します。実行しますか？';
	@override String get confirmResetDescription => '今までに加えた変更がすべてリセットされます。';
	@override String get confirmMovePageDesciption => 'このページの絵文字に変更が加えられています。\n保存せずにこのままページを移動すると、このページで加えた変更はすべて破棄されます。';
	@override String get dialogSelectRoleTitle => '絵文字に設定されたロールで検索';
}

// Path: misskey.customEmojisManager_.local_.register_
class _TranslationsMisskeyCustomEmojisManagerLocalRegisterJaJp extends TranslationsMisskeyCustomEmojisManagerLocalRegisterEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalRegisterJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get uploadSettingTitle => 'アップロード設定';
	@override String get uploadSettingDescription => 'この画面で絵文字アップロードを行う際の動作を設定できます。';
	@override String get directoryToCategoryLabel => 'ディレクトリ名を"category"に入力する';
	@override String get directoryToCategoryCaption => 'ディレクトリをドラッグ・ドロップした時に、ディレクトリ名を"category"に入力します。';
	@override String confirmRegisterEmojisDescription({required Object count}) => 'リストに表示されている絵文字を新たなカスタム絵文字として登録します。よろしいですか？（負荷を避けるため、一度の操作で登録可能な絵文字は${count}件までです）';
	@override String get confirmClearEmojisDescription => '編集内容を破棄し、リストに表示されている絵文字をクリアします。よろしいですか？';
	@override String confirmUploadEmojisDescription({required Object count}) => 'ドラッグ＆ドロップされた${count}個のファイルをドライブにアップロードします。実行しますか？';
}

// Path: misskey.captcha_.error_.requestFailed_
class _TranslationsMisskeyCaptchaErrorRequestFailedJaJp extends TranslationsMisskeyCaptchaErrorRequestFailedEnUs {
	_TranslationsMisskeyCaptchaErrorRequestFailedJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'CAPTCHAのリクエストに失敗しました';
	@override String get text => 'しばらく後に実行するか、設定をもう一度ご確認ください。';
}

// Path: misskey.captcha_.error_.verificationFailed_
class _TranslationsMisskeyCaptchaErrorVerificationFailedJaJp extends TranslationsMisskeyCaptchaErrorVerificationFailedEnUs {
	_TranslationsMisskeyCaptchaErrorVerificationFailedJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'CAPTCHAの検証に失敗しました';
	@override String get text => '設定が正しいかどうかもう一度確認ください。';
}

// Path: misskey.captcha_.error_.unknown_
class _TranslationsMisskeyCaptchaErrorUnknownJaJp extends TranslationsMisskeyCaptchaErrorUnknownEnUs {
	_TranslationsMisskeyCaptchaErrorUnknownJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'CAPTCHAエラー';
	@override String get text => '想定外のエラーが発生しました。';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteJaJp extends TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get cw => '飯テロ注意';
	@override String get note => 'チョコのかかったドーナツを食べました🍩😋';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_.captions_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsJaJp extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsJaJp._(TranslationsJaJp root) : this._root = root, super.internal(root);

	final TranslationsJaJp _root; // ignore: unused_field

	// Translations
	@override String get mail => 'モデレーター権限を持つユーザーのメールアドレスに通知を送ります(通報を受けた時のみ)';
	@override String get webhook => '指定したSystemWebhookに通知を送ります(通報を受けた時と通報を解決した時にそれぞれ発信)';
}
